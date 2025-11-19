@interface MFMailMessage
+ (id)externalDataTypeIdentifiers;
+ (id)forwardedMessagePrefixWithSpacer:(BOOL)a3;
+ (unsigned)validatePriority:(int)a3;
- (BOOL)shouldSetSummary;
- (MFMailboxUid)mailbox;
- (NSString)ef_publicDescription;
- (id)URL;
- (id)_privacySafeDescription;
- (id)account;
- (id)bestAlternativePart:(BOOL *)a3;
- (id)copyMessageInfo;
- (id)globalMessageURL;
- (id)listUnsubscribe;
- (id)loadMeetingData;
- (id)loadMeetingExternalID;
- (id)loadMeetingMetadata;
- (id)mailMessageStore;
- (id)messageStore;
- (id)originalMailboxURL;
- (int)priority;
- (unint64_t)messageFlags;
- (unint64_t)modSequenceNumber;
- (unint64_t)numberOfAttachments;
- (void)dealloc;
- (void)loadCachedHeaderValuesFromHeaders:(id)a3;
- (void)markAsFlagged;
- (void)markAsForwarded;
- (void)markAsNotFlagged;
- (void)markAsNotViewed;
- (void)markAsReplied;
- (void)markAsViewed;
- (void)setModSequenceNumber:(unint64_t)a3;
- (void)setMutableInfoFromMessage:(id)a3;
- (void)setPriorityFromHeaders:(id)a3;
- (void)setSummary:(id)a3;
@end

@implementation MFMailMessage

+ (id)forwardedMessagePrefixWithSpacer:(BOOL)a3
{
  if (a3)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"\n\n%@", MFLookupLocalizedString(@"FORWARDED_MESSAGE_PREFIX", @"Begin forwarded message:\n\n", @"Delayed"];
  }

  return MFLookupLocalizedString(@"FORWARDED_MESSAGE_PREFIX", @"Begin forwarded message:\n\n", @"Delayed");
}

- (id)messageStore
{
  v3.receiver = self;
  v3.super_class = MFMailMessage;
  return [(MFMailMessage *)&v3 messageStore];
}

