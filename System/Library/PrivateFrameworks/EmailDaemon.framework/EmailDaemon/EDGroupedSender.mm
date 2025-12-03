@interface EDGroupedSender
+ (id)log;
+ (int64_t)maxGroupedSenderMessageListItemsCount;
- (BOOL)deleteMovesToTrash;
- (BOOL)displayNamesMatch;
- (BOOL)hasAttachments;
- (BOOL)isBlocked;
- (BOOL)isEditable;
- (BOOL)isEqual:(id)equal;
- (BOOL)isVIP;
- (BOOL)shouldArchiveByDefault;
- (BOOL)supportsArchiving;
- (ECSubject)subject;
- (EDGroupedSender)initWithBusinessID:(int64_t)d externalBusinessID:(id)iD messages:(id)messages originatingQuery:(id)query businessPersistence:(id)persistence messagePersistence:(id)messagePersistence businessCloudStorage:(id)storage unsubscribeDetector:(id)self0;
- (EDGroupedSender)initWithCoder:(id)coder;
- (EDGroupedSender)initWithObjectID:(id)d businessID:(int64_t)iD externalBusinessID:(id)businessID messages:(id)messages sortDescriptors:(id)descriptors businessPersistence:(id)persistence messagePersistence:(id)messagePersistence businessCloudStorage:(id)self0 unsubscribeDetector:(id)self1 unreadCount:(unint64_t)self2 unseenCount:(unint64_t)self3 alwaysUseNewestItems:(BOOL)self4;
- (EFFuture)displayMessage;
- (EMCategory)category;
- (EMCollectionItemID)displayMessageItemID;
- (EMCollectionItemID)itemID;
- (EMGeneratedSummary)generatedSummary;
- (EMMessage)newestMessage;
- (EMObjectID)displayMessageObjectID;
- (NSArray)ccList;
- (NSArray)groupedSenderMessageListItems;
- (NSArray)mailboxObjectIDs;
- (NSArray)mailboxes;
- (NSArray)mailboxesIfAvailable;
- (NSArray)messages;
- (NSArray)senderList;
- (NSArray)toList;
- (NSDate)date;
- (NSDate)displayDate;
- (NSIndexSet)flagColors;
- (NSString)businessDisplayName;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (NSString)summary;
- (NSURL)brandIndicatorLocation;
- (id)_newestMessageDescription;
- (id)_newestMessages:(int64_t)messages;
- (id)_persistedBusinessDisplayName;
- (id)_recalculateGroupedSenderMessageListItems;
- (id)_senderDisplayName;
- (id)_uiChangeFrom:(id)from;
- (id)addMessages:(id)messages;
- (id)changeFrom:(id)from;
- (id)changeKeyPaths:(id)paths forMessages:(id)messages messageProvider:(id)provider;
- (id)copyWithZone:(_NSZone *)zone;
- (id)recalculateUnseenCount;
- (id)removeMessages:(id)messages isGroupEmpty:(BOOL *)empty messageProvider:(id)provider;
- (unint64_t)_flagCountForMessages:(id)messages;
- (unint64_t)_unreadCountForMessages:(id)messages;
- (unint64_t)_unseenCountForMessages:(id)messages;
- (unint64_t)_unseenCountForMessages:(id)messages lastSeenDate:(id)date lastSeenDisplayDate:(id)displayDate;
- (void)_trimMessages;
- (void)_updateCachedMessagesIfNeededWithMessageProvider:(id)provider;
- (void)_updateGroupedSenderMessageListItems;
- (void)encodeWithCoder:(id)coder;
- (void)setUnreadCount:(unint64_t)count;
@end

@implementation EDGroupedSender

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__EDGroupedSender_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_41 != -1)
  {
    dispatch_once(&log_onceToken_41, block);
  }

  v2 = log_log_41;

  return v2;
}

void __22__EDGroupedSender_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_41;
  log_log_41 = v1;
}

- (EDGroupedSender)initWithBusinessID:(int64_t)d externalBusinessID:(id)iD messages:(id)messages originatingQuery:(id)query businessPersistence:(id)persistence messagePersistence:(id)messagePersistence businessCloudStorage:(id)storage unsubscribeDetector:(id)self0
{
  iDCopy = iD;
  messagesCopy = messages;
  queryCopy = query;
  persistenceCopy = persistence;
  messagePersistenceCopy = messagePersistence;
  storageCopy = storage;
  detectorCopy = detector;
  v21 = MEMORY[0x1E699ADA0];
  v42 = queryCopy;
  v40 = iDCopy;
  v37 = storageCopy;
  predicate = [queryCopy predicate];
  v43 = [v21 threadScopeForPredicate:predicate withMailboxTypeResolver:0];

  v23 = [objc_alloc(MEMORY[0x1E699ACD0]) initWithBusinessID:d threadScope:v43];
  v24 = [(EDGroupedSender *)self _unreadCountForMessages:messagesCopy];
  firstObject = [messagesCopy firstObject];
  category = [firstObject category];

  v36 = category;
  if (category)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(category, "type")}];
  }

  else
  {
    v27 = 0;
  }

  v35 = v27;
  v41 = [storageCopy lastSeenDateForCategoryType:v27 businessWithExternalID:iDCopy];
  v28 = [storageCopy lastSeenDisplayDateForCategoryType:v27 businessWithExternalID:iDCopy];
  v29 = [(EDGroupedSender *)self _unseenCountForMessages:messagesCopy lastSeenDate:v41 lastSeenDisplayDate:v28];
  v30 = [MEMORY[0x1E699ACE8] preferenceEnabled:41];
  sortDescriptors = [v42 sortDescriptors];
  LOBYTE(v34) = v30;
  v32 = [(EDGroupedSender *)self initWithObjectID:v23 businessID:d externalBusinessID:v40 messages:messagesCopy sortDescriptors:sortDescriptors businessPersistence:persistenceCopy messagePersistence:messagePersistenceCopy businessCloudStorage:v37 unsubscribeDetector:detectorCopy unreadCount:v24 unseenCount:v29 alwaysUseNewestItems:v34];

  return v32;
}

