@interface SubCalWebcalHandler
+ (id)outstandingSetupRequests;
- (SubCalWebcalHandler)init;
- (SubCalWebcalHandlerConsumer)consumer;
- (id)_existingAccountLikeAccount:(id)account;
- (id)_newAccountWithHost:(id)host;
- (id)waiterID;
- (void)_beginAccountSetupWithSubscriptionAtHost:(id)host;
- (void)_createCalendar;
- (void)_createCalendarInStore:(id)store needsCommit:(BOOL *)commit;
- (void)_prepareForSave;
- (void)_receiveAuthPrompt:(unint64_t)prompt notification:(__CFUserNotification *)notification;
- (void)_receiveInvalidAccount:(unint64_t)account;
- (void)_receiveSubscribeAccount:(unint64_t)account;
- (void)_receiveWhereTo:(unint64_t)to;
- (void)_saveAccount;
- (void)_showAuthPrompt;
- (void)_showInvalidAccount;
- (void)_showMatchingAccountAlertForAccount:(id)account;
- (void)_showSSLFailureAlert;
- (void)_showSubscribeAccount;
- (void)_showWhereTo;
- (void)_sslFailureAlertReceived:(unint64_t)received;
- (void)_tellConsumerWereFinished;
- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error;
- (void)handleWebcalURLString:(id)string withConsumer:(id)consumer;
@end

@implementation SubCalWebcalHandler

+ (id)outstandingSetupRequests
{
  if (qword_23340 != -1)
  {
    sub_D7A0();
  }

  v3 = qword_23338;

  return v3;
}

- (SubCalWebcalHandler)init
{
  v5.receiver = self;
  v5.super_class = SubCalWebcalHandler;
  v2 = [(SubCalWebcalHandler *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SubCalWebcalHandler *)v2 setCalendarId:0xFFFFFFFFLL];
  }

  return v3;
}

- (void)_tellConsumerWereFinished
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v3, v4, "Finished Out of band setup", v9, 2u);
  }

  v5 = +[DADAgentManager sharedManager];
  [v5 removePendingAccountSetup];

  consumer = [(SubCalWebcalHandler *)self consumer];
  [consumer subCalWebcalHandlerFinishedSetup:self];

  v7 = +[SubCalWebcalHandler outstandingSetupRequests];
  urlString = [(SubCalWebcalHandler *)self urlString];
  [v7 removeObject:urlString];
}

- (void)_receiveWhereTo:(unint64_t)to
{
  v4 = to & 3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  v7 = os_log_type_enabled(v5, v6);
  if (v4 == 1)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, v6, "User chose to go to mobile cal", buf, 2u);
    }

    v8 = [NSString alloc];
    v9 = +[NSDate date];
    [v9 timeIntervalSinceReferenceDate];
    v5 = [v8 initWithFormat:@"calshow:%d", v10];

    v11 = [[NSURL alloc] initWithString:v5];
    v12 = +[LSApplicationWorkspace defaultWorkspace];
    [v12 openSensitiveURL:v11 withOptions:0];
  }

  else if (v7)
  {
    *v13 = 0;
    _os_log_impl(&dword_0, v5, v6, "User chose to stay here", v13, 2u);
  }

  [(SubCalWebcalHandler *)self _tellConsumerWereFinished];
}

- (void)_showWhereTo
{
  account = [(SubCalWebcalHandler *)self account];
  v4 = SubCalCopyWhereToAccountNotification();

  v5 = dataaccess_get_global_queue();
  v6 = +[DARunLoopRegistry sharedRunLoop];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_91C8;
  v7[3] = &unk_1C608;
  v7[4] = self;
  [DAUserNotificationUtilities showUserNotification:v4 groupIdentifier:0 callbackQueue:v5 sourceRunLoop:v6 completionBlock:v7];

  if (v4)
  {
    CFRelease(v4);
  }
}

