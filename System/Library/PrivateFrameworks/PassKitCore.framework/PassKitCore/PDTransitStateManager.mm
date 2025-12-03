@interface PDTransitStateManager
- (PDTransitStateManager)initWithDatabaseManager:(id)manager expressPassManager:(id)passManager secureElement:(id)element transactionProcessor:(id)processor paymentWebServiceCoordinator:(id)coordinator delegate:(id)delegate;
- (PDTransitStateManagerDelegate)delegate;
- (void)_handleTransitRequestsWithSession:(id)session;
- (void)_ingestAppletStateHistory:(id)history withTransactionDate:(id)date forceTransactionGeneration:(BOOL)generation recoverMissingTransactions:(BOOL)transactions forPaymentApplication:(id)application withPassUniqueIdentifier:(id)identifier skipQueuedRequestSanitization:(BOOL)sanitization expressTransactionState:(id)self0;
- (void)_notifyIssuerAppletStateDirtyWithPassID:(id)d forPaymentApplication:(id)application;
- (void)_performWebRequestToNotifyIssuerAppletDirty;
- (void)_performWebRequestToNotifyIssuerAppletDirtyIfNecessary;
- (void)_queueTransitStateFetchRequest:(id)request;
- (void)_resolveStationCodesForAppletState:(id)state paymentApplication:(id)application passUniqueIdentifier:(id)identifier;
- (void)_scheduleOneOffActivityRequest;
- (void)_scheduleRepeatingActivityRequest;
- (void)_unscheduleOneOffActivityRequest;
- (void)_unschedulePeriodicActivityRequest;
- (void)dealloc;
- (void)expressPassManager:(id)manager didFinishExpressTransactionWithState:(id)state;
- (void)expressPassManager:(id)manager willProcessPaymentApplicationsUpdateFromPriorPaymentApplications:(id)applications toPaymentApplications:(id)paymentApplications forPassUniqueIdentifier:(id)identifier;
- (void)fetchAndCacheTransitStateForPassUniqueIdentifier:(id)identifier secureElementIdentifier:(id)elementIdentifier paymentApplicationIdentifier:(id)applicationIdentifier;
- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria;
- (void)processTransactionEventWithHistory:(id)history transactionDate:(id)date forPaymentApplication:(id)application withPassUniqueIdentifier:(id)identifier expressTransactionState:(id)state;
- (void)secureElementDidUpdateAppletStateForApplicationIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier;
- (void)transitAppletStateWithPassUniqueIdentifier:(id)identifier paymentApplication:(id)application completion:(id)completion;
- (void)updateAllExpressTransitAppletStates;
- (void)updateTransitAppletStateWithHistory:(id)history transactionDate:(id)date forPaymentApplication:(id)application withPassUniqueIdentifier:(id)identifier;
@end

@implementation PDTransitStateManager

- (PDTransitStateManager)initWithDatabaseManager:(id)manager expressPassManager:(id)passManager secureElement:(id)element transactionProcessor:(id)processor paymentWebServiceCoordinator:(id)coordinator delegate:(id)delegate
{
  managerCopy = manager;
  passManagerCopy = passManager;
  elementCopy = element;
  processorCopy = processor;
  coordinatorCopy = coordinator;
  delegateCopy = delegate;
  v31.receiver = self;
  v31.super_class = PDTransitStateManager;
  v18 = [(PDTransitStateManager *)&v31 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_databaseManager, manager);
    objc_storeStrong(&v19->_expressPassManager, passManager);
    objc_storeStrong(&v19->_secureElement, element);
    objc_storeStrong(&v19->_transactionProcessor, processor);
    objc_storeStrong(&v19->_paymentWebServiceCoordinator, coordinator);
    objc_storeWeak(&v19->_delegate, delegateCopy);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.passd.felicaStateManager", v20);
    accessQueue = v19->_accessQueue;
    v19->_accessQueue = v21;

    v23 = objc_alloc_init(NSMutableArray);
    transitRequests = v19->_transitRequests;
    v19->_transitRequests = v23;

    v25 = objc_alloc_init(NSCountedSet);
    appletStateDirtyRequests = v19->_appletStateDirtyRequests;
    v19->_appletStateDirtyRequests = v25;

    v19->_appletStateDirtyLock._os_unfair_lock_opaque = 0;
    v19->_performingAppletDirtyRequests = 0;
    PDNFSecureXPCRegisterSecureElementEventObserver(v19);
    sub_100182154(v19->_expressPassManager, v19);
    PDScheduledActivityClientRegister();
  }

  return v19;
}

