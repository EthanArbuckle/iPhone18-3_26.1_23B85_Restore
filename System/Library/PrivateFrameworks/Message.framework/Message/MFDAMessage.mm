@interface MFDAMessage
- (BOOL)messageData:(id *)a3 messageSize:(unint64_t *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6;
- (BOOL)messageDataHolder:(id *)a3 messageSize:(unint64_t *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6;
- (MFDAMessage)initWithDAMailMessage:(id)a3 mailbox:(id)a4;
- (id)remoteMailboxURL;
- (unint64_t)messageFlags;
- (unint64_t)messageSize;
@end

@implementation MFDAMessage

- (MFDAMessage)initWithDAMailMessage:(id)a3 mailbox:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = MFDAMessage;
  v9 = [(MFDAMessage *)&v19 init];
  if (v9)
  {
    v10 = [v7 rfc822Data];
    v11 = [(MFMessage *)MFMailMessage messageWithRFC822Data:v10];
    rfc822CreatedMessage = v9->_rfc822CreatedMessage;
    v9->_rfc822CreatedMessage = v11;

    objc_storeStrong(&v9->_DAMailMessage, a3);
    objc_storeStrong(&v9->_mailbox, a4);
    v13 = MFCreateExternalConversationID(v9->_DAMailMessage);
    externalConversationID = v9->_externalConversationID;
    v9->_externalConversationID = v13;

    v15 = MFLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [(MFDAMessage *)v9 subject];
      *buf = 138412290;
      v21 = v16;
      _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_INFO, "#Power [New Message] subject=%@;", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

- (unint64_t)messageFlags
{
  v14.receiver = self;
  v14.super_class = MFDAMessage;
  v3 = [(MFMailMessage *)&v14 messageFlags];
  v4 = v3 | [self->_DAMailMessage read];
  if ([self->_DAMailMessage flagged])
  {
    v4 |= 0x10uLL;
  }

  v5 = [self->_DAMailMessage lastVerb];
  v6 = v4 | 4;
  if (v5 == 1)
  {
    v7 = v4 | 4;
  }

  else
  {
    v7 = v4;
  }

  if (v5 != 2)
  {
    v6 = v7;
  }

  if (v5 == 3)
  {
    v8 = v4 | 0x100;
  }

  else
  {
    v8 = v6;
  }

  v9 = [self->_DAMailMessage attachments];
  v10 = [v9 count];

  v11 = [self->_DAMailMessage meetingRequestUUID];

  if (v11)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v10;
  }

  return v8 & 0xFFFFFFFFFFFF03FFLL | ((v12 & 0x3F) << 10);
}

- (BOOL)messageData:(id *)a3 messageSize:(unint64_t *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

- (BOOL)messageDataHolder:(id *)a3 messageSize:(unint64_t *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

- (id)remoteMailboxURL
{
  v2 = [(MFDAMessage *)self mailbox];
  v3 = [v2 URLString];

  return v3;
}

- (unint64_t)messageSize
{
  v3 = [self->_DAMailMessage bodySize];
  v4 = [self->_DAMailMessage attachments];
  v5 = [v4 valueForKeyPath:@"@sum.size"];
  v6 = [v5 intValue] + v3;

  return v6;
}

@end