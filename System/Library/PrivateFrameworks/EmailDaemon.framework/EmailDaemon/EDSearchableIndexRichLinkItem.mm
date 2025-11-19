@interface EDSearchableIndexRichLinkItem
+ (OS_os_log)log;
+ (id)identifierForMessageID:(id)a3 richLinkID:(id)a4;
+ (id)messageIDandRichLinkIDFromRichLinkIdentifier:(id)a3;
+ (id)richLinkItemIdentifierFromSearchableItemIdentifier:(id)a3;
- (EDSearchableIndexRichLinkItem)initWithMessageID:(id)a3 metadatum:(id)a4;
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
  block[4] = a1;
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

+ (id)messageIDandRichLinkIDFromRichLinkIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 richLinkItemIdentifierFromSearchableItemIdentifier:v4];
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
      v18 = v4;
      _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Rich link identifier %@ could not be split up into messageID and rich link ID.", &v17, 0xCu);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)richLinkItemIdentifierFromSearchableItemIdentifier:(id)a3
{
  v3 = [MEMORY[0x1E699AE70] richLinkItemIdentifierFromSearchableItemIdentifier:a3];

  return v3;
}

+ (id)identifierForMessageID:(id)a3 richLinkID:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E696AEC0];
  v7 = [a3 stringValue];
  v8 = [v5 stringValue];
  v9 = [v6 stringWithFormat:@"%@_%@", v7, v8];
  v10 = [*MEMORY[0x1E699AFB8] stringByAppendingString:v9];

  return v10;
}

- (EDSearchableIndexRichLinkItem)initWithMessageID:(id)a3 metadatum:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = EDSearchableIndexRichLinkItem;
  v8 = [(EDSearchableIndexRichLinkItem *)&v16 init];
  if (v8)
  {
    v8->_itemInstantiationTime = mach_absolute_time();
    v9 = [v6 copy];
    messagePersistentID = v8->_messagePersistentID;
    v8->_messagePersistentID = v9;

    objc_storeStrong(&v8->_metadatum, a4);
    v11 = objc_opt_class();
    v12 = [v7 richLinkID];
    v13 = [v11 identifierForMessageID:v6 richLinkID:v12];
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
    v3 = [(EDSearchableIndexRichLinkItem *)self metadatum];
    v30 = objc_alloc_init(MEMORY[0x1E6964E90]);
    v4 = [EDSearchableRichLink alloc];
    v29 = [v3 accountIdentifier];
    v5 = [v3 mailboxIdentifiers];
    v6 = [(EDSearchableIndexRichLinkItem *)self messagePersistentID];
    v28 = [v3 richLinkID];
    v27 = [v3 title];
    v26 = [v3 url];
    v7 = [v3 dateSent];
    v8 = [v3 dateReceived];
    v9 = [v3 senderAddress];
    v10 = [v3 recipientAddresses];
    v25 = v6;
    v11 = [(EDSearchableRichLink *)v4 initWithAccountIdentifier:v29 mailboxIdentifiers:v5 messageID:v6 id:v28 title:v27 url:v26 dateSent:v7 dateReceived:v8 sender:v9 recipients:v10];

    [(EDSearchableRichLink *)v11 addToAttributes:v30];
    v12 = +[EDSearchableIndexRichLinkItem log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v3 richLinkID];
      v14 = [(EDSearchableIndexRichLinkItem *)self identifier];
      v15 = [(EDSearchableIndexRichLinkItem *)self messagePersistentID];
      *buf = 138412802;
      v32 = v13;
      v33 = 2114;
      v34 = v14;
      v35 = 2114;
      v36 = v15;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Creating rich link attribute set with rich link ID %@ uniqueIdentifier %{public}@ relatedUniqueIdentifier %{public}@", buf, 0x20u);
    }

    v16 = objc_alloc(MEMORY[0x1E6964E80]);
    v17 = [(EDSearchableIndexRichLinkItem *)self identifier];
    v18 = [(EDSearchableIndexRichLinkItem *)self domainIdentifier];
    v19 = [v16 initWithUniqueIdentifier:v17 domainIdentifier:v18 attributeSet:v30];
    searchableItem = self->_searchableItem;
    self->_searchableItem = v19;

    v21 = [MEMORY[0x1E695DF00] distantFuture];
    [(CSSearchableItem *)self->_searchableItem setExpirationDate:v21];
  }

  v22 = self->_searchableItem;
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (NSString)domainIdentifier
{
  v2 = [(EDSearchableIndexRichLinkItem *)self metadatum];
  v3 = [v2 domainIdentifier];

  return v3;
}

@end