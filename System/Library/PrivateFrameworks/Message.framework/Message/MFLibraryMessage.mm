@interface MFLibraryMessage
+ (id)log;
+ (id)messageWithLibraryID:(int64_t)d;
- (BOOL)hasTemporaryUid;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMessageContentsLocallyAvailable;
- (BOOL)isPartial;
- (EDAccount)accountForSender;
- (EMFollowUp)followUp;
- (EMMessageObjectID)objectID;
- (EMReadLater)readLater;
- (EMSearchableMessageID)searchableMessageID;
- (MFLibraryMessage)initWithLibraryID:(int64_t)d;
- (MFLibraryStore)messageStore;
- (MFMailboxUid)mailbox;
- (MailAccount)account;
- (NSArray)references;
- (NSData)brandIndicator;
- (NSDate)sendLaterDate;
- (NSDictionary)dataDetectionAttributes;
- (NSString)messageIDHeader;
- (NSString)persistentID;
- (NSURL)basePath;
- (NSURL)brandIndicatorLocation;
- (NSURL)mailboxURL;
- (id)_privacySafeDescription;
- (id)dataPathForMimePart:(id)part;
- (id)downloadedMessageData;
- (id)library;
- (id)mailboxName;
- (id)messageID;
- (id)originalMailboxURL;
- (id)path;
- (id)preferredAccountToUseForReplying;
- (id)sendersWithError:(id *)error;
- (id)signatureInfoIfDecodingIsComplete:(BOOL)complete;
- (id)storageLocationForAttachment:(id)attachment;
- (int64_t)compareByUidWithMessage:(id)message;
- (int64_t)libraryID;
- (int64_t)mailboxID;
- (int64_t)originalMailboxID;
- (unint64_t)fileSize;
- (unint64_t)hash;
- (unint64_t)messageSize;
- (void)_forceLoadOfMessageSummaryFromProtectedStore;
- (void)_updateUID;
- (void)commit;
- (void)loadCachedHeaderValuesFromHeaders:(id)headers;
- (void)markAsFlagged;
- (void)markAsForwarded;
- (void)markAsNotFlagged;
- (void)markAsNotViewed;
- (void)markAsReplied;
- (void)markAsViewed;
- (void)setBrandIndicatorLocation:(id)location andData:(id)data;
- (void)setDataDetectionAttributes;
- (void)setFlags:(unint64_t)flags;
- (void)setFollowUp:(id)up;
- (void)setHasTemporaryUid:(BOOL)uid;
- (void)setMailboxID:(int64_t)d;
- (void)setMessageFlags:(unint64_t)flags;
- (void)setMessageFlagsWithoutCommitting:(unint64_t)committing;
- (void)setMessageSize:(unint64_t)size;
- (void)setMutableInfoFromMessage:(id)message;
- (void)setOriginalMailboxID:(int64_t)d;
- (void)setReadLater:(id)later;
- (void)setReferences:(id)references;
- (void)setRemoteID:(id)d;
- (void)setRemoteID:(id)d flags:(unint64_t)flags size:(unsigned int)size mailboxID:(int64_t)iD originalMailboxID:(int64_t)mailboxID;
- (void)setSendLaterDate:(id)date;
- (void)setSummary:(id)summary;
- (void)setUid:(unsigned int)uid;
- (void)setUniqueRemoteId:(unint64_t)id;
@end

@implementation MFLibraryMessage

- (MFLibraryStore)messageStore
{
  v7.receiver = self;
  v7.super_class = MFLibraryMessage;
  messageStore = [(MFMailMessage *)&v7 messageStore];
  v3 = messageStore;
  if (messageStore)
  {
    v4 = messageStore;
  }

  else
  {
    v4 = +[MFLibraryStore sharedInstance];
  }

  v5 = v4;

  return v5;
}

- (int64_t)mailboxID
{
  [(MFLibraryMessage *)self mf_lock];
  mailboxID = self->_mailboxID;
  [(MFLibraryMessage *)self mf_unlock];
  return mailboxID;
}

