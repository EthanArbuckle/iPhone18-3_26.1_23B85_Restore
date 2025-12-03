@interface PDNotificationServiceCoordinator
- (BOOL)_processMessageDictionary:(id)dictionary forPassUniqueIdentifier:(id)identifier paymentApplication:(id)application performTruncation:(BOOL)truncation;
- (BOOL)_processTransactionDictionary:(id)dictionary forPassUniqueIdentifier:(id)identifier paymentApplication:(id)application performTruncation:(BOOL)truncation isInitialUpdate:(BOOL)update;
- (BOOL)_validateBalanceResult:(id)result;
- (BOOL)_validatePlanResult:(id)result;
- (PDNotificationServiceCoordinator)initWithPushNotificationManager:(id)manager databaseManager:(id)databaseManager userNotificationManager:(id)notificationManager paymentTransactionProcessor:(id)processor paymentWebServiceCoordinator:(id)coordinator;
- (id)_partnerAccountIdentifierWithPaymentApplication:(id)application passUniqueIdentifier:(id)identifier;
- (id)pushNotificationTopics;
- (void)_cancelAllTasksForPaymentApplication:(id)application notificationService:(id)service;
- (void)_clearStoredDataForPassUniqueIdentifier:(id)identifier notificationService:(id)service;
- (void)_invokeAndClearHandlerForTask:(id)task withResult:(BOOL)result;
- (void)_isMerchantTokenTransaction:(id)transaction forPass:(id)pass completion:(id)completion;
- (void)_notificationUpdatesTaskSucceeded:(id)succeeded withResult:(id)result;
- (void)_performDeregistrationForPassUniqueIdentifier:(id)identifier paymentApplication:(id)application notificationService:(id)service;
- (void)_performRegistrationForPassUniqueIdentifier:(id)identifier paymentApplication:(id)application notificationService:(id)service isInitialRegistration:(BOOL)registration;
- (void)_performRegistrationTaskForPaymentApplication:(id)application notificationService:(id)service completionTask:(id)task;
- (void)_recalculatePushTopics;
- (void)_registrationTaskSucceeded:(id)succeeded withAuthenticationToken:(id)token;
- (void)_transactionAuthenticationTaskSucceeded:(id)succeeded withResponse:(id)response;
- (void)_updateRegistrationStatusForPass:(id)pass notificationService:(id)service requestedRegistrationStatus:(unint64_t)status refreshRegistrationIfPossible:(BOOL)possible requestUpdateWhenAlreadyRegistered:(BOOL)registered;
- (void)applyPushNotificationToken:(id)token;
- (void)cancelAutoTopUpFromNotificationService:(id)service passUniqueIdenitifer:(id)idenitifer accountIdentifier:(id)identifier balance:(id)balance completion:(id)completion;
- (void)connect;
- (void)dealloc;
- (void)handlePostBalanceTaskWithNotificationService:(id)service passUniqueIdenitifer:(id)idenitifer accountIdentifier:(id)identifier transactionSequenceNumber:(id)number balance:(id)balance;
- (void)handlePushNotificationForTopic:(id)topic userInfo:(id)info;
- (void)handleUpdateOfPass:(id)pass toPass:(id)toPass oldNotificationService:(id)service newNotificationService:(id)notificationService;
- (void)nukeTasks;
- (void)removeLowBalanceNotificationForBalance:(id)balance withPassUniqueIdentifier:(id)identifier;
- (void)requestUpdatesFromNotificationService:(id)service passUniqueIdenitifer:(id)idenitifer forceUpdate:(BOOL)update;
- (void)sendLowBalanceNotificationForBalance:(id)balance withReminder:(id)reminder passUniqueIdentifier:(id)identifier;
- (void)sendLowBalanceNotificationIfNecessaryForUpdatedBalances:(id)balances startingBalances:(id)startingBalances passUniqueIdentifier:(id)identifier;
- (void)submitTransactionAuthenticationResultsData:(id)data signature:(id)signature forPass:(id)pass transactionServiceIdentifier:(id)identifier notificationService:(id)service completion:(id)completion;
- (void)task:(id)task encounteredError:(id)error;
- (void)task:(id)task gotResult:(id)result;
- (void)task:(id)task willRetryAfterMinimumDelay:(double)delay;
- (void)taskRequestedReauthentication:(id)reauthentication;
- (void)updateLowBalanceNotificationForBalance:(id)balance withPassUniqueIdentifier:(id)identifier;
@end

@implementation PDNotificationServiceCoordinator

- (PDNotificationServiceCoordinator)initWithPushNotificationManager:(id)manager databaseManager:(id)databaseManager userNotificationManager:(id)notificationManager paymentTransactionProcessor:(id)processor paymentWebServiceCoordinator:(id)coordinator
{
  managerCopy = manager;
  databaseManagerCopy = databaseManager;
  notificationManagerCopy = notificationManager;
  processorCopy = processor;
  coordinatorCopy = coordinator;
  v29.receiver = self;
  v29.super_class = PDNotificationServiceCoordinator;
  v17 = [(PDNotificationServiceCoordinator *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_pushNotificationManager, manager);
    objc_storeStrong(&v18->_databaseManager, databaseManager);
    objc_storeStrong(&v18->_userNotificationManager, notificationManager);
    objc_storeStrong(&v18->_paymentTransactionProcessor, processor);
    objc_storeStrong(&v18->_paymentWebServiceCoordinator, coordinator);
    v19 = +[PKSecureElement sharedSecureElement];
    secureElement = v18->_secureElement;
    v18->_secureElement = v19;

    v21 = objc_alloc_init(NSMutableDictionary);
    taskToHandlerMap = v18->_taskToHandlerMap;
    v18->_taskToHandlerMap = v21;

    v23 = objc_alloc_init(NSMutableDictionary);
    taskToResponseMap = v18->_taskToResponseMap;
    v18->_taskToResponseMap = v23;

    v25 = objc_alloc_init(NSMutableDictionary);
    taskToErrorMap = v18->_taskToErrorMap;
    v18->_taskToErrorMap = v25;

    [(PDDatabaseManager *)v18->_databaseManager setNotificationServicesDelegate:v18];
  }

  return v18;
}

- (void)dealloc
{
  [(PDPushNotificationManager *)self->_pushNotificationManager unregisterConsumer:self];
  [(PDDatabaseManager *)self->_databaseManager setNotificationServicesDelegate:0];
  v3.receiver = self;
  v3.super_class = PDNotificationServiceCoordinator;
  [(PDNotificationServiceCoordinator *)&v3 dealloc];
}

- (void)connect
{
  [(PDPushNotificationManager *)self->_pushNotificationManager registerConsumer:self];
  if (!self->_taskManager)
  {
    v3 = [[PDNetworkTaskManager alloc] initWithDelegate:self archiveName:@"NotificationServiceTasks"];
    taskManager = self->_taskManager;
    self->_taskManager = v3;

    _objc_release_x1(v3, taskManager);
  }
}

- (void)nukeTasks
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing all notification service tasks", v4, 2u);
  }

  [(PDNetworkTaskManager *)self->_taskManager nukeArchive];
}

- (void)applyPushNotificationToken:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    notificationServices = [(PDDatabaseManager *)self->_databaseManager notificationServices];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10008E6D8;
    v6[3] = &unk_1008411E0;
    v7 = tokenCopy;
    selfCopy = self;
    [notificationServices enumerateObjectsUsingBlock:v6];
  }
}

