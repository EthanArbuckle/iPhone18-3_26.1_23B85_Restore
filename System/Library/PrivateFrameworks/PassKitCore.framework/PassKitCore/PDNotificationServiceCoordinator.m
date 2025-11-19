@interface PDNotificationServiceCoordinator
- (BOOL)_processMessageDictionary:(id)a3 forPassUniqueIdentifier:(id)a4 paymentApplication:(id)a5 performTruncation:(BOOL)a6;
- (BOOL)_processTransactionDictionary:(id)a3 forPassUniqueIdentifier:(id)a4 paymentApplication:(id)a5 performTruncation:(BOOL)a6 isInitialUpdate:(BOOL)a7;
- (BOOL)_validateBalanceResult:(id)a3;
- (BOOL)_validatePlanResult:(id)a3;
- (PDNotificationServiceCoordinator)initWithPushNotificationManager:(id)a3 databaseManager:(id)a4 userNotificationManager:(id)a5 paymentTransactionProcessor:(id)a6 paymentWebServiceCoordinator:(id)a7;
- (id)_partnerAccountIdentifierWithPaymentApplication:(id)a3 passUniqueIdentifier:(id)a4;
- (id)pushNotificationTopics;
- (void)_cancelAllTasksForPaymentApplication:(id)a3 notificationService:(id)a4;
- (void)_clearStoredDataForPassUniqueIdentifier:(id)a3 notificationService:(id)a4;
- (void)_invokeAndClearHandlerForTask:(id)a3 withResult:(BOOL)a4;
- (void)_isMerchantTokenTransaction:(id)a3 forPass:(id)a4 completion:(id)a5;
- (void)_notificationUpdatesTaskSucceeded:(id)a3 withResult:(id)a4;
- (void)_performDeregistrationForPassUniqueIdentifier:(id)a3 paymentApplication:(id)a4 notificationService:(id)a5;
- (void)_performRegistrationForPassUniqueIdentifier:(id)a3 paymentApplication:(id)a4 notificationService:(id)a5 isInitialRegistration:(BOOL)a6;
- (void)_performRegistrationTaskForPaymentApplication:(id)a3 notificationService:(id)a4 completionTask:(id)a5;
- (void)_recalculatePushTopics;
- (void)_registrationTaskSucceeded:(id)a3 withAuthenticationToken:(id)a4;
- (void)_transactionAuthenticationTaskSucceeded:(id)a3 withResponse:(id)a4;
- (void)_updateRegistrationStatusForPass:(id)a3 notificationService:(id)a4 requestedRegistrationStatus:(unint64_t)a5 refreshRegistrationIfPossible:(BOOL)a6 requestUpdateWhenAlreadyRegistered:(BOOL)a7;
- (void)applyPushNotificationToken:(id)a3;
- (void)cancelAutoTopUpFromNotificationService:(id)a3 passUniqueIdenitifer:(id)a4 accountIdentifier:(id)a5 balance:(id)a6 completion:(id)a7;
- (void)connect;
- (void)dealloc;
- (void)handlePostBalanceTaskWithNotificationService:(id)a3 passUniqueIdenitifer:(id)a4 accountIdentifier:(id)a5 transactionSequenceNumber:(id)a6 balance:(id)a7;
- (void)handlePushNotificationForTopic:(id)a3 userInfo:(id)a4;
- (void)handleUpdateOfPass:(id)a3 toPass:(id)a4 oldNotificationService:(id)a5 newNotificationService:(id)a6;
- (void)nukeTasks;
- (void)removeLowBalanceNotificationForBalance:(id)a3 withPassUniqueIdentifier:(id)a4;
- (void)requestUpdatesFromNotificationService:(id)a3 passUniqueIdenitifer:(id)a4 forceUpdate:(BOOL)a5;
- (void)sendLowBalanceNotificationForBalance:(id)a3 withReminder:(id)a4 passUniqueIdentifier:(id)a5;
- (void)sendLowBalanceNotificationIfNecessaryForUpdatedBalances:(id)a3 startingBalances:(id)a4 passUniqueIdentifier:(id)a5;
- (void)submitTransactionAuthenticationResultsData:(id)a3 signature:(id)a4 forPass:(id)a5 transactionServiceIdentifier:(id)a6 notificationService:(id)a7 completion:(id)a8;
- (void)task:(id)a3 encounteredError:(id)a4;
- (void)task:(id)a3 gotResult:(id)a4;
- (void)task:(id)a3 willRetryAfterMinimumDelay:(double)a4;
- (void)taskRequestedReauthentication:(id)a3;
- (void)updateLowBalanceNotificationForBalance:(id)a3 withPassUniqueIdentifier:(id)a4;
@end

@implementation PDNotificationServiceCoordinator

- (PDNotificationServiceCoordinator)initWithPushNotificationManager:(id)a3 databaseManager:(id)a4 userNotificationManager:(id)a5 paymentTransactionProcessor:(id)a6 paymentWebServiceCoordinator:(id)a7
{
  v28 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = PDNotificationServiceCoordinator;
  v17 = [(PDNotificationServiceCoordinator *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_pushNotificationManager, a3);
    objc_storeStrong(&v18->_databaseManager, a4);
    objc_storeStrong(&v18->_userNotificationManager, a5);
    objc_storeStrong(&v18->_paymentTransactionProcessor, a6);
    objc_storeStrong(&v18->_paymentWebServiceCoordinator, a7);
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

- (void)applyPushNotificationToken:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PDDatabaseManager *)self->_databaseManager notificationServices];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10008E6D8;
    v6[3] = &unk_1008411E0;
    v7 = v4;
    v8 = self;
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

