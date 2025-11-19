@interface EMSearchableIndex
+ (NSString)protectionClass;
+ (OS_os_log)log;
+ (id)attachmentPersistentIDFromItemIdentifier:(id)a3;
+ (id)persistentIDForSearchableItem:(id)a3;
+ (id)remoteInterface;
+ (id)richLinkItemIdentifierFromSearchableItemIdentifier:(id)a3;
- (EMSearchableIndex)initWithRemoteConnection:(id)a3;
- (void)indexSummaries:(id)a3;
- (void)reindexAllSearchableItemsWithAcknowledgementHandler:(id)a3;
- (void)reindexSearchableItemsWithIdentifiers:(id)a3 acknowledgementHandler:(id)a4;
@end

@implementation EMSearchableIndex

+ (id)remoteInterface
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4642390];
  [v5 setClasses:v4 forSelector:sel_reindexSearchableItemsWithIdentifiers_acknowledgementHandler_ argumentIndex:0 ofReply:0];

  return v5;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__EMSearchableIndex_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_35 != -1)
  {
    dispatch_once(&log_onceToken_35, block);
  }

  v2 = log_log_35;

  return v2;
}

void __24__EMSearchableIndex_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_35;
  log_log_35 = v1;
}

+ (NSString)protectionClass
{
  v2 = _os_feature_enabled_impl();
  v3 = MEMORY[0x1E696A388];
  if ((v2 & 1) == 0)
  {
    v4 = [MEMORY[0x1E699B7B0] currentDevice];
    v5 = [v4 isAppleSilicon];

    if (!v5)
    {
      v3 = MEMORY[0x1E696A378];
    }
  }

  v6 = *v3;

  return v6;
}

- (EMSearchableIndex)initWithRemoteConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EMSearchableIndex;
  v6 = [(EMSearchableIndex *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

+ (id)attachmentPersistentIDFromItemIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"attachment:"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"attachment:", "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)richLinkItemIdentifierFromSearchableItemIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"richLink:"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"richLink:", "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)persistentIDForSearchableItem:(id)a3
{
  v3 = a3;
  v4 = [v3 uniqueIdentifier];
  v5 = [EMSearchableIndex attachmentPersistentIDFromItemIdentifier:v4];
  if (v5)
  {
  }

  else
  {
    v6 = [EMSearchableIndex richLinkItemIdentifierFromSearchableItemIdentifier:v4];

    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v7 = [v3 attributeSet];
  v8 = [v7 relatedUniqueIdentifier];

  if (v8)
  {
    v9 = [v3 attributeSet];
    v10 = [v9 relatedUniqueIdentifier];

    v4 = v10;
  }

  else
  {
    v11 = +[EMSearchableIndex log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(EMSearchableIndex *)v4 persistentIDForSearchableItem:v11];
    }

    v4 = 0;
  }

LABEL_9:

  return v4;
}

- (void)reindexSearchableItemsWithIdentifiers:(id)a3 acknowledgementHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(EMSearchableIndex *)self connection];
  v8 = [v7 reattemptingRemoteObjectProxy];
  [v8 reindexSearchableItemsWithIdentifiers:v9 acknowledgementHandler:v6];
}

- (void)reindexAllSearchableItemsWithAcknowledgementHandler:(id)a3
{
  v6 = a3;
  v4 = [(EMSearchableIndex *)self connection];
  v5 = [v4 reattemptingRemoteObjectProxy];
  [v5 reindexAllSearchableItemsWithAcknowledgementHandler:v6];
}

- (void)indexSummaries:(id)a3
{
  v6 = a3;
  v4 = [(EMSearchableIndex *)self connection];
  v5 = [v4 reattemptingRemoteObjectProxy];
  [v5 indexSummaries:v6];
}

+ (void)persistentIDForSearchableItem:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "Encountered a searchable item %{public}@ without a relatedUniqueIdentifier message ID indexed", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end