- (void)handlePushNotificationForTopic:(id)topic userInfo:(id)info
{
  topicCopy = topic;
  infoCopy = info;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v56 = topicCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PDNotificationServiceCoordinator: processing push for topic %@.", buf, 0xCu);
  }

  v32 = objc_autoreleasePoolPush();
  v8 = +[NSNull null];
  v34 = topicCopy;
  [(PDDatabaseManager *)self->_databaseManager notificationServicesForPushTopic:topicCopy];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v53 = 0u;
  v38 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v38)
  {
    v36 = *v51;
    v37 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v51 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v9;
        v10 = *(*(&v50 + 1) + 8 * v9);
        context = objc_autoreleasePoolPush();
        v11 = objc_alloc_init(NSMutableSet);
        v12 = [(PDDatabaseManager *)self->_databaseManager passesForNotificationService:v10];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v46 objects:v61 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v47;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v47 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v46 + 1) + 8 * i);
              if ([v17 passType] == 1)
              {
                partnerAccountIdentifier = [v17 partnerAccountIdentifier];
                v19 = partnerAccountIdentifier;
                if (partnerAccountIdentifier)
                {
                  v20 = partnerAccountIdentifier;
                }

                else
                {
                  v20 = v8;
                }

                [v11 addObject:v20];
              }

              else
              {
                [v11 addObject:v8];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v46 objects:v61 count:16];
          }

          while (v14);
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v12 count];
          serviceURL = [v10 serviceURL];
          *buf = 134218498;
          v56 = v21;
          v57 = 2112;
          v58 = v12;
          v59 = 2112;
          v60 = serviceURL;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PDNotificationServiceCoordinator: matched %lu passes (%@) for service url %@.", buf, 0x20u);
        }

        v39 = v12;

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v23 = v11;
        v24 = [v23 countByEnumeratingWithState:&v42 objects:v54 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v43;
          do
          {
            for (j = 0; j != v25; j = j + 1)
            {
              if (*v43 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v42 + 1) + 8 * j);
              if (v28 == v8)
              {
                v28 = 0;
              }

              taskManager = self->_taskManager;
              v30 = v28;
              v31 = [PDNotificationServiceGetUpdatesTask getUpdatesTaskWithNotificationService:v10 accountIdentifier:v30];
              [(PDNetworkTaskManager *)taskManager performTask:v31];
            }

            v25 = [v23 countByEnumeratingWithState:&v42 objects:v54 count:16];
          }

          while (v25);
        }

        objc_autoreleasePoolPop(context);
        v9 = v41 + 1;
        v7 = v37;
      }

      while ((v41 + 1) != v38);
      v38 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v38);
  }

  objc_autoreleasePoolPop(v32);
}

- (id)pushNotificationTopics
{
  if (!self->_pushTopics)
  {
    v3 = +[NSMutableSet set];
    notificationServices = [(PDDatabaseManager *)self->_databaseManager notificationServices];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008EDF4;
    v12[3] = &unk_1008411E0;
    v12[4] = self;
    v5 = v3;
    v13 = v5;
    [notificationServices enumerateObjectsUsingBlock:v12];

    pushTopics = self->_pushTopics;
    self->_pushTopics = v5;
    v7 = v5;
  }

  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_pushTopics;
    *buf = 138412290;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Enabled Notification Services Push Topics: %@", buf, 0xCu);
  }

  v10 = self->_pushTopics;

  return v10;
}

- (void)handleUpdateOfPass:(id)pass toPass:(id)toPass oldNotificationService:(id)service newNotificationService:(id)notificationService
{
  passCopy = pass;
  toPassCopy = toPass;
  serviceCopy = service;
  notificationServiceCopy = notificationService;
  if (serviceCopy && ([serviceCopy matchesNotificationService:notificationServiceCopy] & 1) == 0)
  {
    [(PDNotificationServiceCoordinator *)self _updateRegistrationStatusForPass:passCopy notificationService:serviceCopy requestedRegistrationStatus:2 refreshRegistrationIfPossible:0];
  }

  if (notificationServiceCopy)
  {
    if ([notificationServiceCopy serviceType])
    {
      v13 = 0;
    }

    else
    {
      paymentPass = [passCopy paymentPass];
      HIDWORD(v24) = [paymentPass supportsDPANNotifications];

      paymentPass2 = [passCopy paymentPass];
      LODWORD(v24) = [paymentPass2 supportsFPANNotifications];

      paymentPass3 = [toPassCopy paymentPass];
      LOBYTE(paymentPass2) = [paymentPass3 supportsDPANNotifications];

      paymentPass4 = [toPassCopy paymentPass];
      supportsFPANNotifications = [paymentPass4 supportsFPANNotifications];

      paymentPass5 = [passCopy paymentPass];
      sharedWebService = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator sharedWebService];
      v21 = [paymentPass5 hasActiveVirtualCardAccordingToWebService:sharedWebService];

      paymentPass6 = [toPassCopy paymentPass];
      sharedWebService2 = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator sharedWebService];
      LOBYTE(paymentPass) = [paymentPass6 hasActiveVirtualCardAccordingToWebService:sharedWebService2];

      v13 = BYTE4(v24) ^ paymentPass2 | v24 ^ supportsFPANNotifications | (v21 ^ 1) & paymentPass;
    }

    [(PDNotificationServiceCoordinator *)self _updateRegistrationStatusForPass:toPassCopy notificationService:notificationServiceCopy requestedRegistrationStatus:1 refreshRegistrationIfPossible:v13 & 1, v24];
  }
}

