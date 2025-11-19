@interface CSSiriFanInfoManager
- (void)dealloc;
- (void)getCurrentFanInfo:(id)a3;
@end

@implementation CSSiriFanInfoManager

- (void)getCurrentFanInfo:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CSSiriFanInfoManager;
  [(CSSiriFanInfoManager *)&v2 dealloc];
}

@end