- (void)handlePushNotificationForTopic:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v33 = a4;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v56 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PDNotificationServiceCoordinator: processing push for topic %@.", buf, 0xCu);
  }

  v32 = objc_autoreleasePoolPush();
  v8 = +[NSNull null];
  v34 = v6;
  [(PDDatabaseManager *)self->_databaseManager notificationServicesForPushTopic:v6];
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
                v18 = [v17 partnerAccountIdentifier];
                v19 = v18;
                if (v18)
                {
                  v20 = v18;
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
          v22 = [v10 serviceURL];
          *buf = 134218498;
          v56 = v21;
          v57 = 2112;
          v58 = v12;
          v59 = 2112;
          v60 = v22;
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
    v4 = [(PDDatabaseManager *)self->_databaseManager notificationServices];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008EDF4;
    v12[3] = &unk_1008411E0;
    v12[4] = self;
    v5 = v3;
    v13 = v5;
    [v4 enumerateObjectsUsingBlock:v12];

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

- (void)handleUpdateOfPass:(id)a3 toPass:(id)a4 oldNotificationService:(id)a5 newNotificationService:(id)a6
{
  v25 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v11 && ([v11 matchesNotificationService:v12] & 1) == 0)
  {
    [(PDNotificationServiceCoordinator *)self _updateRegistrationStatusForPass:v25 notificationService:v11 requestedRegistrationStatus:2 refreshRegistrationIfPossible:0];
  }

  if (v12)
  {
    if ([v12 serviceType])
    {
      v13 = 0;
    }

    else
    {
      v14 = [v25 paymentPass];
      HIDWORD(v24) = [v14 supportsDPANNotifications];

      v15 = [v25 paymentPass];
      LODWORD(v24) = [v15 supportsFPANNotifications];

      v16 = [v10 paymentPass];
      LOBYTE(v15) = [v16 supportsDPANNotifications];

      v17 = [v10 paymentPass];
      v18 = [v17 supportsFPANNotifications];

      v19 = [v25 paymentPass];
      v20 = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator sharedWebService];
      v21 = [v19 hasActiveVirtualCardAccordingToWebService:v20];

      v22 = [v10 paymentPass];
      v23 = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator sharedWebService];
      LOBYTE(v14) = [v22 hasActiveVirtualCardAccordingToWebService:v23];

      v13 = BYTE4(v24) ^ v15 | v24 ^ v18 | (v21 ^ 1) & v14;
    }

    [(PDNotificationServiceCoordinator *)self _updateRegistrationStatusForPass:v10 notificationService:v12 requestedRegistrationStatus:1 refreshRegistrationIfPossible:v13 & 1, v24];
  }
}

- (void)cancelAutoTopUpFromNotificationService:(id)a3 passUniqueIdenitifer:(id)a4 accountIdentifier:(id)a5 balance:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    v17 = [(PDDatabaseManager *)self->_databaseManager primaryPaymentApplicationForPassUniqueIdentifier:v13];
    v18 = [v17 dpanIdentifier];
    if (v18)
    {
      v19 = v18;
      v20 = -[PDDatabaseManager registrationStatusForNotificationServiceType:passUniqueIdentifier:](self->_databaseManager, "registrationStatusForNotificationServiceType:passUniqueIdentifier:", [v12 serviceType], v13);
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
          v43 = v13;
          v44 = 2112;
          v45 = v19;
          v46 = 2112;
          v47 = v12;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Registration status: %lu - Perform cancel auto top up task for pass: %@, DPAN ID: %@, and notification service: [%@]", buf, 0x2Au);
        }

        v33 = [PDNotificationServicePostBalanceTask postBalanceTaskWithNotificationService:v12 dpanIdentifier:v19 accountIdentifier:v14 transactionSequenceNumber:0 autoTopUpDisabled:1 balance:v15];
        v23 = [(PDNotificationServiceCoordinator *)self _dictionaryKeyForTask:v33];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_10008F490;
        v35[3] = &unk_100841208;
        v39 = v16;
        v35[4] = self;
        v36 = v23;
        v37 = v15;
        v38 = v13;
        v24 = v23;
        v32 = v14;
        v25 = objc_retainBlock(v35);
        taskToHandlerMap = self->_taskToHandlerMap;
        v27 = v19;
        v28 = v15;
        v29 = objc_retainBlock(v25);
        [(NSMutableDictionary *)taskToHandlerMap setObject:v29 forKey:v24];

        v15 = v28;
        v19 = v27;
        [(PDNetworkTaskManager *)self->_taskManager performTask:v33];

        v14 = v32;
        v17 = v34;
      }

      else
      {
        if (v22)
        {
          *buf = 138412546;
          v41 = v13;
          v42 = 2048;
          v43 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Cannot perform cancel auto top up task for pass: %@, registration status: %lu", buf, 0x16u);
        }

        if (v16)
        {
          (*(v16 + 2))(v16, 0);
        }
      }
    }

    else
    {
      v31 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v13;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Cannot perform cancel auto top up task for pass: %@, no DPAN Identifier", buf, 0xCu);
      }

      if (v16)
      {
        (*(v16 + 2))(v16, 0);
      }
    }
  }

  else
  {
    v30 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v13;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Cannot perform cancel auto top up task for pass: %@, no notification service", buf, 0xCu);
    }

    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }
  }
}

