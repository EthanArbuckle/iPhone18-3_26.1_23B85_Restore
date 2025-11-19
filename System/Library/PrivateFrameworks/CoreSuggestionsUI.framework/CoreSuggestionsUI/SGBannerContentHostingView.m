@interface SGBannerContentHostingView
- (CGSize)intrinsicContentSize;
- (double)actionButtonLeadingEdgeOffset;
- (void)reload;
- (void)setSuggestionWithStore:(id)a3;
- (void)updateBannerViews;
- (void)updateWithBanner:(id)a3;
@end

@implementation SGBannerContentHostingView

- (void)updateBannerViews
{
  v2 = self;
  sub_1B81CAAC4();
}

- (void)updateWithBanner:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_12_5();
  sub_1B81CAD08(v6);
}

- (void)setSuggestionWithStore:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_12_5();
  sub_1B81CADEC(v6);
}

- (void)reload
{
  v2 = self;
  sub_1B81CAEC8();
}

- (double)actionButtonLeadingEdgeOffset
{
  v2 = self;
  v3 = sub_1B81CB10C();

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  sub_1B81CB2D0();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end