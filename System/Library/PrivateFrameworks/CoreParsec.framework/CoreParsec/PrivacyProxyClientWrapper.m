@interface PrivacyProxyClientWrapper
- (PrivacyProxyClientWrapper)initWithDispatchQueue:(id)a3 didUpdate:(id)a4 error:(id *)a5;
- (void)dealloc;
- (void)getEffectiveTierWithCompletion:(id)a3;
@end

@implementation PrivacyProxyClientWrapper

- (PrivacyProxyClientWrapper)initWithDispatchQueue:(id)a3 didUpdate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v24.receiver = self;
    v24.super_class = PrivacyProxyClientWrapper;
    v10 = [(PrivacyProxyClientWrapper *)&v24 init];
    self = v10;
    if (v10)
    {
      [(PrivacyProxyClientWrapper *)v10 setQueue:v8];
    }

    objc_initWeak(&location, self);
    v11 = [@"com.apple.networkserviceproxy.privacy-proxy-configuration-changed" UTF8String];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10004283C;
    v20 = &unk_1001F5858;
    objc_copyWeak(&v22, &location);
    v21 = v9;
    v12 = notify_register_dispatch(v11, &self->_notificationToken, v8, &v17);
    if (v12)
    {
      if (a5)
      {
        v25 = @"status";
        v13 = [NSNumber numberWithUnsignedInt:v12, v17, v18, v19, v20];
        v26 = v13;
        v14 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        *a5 = [NSError errorWithDomain:@"PrivacyProxyUserTierErrorDomain" code:3 userInfo:v14];
      }

      v15 = 0;
    }

    else
    {
      v15 = self;
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else if (a5)
  {
    [NSError errorWithDomain:@"PrivacyProxyUserTierErrorDomain" code:2 userInfo:0];
    *a5 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)dealloc
{
  notify_cancel(self->_notificationToken);
  v3.receiver = self;
  v3.super_class = PrivacyProxyClientWrapper;
  [(PrivacyProxyClientWrapper *)&v3 dealloc];
}

- (void)getEffectiveTierWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PrivacyProxyClientWrapper *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000429A4;
  v7[3] = &unk_1001F5880;
  v8 = v4;
  v6 = v4;
  [PrivacyProxyClient getEffectiveUserTier:v5 completionHandler:v7];
}

@end