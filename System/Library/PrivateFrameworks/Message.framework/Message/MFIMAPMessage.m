@interface MFIMAPMessage
- (MFIMAPMessage)initWithFlags:(unint64_t)a3 size:(unint64_t)a4 uid:(unsigned int)a5;
- (id)_privacySafeDescription;
- (id)messageID;
- (id)remoteID;
- (id)remoteMailboxURL;
- (void)setIsPartial:(BOOL)a3;
- (void)setPreferredEncoding:(unsigned int)a3;
@end

@implementation MFIMAPMessage

- (MFIMAPMessage)initWithFlags:(unint64_t)a3 size:(unint64_t)a4 uid:(unsigned int)a5
{
  v11.receiver = self;
  v11.super_class = MFIMAPMessage;
  v8 = [(MFIMAPMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MFMailMessage *)v8 setMessageFlags:a3];
    v9->_size = a4;
    v9->_uid = a5;
  }

  return v9;
}

- (id)_privacySafeDescription
{
  v7.receiver = self;
  v7.super_class = MFIMAPMessage;
  v3 = [(MFIMAPMessage *)&v7 _privacySafeDescription];
  v4 = [(MFIMAPMessage *)self remoteID];
  v5 = [v3 stringByAppendingFormat:@" remoteID:%@", v4];

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

- (void)setIsPartial:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->super._messageFlags = self->super._messageFlags & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setPreferredEncoding:(unsigned int)a3
{
  self->super._messageFlags = self->super._messageFlags & 0xFFFFFFF7FFFFFFFFLL | ((a3 != -1) << 35);
  v3.receiver = self;
  v3.super_class = MFIMAPMessage;
  [(MFIMAPMessage *)&v3 setPreferredEncoding:?];
}

- (id)remoteID
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_uid];
  v3 = [v2 stringValue];

  return v3;
}

- (id)remoteMailboxURL
{
  v2 = [(MFMailMessage *)self mailbox];
  v3 = [v2 URLString];

  return v3;
}

@end