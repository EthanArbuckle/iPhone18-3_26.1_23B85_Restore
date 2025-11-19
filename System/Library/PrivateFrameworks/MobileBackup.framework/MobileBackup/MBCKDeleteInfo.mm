@interface MBCKDeleteInfo
- (MBCKDeleteInfo)init;
@end

@implementation MBCKDeleteInfo

- (MBCKDeleteInfo)init
{
  v6.receiver = self;
  v6.super_class = MBCKDeleteInfo;
  v2 = [(MBCKDeleteInfo *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    callbacks = v2->_callbacks;
    v2->_callbacks = v3;
  }

  return v2;
}

@end