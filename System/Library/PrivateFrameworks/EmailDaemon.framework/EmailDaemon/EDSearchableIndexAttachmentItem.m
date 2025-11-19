@interface EDSearchableIndexAttachmentItem
+ (OS_os_log)log;
+ (id)attachmentPersistentIDFromItemIdentifier:(id)a3;
+ (id)identifierForAttachmentPersistentID:(id)a3;
- (EDSearchableIndexAttachmentItem)initWithAttachmentPersistentID:(id)a3 messagePersistentID:(id)a4 metadatum:(id)a5;
- (EFPromise)attributeSetForFilePromise;
- (NSString)domainIdentifier;
- (id)searchableItem;
- (unint64_t)estimatedSizeInBytes;
- (void)setIndexingType:(int64_t)a3;
@end

@implementation EDSearchableIndexAttachmentItem

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__EDSearchableIndexAttachmentItem_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_85 != -1)
  {
    dispatch_once(&log_onceToken_85, block);
  }

  v2 = log_log_85;

  return v2;
}

void __38__EDSearchableIndexAttachmentItem_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_85;
  log_log_85 = v1;
}

+ (id)identifierForAttachmentPersistentID:(id)a3
{
  v3 = *MEMORY[0x1E699AFB0];
  v4 = [a3 stringValue];
  v5 = [v3 stringByAppendingString:v4];

  return v5;
}

+ (id)attachmentPersistentIDFromItemIdentifier:(id)a3
{
  v3 = [MEMORY[0x1E699AE70] attachmentPersistentIDFromItemIdentifier:a3];
  if (v3)
  {
    v4 = [[EDPersistedAttachmentID alloc] initWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (EDSearchableIndexAttachmentItem)initWithAttachmentPersistentID:(id)a3 messagePersistentID:(id)a4 metadatum:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = EDSearchableIndexAttachmentItem;
  v11 = [(EDSearchableIndexAttachmentItem *)&v19 init];
  if (v11)
  {
    v11->_itemInstantiationTime = mach_absolute_time();
    v12 = [v8 copy];
    attachmentPersistentID = v11->_attachmentPersistentID;
    v11->_attachmentPersistentID = v12;

    v14 = [v9 copy];
    messagePersistentID = v11->_messagePersistentID;
    v11->_messagePersistentID = v14;

    objc_storeStrong(&v11->_metadatum, a5);
    v16 = [objc_opt_class() identifierForAttachmentPersistentID:v8];
    identifier = v11->_identifier;
    v11->_identifier = v16;

    v11->_indexingType = 3;
    v11->_requiresPreprocessing = 1;
    v11->_searchableItemProcessingDelay = 0.0;
  }

  return v11;
}

- (id)searchableItem
{
  v46 = *MEMORY[0x1E69E9840];
  if (!self->_searchableItem && [(EDSearchableIndexAttachmentItem *)self requiresPreprocessing])
  {
    [(EDSearchableIndexAttachmentItem *)self setRequiresPreprocessing:0];
    v3 = [(EDSearchableIndexAttachmentItem *)self metadatum];
    v4 = objc_alloc(MEMORY[0x1E6964E90]);
    v5 = [v3 contentType];
    v36 = [v4 initWithContentType:v5];

    v32 = [v3 mailboxIdentifiers];
    v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v37.st_blksize = v6;
    *v37.st_qspare = v6;
    v37.st_birthtimespec = v6;
    *&v37.st_size = v6;
    v37.st_mtimespec = v6;
    v37.st_ctimespec = v6;
    *&v37.st_uid = v6;
    v37.st_atimespec = v6;
    *&v37.st_dev = v6;
    v7 = [v3 attachmentFileURL];
    LODWORD(v4) = stat([v7 fileSystemRepresentation], &v37);

    if (v4 || !v37.st_birthtimespec.tv_sec)
    {
      v31 = 0;
    }

    else
    {
      v31 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v37.st_birthtimespec.tv_sec];
    }

    v8 = [EDSearchableAttachment alloc];
    v35 = [v3 attachmentFileURL];
    v34 = [v3 contentType];
    v33 = [v3 name];
    v9 = [v3 accountIdentifier];
    v10 = [(EDSearchableIndexAttachmentItem *)self messagePersistentID];
    v11 = [v3 messageIDHeader];
    v12 = [v3 dateSent];
    v13 = [v3 dateReceived];
    v14 = [v3 senderAddress];
    v15 = [v3 recipientAddresses];
    v16 = [(EDSearchableAttachment *)v8 initWithContentURL:v35 contentType:v34 name:v33 accountIdentifier:v9 mailboxIdentifiers:v32 messageID:v10 messageIDHeader:v11 dateSent:v12 dateReceived:v13 sender:v14 recipients:v15 downloadDate:v31];

    [(EDSearchableAttachment *)v16 addToAttributes:v36];
    v17 = +[EDSearchableIndexAttachmentItem log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(EDSearchableAttachment *)v16 displayName];
      v19 = [(EDSearchableAttachment *)v16 contentURL];
      v20 = [(EDSearchableIndexAttachmentItem *)self identifier];
      v21 = [(EDSearchableIndexAttachmentItem *)self messagePersistentID];
      *buf = 138413058;
      v39 = v18;
      v40 = 2112;
      v41 = v19;
      v42 = 2114;
      v43 = v20;
      v44 = 2114;
      v45 = v21;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Creating attachment attribute set with displayName %@ contentURL %@ uniqueIdentifier %{public}@ relatedUniqueIdentifier %{public}@", buf, 0x2Au);
    }

    v22 = objc_alloc(MEMORY[0x1E6964E80]);
    v23 = [(EDSearchableIndexAttachmentItem *)self identifier];
    v24 = [(EDSearchableIndexAttachmentItem *)self domainIdentifier];
    v25 = [v22 initWithUniqueIdentifier:v23 domainIdentifier:v24 attributeSet:v36];
    searchableItem = self->_searchableItem;
    self->_searchableItem = v25;

    v27 = [MEMORY[0x1E695DF00] distantFuture];
    [(CSSearchableItem *)self->_searchableItem setExpirationDate:v27];
  }

  v28 = self->_searchableItem;
  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (EFPromise)attributeSetForFilePromise
{
  attributeSetForFilePromise = self->_attributeSetForFilePromise;
  if (!attributeSetForFilePromise)
  {
    v4 = [MEMORY[0x1E699B868] promise];
    v5 = self->_attributeSetForFilePromise;
    self->_attributeSetForFilePromise = v4;

    v6 = self->_attributeSetForFilePromise;
    v7 = [MEMORY[0x1E696ABC0] ef_notSupportedError];
    [(EFPromise *)v6 finishWithError:v7];

    attributeSetForFilePromise = self->_attributeSetForFilePromise;
  }

  return attributeSetForFilePromise;
}

- (NSString)domainIdentifier
{
  v2 = [(EDSearchableIndexAttachmentItem *)self metadatum];
  v3 = [v2 domainIdentifier];

  return v3;
}

- (unint64_t)estimatedSizeInBytes
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(EDSearchableIndexAttachmentItem *)self metadatum];
  v5 = [v4 attachmentFileURL];
  v6 = [v5 path];
  v7 = [v3 attributesOfItemAtPath:v6 error:0];
  v8 = [v7 fileSize];

  return v8;
}

- (void)setIndexingType:(int64_t)a3
{
  if (a3 != 3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"EDSearchableIndexAttachmentItem.m" lineNumber:174 description:@"Attempting to set unexpected indexing type on EDSearchableIndexAttachmentItem"];
  }

  self->_indexingType = a3;
}

@end