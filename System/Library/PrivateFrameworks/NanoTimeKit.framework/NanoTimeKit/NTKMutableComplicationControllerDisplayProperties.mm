@interface NTKMutableComplicationControllerDisplayProperties
- (void)setLaunchLocation:(id)location;
- (void)setShowPreview:(BOOL)preview;
- (void)setWidgetConfigurationIdentifier:(id)identifier;
@end

@implementation NTKMutableComplicationControllerDisplayProperties

- (void)setLaunchLocation:(id)location
{
  v4 = [location copy];
  launchLocation = self->super._launchLocation;
  self->super._launchLocation = v4;
}

- (void)setWidgetConfigurationIdentifier:(id)identifier
{
  v4 = [identifier copy];
  widgetConfigurationIdentifier = self->super._widgetConfigurationIdentifier;
  self->super._widgetConfigurationIdentifier = v4;
}

- (void)setShowPreview:(BOOL)preview
{
  if (preview)
  {
    if (self->super._contentOverride <= 1)
    {
      contentOverride = 1;
    }

    else
    {
      contentOverride = self->super._contentOverride;
    }
  }

  else
  {
    contentOverride = 0;
  }

  [(NTKMutableComplicationControllerDisplayProperties *)self setContentOverride:contentOverride];
}

@end