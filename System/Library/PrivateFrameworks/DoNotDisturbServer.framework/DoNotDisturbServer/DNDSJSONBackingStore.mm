@interface DNDSJSONBackingStore
+ (unint64_t)dataWritingOptionsForSecurityClass:(unint64_t)class;
- (DNDSBackingStoreDelegate)delegate;
- (DNDSJSONBackingStore)initWithRecordClass:(Class)class fileURL:(id)l secureFileURL:(id)rL versionNumber:(unint64_t)number securityClass:(unint64_t)securityClass;
- (id)readRecordDictionaryfromURL:(id)l withError:(id *)error;
- (id)readRecordWithError:(id *)error;
- (unint64_t)writeRecord:(id)record writePartition:(BOOL)partition error:(id *)error;
- (unint64_t)writeRecordDictionary:(id)dictionary withSecurityClass:(unint64_t)class toURL:(id)l error:(id *)error;
- (void)dealloc;
@end

@implementation DNDSJSONBackingStore

- (DNDSJSONBackingStore)initWithRecordClass:(Class)class fileURL:(id)l secureFileURL:(id)rL versionNumber:(unint64_t)number securityClass:(unint64_t)securityClass
{
  lCopy = l;
  rLCopy = rL;
  v21.receiver = self;
  v21.super_class = DNDSJSONBackingStore;
  v14 = [(DNDSJSONBackingStore *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_recordClass = class;
    v16 = [lCopy copy];
    fileURL = v15->_fileURL;
    v15->_fileURL = v16;

    v18 = [rLCopy copy];
    secureFileURL = v15->_secureFileURL;
    v15->_secureFileURL = v18;

    v15->_versionNumber = number;
    v15->_securityClass = securityClass;
    DNDSRegisterSysdiagnoseDataProvider(v15);
  }

  return v15;
}

- (void)dealloc
{
  DNDSUnregisterSysdiagnoseDataProvider(self);
  v3.receiver = self;
  v3.super_class = DNDSJSONBackingStore;
  [(DNDSJSONBackingStore *)&v3 dealloc];
}

- (id)readRecordWithError:(id *)error
{
  v5 = objc_alloc_init(DNDSApplicationIdentifierMapper);
  v6 = objc_alloc_init(DNDSContactProvider);
  v7 = [(DNDSJSONBackingStore *)self readRecordDictionaryfromURL:self->_fileURL withError:error];
  if (self->_secureFileURL && [(objc_class *)self->_recordClass conformsToProtocol:&unk_285C5AFC8])
  {
    v8 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:3 redactSensitiveData:0 contactProvider:v6 applicationIdentifierMapper:v5];
    v9 = [(DNDSJSONBackingStore *)self readRecordDictionaryfromURL:self->_secureFileURL withError:error];
    v10 = [(objc_class *)self->_recordClass newWithDictionaryRepresentation:v7 partitionedDictionaryRepresentation:v9 context:v8];
  }

  else
  {
    v8 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:1 redactSensitiveData:0 contactProvider:v6 applicationIdentifierMapper:v5];
    v10 = [(objc_class *)self->_recordClass newWithDictionaryRepresentation:v7 context:v8];
  }

  return v10;
}

- (unint64_t)writeRecord:(id)record writePartition:(BOOL)partition error:(id *)error
{
  partitionCopy = partition;
  recordCopy = record;
  self->_deviceOutOfSpace = 0;
  context = objc_autoreleasePoolPush();
  v8 = objc_alloc_init(DNDSApplicationIdentifierMapper);
  v9 = objc_alloc_init(DNDSContactProvider);
  v10 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:1 redactSensitiveData:0 contactProvider:v9 applicationIdentifierMapper:v8];
  v11 = [recordCopy dictionaryRepresentationWithContext:v10];
  fileURL = self->_fileURL;
  v25 = 0;
  v13 = [(DNDSJSONBackingStore *)self writeRecordDictionary:v11 withSecurityClass:3 toURL:fileURL error:&v25];
  v14 = v25;
  if (partitionCopy && v13 == 2)
  {
    if (self->_secureFileURL)
    {
      context = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:2 redactSensitiveData:0 contactProvider:v9 applicationIdentifierMapper:v8, context];

      v16 = [recordCopy dictionaryRepresentationWithContext:context];
      securityClass = self->_securityClass;
      secureFileURL = self->_secureFileURL;
      v24 = v14;
      v13 = [(DNDSJSONBackingStore *)self writeRecordDictionary:v16 withSecurityClass:securityClass toURL:secureFileURL error:&v24];
      v19 = v24;

      v10 = context;
      v14 = v19;
    }

    else
    {
      v13 = 2;
    }
  }

  objc_autoreleasePoolPop(context);
  if (error)
  {
    v20 = v14;
    *error = v14;
  }

  return v13;
}

