@interface EMThread
+ (BOOL)_shouldArchiveByDefaultForMailboxes:(id)a3;
+ (OS_os_log)log;
- (BOOL)deleteMovesToTrash;
- (BOOL)isEditable;
- (BOOL)objectIDBelongsToCollection:(id)a3;
- (BOOL)shouldArchiveByDefault;
- (BOOL)supportsArchiving;
- (EFFuture)displayMessage;
- (EMCollectionItemID)itemID;
- (EMMailboxScope)mailboxScope;
- (EMMailboxTypeResolver)mailboxTypeResolver;
- (EMMessageRepository)repository;
- (EMObjectID)displayMessageObjectID;
- (EMThread)initWithCoder:(id)a3;
- (EMThread)initWithObjectID:(id)a3 originatingQuery:(id)a4 builder:(id)a5;
- (NSArray)mailboxObjectIDs;
- (NSArray)mailboxes;
- (NSArray)mailboxesIfAvailable;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (NSString)ef_shortPublicDescription;
- (id)changeFrom:(id)a3;
- (id)itemIDForObjectID:(id)a3;
- (id)objectIDForItemID:(id)a3;
- (id)query;
- (int64_t)conversationID;
- (void)_commonInitWithOriginatingQuery:(id)a3 builder:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)query;
- (void)setMailboxObjectIDs:(id)a3;
- (void)setMailboxTypeResolver:(id)a3;
- (void)setMailboxes:(id)a3;
- (void)setRepository:(id)a3;
@end

@implementation EMThread

- (EMMessageRepository)repository
{
  v7.receiver = self;
  v7.super_class = EMThread;
  v4 = [(EMRepositoryObject *)&v7 repository];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"EMThread.m" lineNumber:29 description:@"Wrong repository type"];
    }
  }

  return v4;
}

- (NSArray)mailboxObjectIDs
{
  os_unfair_lock_lock(&self->_mailboxesLock);
  v3 = self->_mailboxObjectIDs;
  os_unfair_lock_unlock(&self->_mailboxesLock);

  return v3;
}

- (EMCollectionItemID)itemID
{
  v2 = [(EMObject *)self objectID];
  v3 = [v2 collectionItemID];

  return v3;
}

