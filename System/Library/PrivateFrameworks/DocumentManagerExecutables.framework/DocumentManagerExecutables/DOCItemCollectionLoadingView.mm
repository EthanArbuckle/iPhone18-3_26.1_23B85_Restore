@interface DOCItemCollectionLoadingView
- (void)effectiveAppearanceDidChange:(id)change;
@end

@implementation DOCItemCollectionLoadingView

- (void)effectiveAppearanceDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCItemCollectionLoadingView();
  changeCopy = change;
  v5 = v7.receiver;
  [(DOCItemCollectionLoadingView *)&v7 effectiveAppearanceDidChange:changeCopy];
  backgroundColor = [changeCopy backgroundColor];
  [v5 setBackgroundColor_];
}

@end