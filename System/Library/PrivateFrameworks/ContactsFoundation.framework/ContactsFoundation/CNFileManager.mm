@interface CNFileManager
- (BOOL)fileExistsAtURL:(id)l;
- (BOOL)fileExistsAtURL:(id)l isDirectory:(BOOL *)directory;
- (CNFileManager)init;
- (CNFileManager)initWithFileManager:(id)manager;
- (id)asyncDataWithContentsOfURL:(id)l;
- (id)asyncWriteData:(id)data toURL:(id)l options:(unint64_t)options;
- (id)containerURLForSecurityApplicationGroupIdentifier:(id)identifier;
- (id)contentsOfDirectoryAtURL:(id)l includingPropertiesForKeys:(id)keys options:(unint64_t)options;
- (id)createDirectoryAtURL:(id)l withIntermediateDirectories:(BOOL)directories attributes:(id)attributes;
- (id)dataWithContentsOfURL:(id)l;
- (id)observableWithContentsOfURL:(id)l;
- (id)removeExtendedAttribute:(id)attribute atURL:(id)l;
- (id)removeItemAtURL:(id)l;
- (id)setValue:(id)value forExtendedAttribute:(id)attribute atURL:(id)l;
- (id)valueForExtendedAttribute:(id)attribute atURL:(id)l;
- (id)writeData:(id)data toURL:(id)l options:(unint64_t)options;
@end

@implementation CNFileManager

- (CNFileManager)init
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(CNFileManager *)self initWithFileManager:defaultManager];

  return v4;
}

- (CNFileManager)initWithFileManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = CNFileManager;
  v6 = [(CNFileManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileManager, manager);
    v8 = v7;
  }

  return v7;
}

- (id)dataWithContentsOfURL:(id)l
{
  lCopy = l;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__CNFileManager_dataWithContentsOfURL___block_invoke;
  v7[3] = &unk_1E6ED5990;
  v8 = lCopy;
  v4 = lCopy;
  v5 = [CNResult resultWithBlock:v7];

  return v5;
}

- (id)writeData:(id)data toURL:(id)l options:(unint64_t)options
{
  dataCopy = data;
  lCopy = l;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __41__CNFileManager_writeData_toURL_options___block_invoke;
  v14[3] = &unk_1E6ED71E8;
  v14[4] = self;
  v15 = lCopy;
  v16 = dataCopy;
  optionsCopy = options;
  v10 = dataCopy;
  v11 = lCopy;
  v12 = [CNResult resultWithBlock:v14];

  return v12;
}

id __41__CNFileManager_writeData_toURL_options___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = [*(a1 + 40) URLByDeletingLastPathComponent];
    v17 = 0;
    v7 = [v5 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v17];
    v8 = v17;

    if (!v7)
    {
      goto LABEL_6;
    }

    v4 = *(a1 + 56);
  }

  v9 = [CNData NSDataWritingOptionsFromCNDataWritingOptions:v4];
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v16 = 0;
  v12 = [v10 writeToURL:v11 options:v9 error:&v16];
  v8 = v16;
  if (v12)
  {
    v13 = *(a1 + 40);
    goto LABEL_9;
  }

LABEL_6:
  if (a2)
  {
    v14 = v8;
    v13 = 0;
    *a2 = v8;
  }

  else
  {
    v13 = 0;
  }

LABEL_9:

  return v13;
}

- (id)asyncDataWithContentsOfURL:(id)l
{
  lCopy = l;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__CNFileManager_asyncDataWithContentsOfURL___block_invoke;
  v8[3] = &unk_1E6ED7210;
  v8[4] = self;
  v9 = lCopy;
  v5 = lCopy;
  v6 = [CNFuture futureWithBlock:v8];

  return v6;
}

id __44__CNFileManager_asyncDataWithContentsOfURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) dataWithContentsOfURL:*(a1 + 40)];
  v4 = [v3 value];
  v5 = [v3 error];
  v6 = v4;
  v7 = v6;
  if (a2 && !v6)
  {
    v8 = v5;
    *a2 = v5;
  }

  return v7;
}

- (id)asyncWriteData:(id)data toURL:(id)l options:(unint64_t)options
{
  dataCopy = data;
  lCopy = l;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__CNFileManager_asyncWriteData_toURL_options___block_invoke;
  v14[3] = &unk_1E6ED71E8;
  v14[4] = self;
  v15 = dataCopy;
  v16 = lCopy;
  optionsCopy = options;
  v10 = lCopy;
  v11 = dataCopy;
  v12 = [CNFuture futureWithBlock:v14];

  return v12;
}

id __46__CNFileManager_asyncWriteData_toURL_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) writeData:*(a1 + 40) toURL:*(a1 + 48) options:*(a1 + 56)];
  v4 = [v3 value];
  v5 = [v3 error];
  v6 = v4;
  v7 = v6;
  if (a2 && !v6)
  {
    v8 = v5;
    *a2 = v5;
  }

  return v7;
}

