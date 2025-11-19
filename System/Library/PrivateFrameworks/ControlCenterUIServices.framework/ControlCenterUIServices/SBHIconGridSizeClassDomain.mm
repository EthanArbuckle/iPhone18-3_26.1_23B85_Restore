@interface SBHIconGridSizeClassDomain
@end

@implementation SBHIconGridSizeClassDomain

void __74__SBHIconGridSizeClassDomain_ControlCenterUIServices__controlCenterDomain__block_invoke()
{
  v37[9] = *MEMORY[0x277D85DE8];
  v16 = objc_alloc(MEMORY[0x277D661B0]);
  v36[0] = @"CCUIIconGridSizeClassSmall";
  v1 = *MEMORY[0x277D66540];
  v33[0] = *MEMORY[0x277D66538];
  v0 = v33[0];
  v33[1] = v1;
  v35[0] = @"small";
  v35[1] = @"S";
  v34 = *MEMORY[0x277D66530];
  v2 = v34;
  v35[2] = @"small";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v33 count:3];
  v37[0] = v15;
  v36[1] = @"CCUIIconGridSizeClassSmallTall";
  v31[0] = v0;
  v31[1] = v1;
  v32[0] = @"smallTall";
  v32[1] = @"ST";
  v31[2] = v2;
  v32[2] = @"smallTall";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  v37[1] = v14;
  v36[2] = @"CCUIIconGridSizeClassSmallWide";
  v29[0] = v0;
  v29[1] = v1;
  v30[0] = @"smallWide";
  v30[1] = @"SW";
  v29[2] = v2;
  v30[2] = @"smallWide";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v37[2] = v3;
  v36[3] = @"CCUIIconGridSizeClassSmallExtraWide";
  v27[0] = v0;
  v27[1] = v1;
  v28[0] = @"smallExtraWide";
  v28[1] = @"SXW";
  v27[2] = v2;
  v28[2] = @"smallExtraWide";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v37[3] = v4;
  v36[4] = @"CCUIIconGridSizeClassMedium";
  v25[0] = v0;
  v25[1] = v1;
  v26[0] = @"medium";
  v26[1] = @"M";
  v25[2] = v2;
  v26[2] = @"medium";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v37[4] = v5;
  v36[5] = @"CCUIIconGridSizeClassMediumWide";
  v23[0] = v0;
  v23[1] = v1;
  v24[0] = @"mediumWide";
  v24[1] = @"MW";
  v23[2] = v2;
  v24[2] = @"mediumWide";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v37[5] = v6;
  v36[6] = @"CCUIIconGridSizeClassLarge";
  v21[0] = v0;
  v21[1] = v1;
  v22[0] = @"large";
  v22[1] = @"L";
  v21[2] = v2;
  v22[2] = @"large";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v37[6] = v7;
  v36[7] = @"CCUIIconGridSizeClassLargeTall";
  v19[0] = v0;
  v19[1] = v1;
  v20[0] = @"largeTall";
  v20[1] = @"LT";
  v19[2] = v2;
  v20[2] = @"largeTall";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v37[7] = v8;
  v36[8] = @"CCUIIconGridSizeClassLargeExtraTall";
  v17[0] = v0;
  v17[1] = v1;
  v18[0] = @"largeExtraTall";
  v18[1] = @"LXT";
  v17[2] = v2;
  v18[2] = @"largeExtraTall";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v37[8] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:9];

  v11 = [v16 initWithGridSizeClasses:v10];
  v12 = controlCenterDomain_controlCenterDomain;
  controlCenterDomain_controlCenterDomain = v11;

  v13 = *MEMORY[0x277D85DE8];
}

@end