- (EDGroupedSender)initWithObjectID:(id)d businessID:(int64_t)iD externalBusinessID:(id)businessID messages:(id)messages sortDescriptors:(id)descriptors businessPersistence:(id)persistence messagePersistence:(id)messagePersistence businessCloudStorage:(id)self0 unsubscribeDetector:(id)self1 unreadCount:(unint64_t)self2 unseenCount:(unint64_t)self3 alwaysUseNewestItems:(BOOL)self4
{
  dCopy = d;
  businessIDCopy = businessID;
  messagesCopy = messages;
  descriptorsCopy = descriptors;
  persistenceCopy = persistence;
  messagePersistenceCopy = messagePersistence;
  storageCopy = storage;
  detectorCopy = detector;
  v41.receiver = self;
  v41.super_class = EDGroupedSender;
  v22 = [(EMObject *)&v41 initWithObjectID:dCopy];
  v23 = v22;
  if (v22)
  {
    v22->_businessID = iD;
    v24 = [businessIDCopy copy];
    externalBusinessID = v23->_externalBusinessID;
    v23->_externalBusinessID = v24;

    objc_storeStrong(&v23->_sortDescriptors, descriptors);
    objc_storeStrong(&v23->_businessPersistence, persistence);
    objc_storeStrong(&v23->_messagePersistence, messagePersistence);
    objc_storeStrong(&v23->_businessCloudStorage, storage);
    objc_storeStrong(&v23->_unsubscribeDetector, detector);
    firstObject = [messagesCopy firstObject];
    businessLogoID = [firstObject businessLogoID];
    businessLogoID = v23->_businessLogoID;
    v23->_businessLogoID = businessLogoID;

    v29 = [messagesCopy ef_filter:&__block_literal_global_27];
    v30 = [v29 mutableCopy];
    messages = v23->_messages;
    v23->_messages = v30;

    [(NSMutableArray *)v23->_messages sortUsingDescriptors:descriptorsCopy];
    v32 = [MEMORY[0x1E699AD30] combinedFlagsForMessageListItems:v23->_messages];
    flags = v23->_flags;
    v23->_flags = v32;

    v23->_unreadCount = count;
    v23->_unseenCount = unseenCount;
    v23->_flagCount = [(EDGroupedSender *)v23 _flagCountForMessages:v23->_messages];
    v23->_count = [messagesCopy count];
    v23->_alwaysUseNewestItems = items;
    v23->_authenticatedCount = [(EDGroupedSender *)v23 _authenticatedCountForMessages:v23->_messages];
    [(EDGroupedSender *)v23 _trimMessages];
  }

  return v23;
}

uint64_t __216__EDGroupedSender_initWithObjectID_businessID_externalBusinessID_messages_sortDescriptors_businessPersistence_messagePersistence_businessCloudStorage_unsubscribeDetector_unreadCount_unseenCount_alwaysUseNewestItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 deleted];

  return v3 ^ 1u;
}

