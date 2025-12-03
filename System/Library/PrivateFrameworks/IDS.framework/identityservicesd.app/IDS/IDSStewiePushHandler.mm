@interface IDSStewiePushHandler
- (IDSStewiePushHandler)initWithDelegate:(id)delegate pushHandler:(id)handler bag:(id)bag queue:(id)queue ctClient:(id)client;
- (IDSStewiePushHandler)initWithDelegate:(id)delegate queue:(id)queue bag:(id)bag ctClient:(id)client;
- (IDSStewiePushHandlerDelegate)delegate;
- (void)_processRollKeysAndSMSConfigAction:(id)action;
- (void)dealloc;
- (void)handler:(id)handler didReceiveMessage:(id)message forTopic:(id)topic fromID:(id)d messageContext:(id)context;
@end

@implementation IDSStewiePushHandler

- (IDSStewiePushHandler)initWithDelegate:(id)delegate queue:(id)queue bag:(id)bag ctClient:(id)client
{
  clientCopy = client;
  bagCopy = bag;
  queueCopy = queue;
  delegateCopy = delegate;
  v14 = +[IDSPushHandler sharedInstance];
  v15 = [(IDSStewiePushHandler *)self initWithDelegate:delegateCopy pushHandler:v14 bag:bagCopy queue:queueCopy ctClient:clientCopy];

  return v15;
}

- (IDSStewiePushHandler)initWithDelegate:(id)delegate pushHandler:(id)handler bag:(id)bag queue:(id)queue ctClient:(id)client
{
  delegateCopy = delegate;
  handlerCopy = handler;
  bagCopy = bag;
  queueCopy = queue;
  clientCopy = client;
  v25.receiver = self;
  v25.super_class = IDSStewiePushHandler;
  v17 = [(IDSStewiePushHandler *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, delegateCopy);
    objc_storeStrong(&v18->_pushHandler, handler);
    objc_storeStrong(&v18->_bag, bag);
    objc_storeStrong(&v18->_ctClient, client);
    v20 = IDSSPSPushTopic;
    v24 = [NSSet setWithObject:IDSSPSPushTopic];
    v21 = [NSSet setWithObjects:&off_100C3BE90, &off_100C3BEA8, &off_100C3BEC0, &off_100C3BED8, 0];
    [(IDSPushHandler *)v18->_pushHandler addListener:v18 topics:v24 commands:v21 queue:queueCopy];
    pushHandler = v18->_pushHandler;
    v23 = sub_10091B0F4(v18);
    [(IDSPushHandler *)pushHandler subscribeToChannel:v23 forTopic:v20];
  }

  return v18;
}

- (void)dealloc
{
  pushHandler = [(IDSStewiePushHandler *)self pushHandler];
  [pushHandler removeListener:self];

  v4.receiver = self;
  v4.super_class = IDSStewiePushHandler;
  [(IDSStewiePushHandler *)&v4 dealloc];
}

- (void)_processRollKeysAndSMSConfigAction:(id)action
{
  actionCopy = action;
  v5 = objc_opt_class();
  v10 = sub_10001B3A0(v5, actionCopy, @"maxDelay");

  v6 = v10;
  if (v10)
  {
    v7 = arc4random_uniform(1000 * [v10 unsignedIntValue]) / 1000.0;
    delegate = [(IDSStewiePushHandler *)self delegate];
    [delegate pushHandler:self receivedRollKeysPushWithDelay:v7];

    delegate2 = [(IDSStewiePushHandler *)self delegate];
    [delegate2 pushHandler:self receivedRollSMSConfigPushWithDelay:v7];

    v6 = v10;
  }
}

- (void)handler:(id)handler didReceiveMessage:(id)message forTopic:(id)topic fromID:(id)d messageContext:(id)context
{
  messageCopy = message;
  contextCopy = context;
  if ([topic isEqualToString:IDSSPSPushTopic])
  {
    v12 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 138412290;
      v34 = messageCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received stewie push %@", &v33, 0xCu);
    }

    context = [contextCopy context];
    channelID = [context channelID];

    if (channelID)
    {
      v15 = +[IDSFoundationLog stewieProvisioning];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        channelID2 = [context channelID];
        v33 = 138412290;
        v34 = channelID2;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Push came in via cloud channel : %@", &v33, 0xCu);
      }
    }

    v17 = objc_opt_class();
    v18 = sub_10001B3A0(v17, messageCopy, IDSCommandKey);
    v19 = objc_opt_class();
    v20 = sub_10001B3A0(v19, messageCopy, @"test");
    v21 = objc_opt_class();
    v22 = sub_10001B3A0(v21, messageCopy, @"test");
    bOOLValue = [v22 BOOLValue];

    if (!v18)
    {
      goto LABEL_33;
    }

    integerValue = [v18 integerValue];
    if (integerValue > 2)
    {
      if (integerValue == 3)
      {
        v32 = +[IDSFoundationLog stewieProvisioning];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33) = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Received stewie unblock device push", &v33, 2u);
        }

        ctClient = [(IDSStewiePushHandler *)self ctClient];
        v27 = ctClient;
        v28 = 0;
        goto LABEL_31;
      }

      if (integerValue != 4)
      {
LABEL_33:

        goto LABEL_34;
      }

      v29 = +[IDSFoundationLog stewieProvisioning];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Received stewie roll sms config push", &v33, 2u);
      }

      if (!bOOLValue)
      {
        sub_10091B188(self, messageCopy);
        goto LABEL_33;
      }

      v27 = +[IDSFoundationLog stewieProvisioning];
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      LOWORD(v33) = 0;
      v30 = "This message is just a test - not rolling sms config";
    }

    else
    {
      if (integerValue != 1)
      {
        if (integerValue == 2)
        {
          v25 = +[IDSFoundationLog stewieProvisioning];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v33) = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Received stewie block device push", &v33, 2u);
          }

          ctClient = [(IDSStewiePushHandler *)self ctClient];
          v27 = ctClient;
          v28 = 1;
LABEL_31:
          [ctClient notifyAboutStewieBlocked:v28];
          goto LABEL_32;
        }

        goto LABEL_33;
      }

      v31 = +[IDSFoundationLog stewieProvisioning];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Received stewie roll keys push", &v33, 2u);
      }

      if (!bOOLValue)
      {
        [(IDSStewiePushHandler *)self _processRollKeysAndSMSConfigAction:messageCopy];
        goto LABEL_33;
      }

      v27 = +[IDSFoundationLog stewieProvisioning];
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      LOWORD(v33) = 0;
      v30 = "This message is just a test - not rolling keys";
    }

    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v30, &v33, 2u);
LABEL_32:

    goto LABEL_33;
  }

LABEL_34:
}

- (IDSStewiePushHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end