- (NSString)ef_publicDescription
{
  v51 = [(EMThread *)self mailboxesIfAvailable];
  v3 = [v51 count];
  v4 = [v51 firstObject];
  v5 = [v4 accountIfAvailable];

  if (v3)
  {
    [EMMailbox supportsArchivingForMailboxes:v51];
    v50 = NSStringFromBOOL();
    if (v5)
    {
LABEL_3:
      [objc_opt_class() _shouldArchiveByDefaultForMailboxes:v51];
      v49 = NSStringFromBOOL();
      goto LABEL_6;
    }
  }

  else
  {
    v50 = @"?";
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v49 = @"?";
LABEL_6:
  v6 = [MEMORY[0x1E699B7B0] currentDevice];
  v7 = [v6 isInternal];

  if (v7)
  {
    v52 = [objc_alloc(MEMORY[0x1E699B250]) initWithStyle:2];
    v8 = MEMORY[0x1E696AEC0];
    v54.receiver = self;
    v54.super_class = EMThread;
    v46 = [(EMObject *)&v54 ef_publicDescription];
    [(EMThread *)self conversationID];
    v48 = EFStringWithInt64();
    v47 = [(EMThread *)self subject];
    v44 = [(EMThread *)self senderList];
    v43 = [v52 stringFromEmailAddressList:v44];
    v42 = [(EMThread *)self toList];
    v45 = [v52 stringFromEmailAddressList:v42];
    v41 = [(EMThread *)self ccList];
    v40 = [v52 stringFromEmailAddressList:v41];
    v9 = MEMORY[0x1E699B858];
    v39 = [(EMThread *)self summary];
    v38 = [v9 ec_partiallyRedactedStringForSubjectOrSummary:v39];
    v37 = [(EMThread *)self generatedSummary];
    v36 = [v37 ef_publicDescription];
    v10 = @"NO";
    if ([(EMThread *)self isUrgent])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v35 = [(EMThread *)self flags];
    v32 = [(EMThread *)self conversationNotificationLevel];
    v34 = [(EMThread *)self category];
    v12 = EMShortStringForCategory(v34);
    v33 = [(EMThread *)self businessLogoID];
    if ([(EMThread *)self isVIP])
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v29 = v13;
    if ([(EMThread *)self isBlocked])
    {
      v10 = @"YES";
    }

    v14 = [(EMThread *)self searchResultType];
    v15 = [(EMThread *)self searchRelevanceScore];
    v16 = [(EMThread *)self unsubscribeType];
    v31 = [(EMThread *)self date];
    v17 = [(EMThread *)self displayDate];
    v28 = [(EMThread *)self mailboxObjectIDs];
    v27 = v8;
    v18 = [(EMThread *)self count];
    v19 = [(EMThread *)self displayMessageItemID];
    v30 = [v27 stringWithFormat:@"%@\n\tConversationID:%@\n\tSubject:%@\n\tSenderList:%@\n\tToList:%@\n\tCCList:%@\n\tSummary:%@\n\tGenerated Summary:%@ (isUrgent = %@)\n\tFlags:%@\n\tConversationNotificationLevel:%ld\n\tCategory:%@\n\tBusinessLogoID:%@\n\tIsVIP:%@\n\tIsBlocked:%@\n\tSearchResultType:%ld\n\tSearchRelevanceScore:%@\n\tUnsubscribeType:%ld\n\tDate:%@\n\tDisplayDate:%@\n\tMailboxes:%@\n\tCount:%lu\n\tSupportsArchiving:%@ \n\tShouldArchive:%@\n\tdisplayMessageItemID:%@", v46, v48, v47, v43, v45, v40, v38, v36, v11, v35, v32, v12, v33, v29, v10, v14, v15, v16, v31, v17, v28, v18, v50, v49, v19];

    v20 = v30;
  }

  else
  {
    v21 = MEMORY[0x1E696AEC0];
    v53.receiver = self;
    v53.super_class = EMThread;
    v52 = [(EMObject *)&v53 ef_publicDescription];
    v22 = [(EMThread *)self conversationID];
    v46 = [(EMThread *)self flags];
    v48 = [v46 ef_publicDescription];
    v23 = [(EMThread *)self conversationNotificationLevel];
    if ([(EMThread *)self isBlocked])
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v25 = [(EMThread *)self unsubscribeType];
    v47 = [(EMThread *)self date];
    v20 = [v21 stringWithFormat:@"%@\n\tConversationID:%lld\n\tFlags:%@\n\tConversationNotificationLevel:%ld\n\tIsBlocked:%@\n\tUnsubscribeType:%ld\n\tDate:%@\n\tCount:%lu\n\tSupportsArchiving:%@ \n\tShouldArchive:%@", v52, v22, v48, v23, v24, v25, v47, -[EMThread count](self, "count"), v50, v49];
  }

  return v20;
}

- (NSArray)mailboxesIfAvailable
{
  os_unfair_lock_lock(&self->_mailboxesLock);
  v3 = self->_mailboxes;
  os_unfair_lock_unlock(&self->_mailboxesLock);
  if (!v3)
  {
    v4 = [(EMThread *)self repository];
    v5 = [v4 mailboxRepository];

    if (v5)
    {
      v6 = [(EMThread *)self mailboxObjectIDs];
      v3 = [v5 mailboxesIfAvailableForObjectIDs:v6];
    }

    else
    {
      v7 = +[EMThread log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(EMBaseMessageListItem *)v7 mailboxesIfAvailable];
      }

      v3 = MEMORY[0x1E695E0F0];
    }
  }

  return v3;
}

- (BOOL)supportsArchiving
{
  v2 = [(EMThread *)self mailboxes];
  v3 = [EMMailbox supportsArchivingForMailboxes:v2];

  return v3;
}

