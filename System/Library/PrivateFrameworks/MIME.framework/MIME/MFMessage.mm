@interface MFMessage
+ (id)messageWithRFC822Data:(id)data;
+ (id)messageWithRFC822Data:(id)data forMailboxUID:(id)d;
+ (id)messageWithRFC822Data:(id)data withParentPart:(id)part;
+ (id)messageWithRFC822Data:(id)data withParentPart:(id)part generateMessageIDHash:(BOOL)hash;
+ (void)setMessageClassForStore:(id)store;
- (BOOL)_doesDateAppearToBeSane:(id)sane;
- (BOOL)canBeTriaged;
- (BOOL)fetchDataForMimePart:(id)part inRange:(_NSRange)range withConsumer:(id)consumer isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary;
- (BOOL)isMessageContentsLocallyAvailable;
- (BOOL)messageData:(id *)data messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary;
- (BOOL)messageDataHolder:(id *)holder messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary;
- (BOOL)strongParentPart;
- (BOOL)updateSubjectFromEncryptedContent;
- (ECAngleBracketIDHash)listIDHash;
- (ECSubject)subject;
- (ECSubject)subjectIfAvailable;
- (MFMessage)init;
- (MFMessageHeaders)headersIfAvailable;
- (MFMessageStore)messageStore;
- (MFMimePart)parentPart;
- (NSArray)bcc;
- (NSArray)bccIfCached;
- (NSArray)cc;
- (NSArray)ccIfCached;
- (NSArray)to;
- (NSArray)toIfCached;
- (NSDate)dateReceived;
- (NSDate)dateSent;
- (NSString)ef_publicDescription;
- (NSString)externalID;
- (NSString)summary;
- (NSURL)externalReference;
- (NSUUID)documentID;
- (double)dateReceivedAsTimeIntervalSince1970;
- (double)dateSentAsTimeIntervalSince1970;
- (id)_copyDateFromDateHeaderInHeaders:(id)headers;
- (id)_copyDateFromReceivedHeadersInHeaders:(id)headers;
- (id)_privacySafeDescription;
- (id)bestAlternativeInPart:(id)part;
- (id)bodyData;
- (id)bodyDataIsComplete:(BOOL *)complete isPartial:(BOOL *)partial downloadIfNecessary:(BOOL)necessary;
- (id)contentType;
- (id)dataForMimePart:(id)part;
- (id)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete;
- (id)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download;
- (id)defaultAlternativeInPart:(id)part;
- (id)firstSender;
- (id)headerDataDownloadIfNecessary:(BOOL)necessary;
- (id)headers;
- (id)messageBody;
- (id)messageBodyIfAvailable;
- (id)messageDataIsPartial:(BOOL *)partial;
- (id)messageIDHeader;
- (id)messageIDHeaderHash;
- (id)messageIDHeaderInFortyBytesOrLess;
- (id)messageURL;
- (id)senderAddressComment;
- (id)sendersIfCached;
- (id)sendersWithError:(id *)error;
- (id)uniqueArray:(id)array withStore:(id)store;
- (int64_t)_messageIDHeaderHashIvar;
- (int64_t)conversationID;
- (int64_t)generationCompare:(id)compare;
- (int64_t)messageIDHash;
- (unint64_t)messageSize;
- (void)_setDateReceivedFromHeaders:(id)headers;
- (void)_setDateSentFromHeaders:(id)headers;
- (void)calculateAttachmentInfoFromBody:(id)body;
- (void)loadCachedHeaderValuesFromHeaders:(id)headers;
- (void)setBcc:(id)bcc;
- (void)setCc:(id)cc;
- (void)setContentType:(id)type;
- (void)setConversationID:(int64_t)d;
- (void)setDateReceivedAsTimeIntervalSince1970:(double)since1970;
- (void)setDateSentAsTimeIntervalSince1970:(double)since1970;
- (void)setDocumentID:(id)d;
- (void)setExternalID:(id)d;
- (void)setListIDHash:(id)hash;
- (void)setMessageIDHash:(int64_t)hash;
- (void)setMessageIDHeader:(id)header;
- (void)setMessageInfo:(id)info to:(id)to cc:(id)cc bcc:(id)bcc sender:(id)sender dateReceivedTimeIntervalSince1970:(double)since1970 dateSentTimeIntervalSince1970:(double)intervalSince1970 messageIDHash:(int64_t)self0 conversationID:(int64_t)self1 summary:(id)self2;
- (void)setMessagePropertiesFromMessage:(id)message;
- (void)setMessageStore:(id)store;
- (void)setMessageURL:(id)l;
- (void)setParentPart:(id)part;
- (void)setPreferredEncoding:(unsigned int)encoding;
- (void)setSender:(id)sender;
- (void)setStrongParentPart:(BOOL)part;
- (void)setSubject:(id)subject;
- (void)setSubject:(id)subject to:(id)to cc:(id)cc bcc:(id)bcc sender:(id)sender dateReceived:(double)received dateSent:(double)sent summary:(id)self0 withOptions:(unsigned int)self1;
- (void)setTo:(id)to;
- (void)updateSubjectFromEncryptedContent;
@end

@implementation MFMessage

- (MFMessage)init
{
  v3.receiver = self;
  v3.super_class = MFMessage;
  result = [(MFMessage *)&v3 init];
  if (result)
  {
    result->_preferredEncoding = -1;
    atomic_store(0, &result->_generationNumber);
    result->_ivarLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (MFMessageStore)messageStore
{
  _MFLockGlobalLock();
  v3 = self->_store;
  _MFUnlockGlobalLock();

  return v3;
}

+ (id)messageWithRFC822Data:(id)data
{
  v3 = [self messageWithRFC822Data:data withParentPart:0];

  return v3;
}

+ (id)messageWithRFC822Data:(id)data withParentPart:(id)part
{
  v4 = [self messageWithRFC822Data:data withParentPart:part generateMessageIDHash:0];

  return v4;
}

+ (id)messageWithRFC822Data:(id)data forMailboxUID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v8 = [objc_alloc(objc_msgSend(self "dataMessageStoreToUse"))];
  [v8 setMailboxUid:dCopy];
  [self setMessageClassForStore:v8];
  message = [v8 message];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v12 = MEMORY[0x1E695DFF8];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@", @"x-attach-RFC822", uUIDString];
  v14 = [v12 URLWithString:v13];
  [message setMessageURL:v14];

  return message;
}

+ (id)messageWithRFC822Data:(id)data withParentPart:(id)part generateMessageIDHash:(BOOL)hash
{
  hashCopy = hash;
  dataCopy = data;
  partCopy = part;
  v10 = [objc_alloc(objc_msgSend(self "dataMessageStoreToUse"))];
  [self setMessageClassForStore:v10];
  message = [v10 message];
  [message setParentPart:partCopy];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v14 = MEMORY[0x1E695DFF8];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@", @"x-attach-RFC822", uUIDString];
  v16 = [v14 URLWithString:v15];
  [message setMessageURL:v16];

  if (hashCopy && ![message messageIDHash])
  {
    headers = [message headers];
    [message setMessageIDHash:{MFMessageIDHashFromHeaders(headers, 1)}];
  }

  headers2 = [message headers];
  v19 = [headers2 firstHeaderForKey:*MEMORY[0x1E699B1C0]];

  if (v19)
  {
    v20 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v19];
    [message setDocumentID:v20];
  }

  return message;
}

