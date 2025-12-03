@interface NTKGreenfieldAnalyticsModel
- (NSString)errorMessage;
@end

@implementation NTKGreenfieldAnalyticsModel

- (NSString)errorMessage
{
  error = self->_error;
  if (error)
  {
    domain = [(NSError *)error domain];
    v5 = [domain isEqualToString:@"com.apple.nanotimekit.NTKGreenfieldAddWatchFaceManager"];

    if (v5)
    {
      code = [(NSError *)self->_error code];
      if (code > 0x10)
      {
        goto LABEL_7;
      }

      v7 = off_27877EDB0[code];
    }

    else
    {
      v7 = @"Cannot Add Watch Face.";
    }

    errorMessage = self->_errorMessage;
    self->_errorMessage = &v7->isa;
  }

LABEL_7:
  v9 = self->_errorMessage;

  return v9;
}

@end