- (void)handlePostBalanceTaskWithNotificationService:(id)a3 passUniqueIdenitifer:(id)a4 accountIdentifier:(id)a5 transactionSequenceNumber:(id)a6 balance:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    v17 = [(PDDatabaseManager *)self->_databaseManager primaryPaymentApplicationForPassUniqueIdentifier:v13];
    v18 = [v17 dpanIdentifier];
    v24 = v14;
    if (v18)
    {
      v19 = -[PDDatabaseManager registrationStatusForNotificationServiceType:passUniqueIdentifier:](self->_databaseManager, "registrationStatusForNotificationServiceType:passUniqueIdentifier:", [v12 serviceType], v13);
      v20 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219266;
        v26 = v19;
        v27 = 2112;
        v28 = v13;
        v29 = 2112;
        v30 = v18;
        v31 = 2112;
        v32 = v15;
        v33 = 2112;
        v34 = v16;
        v35 = 2112;
        v36 = v12;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Registration status: %lu - Perform post balance task for pass: %@, DPAN ID: %@, transactionSequenceNumber %@, balance, %@, and notification service: [%@]", buf, 0x3Eu);
      }

      v21 = [PDNotificationServicePostBalanceTask postBalanceTaskWithNotificationService:v12 dpanIdentifier:v18 accountIdentifier:v14 transactionSequenceNumber:v15 autoTopUpDisabled:0 balance:v16];
      if (v19 == 1)
      {
        [(PDNetworkTaskManager *)self->_taskManager performTask:v21];
      }

      else
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v26 = v13;
          v27 = 2112;
          v28 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Register pass with unique identifier: %@ and post balance completion task: [%@]", buf, 0x16u);
        }

        v22 = [v12 pushToken];

        if (!v22)
        {
          v23 = [(PDPushNotificationManager *)self->_pushNotificationManager pushToken];
          [v12 setPushToken:v23];

          [(PDDatabaseManager *)self->_databaseManager updateNotificationService:v12];
        }

        [(PDNotificationServiceCoordinator *)self _performRegistrationTaskForPaymentApplication:v17 notificationService:v12 completionTask:v21];
      }
    }

    else
    {
      v21 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Cannot perform post balance task for pass: %@, no DPAN Identifier", buf, 0xCu);
      }
    }

    v14 = v24;
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Cannot perform post balance task for pass: %@, no notification service", buf, 0xCu);
    }
  }
}

- (void)task:(id)a3 gotResult:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = PDOSTransactionCreate("PDNotificationServiceCoordinator");
  v8 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v9 requestedStatus] == 1)
    {
      [(PDNotificationServiceCoordinator *)self _registrationTaskSucceeded:v9 withAuthenticationToken:v6];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PDNotificationServiceCoordinator *)self _notificationUpdatesTaskSucceeded:v9 withResult:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PDNotificationServiceCoordinator *)self _transactionAuthenticationTaskSucceeded:v9 withResponse:v6];
      }
    }
  }

  objc_autoreleasePoolPop(v8);
}

- (void)task:(id)a3 willRetryAfterMinimumDelay:(double)a4
{
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v6;
    v10 = 2048;
    v11 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ will retry after %g seconds", &v8, 0x16u);
  }

  [(PDNotificationServiceCoordinator *)self _invokeAndClearHandlerForTask:v6 withResult:0];
}

- (void)task:(id)a3 encounteredError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PDErrorDescription();
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@", &v12, 0xCu);
  }

  v10 = [(PDNotificationServiceCoordinator *)self _dictionaryKeyForTask:v6];
  v11 = v10;
  if (v7 && v10)
  {
    [(NSMutableDictionary *)self->_taskToErrorMap setObject:v7 forKey:v10];
  }
}

- (void)taskRequestedReauthentication:(id)a3
{
  v4 = a3;
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
    v6 = [v4 dpanIdentifier];
    v7 = [(PDDatabaseManager *)databaseManager paymentApplicationWithDPANIdentifier:v6];

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 dpanIdentifier];
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Re-Authenticating for dpanIdentifier: %@", &v13, 0xCu);
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
    v8 = [v4 dpanIdentifier];
    v7 = [(PDDatabaseManager *)v10 paymentApplicationWithDPANIdentifier:v8];
  }

LABEL_11:
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Re-Authenticating due to Request from Previous Task:%@", &v13, 0xCu);
  }

  v12 = [v4 notificationService];
  [(PDNotificationServiceCoordinator *)self _performRegistrationTaskForPaymentApplication:v7 notificationService:v12 completionTask:v4];

LABEL_14:
}

- (void)requestUpdatesFromNotificationService:(id)a3 passUniqueIdenitifer:(id)a4 forceUpdate:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [(PDDatabaseManager *)self->_databaseManager primaryPaymentApplicationForPassUniqueIdentifier:v9];
    v11 = [v10 dpanIdentifier];
    if (-[PDDatabaseManager registrationStatusForNotificationServiceType:passUniqueIdentifier:](self->_databaseManager, "registrationStatusForNotificationServiceType:passUniqueIdentifier:", [v8 serviceType], v9) == 1)
    {
      v12 = [v8 serviceType];
      v13 = [(PDDatabaseManager *)self->_databaseManager lastUpdatedDateForNotificationServiceType:v12 passUniqueIdentifier:v9];
      v14 = v13;
      if (!v13 || ([v13 timeIntervalSinceNow], fabs(v15) > 86400.0) || (PKDisableNotificationPullTimeout() & 1) != 0 || v5)
      {
        v16 = [(PDDatabaseManager *)self->_databaseManager lastUpdatedTagForNotificationServiceType:v12 passUniqueIdentifier:v9];
        if (v11)
        {
          v17 = [(PDNotificationServiceCoordinator *)self _partnerAccountIdentifierWithPaymentApplication:v10 passUniqueIdentifier:v9];
          v27 = v11;
          v18 = v10;
          v19 = [v10 paymentNetworkIdentifier];
          v20 = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator sharedWebService];
          v21 = v19;
          v10 = v18;
          v22 = [PDNotificationServiceGetSpecificUpdatesTask getSpecificUpdatesTaskWithNotificationService:v8 dpanIdentifier:v11 credentialType:v21 lastUpdatedTag:v16 accountIdentifier:v17 webService:v20];

          [(PDNetworkTaskManager *)self->_taskManager performTask:v22];
          v11 = v27;
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
      v24 = v8;
      v29 = v24;
      v30 = v11;
      if (![(PDNetworkTaskManager *)taskManager containsTaskPassingTest:v28])
      {
        v25 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:v9];
        v26 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v32 = v9;
          v33 = 2112;
          v34 = v24;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Restarting Registration Task for Pass: %@ Notification Service: [%@]", buf, 0x16u);
        }

        [(PDNotificationServiceCoordinator *)self _updateRegistrationStatusForPass:v25 notificationService:v24 requestedRegistrationStatus:1 refreshRegistrationIfPossible:0];
      }
    }
  }
}

