@interface PDSInternalDaemonListener
- (PDSInternalDaemonListener)initWithKVStore:(id)a3;
- (void)kvStateDumpWithCompletion:(id)a3;
- (void)setDataValue:(id)a3 forKey:(id)a4 withCompletion:(id)a5;
- (void)setNumberValue:(id)a3 forKey:(id)a4 withCompletion:(id)a5;
- (void)setStringValue:(id)a3 forKey:(id)a4 withCompletion:(id)a5;
- (void)stringRepresentationForKey:(id)a3 withCompletion:(id)a4;
@end

@implementation PDSInternalDaemonListener

- (PDSInternalDaemonListener)initWithKVStore:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(PDSInternalDaemonListener *)a2 initWithKVStore:?];
  }

  v10.receiver = self;
  v10.super_class = PDSInternalDaemonListener;
  v7 = [(PDSInternalDaemonListener *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_kvStore, a3);
  }

  return v8;
}

- (void)setStringValue:(id)a3 forKey:(id)a4 withCompletion:(id)a5
{
  v14 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = a5;
    v10 = [(PDSInternalDaemonListener *)self kvStore];
    [v10 setString:v14 forKey:v8];

    v9[2](v9, 0);
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D37B20];
    v13 = a5;
    v9 = [v11 errorWithDomain:v12 code:-305 userInfo:0];
    (*(a5 + 2))(v13, v9);
  }
}

- (void)setNumberValue:(id)a3 forKey:(id)a4 withCompletion:(id)a5
{
  v14 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = a5;
    v10 = [(PDSInternalDaemonListener *)self kvStore];
    [v10 setNumber:v14 forKey:v8];

    v9[2](v9, 0);
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D37B20];
    v13 = a5;
    v9 = [v11 errorWithDomain:v12 code:-305 userInfo:0];
    (*(a5 + 2))(v13, v9);
  }
}

- (void)setDataValue:(id)a3 forKey:(id)a4 withCompletion:(id)a5
{
  v14 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = a5;
    v10 = [(PDSInternalDaemonListener *)self kvStore];
    [v10 setData:v14 forKey:v8];

    v9[2](v9, 0);
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D37B20];
    v13 = a5;
    v9 = [v11 errorWithDomain:v12 code:-305 userInfo:0];
    (*(a5 + 2))(v13, v9);
  }
}

- (void)stringRepresentationForKey:(id)a3 withCompletion:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v14)
  {
    v7 = [(PDSInternalDaemonListener *)self kvStore];
    v8 = [v7 stringForKey:v14];

    if (v8)
    {
      v6[2](v6, v8, 0);
    }

    else
    {
      v9 = [(PDSInternalDaemonListener *)self kvStore];
      v10 = [v9 dataForKey:v14];

      if (v10)
      {
        v11 = [v10 __imHexString];
        v6[2](v6, v11, 0);
      }

      else
      {
        v12 = [(PDSInternalDaemonListener *)self kvStore];
        v11 = [v12 numberForKey:v14];

        if (v11)
        {
          v13 = [v11 stringValue];
          v6[2](v6, v13, 0);
        }

        else
        {
          v6[2](v6, 0, 0);
        }
      }
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B20] code:-305 userInfo:0];
    (v6)[2](v6, 0, v8);
  }
}

- (void)kvStateDumpWithCompletion:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v4 = [(PDSInternalDaemonListener *)self kvStore];
  v5 = [v4 allStoredValues];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
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
          v14 = [v13 stringValue];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_13;
          }

          v14 = [v13 __imHexString];
        }

        v15 = v14;
        [v6 setObject:v14 forKeyedSubscript:v12];

LABEL_13:
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v17[2](v17, v6, 0);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)initWithKVStore:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PDSInternalDaemonListener.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"kvStore"}];
}

@end