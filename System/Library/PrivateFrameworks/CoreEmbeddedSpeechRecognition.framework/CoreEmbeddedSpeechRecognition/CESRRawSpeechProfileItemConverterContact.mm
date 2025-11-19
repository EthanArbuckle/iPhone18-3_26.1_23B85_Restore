@interface CESRRawSpeechProfileItemConverterContact
- (CESRRawSpeechProfileItemConverterContact)init;
- (id)_companyContactFromSpeechWords:(id)a3 error:(id *)a4;
- (id)_standardContactFromSpeechWords:(id)a3 error:(id *)a4;
- (id)vocabularyItemFromSpeechWords:(id)a3 speechNamespace:(id)a4 error:(id *)a5;
@end

@implementation CESRRawSpeechProfileItemConverterContact

- (id)_companyContactFromSpeechWords:(id)a3 error:(id *)a4
{
  v35[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![v6 count])
  {
    v15 = 0;
    goto LABEL_17;
  }

  if ([v6 count] >= 2)
  {
    v7 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA068];
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
    v10 = [v8 stringWithFormat:@"rawSpeechProfile contains unexpected number of company speech words. Expected: 1 found: %@", v9];
    v35[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v12 = [v7 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:1 userInfo:v11];
    v13 = v12;
    if (a4 && v12)
    {
      v14 = v12;
      *a4 = v13;
    }

LABEL_15:

    v15 = 0;
    goto LABEL_16;
  }

  v9 = [CESRRawSpeechProfileTools placeholderItemIdWithCategoryName:@"contacts"];
  builder = self->_builder;
  v31 = 0;
  v17 = [(KVItemBuilder *)builder setItemType:2 itemId:v9 error:&v31];
  v18 = v31;
  v19 = [v6 firstObject];
  v11 = [v19 orthography];

  v20 = self->_builder;
  v30 = v18;
  v21 = [(KVItemBuilder *)v20 addFieldWithType:64 value:v11 error:&v30];
  v22 = v30;

  if (!v21)
  {
    v10 = v22;
    goto LABEL_11;
  }

  v23 = self->_builder;
  v29 = v22;
  v15 = [(KVItemBuilder *)v23 buildItemWithError:&v29];
  v10 = v29;

  if (!v15)
  {
LABEL_11:
    v24 = MEMORY[0x277CCA9B8];
    v32[0] = *MEMORY[0x277CCA068];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to process word: %@ due to builder error.", v11];
    v32[1] = *MEMORY[0x277CCA7E8];
    v33[0] = v13;
    v33[1] = v10;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v26 = [v24 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:6 userInfo:v25];
    if (a4 && v26)
    {
      v26 = v26;
      *a4 = v26;
    }

    goto LABEL_15;
  }

LABEL_16:

LABEL_17:
  v27 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_standardContactFromSpeechWords:(id)a3 error:(id *)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [CESRRawSpeechProfileTools placeholderItemIdWithCategoryName:@"contacts"];
  builder = self->_builder;
  v51 = 0;
  v8 = [(KVItemBuilder *)builder setItemType:2 itemId:v6 error:&v51];
  v9 = v51;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v5;
  v10 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v12 = *v48;
  v42 = v6;
  while (2)
  {
    v13 = 0;
    v14 = v9;
    do
    {
      if (*v48 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v47 + 1) + 8 * v13);
      v16 = [v15 tagType] - 1;
      if (v16 >= 6)
      {
        v30 = MEMORY[0x277CCA9B8];
        v56 = *MEMORY[0x277CCA068];
        v31 = MEMORY[0x277CCACA8];
        v28 = [v15 tagValue];
        v32 = [v31 stringWithFormat:@"rawSpeechProfile contains unrecognized tag: %@ in contact speech words", v28];
        v57 = v32;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        v34 = [v30 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:1 userInfo:v33];
        v35 = v34;
        if (a4 && v34)
        {
          v36 = v34;
          *a4 = v35;
        }

        v9 = v14;
        goto LABEL_22;
      }

      v17 = qword_2260A18E8[v16];
      v18 = self->_builder;
      v19 = [v15 orthography];
      v46 = v14;
      v20 = [(KVItemBuilder *)v18 addFieldWithType:v17 value:v19 error:&v46];
      v9 = v46;

      if (!v20)
      {
        v37 = MEMORY[0x277CCA9B8];
        v54[0] = *MEMORY[0x277CCA068];
        v38 = MEMORY[0x277CCACA8];
        v28 = [v15 orthography];
        v32 = [v15 tagValue];
        v33 = [v38 stringWithFormat:@"failed to process word: %@ with tag: %@ due to builder error.", v28, v32];
        v54[1] = *MEMORY[0x277CCA7E8];
        v55[0] = v33;
        v55[1] = v9;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
        v39 = [v37 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:6 userInfo:v35];
        if (a4 && v39)
        {
          v39 = v39;
          *a4 = v39;
        }

LABEL_22:
        v6 = v42;

        v26 = obj;
        goto LABEL_23;
      }

      ++v13;
      v14 = v9;
    }

    while (v11 != v13);
    v11 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
    v6 = v42;
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_10:
  v21 = v9;

  v22 = self->_builder;
  v45 = v9;
  v23 = [(KVItemBuilder *)v22 buildItemWithError:&v45];
  v9 = v45;

  if (!v23)
  {
    v24 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA7E8];
    v52[0] = *MEMORY[0x277CCA068];
    v52[1] = v25;
    v53[0] = @"failed to build item";
    v53[1] = v9;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
    v27 = [v24 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:6 userInfo:v26];
    v28 = v27;
    if (a4 && v27)
    {
      v29 = v27;
      *a4 = v28;
    }

LABEL_23:

    v23 = 0;
  }

  v40 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)vocabularyItemFromSpeechWords:(id)a3 speechNamespace:(id)a4 error:(id *)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v8 && [v8 count])
  {
    if ([v9 isEqualToString:@"contacts"])
    {
      v10 = [(CESRRawSpeechProfileItemConverterContact *)self _standardContactFromSpeechWords:v8 error:a5];
LABEL_7:
      v11 = v10;
      goto LABEL_13;
    }

    if ([v9 isEqualToString:@"company"])
    {
      v10 = [(CESRRawSpeechProfileItemConverterContact *)self _companyContactFromSpeechWords:v8 error:a5];
      goto LABEL_7;
    }

    v12 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA068];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected namespace: %@ expected: %@", v9, @"contacts"];
    v19[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v15 = [v12 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:3 userInfo:v14];
    if (a5 && v15)
    {
      v15 = v15;
      *a5 = v15;
    }
  }

  v11 = 0;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (CESRRawSpeechProfileItemConverterContact)init
{
  v6.receiver = self;
  v6.super_class = CESRRawSpeechProfileItemConverterContact;
  v2 = [(CESRRawSpeechProfileItemConverterContact *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;
  }

  return v2;
}

@end