- (id)observableWithContentsOfURL:(id)l
{
  lCopy = l;
  v4 = objc_alloc_init(CNData);
  v5 = [(CNData *)v4 observableWithContentsOfURL:lCopy];

  return v5;
}

- (BOOL)fileExistsAtURL:(id)l
{
  fileManager = self->_fileManager;
  path = [l path];
  LOBYTE(fileManager) = [(NSFileManager *)fileManager fileExistsAtPath:path];

  return fileManager;
}

- (BOOL)fileExistsAtURL:(id)l isDirectory:(BOOL *)directory
{
  fileManager = self->_fileManager;
  path = [l path];
  LOBYTE(directory) = [(NSFileManager *)fileManager fileExistsAtPath:path isDirectory:directory];

  return directory;
}

- (id)removeItemAtURL:(id)l
{
  fileManager = self->_fileManager;
  v8 = 0;
  v4 = [(NSFileManager *)fileManager removeItemAtURL:l error:&v8];
  v5 = v8;
  if (v4)
  {
    [CNResult successWithValue:MEMORY[0x1E695E118]];
  }

  else
  {
    [CNResult failureWithError:v5];
  }
  v6 = ;

  return v6;
}

- (id)createDirectoryAtURL:(id)l withIntermediateDirectories:(BOOL)directories attributes:(id)attributes
{
  lCopy = l;
  attributesCopy = attributes;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__CNFileManager_createDirectoryAtURL_withIntermediateDirectories_attributes___block_invoke;
  v14[3] = &unk_1E6ED7238;
  v14[4] = self;
  v15 = lCopy;
  directoriesCopy = directories;
  v16 = attributesCopy;
  v10 = attributesCopy;
  v11 = lCopy;
  v12 = [CNResult resultWithBlock:v14];

  return v12;
}

id __77__CNFileManager_createDirectoryAtURL_withIntermediateDirectories_attributes___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) fileManager];
  LODWORD(a2) = [v4 createDirectoryAtURL:*(a1 + 40) withIntermediateDirectories:*(a1 + 56) attributes:*(a1 + 48) error:a2];

  if (a2)
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)contentsOfDirectoryAtURL:(id)l includingPropertiesForKeys:(id)keys options:(unint64_t)options
{
  fileManager = self->_fileManager;
  v10 = 0;
  v6 = [(NSFileManager *)fileManager contentsOfDirectoryAtURL:l includingPropertiesForKeys:keys options:options error:&v10];
  v7 = v10;
  v8 = [CNResult resultWithValue:v6 orError:v7];

  return v8;
}

- (id)containerURLForSecurityApplicationGroupIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSFileManager *)self->_fileManager containerURLForSecurityApplicationGroupIdentifier:identifier];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v9 = *MEMORY[0x1E696A578];
    v10[0] = @"Failed to find the container URL for the given application group identifier";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:13 userInfo:v5];
  }

  v6 = [CNResult resultWithValue:v3 orError:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)setValue:(id)value forExtendedAttribute:(id)attribute atURL:(id)l
{
  valueCopy = value;
  attributeCopy = attribute;
  lCopy = l;
  fileManager = self->_fileManager;
  path = [lCopy path];
  if (valueCopy)
  {
    v20 = 0;
    v13 = [(NSFileManager *)fileManager _cn_setValue:valueCopy forExtendedAttribute:attributeCopy path:path error:&v20];
    v14 = v20;

    if (v13)
    {
LABEL_3:
      v15 = [CNResult successWithValue:MEMORY[0x1E695E118]];
      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    v16 = [(NSFileManager *)fileManager _cn_removeExtendedAttributeForKey:attributeCopy path:path error:&v19];
    v14 = v19;

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v15 = [CNResult failureWithError:v14];
LABEL_6:
  v17 = v15;

  return v17;
}

- (id)valueForExtendedAttribute:(id)attribute atURL:(id)l
{
  fileManager = self->_fileManager;
  v16 = 0;
  attributeCopy = attribute;
  path = [l path];
  v15 = 0;
  v8 = [(NSFileManager *)fileManager _cn_getValue:&v16 forExtendendAttribute:attributeCopy path:path error:&v15];

  v9 = v16;
  v10 = v15;

  if (v8)
  {
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1EF441028;
    }

    v12 = [CNResult successWithValue:v11];
  }

  else
  {
    v12 = [CNResult failureWithError:v10];
  }

  v13 = v12;

  return v13;
}

- (id)removeExtendedAttribute:(id)attribute atURL:(id)l
{
  fileManager = self->_fileManager;
  attributeCopy = attribute;
  path = [l path];
  v11 = 0;
  LODWORD(fileManager) = [(NSFileManager *)fileManager _cn_removeExtendedAttributeForKey:attributeCopy path:path error:&v11];

  v8 = v11;
  if (fileManager)
  {
    [CNResult successWithValue:MEMORY[0x1E695E118]];
  }

  else
  {
    [CNResult failureWithError:v8];
  }
  v9 = ;

  return v9;
}

@end