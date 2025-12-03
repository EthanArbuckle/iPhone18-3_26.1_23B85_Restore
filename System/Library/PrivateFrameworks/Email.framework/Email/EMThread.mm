@interface EMThread
+ (BOOL)_shouldArchiveByDefaultForMailboxes:(id)mailboxes;
+ (OS_os_log)log;
- (BOOL)deleteMovesToTrash;
- (BOOL)isEditable;
- (BOOL)objectIDBelongsToCollection:(id)collection;
- (BOOL)shouldArchiveByDefault;
- (BOOL)supportsArchiving;
- (EFFuture)displayMessage;
- (EMCollectionItemID)itemID;
- (EMMailboxScope)mailboxScope;
- (EMMailboxTypeResolver)mailboxTypeResolver;
- (EMMessageRepository)repository;
- (EMObjectID)displayMessageObjectID;
- (EMThread)initWithCoder:(id)coder;
- (EMThread)initWithObjectID:(id)d originatingQuery:(id)query builder:(id)builder;
- (NSArray)mailboxObjectIDs;
- (NSArray)mailboxes;
- (NSArray)mailboxesIfAvailable;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (NSString)ef_shortPublicDescription;
- (id)changeFrom:(id)from;
- (id)itemIDForObjectID:(id)d;
- (id)objectIDForItemID:(id)d;
- (id)query;
- (int64_t)conversationID;
- (void)_commonInitWithOriginatingQuery:(id)query builder:(id)builder;
- (void)encodeWithCoder:(id)coder;
- (void)query;
- (void)setMailboxObjectIDs:(id)ds;
- (void)setMailboxTypeResolver:(id)resolver;
- (void)setMailboxes:(id)mailboxes;
- (void)setRepository:(id)repository;
@end

@implementation EMThread

- (EMMessageRepository)repository
{
  v7.receiver = self;
  v7.super_class = EMThread;
  repository = [(EMRepositoryObject *)&v7 repository];
  if (repository)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EMThread.m" lineNumber:29 description:@"Wrong repository type"];
    }
  }

  return repository;
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
  objectID = [(EMObject *)self objectID];
  collectionItemID = [objectID collectionItemID];

  return collectionItemID;
}

