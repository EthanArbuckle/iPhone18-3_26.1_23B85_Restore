@interface EDSearchableIndexItem
+ (OS_os_log)log;
+ (id)_accountIdentifierForBaseMessage:(id)a3;
+ (id)_domainIdentifierForBaseMessage:(id)a3;
+ (id)accountIdentifierForMessage:(id)a3;
+ (id)csIdentifierForMailbox:(id)a3;
+ (id)domainIdentifierForAccountID:(id)a3 mailboxPersistentID:(id)a4;
+ (id)domainIdentifierForMessage:(id)a3;
+ (id)mailboxIdentifiersForBaseMessage:(id)a3;
+ (id)mailboxIdentifiersForMessage:(id)a3;
+ (id)messageIDForBaseMessage:(id)a3;
+ (id)searchableMessageAuthenticationStateForBaseMessage:(id)a3;
+ (id)searchableMessageFlagsForBaseMessage:(id)a3;
+ (id)searchableMessageIDForPersistedMessageID:(id)a3;
+ (id)searchableMessageUpdateForBaseMessage:(id)a3;
+ (int64_t)indexingPriorityByIndexingType:(int64_t)a3;
- (BOOL)shouldExcludeFromIndex;
- (EDSearchableIndexItem)initWithIdentifier:(id)a3 message:(id)a4 bodyData:(id)a5 fetchBody:(BOOL)a6;
- (NSDate)dateReceived;
- (NSString)domainIdentifier;
- (id)addressesAttributeKey;
- (id)calendarEventsAttributeKey;
- (id)flightNumbersAttributeKey;
- (id)linksAttributeKey;
- (id)phoneNumbersAttributeKey;
- (id)searchableItem;
- (id)trackingNumbersAttributeKey;
- (unint64_t)estimatedSizeInBytes;
- (void)addDataDetectionAttributesToAttributeSet:(id)a3;
- (void)addFlagsAttributesToAttributeSet:(id)a3;
- (void)addMailCategoryAttributesToAttributeSet:(id)a3;
- (void)addMessageAuthenticationStateAttributesToAttributeSet:(id)a3;
- (void)addStaticAttributesToAttributeSet:(id)a3;
- (void)addUpdatableAttributesToAttributeSet:(id)a3;
- (void)setNeedsAllAttributesIncludingDataDetectionResultsIndexingType;
- (void)setNeedsAllAttributesIndexingType;
@end

@implementation EDSearchableIndexItem

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__EDSearchableIndexItem_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_88 != -1)
  {
    dispatch_once(&log_onceToken_88, block);
  }

  v2 = log_log_88;

  return v2;
}

void __28__EDSearchableIndexItem_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_88;
  log_log_88 = v1;
}

- (EDSearchableIndexItem)initWithIdentifier:(id)a3 message:(id)a4 bodyData:(id)a5 fetchBody:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22.receiver = self;
  v22.super_class = EDSearchableIndexItem;
  v13 = [(EDSearchableIndexItem *)&v22 init];
  if (v13)
  {
    v13->_itemInstantiationTime = mach_absolute_time();
    objc_storeStrong(&v13->_baseMessage, a4);
    v14 = [v11 persistentID];

    if (v14)
    {
      objc_storeStrong(&v13->_message, a4);
    }

    v15 = [v12 copy];
    bodyData = v13->_bodyData;
    v13->_bodyData = v15;

    v17 = [[EDPersistedMessageID alloc] initWithString:v10];
    messagePersistentID = v13->_messagePersistentID;
    v13->_messagePersistentID = v17;

    v19 = [v10 copy];
    identifier = v13->_identifier;
    v13->_identifier = v19;

    v13->_fetchBody = a6;
    *&v13->_isEncrypted = 0;
    v13->_hasCompleteData = v13->_bodyData != 0;
  }

  return v13;
}

- (NSDate)dateReceived
{
  v2 = [(EDSearchableIndexItem *)self baseMessage];
  v3 = [v2 dateReceived];

  return v3;
}

