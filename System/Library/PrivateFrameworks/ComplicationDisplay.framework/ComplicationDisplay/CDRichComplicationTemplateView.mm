@interface CDRichComplicationTemplateView
- (unint64_t)timelineAnimationFadeTypeOverride;
- (void)setComplicationTemplate:(id)template reason:(int64_t)reason;
@end

@implementation CDRichComplicationTemplateView

- (void)setComplicationTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
  objc_storeStrong(&self->_complicationTemplate, template);
  metadata = [templateCopy metadata];
  v8 = [metadata objectForKeyedSubscript:*MEMORY[0x277CBB6E8]];
  if (v8)
  {
    self->_templateWantsPlatter = 1;
  }

  else
  {
    metadata2 = [templateCopy metadata];
    v10 = [metadata2 objectForKeyedSubscript:*MEMORY[0x277CBB6E0]];
    self->_templateWantsPlatter = v10 != 0;
  }

  [(CDRichComplicationTemplateView *)self _handleTemplate:templateCopy reason:reason];
  [(CDRichComplicationTemplateView *)self setNeedsLayout];
}

- (unint64_t)timelineAnimationFadeTypeOverride
{
  metadata = [(CLKComplicationTemplate *)self->_complicationTemplate metadata];
  v3 = [metadata objectForKeyedSubscript:@"NTKComplicationTimelineAnimationFadeType"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

@end