- (void)dealloc
{
  PDNFSecureXPCUnregisterSecureElementEventObserver(self);
  sub_1001821BC(self->_expressPassManager, self);
  v3.receiver = self;
  v3.super_class = PDTransitStateManager;
  [(PDTransitStateManager *)&v3 dealloc];
}

- (void)fetchAndCacheTransitStateForPassUniqueIdentifier:(id)identifier secureElementIdentifier:(id)elementIdentifier paymentApplicationIdentifier:(id)applicationIdentifier
{
  identifierCopy = identifier;
  elementIdentifierCopy = elementIdentifier;
  applicationIdentifierCopy = applicationIdentifier;
  v11 = PDOSTransactionCreate("PDTransitStateManager");
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DE0C0;
  block[3] = &unk_10083DE38;
  v18 = v11;
  v19 = identifierCopy;
  v20 = elementIdentifierCopy;
  v21 = applicationIdentifierCopy;
  selfCopy = self;
  v13 = applicationIdentifierCopy;
  v14 = elementIdentifierCopy;
  v15 = identifierCopy;
  v16 = v11;
  dispatch_async(accessQueue, block);
}

- (void)_queueTransitStateFetchRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(self->_accessQueue);
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    passUniqueIdentifier = [requestCopy passUniqueIdentifier];
    secureElementIdentifier = [requestCopy secureElementIdentifier];
    paymentApplicationIdentifier = [requestCopy paymentApplicationIdentifier];
    *buf = 138412802;
    v16 = passUniqueIdentifier;
    v17 = 2112;
    v18 = secureElementIdentifier;
    v19 = 2112;
    v20 = paymentApplicationIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding Transit State Fetch Request\npassId: %@, seid: %@, aid: %@", buf, 0x20u);
  }

  [(NSMutableArray *)self->_transitRequests addObject:requestCopy];
  if (!self->_processingTransitRequests)
  {
    self->_processingTransitRequests = 1;
    objc_initWeak(buf, self);
    v9 = PDOSTransactionCreate("PDTransitStateManager.requests");
    secureElement = self->_secureElement;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000DE33C;
    v12[3] = &unk_100844290;
    v11 = v9;
    v13 = v11;
    objc_copyWeak(&v14, buf);
    [(PKSecureElement *)secureElement accessPrioritySecureElementManagerSessionWithHandler:v12];
    objc_destroyWeak(&v14);

    objc_destroyWeak(buf);
  }
}