- (NSString)ef_publicDescription
{
  mailboxesIfAvailable = [(EMThread *)self mailboxesIfAvailable];
  v3 = [mailboxesIfAvailable count];
  firstObject = [mailboxesIfAvailable firstObject];
  accountIfAvailable = [firstObject accountIfAvailable];

  if (v3)
  {
    [EMMailbox supportsArchivingForMailboxes:mailboxesIfAvailable];
    v50 = NSStringFromBOOL();
    if (accountIfAvailable)
    {
LABEL_3:
      [objc_opt_class() _shouldArchiveByDefaultForMailboxes:mailboxesIfAvailable];
      v49 = NSStringFromBOOL();
      goto LABEL_6;
    }
  }

  else
  {
    v50 = @"?";
    if (accountIfAvailable)
    {
      goto LABEL_3;
    }
  }

  v49 = @"?";
LABEL_6:
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    ef_publicDescription3 = [objc_alloc(MEMORY[0x1E699B250]) initWithStyle:2];
    v8 = MEMORY[0x1E696AEC0];
    v54.receiver = self;
    v54.super_class = EMThread;
    ef_publicDescription = [(EMObject *)&v54 ef_publicDescription];
    [(EMThread *)self conversationID];
    v46Ef_publicDescription = EFStringWithInt64();
    subject = [(EMThread *)self subject];
    senderList = [(EMThread *)self senderList];
    v43 = [ef_publicDescription3 stringFromEmailAddressList:senderList];
    toList = [(EMThread *)self toList];
    v45 = [ef_publicDescription3 stringFromEmailAddressList:toList];
    ccList = [(EMThread *)self ccList];
    v40 = [ef_publicDescription3 stringFromEmailAddressList:ccList];
    v9 = MEMORY[0x1E699B858];
    summary = [(EMThread *)self summary];
    v38 = [v9 ec_partiallyRedactedStringForSubjectOrSummary:summary];
    generatedSummary = [(EMThread *)self generatedSummary];
    ef_publicDescription2 = [generatedSummary ef_publicDescription];
    v10 = @"NO";
    if ([(EMThread *)self isUrgent])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    flags = [(EMThread *)self flags];
    conversationNotificationLevel = [(EMThread *)self conversationNotificationLevel];
    category = [(EMThread *)self category];
    v12 = EMShortStringForCategory(category);
    businessLogoID = [(EMThread *)self businessLogoID];
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

    searchResultType = [(EMThread *)self searchResultType];
    searchRelevanceScore = [(EMThread *)self searchRelevanceScore];
    unsubscribeType = [(EMThread *)self unsubscribeType];
    date = [(EMThread *)self date];
    displayDate = [(EMThread *)self displayDate];
    mailboxObjectIDs = [(EMThread *)self mailboxObjectIDs];
    v27 = v8;
    v18 = [(EMThread *)self count];
    displayMessageItemID = [(EMThread *)self displayMessageItemID];
    v30 = [v27 stringWithFormat:@"%@\n\tConversationID:%@\n\tSubject:%@\n\tSenderList:%@\n\tToList:%@\n\tCCList:%@\n\tSummary:%@\n\tGenerated Summary:%@ (isUrgent = %@)\n\tFlags:%@\n\tConversationNotificationLevel:%ld\n\tCategory:%@\n\tBusinessLogoID:%@\n\tIsVIP:%@\n\tIsBlocked:%@\n\tSearchResultType:%ld\n\tSearchRelevanceScore:%@\n\tUnsubscribeType:%ld\n\tDate:%@\n\tDisplayDate:%@\n\tMailboxes:%@\n\tCount:%lu\n\tSupportsArchiving:%@ \n\tShouldArchive:%@\n\tdisplayMessageItemID:%@", ef_publicDescription, v46Ef_publicDescription, subject, v43, v45, v40, v38, ef_publicDescription2, v11, flags, conversationNotificationLevel, v12, businessLogoID, v29, v10, searchResultType, searchRelevanceScore, unsubscribeType, date, displayDate, mailboxObjectIDs, v18, v50, v49, displayMessageItemID];

    v20 = v30;
  }

  else
  {
    v21 = MEMORY[0x1E696AEC0];
    v53.receiver = self;
    v53.super_class = EMThread;
    ef_publicDescription3 = [(EMObject *)&v53 ef_publicDescription];
    conversationID = [(EMThread *)self conversationID];
    ef_publicDescription = [(EMThread *)self flags];
    v46Ef_publicDescription = [ef_publicDescription ef_publicDescription];
    conversationNotificationLevel2 = [(EMThread *)self conversationNotificationLevel];
    if ([(EMThread *)self isBlocked])
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    unsubscribeType2 = [(EMThread *)self unsubscribeType];
    subject = [(EMThread *)self date];
    v20 = [v21 stringWithFormat:@"%@\n\tConversationID:%lld\n\tFlags:%@\n\tConversationNotificationLevel:%ld\n\tIsBlocked:%@\n\tUnsubscribeType:%ld\n\tDate:%@\n\tCount:%lu\n\tSupportsArchiving:%@ \n\tShouldArchive:%@", ef_publicDescription3, conversationID, v46Ef_publicDescription, conversationNotificationLevel2, v24, unsubscribeType2, subject, -[EMThread count](self, "count"), v50, v49];
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
    repository = [(EMThread *)self repository];
    mailboxRepository = [repository mailboxRepository];

    if (mailboxRepository)
    {
      mailboxObjectIDs = [(EMThread *)self mailboxObjectIDs];
      v3 = [mailboxRepository mailboxesIfAvailableForObjectIDs:mailboxObjectIDs];
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
  mailboxes = [(EMThread *)self mailboxes];
  v3 = [EMMailbox supportsArchivingForMailboxes:mailboxes];

  return v3;
}

- (NSArray)mailboxes
{
  os_unfair_lock_lock(&self->_mailboxesLock);
  v3 = self->_mailboxes;
  os_unfair_lock_unlock(&self->_mailboxesLock);
  if (!v3)
  {
    repository = [(EMThread *)self repository];
    mailboxRepository = [repository mailboxRepository];

    if (mailboxRepository)
    {
      v6 = MEMORY[0x1E699B7C8];
      repository2 = [(EMThread *)self repository];
      mailboxRepository2 = [repository2 mailboxRepository];
      mailboxObjectIDs = [(EMThread *)self mailboxObjectIDs];
      v10 = [mailboxRepository2 mailboxesForObjectIDs:mailboxObjectIDs];
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
  objectID = [(EMObject *)self objectID];
  conversationID = [objectID conversationID];

  return conversationID;
}

- (NSString)ef_shortPublicDescription
{
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    v5 = MEMORY[0x1E696AEC0];
    v17.receiver = self;
    v17.super_class = EMThread;
    ef_publicDescription = [(EMObject *)&v17 ef_publicDescription];
    [(EMThread *)self conversationID];
    ef_publicDescription4 = EFStringWithInt64();
    subject = [(EMThread *)self subject];
    ef_publicDescription2 = [subject ef_publicDescription];
    flags = [(EMThread *)self flags];
    ef_publicDescription3 = [flags ef_publicDescription];
    v12 = [v5 stringWithFormat:@"%@ \n\tConversationID:%@\n\tSubject:%@ \n\tFlags:%@ \n", ef_publicDescription, ef_publicDescription4, ef_publicDescription2, ef_publicDescription3];
  }

  else
  {
    ef_publicDescription = [objc_alloc(MEMORY[0x1E699B990]) initWithHash:{-[EMThread conversationID](self, "conversationID")}];
    v13 = MEMORY[0x1E696AEC0];
    v16.receiver = self;
    v16.super_class = EMThread;
    ef_publicDescription4 = [(EMObject *)&v16 ef_publicDescription];
    subject = [ef_publicDescription ef_publicDescription];
    ef_publicDescription2 = [(EMThread *)self flags];
    flags = [ef_publicDescription2 ef_publicDescription];
    ef_publicDescription3 = [(EMThread *)self date];
    v12 = [v13 stringWithFormat:@"%@ \n\tConversationID:%@ \n\tFlags:%@ \n\tDate:%@ \n", ef_publicDescription4, subject, flags, ef_publicDescription3];
  }

  v14 = v12;

  return v14;
}

- (EMObjectID)displayMessageObjectID
{
  displayMessageItemID = [(EMThread *)self displayMessageItemID];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMThread.m" lineNumber:589 description:@"displayMessageItemID is not an EMMessageCollectionItemID"];
  }

  v5 = [EMMessageObjectID alloc];
  mailboxScope = [(EMThread *)self mailboxScope];
  v7 = [(EMMessageObjectID *)v5 initWithCollectionItemID:displayMessageItemID mailboxScope:mailboxScope];

  return v7;
}

- (EMMailboxScope)mailboxScope
{
  mailboxTypeResolver = [(EMThread *)self mailboxTypeResolver];
  os_unfair_lock_lock(&self->_mailboxScopeLock);
  mailboxScope = self->_mailboxScope;
  if (mailboxScope)
  {
    v5 = 1;
  }

  else
  {
    v5 = mailboxTypeResolver == 0;
  }

  if (!v5)
  {
    originatingQuery = [(EMThread *)self originatingQuery];
    predicate = [originatingQuery predicate];
    v8 = [EMMessageListItemPredicates mailboxScopeForPredicate:predicate withMailboxTypeResolver:mailboxTypeResolver];
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
  mailboxRepository = self->_mailboxTypeResolver;
  os_unfair_lock_unlock(&self->_mailboxTypeResolverLock);
  if (!mailboxRepository)
  {
    repository = [(EMThread *)self repository];
    mailboxRepository = [repository mailboxRepository];
  }

  return mailboxRepository;
}

- (void)setRepository:(id)repository
{
  repositoryCopy = repository;
  if (repositoryCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EMThread.m" lineNumber:29 description:@"Wrong repository type"];
    }
  }

  v7.receiver = self;
  v7.super_class = EMThread;
  [(EMRepositoryObject *)&v7 setRepository:repositoryCopy];
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __15__EMThread_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (EMThread)initWithObjectID:(id)d originatingQuery:(id)query builder:(id)builder
{
  dCopy = d;
  queryCopy = query;
  builderCopy = builder;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMThread.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v16.receiver = self;
  v16.super_class = EMThread;
  v12 = [(EMQueryingCollection *)&v16 initWithObjectID:dCopy query:0];
  v13 = v12;
  if (v12)
  {
    [(EMThread *)v12 _commonInitWithOriginatingQuery:queryCopy builder:builderCopy];
  }

  return v13;
}

- (void)_commonInitWithOriginatingQuery:(id)query builder:(id)builder
{
  objc_storeStrong(&self->_originatingQuery, query);
  builderCopy = builder;
  self->_mailboxScopeLock._os_unfair_lock_opaque = 0;
  self->_mailboxTypeResolverLock._os_unfair_lock_opaque = 0;
  self->_mailboxesLock._os_unfair_lock_opaque = 0;
  v7 = builderCopy;
  (*(builderCopy + 2))(builderCopy, self);
}

- (id)changeFrom:(id)from
{
  v3 = [EMMessageListItemChange changeFrom:from to:self];

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
  subject = [(EMThread *)self subject];
  v33 = [subject debugDescription];
  senderList = [(EMThread *)self senderList];
  v32 = [senderList debugDescription];
  toList = [(EMThread *)self toList];
  v31 = [toList debugDescription];
  ccList = [(EMThread *)self ccList];
  v30 = [ccList debugDescription];
  summary = [(EMThread *)self summary];
  generatedSummary = [(EMThread *)self generatedSummary];
  v24 = [generatedSummary debugDescription];
  if ([(EMThread *)self isUrgent])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v16 = v3;
  flags = [(EMThread *)self flags];
  conversationNotificationLevel = [(EMThread *)self conversationNotificationLevel];
  category = [(EMThread *)self category];
  businessLogoID = [(EMThread *)self businessLogoID];
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
  searchResultType = [(EMThread *)self searchResultType];
  searchRelevanceScore = [(EMThread *)self searchRelevanceScore];
  unsubscribeType = [(EMThread *)self unsubscribeType];
  date = [(EMThread *)self date];
  displayDate = [(EMThread *)self displayDate];
  mailboxObjectIDs = [(EMThread *)self mailboxObjectIDs];
  v7 = [mailboxObjectIDs debugDescription];
  v21 = [v20 stringWithFormat:@"%@\n\tConversationID:%@\n\tSubject:%@\n\tSenderList:%@\n\tToList:%@\n\tCCList:%@\n\tSummary:%@\n\tGenerated Summary:%@ (isUrgent = %@)\n\tFlags:%@\n\tConversationNotificationLevel:%ld\n\tCategory:%@\n\tBusinessLogoID:%@\n\tIsVIP:%@\n\tIsBlocked:%@\n\tSearchResultType:%ld\n\tSearchRelevanceScore:%@\n\tUnsubscribeType:%ld\n\tDate:%@\n\tDisplayDate:%@\n\tMailboxes:%@\n\tCount:%lu", v35, v34, v33, v32, v31, v30, summary, v24, v16, flags, conversationNotificationLevel, category, businessLogoID, v12, v11, searchResultType, searchRelevanceScore, unsubscribeType, date, displayDate, v7, -[EMThread count](self, "count")];

  return v21;
}

- (EMThread)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = EMThread;
  v5 = [(EMQueryingCollection *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_originatingQuery"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __26__EMThread_initWithCoder___block_invoke;
    v8[3] = &unk_1E826FB78;
    v9 = coderCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = EMThread;
  [(EMQueryingCollection *)&v27 encodeWithCoder:coderCopy];
  originatingQuery = [(EMThread *)self originatingQuery];
  [coderCopy encodeObject:originatingQuery forKey:@"EFPropertyKey_originatingQuery"];

  date = [(EMThread *)self date];
  [coderCopy encodeObject:date forKey:@"EFPropertyKey_date"];

  displayDate = [(EMThread *)self displayDate];
  [coderCopy encodeObject:displayDate forKey:@"EFPropertyKey_displayDate"];

  readLater = [(EMThread *)self readLater];
  [coderCopy encodeObject:readLater forKey:@"EFPropertyKey_readLater"];

  sendLaterDate = [(EMThread *)self sendLaterDate];
  [coderCopy encodeObject:sendLaterDate forKey:@"EFPropertyKey_sendLaterDate"];

  followUp = [(EMThread *)self followUp];
  [coderCopy encodeObject:followUp forKey:@"EFPropertyKey_followUp"];

  category = [(EMThread *)self category];
  [coderCopy encodeObject:category forKey:@"EFPropertyKey_category"];

  businessLogoID = [(EMThread *)self businessLogoID];
  [coderCopy encodeObject:businessLogoID forKey:@"EFPropertyKey_businessLogoID"];

  groupedSenderMessageListItems = [(EMThread *)self groupedSenderMessageListItems];
  [coderCopy encodeObject:groupedSenderMessageListItems forKey:@"EFPropertyKey_groupedSenderMessageListItems"];

  subject = [(EMThread *)self subject];
  [coderCopy encodeObject:subject forKey:@"EFPropertyKey_subject"];

  summary = [(EMThread *)self summary];
  [coderCopy encodeObject:summary forKey:@"EFPropertyKey_summary"];

  generatedSummary = [(EMThread *)self generatedSummary];
  [coderCopy encodeObject:generatedSummary forKey:@"EFPropertyKey_generatedSummary"];

  [coderCopy encodeBool:-[EMThread isUrgent](self forKey:{"isUrgent"), @"EFPropertyKey_isUrgent"}];
  senderList = [(EMThread *)self senderList];
  [coderCopy encodeObject:senderList forKey:@"EFPropertyKey_senderList"];

  toList = [(EMThread *)self toList];
  [coderCopy encodeObject:toList forKey:@"EFPropertyKey_toList"];

  ccList = [(EMThread *)self ccList];
  [coderCopy encodeObject:ccList forKey:@"EFPropertyKey_ccList"];

  flags = [(EMThread *)self flags];
  [coderCopy encodeObject:flags forKey:@"EFPropertyKey_flags"];

  [coderCopy encodeBool:-[EMThread hasUnflagged](self forKey:{"hasUnflagged"), @"EFPropertyKey_hasUnflagged"}];
  flagColors = [(EMThread *)self flagColors];
  [coderCopy encodeObject:flagColors forKey:@"EFPropertyKey_flagColors"];

  [coderCopy encodeBool:-[EMThread isVIP](self forKey:{"isVIP"), @"EFPropertyKey_isVIP"}];
  [coderCopy encodeBool:-[EMThread isBlocked](self forKey:{"isBlocked"), @"EFPropertyKey_isBlocked"}];
  [coderCopy encodeInteger:-[EMThread searchResultType](self forKey:{"searchResultType"), @"EFPropertyKey_searchResultType"}];
  searchRelevanceScore = [(EMThread *)self searchRelevanceScore];
  [coderCopy encodeObject:searchRelevanceScore forKey:@"EFPropertyKey_searchRelevanceScore"];

  [coderCopy encodeInteger:-[EMThread unsubscribeType](self forKey:{"unsubscribeType"), @"EFPropertyKey_unsubscribeType"}];
  [coderCopy encodeBool:-[EMThread isToMe](self forKey:{"isToMe"), @"EFPropertyKey_isToMe"}];
  [coderCopy encodeBool:-[EMThread isCCMe](self forKey:{"isCCMe"), @"EFPropertyKey_isCCMe"}];
  [coderCopy encodeBool:-[EMThread hasAttachments](self forKey:{"hasAttachments"), @"EFPropertyKey_hasAttachments"}];
  [coderCopy encodeBool:-[EMThread isAuthenticated](self forKey:{"isAuthenticated"), @"EFPropertyKey_isAuthenticated"}];
  [coderCopy encodeBool:-[EMThread allowAuthenticationWarning](self forKey:{"allowAuthenticationWarning"), @"EFPropertyKey_allowAuthenticationWarning"}];
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{-[EMThread conversationNotificationLevel](self, "conversationNotificationLevel")}];
  [coderCopy encodeObject:v23 forKey:@"EFPropertyKey_conversationNotificationLevel"];

  brandIndicatorLocation = [(EMThread *)self brandIndicatorLocation];
  [coderCopy encodeObject:brandIndicatorLocation forKey:@"EFPropertyKey_brandIndicatorLocation"];

  [coderCopy encodeInteger:-[EMThread count](self forKey:{"count"), @"EFPropertyKey_count"}];
  mailboxObjectIDs = [(EMThread *)self mailboxObjectIDs];
  [coderCopy encodeObject:mailboxObjectIDs forKey:@"EFPropertyKey_mailboxObjectIDs"];

  displayMessageItemID = [(EMThread *)self displayMessageItemID];
  [coderCopy encodeObject:displayMessageItemID forKey:@"EFPropertyKey_displayMessageItemID"];
}

- (void)setMailboxTypeResolver:(id)resolver
{
  resolverCopy = resolver;
  os_unfair_lock_lock(&self->_mailboxTypeResolverLock);
  mailboxTypeResolver = self->_mailboxTypeResolver;
  self->_mailboxTypeResolver = resolverCopy;

  os_unfair_lock_unlock(&self->_mailboxTypeResolverLock);
}

- (id)query
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = [EMMessageListItemPredicates predicateForMessagesInConversation:[(EMThread *)self conversationID]];
  v4 = objc_alloc(MEMORY[0x1E696AB28]);
  predicate = [(EMQuery *)self->_originatingQuery predicate];
  v14[0] = predicate;
  v14[1] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v7 = [v4 initWithType:1 subpredicates:v6];

  v8 = +[EMThread log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    objectID = [(EMObject *)self objectID];
    [(EMThread *)objectID query:v7];
  }

  v10 = [(EMQuery *)self->_originatingQuery queryWithTargetClass:objc_opt_class() predicate:v7];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)objectIDForItemID:(id)d
{
  dCopy = d;
  if (dCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [EMMessageObjectID alloc];
    mailboxScope = [(EMThread *)self mailboxScope];
    v7 = [(EMMessageObjectID *)v5 initWithCollectionItemID:dCopy mailboxScope:mailboxScope];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)itemIDForObjectID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      collectionItemID = [dCopy collectionItemID];
      goto LABEL_6;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMThread.m" lineNumber:500 description:@"Object ID of unrecognized type"];
  }

  collectionItemID = 0;
LABEL_6:

  return collectionItemID;
}

