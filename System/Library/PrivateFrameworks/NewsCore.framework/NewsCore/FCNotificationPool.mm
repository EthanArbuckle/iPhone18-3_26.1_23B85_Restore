@interface FCNotificationPool
- (BOOL)isEqual:(id)a3;
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (FCNotificationPool)init;
- (FCNotificationPool)initWithItems:(id)a3;
- (FCNotificationPool)initWithItems:(id)a3 creationDate:(id)a4;
- (FCNotificationPool)initWithURL:(id)a3 error:(id *)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation FCNotificationPool

- (FCNotificationPool)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCNotificationPool init]";
    v10 = 2080;
    v11 = "FCNotificationPool.m";
    v12 = 1024;
    v13 = 51;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCNotificationPool init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCNotificationPool)initWithItems:(id)a3 creationDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = FCNotificationPool;
  v9 = [(FCNotificationPool *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_items, a3);
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = [MEMORY[0x1E695DF00] date];
    }

    creationDate = v10->_creationDate;
    v10->_creationDate = v11;
  }

  return v10;
}

- (FCNotificationPool)initWithItems:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  v7 = [(FCNotificationPool *)self initWithItems:v5 creationDate:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = [(FCNotificationPool *)self items];
    v9 = [v7 setWithArray:v8];
    v10 = MEMORY[0x1E695DFD8];
    v11 = [v6 items];
    v12 = [v10 setWithArray:v11];
    v13 = [v9 isEqualToSet:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(FCNotificationPool *)self items];
  v4 = [v2 setWithArray:v3];
  v5 = [v4 hash];

  return v5;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  v4 = MEMORY[0x1E696AD98];
  v5 = [(FCNotificationPool *)self items];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  [(FCDescription *)v3 addField:@"items" object:v6];

  v7 = [(FCDescription *)v3 descriptionString];

  return v7;
}

- (FCNotificationPool)initWithURL:(id)a3 error:(id *)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  value = 0;
  if (getxattr([v6 fileSystemRepresentation], "com.apple.news.notification_pool_version", &value, 2uLL, 0, 0) == -1)
  {
    v15 = MEMORY[0x1E696ABC0];
    v27 = @"errno";
    v16 = MEMORY[0x1E696AEC0];
    v17 = __error();
    v8 = [v16 stringWithCString:strerror(*v17)];
    v28[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v18 = @"Failed to read notification pool version";
LABEL_10:
    v14 = [v15 fc_errorWithCode:16 description:v18 additionalUserInfo:v9];
    goto LABEL_11;
  }

  if (value != 769)
  {
    v15 = MEMORY[0x1E696ABC0];
    v25 = @"version";
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:?];
    v26 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v18 = @"Notification pool was written with a different version";
    goto LABEL_10;
  }

  v8 = [MEMORY[0x1E695DF48] inputStreamWithURL:v6];
  [v8 open];
  v9 = [objc_alloc(MEMORY[0x1E69C65C8]) initWithStream:v8];
  [v9 setClassOfNextMessage:objc_opt_class()];
  v10 = objc_autoreleasePoolPush();
  v11 = [v9 nextMessage];
  if (v11)
  {
    v12 = v11;
    do
    {
      [v7 addObject:v12];

      objc_autoreleasePoolPop(v10);
      v10 = objc_autoreleasePoolPush();
      v12 = [v9 nextMessage];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(v10);
  [v8 close];
  v13 = [v8 streamError];

  if (!v13)
  {

    v23 = 0;
    [v6 getResourceValue:&v23 forKey:*MEMORY[0x1E695DAA8] error:0];
    self = [(FCNotificationPool *)self initWithItems:v7 creationDate:v23];
    v20 = self;
    goto LABEL_15;
  }

  v14 = [v8 streamError];
LABEL_11:
  v13 = v14;

  if (a4)
  {
    v19 = v13;
    v20 = 0;
    *a4 = v13;
  }

  else
  {
    v20 = 0;
  }

LABEL_15:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DFC0] outputStreamWithURL:v6 append:0];
  v8 = v7;
  if (!v7)
  {
    v17 = MEMORY[0x1E696ABC0];
    v28 = @"URL";
    v9 = [v6 absoluteString];
    v29[0] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v16 = [v17 fc_errorWithCode:16 description:@"Failed to create output stream for notification pool" additionalUserInfo:v11];
    goto LABEL_15;
  }

  [v7 open];
  v9 = [objc_alloc(MEMORY[0x1E69C65D0]) initWithOutputStream:v8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [(FCNotificationPool *)self items];
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if (([v9 writeMessage:*(*(&v23 + 1) + 8 * i)] & 1) == 0)
        {
          v11 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Failed to write feed item protobuf message"];
          v14 = 0;
          goto LABEL_12;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_12:

  [v8 close];
  v15 = [v8 streamError];

  if (v15)
  {
    v16 = [v8 streamError];
LABEL_15:
    v18 = v16;

    v14 = 0;
    v11 = v18;
  }

  if (a4 && v11)
  {
    v19 = v11;
    *a4 = v11;
  }

  if (v14)
  {
    value = 769;
    setxattr([v6 fileSystemRepresentation], "com.apple.news.notification_pool_version", &value, 2uLL, 0, 0);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

@end