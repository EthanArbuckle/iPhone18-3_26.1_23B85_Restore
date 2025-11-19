@interface CUICatalog
@end

@implementation CUICatalog

uint64_t __60__CUICatalog_IconServicesAdditions___IS_coreGlyphsBundleURL__block_invoke()
{
  _IS_coreGlyphsBundleURL_url = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/CoreServices/CoreGlyphs.bundle"];

  return MEMORY[0x1EEE66BB8]();
}

id __92__CUICatalog_IconServicesAdditions___IS_iconStackWithName_scale_locale_platform_appearance___block_invoke(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v18 = a10;
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ name:%@ scaleFactor:%f deviceIdiom:%d deviceSubtype:%d displayGamut:%d locale:%@ appearanceName:%@", a3, a4, *&a1, a5, a6, a7, a8, a9];
  v20 = v19;
  if (v18)
  {
    v21 = [v18 appearance];
    v22 = [v20 stringByAppendingFormat:@". Resolved item appearance: %@", v21];
  }

  else
  {
    v22 = v19;
  }

  return v22;
}

void *__55__CUICatalog_IconServicesAdditions__idiomsForPlatform___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 > 7)
  {
    switch(a2)
    {
      case 8:
        return &unk_1F1A65868;
      case 16:
        return &unk_1F1A65880;
      case 32:
        return &unk_1F1A65898;
    }

    return MEMORY[0x1E695E0F0];
  }

  if ((a2 - 1) < 2)
  {
    return &unk_1F1A65820;
  }

  if (a2 != 4)
  {
    return MEMORY[0x1E695E0F0];
  }

  if ([*(a1 + 32) nativeIdiom] == 1)
  {
    return &unk_1F1A65838;
  }

  else
  {
    return &unk_1F1A65850;
  }
}

char *__55__CUICatalog_IconServicesAdditions__idiomsForPlatform___block_invoke_82()
{
  result = getenv("CHECK_MARKETING_IDIOM");
  v1 = result && *result == 49 && result[1] == 0;
  idiomsForPlatform__checkMarketingIdiom = v1;
  return result;
}

@end