+ (void)setMessageClassForStore:(id)store
{
  storeCopy = store;
  [storeCopy setMessageClass:objc_opt_class()];
}

- (BOOL)strongParentPart
{
  strongParentPartReference = [(MFMessage *)self strongParentPartReference];
  v3 = strongParentPartReference != 0;

  return v3;
}

- (void)setStrongParentPart:(BOOL)part
{
  partCopy = part;
  if (part)
  {
    parentPart = [(MFMessage *)self parentPart];
  }

  else
  {
    parentPart = 0;
  }

  v6 = parentPart;
  [(MFMessage *)self setStrongParentPartReference:parentPart];
  if (partCopy)
  {
  }
}

- (void)setParentPart:(id)part
{
  objc_storeWeak(&self->_parentPart, part);

  [(MFMessage *)self setStrongParentPart:part != 0];
}

- (id)_privacySafeDescription
{
  _MFLockGlobalLock();
  LODWORD(v3) = self->_dateReceivedInterval;
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v3];
  messageIDHeaderHash = self->_messageIDHeaderHash;
  _MFUnlockGlobalLock();
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  [(MFMessage *)self conversationID];
  v8 = EFStringWithInt64();
  v9 = EFStringWithInt64();
  v10 = [v6 stringWithFormat:@"<%@ %p> ConversationID:%@ messageID:%@ received:%@", v7, self, v8, v9, v4];

  return v10;
}

- (NSString)ef_publicDescription
{
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    [(MFMessage *)self description];
  }

  else
  {
    [(MFMessage *)self _privacySafeDescription];
  }
  v5 = ;

  return v5;
}

- (void)setMessageStore:(id)store
{
  storeCopy = store;
  _MFLockGlobalLock();
  v5 = self->_store;
  objc_storeStrong(&self->_store, store);
  _MFUnlockGlobalLock();
}

- (id)headers
{
  messageStore = [(MFMessage *)self messageStore];
  v4 = [messageStore headersForMessage:self fetchIfNotAvailable:_ECIsNetworkActivityAllowed()];

  return v4;
}

- (MFMessageHeaders)headersIfAvailable
{
  messageStore = [(MFMessage *)self messageStore];
  v4 = [messageStore headersForMessage:self fetchIfNotAvailable:0];

  return v4;
}

- (id)messageBody
{
  messageStore = [(MFMessage *)self messageStore];
  v4 = [messageStore bodyForMessage:self fetchIfNotAvailable:_ECIsNetworkActivityAllowed() updateFlags:1];

  return v4;
}

- (id)messageBodyIfAvailable
{
  messageStore = [(MFMessage *)self messageStore];
  v4 = [messageStore bodyForMessage:self fetchIfNotAvailable:0 updateFlags:1];

  return v4;
}

- (BOOL)messageData:(id *)data messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if (data)
  {
    *data = 0;
  }

  if (size)
  {
    *size = 0;
  }

  messageStore = [(MFMessage *)self messageStore];
  v24 = 0;
  if (necessaryCopy)
  {
    v12 = _ECIsNetworkActivityAllowed();
  }

  else
  {
    v12 = 0;
  }

  v13 = [messageStore fullBodyDataForMessage:self andHeaderDataIfReadilyAvailable:&v24 isComplete:complete downloadIfNecessary:v12 didDownload:0];
  v14 = v24;
  if (!v14)
  {
    if (necessaryCopy)
    {
      v15 = _ECIsNetworkActivityAllowed();
    }

    else
    {
      v15 = 0;
    }

    v14 = [messageStore headerDataForMessage:self downloadIfNecessary:v15];
  }

  v16 = v14;
  if (v14)
  {
    v17 = v13 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (!v17)
  {
    v19 = [v14 length];
    v20 = [v13 length] + v19;
    if (size)
    {
      *size = v20;
    }

    if (data)
    {
      v21 = [MFMutableData dataWithCapacity:v20];
      [v21 appendData:v16];
      [v21 appendData:v13];
      [v21 mf_makeImmutable];
      v22 = v21;
      *data = v21;
    }
  }

  return v18;
}

