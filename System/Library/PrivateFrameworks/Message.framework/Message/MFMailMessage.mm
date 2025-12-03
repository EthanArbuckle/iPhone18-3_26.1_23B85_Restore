@interface MFMailMessage
+ (id)forwardedMessagePrefixWithSpacer:(BOOL)spacer;
+ (id)globalMessageURLWithMessageIDHeader:(id)header;
+ (unsigned)validatePriority:(int)priority;
- (BOOL)isPartOfExistingThread;
- (BOOL)shouldSetSummary;
- (BOOL)sourceIsManaged;
- (ECMessageFlags)flags;
- (MFMailMessageStore)messageStore;
- (MFMailboxUid)mailbox;
- (MailAccount)account;
- (NSArray)listUnsubscribe;
- (NSArray)references;
- (NSDictionary)headersDictionary;
- (id)URL;
- (id)_bestAlternativePartContent:(BOOL *)content;
- (id)bestAlternativePart:(BOOL *)part;
- (id)bestAlternativePartAsData:(BOOL *)data usingEncoding:(unint64_t)encoding;
- (id)globalMessageURL;
- (id)loadMeetingData;
- (id)loadMeetingExternalID;
- (id)loadMeetingMetadata;
- (id)mailMessageStore;
- (id)originalMailboxURL;
- (id)preferredAccountToUseForReplying;
- (id)preferredEmailAddressToReplyWith;
- (id)storageLocationForAttachment:(id)attachment;
- (int64_t)priority;
- (unint64_t)messageFlags;
- (unint64_t)modSequenceNumber;
- (unint64_t)numberOfAttachments;
- (void)loadCachedHeaderValuesFromHeaders:(id)headers;
- (void)markAsFlagged;
- (void)markAsForwarded;
- (void)markAsNotFlagged;
- (void)markAsNotViewed;
- (void)markAsReplied;
- (void)markAsViewed;
- (void)setIsServerSearchResult:(BOOL)result;
- (void)setModSequenceNumber:(unint64_t)number;
- (void)setMutableInfoFromMessage:(id)message;
- (void)setPriorityFromHeaders:(id)headers;
- (void)setSubject:(id)subject to:(id)to cc:(id)cc bcc:(id)bcc sender:(id)sender dateReceived:(double)received dateSent:(double)sent summary:(id)self0 withOptions:(unsigned int)self1;
- (void)setSummary:(id)summary;
@end

@implementation MFMailMessage

- (MFMailMessageStore)messageStore
{
  v4.receiver = self;
  v4.super_class = MFMailMessage;
  messageStore = [(MFMailMessage *)&v4 messageStore];

  return messageStore;
}

+ (id)forwardedMessagePrefixWithSpacer:(BOOL)spacer
{
  if (spacer)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = MFLookupLocalizedString(@"FORWARDED_MESSAGE_PREFIX", @"Begin forwarded message:\n\n", @"Delayed");
    v5 = [v3 stringWithFormat:@"\n\n%@", v4];
  }

  else
  {
    v5 = MFLookupLocalizedString(@"FORWARDED_MESSAGE_PREFIX", @"Begin forwarded message:\n\n", @"Delayed");
  }

  return v5;
}

