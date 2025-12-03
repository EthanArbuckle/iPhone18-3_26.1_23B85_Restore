@interface EDSearchableIndexRichLinkItem
+ (OS_os_log)log;
+ (id)identifierForMessageID:(id)d richLinkID:(id)iD;
+ (id)messageIDandRichLinkIDFromRichLinkIdentifier:(id)identifier;
+ (id)richLinkItemIdentifierFromSearchableItemIdentifier:(id)identifier;
- (EDSearchableIndexRichLinkItem)initWithMessageID:(id)d metadatum:(id)metadatum;
- (NSString)domainIdentifier;
- (id)searchableItem;
@end

@implementation EDSearchableIndexRichLinkItem

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__EDSearchableIndexRichLinkItem_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_91 != -1)
  {
    dispatch_once(&log_onceToken_91, block);
  }

  v2 = log_log_91;

  return v2;
}

void __36__EDSearchableIndexRichLinkItem_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_91;
  log_log_91 = v1;
}

+ (id)messageIDandRichLinkIDFromRichLinkIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [self richLinkItemIdentifierFromSearchableItemIdentifier:identifierCopy];
  v6 = [v5 componentsSeparatedByString:@"_"];
  if ([v6 count] == 2)
  {
    v7 = [EDPersistedMessageID alloc];
    v8 = [v6 objectAtIndexedSubscript:0];
    v9 = [(EDPersistedMessageID *)v7 initWithString:v8];

    v10 = [EDPersistedRichLinkID alloc];
    v11 = [v6 objectAtIndexedSubscript:1];
    v12 = [(EDPersistedRichLinkID *)v10 initWithString:v11];

    v13 = [objc_alloc(MEMORY[0x1E699B848]) initWithFirst:v9 second:v12];
  }

  else
  {
    v14 = +[EDSearchableIndexRichLinkItem log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = identifierCopy;
      _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Rich link identifier %@ could not be split up into messageID and rich link ID.", &v17, 0xCu);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)richLinkItemIdentifierFromSearchableItemIdentifier:(id)identifier
{
  v3 = [MEMORY[0x1E699AE70] richLinkItemIdentifierFromSearchableItemIdentifier:identifier];

  return v3;
}

+ (id)identifierForMessageID:(id)d richLinkID:(id)iD
{
  iDCopy = iD;
  v6 = MEMORY[0x1E696AEC0];
  stringValue = [d stringValue];
  stringValue2 = [iDCopy stringValue];
  v9 = [v6 stringWithFormat:@"%@_%@", stringValue, stringValue2];
  v10 = [*MEMORY[0x1E699AFB8] stringByAppendingString:v9];

  return v10;
}

- (EDSearchableIndexRichLinkItem)initWithMessageID:(id)d metadatum:(id)metadatum
{
  dCopy = d;
  metadatumCopy = metadatum;
  v16.receiver = self;
  v16.super_class = EDSearchableIndexRichLinkItem;
  v8 = [(EDSearchableIndexRichLinkItem *)&v16 init];
  if (v8)
  {
    v8->_itemInstantiationTime = mach_absolute_time();
    v9 = [dCopy copy];
    messagePersistentID = v8->_messagePersistentID;
    v8->_messagePersistentID = v9;

    objc_storeStrong(&v8->_metadatum, metadatum);
    v11 = objc_opt_class();
    richLinkID = [metadatumCopy richLinkID];
    v13 = [v11 identifierForMessageID:dCopy richLinkID:richLinkID];
    identifier = v8->_identifier;
    v8->_identifier = v13;

    v8->_indexingType = 6;
    v8->_requiresPreprocessing = 1;
  }

  return v8;
}

- (id)searchableItem
{
  v37 = *MEMORY[0x1E69E9840];
  if (!self->_searchableItem && [(EDSearchableIndexRichLinkItem *)self requiresPreprocessing])
  {
    [(EDSearchableIndexRichLinkItem *)self setRequiresPreprocessing:0];
    metadatum = [(EDSearchableIndexRichLinkItem *)self metadatum];
    v30 = objc_alloc_init(MEMORY[0x1E6964E90]);
    v4 = [EDSearchableRichLink alloc];
    accountIdentifier = [metadatum accountIdentifier];
    mailboxIdentifiers = [metadatum mailboxIdentifiers];
    messagePersistentID = [(EDSearchableIndexRichLinkItem *)self messagePersistentID];
    richLinkID = [metadatum richLinkID];
    title = [metadatum title];
    v26 = [metadatum url];
    dateSent = [metadatum dateSent];
    dateReceived = [metadatum dateReceived];
    senderAddress = [metadatum senderAddress];
    recipientAddresses = [metadatum recipientAddresses];
    v25 = messagePersistentID;
    v11 = [(EDSearchableRichLink *)v4 initWithAccountIdentifier:accountIdentifier mailboxIdentifiers:mailboxIdentifiers messageID:messagePersistentID id:richLinkID title:title url:v26 dateSent:dateSent dateReceived:dateReceived sender:senderAddress recipients:recipientAddresses];

    [(EDSearchableRichLink *)v11 addToAttributes:v30];
    v12 = +[EDSearchableIndexRichLinkItem log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      richLinkID2 = [metadatum richLinkID];
      identifier = [(EDSearchableIndexRichLinkItem *)self identifier];
      messagePersistentID2 = [(EDSearchableIndexRichLinkItem *)self messagePersistentID];
      *buf = 138412802;
      v32 = richLinkID2;
      v33 = 2114;
      v34 = identifier;
      v35 = 2114;
      v36 = messagePersistentID2;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Creating rich link attribute set with rich link ID %@ uniqueIdentifier %{public}@ relatedUniqueIdentifier %{public}@", buf, 0x20u);
    }

    v16 = objc_alloc(MEMORY[0x1E6964E80]);
    identifier2 = [(EDSearchableIndexRichLinkItem *)self identifier];
    domainIdentifier = [(EDSearchableIndexRichLinkItem *)self domainIdentifier];
    v19 = [v16 initWithUniqueIdentifier:identifier2 domainIdentifier:domainIdentifier attributeSet:v30];
    searchableItem = self->_searchableItem;
    self->_searchableItem = v19;

    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    [(CSSearchableItem *)self->_searchableItem setExpirationDate:distantFuture];
  }

  v22 = self->_searchableItem;
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (NSString)domainIdentifier
{
  metadatum = [(EDSearchableIndexRichLinkItem *)self metadatum];
  domainIdentifier = [metadatum domainIdentifier];

  return domainIdentifier;
}

@end