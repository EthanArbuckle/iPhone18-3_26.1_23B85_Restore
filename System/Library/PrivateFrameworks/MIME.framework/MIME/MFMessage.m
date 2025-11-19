@interface MFMessage
+ (id)messageWithRFC822Data:(id)a3;
+ (id)messageWithRFC822Data:(id)a3 forMailboxUID:(id)a4;
+ (id)messageWithRFC822Data:(id)a3 withParentPart:(id)a4;
+ (id)messageWithRFC822Data:(id)a3 withParentPart:(id)a4 generateMessageIDHash:(BOOL)a5;
+ (void)setMessageClassForStore:(id)a3;
- (BOOL)_doesDateAppearToBeSane:(id)a3;
- (BOOL)canBeTriaged;
- (BOOL)fetchDataForMimePart:(id)a3 inRange:(_NSRange)a4 withConsumer:(id)a5 isComplete:(BOOL *)a6 downloadIfNecessary:(BOOL)a7;
- (BOOL)isMessageContentsLocallyAvailable;
- (BOOL)messageData:(id *)a3 messageSize:(unint64_t *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6;
- (BOOL)messageDataHolder:(id *)a3 messageSize:(unint64_t *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6;
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
- (id)_copyDateFromDateHeaderInHeaders:(id)a3;
- (id)_copyDateFromReceivedHeadersInHeaders:(id)a3;
- (id)_privacySafeDescription;
- (id)bestAlternativeInPart:(id)a3;
- (id)bodyData;
- (id)bodyDataIsComplete:(BOOL *)a3 isPartial:(BOOL *)a4 downloadIfNecessary:(BOOL)a5;
- (id)contentType;
- (id)dataForMimePart:(id)a3;
- (id)dataForMimePart:(id)a3 inRange:(_NSRange)a4 isComplete:(BOOL *)a5;
- (id)dataForMimePart:(id)a3 inRange:(_NSRange)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6 didDownload:(BOOL *)a7;
- (id)defaultAlternativeInPart:(id)a3;
- (id)firstSender;
- (id)headerDataDownloadIfNecessary:(BOOL)a3;
- (id)headers;
- (id)messageBody;
- (id)messageBodyIfAvailable;
- (id)messageDataIsPartial:(BOOL *)a3;
- (id)messageIDHeader;
- (id)messageIDHeaderHash;
- (id)messageIDHeaderInFortyBytesOrLess;
- (id)messageURL;
- (id)senderAddressComment;
- (id)sendersIfCached;
- (id)sendersWithError:(id *)a3;
- (id)uniqueArray:(id)a3 withStore:(id)a4;
- (int64_t)_messageIDHeaderHashIvar;
- (int64_t)conversationID;
- (int64_t)generationCompare:(id)a3;
- (int64_t)messageIDHash;
- (unint64_t)messageSize;
- (void)_setDateReceivedFromHeaders:(id)a3;
- (void)_setDateSentFromHeaders:(id)a3;
- (void)calculateAttachmentInfoFromBody:(id)a3;
- (void)loadCachedHeaderValuesFromHeaders:(id)a3;
- (void)setBcc:(id)a3;
- (void)setCc:(id)a3;
- (void)setContentType:(id)a3;
- (void)setConversationID:(int64_t)a3;
- (void)setDateReceivedAsTimeIntervalSince1970:(double)a3;
- (void)setDateSentAsTimeIntervalSince1970:(double)a3;
- (void)setDocumentID:(id)a3;
- (void)setExternalID:(id)a3;
- (void)setListIDHash:(id)a3;
- (void)setMessageIDHash:(int64_t)a3;
- (void)setMessageIDHeader:(id)a3;
- (void)setMessageInfo:(id)a3 to:(id)a4 cc:(id)a5 bcc:(id)a6 sender:(id)a7 dateReceivedTimeIntervalSince1970:(double)a8 dateSentTimeIntervalSince1970:(double)a9 messageIDHash:(int64_t)a10 conversationID:(int64_t)a11 summary:(id)a12;
- (void)setMessagePropertiesFromMessage:(id)a3;
- (void)setMessageStore:(id)a3;
- (void)setMessageURL:(id)a3;
- (void)setParentPart:(id)a3;
- (void)setPreferredEncoding:(unsigned int)a3;
- (void)setSender:(id)a3;
- (void)setStrongParentPart:(BOOL)a3;
- (void)setSubject:(id)a3;
- (void)setSubject:(id)a3 to:(id)a4 cc:(id)a5 bcc:(id)a6 sender:(id)a7 dateReceived:(double)a8 dateSent:(double)a9 summary:(id)a10 withOptions:(unsigned int)a11;
- (void)setTo:(id)a3;
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

+ (id)messageWithRFC822Data:(id)a3
{
  v3 = [a1 messageWithRFC822Data:a3 withParentPart:0];

  return v3;
}

+ (id)messageWithRFC822Data:(id)a3 withParentPart:(id)a4
{
  v4 = [a1 messageWithRFC822Data:a3 withParentPart:a4 generateMessageIDHash:0];

  return v4;
}

+ (id)messageWithRFC822Data:(id)a3 forMailboxUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(objc_msgSend(a1 "dataMessageStoreToUse"))];
  [v8 setMailboxUid:v7];
  [a1 setMessageClassForStore:v8];
  v9 = [v8 message];
  v10 = [MEMORY[0x1E696AFB0] UUID];
  v11 = [v10 UUIDString];

  v12 = MEMORY[0x1E695DFF8];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@", @"x-attach-RFC822", v11];
  v14 = [v12 URLWithString:v13];
  [v9 setMessageURL:v14];

  return v9;
}

