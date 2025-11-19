@interface EDGroupedSender
+ (id)log;
+ (int64_t)maxGroupedSenderMessageListItemsCount;
- (BOOL)deleteMovesToTrash;
- (BOOL)displayNamesMatch;
- (BOOL)hasAttachments;
- (BOOL)isBlocked;
- (BOOL)isEditable;
- (BOOL)isEqual:(id)a3;
- (BOOL)isVIP;
- (BOOL)shouldArchiveByDefault;
- (BOOL)supportsArchiving;
- (ECSubject)subject;
- (EDGroupedSender)initWithBusinessID:(int64_t)a3 externalBusinessID:(id)a4 messages:(id)a5 originatingQuery:(id)a6 businessPersistence:(id)a7 messagePersistence:(id)a8 businessCloudStorage:(id)a9 unsubscribeDetector:(id)a10;
- (EDGroupedSender)initWithCoder:(id)a3;
- (EDGroupedSender)initWithObjectID:(id)a3 businessID:(int64_t)a4 externalBusinessID:(id)a5 messages:(id)a6 sortDescriptors:(id)a7 businessPersistence:(id)a8 messagePersistence:(id)a9 businessCloudStorage:(id)a10 unsubscribeDetector:(id)a11 unreadCount:(unint64_t)a12 unseenCount:(unint64_t)a13 alwaysUseNewestItems:(BOOL)a14;
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
- (id)_newestMessages:(int64_t)a3;
- (id)_persistedBusinessDisplayName;
- (id)_recalculateGroupedSenderMessageListItems;
- (id)_senderDisplayName;
- (id)_uiChangeFrom:(id)a3;
- (id)addMessages:(id)a3;
- (id)changeFrom:(id)a3;
- (id)changeKeyPaths:(id)a3 forMessages:(id)a4 messageProvider:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)recalculateUnseenCount;
- (id)removeMessages:(id)a3 isGroupEmpty:(BOOL *)a4 messageProvider:(id)a5;
- (unint64_t)_flagCountForMessages:(id)a3;
- (unint64_t)_unreadCountForMessages:(id)a3;
- (unint64_t)_unseenCountForMessages:(id)a3;
- (unint64_t)_unseenCountForMessages:(id)a3 lastSeenDate:(id)a4 lastSeenDisplayDate:(id)a5;
- (void)_trimMessages;
- (void)_updateCachedMessagesIfNeededWithMessageProvider:(id)a3;
- (void)_updateGroupedSenderMessageListItems;
- (void)encodeWithCoder:(id)a3;
- (void)setUnreadCount:(unint64_t)a3;
@end

@implementation EDGroupedSender

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__EDGroupedSender_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (EDGroupedSender)initWithBusinessID:(int64_t)a3 externalBusinessID:(id)a4 messages:(id)a5 originatingQuery:(id)a6 businessPersistence:(id)a7 messagePersistence:(id)a8 businessCloudStorage:(id)a9 unsubscribeDetector:(id)a10
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v39 = a7;
  v38 = a8;
  v19 = a9;
  v20 = a10;
  v21 = MEMORY[0x1E699ADA0];
  v42 = v18;
  v40 = v16;
  v37 = v19;
  v22 = [v18 predicate];
  v43 = [v21 threadScopeForPredicate:v22 withMailboxTypeResolver:0];

  v23 = [objc_alloc(MEMORY[0x1E699ACD0]) initWithBusinessID:a3 threadScope:v43];
  v24 = [(EDGroupedSender *)self _unreadCountForMessages:v17];
  v25 = [v17 firstObject];
  v26 = [v25 category];

  v36 = v26;
  if (v26)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v26, "type")}];
  }

  else
  {
    v27 = 0;
  }

  v35 = v27;
  v41 = [v19 lastSeenDateForCategoryType:v27 businessWithExternalID:v16];
  v28 = [v19 lastSeenDisplayDateForCategoryType:v27 businessWithExternalID:v16];
  v29 = [(EDGroupedSender *)self _unseenCountForMessages:v17 lastSeenDate:v41 lastSeenDisplayDate:v28];
  v30 = [MEMORY[0x1E699ACE8] preferenceEnabled:41];
  v31 = [v42 sortDescriptors];
  LOBYTE(v34) = v30;
  v32 = [(EDGroupedSender *)self initWithObjectID:v23 businessID:a3 externalBusinessID:v40 messages:v17 sortDescriptors:v31 businessPersistence:v39 messagePersistence:v38 businessCloudStorage:v37 unsubscribeDetector:v20 unreadCount:v24 unseenCount:v29 alwaysUseNewestItems:v34];

  return v32;
}

