@interface MFLibraryMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)isMessageContentsLocallyAvailable;
- (MFLibraryMessage)initWithLibraryID:(unsigned int)a3;
- (id)_attachmentStorageLocation;
- (id)_privacySafeDescription;
- (id)account;
- (id)copyMessageInfo;
- (id)dataConsumerForMimePart:(id)a3;
- (id)dataPathForMimePart:(id)a3;
- (id)library;
- (id)mailbox;
- (id)mailboxName;
- (id)messageID;
- (id)messageStore;
- (id)metadataValueOfClass:(Class)a3 forKey:(id)a4;
- (id)originalMailboxURL;
- (id)path;
- (id)preferredEmailAddressToReplyWith;
- (id)remoteID;
- (int64_t)compareByUidWithMessage:(id)a3;
- (void)_forceLoadOfMessageSummaryFromProtectedStore;
- (void)_initializeMetadata;
- (void)_updateUID;
- (void)commit;
- (void)dealloc;
- (void)loadCachedHeaderValuesFromHeaders:(id)a3;
- (void)markAsFlagged;
- (void)markAsForwarded;
- (void)markAsNotFlagged;
- (void)markAsNotViewed;
- (void)markAsReplied;
- (void)markAsViewed;
- (void)setHasTemporaryUid:(BOOL)a3;
- (void)setMessageFlags:(unint64_t)a3;
- (void)setMessageFlagsWithoutCommitting:(unint64_t)a3;
- (void)setMetadataValue:(id)a3 forKey:(id)a4;
- (void)setMutableInfoFromMessage:(id)a3;
- (void)setPreferredEncoding:(unsigned int)a3;
- (void)setRemoteID:(const char *)a3 flags:(unint64_t)a4 size:(unsigned int)a5 mailboxID:(unsigned int)a6 originalMailboxID:(unsigned int)a7;
- (void)setRemoteID:(id)a3;
- (void)setSummary:(id)a3;
- (void)setUid:(unsigned int)a3;
- (void)setUniqueRemoteId:(unint64_t)a3;
@end

@implementation MFLibraryMessage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFLibraryMessage;
  [(MFMailMessage *)&v3 dealloc];
}

- (MFLibraryMessage)initWithLibraryID:(unsigned int)a3
{
  v7.receiver = self;
  v7.super_class = MFLibraryMessage;
  v4 = [(MFLibraryMessage *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_libraryID = a3;
    v4->_originalMailboxID = -1;
    v4->_mailboxID = -1;
    v4->_metadataLock = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"Metadata Lock" andDelegate:0];
  }

  return v5;
}

- (id)library
{
  v2 = [(MFLibraryMessage *)self messageStore];

  return [v2 library];
}

- (id)messageID
{
  p_messageID = &self->_messageID;
  if (!atomic_load(&self->_messageID))
  {
    libraryID = self->_libraryID;
    v6 = EFStringWithInt();
    v7 = 0;
    atomic_compare_exchange_strong(p_messageID, &v7, v6);
    if (v7)
    {
    }
  }

  v8 = self->_messageID;

  return v8;
}

- (id)originalMailboxURL
{
  v3 = [(MFLibraryMessage *)self library];
  originalMailboxID = self->_originalMailboxID;

  return [v3 urlForMailboxID:originalMailboxID];
}

- (id)messageStore
{
  v3.receiver = self;
  v3.super_class = MFLibraryMessage;
  result = [(MFMailMessage *)&v3 messageStore];
  if (!result)
  {
    return +[MFLibraryStore sharedInstance];
  }

  return result;
}

- (id)mailbox
{
  v3 = [(MFLibraryMessage *)self library];

  return [v3 mailboxUidForMessage:self];
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
      self->_uid = [[(NSString *)self->_remoteID substringWithRange:v4 + v5 intValue];
    }
  }
}

- (void)setRemoteID:(id)a3
{
  _MFLockGlobalLock();
  remoteID = self->_remoteID;
  if (remoteID != a3)
  {

    self->_remoteID = a3;
    [(MFLibraryMessage *)self _updateUID];
  }

  _MFUnlockGlobalLock();
}

