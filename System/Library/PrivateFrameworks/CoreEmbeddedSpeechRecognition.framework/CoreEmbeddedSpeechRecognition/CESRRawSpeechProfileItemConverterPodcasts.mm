@interface CESRRawSpeechProfileItemConverterPodcasts
- (CESRRawSpeechProfileItemConverterPodcasts)init;
- (id)vocabularyItemFromSpeechWords:(id)words speechNamespace:(id)namespace error:(id *)error;
@end

@implementation CESRRawSpeechProfileItemConverterPodcasts

- (id)vocabularyItemFromSpeechWords:(id)words speechNamespace:(id)namespace error:(id *)error
{
  v46[1] = *MEMORY[0x277D85DE8];
  wordsCopy = words;
  namespaceCopy = namespace;
  if (wordsCopy && [wordsCopy count])
  {
    if ([wordsCopy count] == 1)
    {
      if ([namespaceCopy isEqualToString:@"podcastTitle"])
      {
        namespaceCopy = [CESRRawSpeechProfileTools placeholderItemIdWithCategoryName:namespaceCopy];
        builder = self->_builder;
        v38 = 0;
        v12 = [(KVItemBuilder *)builder setItemType:16 itemId:namespaceCopy error:&v38];
        v13 = v38;
        firstObject = [wordsCopy firstObject];
        orthography = [firstObject orthography];

        v16 = self->_builder;
        v37 = v13;
        v17 = [(KVItemBuilder *)v16 addFieldWithType:700 value:orthography error:&v37];
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
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to process word: %@ due to builder error.", orthography];
          v39[1] = *MEMORY[0x277CCA7E8];
          v40[0] = v23;
          v40[1] = v18;
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
          v25 = [v22 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:6 userInfo:v24];
          if (error && v25)
          {
            v25 = v25;
            *error = v25;
          }

          v20 = 0;
        }

        goto LABEL_21;
      }

      v32 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA068];
      namespaceCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected namespace: %@ for category: %@", namespaceCopy, @"com.apple.media.podcasts"];
      v42 = namespaceCopy;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v30 = v32;
      v31 = 3;
    }

    else
    {
      v29 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA068];
      namespaceCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"rawSpeechProfile contains a Podcasts item with an unexpected number of speech words (expected only 1): %@ namespace: %@", wordsCopy, namespaceCopy];
      v44 = namespaceCopy;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v30 = v29;
      v31 = 1;
    }

    v33 = [v30 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:v31 userInfo:v18];
    if (error && v33)
    {
      v33 = v33;
      *error = v33;
    }

    v20 = 0;
  }

  else
  {
    v26 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA068];
    v46[0] = @"rawSpeechProfile contains a Podcasts item missing speech words.";
    namespaceCopy = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v27 = [v26 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:1 userInfo:namespaceCopy];
    v18 = v27;
    v20 = 0;
    if (error && v27)
    {
      v28 = v27;
      v20 = 0;
      *error = v18;
    }
  }

LABEL_21:

  v34 = *MEMORY[0x277D85DE8];

  return v20;
}

- (CESRRawSpeechProfileItemConverterPodcasts)init
{
  v6.receiver = self;
  v6.super_class = CESRRawSpeechProfileItemConverterPodcasts;
  v2 = [(CESRRawSpeechProfileItemConverterPodcasts *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;
  }

  return v2;
}

@end