+ (int64_t)indexingPriorityByIndexingType:(int64_t)a3
{
  if (a3 > 6)
  {
    return 2;
  }

  else
  {
    return qword_1C6471F90[a3];
  }
}

+ (id)domainIdentifierForAccountID:(id)a3 mailboxPersistentID:(id)a4
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", a3, a4];

  return v4;
}

+ (id)domainIdentifierForMessage:(id)a3
{
  v3 = [a1 _domainIdentifierForBaseMessage:a3];

  return v3;
}

+ (id)_domainIdentifierForBaseMessage:(id)a3
{
  v4 = a3;
  v5 = [a1 _accountIdentifierForBaseMessage:v4];
  v6 = [v4 mailbox];
  v7 = [v6 persistentID];

  v8 = [a1 domainIdentifierForAccountID:v5 mailboxPersistentID:v7];

  return v8;
}

+ (id)accountIdentifierForMessage:(id)a3
{
  v3 = [a1 _accountIdentifierForBaseMessage:a3];

  return v3;
}

+ (id)_accountIdentifierForBaseMessage:(id)a3
{
  v3 = [a3 account];
  v4 = [v3 identifier];

  return v4;
}

+ (id)mailboxIdentifiersForMessage:(id)a3
{
  v3 = [a1 mailboxIdentifiersForBaseMessage:a3];

  return v3;
}

+ (id)mailboxIdentifiersForBaseMessage:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [v4 mailbox];
  v7 = [v6 URLString];
  if ([v7 length])
  {
    [v5 addObject:v7];
  }

  v8 = [a1 csIdentifierForMailbox:v6];

  if ([v8 length])
  {
    [v5 addObject:v8];
  }

  v9 = [v5 allObjects];

  return v9;
}

+ (id)searchableMessageFlagsForBaseMessage:(id)a3
{
  v3 = [a3 flags];
  v4 = -[EDSearchableMessageFlags initWithRead:flagged:flagColor:replied:]([EDSearchableMessageFlags alloc], "initWithRead:flagged:flagColor:replied:", [v3 read], objc_msgSend(v3, "flagged"), objc_msgSend(v3, "flagColor"), objc_msgSend(v3, "replied"));

  return v4;
}

+ (id)searchableMessageAuthenticationStateForBaseMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 persistentID];

  if (v4)
  {
    v5 = v3;
    v6 = -[EDSearchableMessageAuthenticationState initWithAuthenticationState:]([EDSearchableMessageAuthenticationState alloc], "initWithAuthenticationState:", [v5 authenticationState]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)messageIDForBaseMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 persistentID];

  if (v4)
  {
    v5 = v3;
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", objc_msgSend(v5, "globalMessageID")];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)searchableMessageUpdateForBaseMessage:(id)a3
{
  v15 = a3;
  [v15 conversationID];
  v14 = EFStringWithInt64();
  v13 = [objc_opt_class() mailboxIdentifiersForBaseMessage:v15];
  v12 = [objc_opt_class() gmailLabelsForBaseMessage:v15];
  v11 = [objc_opt_class() searchableMessageFlagsForBaseMessage:v15];
  v3 = [objc_opt_class() searchableMessageAuthenticationStateForBaseMessage:v15];
  v4 = [objc_opt_class() messageIDForBaseMessage:v15];
  v5 = [EDSearchableMessageUpdate alloc];
  v6 = [v15 messageIDHeader];
  v7 = [v15 subject];
  v8 = [v7 subjectWithoutPrefix];
  v9 = [(EDSearchableMessageUpdate *)v5 initWithConversationIdentifier:v14 mailboxIdentifiers:v13 gmailLabels:v12 isLikelyJunk:0 dateLastViewed:0 flags:v11 authenticationState:v3 messageID:v4 messageIDHeader:v6 subjectWithoutPrefix:v8];

  return v9;
}

+ (id)searchableMessageIDForPersistedMessageID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E699AEA8]);
  v5 = [v3 stringValue];
  v6 = [v4 initWithString:v5];

  return v6;
}

