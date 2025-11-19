@interface IXSPromisedInMemoryData
- (IXSPromisedInMemoryData)initWithCoder:(id)a3;
- (IXSPromisedInMemoryData)initWithSeed:(id)a3 data:(id)a4 error:(id *)a5;
- (NSData)data;
- (id)updatedPromiseWithData:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IXSPromisedInMemoryData

- (IXSPromisedInMemoryData)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = IXSPromisedInMemoryData;
  return [(IXSOwnedDataPromise *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6.receiver = self;
  v6.super_class = IXSPromisedInMemoryData;
  [(IXSOwnedDataPromise *)&v6 encodeWithCoder:v4];
}

- (IXSPromisedInMemoryData)initWithSeed:(id)a3 data:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26.receiver = self;
  v26.super_class = IXSPromisedInMemoryData;
  v10 = [(IXSOwnedDataPromise *)&v26 initWithSeed:v8 error:a5];
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
  v12 = [(IXSDataPromise *)v10 accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047B54;
  block[3] = &unk_1001011C8;
  v17 = v11;
  v18 = v9;
  v19 = &v20;
  dispatch_sync(v12, block);

  v13 = v21[5];
  if (!v13)
  {

    _Block_object_dispose(&v20, 8);
LABEL_7:
    v14 = v11;
    goto LABEL_8;
  }

  if (a5)
  {
    *a5 = v13;
  }

  _Block_object_dispose(&v20, 8);
  v14 = 0;
LABEL_8:

  return v14;
}

- (id)updatedPromiseWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(IXSDataPromise *)self seed];
  v8 = objc_alloc_init(IXPromisedInMemoryDataSeed);
  v9 = [v7 name];
  [(IXDataPromiseSeed *)v8 setName:v9];

  -[IXDataPromiseSeed setCreatorIdentifier:](v8, "setCreatorIdentifier:", [v7 creatorIdentifier]);
  -[IXDataPromiseSeed setTotalBytesNeededOnDisk:](v8, "setTotalBytesNeededOnDisk:", [v6 length]);
  v16 = 0;
  v10 = [objc_alloc(objc_opt_class()) initWithSeed:v8 data:v6 error:&v16];

  v11 = v16;
  v12 = v11;
  if (v10)
  {
    v13 = +[IXSDataPromiseManager sharedInstance];
    [v13 registerPromise:v10];
  }

  else if (a4)
  {
    v14 = v11;
    *a4 = v12;
  }

  return v10;
}

- (NSData)data
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSOwnedDataPromise *)self stagedPath];
  v11 = 0;
  v5 = [NSData dataWithContentsOfURL:v4 options:3 error:&v11];
  v6 = v11;

  if (!v5)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(IXSOwnedDataPromise *)self stagedPath];
      v9 = [v8 path];
      *buf = 136315650;
      v13 = "[IXSPromisedInMemoryData data]";
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to read data from %@ : %@", buf, 0x20u);
    }
  }

  return v5;
}

@end