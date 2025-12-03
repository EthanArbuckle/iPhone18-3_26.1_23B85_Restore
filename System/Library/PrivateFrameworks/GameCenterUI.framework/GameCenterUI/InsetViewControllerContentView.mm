@interface InsetViewControllerContentView
- (unint64_t)_edgesPropagatingSafeAreaInsetsToSubviews;
- (unint64_t)edgesInsettingLayoutMarginsFromSafeArea;
- (void)setEdgesInsettingLayoutMarginsFromSafeArea:(unint64_t)area;
@end

@implementation InsetViewControllerContentView

- (unint64_t)edgesInsettingLayoutMarginsFromSafeArea
{
  selfCopy = self;
  v3 = sub_24DF960EC();

  return v3;
}

- (void)setEdgesInsettingLayoutMarginsFromSafeArea:(unint64_t)area
{
  selfCopy = self;
  sub_24DF961B0(area);
}

- (unint64_t)_edgesPropagatingSafeAreaInsetsToSubviews
{
  selfCopy = self;
  v3 = sub_24DF961F8();

  return v3;
}

@end