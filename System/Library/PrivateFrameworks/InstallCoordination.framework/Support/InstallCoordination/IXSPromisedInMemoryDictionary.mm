@interface IXSPromisedInMemoryDictionary
- (IXSPromisedInMemoryDictionary)initWithCoder:(id)coder;
- (IXSPromisedInMemoryDictionary)initWithSeed:(id)seed dictionary:(id)dictionary error:(id *)error;
- (NSDictionary)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXSPromisedInMemoryDictionary

- (IXSPromisedInMemoryDictionary)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = IXSPromisedInMemoryDictionary;
  return [(IXSOwnedDataPromise *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v6.receiver = self;
  v6.super_class = IXSPromisedInMemoryDictionary;
  [(IXSOwnedDataPromise *)&v6 encodeWithCoder:coderCopy];
}

- (IXSPromisedInMemoryDictionary)initWithSeed:(id)seed dictionary:(id)dictionary error:(id *)error
{
  seedCopy = seed;
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = IXSPromisedInMemoryDictionary;
  v10 = [(IXSOwnedDataPromise *)&v26 initWithSeed:seedCopy error:error];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100036900;
  v24 = sub_100036910;
  v25 = 0;
  accessQueue = [(IXSDataPromise *)v10 accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036918;
  block[3] = &unk_1001011C8;
  v17 = v11;
  v18 = dictionaryCopy;
  v19 = &v20;
  dispatch_sync(accessQueue, block);

  v13 = v21[5];
  if (!v13)
  {

    _Block_object_dispose(&v20, 8);
LABEL_7:
    v14 = v11;
    goto LABEL_8;
  }

  if (error)
  {
    *error = v13;
  }

  _Block_object_dispose(&v20, 8);
  v14 = 0;
LABEL_8:

  return v14;
}

- (NSDictionary)dictionary
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  stagedPath = [(IXSOwnedDataPromise *)self stagedPath];
  v5 = [NSDictionary dictionaryWithContentsOfURL:stagedPath];

  if (!v5)
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      stagedPath2 = [(IXSOwnedDataPromise *)self stagedPath];
      path = [stagedPath2 path];
      v10 = 136315650;
      v11 = "[IXSPromisedInMemoryDictionary dictionary]";
      v12 = 2112;
      v13 = path;
      v14 = 2112;
      v15 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to read dictionary from %@ : %@", &v10, 0x20u);
    }
  }

  return v5;
}

@end