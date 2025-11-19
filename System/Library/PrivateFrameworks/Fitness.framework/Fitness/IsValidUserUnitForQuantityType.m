@interface IsValidUserUnitForQuantityType
@end

@implementation IsValidUserUnitForQuantityType

void ___IsValidUserUnitForQuantityType_block_invoke()
{
  v40[12] = *MEMORY[0x277D85DE8];
  v26 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
  v38[0] = @"mi";
  v38[1] = @"km";
  v39[0] = v26;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v40[0] = v25;
  v24 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
  v39[1] = v24;
  v37[0] = @"mi";
  v37[1] = @"km";
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v40[1] = v23;
  v22 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB38]];
  v39[2] = v22;
  v36[0] = @"yd";
  v36[1] = @"m";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v40[2] = v21;
  v20 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
  v39[3] = v20;
  v35[0] = @"Cal";
  v35[1] = @"kcal";
  v35[2] = @"kJ";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
  v40[3] = v19;
  v18 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC960]];
  v39[4] = v18;
  v34[0] = @"Cal";
  v34[1] = @"kcal";
  v34[2] = @"kJ";
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
  v40[4] = v17;
  v16 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC90]];
  v39[5] = v16;
  v33[0] = @"m";
  v33[1] = @"ft";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v40[5] = v15;
  v14 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCCD0]];
  v39[6] = v14;
  v32[0] = @"degC";
  v32[1] = @"degF";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v40[6] = v13;
  v12 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB08]];
  v39[7] = v12;
  v31[0] = @"mi";
  v31[1] = @"km";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v40[7] = v11;
  v0 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB18]];
  v39[8] = v0;
  v30[0] = @"mi";
  v30[1] = @"km";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v40[8] = v1;
  v2 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB20]];
  v39[9] = v2;
  v29[0] = @"mi";
  v29[1] = @"km";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v40[9] = v3;
  v4 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB28]];
  v39[10] = v4;
  v28[0] = @"mi";
  v28[1] = @"km";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v40[10] = v5;
  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB30]];
  v39[11] = v6;
  v27[0] = @"mi";
  v27[1] = @"km";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v40[11] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:12];
  v9 = _IsValidUserUnitForQuantityType___validUnitStringsByQuantityType;
  _IsValidUserUnitForQuantityType___validUnitStringsByQuantityType = v8;

  v10 = *MEMORY[0x277D85DE8];
}

@end