- (void)submitTransactionAuthenticationResultsData:(id)a3 signature:(id)a4 forPass:(id)a5 transactionServiceIdentifier:(id)a6 notificationService:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (v18)
  {
    databaseManager = self->_databaseManager;
    v22 = [v18 serviceType];
    v23 = [v16 uniqueID];
    v24 = [(PDDatabaseManager *)databaseManager registrationStatusForNotificationServiceType:v22 passUniqueIdentifier:v23];

    if (v24 == 1)
    {
      v25 = [v16 deviceAccountIdentifier];
      v32 = v15;
      v35 = v14;
      v26 = [PDNotificationServiceTransactionAuthenticationTask transactionAuthenticationTaskWithNotificationService:v18 dpanIdentifier:v25 transactionServiceIdentifier:v17 authenticationResultsData:v14 signature:v15];

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

      v15 = v32;
      v14 = v35;
      goto LABEL_10;
    }

    if (v20)
    {
      v34 = v15;
      v31 = PKPassKitErrorDomain;
      v41 = NSDebugDescriptionErrorKey;
      v42 = @"Transaction notification service is not registered.";
      [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1, v34, v14];
      goto LABEL_8;
    }
  }

  else if (v19)
  {
    v33 = v15;
    v31 = PKPassKitErrorDomain;
    v39 = NSDebugDescriptionErrorKey;
    v40 = @"No notification service to submit authentication results for.";
    [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1, v33, v14];
    v26 = LABEL_8:;
    v27 = [NSError errorWithDomain:v31 code:-1 userInfo:v26];
    (v20)[2](v20, 0, v27);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_updateRegistrationStatusForPass:(id)a3 notificationService:(id)a4 requestedRegistrationStatus:(unint64_t)a5 refreshRegistrationIfPossible:(BOOL)a6 requestUpdateWhenAlreadyRegistered:(BOOL)a7
{
  v36 = a7;
  v37 = a6;
  v10 = a3;
  v11 = a4;
  v12 = [v10 paymentPass];
  v13 = [v11 serviceType];
  v14 = [v10 uniqueID];
  v15 = [(PDDatabaseManager *)self->_databaseManager primaryPaymentApplicationForPassUniqueIdentifier:v14];
  [v15 state];
  IsPersonalized = PKPaymentApplicationStateIsPersonalized();
  v38 = v15;
  if (PKHandsOnDemoModeEnabled() & 1) != 0 || (PKUIOnlyDemoModeEnabled())
  {
    v17 = 2;
  }

  else if (PKStoreDemoModeEnabled())
  {
    v17 = 2;
  }

  else
  {
    v17 = a5;
  }

  v39 = v12;
  if (v13)
  {
    if (v13 == 1)
    {
      v18 = v11 != 0;
      v19 = [(PDDatabaseManager *)self->_databaseManager settingEnabled:64 forPassWithUniqueIdentifier:v14];
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }
  }

  else
  {
    v35 = IsPersonalized;
    if ([v12 supportsDPANNotifications])
    {
      v18 = 1;
    }

    else
    {
      v18 = [v12 supportsFPANNotifications];
    }

    v20 = [(PDDatabaseManager *)self->_databaseManager settingEnabled:8 forPassWithUniqueIdentifier:v14];
    v21 = [v10 paymentPass];
    v22 = self;
    v23 = v10;
    v24 = [v21 shouldIgnoreTransactionUpdatesSwitch];

    v25 = [v12 transactionServiceRegistrationURL];

    if (v25)
    {
      v18 = 1;
    }

    v19 = v20 | v24;
    v10 = v23;
    self = v22;
    IsPersonalized = v35;
  }

  if (IsPersonalized)
  {
    v26 = v17;
  }

  else
  {
    v26 = 2;
  }

  if ((v18 & v19) != 0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 2;
  }

  v28 = -[PDDatabaseManager registrationStatusForNotificationServiceType:passUniqueIdentifier:](self->_databaseManager, "registrationStatusForNotificationServiceType:passUniqueIdentifier:", [v11 serviceType], v14);
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
    v41 = v14;
    v42 = 2112;
    v43 = v11;
    v44 = 2112;
    v45 = v31;
    v46 = 2112;
    v47 = v32;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Received registration status update request for Pass with Unique Identifier: %@ with Notification Service: [%@] from: %@ to %@", buf, 0x2Au);
  }

  if (v27 == 2)
  {
    v34 = v38;
    [(PDNotificationServiceCoordinator *)self _cancelAllTasksForPaymentApplication:v38 notificationService:v11];
    if (v29 == 1)
    {
      [(PDNotificationServiceCoordinator *)self _performDeregistrationForPassUniqueIdentifier:v14 paymentApplication:v38 notificationService:v11];
      [v38 state];
      if (!PKPaymentApplicationStateIsSuspended())
      {
        [(PDNotificationServiceCoordinator *)self _clearStoredDataForPassUniqueIdentifier:v14 notificationService:v11];
      }
    }
  }

  else
  {
    v33 = v27 == 1;
    v34 = v38;
    if (v33)
    {
      if (v29 == 2 || v37)
      {
        [(PDNotificationServiceCoordinator *)self _performRegistrationForPassUniqueIdentifier:v14 paymentApplication:v38 notificationService:v11 isInitialRegistration:v29 == 2];
      }

      else if (v36)
      {
        [(PDNotificationServiceCoordinator *)self requestUpdatesFromNotificationService:v11 passUniqueIdenitifer:v14 forceUpdate:1];
      }
    }
  }
}

