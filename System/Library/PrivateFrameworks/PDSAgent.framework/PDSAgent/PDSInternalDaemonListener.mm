@interface PDSInternalDaemonListener
- (PDSInternalDaemonListener)initWithKVStore:(id)store;
- (void)kvStateDumpWithCompletion:(id)completion;
- (void)setDataValue:(id)value forKey:(id)key withCompletion:(id)completion;
- (void)setNumberValue:(id)value forKey:(id)key withCompletion:(id)completion;
- (void)setStringValue:(id)value forKey:(id)key withCompletion:(id)completion;
- (void)stringRepresentationForKey:(id)key withCompletion:(id)completion;
@end

@implementation PDSInternalDaemonListener

- (PDSInternalDaemonListener)initWithKVStore:(id)store
{
  storeCopy = store;
  if (!storeCopy)
  {
    [(PDSInternalDaemonListener *)a2 initWithKVStore:?];
  }

  v10.receiver = self;
  v10.super_class = PDSInternalDaemonListener;
  v7 = [(PDSInternalDaemonListener *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_kvStore, store);
  }

  return v8;
}

- (void)setStringValue:(id)value forKey:(id)key withCompletion:(id)completion
{
  valueCopy = value;
  keyCopy = key;
  if (keyCopy)
  {
    completionCopy = completion;
    kvStore = [(PDSInternalDaemonListener *)self kvStore];
    [kvStore setString:valueCopy forKey:keyCopy];

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D37B20];
    completionCopy2 = completion;
    completionCopy = [v11 errorWithDomain:v12 code:-305 userInfo:0];
    (*(completion + 2))(completionCopy2, completionCopy);
  }
}

- (void)setNumberValue:(id)value forKey:(id)key withCompletion:(id)completion
{
  valueCopy = value;
  keyCopy = key;
  if (keyCopy)
  {
    completionCopy = completion;
    kvStore = [(PDSInternalDaemonListener *)self kvStore];
    [kvStore setNumber:valueCopy forKey:keyCopy];

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D37B20];
    completionCopy2 = completion;
    completionCopy = [v11 errorWithDomain:v12 code:-305 userInfo:0];
    (*(completion + 2))(completionCopy2, completionCopy);
  }
}

- (void)setDataValue:(id)value forKey:(id)key withCompletion:(id)completion
{
  valueCopy = value;
  keyCopy = key;
  if (keyCopy)
  {
    completionCopy = completion;
    kvStore = [(PDSInternalDaemonListener *)self kvStore];
    [kvStore setData:valueCopy forKey:keyCopy];

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D37B20];
    completionCopy2 = completion;
    completionCopy = [v11 errorWithDomain:v12 code:-305 userInfo:0];
    (*(completion + 2))(completionCopy2, completionCopy);
  }
}

- (void)stringRepresentationForKey:(id)key withCompletion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  if (keyCopy)
  {
    kvStore = [(PDSInternalDaemonListener *)self kvStore];
    v8 = [kvStore stringForKey:keyCopy];

    if (v8)
    {
      completionCopy[2](completionCopy, v8, 0);
    }

    else
    {
      kvStore2 = [(PDSInternalDaemonListener *)self kvStore];
      v10 = [kvStore2 dataForKey:keyCopy];

      if (v10)
      {
        __imHexString = [v10 __imHexString];
        completionCopy[2](completionCopy, __imHexString, 0);
      }

      else
      {
        kvStore3 = [(PDSInternalDaemonListener *)self kvStore];
        __imHexString = [kvStore3 numberForKey:keyCopy];

        if (__imHexString)
        {
          stringValue = [__imHexString stringValue];
          completionCopy[2](completionCopy, stringValue, 0);
        }

        else
        {
          completionCopy[2](completionCopy, 0, 0);
        }
      }
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B20] code:-305 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v8);
  }
}

- (void)kvStateDumpWithCompletion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  kvStore = [(PDSInternalDaemonListener *)self kvStore];
  allStoredValues = [kvStore allStoredValues];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = allStoredValues;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 setObject:v13 forKeyedSubscript:v12];
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          stringValue = [v13 stringValue];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_13;
          }

          stringValue = [v13 __imHexString];
        }

        v15 = stringValue;
        [v6 setObject:stringValue forKeyedSubscript:v12];

LABEL_13:
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  completionCopy[2](completionCopy, v6, 0);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)initWithKVStore:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PDSInternalDaemonListener.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"kvStore"}];
}

@end