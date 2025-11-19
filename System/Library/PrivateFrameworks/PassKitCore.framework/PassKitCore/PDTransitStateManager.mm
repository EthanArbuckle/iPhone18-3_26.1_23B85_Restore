@interface PDTransitStateManager
- (PDTransitStateManager)initWithDatabaseManager:(id)a3 expressPassManager:(id)a4 secureElement:(id)a5 transactionProcessor:(id)a6 paymentWebServiceCoordinator:(id)a7 delegate:(id)a8;
- (PDTransitStateManagerDelegate)delegate;
- (void)_handleTransitRequestsWithSession:(id)a3;
- (void)_ingestAppletStateHistory:(id)a3 withTransactionDate:(id)a4 forceTransactionGeneration:(BOOL)a5 recoverMissingTransactions:(BOOL)a6 forPaymentApplication:(id)a7 withPassUniqueIdentifier:(id)a8 skipQueuedRequestSanitization:(BOOL)a9 expressTransactionState:(id)a10;
- (void)_notifyIssuerAppletStateDirtyWithPassID:(id)a3 forPaymentApplication:(id)a4;
- (void)_performWebRequestToNotifyIssuerAppletDirty;
- (void)_performWebRequestToNotifyIssuerAppletDirtyIfNecessary;
- (void)_queueTransitStateFetchRequest:(id)a3;
- (void)_resolveStationCodesForAppletState:(id)a3 paymentApplication:(id)a4 passUniqueIdentifier:(id)a5;
- (void)_scheduleOneOffActivityRequest;
- (void)_scheduleRepeatingActivityRequest;
- (void)_unscheduleOneOffActivityRequest;
- (void)_unschedulePeriodicActivityRequest;
- (void)dealloc;
- (void)expressPassManager:(id)a3 didFinishExpressTransactionWithState:(id)a4;
- (void)expressPassManager:(id)a3 willProcessPaymentApplicationsUpdateFromPriorPaymentApplications:(id)a4 toPaymentApplications:(id)a5 forPassUniqueIdentifier:(id)a6;
- (void)fetchAndCacheTransitStateForPassUniqueIdentifier:(id)a3 secureElementIdentifier:(id)a4 paymentApplicationIdentifier:(id)a5;
- (void)performScheduledActivityWithIdentifier:(id)a3 activityCriteria:(id)a4;
- (void)processTransactionEventWithHistory:(id)a3 transactionDate:(id)a4 forPaymentApplication:(id)a5 withPassUniqueIdentifier:(id)a6 expressTransactionState:(id)a7;
- (void)secureElementDidUpdateAppletStateForApplicationIdentifier:(id)a3 keyIdentifier:(id)a4;
- (void)transitAppletStateWithPassUniqueIdentifier:(id)a3 paymentApplication:(id)a4 completion:(id)a5;
- (void)updateAllExpressTransitAppletStates;
- (void)updateTransitAppletStateWithHistory:(id)a3 transactionDate:(id)a4 forPaymentApplication:(id)a5 withPassUniqueIdentifier:(id)a6;
@end

@implementation PDTransitStateManager

- (PDTransitStateManager)initWithDatabaseManager:(id)a3 expressPassManager:(id)a4 secureElement:(id)a5 transactionProcessor:(id)a6 paymentWebServiceCoordinator:(id)a7 delegate:(id)a8
{
  v30 = a3;
  v29 = a4;
  v28 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v31.receiver = self;
  v31.super_class = PDTransitStateManager;
  v18 = [(PDTransitStateManager *)&v31 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_databaseManager, a3);
    objc_storeStrong(&v19->_expressPassManager, a4);
    objc_storeStrong(&v19->_secureElement, a5);
    objc_storeStrong(&v19->_transactionProcessor, a6);
    objc_storeStrong(&v19->_paymentWebServiceCoordinator, a7);
    objc_storeWeak(&v19->_delegate, v17);
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

- (void)fetchAndCacheTransitStateForPassUniqueIdentifier:(id)a3 secureElementIdentifier:(id)a4 paymentApplicationIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PDOSTransactionCreate("PDTransitStateManager");
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DE0C0;
  block[3] = &unk_10083DE38;
  v18 = v11;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = self;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v11;
  dispatch_async(accessQueue, block);
}

