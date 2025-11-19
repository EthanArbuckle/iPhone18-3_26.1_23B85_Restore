@interface DAMessageFetchAttachmentRequest
- (BOOL)isEqual:(id)a3;
- (DAMessageFetchAttachmentRequest)initWithAttachmentName:(id)a3 andMessageServerID:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation DAMessageFetchAttachmentRequest

- (DAMessageFetchAttachmentRequest)initWithAttachmentName:(id)a3 andMessageServerID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = DAMessageFetchAttachmentRequest;
  v8 = [(DAMessageFetchAttachmentRequest *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    [(DAMessageFetchAttachmentRequest *)v8 setAttachmentName:v9];

    v10 = [v7 copy];
    [(DAMessageFetchAttachmentRequest *)v8 setMessageID:v10];
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(DAMessageFetchAttachmentRequest *)self messageID];
  v5 = [(DAMessageFetchAttachmentRequest *)self attachmentName];
  v6 = [v3 initWithFormat:@"%@\n%@", v4, v5];

  v7 = [v6 hash];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(DAMessageFetchAttachmentRequest *)self messageID];
    v8 = [v6 messageID];
    if (v7 != v8)
    {
      v9 = [(DAMessageFetchAttachmentRequest *)self messageID];
      v3 = [v6 messageID];
      if (![v9 isEqual:v3])
      {
        v10 = 0;
LABEL_11:

LABEL_12:
        goto LABEL_13;
      }

      v16 = v9;
    }

    v11 = [(DAMessageFetchAttachmentRequest *)self attachmentName];
    v12 = [v6 attachmentName];
    if (v11 == v12)
    {
      v10 = 1;
    }

    else
    {
      v13 = [(DAMessageFetchAttachmentRequest *)self attachmentName];
      v14 = [v6 attachmentName];
      v10 = [v13 isEqualToString:v14];
    }

    v9 = v16;
    if (v7 == v8)
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
  v5 = [(DAMessageFetchAttachmentRequest *)self messageID];
  v6 = [(DAMessageFetchAttachmentRequest *)self attachmentName];
  v7 = [v3 stringWithFormat:@"%@ messageID %@, attachmentName %@", v4, v5, v6];

  return v7;
}

@end