- (EDGroupedSender)initWithObjectID:(id)a3 businessID:(int64_t)a4 externalBusinessID:(id)a5 messages:(id)a6 sortDescriptors:(id)a7 businessPersistence:(id)a8 messagePersistence:(id)a9 businessCloudStorage:(id)a10 unsubscribeDetector:(id)a11 unreadCount:(unint64_t)a12 unseenCount:(unint64_t)a13 alwaysUseNewestItems:(BOOL)a14
{
  v20 = a3;
  v40 = a5;
  v21 = a6;
  v39 = a7;
  v38 = a8;
  v37 = a9;
  v36 = a10;
  v35 = a11;
  v41.receiver = self;
  v41.super_class = EDGroupedSender;
  v22 = [(EMObject *)&v41 initWithObjectID:v20];
  v23 = v22;
  if (v22)
  {
    v22->_businessID = a4;
    v24 = [v40 copy];
    externalBusinessID = v23->_externalBusinessID;
    v23->_externalBusinessID = v24;

    objc_storeStrong(&v23->_sortDescriptors, a7);
    objc_storeStrong(&v23->_businessPersistence, a8);
    objc_storeStrong(&v23->_messagePersistence, a9);
    objc_storeStrong(&v23->_businessCloudStorage, a10);
    objc_storeStrong(&v23->_unsubscribeDetector, a11);
    v26 = [v21 firstObject];
    v27 = [v26 businessLogoID];
    businessLogoID = v23->_businessLogoID;
    v23->_businessLogoID = v27;

    v29 = [v21 ef_filter:&__block_literal_global_27];
    v30 = [v29 mutableCopy];
    messages = v23->_messages;
    v23->_messages = v30;

    [(NSMutableArray *)v23->_messages sortUsingDescriptors:v39];
    v32 = [MEMORY[0x1E699AD30] combinedFlagsForMessageListItems:v23->_messages];
    flags = v23->_flags;
    v23->_flags = v32;

    v23->_unreadCount = a12;
    v23->_unseenCount = a13;
    v23->_flagCount = [(EDGroupedSender *)v23 _flagCountForMessages:v23->_messages];
    v23->_count = [v21 count];
    v23->_alwaysUseNewestItems = a14;
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

- (EDGroupedSender)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = EDGroupedSender;
  v5 = [(EMObject *)&v26 initWithCoder:v4];
  if (v5)
  {
    v5->_businessID = [v4 decodeInt64ForKey:@"EFPropertyKey_businessID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_businessLogoID"];
    businessLogoID = v5->_businessLogoID;
    v5->_businessLogoID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_externalBusinessID"];
    externalBusinessID = v5->_externalBusinessID;
    v5->_externalBusinessID = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"EFPropertyKey_emailAddress"];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"EFPropertyKey_sortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"EFPropertyKey_messages"];
    messages = v5->_messages;
    v5->_messages = v23;

    v5->_unreadCount = [v4 decodeIntegerForKey:@"EFPropertyKey_unreadCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = EDGroupedSender;
  [(EMObject *)&v10 encodeWithCoder:v4];
  [v4 encodeInt64:-[EDGroupedSender businessID](self forKey:{"businessID"), @"EFPropertyKey_businessID"}];
  v5 = [(EDGroupedSender *)self businessLogoID];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_businessLogoID"];

  v6 = [(EDGroupedSender *)self businessDisplayName];
  [v4 encodeObject:v6 forKey:@"EFPropertyKey_businessDisplayName"];

  v7 = [(EDGroupedSender *)self externalBusinessID];
  [v4 encodeObject:v7 forKey:@"EFPropertyKey_externalBusinessID"];

  v8 = [(EDGroupedSender *)self emailAddress];
  [v4 encodeObject:v8 forKey:@"EFPropertyKey_emailAddress"];

  v9 = [(EDGroupedSender *)self sortDescriptors];
  [v4 encodeObject:v9 forKey:@"EFPropertyKey_sortDescriptors"];

  [v4 encodeObject:self->_messages forKey:@"EFPropertyKey_messages"];
  [v4 encodeInteger:-[EDGroupedSender unreadCount](self forKey:{"unreadCount"), @"EFPropertyKey_unreadCount"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v19 = [(EMObject *)self objectID];
  v22 = [v19 copy];
  v5 = [(EDGroupedSender *)self businessID];
  v21 = [(EDGroupedSender *)self externalBusinessID];
  v18 = [(EDGroupedSender *)self messages];
  v20 = [v18 copy];
  v17 = [(EDGroupedSender *)self sortDescriptors];
  v6 = [v17 copy];
  v7 = [(EDGroupedSender *)self businessPersistence];
  v8 = [(EDGroupedSender *)self messagePersistence];
  v9 = [(EDGroupedSender *)self businessCloudStorage];
  v10 = v4;
  v11 = [(EDGroupedSender *)self unsubscribeDetector];
  v12 = [(EDGroupedSender *)self unreadCount];
  v13 = [(EDGroupedSender *)self unseenCount];
  LOBYTE(v16) = [(EDGroupedSender *)self alwaysUseNewestItems];
  v14 = [v10 initWithObjectID:v22 businessID:v5 externalBusinessID:v21 messages:v20 sortDescriptors:v6 businessPersistence:v7 messagePersistence:v8 businessCloudStorage:v9 unsubscribeDetector:v11 unreadCount:v12 unseenCount:v13 alwaysUseNewestItems:v16];

  return v14;
}

- (EMMessage)newestMessage
{
  v2 = [(EDGroupedSender *)self _newestMessages:1];
  v3 = [v2 firstObject];

  return v3;
}

- (id)_newestMessages:(int64_t)a3
{
  if (a3)
  {
    v5 = [(EDGroupedSender *)self sortDescriptors];
    v6 = [v5 firstObject];
    v7 = [v6 ascending];

    v8 = [(NSMutableArray *)self->_messages count];
    if (v8 >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v8;
    }

    if (v7)
    {
      v10 = [(NSMutableArray *)self->_messages count]- v9;
    }

    else
    {
      v10 = 0;
    }

    v12 = [(NSMutableArray *)self->_messages subarrayWithRange:v10, v9];
    v13 = v12;
    if (v7)
    {
      v14 = [v12 ef_reverse];
    }

    else
    {
      v14 = v12;
    }

    v11 = v14;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)_unreadCountForMessages:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * v7) flags];
        v9 = [v8 read];

        v4 += v9 ^ 1u;
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (unint64_t)_flagCountForMessages:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * v7) flags];
        v9 = [v8 flagged];

        v4 += v9;
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (unint64_t)_unseenCountForMessages:(id)a3
{
  v4 = a3;
  v5 = [(EDGroupedSender *)self category];
  v6 = v5;
  if (v5)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "type")}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(EDGroupedSender *)self businessCloudStorage];
  v9 = [(EDGroupedSender *)self externalBusinessID];
  v10 = [v8 lastSeenDateForCategoryType:v7 businessWithExternalID:v9];

  v11 = [(EDGroupedSender *)self businessCloudStorage];
  v12 = [(EDGroupedSender *)self externalBusinessID];
  v13 = [v11 lastSeenDisplayDateForCategoryType:v7 businessWithExternalID:v12];

  v14 = [(EDGroupedSender *)self _unseenCountForMessages:v4 lastSeenDate:v10 lastSeenDisplayDate:v13];
  return v14;
}

