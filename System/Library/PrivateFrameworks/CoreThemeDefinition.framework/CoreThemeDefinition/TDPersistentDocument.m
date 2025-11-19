@interface TDPersistentDocument
+ (id)_fileModificationDateForURL:(id)a3;
- (BOOL)configurePersistentStoreCoordinatorForURL:(id)a3 ofType:(id)a4 modelConfiguration:(id)a5 storeOptions:(id)a6 error:(id *)a7;
- (BOOL)readFromURL:(id)a3 ofType:(id)a4 error:(id *)a5;
- (TDPersistentDocument)initWithContentsOfURL:(id)a3 ofType:(id)a4 error:(id *)a5;
- (TDPersistentDocument)initWithType:(id)a3 error:(id *)a4;
- (id)_persistentStoreCoordinator;
- (id)managedObjectContext;
- (id)managedObjectModel;
- (void)close;
- (void)dealloc;
- (void)setFileURL:(id)a3;
- (void)setManagedObjectContext:(id)a3;
@end

@implementation TDPersistentDocument

- (TDPersistentDocument)initWithContentsOfURL:(id)a3 ofType:(id)a4 error:(id *)a5
{
  v8 = [(TDPersistentDocument *)self init];
  if (v8)
  {
    v9 = a3;
    v8->_fileURL = v9;
    if (![(TDPersistentDocument *)v8 readFromURL:v9 ofType:a4 error:a5])
    {

      return 0;
    }
  }

  return v8;
}

- (TDPersistentDocument)initWithType:(id)a3 error:(id *)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = [(TDPersistentDocument *)self init];
  if (v6)
  {
    v6->_fileType = [a3 copy];
    [(NSString *)NSTemporaryDirectory() getFileSystemRepresentation:v12 maxLength:1024];
    __strcat_chk();
    v7 = mkstemps(v12, 10);
    v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v12 isDirectory:0 relativeToURL:0];
    v6->_temporaryFileURL = v8;
    v9 = [(TDPersistentDocument *)v6 configurePersistentStoreCoordinatorForURL:v8 ofType:a3 modelConfiguration:0 storeOptions:0 error:a4];
    close(v7);
    if (!v9)
    {

      v6 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  self->_fileURL = 0;
  [(TDPersistentDocument *)self setManagedObjectContext:0];

  v3.receiver = self;
  v3.super_class = TDPersistentDocument;
  [(TDPersistentDocument *)&v3 dealloc];
}

- (BOOL)readFromURL:(id)a3 ofType:(id)a4 error:(id *)a5
{
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    if ([-[TDPersistentDocument _persistentStoreCoordinator](self "_persistentStoreCoordinator")])
    {
      return 1;
    }

    else
    {

      return [(TDPersistentDocument *)self configurePersistentStoreCoordinatorForURL:a3 ofType:a4 modelConfiguration:0 storeOptions:0 error:a5];
    }
  }

  else if (a5)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:260 userInfo:0];
    result = 0;
    *a5 = v10;
  }

  else
  {
    return 0;
  }

  return result;
}

- (id)managedObjectModel
{
  result = self->_managedObjectModel;
  if (!result)
  {
    result = [MEMORY[0x277CBE450] mergedModelFromBundles:0];
    self->_managedObjectModel = result;
  }

  return result;
}

- (void)setManagedObjectContext:(id)a3
{
  managedObjectContext = self->_managedObjectContext;
  if (managedObjectContext != a3)
  {

    self->_managedObjectContext = a3;
  }
}

- (id)managedObjectContext
{
  result = self->_managedObjectContext;
  if (!result)
  {
    v4 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:{-[TDPersistentDocument managedObjectModel](self, "managedObjectModel")}];
    v5 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:2];
    [v5 setPersistentStoreCoordinator:v4];
    [(TDPersistentDocument *)self setManagedObjectContext:v5];

    return self->_managedObjectContext;
  }

  return result;
}