- (void)_performRegistrationForPassUniqueIdentifier:(id)a3 paymentApplication:(id)a4 notificationService:(id)a5 isInitialRegistration:(BOOL)a6
{
  v21 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = v9;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Attempting to register Pass with Unique Identifier: %@ with Notification Service: [%@]", buf, 0x16u);
  }

  v13 = -[PDDatabaseManager lastUpdatedTagForNotificationServiceType:passUniqueIdentifier:](self->_databaseManager, "lastUpdatedTagForNotificationServiceType:passUniqueIdentifier:", [v11 serviceType], v9);
  v14 = [v11 pushToken];

  if (!v14)
  {
    v15 = [(PDPushNotificationManager *)self->_pushNotificationManager pushToken];
    [v11 setPushToken:v15];

    [(PDDatabaseManager *)self->_databaseManager updateNotificationService:v11];
  }

  v16 = [(PDNotificationServiceCoordinator *)self _partnerAccountIdentifierWithPaymentApplication:v10 passUniqueIdentifier:v9];
  v17 = [v10 dpanIdentifier];
  v18 = [v10 paymentNetworkIdentifier];
  v19 = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator sharedWebService];
  v20 = [PDNotificationServiceGetSpecificUpdatesTask getSpecificUpdatesTaskWithNotificationService:v11 dpanIdentifier:v17 credentialType:v18 lastUpdatedTag:v13 accountIdentifier:v16 webService:v19];

  [v20 setInitialUpdatesTask:v21];
  [(PDNotificationServiceCoordinator *)self _performRegistrationTaskForPaymentApplication:v10 notificationService:v11 completionTask:v20];
}

- (void)_performRegistrationTaskForPaymentApplication:(id)a3 notificationService:(id)a4 completionTask:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 pushToken];
  v12 = PKAccountHash();
  v34 = [v12 hexEncoding];

  if (v11 && v34)
  {
    v33 = +[NSMutableDictionary dictionary];
    [v33 setObject:v11 forKey:@"pushToken"];
    [v33 setObject:v34 forKey:@"accountHash"];
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = sub_100005A00;
    v51 = sub_10000B10C;
    v13 = v8;
    v52 = v13;
    if (!v13)
    {
      v14 = [(PDDatabaseManager *)self->_databaseManager paymentApplicationsForNotificationService:v9];
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
      v17 = [v16 paymentPass];
      v18 = [v17 partnerAccountIdentifier];

      if (v18)
      {
        [v33 setObject:v18 forKey:@"accountIdentifier"];
      }
    }

    v19 = [NSJSONSerialization dataWithJSONObject:v33 options:0 error:0];
    v20 = [v19 SHA256Hash];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000913A8;
    v38[3] = &unk_100841310;
    v21 = v19;
    v39 = v21;
    v40 = v13;
    v41 = v9;
    v42 = v10;
    v43 = self;
    v22 = objc_retainBlock(v38);
    v23 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v33;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Signing Registration Data: %@", buf, 0xCu);
    }

    v24 = v9;
    v25 = v11;
    v26 = v10;
    v27 = v8;
    v28 = self;
    secureElement = self->_secureElement;
    v30 = v48[5];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10009171C;
    v35[3] = &unk_100841338;
    v35[4] = v28;
    v31 = v20;
    v36 = v31;
    v32 = v22;
    v37 = v32;
    [(PKSecureElement *)secureElement signChallenge:v31 forPaymentApplication:v30 withCompletion:v35];

    v8 = v27;
    v10 = v26;
    v11 = v25;
    v9 = v24;

    _Block_object_dispose(&v47, 8);
  }
}

- (void)_performDeregistrationForPassUniqueIdentifier:(id)a3 paymentApplication:(id)a4 notificationService:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempting to de-register Pass with Unique Identifier: %@ with Notification Service: [%@]", &v14, 0x16u);
  }

  v12 = [v9 dpanIdentifier];
  v13 = [PDNotificationServiceSpecificRegistrationTask deregisterTaskWithNotificationService:v10 dpanIdentifier:v12];

  [(PDNetworkTaskManager *)self->_taskManager performTask:v13];
  -[PDDatabaseManager updateRegistrationStatus:forNotificationServiceType:passUniqueIdentifier:](self->_databaseManager, "updateRegistrationStatus:forNotificationServiceType:passUniqueIdentifier:", 2, [v10 serviceType], v8);
  if (![(PDDatabaseManager *)self->_databaseManager notificationServiceIsEnabledForAnyPasses:v10])
  {
    [(PDDatabaseManager *)self->_databaseManager updateAuthenticationToken:0 forNotificationService:v10];
    [v10 setAuthenticationToken:0];
  }

  [(PDNotificationServiceCoordinator *)self _recalculatePushTopics];
}