- (unint64_t)_unseenCountForMessages:(id)a3 lastSeenDate:(id)a4 lastSeenDisplayDate:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v7;
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
        v16 = [v15 flags];
        v17 = [v16 read];

        if ((v17 & 1) == 0)
        {
          if (v8)
          {
            v18 = [v15 date];
            v19 = [v8 ef_isEarlierThanDate:v18] ^ 1;
            if (!v9)
            {
              LOBYTE(v19) = 0;
            }

            if (v19)
            {
              v20 = [v15 displayDate];
              v21 = [v9 ef_isEarlierThanDate:v20];

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

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = EDGroupedSender;
  return [(EMObject *)&v4 isEqual:a3];
}

- (id)addMessages:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = [(EDGroupedSender *)self copy];
  v5 = [v4 ef_filter:&__block_literal_global_42_0];

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count", v5)}];
  v7 = [(EDGroupedSender *)self sortDescriptors];
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
      v16 = [(EMObject *)self objectID];
      *buf = 134218242;
      v26 = v14;
      v27 = 2112;
      v28 = v16;
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

- (id)changeKeyPaths:(id)a3 forMessages:(id)a4 messageProvider:(id)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v48 = a5;
  v49 = [(EDGroupedSender *)self copy];
  v8 = [v7 ef_filter:&__block_literal_global_46_0];

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
        v14 = [v12 second];
        [(NSMutableArray *)messages removeObject:v14];

        v15 = [v12 first];
        LODWORD(messages) = (*(v10 + 16))(v10, v15);

        if (!messages)
        {
          continue;
        }

        v16 = [v12 first];
        v17 = [v16 flags];
        if ([v17 read])
        {
        }

        else
        {
          v18 = [v12 second];
          v19 = [v18 flags];
          v20 = [v19 read];

          if (v20)
          {
            v21 = [(EDGroupedSender *)self unreadCount]- 1;
LABEL_14:
            [(EDGroupedSender *)self setUnreadCount:v21];
            goto LABEL_16;
          }
        }

        v22 = [v12 first];
        v23 = [v22 flags];
        if ([v23 read])
        {
          v24 = [v12 second];
          v25 = [v24 flags];
          v26 = [v25 read];

          if (v26)
          {
            goto LABEL_16;
          }

          v21 = [(EDGroupedSender *)self unreadCount]+ 1;
          goto LABEL_14;
        }

LABEL_16:
        v27 = [v12 second];
        if ([v27 isAuthenticated])
        {
        }

        else
        {
          v28 = [v12 first];
          v29 = [v28 isAuthenticated];

          if (v29)
          {
            v30 = [(EDGroupedSender *)self authenticatedCount]+ 1;
LABEL_23:
            [(EDGroupedSender *)self setAuthenticatedCount:v30];
            goto LABEL_25;
          }
        }

        v31 = [v12 second];
        if (([v31 isAuthenticated] & 1) == 0)
        {

          goto LABEL_25;
        }

        v32 = [v12 first];
        v33 = [v32 isAuthenticated];

        if ((v33 & 1) == 0)
        {
          v30 = [(EDGroupedSender *)self authenticatedCount]- 1;
          goto LABEL_23;
        }

LABEL_25:
        v34 = [v12 second];
        v35 = [v34 flags];
        if ([v35 flagged])
        {
        }

        else
        {
          v36 = [v12 first];
          v37 = [v36 flags];
          v38 = [v37 flagged];

          if (v38)
          {
            v39 = [(EDGroupedSender *)self flagCount]+ 1;
LABEL_32:
            [(EDGroupedSender *)self setFlagCount:v39];
            continue;
          }
        }

        v40 = [v12 second];
        v41 = [v40 flags];
        if ([v41 flagged])
        {
          v42 = [v12 first];
          v43 = [v42 flags];
          v44 = [v43 flagged];

          if (v44)
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

  [(EDGroupedSender *)self _updateCachedMessagesIfNeededWithMessageProvider:v48];
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

- (id)removeMessages:(id)a3 isGroupEmpty:(BOOL *)a4 messageProvider:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(EDGroupedSender *)self copy];
  if ([v8 count])
  {
    [(NSMutableArray *)self->_messages removeObjectsInArray:v8];
  }

  [(EDGroupedSender *)self _updateCachedMessagesIfNeededWithMessageProvider:v9];
  v11 = [(NSMutableArray *)self->_messages count];
  if (a4)
  {
    *a4 = v11 == 0;
  }

  if (v11)
  {
    [(EDGroupedSender *)self setUnreadCount:[(EDGroupedSender *)self unreadCount]- [(EDGroupedSender *)self _unreadCountForMessages:v8]];
    [(EDGroupedSender *)self setUnseenCount:[(EDGroupedSender *)self unseenCount]- [(EDGroupedSender *)self _unseenCountForMessages:v8]];
    [(EDGroupedSender *)self setAuthenticatedCount:[(EDGroupedSender *)self authenticatedCount]- [(EDGroupedSender *)self _authenticatedCountForMessages:v8]];
    v12 = [(EDGroupedSender *)self _flagCountForMessages:v8];
    if (v12)
    {
      v13 = +[EDGroupedSender log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(EMObject *)self objectID];
        v18 = 134218242;
        v19 = v12;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Decrementing flagCount by %lld for sender %@", &v18, 0x16u);
      }
    }

    [(EDGroupedSender *)self setFlagCount:[(EDGroupedSender *)self flagCount]- v12];
    self->_count -= [v8 count];
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

- (id)_uiChangeFrom:(id)a3
{
  v3 = [MEMORY[0x1E699ACC8] changeFrom:a3 to:self];
  v4 = [v3 groupedSenderMessageListItems];
  if (v4 || ([v3 isAuthenticated], (v4 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v3, "count"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_5:
    v5 = v3;
    goto LABEL_6;
  }

  v5 = [v3 unreadCount];

  if (v5)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v5;
}

- (id)changeFrom:(id)a3
{
  v3 = [MEMORY[0x1E699ACC8] changeFrom:a3 to:self];

  return v3;
}

- (void)_trimMessages
{
  [(EDGroupedSender *)self _updateGroupedSenderMessageListItems];
  v10 = [(NSMutableArray *)self->_messages firstObject];
  v4 = [(NSArray *)self->_groupedSenderMessageListItems mutableCopy];
  messages = self->_messages;
  self->_messages = v4;

  if (v10)
  {
    [(NSMutableArray *)self->_messages ef_addObjectIfAbsent:v10];
  }

  v6 = self->_messages;
  v7 = [(EDGroupedSender *)self sortDescriptors];
  [(NSMutableArray *)v6 sortUsingDescriptors:v7];

  v8 = [objc_opt_class() maxMessageCount];
  if ([(NSMutableArray *)self->_messages count]> v8)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"EDGroupedSender.m" lineNumber:355 description:@"too many items in _messages"];
  }
}

- (void)_updateCachedMessagesIfNeededWithMessageProvider:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableArray *)self->_messages count];
  if (v5 <= [objc_opt_class() maxMessageCount])
  {
    v6 = [v4 messagesForGroupedSender:self limit:0x7FFFFFFFFFFFFFFFLL];
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
        v12 = [(EDGroupedSender *)self ef_publicDescription];
        v13 = 138412802;
        v14 = v11;
        v15 = 2048;
        v16 = self;
        v17 = 2114;
        v18 = v12;
        _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "<%@ %p> Unable to fetch messages for %{public}@, as the protected database is unavailable. Skipping updating cached messages", &v13, 0x20u);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)recalculateUnseenCount
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(EDGroupedSender *)self unseenCount];
  v4 = [(EDGroupedSender *)self messages];
  [(EDGroupedSender *)self setUnseenCount:[(EDGroupedSender *)self _unseenCountForMessages:v4]];

  if (v3 == [(EDGroupedSender *)self unseenCount])
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
  v2 = [(EMObject *)self objectID];
  v3 = [v2 collectionItemID];

  return v3;
}

