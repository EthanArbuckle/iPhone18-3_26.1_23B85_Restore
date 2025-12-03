@interface IXSPromisedInMemoryData
- (IXSPromisedInMemoryData)initWithCoder:(id)coder;
- (IXSPromisedInMemoryData)initWithSeed:(id)seed data:(id)data error:(id *)error;
- (NSData)data;
- (id)updatedPromiseWithData:(id)data error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXSPromisedInMemoryData

- (IXSPromisedInMemoryData)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = IXSPromisedInMemoryData;
  return [(IXSOwnedDataPromise *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v6.receiver = self;
  v6.super_class = IXSPromisedInMemoryData;
  [(IXSOwnedDataPromise *)&v6 encodeWithCoder:coderCopy];
}

- (IXSPromisedInMemoryData)initWithSeed:(id)seed data:(id)data error:(id *)error
{
  seedCopy = seed;
  dataCopy = data;
  v26.receiver = self;
  v26.super_class = IXSPromisedInMemoryData;
  v10 = [(IXSOwnedDataPromise *)&v26 initWithSeed:seedCopy error:error];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100047B3C;
  v24 = sub_100047B4C;
  v25 = 0;
  accessQueue = [(IXSDataPromise *)v10 accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047B54;
  block[3] = &unk_1001011C8;
  v17 = v11;
  v18 = dataCopy;
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

- (id)updatedPromiseWithData:(id)data error:(id *)error
{
  dataCopy = data;
  seed = [(IXSDataPromise *)self seed];
  v8 = objc_alloc_init(IXPromisedInMemoryDataSeed);
  name = [seed name];
  [(IXDataPromiseSeed *)v8 setName:name];

  -[IXDataPromiseSeed setCreatorIdentifier:](v8, "setCreatorIdentifier:", [seed creatorIdentifier]);
  -[IXDataPromiseSeed setTotalBytesNeededOnDisk:](v8, "setTotalBytesNeededOnDisk:", [dataCopy length]);
  v16 = 0;
  v10 = [objc_alloc(objc_opt_class()) initWithSeed:v8 data:dataCopy error:&v16];

  v11 = v16;
  v12 = v11;
  if (v10)
  {
    v13 = +[IXSDataPromiseManager sharedInstance];
    [v13 registerPromise:v10];
  }

  else if (error)
  {
    v14 = v11;
    *error = v12;
  }

  return v10;
}

- (NSData)data
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  stagedPath = [(IXSOwnedDataPromise *)self stagedPath];
  v11 = 0;
  v5 = [NSData dataWithContentsOfURL:stagedPath options:3 error:&v11];
  v6 = v11;

  if (!v5)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      stagedPath2 = [(IXSOwnedDataPromise *)self stagedPath];
      path = [stagedPath2 path];
      *buf = 136315650;
      v13 = "[IXSPromisedInMemoryData data]";
      v14 = 2112;
      v15 = path;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to read data from %@ : %@", buf, 0x20u);
    }
  }

  return v5;
}

@end