- (id)mailMessageStore
{
  messageStore = [(MFMailMessage *)self messageStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = messageStore;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (unint64_t)modSequenceNumber
{
  [(MFMailMessage *)self mf_lock];
  modSequenceNumber = self->_modSequenceNumber;
  [(MFMailMessage *)self mf_unlock];
  return modSequenceNumber;
}

- (void)setModSequenceNumber:(unint64_t)number
{
  [(MFMailMessage *)self mf_lock];
  self->_modSequenceNumber = number;

  [(MFMailMessage *)self mf_unlock];
}

- (unint64_t)messageFlags
{
  [(MFMailMessage *)self mf_lock];
  messageFlags = self->_messageFlags;
  [(MFMailMessage *)self mf_unlock];
  return messageFlags;
}

+ (unsigned)validatePriority:(int)priority
{
  if ((priority - 6) >= 0xFFFFFFFB)
  {
    return priority;
  }

  else
  {
    return 3;
  }
}

- (void)setPriorityFromHeaders:(id)headers
{
  v5 = [headers firstHeaderForKey:*MEMORY[0x1E699B1B0]];
  if (v5)
  {
    v4 = [objc_opt_class() validatePriority:{objc_msgSend(v5, "intValue")}];
  }

  else
  {
    v4 = 3;
  }

  [(MFMailMessage *)self setMessageFlags:self->_messageFlags & 0xFFFFFFFFFFF8FFFFLL | ((v4 & 7) << 16)];
}

- (int64_t)priority
{
  v3 = WORD1(self->_messageFlags);
  v4 = v3 & 7;
  if ((v3 & 7) == 0)
  {
    messageStore = [(MFMailMessage *)self messageStore];
    v6 = [messageStore headersForMessage:self fetchIfNotAvailable:0];
    [(MFMailMessage *)self loadCachedHeaderValuesFromHeaders:v6];
  }

  return [objc_opt_class() validatePriority:v4];
}

- (void)loadCachedHeaderValuesFromHeaders:(id)headers
{
  headersCopy = headers;
  v8.receiver = self;
  v8.super_class = MFMailMessage;
  [(MFMailMessage *)&v8 loadCachedHeaderValuesFromHeaders:headersCopy];
  _MFLockGlobalLock();
  messageFlags = self->_messageFlags;
  v6 = *(&self->super.super.isa + *MEMORY[0x1E69AD7A8]);
  _MFUnlockGlobalLock();
  if ((messageFlags & 0x70000) == 0)
  {
    [(MFMailMessage *)self setPriorityFromHeaders:headersCopy];
  }

  if (!v6)
  {
    v7 = [headersCopy firstHeaderForKey:*MEMORY[0x1E699B130]];
    [(MFMailMessage *)self setMessageIDHash:MFStringHashForMessageIDHeader()];
  }
}

- (void)setIsServerSearchResult:(BOOL)result
{
  resultCopy = result;
  if ([(MFMailMessage *)self isServerSearchResult]!= result)
  {
    v5 = [(MFMailMessage *)self messageFlags]& 0xFFFFFFFFFFFFFF7FLL;
    v6 = 128;
    if (!resultCopy)
    {
      v6 = 0;
    }

    [(MFMailMessage *)self setMessageFlags:v5 | v6];
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
  messageStore = [(MFMailMessage *)self messageStore];
  mailbox = [messageStore mailbox];

  return mailbox;
}

- (id)preferredAccountToUseForReplying
{
  mailbox = [(MFMailMessage *)self mailbox];
  account = [mailbox account];

  return account;
}

- (id)preferredEmailAddressToReplyWith
{
  v38 = *MEMORY[0x1E69E9840];
  preferredAccountToUseForReplying = [(MFMailMessage *)self preferredAccountToUseForReplying];
  v4 = 0x1E7A9F000uLL;
  v5 = [MailAccount addressesThatReceivedMessage:self];
  firstEmailAddress = [preferredAccountToUseForReplying firstEmailAddress];
  if (!firstEmailAddress)
  {
    goto LABEL_20;
  }

  if (![v5 count] || (objc_msgSend(v5, "containsObject:", firstEmailAddress) & 1) != 0)
  {
    v7 = firstEmailAddress;
    goto LABEL_29;
  }

  emailAddressesAndAliasesList = [preferredAccountToUseForReplying emailAddressesAndAliasesList];
  v9 = [emailAddressesAndAliasesList ef_map:&__block_literal_global_14];
  v10 = [v9 mutableCopy];

  [v10 removeObject:firstEmailAddress];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  senders = v10;
  v12 = [senders countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v12)
  {
    mailbox = senders;
    v7 = firstEmailAddress;
    goto LABEL_27;
  }

  v13 = *v34;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v34 != v13)
      {
        objc_enumerationMutation(senders);
      }

      v15 = *(*(&v33 + 1) + 8 * i);
      if ([v5 containsObject:{v15, v33}])
      {
        v4 = 0x1E7A9F000uLL;
        if ([senders containsObject:v15])
        {
          defaultEmailAddress = v15;
        }

        else
        {
          defaultEmailAddress = [preferredAccountToUseForReplying defaultEmailAddress];
        }

        v7 = defaultEmailAddress;

        goto LABEL_19;
      }
    }

    v12 = [senders countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

  v7 = firstEmailAddress;
  v4 = 0x1E7A9F000;
LABEL_19:

  if (!v7)
  {
LABEL_20:
    mailbox = [(MFMailMessage *)self mailbox];
    if (![mailbox isOutgoingMailboxUid])
    {
      if ([v5 count])
      {
        v7 = [v5 objectAtIndex:0];
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_28;
    }

    senders = [(MFMailMessage *)self senders];
    if ([senders count])
    {
      v7 = [senders objectAtIndex:0];
    }

    else
    {
      v7 = 0;
    }

LABEL_27:

LABEL_28:
  }

LABEL_29:
  v18 = v7;
  emailAddressValue = [v18 emailAddressValue];
  displayName = [emailAddressValue displayName];
  v21 = displayName;
  if (displayName)
  {
    stringValue = displayName;
  }

  else
  {
    stringValue = [v18 stringValue];
  }

  v23 = stringValue;

  v24 = [v18 isEqualToString:v23];
  if (v24)
  {
    v25 = [*(v4 + 1864) accountContainingEmailAddress:v18];
    fullUserName = [v25 fullUserName];

    if (fullUserName)
    {
      v27 = MEMORY[0x1E699B248];
      emailAddressValue2 = [v18 emailAddressValue];
      v29 = [v27 componentsWithEmailAddress:emailAddressValue2];

      [v29 setDisplayName:fullUserName];
      stringValue2 = [v29 stringValue];

      v18 = stringValue2;
    }
  }

  v31 = *MEMORY[0x1E69E9840];

  return v18;
}

id __49__MFMailMessage_preferredEmailAddressToReplyWith__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = [v3 simpleAddress];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v2 stringValue];
  }

  v7 = v6;

  return v7;
}