- (void)_queueTransitStateFetchRequest:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_accessQueue);
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 passUniqueIdentifier];
    v7 = [v4 secureElementIdentifier];
    v8 = [v4 paymentApplicationIdentifier];
    *buf = 138412802;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding Transit State Fetch Request\npassId: %@, seid: %@, aid: %@", buf, 0x20u);
  }

  [(NSMutableArray *)self->_transitRequests addObject:v4];
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

- (void)_handleTransitRequestsWithSession:(id)a3
{
  v4 = a3;
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
    v28 = self;
    v29 = v4;
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
            v12 = [v11 passUniqueIdentifier];
            v13 = [v11 paymentApplicationIdentifier];
            *buf = 138412546;
            v41 = v12;
            v42 = 2112;
            v43 = v13;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "\t%@: %@", buf, 0x16u);
          }

          v14 = [v11 passUniqueIdentifier];
          v15 = [v11 paymentApplicationIdentifier];
          databaseManager = self->_databaseManager;
          v17 = [v11 secureElementIdentifier];
          v18 = [(PDDatabaseManager *)databaseManager paymentApplicationWithPassUniqueIdentifier:v14 secureElementIdentifier:v17 paymentApplicationIdentifier:v15];

          if (v18)
          {
            v19 = [v4 appletWithIdentifier:v15];
            if (v19)
            {
              v20 = [PKContactlessInterfaceSession transitAppletStateFromPaymentSession:v4 forPaymentApplication:v18];
              [v34 addObject:v11];
              if (v20)
              {
                v21 = [v11 transactionDate];
                v30 = [v11 forceTransactionGeneration];
                v22 = [v11 recoverMissingTransactions];
                v23 = [v11 expressState];
                LOBYTE(v25) = 1;
                [(PDTransitStateManager *)self _ingestAppletStateHistory:v20 withTransactionDate:v21 forceTransactionGeneration:v30 recoverMissingTransactions:v22 forPaymentApplication:v18 withPassUniqueIdentifier:v14 skipQueuedRequestSanitization:v25 expressTransactionState:v23];

                if ([v20 isBlacklisted])
                {
                  v5 = oslog;
                  v4 = v29;
                  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "\tDeleting applet due to denylisting.", buf, 2u);
                  }

                  v39 = v19;
                  v24 = [NSArray arrayWithObjects:&v39 count:1];
                  [v29 deleteApplets:v24 queueServerConnection:1];

                  self = v28;
                }

                else
                {
                  self = v28;
                  v4 = v29;
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

- (void)processTransactionEventWithHistory:(id)a3 transactionDate:(id)a4 forPaymentApplication:(id)a5 withPassUniqueIdentifier:(id)a6 expressTransactionState:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = PDOSTransactionCreate("PDTransitStateManager");
  if (!v13)
  {
    v13 = +[NSDate date];
  }

  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DEC34;
  block[3] = &unk_10083DE88;
  v26 = v17;
  v27 = v12;
  v28 = self;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v12;
  v24 = v17;
  dispatch_async(accessQueue, block);
}

- (void)updateTransitAppletStateWithHistory:(id)a3 transactionDate:(id)a4 forPaymentApplication:(id)a5 withPassUniqueIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = PDOSTransactionCreate("PDTransitStateManager");
  accessQueue = self->_accessQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000DEE88;
  v21[3] = &unk_1008442B8;
  v22 = v14;
  v23 = self;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  v20 = v14;
  dispatch_async(accessQueue, v21);
}