- (void)_clearStoredDataForPassUniqueIdentifier:(id)a3 notificationService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Clearing stored state for Pass with Unique Identifier: %@ with Notification Service: [%@]", &v13, 0x16u);
  }

  v9 = [v7 serviceType];
  [(PDDatabaseManager *)self->_databaseManager updateLastUpdatedDate:0 forNotificationServiceType:v9 passUniqueIdentifier:v6];
  [(PDDatabaseManager *)self->_databaseManager updateLastUpdatedTag:0 forNotificationServiceType:v9 passUniqueIdentifier:v6];
  if (![(PDDatabaseManager *)self->_databaseManager notificationServiceIsEnabledForAnyPasses:v7])
  {
    [v7 setLastUpdatedTag:0];
    [v7 setLastUpdatedDate:0];
    [(PDDatabaseManager *)self->_databaseManager updateNotificationService:v7];
  }

  if (v9)
  {
    [(PDDatabaseManager *)self->_databaseManager deleteAllMessagesFromPaymentPassWithUniqueIdentifier:v6];
  }

  else
  {
    [(PDUserNotificationManager *)self->_userNotificationManager removeUserNotificationsForPassUniqueIdentifier:v6 ofType:4];
    v10 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:v6];
    v11 = [v10 paymentPass];
    v12 = [v11 deviceTransactionSourceIdentifiers];

    [(PDDatabaseManager *)self->_databaseManager deleteAllTransactionsFromTransactionSourceIdentifiers:v12];
  }
}

- (void)_registrationTaskSucceeded:(id)a3 withAuthenticationToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 notificationService];
  [v8 setAuthenticationToken:v7];

  [(PDDatabaseManager *)self->_databaseManager updateNotificationService:v8];
  v9 = [v6 completionTask];

  if (v9)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 completionTask];
      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Performing Completion Task After Successful Registration: %@", buf, 0xCu);
    }

    v12 = PDDefaultQueue();
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100091D90;
    v19[3] = &unk_10083C420;
    v19[4] = self;
    v20 = v6;
    dispatch_async(v12, v19);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v6 dpanIdentifier];
    v14 = [(PDDatabaseManager *)self->_databaseManager paymentApplicationWithDPANIdentifier:v13];
    v15 = [(PDDatabaseManager *)self->_databaseManager passWithPaymentApplication:v14];
    databaseManager = self->_databaseManager;
    v17 = [v8 serviceType];
    v18 = [v15 uniqueID];
    [(PDDatabaseManager *)databaseManager updateRegistrationStatus:1 forNotificationServiceType:v17 passUniqueIdentifier:v18];

    [(PDNotificationServiceCoordinator *)self _recalculatePushTopics];
  }
}

- (void)_notificationUpdatesTaskSucceeded:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = [v6 notificationService];
  v10 = [v9 serviceType];
  v11 = [v7 lastUpdatedTag];
  v64 = v9;
  v65 = objc_alloc_init(NSCountedSet);
  if (isKindOfClass)
  {
    v61 = v7;
    v12 = v6;
    v13 = [v12 dpanIdentifier];
    v63 = [(PDDatabaseManager *)self->_databaseManager paymentApplicationWithDPANIdentifier:v13];
    v14 = [(PDDatabaseManager *)self->_databaseManager passUniqueIdentifierWithPaymentApplication:?];
    v15 = v11;
    databaseManager = self->_databaseManager;
    v17 = v14;
    v18 = +[NSDate date];
    v19 = databaseManager;
    v11 = v15;
    [(PDDatabaseManager *)v19 updateLastUpdatedDate:v18 forNotificationServiceType:v10 passUniqueIdentifier:v17];

    if (v15)
    {
      [(PDDatabaseManager *)self->_databaseManager updateLastUpdatedTag:v15 forNotificationServiceType:v10 passUniqueIdentifier:v17];
    }

    v9 = v64;
    v7 = v61;
    if (!v61)
    {
      goto LABEL_42;
    }

LABEL_9:
    v56 = v11;
    v22 = [v7 authenticationToken];
    v62 = [v7 appLaunchToken];
    v60 = [v7 balances];
    v59 = [v7 plans];
    v23 = [v7 notifications];
    if ([v22 length])
    {
      [v9 setAuthenticationToken:v22];
      [(PDDatabaseManager *)self->_databaseManager updateAuthenticationToken:v22 forNotificationService:v9];
    }

    v55 = v22;
    v24 = isKindOfClass & 1;
    if ([v62 length])
    {
      [(PDDatabaseManager *)self->_databaseManager updateAppLaunchToken:v62 forNotificationService:v9];
    }

    if (v10)
    {
      if (v10 != 1)
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
      v28 = [v23 sortedArrayUsingDescriptors:v27];

      v23 = v28;
LABEL_20:
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_100092578;
      v81[3] = &unk_100841360;
      v81[4] = self;
      v58 = v10;
      v85 = v10;
      v82 = v65;
      v86 = v24;
      v83 = v23;
      v57 = v6;
      v84 = v6;
      v53 = v83;
      [v83 enumerateObjectsUsingBlock:v81];
      v29 = &PKPaymentNetworkAmex_ptr;
      if ([v60 count])
      {
        v30 = v17;
        +[NSMutableDictionary dictionary];
        v79[0] = _NSConcreteStackBlock;
        v79[1] = 3221225472;
        v79[2] = sub_1000927E8;
        v79[3] = &unk_100841388;
        v31 = v79[4] = self;
        v80 = v31;
        [v60 enumerateObjectsUsingBlock:v79];
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
      [v59 enumerateObjectsUsingBlock:v73];
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
        v51 = [v7 tileConfigurations];
        v67[0] = _NSConcreteStackBlock;
        v67[1] = 3221225472;
        v67[2] = sub_100092C30;
        v67[3] = &unk_100841388;
        v67[4] = self;
        v68 = v50;
        v52 = v50;
        [v51 enumerateObjectsUsingBlock:v67];

        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = sub_100092E54;
        v66[3] = &unk_1008413D8;
        v66[4] = self;
        [v52 enumerateKeysAndObjectsUsingBlock:v66];
      }

      v11 = v56;
      v6 = v57;
      v9 = v64;
      v17 = v30;
      goto LABEL_42;
    }

LABEL_19:
    v54 = 0;
    goto LABEL_20;
  }

  v20 = self->_databaseManager;
  v21 = +[NSDate date];
  [(PDDatabaseManager *)v20 updateLastUpdatedDate:v21 forNotificationService:v9];

  if (v11)
  {
    [(PDDatabaseManager *)self->_databaseManager updateLastUpdatedTag:v11 forNotificationService:v9];
  }

  v17 = 0;
  v63 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_42:
}