- (id)messageDataIsPartial:(BOOL *)partial
{
  messageStore = [(MFMessage *)self messageStore];
  v6 = [messageStore bodyDataForMessage:self isComplete:0 isPartial:partial downloadIfNecessary:0];

  if (v6)
  {
    messageStore2 = [(MFMessage *)self messageStore];
    v8 = [messageStore2 headerDataForMessage:self downloadIfNecessary:0];

    if (v8)
    {
      v9 = +[MFMutableData dataWithCapacity:](MFMutableData, "dataWithCapacity:", [v8 length] + objc_msgSend(v6, "length"));
      [v9 appendData:v8];
      [v9 appendData:v6];
      [v9 mf_makeImmutable];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)messageDataHolder:(id *)holder messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if (holder)
  {
    *holder = 0;
  }

  if (size)
  {
    *size = 0;
  }

  messageStore = [(MFMessage *)self messageStore];
  v24 = 0;
  if (necessaryCopy)
  {
    v12 = _ECIsNetworkActivityAllowed();
  }

  else
  {
    v12 = 0;
  }

  v13 = [messageStore fullBodyDataForMessage:self andHeaderDataIfReadilyAvailable:&v24 isComplete:complete downloadIfNecessary:v12 didDownload:0];
  v14 = v24;
  if (!v14)
  {
    if (necessaryCopy)
    {
      v15 = _ECIsNetworkActivityAllowed();
    }

    else
    {
      v15 = 0;
    }

    v14 = [messageStore headerDataForMessage:self downloadIfNecessary:v15];
  }

  v16 = v14;
  if (v14)
  {
    v17 = v13 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (!v17)
  {
    v19 = [v14 length];
    v20 = [v13 length];
    if (size)
    {
      *size = v20 + v19;
    }

    if (holder)
    {
      v21 = [MFDataHolder dataHolderWithData:v16];
      [v21 addData:v13];
      v22 = v21;
      *holder = v21;
    }
  }

  return v18;
}

- (unint64_t)messageSize
{
  v3 = 0;
  [(MFMessage *)self messageData:0 messageSize:&v3 isComplete:0 downloadIfNecessary:1];
  return v3;
}

- (void)setMessageURL:(id)l
{
  lCopy = l;
  os_unfair_lock_lock(&self->_ivarLock);
  messageURL = self->_messageURL;
  self->_messageURL = lCopy;

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (id)messageURL
{
  parentPart = [(MFMessage *)self parentPart];
  attachmentURLs = [parentPart attachmentURLs];
  lastObject = [attachmentURLs lastObject];

  os_unfair_lock_lock(&self->_ivarLock);
  messageURL = self->_messageURL;
  if (!messageURL)
  {
    if (!lastObject)
    {
      os_unfair_lock_unlock(&self->_ivarLock);
      v7 = MEMORY[0x1E695DFF8];
      v8 = MEMORY[0x1E696AEC0];
      messageID = [(MFMessage *)self messageID];
      v10 = [v8 stringWithFormat:@"x-attach://%@", messageID];
      lastObject = [v7 URLWithString:v10];

      os_unfair_lock_lock(&self->_ivarLock);
    }

    objc_storeStrong(&self->_messageURL, lastObject);
    messageURL = self->_messageURL;
  }

  v11 = messageURL;
  os_unfair_lock_unlock(&self->_ivarLock);

  return v11;
}

- (int64_t)messageIDHash
{
  _MFLockGlobalLock();
  messageIDHeaderHash = self->_messageIDHeaderHash;
  if (messageIDHeaderHash)
  {
    if (messageIDHeaderHash == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 0;
    }

    else
    {
      v4 = self->_messageIDHeaderHash;
    }
  }

  else
  {
    _MFUnlockGlobalLock();
    if (![(MFMessage *)self isMessageContentsLocallyAvailable])
    {
      return 0;
    }

    headers = [(MFMessage *)self headers];
    [(MFMessage *)self loadCachedHeaderValuesFromHeaders:headers];

    _MFLockGlobalLock();
    if (self->_messageIDHeaderHash == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 0;
    }

    else
    {
      v4 = self->_messageIDHeaderHash;
    }
  }

  _MFUnlockGlobalLock();
  return v4;
}

- (id)messageIDHeaderHash
{
  messageIDHash = [(MFMessage *)self messageIDHash];
  v3 = 0;
  if (messageIDHash && messageIDHash != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [objc_alloc(MEMORY[0x1E699B200]) initWithHash:messageIDHash];
  }

  return v3;
}

- (id)messageIDHeader
{
  _MFLockGlobalLock();
  v3 = self->_cachedMessageIDHeader;
  _MFUnlockGlobalLock();
  if (!v3)
  {
    headers = [(MFMessage *)self headers];
    v5 = [headers firstHeaderForKey:*MEMORY[0x1E699B130]];
    [(MFMessage *)self setMessageIDHeader:v5];

    _MFLockGlobalLock();
    v3 = self->_cachedMessageIDHeader;
    _MFUnlockGlobalLock();
  }

  return v3;
}

- (void)setMessageIDHeader:(id)header
{
  headerCopy = header;
  _MFLockGlobalLock();
  v4 = [headerCopy copy];
  cachedMessageIDHeader = self->_cachedMessageIDHeader;
  self->_cachedMessageIDHeader = v4;

  _MFUnlockGlobalLock();
}

- (id)messageIDHeaderInFortyBytesOrLess
{
  messageIDHeader = [(MFMessage *)self messageIDHeader];
  if ([messageIDHeader rangeOfString:@"@"] == 37)
  {
    v3 = [messageIDHeader substringWithRange:{1, 36}];
  }

  else if ([messageIDHeader length] < 0x29)
  {
    v3 = messageIDHeader;
  }

  else
  {
    v3 = [messageIDHeader substringToIndex:40];
  }

  v4 = v3;

  return v4;
}

- (int64_t)_messageIDHeaderHashIvar
{
  [(MFMessage *)self messageIDHash];
  _MFLockGlobalLock();
  messageIDHeaderHash = self->_messageIDHeaderHash;
  _MFUnlockGlobalLock();
  return messageIDHeaderHash;
}

- (NSURL)externalReference
{
  v13[1] = *MEMORY[0x1E69E9840];
  messageID = [(MFMessage *)self messageID];
  externalID = [(MFMessage *)self externalID];
  v5 = externalID;
  v6 = 0;
  if (messageID && externalID)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v7 setScheme:*MEMORY[0x1E699A6C8]];
    [v7 setHost:@"message"];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", messageID];
    [v7 setPath:v8];

    v9 = [MEMORY[0x1E696AF60] queryItemWithName:@"uuid" value:v5];
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v7 setQueryItems:v10];

    v6 = [v7 URL];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isMessageContentsLocallyAvailable
{
  path = [(MFMessage *)self path];

  if (path)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path2 = [(MFMessage *)self path];
    LOBYTE(v6) = [defaultManager fileExistsAtPath:path2];
  }

  else
  {
    return [MEMORY[0x1E696AF00] isMainThread] ^ 1;
  }

  return v6;
}

- (void)setPreferredEncoding:(unsigned int)encoding
{
  if (self->_preferredEncoding != encoding)
  {
    self->_preferredEncoding = encoding;
    _MFLockGlobalLock();
    subject = self->_subject;
    self->_subject = 0;

    senderAddressComment = self->_senderAddressComment;
    self->_senderAddressComment = 0;

    sender = self->_sender;
    self->_sender = 0;

    to = self->_to;
    self->_to = 0;

    cc = self->_cc;
    self->_cc = 0;

    bcc = self->_bcc;
    self->_bcc = 0;

    _MFUnlockGlobalLock();
  }
}

- (BOOL)_doesDateAppearToBeSane:(id)sane
{
  saneCopy = sane;
  v4 = saneCopy;
  if (saneCopy)
  {
    [saneCopy timeIntervalSince1970];
    v6 = v5 > 160736400.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_copyDateFromReceivedHeadersInHeaders:(id)headers
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [headers copyHeadersForKey:*MEMORY[0x1E699B138]];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v16 + 1) + 8 * v8);
      v10 = [v9 rangeOfString:@";" options:4];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = [v9 substringFromIndex:v10 + v11];
        v13 = [MEMORY[0x1E695DF00] mf_copyDateInCommonFormatsWithString:v12];

        if (v13)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v13 = 0;
  }

  if (![(MFMessage *)self _doesDateAppearToBeSane:v13])
  {

    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)_copyDateFromDateHeaderInHeaders:(id)headers
{
  v4 = [headers copyFirstHeaderForKey:*MEMORY[0x1E699B0D8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E695DF00] mf_copyDateInCommonFormatsWithString:v4];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:
  if (![(MFMessage *)self _doesDateAppearToBeSane:v6])
  {

    v6 = 0;
  }

  return v6;
}

