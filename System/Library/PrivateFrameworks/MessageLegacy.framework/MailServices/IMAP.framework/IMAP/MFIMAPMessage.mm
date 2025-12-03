@interface MFIMAPMessage
- (BOOL)isMessageContentsLocallyAvailable;
- (MFIMAPMessage)initWithFlags:(unint64_t)flags customFlags:(id)customFlags size:(unint64_t)size uid:(unsigned int)uid;
- (id)_privacySafeDescription;
- (id)customFlags;
- (id)mailboxName;
- (id)messageID;
- (id)remoteID;
- (id)remoteMailboxURL;
- (int64_t)compareByNumberWithMessage:(id)message;
- (void)dealloc;
- (void)setIsPartial:(BOOL)partial;
- (void)setPreferredEncoding:(unsigned int)encoding;
@end

@implementation MFIMAPMessage

- (MFIMAPMessage)initWithFlags:(unint64_t)flags customFlags:(id)customFlags size:(unint64_t)size uid:(unsigned int)uid
{
  v13.receiver = self;
  v13.super_class = MFIMAPMessage;
  v10 = [(MFIMAPMessage *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(MFMailMessage *)v10 setMessageFlags:flags];
    v11->_size = size;
    v11->_uid = uid;
    v11->_customFlags = customFlags;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFIMAPMessage;
  [(MFMailMessage *)&v3 dealloc];
}

- (id)_privacySafeDescription
{
  v3.receiver = self;
  v3.super_class = MFIMAPMessage;
  return [-[MFMailMessage _privacySafeDescription](&v3 _privacySafeDescription)];
}

- (id)messageID
{
  v7 = *MEMORY[0x277D85DE8];
  if ((*(&self->super.super.super.isa + *MEMORY[0x277D284C0]) & 0x400000000) != 0)
  {
    v2 = "temp-";
  }

  else
  {
    v2 = "";
  }

  v3 = snprintf(__str, 0x1FuLL, "%s%u", v2, self->_uid);
  result = CFStringCreateWithBytes(0, __str, v3, 0x600u, 0);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)compareByNumberWithMessage:(id)message
{
  if (!message)
  {
    return 1;
  }

  v3 = (*(&self->super.super.super.isa + *MEMORY[0x277D284C0] + 4) & 1) + ((*(message + *MEMORY[0x277D284C0]) >> 1) >> 31);
  if (!v3)
  {
    v3 = self->_uid - *(message + 60);
  }

  v4 = v3 < 0;
  v5 = v3 != 0;
  if (v4)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

- (void)setIsPartial:(BOOL)partial
{
  v3 = 0x400000000;
  if (!partial)
  {
    v3 = 0;
  }

  *(&self->super.super.super.isa + *MEMORY[0x277D284C0]) = (*(&self->super.super.super.isa + *MEMORY[0x277D284C0]) & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (BOOL)isMessageContentsLocallyAvailable
{
  messageStore = [(MFMailMessage *)self messageStore];

  return [messageStore hasValidCacheFileForMessage:self];
}

- (void)setPreferredEncoding:(unsigned int)encoding
{
  *(&self->super.super.super.isa + *MEMORY[0x277D284C0]) = (*(&self->super.super.super.isa + *MEMORY[0x277D284C0]) & 0xFFFFFFF7FFFFFFFFLL | ((encoding != -1) << 35));
  v3.receiver = self;
  v3.super_class = MFIMAPMessage;
  [(MFIMAPMessage *)&v3 setPreferredEncoding:?];
}

- (id)customFlags
{
  v2 = self->_customFlags;

  return v2;
}

- (id)mailboxName
{
  messageStore = [(MFMailMessage *)self messageStore];

  return [messageStore mailboxName];
}

- (id)remoteID
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_uid];

  return [v2 stringValue];
}

- (id)remoteMailboxURL
{
  mailbox = [(MFMailMessage *)self mailbox];

  return [(MFMailboxUid *)mailbox URLString];
}

@end