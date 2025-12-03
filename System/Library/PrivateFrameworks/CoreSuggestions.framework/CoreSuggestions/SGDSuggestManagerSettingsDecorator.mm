@interface SGDSuggestManagerSettingsDecorator
+ (void)initialize;
- (SGDSuggestManagerSettingsDecorator)initWithManager:(id)manager;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation SGDSuggestManagerSettingsDecorator

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  manager = self->_manager;
  [invocationCopy selector];
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_autoreleasePoolPush();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001D5C;
    v8[3] = &unk_10000C460;
    v9 = invocationCopy;
    selfCopy = self;
    [_PASXPCUtilities runWithExceptionBarrier:v8];

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SGDSuggestManagerSettingsDecorator;
    [(SGDSuggestManagerSettingsDecorator *)&v7 forwardInvocation:invocationCopy];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = SGDSuggestManagerSettingsDecorator;
  v5 = [(SGDSuggestManagerSettingsDecorator *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    v5 = [(SGDSuggestManager *)self->_manager methodSignatureForSelector:selector];
  }

  return v5;
}

- (SGDSuggestManagerSettingsDecorator)initWithManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = SGDSuggestManagerSettingsDecorator;
  v6 = [(SGDSuggestManagerSettingsDecorator *)&v12 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  if (managerCopy)
  {
    objc_storeStrong(&v6->_manager, manager);
LABEL_4:
    v8 = v7;
    goto LABEL_8;
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Can't initialize decorator for nil manager.", v11, 2u);
  }

  v8 = 0;
LABEL_8:

  return v8;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    +[SGAggregateLogging assetVersion];
  }
}

@end