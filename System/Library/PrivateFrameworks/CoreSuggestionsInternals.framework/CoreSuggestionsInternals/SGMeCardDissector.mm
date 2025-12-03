@interface SGMeCardDissector
- (void)dissectTextMessage:(id)message entity:(id)entity context:(id)context;
@end

@implementation SGMeCardDissector

- (void)dissectTextMessage:(id)message entity:(id)entity context:(id)context
{
  messageCopy = message;
  entityCopy = entity;
  if (([messageCopy isSent] & 1) == 0)
  {
    author = [messageCopy author];
    authorNickname = [entityCopy authorNickname];
    authorPhotoPath = [entityCopy authorPhotoPath];
    if (authorNickname | authorPhotoPath)
    {
      v10 = [SGIdentityKey keyForPersonHandle:author];
      if (v10)
      {
        if (authorNickname)
        {
          v11 = [[SGPipelineEnrichment alloc] initWithPseudoContactWithKey:v10 parent:entityCopy name:authorNickname];
          v12 = [MEMORY[0x277D01FD8] extractionInfoWithExtractionType:64 modelVersion:0 confidence:0];
          [(SGEntity *)v11 setExtractionInfo:v12];

          [entityCopy setContactInformationExtracted:1];
          [entityCopy addOrReplacePreferredEnrichment:v11];
        }

        if (authorPhotoPath)
        {
          v13 = [[SGContactDetailKey alloc] initWithIdentityKey:v10 label:@"from_messages" normalizedValue:authorPhotoPath];
          v14 = [SGPipelineEnrichment alloc];
          v15 = [MEMORY[0x277D01FD8] extractionInfoWithExtractionType:64 modelVersion:0 confidence:0];
          v16 = [(SGPipelineEnrichment *)v14 initWithContactDetailWithKey:v13 type:5 extractionInfo:v15 curated:0 parent:entityCopy value:authorPhotoPath context:&stru_284703F00 contextRangeOfInterest:0, 0];

          [entityCopy setContactInformationExtracted:1];
          [entityCopy addEnrichment:v16];
        }
      }
    }
  }
}

@end