@interface MUAppleRatingRowSubtitleView
- (MUAppleRatingRowSubtitleView)initWithArrangedSubviews:(id)subviews;
- (void)contentSizeDidChange;
- (void)layoutSubviews;
- (void)setPercentageString:(id)string ratingsValueString:(id)valueString ratingsValueAnimation:(int64_t)animation ratingsString:(id)ratingsString;
@end

@implementation MUAppleRatingRowSubtitleView

- (MUAppleRatingRowSubtitleView)initWithArrangedSubviews:(id)subviews
{
  sub_1C570CB68();
  sub_1C584F770();
  return sub_1C574960C();
}

- (void)layoutSubviews
{
  selfCopy = self;
  AppleRatingRowSubtitleView.layoutSubviews()();
}

- (void)setPercentageString:(id)string ratingsValueString:(id)valueString ratingsValueAnimation:(int64_t)animation ratingsString:(id)ratingsString
{
  stringCopy = string;
  valueStringCopy = valueString;
  ratingsStringCopy = ratingsString;
  selfCopy = self;
  AppleRatingRowSubtitleView.set(percentageString:ratingsValueString:ratingsValueAnimation:ratingsString:)(string, valueString, animation, ratingsStringCopy);
}

- (void)contentSizeDidChange
{
  selfCopy = self;
  sub_1C5749AE0(0, 0);
}

@end