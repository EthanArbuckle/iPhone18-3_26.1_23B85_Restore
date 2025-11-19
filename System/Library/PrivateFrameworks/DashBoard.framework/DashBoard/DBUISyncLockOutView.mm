@interface DBUISyncLockOutView
- (DBUISyncLockOutView)initWithMode:(int64_t)a3 environmentConfiguration:(id)a4;
@end

@implementation DBUISyncLockOutView

- (DBUISyncLockOutView)initWithMode:(int64_t)a3 environmentConfiguration:(id)a4
{
  v7.receiver = self;
  v7.super_class = DBUISyncLockOutView;
  v4 = [(DBLockOutView *)&v7 initWithMode:a3 environmentConfiguration:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] blackColor];
    [(DBUISyncLockOutView *)v4 setBackgroundColor:v5];
  }

  return v4;
}

@end