- (void)_saveAccount
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 138412290;
    v16 = objc_opt_class();
    v5 = v16;
    _os_log_impl(&dword_0, v3, v4, "%@ saving account", buf, 0xCu);
  }

  account = [(SubCalWebcalHandler *)self account];
  [account saveTmpICSData];

  account2 = [(SubCalWebcalHandler *)self account];
  backingAccountInfo = [account2 backingAccountInfo];
  [backingAccountInfo setAuthenticated:1];

  account3 = [(SubCalWebcalHandler *)self account];
  v14 = 0;
  v10 = [account3 saveAccountPropertiesWithError:&v14];
  v11 = v14;

  if ((v10 & 1) == 0)
  {
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&dword_0, v12, v13, "Failed to save subscribed calendar account: %@", buf, 0xCu);
    }
  }

  [(SubCalWebcalHandler *)self _showWhereTo];
  [(SubCalWebcalHandler *)self setAccount:0];
}

- (void)_createCalendar
{
  v3 = [[EKEventStore alloc] initWithEKOptions:4];
  v10 = 0;
  [(SubCalWebcalHandler *)self _createCalendarInStore:v3 needsCommit:&v10];
  if (v10 != 1)
  {
    goto LABEL_4;
  }

  v9 = 0;
  v4 = [v3 commit:&v9];
  v5 = v9;
  v6 = v5;
  if (v4)
  {

LABEL_4:
    v6 = runLoopModesToPerformDelayedSelectorsIn();
    [(SubCalWebcalHandler *)self performSelector:"_saveAccount" withObject:0 afterDelay:v6 inModes:0.0];
    goto LABEL_8;
  }

  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_0, v7, v8, "Error committing EKEventStore: %@", buf, 0xCu);
  }

LABEL_8:
}

- (void)_createCalendarInStore:(id)store needsCommit:(BOOL *)commit
{
  storeCopy = store;
  v37 = 0;
  v7 = kSubCalCalendarStoreExternalId;
  v36 = 0;
  v8 = [SubCalLocalDBHelper initializeSourceWithExternalId:kSubCalCalendarStoreExternalId inStore:storeCopy needsSave:&v37 error:&v36];
  v9 = v36;
  v10 = v9;
  if (v8)
  {
    v11 = v37;
    if (!v37)
    {
      v13 = v9;
LABEL_8:
      *commit = v11;
      account = [(SubCalWebcalHandler *)self account];
      subscriptionURL = [account subscriptionURL];
      absoluteString = [subscriptionURL absoluteString];
      v34 = v13;
      v14 = [SubCalLocalDBHelper initializeCalendarWithExternalId:absoluteString inSource:v8 needsSave:0 error:&v34];
      v10 = v34;

      if (v14)
      {
        objectID = [v14 objectID];
        -[SubCalWebcalHandler setCalendarId:](self, "setCalendarId:", [objectID rowID]);

        account2 = [(SubCalWebcalHandler *)self account];
        accountDescription = [account2 accountDescription];
        [v14 setTitle:accountDescription];

        account3 = [(SubCalWebcalHandler *)self account];
        accountID = [account3 accountID];
        [v14 setSubcalAccountID:accountID];

        v33 = v10;
        LOBYTE(accountID) = [storeCopy saveCalendar:v14 commit:0 error:&v33];
        v24 = v33;

        if (accountID)
        {
          *commit = 1;
        }

        else
        {
          v31 = DALoggingwithCategory();
          v32 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(v31, v32))
          {
            *buf = 138412290;
            v39 = v24;
            _os_log_impl(&dword_0, v31, v32, "Error saving calendar: %@", buf, 0xCu);
          }
        }

        v10 = v24;
      }

      else
      {
        v25 = DALoggingwithCategory();
        v26 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v25, v26))
        {
          account4 = [(SubCalWebcalHandler *)self account];
          subscriptionURL2 = [account4 subscriptionURL];
          absoluteString2 = [subscriptionURL2 absoluteString];
          *buf = 138412546;
          v39 = absoluteString2;
          v40 = 2112;
          v41 = v10;
          _os_log_impl(&dword_0, v25, v26, "Error initializing the EKCalendar with externalId: %@. Error: %@", buf, 0x16u);
        }
      }

      goto LABEL_21;
    }

    v35 = v9;
    v12 = [storeCopy saveSource:v8 commit:0 error:&v35];
    v13 = v35;

    if (v12)
    {
      v11 = v37;
      goto LABEL_8;
    }

    v14 = DALoggingwithCategory();
    v30 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v14, v30))
    {
      *buf = 138412290;
      v39 = v13;
      _os_log_impl(&dword_0, v14, v30, "Error saving source: %@", buf, 0xCu);
    }

    v10 = v13;
  }

  else
  {
    v14 = DALoggingwithCategory();
    v15 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v14, v15))
    {
      *buf = 138412546;
      v39 = v7;
      v40 = 2112;
      v41 = v10;
      _os_log_impl(&dword_0, v14, v15, "Error initializing the EKSource with externalId: %@. Error: %@", buf, 0x16u);
    }
  }

