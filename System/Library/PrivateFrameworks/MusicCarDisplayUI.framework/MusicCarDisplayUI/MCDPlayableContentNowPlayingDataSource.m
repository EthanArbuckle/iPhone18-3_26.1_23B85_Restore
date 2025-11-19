@interface MCDPlayableContentNowPlayingDataSource
- (id)_itemProperties;
@end

@implementation MCDPlayableContentNowPlayingDataSource

- (id)_itemProperties
{
  v40[1] = *MEMORY[0x277D85DE8];
  v29 = objc_alloc(MEMORY[0x277CD6018]);
  v39 = *MEMORY[0x277CD5BB0];
  v2 = objc_alloc(MEMORY[0x277CD6018]);
  v3 = *MEMORY[0x277CD5B18];
  v38[0] = *MEMORY[0x277CD5B60];
  v38[1] = v3;
  v4 = *MEMORY[0x277CD5B30];
  v38[2] = *MEMORY[0x277CD5B38];
  v38[3] = v4;
  v5 = *MEMORY[0x277CD5AF8];
  v38[4] = *MEMORY[0x277CD5B20];
  v38[5] = v5;
  v6 = *MEMORY[0x277CD5B48];
  v38[6] = *MEMORY[0x277CD5B08];
  v38[7] = v6;
  v7 = *MEMORY[0x277CD5B50];
  v38[8] = *MEMORY[0x277CD5B40];
  v38[9] = v7;
  v38[10] = *MEMORY[0x277CD5AF0];
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:11];
  v36[0] = *MEMORY[0x277CD5C10];
  v8 = MEMORY[0x277CD6018];
  v35 = *MEMORY[0x277CD5988];
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  v27 = [v8 propertySetWithProperties:v28];
  v37[0] = v27;
  v36[1] = *MEMORY[0x277CD5BF0];
  v9 = objc_alloc(MEMORY[0x277CD6018]);
  v34 = *MEMORY[0x277CD5960];
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v32 = *MEMORY[0x277CD5B68];
  v10 = MEMORY[0x277CD6018];
  v31 = *MEMORY[0x277CD5980];
  v11 = v31;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v12 = [v10 propertySetWithProperties:v25];
  v33 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v14 = [v9 initWithProperties:v24 relationships:v13];
  v37[1] = v14;
  v36[2] = *MEMORY[0x277CD5C08];
  v15 = MEMORY[0x277CD6018];
  v30 = v11;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v17 = [v15 propertySetWithProperties:v16];
  v37[2] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
  v19 = [v2 initWithProperties:v26 relationships:v18];
  v40[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v21 = [v29 initWithProperties:0 relationships:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end