- (void)_transactionAuthenticationTaskSucceeded:(id)a3 withResponse:(id)a4
{
  if (a4)
  {
    taskToResponseMap = self->_taskToResponseMap;
    v7 = a4;
    v8 = [(PDNotificationServiceCoordinator *)self _dictionaryKeyForTask:a3];
    [(NSMutableDictionary *)taskToResponseMap setObject:v7 forKey:v8];
  }
}

- (void)sendLowBalanceNotificationIfNecessaryForUpdatedBalances:(id)a3 startingBalances:(id)a4 passUniqueIdentifier:(id)a5
{
  v8 = a3;
  v39 = a4;
  v9 = a5;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v47;
    *&v11 = 138412802;
    v34 = v11;
    v35 = self;
    v36 = v8;
    v37 = *v47;
    v38 = v9;
    do
    {
      v14 = 0;
      v40 = v12;
      do
      {
        if (*v47 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v41 = *(*(&v46 + 1) + 8 * v14);
        v15 = [v41 identifiers];
        v16 = [v15 anyObject];

        v17 = [(PDDatabaseManager *)self->_databaseManager balanceReminderThresholdForBalanceIdentifier:v16 withPassUniqueIdentifier:v9];
        v18 = v17;
        if (v17 && [v17 isEnabled])
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v19 = v39;
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
              v25 = [v24 identifiers];
              v26 = [v25 containsObject:v16];

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
                self = v35;
                v8 = v36;
                v9 = v38;
                goto LABEL_27;
              }
            }

            v27 = v24;

            self = v35;
            v8 = v36;
            v13 = v37;
            v9 = v38;
            v12 = v40;
            if (!v27)
            {
              goto LABEL_29;
            }

            v28 = [v18 threshold];
            v29 = [v41 value];
            v30 = [v29 compare:v28];
            v31 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v34;
              v51 = v18;
              v52 = 2112;
              v53 = v29;
              v54 = 2112;
              v55 = v27;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "PDNotificationServiceCoordiantor: lowBalance threshold: %@, updatedBalance: %@, oldBalance: %@", buf, 0x20u);
            }

            if (v30 == -1)
            {
              v32 = [v27 value];
              v33 = [v32 compare:v28];

              if (v33 == -1)
              {
                v9 = v38;
                [(PDNotificationServiceCoordinator *)v35 updateLowBalanceNotificationForBalance:v41 withPassUniqueIdentifier:v38];
              }

              else
              {
                v9 = v38;
                [(PDNotificationServiceCoordinator *)v35 sendLowBalanceNotificationForBalance:v41 withReminder:v18 passUniqueIdentifier:v38];
              }
            }

            else
            {
              v9 = v38;
              [(PDNotificationServiceCoordinator *)v35 removeLowBalanceNotificationForBalance:v41 withPassUniqueIdentifier:v38];
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
      v12 = [v8 countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v12);
  }
}

- (void)sendLowBalanceNotificationForBalance:(id)a3 withReminder:(id)a4 passUniqueIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 currencyCode];
  v12 = [PDPassLowBalanceReminderUserNotification alloc];
  v13 = [v10 value];
  v14 = [v10 exponent];
  v15 = [v9 threshold];

  v16 = [v10 identifiers];

  v17 = [v16 anyObject];
  v18 = [(PDPassLowBalanceReminderUserNotification *)v12 initWithCurrentBalance:v13 balanceCurrency:v11 exponent:v14 reminderAmount:v15 reminderCurrency:v11 passUniqueIdentifier:v8 balanceIdentifier:v17];

  [(PDUserNotificationManager *)self->_userNotificationManager insertUserNotification:v18];
  v19 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v18;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "PDNotificationServiceCoordiantor: send lowBalance notification %@ for pass %@", buf, 0x16u);
  }
}

- (void)updateLowBalanceNotificationForBalance:(id)a3 withPassUniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifiers];
  v9 = [v8 anyObject];

  userNotificationManager = self->_userNotificationManager;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100093750;
  v14[3] = &unk_10083D288;
  v15 = v9;
  v16 = v6;
  v17 = self;
  v18 = v7;
  v11 = v7;
  v12 = v6;
  v13 = v9;
  [(PDUserNotificationManager *)userNotificationManager userNotificationsForPassUniqueIdentifier:v11 ofType:7 completion:v14];
}

- (void)removeLowBalanceNotificationForBalance:(id)a3 withPassUniqueIdentifier:(id)a4
{
  v6 = a4;
  v7 = [a3 identifiers];
  v8 = [v7 anyObject];

  userNotificationManager = self->_userNotificationManager;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100093A24;
  v12[3] = &unk_100841400;
  v13 = v8;
  v14 = self;
  v15 = v6;
  v10 = v6;
  v11 = v8;
  [(PDUserNotificationManager *)userNotificationManager userNotificationsForPassUniqueIdentifier:v10 ofType:7 completion:v12];
}

