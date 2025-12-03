@interface HUAudioWaveformUtilities
+ (double)disabledWaveformWidth:(double)width forProgress:(float)progress;
+ (double)floatToScreenScale:(double)scale;
+ (float)progressForTime:(double)time duration:(double)duration;
+ (id)waveformImageforPowerLevels:(const double *)levels powerLevelsCount:(unint64_t)count color:(id)color;
@end

@implementation HUAudioWaveformUtilities

+ (id)waveformImageforPowerLevels:(const double *)levels powerLevelsCount:(unint64_t)count color:(id)color
{
  colorCopy = color;
  v17.width = count * 4.0;
  v17.height = 45.0;
  UIGraphicsBeginImageContextWithOptions(v17, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  [colorCopy set];
  if (count)
  {
    v10 = 0;
    do
    {
      [self floatToScreenScale:levels[v10] * 45.0];
      [self floatToScreenScale:{(45.0 - fmax(v11, 1.0)) * 0.5}];
      v13 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v10 * 4.0 cornerRadius:{v12, 2.0, 45.0 - v12 * 2.0, 5.0}];
      CGContextSetFillColorWithColor(CurrentContext, [colorCopy CGColor]);
      [v13 fill];

      ++v10;
    }

    while (count != v10);
  }

  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

+ (float)progressForTime:(double)time duration:(double)duration
{
  v4 = 0.0;
  if (time != 0.0)
  {
    v4 = 1.0;
    if (time != duration)
    {
      if (duration >= 0.05)
      {
        time = time + 0.05;
      }

      v4 = time / duration;
    }
  }

  v5 = v4;
  if (v4 > 1.0)
  {
    v5 = 1.0;
  }

  return fmax(v5, 0.0);
}

+ (double)disabledWaveformWidth:(double)width forProgress:(float)progress
{
  *v5.i64 = width * 0.25 * (1.0 - progress);
  v6 = *v5.i64;
  *v4.i64 = *v5.i64 - trunc(*v5.i64);
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v5.i64[0] = vbslq_s8(vnegq_f64(v7), v4, v5).i64[0];
  [self floatToScreenScale:*v5.i64 + *v5.i64 + v6 * 4.0 + 2.0];
  return result;
}

+ (double)floatToScreenScale:(double)scale
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v6 = v5;

  return ceil(v6 * scale) / v6;
}

@end