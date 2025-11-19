@interface DEAttachmentGroup
+ (id)createWithName:(id)a3 rootURL:(id)a4;
+ (id)createWithName:(id)a3 rootURL:(id)a4 attachmentItems:(id)a5;
- (DEAttachmentGroup)initWithCoder:(id)a3;
- (id)attachToDestinationDir:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DEAttachmentGroup

+ (id)createWithName:(id)a3 rootURL:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(DEAttachmentGroup);
  [(DEAttachmentItem *)v7 setDisplayName:v5];
  [(DEAttachmentGroup *)v7 setRootURL:v6];
  v8 = [DEUtils lsDir:v6];
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [DEAttachmentItem alloc];
        v17 = [(DEAttachmentItem *)v16 initWithPathURL:v15, v23];
        [v9 addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  [(DEAttachmentGroup *)v7 setAttachmentItems:v18];

  [(DEAttachmentItem *)v7 setAttachmentType:@"DEAttachmentTypeGroup"];
  v19 = [(DEAttachmentItem *)v7 displayName];
  v20 = [v6 URLByAppendingPathComponent:v19];
  [(DEAttachmentItem *)v7 setPath:v20];

  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)createWithName:(id)a3 rootURL:(id)a4 attachmentItems:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(DEAttachmentGroup);
  [(DEAttachmentItem *)v10 setDisplayName:v9];

  [(DEAttachmentGroup *)v10 setRootURL:v8];
  [(DEAttachmentGroup *)v10 setAttachmentItems:v7];

  [(DEAttachmentItem *)v10 setAttachmentType:@"DEAttachmentTypeGroup"];
  v11 = [(DEAttachmentItem *)v10 displayName];
  v12 = [v8 URLByAppendingPathComponent:v11];

  [(DEAttachmentItem *)v10 setPath:v12];

  return v10;
}

- (DEAttachmentGroup)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = DEAttachmentGroup;
  v3 = a3;
  v4 = [(DEAttachmentItem *)&v10 initWithCoder:v3];
  v5 = [v3 decodeObjectForKey:{@"RootURL", v10.receiver, v10.super_class}];
  rootURL = v4->_rootURL;
  v4->_rootURL = v5;

  v7 = [v3 decodeObjectForKey:@"AttachmentItems"];

  attachmentItems = v4->_attachmentItems;
  v4->_attachmentItems = v7;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = DEAttachmentGroup;
  v4 = a3;
  [(DEAttachmentItem *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_rootURL forKey:{@"RootURL", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_attachmentItems forKey:@"AttachmentItems"];
}

- (id)attachToDestinationDir:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[DELogging fwHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v37 = v4;
    _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_INFO, "Log destination directory: %{public}@", buf, 0xCu);
  }

  v6 = [(DEAttachmentItem *)self displayName];
  if (v6)
  {
    v7 = [(DEAttachmentItem *)self displayName];
  }

  else
  {
    v8 = [(DEAttachmentGroup *)self rootURL];
    v7 = [v8 lastPathComponent];
  }

  v9 = [v4 URLByAppendingPathComponent:v7];
  v10 = [DEUtils createDirectoryWithClassCDataProtection:v9];
  if (v10)
  {
    v11 = +[DELogging fwHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(DEAttachmentGroup *)v9 attachToDestinationDir:v10, v11];
    }
  }

  else
  {
    [(DEAttachmentItem *)self setAttachedPath:v9];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = [(DEAttachmentGroup *)self attachmentItems];
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v31 + 1) + 8 * i) attachToDestinationDir:v9];
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v13);
    }
  }

  v17 = [(DEAttachmentItem *)self attachedPath];
  if (v17)
  {
    v18 = v17;
    v19 = [(DEAttachmentItem *)self deleteOnAttach];
    v20 = [v19 BOOLValue];

    if (v20)
    {
      v21 = +[DELogging fwHandle];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [DEAttachmentGroup attachToDestinationDir:v21];
      }

      v22 = [(DEAttachmentGroup *)self rootURL];
      [DEUtils removeFile:v22];
    }
  }

  v23 = [(DEAttachmentItem *)self shouldCompress];
  v24 = [v23 BOOLValue];

  if (v24)
  {
    v25 = +[DELogging fwHandle];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [DEAttachmentGroup attachToDestinationDir:v25];
    }

    v26 = [(DEAttachmentItem *)self attachedPath];
    v27 = [DEArchiver archiveDirectoryAt:v26];
    [(DEAttachmentItem *)self setAttachedPath:v27];
  }

  v28 = [(DEAttachmentItem *)self attachedPath];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)attachToDestinationDir:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 localizedDescription];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_248AB3000, a3, OS_LOG_TYPE_ERROR, "error creating group directory [%{public}@] with error [%{public}@]", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end