- (void)cancelAutoTopUpFromNotificationService:(id)service passUniqueIdenitifer:(id)idenitifer accountIdentifier:(id)identifier balance:(id)balance completion:(id)completion
{
  serviceCopy = service;
  idenitiferCopy = idenitifer;
  identifierCopy = identifier;
  balanceCopy = balance;
  completionCopy = completion;
  if (serviceCopy)
  {
    v17 = [(PDDatabaseManager *)self->_databaseManager primaryPaymentApplicationForPassUniqueIdentifier:idenitiferCopy];
    dpanIdentifier = [v17 dpanIdentifier];
    if (dpanIdentifier)
    {
      v19 = dpanIdentifier;
      v20 = -[PDDatabaseManager registrationStatusForNotificationServiceType:passUniqueIdentifier:](self->_databaseManager, "registrationStatusForNotificationServiceType:passUniqueIdentifier:", [serviceCopy serviceType], idenitiferCopy);
      v21 = PKLogFacilityTypeGetObject();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v20 == 1)
      {
        v34 = v17;
        if (v22)
        {
          *buf = 134218754;
          v41 = 1;
          v42 = 2112;
          v43 = idenitiferCopy;
          v44 = 2112;
          v45 = v19;
          v46 = 2112;
          v47 = serviceCopy;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Registration status: %lu - Perform cancel auto top up task for pass: %@, DPAN ID: %@, and notification service: [%@]", buf, 0x2Au);
        }

        v33 = [PDNotificationServicePostBalanceTask postBalanceTaskWithNotificationService:serviceCopy dpanIdentifier:v19 accountIdentifier:identifierCopy transactionSequenceNumber:0 autoTopUpDisabled:1 balance:balanceCopy];
        v23 = [(PDNotificationServiceCoordinator *)self _dictionaryKeyForTask:v33];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_10008F490;
        v35[3] = &unk_100841208;
        v39 = completionCopy;
        v35[4] = self;
        v36 = v23;
        v37 = balanceCopy;
        v38 = idenitiferCopy;
        v24 = v23;
        v32 = identifierCopy;
        v25 = objc_retainBlock(v35);
        taskToHandlerMap = self->_taskToHandlerMap;
        v27 = v19;
        v28 = balanceCopy;
        v29 = objc_retainBlock(v25);
        [(NSMutableDictionary *)taskToHandlerMap setObject:v29 forKey:v24];

        balanceCopy = v28;
        v19 = v27;
        [(PDNetworkTaskManager *)self->_taskManager performTask:v33];

        identifierCopy = v32;
        v17 = v34;
      }

      else
      {
        if (v22)
        {
          *buf = 138412546;
          v41 = idenitiferCopy;
          v42 = 2048;
          v43 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Cannot perform cancel auto top up task for pass: %@, registration status: %lu", buf, 0x16u);
        }

        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, 0);
        }
      }
    }

    else
    {
      v31 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = idenitiferCopy;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Cannot perform cancel auto top up task for pass: %@, no DPAN Identifier", buf, 0xCu);
      }

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 0);
      }
    }
  }

  else
  {
    v30 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = idenitiferCopy;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Cannot perform cancel auto top up task for pass: %@, no notification service", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)handlePostBalanceTaskWithNotificationService:(id)service passUniqueIdenitifer:(id)idenitifer accountIdentifier:(id)identifier transactionSequenceNumber:(id)number balance:(id)balance
{
  serviceCopy = service;
  idenitiferCopy = idenitifer;
  identifierCopy = identifier;
  numberCopy = number;
  balanceCopy = balance;
  if (serviceCopy)
  {
    v17 = [(PDDatabaseManager *)self->_databaseManager primaryPaymentApplicationForPassUniqueIdentifier:idenitiferCopy];
    dpanIdentifier = [v17 dpanIdentifier];
    v24 = identifierCopy;
    if (dpanIdentifier)
    {
      v19 = -[PDDatabaseManager registrationStatusForNotificationServiceType:passUniqueIdentifier:](self->_databaseManager, "registrationStatusForNotificationServiceType:passUniqueIdentifier:", [serviceCopy serviceType], idenitiferCopy);
      v20 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219266;
        v26 = v19;
        v27 = 2112;
        v28 = idenitiferCopy;
        v29 = 2112;
        v30 = dpanIdentifier;
        v31 = 2112;
        v32 = numberCopy;
        v33 = 2112;
        v34 = balanceCopy;
        v35 = 2112;
        v36 = serviceCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Registration status: %lu - Perform post balance task for pass: %@, DPAN ID: %@, transactionSequenceNumber %@, balance, %@, and notification service: [%@]", buf, 0x3Eu);
      }

      v21 = [PDNotificationServicePostBalanceTask postBalanceTaskWithNotificationService:serviceCopy dpanIdentifier:dpanIdentifier accountIdentifier:identifierCopy transactionSequenceNumber:numberCopy autoTopUpDisabled:0 balance:balanceCopy];
      if (v19 == 1)
      {
        [(PDNetworkTaskManager *)self->_taskManager performTask:v21];
      }

      else
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v26 = idenitiferCopy;
          v27 = 2112;
          v28 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Register pass with unique identifier: %@ and post balance completion task: [%@]", buf, 0x16u);
        }

        pushToken = [serviceCopy pushToken];

        if (!pushToken)
        {
          pushToken2 = [(PDPushNotificationManager *)self->_pushNotificationManager pushToken];
          [serviceCopy setPushToken:pushToken2];

          [(PDDatabaseManager *)self->_databaseManager updateNotificationService:serviceCopy];
        }

        [(PDNotificationServiceCoordinator *)self _performRegistrationTaskForPaymentApplication:v17 notificationService:serviceCopy completionTask:v21];
      }
    }

    else
    {
      v21 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = idenitiferCopy;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Cannot perform post balance task for pass: %@, no DPAN Identifier", buf, 0xCu);
      }
    }

    identifierCopy = v24;
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = idenitiferCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Cannot perform post balance task for pass: %@, no notification service", buf, 0xCu);
    }
  }
}

- (void)task:(id)task gotResult:(id)result
{
  taskCopy = task;
  resultCopy = result;
  v7 = PDOSTransactionCreate("PDNotificationServiceCoordinator");
  v8 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([taskCopy requestedStatus] == 1)
    {
      [(PDNotificationServiceCoordinator *)self _registrationTaskSucceeded:taskCopy withAuthenticationToken:resultCopy];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PDNotificationServiceCoordinator *)self _notificationUpdatesTaskSucceeded:taskCopy withResult:resultCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PDNotificationServiceCoordinator *)self _transactionAuthenticationTaskSucceeded:taskCopy withResponse:resultCopy];
      }
    }
  }

  objc_autoreleasePoolPop(v8);
}

- (void)task:(id)task willRetryAfterMinimumDelay:(double)delay
{
  taskCopy = task;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = taskCopy;
    v10 = 2048;
    delayCopy = delay;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ will retry after %g seconds", &v8, 0x16u);
  }

  [(PDNotificationServiceCoordinator *)self _invokeAndClearHandlerForTask:taskCopy withResult:0];
}

- (void)task:(id)task encounteredError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PDErrorDescription();
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@", &v12, 0xCu);
  }

  v10 = [(PDNotificationServiceCoordinator *)self _dictionaryKeyForTask:taskCopy];
  v11 = v10;
  if (errorCopy && v10)
  {
    [(NSMutableDictionary *)self->_taskToErrorMap setObject:errorCopy forKey:v10];
  }
}

- (void)taskRequestedReauthentication:(id)reauthentication
{
  reauthenticationCopy = reauthentication;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = 0;
        goto LABEL_11;
      }
    }

    databaseManager = self->_databaseManager;
    dpanIdentifier = [reauthenticationCopy dpanIdentifier];
    v7 = [(PDDatabaseManager *)databaseManager paymentApplicationWithDPANIdentifier:dpanIdentifier];

    dpanIdentifier3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(dpanIdentifier3, OS_LOG_TYPE_DEFAULT))
    {
      dpanIdentifier2 = [v7 dpanIdentifier];
      v13 = 138412290;
      v14 = dpanIdentifier2;
      _os_log_impl(&_mh_execute_header, dpanIdentifier3, OS_LOG_TYPE_DEFAULT, "Re-Authenticating for dpanIdentifier: %@", &v13, 0xCu);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }

    v10 = self->_databaseManager;
    dpanIdentifier3 = [reauthenticationCopy dpanIdentifier];
    v7 = [(PDDatabaseManager *)v10 paymentApplicationWithDPANIdentifier:dpanIdentifier3];
  }

LABEL_11:
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = reauthenticationCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Re-Authenticating due to Request from Previous Task:%@", &v13, 0xCu);
  }

  notificationService = [reauthenticationCopy notificationService];
  [(PDNotificationServiceCoordinator *)self _performRegistrationTaskForPaymentApplication:v7 notificationService:notificationService completionTask:reauthenticationCopy];

LABEL_14:
}

- (void)requestUpdatesFromNotificationService:(id)service passUniqueIdenitifer:(id)idenitifer forceUpdate:(BOOL)update
{
  updateCopy = update;
  serviceCopy = service;
  idenitiferCopy = idenitifer;
  if (serviceCopy)
  {
    v10 = [(PDDatabaseManager *)self->_databaseManager primaryPaymentApplicationForPassUniqueIdentifier:idenitiferCopy];
    dpanIdentifier = [v10 dpanIdentifier];
    if (-[PDDatabaseManager registrationStatusForNotificationServiceType:passUniqueIdentifier:](self->_databaseManager, "registrationStatusForNotificationServiceType:passUniqueIdentifier:", [serviceCopy serviceType], idenitiferCopy) == 1)
    {
      serviceType = [serviceCopy serviceType];
      v13 = [(PDDatabaseManager *)self->_databaseManager lastUpdatedDateForNotificationServiceType:serviceType passUniqueIdentifier:idenitiferCopy];
      v14 = v13;
      if (!v13 || ([v13 timeIntervalSinceNow], fabs(v15) > 86400.0) || (PKDisableNotificationPullTimeout() & 1) != 0 || updateCopy)
      {
        v16 = [(PDDatabaseManager *)self->_databaseManager lastUpdatedTagForNotificationServiceType:serviceType passUniqueIdentifier:idenitiferCopy];
        if (dpanIdentifier)
        {
          v17 = [(PDNotificationServiceCoordinator *)self _partnerAccountIdentifierWithPaymentApplication:v10 passUniqueIdentifier:idenitiferCopy];
          v27 = dpanIdentifier;
          v18 = v10;
          paymentNetworkIdentifier = [v10 paymentNetworkIdentifier];
          sharedWebService = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator sharedWebService];
          v21 = paymentNetworkIdentifier;
          v10 = v18;
          v22 = [PDNotificationServiceGetSpecificUpdatesTask getSpecificUpdatesTaskWithNotificationService:serviceCopy dpanIdentifier:dpanIdentifier credentialType:v21 lastUpdatedTag:v16 accountIdentifier:v17 webService:sharedWebService];

          [(PDNetworkTaskManager *)self->_taskManager performTask:v22];
          dpanIdentifier = v27;
        }
      }
    }

    else
    {
      taskManager = self->_taskManager;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100090304;
      v28[3] = &unk_100841270;
      v24 = serviceCopy;
      v29 = v24;
      v30 = dpanIdentifier;
      if (![(PDNetworkTaskManager *)taskManager containsTaskPassingTest:v28])
      {
        v25 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:idenitiferCopy];
        v26 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v32 = idenitiferCopy;
          v33 = 2112;
          v34 = v24;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Restarting Registration Task for Pass: %@ Notification Service: [%@]", buf, 0x16u);
        }

        [(PDNotificationServiceCoordinator *)self _updateRegistrationStatusForPass:v25 notificationService:v24 requestedRegistrationStatus:1 refreshRegistrationIfPossible:0];
      }
    }
  }
}

