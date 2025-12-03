@interface ASMailMessage
- (ASMailMessage)initWithASEmailItem:(id)item;
- (ASMailMessage)initWithCoder:(id)coder;
- (id)description;
- (id)rfc822Data;
- (int)bodySize;
- (int)smimeType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASMailMessage

- (ASMailMessage)initWithASEmailItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = ASMailMessage;
  v6 = [(ASMailMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ASEmailItem, item);
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
  from = [self->_ASEmailItem from];
  replyTo = [self->_ASEmailItem replyTo];
  date = [self->_ASEmailItem date];
  subject = [self->_ASEmailItem subject];
  displayTo = [self->_ASEmailItem displayTo];
  importance = [self->_ASEmailItem importance];
  read = [self->_ASEmailItem read];
  flagged = [self->_ASEmailItem flagged];
  bodySize = [self->_ASEmailItem bodySize];
  bodyTruncated = [self->_ASEmailItem bodyTruncated];
  messageClass = [self->_ASEmailItem messageClass];
  smimeType = [(ASMailMessage *)self smimeType];
  body = [self->_ASEmailItem body];
  attachments = [self->_ASEmailItem attachments];
  meetingRequestUUID = [self->_ASEmailItem meetingRequestUUID];
  if ([(ASMailMessage *)self meetingRequestIsActionable])
  {
    v8 = &stru_285D39BD0;
  }

  else
  {
    v8 = @"NOT ";
  }

  threadTopic = [self->_ASEmailItem threadTopic];
  longID = [self->_ASEmailItem longID];
  conversationId = [self->_ASEmailItem conversationId];
  conversationIndex = [self->_ASEmailItem conversationIndex];
  v27 = [v26 stringWithFormat:@"<%@: To: %@\nCc: %@\nFrom: %@\nReplyTo: %@\nDate: %@\nSubject: %@\nDisplayTo: %@\nImportance %d\nRead %x\nFlagged %x\nBody Size %d\nBodyTruncated %x\nMessage Class %@\nSMIMEType %d\nBody %@\nAttachments %@\nMeeting Request UUID%@ (is %@actionable)\nThread Topic %@\nLongID %@\nConversationID %@\nConversation Index %@>", v25, v24, v23, from, replyTo, date, subject, displayTo, importance, read, flagged, bodySize, bodyTruncated, messageClass, smimeType, body, attachments, meetingRequestUUID, v8, threadTopic, longID, conversationId, conversationIndex];

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
    body = [(ASMailMessage *)self body];
    v6 = [body dataUsingEncoding:4];
    v7 = [v6 length];

    return v7;
  }
}

- (int)smimeType
{
  messageClass = [self->_ASEmailItem messageClass];
  if ([messageClass compare:@"IPM.Note.SMIME" options:1])
  {
    v3 = [messageClass compare:@"IPM.Note.SMIME.MultipartSigned" options:1] == 0;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (id)rfc822Data
{
  mimeData = [self->_ASEmailItem mimeData];
  v4 = mimeData;
  if (mimeData)
  {
    rfc822Data = [mimeData dataUsingEncoding:4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ASMailMessage;
    rfc822Data = [(DAMailMessage *)&v8 rfc822Data];
  }

  v6 = rfc822Data;

  return v6;
}

- (ASMailMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [(ASMailMessage *)a2 initWithCoder:?];
  }

  v10.receiver = self;
  v10.super_class = ASMailMessage;
  v6 = [(ASMailMessage *)&v10 init];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASMMEmailItem"];
    ASEmailItem = v6->_ASEmailItem;
    v6->_ASEmailItem = v7;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [(ASMailMessage *)a2 encodeWithCoder:?];
  }

  [coderCopy encodeObject:self->_ASEmailItem forKey:@"ASMMEmailItem"];
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