- (void)_ingestAppletStateHistory:(id)a3 withTransactionDate:(id)a4 forceTransactionGeneration:(BOOL)a5 recoverMissingTransactions:(BOOL)a6 forPaymentApplication:(id)a7 withPassUniqueIdentifier:(id)a8 skipQueuedRequestSanitization:(BOOL)a9 expressTransactionState:(id)a10
{
  v37 = a6;
  v12 = a5;
  v40 = a3;
  v39 = a4;
  v15 = a7;
  v16 = a8;
  v17 = a10;
  dispatch_assert_queue_V2(self->_accessQueue);
  if (v12)
  {
    v18 = [v15 isParsedTransitApplication];
    v19 = 1;
    if (v17 && v18)
    {
      v19 = [v17 transacted];
    }
  }

  else
  {
    v19 = 0;
  }

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000DF35C;
  v46[3] = &unk_1008442E0;
  v46[4] = self;
  v20 = v16;
  v47 = v20;
  v21 = v15;
  v48 = v21;
  [(PDTransitStateManager *)self transitAppletStateWithPassUniqueIdentifier:v20 paymentApplication:v21 completion:v46];
  v22 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:v20];
  v23 = [v22 paymentPass];

  v38 = v17;
  if (v23)
  {
    if ([v23 isStoredValuePass])
    {
      v24 = PKPaymentPassBalanceLabelDictionary(v23);
      v25 = PKPaymentPassUnitDictionary(v23);
      v26 = PKPaymentPassPlanLabelDictionary(v23);
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
  [(PDDatabaseManager *)databaseManager updateTransitAppletStateWithHistory:v40 transactionDate:v39 forPaymentApplication:v29 withPassUniqueIdentifier:v30 forceTransactionGeneration:v19 recoverMissingTransactions:v37 balanceLabelDictionary:v24 unitDictionary:v25 planLabelDictionary:v26 completion:v43];
  if (!a9)
  {
    v31 = objc_alloc_init(PDTransitStateFetchRequest);
    [(PDTransitStateFetchRequest *)v31 setPassUniqueIdentifier:v30];
    v32 = [v29 secureElementIdentifier];
    [(PDTransitStateFetchRequest *)v31 setSecureElementIdentifier:v32];

    v33 = [v29 applicationIdentifier];
    [(PDTransitStateFetchRequest *)v31 setPaymentApplicationIdentifier:v33];

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

- (void)transitAppletStateWithPassUniqueIdentifier:(id)a3 paymentApplication:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    accessQueue = self->_accessQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000DF6B8;
    v12[3] = &unk_10083E468;
    v12[4] = self;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    dispatch_async(accessQueue, v12);
  }
}

- (void)_resolveStationCodesForAppletState:(id)a3 paymentApplication:(id)a4 passUniqueIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
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
  v15 = [v10 felicaState];

  if (v15)
  {
    v16 = [v15 greenCarOriginStationCode];
    (v14[2])(v14, v16);

    v17 = [v15 greenCarDestinationStationCode];
    (v14[2])(v14, v17);

    v18 = [v15 shinkansenOriginStationCode];
    (v14[2])(v14, v18);

    v19 = [v15 shinkansenDestinationStationCode];
    (v14[2])(v14, v19);

    v20 = [v15 shinkansenSecondaryOriginStationCode];
    (v14[2])(v14, v20);

    v21 = [v15 shinkansenSecondaryDestinationStationCode];
    (v14[2])(v14, v21);

    v22 = [v13 count];
    if (v22)
    {
      v23 = v22;
      v31 = self;
      v24 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v8 applicationIdentifier];
        *buf = 138412290;
        v42 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Processing Felica Applet State For Stations: %@", buf, 0xCu);
      }

      v26 = objc_alloc_init(off_10091E728());
      v27 = [v13 allObjects];
      [v26 setStationCodes:v27];

      v28 = [v8 stationCodeProvider];
      [v26 setSourceIdentifier:v28];

      v29 = objc_alloc_init(off_10091E730());
      [v29 _setExternalTransitLookupParameters:v26];
      v30 = [objc_alloc(off_10091E738()) initWithRequest:v29];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1000DFB7C;
      v32[3] = &unk_100844380;
      v37 = v23;
      v33 = v8;
      v34 = v31;
      v35 = v9;
      v36 = v13;
      [v30 startWithCompletionHandler:v32];
    }

    else
    {
      [(PDDatabaseManager *)self->_databaseManager updateTransitAppletStateWithStationNames:0 forPaymentApplication:v8 withPassUniqueIdentifier:v9];
    }
  }
}

