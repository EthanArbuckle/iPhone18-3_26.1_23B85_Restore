@interface _MFAddableMessage
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)isServerSearchResult;
- (BOOL)respondsToSelector:(SEL)selector;
- (ECAngleBracketIDHash)messageIDHeaderHash;
- (ECMailbox)mailbox;
- (_MFAddableMessage)initWithLibraryMessage:(id)message messageIDHash:(int64_t)hash mailboxURL:(id)l;
- (id)bestAlternativePart:(BOOL *)part;
- (id)bestAlternativePartAsData:(BOOL *)data usingEncoding:(unint64_t)encoding;
- (int64_t)messageIDHash;
@end

@implementation _MFAddableMessage

- (_MFAddableMessage)initWithLibraryMessage:(id)message messageIDHash:(int64_t)hash mailboxURL:(id)l
{
  messageCopy = message;
  lCopy = l;
  v16.receiver = self;
  v16.super_class = _MFAddableMessage;
  v11 = [(_MFAddableMessage *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_libraryMessage, message);
    v12->_messageIDHash = hash;
    v13 = [lCopy copy];
    urlString = v12->_urlString;
    v12->_urlString = v13;
  }

  return v12;
}

- (int64_t)messageIDHash
{
  messageIDHash = self->_messageIDHash;
  if (!messageIDHash)
  {
    libraryMessage = [(_MFAddableMessage *)self libraryMessage];
    messageIDHash = [libraryMessage messageIDHash];
  }

  return messageIDHash;
}

- (ECAngleBracketIDHash)messageIDHeaderHash
{
  if (self->_messageIDHash)
  {
    messageIDHeaderHash = [objc_alloc(MEMORY[0x1E699B200]) initWithHash:self->_messageIDHash];
  }

  else
  {
    libraryMessage = [(_MFAddableMessage *)self libraryMessage];
    messageIDHeaderHash = [libraryMessage messageIDHeaderHash];
  }

  return messageIDHeaderHash;
}

- (ECMailbox)mailbox
{
  urlString = [(_MFAddableMessage *)self urlString];

  if (urlString)
  {
    urlString2 = [(_MFAddableMessage *)self urlString];
    [MailAccount mailboxUidFromActiveAccountsForURL:urlString2];
  }

  else
  {
    urlString2 = [(_MFAddableMessage *)self libraryMessage];
    [urlString2 mailbox];
  }
  v5 = ;

  return v5;
}

- (id)bestAlternativePart:(BOOL *)part
{
  libraryMessage = [(_MFAddableMessage *)self libraryMessage];
  v5 = [libraryMessage bestAlternativePart:part];

  return v5;
}

- (id)bestAlternativePartAsData:(BOOL *)data usingEncoding:(unint64_t)encoding
{
  libraryMessage = [(_MFAddableMessage *)self libraryMessage];
  v7 = [libraryMessage bestAlternativePartAsData:data usingEncoding:encoding];

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  libraryMessage = [(_MFAddableMessage *)self libraryMessage];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (BOOL)isServerSearchResult
{
  libraryMessage = [(_MFAddableMessage *)self libraryMessage];
  isServerSearchResult = [libraryMessage isServerSearchResult];

  return isServerSearchResult;
}

- (BOOL)isKindOfClass:(Class)class
{
  libraryMessage = [(_MFAddableMessage *)self libraryMessage];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end