- (EDGroupedSender)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = EDGroupedSender;
  v5 = [(EMObject *)&v26 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_businessID = [coderCopy decodeInt64ForKey:@"EFPropertyKey_businessID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_businessLogoID"];
    businessLogoID = v5->_businessLogoID;
    v5->_businessLogoID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_externalBusinessID"];
    externalBusinessID = v5->_externalBusinessID;
    v5->_externalBusinessID = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"EFPropertyKey_emailAddress"];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"EFPropertyKey_sortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"EFPropertyKey_messages"];
    messages = v5->_messages;
    v5->_messages = v23;

    v5->_unreadCount = [coderCopy decodeIntegerForKey:@"EFPropertyKey_unreadCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = EDGroupedSender;
  [(EMObject *)&v10 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:-[EDGroupedSender businessID](self forKey:{"businessID"), @"EFPropertyKey_businessID"}];
  businessLogoID = [(EDGroupedSender *)self businessLogoID];
  [coderCopy encodeObject:businessLogoID forKey:@"EFPropertyKey_businessLogoID"];

  businessDisplayName = [(EDGroupedSender *)self businessDisplayName];
  [coderCopy encodeObject:businessDisplayName forKey:@"EFPropertyKey_businessDisplayName"];

  externalBusinessID = [(EDGroupedSender *)self externalBusinessID];
  [coderCopy encodeObject:externalBusinessID forKey:@"EFPropertyKey_externalBusinessID"];

  emailAddress = [(EDGroupedSender *)self emailAddress];
  [coderCopy encodeObject:emailAddress forKey:@"EFPropertyKey_emailAddress"];

  sortDescriptors = [(EDGroupedSender *)self sortDescriptors];
  [coderCopy encodeObject:sortDescriptors forKey:@"EFPropertyKey_sortDescriptors"];

  [coderCopy encodeObject:self->_messages forKey:@"EFPropertyKey_messages"];
  [coderCopy encodeInteger:-[EDGroupedSender unreadCount](self forKey:{"unreadCount"), @"EFPropertyKey_unreadCount"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  objectID = [(EMObject *)self objectID];
  v22 = [objectID copy];
  businessID = [(EDGroupedSender *)self businessID];
  externalBusinessID = [(EDGroupedSender *)self externalBusinessID];
  messages = [(EDGroupedSender *)self messages];
  v20 = [messages copy];
  sortDescriptors = [(EDGroupedSender *)self sortDescriptors];
  v6 = [sortDescriptors copy];
  businessPersistence = [(EDGroupedSender *)self businessPersistence];
  messagePersistence = [(EDGroupedSender *)self messagePersistence];
  businessCloudStorage = [(EDGroupedSender *)self businessCloudStorage];
  v10 = v4;
  unsubscribeDetector = [(EDGroupedSender *)self unsubscribeDetector];
  unreadCount = [(EDGroupedSender *)self unreadCount];
  unseenCount = [(EDGroupedSender *)self unseenCount];
  LOBYTE(v16) = [(EDGroupedSender *)self alwaysUseNewestItems];
  v14 = [v10 initWithObjectID:v22 businessID:businessID externalBusinessID:externalBusinessID messages:v20 sortDescriptors:v6 businessPersistence:businessPersistence messagePersistence:messagePersistence businessCloudStorage:businessCloudStorage unsubscribeDetector:unsubscribeDetector unreadCount:unreadCount unseenCount:unseenCount alwaysUseNewestItems:v16];

  return v14;
}

- (EMMessage)newestMessage
{
  v2 = [(EDGroupedSender *)self _newestMessages:1];
  firstObject = [v2 firstObject];

  return firstObject;
}

- (id)_newestMessages:(int64_t)messages
{
  if (messages)
  {
    sortDescriptors = [(EDGroupedSender *)self sortDescriptors];
    firstObject = [sortDescriptors firstObject];
    ascending = [firstObject ascending];

    v8 = [(NSMutableArray *)self->_messages count];
    if (v8 >= messages)
    {
      messagesCopy = messages;
    }

    else
    {
      messagesCopy = v8;
    }

    if (ascending)
    {
      v10 = [(NSMutableArray *)self->_messages count]- messagesCopy;
    }

    else
    {
      v10 = 0;
    }

    messagesCopy = [(NSMutableArray *)self->_messages subarrayWithRange:v10, messagesCopy];
    v13 = messagesCopy;
    if (ascending)
    {
      ef_reverse = [messagesCopy ef_reverse];
    }

    else
    {
      ef_reverse = messagesCopy;
    }

    v11 = ef_reverse;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)_unreadCountForMessages:(id)messages
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  messagesCopy = messages;
  v4 = 0;
  v5 = [messagesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(messagesCopy);
        }

        flags = [*(*(&v12 + 1) + 8 * v7) flags];
        read = [flags read];

        v4 += read ^ 1u;
        ++v7;
      }

      while (v5 != v7);
      v5 = [messagesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (unint64_t)_flagCountForMessages:(id)messages
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  messagesCopy = messages;
  v4 = 0;
  v5 = [messagesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(messagesCopy);
        }

        flags = [*(*(&v12 + 1) + 8 * v7) flags];
        flagged = [flags flagged];

        v4 += flagged;
        ++v7;
      }

      while (v5 != v7);
      v5 = [messagesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (unint64_t)_unseenCountForMessages:(id)messages
{
  messagesCopy = messages;
  category = [(EDGroupedSender *)self category];
  v6 = category;
  if (category)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(category, "type")}];
  }

  else
  {
    v7 = 0;
  }

  businessCloudStorage = [(EDGroupedSender *)self businessCloudStorage];
  externalBusinessID = [(EDGroupedSender *)self externalBusinessID];
  v10 = [businessCloudStorage lastSeenDateForCategoryType:v7 businessWithExternalID:externalBusinessID];

  businessCloudStorage2 = [(EDGroupedSender *)self businessCloudStorage];
  externalBusinessID2 = [(EDGroupedSender *)self externalBusinessID];
  v13 = [businessCloudStorage2 lastSeenDisplayDateForCategoryType:v7 businessWithExternalID:externalBusinessID2];

  v14 = [(EDGroupedSender *)self _unseenCountForMessages:messagesCopy lastSeenDate:v10 lastSeenDisplayDate:v13];
  return v14;
}

- (unint64_t)_unseenCountForMessages:(id)messages lastSeenDate:(id)date lastSeenDisplayDate:(id)displayDate
{
  v29 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  dateCopy = date;
  displayDateCopy = displayDate;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = messagesCopy;
  v11 = 0;
  v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        flags = [v15 flags];
        read = [flags read];

        if ((read & 1) == 0)
        {
          if (dateCopy)
          {
            date = [v15 date];
            v19 = [dateCopy ef_isEarlierThanDate:date] ^ 1;
            if (!displayDateCopy)
            {
              LOBYTE(v19) = 0;
            }

            if (v19)
            {
              displayDate = [v15 displayDate];
              v21 = [displayDateCopy ef_isEarlierThanDate:displayDate];

              if (!v21)
              {
                continue;
              }
            }

            else
            {
            }
          }

          ++v11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = EDGroupedSender;
  return [(EMObject *)&v4 isEqual:equal];
}

- (id)addMessages:(id)messages
{
  v30 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v20 = [(EDGroupedSender *)self copy];
  v5 = [messagesCopy ef_filter:&__block_literal_global_42_0];

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count", v5)}];
  sortDescriptors = [(EDGroupedSender *)self sortDescriptors];
  v8 = EFComparatorFromSortDescriptors();

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v10)
  {
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if ([(NSMutableArray *)self->_messages ef_insertObjectIfAbsent:v13 usingComparator:v8]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [v6 addObject:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v10);
  }

  [(EDGroupedSender *)self _trimMessages];
  [(EDGroupedSender *)self setAuthenticatedCount:[(EDGroupedSender *)self authenticatedCount]+ [(EDGroupedSender *)self _authenticatedCountForMessages:v6]];
  [(EDGroupedSender *)self setUnreadCount:[(EDGroupedSender *)self unreadCount]+ [(EDGroupedSender *)self _unreadCountForMessages:v6]];
  [(EDGroupedSender *)self setUnseenCount:[(EDGroupedSender *)self unseenCount]+ [(EDGroupedSender *)self _unseenCountForMessages:v6]];
  v14 = [(EDGroupedSender *)self _flagCountForMessages:v6];
  if (v14)
  {
    v15 = +[EDGroupedSender log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      objectID = [(EMObject *)self objectID];
      *buf = 134218242;
      v26 = v14;
      v27 = 2112;
      v28 = objectID;
      _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Incrementing flagCount by %lld for sender %@", buf, 0x16u);
    }
  }

  [(EDGroupedSender *)self setFlagCount:[(EDGroupedSender *)self flagCount]+ v14];
  self->_count += [v6 count];
  v17 = [(EDGroupedSender *)self _uiChangeFrom:v20];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

uint64_t __31__EDGroupedSender_addMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 deleted];

  return v3 ^ 1u;
}