- (id)linksAttributeKey
{
  if (linksAttributeKey_onceToken != -1)
  {
    [EDSearchableIndexItem linksAttributeKey];
  }

  v3 = linksAttributeKey_sInstance;

  return v3;
}

void __42__EDSearchableIndexItem_linksAttributeKey__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_mail_links" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
  v1 = linksAttributeKey_sInstance;
  linksAttributeKey_sInstance = v0;
}

- (id)phoneNumbersAttributeKey
{
  if (phoneNumbersAttributeKey_onceToken != -1)
  {
    [EDSearchableIndexItem phoneNumbersAttributeKey];
  }

  v3 = phoneNumbersAttributeKey_sInstance;

  return v3;
}

void __49__EDSearchableIndexItem_phoneNumbersAttributeKey__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_mail_phone_numbers" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
  v1 = phoneNumbersAttributeKey_sInstance;
  phoneNumbersAttributeKey_sInstance = v0;
}

- (id)addressesAttributeKey
{
  if (addressesAttributeKey_onceToken != -1)
  {
    [EDSearchableIndexItem addressesAttributeKey];
  }

  v3 = addressesAttributeKey_sInstance;

  return v3;
}

void __46__EDSearchableIndexItem_addressesAttributeKey__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_mail_addresses" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
  v1 = addressesAttributeKey_sInstance;
  addressesAttributeKey_sInstance = v0;
}

- (id)calendarEventsAttributeKey
{
  if (calendarEventsAttributeKey_onceToken != -1)
  {
    [EDSearchableIndexItem calendarEventsAttributeKey];
  }

  v3 = calendarEventsAttributeKey_sInstance;

  return v3;
}

void __51__EDSearchableIndexItem_calendarEventsAttributeKey__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_mail_calendar_events" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
  v1 = calendarEventsAttributeKey_sInstance;
  calendarEventsAttributeKey_sInstance = v0;
}

- (id)trackingNumbersAttributeKey
{
  if (trackingNumbersAttributeKey_onceToken != -1)
  {
    [EDSearchableIndexItem trackingNumbersAttributeKey];
  }

  v3 = trackingNumbersAttributeKey_sInstance;

  return v3;
}

void __52__EDSearchableIndexItem_trackingNumbersAttributeKey__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_mail_tracking_numbers" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
  v1 = trackingNumbersAttributeKey_sInstance;
  trackingNumbersAttributeKey_sInstance = v0;
}

- (id)flightNumbersAttributeKey
{
  if (flightNumbersAttributeKey_onceToken != -1)
  {
    [EDSearchableIndexItem flightNumbersAttributeKey];
  }

  v3 = flightNumbersAttributeKey_sInstance;

  return v3;
}

void __50__EDSearchableIndexItem_flightNumbersAttributeKey__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_mail_flight_numbers" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
  v1 = flightNumbersAttributeKey_sInstance;
  flightNumbersAttributeKey_sInstance = v0;
}

- (NSString)domainIdentifier
{
  v3 = objc_opt_class();
  v4 = [(EDSearchableIndexItem *)self baseMessage];
  v5 = [v3 _domainIdentifierForBaseMessage:v4];

  return v5;
}

- (BOOL)shouldExcludeFromIndex
{
  v2 = [(EDSearchableIndexItem *)self baseMessage];
  v3 = [v2 mailbox];
  v4 = v3 == 0;

  return v4;
}

- (unint64_t)estimatedSizeInBytes
{
  if (self->_bodyData)
  {
    bodyData = self->_bodyData;

    return [(NSData *)bodyData length];
  }

  else
  {
    v4 = [(EDSearchableIndexItem *)self baseMessage];
    v5 = [v4 fileSize];

    return v5;
  }
}

