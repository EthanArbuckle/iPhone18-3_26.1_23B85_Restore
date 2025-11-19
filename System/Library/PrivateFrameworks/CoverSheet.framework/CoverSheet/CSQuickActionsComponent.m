@interface CSQuickActionsComponent
- (CSQuickActionsComponent)init;
- (void)setSuppressVisibleChanges:(int64_t)a3;
@end

@implementation CSQuickActionsComponent

- (CSQuickActionsComponent)init
{
  v5.receiver = self;
  v5.super_class = CSQuickActionsComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:14];
    [(CSQuickActionsComponent *)v3 setSuppressVisibleChanges:0x7FFFFFFFFFFFFFFFLL];
  }

  return v3;
}

- (void)setSuppressVisibleChanges:(int64_t)a3
{
  if ([(CSComponent *)self flag]!= a3)
  {

    [(CSComponent *)self setFlag:a3];
  }
}

@end