- (void)_setDateReceivedFromHeaders:(id)headers
{
  headersCopy = headers;
  v4 = [(MFMessage *)self _copyDateFromReceivedHeadersInHeaders:?];
  if (v4 || (v4 = [(MFMessage *)self _copyDateFromDateHeaderInHeaders:headersCopy]) != 0)
  {
    v5 = 0;
    date = v4;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    v4 = 0;
    v5 = 1;
  }

  [date timeIntervalSince1970];
  [(MFMessage *)self setDateReceivedAsTimeIntervalSince1970:?];
  if (v5)
  {
  }
}

- (void)_setDateSentFromHeaders:(id)headers
{
  headersCopy = headers;
  v4 = [(MFMessage *)self _copyDateFromDateHeaderInHeaders:?];
  if (v4 || (v4 = [(MFMessage *)self _copyDateFromReceivedHeadersInHeaders:headersCopy]) != 0)
  {
    v5 = 0;
    date = v4;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    v4 = 0;
    v5 = 1;
  }

  [date timeIntervalSince1970];
  [(MFMessage *)self setDateSentAsTimeIntervalSince1970:?];
  if (v5)
  {
  }
}

- (void)loadCachedHeaderValuesFromHeaders:(id)headers
{
  headersCopy = headers;
  _MFLockGlobalLock();
  subject = self->_subject;
  sender = self->_sender;
  contentType = self->_contentType;
  to = self->_to;
  cc = self->_cc;
  bcc = self->_bcc;
  dateSentInterval = self->_dateSentInterval;
  dateReceivedInterval = self->_dateReceivedInterval;
  listIDHash = self->_listIDHash;
  _MFUnlockGlobalLock();
  if (subject)
  {
    v11 = 0;
    if (sender)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [headersCopy copyFirstHeaderForKey:*MEMORY[0x1E699B178]];
    v20 = [objc_alloc(MEMORY[0x1E699B328]) initWithString:v19];
    [(MFMessage *)self setSubject:v20];

    v11 = v19;
    if (sender)
    {
LABEL_3:
      copyAddressListForSender = v11;
      if (!to)
      {
        goto LABEL_4;
      }

LABEL_19:
      copyAddressListForTo = copyAddressListForSender;
      if (!cc)
      {
        goto LABEL_20;
      }

      goto LABEL_8;
    }
  }

  copyAddressListForSender = [headersCopy copyAddressListForSender];

  array = copyAddressListForSender;
  if (!copyAddressListForSender)
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  [(MFMessage *)self setSender:array];
  if (copyAddressListForSender)
  {
    if (to)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (to)
    {
      goto LABEL_19;
    }
  }

LABEL_4:
  copyAddressListForTo = [headersCopy copyAddressListForTo];

  array2 = copyAddressListForTo;
  if (!copyAddressListForTo)
  {
    array2 = [MEMORY[0x1E695DEC8] array];
  }

  [(MFMessage *)self setTo:array2];
  if (!copyAddressListForTo)
  {

    if (!cc)
    {
      goto LABEL_20;
    }

LABEL_8:
    copyAddressListForCc = copyAddressListForTo;
    if (!bcc)
    {
      goto LABEL_9;
    }

LABEL_24:
    copyAddressListForBcc = copyAddressListForCc;
    if (contentType)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  if (cc)
  {
    goto LABEL_8;
  }

LABEL_20:
  copyAddressListForCc = [headersCopy copyAddressListForCc];

  array3 = copyAddressListForCc;
  if (!copyAddressListForCc)
  {
    array3 = [MEMORY[0x1E695DEC8] array];
  }

  [(MFMessage *)self setCc:array3];
  if (copyAddressListForCc)
  {
    if (bcc)
    {
      goto LABEL_24;
    }
  }

  else
  {

    if (bcc)
    {
      goto LABEL_24;
    }
  }

LABEL_9:
  copyAddressListForBcc = [headersCopy copyAddressListForBcc];

  array4 = copyAddressListForBcc;
  if (!copyAddressListForBcc)
  {
    array4 = [MEMORY[0x1E695DEC8] array];
  }

  [(MFMessage *)self setBcc:array4];
  if (copyAddressListForBcc)
  {
    if (contentType)
    {
LABEL_13:
      v18 = copyAddressListForBcc;
      goto LABEL_38;
    }
  }

  else
  {

    if (contentType)
    {
      goto LABEL_13;
    }
  }

LABEL_25:
  v23 = [headersCopy copyFirstStringValueForKey:*MEMORY[0x1E699B0D0]];

  if (v23)
  {
    v30 = 0;
    [MFMimePart parseContentTypeHeader:v23 type:&v30 subtype:0];
    v18 = v30;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v24 = v18;
  }

  else
  {
    v24 = &stru_1F4F33820;
  }

  [(MFMessage *)self setContentType:v24];

LABEL_38:
  if (!dateReceivedInterval)
  {
    [(MFMessage *)self _setDateReceivedFromHeaders:headersCopy];
  }

  if (!dateSentInterval)
  {
    [(MFMessage *)self _setDateSentFromHeaders:headersCopy];
  }

  if (!listIDHash)
  {
    v25 = [headersCopy firstHeaderForKey:*MEMORY[0x1E699B110]];
    v26 = [objc_alloc(MEMORY[0x1E699B200]) initWithAngleBracketID:v25];
    [(MFMessage *)self setListIDHash:v26];
  }
}

- (ECSubject)subject
{
  _MFLockGlobalLock();
  v3 = self->_subject;
  _MFUnlockGlobalLock();
  if (!v3)
  {
    headers = [(MFMessage *)self headers];
    [(MFMessage *)self loadCachedHeaderValuesFromHeaders:headers];

    _MFLockGlobalLock();
    v3 = self->_subject;
    _MFUnlockGlobalLock();
  }

  return v3;
}

- (ECSubject)subjectIfAvailable
{
  _MFLockGlobalLock();
  v3 = self->_subject;
  _MFUnlockGlobalLock();

  return v3;
}

- (void)setSubject:(id)subject
{
  subjectCopy = subject;
  _MFLockGlobalLock();
  objc_storeStrong(&self->_subject, subject);
  _MFUnlockGlobalLock();
}

- (NSDate)dateReceived
{
  _MFLockGlobalLock();
  dateReceivedInterval = self->_dateReceivedInterval;
  if (!dateReceivedInterval)
  {
    _MFUnlockGlobalLock();
    headers = [(MFMessage *)self headers];
    [(MFMessage *)self loadCachedHeaderValuesFromHeaders:headers];

    _MFLockGlobalLock();
    dateReceivedInterval = self->_dateReceivedInterval;
  }

  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:dateReceivedInterval];
  _MFUnlockGlobalLock();

  return v5;
}

