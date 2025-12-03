@interface MFDAMessage
- (BOOL)messageData:(id *)data messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary;
- (BOOL)messageDataHolder:(id *)holder messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary;
- (MFDAMessage)initWithDAMailMessage:(id)message mailbox:(id)mailbox;
- (id)remoteMailboxURL;
- (unint64_t)messageFlags;
- (unint64_t)messageSize;
@end

@implementation MFDAMessage

- (MFDAMessage)initWithDAMailMessage:(id)message mailbox:(id)mailbox
{
  v22 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  mailboxCopy = mailbox;
  v19.receiver = self;
  v19.super_class = MFDAMessage;
  v9 = [(MFDAMessage *)&v19 init];
  if (v9)
  {
    rfc822Data = [messageCopy rfc822Data];
    v11 = [(MFMessage *)MFMailMessage messageWithRFC822Data:rfc822Data];
    rfc822CreatedMessage = v9->_rfc822CreatedMessage;
    v9->_rfc822CreatedMessage = v11;

    objc_storeStrong(&v9->_DAMailMessage, message);
    objc_storeStrong(&v9->_mailbox, mailbox);
    v13 = MFCreateExternalConversationID(v9->_DAMailMessage);
    externalConversationID = v9->_externalConversationID;
    v9->_externalConversationID = v13;

    v15 = MFLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      subject = [(MFDAMessage *)v9 subject];
      *buf = 138412290;
      v21 = subject;
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
  messageFlags = [(MFMailMessage *)&v14 messageFlags];
  v4 = messageFlags | [self->_DAMailMessage read];
  if ([self->_DAMailMessage flagged])
  {
    v4 |= 0x10uLL;
  }

  lastVerb = [self->_DAMailMessage lastVerb];
  v6 = v4 | 4;
  if (lastVerb == 1)
  {
    v7 = v4 | 4;
  }

  else
  {
    v7 = v4;
  }

  if (lastVerb != 2)
  {
    v6 = v7;
  }

  if (lastVerb == 3)
  {
    v8 = v4 | 0x100;
  }

  else
  {
    v8 = v6;
  }

  attachments = [self->_DAMailMessage attachments];
  v10 = [attachments count];

  meetingRequestUUID = [self->_DAMailMessage meetingRequestUUID];

  if (meetingRequestUUID)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v10;
  }

  return v8 & 0xFFFFFFFFFFFF03FFLL | ((v12 & 0x3F) << 10);
}

- (BOOL)messageData:(id *)data messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary
{
  if (data)
  {
    *data = 0;
  }

  if (size)
  {
    *size = 0;
  }

  return 0;
}

- (BOOL)messageDataHolder:(id *)holder messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary
{
  if (holder)
  {
    *holder = 0;
  }

  if (size)
  {
    *size = 0;
  }

  return 0;
}

- (id)remoteMailboxURL
{
  mailbox = [(MFDAMessage *)self mailbox];
  uRLString = [mailbox URLString];

  return uRLString;
}

- (unint64_t)messageSize
{
  bodySize = [self->_DAMailMessage bodySize];
  attachments = [self->_DAMailMessage attachments];
  v5 = [attachments valueForKeyPath:@"@sum.size"];
  v6 = [v5 intValue] + bodySize;

  return v6;
}

@end