- (id)mailMessageStore
{
  v2 = [(MFMailMessage *)self messageStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)modSequenceNumber
{
  [(MFMailMessage *)self mf_lock];
  modSequenceNumber = self->_modSequenceNumber;
  [(MFMailMessage *)self mf_unlock];
  return modSequenceNumber;
}

- (void)setModSequenceNumber:(unint64_t)a3
{
  [(MFMailMessage *)self mf_lock];
  self->_modSequenceNumber = a3;

  [(MFMailMessage *)self mf_unlock];
}

- (unint64_t)messageFlags
{
  [(MFMailMessage *)self mf_lock];
  messageFlags = self->_messageFlags;
  [(MFMailMessage *)self mf_unlock];
  return messageFlags;
}

+ (unsigned)validatePriority:(int)a3
{
  if ((a3 - 6) >= 0xFFFFFFFB)
  {
    return a3;
  }

  else
  {
    return 3;
  }
}

- (void)setPriorityFromHeaders:(id)a3
{
  v4 = [a3 firstHeaderForKey:*MEMORY[0x277D07060]];
  if (v4)
  {
    v5 = ([objc_opt_class() validatePriority:{objc_msgSend(v4, "intValue")}] & 7) << 16;
  }

  else
  {
    v5 = 196608;
  }

  v6 = self->_messageFlags & 0xFFFFFFFFFFF8FFFFLL | v5;

  [(MFMailMessage *)self setMessageFlags:v6];
}

- (int)priority
{
  v2 = WORD1(self->_messageFlags);
  v3 = v2 & 7;
  if ((v2 & 7) == 0)
  {
    -[MFMailMessage loadCachedHeaderValuesFromHeaders:](self, "loadCachedHeaderValuesFromHeaders:", [-[MFMailMessage messageStore](self "messageStore")]);
  }

  v4 = objc_opt_class();

  return [v4 validatePriority:v3];
}

- (void)loadCachedHeaderValuesFromHeaders:(id)a3
{
  v7.receiver = self;
  v7.super_class = MFMailMessage;
  [(MFMailMessage *)&v7 loadCachedHeaderValuesFromHeaders:?];
  _MFLockGlobalLock();
  v5 = self->_messageFlags & 0x70000;
  v6 = *(&self->super.super.isa + *MEMORY[0x277D24FD8]);
  _MFUnlockGlobalLock();
  if (v5)
  {
    if (v6)
    {
      return;
    }

LABEL_5:
    [a3 firstHeaderForKey:*MEMORY[0x277D06FE0]];
    [(MFMailMessage *)self setMessageIDHash:MFStringHashForMessageIDHeader()];
    return;
  }

  [(MFMailMessage *)self setPriorityFromHeaders:a3];
  if (!v6)
  {
    goto LABEL_5;
  }
}

- (void)markAsViewed
{
  if (([(MFMailMessage *)self messageFlags]& 1) == 0)
  {
    v3 = [(MFMailMessage *)self messageFlags]| 1;

    [(MFMailMessage *)self setMessageFlags:v3];
  }
}

- (void)markAsNotViewed
{
  if (([(MFMailMessage *)self messageFlags]& 1) != 0)
  {
    v3 = [(MFMailMessage *)self messageFlags]& 0xFFFFFFFFFFFFFFFELL;

    [(MFMailMessage *)self setMessageFlags:v3];
  }
}

- (void)markAsReplied
{
  if (([(MFMailMessage *)self messageFlags]& 4) == 0)
  {
    v3 = [(MFMailMessage *)self messageFlags]| 4;

    [(MFMailMessage *)self setMessageFlags:v3];
  }
}

- (void)markAsForwarded
{
  if (([(MFMailMessage *)self messageFlags]& 0x100) == 0)
  {
    v3 = [(MFMailMessage *)self messageFlags]| 0x100;

    [(MFMailMessage *)self setMessageFlags:v3];
  }
}

- (void)markAsFlagged
{
  if (([(MFMailMessage *)self messageFlags]& 0x10) == 0)
  {
    v3 = [(MFMailMessage *)self messageFlags]| 0x10;

    [(MFMailMessage *)self setMessageFlags:v3];
  }
}

- (void)markAsNotFlagged
{
  if (([(MFMailMessage *)self messageFlags]& 0x10) != 0)
  {
    v3 = [(MFMailMessage *)self messageFlags]& 0xFFFFFFFFFFFFFFEFLL;

    [(MFMailMessage *)self setMessageFlags:v3];
  }
}

- (MFMailboxUid)mailbox
{
  v2 = [(MFMailMessage *)self messageStore];

  return [v2 mailboxUid];
}

- (id)loadMeetingExternalID
{
  v3 = [(MFMailMessage *)self messageStore];

  return [v3 loadMeetingExternalIDForMessage:self];
}

- (id)loadMeetingData
{
  v3 = [(MFMailMessage *)self messageStore];

  return [v3 loadMeetingDataForMessage:self];
}

- (id)loadMeetingMetadata
{
  v3 = [(MFMailMessage *)self mailMessageStore];

  return [v3 loadMeetingMetadataForMessage:self];
}

- (id)_privacySafeDescription
{
  _MFLockGlobalLock();
  v3 = *(&self->super.super.isa + *MEMORY[0x277D24FD8]);
  _MFUnlockGlobalLock();
  v4 = [objc_alloc(MEMORY[0x277D071C0]) initWithHash:{-[MFMailMessage conversationID](self, "conversationID")}];
  v5 = [objc_alloc(MEMORY[0x277D071C0]) initWithHash:v3];
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = [v4 ef_publicDescription];
  v9 = [v5 ef_publicDescription];
  LODWORD(v10) = *(&self->super.super.isa + *MEMORY[0x277D24FD0]);
  return [v6 stringWithFormat:@"<%@ %p> conversationID=%@ messageID=%@ received=%@", v7, self, v8, v9, objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSince1970:", v10)];
}

- (NSString)ef_publicDescription
{
  if ([objc_msgSend(MEMORY[0x277D07148] "currentDevice")])
  {

    return [(MFMailMessage *)self description];
  }

  else
  {

    return [(MFMailMessage *)self _privacySafeDescription];
  }
}

- (id)account
{
  v2 = [(MFMailMessage *)self messageStore];

  return [v2 account];
}

- (id)originalMailboxURL
{
  v2 = [(MFMailMessage *)self mailbox];

  return [(MFMailboxUid *)v2 URLString];
}

- (id)URL
{
  v3 = [(MFMailMessage *)self account];

  return [v3 URLForMessage:self];
}

- (id)globalMessageURL
{
  if (!self->_globalMessageURL)
  {
    v3 = [(MFMailMessage *)self messageIDHeader];
    if ([v3 length])
    {
      v4 = objc_alloc_init(MEMORY[0x277CCACE0]);
      [v4 setScheme:@"message"];
      [v4 setPath:v3];
      self->_globalMessageURL = [objc_msgSend(v4 "URL")];
    }
  }

  return self->_globalMessageURL;
}

- (unint64_t)numberOfAttachments
{
  v2 = [(MFMailMessage *)self messageFlags]>> 10;
  if (v2 == 63)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

- (void)setMutableInfoFromMessage:(id)a3
{
  v4 = [a3 messageFlags];

  [(MFMailMessage *)self setMessageFlags:v4];
}

- (void)setSummary:(id)a3
{
  _MFLockGlobalLock();
  v5 = *MEMORY[0x277D24FE0];
  v6 = *(&self->super.super.isa + v5);
  if (v6 != a3)
  {

    *(&self->super.super.isa + v5) = a3;
  }

  _MFUnlockGlobalLock();
}

- (BOOL)shouldSetSummary
{
  v3 = [-[MFMailMessage messageStore](self "messageStore")];
  if (v3)
  {
    LOBYTE(v3) = [(MFMailMessage *)self summary]== 0;
  }

  return v3;
}

- (id)copyMessageInfo
{
  info = self->_info;
  if (!info)
  {
    info = objc_alloc_init(MFMessageInfo);
    self->_info = info;
  }

  [(MFMessageInfo *)info setUid:self];
  [(MFMailMessage *)self dateReceivedAsTimeIntervalSince1970];
  [(MFMessageInfo *)self->_info setDateReceivedInterval:v4];
  [(MFMailMessage *)self dateSentAsTimeIntervalSince1970];
  [(MFMessageInfo *)self->_info setDateSentInterval:v5];
  [(MFMessageInfo *)self->_info setUidIsLibraryID:0];
  [(MFMessageInfo *)self->_info setConversationHash:[(MFMailMessage *)self conversationID]];
  [(MFMessageInfo *)self->_info setMessageIDHash:[(MFMailMessage *)self messageIDHash]];
  [(MFMessageInfo *)self->_info setIsVIP:(self->_messageFlags >> 24) & 1];
  [(MFMessageInfo *)self->_info setRead:self->_messageFlags & 1];
  [(MFMessageInfo *)self->_info setFlagged:(self->_messageFlags >> 4) & 1];
  messageFlags = self->_messageFlags;
  if (messageFlags >> 10)
  {
    v7 = messageFlags >> 10 != 63;
  }

  else
  {
    v7 = 0;
  }

  [(MFMessageInfo *)self->_info setKnownToHaveAttachments:v7];
  v8 = self->_info;

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFMailMessage;
  [(MFMailMessage *)&v3 dealloc];
}

- (id)bestAlternativePart:(BOOL *)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v5 = [(MFMailMessage *)self messageBodyIfAvailableUpdatingFlags:0];
  if (v5)
  {
    v6 = [v5 topLevelPart];
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
    do
    {
      if (!v10)
      {
        v7 = [v8 contentToOffset:1 resultOffset:&v29 downloadIfNecessary:0 asHTML:1 isComplete:a3];
        v9 = v8;
      }

      v11 = [(MFMailMessage *)self bestAlternativeInPart:v6];
      v8 = v11;
      v10 = v11 == 0;
    }

    while (!v11 || v11 != v9);
  }

  else
  {
    v7 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v7);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v17 htmlData])
        {
          v18 = [v17 preferredEncoding];
          v19 = MFCreateStringWithData();
          v20 = v19;
          if (v18 != -1 && v19 == 0)
          {
            v20 = MFCreateStringWithData();
          }

          if (v20)
          {
            if (v14)
            {
              v22 = [v14 stringByAppendingString:v20];
            }

            else
            {
              v22 = v20;
            }

            v14 = v22;
          }
        }
      }

      v13 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)externalDataTypeIdentifiers
{
  v2 = [MEMORY[0x277CBEB18] array];
  [v2 addObject:@"com.apple.mail.email"];
  [v2 addObject:*MEMORY[0x277CC2068]];
  if (objc_opt_respondsToSelector())
  {
    [v2 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CCAE58], "performSelector:", sel_writableTypeIdentifiersForItemProvider)}];
  }

  [v2 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEBC0], "writableTypeIdentifiersForItemProvider")}];
  if (objc_opt_respondsToSelector())
  {
    [v2 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CCA898], "performSelector:", sel_writableTypeIdentifiersForItemProvider)}];
  }

  [v2 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CCACA8], "writableTypeIdentifiersForItemProvider")}];
  return v2;
}

- (id)listUnsubscribe
{
  v2 = [(MFMailMessage *)self headers];

  return [v2 listUnsubscribeCommands];
}

@end