- (id)changeKeyPaths:(id)paths forMessages:(id)messages messageProvider:(id)provider
{
  v57 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  providerCopy = provider;
  v49 = [(EDGroupedSender *)self copy];
  v8 = [messagesCopy ef_filter:&__block_literal_global_46_0];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v9)
  {
    v51 = *v53;
    v10 = *MEMORY[0x1E699B748];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v53 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v52 + 1) + 8 * i);
        messages = self->_messages;
        second = [v12 second];
        [(NSMutableArray *)messages removeObject:second];

        first = [v12 first];
        LODWORD(messages) = (*(v10 + 16))(v10, first);

        if (!messages)
        {
          continue;
        }

        first2 = [v12 first];
        flags = [first2 flags];
        if ([flags read])
        {
        }

        else
        {
          second2 = [v12 second];
          flags2 = [second2 flags];
          read = [flags2 read];

          if (read)
          {
            v21 = [(EDGroupedSender *)self unreadCount]- 1;
LABEL_14:
            [(EDGroupedSender *)self setUnreadCount:v21];
            goto LABEL_16;
          }
        }

        first3 = [v12 first];
        flags3 = [first3 flags];
        if ([flags3 read])
        {
          second3 = [v12 second];
          flags4 = [second3 flags];
          read2 = [flags4 read];

          if (read2)
          {
            goto LABEL_16;
          }

          v21 = [(EDGroupedSender *)self unreadCount]+ 1;
          goto LABEL_14;
        }

LABEL_16:
        second4 = [v12 second];
        if ([second4 isAuthenticated])
        {
        }

        else
        {
          first4 = [v12 first];
          isAuthenticated = [first4 isAuthenticated];

          if (isAuthenticated)
          {
            v30 = [(EDGroupedSender *)self authenticatedCount]+ 1;
LABEL_23:
            [(EDGroupedSender *)self setAuthenticatedCount:v30];
            goto LABEL_25;
          }
        }

        second5 = [v12 second];
        if (([second5 isAuthenticated] & 1) == 0)
        {

          goto LABEL_25;
        }

        first5 = [v12 first];
        isAuthenticated2 = [first5 isAuthenticated];

        if ((isAuthenticated2 & 1) == 0)
        {
          v30 = [(EDGroupedSender *)self authenticatedCount]- 1;
          goto LABEL_23;
        }

LABEL_25:
        second6 = [v12 second];
        flags5 = [second6 flags];
        if ([flags5 flagged])
        {
        }

        else
        {
          first6 = [v12 first];
          flags6 = [first6 flags];
          flagged = [flags6 flagged];

          if (flagged)
          {
            v39 = [(EDGroupedSender *)self flagCount]+ 1;
LABEL_32:
            [(EDGroupedSender *)self setFlagCount:v39];
            continue;
          }
        }

        second7 = [v12 second];
        flags7 = [second7 flags];
        if ([flags7 flagged])
        {
          first7 = [v12 first];
          flags8 = [first7 flags];
          flagged2 = [flags8 flagged];

          if (flagged2)
          {
            continue;
          }

          v39 = [(EDGroupedSender *)self flagCount]- 1;
          goto LABEL_32;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v9);
  }

  [(EDGroupedSender *)self _updateCachedMessagesIfNeededWithMessageProvider:providerCopy];
  v45 = [(EDGroupedSender *)self _uiChangeFrom:v49];

  v46 = *MEMORY[0x1E69E9840];

  return v45;
}

uint64_t __62__EDGroupedSender_changeKeyPaths_forMessages_messageProvider___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 second];
  v3 = [v2 flags];
  v4 = [v3 deleted];

  return v4 ^ 1u;
}

