@interface BLPurchaseUIHelper
- (BLUIHostServiceProtocol)uiHostProxy;
- (void)handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)handleDialogRequest:(id)request completion:(id)completion;
- (void)handleEngagementRequest:(id)request completion:(id)completion;
@end

@implementation BLPurchaseUIHelper

- (void)handleAuthenticateRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  uiHostProxy = [(BLPurchaseUIHelper *)self uiHostProxy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10009C29C;
  v20[3] = &unk_10011D5D0;
  v9 = completionCopy;
  v21 = v9;
  v10 = [uiHostProxy remoteObjectProxyWithErrorHandler:v20];

  v11 = BLServicePurchaseManagerLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      logKey = [requestCopy logKey];
      *buf = 138543362;
      v23 = logKey;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Purchase-UI-Helper]: Forwarding auth request %{public}@ to UI host proxy", buf, 0xCu);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10009C30C;
    v17[3] = &unk_10011E278;
    v18 = requestCopy;
    v19 = v9;
    [v10 handleAuthenticateRequest:v18 withReply:v17];

    v14 = v18;
  }

  else
  {
    if (v12)
    {
      logKey2 = [requestCopy logKey];
      *buf = 138543362;
      v23 = logKey2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Purchase-UI-Helper]: Missing UI host proxy for authenticate request %{public}@", buf, 0xCu);
    }

    v14 = objc_retainBlock(v9);
    if (v14)
    {
      v16 = sub_1000A8F44(13, @"Missing proxy object", @"No proxy object to request presenter from client for showing purchase authentication. Force purchase to fail.");
      v14[2](v14, 0, v16);
    }
  }
}

- (void)handleDialogRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  uiHostProxy = [(BLPurchaseUIHelper *)self uiHostProxy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10009C6E0;
  v20[3] = &unk_10011D5D0;
  v9 = completionCopy;
  v21 = v9;
  v10 = [uiHostProxy remoteObjectProxyWithErrorHandler:v20];

  v11 = BLServicePurchaseManagerLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      logKey = [requestCopy logKey];
      *buf = 138543362;
      v23 = logKey;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Purchase-UI-Helper]: Forwarding dialog request %{public}@ to UI host proxy", buf, 0xCu);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10009C750;
    v17[3] = &unk_10011E2A0;
    v18 = requestCopy;
    v19 = v9;
    [v10 handleDialogRequest:v18 withReply:v17];

    v14 = v18;
  }

  else
  {
    if (v12)
    {
      logKey2 = [requestCopy logKey];
      *buf = 138543362;
      v23 = logKey2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Purchase-UI-Helper]: Missing UI host proxy for dialog request %{public}@", buf, 0xCu);
    }

    v14 = objc_retainBlock(v9);
    if (v14)
    {
      v16 = sub_1000A8F44(13, @"Missing proxy object", @"No proxy object to request presenter from client for showing purchase dialog. Force purchase to fail.");
      v14[2](v14, 0, v16);
    }
  }
}

- (void)handleEngagementRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  uiHostProxy = [(BLPurchaseUIHelper *)self uiHostProxy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10009CB24;
  v20[3] = &unk_10011D5D0;
  v9 = completionCopy;
  v21 = v9;
  v10 = [uiHostProxy remoteObjectProxyWithErrorHandler:v20];

  v11 = BLServicePurchaseManagerLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      logKey = [requestCopy logKey];
      *buf = 138543362;
      v23 = logKey;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Purchase-UI-Helper]: Forwarding engagement request %{public}@ to UI host proxy", buf, 0xCu);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10009CB94;
    v17[3] = &unk_10011E2C8;
    v18 = requestCopy;
    v19 = v9;
    [v10 handleEngagementRequest:v18 withReply:v17];

    v14 = v18;
  }

  else
  {
    if (v12)
    {
      logKey2 = [requestCopy logKey];
      *buf = 138543362;
      v23 = logKey2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Purchase-UI-Helper]: Missing UI host proxy for engagement request %{public}@", buf, 0xCu);
    }

    v14 = objc_retainBlock(v9);
    if (v14)
    {
      v16 = sub_1000A8F44(13, @"Missing proxy object", @"No proxy object to request presenter from client for showing purchase engagement. Force purchase to fail.");
      v14[2](v14, 0, v16);
    }
  }
}

- (BLUIHostServiceProtocol)uiHostProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_uiHostProxy);

  return WeakRetained;
}

@end