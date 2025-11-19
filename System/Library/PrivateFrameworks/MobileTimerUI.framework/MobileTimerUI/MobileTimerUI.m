uint64_t MTUIIsPadIdiom()
{
  if (MTUIIsPadIdiom_onceToken != -1)
  {
    MTUIIsPadIdiom_cold_1();
  }

  return MTUIIsPadIdiom_isPadIdiom;
}

void __MTUIIsPadIdiom_block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  MTUIIsPadIdiom_isPadIdiom = [v0 userInterfaceIdiom] == 1;
}

double MTUIRoundToPixel(double a1)
{
  if (MTUIMainScreenScale_onceToken != -1)
  {
    MTUIRoundToPixel_cold_1();
  }

  return round(*&MTUIMainScreenScale_screenScale * a1) / *&MTUIMainScreenScale_screenScale;
}

double MTUIFloorToPixel(double a1)
{
  if (MTUIMainScreenScale_onceToken != -1)
  {
    MTUIRoundToPixel_cold_1();
  }

  return floor(*&MTUIMainScreenScale_screenScale * a1) / *&MTUIMainScreenScale_screenScale;
}

double MTUIMainScreenScale()
{
  if (MTUIMainScreenScale_onceToken != -1)
  {
    MTUIRoundToPixel_cold_1();
  }

  return *&MTUIMainScreenScale_screenScale;
}

void __MTUIMainScreenScale_block_invoke()
{
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 scale];
  MTUIMainScreenScale_screenScale = v0;
}

double MTUIStandardizeAngle(double result)
{
    ;
  }

    ;
  }

  return result;
}

id MTImageCache()
{
  if (MTImageCache_onceToken != -1)
  {
    MTImageCache_cold_1();
  }

  v1 = MTImageCache_imageCache;

  return v1;
}

uint64_t __MTImageCache_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = MTImageCache_imageCache;
  MTImageCache_imageCache = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t MTUIIsPhoneIdiom()
{
  if (MTUIIsPhoneIdiom_onceToken != -1)
  {
    MTUIIsPhoneIdiom_cold_1();
  }

  return MTUIIsPhoneIdiom_isPhoneIdiom;
}

void __MTUIIsPhoneIdiom_block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  MTUIIsPhoneIdiom_isPhoneIdiom = [v0 userInterfaceIdiom] == 0;
}

BOOL MTUIIsVeryWidePhoneSize()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  v1 = [v0 keyWindow];
  [v1 frame];
  v3 = v2;
  v5 = v4;

  if (v3 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  return v6 > 375.0;
}

BOOL MTUIIsVeryShortPhoneSize()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  v1 = [v0 keyWindow];
  [v1 frame];
  v3 = v2;
  v5 = v4;

  if (v3 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  return v6 < 375.0;
}

uint64_t MTUIShouldUseLargePadLayout()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  v1 = [v0 keyWindow];
  [v1 frame];
  v3 = v2;
  v5 = v4;

  return MTUIShouldUseLargePadLayoutForSize(v3, v5);
}

uint64_t MTUIShouldUseLargePadLayoutForSize(double a1, double a2)
{
  if (MTUIIsPadIdiom_onceToken != -1)
  {
    MTUIIsPadIdiom_cold_1();
  }

  if (a1 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a1;
  }

  if (v4 > 834.0)
  {
    return MTUIIsPadIdiom_isPadIdiom;
  }

  else
  {
    return 0;
  }
}

BOOL MTUIIsLargeText()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v1);
  return IsAccessibilityCategory;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x282111360](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}