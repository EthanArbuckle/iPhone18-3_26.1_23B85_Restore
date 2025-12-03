@interface NSURL
- (BOOL)bl_isInVolume:(id)volume;
@end

@implementation NSURL

- (BOOL)bl_isInVolume:(id)volume
{
  volumeCopy = volume;
  if ([(NSURL *)self isFileURL])
  {
    path = [(NSURL *)self path];
    v6 = [path bl_isInVolume:volumeCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end