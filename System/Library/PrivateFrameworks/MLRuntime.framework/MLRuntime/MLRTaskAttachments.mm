@interface MLRTaskAttachments
- (MLRTaskAttachments)initWithCoder:(id)coder;
- (MLRTaskAttachments)initWithContentsOfURL:(id)l error:(id *)error;
- (MLRTaskAttachments)initWithDESRecipe:(id)recipe;
- (MLRTaskAttachments)initWithURLs:(id)ls;
- (id)attachmentURLsForBasename:(id)basename;
- (id)description;
@end

@implementation MLRTaskAttachments

- (MLRTaskAttachments)initWithURLs:(id)ls
{
  lsCopy = ls;
  v9.receiver = self;
  v9.super_class = MLRTaskAttachments;
  v5 = [(MLRTaskAttachments *)&v9 init];
  if (v5)
  {
    v6 = [lsCopy copy];
    attachmentURLs = v5->_attachmentURLs;
    v5->_attachmentURLs = v6;
  }

  return v5;
}

- (MLRTaskAttachments)initWithDESRecipe:(id)recipe
{
  if (recipe)
  {
    attachments = [recipe attachments];
    self = [(MLRTaskAttachments *)self initWithURLs:attachments];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MLRTaskAttachments)initWithContentsOfURL:(id)l error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  uRLByResolvingSymlinksInPath = [l URLByResolvingSymlinksInPath];
  if (!uRLByResolvingSymlinksInPath)
  {
    v21 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Nil URL" userInfo:0];
    objc_exception_throw(v21);
  }

  v6 = uRLByResolvingSymlinksInPath;
  array = [MEMORY[0x277CBEB18] array];
  v8 = objc_autoreleasePoolPush();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [defaultManager enumeratorAtURL:v6 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 errorHandler:&__block_literal_global_1];

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
          uRLByStandardizingPath = [v16 URLByStandardizingPath];
          [array addObject:uRLByStandardizingPath];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  objc_autoreleasePoolPop(v8);
  v18 = [(MLRTaskAttachments *)self initWithURLs:array];

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

- (id)attachmentURLsForBasename:(id)basename
{
  v24 = *MEMORY[0x277D85DE8];
  basenameCopy = basename;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
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
        lastPathComponent = [v12 lastPathComponent];
        v14 = [lastPathComponent hasSuffix:basenameCopy];

        if (v14)
        {
          path = [v12 path];
          v16 = [defaultManager fileExistsAtPath:path];

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

- (MLRTaskAttachments)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"attachmentURLs"];

  v9 = [(MLRTaskAttachments *)self initWithURLs:v8];
  return v9;
}

@end