@interface MRDUIClientMessageForwarder
+ (id)forwarderWithTarget:(id)target;
+ (id)forwarderWithXPCTarget:(id)target;
@end

@implementation MRDUIClientMessageForwarder

+ (id)forwarderWithTarget:(id)target
{
  targetCopy = target;
  v4 = objc_opt_new();
  [v4 setTarget:targetCopy];

  return v4;
}

+ (id)forwarderWithXPCTarget:(id)target
{
  targetCopy = target;
  v4 = objc_opt_new();
  [v4 setTarget:targetCopy];

  return v4;
}

@end