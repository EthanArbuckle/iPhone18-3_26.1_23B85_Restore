@interface MailPersistentStorageSaveOperation
- (MailPersistentStorageSaveOperation)initWithDestinationPath:(id)path groupDictionary:(id)dictionary;
- (void)dealloc;
- (void)main;
@end

@implementation MailPersistentStorageSaveOperation

- (void)dealloc
{
  [(EFCancelable *)self->_finishedObservation cancel];
  v3.receiver = self;
  v3.super_class = MailPersistentStorageSaveOperation;
  [(MailPersistentStorageSaveOperation *)&v3 dealloc];
}

- (MailPersistentStorageSaveOperation)initWithDestinationPath:(id)path groupDictionary:(id)dictionary
{
  pathCopy = path;
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = MailPersistentStorageSaveOperation;
  v8 = [(MailPersistentStorageSaveOperation *)&v25 init];
  if (v8)
  {
    v9 = [pathCopy copy];
    destinationPath = v8->_destinationPath;
    v8->_destinationPath = v9;

    v11 = [[NSDictionary alloc] initWithDictionary:dictionaryCopy copyItems:1];
    groupDictionary = v8->_groupDictionary;
    v8->_groupDictionary = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [NSString stringWithFormat:@"com.apple.mobilemail.%@-%p", v14, v8];

    v16 = [[MFTaskAssertion alloc] initWithName:v15 preventIdleSleep:1];
    taskAssertion = v8->_taskAssertion;
    v8->_taskAssertion = v16;

    objc_initWeak(&location, v8);
    v18 = NSStringFromSelector("isFinished");
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100033070;
    v22[3] = &unk_1001574D8;
    objc_copyWeak(&v23, &location);
    v19 = [(MailPersistentStorageSaveOperation *)v8 ef_observeKeyPath:v18 options:0 autoCancelToken:0 usingBlock:v22];
    finishedObservation = v8->_finishedObservation;
    v8->_finishedObservation = v19;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)main
{
  if (([(MailPersistentStorageSaveOperation *)self isCancelled]& 1) == 0)
  {
    groupDictionary = [(MailPersistentStorageSaveOperation *)self groupDictionary];
    v14 = 0;
    v4 = [NSPropertyListSerialization dataWithPropertyList:groupDictionary format:100 options:0 error:&v14];
    v5 = v14;

    if (v4)
    {
      if (([(MailPersistentStorageSaveOperation *)self isCancelled]& 1) != 0)
      {
LABEL_11:

        return;
      }

      destinationPath = [(MailPersistentStorageSaveOperation *)self destinationPath];
      v13 = 0;
      v7 = [v4 writeToFile:destinationPath options:1073741825 error:&v13];
      v8 = v13;

      if ((v7 & 1) == 0)
      {
        v9 = MFLogGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          destinationPath2 = [(MailPersistentStorageSaveOperation *)self destinationPath];
          ef_publicDescription = [v8 ef_publicDescription];
          sub_1000D372C(destinationPath2, ef_publicDescription, buf, v9);
        }
      }
    }

    else
    {
      v8 = MFLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription2 = [v5 ef_publicDescription];
        sub_1000D379C(ef_publicDescription2, buf, v8);
      }
    }

    goto LABEL_11;
  }
}

@end