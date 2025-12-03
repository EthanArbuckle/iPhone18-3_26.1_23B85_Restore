@interface TDPersistentDocument
+ (id)_fileModificationDateForURL:(id)l;
- (BOOL)configurePersistentStoreCoordinatorForURL:(id)l ofType:(id)type modelConfiguration:(id)configuration storeOptions:(id)options error:(id *)error;
- (BOOL)readFromURL:(id)l ofType:(id)type error:(id *)error;
- (TDPersistentDocument)initWithContentsOfURL:(id)l ofType:(id)type error:(id *)error;
- (TDPersistentDocument)initWithType:(id)type error:(id *)error;
- (id)_persistentStoreCoordinator;
- (id)managedObjectContext;
- (id)managedObjectModel;
- (void)close;
- (void)dealloc;
- (void)setFileURL:(id)l;
- (void)setManagedObjectContext:(id)context;
@end

@implementation TDPersistentDocument

- (TDPersistentDocument)initWithContentsOfURL:(id)l ofType:(id)type error:(id *)error
{
  v8 = [(TDPersistentDocument *)self init];
  if (v8)
  {
    lCopy = l;
    v8->_fileURL = lCopy;
    if (![(TDPersistentDocument *)v8 readFromURL:lCopy ofType:type error:error])
    {

      return 0;
    }
  }

  return v8;
}

- (TDPersistentDocument)initWithType:(id)type error:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = [(TDPersistentDocument *)self init];
  if (v6)
  {
    v6->_fileType = [type copy];
    [(NSString *)NSTemporaryDirectory() getFileSystemRepresentation:v12 maxLength:1024];
    __strcat_chk();
    v7 = mkstemps(v12, 10);
    v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v12 isDirectory:0 relativeToURL:0];
    v6->_temporaryFileURL = v8;
    v9 = [(TDPersistentDocument *)v6 configurePersistentStoreCoordinatorForURL:v8 ofType:type modelConfiguration:0 storeOptions:0 error:error];
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

- (BOOL)readFromURL:(id)l ofType:(id)type error:(id *)error
{
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    if ([-[TDPersistentDocument _persistentStoreCoordinator](self "_persistentStoreCoordinator")])
    {
      return 1;
    }

    else
    {

      return [(TDPersistentDocument *)self configurePersistentStoreCoordinatorForURL:l ofType:type modelConfiguration:0 storeOptions:0 error:error];
    }
  }

  else if (error)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:260 userInfo:0];
    result = 0;
    *error = v10;
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

- (void)setManagedObjectContext:(id)context
{
  managedObjectContext = self->_managedObjectContext;
  if (managedObjectContext != context)
  {

    self->_managedObjectContext = context;
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
  managedObjectContext = [(TDPersistentDocument *)self managedObjectContext];
  if (!managedObjectContext)
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = *MEMORY[0x277CBE658];
    v6 = @"Couldn't create managed object context";
    goto LABEL_6;
  }

  result = [managedObjectContext persistentStoreCoordinator];
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

+ (id)_fileModificationDateForURL:(id)l
{
  v4 = 0;
  [l getResourceValue:&v4 forKey:*MEMORY[0x277CBE7B0] error:0];
  return v4;
}

- (void)setFileURL:(id)l
{
  fileURL = self->_fileURL;
  if (fileURL != l)
  {
    v16[7] = v3;
    v16[8] = v4;

    v9 = [l copy];
    self->_fileURL = v9;
    temporaryFileURL = self->_temporaryFileURL;
    if (temporaryFileURL && v9 != 0)
    {
      v16[0] = 0;
      v12 = temporaryFileURL;
      [(TDPersistentDocument *)self saveDocument:0];
      v13 = [-[TDPersistentDocument managedObjectContext](self "managedObjectContext")];
      persistentStores = [v13 persistentStores];
      if ([persistentStores count] != 1)
      {
        [(TDPersistentDocument *)a2 setFileURL:?];
      }

      v15 = [objc_msgSend(persistentStores objectAtIndex:{0), "options"}];
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

  temporaryFileURL = [(TDPersistentDocument *)self temporaryFileURL];
  if (temporaryFileURL)
  {
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    [(TDPersistentDocument *)self setTemporaryFileURL:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)configurePersistentStoreCoordinatorForURL:(id)l ofType:(id)type modelConfiguration:(id)configuration storeOptions:(id)options error:(id *)error
{
  _persistentStoreCoordinator = [(TDPersistentDocument *)self _persistentStoreCoordinator];
  fileURL = [(TDPersistentDocument *)self fileURL];
  v19 = [objc_msgSend(options objectForKey:{*MEMORY[0x277CBE1D8]), "BOOLValue"}];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (l && fileURL)
  {
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:{-[NSURL path](fileURL, "path")}];
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:{objc_msgSend(l, "path")}];
    v13 = [objc_opt_class() _fileModificationDateForURL:l];
  }

  if (options)
  {
    v14 = [options mutableCopy];
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v15 = v14;
  [v14 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 1), @"NSPersistentStoreRemoveStoreOnCleanup"}];
  [v15 setObject:&unk_2859AC560 forKey:*MEMORY[0x277CBE2E0]];
  v16 = [_persistentStoreCoordinator addPersistentStoreWithType:-[TDPersistentDocument persistentStoreTypeForFileType:](self configuration:"persistentStoreTypeForFileType:" URL:type) options:configuration error:{l, v15, error}] != 0;

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