- (void)submitTransactionAuthenticationResultsData:(id)data signature:(id)signature forPass:(id)pass transactionServiceIdentifier:(id)identifier notificationService:(id)service completion:(id)completion
{
  dataCopy = data;
  signatureCopy = signature;
  passCopy = pass;
  identifierCopy = identifier;
  serviceCopy = service;
  completionCopy = completion;
  v20 = completionCopy;
  if (serviceCopy)
  {
    databaseManager = self->_databaseManager;
    serviceType = [serviceCopy serviceType];
    uniqueID = [passCopy uniqueID];
    v24 = [(PDDatabaseManager *)databaseManager registrationStatusForNotificationServiceType:serviceType passUniqueIdentifier:uniqueID];

    if (v24 == 1)
    {
      deviceAccountIdentifier = [passCopy deviceAccountIdentifier];
      v32 = signatureCopy;
      v35 = dataCopy;
      v26 = [PDNotificationServiceTransactionAuthenticationTask transactionAuthenticationTaskWithNotificationService:serviceCopy dpanIdentifier:deviceAccountIdentifier transactionServiceIdentifier:identifierCopy authenticationResultsData:dataCopy signature:signatureCopy];

      [(PDNotificationServiceCoordinator *)self _dictionaryKeyForTask:v26];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100090668;
      v37 = v36[3] = &unk_100841298;
      v38 = v20;
      v36[4] = self;
      v27 = v37;
      v28 = objc_retainBlock(v36);
      taskToHandlerMap = self->_taskToHandlerMap;
      v30 = objc_retainBlock(v28);
      [(NSMutableDictionary *)taskToHandlerMap setObject:v30 forKey:v27];

      [(PDNetworkTaskManager *)self->_taskManager performTask:v26];
LABEL_9:

      signatureCopy = v32;
      dataCopy = v35;
      goto LABEL_10;
    }

    if (v20)
    {
      v34 = signatureCopy;
      v31 = PKPassKitErrorDomain;
      v41 = NSDebugDescriptionErrorKey;
      v42 = @"Transaction notification service is not registered.";
      [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1, v34, dataCopy];
      goto LABEL_8;
    }
  }

  else if (completionCopy)
  {
    v33 = signatureCopy;
    v31 = PKPassKitErrorDomain;
    v39 = NSDebugDescriptionErrorKey;
    v40 = @"No notification service to submit authentication results for.";
    [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1, v33, dataCopy];
    v26 = LABEL_8:;
    v27 = [NSError errorWithDomain:v31 code:-1 userInfo:v26];
    (v20)[2](v20, 0, v27);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_updateRegistrationStatusForPass:(id)pass notificationService:(id)service requestedRegistrationStatus:(unint64_t)status refreshRegistrationIfPossible:(BOOL)possible requestUpdateWhenAlreadyRegistered:(BOOL)registered
{
  registeredCopy = registered;
  possibleCopy = possible;
  passCopy = pass;
  serviceCopy = service;
  paymentPass = [passCopy paymentPass];
  serviceType = [serviceCopy serviceType];
  uniqueID = [passCopy uniqueID];
  v15 = [(PDDatabaseManager *)self->_databaseManager primaryPaymentApplicationForPassUniqueIdentifier:uniqueID];
  [v15 state];
  IsPersonalized = PKPaymentApplicationStateIsPersonalized();
  v38 = v15;
  if (PKHandsOnDemoModeEnabled() & 1) != 0 || (PKUIOnlyDemoModeEnabled())
  {
    statusCopy = 2;
  }

  else if (PKStoreDemoModeEnabled())
  {
    statusCopy = 2;
  }

  else
  {
    statusCopy = status;
  }

  v39 = paymentPass;
  if (serviceType)
  {
    if (serviceType == 1)
    {
      supportsFPANNotifications = serviceCopy != 0;
      v19 = [(PDDatabaseManager *)self->_databaseManager settingEnabled:64 forPassWithUniqueIdentifier:uniqueID];
    }

    else
    {
      v19 = 0;
      supportsFPANNotifications = 0;
    }
  }

  else
  {
    v35 = IsPersonalized;
    if ([paymentPass supportsDPANNotifications])
    {
      supportsFPANNotifications = 1;
    }

    else
    {
      supportsFPANNotifications = [paymentPass supportsFPANNotifications];
    }

    v20 = [(PDDatabaseManager *)self->_databaseManager settingEnabled:8 forPassWithUniqueIdentifier:uniqueID];
    paymentPass2 = [passCopy paymentPass];
    selfCopy = self;
    v23 = passCopy;
    shouldIgnoreTransactionUpdatesSwitch = [paymentPass2 shouldIgnoreTransactionUpdatesSwitch];

    transactionServiceRegistrationURL = [paymentPass transactionServiceRegistrationURL];

    if (transactionServiceRegistrationURL)
    {
      supportsFPANNotifications = 1;
    }

    v19 = v20 | shouldIgnoreTransactionUpdatesSwitch;
    passCopy = v23;
    self = selfCopy;
    IsPersonalized = v35;
  }

  if (IsPersonalized)
  {
    v26 = statusCopy;
  }

  else
  {
    v26 = 2;
  }

  if ((supportsFPANNotifications & v19) != 0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 2;
  }

  v28 = -[PDDatabaseManager registrationStatusForNotificationServiceType:passUniqueIdentifier:](self->_databaseManager, "registrationStatusForNotificationServiceType:passUniqueIdentifier:", [serviceCopy serviceType], uniqueID);
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = 2;
  }

  v30 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    if (v29 > 2)
    {
      v31 = 0;
    }

    else
    {
      v31 = off_1008414C0[v29];
    }

    if (v27 > 2)
    {
      v32 = 0;
    }

    else
    {
      v32 = off_1008414C0[v27];
    }

    *buf = 138413058;
    v41 = uniqueID;
    v42 = 2112;
    v43 = serviceCopy;
    v44 = 2112;
    v45 = v31;
    v46 = 2112;
    v47 = v32;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Received registration status update request for Pass with Unique Identifier: %@ with Notification Service: [%@] from: %@ to %@", buf, 0x2Au);
  }

  if (v27 == 2)
  {
    v34 = v38;
    [(PDNotificationServiceCoordinator *)self _cancelAllTasksForPaymentApplication:v38 notificationService:serviceCopy];
    if (v29 == 1)
    {
      [(PDNotificationServiceCoordinator *)self _performDeregistrationForPassUniqueIdentifier:uniqueID paymentApplication:v38 notificationService:serviceCopy];
      [v38 state];
      if (!PKPaymentApplicationStateIsSuspended())
      {
        [(PDNotificationServiceCoordinator *)self _clearStoredDataForPassUniqueIdentifier:uniqueID notificationService:serviceCopy];
      }
    }
  }

  else
  {
    v33 = v27 == 1;
    v34 = v38;
    if (v33)
    {
      if (v29 == 2 || possibleCopy)
      {
        [(PDNotificationServiceCoordinator *)self _performRegistrationForPassUniqueIdentifier:uniqueID paymentApplication:v38 notificationService:serviceCopy isInitialRegistration:v29 == 2];
      }

      else if (registeredCopy)
      {
        [(PDNotificationServiceCoordinator *)self requestUpdatesFromNotificationService:serviceCopy passUniqueIdenitifer:uniqueID forceUpdate:1];
      }
    }
  }
}

