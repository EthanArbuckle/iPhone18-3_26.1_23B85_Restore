@interface InsetViewControllerContentView
- (unint64_t)_edgesPropagatingSafeAreaInsetsToSubviews;
- (unint64_t)edgesInsettingLayoutMarginsFromSafeArea;
- (void)setEdgesInsettingLayoutMarginsFromSafeArea:(unint64_t)a3;
@end

@implementation InsetViewControllerContentView

- (unint64_t)edgesInsettingLayoutMarginsFromSafeArea
{
  v2 = self;
  v3 = sub_24DF960EC();

  return v3;
}

- (void)setEdgesInsettingLayoutMarginsFromSafeArea:(unint64_t)a3
{
  v4 = self;
  sub_24DF961B0(a3);
}

- (unint64_t)_edgesPropagatingSafeAreaInsetsToSubviews
{
  v2 = self;
  v3 = sub_24DF961F8();

  return v3;
}

@end