- (NSArray)mailboxes
{
  os_unfair_lock_lock(&self->_mailboxesLock);
  v3 = self->_mailboxes;
  os_unfair_lock_unlock(&self->_mailboxesLock);
  if (!v3)
  {
    v4 = [(EMThread *)self repository];
    v5 = [v4 mailboxRepository];

    if (v5)
    {
      v6 = MEMORY[0x1E699B7C8];
      v7 = [(EMThread *)self repository];
      v8 = [v7 mailboxRepository];
      v9 = [(EMThread *)self mailboxObjectIDs];
      v10 = [v8 mailboxesForObjectIDs:v9];
      v11 = [v6 combine:v10];
      v12 = [v11 result:0];
      v3 = [v12 ef_filter:*MEMORY[0x1E699B748]];
    }

    else
    {
      v13 = +[EMThread log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [(EMBaseMessageListItem *)v13 mailboxes];
      }

      v3 = MEMORY[0x1E695E0F0];
    }
  }

  return v3;
}

- (int64_t)conversationID
{
  v2 = [(EMObject *)self objectID];
  v3 = [v2 conversationID];

  return v3;
}

- (NSString)ef_shortPublicDescription
{
  v3 = [MEMORY[0x1E699B7B0] currentDevice];
  v4 = [v3 isInternal];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v17.receiver = self;
    v17.super_class = EMThread;
    v6 = [(EMObject *)&v17 ef_publicDescription];
    [(EMThread *)self conversationID];
    v7 = EFStringWithInt64();
    v8 = [(EMThread *)self subject];
    v9 = [v8 ef_publicDescription];
    v10 = [(EMThread *)self flags];
    v11 = [v10 ef_publicDescription];
    v12 = [v5 stringWithFormat:@"%@ \n\tConversationID:%@\n\tSubject:%@ \n\tFlags:%@ \n", v6, v7, v9, v11];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E699B990]) initWithHash:{-[EMThread conversationID](self, "conversationID")}];
    v13 = MEMORY[0x1E696AEC0];
    v16.receiver = self;
    v16.super_class = EMThread;
    v7 = [(EMObject *)&v16 ef_publicDescription];
    v8 = [v6 ef_publicDescription];
    v9 = [(EMThread *)self flags];
    v10 = [v9 ef_publicDescription];
    v11 = [(EMThread *)self date];
    v12 = [v13 stringWithFormat:@"%@ \n\tConversationID:%@ \n\tFlags:%@ \n\tDate:%@ \n", v7, v8, v10, v11];
  }

  v14 = v12;

  return v14;
}

- (EMObjectID)displayMessageObjectID
{
  v4 = [(EMThread *)self displayMessageItemID];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"EMThread.m" lineNumber:589 description:@"displayMessageItemID is not an EMMessageCollectionItemID"];
  }

  v5 = [EMMessageObjectID alloc];
  v6 = [(EMThread *)self mailboxScope];
  v7 = [(EMMessageObjectID *)v5 initWithCollectionItemID:v4 mailboxScope:v6];

  return v7;
}

- (EMMailboxScope)mailboxScope
{
  v3 = [(EMThread *)self mailboxTypeResolver];
  os_unfair_lock_lock(&self->_mailboxScopeLock);
  mailboxScope = self->_mailboxScope;
  if (mailboxScope)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v6 = [(EMThread *)self originatingQuery];
    v7 = [v6 predicate];
    v8 = [EMMessageListItemPredicates mailboxScopeForPredicate:v7 withMailboxTypeResolver:v3];
    v9 = self->_mailboxScope;
    self->_mailboxScope = v8;

    mailboxScope = self->_mailboxScope;
  }

  v10 = mailboxScope;
  os_unfair_lock_unlock(&self->_mailboxScopeLock);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = +[EMMailboxScope noMailboxesScope];
  }

  v12 = v11;

  return v12;
}

- (EMMailboxTypeResolver)mailboxTypeResolver
{
  os_unfair_lock_lock(&self->_mailboxTypeResolverLock);
  v3 = self->_mailboxTypeResolver;
  os_unfair_lock_unlock(&self->_mailboxTypeResolverLock);
  if (!v3)
  {
    v4 = [(EMThread *)self repository];
    v3 = [v4 mailboxRepository];
  }

  return v3;
}

