@interface FPGSStorageManager
- (FPGSStorageManager)init;
@end

@implementation FPGSStorageManager

- (FPGSStorageManager)init
{
  v6.receiver = self;
  v6.super_class = FPGSStorageManager;
  v2 = [(FPGSStorageManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    gs = v2->_gs;
    v2->_gs = v3;
  }

  return v2;
}

@end