- (id)removeMessages:(id)messages isGroupEmpty:(BOOL *)empty messageProvider:(id)provider
{
  v22 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  providerCopy = provider;
  v10 = [(EDGroupedSender *)self copy];
  if ([messagesCopy count])
  {
    [(NSMutableArray *)self->_messages removeObjectsInArray:messagesCopy];
  }

  [(EDGroupedSender *)self _updateCachedMessagesIfNeededWithMessageProvider:providerCopy];
  v11 = [(NSMutableArray *)self->_messages count];
  if (empty)
  {
    *empty = v11 == 0;
  }

  if (v11)
  {
    [(EDGroupedSender *)self setUnreadCount:[(EDGroupedSender *)self unreadCount]- [(EDGroupedSender *)self _unreadCountForMessages:messagesCopy]];
    [(EDGroupedSender *)self setUnseenCount:[(EDGroupedSender *)self unseenCount]- [(EDGroupedSender *)self _unseenCountForMessages:messagesCopy]];
    [(EDGroupedSender *)self setAuthenticatedCount:[(EDGroupedSender *)self authenticatedCount]- [(EDGroupedSender *)self _authenticatedCountForMessages:messagesCopy]];
    v12 = [(EDGroupedSender *)self _flagCountForMessages:messagesCopy];
    if (v12)
    {
      v13 = +[EDGroupedSender log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        objectID = [(EMObject *)self objectID];
        v18 = 134218242;
        v19 = v12;
        v20 = 2112;
        v21 = objectID;
        _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Decrementing flagCount by %lld for sender %@", &v18, 0x16u);
      }
    }

    [(EDGroupedSender *)self setFlagCount:[(EDGroupedSender *)self flagCount]- v12];
    self->_count -= [messagesCopy count];
    v15 = [(EDGroupedSender *)self _uiChangeFrom:v10];
  }

  else
  {
    [(EDGroupedSender *)self setUnreadCount:0];
    [(EDGroupedSender *)self setUnseenCount:0];
    [(EDGroupedSender *)self setAuthenticatedCount:0];
    [(EDGroupedSender *)self setFlagCount:0];
    v15 = 0;
    self->_count = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_uiChangeFrom:(id)from
{
  v3 = [MEMORY[0x1E699ACC8] changeFrom:from to:self];
  groupedSenderMessageListItems = [v3 groupedSenderMessageListItems];
  if (groupedSenderMessageListItems || ([v3 isAuthenticated], (groupedSenderMessageListItems = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v3, "count"), (groupedSenderMessageListItems = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_5:
    unreadCount = v3;
    goto LABEL_6;
  }

  unreadCount = [v3 unreadCount];

  if (unreadCount)
  {
    goto LABEL_5;
  }

LABEL_6:

  return unreadCount;
}

- (id)changeFrom:(id)from
{
  v3 = [MEMORY[0x1E699ACC8] changeFrom:from to:self];

  return v3;
}

- (void)_trimMessages
{
  [(EDGroupedSender *)self _updateGroupedSenderMessageListItems];
  firstObject = [(NSMutableArray *)self->_messages firstObject];
  v4 = [(NSArray *)self->_groupedSenderMessageListItems mutableCopy];
  messages = self->_messages;
  self->_messages = v4;

  if (firstObject)
  {
    [(NSMutableArray *)self->_messages ef_addObjectIfAbsent:firstObject];
  }

  v6 = self->_messages;
  sortDescriptors = [(EDGroupedSender *)self sortDescriptors];
  [(NSMutableArray *)v6 sortUsingDescriptors:sortDescriptors];

  maxMessageCount = [objc_opt_class() maxMessageCount];
  if ([(NSMutableArray *)self->_messages count]> maxMessageCount)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDGroupedSender.m" lineNumber:355 description:@"too many items in _messages"];
  }
}

- (void)_updateCachedMessagesIfNeededWithMessageProvider:(id)provider
{
  v19 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  v5 = [(NSMutableArray *)self->_messages count];
  if (v5 <= [objc_opt_class() maxMessageCount])
  {
    v6 = [providerCopy messagesForGroupedSender:self limit:0x7FFFFFFFFFFFFFFFLL];
    if ([v6 count] || (EFProtectedDataAvailable() & 1) != 0)
    {
      v7 = [v6 mutableCopy];
      messages = self->_messages;
      self->_messages = v7;

      [(EDGroupedSender *)self _trimMessages];
    }

    else
    {
      v10 = +[EDGroupedSender log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        ef_publicDescription = [(EDGroupedSender *)self ef_publicDescription];
        v13 = 138412802;
        v14 = v11;
        v15 = 2048;
        selfCopy = self;
        v17 = 2114;
        v18 = ef_publicDescription;
        _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "<%@ %p> Unable to fetch messages for %{public}@, as the protected database is unavailable. Skipping updating cached messages", &v13, 0x20u);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)recalculateUnseenCount
{
  v10[1] = *MEMORY[0x1E69E9840];
  unseenCount = [(EDGroupedSender *)self unseenCount];
  messages = [(EDGroupedSender *)self messages];
  [(EDGroupedSender *)self setUnseenCount:[(EDGroupedSender *)self _unseenCountForMessages:messages]];

  if (unseenCount == [(EDGroupedSender *)self unseenCount])
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E699ACC8];
    v10[0] = *MEMORY[0x1E699A748];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v5 = [v6 changeForKeyPaths:v7 ofItem:self];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (EMCollectionItemID)itemID
{
  objectID = [(EMObject *)self objectID];
  collectionItemID = [objectID collectionItemID];

  return collectionItemID;
}

- (NSArray)mailboxObjectIDs
{
  newestMessage = [(EDGroupedSender *)self newestMessage];
  mailboxObjectIDs = [newestMessage mailboxObjectIDs];

  return mailboxObjectIDs;
}

- (NSArray)mailboxes
{
  newestMessage = [(EDGroupedSender *)self newestMessage];
  mailboxes = [newestMessage mailboxes];

  return mailboxes;
}

- (NSArray)mailboxesIfAvailable
{
  newestMessage = [(EDGroupedSender *)self newestMessage];
  mailboxesIfAvailable = [newestMessage mailboxesIfAvailable];

  return mailboxesIfAvailable;
}

- (EFFuture)displayMessage
{
  v2 = MEMORY[0x1E699B7C8];
  groupedSenderMessageListItems = [(EDGroupedSender *)self groupedSenderMessageListItems];
  firstObject = [groupedSenderMessageListItems firstObject];
  v5 = [v2 futureWithResult:firstObject];

  return v5;
}

- (EMCollectionItemID)displayMessageItemID
{
  groupedSenderMessageListItems = [(EDGroupedSender *)self groupedSenderMessageListItems];
  firstObject = [groupedSenderMessageListItems firstObject];
  displayMessageItemID = [firstObject displayMessageItemID];

  return displayMessageItemID;
}

- (EMObjectID)displayMessageObjectID
{
  groupedSenderMessageListItems = [(EDGroupedSender *)self groupedSenderMessageListItems];
  firstObject = [groupedSenderMessageListItems firstObject];
  displayMessageObjectID = [firstObject displayMessageObjectID];

  return displayMessageObjectID;
}

- (BOOL)deleteMovesToTrash
{
  v2 = MEMORY[0x1E699AD18];
  mailboxes = [(EDGroupedSender *)self mailboxes];
  LOBYTE(v2) = [v2 deleteMovesToTrashForMailboxes:mailboxes];

  return v2;
}

- (BOOL)supportsArchiving
{
  v2 = MEMORY[0x1E699AD18];
  mailboxes = [(EDGroupedSender *)self mailboxes];
  LOBYTE(v2) = [v2 supportsArchivingForMailboxes:mailboxes];

  return v2;
}

- (BOOL)shouldArchiveByDefault
{
  if (![(EDGroupedSender *)self supportsArchiving])
  {
    return 0;
  }

  v3 = MEMORY[0x1E699AD18];
  mailboxes = [(EDGroupedSender *)self mailboxes];
  v5 = [v3 shouldArchiveByDefaultForMailboxes:mailboxes];

  return v5;
}

- (BOOL)isEditable
{
  isEditable = self->_isEditable;
  if (!isEditable)
  {
    mailboxes = [(EDGroupedSender *)self mailboxes];
    v5 = [mailboxes ef_any:&__block_literal_global_61];

    isEditable = 1;
    if (v5)
    {
      isEditable = 2;
    }

    self->_isEditable = isEditable;
  }

  return isEditable == 2;
}

BOOL __29__EDGroupedSender_isEditable__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] == 5 || objc_msgSend(v2, "type") == 6;

  return v3;
}

- (NSDate)date
{
  newestMessage = [(EDGroupedSender *)self newestMessage];
  date = [newestMessage date];

  return date;
}

- (NSDate)displayDate
{
  newestMessage = [(EDGroupedSender *)self newestMessage];
  displayDate = [newestMessage displayDate];

  return displayDate;
}

- (NSString)businessDisplayName
{
  _persistedBusinessDisplayName = [(EDGroupedSender *)self _persistedBusinessDisplayName];
  if ([(EDGroupedSender *)self displayNamesMatch])
  {
    v4 = _persistedBusinessDisplayName;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)_persistedBusinessDisplayName
{
  businessPersistence = [(EDGroupedSender *)self businessPersistence];
  v4 = [businessPersistence businessDisplayNameForBusinessID:{-[EDGroupedSender businessID](self, "businessID")}];

  return v4;
}

- (id)_senderDisplayName
{
  senderList = [(EDGroupedSender *)self senderList];
  firstObject = [senderList firstObject];
  emailAddressValue = [firstObject emailAddressValue];
  v4EmailAddressValue = [emailAddressValue emailAddressValue];
  displayName = [v4EmailAddressValue displayName];
  v7 = displayName;
  if (displayName)
  {
    stringValue = displayName;
  }

  else
  {
    stringValue = [emailAddressValue stringValue];
  }

  v9 = stringValue;

  return v9;
}

- (BOOL)displayNamesMatch
{
  _persistedBusinessDisplayName = [(EDGroupedSender *)self _persistedBusinessDisplayName];
  lowercaseString = [_persistedBusinessDisplayName lowercaseString];

  _senderDisplayName = [(EDGroupedSender *)self _senderDisplayName];
  lowercaseString2 = [_senderDisplayName lowercaseString];

  if (lowercaseString)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __36__EDGroupedSender_displayNamesMatch__block_invoke;
    aBlock[3] = &unk_1E82522D0;
    aBlock[4] = self;
    v7 = lowercaseString;
    v29 = v7;
    v8 = lowercaseString2;
    v30 = v8;
    v9 = _Block_copy(aBlock);
    businessLogoID = [(EDGroupedSender *)self businessLogoID];

    if (businessLogoID)
    {
      v11 = [v7 length];
      v12 = [v8 length];
      if (v11 >= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

      v14 = 4;
      if (v13 < 4)
      {
        v14 = v13;
      }

      v15 = v14 - 1;
      if (v13)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if ([v7 length])
      {
        v17 = [v7 substringToIndex:v16];
      }

      else
      {
        v17 = &stru_1F45B4608;
      }

      if ([v8 length])
      {
        emailAddressValue = [v8 substringToIndex:v16];
      }

      else
      {
        emailAddressValue = &stru_1F45B4608;
      }

      if (([(__CFString *)v17 isEqualToString:emailAddressValue]& 1) != 0)
      {
        v18 = 1;
LABEL_26:

        goto LABEL_27;
      }

      v9[2](v9, @"First 3 characters do not match");
    }

    else
    {
      v27 = 0;
      v19 = [EDDisplayNameGroupingTrie displayName:v7 isTokenizedPrefixOfName:v8 outError:&v27];
      v17 = v27;
      if (v19)
      {
        v18 = 1;
LABEL_27:

        goto LABEL_28;
      }

      v9[2](v9, v17);
      senderList = [(EDGroupedSender *)self senderList];
      firstObject = [senderList firstObject];
      emailAddressValue = [firstObject emailAddressValue];

      if (emailAddressValue)
      {
        businessPersistence = [(EDGroupedSender *)self businessPersistence];
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        [businessPersistence reportIncorrectBusinessForAddress:emailAddressValue isBusinessConnectGrouping:0 fromClassName:v25];
      }
    }

    v18 = 0;
    goto LABEL_26;
  }

  v18 = 1;
LABEL_28:

  return v18;
}

void __36__EDGroupedSender_displayNamesMatch__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(*(a1 + 32) + 40) <= 1uLL)
  {
    v4 = +[EDGroupedSender log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6 = [*(a1 + 32) businessID];
      v7 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:*(a1 + 40)];
      v8 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:*(a1 + 48)];
      v9 = 134349826;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      v15 = 2114;
      v16 = v3;
      _os_log_fault_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_FAULT, "Found a business with an invalid display name: %{public}lld, businessName: %{public}@, messageName: %{public}@ (%{public}@)", &v9, 0x2Au);
    }

    ++*(*(a1 + 32) + 40);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (ECSubject)subject
{
  newestMessage = [(EDGroupedSender *)self newestMessage];
  subject = [newestMessage subject];

  return subject;
}

+ (int64_t)maxGroupedSenderMessageListItemsCount
{
  if (maxGroupedSenderMessageListItemsCount_onceToken != -1)
  {
    +[EDGroupedSender maxGroupedSenderMessageListItemsCount];
  }

  return maxGroupedSenderMessageListItemsCount_maxGroupedSenderMessageListItemsCount;
}

void __56__EDGroupedSender_maxGroupedSenderMessageListItemsCount__block_invoke()
{
  v2 = [MEMORY[0x1E695E000] em_userDefaults];
  v0 = [v2 ef_observeKeyPath:*MEMORY[0x1E699AB90] options:5 autoCancelToken:1 usingBlock:&__block_literal_global_76];
  v1 = maxGroupedSenderMessageListItemsCount__observationToken;
  maxGroupedSenderMessageListItemsCount__observationToken = v0;
}

uint64_t __56__EDGroupedSender_maxGroupedSenderMessageListItemsCount__block_invoke_2()
{
  result = [MEMORY[0x1E695E000] em_linesOfPreview];
  if (result <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = result;
  }

  maxGroupedSenderMessageListItemsCount_maxGroupedSenderMessageListItemsCount = v1;
  return result;
}

- (NSArray)groupedSenderMessageListItems
{
  groupedSenderMessageListItems = self->_groupedSenderMessageListItems;
  if (!groupedSenderMessageListItems)
  {
    [(EDGroupedSender *)self _updateGroupedSenderMessageListItems];
    groupedSenderMessageListItems = self->_groupedSenderMessageListItems;
  }

  return groupedSenderMessageListItems;
}

- (void)_updateGroupedSenderMessageListItems
{
  _recalculateGroupedSenderMessageListItems = [(EDGroupedSender *)self _recalculateGroupedSenderMessageListItems];
  groupedSenderMessageListItems = self->_groupedSenderMessageListItems;
  self->_groupedSenderMessageListItems = _recalculateGroupedSenderMessageListItems;
}

- (id)_recalculateGroupedSenderMessageListItems
{
  v4 = +[EDGroupedSender maxGroupedSenderMessageListItemsCount];
  v5 = [(NSMutableArray *)self->_messages count];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if ([(EDGroupedSender *)self alwaysUseNewestItems])
  {
    ef_reverse = [(NSMutableArray *)self->_messages ef_prefix:v6];
  }

  else
  {
    sortDescriptors = [(EDGroupedSender *)self sortDescriptors];
    firstObject = [sortDescriptors firstObject];
    ascending = [firstObject ascending];

    if (ascending)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EDGroupedSender.m" lineNumber:565 description:@"Only ascending is supported"];
    }

    v11 = [(NSMutableArray *)self->_messages indexOfObjectPassingTest:&__block_literal_global_82];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      ef_reverse2 = [(NSMutableArray *)self->_messages subarrayWithRange:[(NSMutableArray *)self->_messages count]- v6, v6];
      ef_reverse = [ef_reverse2 ef_reverse];
    }

    else
    {
      v13 = v11;
      v14 = [(NSMutableArray *)self->_messages subarrayWithRange:0, v11];
      ef_reverse2 = [v14 ef_reverse];

      if ([ef_reverse2 count] > v6)
      {
        v15 = [ef_reverse2 ef_prefix:v6];

        ef_reverse2 = v15;
      }

      ef_reverse = [ef_reverse2 mutableCopy];
      v16 = -[NSMutableArray subarrayWithRange:](self->_messages, "subarrayWithRange:", v13, v6 - [ef_reverse count]);
      [ef_reverse addObjectsFromArray:v16];
    }
  }

  return ef_reverse;
}