- (void)setNeedsAllAttributesIndexingType
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(EDSearchableIndexItem *)self indexingType];
  if (v3)
  {
    v4 = v3;
    v5 = +[EDSearchableIndexItem log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(EDSearchableIndexItem *)self identifier];
      v9 = 138543874;
      v10 = v6;
      v11 = 2048;
      v12 = v4;
      v13 = 2048;
      v14 = 0;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Upgrading item %{public}@ from type:%ld to type:%ld", &v9, 0x20u);
    }

    [(EDSearchableIndexItem *)self setIndexingType:0];
    self->_fetchBody = 1;
    searchableItem = self->_searchableItem;
    self->_searchableItem = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setNeedsAllAttributesIncludingDataDetectionResultsIndexingType
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(EDSearchableIndexItem *)self indexingType];
  if (v3 != 5)
  {
    v4 = v3;
    v5 = +[EDSearchableIndexItem log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(EDSearchableIndexItem *)self identifier];
      v9 = 138543874;
      v10 = v6;
      v11 = 2048;
      v12 = v4;
      v13 = 2048;
      v14 = 5;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Upgrading item %{public}@ from type:%ld to type:%ld", &v9, 0x20u);
    }

    [(EDSearchableIndexItem *)self setIndexingType:5];
    self->_fetchBody = 1;
    searchableItem = self->_searchableItem;
    self->_searchableItem = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addFlagsAttributesToAttributeSet:(id)a3
{
  v5 = a3;
  v4 = [objc_opt_class() searchableMessageFlagsForBaseMessage:self->_baseMessage];
  [v4 addToAttributes:v5];
}

- (void)addMailCategoryAttributesToAttributeSet:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDSearchableIndexItem *)self message];
  v6 = [v5 category];

  if (v6 && [v6 state])
  {
    v7 = +[EDSearchableIndexItem log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(EDSearchableIndexItem *)self message];
      v15 = 138543618;
      v16 = v6;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_INFO, "Indexing category: %{public}@ for message: %{public}@", &v15, 0x16u);
    }

    v9 = [[EDSearchableMessageCategoryUpdate alloc] initWithCategory:v6];
    [(EDSearchableMessageCategoryUpdate *)v9 addToAttributes:v4];
LABEL_9:

    goto LABEL_10;
  }

  v10 = [(EDSearchableIndexItem *)self message];
  v11 = [v10 mailbox];
  v12 = [v11 type];

  if (v12 == 7)
  {
    v9 = +[EDSearchableIndexItem log];
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
    {
      v13 = [(EDSearchableIndexItem *)self message];
      [(EDSearchableIndexItem *)v13 addMailCategoryAttributesToAttributeSet:&v9->super];
    }

    goto LABEL_9;
  }

LABEL_10:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addMessageAuthenticationStateAttributesToAttributeSet:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDSearchableIndexItem *)self message];
  if (v5)
  {
    v6 = +[EDSearchableIndexItem log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 134218242;
      v10 = [v5 authenticationState];
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_INFO, "Indexing authenticate state: %lld for message: %{public}@", &v9, 0x16u);
    }

    v7 = -[EDSearchableMessageAuthenticationState initWithAuthenticationState:]([EDSearchableMessageAuthenticationState alloc], "initWithAuthenticationState:", [v5 authenticationState]);
    [(EDSearchableMessageAuthenticationState *)v7 addToAttributes:v4];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addUpdatableAttributesToAttributeSet:(id)a3
{
  v6 = a3;
  v4 = [objc_opt_class() searchableMessageUpdateForBaseMessage:self->_baseMessage];
  v5 = [(EDSearchableIndexItem *)self identifier];
  [v4 addToAttributes:v6 forIdentifier:v5];
}

