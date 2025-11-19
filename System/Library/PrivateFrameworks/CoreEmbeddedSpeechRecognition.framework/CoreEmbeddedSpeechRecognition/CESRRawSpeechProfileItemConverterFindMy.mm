@interface CESRRawSpeechProfileItemConverterFindMy
- (CESRRawSpeechProfileItemConverterFindMy)init;
- (id)vocabularyItemFromSpeechWords:(id)a3 speechNamespace:(id)a4 error:(id *)a5;
@end

@implementation CESRRawSpeechProfileItemConverterFindMy

- (id)vocabularyItemFromSpeechWords:(id)a3 speechNamespace:(id)a4 error:(id *)a5
{
  v46[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v8 && [v8 count])
  {
    if ([v8 count] == 1)
    {
      if ([v9 isEqualToString:@"deviceNames"])
      {
        v10 = [CESRRawSpeechProfileTools placeholderItemIdWithCategoryName:v9];
        builder = self->_builder;
        v38 = 0;
        v12 = [(KVItemBuilder *)builder setItemType:21 itemId:v10 error:&v38];
        v13 = v38;
        v14 = [v8 firstObject];
        v15 = [v14 orthography];

        v16 = self->_builder;
        v37 = v13;
        v17 = [(KVItemBuilder *)v16 addFieldWithType:950 value:v15 error:&v37];
        v18 = v37;

        if (!v17)
        {
          goto LABEL_7;
        }

        v19 = self->_builder;
        v36 = v18;
        v20 = [(KVItemBuilder *)v19 buildItemWithError:&v36];
        v21 = v36;

        v18 = v21;
        if (!v20)
        {
LABEL_7:
          v22 = MEMORY[0x277CCA9B8];
          v39[0] = *MEMORY[0x277CCA068];
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to process word: %@ due to builder error.", v15];
          v39[1] = *MEMORY[0x277CCA7E8];
          v40[0] = v23;
          v40[1] = v18;
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
          v25 = [v22 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:6 userInfo:v24];
          if (a5 && v25)
          {
            v25 = v25;
            *a5 = v25;
          }

          v20 = 0;
        }

        goto LABEL_21;
      }

      v32 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA068];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected namespace: %@ for category: %@", v9, @"com.apple.icloud.fmip"];
      v42 = v10;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v30 = v32;
      v31 = 3;
    }

    else
    {
      v29 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA068];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"rawSpeechProfile contains a FindMy item with an unexpected number of speech words (expected only 1): %@ namespace: %@", v8, v9];
      v44 = v10;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v30 = v29;
      v31 = 1;
    }

    v33 = [v30 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:v31 userInfo:v18];
    if (a5 && v33)
    {
      v33 = v33;
      *a5 = v33;
    }

    v20 = 0;
  }

  else
  {
    v26 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA068];
    v46[0] = @"rawSpeechProfile contains a FindMy item missing speech words.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v27 = [v26 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:1 userInfo:v10];
    v18 = v27;
    v20 = 0;
    if (a5 && v27)
    {
      v28 = v27;
      v20 = 0;
      *a5 = v18;
    }
  }

LABEL_21:

  v34 = *MEMORY[0x277D85DE8];

  return v20;
}

- (CESRRawSpeechProfileItemConverterFindMy)init
{
  v6.receiver = self;
  v6.super_class = CESRRawSpeechProfileItemConverterFindMy;
  v2 = [(CESRRawSpeechProfileItemConverterFindMy *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;
  }

  return v2;
}

@end