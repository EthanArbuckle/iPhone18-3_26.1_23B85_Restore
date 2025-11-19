@interface ASMailMessage
- (ASMailMessage)initWithASEmailItem:(id)a3;
- (ASMailMessage)initWithCoder:(id)a3;
- (id)description;
- (id)rfc822Data;
- (int)bodySize;
- (int)smimeType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASMailMessage

- (ASMailMessage)initWithASEmailItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASMailMessage;
  v6 = [(ASMailMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ASEmailItem, a3);
  }

  return v7;
}

- (id)description
{
  v26 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v25 = NSStringFromClass(v3);
  v24 = [self->_ASEmailItem to];
  v23 = [self->_ASEmailItem cc];
  v29 = [self->_ASEmailItem from];
  v22 = [self->_ASEmailItem replyTo];
  v21 = [self->_ASEmailItem date];
  v28 = [self->_ASEmailItem subject];
  v20 = [self->_ASEmailItem displayTo];
  v19 = [self->_ASEmailItem importance];
  v18 = [self->_ASEmailItem read];
  v17 = [self->_ASEmailItem flagged];
  v16 = [self->_ASEmailItem bodySize];
  v15 = [self->_ASEmailItem bodyTruncated];
  v4 = [self->_ASEmailItem messageClass];
  v14 = [(ASMailMessage *)self smimeType];
  v5 = [self->_ASEmailItem body];
  v6 = [self->_ASEmailItem attachments];
  v7 = [self->_ASEmailItem meetingRequestUUID];
  if ([(ASMailMessage *)self meetingRequestIsActionable])
  {
    v8 = &stru_285D39BD0;
  }

  else
  {
    v8 = @"NOT ";
  }

  v9 = [self->_ASEmailItem threadTopic];
  v10 = [self->_ASEmailItem longID];
  v11 = [self->_ASEmailItem conversationId];
  v12 = [self->_ASEmailItem conversationIndex];
  v27 = [v26 stringWithFormat:@"<%@: To: %@\nCc: %@\nFrom: %@\nReplyTo: %@\nDate: %@\nSubject: %@\nDisplayTo: %@\nImportance %d\nRead %x\nFlagged %x\nBody Size %d\nBodyTruncated %x\nMessage Class %@\nSMIMEType %d\nBody %@\nAttachments %@\nMeeting Request UUID%@ (is %@actionable)\nThread Topic %@\nLongID %@\nConversationID %@\nConversation Index %@>", v25, v24, v23, v29, v22, v21, v28, v20, v19, v18, v17, v16, v15, v4, v14, v5, v6, v7, v8, v9, v10, v11, v12];

  return v27;
}

- (int)bodySize
{
  if ([(ASMailMessage *)self bodyTruncated])
  {
    ASEmailItem = self->_ASEmailItem;

    return [ASEmailItem bodySize];
  }

  else
  {
    v5 = [(ASMailMessage *)self body];
    v6 = [v5 dataUsingEncoding:4];
    v7 = [v6 length];

    return v7;
  }
}

- (int)smimeType
{
  v2 = [self->_ASEmailItem messageClass];
  if ([v2 compare:@"IPM.Note.SMIME" options:1])
  {
    v3 = [v2 compare:@"IPM.Note.SMIME.MultipartSigned" options:1] == 0;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (id)rfc822Data
{
  v3 = [self->_ASEmailItem mimeData];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 dataUsingEncoding:4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ASMailMessage;
    v5 = [(DAMailMessage *)&v8 rfc822Data];
  }

  v6 = v5;

  return v6;
}

- (ASMailMessage)initWithCoder:(id)a3
{
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    [(ASMailMessage *)a2 initWithCoder:?];
  }

  v10.receiver = self;
  v10.super_class = ASMailMessage;
  v6 = [(ASMailMessage *)&v10 init];
  if (v6)
  {
    v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASMMEmailItem"];
    ASEmailItem = v6->_ASEmailItem;
    v6->_ASEmailItem = v7;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    [(ASMailMessage *)a2 encodeWithCoder:?];
  }

  [v5 encodeObject:self->_ASEmailItem forKey:@"ASMMEmailItem"];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASMailMessage.m" lineNumber:107 description:@"We can't unarchive an email if the coder doesn't allow keyed coding"];
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASMailMessage.m" lineNumber:116 description:@"We can't archive an email if the coder doesn't allow keyed coding"];
}

@end