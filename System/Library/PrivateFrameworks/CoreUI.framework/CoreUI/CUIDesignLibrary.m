@interface CUIDesignLibrary
+ (CUIDesignColorTraits2)designColorTraitsWithName:(SEL)a3 designSystem:(int64_t)a4 palette:(int64_t)a5 colorScheme:(int64_t)a6 contrast:(int64_t)a7 styling:(int64_t)a8 displayGamut:(int64_t)a9 hierarchyLevel:(int64_t)a10;
+ (id)colorWithName:(int64_t)a3 designSystem:(int64_t)a4 palette:(int64_t)a5 colorScheme:(int64_t)a6 contrast:(int64_t)a7 styling:(int64_t)a8 displayGamut:(int64_t)a9 hierarchyLevel:(int64_t)a10 error:(id *)a11;
@end

@implementation CUIDesignLibrary

+ (CUIDesignColorTraits2)designColorTraitsWithName:(SEL)a3 designSystem:(int64_t)a4 palette:(int64_t)a5 colorScheme:(int64_t)a6 contrast:(int64_t)a7 styling:(int64_t)a8 displayGamut:(int64_t)a9 hierarchyLevel:(int64_t)a10
{
  retstr->var0 = 1;
  retstr->var1 = a4;
  retstr->var2 = a5;
  retstr->var3 = a6;
  retstr->var4 = a7;
  retstr->var5 = a8;
  retstr->var6 = a9;
  retstr->var7 = a10;
  retstr->var8 = a11;
  *&retstr->var9 = 0u;
  *&retstr->var11 = 0u;
  return result;
}

+ (id)colorWithName:(int64_t)a3 designSystem:(int64_t)a4 palette:(int64_t)a5 colorScheme:(int64_t)a6 contrast:(int64_t)a7 styling:(int64_t)a8 displayGamut:(int64_t)a9 hierarchyLevel:(int64_t)a10 error:(id *)a11
{
  kdebug_trace();
  result = [CUIDesignLibraryCompositeCatalog compositeCatalogForDesignSystem:a4 colorScheme:a6 contrast:a7 styling:a8 error:a11];
  if (result)
  {
    v24 = result;
    _CUILog(3, "[CUIDesignLibrary colorWithName:%d]", v18, v19, v20, v21, v22, v23, a3);
    v25 = [v24 colorWithName:a3 palette:a5 displayGamut:a9 hierarchyLevel:a10 error:a11];
    kdebug_trace();
    return v25;
  }

  return result;
}

@end