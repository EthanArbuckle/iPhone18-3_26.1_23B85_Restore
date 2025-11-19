@interface SGDSuggestManagerSettingsDecorator
+ (void)initialize;
- (SGDSuggestManagerSettingsDecorator)initWithManager:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation SGDSuggestManagerSettingsDecorator

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  manager = self->_manager;
  [v4 selector];
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_autoreleasePoolPush();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001D5C;
    v8[3] = &unk_10000C460;
    v9 = v4;
    v10 = self;
    [_PASXPCUtilities runWithExceptionBarrier:v8];

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SGDSuggestManagerSettingsDecorator;
    [(SGDSuggestManagerSettingsDecorator *)&v7 forwardInvocation:v4];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = SGDSuggestManagerSettingsDecorator;
  v5 = [(SGDSuggestManagerSettingsDecorator *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    v5 = [(SGDSuggestManager *)self->_manager methodSignatureForSelector:a3];
  }

  return v5;
}

- (SGDSuggestManagerSettingsDecorator)initWithManager:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SGDSuggestManagerSettingsDecorator;
  v6 = [(SGDSuggestManagerSettingsDecorator *)&v12 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  if (v5)
  {
    objc_storeStrong(&v6->_manager, a3);
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
  if (objc_opt_class() == a1)
  {

    +[SGAggregateLogging assetVersion];
  }
}

@end