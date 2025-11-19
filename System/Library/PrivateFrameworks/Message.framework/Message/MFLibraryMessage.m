@interface MFLibraryMessage
+ (id)log;
+ (id)messageWithLibraryID:(int64_t)a3;
- (BOOL)hasTemporaryUid;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMessageContentsLocallyAvailable;
- (BOOL)isPartial;
- (EDAccount)accountForSender;
- (EMFollowUp)followUp;
- (EMMessageObjectID)objectID;
- (EMReadLater)readLater;
- (EMSearchableMessageID)searchableMessageID;
- (MFLibraryMessage)initWithLibraryID:(int64_t)a3;
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
- (id)dataPathForMimePart:(id)a3;
- (id)downloadedMessageData;
- (id)library;
- (id)mailboxName;
- (id)messageID;
- (id)originalMailboxURL;
- (id)path;
- (id)preferredAccountToUseForReplying;
- (id)sendersWithError:(id *)a3;
- (id)signatureInfoIfDecodingIsComplete:(BOOL)a3;
- (id)storageLocationForAttachment:(id)a3;
- (int64_t)compareByUidWithMessage:(id)a3;
- (int64_t)libraryID;
- (int64_t)mailboxID;
- (int64_t)originalMailboxID;
- (unint64_t)fileSize;
- (unint64_t)hash;
- (unint64_t)messageSize;
- (void)_forceLoadOfMessageSummaryFromProtectedStore;
- (void)_updateUID;
- (void)commit;
- (void)loadCachedHeaderValuesFromHeaders:(id)a3;
- (void)markAsFlagged;
- (void)markAsForwarded;
- (void)markAsNotFlagged;
- (void)markAsNotViewed;
- (void)markAsReplied;
- (void)markAsViewed;
- (void)setBrandIndicatorLocation:(id)a3 andData:(id)a4;
- (void)setDataDetectionAttributes;
- (void)setFlags:(unint64_t)a3;
- (void)setFollowUp:(id)a3;
- (void)setHasTemporaryUid:(BOOL)a3;
- (void)setMailboxID:(int64_t)a3;
- (void)setMessageFlags:(unint64_t)a3;
- (void)setMessageFlagsWithoutCommitting:(unint64_t)a3;
- (void)setMessageSize:(unint64_t)a3;
- (void)setMutableInfoFromMessage:(id)a3;
- (void)setOriginalMailboxID:(int64_t)a3;
- (void)setReadLater:(id)a3;
- (void)setReferences:(id)a3;
- (void)setRemoteID:(id)a3;
- (void)setRemoteID:(id)a3 flags:(unint64_t)a4 size:(unsigned int)a5 mailboxID:(int64_t)a6 originalMailboxID:(int64_t)a7;
- (void)setSendLaterDate:(id)a3;
- (void)setSummary:(id)a3;
- (void)setUid:(unsigned int)a3;
- (void)setUniqueRemoteId:(unint64_t)a3;
@end

@implementation MFLibraryMessage

- (MFLibraryStore)messageStore
{
  v7.receiver = self;
  v7.super_class = MFLibraryMessage;
  v2 = [(MFMailMessage *)&v7 messageStore];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
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
  v3 = [(NSString *)self->_remoteID intValue];
  self->_uid = v3;
  if (!v3)
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
  v3 = [(MFLibraryMessage *)self library];
  v4 = [v3 mailboxUidForMessage:self];

  return v4;
}

- (id)library
{
  v2 = [(MFLibraryMessage *)self messageStore];
  v3 = [v2 library];

  return v3;
}

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__MFLibraryMessage_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (MFLibraryMessage)initWithLibraryID:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = MFLibraryMessage;
  v4 = [(MFLibraryMessage *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E699B5F8]) initWithDatabaseID:a3];
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

+ (id)messageWithLibraryID:(int64_t)a3
{
  v3 = [[MFLibraryMessage alloc] initWithLibraryID:a3];

  return v3;
}

- (id)messageID
{
  v2 = [(MFLibraryMessage *)self persistedMessageID];
  v3 = [v2 stringValue];

  return v3;
}

- (NSString)persistentID
{
  v2 = [(MFLibraryMessage *)self persistedMessageID];
  v3 = [v2 stringValue];

  return v3;
}

- (int64_t)libraryID
{
  v2 = [(MFLibraryMessage *)self persistedMessageID];
  v3 = [v2 databaseID];

  return v3;
}

