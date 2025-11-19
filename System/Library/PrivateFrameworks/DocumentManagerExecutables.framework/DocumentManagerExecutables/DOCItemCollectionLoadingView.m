@interface DOCItemCollectionLoadingView
- (void)effectiveAppearanceDidChange:(id)a3;
@end

@implementation DOCItemCollectionLoadingView

- (void)effectiveAppearanceDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCItemCollectionLoadingView();
  v4 = a3;
  v5 = v7.receiver;
  [(DOCItemCollectionLoadingView *)&v7 effectiveAppearanceDidChange:v4];
  v6 = [v4 backgroundColor];
  [v5 setBackgroundColor_];
}

@end