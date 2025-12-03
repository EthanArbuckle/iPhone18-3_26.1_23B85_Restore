@interface CSBackgroundContentComponent
- (BOOL)shouldDim;
- (CSBackgroundContentComponent)init;
- (void)setShouldDim:(BOOL)dim;
@end

@implementation CSBackgroundContentComponent

- (CSBackgroundContentComponent)init
{
  v5.receiver = self;
  v5.super_class = CSBackgroundContentComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:24];
  }

  return v3;
}

- (void)setShouldDim:(BOOL)dim
{
  v4 = BSSettingFlagForBool();

  [(CSComponent *)self setFlag:v4];
}

- (BOOL)shouldDim
{
  [(CSComponent *)self flag];

  return BSSettingFlagIsYes();
}

@end