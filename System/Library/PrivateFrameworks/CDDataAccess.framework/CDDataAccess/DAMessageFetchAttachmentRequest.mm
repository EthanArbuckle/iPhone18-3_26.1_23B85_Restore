@interface DAMessageFetchAttachmentRequest
- (BOOL)isEqual:(id)equal;
- (DAMessageFetchAttachmentRequest)initWithAttachmentName:(id)name andMessageServerID:(id)d;
- (id)description;
- (unint64_t)hash;
@end

@implementation DAMessageFetchAttachmentRequest

- (DAMessageFetchAttachmentRequest)initWithAttachmentName:(id)name andMessageServerID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = DAMessageFetchAttachmentRequest;
  v8 = [(DAMessageFetchAttachmentRequest *)&v12 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    [(DAMessageFetchAttachmentRequest *)v8 setAttachmentName:v9];

    v10 = [dCopy copy];
    [(DAMessageFetchAttachmentRequest *)v8 setMessageID:v10];
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  messageID = [(DAMessageFetchAttachmentRequest *)self messageID];
  attachmentName = [(DAMessageFetchAttachmentRequest *)self attachmentName];
  v6 = [v3 initWithFormat:@"%@\n%@", messageID, attachmentName];

  v7 = [v6 hash];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    messageID = [(DAMessageFetchAttachmentRequest *)self messageID];
    messageID2 = [v6 messageID];
    if (messageID != messageID2)
    {
      messageID3 = [(DAMessageFetchAttachmentRequest *)self messageID];
      messageID4 = [v6 messageID];
      if (![messageID3 isEqual:messageID4])
      {
        v10 = 0;
LABEL_11:

LABEL_12:
        goto LABEL_13;
      }

      v16 = messageID3;
    }

    attachmentName = [(DAMessageFetchAttachmentRequest *)self attachmentName];
    attachmentName2 = [v6 attachmentName];
    if (attachmentName == attachmentName2)
    {
      v10 = 1;
    }

    else
    {
      attachmentName3 = [(DAMessageFetchAttachmentRequest *)self attachmentName];
      attachmentName4 = [v6 attachmentName];
      v10 = [attachmentName3 isEqualToString:attachmentName4];
    }

    messageID3 = v16;
    if (messageID == messageID2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = DAMessageFetchAttachmentRequest;
  v4 = [(DAMessageFetchAttachmentRequest *)&v9 description];
  messageID = [(DAMessageFetchAttachmentRequest *)self messageID];
  attachmentName = [(DAMessageFetchAttachmentRequest *)self attachmentName];
  v7 = [v3 stringWithFormat:@"%@ messageID %@, attachmentName %@", v4, messageID, attachmentName];

  return v7;
}

@end