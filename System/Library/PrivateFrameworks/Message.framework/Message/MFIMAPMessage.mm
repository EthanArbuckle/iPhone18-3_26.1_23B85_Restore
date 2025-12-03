@interface MFIMAPMessage
- (MFIMAPMessage)initWithFlags:(unint64_t)flags size:(unint64_t)size uid:(unsigned int)uid;
- (id)_privacySafeDescription;
- (id)messageID;
- (id)remoteID;
- (id)remoteMailboxURL;
- (void)setIsPartial:(BOOL)partial;
- (void)setPreferredEncoding:(unsigned int)encoding;
@end

@implementation MFIMAPMessage

- (MFIMAPMessage)initWithFlags:(unint64_t)flags size:(unint64_t)size uid:(unsigned int)uid
{
  v11.receiver = self;
  v11.super_class = MFIMAPMessage;
  v8 = [(MFIMAPMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MFMailMessage *)v8 setMessageFlags:flags];
    v9->_size = size;
    v9->_uid = uid;
  }

  return v9;
}

- (id)_privacySafeDescription
{
  v7.receiver = self;
  v7.super_class = MFIMAPMessage;
  _privacySafeDescription = [(MFIMAPMessage *)&v7 _privacySafeDescription];
  remoteID = [(MFIMAPMessage *)self remoteID];
  v5 = [_privacySafeDescription stringByAppendingFormat:@" remoteID:%@", remoteID];

  return v5;
}

- (id)messageID
{
  v10 = *MEMORY[0x1E69E9840];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v2;
  v9 = v2;
  if ((self->super._messageFlags & 0x400000000) != 0)
  {
    v3 = "temp-";
  }

  else
  {
    v3 = "";
  }

  v4 = snprintf(__str, 0x1FuLL, "%s%u", v3, self->_uid);
  v5 = CFStringCreateWithBytes(0, __str, v4, 0x600u, 0);
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setIsPartial:(BOOL)partial
{
  v3 = 0x400000000;
  if (!partial)
  {
    v3 = 0;
  }

  self->super._messageFlags = self->super._messageFlags & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setPreferredEncoding:(unsigned int)encoding
{
  self->super._messageFlags = self->super._messageFlags & 0xFFFFFFF7FFFFFFFFLL | ((encoding != -1) << 35);
  v3.receiver = self;
  v3.super_class = MFIMAPMessage;
  [(MFIMAPMessage *)&v3 setPreferredEncoding:?];
}

- (id)remoteID
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_uid];
  stringValue = [v2 stringValue];

  return stringValue;
}

- (id)remoteMailboxURL
{
  mailbox = [(MFMailMessage *)self mailbox];
  uRLString = [mailbox URLString];

  return uRLString;
}

@end