- (id)loadMeetingExternalID
{
  mailMessageStore = [(MFMailMessage *)self mailMessageStore];
  v4 = [mailMessageStore loadMeetingExternalIDForMessage:self];

  return v4;
}

- (id)loadMeetingData
{
  mailMessageStore = [(MFMailMessage *)self mailMessageStore];
  v4 = [mailMessageStore loadMeetingDataForMessage:self];

  return v4;
}

- (id)loadMeetingMetadata
{
  mailMessageStore = [(MFMailMessage *)self mailMessageStore];
  v4 = [mailMessageStore loadMeetingMetadataForMessage:self];

  return v4;
}

- (MailAccount)account
{
  messageStore = [(MFMailMessage *)self messageStore];
  account = [messageStore account];

  return account;
}

- (BOOL)sourceIsManaged
{
  if (self->_useInternalSourceIsManaged)
  {
    sourceIsManaged = self->_sourceIsManaged;
  }

  else
  {
    account = [(MFMailMessage *)self account];
    isLocalAccount = [account isLocalAccount];

    if (isLocalAccount)
    {
      mailbox = [(MFMailMessage *)self mailbox];
      representedAccount = [mailbox representedAccount];
      sourceIsManaged = [representedAccount sourceIsManaged];
    }

    else
    {
      mailbox = [(MFMailMessage *)self account];
      sourceIsManaged = [mailbox sourceIsManaged];
    }
  }

  return sourceIsManaged & 1;
}