- (void)setRepository:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"EMThread.m" lineNumber:29 description:@"Wrong repository type"];
    }
  }

  v7.receiver = self;
  v7.super_class = EMThread;
  [(EMRepositoryObject *)&v7 setRepository:v5];
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __15__EMThread_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_39 != -1)
  {
    dispatch_once(&log_onceToken_39, block);
  }

  v2 = log_log_39;

  return v2;
}

void __15__EMThread_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_39;
  log_log_39 = v1;
}

- (EMThread)initWithObjectID:(id)a3 originatingQuery:(id)a4 builder:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"EMThread.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v16.receiver = self;
  v16.super_class = EMThread;
  v12 = [(EMQueryingCollection *)&v16 initWithObjectID:v9 query:0];
  v13 = v12;
  if (v12)
  {
    [(EMThread *)v12 _commonInitWithOriginatingQuery:v10 builder:v11];
  }

  return v13;
}

- (void)_commonInitWithOriginatingQuery:(id)a3 builder:(id)a4
{
  objc_storeStrong(&self->_originatingQuery, a3);
  v6 = a4;
  self->_mailboxScopeLock._os_unfair_lock_opaque = 0;
  self->_mailboxTypeResolverLock._os_unfair_lock_opaque = 0;
  self->_mailboxesLock._os_unfair_lock_opaque = 0;
  v7 = v6;
  (*(v6 + 2))(v6, self);
}

- (id)changeFrom:(id)a3
{
  v3 = [EMMessageListItemChange changeFrom:a3 to:self];

  return v3;
}

- (NSString)debugDescription
{
  v20 = MEMORY[0x1E696AEC0];
  v36.receiver = self;
  v36.super_class = EMThread;
  v35 = [(EMObject *)&v36 debugDescription];
  [(EMThread *)self conversationID];
  v34 = EFStringWithInt64();
  v29 = [(EMThread *)self subject];
  v33 = [v29 debugDescription];
  v28 = [(EMThread *)self senderList];
  v32 = [v28 debugDescription];
  v27 = [(EMThread *)self toList];
  v31 = [v27 debugDescription];
  v26 = [(EMThread *)self ccList];
  v30 = [v26 debugDescription];
  v25 = [(EMThread *)self summary];
  v23 = [(EMThread *)self generatedSummary];
  v24 = [v23 debugDescription];
  if ([(EMThread *)self isUrgent])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v16 = v3;
  v22 = [(EMThread *)self flags];
  v15 = [(EMThread *)self conversationNotificationLevel];
  v19 = [(EMThread *)self category];
  v18 = [(EMThread *)self businessLogoID];
  if ([(EMThread *)self isVIP])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v12 = v4;
  if ([(EMThread *)self isBlocked])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v11 = v5;
  v10 = [(EMThread *)self searchResultType];
  v17 = [(EMThread *)self searchRelevanceScore];
  v9 = [(EMThread *)self unsubscribeType];
  v14 = [(EMThread *)self date];
  v13 = [(EMThread *)self displayDate];
  v6 = [(EMThread *)self mailboxObjectIDs];
  v7 = [v6 debugDescription];
  v21 = [v20 stringWithFormat:@"%@\n\tConversationID:%@\n\tSubject:%@\n\tSenderList:%@\n\tToList:%@\n\tCCList:%@\n\tSummary:%@\n\tGenerated Summary:%@ (isUrgent = %@)\n\tFlags:%@\n\tConversationNotificationLevel:%ld\n\tCategory:%@\n\tBusinessLogoID:%@\n\tIsVIP:%@\n\tIsBlocked:%@\n\tSearchResultType:%ld\n\tSearchRelevanceScore:%@\n\tUnsubscribeType:%ld\n\tDate:%@\n\tDisplayDate:%@\n\tMailboxes:%@\n\tCount:%lu", v35, v34, v33, v32, v31, v30, v25, v24, v16, v22, v15, v19, v18, v12, v11, v10, v17, v9, v14, v13, v7, -[EMThread count](self, "count")];

  return v21;
}