- (id)_persistentStoreCoordinator
{
  v2 = [(TDPersistentDocument *)self managedObjectContext];
  if (!v2)
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = *MEMORY[0x277CBE658];
    v6 = @"Couldn't create managed object context";
    goto LABEL_6;
  }

  result = [v2 persistentStoreCoordinator];
  if (!result)
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = *MEMORY[0x277CBE658];
    v6 = @"Couldn't access persistent store coordinator";
LABEL_6:
    objc_exception_throw([v4 exceptionWithName:v5 reason:v6 userInfo:0]);
  }

  return result;
}

+ (id)_fileModificationDateForURL:(id)a3
{
  v4 = 0;
  [a3 getResourceValue:&v4 forKey:*MEMORY[0x277CBE7B0] error:0];
  return v4;
}

- (void)setFileURL:(id)a3
{
  fileURL = self->_fileURL;
  if (fileURL != a3)
  {
    v16[7] = v3;
    v16[8] = v4;

    v9 = [a3 copy];
    self->_fileURL = v9;
    temporaryFileURL = self->_temporaryFileURL;
    if (temporaryFileURL && v9 != 0)
    {
      v16[0] = 0;
      v12 = temporaryFileURL;
      [(TDPersistentDocument *)self saveDocument:0];
      v13 = [-[TDPersistentDocument managedObjectContext](self "managedObjectContext")];
      v14 = [v13 persistentStores];
      if ([v14 count] != 1)
      {
        [(TDPersistentDocument *)a2 setFileURL:?];
      }

      v15 = [objc_msgSend(v14 objectAtIndex:{0), "options"}];
      if (([v13 _replacePersistentStoreAtURL:self->_fileURL destinationOptions:v15 withPersistentStoreFromURL:v12 sourceOptions:v15 storeType:*MEMORY[0x277CBE2E8] error:v16] & 1) == 0)
      {
        NSLog(&cfstr_Tdpersistentdo_1.isa, v12, self->_fileURL, v16[0]);
      }
    }
  }
}

- (void)close
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [objc_msgSend(objc_msgSend(-[TDPersistentDocument managedObjectContext](self "managedObjectContext")];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [objc_msgSend(-[TDPersistentDocument managedObjectContext](self "managedObjectContext")];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = [(TDPersistentDocument *)self temporaryFileURL];
  if (v8)
  {
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    [(TDPersistentDocument *)self setTemporaryFileURL:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)configurePersistentStoreCoordinatorForURL:(id)a3 ofType:(id)a4 modelConfiguration:(id)a5 storeOptions:(id)a6 error:(id *)a7
{
  v20 = [(TDPersistentDocument *)self _persistentStoreCoordinator];
  v10 = [(TDPersistentDocument *)self fileURL];
  v19 = [objc_msgSend(a6 objectForKey:{*MEMORY[0x277CBE1D8]), "BOOLValue"}];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (a3 && v10)
  {
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:{-[NSURL path](v10, "path")}];
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:{objc_msgSend(a3, "path")}];
    v13 = [objc_opt_class() _fileModificationDateForURL:a3];
  }

  if (a6)
  {
    v14 = [a6 mutableCopy];
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v15 = v14;
  [v14 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 1), @"NSPersistentStoreRemoveStoreOnCleanup"}];
  [v15 setObject:&unk_2859AC560 forKey:*MEMORY[0x277CBE2E0]];
  v16 = [v20 addPersistentStoreWithType:-[TDPersistentDocument persistentStoreTypeForFileType:](self configuration:"persistentStoreTypeForFileType:" URL:a4) options:a5 error:{a3, v15, a7}] != 0;

  if (v13)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 && ([objc_msgSend(objc_opt_class() _fileModificationDateForURL:{v12), "isEqualToDate:", v13}] & 1) == 0 && ((v19 ^ 1) & 1) == 0)
  {
    [(TDPersistentDocument *)self setFileURL:v11];
  }

  return v16;
}

- (uint64_t)setFileURL:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"TDPersistentDocument.m" lineNumber:174 description:@"-[TDPersistentDocument setFileURL:] expects exactly one persistent store."];
}

@end