uint64_t __60__EDGroupedSender__recalculateGroupedSenderMessageListItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 read];

  return v3;
}

- (NSString)summary
{
  newestMessage = [(EDGroupedSender *)self newestMessage];
  summary = [newestMessage summary];

  return summary;
}

- (EMGeneratedSummary)generatedSummary
{
  newestMessage = [(EDGroupedSender *)self newestMessage];
  generatedSummary = [newestMessage generatedSummary];

  return generatedSummary;
}

- (NSArray)senderList
{
  newestMessage = [(EDGroupedSender *)self newestMessage];
  senderList = [newestMessage senderList];

  return senderList;
}

- (NSArray)toList
{
  newestMessage = [(EDGroupedSender *)self newestMessage];
  toList = [newestMessage toList];

  return toList;
}

- (NSArray)ccList
{
  newestMessage = [(EDGroupedSender *)self newestMessage];
  ccList = [newestMessage ccList];

  return ccList;
}

- (NSIndexSet)flagColors
{
  newestMessage = [(EDGroupedSender *)self newestMessage];
  flagColors = [newestMessage flagColors];

  return flagColors;
}

- (BOOL)isVIP
{
  newestMessage = [(EDGroupedSender *)self newestMessage];
  isVIP = [newestMessage isVIP];

  return isVIP;
}

