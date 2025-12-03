@interface EDSearchableIndexAttachmentItem
+ (OS_os_log)log;
+ (id)attachmentPersistentIDFromItemIdentifier:(id)identifier;
+ (id)identifierForAttachmentPersistentID:(id)d;
- (EDSearchableIndexAttachmentItem)initWithAttachmentPersistentID:(id)d messagePersistentID:(id)iD metadatum:(id)metadatum;
- (EFPromise)attributeSetForFilePromise;
- (NSString)domainIdentifier;
- (id)searchableItem;
- (unint64_t)estimatedSizeInBytes;
- (void)setIndexingType:(int64_t)type;
@end

@implementation EDSearchableIndexAttachmentItem

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__EDSearchableIndexAttachmentItem_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (id)identifierForAttachmentPersistentID:(id)d
{
  v3 = *MEMORY[0x1E699AFB0];
  stringValue = [d stringValue];
  v5 = [v3 stringByAppendingString:stringValue];

  return v5;
}

+ (id)attachmentPersistentIDFromItemIdentifier:(id)identifier
{
  v3 = [MEMORY[0x1E699AE70] attachmentPersistentIDFromItemIdentifier:identifier];
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

- (EDSearchableIndexAttachmentItem)initWithAttachmentPersistentID:(id)d messagePersistentID:(id)iD metadatum:(id)metadatum
{
  dCopy = d;
  iDCopy = iD;
  metadatumCopy = metadatum;
  v19.receiver = self;
  v19.super_class = EDSearchableIndexAttachmentItem;
  v11 = [(EDSearchableIndexAttachmentItem *)&v19 init];
  if (v11)
  {
    v11->_itemInstantiationTime = mach_absolute_time();
    v12 = [dCopy copy];
    attachmentPersistentID = v11->_attachmentPersistentID;
    v11->_attachmentPersistentID = v12;

    v14 = [iDCopy copy];
    messagePersistentID = v11->_messagePersistentID;
    v11->_messagePersistentID = v14;

    objc_storeStrong(&v11->_metadatum, metadatum);
    v16 = [objc_opt_class() identifierForAttachmentPersistentID:dCopy];
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
    metadatum = [(EDSearchableIndexAttachmentItem *)self metadatum];
    v4 = objc_alloc(MEMORY[0x1E6964E90]);
    contentType = [metadatum contentType];
    v36 = [v4 initWithContentType:contentType];

    mailboxIdentifiers = [metadatum mailboxIdentifiers];
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
    attachmentFileURL = [metadatum attachmentFileURL];
    LODWORD(v4) = stat([attachmentFileURL fileSystemRepresentation], &v37);

    if (v4 || !v37.st_birthtimespec.tv_sec)
    {
      v31 = 0;
    }

    else
    {
      v31 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v37.st_birthtimespec.tv_sec];
    }

    v8 = [EDSearchableAttachment alloc];
    attachmentFileURL2 = [metadatum attachmentFileURL];
    contentType2 = [metadatum contentType];
    name = [metadatum name];
    accountIdentifier = [metadatum accountIdentifier];
    messagePersistentID = [(EDSearchableIndexAttachmentItem *)self messagePersistentID];
    messageIDHeader = [metadatum messageIDHeader];
    dateSent = [metadatum dateSent];
    dateReceived = [metadatum dateReceived];
    senderAddress = [metadatum senderAddress];
    recipientAddresses = [metadatum recipientAddresses];
    v16 = [(EDSearchableAttachment *)v8 initWithContentURL:attachmentFileURL2 contentType:contentType2 name:name accountIdentifier:accountIdentifier mailboxIdentifiers:mailboxIdentifiers messageID:messagePersistentID messageIDHeader:messageIDHeader dateSent:dateSent dateReceived:dateReceived sender:senderAddress recipients:recipientAddresses downloadDate:v31];

    [(EDSearchableAttachment *)v16 addToAttributes:v36];
    v17 = +[EDSearchableIndexAttachmentItem log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      displayName = [(EDSearchableAttachment *)v16 displayName];
      contentURL = [(EDSearchableAttachment *)v16 contentURL];
      identifier = [(EDSearchableIndexAttachmentItem *)self identifier];
      messagePersistentID2 = [(EDSearchableIndexAttachmentItem *)self messagePersistentID];
      *buf = 138413058;
      v39 = displayName;
      v40 = 2112;
      v41 = contentURL;
      v42 = 2114;
      v43 = identifier;
      v44 = 2114;
      v45 = messagePersistentID2;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Creating attachment attribute set with displayName %@ contentURL %@ uniqueIdentifier %{public}@ relatedUniqueIdentifier %{public}@", buf, 0x2Au);
    }

    v22 = objc_alloc(MEMORY[0x1E6964E80]);
    identifier2 = [(EDSearchableIndexAttachmentItem *)self identifier];
    domainIdentifier = [(EDSearchableIndexAttachmentItem *)self domainIdentifier];
    v25 = [v22 initWithUniqueIdentifier:identifier2 domainIdentifier:domainIdentifier attributeSet:v36];
    searchableItem = self->_searchableItem;
    self->_searchableItem = v25;

    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    [(CSSearchableItem *)self->_searchableItem setExpirationDate:distantFuture];
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
    promise = [MEMORY[0x1E699B868] promise];
    v5 = self->_attributeSetForFilePromise;
    self->_attributeSetForFilePromise = promise;

    v6 = self->_attributeSetForFilePromise;
    ef_notSupportedError = [MEMORY[0x1E696ABC0] ef_notSupportedError];
    [(EFPromise *)v6 finishWithError:ef_notSupportedError];

    attributeSetForFilePromise = self->_attributeSetForFilePromise;
  }

  return attributeSetForFilePromise;
}

- (NSString)domainIdentifier
{
  metadatum = [(EDSearchableIndexAttachmentItem *)self metadatum];
  domainIdentifier = [metadatum domainIdentifier];

  return domainIdentifier;
}

- (unint64_t)estimatedSizeInBytes
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  metadatum = [(EDSearchableIndexAttachmentItem *)self metadatum];
  attachmentFileURL = [metadatum attachmentFileURL];
  path = [attachmentFileURL path];
  v7 = [defaultManager attributesOfItemAtPath:path error:0];
  fileSize = [v7 fileSize];

  return fileSize;
}

- (void)setIndexingType:(int64_t)type
{
  if (type != 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDSearchableIndexAttachmentItem.m" lineNumber:174 description:@"Attempting to set unexpected indexing type on EDSearchableIndexAttachmentItem"];
  }

  self->_indexingType = type;
}

@end