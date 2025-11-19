@interface PVColorSpace
@end

@implementation PVColorSpace

void __55__PVColorSpace_JFX__jfx_getColorSpaceFromCGColorSpace___block_invoke()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277CBF3E8];
  v0 = [MEMORY[0x277D415E0] p3HLGGammaColorSpace];
  v8[0] = v0;
  v7[1] = *MEMORY[0x277CBF3F0];
  v1 = [MEMORY[0x277D415E0] p3PQGammaColorSpace];
  v8[1] = v1;
  v7[2] = *MEMORY[0x277CBF478];
  v2 = [MEMORY[0x277D415E0] rec2100HLGColorSpace];
  v8[2] = v2;
  v7[3] = *MEMORY[0x277CBF480];
  v3 = [MEMORY[0x277D415E0] rec2100PQColorSpace];
  v8[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = [v4 mutableCopy];
  v6 = jfx_getColorSpaceFromCGColorSpace__s_HDRColorSpaceLookup;
  jfx_getColorSpaceFromCGColorSpace__s_HDRColorSpaceLookup = v5;
}

uint64_t __65__PVColorSpace_JFX__jfx_compareAndChooseGreaterColorSpace_right___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isHDRSpace])
  {
    v3 = 2;
  }

  else
  {
    v3 = [v2 isWideGamutSpace];
  }

  return v3;
}

@end