- (id)originalMailboxURL
{
  mailbox = [(MFMailMessage *)self mailbox];
  uRLString = [mailbox URLString];

  return uRLString;
}

- (id)URL
{
  account = [(MFMailMessage *)self account];
  v4 = [account URLForMessage:self];

  return v4;
}

- (id)globalMessageURL
{
  _MFLockGlobalLock();
  v3 = self->_globalMessageURL;
  _MFUnlockGlobalLock();
  if (!v3)
  {
    v4 = objc_opt_class();
    messageIDHeader = [(MFMailMessage *)self messageIDHeader];
    v3 = [v4 globalMessageURLWithMessageIDHeader:messageIDHeader];

    if (v3)
    {
      _MFLockGlobalLock();
      objc_storeStrong(&self->_globalMessageURL, v3);
      _MFUnlockGlobalLock();
    }
  }

  return v3;
}

+ (id)globalMessageURLWithMessageIDHeader:(id)header
{
  headerCopy = header;
  if ([headerCopy length])
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v4 setScheme:*MEMORY[0x1E699A7D0]];
    uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v6 = [uRLPathAllowedCharacterSet mutableCopy];

    [v6 removeCharactersInString:@"/"];
    v7 = [headerCopy stringByAddingPercentEncodingWithAllowedCharacters:v6];
    [v4 setPercentEncodedPath:v7];

    v8 = [v4 URL];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

- (void)setMutableInfoFromMessage:(id)message
{
  messageCopy = message;
  -[MFMailMessage setMessageFlags:](self, "setMessageFlags:", [messageCopy messageFlags]);
}

- (void)setSubject:(id)subject to:(id)to cc:(id)cc bcc:(id)bcc sender:(id)sender dateReceived:(double)received dateSent:(double)sent summary:(id)self0 withOptions:(unsigned int)self1
{
  v12.receiver = self;
  v12.super_class = MFMailMessage;
  [(MFMailMessage *)&v12 setSubject:subject to:to cc:cc bcc:bcc sender:sender dateReceived:summary dateSent:received summary:sent withOptions:options];
}

- (void)setSummary:(id)summary
{
  summaryCopy = summary;
  _MFLockGlobalLock();
  objc_storeStrong((&self->super.super.isa + *MEMORY[0x1E69AD7B0]), summary);
  _MFUnlockGlobalLock();
}

- (BOOL)shouldSetSummary
{
  summary = [(MFMailMessage *)self summary];
  v3 = summary == 0;

  return v3;
}

