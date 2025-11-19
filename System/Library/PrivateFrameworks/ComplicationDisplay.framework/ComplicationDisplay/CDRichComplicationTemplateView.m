@interface CDRichComplicationTemplateView
- (unint64_t)timelineAnimationFadeTypeOverride;
- (void)setComplicationTemplate:(id)a3 reason:(int64_t)a4;
@end

@implementation CDRichComplicationTemplateView

- (void)setComplicationTemplate:(id)a3 reason:(int64_t)a4
{
  v11 = a3;
  objc_storeStrong(&self->_complicationTemplate, a3);
  v7 = [v11 metadata];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBB6E8]];
  if (v8)
  {
    self->_templateWantsPlatter = 1;
  }

  else
  {
    v9 = [v11 metadata];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBB6E0]];
    self->_templateWantsPlatter = v10 != 0;
  }

  [(CDRichComplicationTemplateView *)self _handleTemplate:v11 reason:a4];
  [(CDRichComplicationTemplateView *)self setNeedsLayout];
}

- (unint64_t)timelineAnimationFadeTypeOverride
{
  v2 = [(CLKComplicationTemplate *)self->_complicationTemplate metadata];
  v3 = [v2 objectForKeyedSubscript:@"NTKComplicationTimelineAnimationFadeType"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end