- (NSDate)dateSent
{
  _MFLockGlobalLock();
  dateSentInterval = self->_dateSentInterval;
  _MFUnlockGlobalLock();
  if (!dateSentInterval)
  {
    headers = [(MFMessage *)self headers];
    [(MFMessage *)self loadCachedHeaderValuesFromHeaders:headers];

    _MFLockGlobalLock();
    dateSentInterval = self->_dateSentInterval;
    _MFUnlockGlobalLock();
  }

  v5 = MEMORY[0x1E695DF00];

  return [v5 dateWithTimeIntervalSince1970:dateSentInterval];
}

- (void)setDateReceivedAsTimeIntervalSince1970:(double)since1970
{
  _MFLockGlobalLock();
  self->_dateReceivedInterval = since1970;

  _MFUnlockGlobalLock();
}

- (double)dateReceivedAsTimeIntervalSince1970
{
  dateReceivedInterval = self->_dateReceivedInterval;
  if (!dateReceivedInterval)
  {
    headers = [(MFMessage *)self headers];
    [(MFMessage *)self loadCachedHeaderValuesFromHeaders:headers];

    return self->_dateReceivedInterval;
  }

  return dateReceivedInterval;
}

- (double)dateSentAsTimeIntervalSince1970
{
  _MFLockGlobalLock();
  dateSentInterval = self->_dateSentInterval;
  _MFUnlockGlobalLock();
  if (!dateSentInterval)
  {
    headers = [(MFMessage *)self headers];
    [(MFMessage *)self loadCachedHeaderValuesFromHeaders:headers];

    _MFLockGlobalLock();
    dateSentInterval = self->_dateSentInterval;
    _MFUnlockGlobalLock();
  }

  return dateSentInterval;
}

- (void)setDateSentAsTimeIntervalSince1970:(double)since1970
{
  _MFLockGlobalLock();
  self->_dateSentInterval = since1970;

  _MFUnlockGlobalLock();
}

- (id)contentType
{
  selfCopy = self;
  _MFLockGlobalLock();
  v3 = selfCopy->_contentType;
  _MFUnlockGlobalLock();
  if (!v3)
  {
    headers = [(MFMessage *)selfCopy headers];
    [(MFMessage *)selfCopy loadCachedHeaderValuesFromHeaders:headers];

    _MFLockGlobalLock();
    v3 = selfCopy->_contentType;
    _MFUnlockGlobalLock();
  }

  return v3;
}

- (void)setContentType:(id)type
{
  typeCopy = type;
  messageStore = [(MFMessage *)self messageStore];
  v5 = messageStore;
  if (typeCopy && messageStore)
  {
    v6 = [messageStore uniquedString:typeCopy];

    typeCopy = v6;
  }

  _MFLockGlobalLock();
  v7 = [typeCopy copy];
  contentType = self->_contentType;
  self->_contentType = v7;

  _MFUnlockGlobalLock();
}

- (id)sendersWithError:(id *)error
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__MFMessage_sendersWithError___block_invoke;
  v5[3] = &unk_1E8454CA0;
  v5[4] = self;
  v3 = _cachedIvarLoadFromHeaders(self, 1, v5);

  return v3;
}

- (id)sendersIfCached
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__MFMessage_sendersIfCached__block_invoke;
  v4[3] = &unk_1E8454CA0;
  v4[4] = self;
  v2 = _cachedIvarLoadFromHeaders(self, 0, v4);

  return v2;
}

- (id)firstSender
{
  senders = [(MFMessage *)self senders];
  if ([senders count])
  {
    v3 = [senders objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSender:(id)sender
{
  v21 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  _MFLockGlobalLock();
  if (([senderCopy isEqual:self->_sender] & 1) == 0)
  {
    _MFUnlockGlobalLock();
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = senderCopy;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v16 + 1) + 8 * v8);
          messageStore = [(MFMessage *)self messageStore];
          v11 = messageStore;
          if (messageStore && v9)
          {
            v12 = [messageStore uniquedString:v9];

            v9 = v12;
          }

          [(NSArray *)v4 addObject:v9];
          ++v8;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    _MFLockGlobalLock();
    sender = self->_sender;
    self->_sender = v4;
  }

  _MFUnlockGlobalLock();

  v14 = *MEMORY[0x1E69E9840];
}

- (id)senderAddressComment
{
  _MFLockGlobalLock();
  p_senderAddressComment = &self->_senderAddressComment;
  v4 = self->_senderAddressComment;
  _MFUnlockGlobalLock();
  if (!v4)
  {
    firstSender = [(MFMessage *)self firstSender];
    emailAddressValue = [firstSender emailAddressValue];
    displayName = [emailAddressValue displayName];
    v8 = displayName;
    if (displayName)
    {
      stringValue = displayName;
    }

    else
    {
      stringValue = [firstSender stringValue];
    }

    v10 = stringValue;

    if ([v10 length])
    {
      messageStore = [(MFMessage *)self messageStore];
      v12 = messageStore;
      if (messageStore && v10)
      {
        v13 = [messageStore uniquedString:v10];
      }

      else
      {
        v13 = v10;
      }

      v14 = v13;
      _MFLockGlobalLock();
      if (!*p_senderAddressComment)
      {
        objc_storeStrong(p_senderAddressComment, v13);
      }

      v10 = v14;
      _MFUnlockGlobalLock();
    }

    else
    {
      v14 = 0;
    }

    v4 = v14;
  }

  return v4;
}

- (NSArray)to
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __15__MFMessage_to__block_invoke;
  v4[3] = &unk_1E8454CA0;
  v4[4] = self;
  v2 = _cachedIvarLoadFromHeaders(self, 1, v4);

  return v2;
}

