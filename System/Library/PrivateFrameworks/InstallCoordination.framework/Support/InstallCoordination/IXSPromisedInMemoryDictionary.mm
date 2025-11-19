@interface IXSPromisedInMemoryDictionary
- (IXSPromisedInMemoryDictionary)initWithCoder:(id)a3;
- (IXSPromisedInMemoryDictionary)initWithSeed:(id)a3 dictionary:(id)a4 error:(id *)a5;
- (NSDictionary)dictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IXSPromisedInMemoryDictionary

- (IXSPromisedInMemoryDictionary)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = IXSPromisedInMemoryDictionary;
  return [(IXSOwnedDataPromise *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6.receiver = self;
  v6.super_class = IXSPromisedInMemoryDictionary;
  [(IXSOwnedDataPromise *)&v6 encodeWithCoder:v4];
}

- (IXSPromisedInMemoryDictionary)initWithSeed:(id)a3 dictionary:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26.receiver = self;
  v26.super_class = IXSPromisedInMemoryDictionary;
  v10 = [(IXSOwnedDataPromise *)&v26 initWithSeed:v8 error:a5];
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
  v12 = [(IXSDataPromise *)v10 accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036918;
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

- (NSDictionary)dictionary
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSOwnedDataPromise *)self stagedPath];
  v5 = [NSDictionary dictionaryWithContentsOfURL:v4];

  if (!v5)
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(IXSOwnedDataPromise *)self stagedPath];
      v8 = [v7 path];
      v10 = 136315650;
      v11 = "[IXSPromisedInMemoryDictionary dictionary]";
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to read dictionary from %@ : %@", &v10, 0x20u);
    }
  }

  return v5;
}

@end