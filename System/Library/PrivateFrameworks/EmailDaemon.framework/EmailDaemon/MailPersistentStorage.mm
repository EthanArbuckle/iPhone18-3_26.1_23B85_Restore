@interface MailPersistentStorage
+ (id)defaultFilePath;
+ (id)sharedStorage;
+ (void)wipePersistentStorage;
- (MailPersistentStorage)init;
- (MailPersistentStorage)initWithFilePath:(id)a3;
- (id)_objectForKey:(id)a3 inGroup:(id)a4;
- (id)bodyBackfillDateForSource:(id)a3;
- (id)fetchDateForSource:(id)a3;
- (void)_setObject:(id)a3 forKey:(id)a4 inGroup:(id)a5;
- (void)removeAllDataBelongingToAccount:(id)a3;
- (void)save;
- (void)searchedServer;
- (void)setBodyBackfillDate:(id)a3 forSource:(id)a4;
- (void)setFetchDate:(id)a3 forSource:(id)a4;
- (void)touchLastLoadOlder;
@end

@implementation MailPersistentStorage

+ (id)sharedStorage
{
  pthread_once(&stru_100183650, sub_10003346C);
  v2 = qword_100185618;

  return v2;
}

+ (id)defaultFilePath
{
  v2 = MFMailDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"metadata.plist"];

  return v3;
}

+ (void)wipePersistentStorage
{
  v2 = qword_100185618;
  qword_100185618 = 0;

  sub_10003346C();
}

- (MailPersistentStorage)initWithFilePath:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MailPersistentStorage;
  v5 = [(MailPersistentStorage *)&v15 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSOperationQueue);
    saveOperationQueue = v5->_saveOperationQueue;
    v5->_saveOperationQueue = v6;

    [(NSOperationQueue *)v5->_saveOperationQueue setQualityOfService:17];
    [(NSOperationQueue *)v5->_saveOperationQueue setMaxConcurrentOperationCount:1];
    v8 = [v4 copy];
    filePath = v5->_filePath;
    v5->_filePath = v8;

    v10 = [[NSMutableDictionary alloc] initWithContentsOfFile:v4];
    groups = v5->_groups;
    v5->_groups = v10;

    if (!v5->_groups)
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      v13 = v5->_groups;
      v5->_groups = v12;
    }
  }

  return v5;
}

- (MailPersistentStorage)init
{
  v3 = [objc_opt_class() defaultFilePath];
  v4 = [(MailPersistentStorage *)self initWithFilePath:v3];

  return v4;
}

- (void)save
{
  [(MailPersistentStorage *)self mf_lock];
  v4 = [[MailPersistentStorageSaveOperation alloc] initWithDestinationPath:self->_filePath groupDictionary:self->_groups];
  [(MailPersistentStorage *)self mf_unlock];
  v3 = [(MailPersistentStorage *)self saveOperationQueue];
  [v3 addOperation:v4];
}

- (void)_setObject:(id)a3 forKey:(id)a4 inGroup:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    __assert_rtn("[MailPersistentStorage _setObject:forKey:inGroup:]", "MailPersistentStorage.m", 165, "key");
  }

  [(MailPersistentStorage *)self mf_lock];
  if (!v9)
  {
    v9 = @"GenericData";
  }

  v10 = [(NSMutableDictionary *)self->_groups objectForKey:v9];
  if (!v10)
  {
    v10 = +[NSMutableDictionary dictionary];
  }

  if (v11)
  {
    [v10 setObject:v11 forKey:v8];
  }

  else
  {
    [v10 removeObjectForKey:v8];
  }

  [(NSMutableDictionary *)self->_groups setObject:v10 forKey:v9];
  [(MailPersistentStorage *)self mf_unlock];
}

- (id)_objectForKey:(id)a3 inGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v11 = "group";
    v12 = 185;
    goto LABEL_8;
  }

  if (!v6)
  {
    v11 = "key";
    v12 = 186;
LABEL_8:
    __assert_rtn("[MailPersistentStorage _objectForKey:inGroup:]", "MailPersistentStorage.m", v12, v11);
  }

  [(MailPersistentStorage *)self mf_lock];
  v8 = [(NSMutableDictionary *)self->_groups objectForKeyedSubscript:v7];
  v9 = [v8 objectForKeyedSubscript:v6];
  [(MailPersistentStorage *)self mf_unlock];

  return v9;
}

- (void)setFetchDate:(id)a3 forSource:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v6)
  {
    [(MailPersistentStorage *)self _setObject:v7 forKey:v6 inGroup:@"FetchingData"];
  }
}

- (id)fetchDateForSource:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MailPersistentStorage *)self _objectForKey:v4 inGroup:@"FetchingData"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setBodyBackfillDate:(id)a3 forSource:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v6)
  {
    [(MailPersistentStorage *)self _setObject:v7 forKey:v6 inGroup:@"BodyBackfillData"];
  }
}

- (id)bodyBackfillDateForSource:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MailPersistentStorage *)self _objectForKey:v4 inGroup:@"BodyBackfillData"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)touchLastLoadOlder
{
  v3 = +[NSDate date];
  [MailPersistentStorage _setObject:"_setObject:forKey:inGroup:" forKey:? inGroup:?];
}

- (void)searchedServer
{
  v3 = +[NSDate date];
  [MailPersistentStorage _setObject:"_setObject:forKey:inGroup:" forKey:? inGroup:?];
}

- (void)removeAllDataBelongingToAccount:(id)a3
{
  v4 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [&off_100163738 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v5)
  {
    v18 = *v30;
    do
    {
      v19 = v5;
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(&off_100163738);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v20 = [(NSMutableDictionary *)self->_groups objectForKey:v7];
        v8 = objc_alloc_init(NSMutableArray);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v9 = [v20 allKeys];
          v10 = [v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
          if (v10)
          {
            v11 = *v26;
            do
            {
              for (j = 0; j != v10; j = j + 1)
              {
                if (*v26 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                v13 = *(*(&v25 + 1) + 8 * j);
                if ([v4 ownsMailboxUidWithURL:v13])
                {
                  [v8 addObject:v13];
                }
              }

              v10 = [v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
            }

            while (v10);
          }
        }

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v14 = v8;
        v15 = [v14 countByEnumeratingWithState:&v21 objects:v33 count:16];
        if (v15)
        {
          v16 = *v22;
          do
          {
            for (k = 0; k != v15; k = k + 1)
            {
              if (*v22 != v16)
              {
                objc_enumerationMutation(v14);
              }

              [(MailPersistentStorage *)self _setObject:0 forKey:*(*(&v21 + 1) + 8 * k) inGroup:v7];
            }

            v15 = [v14 countByEnumeratingWithState:&v21 objects:v33 count:16];
          }

          while (v15);
        }
      }

      v5 = [&off_100163738 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v5);
  }

  [(MailPersistentStorage *)self save];
}

@end