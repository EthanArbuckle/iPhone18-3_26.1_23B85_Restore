@interface CNFileManager
- (BOOL)fileExistsAtURL:(id)a3;
- (BOOL)fileExistsAtURL:(id)a3 isDirectory:(BOOL *)a4;
- (CNFileManager)init;
- (CNFileManager)initWithFileManager:(id)a3;
- (id)asyncDataWithContentsOfURL:(id)a3;
- (id)asyncWriteData:(id)a3 toURL:(id)a4 options:(unint64_t)a5;
- (id)containerURLForSecurityApplicationGroupIdentifier:(id)a3;
- (id)contentsOfDirectoryAtURL:(id)a3 includingPropertiesForKeys:(id)a4 options:(unint64_t)a5;
- (id)createDirectoryAtURL:(id)a3 withIntermediateDirectories:(BOOL)a4 attributes:(id)a5;
- (id)dataWithContentsOfURL:(id)a3;
- (id)observableWithContentsOfURL:(id)a3;
- (id)removeExtendedAttribute:(id)a3 atURL:(id)a4;
- (id)removeItemAtURL:(id)a3;
- (id)setValue:(id)a3 forExtendedAttribute:(id)a4 atURL:(id)a5;
- (id)valueForExtendedAttribute:(id)a3 atURL:(id)a4;
- (id)writeData:(id)a3 toURL:(id)a4 options:(unint64_t)a5;
@end

@implementation CNFileManager

- (CNFileManager)init
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(CNFileManager *)self initWithFileManager:v3];

  return v4;
}

- (CNFileManager)initWithFileManager:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNFileManager;
  v6 = [(CNFileManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileManager, a3);
    v8 = v7;
  }

  return v7;
}

- (id)dataWithContentsOfURL:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__CNFileManager_dataWithContentsOfURL___block_invoke;
  v7[3] = &unk_1E6ED5990;
  v8 = v3;
  v4 = v3;
  v5 = [CNResult resultWithBlock:v7];

  return v5;
}

- (id)writeData:(id)a3 toURL:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __41__CNFileManager_writeData_toURL_options___block_invoke;
  v14[3] = &unk_1E6ED71E8;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v17 = a5;
  v10 = v8;
  v11 = v9;
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

- (id)asyncDataWithContentsOfURL:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__CNFileManager_asyncDataWithContentsOfURL___block_invoke;
  v8[3] = &unk_1E6ED7210;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
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

- (id)asyncWriteData:(id)a3 toURL:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__CNFileManager_asyncWriteData_toURL_options___block_invoke;
  v14[3] = &unk_1E6ED71E8;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a5;
  v10 = v9;
  v11 = v8;
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

- (id)observableWithContentsOfURL:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CNData);
  v5 = [(CNData *)v4 observableWithContentsOfURL:v3];

  return v5;
}

- (BOOL)fileExistsAtURL:(id)a3
{
  fileManager = self->_fileManager;
  v4 = [a3 path];
  LOBYTE(fileManager) = [(NSFileManager *)fileManager fileExistsAtPath:v4];

  return fileManager;
}

- (BOOL)fileExistsAtURL:(id)a3 isDirectory:(BOOL *)a4
{
  fileManager = self->_fileManager;
  v6 = [a3 path];
  LOBYTE(a4) = [(NSFileManager *)fileManager fileExistsAtPath:v6 isDirectory:a4];

  return a4;
}

- (id)removeItemAtURL:(id)a3
{
  fileManager = self->_fileManager;
  v8 = 0;
  v4 = [(NSFileManager *)fileManager removeItemAtURL:a3 error:&v8];
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

- (id)createDirectoryAtURL:(id)a3 withIntermediateDirectories:(BOOL)a4 attributes:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__CNFileManager_createDirectoryAtURL_withIntermediateDirectories_attributes___block_invoke;
  v14[3] = &unk_1E6ED7238;
  v14[4] = self;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v10 = v9;
  v11 = v8;
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

- (id)contentsOfDirectoryAtURL:(id)a3 includingPropertiesForKeys:(id)a4 options:(unint64_t)a5
{
  fileManager = self->_fileManager;
  v10 = 0;
  v6 = [(NSFileManager *)fileManager contentsOfDirectoryAtURL:a3 includingPropertiesForKeys:a4 options:a5 error:&v10];
  v7 = v10;
  v8 = [CNResult resultWithValue:v6 orError:v7];

  return v8;
}

- (id)containerURLForSecurityApplicationGroupIdentifier:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSFileManager *)self->_fileManager containerURLForSecurityApplicationGroupIdentifier:a3];
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

- (id)setValue:(id)a3 forExtendedAttribute:(id)a4 atURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  fileManager = self->_fileManager;
  v12 = [v10 path];
  if (v8)
  {
    v20 = 0;
    v13 = [(NSFileManager *)fileManager _cn_setValue:v8 forExtendedAttribute:v9 path:v12 error:&v20];
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
    v16 = [(NSFileManager *)fileManager _cn_removeExtendedAttributeForKey:v9 path:v12 error:&v19];
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

- (id)valueForExtendedAttribute:(id)a3 atURL:(id)a4
{
  fileManager = self->_fileManager;
  v16 = 0;
  v6 = a3;
  v7 = [a4 path];
  v15 = 0;
  v8 = [(NSFileManager *)fileManager _cn_getValue:&v16 forExtendendAttribute:v6 path:v7 error:&v15];

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

- (id)removeExtendedAttribute:(id)a3 atURL:(id)a4
{
  fileManager = self->_fileManager;
  v6 = a3;
  v7 = [a4 path];
  v11 = 0;
  LODWORD(fileManager) = [(NSFileManager *)fileManager _cn_removeExtendedAttributeForKey:v6 path:v7 error:&v11];

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