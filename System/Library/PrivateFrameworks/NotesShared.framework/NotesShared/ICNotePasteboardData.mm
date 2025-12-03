@interface ICNotePasteboardData
+ (id)pasteboardDataFromPersistenceData:(id)data;
- (ICNotePasteboardData)init;
- (ICNotePasteboardData)initWithAttributedStringData:(id)data dataPersister:(id)persister;
- (ICNotePasteboardData)initWithCoder:(id)coder;
- (id)persistenceData;
- (void)encodeWithCoder:(id)coder;
- (void)persistenceData;
@end

@implementation ICNotePasteboardData

- (ICNotePasteboardData)init
{
  [(ICNotePasteboardData *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICNotePasteboardData)initWithAttributedStringData:(id)data dataPersister:(id)persister
{
  dataCopy = data;
  persisterCopy = persister;
  v12.receiver = self;
  v12.super_class = ICNotePasteboardData;
  v9 = [(ICNotePasteboardData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attributedStringData, data);
    objc_storeStrong(&v10->_dataPersister, persister);
  }

  return v10;
}

- (id)persistenceData
{
  v6 = 0;
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v6];
  v3 = v6;
  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(ICNotePasteboardData *)v3 persistenceData];
    }
  }

  return v2;
}

+ (id)pasteboardDataFromPersistenceData:(id)data
{
  v3 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v17 = 0;
  v5 = [[v3 alloc] initForReadingFromData:dataCopy error:&v17];

  v6 = v17;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICAttachment(ICAttachmentPersistenceAdditions) loadFromArchive:v6 dataPersister:v7 withIdentifierMap:?];
    }
  }

  objc_opt_class();
  v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
  v9 = ICCheckedDynamicCast();

  if (v9 && (([v9 dataPersister], (v10 = objc_claimAutoreleasedReturnValue()) == 0) || (v11 = v10, objc_msgSend(v9, "dataPersister"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "verifyDataFiles"), v12, v11, v13)))
  {
    v14 = v9;
  }

  else
  {
    v15 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ICNotePasteboardData pasteboardDataFromPersistenceData:v15];
    }

    v14 = 0;
  }

  return v14;
}

- (ICNotePasteboardData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ICNotePasteboardData;
  v5 = [(ICNotePasteboardData *)&v13 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributedStringData"];
    v7 = ICCheckedDynamicCast();
    attributedStringData = v5->_attributedStringData;
    v5->_attributedStringData = v7;

    objc_opt_class();
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataPersister"];
    v10 = ICCheckedDynamicCast();
    dataPersister = v5->_dataPersister;
    v5->_dataPersister = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  attributedStringData = [(ICNotePasteboardData *)self attributedStringData];
  [coderCopy encodeObject:attributedStringData forKey:@"attributedStringData"];

  dataPersister = [(ICNotePasteboardData *)self dataPersister];

  if (dataPersister)
  {
    dataPersister2 = [(ICNotePasteboardData *)self dataPersister];
    [coderCopy encodeObject:dataPersister2 forKey:@"dataPersister"];
  }
}

- (void)persistenceData
{
  v6 = *MEMORY[0x277D85DE8];
  localizedDescription = [self localizedDescription];
  v4 = 138412290;
  v5 = localizedDescription;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Error while serializing persistence data: %@", &v4, 0xCu);
}

@end