@interface ICTTAttachment(UI)
- (BOOL)embeddingType;
@end

@implementation ICTTAttachment(UI)

- (BOOL)embeddingType
{
  attachmentUTI = [self attachmentUTI];
  if ([attachmentUTI isEqualToString:*MEMORY[0x1E6978590]])
  {

    return 1;
  }

  attachmentUTI2 = [self attachmentUTI];
  v4 = [attachmentUTI2 isEqualToString:*MEMORY[0x1E6978598]];

  return v4 != 0;
}

@end