- (NSArray)toIfCached
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __23__MFMessage_toIfCached__block_invoke;
  v4[3] = &unk_1E8454CA0;
  v4[4] = self;
  v2 = _cachedIvarLoadFromHeaders(self, 0, v4);

  return v2;
}

- (void)setTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  _MFLockGlobalLock();
  if (([toCopy isEqual:self->_to] & 1) == 0)
  {
    _MFUnlockGlobalLock();
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = toCopy;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v16 + 1) + 8 * v8);
          messageStore = [(MFMessage *)self messageStore];
          v11 = messageStore;
          if (messageStore && v9)
          {
            v12 = [messageStore uniquedString:v9];

            v9 = v12;
          }

          [(NSArray *)v4 addObject:v9];
          ++v8;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    _MFLockGlobalLock();
    to = self->_to;
    self->_to = v4;
  }

  _MFUnlockGlobalLock();

  v14 = *MEMORY[0x1E69E9840];
}

- (NSArray)cc
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __15__MFMessage_cc__block_invoke;
  v4[3] = &unk_1E8454CA0;
  v4[4] = self;
  v2 = _cachedIvarLoadFromHeaders(self, 1, v4);

  return v2;
}

- (NSArray)ccIfCached
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __23__MFMessage_ccIfCached__block_invoke;
  v4[3] = &unk_1E8454CA0;
  v4[4] = self;
  v2 = _cachedIvarLoadFromHeaders(self, 0, v4);

  return v2;
}

- (void)setCc:(id)cc
{
  v21 = *MEMORY[0x1E69E9840];
  ccCopy = cc;
  _MFLockGlobalLock();
  if (([ccCopy isEqual:self->_cc] & 1) == 0)
  {
    _MFUnlockGlobalLock();
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = ccCopy;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v16 + 1) + 8 * v8);
          messageStore = [(MFMessage *)self messageStore];
          v11 = messageStore;
          if (messageStore && v9)
          {
            v12 = [messageStore uniquedString:v9];

            v9 = v12;
          }

          [(NSArray *)v4 addObject:v9];
          ++v8;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    _MFLockGlobalLock();
    cc = self->_cc;
    self->_cc = v4;
  }

  _MFUnlockGlobalLock();

  v14 = *MEMORY[0x1E69E9840];
}

- (NSArray)bcc
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __16__MFMessage_bcc__block_invoke;
  v4[3] = &unk_1E8454CA0;
  v4[4] = self;
  v2 = _cachedIvarLoadFromHeaders(self, 1, v4);

  return v2;
}

- (NSArray)bccIfCached
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __24__MFMessage_bccIfCached__block_invoke;
  v4[3] = &unk_1E8454CA0;
  v4[4] = self;
  v2 = _cachedIvarLoadFromHeaders(self, 0, v4);

  return v2;
}

- (void)setBcc:(id)bcc
{
  v21 = *MEMORY[0x1E69E9840];
  bccCopy = bcc;
  _MFLockGlobalLock();
  if (([bccCopy isEqual:self->_bcc] & 1) == 0)
  {
    _MFUnlockGlobalLock();
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = bccCopy;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v16 + 1) + 8 * v8);
          messageStore = [(MFMessage *)self messageStore];
          v11 = messageStore;
          if (messageStore && v9)
          {
            v12 = [messageStore uniquedString:v9];

            v9 = v12;
          }

          [(NSArray *)v4 addObject:v9];
          ++v8;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    _MFLockGlobalLock();
    bcc = self->_bcc;
    self->_bcc = v4;
  }

  _MFUnlockGlobalLock();

  v14 = *MEMORY[0x1E69E9840];
}

- (int64_t)conversationID
{
  _MFLockGlobalLock();
  conversationID = self->_conversationID;
  _MFUnlockGlobalLock();
  return conversationID;
}

- (void)setMessageIDHash:(int64_t)hash
{
  _MFLockGlobalLock();
  self->_messageIDHeaderHash = hash;

  _MFUnlockGlobalLock();
}

- (void)setConversationID:(int64_t)d
{
  _MFLockGlobalLock();
  if (self->_conversationID != d)
  {
    self->_conversationID = d;
  }

  _MFUnlockGlobalLock();
}