- (void)addStaticAttributesToAttributeSet:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v60 = a3;
  v61 = [(EDSearchableIndexItem *)self bodyData];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"IndexDecryptedMessages"];

  v6 = (v5 & 1) != 0 || ![(EDSearchableIndexItem *)self isEncrypted]|| [(EDSearchableIndexItem *)self includeEncryptedBody];
  if (!v61 && v6)
  {
    v7 = [(EDSearchableIndexItem *)self estimatedSizeInBytes];
    if (v7 <= 0x2000000)
    {
      buf[0] = 0;
      v10 = [(EDBaseMessage *)self->_baseMessage bestAlternativePart:buf];
      v61 = [v10 dataUsingEncoding:4];

      [(EDSearchableIndexItem *)self setHasCompleteData:buf[0]];
    }

    else
    {
      v8 = +[EDSearchableIndexItem log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(EDSearchableIndexItem *)self identifier];
        *buf = 138543618;
        v66 = v9;
        v67 = 2048;
        v68 = v7;
        _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Skipping body indexing for message %{public}@ due to large message size:%lu", buf, 0x16u);
      }

      v61 = 0;
    }
  }

  v45 = [(EDBaseMessage *)self->_baseMessage mailbox];
  v11 = [v45 type];
  v12 = [(EDBaseMessage *)self->_baseMessage subject];
  v13 = [v12 subjectWithoutPrefix];

  v47 = v13;
  if (![v13 length] && v11 != 5)
  {
    v63[0] = @"mailboxtype";
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    v64[0] = v14;
    v63[1] = @"identifier";
    v15 = [(EDSearchableIndexItem *)self identifier];
    v16 = v15;
    v17 = @"<null>";
    if (v15)
    {
      v17 = v15;
    }

    v64[1] = v17;
    v63[2] = @"hasCompleteContent";
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[EDSearchableIndexItem hasCompleteData](self, "hasCompleteData")}];
    v64[2] = v18;
    v63[3] = @"hasHeaders";
    v19 = MEMORY[0x1E696AD98];
    v20 = [(EDBaseMessage *)self->_baseMessage headersDictionary];
    v21 = [v19 numberWithInt:{objc_msgSend(v20, "count") != 0}];
    v64[3] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:4];

    v23 = +[EDSearchableIndexItem log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(EDSearchableIndexItem *)v22 addStaticAttributesToAttributeSet:v23];
    }
  }

  v24 = [(EDSearchableIndexItem *)self message];

  if (v24)
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = [(EDSearchableIndexItem *)self message];
    v27 = [v25 stringWithFormat:@"%lld", objc_msgSend(v26, "globalMessageID")];
  }

  else
  {
    v27 = 0;
  }

  v46 = v27;
  if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    v28 = [(EDSearchableIndexItem *)self message];
    v56 = [v28 notificationID];
  }

  else
  {
    v56 = 0;
  }

  v62 = [(EDBaseMessage *)self->_baseMessage account];
  v59 = [objc_opt_class() searchableMessageUpdateForBaseMessage:self->_baseMessage];
  v50 = [objc_opt_class() searchableMessageAttachmentsForBaseMessage:self->_baseMessage includeEncryptedBody:{-[EDSearchableIndexItem includeEncryptedBody](self, "includeEncryptedBody")}];
  v29 = [EDSearchableMessage alloc];
  v55 = [(EDBaseMessage *)self->_baseMessage dateSent];
  v57 = [(EDBaseMessage *)self->_baseMessage dateReceived];
  v30 = [(EDSearchableIndexItem *)self isEncrypted];
  v49 = [(EDBaseMessage *)self->_baseMessage senders];
  v52 = [(EDBaseMessage *)self->_baseMessage to];
  v51 = [(EDBaseMessage *)self->_baseMessage cc];
  v53 = [(EDBaseMessage *)self->_baseMessage bcc];
  v54 = [(EDBaseMessage *)self->_baseMessage headersDictionary];
  v44 = v30;
  if (v6)
  {
    v31 = v61;
  }

  else
  {
    v31 = 0;
  }

  v58 = [(EDPersistedMessage *)self->_message summary];
  v32 = [(EDBaseMessage *)self->_baseMessage isPartOfExistingThread];
  v33 = [(EDSearchableIndexItem *)self hasCompleteData];
  v48 = [v62 identifier];
  v34 = [v62 isManaged];
  v35 = [objc_opt_class() csAccountTypeString];
  v36 = [v62 emailAddressStrings];
  v37 = [(EDSearchableIndexItem *)self message];
  v38 = [v37 category];
  LOBYTE(v43) = v34;
  BYTE1(v42) = v33;
  LOBYTE(v42) = v32;
  v39 = [(EDSearchableMessage *)v29 initWithSubjectWithoutPrefix:v47 dateSent:v55 dateReceived:v57 isEncrypted:v44 priority:0 senders:v49 to:v52 cc:v51 bcc:v53 allHeaders:v54 htmlContent:v31 summary:v58 messageID:v46 notificationID:v56 isPartOfExistingThread:v42 hasCompleteData:v48 accountIdentifier:v43 accountIsManaged:v35 accountType:v36 accountEmailAddresses:v59 update:v50 attachments:v38 category:?];

  v40 = [(EDSearchableIndexItem *)self identifier];
  [(EDSearchableMessage *)v39 addToAttributes:v60 forIdentifier:v40];

  v41 = *MEMORY[0x1E69E9840];
}