- (id)remoteID
{
  v2 = self->_remoteID;

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v10 = v3;
  v11 = v4;
  if (objc_opt_respondsToSelector())
  {
    libraryID = self->_libraryID;
    return libraryID == [a3 libraryID];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MFLibraryMessage;
    return [(MFLibraryMessage *)&v9 isEqual:a3];
  }
}

- (void)setUid:(unsigned int)a3
{
  if (self->_uid != a3)
  {
    -[MFLibraryMessage setRemoteID:](self, "setRemoteID:", [objc_msgSend(MEMORY[0x277CCABB0] "numberWithUnsignedInt:"stringValue"")]);

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

- (BOOL)isMessageContentsLocallyAvailable
{
  v3 = [(MFLibraryMessage *)self library];

  return [v3 isMessageContentsLocallyAvailable:self];
}

- (void)setPreferredEncoding:(unsigned int)a3
{
  self->super._messageFlags = self->super._messageFlags & 0xFFFFFFF7FFFFFFFFLL | ((a3 != -1) << 35);
  v3.receiver = self;
  v3.super_class = MFLibraryMessage;
  [(MFLibraryMessage *)&v3 setPreferredEncoding:?];
}

- (void)setHasTemporaryUid:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->super._messageFlags = self->super._messageFlags & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (id)mailboxName
{
  v2 = [-[MFLibraryMessage library](self "library")];
  v3 = [v2 account];

  return [v3 nameForMailboxUid:v2];
}

- (int64_t)compareByUidWithMessage:(id)a3
{
  v5 = HIDWORD(self->super._messageFlags) & 1;
  v6 = [a3 hasTemporaryUid];
  v7 = v5 - v6;
  if (v5 == v6)
  {
    uid = self->_uid;
    v7 = uid - [a3 uid];
  }

  v9 = v7 < 0;
  v10 = v7 != 0;
  if (v9)
  {
    return -1;
  }

  else
  {
    return v10;
  }
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

- (void)setSummary:(id)a3
{
  v5.receiver = self;
  v5.super_class = MFLibraryMessage;
  [(MFMailMessage *)&v5 setSummary:?];
  [-[MFLibraryMessage library](self "library")];
}

- (void)commit
{
  v3 = [(MFLibraryMessage *)self library];
  v4 = [(MFMailMessage *)self messageFlags];

  [v3 setFlags:v4 forMessage:self];
}

- (void)setMutableInfoFromMessage:(id)a3
{
  v4 = [a3 messageFlags];

  [(MFLibraryMessage *)self setMessageFlagsWithoutCommitting:v4];
}

- (id)_privacySafeDescription
{
  v3.receiver = self;
  v3.super_class = MFLibraryMessage;
  return [-[MFMailMessage _privacySafeDescription](&v3 _privacySafeDescription)];
}

- (id)path
{
  v3 = [(MFLibraryMessage *)self library];

  return [v3 dataPathForMessage:self];
}

- (id)dataPathForMimePart:(id)a3
{
  v5 = [(MFLibraryMessage *)self messageStore];

  return [v5 dataPathForMessage:self part:a3];
}

- (id)account
{
  v3 = [(MFLibraryMessage *)self messageStore];
  if (+[MFLibraryStore sharedInstanceIfExists]== v3)
  {
    v5 = [(MFLibraryMessage *)self library];

    return [v5 accountForMessage:self];
  }

  else
  {

    return [v3 account];
  }
}

- (void)markAsViewed
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 1) == 0)
  {
    v3 = [(MFLibraryMessage *)self messageStore];
    v7 = @"MessageIsRead";
    v8[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v6 = self;
    [v3 setFlagsFromDictionary:v4 forMessages:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v6, 1)}];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)markAsNotViewed
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 1) != 0)
  {
    v3 = [(MFLibraryMessage *)self messageStore];
    v7 = @"MessageIsRead";
    v8[0] = MEMORY[0x277CBEC28];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v6 = self;
    [v3 setFlagsFromDictionary:v4 forMessages:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v6, 1)}];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)markAsFlagged
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 0x10) == 0)
  {
    v3 = [(MFLibraryMessage *)self messageStore];
    v7 = @"MessageIsFlagged";
    v8[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v6 = self;
    [v3 setFlagsFromDictionary:v4 forMessages:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v6, 1)}];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)markAsNotFlagged
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 0x10) != 0)
  {
    v3 = [(MFLibraryMessage *)self messageStore];
    v7 = @"MessageIsFlagged";
    v8[0] = MEMORY[0x277CBEC28];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v6 = self;
    [v3 setFlagsFromDictionary:v4 forMessages:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v6, 1)}];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)markAsReplied
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 4) == 0)
  {
    v3 = [(MFLibraryMessage *)self messageStore];
    v7 = @"MessageWasRepliedTo";
    v8[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v6 = self;
    [v3 setFlagsFromDictionary:v4 forMessages:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v6, 1)}];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)markAsForwarded
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 0x100) == 0)
  {
    v3 = [(MFLibraryMessage *)self messageStore];
    v7 = @"MessageWasForwarded";
    v8[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v6 = self;
    [v3 setFlagsFromDictionary:v4 forMessages:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v6, 1)}];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)preferredEmailAddressToReplyWith
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [+[MailAccount mailboxUidFromActiveAccountsForURL:](MailAccount mailboxUidFromActiveAccountsForURL:{objc_msgSend(-[MFLibraryMessage library](self, "library"), "urlForMailboxID:", -[MFLibraryMessage originalMailboxID](self, "originalMailboxID"))), "account"}];
  v4 = [MailAccount addressesThatReceivedMessage:self];
  v5 = [v3 firstEmailAddress];
  if (!v5)
  {
    goto LABEL_30;
  }

  v6 = v5;
  if ([v4 count] && (objc_msgSend(v4, "containsObject:", v6) & 1) == 0)
  {
    v7 = [objc_msgSend(objc_msgSend(v3 "emailAddressesAndAliasesList")];
    [v7 removeObject:v6];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (!v8)
    {

      goto LABEL_24;
    }

    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v4 containsObject:v12])
        {
          v6 = v12;
          if (([v7 containsObject:v12] & 1) == 0)
          {
            v6 = [v3 defaultEmailAddress];
          }

          goto LABEL_15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

LABEL_15:

    if (!v6)
    {
LABEL_30:
      if ([-[MFLibraryMessage mailbox](self "mailbox")])
      {
        v13 = [(MFLibraryMessage *)self senders];
        if ([v13 count])
        {
          v14 = v13;
LABEL_21:
          v6 = [v14 objectAtIndex:0];
          goto LABEL_24;
        }
      }

      else if ([v4 count])
      {
        v14 = v4;
        goto LABEL_21;
      }

      v6 = 0;
    }
  }

