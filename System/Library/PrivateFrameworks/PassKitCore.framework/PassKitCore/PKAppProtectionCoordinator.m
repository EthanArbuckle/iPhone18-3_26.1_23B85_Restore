@interface PKAppProtectionCoordinator
+ (id)shared;
+ (id)sharedInstanceForApp:(id)a3;
- (id)_initWithUnderlyingInstance:(id)a3;
@end

@implementation PKAppProtectionCoordinator

+ (id)shared
{
  if (qword_1ED6D1F88 != -1)
  {
    dispatch_once(&qword_1ED6D1F88, &__block_literal_global_173);
  }

  v3 = _MergedGlobals_254;

  return v3;
}

void __36__PKAppProtectionCoordinator_shared__block_invoke()
{
  v0 = [PKAppProtectionCoordinator alloc];
  v3 = +[_PKAppProtectionCoordinator shared];
  v1 = [(PKAppProtectionCoordinator *)v0 _initWithUnderlyingInstance:v3];
  v2 = _MergedGlobals_254;
  _MergedGlobals_254 = v1;
}

+ (id)sharedInstanceForApp:(id)a3
{
  v3 = [_PKAppProtectionCoordinator sharedInstanceForApp:a3];
  v4 = [[PKAppProtectionCoordinator alloc] _initWithUnderlyingInstance:v3];

  return v4;
}

- (id)_initWithUnderlyingInstance:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKAppProtectionCoordinator;
  v6 = [(PKAppProtectionCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalInstance, a3);
  }

  return v7;
}

@end