- (BOOL)_validateBalanceResult:(id)a3
{
  v3 = a3;
  v4 = [v3 identifiers];

  if (!v4)
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

  v5 = [v3 value];

  if (!v5)
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

  v6 = [v3 lastUpdateDate];

  if (!v6)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Balance missing lastUpdate, synthesizing", v13, 2u);
    }

    v8 = +[NSDate date];
    [v3 setLastUpdateDate:v8];
    v7 = 1;
    goto LABEL_11;
  }

  v7 = 1;
LABEL_12:

  return v7;
}

- (BOOL)_validatePlanResult:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];

  if (!v4)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Plan missing identifier", buf, 2u);
    }

    goto LABEL_8;
  }

  v5 = [v3 lastUpdateDate];

  if (!v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Plan missing lastUpdate, synthesizing", v9, 2u);
    }

    v7 = +[NSDate date];
    [v3 setLastUpdateDate:v7];
LABEL_8:
  }

  return v4 != 0;
}

- (void)_isMerchantTokenTransaction:(id)a3 forPass:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[PKPassLibrary sharedInstance];
  v12 = [v8 panIdentifier];
  v13 = [v11 passWithFPANIdentifier:v12];

  v14 = [v8 panIdentifier];
  v15 = [v11 passWithDPANIdentifier:v14];

  v16 = [v8 panIdentifier];
  v17 = v16;
  if (v13 || v15 || !v16)
  {
    v10[2](v10, &__kCFBooleanFalse);
  }

  else
  {
    v18 = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator sharedWebService];
    v19 = objc_alloc_init(PKRetrieveMerchantTokensRequest);
    [v19 setPass:v9];
    [v19 setMerchantTokenId:v17];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100094030;
    v20[3] = &unk_100841428;
    v22 = v10;
    v21 = v8;
    [v18 retrieveMerchantTokensWithRequest:v19 completion:v20];
  }
}

- (BOOL)_processTransactionDictionary:(id)a3 forPassUniqueIdentifier:(id)a4 paymentApplication:(id)a5 performTruncation:(BOOL)a6 isInitialUpdate:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v12)
  {
    v15 = [v12 PKNumberForKey:@"invalidated"];
    v16 = [v12 PKStringForKey:@"completion"];
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

  v18 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:v13];
  v19 = [v18 paymentPass];

  v20 = PKPaymentPassUnitDictionary(v19);
  v21 = PKPaymentPassBalanceLabelDictionary(v19);
  PKPaymentPassPlanLabelDictionary(v19);
  v35 = v20;
  v33 = v36 = v12;
  v34 = v21;
  v22 = [PKPaymentTransaction paymentTransactionWithSource:"paymentTransactionWithSource:dictionary:unitDictionary:balanceLabelDictionary:planLabelDictionary:hasNotificationServiceData:" dictionary:0 unitDictionary:v12 balanceLabelDictionary:v20 planLabelDictionary:v21 hasNotificationServiceData:?];
  [v22 addUpdateReasons:64];
  if (v7)
  {
    [v22 addUpdateReasons:4096];
  }

  [(PDDatabaseManager *)self->_databaseManager insertOrUpdatePaymentTransaction:v22 withPassUniqueIdentifier:v13 paymentApplication:v14 insertionMode:v17 performTruncation:v8];
  v24 = v23 = v8;
  paymentTransactionProcessor = self->_paymentTransactionProcessor;
  v26 = [v24 transactionSourceIdentifier];
  [(PDPaymentTransactionProcessor *)paymentTransactionProcessor processPaymentTransaction:v24 forTransactionSourceIdentifier:v26];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100094534;
  v37[3] = &unk_100841478;
  v37[4] = self;
  v38 = v24;
  v39 = v13;
  v40 = v14;
  v41 = v17;
  v42 = v23;
  v27 = v14;
  v28 = v13;
  v29 = v24;
  [(PDNotificationServiceCoordinator *)self _isMerchantTokenTransaction:v29 forPass:v19 completion:v37];
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

- (BOOL)_processMessageDictionary:(id)a3 forPassUniqueIdentifier:(id)a4 paymentApplication:(id)a5 performTruncation:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [PKPaymentMessage paymentMessageWithDictionary:a3];
  v13 = [(PDDatabaseManager *)self->_databaseManager insertOrUpdatePaymentMessage:v12 forPassUniqueIdentifier:v11 paymentApplication:v10 performTruncation:v6];

  return v13 != 0;
}

- (void)_cancelAllTasksForPaymentApplication:(id)a3 notificationService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDDatabaseManager *)self->_databaseManager paymentApplicationsForNotificationService:v7];
  v9 = [v8 pk_setByRemovingObject:v6];
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
  v12 = v7;
  v16 = v12;
  v19 = v10;
  v13 = v6;
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

- (void)_invokeAndClearHandlerForTask:(id)a3 withResult:(BOOL)a4
{
  v4 = a4;
  v8 = [(PDNotificationServiceCoordinator *)self _dictionaryKeyForTask:a3];
  v6 = [(NSMutableDictionary *)self->_taskToHandlerMap objectForKey:?];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v4);
  }

  [(NSMutableDictionary *)self->_taskToHandlerMap removeObjectForKey:v8];
  [(NSMutableDictionary *)self->_taskToResponseMap removeObjectForKey:v8];
  [(NSMutableDictionary *)self->_taskToErrorMap removeObjectForKey:v8];
}

- (id)_partnerAccountIdentifierWithPaymentApplication:(id)a3 passUniqueIdentifier:(id)a4
{
  v6 = a4;
  if ([a3 supportsPartnerSpecificIdentifier])
  {
    v7 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:v6];
    v8 = [v7 paymentPass];
    v9 = [v8 partnerAccountIdentifier];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end