LABEL_24:
  if ([v6 isEqualToString:{objc_msgSend(v6, "mf_addressComment")}])
  {
    v15 = [+[MailAccount accountContainingEmailAddress:](MailAccount accountContainingEmailAddress:{v6), "fullUserName"}];
    if (v15)
    {
      v6 = [MEMORY[0x277CCACA8] mf_formattedAddressWithName:v15 email:v6 useQuotes:1];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setRemoteID:(const char *)a3 flags:(unint64_t)a4 size:(unsigned int)a5 mailboxID:(unsigned int)a6 originalMailboxID:(unsigned int)a7
{
  if (a3)
  {

    self->_remoteID = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a3];
    [(MFLibraryMessage *)self _updateUID];
  }

  self->super._messageFlags = a4;
  self->_size = a5;
  self->_mailboxID = a6;
  self->_originalMailboxID = a7;
}

- (id)dataConsumerForMimePart:(id)a3
{
  v5 = [(MFLibraryMessage *)self library];

  return [v5 dataConsumerForMessage:self part:a3];
}

- (id)copyMessageInfo
{
  v5.receiver = self;
  v5.super_class = MFLibraryMessage;
  v3 = [(MFMailMessage *)&v5 copyMessageInfo];
  [v3 setUid:{-[MFLibraryMessage libraryID](self, "libraryID")}];
  [v3 setMailboxID:self->_mailboxID];
  [v3 setUidIsLibraryID:1];
  return v3;
}

- (void)_initializeMetadata
{
  if (!self->_metadata)
  {
    self->_metadata = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_metadataChangedKeys = objc_alloc_init(MEMORY[0x277CBEB58]);
  }
}

- (void)setMetadataValue:(id)a3 forKey:(id)a4
{
  [(MFLock *)self->_metadataLock lock];
  metadata = self->_metadata;
  if (!metadata)
  {
    [(MFLibraryMessage *)self _initializeMetadata];
    metadata = self->_metadata;
  }

  [(NSMutableDictionary *)metadata setObject:a3 forKeyedSubscript:a4];
  v8 = [(NSMutableSet *)self->_metadataChangedKeys count];
  [(NSMutableSet *)self->_metadataChangedKeys addObject:a4];
  [(MFLock *)self->_metadataLock unlock];
  if (!v8)
  {
    v9 = [(MFLibraryMessage *)self library];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__MFLibraryMessage_setMetadataValue_forKey___block_invoke;
    v10[3] = &unk_2798B6668;
    v10[4] = self;
    [v9 updateMessage:self withMetadata:v10];
  }
}

void *__44__MFLibraryMessage_setMetadataValue_forKey___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 304) lock];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 296);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 setObject:objc_msgSend(*(*(a1 + 32) + 288) forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v10 + 1) + 8 * i)), *(*(&v10 + 1) + 8 * i)}];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 32) + 296) removeAllObjects];
  [*(*(a1 + 32) + 304) unlock];
  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)metadataValueOfClass:(Class)a3 forKey:(id)a4
{
  [(MFLock *)self->_metadataLock lock];
  metadata = self->_metadata;
  if (!metadata)
  {
    [(MFLibraryMessage *)self _initializeMetadata];
    metadata = self->_metadata;
  }

  v8 = [(NSMutableDictionary *)metadata objectForKeyedSubscript:a4];
  if (v8 || ((-[MFLock unlock](self->_metadataLock, "unlock"), v9 = [-[MFLibraryMessage library](self "library")], -[MFLock lock](self->_metadataLock, "lock"), (v8 = -[NSMutableDictionary objectForKeyedSubscript:](self->_metadata, "objectForKeyedSubscript:", a4)) == 0) ? (v10 = v9 == 0) : (v10 = 1), v10))
  {
    v12 = v8;
  }

  else
  {
    [(NSMutableDictionary *)self->_metadata setObject:v9 forKeyedSubscript:a4];
    v12 = v9;
  }

  [(MFLock *)self->_metadataLock unlock];
  return v12;
}