- (ECAngleBracketIDHash)listIDHash
{
  _MFLockGlobalLock();
  listIDHash = self->_listIDHash;
  _MFUnlockGlobalLock();
  if (!listIDHash)
  {
    headersIfAvailable = [(MFMessage *)self headersIfAvailable];
    [(MFMessage *)self loadCachedHeaderValuesFromHeaders:headersIfAvailable];

    _MFLockGlobalLock();
    listIDHash = self->_listIDHash;
    if (listIDHash)
    {
      v5 = listIDHash;
    }

    _MFUnlockGlobalLock();
  }

  if ([(ECAngleBracketIDHash *)listIDHash int64Value])
  {
    v6 = listIDHash;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)setListIDHash:(id)hash
{
  hashCopy = hash;
  _MFLockGlobalLock();
  objc_storeStrong(&self->_listIDHash, hash);
  _MFUnlockGlobalLock();
}

- (NSString)externalID
{
  _MFLockGlobalLock();
  v3 = self->_externalID;
  _MFUnlockGlobalLock();

  return v3;
}

- (void)setExternalID:(id)d
{
  dCopy = d;
  _MFLockGlobalLock();
  objc_storeStrong(&self->_externalID, d);
  _MFUnlockGlobalLock();
}

- (NSUUID)documentID
{
  _MFLockGlobalLock();
  v3 = self->_documentID;
  _MFUnlockGlobalLock();

  return v3;
}

- (void)setDocumentID:(id)d
{
  dCopy = d;
  _MFLockGlobalLock();
  objc_storeStrong(&self->_documentID, d);
  _MFUnlockGlobalLock();
}

- (NSString)summary
{
  _MFLockGlobalLock();
  v3 = self->_summary;
  _MFUnlockGlobalLock();

  return v3;
}

- (id)uniqueArray:(id)array withStore:(id)store
{
  v20 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  storeCopy = store;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = arrayCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [storeCopy uniquedString:{*(*(&v15 + 1) + 8 * i), v15}];
        [array addObject:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)setMessageInfo:(id)info to:(id)to cc:(id)cc bcc:(id)bcc sender:(id)sender dateReceivedTimeIntervalSince1970:(double)since1970 dateSentTimeIntervalSince1970:(double)intervalSince1970 messageIDHash:(int64_t)self0 conversationID:(int64_t)self1 summary:(id)self2
{
  infoCopy = info;
  toCopy = to;
  ccCopy = cc;
  bccCopy = bcc;
  senderCopy = sender;
  summaryCopy = summary;
  [(MFMessage *)self setSubject:infoCopy to:toCopy cc:ccCopy bcc:bccCopy sender:senderCopy dateReceived:summaryCopy dateSent:since1970 summary:intervalSince1970];
  [(MFMessage *)self setConversationID:d];
  [(MFMessage *)self setMessageIDHash:hash];
}

- (void)setSubject:(id)subject to:(id)to cc:(id)cc bcc:(id)bcc sender:(id)sender dateReceived:(double)received dateSent:(double)sent summary:(id)self0 withOptions:(unsigned int)self1
{
  subjectCopy = subject;
  toCopy = to;
  ccCopy = cc;
  bccCopy = bcc;
  senderCopy = sender;
  summaryCopy = summary;
  messageStore = [(MFMessage *)self messageStore];
  if (messageStore)
  {
    if (toCopy)
    {
      v25 = [(MFMessage *)self uniqueArray:toCopy withStore:messageStore];

      toCopy = v25;
    }

    if (ccCopy)
    {
      v26 = [(MFMessage *)self uniqueArray:ccCopy withStore:messageStore];

      ccCopy = v26;
    }

    if (bccCopy)
    {
      v27 = [(MFMessage *)self uniqueArray:bccCopy withStore:messageStore];

      bccCopy = v27;
    }

    if (senderCopy)
    {
      v28 = [(MFMessage *)self uniqueArray:senderCopy withStore:messageStore];

      senderCopy = v28;
    }
  }

  _MFLockGlobalLock();
  self->_dateSentInterval = sent;
  self->_dateReceivedInterval = received;
  if (options)
  {
    v29 = [objc_alloc(MEMORY[0x1E699B328]) initWithString:subjectCopy];
    subject = self->_subject;
    self->_subject = v29;
  }

  if ((options & 2) != 0)
  {
    if (([(NSArray *)self->_to isEqual:toCopy]& 1) == 0)
    {
      v31 = [toCopy copy];
      to = self->_to;
      self->_to = v31;
    }

    if (([(NSArray *)self->_cc isEqual:ccCopy]& 1) == 0)
    {
      v33 = [ccCopy copy];
      cc = self->_cc;
      self->_cc = v33;
    }

    if (([(NSArray *)self->_bcc isEqual:bccCopy]& 1) == 0)
    {
      v35 = [bccCopy copy];
      bcc = self->_bcc;
      self->_bcc = v35;
    }
  }

  if ((options & 4) != 0 && ([(NSArray *)self->_sender isEqual:senderCopy]& 1) == 0)
  {
    v37 = [senderCopy copy];
    sender = self->_sender;
    self->_sender = v37;
  }

  if ((options & 8) != 0 && self->_summary != summaryCopy)
  {
    v39 = [(NSString *)summaryCopy copy];
    summary = self->_summary;
    self->_summary = v39;
  }

  _MFUnlockGlobalLock();
}

- (BOOL)updateSubjectFromEncryptedContent
{
  v24 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    headersIfAvailable = [(MFMessage *)self headersIfAvailable];
    v4 = [headersIfAvailable firstHeaderForKey:*MEMORY[0x1E699B0D0]];

    if (!v4)
    {
      v15 = 0;
      goto LABEL_16;
    }

    v21 = 0;
    v22 = 0;
    v5 = [MFMimePart parseContentTypeHeader:v4 type:&v22 subtype:&v21];
    v6 = v22;
    v7 = v21;
    if (!v5 || ![v6 isEqualToString:@"application"] || (objc_msgSend(v7, "isEqualToString:", @"pkcs7-mime") & 1) == 0)
    {
      v15 = 0;
LABEL_14:

LABEL_16:
      goto LABEL_17;
    }

    v8 = [(MFMessage *)self messageBodyIfAvailableUpdatingFlags:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
LABEL_26:

      goto LABEL_14;
    }

    topLevelPart = [v8 topLevelPart];
    v10 = topLevelPart;
    if (!topLevelPart)
    {
      v15 = 0;
LABEL_25:

      goto LABEL_26;
    }

    [topLevelPart decodeIfNecessary];
    v20 = 0;
    v11 = [v10 decryptedMessageBodyIsEncrypted:&v20 isSigned:0];
    wrappedSubject = [v10 wrappedSubject];
    if (wrappedSubject)
    {
      subject = [(MFMessage *)self subject];
      v14 = [subject isEqual:wrappedSubject];

      if ((v14 & 1) == 0)
      {
        if (v20)
        {
          [(MFMessage *)self setSubject:wrappedSubject];
          v15 = 1;
LABEL_24:

          goto LABEL_25;
        }

        v18 = MFLogGeneral();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          messageIDHeader = [(MFMessage *)self messageIDHeader];
          [(MFMessage *)messageIDHeader updateSubjectFromEncryptedContent];
        }
      }
    }

    v15 = 0;
    goto LABEL_24;
  }

  v15 = 0;
LABEL_17:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)setMessagePropertiesFromMessage:(id)message
{
  messageCopy = message;
  senders = [messageCopy senders];
  v5 = [messageCopy to];
  v6 = [messageCopy cc];
  v7 = [messageCopy bcc];
  subject = [messageCopy subject];
  subjectString = [subject subjectString];

  [messageCopy dateReceivedAsTimeIntervalSince1970];
  v11 = v10;
  [messageCopy dateSentAsTimeIntervalSince1970];
  v13 = v12;
  _messageIDHeaderHashIvar = [messageCopy _messageIDHeaderHashIvar];
  conversationID = [messageCopy conversationID];
  summary = [messageCopy summary];
  [(MFMessage *)self setSubject:subjectString to:v5 cc:v6 bcc:v7 sender:senders dateReceived:summary dateSent:v11 summary:v13];
  [(MFMessage *)self setConversationID:conversationID];
  [(MFMessage *)self setMessageIDHash:_messageIDHeaderHashIvar];
}

