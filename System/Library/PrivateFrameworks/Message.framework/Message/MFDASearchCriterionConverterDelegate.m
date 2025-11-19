@interface MFDASearchCriterionConverterDelegate
@end

@implementation MFDASearchCriterionConverterDelegate

void __97___MFDASearchCriterionConverterDelegate_messageCriterionConverter_predicateKeysForCriterionType___block_invoke()
{
  v30[12] = *MEMORY[0x1E69E9840];
  v29[0] = &unk_1F2775D48;
  v28 = *MEMORY[0x1E6999940];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v30[0] = v16;
  v29[1] = &unk_1F2775D60;
  v27 = *MEMORY[0x1E6999950];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v30[1] = v15;
  v29[2] = &unk_1F2775D78;
  v26 = *MEMORY[0x1E6999908];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v30[2] = v0;
  v29[3] = &unk_1F2775D90;
  v25 = *MEMORY[0x1E6999900];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v30[3] = v1;
  v29[4] = &unk_1F2775DA8;
  v24 = *MEMORY[0x1E6999928];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v30[4] = v2;
  v29[5] = &unk_1F2775DC0;
  v23 = *MEMORY[0x1E6999920];
  v3 = v23;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v30[5] = v4;
  v29[6] = &unk_1F2775DD8;
  v22 = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v30[6] = v5;
  v29[7] = &unk_1F2775DF0;
  v21 = *MEMORY[0x1E6999910];
  v6 = v21;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v30[7] = v7;
  v29[8] = &unk_1F2775E08;
  v20 = *MEMORY[0x1E6999918];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v30[8] = v8;
  v29[9] = &unk_1F2775E20;
  v19 = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v30[9] = v9;
  v29[10] = &unk_1F2775E38;
  v18 = *MEMORY[0x1E6999948];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v30[10] = v10;
  v29[11] = &unk_1F2775E50;
  v17 = *MEMORY[0x1E6999930];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v30[11] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:12];
  v13 = messageCriterionConverter_predicateKeysForCriterionType__converterKeyDictionary;
  messageCriterionConverter_predicateKeysForCriterionType__converterKeyDictionary = v12;

  v14 = *MEMORY[0x1E69E9840];
}

void __78___MFDASearchCriterionConverterDelegate__shouldConvertEqualsToContainsForKey___block_invoke()
{
  v7[8] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6999920];
  v7[0] = *MEMORY[0x1E6999948];
  v7[1] = v0;
  v1 = *MEMORY[0x1E6999908];
  v7[2] = *MEMORY[0x1E6999900];
  v7[3] = v1;
  v2 = *MEMORY[0x1E6999938];
  v7[4] = *MEMORY[0x1E6999928];
  v7[5] = v2;
  v3 = *MEMORY[0x1E6999950];
  v7[6] = *MEMORY[0x1E6999940];
  v7[7] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:8];
  v5 = _shouldConvertEqualsToContainsForKey___daKeys;
  _shouldConvertEqualsToContainsForKey___daKeys = v4;

  v6 = *MEMORY[0x1E69E9840];
}

@end