- (id)_attachmentStorageLocation
{
  if (![MFUserAgent() isMobileMail])
  {
    return 0;
  }

  v3 = [objc_msgSend(+[MailAccount mailboxUidFromActiveAccountsForURL:](MailAccount mailboxUidFromActiveAccountsForURL:{objc_msgSend(-[MFLibraryMessage library](self, "library"), "urlForMailboxID:", -[MFLibraryMessage mailboxID](self, "mailboxID"))), "fullPath"), "stringByAppendingPathComponent:", @"Attachments"}];
  [(MFLibraryMessage *)self libraryID];
  v4 = EFStringWithInt();

  return [v3 stringByAppendingPathComponent:v4];
}

- (void)_forceLoadOfMessageSummaryFromProtectedStore
{
  v4 = [(MFLibraryMessage *)self library];
  v5 = [v4 messageWithLibraryID:-[MFLibraryMessage libraryID](self options:"libraryID") inMailbox:{4111, objc_msgSend(v4, "urlForMailboxID:", -[MFLibraryMessage mailboxID](self, "mailboxID"))}];
  if (v5)
  {
    if (v5 != self)
    {
      [(MFLibraryMessage *)a2 _forceLoadOfMessageSummaryFromProtectedStore];
    }
  }
}

- (void)loadCachedHeaderValuesFromHeaders:(id)a3
{
  [(MFLibraryMessage *)self _forceLoadOfMessageSummaryFromProtectedStore];
  v5.receiver = self;
  v5.super_class = MFLibraryMessage;
  [(MFMailMessage *)&v5 loadCachedHeaderValuesFromHeaders:a3];
}

@end