@interface EDSearchableIndexItem
+ (OS_os_log)log;
+ (id)_accountIdentifierForBaseMessage:(id)message;
+ (id)_domainIdentifierForBaseMessage:(id)message;
+ (id)accountIdentifierForMessage:(id)message;
+ (id)csIdentifierForMailbox:(id)mailbox;
+ (id)domainIdentifierForAccountID:(id)d mailboxPersistentID:(id)iD;
+ (id)domainIdentifierForMessage:(id)message;
+ (id)mailboxIdentifiersForBaseMessage:(id)message;
+ (id)mailboxIdentifiersForMessage:(id)message;
+ (id)messageIDForBaseMessage:(id)message;
+ (id)searchableMessageAuthenticationStateForBaseMessage:(id)message;
+ (id)searchableMessageFlagsForBaseMessage:(id)message;
+ (id)searchableMessageIDForPersistedMessageID:(id)d;
+ (id)searchableMessageUpdateForBaseMessage:(id)message;
+ (int64_t)indexingPriorityByIndexingType:(int64_t)type;
- (BOOL)shouldExcludeFromIndex;
- (EDSearchableIndexItem)initWithIdentifier:(id)identifier message:(id)message bodyData:(id)data fetchBody:(BOOL)body;
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
- (void)addDataDetectionAttributesToAttributeSet:(id)set;
- (void)addFlagsAttributesToAttributeSet:(id)set;
- (void)addMailCategoryAttributesToAttributeSet:(id)set;
- (void)addMessageAuthenticationStateAttributesToAttributeSet:(id)set;
- (void)addStaticAttributesToAttributeSet:(id)set;
- (void)addUpdatableAttributesToAttributeSet:(id)set;
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
  block[4] = self;
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

- (EDSearchableIndexItem)initWithIdentifier:(id)identifier message:(id)message bodyData:(id)data fetchBody:(BOOL)body
{
  identifierCopy = identifier;
  messageCopy = message;
  dataCopy = data;
  v22.receiver = self;
  v22.super_class = EDSearchableIndexItem;
  v13 = [(EDSearchableIndexItem *)&v22 init];
  if (v13)
  {
    v13->_itemInstantiationTime = mach_absolute_time();
    objc_storeStrong(&v13->_baseMessage, message);
    persistentID = [messageCopy persistentID];

    if (persistentID)
    {
      objc_storeStrong(&v13->_message, message);
    }

    v15 = [dataCopy copy];
    bodyData = v13->_bodyData;
    v13->_bodyData = v15;

    v17 = [[EDPersistedMessageID alloc] initWithString:identifierCopy];
    messagePersistentID = v13->_messagePersistentID;
    v13->_messagePersistentID = v17;

    v19 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v19;

    v13->_fetchBody = body;
    *&v13->_isEncrypted = 0;
    v13->_hasCompleteData = v13->_bodyData != 0;
  }

  return v13;
}

- (NSDate)dateReceived
{
  baseMessage = [(EDSearchableIndexItem *)self baseMessage];
  dateReceived = [baseMessage dateReceived];

  return dateReceived;
}

+ (int64_t)indexingPriorityByIndexingType:(int64_t)type
{
  if (type > 6)
  {
    return 2;
  }

  else
  {
    return qword_1C6471F90[type];
  }
}

+ (id)domainIdentifierForAccountID:(id)d mailboxPersistentID:(id)iD
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", d, iD];

  return v4;
}

+ (id)domainIdentifierForMessage:(id)message
{
  v3 = [self _domainIdentifierForBaseMessage:message];

  return v3;
}

+ (id)_domainIdentifierForBaseMessage:(id)message
{
  messageCopy = message;
  v5 = [self _accountIdentifierForBaseMessage:messageCopy];
  mailbox = [messageCopy mailbox];
  persistentID = [mailbox persistentID];

  v8 = [self domainIdentifierForAccountID:v5 mailboxPersistentID:persistentID];

  return v8;
}

+ (id)accountIdentifierForMessage:(id)message
{
  v3 = [self _accountIdentifierForBaseMessage:message];

  return v3;
}

+ (id)_accountIdentifierForBaseMessage:(id)message
{
  account = [message account];
  identifier = [account identifier];

  return identifier;
}

