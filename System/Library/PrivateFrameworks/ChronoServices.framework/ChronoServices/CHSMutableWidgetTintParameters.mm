@interface CHSMutableWidgetTintParameters
- (BOOL)wantsSubduedGlass;
- (CHSMutableWidgetTintParameters)init;
- (CHSMutableWidgetTintParameters)initWithFilterStyle:(int64_t)a3;
- (void)setGlassOptions:(id)a3;
@end

@implementation CHSMutableWidgetTintParameters

- (CHSMutableWidgetTintParameters)init
{
  v3.receiver = self;
  v3.super_class = CHSMutableWidgetTintParameters;
  return [(CHSWidgetTintParameters *)&v3 init];
}

- (CHSMutableWidgetTintParameters)initWithFilterStyle:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = CHSMutableWidgetTintParameters;
  return [(CHSWidgetTintParameters *)&v4 initWithFilterStyle:a3];
}

- (void)setGlassOptions:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
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