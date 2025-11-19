@interface MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc
@end

@implementation MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc

void *__get_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MaterialKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MaterialKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278362F60;
    v6 = 0;
    MaterialKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v2 = MaterialKitLibraryCore_frameworkLibrary_0;
  if (!MaterialKitLibraryCore_frameworkLibrary_0)
  {
    __get_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__get_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MaterialKitLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MaterialKitLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278363128;
    v6 = 0;
    MaterialKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v2 = MaterialKitLibraryCore_frameworkLibrary_1;
  if (!MaterialKitLibraryCore_frameworkLibrary_1)
  {
    __get_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc_block_invoke_cold_1_0(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MaterialKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBUIWallpaperEffectCompositor.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void __get_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc_block_invoke_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MaterialKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBUIWallpaperView.m" lineNumber:43 description:{@"%s", *a1}];

  __break(1u);
}

@end