- (void)secureElementDidUpdateAppletStateForApplicationIdentifier:(id)a3 keyIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
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
    v22 = v6;
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
  v19 = self;
  v20 = v6;
  v15 = v6;
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
  v8 = self;
  v5 = v3;
  sub_10017F518(expressPassManager, v6);
}

- (void)expressPassManager:(id)a3 willProcessPaymentApplicationsUpdateFromPriorPaymentApplications:(id)a4 toPaymentApplications:(id)a5 forPassUniqueIdentifier:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = PDOSTransactionCreate("PDTransitStateManager");
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E07AC;
  block[3] = &unk_10083DE38;
  v19 = v12;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = self;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = v12;
  dispatch_async(accessQueue, block);
}

- (void)expressPassManager:(id)a3 didFinishExpressTransactionWithState:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 passUniqueIdentifier];
    v8 = [v6 applicationIdentifier];
    if ([v6 status] != 2 && !objc_msgSend(v6, "isIgnorable") && v7 && v8)
    {
      v9 = PDOSTransactionCreate("PDTransitStateManager");
      accessQueue = self->_accessQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E0C8C;
      block[3] = &unk_10083DE38;
      v13 = v9;
      v14 = self;
      v15 = v7;
      v16 = v8;
      v17 = v6;
      v11 = v9;
      dispatch_async(accessQueue, block);
    }
  }
}

- (void)_notifyIssuerAppletStateDirtyWithPassID:(id)a3 forPaymentApplication:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_appletStateDirtyLock);
  v8 = [[PKTransitAppletStateDirty alloc] initWithPassUniqueIdentifier:v7 paymentApplication:v6];

  v9 = [(PDDatabaseManager *)self->_databaseManager insertOrUpdateAppletStateDirtyForTransitAppletStateDirty:v8];

  [(NSMutableSet *)self->_appletStateDirtyRequests addObject:v9];
  [(PDTransitStateManager *)self _scheduleOneOffActivityRequest];
  os_unfair_lock_unlock(&self->_appletStateDirtyLock);
  [(PDTransitStateManager *)self _performWebRequestToNotifyIssuerAppletDirtyIfNecessary];
}

- (void)performScheduledActivityWithIdentifier:(id)a3 activityCriteria:(id)a4
{
  os_unfair_lock_lock(&self->_appletStateDirtyLock);
  v7 = [(PDDatabaseManager *)self->_databaseManager retrieveDirtyAppletStates];
  appletStateDirtyRequests = self->_appletStateDirtyRequests;
  v6 = [v7 allObjects];
  [(NSMutableSet *)appletStateDirtyRequests addObjectsFromArray:v6];

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
  v3 = [(NSMutableSet *)self->_appletStateDirtyRequests anyObject];
  if (v3)
  {
    self->_performingAppletDirtyRequests = 1;
    [(NSMutableSet *)self->_appletStateDirtyRequests removeObject:v3];
    os_unfair_lock_unlock(&self->_appletStateDirtyLock);
    v4 = [v3 passUniqueIdentifier];
    v5 = [v3 dpanIdentifier];
    v6 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:v4];
    v7 = [v6 serialNumber];
    v8 = [[PKPaymentNotifyIssuerAppletDirtyRequest alloc] initWithPassSerialNumber:v7 deviceAccountIdentifier:v5];
    objc_initWeak(&location, self);
    paymentWebServiceCoordinator = self->_paymentWebServiceCoordinator;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000E1524;
    v11[3] = &unk_100844420;
    v10 = v8;
    v12 = v10;
    objc_copyWeak(&v14, &location);
    v13 = v3;
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