- (void)_updateUID
{
  intValue = [(NSString *)self->_remoteID intValue];
  self->_uid = intValue;
  if (!intValue)
  {
    v4 = [(NSString *)self->_remoteID rangeOfString:@"temp-" options:8];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(NSString *)self->_remoteID substringWithRange:v4 + v5, [(NSString *)self->_remoteID length]- (v4 + v5)];
      self->_uid = [v6 intValue];
    }
  }
}

- (MFMailboxUid)mailbox
{
  library = [(MFLibraryMessage *)self library];
  v4 = [library mailboxUidForMessage:self];

  return v4;
}

- (id)library
{
  messageStore = [(MFLibraryMessage *)self messageStore];
  library = [messageStore library];

  return library;
}

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__MFLibraryMessage_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_3 != -1)
  {
    dispatch_once(&log_onceToken_3, block);
  }

  v2 = log_log_3;

  return v2;
}

void __23__MFLibraryMessage_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_3;
  log_log_3 = v1;
}

- (MFLibraryMessage)initWithLibraryID:(int64_t)d
{
  v8.receiver = self;
  v8.super_class = MFLibraryMessage;
  v4 = [(MFLibraryMessage *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E699B5F8]) initWithDatabaseID:d];
    persistedMessageID = v4->_persistedMessageID;
    v4->_persistedMessageID = v5;

    v4->_originalMailboxID = -1;
    v4->_mailboxID = -1;
    atomic_store(0, &v4->_conversationFlags);
    atomic_store(0, &v4->_senderBucket);
    atomic_store(0, &v4->_isJournaled);
    atomic_store(0, &v4->_unsubscribeType);
  }

  return v4;
}

+ (id)messageWithLibraryID:(int64_t)d
{
  v3 = [[MFLibraryMessage alloc] initWithLibraryID:d];

  return v3;
}

- (id)messageID
{
  persistedMessageID = [(MFLibraryMessage *)self persistedMessageID];
  stringValue = [persistedMessageID stringValue];

  return stringValue;
}

- (NSString)persistentID
{
  persistedMessageID = [(MFLibraryMessage *)self persistedMessageID];
  stringValue = [persistedMessageID stringValue];

  return stringValue;
}

- (int64_t)libraryID
{
  persistedMessageID = [(MFLibraryMessage *)self persistedMessageID];
  databaseID = [persistedMessageID databaseID];

  return databaseID;
}

- (EMSearchableMessageID)searchableMessageID
{
  v2 = MEMORY[0x1E699B6A8];
  persistedMessageID = [(MFLibraryMessage *)self persistedMessageID];
  v4 = [v2 searchableMessageIDForPersistedMessageID:persistedMessageID];

  return v4;
}

