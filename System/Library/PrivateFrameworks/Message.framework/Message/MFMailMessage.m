@interface MFMailMessage
+ (id)forwardedMessagePrefixWithSpacer:(BOOL)a3;
+ (id)globalMessageURLWithMessageIDHeader:(id)a3;
+ (unsigned)validatePriority:(int)a3;
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
- (id)_bestAlternativePartContent:(BOOL *)a3;
- (id)bestAlternativePart:(BOOL *)a3;
- (id)bestAlternativePartAsData:(BOOL *)a3 usingEncoding:(unint64_t)a4;
- (id)globalMessageURL;
- (id)loadMeetingData;
- (id)loadMeetingExternalID;
- (id)loadMeetingMetadata;
- (id)mailMessageStore;
- (id)originalMailboxURL;
- (id)preferredAccountToUseForReplying;
- (id)preferredEmailAddressToReplyWith;
- (id)storageLocationForAttachment:(id)a3;
- (int64_t)priority;
- (unint64_t)messageFlags;
- (unint64_t)modSequenceNumber;
- (unint64_t)numberOfAttachments;
- (void)loadCachedHeaderValuesFromHeaders:(id)a3;
- (void)markAsFlagged;
- (void)markAsForwarded;
- (void)markAsNotFlagged;
- (void)markAsNotViewed;
- (void)markAsReplied;
- (void)markAsViewed;
- (void)setIsServerSearchResult:(BOOL)a3;
- (void)setModSequenceNumber:(unint64_t)a3;
- (void)setMutableInfoFromMessage:(id)a3;
- (void)setPriorityFromHeaders:(id)a3;
- (void)setSubject:(id)a3 to:(id)a4 cc:(id)a5 bcc:(id)a6 sender:(id)a7 dateReceived:(double)a8 dateSent:(double)a9 summary:(id)a10 withOptions:(unsigned int)a11;
- (void)setSummary:(id)a3;
@end

@implementation MFMailMessage

- (MFMailMessageStore)messageStore
{
  v4.receiver = self;
  v4.super_class = MFMailMessage;
  v2 = [(MFMailMessage *)&v4 messageStore];

  return v2;
}

+ (id)forwardedMessagePrefixWithSpacer:(BOOL)a3
{
  if (a3)
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
  v2 = [(MFMailMessage *)self messageStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
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
  v5 = [a3 firstHeaderForKey:*MEMORY[0x1E699B1B0]];
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
    v5 = [(MFMailMessage *)self messageStore];
    v6 = [v5 headersForMessage:self fetchIfNotAvailable:0];
    [(MFMailMessage *)self loadCachedHeaderValuesFromHeaders:v6];
  }

  return [objc_opt_class() validatePriority:v4];
}

- (void)loadCachedHeaderValuesFromHeaders:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MFMailMessage;
  [(MFMailMessage *)&v8 loadCachedHeaderValuesFromHeaders:v4];
  _MFLockGlobalLock();
  messageFlags = self->_messageFlags;
  v6 = *(&self->super.super.isa + *MEMORY[0x1E69AD7A8]);
  _MFUnlockGlobalLock();
  if ((messageFlags & 0x70000) == 0)
  {
    [(MFMailMessage *)self setPriorityFromHeaders:v4];
  }

  if (!v6)
  {
    v7 = [v4 firstHeaderForKey:*MEMORY[0x1E699B130]];
    [(MFMailMessage *)self setMessageIDHash:MFStringHashForMessageIDHeader()];
  }
}

