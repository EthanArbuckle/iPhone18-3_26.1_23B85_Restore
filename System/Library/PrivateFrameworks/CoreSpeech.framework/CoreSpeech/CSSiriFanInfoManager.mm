@interface CSSiriFanInfoManager
- (void)dealloc;
- (void)getCurrentFanInfo:(id)info;
@end

@implementation CSSiriFanInfoManager

- (void)getCurrentFanInfo:(id)info
{
  if (info)
  {
    (*(info + 2))(info, 0);
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CSSiriFanInfoManager;
  [(CSSiriFanInfoManager *)&v2 dealloc];
}

@end