- (EMMessageObjectID)objectID
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E699AD28];
  mailbox = [(MFLibraryMessage *)self mailbox];
  objectID = [mailbox objectID];
  v11[0] = objectID;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [v3 mailboxScopeForMailboxObjectIDs:v6 forExclusion:0];

  v8 = [objc_alloc(MEMORY[0x1E699ADA8]) initWithGlobalMessageID:-[MFLibraryMessage globalMessageID](self mailboxScope:{"globalMessageID"), v7}];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)setMailboxID:(int64_t)d
{
  v9 = *MEMORY[0x1E69E9840];
  [(MFLibraryMessage *)self mf_lock];
  self->_mailboxID = d;
  [(MFLibraryMessage *)self mf_unlock];
  if (d == -1)
  {
    v5 = +[MFLibraryMessage log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [(MFLibraryMessage *)self ef_publicDescription];
      [(MFLibraryMessage *)ef_publicDescription setMailboxID:v8, v5];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (int64_t)originalMailboxID
{
  [(MFLibraryMessage *)self mf_lock];
  originalMailboxID = self->_originalMailboxID;
  [(MFLibraryMessage *)self mf_unlock];
  return originalMailboxID;
}

- (void)setOriginalMailboxID:(int64_t)d
{
  [(MFLibraryMessage *)self mf_lock];
  self->_originalMailboxID = d;

  [(MFLibraryMessage *)self mf_unlock];
}

- (id)originalMailboxURL
{
  library = [(MFLibraryMessage *)self library];
  v4 = [library urlForMailboxID:{-[MFLibraryMessage originalMailboxID](self, "originalMailboxID")}];

  return v4;
}

- (NSURL)mailboxURL
{
  originalMailboxURL = [(MFLibraryMessage *)self originalMailboxURL];
  if (originalMailboxURL)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:originalMailboxURL];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSURL)basePath
{
  v3 = MEMORY[0x1E695DFF8];
  library = [(MFLibraryMessage *)self library];
  account = [(MFLibraryMessage *)self account];
  v6 = [library messageBasePathForAccount:account];
  v7 = [v3 fileURLWithPath:v6];

  return v7;
}

- (unint64_t)messageSize
{
  [(MFLibraryMessage *)self mf_lock];
  size = self->_size;
  [(MFLibraryMessage *)self mf_unlock];
  return size;
}

- (void)setMessageSize:(unint64_t)size
{
  [(MFLibraryMessage *)self mf_lock];
  self->_size = size;

  [(MFLibraryMessage *)self mf_unlock];
}

- (void)setRemoteID:(id)d
{
  dCopy = d;
  _MFLockGlobalLock();
  if (self->_remoteID != dCopy)
  {
    objc_storeStrong(&self->_remoteID, d);
    [(MFLibraryMessage *)self _updateUID];
  }

  _MFUnlockGlobalLock();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    libraryID = [(MFLibraryMessage *)self libraryID];
    v6 = libraryID == [(MFLibraryMessage *)equalCopy libraryID];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MFLibraryMessage;
    v6 = [(MFLibraryMessage *)&v8 isEqual:equalCopy];
  }

  return v6;
}

- (unint64_t)hash
{
  persistedMessageID = [(MFLibraryMessage *)self persistedMessageID];
  v3 = [persistedMessageID hash];

  return v3;
}

- (void)setUid:(unsigned int)uid
{
  if (self->_uid != uid)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    stringValue = [v4 stringValue];
    [(MFLibraryMessage *)self setRemoteID:stringValue];

    [(MFLibraryMessage *)self commit];
  }
}

- (void)setUniqueRemoteId:(unint64_t)id
{
  _MFLockGlobalLock();
  if (self->_uniqueRemoteId != id)
  {
    self->_uniqueRemoteId = id;
  }

  _MFUnlockGlobalLock();
}

- (BOOL)isPartial
{
  [(MFLibraryMessage *)self mf_lock];
  v3 = (self->super._messageFlags >> 34) & 1;
  [(MFLibraryMessage *)self mf_unlock];
  return v3;
}

- (BOOL)isMessageContentsLocallyAvailable
{
  selfCopy = self;
  library = [(MFLibraryMessage *)self library];
  LOBYTE(selfCopy) = [library areMessageContentsLocallyAvailable:selfCopy fullContentsAvailble:0];

  return selfCopy;
}

- (BOOL)hasTemporaryUid
{
  [(MFLibraryMessage *)self mf_lock];
  v3 = HIDWORD(self->super._messageFlags) & 1;
  [(MFLibraryMessage *)self mf_unlock];
  return v3;
}

- (void)setHasTemporaryUid:(BOOL)uid
{
  uidCopy = uid;
  [(MFLibraryMessage *)self mf_lock];
  v5 = 0x100000000;
  if (!uidCopy)
  {
    v5 = 0;
  }

  self->super._messageFlags = self->super._messageFlags & 0xFFFFFFFEFFFFFFFFLL | v5;

  [(MFLibraryMessage *)self mf_unlock];
}

- (id)mailboxName
{
  library = [(MFLibraryMessage *)self library];
  v4 = [library mailboxUidForMessage:self];

  account = [v4 account];
  v6 = [account nameForMailboxUid:v4];

  return v6;
}