- (NSArray)mailboxObjectIDs
{
  v2 = [(EDGroupedSender *)self newestMessage];
  v3 = [v2 mailboxObjectIDs];

  return v3;
}

- (NSArray)mailboxes
{
  v2 = [(EDGroupedSender *)self newestMessage];
  v3 = [v2 mailboxes];

  return v3;
}

- (NSArray)mailboxesIfAvailable
{
  v2 = [(EDGroupedSender *)self newestMessage];
  v3 = [v2 mailboxesIfAvailable];

  return v3;
}

- (EFFuture)displayMessage
{
  v2 = MEMORY[0x1E699B7C8];
  v3 = [(EDGroupedSender *)self groupedSenderMessageListItems];
  v4 = [v3 firstObject];
  v5 = [v2 futureWithResult:v4];

  return v5;
}

- (EMCollectionItemID)displayMessageItemID
{
  v2 = [(EDGroupedSender *)self groupedSenderMessageListItems];
  v3 = [v2 firstObject];
  v4 = [v3 displayMessageItemID];

  return v4;
}

- (EMObjectID)displayMessageObjectID
{
  v2 = [(EDGroupedSender *)self groupedSenderMessageListItems];
  v3 = [v2 firstObject];
  v4 = [v3 displayMessageObjectID];

  return v4;
}

