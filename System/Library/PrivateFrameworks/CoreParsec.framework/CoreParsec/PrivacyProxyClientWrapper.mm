@interface PrivacyProxyClientWrapper
- (PrivacyProxyClientWrapper)initWithDispatchQueue:(id)queue didUpdate:(id)update error:(id *)error;
- (void)dealloc;
- (void)getEffectiveTierWithCompletion:(id)completion;
@end

@implementation PrivacyProxyClientWrapper

- (PrivacyProxyClientWrapper)initWithDispatchQueue:(id)queue didUpdate:(id)update error:(id *)error
{
  queueCopy = queue;
  updateCopy = update;
  if (queueCopy)
  {
    v24.receiver = self;
    v24.super_class = PrivacyProxyClientWrapper;
    v10 = [(PrivacyProxyClientWrapper *)&v24 init];
    self = v10;
    if (v10)
    {
      [(PrivacyProxyClientWrapper *)v10 setQueue:queueCopy];
    }

    objc_initWeak(&location, self);
    uTF8String = [@"com.apple.networkserviceproxy.privacy-proxy-configuration-changed" UTF8String];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10004283C;
    v20 = &unk_1001F5858;
    objc_copyWeak(&v22, &location);
    v21 = updateCopy;
    v12 = notify_register_dispatch(uTF8String, &self->_notificationToken, queueCopy, &v17);
    if (v12)
    {
      if (error)
      {
        v25 = @"status";
        v13 = [NSNumber numberWithUnsignedInt:v12, v17, v18, v19, v20];
        v26 = v13;
        v14 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        *error = [NSError errorWithDomain:@"PrivacyProxyUserTierErrorDomain" code:3 userInfo:v14];
      }

      selfCopy = 0;
    }

    else
    {
      selfCopy = self;
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else if (error)
  {
    [NSError errorWithDomain:@"PrivacyProxyUserTierErrorDomain" code:2 userInfo:0];
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  notify_cancel(self->_notificationToken);
  v3.receiver = self;
  v3.super_class = PrivacyProxyClientWrapper;
  [(PrivacyProxyClientWrapper *)&v3 dealloc];
}

- (void)getEffectiveTierWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(PrivacyProxyClientWrapper *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000429A4;
  v7[3] = &unk_1001F5880;
  v8 = completionCopy;
  v6 = completionCopy;
  [PrivacyProxyClient getEffectiveUserTier:queue completionHandler:v7];
}

@end