- (BOOL)objectIDBelongsToCollection:(id)collection
{
  collectionCopy = collection;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = collectionCopy;
    mailboxScope = [(EMThread *)self mailboxScope];
    mailboxScope2 = [v5 mailboxScope];
    v8 = [mailboxScope isEqual:mailboxScope2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setMailboxObjectIDs:(id)ds
{
  dsCopy = ds;
  os_unfair_lock_lock(&self->_mailboxesLock);
  mailboxObjectIDs = self->_mailboxObjectIDs;
  if ((EFArraysAreEqual() & 1) == 0)
  {
    v5 = [dsCopy copy];
    v6 = self->_mailboxObjectIDs;
    self->_mailboxObjectIDs = v5;

    mailboxes = self->_mailboxes;
    self->_mailboxes = 0;

    self->_isEditable = 0;
  }

  os_unfair_lock_unlock(&self->_mailboxesLock);
}

- (void)setMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  os_unfair_lock_lock(&self->_mailboxesLock);
  v4 = [mailboxesCopy copy];
  mailboxes = self->_mailboxes;
  self->_mailboxes = v4;

  v6 = [mailboxesCopy ef_mapSelector:sel_objectID];
  mailboxObjectIDs = self->_mailboxObjectIDs;
  self->_mailboxObjectIDs = v6;

  self->_isEditable = 0;
  os_unfair_lock_unlock(&self->_mailboxesLock);
}

- (EFFuture)displayMessage
{
  displayMessageObjectID = [(EMThread *)self displayMessageObjectID];
  repository = [(EMThread *)self repository];
  v5 = [repository messageForObjectID:displayMessageObjectID];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __26__EMThread_displayMessage__block_invoke;
  v13[3] = &unk_1E826D0A0;
  v13[4] = self;
  v6 = displayMessageObjectID;
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
  mailboxes = [(EMThread *)self mailboxes];
  v3 = [EMMailbox deleteMovesToTrashForMailboxes:mailboxes];

  return v3;
}

- (BOOL)shouldArchiveByDefault
{
  v3 = objc_opt_class();
  mailboxes = [(EMThread *)self mailboxes];
  LOBYTE(v3) = [v3 _shouldArchiveByDefaultForMailboxes:mailboxes];

  return v3;
}

+ (BOOL)_shouldArchiveByDefaultForMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  if ([EMMailbox supportsArchivingForMailboxes:mailboxesCopy])
  {
    v4 = [EMMailbox shouldArchiveByDefaultForMailboxes:mailboxesCopy];
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
    mailboxes = [(EMThread *)self mailboxes];
    v5 = [mailboxes ef_any:&__block_literal_global_52];

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
  *(buf + 4) = self;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1C6655000, log, OS_LOG_TYPE_DEBUG, "Predicate for Thread ObjectID %@: %@", buf, 0x16u);
}

@end