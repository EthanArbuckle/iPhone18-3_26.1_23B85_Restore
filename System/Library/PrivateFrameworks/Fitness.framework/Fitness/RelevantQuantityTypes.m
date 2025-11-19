@interface RelevantQuantityTypes
@end

@implementation RelevantQuantityTypes

void ___RelevantQuantityTypes_block_invoke()
{
  v17[12] = *MEMORY[0x277D85DE8];
  v13 = MEMORY[0x277CBEB98];
  v16 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
  v17[0] = v16;
  v15 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
  v17[1] = v15;
  v14 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB38]];
  v17[2] = v14;
  v0 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
  v17[3] = v0;
  v1 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC960]];
  v17[4] = v1;
  v2 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC90]];
  v17[5] = v2;
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCCD0]];
  v17[6] = v3;
  v4 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB08]];
  v17[7] = v4;
  v5 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB18]];
  v17[8] = v5;
  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB20]];
  v17[9] = v6;
  v7 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB28]];
  v17[10] = v7;
  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB30]];
  v17[11] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:12];
  v10 = [v13 setWithArray:v9];
  v11 = _RelevantQuantityTypes___relevantQuantityTypes;
  _RelevantQuantityTypes___relevantQuantityTypes = v10;

  v12 = *MEMORY[0x277D85DE8];
}

@end