+ (id)mailboxIdentifiersForMessage:(id)message
{
  v3 = [self mailboxIdentifiersForBaseMessage:message];

  return v3;
}

+ (id)mailboxIdentifiersForBaseMessage:(id)message
{
  messageCopy = message;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  mailbox = [messageCopy mailbox];
  uRLString = [mailbox URLString];
  if ([uRLString length])
  {
    [v5 addObject:uRLString];
  }

  v8 = [self csIdentifierForMailbox:mailbox];

  if ([v8 length])
  {
    [v5 addObject:v8];
  }

  allObjects = [v5 allObjects];

  return allObjects;
}

+ (id)searchableMessageFlagsForBaseMessage:(id)message
{
  flags = [message flags];
  v4 = -[EDSearchableMessageFlags initWithRead:flagged:flagColor:replied:]([EDSearchableMessageFlags alloc], "initWithRead:flagged:flagColor:replied:", [flags read], objc_msgSend(flags, "flagged"), objc_msgSend(flags, "flagColor"), objc_msgSend(flags, "replied"));

  return v4;
}

+ (id)searchableMessageAuthenticationStateForBaseMessage:(id)message
{
  messageCopy = message;
  persistentID = [messageCopy persistentID];

  if (persistentID)
  {
    v5 = messageCopy;
    v6 = -[EDSearchableMessageAuthenticationState initWithAuthenticationState:]([EDSearchableMessageAuthenticationState alloc], "initWithAuthenticationState:", [v5 authenticationState]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)messageIDForBaseMessage:(id)message
{
  messageCopy = message;
  persistentID = [messageCopy persistentID];

  if (persistentID)
  {
    v5 = messageCopy;
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", objc_msgSend(v5, "globalMessageID")];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)searchableMessageUpdateForBaseMessage:(id)message
{
  messageCopy = message;
  [messageCopy conversationID];
  v14 = EFStringWithInt64();
  v13 = [objc_opt_class() mailboxIdentifiersForBaseMessage:messageCopy];
  v12 = [objc_opt_class() gmailLabelsForBaseMessage:messageCopy];
  v11 = [objc_opt_class() searchableMessageFlagsForBaseMessage:messageCopy];
  v3 = [objc_opt_class() searchableMessageAuthenticationStateForBaseMessage:messageCopy];
  v4 = [objc_opt_class() messageIDForBaseMessage:messageCopy];
  v5 = [EDSearchableMessageUpdate alloc];
  messageIDHeader = [messageCopy messageIDHeader];
  subject = [messageCopy subject];
  subjectWithoutPrefix = [subject subjectWithoutPrefix];
  v9 = [(EDSearchableMessageUpdate *)v5 initWithConversationIdentifier:v14 mailboxIdentifiers:v13 gmailLabels:v12 isLikelyJunk:0 dateLastViewed:0 flags:v11 authenticationState:v3 messageID:v4 messageIDHeader:messageIDHeader subjectWithoutPrefix:subjectWithoutPrefix];

  return v9;
}

+ (id)searchableMessageIDForPersistedMessageID:(id)d
{
  dCopy = d;
  v4 = objc_alloc(MEMORY[0x1E699AEA8]);
  stringValue = [dCopy stringValue];
  v6 = [v4 initWithString:stringValue];

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
  baseMessage = [(EDSearchableIndexItem *)self baseMessage];
  v5 = [v3 _domainIdentifierForBaseMessage:baseMessage];

  return v5;
}

- (BOOL)shouldExcludeFromIndex
{
  baseMessage = [(EDSearchableIndexItem *)self baseMessage];
  mailbox = [baseMessage mailbox];
  v4 = mailbox == 0;

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
    baseMessage = [(EDSearchableIndexItem *)self baseMessage];
    fileSize = [baseMessage fileSize];

    return fileSize;
  }
}

- (void)setNeedsAllAttributesIndexingType
{
  v15 = *MEMORY[0x1E69E9840];
  indexingType = [(EDSearchableIndexItem *)self indexingType];
  if (indexingType)
  {
    v4 = indexingType;
    v5 = +[EDSearchableIndexItem log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(EDSearchableIndexItem *)self identifier];
      v9 = 138543874;
      v10 = identifier;
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
  indexingType = [(EDSearchableIndexItem *)self indexingType];
  if (indexingType != 5)
  {
    v4 = indexingType;
    v5 = +[EDSearchableIndexItem log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(EDSearchableIndexItem *)self identifier];
      v9 = 138543874;
      v10 = identifier;
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

- (void)addFlagsAttributesToAttributeSet:(id)set
{
  setCopy = set;
  v4 = [objc_opt_class() searchableMessageFlagsForBaseMessage:self->_baseMessage];
  [v4 addToAttributes:setCopy];
}

- (void)addMailCategoryAttributesToAttributeSet:(id)set
{
  v19 = *MEMORY[0x1E69E9840];
  setCopy = set;
  message = [(EDSearchableIndexItem *)self message];
  category = [message category];

  if (category && [category state])
  {
    v7 = +[EDSearchableIndexItem log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      message2 = [(EDSearchableIndexItem *)self message];
      v15 = 138543618;
      v16 = category;
      v17 = 2114;
      v18 = message2;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_INFO, "Indexing category: %{public}@ for message: %{public}@", &v15, 0x16u);
    }

    v9 = [[EDSearchableMessageCategoryUpdate alloc] initWithCategory:category];
    [(EDSearchableMessageCategoryUpdate *)v9 addToAttributes:setCopy];
LABEL_9:

    goto LABEL_10;
  }

  message3 = [(EDSearchableIndexItem *)self message];
  mailbox = [message3 mailbox];
  type = [mailbox type];

  if (type == 7)
  {
    v9 = +[EDSearchableIndexItem log];
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
    {
      message4 = [(EDSearchableIndexItem *)self message];
      [(EDSearchableIndexItem *)message4 addMailCategoryAttributesToAttributeSet:&v9->super];
    }

    goto LABEL_9;
  }

LABEL_10:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addMessageAuthenticationStateAttributesToAttributeSet:(id)set
{
  v13 = *MEMORY[0x1E69E9840];
  setCopy = set;
  message = [(EDSearchableIndexItem *)self message];
  if (message)
  {
    v6 = +[EDSearchableIndexItem log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 134218242;
      authenticationState = [message authenticationState];
      v11 = 2114;
      v12 = message;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_INFO, "Indexing authenticate state: %lld for message: %{public}@", &v9, 0x16u);
    }

    v7 = -[EDSearchableMessageAuthenticationState initWithAuthenticationState:]([EDSearchableMessageAuthenticationState alloc], "initWithAuthenticationState:", [message authenticationState]);
    [(EDSearchableMessageAuthenticationState *)v7 addToAttributes:setCopy];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addUpdatableAttributesToAttributeSet:(id)set
{
  setCopy = set;
  v4 = [objc_opt_class() searchableMessageUpdateForBaseMessage:self->_baseMessage];
  identifier = [(EDSearchableIndexItem *)self identifier];
  [v4 addToAttributes:setCopy forIdentifier:identifier];
}

- (void)addStaticAttributesToAttributeSet:(id)set
{
  v69 = *MEMORY[0x1E69E9840];
  setCopy = set;
  bodyData = [(EDSearchableIndexItem *)self bodyData];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults BOOLForKey:@"IndexDecryptedMessages"];

  v6 = (v5 & 1) != 0 || ![(EDSearchableIndexItem *)self isEncrypted]|| [(EDSearchableIndexItem *)self includeEncryptedBody];
  if (!bodyData && v6)
  {
    estimatedSizeInBytes = [(EDSearchableIndexItem *)self estimatedSizeInBytes];
    if (estimatedSizeInBytes <= 0x2000000)
    {
      buf[0] = 0;
      v10 = [(EDBaseMessage *)self->_baseMessage bestAlternativePart:buf];
      bodyData = [v10 dataUsingEncoding:4];

      [(EDSearchableIndexItem *)self setHasCompleteData:buf[0]];
    }

    else
    {
      v8 = +[EDSearchableIndexItem log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [(EDSearchableIndexItem *)self identifier];
        *buf = 138543618;
        v66 = identifier;
        v67 = 2048;
        v68 = estimatedSizeInBytes;
        _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Skipping body indexing for message %{public}@ due to large message size:%lu", buf, 0x16u);
      }

      bodyData = 0;
    }
  }

  mailbox = [(EDBaseMessage *)self->_baseMessage mailbox];
  type = [mailbox type];
  subject = [(EDBaseMessage *)self->_baseMessage subject];
  subjectWithoutPrefix = [subject subjectWithoutPrefix];

  v47 = subjectWithoutPrefix;
  if (![subjectWithoutPrefix length] && type != 5)
  {
    v63[0] = @"mailboxtype";
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v64[0] = v14;
    v63[1] = @"identifier";
    identifier2 = [(EDSearchableIndexItem *)self identifier];
    v16 = identifier2;
    v17 = @"<null>";
    if (identifier2)
    {
      v17 = identifier2;
    }

    v64[1] = v17;
    v63[2] = @"hasCompleteContent";
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[EDSearchableIndexItem hasCompleteData](self, "hasCompleteData")}];
    v64[2] = v18;
    v63[3] = @"hasHeaders";
    v19 = MEMORY[0x1E696AD98];
    headersDictionary = [(EDBaseMessage *)self->_baseMessage headersDictionary];
    v21 = [v19 numberWithInt:{objc_msgSend(headersDictionary, "count") != 0}];
    v64[3] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:4];

    v23 = +[EDSearchableIndexItem log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(EDSearchableIndexItem *)v22 addStaticAttributesToAttributeSet:v23];
    }
  }

  message = [(EDSearchableIndexItem *)self message];

  if (message)
  {
    v25 = MEMORY[0x1E696AEC0];
    message2 = [(EDSearchableIndexItem *)self message];
    v27 = [v25 stringWithFormat:@"%lld", objc_msgSend(message2, "globalMessageID")];
  }

  else
  {
    v27 = 0;
  }

  v46 = v27;
  if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    message3 = [(EDSearchableIndexItem *)self message];
    notificationID = [message3 notificationID];
  }

  else
  {
    notificationID = 0;
  }

  account = [(EDBaseMessage *)self->_baseMessage account];
  v59 = [objc_opt_class() searchableMessageUpdateForBaseMessage:self->_baseMessage];
  v50 = [objc_opt_class() searchableMessageAttachmentsForBaseMessage:self->_baseMessage includeEncryptedBody:{-[EDSearchableIndexItem includeEncryptedBody](self, "includeEncryptedBody")}];
  v29 = [EDSearchableMessage alloc];
  dateSent = [(EDBaseMessage *)self->_baseMessage dateSent];
  dateReceived = [(EDBaseMessage *)self->_baseMessage dateReceived];
  isEncrypted = [(EDSearchableIndexItem *)self isEncrypted];
  senders = [(EDBaseMessage *)self->_baseMessage senders];
  v52 = [(EDBaseMessage *)self->_baseMessage to];
  v51 = [(EDBaseMessage *)self->_baseMessage cc];
  v53 = [(EDBaseMessage *)self->_baseMessage bcc];
  headersDictionary2 = [(EDBaseMessage *)self->_baseMessage headersDictionary];
  v44 = isEncrypted;
  if (v6)
  {
    v31 = bodyData;
  }

  else
  {
    v31 = 0;
  }

  summary = [(EDPersistedMessage *)self->_message summary];
  isPartOfExistingThread = [(EDBaseMessage *)self->_baseMessage isPartOfExistingThread];
  hasCompleteData = [(EDSearchableIndexItem *)self hasCompleteData];
  identifier3 = [account identifier];
  isManaged = [account isManaged];
  csAccountTypeString = [objc_opt_class() csAccountTypeString];
  emailAddressStrings = [account emailAddressStrings];
  message4 = [(EDSearchableIndexItem *)self message];
  category = [message4 category];
  LOBYTE(v43) = isManaged;
  BYTE1(v42) = hasCompleteData;
  LOBYTE(v42) = isPartOfExistingThread;
  v39 = [(EDSearchableMessage *)v29 initWithSubjectWithoutPrefix:v47 dateSent:dateSent dateReceived:dateReceived isEncrypted:v44 priority:0 senders:senders to:v52 cc:v51 bcc:v53 allHeaders:headersDictionary2 htmlContent:v31 summary:summary messageID:v46 notificationID:notificationID isPartOfExistingThread:v42 hasCompleteData:identifier3 accountIdentifier:v43 accountIsManaged:csAccountTypeString accountType:emailAddressStrings accountEmailAddresses:v59 update:v50 attachments:category category:?];

  identifier4 = [(EDSearchableIndexItem *)self identifier];
  [(EDSearchableMessage *)v39 addToAttributes:setCopy forIdentifier:identifier4];

  v41 = *MEMORY[0x1E69E9840];
}

- (void)addDataDetectionAttributesToAttributeSet:(id)set
{
  v22 = *MEMORY[0x1E69E9840];
  setCopy = set;
  if (_os_feature_enabled_impl())
  {
    message = [(EDSearchableIndexItem *)self message];

    if (message)
    {
      message2 = [(EDSearchableIndexItem *)self message];
      dataDetectionAttributes = [message2 dataDetectionAttributes];

      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __66__EDSearchableIndexItem_addDataDetectionAttributesToAttributeSet___block_invoke;
      v15 = &unk_1E8256EA8;
      v16 = setCopy;
      selfCopy = self;
      [dataDetectionAttributes enumerateKeysAndObjectsUsingBlock:&v12];
      v8 = [EDSearchableIndexItem log:v12];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        identifier = self->_identifier;
        v10 = [MEMORY[0x1E699B858] partiallyRedactedDictionary:dataDetectionAttributes];
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
    identifier = [*MEMORY[0x1E6982DA8] identifier];
    v7 = [v5 initWithItemContentType:identifier];

    externalDataTypeIdentifiers = [MEMORY[0x1E699AD30] externalDataTypeIdentifiers];
    [v7 setProviderDataTypeIdentifiers:externalDataTypeIdentifiers];

    indexingType = [(EDSearchableIndexItem *)self indexingType];
    v10 = indexingType;
    if (indexingType <= 3)
    {
      if (indexingType > 1)
      {
        if (indexingType != 2)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"EDSearchableIndexItem.m" lineNumber:493 description:@"EDSearchableIndexItem has invalid indexingType = EDIndexableItemIndexingTypeAttachment"];
LABEL_20:

          goto LABEL_24;
        }

        [(EDSearchableIndexItem *)self addUpdatableAttributesToAttributeSet:v7];
LABEL_18:
        [(EDSearchableIndexItem *)self addMailCategoryAttributesToAttributeSet:v7];
LABEL_24:
        v12 = objc_alloc(MEMORY[0x1E6964E80]);
        identifier2 = [(EDSearchableIndexItem *)self identifier];
        domainIdentifier = [(EDSearchableIndexItem *)self domainIdentifier];
        v15 = [v12 initWithUniqueIdentifier:identifier2 domainIdentifier:domainIdentifier attributeSet:v7];
        v16 = self->_searchableItem;
        self->_searchableItem = v15;

        distantFuture = [MEMORY[0x1E695DF00] distantFuture];
        [(CSSearchableItem *)self->_searchableItem setExpirationDate:distantFuture];

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

      if (indexingType)
      {
        if (indexingType != 1)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (indexingType > 5)
      {
        if (indexingType != 6)
        {
          if (indexingType != 7)
          {
            if (indexingType == 8)
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

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"EDSearchableIndexItem.m" lineNumber:497 description:@"EDSearchableIndexItem has invalid indexingType = EDIndexableItemIndexingTypeRichLinks"];
        goto LABEL_20;
      }

      if (indexingType == 4)
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

+ (id)csIdentifierForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  type = [mailboxCopy type];
  if (type > 3)
  {
    if (type <= 5)
    {
      if (type == 4)
      {
        v5 = MEMORY[0x1E6963B60];
      }

      else
      {
        v5 = MEMORY[0x1E6963B48];
      }

      goto LABEL_17;
    }

    if (type == 6)
    {
      v5 = kEDSearchableIndexOutboxIdentifier;
      goto LABEL_17;
    }

    if (type == 7)
    {
      v5 = MEMORY[0x1E6963B50];
      goto LABEL_17;
    }

LABEL_13:
    v6 = [mailboxCopy URL];
    absoluteString = [v6 absoluteString];

    goto LABEL_18;
  }

  if (type == 1)
  {
    v5 = MEMORY[0x1E6963B58];
    goto LABEL_17;
  }

  if (type == 2)
  {
    v5 = MEMORY[0x1E6963B40];
    goto LABEL_17;
  }

  if (type != 3)
  {
    goto LABEL_13;
  }

  v5 = MEMORY[0x1E6963B68];
LABEL_17:
  absoluteString = *v5;
LABEL_18:

  return absoluteString;
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