- (void)_handleTransitRequestsWithSession:(id)session
{
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_accessQueue);
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating transit applet states for:", buf, 2u);
  }

  v34 = objc_alloc_init(NSMutableSet);
  v6 = [(NSMutableArray *)self->_transitRequests copy];
  [(NSMutableArray *)self->_transitRequests removeAllObjects];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v26 = v6;
  obj = [v6 reverseObjectEnumerator];
  v7 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    selfCopy = self;
    v29 = sessionCopy;
    oslog = v5;
    v31 = *v36;
    do
    {
      v10 = 0;
      v32 = v8;
      do
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v35 + 1) + 8 * v10);
        if (([v34 containsObject:v11] & 1) == 0)
        {
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            passUniqueIdentifier = [v11 passUniqueIdentifier];
            paymentApplicationIdentifier = [v11 paymentApplicationIdentifier];
            *buf = 138412546;
            v41 = passUniqueIdentifier;
            v42 = 2112;
            v43 = paymentApplicationIdentifier;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "\t%@: %@", buf, 0x16u);
          }

          passUniqueIdentifier2 = [v11 passUniqueIdentifier];
          paymentApplicationIdentifier2 = [v11 paymentApplicationIdentifier];
          databaseManager = self->_databaseManager;
          secureElementIdentifier = [v11 secureElementIdentifier];
          v18 = [(PDDatabaseManager *)databaseManager paymentApplicationWithPassUniqueIdentifier:passUniqueIdentifier2 secureElementIdentifier:secureElementIdentifier paymentApplicationIdentifier:paymentApplicationIdentifier2];

          if (v18)
          {
            v19 = [sessionCopy appletWithIdentifier:paymentApplicationIdentifier2];
            if (v19)
            {
              v20 = [PKContactlessInterfaceSession transitAppletStateFromPaymentSession:sessionCopy forPaymentApplication:v18];
              [v34 addObject:v11];
              if (v20)
              {
                transactionDate = [v11 transactionDate];
                forceTransactionGeneration = [v11 forceTransactionGeneration];
                recoverMissingTransactions = [v11 recoverMissingTransactions];
                expressState = [v11 expressState];
                LOBYTE(v25) = 1;
                [(PDTransitStateManager *)self _ingestAppletStateHistory:v20 withTransactionDate:transactionDate forceTransactionGeneration:forceTransactionGeneration recoverMissingTransactions:recoverMissingTransactions forPaymentApplication:v18 withPassUniqueIdentifier:passUniqueIdentifier2 skipQueuedRequestSanitization:v25 expressTransactionState:expressState];

                if ([v20 isBlacklisted])
                {
                  v5 = oslog;
                  sessionCopy = v29;
                  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "\tDeleting applet due to denylisting.", buf, 2u);
                  }

                  v39 = v19;
                  v24 = [NSArray arrayWithObjects:&v39 count:1];
                  [v29 deleteApplets:v24 queueServerConnection:1];

                  self = selfCopy;
                }

                else
                {
                  self = selfCopy;
                  sessionCopy = v29;
                  v5 = oslog;
                }
              }
            }

            else
            {
              v20 = v5;
              if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "\tCould not find applet.", buf, 2u);
                v20 = v5;
              }
            }
          }

          else
          {
            v19 = v5;
            if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "\tCould not find payment application.", buf, 2u);
              v19 = v5;
            }
          }

          v9 = v31;
          v8 = v32;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v8);
  }
}

- (void)processTransactionEventWithHistory:(id)history transactionDate:(id)date forPaymentApplication:(id)application withPassUniqueIdentifier:(id)identifier expressTransactionState:(id)state
{
  historyCopy = history;
  dateCopy = date;
  applicationCopy = application;
  identifierCopy = identifier;
  stateCopy = state;
  v17 = PDOSTransactionCreate("PDTransitStateManager");
  if (!dateCopy)
  {
    dateCopy = +[NSDate date];
  }

  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DEC34;
  block[3] = &unk_10083DE88;
  v26 = v17;
  v27 = historyCopy;
  selfCopy = self;
  v29 = dateCopy;
  v30 = applicationCopy;
  v31 = identifierCopy;
  v32 = stateCopy;
  v19 = stateCopy;
  v20 = identifierCopy;
  v21 = applicationCopy;
  v22 = dateCopy;
  v23 = historyCopy;
  v24 = v17;
  dispatch_async(accessQueue, block);
}

- (void)updateTransitAppletStateWithHistory:(id)history transactionDate:(id)date forPaymentApplication:(id)application withPassUniqueIdentifier:(id)identifier
{
  historyCopy = history;
  dateCopy = date;
  applicationCopy = application;
  identifierCopy = identifier;
  v14 = PDOSTransactionCreate("PDTransitStateManager");
  accessQueue = self->_accessQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000DEE88;
  v21[3] = &unk_1008442B8;
  v22 = v14;
  selfCopy = self;
  v24 = historyCopy;
  v25 = dateCopy;
  v26 = applicationCopy;
  v27 = identifierCopy;
  v16 = identifierCopy;
  v17 = applicationCopy;
  v18 = dateCopy;
  v19 = historyCopy;
  v20 = v14;
  dispatch_async(accessQueue, v21);
}

