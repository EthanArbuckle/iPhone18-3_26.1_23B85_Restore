@interface MFMessageDetails
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyMessageInfo;
- (void)dealloc;
@end

@implementation MFMessageDetails

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFMessageDetails;
  [(MFMessageDetails *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@:%p libraryID=%u uid=%u flags=0x%x>", NSStringFromClass(v4), self, self->libraryID, self->uid, self->messageFlags];
}

- (BOOL)isEqual:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    libraryID = self->libraryID;
    return libraryID == [a3 libraryID];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MFMessageDetails;
    return [(MFMessageDetails *)&v7 isEqual:a3];
  }
}

- (id)copyMessageInfo
{
  v15 = [MFMessageInfo alloc];
  libraryID = self->libraryID;
  mailboxID = self->mailboxID;
  dateReceived = self->dateReceived;
  dateSent = self->dateSent;
  conversationHash = self->conversationHash;
  messageIDHash = self->messageIDHash;
  v9 = [(MFMessageDetails *)self read];
  v10 = [(MFMessageDetails *)self isKnownToHaveAttachments];
  v11 = [(MFMessageDetails *)self flagged];
  BYTE3(v14) = [(MFMessageDetails *)self senderVIP];
  BYTE2(v14) = v11;
  BYTE1(v14) = v10;
  LOBYTE(v14) = v9;
  v12 = [MFMessageInfo initWithUid:v15 mailboxID:"initWithUid:mailboxID:messageID:dateReceivedInterval:dateSentInterval:conversationHash:read:knownToHaveAttachments:flagged:isVIP:" messageID:libraryID dateReceivedInterval:mailboxID dateSentInterval:messageIDHash conversationHash:dateReceived read:dateSent knownToHaveAttachments:conversationHash flagged:v14 isVIP:?];
  [(MFMessageInfo *)v12 setUidIsLibraryID:1];
  return v12;
}

@end