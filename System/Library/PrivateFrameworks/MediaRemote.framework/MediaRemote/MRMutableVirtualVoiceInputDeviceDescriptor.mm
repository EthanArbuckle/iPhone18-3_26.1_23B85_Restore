@interface MRMutableVirtualVoiceInputDeviceDescriptor
- (void)setDefaultFormat:(id)format;
- (void)setSupportedFormats:(id)formats;
@end

@implementation MRMutableVirtualVoiceInputDeviceDescriptor

- (void)setSupportedFormats:(id)formats
{
  if (self->super._supportedFormats != formats)
  {
    v5 = [formats copy];
    supportedFormats = self->super._supportedFormats;
    self->super._supportedFormats = v5;
  }
}

- (void)setDefaultFormat:(id)format
{
  if (self->super._defaultFormat != format)
  {
    v5 = [format copy];
    defaultFormat = self->super._defaultFormat;
    self->super._defaultFormat = v5;
  }
}

@end