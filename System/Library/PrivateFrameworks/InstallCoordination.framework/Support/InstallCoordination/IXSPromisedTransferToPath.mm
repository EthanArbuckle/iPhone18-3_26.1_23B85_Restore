@interface IXSPromisedTransferToPath
- (IXSPromisedTransferToPath)initWithCoder:(id)a3;
- (IXSPromisedTransferToPath)initWithSeed:(id)a3 error:(id *)a4;
- (void)_remote_setShouldCopy:(BOOL)a3;
- (void)_remote_setTransferPath:(id)a3;
- (void)_remote_setTryDeltaCopy:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IXSPromisedTransferToPath

- (IXSPromisedTransferToPath)initWithSeed:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 location];
  v8 = [v6 transferPath];
  if (!v8)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v22 = 0;
  v9 = [MILocation validateURL:v8 forLocation:v7 error:&v22];
  v10 = v22;
  v11 = v10;
  if (v9)
  {
LABEL_9:

    v21.receiver = self;
    v21.super_class = IXSPromisedTransferToPath;
    self = [(IXSOwnedDataPromise *)&v21 initWithSeed:v6 error:a4];
    v15 = self;
    goto LABEL_14;
  }

  v12 = [v10 domain];
  if ([v12 isEqualToString:MIInstallerErrorDomain])
  {
    v13 = [v11 code];

    if (v13 == 232)
    {
      v14 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = [v8 path];
        v19 = [v6 name];
        v20 = IXStringForClientID([v6 creatorIdentifier]);
        *buf = 136316418;
        v24 = "_CheckTransferPathForSeed";
        v25 = 2112;
        v26 = v18;
        v27 = 2112;
        v28 = v7;
        v29 = 2112;
        v30 = v19;
        v31 = 2112;
        v32 = v20;
        v33 = 2112;
        v34 = v11;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: Expected volume UUID for transfer path %@ to match the volume UUID corresponding to location %@ when creating promised transfer to path data promise with name: %@ client: %@ - %@", buf, 0x3Eu);
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  if (a4)
  {
    v16 = v11;
    *a4 = v11;
  }

  v15 = 0;
LABEL_14:

  return v15;
}

- (IXSPromisedTransferToPath)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = IXSPromisedTransferToPath;
  return [(IXSOwnedDataPromise *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = IXSPromisedTransferToPath;
  [(IXSOwnedDataPromise *)&v3 encodeWithCoder:a3];
}

- (void)_remote_setTransferPath:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(IXSDataPromise *)self accessQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100039AA4;
  v8[3] = &unk_100100ED8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  sub_100071134(v6, v8);
}

- (void)_remote_setShouldCopy:(BOOL)a3
{
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039BAC;
  v7[3] = &unk_100101998;
  v7[4] = self;
  v8 = a3;
  sub_100071134(v6, v7);
}

- (void)_remote_setTryDeltaCopy:(BOOL)a3
{
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039CB8;
  v7[3] = &unk_100101998;
  v7[4] = self;
  v8 = a3;
  sub_100071134(v6, v7);
}

@end