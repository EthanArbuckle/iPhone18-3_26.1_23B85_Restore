@interface SGBannerContentHostingView
- (CGSize)intrinsicContentSize;
- (double)actionButtonLeadingEdgeOffset;
- (void)reload;
- (void)setSuggestionWithStore:(id)store;
- (void)updateBannerViews;
- (void)updateWithBanner:(id)banner;
@end

@implementation SGBannerContentHostingView

- (void)updateBannerViews
{
  selfCopy = self;
  sub_1B81CAAC4();
}

- (void)updateWithBanner:(id)banner
{
  bannerCopy = banner;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_12_5();
  sub_1B81CAD08(v6);
}

- (void)setSuggestionWithStore:(id)store
{
  storeCopy = store;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_12_5();
  sub_1B81CADEC(v6);
}

- (void)reload
{
  selfCopy = self;
  sub_1B81CAEC8();
}

- (double)actionButtonLeadingEdgeOffset
{
  selfCopy = self;
  v3 = sub_1B81CB10C();

  return v3;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
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