- (int64_t)compareByUidWithMessage:(id)message
{
  messageCopy = message;
  hasTemporaryUid = [(MFLibraryMessage *)self hasTemporaryUid];
  hasTemporaryUid2 = [messageCopy hasTemporaryUid];
  v7 = hasTemporaryUid - hasTemporaryUid2;
  if (hasTemporaryUid == hasTemporaryUid2)
  {
    uid = self->_uid;
    v7 = uid - [messageCopy uid];
  }

  v9 = v7 < 0;
  v10 = v7 != 0;
  if (v9)
  {
    v11 = -1;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (void)setMessageFlagsWithoutCommitting:(unint64_t)committing
{
  [(MFLibraryMessage *)self mf_lock];
  self->super._messageFlags = committing;

  [(MFLibraryMessage *)self mf_unlock];
}

- (void)setMessageFlags:(unint64_t)flags
{
  if ([(MFMailMessage *)self messageFlags]!= flags)
  {
    library = [(MFLibraryMessage *)self library];
    [library setFlags:flags forMessage:self];
  }
}

- (void)setFlags:(unint64_t)flags
{
  [(MFLibraryMessage *)self mf_lock];
  self->super._messageFlags = flags;

  [(MFLibraryMessage *)self mf_unlock];
}

- (void)setSummary:(id)summary
{
  summaryCopy = summary;
  v9.receiver = self;
  v9.super_class = MFLibraryMessage;
  summary = [(MFLibraryMessage *)&v9 summary];
  v6 = [summary isEqualToString:summaryCopy];

  if ((v6 & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = MFLibraryMessage;
    [(MFMailMessage *)&v8 setSummary:summaryCopy];
    library = [(MFLibraryMessage *)self library];
    [library setSummary:summaryCopy forMessage:self];
  }
}

- (void)commit
{
  library = [(MFLibraryMessage *)self library];
  [library setFlags:-[MFMailMessage messageFlags](self forMessage:{"messageFlags"), self}];
}

- (void)setMutableInfoFromMessage:(id)message
{
  messageCopy = message;
  -[MFLibraryMessage setMessageFlagsWithoutCommitting:](self, "setMessageFlagsWithoutCommitting:", [messageCopy messageFlags]);
}

- (id)_privacySafeDescription
{
  v9.receiver = self;
  v9.super_class = MFLibraryMessage;
  _privacySafeDescription = [(MFLibraryMessage *)&v9 _privacySafeDescription];
  libraryID = [(MFLibraryMessage *)self libraryID];
  globalMessageID = [(MFLibraryMessage *)self globalMessageID];
  remoteID = [(MFLibraryMessage *)self remoteID];
  v7 = [_privacySafeDescription stringByAppendingFormat:@" libraryID:%lld globalMessageID:%lld remoteID:%@", libraryID, globalMessageID, remoteID];

  return v7;
}

- (id)path
{
  library = [(MFLibraryMessage *)self library];
  v4 = [library dataPathForMessage:self];

  return v4;
}

- (id)dataPathForMimePart:(id)part
{
  partCopy = part;
  messageStore = [(MFLibraryMessage *)self messageStore];
  v6 = [messageStore dataPathForMessage:self part:partCopy];

  return v6;
}

- (MailAccount)account
{
  messageStore = [(MFLibraryMessage *)self messageStore];
  v4 = +[MFLibraryStore sharedInstanceIfExists];

  if (v4 == messageStore)
  {
    library = [(MFLibraryMessage *)self library];
    account = [library accountForMessage:self];
  }

  else
  {
    account = [messageStore account];
  }

  return account;
}

- (void)markAsViewed
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (([(MFMailMessage *)self messageFlags]& 1) == 0)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageIsRead";
    v10[0] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    selfCopy = self;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&selfCopy count:1];
    v6 = [messageStore setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)markAsNotViewed
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (([(MFMailMessage *)self messageFlags]& 1) != 0)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageIsRead";
    v10[0] = MEMORY[0x1E695E110];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    selfCopy = self;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&selfCopy count:1];
    v6 = [messageStore setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)markAsFlagged
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (([(MFMailMessage *)self messageFlags]& 0x10) == 0)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageIsFlagged";
    v10[0] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    selfCopy = self;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&selfCopy count:1];
    v6 = [messageStore setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)markAsNotFlagged
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (([(MFMailMessage *)self messageFlags]& 0x10) != 0)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageIsFlagged";
    v10[0] = MEMORY[0x1E695E110];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    selfCopy = self;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&selfCopy count:1];
    v6 = [messageStore setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)markAsReplied
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (([(MFMailMessage *)self messageFlags]& 4) == 0)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    v9[0] = @"MessageWasRepliedTo";
    v9[1] = @"MessageChangeReason";
    v10[0] = MEMORY[0x1E695E118];
    v10[1] = &unk_1F27757A8;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    selfCopy = self;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&selfCopy count:1];
    v6 = [messageStore setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)markAsForwarded
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (([(MFMailMessage *)self messageFlags]& 0x100) == 0)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    v9[0] = @"MessageWasForwarded";
    v9[1] = @"MessageChangeReason";
    v10[0] = MEMORY[0x1E695E118];
    v10[1] = &unk_1F27757A8;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    selfCopy = self;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&selfCopy count:1];
    v6 = [messageStore setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)preferredAccountToUseForReplying
{
  originalMailboxURL = [(MFLibraryMessage *)self originalMailboxURL];
  v3 = [MailAccount mailboxUidFromActiveAccountsForURL:originalMailboxURL];
  account = [v3 account];

  return account;
}