LABEL_21:
}

- (void)_prepareForSave
{
  v3 = objc_opt_new();
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v4, v5))
  {
    transactionId = [v3 transactionId];
    *buf = 138543362;
    v12 = transactionId;
    _os_log_impl(&dword_0, v4, v5, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v7 = +[DALocalDBGateKeeper sharedGateKeeper];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_9A80;
  v9[3] = &unk_1C630;
  v9[4] = self;
  v10 = v3;
  v8 = v3;
  [v7 registerWaiter:self forDataclassLocks:4 completionHandler:v9];
}

- (void)_receiveSubscribeAccount:(unint64_t)account
{
  v4 = account & 3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  v7 = os_log_type_enabled(v5, v6);
  if (v4 == 1)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, v6, "User chose to subscribe to new account", buf, 2u);
    }

    account = [(SubCalWebcalHandler *)self account];
    tmpICSData = [account tmpICSData];

    if (tmpICSData)
    {
      [(SubCalWebcalHandler *)self _prepareForSave];
    }

    else
    {
      account2 = [(SubCalWebcalHandler *)self account];
      v11 = sharedDAAccountStore();
      v12 = dataaccess_get_global_queue();
      [account2 checkValidityOnAccountStore:v11 withConsumer:self inQueue:v12];
    }
  }

  else
  {
    if (v7)
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v5, v6, "User chose not to subscribe to new account", v13, 2u);
    }

    [(SubCalWebcalHandler *)self _tellConsumerWereFinished];
  }
}

- (void)_showSubscribeAccount
{
  account = self->_account;
  v4 = SubCalCopySaveAccountNotification();
  v5 = dataaccess_get_global_queue();
  v6 = +[DARunLoopRegistry sharedRunLoop];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_9DF0;
  v7[3] = &unk_1C608;
  v7[4] = self;
  [DAUserNotificationUtilities showUserNotification:v4 groupIdentifier:0 callbackQueue:v5 sourceRunLoop:v6 completionBlock:v7];

  if (v4)
  {
    CFRelease(v4);
  }
}

- (void)_receiveInvalidAccount:(unint64_t)account
{
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v4, v5))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "User responded to invalid account alert", v6, 2u);
  }

  [(SubCalWebcalHandler *)self _tellConsumerWereFinished];
}

- (void)_showInvalidAccount
{
  account = self->_account;
  v4 = SubCalCopyInvalidAccountNotification();
  v5 = dataaccess_get_global_queue();
  v6 = +[DARunLoopRegistry sharedRunLoop];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_9F68;
  v7[3] = &unk_1C608;
  v7[4] = self;
  [DAUserNotificationUtilities showUserNotification:v4 groupIdentifier:0 callbackQueue:v5 sourceRunLoop:v6 completionBlock:v7];

  if (v4)
  {
    CFRelease(v4);
  }
}

- (void)_receiveAuthPrompt:(unint64_t)prompt notification:(__CFUserNotification *)notification
{
  if ((prompt & 3) != 0)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, v6, "User chose not to input auth for account", buf, 2u);
    }

    [(SubCalWebcalHandler *)self _tellConsumerWereFinished];
  }

  else
  {
    ResponseDictionary = CFUserNotificationGetResponseDictionary(notification);
    if (ResponseDictionary)
    {
      Value = CFDictionaryGetValue(ResponseDictionary, kCFUserNotificationTextFieldValuesKey);
      if (Value)
      {
        v9 = Value;
        v10 = CFGetTypeID(Value);
        if (v10 == CFArrayGetTypeID() && CFArrayGetCount(v9) >= 2)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
          v12 = CFArrayGetValueAtIndex(v9, 1);
          account = [(SubCalWebcalHandler *)self account];
          [account setUsername:ValueAtIndex];

          account2 = [(SubCalWebcalHandler *)self account];
          [account2 setPassword:v12];
        }
      }
    }

    account3 = [(SubCalWebcalHandler *)self account];
    [account3 quickValidate:self];
  }
}

