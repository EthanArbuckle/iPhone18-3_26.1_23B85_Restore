@interface DBUISyncLockOutView
- (DBUISyncLockOutView)initWithMode:(int64_t)mode environmentConfiguration:(id)configuration;
@end

@implementation DBUISyncLockOutView

- (DBUISyncLockOutView)initWithMode:(int64_t)mode environmentConfiguration:(id)configuration
{
  v7.receiver = self;
  v7.super_class = DBUISyncLockOutView;
  v4 = [(DBLockOutView *)&v7 initWithMode:mode environmentConfiguration:configuration];
  if (v4)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(DBUISyncLockOutView *)v4 setBackgroundColor:blackColor];
  }

  return v4;
}

@end