- (void)_performRegistrationForPassUniqueIdentifier:(id)identifier paymentApplication:(id)application notificationService:(id)service isInitialRegistration:(BOOL)registration
{
  registrationCopy = registration;
  identifierCopy = identifier;
  applicationCopy = application;
  serviceCopy = service;
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = identifierCopy;
    v24 = 2112;
    v25 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Attempting to register Pass with Unique Identifier: %@ with Notification Service: [%@]", buf, 0x16u);
  }

  v13 = -[PDDatabaseManager lastUpdatedTagForNotificationServiceType:passUniqueIdentifier:](self->_databaseManager, "lastUpdatedTagForNotificationServiceType:passUniqueIdentifier:", [serviceCopy serviceType], identifierCopy);
  pushToken = [serviceCopy pushToken];

  if (!pushToken)
  {
    pushToken2 = [(PDPushNotificationManager *)self->_pushNotificationManager pushToken];
    [serviceCopy setPushToken:pushToken2];

    [(PDDatabaseManager *)self->_databaseManager updateNotificationService:serviceCopy];
  }

  v16 = [(PDNotificationServiceCoordinator *)self _partnerAccountIdentifierWithPaymentApplication:applicationCopy passUniqueIdentifier:identifierCopy];
  dpanIdentifier = [applicationCopy dpanIdentifier];
  paymentNetworkIdentifier = [applicationCopy paymentNetworkIdentifier];
  sharedWebService = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator sharedWebService];
  v20 = [PDNotificationServiceGetSpecificUpdatesTask getSpecificUpdatesTaskWithNotificationService:serviceCopy dpanIdentifier:dpanIdentifier credentialType:paymentNetworkIdentifier lastUpdatedTag:v13 accountIdentifier:v16 webService:sharedWebService];

  [v20 setInitialUpdatesTask:registrationCopy];
  [(PDNotificationServiceCoordinator *)self _performRegistrationTaskForPaymentApplication:applicationCopy notificationService:serviceCopy completionTask:v20];
}

- (void)_performRegistrationTaskForPaymentApplication:(id)application notificationService:(id)service completionTask:(id)task
{
  applicationCopy = application;
  serviceCopy = service;
  taskCopy = task;
  pushToken = [serviceCopy pushToken];
  v12 = PKAccountHash();
  hexEncoding = [v12 hexEncoding];

  if (pushToken && hexEncoding)
  {
    v33 = +[NSMutableDictionary dictionary];
    [v33 setObject:pushToken forKey:@"pushToken"];
    [v33 setObject:hexEncoding forKey:@"accountHash"];
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = sub_100005A00;
    v51 = sub_10000B10C;
    v13 = applicationCopy;
    v52 = v13;
    if (!v13)
    {
      v14 = [(PDDatabaseManager *)self->_databaseManager paymentApplicationsForNotificationService:serviceCopy];
      +[NSMutableArray array];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100091210;
      v44[3] = &unk_1008412E8;
      v15 = v44[4] = self;
      v45 = v15;
      v46 = &v47;
      [v14 enumerateObjectsUsingBlock:v44];
      if ([v15 count])
      {
        [v33 setObject:v15 forKey:@"dpanIdentifiers"];
      }
    }

    if ([v13 supportsPartnerSpecificIdentifier])
    {
      v16 = [(PDDatabaseManager *)self->_databaseManager passWithPaymentApplication:v48[5]];
      paymentPass = [v16 paymentPass];
      partnerAccountIdentifier = [paymentPass partnerAccountIdentifier];

      if (partnerAccountIdentifier)
      {
        [v33 setObject:partnerAccountIdentifier forKey:@"accountIdentifier"];
      }
    }

    v19 = [NSJSONSerialization dataWithJSONObject:v33 options:0 error:0];
    sHA256Hash = [v19 SHA256Hash];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000913A8;
    v38[3] = &unk_100841310;
    v21 = v19;
    v39 = v21;
    v40 = v13;
    v41 = serviceCopy;
    v42 = taskCopy;
    selfCopy = self;
    v22 = objc_retainBlock(v38);
    v23 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v33;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Signing Registration Data: %@", buf, 0xCu);
    }

    v24 = serviceCopy;
    v25 = pushToken;
    v26 = taskCopy;
    v27 = applicationCopy;
    selfCopy2 = self;
    secureElement = self->_secureElement;
    v30 = v48[5];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10009171C;
    v35[3] = &unk_100841338;
    v35[4] = selfCopy2;
    v31 = sHA256Hash;
    v36 = v31;
    v32 = v22;
    v37 = v32;
    [(PKSecureElement *)secureElement signChallenge:v31 forPaymentApplication:v30 withCompletion:v35];

    applicationCopy = v27;
    taskCopy = v26;
    pushToken = v25;
    serviceCopy = v24;

    _Block_object_dispose(&v47, 8);
  }
}

- (void)_performDeregistrationForPassUniqueIdentifier:(id)identifier paymentApplication:(id)application notificationService:(id)service
{
  identifierCopy = identifier;
  applicationCopy = application;
  serviceCopy = service;
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = identifierCopy;
    v16 = 2112;
    v17 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempting to de-register Pass with Unique Identifier: %@ with Notification Service: [%@]", &v14, 0x16u);
  }

  dpanIdentifier = [applicationCopy dpanIdentifier];
  v13 = [PDNotificationServiceSpecificRegistrationTask deregisterTaskWithNotificationService:serviceCopy dpanIdentifier:dpanIdentifier];

  [(PDNetworkTaskManager *)self->_taskManager performTask:v13];
  -[PDDatabaseManager updateRegistrationStatus:forNotificationServiceType:passUniqueIdentifier:](self->_databaseManager, "updateRegistrationStatus:forNotificationServiceType:passUniqueIdentifier:", 2, [serviceCopy serviceType], identifierCopy);
  if (![(PDDatabaseManager *)self->_databaseManager notificationServiceIsEnabledForAnyPasses:serviceCopy])
  {
    [(PDDatabaseManager *)self->_databaseManager updateAuthenticationToken:0 forNotificationService:serviceCopy];
    [serviceCopy setAuthenticationToken:0];
  }

  [(PDNotificationServiceCoordinator *)self _recalculatePushTopics];
}

- (void)_clearStoredDataForPassUniqueIdentifier:(id)identifier notificationService:(id)service
{
  identifierCopy = identifier;
  serviceCopy = service;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = identifierCopy;
    v15 = 2112;
    v16 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Clearing stored state for Pass with Unique Identifier: %@ with Notification Service: [%@]", &v13, 0x16u);
  }

  serviceType = [serviceCopy serviceType];
  [(PDDatabaseManager *)self->_databaseManager updateLastUpdatedDate:0 forNotificationServiceType:serviceType passUniqueIdentifier:identifierCopy];
  [(PDDatabaseManager *)self->_databaseManager updateLastUpdatedTag:0 forNotificationServiceType:serviceType passUniqueIdentifier:identifierCopy];
  if (![(PDDatabaseManager *)self->_databaseManager notificationServiceIsEnabledForAnyPasses:serviceCopy])
  {
    [serviceCopy setLastUpdatedTag:0];
    [serviceCopy setLastUpdatedDate:0];
    [(PDDatabaseManager *)self->_databaseManager updateNotificationService:serviceCopy];
  }

  if (serviceType)
  {
    [(PDDatabaseManager *)self->_databaseManager deleteAllMessagesFromPaymentPassWithUniqueIdentifier:identifierCopy];
  }

  else
  {
    [(PDUserNotificationManager *)self->_userNotificationManager removeUserNotificationsForPassUniqueIdentifier:identifierCopy ofType:4];
    v10 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:identifierCopy];
    paymentPass = [v10 paymentPass];
    deviceTransactionSourceIdentifiers = [paymentPass deviceTransactionSourceIdentifiers];

    [(PDDatabaseManager *)self->_databaseManager deleteAllTransactionsFromTransactionSourceIdentifiers:deviceTransactionSourceIdentifiers];
  }
}

