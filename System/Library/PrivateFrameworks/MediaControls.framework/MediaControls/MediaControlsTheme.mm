@interface MediaControlsTheme
+ (UIImage)volumeMaxImage;
+ (UIImage)volumeMinImage;
+ (id)goBackwardImageForTimeInterval:(double)interval;
+ (id)goForwardImageForTimeInterval:(double)interval;
@end

@implementation MediaControlsTheme

+ (id)goBackwardImageForTimeInterval:(double)interval
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"gobackward.%i", llround(fabs(interval))];
  v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"gobackward.minus"];
  }

  v7 = v6;

  return v7;
}

+ (id)goForwardImageForTimeInterval:(double)interval
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"goforward.%i", llround(fabs(interval))];
  v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"goforward.plus"];
  }

  v7 = v6;

  return v7;
}

+ (UIImage)volumeMinImage
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:16.0];
  v3 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"volume.1.fill"];
  v4 = [v3 imageByApplyingSymbolConfiguration:v2];

  return v4;
}

+ (UIImage)volumeMaxImage
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:16.0];
  v3 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"volume.3.fill"];
  v4 = [v3 imageByApplyingSymbolConfiguration:v2];

  return v4;
}

@end