- (BOOL)deleteMovesToTrash
{
  v2 = MEMORY[0x1E699AD18];
  v3 = [(EDGroupedSender *)self mailboxes];
  LOBYTE(v2) = [v2 deleteMovesToTrashForMailboxes:v3];

  return v2;
}

- (BOOL)supportsArchiving
{
  v2 = MEMORY[0x1E699AD18];
  v3 = [(EDGroupedSender *)self mailboxes];
  LOBYTE(v2) = [v2 supportsArchivingForMailboxes:v3];

  return v2;
}

- (BOOL)shouldArchiveByDefault
{
  if (![(EDGroupedSender *)self supportsArchiving])
  {
    return 0;
  }

  v3 = MEMORY[0x1E699AD18];
  v4 = [(EDGroupedSender *)self mailboxes];
  v5 = [v3 shouldArchiveByDefaultForMailboxes:v4];

  return v5;
}

- (BOOL)isEditable
{
  isEditable = self->_isEditable;
  if (!isEditable)
  {
    v4 = [(EDGroupedSender *)self mailboxes];
    v5 = [v4 ef_any:&__block_literal_global_61];

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
  v2 = [(EDGroupedSender *)self newestMessage];
  v3 = [v2 date];

  return v3;
}

- (NSDate)displayDate
{
  v2 = [(EDGroupedSender *)self newestMessage];
  v3 = [v2 displayDate];

  return v3;
}

- (NSString)businessDisplayName
{
  v3 = [(EDGroupedSender *)self _persistedBusinessDisplayName];
  if ([(EDGroupedSender *)self displayNamesMatch])
  {
    v4 = v3;
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
  v3 = [(EDGroupedSender *)self businessPersistence];
  v4 = [v3 businessDisplayNameForBusinessID:{-[EDGroupedSender businessID](self, "businessID")}];

  return v4;
}

- (id)_senderDisplayName
{
  v2 = [(EDGroupedSender *)self senderList];
  v3 = [v2 firstObject];
  v4 = [v3 emailAddressValue];
  v5 = [v4 emailAddressValue];
  v6 = [v5 displayName];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v4 stringValue];
  }

  v9 = v8;

  return v9;
}

