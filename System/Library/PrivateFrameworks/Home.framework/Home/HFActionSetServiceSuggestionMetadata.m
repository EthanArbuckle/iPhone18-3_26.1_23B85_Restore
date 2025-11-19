@interface HFActionSetServiceSuggestionMetadata
+ (id)metadataForServiceType:(id)a3;
- (HFActionSetServiceSuggestionMetadata)initWithServiceType:(id)a3 primaryCharacteristicType:(id)a4 secondaryCharacteristicTypes:(id)a5;
@end

@implementation HFActionSetServiceSuggestionMetadata

+ (id)metadataForServiceType:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __63__HFActionSetServiceSuggestionMetadata_metadataForServiceType___block_invoke;
  v12 = &unk_277DFF7A0;
  v13 = v4;
  v14 = a1;
  v5 = v4;
  v6 = __63__HFActionSetServiceSuggestionMetadata_metadataForServiceType___block_invoke(&v9);
  v7 = [v6 objectForKeyedSubscript:{v5, v9, v10, v11, v12}];

  return v7;
}

uint64_t __63__HFActionSetServiceSuggestionMetadata_metadataForServiceType___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HFActionSetServiceSuggestionMetadata_metadataForServiceType___block_invoke_2;
  block[3] = &unk_277DF5CD0;
  v5 = *(a1 + 32);
  v1 = v5;
  v7 = v5;
  if (qword_280E039F8 != -1)
  {
    dispatch_once(&qword_280E039F8, block);
  }

  v2 = qword_280E03A00;
  v3 = qword_280E03A00;

  return v2;
}

void __63__HFActionSetServiceSuggestionMetadata_metadataForServiceType___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__HFActionSetServiceSuggestionMetadata_metadataForServiceType___block_invoke_3;
  v5[3] = &unk_277DFF778;
  v4 = *(a1 + 32);
  v1 = v4;
  v6 = v4;
  v2 = __63__HFActionSetServiceSuggestionMetadata_metadataForServiceType___block_invoke_3(v5);
  v3 = qword_280E03A00;
  qword_280E03A00 = v2;
}

id __63__HFActionSetServiceSuggestionMetadata_metadataForServiceType___block_invoke_3(uint64_t a1)
{
  v40[12] = *MEMORY[0x277D85DE8];
  v39[0] = *MEMORY[0x277CD0EA0];
  v2 = objc_alloc(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x277CCF9F0];
  v38 = *MEMORY[0x277CCF788];
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  v34 = [v2 initWithServiceType:v3 primaryCharacteristicType:v4 secondaryCharacteristicTypes:v35];
  v40[0] = v34;
  v39[1] = *MEMORY[0x277CD0E40];
  v5 = objc_alloc(*(a1 + 40));
  v6 = *(a1 + 32);
  v37 = *MEMORY[0x277CCFA20];
  v7 = v37;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  v32 = [v5 initWithServiceType:v6 primaryCharacteristicType:v4 secondaryCharacteristicTypes:v33];
  v40[1] = v32;
  v39[2] = *MEMORY[0x277CD0F40];
  v8 = objc_alloc(*(a1 + 40));
  v9 = *(a1 + 32);
  v10 = *MEMORY[0x277CCF748];
  v36 = v7;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v30 = [v8 initWithServiceType:v9 primaryCharacteristicType:v10 secondaryCharacteristicTypes:v31];
  v40[2] = v30;
  v39[3] = *MEMORY[0x277CD0F08];
  v11 = objc_alloc(*(a1 + 40));
  v12 = MEMORY[0x277CBEBF8];
  v29 = [v11 initWithServiceType:*(a1 + 32) primaryCharacteristicType:v4 secondaryCharacteristicTypes:MEMORY[0x277CBEBF8]];
  v40[3] = v29;
  v39[4] = *MEMORY[0x277CD0ED0];
  v13 = [objc_alloc(*(a1 + 40)) initWithServiceType:*(a1 + 32) primaryCharacteristicType:v4 secondaryCharacteristicTypes:v12];
  v40[4] = v13;
  v39[5] = *MEMORY[0x277CD0EB0];
  v14 = objc_alloc(*(a1 + 40));
  v15 = [v14 initWithServiceType:*(a1 + 32) primaryCharacteristicType:*MEMORY[0x277CCFB40] secondaryCharacteristicTypes:v12];
  v40[5] = v15;
  v39[6] = *MEMORY[0x277CD0E30];
  v16 = objc_alloc(*(a1 + 40));
  v17 = *MEMORY[0x277CCFB50];
  v18 = [v16 initWithServiceType:*(a1 + 32) primaryCharacteristicType:*MEMORY[0x277CCFB50] secondaryCharacteristicTypes:v12];
  v40[6] = v18;
  v39[7] = *MEMORY[0x277CD0F58];
  v19 = [objc_alloc(*(a1 + 40)) initWithServiceType:*(a1 + 32) primaryCharacteristicType:v17 secondaryCharacteristicTypes:v12];
  v40[7] = v19;
  v39[8] = *MEMORY[0x277CD0F60];
  v20 = [objc_alloc(*(a1 + 40)) initWithServiceType:*(a1 + 32) primaryCharacteristicType:v17 secondaryCharacteristicTypes:v12];
  v40[8] = v20;
  v39[9] = *MEMORY[0x277CD0ED8];
  v21 = objc_alloc(*(a1 + 40));
  v22 = [v21 initWithServiceType:*(a1 + 32) primaryCharacteristicType:*MEMORY[0x277CCFB60] secondaryCharacteristicTypes:v12];
  v40[9] = v22;
  v39[10] = *MEMORY[0x277CD0E58];
  v23 = objc_alloc(*(a1 + 40));
  v24 = [v23 initWithServiceType:*(a1 + 32) primaryCharacteristicType:*MEMORY[0x277CCFB08] secondaryCharacteristicTypes:v12];
  v40[10] = v24;
  v39[11] = *MEMORY[0x277CD0F20];
  v25 = [objc_alloc(*(a1 + 40)) initWithServiceType:*(a1 + 32) primaryCharacteristicType:v10 secondaryCharacteristicTypes:v12];
  v40[11] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:12];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (HFActionSetServiceSuggestionMetadata)initWithServiceType:(id)a3 primaryCharacteristicType:(id)a4 secondaryCharacteristicTypes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HFActionSetServiceSuggestionMetadata;
  v12 = [(HFActionSetServiceSuggestionMetadata *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serviceType, a3);
    objc_storeStrong(&v13->_primaryCharacteristicType, a4);
    objc_storeStrong(&v13->_secondaryCharacteristicTypes, a5);
  }

  return v13;
}

@end