- (EMSearchableMessageID)searchableMessageID
{
  v2 = MEMORY[0x1E699B6A8];
  v3 = [(MFLibraryMessage *)self persistedMessageID];
  v4 = [v2 searchableMessageIDForPersistedMessageID:v3];

  return v4;
}

- (EMMessageObjectID)objectID
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E699AD28];
  v4 = [(MFLibraryMessage *)self mailbox];
  v5 = [v4 objectID];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [v3 mailboxScopeForMailboxObjectIDs:v6 forExclusion:0];

  v8 = [objc_alloc(MEMORY[0x1E699ADA8]) initWithGlobalMessageID:-[MFLibraryMessage globalMessageID](self mailboxScope:{"globalMessageID"), v7}];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)setMailboxID:(int64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  [(MFLibraryMessage *)self mf_lock];
  self->_mailboxID = a3;
  [(MFLibraryMessage *)self mf_unlock];
  if (a3 == -1)
  {
    v5 = +[MFLibraryMessage log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(MFLibraryMessage *)self ef_publicDescription];
      [(MFLibraryMessage *)v6 setMailboxID:v8, v5];
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

- (void)setOriginalMailboxID:(int64_t)a3
{
  [(MFLibraryMessage *)self mf_lock];
  self->_originalMailboxID = a3;

  [(MFLibraryMessage *)self mf_unlock];
}

- (id)originalMailboxURL
{
  v3 = [(MFLibraryMessage *)self library];
  v4 = [v3 urlForMailboxID:{-[MFLibraryMessage originalMailboxID](self, "originalMailboxID")}];

  return v4;
}

- (NSURL)mailboxURL
{
  v2 = [(MFLibraryMessage *)self originalMailboxURL];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v2];
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
  v4 = [(MFLibraryMessage *)self library];
  v5 = [(MFLibraryMessage *)self account];
  v6 = [v4 messageBasePathForAccount:v5];
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

- (void)setMessageSize:(unint64_t)a3
{
  [(MFLibraryMessage *)self mf_lock];
  self->_size = a3;

  [(MFLibraryMessage *)self mf_unlock];
}

- (void)setRemoteID:(id)a3
{
  v5 = a3;
  _MFLockGlobalLock();
  if (self->_remoteID != v5)
  {
    objc_storeStrong(&self->_remoteID, a3);
    [(MFLibraryMessage *)self _updateUID];
  }

  _MFUnlockGlobalLock();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = [(MFLibraryMessage *)self libraryID];
    v6 = v5 == [(MFLibraryMessage *)v4 libraryID];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MFLibraryMessage;
    v6 = [(MFLibraryMessage *)&v8 isEqual:v4];
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(MFLibraryMessage *)self persistedMessageID];
  v3 = [v2 hash];

  return v3;
}

- (void)setUid:(unsigned int)a3
{
  if (self->_uid != a3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    v5 = [v4 stringValue];
    [(MFLibraryMessage *)self setRemoteID:v5];

    [(MFLibraryMessage *)self commit];
  }
}

- (void)setUniqueRemoteId:(unint64_t)a3
{
  _MFLockGlobalLock();
  if (self->_uniqueRemoteId != a3)
  {
    self->_uniqueRemoteId = a3;
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
  v2 = self;
  v3 = [(MFLibraryMessage *)self library];
  LOBYTE(v2) = [v3 areMessageContentsLocallyAvailable:v2 fullContentsAvailble:0];

  return v2;
}

- (BOOL)hasTemporaryUid
{
  [(MFLibraryMessage *)self mf_lock];
  v3 = HIDWORD(self->super._messageFlags) & 1;
  [(MFLibraryMessage *)self mf_unlock];
  return v3;
}

- (void)setHasTemporaryUid:(BOOL)a3
{
  v3 = a3;
  [(MFLibraryMessage *)self mf_lock];
  v5 = 0x100000000;
  if (!v3)
  {
    v5 = 0;
  }

  self->super._messageFlags = self->super._messageFlags & 0xFFFFFFFEFFFFFFFFLL | v5;

  [(MFLibraryMessage *)self mf_unlock];
}

- (id)mailboxName
{
  v3 = [(MFLibraryMessage *)self library];
  v4 = [v3 mailboxUidForMessage:self];

  v5 = [v4 account];
  v6 = [v5 nameForMailboxUid:v4];

  return v6;
}

- (int64_t)compareByUidWithMessage:(id)a3
{
  v4 = a3;
  v5 = [(MFLibraryMessage *)self hasTemporaryUid];
  v6 = [v4 hasTemporaryUid];
  v7 = v5 - v6;
  if (v5 == v6)
  {
    uid = self->_uid;
    v7 = uid - [v4 uid];
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

- (void)setMessageFlagsWithoutCommitting:(unint64_t)a3
{
  [(MFLibraryMessage *)self mf_lock];
  self->super._messageFlags = a3;

  [(MFLibraryMessage *)self mf_unlock];
}

- (void)setMessageFlags:(unint64_t)a3
{
  if ([(MFMailMessage *)self messageFlags]!= a3)
  {
    v5 = [(MFLibraryMessage *)self library];
    [v5 setFlags:a3 forMessage:self];
  }
}

- (void)setFlags:(unint64_t)a3
{
  [(MFLibraryMessage *)self mf_lock];
  self->super._messageFlags = a3;

  [(MFLibraryMessage *)self mf_unlock];
}

- (void)setSummary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MFLibraryMessage;
  v5 = [(MFLibraryMessage *)&v9 summary];
  v6 = [v5 isEqualToString:v4];

  if ((v6 & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = MFLibraryMessage;
    [(MFMailMessage *)&v8 setSummary:v4];
    v7 = [(MFLibraryMessage *)self library];
    [v7 setSummary:v4 forMessage:self];
  }
}

- (void)commit
{
  v3 = [(MFLibraryMessage *)self library];
  [v3 setFlags:-[MFMailMessage messageFlags](self forMessage:{"messageFlags"), self}];
}

- (void)setMutableInfoFromMessage:(id)a3
{
  v4 = a3;
  -[MFLibraryMessage setMessageFlagsWithoutCommitting:](self, "setMessageFlagsWithoutCommitting:", [v4 messageFlags]);
}

- (id)_privacySafeDescription
{
  v9.receiver = self;
  v9.super_class = MFLibraryMessage;
  v3 = [(MFLibraryMessage *)&v9 _privacySafeDescription];
  v4 = [(MFLibraryMessage *)self libraryID];
  v5 = [(MFLibraryMessage *)self globalMessageID];
  v6 = [(MFLibraryMessage *)self remoteID];
  v7 = [v3 stringByAppendingFormat:@" libraryID:%lld globalMessageID:%lld remoteID:%@", v4, v5, v6];

  return v7;
}

- (id)path
{
  v3 = [(MFLibraryMessage *)self library];
  v4 = [v3 dataPathForMessage:self];

  return v4;
}

- (id)dataPathForMimePart:(id)a3
{
  v4 = a3;
  v5 = [(MFLibraryMessage *)self messageStore];
  v6 = [v5 dataPathForMessage:self part:v4];

  return v6;
}

- (MailAccount)account
{
  v3 = [(MFLibraryMessage *)self messageStore];
  v4 = +[MFLibraryStore sharedInstanceIfExists];

  if (v4 == v3)
  {
    v6 = [(MFLibraryMessage *)self library];
    v5 = [v6 accountForMessage:self];
  }

  else
  {
    v5 = [v3 account];
  }

  return v5;
}

- (void)markAsViewed
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (([(MFMailMessage *)self messageFlags]& 1) == 0)
  {
    v3 = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageIsRead";
    v10[0] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = self;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
    v6 = [v3 setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)markAsNotViewed
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (([(MFMailMessage *)self messageFlags]& 1) != 0)
  {
    v3 = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageIsRead";
    v10[0] = MEMORY[0x1E695E110];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = self;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
    v6 = [v3 setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)markAsFlagged
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (([(MFMailMessage *)self messageFlags]& 0x10) == 0)
  {
    v3 = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageIsFlagged";
    v10[0] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = self;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
    v6 = [v3 setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)markAsNotFlagged
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (([(MFMailMessage *)self messageFlags]& 0x10) != 0)
  {
    v3 = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageIsFlagged";
    v10[0] = MEMORY[0x1E695E110];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = self;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
    v6 = [v3 setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)markAsReplied
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (([(MFMailMessage *)self messageFlags]& 4) == 0)
  {
    v3 = [(MFLibraryMessage *)self messageStore];
    v9[0] = @"MessageWasRepliedTo";
    v9[1] = @"MessageChangeReason";
    v10[0] = MEMORY[0x1E695E118];
    v10[1] = &unk_1F27757A8;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    v8 = self;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
    v6 = [v3 setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)markAsForwarded
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (([(MFMailMessage *)self messageFlags]& 0x100) == 0)
  {
    v3 = [(MFLibraryMessage *)self messageStore];
    v9[0] = @"MessageWasForwarded";
    v9[1] = @"MessageChangeReason";
    v10[0] = MEMORY[0x1E695E118];
    v10[1] = &unk_1F27757A8;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    v8 = self;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
    v6 = [v3 setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)preferredAccountToUseForReplying
{
  v2 = [(MFLibraryMessage *)self originalMailboxURL];
  v3 = [MailAccount mailboxUidFromActiveAccountsForURL:v2];
  v4 = [v3 account];

  return v4;
}

- (id)sendersWithError:(id *)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = [(MFLibraryMessage *)self sendersIfCached];
  if (!v5)
  {
    v6 = [(MFLibraryMessage *)self library];
    v14 = 0;
    v7 = [v6 senderForMessageWithLibraryID:-[MFLibraryMessage libraryID](self error:{"libraryID"), &v14}];
    v8 = v14;

    if (v8)
    {
      if (a3)
      {
        v9 = v8;
        v5 = 0;
        *a3 = v8;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v10 = [v7 stringValue];
      v11 = v10;
      if (v10)
      {
        v15[0] = v10;
        v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
        [(MFLibraryMessage *)self setSender:v5];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setBrandIndicatorLocation:(id)a3 andData:(id)a4
{
  v10 = a3;
  v7 = a4;
  [(MFLibraryMessage *)self mf_lock];
  objc_storeStrong(&self->_brandIndicatorLocation, a3);
  v8 = [v7 copy];
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

- (void)setRemoteID:(id)a3 flags:(unint64_t)a4 size:(unsigned int)a5 mailboxID:(int64_t)a6 originalMailboxID:(int64_t)a7
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = a3;
  if (v12)
  {
    [(MFLibraryMessage *)self setRemoteID:v12];
  }

  [(MFLibraryMessage *)self mf_lock];
  self->super._messageFlags = a4;
  self->_size = a5;
  self->_mailboxID = a6;
  self->_originalMailboxID = a7;
  [(MFLibraryMessage *)self mf_unlock];
  if (a6 == -1)
  {
    v13 = +[MFLibraryMessage log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(MFLibraryMessage *)self ef_publicDescription];
      [(MFLibraryMessage *)v14 setMailboxID:v16, v13];
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
  v4 = [(MFLibraryMessage *)&v12 messageIDHeader];
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    v7 = [(MFLibraryMessage *)self messageStore];
    v8 = [v7 library];
    v9 = [v8 persistence];
    v10 = [v9 messagePersistence];

    [v10 persistMessageIDHeaderForMessage:self async:1];
  }

  return v5;
}

- (id)downloadedMessageData
{
  v3 = [(MFLibraryMessage *)self library];
  v4 = [v3 downloadedMessageDataForMessage:self];

  return v4;
}

- (id)storageLocationForAttachment:(id)a3
{
  v4 = a3;
  v5 = [(MFLibraryMessage *)self library];
  v6 = [v5 persistence];
  v7 = [v6 attachmentPersistenceManager];

  v8 = [v5 attachmentMigrator];
  [v8 migrateAttachmentsForMessageIfNecessary:self];

  v9 = [(MFLibraryMessage *)self account];
  v10 = [v5 messageBasePathForAccount:v9];

  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:1];
  v12 = [v4 mimePartNumber];
  if (v12 || ([v4 part], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "partNumber"), v12 = objc_claimAutoreleasedReturnValue(), v13, v12))
  {
    v14 = [v7 attachmentURLForGlobalMessageID:-[MFLibraryMessage globalMessageID](self mimePartNumber:"globalMessageID") basePath:{v12, v11}];
    v15 = [v14 path];

    goto LABEL_4;
  }

  v17 = [v4 mailDropMetadata];

  if (v17)
  {
    v18 = [(MFLibraryMessage *)self globalMessageID];
    v19 = [v4 mailDropMetadata];
    v20 = [v19 directUrl];
    v21 = [v7 attachmentURLForGlobalMessageID:v18 remoteURL:v20 basePath:v11];
    v15 = [v21 path];

    if (v15)
    {
LABEL_11:
      v12 = 0;
      goto LABEL_4;
    }

    v22 = [v4 mailDropMetadata];
    v23 = [MFMessageAttachmentMigrator migrateMaildropFileForMessage:self mailDropMetadata:v22];

    if (v23)
    {
      v24 = [(MFLibraryMessage *)self globalMessageID];
      v25 = [v4 mailDropMetadata];
      v26 = [v25 directUrl];
      v27 = [v7 attachmentURLForGlobalMessageID:v24 remoteURL:v26 basePath:v11];
      v15 = [v27 path];

      goto LABEL_11;
    }
  }

  else
  {
    v28 = EDAttachmentsLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(MFLibraryMessage *)v4 storageLocationForAttachment:v28];
    }
  }

  v12 = 0;
  v15 = 0;
LABEL_4:

  return v15;
}

- (void)_forceLoadOfMessageSummaryFromProtectedStore
{
  v8 = [(MFLibraryMessage *)self library];
  v4 = [v8 urlForMailboxID:{-[MFLibraryMessage mailboxID](self, "mailboxID")}];
  v5 = [v8 messageWithLibraryID:-[MFLibraryMessage libraryID](self options:"libraryID") inMailbox:{32783, v4}];
  v6 = v5;
  if (v5 && v5 != self)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"LibraryMessage.m" lineNumber:580 description:{@"Expected message %@ to be self %@", v6, self}];
  }
}

- (void)loadCachedHeaderValuesFromHeaders:(id)a3
{
  v4 = a3;
  [(MFLibraryMessage *)self _forceLoadOfMessageSummaryFromProtectedStore];
  v5.receiver = self;
  v5.super_class = MFLibraryMessage;
  [(MFMailMessage *)&v5 loadCachedHeaderValuesFromHeaders:v4];
}

- (unint64_t)fileSize
{
  v3 = [(MFLibraryMessage *)self library];
  v4 = [v3 fileAttributesForMessage:self];
  v5 = [v4 fileSize];

  return v5;
}

- (NSArray)references
{
  [(MFLibraryMessage *)self mf_lock];
  v3 = self->_references;
  [(MFLibraryMessage *)self mf_unlock];
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = MFLibraryMessage;
    v3 = [(MFMailMessage *)&v5 references];
  }

  return v3;
}

- (void)setReferences:(id)a3
{
  v5 = a3;
  [(MFLibraryMessage *)self mf_lock];
  objc_storeStrong(&self->_references, a3);
  [(MFLibraryMessage *)self mf_unlock];
}

- (EMReadLater)readLater
{
  [(MFLibraryMessage *)self mf_lock];
  v3 = self->_readLater;
  [(MFLibraryMessage *)self mf_unlock];

  return v3;
}

- (void)setReadLater:(id)a3
{
  v5 = a3;
  [(MFLibraryMessage *)self mf_lock];
  objc_storeStrong(&self->_readLater, a3);
  [(MFLibraryMessage *)self mf_unlock];
}

- (EDAccount)accountForSender
{
  v2 = [(MFLibraryMessage *)self firstSender];
  v3 = [MailAccount accountContainingEmailAddress:v2];

  return v3;
}

- (NSDate)sendLaterDate
{
  [(MFLibraryMessage *)self mf_lock];
  v3 = self->_sendLaterDate;
  [(MFLibraryMessage *)self mf_unlock];

  return v3;
}

- (void)setSendLaterDate:(id)a3
{
  v5 = a3;
  [(MFLibraryMessage *)self mf_lock];
  objc_storeStrong(&self->_sendLaterDate, a3);
  [(MFLibraryMessage *)self mf_unlock];
}

- (EMFollowUp)followUp
{
  [(MFLibraryMessage *)self mf_lock];
  v3 = self->_followUp;
  [(MFLibraryMessage *)self mf_unlock];

  return v3;
}

- (void)setFollowUp:(id)a3
{
  v5 = a3;
  [(MFLibraryMessage *)self mf_lock];
  objc_storeStrong(&self->_followUp, a3);
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
    v6 = [(MFLibraryMessage *)self library];
    v3 = [v6 persistence];
    v4 = [v3 dataDetectionPersistence];

    v5 = [v4 getDataDetectionResultsForGlobalMessageID:{-[MFLibraryMessage globalMessageID](self, "globalMessageID")}];
    [(MFLibraryMessage *)self mf_lock];
    if (!self->_dataDetectionAttributes)
    {
      objc_storeStrong(&self->_dataDetectionAttributes, v5);
    }

    [(MFLibraryMessage *)self mf_unlock];
  }
}

- (id)signatureInfoIfDecodingIsComplete:(BOOL)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [(MFLibraryMessage *)self messageBodyIfAvailableUpdatingFlags:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 topLevelPart];
      if (([v6 isSecurePart] & 1) != 0 && (!v3 || objc_msgSend(v6, "isDecodingComplete")) && (objc_msgSend(v6, "decodeIfNecessary"), objc_msgSend(v6, "isSigned")))
      {
        v7 = [v6 signatureInfo];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
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