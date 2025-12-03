@interface PBUIBokehImageArbiter
+ (id)imageForBokehImage:(uint64_t)image;
+ (uint64_t)bokehImageForDiameter:(double)diameter;
@end

@implementation PBUIBokehImageArbiter

+ (uint64_t)bokehImageForDiameter:(double)diameter
{
  objc_opt_self();
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  diameterCopy = diameter / 1.5;
  if (userInterfaceIdiom != 1)
  {
    diameterCopy = diameter;
  }

  v5 = (diameterCopy + -40.0) / -130.0 + 1.0;
  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  return blurTable[vcvtad_u64_f64(fmin(v5, 1.0) * 11.0)];
}

+ (id)imageForBokehImage:(uint64_t)image
{
  objc_opt_self();
  v3 = +[PBUIWallpaperCache wallpaperCache];
  v4 = imageTable[a2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__PBUIBokehImageArbiter_imageForBokehImage___block_invoke;
  v7[3] = &__block_descriptor_40_e18___UIImage_16__0_Q8l;
  v7[4] = a2;
  v5 = [v3 imageForKey:v4 generatingIfNecessaryWithBlock:v7];

  return v5;
}

uint64_t __44__PBUIBokehImageArbiter_imageForBokehImage___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D755B8];
  v2 = imageTable[*(a1 + 32)];
  if (_PBUIBundle___onceToken != -1)
  {
    __44__PBUIBokehImageArbiter_imageForBokehImage___block_invoke_cold_1();
  }

  v3 = _PBUIBundle___paperBoardUIBundle;

  return [v1 imageNamed:v2 inBundle:v3 compatibleWithTraitCollection:0];
}

@end