- (void)_ingestAppletStateHistory:(id)history withTransactionDate:(id)date forceTransactionGeneration:(BOOL)generation recoverMissingTransactions:(BOOL)transactions forPaymentApplication:(id)application withPassUniqueIdentifier:(id)identifier skipQueuedRequestSanitization:(BOOL)sanitization expressTransactionState:(id)self0
{
  transactionsCopy = transactions;
  generationCopy = generation;
  historyCopy = history;
  dateCopy = date;
  applicationCopy = application;
  identifierCopy = identifier;
  stateCopy = state;
  dispatch_assert_queue_V2(self->_accessQueue);
  if (generationCopy)
  {
    isParsedTransitApplication = [applicationCopy isParsedTransitApplication];
    transacted = 1;
    if (stateCopy && isParsedTransitApplication)
    {
      transacted = [stateCopy transacted];
    }
  }

  else
  {
    transacted = 0;
  }

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000DF35C;
  v46[3] = &unk_1008442E0;
  v46[4] = self;
  v20 = identifierCopy;
  v47 = v20;
  v21 = applicationCopy;
  v48 = v21;
  [(PDTransitStateManager *)self transitAppletStateWithPassUniqueIdentifier:v20 paymentApplication:v21 completion:v46];
  v22 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:v20];
  paymentPass = [v22 paymentPass];

  v38 = stateCopy;
  if (paymentPass)
  {
    if ([paymentPass isStoredValuePass])
    {
      v24 = PKPaymentPassBalanceLabelDictionary(paymentPass);
      v25 = PKPaymentPassUnitDictionary(paymentPass);
      v26 = PKPaymentPassPlanLabelDictionary(paymentPass);
      goto LABEL_13;
    }
  }

  else
  {
    v27 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v20;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Error no pass in database for pass unique ID: %@", buf, 0xCu);
    }
  }

  v26 = 0;
  v25 = 0;
  v24 = 0;
LABEL_13:
  databaseManager = self->_databaseManager;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000DF3AC;
  v43[3] = &unk_100844308;
  v43[4] = self;
  v29 = v21;
  v44 = v29;
  v30 = v20;
  v45 = v30;
  [(PDDatabaseManager *)databaseManager updateTransitAppletStateWithHistory:historyCopy transactionDate:dateCopy forPaymentApplication:v29 withPassUniqueIdentifier:v30 forceTransactionGeneration:transacted recoverMissingTransactions:transactionsCopy balanceLabelDictionary:v24 unitDictionary:v25 planLabelDictionary:v26 completion:v43];
  if (!sanitization)
  {
    v31 = objc_alloc_init(PDTransitStateFetchRequest);
    [(PDTransitStateFetchRequest *)v31 setPassUniqueIdentifier:v30];
    secureElementIdentifier = [v29 secureElementIdentifier];
    [(PDTransitStateFetchRequest *)v31 setSecureElementIdentifier:secureElementIdentifier];

    applicationIdentifier = [v29 applicationIdentifier];
    [(PDTransitStateFetchRequest *)v31 setPaymentApplicationIdentifier:applicationIdentifier];

    transitRequests = self->_transitRequests;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000DF5BC;
    v41[3] = &unk_100844330;
    v35 = v31;
    v42 = v35;
    v36 = [(NSMutableArray *)transitRequests indexesOfObjectsPassingTest:v41];
    if ([v36 count])
    {
      [(NSMutableArray *)self->_transitRequests removeObjectsAtIndexes:v36];
    }
  }
}

