@interface ConversationFooterViewDisplayMetrics
+ (id)displayMetricsWithSafeAreaInsets:(UIEdgeInsets)insets interfaceOrientation:(int64_t)orientation traitCollection:(id)collection;
@end

@implementation ConversationFooterViewDisplayMetrics

+ (id)displayMetricsWithSafeAreaInsets:(UIEdgeInsets)insets interfaceOrientation:(int64_t)orientation traitCollection:(id)collection
{
  bottom = insets.bottom;
  if ([collection mf_hasCompactDimension])
  {
    v7 = 0.0;
  }

  else
  {
    v7 = bottom;
  }

  v8 = objc_alloc_init(ConversationFooterViewDisplayMetrics);
  [(ConversationFooterViewDisplayMetrics *)v8 setUsePhoneLandscapeSymbolConfiguration:0];
  if ([MEMORY[0x277D75418] mf_isPadIdiom])
  {
    [(ConversationFooterViewDisplayMetrics *)v8 setTopToBaseline:31.0];
    v9 = v7 + 45.0;
    if (v7 <= 0.0)
    {
      v9 = 50.0;
    }

    [(ConversationFooterViewDisplayMetrics *)v8 setToolbarHeight:v9];
  }

  else if ((orientation - 3) > 1)
  {
    if (v7 <= 0.0)
    {
      v16 = 28.0;
      [(ConversationFooterViewDisplayMetrics *)v8 setToolbarHeight:44.0];
    }

    else
    {
      [(ConversationFooterViewDisplayMetrics *)v8 setToolbarHeight:v7 + 49.0];
      v16 = 36.0;
    }

    [(ConversationFooterViewDisplayMetrics *)v8 setTopToBaseline:v16];
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
    v12 = v11;
    v14 = v13;

    v15 = 44.0;
    if (fmin(v12, v14) <= 375.0)
    {
      v15 = 32.0;
    }

    [(ConversationFooterViewDisplayMetrics *)v8 setToolbarHeight:v7 + v15];
    [(ConversationFooterViewDisplayMetrics *)v8 setTopToBaseline:21.0];
    [(ConversationFooterViewDisplayMetrics *)v8 setUsePhoneLandscapeSymbolConfiguration:1];
  }

  return v8;
}

@end