- (BOOL)displayNamesMatch
{
  v3 = [(EDGroupedSender *)self _persistedBusinessDisplayName];
  v4 = [v3 lowercaseString];

  v5 = [(EDGroupedSender *)self _senderDisplayName];
  v6 = [v5 lowercaseString];

  if (v4)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __36__EDGroupedSender_displayNamesMatch__block_invoke;
    aBlock[3] = &unk_1E82522D0;
    aBlock[4] = self;
    v7 = v4;
    v29 = v7;
    v8 = v6;
    v30 = v8;
    v9 = _Block_copy(aBlock);
    v10 = [(EDGroupedSender *)self businessLogoID];

    if (v10)
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
        v20 = [v8 substringToIndex:v16];
      }

      else
      {
        v20 = &stru_1F45B4608;
      }

      if (([(__CFString *)v17 isEqualToString:v20]& 1) != 0)
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
      v21 = [(EDGroupedSender *)self senderList];
      v22 = [v21 firstObject];
      v20 = [v22 emailAddressValue];

      if (v20)
      {
        v23 = [(EDGroupedSender *)self businessPersistence];
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        [v23 reportIncorrectBusinessForAddress:v20 isBusinessConnectGrouping:0 fromClassName:v25];
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
  v2 = [(EDGroupedSender *)self newestMessage];
  v3 = [v2 subject];

  return v3;
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
  v3 = [(EDGroupedSender *)self _recalculateGroupedSenderMessageListItems];
  groupedSenderMessageListItems = self->_groupedSenderMessageListItems;
  self->_groupedSenderMessageListItems = v3;
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
    v7 = [(NSMutableArray *)self->_messages ef_prefix:v6];
  }

  else
  {
    v8 = [(EDGroupedSender *)self sortDescriptors];
    v9 = [v8 firstObject];
    v10 = [v9 ascending];

    if (v10)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"EDGroupedSender.m" lineNumber:565 description:@"Only ascending is supported"];
    }

    v11 = [(NSMutableArray *)self->_messages indexOfObjectPassingTest:&__block_literal_global_82];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [(NSMutableArray *)self->_messages subarrayWithRange:[(NSMutableArray *)self->_messages count]- v6, v6];
      v7 = [v12 ef_reverse];
    }

    else
    {
      v13 = v11;
      v14 = [(NSMutableArray *)self->_messages subarrayWithRange:0, v11];
      v12 = [v14 ef_reverse];

      if ([v12 count] > v6)
      {
        v15 = [v12 ef_prefix:v6];

        v12 = v15;
      }

      v7 = [v12 mutableCopy];
      v16 = -[NSMutableArray subarrayWithRange:](self->_messages, "subarrayWithRange:", v13, v6 - [v7 count]);
      [v7 addObjectsFromArray:v16];
    }
  }

  return v7;
}

