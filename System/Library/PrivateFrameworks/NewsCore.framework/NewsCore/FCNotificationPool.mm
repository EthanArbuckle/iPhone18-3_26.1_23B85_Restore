@interface FCNotificationPool
- (BOOL)isEqual:(id)equal;
- (BOOL)writeToURL:(id)l error:(id *)error;
- (FCNotificationPool)init;
- (FCNotificationPool)initWithItems:(id)items;
- (FCNotificationPool)initWithItems:(id)items creationDate:(id)date;
- (FCNotificationPool)initWithURL:(id)l error:(id *)error;
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

- (FCNotificationPool)initWithItems:(id)items creationDate:(id)date
{
  itemsCopy = items;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = FCNotificationPool;
  v9 = [(FCNotificationPool *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_items, items);
    if (dateCopy)
    {
      date = dateCopy;
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
    }

    creationDate = v10->_creationDate;
    v10->_creationDate = date;
  }

  return v10;
}

- (FCNotificationPool)initWithItems:(id)items
{
  v4 = MEMORY[0x1E695DF00];
  itemsCopy = items;
  date = [v4 date];
  v7 = [(FCNotificationPool *)self initWithItems:itemsCopy creationDate:date];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
    items = [(FCNotificationPool *)self items];
    v9 = [v7 setWithArray:items];
    v10 = MEMORY[0x1E695DFD8];
    items2 = [v6 items];
    v12 = [v10 setWithArray:items2];
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
  items = [(FCNotificationPool *)self items];
  v4 = [v2 setWithArray:items];
  v5 = [v4 hash];

  return v5;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  v4 = MEMORY[0x1E696AD98];
  items = [(FCNotificationPool *)self items];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(items, "count")}];
  [(FCDescription *)v3 addField:@"items" object:v6];

  descriptionString = [(FCDescription *)v3 descriptionString];

  return descriptionString;
}

- (FCNotificationPool)initWithURL:(id)l error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  array = [MEMORY[0x1E695DF70] array];
  value = 0;
  if (getxattr([lCopy fileSystemRepresentation], "com.apple.news.notification_pool_version", &value, 2uLL, 0, 0) == -1)
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
    streamError2 = [v15 fc_errorWithCode:16 description:v18 additionalUserInfo:v9];
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

  v8 = [MEMORY[0x1E695DF48] inputStreamWithURL:lCopy];
  [v8 open];
  v9 = [objc_alloc(MEMORY[0x1E69C65C8]) initWithStream:v8];
  [v9 setClassOfNextMessage:objc_opt_class()];
  v10 = objc_autoreleasePoolPush();
  nextMessage = [v9 nextMessage];
  if (nextMessage)
  {
    nextMessage2 = nextMessage;
    do
    {
      [array addObject:nextMessage2];

      objc_autoreleasePoolPop(v10);
      v10 = objc_autoreleasePoolPush();
      nextMessage2 = [v9 nextMessage];
    }

    while (nextMessage2);
  }

  objc_autoreleasePoolPop(v10);
  [v8 close];
  streamError = [v8 streamError];

  if (!streamError)
  {

    v23 = 0;
    [lCopy getResourceValue:&v23 forKey:*MEMORY[0x1E695DAA8] error:0];
    self = [(FCNotificationPool *)self initWithItems:array creationDate:v23];
    selfCopy = self;
    goto LABEL_15;
  }

  streamError2 = [v8 streamError];
LABEL_11:
  streamError = streamError2;

  if (error)
  {
    v19 = streamError;
    selfCopy = 0;
    *error = streamError;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_15:

  v21 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (BOOL)writeToURL:(id)l error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = [MEMORY[0x1E695DFC0] outputStreamWithURL:lCopy append:0];
  v8 = v7;
  if (!v7)
  {
    v17 = MEMORY[0x1E696ABC0];
    v28 = @"URL";
    absoluteString = [lCopy absoluteString];
    v29[0] = absoluteString;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    streamError2 = [v17 fc_errorWithCode:16 description:@"Failed to create output stream for notification pool" additionalUserInfo:v11];
    goto LABEL_15;
  }

  [v7 open];
  absoluteString = [objc_alloc(MEMORY[0x1E69C65D0]) initWithOutputStream:v8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  items = [(FCNotificationPool *)self items];
  v11 = [items countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(items);
        }

        if (([absoluteString writeMessage:*(*(&v23 + 1) + 8 * i)] & 1) == 0)
        {
          v11 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Failed to write feed item protobuf message"];
          v14 = 0;
          goto LABEL_12;
        }
      }

      v11 = [items countByEnumeratingWithState:&v23 objects:v27 count:16];
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
  streamError = [v8 streamError];

  if (streamError)
  {
    streamError2 = [v8 streamError];
LABEL_15:
    v18 = streamError2;

    v14 = 0;
    v11 = v18;
  }

  if (error && v11)
  {
    v19 = v11;
    *error = v11;
  }

  if (v14)
  {
    value = 769;
    setxattr([lCopy fileSystemRepresentation], "com.apple.news.notification_pool_version", &value, 2uLL, 0, 0);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

@end