@interface SGMeCardDissector
- (void)dissectTextMessage:(id)a3 entity:(id)a4 context:(id)a5;
@end

@implementation SGMeCardDissector

- (void)dissectTextMessage:(id)a3 entity:(id)a4 context:(id)a5
{
  v17 = a3;
  v6 = a4;
  if (([v17 isSent] & 1) == 0)
  {
    v7 = [v17 author];
    v8 = [v6 authorNickname];
    v9 = [v6 authorPhotoPath];
    if (v8 | v9)
    {
      v10 = [SGIdentityKey keyForPersonHandle:v7];
      if (v10)
      {
        if (v8)
        {
          v11 = [[SGPipelineEnrichment alloc] initWithPseudoContactWithKey:v10 parent:v6 name:v8];
          v12 = [MEMORY[0x277D01FD8] extractionInfoWithExtractionType:64 modelVersion:0 confidence:0];
          [(SGEntity *)v11 setExtractionInfo:v12];

          [v6 setContactInformationExtracted:1];
          [v6 addOrReplacePreferredEnrichment:v11];
        }

        if (v9)
        {
          v13 = [[SGContactDetailKey alloc] initWithIdentityKey:v10 label:@"from_messages" normalizedValue:v9];
          v14 = [SGPipelineEnrichment alloc];
          v15 = [MEMORY[0x277D01FD8] extractionInfoWithExtractionType:64 modelVersion:0 confidence:0];
          v16 = [(SGPipelineEnrichment *)v14 initWithContactDetailWithKey:v13 type:5 extractionInfo:v15 curated:0 parent:v6 value:v9 context:&stru_284703F00 contextRangeOfInterest:0, 0];

          [v6 setContactInformationExtracted:1];
          [v6 addEnrichment:v16];
        }
      }
    }
  }
}

@end