- (void)transitAppletStateWithPassUniqueIdentifier:(id)identifier paymentApplication:(id)application completion:(id)completion
{
  identifierCopy = identifier;
  applicationCopy = application;
  completionCopy = completion;
  if (completionCopy)
  {
    accessQueue = self->_accessQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000DF6B8;
    v12[3] = &unk_10083E468;
    v12[4] = self;
    v13 = identifierCopy;
    v14 = applicationCopy;
    v15 = completionCopy;
    dispatch_async(accessQueue, v12);
  }
}

- (void)_resolveStationCodesForAppletState:(id)state paymentApplication:(id)application passUniqueIdentifier:(id)identifier
{
  applicationCopy = application;
  identifierCopy = identifier;
  stateCopy = state;
  v11 = objc_alloc_init(NSMutableSet);
  [@"0000" pk_decodeHexadecimal];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000DFB10;
  v12 = v38[3] = &unk_100844358;
  v39 = v12;
  v13 = v11;
  v40 = v13;
  v14 = objc_retainBlock(v38);
  felicaState = [stateCopy felicaState];

  if (felicaState)
  {
    greenCarOriginStationCode = [felicaState greenCarOriginStationCode];
    (v14[2])(v14, greenCarOriginStationCode);

    greenCarDestinationStationCode = [felicaState greenCarDestinationStationCode];
    (v14[2])(v14, greenCarDestinationStationCode);

    shinkansenOriginStationCode = [felicaState shinkansenOriginStationCode];
    (v14[2])(v14, shinkansenOriginStationCode);

    shinkansenDestinationStationCode = [felicaState shinkansenDestinationStationCode];
    (v14[2])(v14, shinkansenDestinationStationCode);

    shinkansenSecondaryOriginStationCode = [felicaState shinkansenSecondaryOriginStationCode];
    (v14[2])(v14, shinkansenSecondaryOriginStationCode);

    shinkansenSecondaryDestinationStationCode = [felicaState shinkansenSecondaryDestinationStationCode];
    (v14[2])(v14, shinkansenSecondaryDestinationStationCode);

    v22 = [v13 count];
    if (v22)
    {
      v23 = v22;
      selfCopy = self;
      v24 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        applicationIdentifier = [applicationCopy applicationIdentifier];
        *buf = 138412290;
        v42 = applicationIdentifier;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Processing Felica Applet State For Stations: %@", buf, 0xCu);
      }

      v26 = objc_alloc_init(off_10091E728());
      allObjects = [v13 allObjects];
      [v26 setStationCodes:allObjects];

      stationCodeProvider = [applicationCopy stationCodeProvider];
      [v26 setSourceIdentifier:stationCodeProvider];

      v29 = objc_alloc_init(off_10091E730());
      [v29 _setExternalTransitLookupParameters:v26];
      v30 = [objc_alloc(off_10091E738()) initWithRequest:v29];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1000DFB7C;
      v32[3] = &unk_100844380;
      v37 = v23;
      v33 = applicationCopy;
      v34 = selfCopy;
      v35 = identifierCopy;
      v36 = v13;
      [v30 startWithCompletionHandler:v32];
    }

    else
    {
      [(PDDatabaseManager *)self->_databaseManager updateTransitAppletStateWithStationNames:0 forPaymentApplication:applicationCopy withPassUniqueIdentifier:identifierCopy];
    }
  }
}

- (void)secureElementDidUpdateAppletStateForApplicationIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier
{
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  v8 = PKLogFacilityTypeGetObject();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (keyIdentifierCopy)
  {
    if (v9)
    {
      *buf = 138412546;
      v22 = identifierCopy;
      v23 = 2112;
      v24 = keyIdentifierCopy;
      v10 = "Handle SE Event From TSM for application identifier: %@ key identifier: %@.";
      v11 = v8;
      v12 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }
  }

  else if (v9)
  {
    *buf = 138412290;
    v22 = identifierCopy;
    v10 = "Handle SE Event From TSM for application identifier: %@.";
    v11 = v8;
    v12 = 12;
    goto LABEL_6;
  }

  v13 = PDOSTransactionCreate("PDTransitStateManager");
  v14 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DFF84;
  block[3] = &unk_10083C4C0;
  v18 = v13;
  selfCopy = self;
  v20 = identifierCopy;
  v15 = identifierCopy;
  v16 = v13;
  dispatch_async(v14, block);
}