- (void)addDataDetectionAttributesToAttributeSet:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [(EDSearchableIndexItem *)self message];

    if (v5)
    {
      v6 = [(EDSearchableIndexItem *)self message];
      v7 = [v6 dataDetectionAttributes];

      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __66__EDSearchableIndexItem_addDataDetectionAttributesToAttributeSet___block_invoke;
      v15 = &unk_1E8256EA8;
      v16 = v4;
      v17 = self;
      [v7 enumerateKeysAndObjectsUsingBlock:&v12];
      v8 = [EDSearchableIndexItem log:v12];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        identifier = self->_identifier;
        v10 = [MEMORY[0x1E699B858] partiallyRedactedDictionary:v7];
        *buf = 138543618;
        v19 = identifier;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Adding data detection results\n%@", buf, 0x16u);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __66__EDSearchableIndexItem_addDataDetectionAttributesToAttributeSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ([v13 isEqualToString:@"link"])
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) linksAttributeKey];
    [v6 setValue:v5 forCustomKey:v7];
  }

  else if ([v13 isEqualToString:@"address"])
  {
    v8 = *(a1 + 32);
    v7 = [*(a1 + 40) addressesAttributeKey];
    [v8 setValue:v5 forCustomKey:v7];
  }

  else if ([v13 isEqualToString:@"calendarEvent"])
  {
    v9 = *(a1 + 32);
    v7 = [*(a1 + 40) calendarEventsAttributeKey];
    [v9 setValue:v5 forCustomKey:v7];
  }

  else if ([v13 isEqualToString:@"phoneNumber"])
  {
    v10 = *(a1 + 32);
    v7 = [*(a1 + 40) phoneNumbersAttributeKey];
    [v10 setValue:v5 forCustomKey:v7];
  }

  else if ([v13 isEqual:@"TrackingNumber"])
  {
    v11 = *(a1 + 32);
    v7 = [*(a1 + 40) trackingNumbersAttributeKey];
    [v11 setValue:v5 forCustomKey:v7];
  }

  else
  {
    if (![v13 isEqual:@"FlightInformation"])
    {
      goto LABEL_14;
    }

    v12 = *(a1 + 32);
    v7 = [*(a1 + 40) flightNumbersAttributeKey];
    [v12 setValue:v5 forCustomKey:v7];
  }

LABEL_14:
}