uint64_t __60__EDGroupedSender__recalculateGroupedSenderMessageListItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 read];

  return v3;
}

- (NSString)summary
{
  v2 = [(EDGroupedSender *)self newestMessage];
  v3 = [v2 summary];

  return v3;
}

- (EMGeneratedSummary)generatedSummary
{
  v2 = [(EDGroupedSender *)self newestMessage];
  v3 = [v2 generatedSummary];

  return v3;
}

- (NSArray)senderList
{
  v2 = [(EDGroupedSender *)self newestMessage];
  v3 = [v2 senderList];

  return v3;
}

- (NSArray)toList
{
  v2 = [(EDGroupedSender *)self newestMessage];
  v3 = [v2 toList];

  return v3;
}

- (NSArray)ccList
{
  v2 = [(EDGroupedSender *)self newestMessage];
  v3 = [v2 ccList];

  return v3;
}

- (NSIndexSet)flagColors
{
  v2 = [(EDGroupedSender *)self newestMessage];
  v3 = [v2 flagColors];

  return v3;
}

- (BOOL)isVIP
{
  v2 = [(EDGroupedSender *)self newestMessage];
  v3 = [v2 isVIP];

  return v3;
}

- (BOOL)isBlocked
{
  v2 = [(EDGroupedSender *)self newestMessage];
  v3 = [v2 isBlocked];

  return v3;
}