- (id)bestAlternativePart:(BOOL *)part
{
  v19 = *MEMORY[0x1E69E9840];
  [(MFMailMessage *)self _bestAlternativePartContent:part];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v8 isVisuallyEmpty] & 1) == 0)
        {
          htmlData = [v8 htmlData];
          if (htmlData)
          {
            preferredEncoding = [v8 preferredEncoding];
            v11 = MFCreateStringWithData();
            if (!v11 && preferredEncoding != -1)
            {
              v11 = MFCreateStringWithData();
            }

            if (v11)
            {
              if (v4)
              {
                [v4 appendString:v11];
              }

              else
              {
                v4 = [MEMORY[0x1E696AD60] stringWithString:v11];
              }
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_bestAlternativePartContent:(BOOL *)content
{
  v16 = 0;
  v5 = [(MFMailMessage *)self messageBodyIfAvailableUpdatingFlags:0];
  v6 = v5;
  if (v5)
  {
    topLevelPart = [v5 topLevelPart];
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    while (1)
    {
      if (!v11)
      {
        v12 = [v9 contentToOffset:1 resultOffset:&v16 downloadIfNecessary:0 asHTML:1 isComplete:content];

        v13 = v9;
        v10 = v12;
        v8 = v13;
      }

      v14 = [(MFMailMessage *)self bestAlternativeInPart:topLevelPart];

      v11 = v14 == 0;
      v9 = v14;
      if (v14)
      {
        v9 = v14;
        if (v14 == v8)
        {
          break;
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)bestAlternativePartAsData:(BOOL *)data usingEncoding:(unint64_t)encoding
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [(MFMailMessage *)self _bestAlternativePartContent:data];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__5;
  v29 = __Block_byref_object_dispose__5;
  v30 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__MFMailMessage_bestAlternativePartAsData_usingEncoding___block_invoke;
  aBlock[3] = &unk_1E7AA3428;
  aBlock[4] = &v25;
  aBlock[5] = encoding;
  v6 = _Block_copy(aBlock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v31 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v11 isVisuallyEmpty] & 1) == 0)
        {
          htmlData = [v11 htmlData];
          if (htmlData)
          {
            preferredEncoding = [v11 preferredEncoding];
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __57__MFMailMessage_bestAlternativePartAsData_usingEncoding___block_invoke_2;
            v17[3] = &unk_1E7AA3450;
            v18 = v6;
            v19 = preferredEncoding;
            [htmlData ef_enumerateSubdataOfSize:0x80000 usingBlock:v17];
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v20 objects:v31 count:16];
    }

    while (v8);
  }

  v14 = v26[5];
  _Block_object_dispose(&v25, 8);

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

void __57__MFMailMessage_bestAlternativePartAsData_usingEncoding___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = objc_autoreleasePoolPush();
  v7 = MFCreateStringWithBytes();
  v8 = v7;
  if (a4 != -1 && !v7)
  {
    v8 = MFCreateStringWithBytes();
  }

  if (v8)
  {
    v9 = [v8 mf_dataUsingEncoding:*(a1 + 40)];
    v10 = *(*(*(a1 + 32) + 8) + 40);
    if (v10)
    {
      [v10 appendData:v9];
    }

    else
    {
      v11 = [v9 mutableCopy];
      v12 = *(*(a1 + 32) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }

  objc_autoreleasePoolPop(v6);
}

void __57__MFMailMessage_bestAlternativePartAsData_usingEncoding___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  (*(v4 + 16))(v4, [v5 bytes], objc_msgSend(v5, "length"), *(a1 + 40));
}

- (id)storageLocationForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  messageStore = [(MFMailMessage *)self messageStore];
  v6 = [messageStore storageLocationForAttachment:attachmentCopy withMessage:self];

  return v6;
}

- (NSArray)listUnsubscribe
{
  headers = [(MFMailMessage *)self headers];
  listUnsubscribeCommands = [headers listUnsubscribeCommands];

  return listUnsubscribeCommands;
}

- (ECMessageFlags)flags
{
  messageFlags = [(MFMailMessage *)self messageFlags];

  return MFFlagsObjectForFlags(messageFlags);
}

- (BOOL)isPartOfExistingThread
{
  headersIfAvailable = [(MFMailMessage *)self headersIfAvailable];
  v4 = [headersIfAvailable hasHeaderForKey:*MEMORY[0x1E699B108]];

  if (v4)
  {
    return 1;
  }

  subject = [(MFMailMessage *)self subject];
  hasReplyPrefix = [subject hasReplyPrefix];

  return hasReplyPrefix;
}

- (NSDictionary)headersDictionary
{
  headersIfAvailable = [(MFMailMessage *)self headersIfAvailable];
  headersDictionary = [headersIfAvailable headersDictionary];

  return headersDictionary;
}

- (NSArray)references
{
  headersIfAvailable = [(MFMailMessage *)self headersIfAvailable];
  if (headersIfAvailable)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    references = [headersIfAvailable references];
    [v3 addObjectsFromArray:references];

    v5 = [headersIfAvailable headersForKey:*MEMORY[0x1E699B108]];
    if (v5)
    {
      [v3 addObjectsFromArray:v5];
    }

    array = [v3 array];
  }

  else
  {
    array = 0;
  }

  return array;
}

@end