- (void)_registrationTaskSucceeded:(id)succeeded withAuthenticationToken:(id)token
{
  succeededCopy = succeeded;
  tokenCopy = token;
  notificationService = [succeededCopy notificationService];
  [notificationService setAuthenticationToken:tokenCopy];

  [(PDDatabaseManager *)self->_databaseManager updateNotificationService:notificationService];
  completionTask = [succeededCopy completionTask];

  if (completionTask)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      completionTask2 = [succeededCopy completionTask];
      *buf = 138412290;
      v22 = completionTask2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Performing Completion Task After Successful Registration: %@", buf, 0xCu);
    }

    v12 = PDDefaultQueue();
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100091D90;
    v19[3] = &unk_10083C420;
    v19[4] = self;
    v20 = succeededCopy;
    dispatch_async(v12, v19);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dpanIdentifier = [succeededCopy dpanIdentifier];
    v14 = [(PDDatabaseManager *)self->_databaseManager paymentApplicationWithDPANIdentifier:dpanIdentifier];
    v15 = [(PDDatabaseManager *)self->_databaseManager passWithPaymentApplication:v14];
    databaseManager = self->_databaseManager;
    serviceType = [notificationService serviceType];
    uniqueID = [v15 uniqueID];
    [(PDDatabaseManager *)databaseManager updateRegistrationStatus:1 forNotificationServiceType:serviceType passUniqueIdentifier:uniqueID];

    [(PDNotificationServiceCoordinator *)self _recalculatePushTopics];
  }
}

- (void)_notificationUpdatesTaskSucceeded:(id)succeeded withResult:(id)result
{
  succeededCopy = succeeded;
  resultCopy = result;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  notificationService = [succeededCopy notificationService];
  serviceType = [notificationService serviceType];
  lastUpdatedTag = [resultCopy lastUpdatedTag];
  v64 = notificationService;
  v65 = objc_alloc_init(NSCountedSet);
  if (isKindOfClass)
  {
    v61 = resultCopy;
    v12 = succeededCopy;
    dpanIdentifier = [v12 dpanIdentifier];
    v63 = [(PDDatabaseManager *)self->_databaseManager paymentApplicationWithDPANIdentifier:dpanIdentifier];
    v14 = [(PDDatabaseManager *)self->_databaseManager passUniqueIdentifierWithPaymentApplication:?];
    v15 = lastUpdatedTag;
    databaseManager = self->_databaseManager;
    v17 = v14;
    v18 = +[NSDate date];
    v19 = databaseManager;
    lastUpdatedTag = v15;
    [(PDDatabaseManager *)v19 updateLastUpdatedDate:v18 forNotificationServiceType:serviceType passUniqueIdentifier:v17];

    if (v15)
    {
      [(PDDatabaseManager *)self->_databaseManager updateLastUpdatedTag:v15 forNotificationServiceType:serviceType passUniqueIdentifier:v17];
    }

    notificationService = v64;
    resultCopy = v61;
    if (!v61)
    {
      goto LABEL_42;
    }

LABEL_9:
    v56 = lastUpdatedTag;
    authenticationToken = [resultCopy authenticationToken];
    appLaunchToken = [resultCopy appLaunchToken];
    balances = [resultCopy balances];
    plans = [resultCopy plans];
    notifications = [resultCopy notifications];
    if ([authenticationToken length])
    {
      [notificationService setAuthenticationToken:authenticationToken];
      [(PDDatabaseManager *)self->_databaseManager updateAuthenticationToken:authenticationToken forNotificationService:notificationService];
    }

    v55 = authenticationToken;
    v24 = isKindOfClass & 1;
    if ([appLaunchToken length])
    {
      [(PDDatabaseManager *)self->_databaseManager updateAppLaunchToken:appLaunchToken forNotificationService:notificationService];
    }

    if (serviceType)
    {
      if (serviceType != 1)
      {
        goto LABEL_19;
      }

      v25 = @"messageDate";
    }

    else
    {
      v25 = @"transactionDate";
    }

    v26 = [NSSortDescriptor sortDescriptorWithKey:v25 ascending:0];
    if (v26)
    {
      v54 = v26;
      v89 = v26;
      v27 = [NSArray arrayWithObjects:&v89 count:1];
      v28 = [notifications sortedArrayUsingDescriptors:v27];

      notifications = v28;
LABEL_20:
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_100092578;
      v81[3] = &unk_100841360;
      v81[4] = self;
      v58 = serviceType;
      v85 = serviceType;
      v82 = v65;
      v86 = v24;
      v83 = notifications;
      v57 = succeededCopy;
      v84 = succeededCopy;
      v53 = v83;
      [v83 enumerateObjectsUsingBlock:v81];
      v29 = &PKPaymentNetworkAmex_ptr;
      if ([balances count])
      {
        v30 = v17;
        +[NSMutableDictionary dictionary];
        v79[0] = _NSConcreteStackBlock;
        v79[1] = 3221225472;
        v79[2] = sub_1000927E8;
        v79[3] = &unk_100841388;
        v31 = v79[4] = self;
        v80 = v31;
        [balances enumerateObjectsUsingBlock:v79];
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v32 = v31;
        v33 = [v32 countByEnumeratingWithState:&v75 objects:v88 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v76;
          do
          {
            for (i = 0; i != v34; i = i + 1)
            {
              if (*v76 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v75 + 1) + 8 * i);
              v38 = [(PDDatabaseManager *)self->_databaseManager paymentBalancesForPassUniqueIdentifier:v37];
              v39 = [v32 objectForKeyedSubscript:v37];
              [(PDNotificationServiceCoordinator *)self sendLowBalanceNotificationIfNecessaryForUpdatedBalances:v39 startingBalances:v38 passUniqueIdentifier:v37];
              [(PDDatabaseManager *)self->_databaseManager updatePaymentBalances:v39 forPassUniqueIdentifier:v37];
            }

            v34 = [v32 countByEnumeratingWithState:&v75 objects:v88 count:16];
          }

          while (v34);
        }

        v29 = &PKPaymentNetworkAmex_ptr;
      }

      else
      {
        v30 = v17;
        if (v17 && !v58)
        {
          [(PDDatabaseManager *)self->_databaseManager updatePaymentBalances:&__NSArray0__struct forPassUniqueIdentifier:v17];
        }
      }

      v40 = objc_alloc_init(v29[472]);
      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_100092A84;
      v73[3] = &unk_100841388;
      v73[4] = self;
      v41 = v40;
      v74 = v41;
      [plans enumerateObjectsUsingBlock:v73];
      v72 = 0u;
      v70 = 0u;
      v71 = 0u;
      v69 = 0u;
      v42 = v41;
      v43 = [v42 countByEnumeratingWithState:&v69 objects:v87 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v70;
        do
        {
          for (j = 0; j != v44; j = j + 1)
          {
            if (*v70 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = *(*(&v69 + 1) + 8 * j);
            v48 = self->_databaseManager;
            v49 = [v42 objectForKeyedSubscript:v47];
            [(PDDatabaseManager *)v48 updatePaymentPlans:v49 forPassUniqueIdentifier:v47];
          }

          v44 = [v42 countByEnumeratingWithState:&v69 objects:v87 count:16];
        }

        while (v44);
      }

      if (!v58)
      {
        v50 = objc_alloc_init(NSMutableDictionary);
        tileConfigurations = [resultCopy tileConfigurations];
        v67[0] = _NSConcreteStackBlock;
        v67[1] = 3221225472;
        v67[2] = sub_100092C30;
        v67[3] = &unk_100841388;
        v67[4] = self;
        v68 = v50;
        v52 = v50;
        [tileConfigurations enumerateObjectsUsingBlock:v67];

        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = sub_100092E54;
        v66[3] = &unk_1008413D8;
        v66[4] = self;
        [v52 enumerateKeysAndObjectsUsingBlock:v66];
      }

      lastUpdatedTag = v56;
      succeededCopy = v57;
      notificationService = v64;
      v17 = v30;
      goto LABEL_42;
    }

LABEL_19:
    v54 = 0;
    goto LABEL_20;
  }

  v20 = self->_databaseManager;
  v21 = +[NSDate date];
  [(PDDatabaseManager *)v20 updateLastUpdatedDate:v21 forNotificationService:notificationService];

  if (lastUpdatedTag)
  {
    [(PDDatabaseManager *)self->_databaseManager updateLastUpdatedTag:lastUpdatedTag forNotificationService:notificationService];
  }

  v17 = 0;
  v63 = 0;
  if (resultCopy)
  {
    goto LABEL_9;
  }

LABEL_42:
}

