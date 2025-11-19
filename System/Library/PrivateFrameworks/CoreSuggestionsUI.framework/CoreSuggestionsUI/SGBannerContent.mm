@interface SGBannerContent
- (NSArray)iconSFSymbols;
- (NSAttributedString)attributedSubtitle;
- (NSAttributedString)attributedTitle;
- (SGBannerDividerParameter)bannerDivider;
- (SGSuggestion)suggestion;
- (SGSuggestionAction)dismissAction;
- (SGSuggestionAction)feedbackAction;
- (SGSuggestionAction)primaryAction;
- (SGSuggestionDelegate)delegate;
- (UIColor)backgroundColor;
- (UIVisualEffectView)backgroundVisualEffectView;
- (void)setAttributedSubtitle:(id)a3;
- (void)setAttributedTitle:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setBackgroundVisualEffectView:(id)a3;
- (void)setBannerDivider:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDismissAction:(id)a3;
- (void)setFeedbackAction:(id)a3;
- (void)setIconSFSymbols:(id)a3;
- (void)setPrimaryAction:(id)a3;
- (void)setSuggestion:(id)a3;
@end

@implementation SGBannerContent

- (NSAttributedString)attributedTitle
{
  v2 = sub_1B8193B94();

  return v2;
}

- (void)setAttributedTitle:(id)a3
{
  OUTLINED_FUNCTION_9_1();
  v5 = v3;
  v6 = v4;
  v7 = OUTLINED_FUNCTION_0_0();
  sub_1B8193C1C(v7);
}

- (NSAttributedString)attributedSubtitle
{
  v2 = sub_1B8193F2C();

  return v2;
}

- (void)setAttributedSubtitle:(id)a3
{
  OUTLINED_FUNCTION_9_1();
  v5 = v3;
  v6 = v4;
  v7 = OUTLINED_FUNCTION_0_0();
  sub_1B8193FB4(v7);
}

- (SGSuggestion)suggestion
{
  v2 = sub_1B8194948();

  return v2;
}

- (void)setSuggestion:(id)a3
{
  OUTLINED_FUNCTION_9_1();
  swift_unknownObjectRetain();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_0_0();
  sub_1B81949B8(v5);
}

- (SGSuggestionDelegate)delegate
{
  v2 = sub_1B8194B28();

  return v2;
}

- (void)setDelegate:(id)a3
{
  OUTLINED_FUNCTION_9_1();
  swift_unknownObjectRetain();
  v4 = v3;
  OUTLINED_FUNCTION_0_0();
  sub_1B8194BB0();
}

- (UIVisualEffectView)backgroundVisualEffectView
{
  v2 = sub_1B8195868();

  return v2;
}

- (void)setBackgroundVisualEffectView:(id)a3
{
  OUTLINED_FUNCTION_9_1();
  v5 = v3;
  v6 = v4;
  OUTLINED_FUNCTION_0_0();
  sub_1B81958F0();
}

- (UIColor)backgroundColor
{
  v2 = sub_1B8195A84();

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  OUTLINED_FUNCTION_9_1();
  v5 = v3;
  v6 = v4;
  OUTLINED_FUNCTION_0_0();
  sub_1B8195B0C();
}

- (SGBannerDividerParameter)bannerDivider
{
  v2 = sub_1B8195CA0();

  return v2;
}

- (void)setBannerDivider:(id)a3
{
  OUTLINED_FUNCTION_9_1();
  v5 = v3;
  v6 = v4;
  OUTLINED_FUNCTION_0_0();
  sub_1B8195D28();
}

- (SGSuggestionAction)primaryAction
{
  v2 = sub_1B8196090();

  return v2;
}

- (void)setPrimaryAction:(id)a3
{
  OUTLINED_FUNCTION_9_1();
  v5 = v3;
  v6 = v4;
  OUTLINED_FUNCTION_0_0();
  sub_1B8196118();
}

- (SGSuggestionAction)dismissAction
{
  v2 = sub_1B81962AC();

  return v2;
}

- (void)setDismissAction:(id)a3
{
  OUTLINED_FUNCTION_9_1();
  v5 = v3;
  v6 = v4;
  OUTLINED_FUNCTION_0_0();
  sub_1B8196334();
}

- (NSArray)iconSFSymbols
{
  if (sub_1B8196890())
  {
    sub_1B81F90A8();
    OUTLINED_FUNCTION_18_1();
  }

  else
  {
    self = 0;
  }

  return self;
}

- (void)setIconSFSymbols:(id)a3
{
  if (a3)
  {
    sub_1B81F90C8();
  }

  v4 = self;
  sub_1B8196978();
}

- (SGSuggestionAction)feedbackAction
{
  v2 = sub_1B8196D0C();

  return v2;
}

- (void)setFeedbackAction:(id)a3
{
  OUTLINED_FUNCTION_9_1();
  v5 = v3;
  v6 = v4;
  OUTLINED_FUNCTION_0_0();
  sub_1B8196D94();
}

@end