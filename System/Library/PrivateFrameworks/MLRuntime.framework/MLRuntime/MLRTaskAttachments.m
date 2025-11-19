@interface MLRTaskAttachments
- (MLRTaskAttachments)initWithCoder:(id)a3;
- (MLRTaskAttachments)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (MLRTaskAttachments)initWithDESRecipe:(id)a3;
- (MLRTaskAttachments)initWithURLs:(id)a3;
- (id)attachmentURLsForBasename:(id)a3;
- (id)description;
@end

@implementation MLRTaskAttachments

- (MLRTaskAttachments)initWithURLs:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MLRTaskAttachments;
  v5 = [(MLRTaskAttachments *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    attachmentURLs = v5->_attachmentURLs;
    v5->_attachmentURLs = v6;
  }

  return v5;
}

- (MLRTaskAttachments)initWithDESRecipe:(id)a3
{
  if (a3)
  {
    v4 = [a3 attachments];
    self = [(MLRTaskAttachments *)self initWithURLs:v4];

    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MLRTaskAttachments)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [a3 URLByResolvingSymlinksInPath];
  if (!v5)
  {
    v21 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Nil URL" userInfo:0];
    objc_exception_throw(v21);
  }

  v6 = v5;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v9 enumeratorAtURL:v6 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 errorHandler:&__block_literal_global_1];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if (([v16 hasDirectoryPath] & 1) == 0)
        {
          v17 = [v16 URLByStandardizingPath];
          [v7 addObject:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  objc_autoreleasePoolPop(v8);
  v18 = [(MLRTaskAttachments *)self initWithURLs:v7];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __50__MLRTaskAttachments_initWithContentsOfURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if ([v5 code] != 260)
  {
    v6 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2577CB000, v6, OS_LOG_TYPE_DEFAULT, "Fail to enumerate %@: %@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@(%@)\n", v5, self->_attachmentURLs];

  return v6;
}

- (id)attachmentURLsForBasename:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_attachmentURLs;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 lastPathComponent];
        v14 = [v13 hasSuffix:v4];

        if (v14)
        {
          v15 = [v12 path];
          v16 = [v6 fileExistsAtPath:v15];

          if (v16)
          {
            [v5 addObject:v12];
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (MLRTaskAttachments)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"attachmentURLs"];

  v9 = [(MLRTaskAttachments *)self initWithURLs:v8];
  return v9;
}

@end