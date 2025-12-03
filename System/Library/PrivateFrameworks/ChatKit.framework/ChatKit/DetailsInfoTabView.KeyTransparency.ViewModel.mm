@interface DetailsInfoTabView.KeyTransparency.ViewModel
- (void)handleKeyTransparencyStatusChanged:(id)changed;
@end

@implementation DetailsInfoTabView.KeyTransparency.ViewModel

- (void)handleKeyTransparencyStatusChanged:(id)changed
{
  changedCopy = changed;
  sub_190D50920();
  sub_190C7B5BC();
}

@end