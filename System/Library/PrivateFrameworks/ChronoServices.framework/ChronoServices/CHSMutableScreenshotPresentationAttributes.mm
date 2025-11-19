@interface CHSMutableScreenshotPresentationAttributes
- (void)setAdditionalSettingsContext:(id)a3;
- (void)setIdealizedDateComponents:(id)a3;
@end

@implementation CHSMutableScreenshotPresentationAttributes

- (void)setAdditionalSettingsContext:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  additionalSettingsContext = self->super._additionalSettingsContext;
  self->super._additionalSettingsContext = v4;
}

- (void)setIdealizedDateComponents:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  idealizedDateComponents = self->super._idealizedDateComponents;
  self->super._idealizedDateComponents = v4;
}

@end