- (id)searchableItem
{
  searchableItem = self->_searchableItem;
  if (!searchableItem)
  {
    v5 = objc_alloc(MEMORY[0x1E6964E90]);
    v6 = [*MEMORY[0x1E6982DA8] identifier];
    v7 = [v5 initWithItemContentType:v6];

    v8 = [MEMORY[0x1E699AD30] externalDataTypeIdentifiers];
    [v7 setProviderDataTypeIdentifiers:v8];

    v9 = [(EDSearchableIndexItem *)self indexingType];
    v10 = v9;
    if (v9 <= 3)
    {
      if (v9 > 1)
      {
        if (v9 != 2)
        {
          v11 = [MEMORY[0x1E696AAA8] currentHandler];
          [v11 handleFailureInMethod:a2 object:self file:@"EDSearchableIndexItem.m" lineNumber:493 description:@"EDSearchableIndexItem has invalid indexingType = EDIndexableItemIndexingTypeAttachment"];
LABEL_20:

          goto LABEL_24;
        }

        [(EDSearchableIndexItem *)self addUpdatableAttributesToAttributeSet:v7];
LABEL_18:
        [(EDSearchableIndexItem *)self addMailCategoryAttributesToAttributeSet:v7];
LABEL_24:
        v12 = objc_alloc(MEMORY[0x1E6964E80]);
        v13 = [(EDSearchableIndexItem *)self identifier];
        v14 = [(EDSearchableIndexItem *)self domainIdentifier];
        v15 = [v12 initWithUniqueIdentifier:v13 domainIdentifier:v14 attributeSet:v7];
        v16 = self->_searchableItem;
        self->_searchableItem = v15;

        v17 = [MEMORY[0x1E695DF00] distantFuture];
        [(CSSearchableItem *)self->_searchableItem setExpirationDate:v17];

        if (v10)
        {
          v18 = v10 == 5;
        }

        else
        {
          v18 = 1;
        }

        v19 = !v18;
        [(CSSearchableItem *)self->_searchableItem setIsUpdate:v19];

        searchableItem = self->_searchableItem;
        goto LABEL_31;
      }

      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (v9 > 5)
      {
        if (v9 != 6)
        {
          if (v9 != 7)
          {
            if (v9 == 8)
            {
              [(EDSearchableIndexItem *)self addMessageAuthenticationStateAttributesToAttributeSet:v7];
            }

            goto LABEL_24;
          }

          [(EDSearchableIndexItem *)self addMailCategoryAttributesToAttributeSet:v7];
LABEL_23:
          [(EDSearchableIndexItem *)self addFlagsAttributesToAttributeSet:v7];
          goto LABEL_24;
        }

        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:a2 object:self file:@"EDSearchableIndexItem.m" lineNumber:497 description:@"EDSearchableIndexItem has invalid indexingType = EDIndexableItemIndexingTypeRichLinks"];
        goto LABEL_20;
      }

      if (v9 == 4)
      {
        [(EDSearchableIndexItem *)self addDataDetectionAttributesToAttributeSet:v7];
        goto LABEL_24;
      }

      [(EDSearchableIndexItem *)self addDataDetectionAttributesToAttributeSet:v7];
    }

    [(EDSearchableIndexItem *)self addStaticAttributesToAttributeSet:v7];
    goto LABEL_18;
  }

LABEL_31:

  return searchableItem;
}

+ (id)csIdentifierForMailbox:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  if (v4 > 3)
  {
    if (v4 <= 5)
    {
      if (v4 == 4)
      {
        v5 = MEMORY[0x1E6963B60];
      }

      else
      {
        v5 = MEMORY[0x1E6963B48];
      }

      goto LABEL_17;
    }

    if (v4 == 6)
    {
      v5 = kEDSearchableIndexOutboxIdentifier;
      goto LABEL_17;
    }

    if (v4 == 7)
    {
      v5 = MEMORY[0x1E6963B50];
      goto LABEL_17;
    }

LABEL_13:
    v6 = [v3 URL];
    v7 = [v6 absoluteString];

    goto LABEL_18;
  }

  if (v4 == 1)
  {
    v5 = MEMORY[0x1E6963B58];
    goto LABEL_17;
  }

  if (v4 == 2)
  {
    v5 = MEMORY[0x1E6963B40];
    goto LABEL_17;
  }

  if (v4 != 3)
  {
    goto LABEL_13;
  }

  v5 = MEMORY[0x1E6963B68];
LABEL_17:
  v7 = *v5;
LABEL_18:

  return v7;
}

- (void)addMailCategoryAttributesToAttributeSet:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Inbox message is not categorized before indexing: %{public}@", buf, 0xCu);
}

- (void)addStaticAttributesToAttributeSet:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Warning: about to index message with an empty subject. %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end