+ (id)messageWithRFC822Data:(id)a3 withParentPart:(id)a4 generateMessageIDHash:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(objc_msgSend(a1 "dataMessageStoreToUse"))];
  [a1 setMessageClassForStore:v10];
  v11 = [v10 message];
  [v11 setParentPart:v9];
  v12 = [MEMORY[0x1E696AFB0] UUID];
  v13 = [v12 UUIDString];

  v14 = MEMORY[0x1E695DFF8];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@", @"x-attach-RFC822", v13];
  v16 = [v14 URLWithString:v15];
  [v11 setMessageURL:v16];

  if (v5 && ![v11 messageIDHash])
  {
    v17 = [v11 headers];
    [v11 setMessageIDHash:{MFMessageIDHashFromHeaders(v17, 1)}];
  }

  v18 = [v11 headers];
  v19 = [v18 firstHeaderForKey:*MEMORY[0x1E699B1C0]];

  if (v19)
  {
    v20 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v19];
    [v11 setDocumentID:v20];
  }

  return v11;
}

+ (void)setMessageClassForStore:(id)a3
{
  v3 = a3;
  [v3 setMessageClass:objc_opt_class()];
}

- (BOOL)strongParentPart
{
  v2 = [(MFMessage *)self strongParentPartReference];
  v3 = v2 != 0;

  return v3;
}

- (void)setStrongParentPart:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [(MFMessage *)self parentPart];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [(MFMessage *)self setStrongParentPartReference:v5];
  if (v3)
  {
  }
}