- (EMThread)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = EMThread;
  v5 = [(EMQueryingCollection *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_originatingQuery"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __26__EMThread_initWithCoder___block_invoke;
    v8[3] = &unk_1E826FB78;
    v9 = v4;
    [(EMThread *)v5 _commonInitWithOriginatingQuery:v6 builder:v8];
  }

  return v5;
}

void __26__EMThread_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v49 = a2;
  v3 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_date"];
  [v49 setDate:v3];

  v4 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_displayDate"];
  [v49 setDisplayDate:v4];

  v5 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_readLater"];
  [v49 setReadLater:v5];

  v6 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_sendLaterDate"];
  [v49 setSendLaterDate:v6];

  v7 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_followUp"];
  [v49 setFollowUp:v7];

  v8 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_category"];
  [v49 setCategory:v8];

  v9 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_businessLogoID"];
  [v49 setBusinessLogoID:v9];

  v10 = *(a1 + 32);
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v10 decodeObjectOfClasses:v13 forKey:@"EFPropertyKey_groupedSenderMessageListItems"];
  [v49 setGroupedSenderMessageListItems:v14];

  v15 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_subject"];
  [v49 setSubject:v15];

  v16 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_summary"];
  [v49 setSummary:v16];

  v17 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_generatedSummary"];
  [v49 setGeneratedSummary:v17];

  [v49 setIsUrgent:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_isUrgent"}];
  v18 = *(a1 + 32);
  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
  v23 = [v18 decodeObjectOfClasses:v22 forKey:@"EFPropertyKey_senderList"];
  [v49 setSenderList:v23];

  v24 = *(a1 + 32);
  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = [v25 setWithObjects:{v26, v27, objc_opt_class(), 0}];
  v29 = [v24 decodeObjectOfClasses:v28 forKey:@"EFPropertyKey_toList"];
  [v49 setToList:v29];

  v30 = *(a1 + 32);
  v31 = MEMORY[0x1E695DFD8];
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = [v31 setWithObjects:{v32, v33, objc_opt_class(), 0}];
  v35 = [v30 decodeObjectOfClasses:v34 forKey:@"EFPropertyKey_ccList"];
  [v49 setCcList:v35];

  v36 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_flags"];
  [v49 setFlags:v36];

  [v49 setHasUnflagged:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_hasUnflagged"}];
  v37 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_flagColors"];
  [v49 setFlagColors:v37];

  [v49 setIsVIP:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_isVIP"}];
  [v49 setIsBlocked:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_isBlocked"}];
  [v49 setSearchResultType:{objc_msgSend(*(a1 + 32), "decodeIntegerForKey:", @"EFPropertyKey_searchResultType"}];
  v38 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_searchRelevanceScore"];
  [v49 setSearchRelevanceScore:v38];

  [v49 setUnsubscribeType:{objc_msgSend(*(a1 + 32), "decodeIntegerForKey:", @"EFPropertyKey_unsubscribeType"}];
  [v49 setIsToMe:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_isToMe"}];
  [v49 setIsCCMe:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_isCCMe"}];
  [v49 setHasAttachments:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_hasAttachments"}];
  [v49 setIsAuthenticated:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_isAuthenticated"}];
  [v49 setAllowAuthenticationWarning:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_allowAuthenticationWarning"}];
  v39 = *(a1 + 32);
  v40 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v41 = [v39 decodeObjectOfClasses:v40 forKey:@"EFPropertyKey_conversationNotificationLevel"];
  [v49 setConversationNotificationLevel:{objc_msgSend(v41, "integerValue")}];

  v42 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_brandIndicatorLocation"];
  [v49 setBrandIndicatorLocation:v42];

  [v49 setCount:{objc_msgSend(*(a1 + 32), "decodeIntegerForKey:", @"EFPropertyKey_count"}];
  v43 = *(a1 + 32);
  v44 = MEMORY[0x1E695DFD8];
  v45 = objc_opt_class();
  v46 = [v44 setWithObjects:{v45, objc_opt_class(), 0}];
  v47 = [v43 decodeObjectOfClasses:v46 forKey:@"EFPropertyKey_mailboxObjectIDs"];
  [v49 setMailboxObjectIDs:v47];

  v48 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_displayMessageItemID"];
  [v49 setDisplayMessageItemID:v48];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = EMThread;
  [(EMQueryingCollection *)&v27 encodeWithCoder:v4];
  v5 = [(EMThread *)self originatingQuery];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_originatingQuery"];

  v6 = [(EMThread *)self date];
  [v4 encodeObject:v6 forKey:@"EFPropertyKey_date"];

  v7 = [(EMThread *)self displayDate];
  [v4 encodeObject:v7 forKey:@"EFPropertyKey_displayDate"];

  v8 = [(EMThread *)self readLater];
  [v4 encodeObject:v8 forKey:@"EFPropertyKey_readLater"];

  v9 = [(EMThread *)self sendLaterDate];
  [v4 encodeObject:v9 forKey:@"EFPropertyKey_sendLaterDate"];

  v10 = [(EMThread *)self followUp];
  [v4 encodeObject:v10 forKey:@"EFPropertyKey_followUp"];

  v11 = [(EMThread *)self category];
  [v4 encodeObject:v11 forKey:@"EFPropertyKey_category"];

  v12 = [(EMThread *)self businessLogoID];
  [v4 encodeObject:v12 forKey:@"EFPropertyKey_businessLogoID"];

  v13 = [(EMThread *)self groupedSenderMessageListItems];
  [v4 encodeObject:v13 forKey:@"EFPropertyKey_groupedSenderMessageListItems"];

  v14 = [(EMThread *)self subject];
  [v4 encodeObject:v14 forKey:@"EFPropertyKey_subject"];

  v15 = [(EMThread *)self summary];
  [v4 encodeObject:v15 forKey:@"EFPropertyKey_summary"];

  v16 = [(EMThread *)self generatedSummary];
  [v4 encodeObject:v16 forKey:@"EFPropertyKey_generatedSummary"];

  [v4 encodeBool:-[EMThread isUrgent](self forKey:{"isUrgent"), @"EFPropertyKey_isUrgent"}];
  v17 = [(EMThread *)self senderList];
  [v4 encodeObject:v17 forKey:@"EFPropertyKey_senderList"];

  v18 = [(EMThread *)self toList];
  [v4 encodeObject:v18 forKey:@"EFPropertyKey_toList"];

  v19 = [(EMThread *)self ccList];
  [v4 encodeObject:v19 forKey:@"EFPropertyKey_ccList"];

  v20 = [(EMThread *)self flags];
  [v4 encodeObject:v20 forKey:@"EFPropertyKey_flags"];

  [v4 encodeBool:-[EMThread hasUnflagged](self forKey:{"hasUnflagged"), @"EFPropertyKey_hasUnflagged"}];
  v21 = [(EMThread *)self flagColors];
  [v4 encodeObject:v21 forKey:@"EFPropertyKey_flagColors"];

  [v4 encodeBool:-[EMThread isVIP](self forKey:{"isVIP"), @"EFPropertyKey_isVIP"}];
  [v4 encodeBool:-[EMThread isBlocked](self forKey:{"isBlocked"), @"EFPropertyKey_isBlocked"}];
  [v4 encodeInteger:-[EMThread searchResultType](self forKey:{"searchResultType"), @"EFPropertyKey_searchResultType"}];
  v22 = [(EMThread *)self searchRelevanceScore];
  [v4 encodeObject:v22 forKey:@"EFPropertyKey_searchRelevanceScore"];

  [v4 encodeInteger:-[EMThread unsubscribeType](self forKey:{"unsubscribeType"), @"EFPropertyKey_unsubscribeType"}];
  [v4 encodeBool:-[EMThread isToMe](self forKey:{"isToMe"), @"EFPropertyKey_isToMe"}];
  [v4 encodeBool:-[EMThread isCCMe](self forKey:{"isCCMe"), @"EFPropertyKey_isCCMe"}];
  [v4 encodeBool:-[EMThread hasAttachments](self forKey:{"hasAttachments"), @"EFPropertyKey_hasAttachments"}];
  [v4 encodeBool:-[EMThread isAuthenticated](self forKey:{"isAuthenticated"), @"EFPropertyKey_isAuthenticated"}];
  [v4 encodeBool:-[EMThread allowAuthenticationWarning](self forKey:{"allowAuthenticationWarning"), @"EFPropertyKey_allowAuthenticationWarning"}];
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{-[EMThread conversationNotificationLevel](self, "conversationNotificationLevel")}];
  [v4 encodeObject:v23 forKey:@"EFPropertyKey_conversationNotificationLevel"];

  v24 = [(EMThread *)self brandIndicatorLocation];
  [v4 encodeObject:v24 forKey:@"EFPropertyKey_brandIndicatorLocation"];

  [v4 encodeInteger:-[EMThread count](self forKey:{"count"), @"EFPropertyKey_count"}];
  v25 = [(EMThread *)self mailboxObjectIDs];
  [v4 encodeObject:v25 forKey:@"EFPropertyKey_mailboxObjectIDs"];

  v26 = [(EMThread *)self displayMessageItemID];
  [v4 encodeObject:v26 forKey:@"EFPropertyKey_displayMessageItemID"];
}

- (void)setMailboxTypeResolver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_mailboxTypeResolverLock);
  mailboxTypeResolver = self->_mailboxTypeResolver;
  self->_mailboxTypeResolver = v4;

  os_unfair_lock_unlock(&self->_mailboxTypeResolverLock);
}

- (id)query
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = [EMMessageListItemPredicates predicateForMessagesInConversation:[(EMThread *)self conversationID]];
  v4 = objc_alloc(MEMORY[0x1E696AB28]);
  v5 = [(EMQuery *)self->_originatingQuery predicate];
  v14[0] = v5;
  v14[1] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v7 = [v4 initWithType:1 subpredicates:v6];

  v8 = +[EMThread log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(EMObject *)self objectID];
    [(EMThread *)v9 query:v7];
  }

  v10 = [(EMQuery *)self->_originatingQuery queryWithTargetClass:objc_opt_class() predicate:v7];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)objectIDForItemID:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [EMMessageObjectID alloc];
    v6 = [(EMThread *)self mailboxScope];
    v7 = [(EMMessageObjectID *)v5 initWithCollectionItemID:v4 mailboxScope:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)itemIDForObjectID:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 collectionItemID];
      goto LABEL_6;
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"EMThread.m" lineNumber:500 description:@"Object ID of unrecognized type"];
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (BOOL)objectIDBelongsToCollection:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(EMThread *)self mailboxScope];
    v7 = [v5 mailboxScope];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setMailboxObjectIDs:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_mailboxesLock);
  mailboxObjectIDs = self->_mailboxObjectIDs;
  if ((EFArraysAreEqual() & 1) == 0)
  {
    v5 = [v8 copy];
    v6 = self->_mailboxObjectIDs;
    self->_mailboxObjectIDs = v5;

    mailboxes = self->_mailboxes;
    self->_mailboxes = 0;

    self->_isEditable = 0;
  }

  os_unfair_lock_unlock(&self->_mailboxesLock);
}

- (void)setMailboxes:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_mailboxesLock);
  v4 = [v8 copy];
  mailboxes = self->_mailboxes;
  self->_mailboxes = v4;

  v6 = [v8 ef_mapSelector:sel_objectID];
  mailboxObjectIDs = self->_mailboxObjectIDs;
  self->_mailboxObjectIDs = v6;

  self->_isEditable = 0;
  os_unfair_lock_unlock(&self->_mailboxesLock);
}

