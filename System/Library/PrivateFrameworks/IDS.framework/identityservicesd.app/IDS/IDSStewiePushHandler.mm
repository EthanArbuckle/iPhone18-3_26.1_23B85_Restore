@interface IDSStewiePushHandler
- (IDSStewiePushHandler)initWithDelegate:(id)a3 pushHandler:(id)a4 bag:(id)a5 queue:(id)a6 ctClient:(id)a7;
- (IDSStewiePushHandler)initWithDelegate:(id)a3 queue:(id)a4 bag:(id)a5 ctClient:(id)a6;
- (IDSStewiePushHandlerDelegate)delegate;
- (void)_processRollKeysAndSMSConfigAction:(id)a3;
- (void)dealloc;
- (void)handler:(id)a3 didReceiveMessage:(id)a4 forTopic:(id)a5 fromID:(id)a6 messageContext:(id)a7;
@end

@implementation IDSStewiePushHandler

- (IDSStewiePushHandler)initWithDelegate:(id)a3 queue:(id)a4 bag:(id)a5 ctClient:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[IDSPushHandler sharedInstance];
  v15 = [(IDSStewiePushHandler *)self initWithDelegate:v13 pushHandler:v14 bag:v11 queue:v12 ctClient:v10];

  return v15;
}

- (IDSStewiePushHandler)initWithDelegate:(id)a3 pushHandler:(id)a4 bag:(id)a5 queue:(id)a6 ctClient:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = IDSStewiePushHandler;
  v17 = [(IDSStewiePushHandler *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, v12);
    objc_storeStrong(&v18->_pushHandler, a4);
    objc_storeStrong(&v18->_bag, a5);
    objc_storeStrong(&v18->_ctClient, a7);
    v20 = IDSSPSPushTopic;
    v24 = [NSSet setWithObject:IDSSPSPushTopic];
    v21 = [NSSet setWithObjects:&off_100C3BE90, &off_100C3BEA8, &off_100C3BEC0, &off_100C3BED8, 0];
    [(IDSPushHandler *)v18->_pushHandler addListener:v18 topics:v24 commands:v21 queue:v15];
    pushHandler = v18->_pushHandler;
    v23 = sub_10091B0F4(v18);
    [(IDSPushHandler *)pushHandler subscribeToChannel:v23 forTopic:v20];
  }

  return v18;
}

- (void)dealloc
{
  v3 = [(IDSStewiePushHandler *)self pushHandler];
  [v3 removeListener:self];

  v4.receiver = self;
  v4.super_class = IDSStewiePushHandler;
  [(IDSStewiePushHandler *)&v4 dealloc];
}

- (void)_processRollKeysAndSMSConfigAction:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v10 = sub_10001B3A0(v5, v4, @"maxDelay");

  v6 = v10;
  if (v10)
  {
    v7 = arc4random_uniform(1000 * [v10 unsignedIntValue]) / 1000.0;
    v8 = [(IDSStewiePushHandler *)self delegate];
    [v8 pushHandler:self receivedRollKeysPushWithDelay:v7];

    v9 = [(IDSStewiePushHandler *)self delegate];
    [v9 pushHandler:self receivedRollSMSConfigPushWithDelay:v7];

    v6 = v10;
  }
}

- (void)handler:(id)a3 didReceiveMessage:(id)a4 forTopic:(id)a5 fromID:(id)a6 messageContext:(id)a7
{
  v10 = a4;
  v11 = a7;
  if ([a5 isEqualToString:IDSSPSPushTopic])
  {
    v12 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 138412290;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received stewie push %@", &v33, 0xCu);
    }

    v13 = [v11 context];
    v14 = [v13 channelID];

    if (v14)
    {
      v15 = +[IDSFoundationLog stewieProvisioning];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v13 channelID];
        v33 = 138412290;
        v34 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Push came in via cloud channel : %@", &v33, 0xCu);
      }
    }

    v17 = objc_opt_class();
    v18 = sub_10001B3A0(v17, v10, IDSCommandKey);
    v19 = objc_opt_class();
    v20 = sub_10001B3A0(v19, v10, @"test");
    v21 = objc_opt_class();
    v22 = sub_10001B3A0(v21, v10, @"test");
    v23 = [v22 BOOLValue];

    if (!v18)
    {
      goto LABEL_33;
    }

    v24 = [v18 integerValue];
    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v32 = +[IDSFoundationLog stewieProvisioning];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33) = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Received stewie unblock device push", &v33, 2u);
        }

        v26 = [(IDSStewiePushHandler *)self ctClient];
        v27 = v26;
        v28 = 0;
        goto LABEL_31;
      }

      if (v24 != 4)
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

      if (!v23)
      {
        sub_10091B188(self, v10);
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
      if (v24 != 1)
      {
        if (v24 == 2)
        {
          v25 = +[IDSFoundationLog stewieProvisioning];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v33) = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Received stewie block device push", &v33, 2u);
          }

          v26 = [(IDSStewiePushHandler *)self ctClient];
          v27 = v26;
          v28 = 1;
LABEL_31:
          [v26 notifyAboutStewieBlocked:v28];
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

      if (!v23)
      {
        [(IDSStewiePushHandler *)self _processRollKeysAndSMSConfigAction:v10];
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