- (void)setParentPart:(id)a3
{
  objc_storeWeak(&self->_parentPart, a3);

  [(MFMessage *)self setStrongParentPart:a3 != 0];
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
  v3 = [MEMORY[0x1E699B7B0] currentDevice];
  v4 = [v3 isInternal];

  if (v4)
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

- (void)setMessageStore:(id)a3
{
  v6 = a3;
  _MFLockGlobalLock();
  v5 = self->_store;
  objc_storeStrong(&self->_store, a3);
  _MFUnlockGlobalLock();
}

- (id)headers
{
  v3 = [(MFMessage *)self messageStore];
  v4 = [v3 headersForMessage:self fetchIfNotAvailable:_ECIsNetworkActivityAllowed()];

  return v4;
}

- (MFMessageHeaders)headersIfAvailable
{
  v3 = [(MFMessage *)self messageStore];
  v4 = [v3 headersForMessage:self fetchIfNotAvailable:0];

  return v4;
}

- (id)messageBody
{
  v3 = [(MFMessage *)self messageStore];
  v4 = [v3 bodyForMessage:self fetchIfNotAvailable:_ECIsNetworkActivityAllowed() updateFlags:1];

  return v4;
}

- (id)messageBodyIfAvailable
{
  v3 = [(MFMessage *)self messageStore];
  v4 = [v3 bodyForMessage:self fetchIfNotAvailable:0 updateFlags:1];

  return v4;
}

- (BOOL)messageData:(id *)a3 messageSize:(unint64_t *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6
{
  v6 = a6;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v11 = [(MFMessage *)self messageStore];
  v24 = 0;
  if (v6)
  {
    v12 = _ECIsNetworkActivityAllowed();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v11 fullBodyDataForMessage:self andHeaderDataIfReadilyAvailable:&v24 isComplete:a5 downloadIfNecessary:v12 didDownload:0];
  v14 = v24;
  if (!v14)
  {
    if (v6)
    {
      v15 = _ECIsNetworkActivityAllowed();
    }

    else
    {
      v15 = 0;
    }

    v14 = [v11 headerDataForMessage:self downloadIfNecessary:v15];
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
    if (a4)
    {
      *a4 = v20;
    }

    if (a3)
    {
      v21 = [MFMutableData dataWithCapacity:v20];
      [v21 appendData:v16];
      [v21 appendData:v13];
      [v21 mf_makeImmutable];
      v22 = v21;
      *a3 = v21;
    }
  }

  return v18;
}

- (id)messageDataIsPartial:(BOOL *)a3
{
  v5 = [(MFMessage *)self messageStore];
  v6 = [v5 bodyDataForMessage:self isComplete:0 isPartial:a3 downloadIfNecessary:0];

  if (v6)
  {
    v7 = [(MFMessage *)self messageStore];
    v8 = [v7 headerDataForMessage:self downloadIfNecessary:0];

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

- (BOOL)messageDataHolder:(id *)a3 messageSize:(unint64_t *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6
{
  v6 = a6;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v11 = [(MFMessage *)self messageStore];
  v24 = 0;
  if (v6)
  {
    v12 = _ECIsNetworkActivityAllowed();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v11 fullBodyDataForMessage:self andHeaderDataIfReadilyAvailable:&v24 isComplete:a5 downloadIfNecessary:v12 didDownload:0];
  v14 = v24;
  if (!v14)
  {
    if (v6)
    {
      v15 = _ECIsNetworkActivityAllowed();
    }

    else
    {
      v15 = 0;
    }

    v14 = [v11 headerDataForMessage:self downloadIfNecessary:v15];
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
    if (a4)
    {
      *a4 = v20 + v19;
    }

    if (a3)
    {
      v21 = [MFDataHolder dataHolderWithData:v16];
      [v21 addData:v13];
      v22 = v21;
      *a3 = v21;
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

- (void)setMessageURL:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_ivarLock);
  messageURL = self->_messageURL;
  self->_messageURL = v4;

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (id)messageURL
{
  v3 = [(MFMessage *)self parentPart];
  v4 = [v3 attachmentURLs];
  v5 = [v4 lastObject];

  os_unfair_lock_lock(&self->_ivarLock);
  messageURL = self->_messageURL;
  if (!messageURL)
  {
    if (!v5)
    {
      os_unfair_lock_unlock(&self->_ivarLock);
      v7 = MEMORY[0x1E695DFF8];
      v8 = MEMORY[0x1E696AEC0];
      v9 = [(MFMessage *)self messageID];
      v10 = [v8 stringWithFormat:@"x-attach://%@", v9];
      v5 = [v7 URLWithString:v10];

      os_unfair_lock_lock(&self->_ivarLock);
    }

    objc_storeStrong(&self->_messageURL, v5);
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

    v6 = [(MFMessage *)self headers];
    [(MFMessage *)self loadCachedHeaderValuesFromHeaders:v6];

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
  v2 = [(MFMessage *)self messageIDHash];
  v3 = 0;
  if (v2 && v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [objc_alloc(MEMORY[0x1E699B200]) initWithHash:v2];
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
    v4 = [(MFMessage *)self headers];
    v5 = [v4 firstHeaderForKey:*MEMORY[0x1E699B130]];
    [(MFMessage *)self setMessageIDHeader:v5];

    _MFLockGlobalLock();
    v3 = self->_cachedMessageIDHeader;
    _MFUnlockGlobalLock();
  }

  return v3;
}

- (void)setMessageIDHeader:(id)a3
{
  v6 = a3;
  _MFLockGlobalLock();
  v4 = [v6 copy];
  cachedMessageIDHeader = self->_cachedMessageIDHeader;
  self->_cachedMessageIDHeader = v4;

  _MFUnlockGlobalLock();
}

- (id)messageIDHeaderInFortyBytesOrLess
{
  v2 = [(MFMessage *)self messageIDHeader];
  if ([v2 rangeOfString:@"@"] == 37)
  {
    v3 = [v2 substringWithRange:{1, 36}];
  }

  else if ([v2 length] < 0x29)
  {
    v3 = v2;
  }

  else
  {
    v3 = [v2 substringToIndex:40];
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
  v3 = [(MFMessage *)self messageID];
  v4 = [(MFMessage *)self externalID];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v7 setScheme:*MEMORY[0x1E699A6C8]];
    [v7 setHost:@"message"];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", v3];
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
  v3 = [(MFMessage *)self path];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [(MFMessage *)self path];
    LOBYTE(v6) = [v4 fileExistsAtPath:v5];
  }

  else
  {
    return [MEMORY[0x1E696AF00] isMainThread] ^ 1;
  }

  return v6;
}

- (void)setPreferredEncoding:(unsigned int)a3
{
  if (self->_preferredEncoding != a3)
  {
    self->_preferredEncoding = a3;
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

- (BOOL)_doesDateAppearToBeSane:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    [v3 timeIntervalSince1970];
    v6 = v5 > 160736400.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_copyDateFromReceivedHeadersInHeaders:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [a3 copyHeadersForKey:*MEMORY[0x1E699B138]];
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

- (id)_copyDateFromDateHeaderInHeaders:(id)a3
{
  v4 = [a3 copyFirstHeaderForKey:*MEMORY[0x1E699B0D8]];
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

- (void)_setDateReceivedFromHeaders:(id)a3
{
  v7 = a3;
  v4 = [(MFMessage *)self _copyDateFromReceivedHeadersInHeaders:?];
  if (v4 || (v4 = [(MFMessage *)self _copyDateFromDateHeaderInHeaders:v7]) != 0)
  {
    v5 = 0;
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E695DF00] date];
    v4 = 0;
    v5 = 1;
  }

  [v6 timeIntervalSince1970];
  [(MFMessage *)self setDateReceivedAsTimeIntervalSince1970:?];
  if (v5)
  {
  }
}

- (void)_setDateSentFromHeaders:(id)a3
{
  v7 = a3;
  v4 = [(MFMessage *)self _copyDateFromDateHeaderInHeaders:?];
  if (v4 || (v4 = [(MFMessage *)self _copyDateFromReceivedHeadersInHeaders:v7]) != 0)
  {
    v5 = 0;
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E695DF00] date];
    v4 = 0;
    v5 = 1;
  }

  [v6 timeIntervalSince1970];
  [(MFMessage *)self setDateSentAsTimeIntervalSince1970:?];
  if (v5)
  {
  }
}

- (void)loadCachedHeaderValuesFromHeaders:(id)a3
{
  v4 = a3;
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
    v19 = [v4 copyFirstHeaderForKey:*MEMORY[0x1E699B178]];
    v20 = [objc_alloc(MEMORY[0x1E699B328]) initWithString:v19];
    [(MFMessage *)self setSubject:v20];

    v11 = v19;
    if (sender)
    {
LABEL_3:
      v12 = v11;
      if (!to)
      {
        goto LABEL_4;
      }

LABEL_19:
      v13 = v12;
      if (!cc)
      {
        goto LABEL_20;
      }

      goto LABEL_8;
    }
  }

  v12 = [v4 copyAddressListForSender];

  v21 = v12;
  if (!v12)
  {
    v21 = [MEMORY[0x1E695DEC8] array];
  }

  [(MFMessage *)self setSender:v21];
  if (v12)
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
  v13 = [v4 copyAddressListForTo];

  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DEC8] array];
  }

  [(MFMessage *)self setTo:v14];
  if (!v13)
  {

    if (!cc)
    {
      goto LABEL_20;
    }

LABEL_8:
    v15 = v13;
    if (!bcc)
    {
      goto LABEL_9;
    }

LABEL_24:
    v16 = v15;
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
  v15 = [v4 copyAddressListForCc];

  v22 = v15;
  if (!v15)
  {
    v22 = [MEMORY[0x1E695DEC8] array];
  }

  [(MFMessage *)self setCc:v22];
  if (v15)
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
  v16 = [v4 copyAddressListForBcc];

  v17 = v16;
  if (!v16)
  {
    v17 = [MEMORY[0x1E695DEC8] array];
  }

  [(MFMessage *)self setBcc:v17];
  if (v16)
  {
    if (contentType)
    {
LABEL_13:
      v18 = v16;
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
  v23 = [v4 copyFirstStringValueForKey:*MEMORY[0x1E699B0D0]];

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
    [(MFMessage *)self _setDateReceivedFromHeaders:v4];
  }

  if (!dateSentInterval)
  {
    [(MFMessage *)self _setDateSentFromHeaders:v4];
  }

  if (!listIDHash)
  {
    v25 = [v4 firstHeaderForKey:*MEMORY[0x1E699B110]];
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
    v4 = [(MFMessage *)self headers];
    [(MFMessage *)self loadCachedHeaderValuesFromHeaders:v4];

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

- (void)setSubject:(id)a3
{
  v5 = a3;
  _MFLockGlobalLock();
  objc_storeStrong(&self->_subject, a3);
  _MFUnlockGlobalLock();
}

- (NSDate)dateReceived
{
  _MFLockGlobalLock();
  dateReceivedInterval = self->_dateReceivedInterval;
  if (!dateReceivedInterval)
  {
    _MFUnlockGlobalLock();
    v4 = [(MFMessage *)self headers];
    [(MFMessage *)self loadCachedHeaderValuesFromHeaders:v4];

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
    v4 = [(MFMessage *)self headers];
    [(MFMessage *)self loadCachedHeaderValuesFromHeaders:v4];

    _MFLockGlobalLock();
    dateSentInterval = self->_dateSentInterval;
    _MFUnlockGlobalLock();
  }

  v5 = MEMORY[0x1E695DF00];

  return [v5 dateWithTimeIntervalSince1970:dateSentInterval];
}

- (void)setDateReceivedAsTimeIntervalSince1970:(double)a3
{
  _MFLockGlobalLock();
  self->_dateReceivedInterval = a3;

  _MFUnlockGlobalLock();
}

- (double)dateReceivedAsTimeIntervalSince1970
{
  dateReceivedInterval = self->_dateReceivedInterval;
  if (!dateReceivedInterval)
  {
    v4 = [(MFMessage *)self headers];
    [(MFMessage *)self loadCachedHeaderValuesFromHeaders:v4];

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
    v4 = [(MFMessage *)self headers];
    [(MFMessage *)self loadCachedHeaderValuesFromHeaders:v4];

    _MFLockGlobalLock();
    dateSentInterval = self->_dateSentInterval;
    _MFUnlockGlobalLock();
  }

  return dateSentInterval;
}

- (void)setDateSentAsTimeIntervalSince1970:(double)a3
{
  _MFLockGlobalLock();
  self->_dateSentInterval = a3;

  _MFUnlockGlobalLock();
}

- (id)contentType
{
  v2 = self;
  _MFLockGlobalLock();
  v3 = v2->_contentType;
  _MFUnlockGlobalLock();
  if (!v3)
  {
    v4 = [(MFMessage *)v2 headers];
    [(MFMessage *)v2 loadCachedHeaderValuesFromHeaders:v4];

    _MFLockGlobalLock();
    v3 = v2->_contentType;
    _MFUnlockGlobalLock();
  }

  return v3;
}

- (void)setContentType:(id)a3
{
  v9 = a3;
  v4 = [(MFMessage *)self messageStore];
  v5 = v4;
  if (v9 && v4)
  {
    v6 = [v4 uniquedString:v9];

    v9 = v6;
  }

  _MFLockGlobalLock();
  v7 = [v9 copy];
  contentType = self->_contentType;
  self->_contentType = v7;

  _MFUnlockGlobalLock();
}

- (id)sendersWithError:(id *)a3
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
  v2 = [(MFMessage *)self senders];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSender:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = a3;
  _MFLockGlobalLock();
  if (([v15 isEqual:self->_sender] & 1) == 0)
  {
    _MFUnlockGlobalLock();
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v15;
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
          v10 = [(MFMessage *)self messageStore];
          v11 = v10;
          if (v10 && v9)
          {
            v12 = [v10 uniquedString:v9];

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
    v5 = [(MFMessage *)self firstSender];
    v6 = [v5 emailAddressValue];
    v7 = [v6 displayName];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [v5 stringValue];
    }

    v10 = v9;

    if ([v10 length])
    {
      v11 = [(MFMessage *)self messageStore];
      v12 = v11;
      if (v11 && v10)
      {
        v13 = [v11 uniquedString:v10];
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

- (void)setTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = a3;
  _MFLockGlobalLock();
  if (([v15 isEqual:self->_to] & 1) == 0)
  {
    _MFUnlockGlobalLock();
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v15;
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
          v10 = [(MFMessage *)self messageStore];
          v11 = v10;
          if (v10 && v9)
          {
            v12 = [v10 uniquedString:v9];

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

- (void)setCc:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = a3;
  _MFLockGlobalLock();
  if (([v15 isEqual:self->_cc] & 1) == 0)
  {
    _MFUnlockGlobalLock();
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v15;
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
          v10 = [(MFMessage *)self messageStore];
          v11 = v10;
          if (v10 && v9)
          {
            v12 = [v10 uniquedString:v9];

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

- (void)setBcc:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = a3;
  _MFLockGlobalLock();
  if (([v15 isEqual:self->_bcc] & 1) == 0)
  {
    _MFUnlockGlobalLock();
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v15;
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
          v10 = [(MFMessage *)self messageStore];
          v11 = v10;
          if (v10 && v9)
          {
            v12 = [v10 uniquedString:v9];

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

- (void)setMessageIDHash:(int64_t)a3
{
  _MFLockGlobalLock();
  self->_messageIDHeaderHash = a3;

  _MFUnlockGlobalLock();
}

- (void)setConversationID:(int64_t)a3
{
  _MFLockGlobalLock();
  if (self->_conversationID != a3)
  {
    self->_conversationID = a3;
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
    v4 = [(MFMessage *)self headersIfAvailable];
    [(MFMessage *)self loadCachedHeaderValuesFromHeaders:v4];

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

- (void)setListIDHash:(id)a3
{
  v5 = a3;
  _MFLockGlobalLock();
  objc_storeStrong(&self->_listIDHash, a3);
  _MFUnlockGlobalLock();
}

- (NSString)externalID
{
  _MFLockGlobalLock();
  v3 = self->_externalID;
  _MFUnlockGlobalLock();

  return v3;
}

- (void)setExternalID:(id)a3
{
  v5 = a3;
  _MFLockGlobalLock();
  objc_storeStrong(&self->_externalID, a3);
  _MFUnlockGlobalLock();
}

- (NSUUID)documentID
{
  _MFLockGlobalLock();
  v3 = self->_documentID;
  _MFUnlockGlobalLock();

  return v3;
}

- (void)setDocumentID:(id)a3
{
  v5 = a3;
  _MFLockGlobalLock();
  objc_storeStrong(&self->_documentID, a3);
  _MFUnlockGlobalLock();
}

- (NSString)summary
{
  _MFLockGlobalLock();
  v3 = self->_summary;
  _MFUnlockGlobalLock();

  return v3;
}

- (id)uniqueArray:(id)a3 withStore:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v5;
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

        v12 = [v6 uniquedString:{*(*(&v15 + 1) + 8 * i), v15}];
        [v7 addObject:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setMessageInfo:(id)a3 to:(id)a4 cc:(id)a5 bcc:(id)a6 sender:(id)a7 dateReceivedTimeIntervalSince1970:(double)a8 dateSentTimeIntervalSince1970:(double)a9 messageIDHash:(int64_t)a10 conversationID:(int64_t)a11 summary:(id)a12
{
  v25 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a12;
  [(MFMessage *)self setSubject:v25 to:v20 cc:v21 bcc:v22 sender:v23 dateReceived:v24 dateSent:a8 summary:a9];
  [(MFMessage *)self setConversationID:a11];
  [(MFMessage *)self setMessageIDHash:a10];
}

- (void)setSubject:(id)a3 to:(id)a4 cc:(id)a5 bcc:(id)a6 sender:(id)a7 dateReceived:(double)a8 dateSent:(double)a9 summary:(id)a10 withOptions:(unsigned int)a11
{
  v41 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a10;
  v24 = [(MFMessage *)self messageStore];
  if (v24)
  {
    if (v19)
    {
      v25 = [(MFMessage *)self uniqueArray:v19 withStore:v24];

      v19 = v25;
    }

    if (v20)
    {
      v26 = [(MFMessage *)self uniqueArray:v20 withStore:v24];

      v20 = v26;
    }

    if (v21)
    {
      v27 = [(MFMessage *)self uniqueArray:v21 withStore:v24];

      v21 = v27;
    }

    if (v22)
    {
      v28 = [(MFMessage *)self uniqueArray:v22 withStore:v24];

      v22 = v28;
    }
  }

  _MFLockGlobalLock();
  self->_dateSentInterval = a9;
  self->_dateReceivedInterval = a8;
  if (a11)
  {
    v29 = [objc_alloc(MEMORY[0x1E699B328]) initWithString:v41];
    subject = self->_subject;
    self->_subject = v29;
  }

  if ((a11 & 2) != 0)
  {
    if (([(NSArray *)self->_to isEqual:v19]& 1) == 0)
    {
      v31 = [v19 copy];
      to = self->_to;
      self->_to = v31;
    }

    if (([(NSArray *)self->_cc isEqual:v20]& 1) == 0)
    {
      v33 = [v20 copy];
      cc = self->_cc;
      self->_cc = v33;
    }

    if (([(NSArray *)self->_bcc isEqual:v21]& 1) == 0)
    {
      v35 = [v21 copy];
      bcc = self->_bcc;
      self->_bcc = v35;
    }
  }

  if ((a11 & 4) != 0 && ([(NSArray *)self->_sender isEqual:v22]& 1) == 0)
  {
    v37 = [v22 copy];
    sender = self->_sender;
    self->_sender = v37;
  }

  if ((a11 & 8) != 0 && self->_summary != v23)
  {
    v39 = [(NSString *)v23 copy];
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
    v3 = [(MFMessage *)self headersIfAvailable];
    v4 = [v3 firstHeaderForKey:*MEMORY[0x1E699B0D0]];

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

    v9 = [v8 topLevelPart];
    v10 = v9;
    if (!v9)
    {
      v15 = 0;
LABEL_25:

      goto LABEL_26;
    }

    [v9 decodeIfNecessary];
    v20 = 0;
    v11 = [v10 decryptedMessageBodyIsEncrypted:&v20 isSigned:0];
    v12 = [v10 wrappedSubject];
    if (v12)
    {
      v13 = [(MFMessage *)self subject];
      v14 = [v13 isEqual:v12];

      if ((v14 & 1) == 0)
      {
        if (v20)
        {
          [(MFMessage *)self setSubject:v12];
          v15 = 1;
LABEL_24:

          goto LABEL_25;
        }

        v18 = MFLogGeneral();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [(MFMessage *)self messageIDHeader];
          [(MFMessage *)v19 updateSubjectFromEncryptedContent];
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

- (void)setMessagePropertiesFromMessage:(id)a3
{
  v17 = a3;
  v4 = [v17 senders];
  v5 = [v17 to];
  v6 = [v17 cc];
  v7 = [v17 bcc];
  v8 = [v17 subject];
  v9 = [v8 subjectString];

  [v17 dateReceivedAsTimeIntervalSince1970];
  v11 = v10;
  [v17 dateSentAsTimeIntervalSince1970];
  v13 = v12;
  v14 = [v17 _messageIDHeaderHashIvar];
  v15 = [v17 conversationID];
  v16 = [v17 summary];
  [(MFMessage *)self setSubject:v9 to:v5 cc:v6 bcc:v7 sender:v4 dateReceived:v16 dateSent:v11 summary:v13];
  [(MFMessage *)self setConversationID:v15];
  [(MFMessage *)self setMessageIDHash:v14];
}

- (id)bodyData
{
  v3 = [(MFMessage *)self messageStore];
  v4 = [v3 bodyDataForMessage:self isComplete:0 isPartial:0 downloadIfNecessary:_ECIsNetworkActivityAllowed()];

  return v4;
}

- (id)bodyDataIsComplete:(BOOL *)a3 isPartial:(BOOL *)a4 downloadIfNecessary:(BOOL)a5
{
  v5 = a5;
  v9 = [(MFMessage *)self messageStore];
  if (v5)
  {
    v10 = _ECIsNetworkActivityAllowed();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v9 bodyDataForMessage:self isComplete:a3 isPartial:a4 downloadIfNecessary:v10];

  return v11;
}

- (id)headerDataDownloadIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = [(MFMessage *)self messageStore];
  if (v3)
  {
    v6 = _ECIsNetworkActivityAllowed();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 headerDataForMessage:self downloadIfNecessary:v6];

  return v7;
}

- (id)dataForMimePart:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF00] currentThread];
  v6 = [v5 threadDictionary];
  v7 = [v6 objectForKeyedSubscript:@"__MIME_PART_DECODE_DOWNLOAD"];
  v8 = [v7 BOOLValue];

  v9 = [(MFMessage *)self messageStore];
  if (v8)
  {
    v10 = _ECIsNetworkActivityAllowed();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v9 dataForMimePart:v4 inRange:0 isComplete:0x7FFFFFFFFFFFFFFFLL downloadIfNecessary:0 didDownload:{v10, 0}];

  return v11;
}

- (id)dataForMimePart:(id)a3 inRange:(_NSRange)a4 isComplete:(BOOL *)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = [(MFMessage *)self messageStore];
  v11 = [v10 dataForMimePart:v9 inRange:location isComplete:length downloadIfNecessary:a5 didDownload:{_ECIsNetworkActivityAllowed(), 0}];

  return v11;
}

- (id)dataForMimePart:(id)a3 inRange:(_NSRange)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6 didDownload:(BOOL *)a7
{
  v8 = a6;
  length = a4.length;
  location = a4.location;
  v13 = a3;
  v14 = [(MFMessage *)self messageStore];
  if (v8)
  {
    v15 = _ECIsNetworkActivityAllowed();
  }

  else
  {
    v15 = 0;
  }

  v16 = [v14 dataForMimePart:v13 inRange:location isComplete:length downloadIfNecessary:a5 didDownload:{v15, a7}];

  return v16;
}

- (BOOL)fetchDataForMimePart:(id)a3 inRange:(_NSRange)a4 withConsumer:(id)a5 isComplete:(BOOL *)a6 downloadIfNecessary:(BOOL)a7
{
  v7 = a7;
  length = a4.length;
  location = a4.location;
  v24[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a5;
  v23 = 0;
  v15 = [MFProgressFilterDataConsumer alloc];
  v24[0] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v17 = [(MFBaseFilterDataConsumer *)v15 initWithConsumers:v16];

  v18 = [(MFMessage *)self messageStore];
  if (v7)
  {
    v19 = _ECIsNetworkActivityAllowed();
  }

  else
  {
    v19 = 0;
  }

  [v18 dataForMimePart:v13 inRange:location isComplete:length withConsumer:a6 downloadIfNecessary:v17 didDownload:{v19, &v23}];

  v20 = v23;
  v21 = *MEMORY[0x1E69E9840];
  return v20 & 1;
}

- (void)calculateAttachmentInfoFromBody:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((*(self + 160) & 1) == 0)
  {
    if (v4 || ([(MFMessage *)self messageBodyUpdatingFlags:0], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = 0;
      v6 = [v5 numberOfAttachmentsSigned:&v7 + 1 encrypted:&v7];
      [(MFMessage *)self setNumberOfAttachments:v6 isSigned:HIBYTE(v7) isEncrypted:v7];
      *(self + 160) |= 1u;
    }
  }
}

- (int64_t)generationCompare:(id)a3
{
  v4 = a3;
  v5 = [(MFMessage *)self generationNumber];
  v6 = [v4 generationNumber];
  if (v6 > v5)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 < v5;
  }

  return v7;
}

- (id)defaultAlternativeInPart:(id)a3
{
  v4 = a3;
  v5 = [(MFMessage *)self messageStore];
  v6 = [v5 defaultAlternativeForPart:v4];

  return v6;
}

- (id)bestAlternativeInPart:(id)a3
{
  v4 = a3;
  v5 = [(MFMessage *)self messageStore];
  v6 = [v5 bestAlternativeForPart:v4];

  return v6;
}

- (BOOL)canBeTriaged
{
  v2 = self;
  v3 = [(MFMessage *)self messageStore];
  LOBYTE(v2) = [v3 messageCanBeTriaged:v2];

  return v2;
}

- (MFMimePart)parentPart
{
  WeakRetained = objc_loadWeakRetained(&self->_parentPart);

  return WeakRetained;
}

- (void)updateSubjectFromEncryptedContent
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1D36B2000, log, OS_LOG_TYPE_ERROR, "Signed message has protected header that does not match outer header: %{public}@", buf, 0xCu);
}

@end