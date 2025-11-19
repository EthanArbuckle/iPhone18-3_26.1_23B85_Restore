@interface NTKMutableComplicationControllerDisplayProperties
- (void)setLaunchLocation:(id)a3;
- (void)setShowPreview:(BOOL)a3;
- (void)setWidgetConfigurationIdentifier:(id)a3;
@end

@implementation NTKMutableComplicationControllerDisplayProperties

- (void)setLaunchLocation:(id)a3
{
  v4 = [a3 copy];
  launchLocation = self->super._launchLocation;
  self->super._launchLocation = v4;
}

- (void)setWidgetConfigurationIdentifier:(id)a3
{
  v4 = [a3 copy];
  widgetConfigurationIdentifier = self->super._widgetConfigurationIdentifier;
  self->super._widgetConfigurationIdentifier = v4;
}

- (void)setShowPreview:(BOOL)a3
{
  if (a3)
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