- (BOOL)isBlocked
{
  newestMessage = [(EDGroupedSender *)self newestMessage];
  isBlocked = [newestMessage isBlocked];

  return isBlocked;
}

- (BOOL)hasAttachments
{
  newestMessage = [(EDGroupedSender *)self newestMessage];
  hasAttachments = [newestMessage hasAttachments];

  return hasAttachments;
}

- (NSURL)brandIndicatorLocation
{
  messages = [(EDGroupedSender *)self messages];
  v3 = [messages ef_firstObjectPassingTest:&__block_literal_global_84];
  brandIndicatorLocation = [v3 brandIndicatorLocation];

  return brandIndicatorLocation;
}

BOOL __41__EDGroupedSender_brandIndicatorLocation__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 brandIndicatorLocation];
  v3 = v2 != 0;

  return v3;
}

- (EMCategory)category
{
  newestMessage = [(EDGroupedSender *)self newestMessage];
  category = [newestMessage category];

  return category;
}

- (NSArray)messages
{
  v2 = [(NSMutableArray *)self->_messages copy];

  return v2;
}

- (void)setUnreadCount:(unint64_t)count
{
  unreadCount = self->_unreadCount;
  if (unreadCount != count)
  {
    if (unreadCount)
    {
      v6 = count == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (unreadCount)
      {
        v7 = count == 0;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        v8 = &__block_literal_global_87;
      }

      else
      {
        v8 = &__block_literal_global_89;
      }

      v9 = [(ECMessageFlags *)self->_flags updatedFlagsWithBuilder:v8];
      flags = self->_flags;
      self->_flags = v9;
    }

    self->_unreadCount = count;
  }
}