- (id)sendersWithError:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  sendersIfCached = [(MFLibraryMessage *)self sendersIfCached];
  if (!sendersIfCached)
  {
    library = [(MFLibraryMessage *)self library];
    v14 = 0;
    v7 = [library senderForMessageWithLibraryID:-[MFLibraryMessage libraryID](self error:{"libraryID"), &v14}];
    v8 = v14;

    if (v8)
    {
      if (error)
      {
        v9 = v8;
        sendersIfCached = 0;
        *error = v8;
      }

      else
      {
        sendersIfCached = 0;
      }
    }

    else
    {
      stringValue = [v7 stringValue];
      v11 = stringValue;
      if (stringValue)
      {
        v15[0] = stringValue;
        sendersIfCached = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
        [(MFLibraryMessage *)self setSender:sendersIfCached];
      }

      else
      {
        sendersIfCached = 0;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return sendersIfCached;
}

- (void)setBrandIndicatorLocation:(id)location andData:(id)data
{
  locationCopy = location;
  dataCopy = data;
  [(MFLibraryMessage *)self mf_lock];
  objc_storeStrong(&self->_brandIndicatorLocation, location);
  v8 = [dataCopy copy];
  brandIndicator = self->_brandIndicator;
  self->_brandIndicator = v8;

  [(MFLibraryMessage *)self mf_unlock];
}

- (NSURL)brandIndicatorLocation
{
  [(MFLibraryMessage *)self mf_lock];
  v3 = self->_brandIndicatorLocation;
  [(MFLibraryMessage *)self mf_unlock];

  return v3;
}

- (NSData)brandIndicator
{
  [(MFLibraryMessage *)self mf_lock];
  v3 = self->_brandIndicator;
  [(MFLibraryMessage *)self mf_unlock];

  return v3;
}

- (void)setRemoteID:(id)d flags:(unint64_t)flags size:(unsigned int)size mailboxID:(int64_t)iD originalMailboxID:(int64_t)mailboxID
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    [(MFLibraryMessage *)self setRemoteID:dCopy];
  }

  [(MFLibraryMessage *)self mf_lock];
  self->super._messageFlags = flags;
  self->_size = size;
  self->_mailboxID = iD;
  self->_originalMailboxID = mailboxID;
  [(MFLibraryMessage *)self mf_unlock];
  if (iD == -1)
  {
    v13 = +[MFLibraryMessage log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [(MFLibraryMessage *)self ef_publicDescription];
      [(MFLibraryMessage *)ef_publicDescription setMailboxID:v16, v13];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (NSString)messageIDHeader
{
  _MFLockGlobalLock();
  v3 = *(&self->super.super.super.isa + *MEMORY[0x1E69AD7A0]);
  _MFUnlockGlobalLock();
  v12.receiver = self;
  v12.super_class = MFLibraryMessage;
  messageIDHeader = [(MFLibraryMessage *)&v12 messageIDHeader];
  v5 = messageIDHeader;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = messageIDHeader == 0;
  }

  if (!v6)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    library = [messageStore library];
    persistence = [library persistence];
    messagePersistence = [persistence messagePersistence];

    [messagePersistence persistMessageIDHeaderForMessage:self async:1];
  }

  return v5;
}

- (id)downloadedMessageData
{
  library = [(MFLibraryMessage *)self library];
  v4 = [library downloadedMessageDataForMessage:self];

  return v4;
}

- (id)storageLocationForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  library = [(MFLibraryMessage *)self library];
  persistence = [library persistence];
  attachmentPersistenceManager = [persistence attachmentPersistenceManager];

  attachmentMigrator = [library attachmentMigrator];
  [attachmentMigrator migrateAttachmentsForMessageIfNecessary:self];

  account = [(MFLibraryMessage *)self account];
  v10 = [library messageBasePathForAccount:account];

  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:1];
  mimePartNumber = [attachmentCopy mimePartNumber];
  if (mimePartNumber || ([attachmentCopy part], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "partNumber"), mimePartNumber = objc_claimAutoreleasedReturnValue(), v13, mimePartNumber))
  {
    v14 = [attachmentPersistenceManager attachmentURLForGlobalMessageID:-[MFLibraryMessage globalMessageID](self mimePartNumber:"globalMessageID") basePath:{mimePartNumber, v11}];
    path = [v14 path];

    goto LABEL_4;
  }

  mailDropMetadata = [attachmentCopy mailDropMetadata];

  if (mailDropMetadata)
  {
    globalMessageID = [(MFLibraryMessage *)self globalMessageID];
    mailDropMetadata2 = [attachmentCopy mailDropMetadata];
    directUrl = [mailDropMetadata2 directUrl];
    v21 = [attachmentPersistenceManager attachmentURLForGlobalMessageID:globalMessageID remoteURL:directUrl basePath:v11];
    path = [v21 path];

    if (path)
    {
LABEL_11:
      mimePartNumber = 0;
      goto LABEL_4;
    }

    mailDropMetadata3 = [attachmentCopy mailDropMetadata];
    v23 = [MFMessageAttachmentMigrator migrateMaildropFileForMessage:self mailDropMetadata:mailDropMetadata3];

    if (v23)
    {
      globalMessageID2 = [(MFLibraryMessage *)self globalMessageID];
      mailDropMetadata4 = [attachmentCopy mailDropMetadata];
      directUrl2 = [mailDropMetadata4 directUrl];
      v27 = [attachmentPersistenceManager attachmentURLForGlobalMessageID:globalMessageID2 remoteURL:directUrl2 basePath:v11];
      path = [v27 path];

      goto LABEL_11;
    }
  }

  else
  {
    v28 = EDAttachmentsLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(MFLibraryMessage *)attachmentCopy storageLocationForAttachment:v28];
    }
  }

  mimePartNumber = 0;
  path = 0;