- (id)bodyData
{
  messageStore = [(MFMessage *)self messageStore];
  v4 = [messageStore bodyDataForMessage:self isComplete:0 isPartial:0 downloadIfNecessary:_ECIsNetworkActivityAllowed()];

  return v4;
}

- (id)bodyDataIsComplete:(BOOL *)complete isPartial:(BOOL *)partial downloadIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  messageStore = [(MFMessage *)self messageStore];
  if (necessaryCopy)
  {
    v10 = _ECIsNetworkActivityAllowed();
  }

  else
  {
    v10 = 0;
  }

  v11 = [messageStore bodyDataForMessage:self isComplete:complete isPartial:partial downloadIfNecessary:v10];

  return v11;
}

- (id)headerDataDownloadIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  messageStore = [(MFMessage *)self messageStore];
  if (necessaryCopy)
  {
    v6 = _ECIsNetworkActivityAllowed();
  }

  else
  {
    v6 = 0;
  }

  v7 = [messageStore headerDataForMessage:self downloadIfNecessary:v6];

  return v7;
}

- (id)dataForMimePart:(id)part
{
  partCopy = part;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v7 = [threadDictionary objectForKeyedSubscript:@"__MIME_PART_DECODE_DOWNLOAD"];
  bOOLValue = [v7 BOOLValue];

  messageStore = [(MFMessage *)self messageStore];
  if (bOOLValue)
  {
    v10 = _ECIsNetworkActivityAllowed();
  }

  else
  {
    v10 = 0;
  }

  v11 = [messageStore dataForMimePart:partCopy inRange:0 isComplete:0x7FFFFFFFFFFFFFFFLL downloadIfNecessary:0 didDownload:{v10, 0}];

  return v11;
}

- (id)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete
{
  length = range.length;
  location = range.location;
  partCopy = part;
  messageStore = [(MFMessage *)self messageStore];
  v11 = [messageStore dataForMimePart:partCopy inRange:location isComplete:length downloadIfNecessary:complete didDownload:{_ECIsNetworkActivityAllowed(), 0}];

  return v11;
}

- (id)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download
{
  necessaryCopy = necessary;
  length = range.length;
  location = range.location;
  partCopy = part;
  messageStore = [(MFMessage *)self messageStore];
  if (necessaryCopy)
  {
    v15 = _ECIsNetworkActivityAllowed();
  }

  else
  {
    v15 = 0;
  }

  v16 = [messageStore dataForMimePart:partCopy inRange:location isComplete:length downloadIfNecessary:complete didDownload:{v15, download}];

  return v16;
}

- (BOOL)fetchDataForMimePart:(id)part inRange:(_NSRange)range withConsumer:(id)consumer isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  length = range.length;
  location = range.location;
  v24[1] = *MEMORY[0x1E69E9840];
  partCopy = part;
  consumerCopy = consumer;
  v23 = 0;
  v15 = [MFProgressFilterDataConsumer alloc];
  v24[0] = consumerCopy;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v17 = [(MFBaseFilterDataConsumer *)v15 initWithConsumers:v16];

  messageStore = [(MFMessage *)self messageStore];
  if (necessaryCopy)
  {
    v19 = _ECIsNetworkActivityAllowed();
  }

  else
  {
    v19 = 0;
  }

  [messageStore dataForMimePart:partCopy inRange:location isComplete:length withConsumer:complete downloadIfNecessary:v17 didDownload:{v19, &v23}];

  v20 = v23;
  v21 = *MEMORY[0x1E69E9840];
  return v20 & 1;
}

- (void)calculateAttachmentInfoFromBody:(id)body
{
  bodyCopy = body;
  v5 = bodyCopy;
  if ((*(self + 160) & 1) == 0)
  {
    if (bodyCopy || ([(MFMessage *)self messageBodyUpdatingFlags:0], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = 0;
      v6 = [v5 numberOfAttachmentsSigned:&v7 + 1 encrypted:&v7];
      [(MFMessage *)self setNumberOfAttachments:v6 isSigned:HIBYTE(v7) isEncrypted:v7];
      *(self + 160) |= 1u;
    }
  }
}

- (int64_t)generationCompare:(id)compare
{
  compareCopy = compare;
  generationNumber = [(MFMessage *)self generationNumber];
  generationNumber2 = [compareCopy generationNumber];
  if (generationNumber2 > generationNumber)
  {
    v7 = -1;
  }

  else
  {
    v7 = generationNumber2 < generationNumber;
  }

  return v7;
}

- (id)defaultAlternativeInPart:(id)part
{
  partCopy = part;
  messageStore = [(MFMessage *)self messageStore];
  v6 = [messageStore defaultAlternativeForPart:partCopy];

  return v6;
}

- (id)bestAlternativeInPart:(id)part
{
  partCopy = part;
  messageStore = [(MFMessage *)self messageStore];
  v6 = [messageStore bestAlternativeForPart:partCopy];

  return v6;
}

- (BOOL)canBeTriaged
{
  selfCopy = self;
  messageStore = [(MFMessage *)self messageStore];
  LOBYTE(selfCopy) = [messageStore messageCanBeTriaged:selfCopy];

  return selfCopy;
}

- (MFMimePart)parentPart
{
  WeakRetained = objc_loadWeakRetained(&self->_parentPart);

  return WeakRetained;
}

- (void)updateSubjectFromEncryptedContent
{
  *buf = 138543362;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_1D36B2000, log, OS_LOG_TYPE_ERROR, "Signed message has protected header that does not match outer header: %{public}@", buf, 0xCu);
}

@end