- (BOOL)hasAttachments
{
  v2 = [(EDGroupedSender *)self newestMessage];
  v3 = [v2 hasAttachments];

  return v3;
}

- (NSURL)brandIndicatorLocation
{
  v2 = [(EDGroupedSender *)self messages];
  v3 = [v2 ef_firstObjectPassingTest:&__block_literal_global_84];
  v4 = [v3 brandIndicatorLocation];

  return v4;
}

BOOL __41__EDGroupedSender_brandIndicatorLocation__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 brandIndicatorLocation];
  v3 = v2 != 0;

  return v3;
}

- (EMCategory)category
{
  v2 = [(EDGroupedSender *)self newestMessage];
  v3 = [v2 category];

  return v3;
}

- (NSArray)messages
{
  v2 = [(NSMutableArray *)self->_messages copy];

  return v2;
}

- (void)setUnreadCount:(unint64_t)a3
{
  unreadCount = self->_unreadCount;
  if (unreadCount != a3)
  {
    if (unreadCount)
    {
      v6 = a3 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (unreadCount)
      {
        v7 = a3 == 0;
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

    self->_unreadCount = a3;
  }
}

- (id)_newestMessageDescription
{
  v2 = [(EDGroupedSender *)self newestMessage];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [v2 objectID];
  v5 = [v4 globalMessageID];
  v6 = [v2 subject];
  v7 = [v6 ef_publicDescription];
  v8 = [v2 flags];
  v9 = [v8 ef_publicDescription];
  v10 = [v3 stringWithFormat:@"<Newest Message Info - GlobalMessageID:%lld Subject:%@ Flags:%@>", v5, v7, v9];

  return v10;
}

- (NSString)debugDescription
{
  v15 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v16 = [(EDGroupedSender *)self businessDisplayName];
  v3 = [(EDGroupedSender *)self businessID];
  v4 = [(EDGroupedSender *)self businessLogoID];
  v5 = [(EDGroupedSender *)self messages];
  v6 = [v5 count];
  v7 = [(EDGroupedSender *)self unreadCount];
  v8 = [(EDGroupedSender *)self unseenCount];
  v9 = [(EDGroupedSender *)self flagCount];
  v10 = [(EDGroupedSender *)self category];
  v11 = [(EDGroupedSender *)self _newestMessageDescription];
  v12 = [v15 stringWithFormat:@"<%@: %p> %@ (%lld, %@) messages:%lu, unread count:%lu, unseen count:%lu, flagCount:%lu, Category:%@ %@", v14, self, v16, v3, v4, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (NSString)ef_publicDescription
{
  v16 = MEMORY[0x1E696AEC0];
  v15 = objc_opt_class();
  v3 = MEMORY[0x1E699B858];
  v18 = [(EDGroupedSender *)self businessDisplayName];
  v17 = [v3 fullyOrPartiallyRedactedStringForString:?];
  v4 = [(EDGroupedSender *)self businessID];
  v5 = [(EDGroupedSender *)self businessLogoID];
  v6 = [(EDGroupedSender *)self messages];
  v7 = [v6 count];
  v8 = [(EDGroupedSender *)self unreadCount];
  v9 = [(EDGroupedSender *)self unseenCount];
  v10 = [(EDGroupedSender *)self flagCount];
  v11 = [(EDGroupedSender *)self category];
  v12 = [(EDGroupedSender *)self _newestMessageDescription];
  v13 = [v16 stringWithFormat:@"<%@: %p> %@ (%lld, %@) messages:%lu, unread count:%lu, unseen count:%lu, flagCount:%lu, Category:%@ %@", v15, self, v17, v4, v5, v7, v8, v9, v10, v11, v12];

  return v13;
}

@end