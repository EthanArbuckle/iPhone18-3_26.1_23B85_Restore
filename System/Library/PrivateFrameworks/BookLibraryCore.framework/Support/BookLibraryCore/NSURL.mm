@interface NSURL
- (BOOL)bl_isInVolume:(id)a3;
@end

@implementation NSURL

- (BOOL)bl_isInVolume:(id)a3
{
  v4 = a3;
  if ([(NSURL *)self isFileURL])
  {
    v5 = [(NSURL *)self path];
    v6 = [v5 bl_isInVolume:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end