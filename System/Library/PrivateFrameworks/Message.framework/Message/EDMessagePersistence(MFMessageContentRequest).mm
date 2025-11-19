@interface EDMessagePersistence(MFMessageContentRequest)
- (uint64_t)mailDropAttachmentPresentForMessage:()MFMessageContentRequest;
- (uint64_t)setIsMailDropAttachmentPresent:()MFMessageContentRequest forMessage:;
@end

@implementation EDMessagePersistence(MFMessageContentRequest)

- (uint64_t)mailDropAttachmentPresentForMessage:()MFMessageContentRequest
{
  v3 = [a1 cachedMetadataJSONForKey:@"maild.isMailDropAttachmentPresent" messageID:a3];
  if ([v3 isEqualToString:@"1"])
  {
    v4 = MEMORY[0x1E695E118];
  }

  else if ([v3 isEqualToString:@"0"])
  {
    v4 = MEMORY[0x1E695E110];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)setIsMailDropAttachmentPresent:()MFMessageContentRequest forMessage:
{
  if (a3)
  {
    v4 = @"1";
  }

  else
  {
    v4 = @"0";
  }

  return [a1 setCachedMetadataJSON:v4 forKey:@"maild.isMailDropAttachmentPresent" messageID:a4];
}

@end