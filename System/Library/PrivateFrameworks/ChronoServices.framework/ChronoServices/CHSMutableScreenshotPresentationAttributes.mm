@interface CHSMutableScreenshotPresentationAttributes
- (void)setAdditionalSettingsContext:(id)context;
- (void)setIdealizedDateComponents:(id)components;
@end

@implementation CHSMutableScreenshotPresentationAttributes

- (void)setAdditionalSettingsContext:(id)context
{
  contextCopy = context;
  v4 = [contextCopy copy];
  additionalSettingsContext = self->super._additionalSettingsContext;
  self->super._additionalSettingsContext = v4;
}

- (void)setIdealizedDateComponents:(id)components
{
  componentsCopy = components;
  v4 = [componentsCopy copy];
  idealizedDateComponents = self->super._idealizedDateComponents;
  self->super._idealizedDateComponents = v4;
}

@end