- (EFFuture)displayMessage
{
  v3 = [(EMThread *)self displayMessageObjectID];
  v4 = [(EMThread *)self repository];
  v5 = [v4 messageForObjectID:v3];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __26__EMThread_displayMessage__block_invoke;
  v13[3] = &unk_1E826D0A0;
  v13[4] = self;
  v6 = v3;
  v14 = v6;
  v7 = [v5 recover:v13];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __26__EMThread_displayMessage__block_invoke_196;
  v11[3] = &unk_1E826D0C8;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v9 = [v7 then:v11];

  return v9;
}

id __26__EMThread_displayMessage__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) displayMessageObjectID];
  if (![v3 em_isItemNotFoundError] || *(a1 + 40) == v4)
  {
    v10 = +[EMThread log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) ef_publicDescription];
      v15 = [*(a1 + 32) displayMessageObjectID];
      v16 = [*(a1 + 32) displayMessageItemID];
      v17 = [v3 ef_publicDescription];
      v18 = 138544130;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      v22 = 2114;
      v23 = v16;
      v24 = 2114;
      v25 = v17;
      _os_log_error_impl(&dword_1C6655000, v10, OS_LOG_TYPE_ERROR, "%{public}@\ndisplayMessageObjectID: %{public}@, displayMessageItemID: %{public}@, error: %{public}@", &v18, 0x2Au);
    }

    v9 = [MEMORY[0x1E699B7C8] futureWithError:v3];
  }

  else
  {
    v5 = +[EMThread log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) ef_publicDescription];
      v7 = *(a1 + 40);
      v8 = [v3 ef_publicDescription];
      v18 = 138544130;
      v19 = v6;
      v20 = 2114;
      v21 = v7;
      v22 = 2114;
      v23 = v4;
      v24 = 2114;
      v25 = v8;
      _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@\nre-trying request for displayMessage: objectID: %{public}@, updatedObjectID: %{public}@, error: %{public}@", &v18, 0x2Au);
    }

    v9 = [*(a1 + 32) displayMessage];
  }

  v11 = v9;

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __26__EMThread_displayMessage__block_invoke_196(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = [MEMORY[0x1E699B7C8] futureWithResult:v3];
  }

  else
  {
    v4 = +[EMThread log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) ef_publicDescription];
      v11 = [*(a1 + 32) displayMessageObjectID];
      v12 = [*(a1 + 32) displayMessageItemID];
      v13 = 138543874;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      _os_log_error_impl(&dword_1C6655000, v4, OS_LOG_TYPE_ERROR, "%{public}@\ndisplayMessageObjectID: %{public}@, displayMessageItemID: %{public}@, message isNull", &v13, 0x20u);
    }

    v5 = MEMORY[0x1E699B7C8];
    v6 = [MEMORY[0x1E696ABC0] em_itemNotFoundErrorWithItemID:*(a1 + 40)];
    v7 = [v5 futureWithError:v6];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)deleteMovesToTrash
{
  v2 = [(EMThread *)self mailboxes];
  v3 = [EMMailbox deleteMovesToTrashForMailboxes:v2];

  return v3;
}

- (BOOL)shouldArchiveByDefault
{
  v3 = objc_opt_class();
  v4 = [(EMThread *)self mailboxes];
  LOBYTE(v3) = [v3 _shouldArchiveByDefaultForMailboxes:v4];

  return v3;
}

+ (BOOL)_shouldArchiveByDefaultForMailboxes:(id)a3
{
  v3 = a3;
  if ([EMMailbox supportsArchivingForMailboxes:v3])
  {
    v4 = [EMMailbox shouldArchiveByDefaultForMailboxes:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEditable
{
  isEditable = self->_isEditable;
  if (!isEditable)
  {
    v4 = [(EMThread *)self mailboxes];
    v5 = [v4 ef_any:&__block_literal_global_52];

    isEditable = 1;
    if (v5)
    {
      isEditable = 2;
    }

    self->_isEditable = isEditable;
  }

  return isEditable == 2;
}

BOOL __22__EMThread_isEditable__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] == 5 || objc_msgSend(v2, "type") == 6;

  return v3;
}

- (void)query
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1C6655000, log, OS_LOG_TYPE_DEBUG, "Predicate for Thread ObjectID %@: %@", buf, 0x16u);
}

@end