- (id)readRecordDictionaryfromURL:(id)l withError:(id *)error
{
  v46[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v9 = [defaultManager fileExistsAtPath:path];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v44 = 0;
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:0 error:&v44];
    v12 = v44;
    if (!v11)
    {
      v14 = 0;
      v18 = 0;
      goto LABEL_28;
    }

    v43 = 0;
    v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v11 options:0 error:&v43];
    v14 = v43;
    if (!v13)
    {
      v18 = 0;
LABEL_27:

LABEL_28:
      objc_autoreleasePoolPop(v10);
      if (!error)
      {
        goto LABEL_34;
      }

      goto LABEL_29;
    }

    v15 = objc_opt_class();
    v16 = v13;
    v42 = v13;
    if (v15)
    {
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v19 = v17;

    v40 = [v19 bs_safeObjectForKey:@"header" ofType:objc_opt_class()];
    v39 = [v40 bs_safeObjectForKey:@"version" ofType:objc_opt_class()];
    integerValue = [v39 integerValue];
    v41 = v19;
    if (integerValue <= self->_versionNumber)
    {
      v38 = v10;
      v37 = [v19 bs_safeObjectForKey:@"data" ofType:objc_opt_class()];
      firstObject = [v37 firstObject];
      v29 = objc_opt_class();
      v30 = firstObject;
      if (v29)
      {
        if (objc_opt_isKindOfClass())
        {
          v31 = v30;
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = 0;
      }

      v18 = v31;

      if (integerValue >= self->_versionNumber)
      {
        v26 = v37;
        v10 = v38;
        goto LABEL_26;
      }

      delegate = [(DNDSJSONBackingStore *)self delegate];
      v32 = [delegate backingStore:self migrateDictionaryRepresentation:v18 fromVersionNumber:integerValue toVersionNumber:self->_versionNumber];

      v18 = v32;
      v26 = v37;
      v10 = v38;
    }

    else
    {
      v21 = DNDSLogGeneral;
      if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
      {
        [(DNDSJSONBackingStore *)&self->_versionNumber readRecordDictionaryfromURL:integerValue withError:v21];
      }

      v22 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277D05840];
      v45 = *MEMORY[0x277CCA450];
      v46[0] = @"Unexpected version number";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      v25 = v23;
      v26 = v24;
      [v22 errorWithDomain:v25 code:1006 userInfo:v24];
      v18 = 0;
      v12 = delegate = v12;
    }

LABEL_26:
    v13 = v42;

    goto LABEL_27;
  }

  v14 = 0;
  v12 = 0;
  v18 = 0;
  if (!error)
  {
    goto LABEL_34;
  }

LABEL_29:
  if (v12 | v14)
  {
    if (v12)
    {
      v33 = v12;
    }

    else
    {
      v33 = v14;
    }

    *error = v33;
  }

LABEL_34:
  v34 = v18;

  v35 = *MEMORY[0x277D85DE8];
  return v18;
}

- (unint64_t)writeRecordDictionary:(id)dictionary withSecurityClass:(unint64_t)class toURL:(id)l error:(id *)error
{
  v46[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  lCopy = l;
  self->_deviceOutOfSpace = 0;
  context = objc_autoreleasePoolPush();
  v46[0] = dictionaryCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
  v44[0] = @"header";
  v42[0] = @"version";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_versionNumber];
  v42[1] = @"timestamp";
  v43[0] = v13;
  v14 = MEMORY[0x277CCABB0];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v15 = [v14 numberWithDouble:?];
  v43[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v44[1] = @"data";
  v45[0] = v16;
  v45[1] = v12;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];

  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v17])
  {
    classCopy = class;
    errorCopy = error;
    v41 = 0;
    v18 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v17 options:0 error:&v41];
    v19 = v41;
    if (!v18)
    {
      v28 = 0;
      v25 = 0;
      v29 = 0;
LABEL_17:

      error = errorCopy;
      goto LABEL_18;
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [lCopy path];
    v22 = [defaultManager fileExistsAtPath:path];

    v35 = defaultManager;
    if ((v22 & 1) == 0)
    {
      uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
      path2 = [uRLByDeletingLastPathComponent path];

      if (![defaultManager fileExistsAtPath:path2 isDirectory:0])
      {
        v40 = 0;
        v30 = [defaultManager createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:0 error:&v40];
        v25 = v40;

        if (!v30)
        {
          v28 = 0;
          goto LABEL_15;
        }

LABEL_7:
        v39 = 0;
        v26 = [v18 writeToURL:lCopy options:objc_msgSend(objc_opt_class() error:{"dataWritingOptionsForSecurityClass:", classCopy), &v39}];
        v27 = v39;
        v28 = v27;
        if (v26)
        {
          v29 = 2;
LABEL_16:

          goto LABEL_17;
        }

        if ([v27 dnds_isOutOfSpaceError])
        {
          v29 = 1;
          self->_deviceOutOfSpace = 1;
          goto LABEL_16;
        }

LABEL_15:
        v29 = 0;
        goto LABEL_16;
      }
    }

    v25 = 0;
    goto LABEL_7;
  }

  v28 = 0;
  v25 = 0;
  v19 = 0;
  v29 = 0;
LABEL_18:

  objc_autoreleasePoolPop(context);
  if (error && (v28 || v25 || v19))
  {
    if (v25)
    {
      v31 = v25;
    }

    else
    {
      v31 = v19;
    }

    if (v28)
    {
      v32 = v28;
    }

    else
    {
      v32 = v31;
    }

    *error = v32;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v29;
}

+ (unint64_t)dataWritingOptionsForSecurityClass:(unint64_t)class
{
  if (class > 3)
  {
    return 1;
  }

  else
  {
    return qword_2491FFA10[class];
  }
}

- (DNDSBackingStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)readRecordDictionaryfromURL:(os_log_t)log withError:.cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 134349312;
  v6 = a2;
  v7 = 2050;
  v8 = v3;
  _os_log_error_impl(&dword_24912E000, log, OS_LOG_TYPE_ERROR, "Unexpected version number %{public}llu (maximum version number %{public}llu)", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end