- (id)_newestMessageDescription
{
  newestMessage = [(EDGroupedSender *)self newestMessage];
  v3 = MEMORY[0x1E696AEC0];
  objectID = [newestMessage objectID];
  globalMessageID = [objectID globalMessageID];
  subject = [newestMessage subject];
  ef_publicDescription = [subject ef_publicDescription];
  flags = [newestMessage flags];
  ef_publicDescription2 = [flags ef_publicDescription];
  v10 = [v3 stringWithFormat:@"<Newest Message Info - GlobalMessageID:%lld Subject:%@ Flags:%@>", globalMessageID, ef_publicDescription, ef_publicDescription2];

  return v10;
}

- (NSString)debugDescription
{
  v15 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  businessDisplayName = [(EDGroupedSender *)self businessDisplayName];
  businessID = [(EDGroupedSender *)self businessID];
  businessLogoID = [(EDGroupedSender *)self businessLogoID];
  messages = [(EDGroupedSender *)self messages];
  v6 = [messages count];
  unreadCount = [(EDGroupedSender *)self unreadCount];
  unseenCount = [(EDGroupedSender *)self unseenCount];
  flagCount = [(EDGroupedSender *)self flagCount];
  category = [(EDGroupedSender *)self category];
  _newestMessageDescription = [(EDGroupedSender *)self _newestMessageDescription];
  v12 = [v15 stringWithFormat:@"<%@: %p> %@ (%lld, %@) messages:%lu, unread count:%lu, unseen count:%lu, flagCount:%lu, Category:%@ %@", v14, self, businessDisplayName, businessID, businessLogoID, v6, unreadCount, unseenCount, flagCount, category, _newestMessageDescription];

  return v12;
}

- (NSString)ef_publicDescription
{
  v16 = MEMORY[0x1E696AEC0];
  v15 = objc_opt_class();
  v3 = MEMORY[0x1E699B858];
  businessDisplayName = [(EDGroupedSender *)self businessDisplayName];
  v17 = [v3 fullyOrPartiallyRedactedStringForString:?];
  businessID = [(EDGroupedSender *)self businessID];
  businessLogoID = [(EDGroupedSender *)self businessLogoID];
  messages = [(EDGroupedSender *)self messages];
  v7 = [messages count];
  unreadCount = [(EDGroupedSender *)self unreadCount];
  unseenCount = [(EDGroupedSender *)self unseenCount];
  flagCount = [(EDGroupedSender *)self flagCount];
  category = [(EDGroupedSender *)self category];
  _newestMessageDescription = [(EDGroupedSender *)self _newestMessageDescription];
  v13 = [v16 stringWithFormat:@"<%@: %p> %@ (%lld, %@) messages:%lu, unread count:%lu, unseen count:%lu, flagCount:%lu, Category:%@ %@", v15, self, v17, businessID, businessLogoID, v7, unreadCount, unseenCount, flagCount, category, _newestMessageDescription];

  return v13;
}

@end