- (void)_transactionAuthenticationTaskSucceeded:(id)succeeded withResponse:(id)response
{
  if (response)
  {
    taskToResponseMap = self->_taskToResponseMap;
    responseCopy = response;
    v8 = [(PDNotificationServiceCoordinator *)self _dictionaryKeyForTask:succeeded];
    [(NSMutableDictionary *)taskToResponseMap setObject:responseCopy forKey:v8];
  }
}

- (void)sendLowBalanceNotificationIfNecessaryForUpdatedBalances:(id)balances startingBalances:(id)startingBalances passUniqueIdentifier:(id)identifier
{
  balancesCopy = balances;
  startingBalancesCopy = startingBalances;
  identifierCopy = identifier;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v10 = [balancesCopy countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v47;
    *&v11 = 138412802;
    v34 = v11;
    selfCopy = self;
    v36 = balancesCopy;
    v37 = *v47;
    v38 = identifierCopy;
    do
    {
      v14 = 0;
      v40 = v12;
      do
      {
        if (*v47 != v13)
        {
          objc_enumerationMutation(balancesCopy);
        }

        v41 = *(*(&v46 + 1) + 8 * v14);
        identifiers = [v41 identifiers];
        anyObject = [identifiers anyObject];

        v17 = [(PDDatabaseManager *)self->_databaseManager balanceReminderThresholdForBalanceIdentifier:anyObject withPassUniqueIdentifier:identifierCopy];
        v18 = v17;
        if (v17 && [v17 isEnabled])
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v19 = startingBalancesCopy;
          v20 = [v19 countByEnumeratingWithState:&v42 objects:v56 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v43;
LABEL_10:
            v23 = 0;
            while (1)
            {
              if (*v43 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v42 + 1) + 8 * v23);
              identifiers2 = [v24 identifiers];
              v26 = [identifiers2 containsObject:anyObject];

              if (v26)
              {
                break;
              }

              if (v21 == ++v23)
              {
                v21 = [v19 countByEnumeratingWithState:&v42 objects:v56 count:16];
                if (v21)
                {
                  goto LABEL_10;
                }

                v27 = v19;
                self = selfCopy;
                balancesCopy = v36;
                identifierCopy = v38;
                goto LABEL_27;
              }
            }

            v27 = v24;

            self = selfCopy;
            balancesCopy = v36;
            v13 = v37;
            identifierCopy = v38;
            v12 = v40;
            if (!v27)
            {
              goto LABEL_29;
            }

            threshold = [v18 threshold];
            value = [v41 value];
            v30 = [value compare:threshold];
            v31 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v34;
              v51 = v18;
              v52 = 2112;
              v53 = value;
              v54 = 2112;
              v55 = v27;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "PDNotificationServiceCoordiantor: lowBalance threshold: %@, updatedBalance: %@, oldBalance: %@", buf, 0x20u);
            }

            if (v30 == -1)
            {
              value2 = [v27 value];
              v33 = [value2 compare:threshold];

              if (v33 == -1)
              {
                identifierCopy = v38;
                [(PDNotificationServiceCoordinator *)selfCopy updateLowBalanceNotificationForBalance:v41 withPassUniqueIdentifier:v38];
              }

              else
              {
                identifierCopy = v38;
                [(PDNotificationServiceCoordinator *)selfCopy sendLowBalanceNotificationForBalance:v41 withReminder:v18 passUniqueIdentifier:v38];
              }
            }

            else
            {
              identifierCopy = v38;
              [(PDNotificationServiceCoordinator *)selfCopy removeLowBalanceNotificationForBalance:v41 withPassUniqueIdentifier:v38];
            }

LABEL_27:
            v13 = v37;
          }

          else
          {
            v27 = v19;
          }

          v12 = v40;
        }

LABEL_29:

        v14 = v14 + 1;
      }

      while (v14 != v12);
      v12 = [balancesCopy countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v12);
  }
}

- (void)sendLowBalanceNotificationForBalance:(id)balance withReminder:(id)reminder passUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  reminderCopy = reminder;
  balanceCopy = balance;
  currencyCode = [balanceCopy currencyCode];
  v12 = [PDPassLowBalanceReminderUserNotification alloc];
  value = [balanceCopy value];
  exponent = [balanceCopy exponent];
  threshold = [reminderCopy threshold];

  identifiers = [balanceCopy identifiers];

  anyObject = [identifiers anyObject];
  v18 = [(PDPassLowBalanceReminderUserNotification *)v12 initWithCurrentBalance:value balanceCurrency:currencyCode exponent:exponent reminderAmount:threshold reminderCurrency:currencyCode passUniqueIdentifier:identifierCopy balanceIdentifier:anyObject];

  [(PDUserNotificationManager *)self->_userNotificationManager insertUserNotification:v18];
  v19 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v18;
    v22 = 2112;
    v23 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "PDNotificationServiceCoordiantor: send lowBalance notification %@ for pass %@", buf, 0x16u);
  }
}

- (void)updateLowBalanceNotificationForBalance:(id)balance withPassUniqueIdentifier:(id)identifier
{
  balanceCopy = balance;
  identifierCopy = identifier;
  identifiers = [balanceCopy identifiers];
  anyObject = [identifiers anyObject];

  userNotificationManager = self->_userNotificationManager;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100093750;
  v14[3] = &unk_10083D288;
  v15 = anyObject;
  v16 = balanceCopy;
  selfCopy = self;
  v18 = identifierCopy;
  v11 = identifierCopy;
  v12 = balanceCopy;
  v13 = anyObject;
  [(PDUserNotificationManager *)userNotificationManager userNotificationsForPassUniqueIdentifier:v11 ofType:7 completion:v14];
}

- (void)removeLowBalanceNotificationForBalance:(id)balance withPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifiers = [balance identifiers];
  anyObject = [identifiers anyObject];

  userNotificationManager = self->_userNotificationManager;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100093A24;
  v12[3] = &unk_100841400;
  v13 = anyObject;
  selfCopy = self;
  v15 = identifierCopy;
  v10 = identifierCopy;
  v11 = anyObject;
  [(PDUserNotificationManager *)userNotificationManager userNotificationsForPassUniqueIdentifier:v10 ofType:7 completion:v12];
}

- (BOOL)_validateBalanceResult:(id)result
{
  resultCopy = result;
  identifiers = [resultCopy identifiers];

  if (!identifiers)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v9 = "Balance missing identifier";
      v10 = &v15;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }

