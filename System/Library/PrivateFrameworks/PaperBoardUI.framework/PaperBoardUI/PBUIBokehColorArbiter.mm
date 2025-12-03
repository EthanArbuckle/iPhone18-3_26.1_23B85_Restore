@interface PBUIBokehColorArbiter
+ (id)colorSwatchForBokehColor:(uint64_t)color;
+ (id)gradientColorsForBokehColor:(uint64_t)color;
+ (id)legibilityColorForBokehColor:(uint64_t)color;
+ (uint64_t)averageColorForBokehColor:(uint64_t)color;
+ (uint64_t)bokehColorForVariant:(uint64_t)variant;
+ (uint64_t)randomCircleColorForBokehColor:(uint64_t)color;
@end

@implementation PBUIBokehColorArbiter

+ (uint64_t)bokehColorForVariant:(uint64_t)variant
{
  v2 = a2;
  objc_opt_self();
  if ([v2 localizedCaseInsensitiveContainsString:@"New"])
  {
    if ([v2 localizedCaseInsensitiveContainsString:@"Mixed"])
    {
      v3 = -1;
    }

    else if ([v2 localizedCaseInsensitiveContainsString:@"Green"])
    {
      v3 = 2;
    }

    else if ([v2 localizedCaseInsensitiveContainsString:@"Yellow"])
    {
      v3 = 1;
    }

    else if ([v2 localizedCaseInsensitiveContainsString:@"Orange"])
    {
      v3 = 4;
    }

    else if ([v2 localizedCaseInsensitiveContainsString:@"Red"])
    {
      v3 = 0;
    }

    else if ([v2 localizedCaseInsensitiveContainsString:@"Purple"])
    {
      v3 = 3;
    }

    else if ([v2 localizedCaseInsensitiveContainsString:@"Blue"])
    {
      v3 = 5;
    }

    else
    {
      v3 = -2;
    }
  }

  else if ([v2 localizedCaseInsensitiveContainsString:@"GradientSilver"])
  {
    v3 = 12;
  }

  else if ([v2 localizedCaseInsensitiveContainsString:@"Gradient"] && !objc_msgSend(v2, "localizedCaseInsensitiveContainsString:", @"Silver"))
  {
    v3 = 11;
  }

  else if ([v2 localizedCaseInsensitiveContainsString:@"Blue"])
  {
    v3 = 6;
  }

  else if ([v2 localizedCaseInsensitiveContainsString:@"Green"])
  {
    v3 = 7;
  }

  else if ([v2 localizedCaseInsensitiveContainsString:@"Yellow"])
  {
    v3 = 8;
  }

  else if ([v2 localizedCaseInsensitiveContainsString:@"Red"])
  {
    v3 = 9;
  }

  else
  {
    v3 = -2;
    if ([v2 localizedCaseInsensitiveContainsString:@"Silver"] && !objc_msgSend(v2, "localizedCaseInsensitiveContainsString:", @"Gradient"))
    {
      v3 = 10;
    }
  }

  return v3;
}

+ (id)gradientColorsForBokehColor:(uint64_t)color
{
  objc_opt_self();
  v3 = *(&allGradientColors + a2 + 2);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  LOBYTE(v8) = v3[3];
  if (v8)
  {
    do
    {
      LOBYTE(v5) = *v3;
      LOBYTE(v6) = v3[1];
      LOBYTE(v7) = v3[2];
      v9 = [MEMORY[0x277D75348] colorWithRed:(v5 / 255.0) green:(v6 / 255.0) blue:(v7 / 255.0) alpha:(v8 / 255.0)];
      [v4 addObject:{objc_msgSend(v9, "cgColor")}];

      v8 = v3[7];
      v3 += 4;
    }

    while (v8);
  }

  return v4;
}

+ (uint64_t)randomCircleColorForBokehColor:(uint64_t)color
{
  objc_opt_self();
  v3 = *(&allCircleColors + a2 + 2);
  v4 = (v3 + 3);
  v5 = -1;
  do
  {
    v6 = *v4;
    v4 += 4;
    ++v5;
  }

  while (v6);
  *&v7 = (vcvts_n_f32_s32(rand(), 0x1FuLL) * v5) + 0.0;
  v8 = (v3 + 4 * *&v7);
  v9 = MEMORY[0x277D75348];
  LOBYTE(v7) = *v8;
  v10 = (v7 / 255.0);
  v11 = (v8[1] / 255.0);
  LOBYTE(v12) = v8[2];
  v13 = (v12 / 255.0);
  LOBYTE(v14) = v8[3];

  return [v9 colorWithRed:v10 green:v11 blue:v13 alpha:(v14 / 255.0)];
}

+ (uint64_t)averageColorForBokehColor:(uint64_t)color
{
  objc_opt_self();
  v3 = &allAverageColors + 4 * a2;
  v4 = MEMORY[0x277D75348];
  LOBYTE(v5) = v3[8];
  v6 = (v5 / 255.0);
  LOBYTE(v7) = v3[9];
  v8 = (v7 / 255.0);
  LOBYTE(v9) = v3[10];

  return [v4 colorWithRed:v6 green:v8 blue:(v9 / 255.0) alpha:1.0];
}

+ (id)legibilityColorForBokehColor:(uint64_t)color
{
  v3 = objc_opt_self();
  if (a2 == 8)
  {
    [MEMORY[0x277D75348] colorWithRed:1.0 green:0.988235295 blue:0.90196079 alpha:1.0];
  }

  else
  {
    [(PBUIBokehColorArbiter *)v3 averageColorForBokehColor:a2];
  }
  v4 = ;

  return v4;
}

+ (id)colorSwatchForBokehColor:(uint64_t)color
{
  v3 = objc_opt_self();
  v4 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{10.0, 10.0}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__PBUIBokehColorArbiter_colorSwatchForBokehColor___block_invoke;
  v12[3] = &__block_descriptor_64_e40_v16__0__UIGraphicsImageRendererContext_8l;
  v12[4] = v3;
  v12[5] = a2;
  __asm { FMOV            V0.2D, #10.0 }

  v13 = _Q0;
  v10 = [v4 imageWithActions:v12];

  return v10;
}

void __50__PBUIBokehColorArbiter_colorSwatchForBokehColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v5 = [(PBUIBokehColorArbiter *)v3 averageColorForBokehColor:v4];
  [v5 setFill];

  [v6 fillRect:{0.0, 0.0, *(a1 + 48), *(a1 + 56)}];
}

@end