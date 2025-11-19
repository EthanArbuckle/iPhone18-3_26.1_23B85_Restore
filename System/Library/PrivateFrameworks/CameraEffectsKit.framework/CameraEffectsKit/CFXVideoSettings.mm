@interface CFXVideoSettings
+ (BOOL)canDecodeHEVC2160P;
+ (BOOL)screenCanShow2160P;
+ (double)imageScale;
@end

@implementation CFXVideoSettings

+ (BOOL)screenCanShow2160P
{
  if (screenCanShow2160P_onceToken != -1)
  {
    +[CFXVideoSettings screenCanShow2160P];
  }

  return screenCanShow2160P_result;
}

void __38__CFXVideoSettings_screenCanShow2160P__block_invoke()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 bounds];
  v2 = v1;

  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4;

  if (v2 < v5)
  {
    v2 = v5;
  }

  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  v8 = v2 * v7;

  v9 = [MEMORY[0x277D75418] currentDevice];
  v10 = [v9 jfx_memorySize];

  v12 = v8 > 2500.0 && v10 > 1610612736;
  screenCanShow2160P_result = v12;
}

+ (BOOL)canDecodeHEVC2160P
{
  if (canDecodeHEVC2160P_onceToken != -1)
  {
    +[CFXVideoSettings canDecodeHEVC2160P];
  }

  return (canDecodeHEVC2160P_result & 1) == 0;
}

uint64_t __38__CFXVideoSettings_canDecodeHEVC2160P__block_invoke()
{
  v3 = 0;
  v2 = 4;
  result = sysctlbyname("hw.cpufamily", &v3, &v2, 0, 0);
  if (v3 == 933271106 || v3 == 747742334)
  {
    canDecodeHEVC2160P_result = 1;
  }

  return result;
}

+ (double)imageScale
{
  if (imageScale_onceToken != -1)
  {
    +[CFXVideoSettings imageScale];
  }

  return *&imageScale_imageScale;
}

void __30__CFXVideoSettings_imageScale__block_invoke()
{
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 scale];
  imageScale_imageScale = v0;
}

@end