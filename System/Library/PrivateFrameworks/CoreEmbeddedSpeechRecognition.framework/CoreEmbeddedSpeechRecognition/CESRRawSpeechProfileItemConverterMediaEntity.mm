@interface CESRRawSpeechProfileItemConverterMediaEntity
- (CESRRawSpeechProfileItemConverterMediaEntity)init;
- (id)vocabularyItemFromSpeechWords:(id)a3 speechNamespace:(id)a4 error:(id *)a5;
@end

@implementation CESRRawSpeechProfileItemConverterMediaEntity

- (id)vocabularyItemFromSpeechWords:(id)a3 speechNamespace:(id)a4 error:(id *)a5
{
  v48[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v8 && [v8 count])
  {
    if ([v8 count] == 1)
    {
      v10 = v9;
      if ([v10 isEqualToString:@"artist"])
      {
        v11 = 202;
        goto LABEL_16;
      }

      if ([v10 isEqualToString:@"playlist"])
      {
        v11 = 216;
LABEL_16:

        v13 = [CESRRawSpeechProfileTools placeholderItemIdWithCategoryName:v10];
        builder = self->_builder;
        v40 = 0;
        v23 = [(KVItemBuilder *)builder setItemType:5 itemId:v13 error:&v40];
        v24 = v40;
        v25 = [v8 firstObject];
        v26 = [v25 orthography];

        v27 = self->_builder;
        v39 = v24;
        v28 = [(KVItemBuilder *)v27 addFieldWithType:v11 value:v26 error:&v39];
        v15 = v39;

        if (!v28)
        {
          goto LABEL_18;
        }

        v29 = self->_builder;
        v38 = v15;
        v16 = [(KVItemBuilder *)v29 buildItemWithError:&v38];
        v30 = v38;

        v15 = v30;
        if (!v16)
        {
LABEL_18:
          v31 = MEMORY[0x277CCA9B8];
          v41[0] = *MEMORY[0x277CCA068];
          v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to process word: %@ due to builder error.", v26];
          v41[1] = *MEMORY[0x277CCA7E8];
          v42[0] = v32;
          v42[1] = v15;
          v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
          v34 = [v31 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:6 userInfo:v33];
          if (a5 && v34)
          {
            v34 = v34;
            *a5 = v34;
          }

          v16 = 0;
        }

        goto LABEL_23;
      }

      v37 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA068];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected namespace: %@ for category: %@", v10, @"com.apple.media.entities"];
      v44 = v13;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v19 = v37;
      v20 = 3;
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA068];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"rawSpeechProfile contains a MediaEntity item with an unexpected number of speech words (expected only 1): %@ namespace: %@", v8, v9];
      v46 = v13;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v19 = v18;
      v20 = 1;
    }

    v21 = [v19 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:v20 userInfo:v15];
    if (a5 && v21)
    {
      v21 = v21;
      *a5 = v21;
    }

    v16 = 0;
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v47 = *MEMORY[0x277CCA068];
    v48[0] = @"rawSpeechProfile contains a MediaEntity item missing speech words.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:1 userInfo:v13];
    v15 = v14;
    v16 = 0;
    if (a5 && v14)
    {
      v17 = v14;
      v16 = 0;
      *a5 = v15;
    }
  }

LABEL_23:

  v35 = *MEMORY[0x277D85DE8];

  return v16;
}

- (CESRRawSpeechProfileItemConverterMediaEntity)init
{
  v6.receiver = self;
  v6.super_class = CESRRawSpeechProfileItemConverterMediaEntity;
  v2 = [(CESRRawSpeechProfileItemConverterMediaEntity *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;
  }

  return v2;
}

@end