- (void)_showAuthPrompt
{
  account = [(SubCalWebcalHandler *)self account];
  host = [account host];
  v5 = SubCalCopyAuthNeededForHostNotification();

  v6 = dataaccess_get_global_queue();
  v7 = +[DARunLoopRegistry sharedRunLoop];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_A1E8;
  v8[3] = &unk_1C608;
  v8[4] = self;
  [DAUserNotificationUtilities showUserNotification:v5 groupIdentifier:0 callbackQueue:v6 sourceRunLoop:v7 completionBlock:v8];

  if (v5)
  {
    CFRelease(v5);
  }
}

- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error
{
  validCopy = valid;
  accountCopy = account;
  errorCopy = error;
  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v10, v11))
  {
    if (validCopy)
    {
      v12 = @"Validated";
    }

    else
    {
      v12 = @"Could not validate";
    }

    host = [accountCopy host];
    if (validCopy)
    {
      v14 = &stru_1C8E8;
    }

    else
    {
      v14 = [errorCopy description];
    }

    v15 = 138412802;
    v16 = v12;
    v17 = 2112;
    v18 = host;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_0, v10, v11, "%@ account for host %@ %@", &v15, 0x20u);
    if (!validCopy)
    {
    }
  }

  if (validCopy)
  {
    if ([(SubCalWebcalHandler *)self haveShownSubscribeAlert])
    {
      [(SubCalWebcalHandler *)self _prepareForSave];
    }

    else
    {
      [(SubCalWebcalHandler *)self setHaveShownSubscribeAlert:1];
      [(SubCalWebcalHandler *)self _showSubscribeAccount];
    }
  }

  else if ([errorCopy isSubCalAuthError])
  {
    [(SubCalWebcalHandler *)self _showAuthPrompt];
  }

  else if ([(SubCalAccount *)self->_account useSSL]&& ![(SubCalWebcalHandler *)self haveTriedHTTP]&& [(SubCalWebcalHandler *)self canTryHTTP])
  {
    [(SubCalWebcalHandler *)self _showSSLFailureAlert];
  }

  else
  {
    [(SubCalWebcalHandler *)self _showInvalidAccount];
  }
}

- (void)_showMatchingAccountAlertForAccount:(id)account
{
  v4 = SubCalCopyDuplicateAccountNotification();
  v5 = dataaccess_get_global_queue();
  v6 = +[DARunLoopRegistry sharedRunLoop];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_A4B8;
  v7[3] = &unk_1C608;
  v7[4] = self;
  [DAUserNotificationUtilities showUserNotification:v4 groupIdentifier:0 callbackQueue:v5 sourceRunLoop:v6 completionBlock:v7];

  if (v4)
  {
    CFRelease(v4);
  }
}

- (void)_showSSLFailureAlert
{
  account = [(SubCalWebcalHandler *)self account];
  v4 = SubCalCopySSLFailureNotification();

  v5 = dataaccess_get_global_queue();
  v6 = +[DARunLoopRegistry sharedRunLoop];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_A5B0;
  v7[3] = &unk_1C608;
  v7[4] = self;
  [DAUserNotificationUtilities showUserNotification:v4 groupIdentifier:0 callbackQueue:v5 sourceRunLoop:v6 completionBlock:v7];

  if (v4)
  {
    CFRelease(v4);
  }
}

- (void)_sslFailureAlertReceived:(unint64_t)received
{
  v4 = received & 3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[5];
  v7 = os_log_type_enabled(v5, v6);
  if (v4 == 1)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, v6, "User chose to try connecting without SSL", buf, 2u);
    }

    [(SubCalWebcalHandler *)self setHaveTriedHTTP:1];
    [(SubCalAccount *)self->_account setUseSSL:0];
    [(SubCalAccount *)self->_account setAllowInsecureConnection:1];
    [(SubCalAccount *)self->_account quickValidate:self];
  }

  else
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v5, v6, "User chose not to try connecting without SSL", v8, 2u);
    }

    [(SubCalWebcalHandler *)self _tellConsumerWereFinished];
  }
}

