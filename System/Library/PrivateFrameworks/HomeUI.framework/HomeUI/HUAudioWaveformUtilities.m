@interface HUAudioWaveformUtilities
+ (double)disabledWaveformWidth:(double)a3 forProgress:(float)a4;
+ (double)floatToScreenScale:(double)a3;
+ (float)progressForTime:(double)a3 duration:(double)a4;
+ (id)waveformImageforPowerLevels:(const double *)a3 powerLevelsCount:(unint64_t)a4 color:(id)a5;
@end

@implementation HUAudioWaveformUtilities

+ (id)waveformImageforPowerLevels:(const double *)a3 powerLevelsCount:(unint64_t)a4 color:(id)a5
{
  v8 = a5;
  v17.width = a4 * 4.0;
  v17.height = 45.0;
  UIGraphicsBeginImageContextWithOptions(v17, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  [v8 set];
  if (a4)
  {
    v10 = 0;
    do
    {
      [a1 floatToScreenScale:a3[v10] * 45.0];
      [a1 floatToScreenScale:{(45.0 - fmax(v11, 1.0)) * 0.5}];
      v13 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v10 * 4.0 cornerRadius:{v12, 2.0, 45.0 - v12 * 2.0, 5.0}];
      CGContextSetFillColorWithColor(CurrentContext, [v8 CGColor]);
      [v13 fill];

      ++v10;
    }

    while (a4 != v10);
  }

  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

+ (float)progressForTime:(double)a3 duration:(double)a4
{
  v4 = 0.0;
  if (a3 != 0.0)
  {
    v4 = 1.0;
    if (a3 != a4)
    {
      if (a4 >= 0.05)
      {
        a3 = a3 + 0.05;
      }

      v4 = a3 / a4;
    }
  }

  v5 = v4;
  if (v4 > 1.0)
  {
    v5 = 1.0;
  }

  return fmax(v5, 0.0);
}

+ (double)disabledWaveformWidth:(double)a3 forProgress:(float)a4
{
  *v5.i64 = a3 * 0.25 * (1.0 - a4);
  v6 = *v5.i64;
  *v4.i64 = *v5.i64 - trunc(*v5.i64);
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v5.i64[0] = vbslq_s8(vnegq_f64(v7), v4, v5).i64[0];
  [a1 floatToScreenScale:*v5.i64 + *v5.i64 + v6 * 4.0 + 2.0];
  return result;
}

+ (double)floatToScreenScale:(double)a3
{
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
  v6 = v5;

  return ceil(v6 * a3) / v6;
}

@end