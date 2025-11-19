@interface MRMutableVirtualVoiceInputDeviceDescriptor
- (void)setDefaultFormat:(id)a3;
- (void)setSupportedFormats:(id)a3;
@end

@implementation MRMutableVirtualVoiceInputDeviceDescriptor

- (void)setSupportedFormats:(id)a3
{
  if (self->super._supportedFormats != a3)
  {
    v5 = [a3 copy];
    supportedFormats = self->super._supportedFormats;
    self->super._supportedFormats = v5;
  }
}

- (void)setDefaultFormat:(id)a3
{
  if (self->super._defaultFormat != a3)
  {
    v5 = [a3 copy];
    defaultFormat = self->super._defaultFormat;
    self->super._defaultFormat = v5;
  }
}

@end