LABEL_4:

  return path;
}

- (void)_forceLoadOfMessageSummaryFromProtectedStore
{
  library = [(MFLibraryMessage *)self library];
  v4 = [library urlForMailboxID:{-[MFLibraryMessage mailboxID](self, "mailboxID")}];
  v5 = [library messageWithLibraryID:-[MFLibraryMessage libraryID](self options:"libraryID") inMailbox:{32783, v4}];
  v6 = v5;
  if (v5 && v5 != self)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LibraryMessage.m" lineNumber:580 description:{@"Expected message %@ to be self %@", v6, self}];
  }
}

- (void)loadCachedHeaderValuesFromHeaders:(id)headers
{
  headersCopy = headers;
  [(MFLibraryMessage *)self _forceLoadOfMessageSummaryFromProtectedStore];
  v5.receiver = self;
  v5.super_class = MFLibraryMessage;
  [(MFMailMessage *)&v5 loadCachedHeaderValuesFromHeaders:headersCopy];
}

- (unint64_t)fileSize
{
  library = [(MFLibraryMessage *)self library];
  v4 = [library fileAttributesForMessage:self];
  fileSize = [v4 fileSize];

  return fileSize;
}

- (NSArray)references
{
  [(MFLibraryMessage *)self mf_lock];
  references = self->_references;
  [(MFLibraryMessage *)self mf_unlock];
  if (!references)
  {
    v5.receiver = self;
    v5.super_class = MFLibraryMessage;
    references = [(MFMailMessage *)&v5 references];
  }

  return references;
}