- (void)updateAllExpressTransitAppletStates
{
  v3 = PDOSTransactionCreate("PDTransitStateManager");
  expressPassManager = self->_expressPassManager;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E0264;
  v6[3] = &unk_10083DB30;
  v7 = v3;
  selfCopy = self;
  v5 = v3;
  sub_10017F518(expressPassManager, v6);
}

- (void)expressPassManager:(id)manager willProcessPaymentApplicationsUpdateFromPriorPaymentApplications:(id)applications toPaymentApplications:(id)paymentApplications forPassUniqueIdentifier:(id)identifier
{
  applicationsCopy = applications;
  paymentApplicationsCopy = paymentApplications;
  identifierCopy = identifier;
  v12 = PDOSTransactionCreate("PDTransitStateManager");
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E07AC;
  block[3] = &unk_10083DE38;
  v19 = v12;
  v20 = applicationsCopy;
  v21 = paymentApplicationsCopy;
  v22 = identifierCopy;
  selfCopy = self;
  v14 = identifierCopy;
  v15 = paymentApplicationsCopy;
  v16 = applicationsCopy;
  v17 = v12;
  dispatch_async(accessQueue, block);
}

- (void)expressPassManager:(id)manager didFinishExpressTransactionWithState:(id)state
{
  stateCopy = state;
  v6 = stateCopy;
  if (stateCopy)
  {
    passUniqueIdentifier = [stateCopy passUniqueIdentifier];
    applicationIdentifier = [v6 applicationIdentifier];
    if ([v6 status] != 2 && !objc_msgSend(v6, "isIgnorable") && passUniqueIdentifier && applicationIdentifier)
    {
      v9 = PDOSTransactionCreate("PDTransitStateManager");
      accessQueue = self->_accessQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E0C8C;
      block[3] = &unk_10083DE38;
      v13 = v9;
      selfCopy = self;
      v15 = passUniqueIdentifier;
      v16 = applicationIdentifier;
      v17 = v6;
      v11 = v9;
      dispatch_async(accessQueue, block);
    }
  }
}

- (void)_notifyIssuerAppletStateDirtyWithPassID:(id)d forPaymentApplication:(id)application
{
  applicationCopy = application;
  dCopy = d;
  os_unfair_lock_lock(&self->_appletStateDirtyLock);
  v8 = [[PKTransitAppletStateDirty alloc] initWithPassUniqueIdentifier:dCopy paymentApplication:applicationCopy];

  v9 = [(PDDatabaseManager *)self->_databaseManager insertOrUpdateAppletStateDirtyForTransitAppletStateDirty:v8];

  [(NSMutableSet *)self->_appletStateDirtyRequests addObject:v9];
  [(PDTransitStateManager *)self _scheduleOneOffActivityRequest];
  os_unfair_lock_unlock(&self->_appletStateDirtyLock);
  [(PDTransitStateManager *)self _performWebRequestToNotifyIssuerAppletDirtyIfNecessary];
}

- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria
{
  os_unfair_lock_lock(&self->_appletStateDirtyLock);
  retrieveDirtyAppletStates = [(PDDatabaseManager *)self->_databaseManager retrieveDirtyAppletStates];
  appletStateDirtyRequests = self->_appletStateDirtyRequests;
  allObjects = [retrieveDirtyAppletStates allObjects];
  [(NSMutableSet *)appletStateDirtyRequests addObjectsFromArray:allObjects];

  os_unfair_lock_unlock(&self->_appletStateDirtyLock);
  [(PDTransitStateManager *)self _performWebRequestToNotifyIssuerAppletDirtyIfNecessary];
}

