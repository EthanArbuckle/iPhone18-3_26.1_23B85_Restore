@interface CHSMutableWidgetTintParameters
- (BOOL)wantsSubduedGlass;
- (CHSMutableWidgetTintParameters)init;
- (CHSMutableWidgetTintParameters)initWithFilterStyle:(int64_t)style;
- (void)setGlassOptions:(id)options;
@end

@implementation CHSMutableWidgetTintParameters

- (CHSMutableWidgetTintParameters)init
{
  v3.receiver = self;
  v3.super_class = CHSMutableWidgetTintParameters;
  return [(CHSWidgetTintParameters *)&v3 init];
}

- (CHSMutableWidgetTintParameters)initWithFilterStyle:(int64_t)style
{
  v4.receiver = self;
  v4.super_class = CHSMutableWidgetTintParameters;
  return [(CHSWidgetTintParameters *)&v4 initWithFilterStyle:style];
}

- (void)setGlassOptions:(id)options
{
  optionsCopy = options;
  v4 = [optionsCopy copy];
  glassOptions = self->super._glassOptions;
  self->super._glassOptions = v4;
}

- (BOOL)wantsSubduedGlass
{
  v3.receiver = self;
  v3.super_class = CHSMutableWidgetTintParameters;
  return [(CHSWidgetTintParameters *)&v3 wantsSubduedGlass];
}

@end