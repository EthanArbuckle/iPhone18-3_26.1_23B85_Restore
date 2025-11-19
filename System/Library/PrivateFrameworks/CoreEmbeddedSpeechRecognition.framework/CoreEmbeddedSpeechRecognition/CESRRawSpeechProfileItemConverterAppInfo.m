@interface CESRRawSpeechProfileItemConverterAppInfo
- (CESRRawSpeechProfileItemConverterAppInfo)init;
- (id)vocabularyItemFromSpeechWords:(id)a3 speechNamespace:(id)a4 error:(id *)a5;
@end

@implementation CESRRawSpeechProfileItemConverterAppInfo

- (id)vocabularyItemFromSpeechWords:(id)a3 speechNamespace:(id)a4 error:(id *)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (!v8 || ![v8 count])
  {
    v26 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v46 = "[CESRRawSpeechProfileItemConverterAppInfo vocabularyItemFromSpeechWords:speechNamespace:error:]";
      _os_log_debug_impl(&dword_225EEB000, v26, OS_LOG_TYPE_DEBUG, "%s rawSpeechProfile contains an AppInfo item missing speech words.", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if ([v8 count] != 1)
  {
    v27 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277CCA068];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"rawSpeechProfile contains an AppInfo item with an unexpected number of speech words (expected only 1): %@", v8];
    v44 = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v30 = v27;
    v31 = 1;
    goto LABEL_16;
  }

  if (([v9 isEqualToString:@"appname"] & 1) == 0)
  {
    v32 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CCA068];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected namespace: %@ expected: %@", v9, @"appname"];
    v42 = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v30 = v32;
    v31 = 3;
LABEL_16:
    v33 = [v30 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:v31 userInfo:v29];
    if (a5 && v33)
    {
      v33 = v33;
      *a5 = v33;
    }

LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  v10 = [CESRRawSpeechProfileTools placeholderItemIdWithCategoryName:@"appinfo"];
  v11 = [v8 firstObject];
  v12 = [v11 orthography];

  builder = self->_builder;
  v38 = 0;
  v14 = [(KVItemBuilder *)builder setItemType:3 itemId:v10 error:&v38];
  v15 = v38;
  v16 = self->_builder;
  v37 = v15;
  v17 = [(KVItemBuilder *)v16 addFieldWithType:102 value:v12 error:&v37];
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
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to process word: %@ due to builder error.", v12];
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

LABEL_21:
  v34 = *MEMORY[0x277D85DE8];

  return v20;
}

- (CESRRawSpeechProfileItemConverterAppInfo)init
{
  v6.receiver = self;
  v6.super_class = CESRRawSpeechProfileItemConverterAppInfo;
  v2 = [(CESRRawSpeechProfileItemConverterAppInfo *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;
  }

  return v2;
}

@end