- (void)setIsServerSearchResult:(BOOL)a3
{
  v3 = a3;
  if ([(MFMailMessage *)self isServerSearchResult]!= a3)
  {
    v5 = [(MFMailMessage *)self messageFlags]& 0xFFFFFFFFFFFFFF7FLL;
    v6 = 128;
    if (!v3)
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
  v2 = [(MFMailMessage *)self messageStore];
  v3 = [v2 mailbox];

  return v3;
}

- (id)preferredAccountToUseForReplying
{
  v2 = [(MFMailMessage *)self mailbox];
  v3 = [v2 account];

  return v3;
}

- (id)preferredEmailAddressToReplyWith
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(MFMailMessage *)self preferredAccountToUseForReplying];
  v4 = 0x1E7A9F000uLL;
  v5 = [MailAccount addressesThatReceivedMessage:self];
  v6 = [v3 firstEmailAddress];
  if (!v6)
  {
    goto LABEL_20;
  }

  if (![v5 count] || (objc_msgSend(v5, "containsObject:", v6) & 1) != 0)
  {
    v7 = v6;
    goto LABEL_29;
  }

  v8 = [v3 emailAddressesAndAliasesList];
  v9 = [v8 ef_map:&__block_literal_global_14];
  v10 = [v9 mutableCopy];

  [v10 removeObject:v6];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v12)
  {
    v17 = v11;
    v7 = v6;
    goto LABEL_27;
  }

  v13 = *v34;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v34 != v13)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v33 + 1) + 8 * i);
      if ([v5 containsObject:{v15, v33}])
      {
        v4 = 0x1E7A9F000uLL;
        if ([v11 containsObject:v15])
        {
          v16 = v15;
        }

        else
        {
          v16 = [v3 defaultEmailAddress];
        }

        v7 = v16;

        goto LABEL_19;
      }
    }

    v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

  v7 = v6;
  v4 = 0x1E7A9F000;
LABEL_19:

  if (!v7)
  {
LABEL_20:
    v17 = [(MFMailMessage *)self mailbox];
    if (![v17 isOutgoingMailboxUid])
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

    v11 = [(MFMailMessage *)self senders];
    if ([v11 count])
    {
      v7 = [v11 objectAtIndex:0];
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
  v19 = [v18 emailAddressValue];
  v20 = [v19 displayName];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = [v18 stringValue];
  }

  v23 = v22;

  v24 = [v18 isEqualToString:v23];
  if (v24)
  {
    v25 = [*(v4 + 1864) accountContainingEmailAddress:v18];
    v26 = [v25 fullUserName];

    if (v26)
    {
      v27 = MEMORY[0x1E699B248];
      v28 = [v18 emailAddressValue];
      v29 = [v27 componentsWithEmailAddress:v28];

      [v29 setDisplayName:v26];
      v30 = [v29 stringValue];

      v18 = v30;
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
  v3 = [(MFMailMessage *)self mailMessageStore];
  v4 = [v3 loadMeetingExternalIDForMessage:self];

  return v4;
}

- (id)loadMeetingData
{
  v3 = [(MFMailMessage *)self mailMessageStore];
  v4 = [v3 loadMeetingDataForMessage:self];

  return v4;
}

- (id)loadMeetingMetadata
{
  v3 = [(MFMailMessage *)self mailMessageStore];
  v4 = [v3 loadMeetingMetadataForMessage:self];

  return v4;
}

- (MailAccount)account
{
  v2 = [(MFMailMessage *)self messageStore];
  v3 = [v2 account];

  return v3;
}

- (BOOL)sourceIsManaged
{
  if (self->_useInternalSourceIsManaged)
  {
    sourceIsManaged = self->_sourceIsManaged;
  }

  else
  {
    v4 = [(MFMailMessage *)self account];
    v5 = [v4 isLocalAccount];

    if (v5)
    {
      v6 = [(MFMailMessage *)self mailbox];
      v7 = [v6 representedAccount];
      sourceIsManaged = [v7 sourceIsManaged];
    }

    else
    {
      v6 = [(MFMailMessage *)self account];
      sourceIsManaged = [v6 sourceIsManaged];
    }
  }

  return sourceIsManaged & 1;
}

- (id)originalMailboxURL
{
  v2 = [(MFMailMessage *)self mailbox];
  v3 = [v2 URLString];

  return v3;
}

- (id)URL
{
  v3 = [(MFMailMessage *)self account];
  v4 = [v3 URLForMessage:self];

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
    v5 = [(MFMailMessage *)self messageIDHeader];
    v3 = [v4 globalMessageURLWithMessageIDHeader:v5];

    if (v3)
    {
      _MFLockGlobalLock();
      objc_storeStrong(&self->_globalMessageURL, v3);
      _MFUnlockGlobalLock();
    }
  }

  return v3;
}

+ (id)globalMessageURLWithMessageIDHeader:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v4 setScheme:*MEMORY[0x1E699A7D0]];
    v5 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v6 = [v5 mutableCopy];

    [v6 removeCharactersInString:@"/"];
    v7 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:v6];
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

