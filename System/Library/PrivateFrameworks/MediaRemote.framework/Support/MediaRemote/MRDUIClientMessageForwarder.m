@interface MRDUIClientMessageForwarder
+ (id)forwarderWithTarget:(id)a3;
+ (id)forwarderWithXPCTarget:(id)a3;
@end

@implementation MRDUIClientMessageForwarder

+ (id)forwarderWithTarget:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setTarget:v3];

  return v4;
}

+ (id)forwarderWithXPCTarget:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setTarget:v3];

  return v4;
}

@end