LABEL_10:
    v7 = 0;
LABEL_11:

    goto LABEL_12;
  }

  value = [resultCopy value];

  if (!value)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Balance missing value";
      v10 = buf;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  lastUpdateDate = [resultCopy lastUpdateDate];

  if (!lastUpdateDate)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Balance missing lastUpdate, synthesizing", v13, 2u);
    }

    v8 = +[NSDate date];
    [resultCopy setLastUpdateDate:v8];
    v7 = 1;
    goto LABEL_11;
  }

  v7 = 1;
LABEL_12:

  return v7;
}

- (BOOL)_validatePlanResult:(id)result
{
  resultCopy = result;
  identifier = [resultCopy identifier];

  if (!identifier)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Plan missing identifier", buf, 2u);
    }

    goto LABEL_8;
  }

  lastUpdateDate = [resultCopy lastUpdateDate];

  if (!lastUpdateDate)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Plan missing lastUpdate, synthesizing", v9, 2u);
    }

    v7 = +[NSDate date];
    [resultCopy setLastUpdateDate:v7];
LABEL_8:
  }

  return identifier != 0;
}

- (void)_isMerchantTokenTransaction:(id)transaction forPass:(id)pass completion:(id)completion
{
  transactionCopy = transaction;
  passCopy = pass;
  completionCopy = completion;
  v11 = +[PKPassLibrary sharedInstance];
  panIdentifier = [transactionCopy panIdentifier];
  v13 = [v11 passWithFPANIdentifier:panIdentifier];

  panIdentifier2 = [transactionCopy panIdentifier];
  v15 = [v11 passWithDPANIdentifier:panIdentifier2];

  panIdentifier3 = [transactionCopy panIdentifier];
  v17 = panIdentifier3;
  if (v13 || v15 || !panIdentifier3)
  {
    completionCopy[2](completionCopy, &__kCFBooleanFalse);
  }

  else
  {
    sharedWebService = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator sharedWebService];
    v19 = objc_alloc_init(PKRetrieveMerchantTokensRequest);
    [v19 setPass:passCopy];
    [v19 setMerchantTokenId:v17];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100094030;
    v20[3] = &unk_100841428;
    v22 = completionCopy;
    v21 = transactionCopy;
    [sharedWebService retrieveMerchantTokensWithRequest:v19 completion:v20];
  }
}

- (BOOL)_processTransactionDictionary:(id)dictionary forPassUniqueIdentifier:(id)identifier paymentApplication:(id)application performTruncation:(BOOL)truncation isInitialUpdate:(BOOL)update
{
  updateCopy = update;
  truncationCopy = truncation;
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  applicationCopy = application;
  if (dictionaryCopy)
  {
    v15 = [dictionaryCopy PKNumberForKey:@"invalidated"];
    v16 = [dictionaryCopy PKStringForKey:@"completion"];
    if (v15 && ([v15 BOOLValue] & 1) != 0)
    {
      v17 = 2;
    }

    else if (v16)
    {
      if ([v16 BOOLValue])
      {
        v17 = 3;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:identifierCopy];
  paymentPass = [v18 paymentPass];

  v20 = PKPaymentPassUnitDictionary(paymentPass);
  v21 = PKPaymentPassBalanceLabelDictionary(paymentPass);
  PKPaymentPassPlanLabelDictionary(paymentPass);
  v35 = v20;
  v33 = v36 = dictionaryCopy;
  v34 = v21;
  v22 = [PKPaymentTransaction paymentTransactionWithSource:"paymentTransactionWithSource:dictionary:unitDictionary:balanceLabelDictionary:planLabelDictionary:hasNotificationServiceData:" dictionary:0 unitDictionary:dictionaryCopy balanceLabelDictionary:v20 planLabelDictionary:v21 hasNotificationServiceData:?];
  [v22 addUpdateReasons:64];
  if (updateCopy)
  {
    [v22 addUpdateReasons:4096];
  }

  [(PDDatabaseManager *)self->_databaseManager insertOrUpdatePaymentTransaction:v22 withPassUniqueIdentifier:identifierCopy paymentApplication:applicationCopy insertionMode:v17 performTruncation:truncationCopy];
  v24 = v23 = truncationCopy;
  paymentTransactionProcessor = self->_paymentTransactionProcessor;
  transactionSourceIdentifier = [v24 transactionSourceIdentifier];
  [(PDPaymentTransactionProcessor *)paymentTransactionProcessor processPaymentTransaction:v24 forTransactionSourceIdentifier:transactionSourceIdentifier];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100094534;
  v37[3] = &unk_100841478;
  v37[4] = self;
  v38 = v24;
  v39 = identifierCopy;
  v40 = applicationCopy;
  v41 = v17;
  v42 = v23;
  v27 = applicationCopy;
  v28 = identifierCopy;
  v29 = v24;
  [(PDNotificationServiceCoordinator *)self _isMerchantTokenTransaction:v29 forPass:paymentPass completion:v37];
  if (v29)
  {
    v30 = v17 == 0;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;

  return v31;
}

- (BOOL)_processMessageDictionary:(id)dictionary forPassUniqueIdentifier:(id)identifier paymentApplication:(id)application performTruncation:(BOOL)truncation
{
  truncationCopy = truncation;
  applicationCopy = application;
  identifierCopy = identifier;
  v12 = [PKPaymentMessage paymentMessageWithDictionary:dictionary];
  v13 = [(PDDatabaseManager *)self->_databaseManager insertOrUpdatePaymentMessage:v12 forPassUniqueIdentifier:identifierCopy paymentApplication:applicationCopy performTruncation:truncationCopy];

  return v13 != 0;
}

- (void)_cancelAllTasksForPaymentApplication:(id)application notificationService:(id)service
{
  applicationCopy = application;
  serviceCopy = service;
  v8 = [(PDDatabaseManager *)self->_databaseManager paymentApplicationsForNotificationService:serviceCopy];
  v9 = [v8 pk_setByRemovingObject:applicationCopy];
  v10 = [v9 count] != 0;

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  taskManager = self->_taskManager;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000949F4;
  v15[3] = &unk_1008414A0;
  v12 = serviceCopy;
  v16 = v12;
  v19 = v10;
  v13 = applicationCopy;
  v17 = v13;
  v18 = &v20;
  [(PDNetworkTaskManager *)taskManager cancelTasksPassingTest:v15];
  if (*(v21 + 24) == 1)
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = v13;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cancelled All Tasks for Payment Application: [%@], Notification Service: [%@]", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v20, 8);
}

- (void)_recalculatePushTopics
{
  pushTopics = self->_pushTopics;
  self->_pushTopics = 0;

  pushNotificationManager = self->_pushNotificationManager;

  [(PDPushNotificationManager *)pushNotificationManager recalculatePushTopics];
}

- (void)_invokeAndClearHandlerForTask:(id)task withResult:(BOOL)result
{
  resultCopy = result;
  v8 = [(PDNotificationServiceCoordinator *)self _dictionaryKeyForTask:task];
  v6 = [(NSMutableDictionary *)self->_taskToHandlerMap objectForKey:?];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, resultCopy);
  }

  [(NSMutableDictionary *)self->_taskToHandlerMap removeObjectForKey:v8];
  [(NSMutableDictionary *)self->_taskToResponseMap removeObjectForKey:v8];
  [(NSMutableDictionary *)self->_taskToErrorMap removeObjectForKey:v8];
}

- (id)_partnerAccountIdentifierWithPaymentApplication:(id)application passUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([application supportsPartnerSpecificIdentifier])
  {
    v7 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:identifierCopy];
    paymentPass = [v7 paymentPass];
    partnerAccountIdentifier = [paymentPass partnerAccountIdentifier];
  }

  else
  {
    partnerAccountIdentifier = 0;
  }

  return partnerAccountIdentifier;
}

@end