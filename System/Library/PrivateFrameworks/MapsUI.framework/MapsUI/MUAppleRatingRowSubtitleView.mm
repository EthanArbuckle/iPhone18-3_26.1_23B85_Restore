@interface MUAppleRatingRowSubtitleView
- (MUAppleRatingRowSubtitleView)initWithArrangedSubviews:(id)a3;
- (void)contentSizeDidChange;
- (void)layoutSubviews;
- (void)setPercentageString:(id)a3 ratingsValueString:(id)a4 ratingsValueAnimation:(int64_t)a5 ratingsString:(id)a6;
@end

@implementation MUAppleRatingRowSubtitleView

- (MUAppleRatingRowSubtitleView)initWithArrangedSubviews:(id)a3
{
  sub_1C570CB68();
  sub_1C584F770();
  return sub_1C574960C();
}

- (void)layoutSubviews
{
  v2 = self;
  AppleRatingRowSubtitleView.layoutSubviews()();
}

- (void)setPercentageString:(id)a3 ratingsValueString:(id)a4 ratingsValueAnimation:(int64_t)a5 ratingsString:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = self;
  AppleRatingRowSubtitleView.set(percentageString:ratingsValueString:ratingsValueAnimation:ratingsString:)(a3, a4, a5, v13);
}

- (void)contentSizeDidChange
{
  v2 = self;
  sub_1C5749AE0(0, 0);
}

@end