- (void)setReferences:(id)references
{
  referencesCopy = references;
  [(MFLibraryMessage *)self mf_lock];
  objc_storeStrong(&self->_references, references);
  [(MFLibraryMessage *)self mf_unlock];
}

- (EMReadLater)readLater
{
  [(MFLibraryMessage *)self mf_lock];
  v3 = self->_readLater;
  [(MFLibraryMessage *)self mf_unlock];

  return v3;
}

- (void)setReadLater:(id)later
{
  laterCopy = later;
  [(MFLibraryMessage *)self mf_lock];
  objc_storeStrong(&self->_readLater, later);
  [(MFLibraryMessage *)self mf_unlock];
}

- (EDAccount)accountForSender
{
  firstSender = [(MFLibraryMessage *)self firstSender];
  v3 = [MailAccount accountContainingEmailAddress:firstSender];

  return v3;
}

- (NSDate)sendLaterDate
{
  [(MFLibraryMessage *)self mf_lock];
  v3 = self->_sendLaterDate;
  [(MFLibraryMessage *)self mf_unlock];

  return v3;
}

- (void)setSendLaterDate:(id)date
{
  dateCopy = date;
  [(MFLibraryMessage *)self mf_lock];
  objc_storeStrong(&self->_sendLaterDate, date);
  [(MFLibraryMessage *)self mf_unlock];
}

- (EMFollowUp)followUp
{
  [(MFLibraryMessage *)self mf_lock];
  v3 = self->_followUp;
  [(MFLibraryMessage *)self mf_unlock];

  return v3;
}

- (void)setFollowUp:(id)up
{
  upCopy = up;
  [(MFLibraryMessage *)self mf_lock];
  objc_storeStrong(&self->_followUp, up);
  [(MFLibraryMessage *)self mf_unlock];
}

- (NSDictionary)dataDetectionAttributes
{
  if (_os_feature_enabled_impl())
  {
    if (!self->_dataDetectionAttributes)
    {
      [(MFLibraryMessage *)self setDataDetectionAttributes];
    }

    [(MFLibraryMessage *)self mf_lock];
    v3 = self->_dataDetectionAttributes;
    [(MFLibraryMessage *)self mf_unlock];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDataDetectionAttributes
{
  if (_os_feature_enabled_impl())
  {
    library = [(MFLibraryMessage *)self library];
    persistence = [library persistence];
    dataDetectionPersistence = [persistence dataDetectionPersistence];

    v5 = [dataDetectionPersistence getDataDetectionResultsForGlobalMessageID:{-[MFLibraryMessage globalMessageID](self, "globalMessageID")}];
    [(MFLibraryMessage *)self mf_lock];
    if (!self->_dataDetectionAttributes)
    {
      objc_storeStrong(&self->_dataDetectionAttributes, v5);
    }

    [(MFLibraryMessage *)self mf_unlock];
  }
}

- (id)signatureInfoIfDecodingIsComplete:(BOOL)complete
{
  completeCopy = complete;
  if (_os_feature_enabled_impl())
  {
    v5 = [(MFLibraryMessage *)self messageBodyIfAvailableUpdatingFlags:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      topLevelPart = [v5 topLevelPart];
      if (([topLevelPart isSecurePart] & 1) != 0 && (!completeCopy || objc_msgSend(topLevelPart, "isDecodingComplete")) && (objc_msgSend(topLevelPart, "decodeIfNecessary"), objc_msgSend(topLevelPart, "isSigned")))
      {
        signatureInfo = [topLevelPart signatureInfo];
      }

      else
      {
        signatureInfo = 0;
      }
    }

    else
    {
      signatureInfo = 0;
    }
  }

  else
  {
    signatureInfo = 0;
  }

  return signatureInfo;
}

- (void)setMailboxID:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "No mailboxID found for %{public}@", buf, 0xCu);
}

- (void)storageLocationForAttachment:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Missing either a MIME part number or Mail Drop remote URL for attachment %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end