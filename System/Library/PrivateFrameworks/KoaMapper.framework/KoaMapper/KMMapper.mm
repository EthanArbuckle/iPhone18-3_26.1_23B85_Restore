@interface KMMapper
@end

@implementation KMMapper

void __63__KMMapper_INVocabularyItem__fieldTypeNumberForIntentSlotName___block_invoke()
{
  v23[19] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277CD3900];
  v21 = KVFieldTypeToNumber();
  v23[0] = v21;
  v22[1] = *MEMORY[0x277CD38F8];
  v20 = KVFieldTypeToNumber();
  v23[1] = v20;
  v22[2] = *MEMORY[0x277CD3948];
  v19 = KVFieldTypeToNumber();
  v23[2] = v19;
  v22[3] = *MEMORY[0x277CD3938];
  v18 = KVFieldTypeToNumber();
  v23[3] = v18;
  v22[4] = *MEMORY[0x277CD38D0];
  v17 = KVFieldTypeToNumber();
  v23[4] = v17;
  v22[5] = *MEMORY[0x277CD38F0];
  v16 = KVFieldTypeToNumber();
  v23[5] = v16;
  v22[6] = *MEMORY[0x277CD38E8];
  v15 = KVFieldTypeToNumber();
  v23[6] = v15;
  v22[7] = *MEMORY[0x277CD3930];
  v14 = KVFieldTypeToNumber();
  v23[7] = v14;
  v22[8] = *MEMORY[0x277CD3928];
  v13 = KVFieldTypeToNumber();
  v23[8] = v13;
  v22[9] = *MEMORY[0x277CD3920];
  v0 = KVFieldTypeToNumber();
  v23[9] = v0;
  v22[10] = *MEMORY[0x277CD3918];
  v1 = KVFieldTypeToNumber();
  v23[10] = v1;
  v22[11] = *MEMORY[0x277CD3950];
  v2 = KVFieldTypeToNumber();
  v23[11] = v2;
  v22[12] = *MEMORY[0x277CD3910];
  v3 = KVFieldTypeToNumber();
  v23[12] = v3;
  v22[13] = *MEMORY[0x277CD38E0];
  v4 = KVFieldTypeToNumber();
  v23[13] = v4;
  v22[14] = *MEMORY[0x277CD38D8];
  v5 = KVFieldTypeToNumber();
  v23[14] = v5;
  v22[15] = *MEMORY[0x277CD3958];
  v6 = KVFieldTypeToNumber();
  v23[15] = v6;
  v22[16] = *MEMORY[0x277CD3960];
  v7 = KVFieldTypeToNumber();
  v23[16] = v7;
  v22[17] = *MEMORY[0x277CD3940];
  v8 = KVFieldTypeToNumber();
  v23[17] = v8;
  v22[18] = *MEMORY[0x277CD3908];
  v9 = KVFieldTypeToNumber();
  v23[18] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:19];
  v11 = _fieldTypeNumberForIntentSlotName__intentSlotToFieldTypeMap;
  _fieldTypeNumberForIntentSlotName__intentSlotToFieldTypeMap = v10;

  v12 = *MEMORY[0x277D85DE8];
}

void __73__KMMapper_LSApplicationRecord_addAlternativeNamesFor_forLanguage_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 valueForKey:@"INAlternativeAppName"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 length])
    {
      if (!*(*(*(a1 + 56) + 8) + 40))
      {
        v8 = objc_alloc(MEMORY[0x277CCA8D8]);
        v9 = [*(a1 + 32) URL];
        v10 = [v8 initWithURL:v9];
        v11 = *(*(a1 + 56) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;
      }

      v13 = [MEMORY[0x277CEF2D8] sharedInstance];
      v14 = [v13 localizedStringForKey:v7 table:@"InfoPlist" bundle:*(*(*(a1 + 56) + 8) + 40) languageCode:*(a1 + 40)];

      if (![v14 length])
      {
        v15 = v7;

        v14 = v15;
      }

      v16 = *(*(a1 + 48) + 8);
      v17 = *(*(a1 + 64) + 8);
      obj = *(v17 + 40);
      v18 = [v16 addFieldWithType:104 value:v14 error:&obj];
      objc_storeStrong((v17 + 40), obj);

      if (!v18)
      {
        *a4 = 1;
      }
    }
  }
}

@end