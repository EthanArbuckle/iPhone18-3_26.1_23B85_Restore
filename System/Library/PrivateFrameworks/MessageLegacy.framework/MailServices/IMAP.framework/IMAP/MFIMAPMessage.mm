@interface MFIMAPMessage
- (BOOL)isMessageContentsLocallyAvailable;
- (MFIMAPMessage)initWithFlags:(unint64_t)a3 customFlags:(id)a4 size:(unint64_t)a5 uid:(unsigned int)a6;
- (id)_privacySafeDescription;
- (id)customFlags;
- (id)mailboxName;
- (id)messageID;
- (id)remoteID;
- (id)remoteMailboxURL;
- (int64_t)compareByNumberWithMessage:(id)a3;
- (void)dealloc;
- (void)setIsPartial:(BOOL)a3;
- (void)setPreferredEncoding:(unsigned int)a3;
@end

@implementation MFIMAPMessage

- (MFIMAPMessage)initWithFlags:(unint64_t)a3 customFlags:(id)a4 size:(unint64_t)a5 uid:(unsigned int)a6
{
  v13.receiver = self;
  v13.super_class = MFIMAPMessage;
  v10 = [(MFIMAPMessage *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(MFMailMessage *)v10 setMessageFlags:a3];
    v11->_size = a5;
    v11->_uid = a6;
    v11->_customFlags = a4;
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

- (int64_t)compareByNumberWithMessage:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v3 = (*(&self->super.super.super.isa + *MEMORY[0x277D284C0] + 4) & 1) + ((*(a3 + *MEMORY[0x277D284C0]) >> 1) >> 31);
  if (!v3)
  {
    v3 = self->_uid - *(a3 + 60);
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

- (void)setIsPartial:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->super.super.super.isa + *MEMORY[0x277D284C0]) = (*(&self->super.super.super.isa + *MEMORY[0x277D284C0]) & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (BOOL)isMessageContentsLocallyAvailable
{
  v3 = [(MFMailMessage *)self messageStore];

  return [v3 hasValidCacheFileForMessage:self];
}

- (void)setPreferredEncoding:(unsigned int)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277D284C0]) = (*(&self->super.super.super.isa + *MEMORY[0x277D284C0]) & 0xFFFFFFF7FFFFFFFFLL | ((a3 != -1) << 35));
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
  v2 = [(MFMailMessage *)self messageStore];

  return [v2 mailboxName];
}

- (id)remoteID
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_uid];

  return [v2 stringValue];
}

- (id)remoteMailboxURL
{
  v2 = [(MFMailMessage *)self mailbox];

  return [(MFMailboxUid *)v2 URLString];
}

@end