- (id)_existingAccountLikeAccount:(id)account
{
  accountCopy = account;
  subscriptionURL = [accountCopy subscriptionURL];
  v5 = dispatch_semaphore_create(0);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_A968;
  v28 = sub_A978;
  v29 = 0;
  v6 = sharedDAAccountStore();
  v31 = ACAccountTypeIdentifierSubscribedCalendar;
  v7 = [NSArray arrayWithObjects:&v31 count:1];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_A980;
  v21[3] = &unk_1C658;
  v23 = &v24;
  v8 = v5;
  v22 = v8;
  [v6 da_loadDAAccountsWithAccountTypeIdentifiers:v7 withCompletion:v21];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v25[5];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v30 count:16];
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 hasSubscribedCalendarAtURL:{subscriptionURL, v17}])
        {
          v10 = v13;
          goto LABEL_12;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v30 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v14 = v22;
  v15 = v10;

  _Block_object_dispose(&v24, 8);

  return v15;
}

- (id)_newAccountWithHost:(id)host
{
  hostCopy = host;
  v5 = sharedDAAccountStore();
  v6 = [v5 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierSubscribedCalendar];

  v7 = [[ACAccount alloc] initWithAccountType:v6];
  v8 = [[SubCalAccount alloc] initWithBackingAccountInfo:v7];
  v9 = 1;
  [v8 setEnabled:1 forDADataclass:4];
  [v8 setHost:hostCopy];
  if ([hostCopy length] >= 6)
  {
    v9 = [hostCopy compare:@"https" options:1 range:{0, 5}] != 0;
  }

  [(SubCalWebcalHandler *)self setCanTryHTTP:v9];
  [v8 setUseSSL:1];

  return v8;
}

- (void)_beginAccountSetupWithSubscriptionAtHost:(id)host
{
  v6 = [(SubCalWebcalHandler *)self _newAccountWithHost:host];
  v4 = [(SubCalWebcalHandler *)self _existingAccountLikeAccount:?];
  if (v4)
  {
    [(SubCalWebcalHandler *)self _showMatchingAccountAlertForAccount:v4];
  }

  else
  {
    [(SubCalWebcalHandler *)self setAccount:v6];
    account = [(SubCalWebcalHandler *)self account];
    [account quickValidate:self];
  }
}

- (id)waiterID
{
  account = [(SubCalWebcalHandler *)self account];
  accountID = [account accountID];

  return accountID;
}

- (void)handleWebcalURLString:(id)string withConsumer:(id)consumer
{
  stringCopy = string;
  consumerCopy = consumer;
  v8 = +[SubCalWebcalHandler outstandingSetupRequests];
  if ([v8 containsObject:stringCopy])
  {
    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v9, v10))
    {
      v18 = 138412290;
      v19 = stringCopy;
      _os_log_impl(&dword_0, v9, v10, "Ignoring webcal setup of outstanding URL %@", &v18, 0xCu);
    }
  }

  else
  {
    v9 = [stringCopy stringByReplacingPercentEscapesUsingEncoding:4];
    if ([v9 isSubCalURLString])
    {
      if ([objc_opt_class() shouldSubscribeThroughMobileCal])
      {
        v11 = [[NSMutableString alloc] initWithString:@"calsubcal:"];
        [v11 appendString:stringCopy];
        v12 = [NSURL URLWithString:v11];
        v13 = +[LSApplicationWorkspace defaultWorkspace];
        v14 = [v13 operationToOpenResource:v12 usingApplication:kCalCalendarBundleIdentifier userInfo:0];

        [v14 start];
      }

      else
      {
        [(SubCalWebcalHandler *)self setUrlString:v9];
        urlString = [(SubCalWebcalHandler *)self urlString];
        [v8 addObject:urlString];

        v16 = +[DADAgentManager sharedManager];
        [v16 addPendingAccountSetup];

        [(SubCalWebcalHandler *)self setConsumer:consumerCopy];
        [(SubCalWebcalHandler *)self _beginAccountSetupWithSubscriptionAtHost:v9];
      }
    }
  }

  consumer = [(SubCalWebcalHandler *)self consumer];

  if (!consumer)
  {
    [consumerCopy subCalWebcalHandlerFinishedSetup:self];
  }
}

- (SubCalWebcalHandlerConsumer)consumer
{
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  return WeakRetained;
}

@end