- (void)setMutableInfoFromMessage:(id)a3
{
  v4 = a3;
  -[MFMailMessage setMessageFlags:](self, "setMessageFlags:", [v4 messageFlags]);
}

- (void)setSubject:(id)a3 to:(id)a4 cc:(id)a5 bcc:(id)a6 sender:(id)a7 dateReceived:(double)a8 dateSent:(double)a9 summary:(id)a10 withOptions:(unsigned int)a11
{
  v12.receiver = self;
  v12.super_class = MFMailMessage;
  [(MFMailMessage *)&v12 setSubject:a3 to:a4 cc:a5 bcc:a6 sender:a7 dateReceived:a10 dateSent:a8 summary:a9 withOptions:a11];
}

- (void)setSummary:(id)a3
{
  v5 = a3;
  _MFLockGlobalLock();
  objc_storeStrong((&self->super.super.isa + *MEMORY[0x1E69AD7B0]), a3);
  _MFUnlockGlobalLock();
}

- (BOOL)shouldSetSummary
{
  v2 = [(MFMailMessage *)self summary];
  v3 = v2 == 0;

  return v3;
}

- (id)bestAlternativePart:(BOOL *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  [(MFMailMessage *)self _bestAlternativePartContent:a3];
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
          v9 = [v8 htmlData];
          if (v9)
          {
            v10 = [v8 preferredEncoding];
            v11 = MFCreateStringWithData();
            if (!v11 && v10 != -1)
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

- (id)_bestAlternativePartContent:(BOOL *)a3
{
  v16 = 0;
  v5 = [(MFMailMessage *)self messageBodyIfAvailableUpdatingFlags:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 topLevelPart];
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    while (1)
    {
      if (!v11)
      {
        v12 = [v9 contentToOffset:1 resultOffset:&v16 downloadIfNecessary:0 asHTML:1 isComplete:a3];

        v13 = v9;
        v10 = v12;
        v8 = v13;
      }

      v14 = [(MFMailMessage *)self bestAlternativeInPart:v7];

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

- (id)bestAlternativePartAsData:(BOOL *)a3 usingEncoding:(unint64_t)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [(MFMailMessage *)self _bestAlternativePartContent:a3];
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
  aBlock[5] = a4;
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
          v12 = [v11 htmlData];
          if (v12)
          {
            v13 = [v11 preferredEncoding];
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __57__MFMailMessage_bestAlternativePartAsData_usingEncoding___block_invoke_2;
            v17[3] = &unk_1E7AA3450;
            v18 = v6;
            v19 = v13;
            [v12 ef_enumerateSubdataOfSize:0x80000 usingBlock:v17];
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

- (id)storageLocationForAttachment:(id)a3
{
  v4 = a3;
  v5 = [(MFMailMessage *)self messageStore];
  v6 = [v5 storageLocationForAttachment:v4 withMessage:self];

  return v6;
}

- (NSArray)listUnsubscribe
{
  v2 = [(MFMailMessage *)self headers];
  v3 = [v2 listUnsubscribeCommands];

  return v3;
}

- (ECMessageFlags)flags
{
  v2 = [(MFMailMessage *)self messageFlags];

  return MFFlagsObjectForFlags(v2);
}

- (BOOL)isPartOfExistingThread
{
  v3 = [(MFMailMessage *)self headersIfAvailable];
  v4 = [v3 hasHeaderForKey:*MEMORY[0x1E699B108]];

  if (v4)
  {
    return 1;
  }

  v6 = [(MFMailMessage *)self subject];
  v5 = [v6 hasReplyPrefix];

  return v5;
}

- (NSDictionary)headersDictionary
{
  v2 = [(MFMailMessage *)self headersIfAvailable];
  v3 = [v2 headersDictionary];

  return v3;
}

- (NSArray)references
{
  v2 = [(MFMailMessage *)self headersIfAvailable];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v4 = [v2 references];
    [v3 addObjectsFromArray:v4];

    v5 = [v2 headersForKey:*MEMORY[0x1E699B108]];
    if (v5)
    {
      [v3 addObjectsFromArray:v5];
    }

    v6 = [v3 array];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end