- (void)_scheduleOneOffActivityRequest
{
  if ((PDScheduledActivityExists() & 1) == 0)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Scheduling one off scheduleOneOffActivityRequest Activity for notification of applet state dirty", v5, 2u);
    }

    v3 = [NSDate dateWithTimeIntervalSinceNow:300.0];
    v4 = [PDScheduledActivityCriteria priorityActivityCriteriaWithStartDate:v3];
    [v4 setRequireNetworkConnectivity:1];
    PDScheduledActivityRegister();
  }
}

- (void)_scheduleRepeatingActivityRequest
{
  if ((PDScheduledActivityExists() & 1) == 0)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Scheduling repeating scheduleOneOffActivityRequest Activity for notification of applet state dirty", v5, 2u);
    }

    v3 = [NSDate dateWithTimeIntervalSinceNow:3600.0];
    v4 = [PDScheduledActivityCriteria priorityActivityCriteriaWithStartDate:v3];
    [v4 setRequireNetworkConnectivity:1];
    [v4 setRepeating:1];
    [v4 setRepeatInterval:86400.0];
    PDScheduledActivityRegister();
  }
}

- (void)_unscheduleOneOffActivityRequest
{
  if (PDScheduledActivityExists())
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Unscheduling one off scheduleOneOffActivityRequest Activity for notification of applet state dirty", v3, 2u);
    }

    PDScheduledActivityRemove();
  }
}

- (void)_unschedulePeriodicActivityRequest
{
  if (PDScheduledActivityExists())
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Scheduling repeating scheduleOneOffActivityRequest Activity for notification of applet state dirty", v3, 2u);
    }

    PDScheduledActivityRemove();
  }
}

- (void)_performWebRequestToNotifyIssuerAppletDirtyIfNecessary
{
  os_unfair_lock_lock(&self->_appletStateDirtyLock);
  if (self->_performingAppletDirtyRequests)
  {

    os_unfair_lock_unlock(&self->_appletStateDirtyLock);
  }

  else
  {
    self->_performingAppletDirtyRequests = 1;
    os_unfair_lock_unlock(&self->_appletStateDirtyLock);

    [(PDTransitStateManager *)self _performWebRequestToNotifyIssuerAppletDirty];
  }
}

- (void)_performWebRequestToNotifyIssuerAppletDirty
{
  os_unfair_lock_lock(&self->_appletStateDirtyLock);
  anyObject = [(NSMutableSet *)self->_appletStateDirtyRequests anyObject];
  if (anyObject)
  {
    self->_performingAppletDirtyRequests = 1;
    [(NSMutableSet *)self->_appletStateDirtyRequests removeObject:anyObject];
    os_unfair_lock_unlock(&self->_appletStateDirtyLock);
    passUniqueIdentifier = [anyObject passUniqueIdentifier];
    dpanIdentifier = [anyObject dpanIdentifier];
    v6 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:passUniqueIdentifier];
    serialNumber = [v6 serialNumber];
    v8 = [[PKPaymentNotifyIssuerAppletDirtyRequest alloc] initWithPassSerialNumber:serialNumber deviceAccountIdentifier:dpanIdentifier];
    objc_initWeak(&location, self);
    paymentWebServiceCoordinator = self->_paymentWebServiceCoordinator;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000E1524;
    v11[3] = &unk_100844420;
    v10 = v8;
    v12 = v10;
    objc_copyWeak(&v14, &location);
    v13 = anyObject;
    [(PDPaymentWebServiceCoordinator *)paymentWebServiceCoordinator performHandlerOnSharedWebServiceQueue:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    self->_performingAppletDirtyRequests = 0;
    if ([(PDDatabaseManager *)self->_databaseManager dirtyAppletStateCount]< 1)
    {
      [(PDTransitStateManager *)self _unscheduleOneOffActivityRequest];
      [(PDTransitStateManager *)self _unschedulePeriodicActivityRequest];
    }

    else
    {
      [(PDTransitStateManager *)self _scheduleRepeatingActivityRequest];
    }

    os_unfair_lock_unlock(&self->_appletStateDirtyLock);
  }
}

- (PDTransitStateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end