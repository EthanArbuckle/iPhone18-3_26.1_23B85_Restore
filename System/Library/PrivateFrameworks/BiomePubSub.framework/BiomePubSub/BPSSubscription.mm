@interface BPSSubscription
- (NSArray)upstreamSubscriptions;
- (void)cancel;
- (void)requestDemand:(int64_t)a3;
@end

@implementation BPSSubscription

- (void)cancel
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Override method %@ in subclass %@", v4, objc_opt_class()}];
}

- (void)requestDemand:(int64_t)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Override method %@ in subclass %@", v5, objc_opt_class()}];
}

- (NSArray)upstreamSubscriptions
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Override method %@ in subclass %@", v4, objc_opt_class()}];

  return 0;
}

@end