@interface IXSPromisedTransferToPath
- (IXSPromisedTransferToPath)initWithCoder:(id)coder;
- (IXSPromisedTransferToPath)initWithSeed:(id)seed error:(id *)error;
- (void)_remote_setShouldCopy:(BOOL)copy;
- (void)_remote_setTransferPath:(id)path;
- (void)_remote_setTryDeltaCopy:(BOOL)copy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXSPromisedTransferToPath

- (IXSPromisedTransferToPath)initWithSeed:(id)seed error:(id *)error
{
  seedCopy = seed;
  location = [seedCopy location];
  transferPath = [seedCopy transferPath];
  if (!transferPath)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v22 = 0;
  v9 = [MILocation validateURL:transferPath forLocation:location error:&v22];
  v10 = v22;
  v11 = v10;
  if (v9)
  {
LABEL_9:

    v21.receiver = self;
    v21.super_class = IXSPromisedTransferToPath;
    self = [(IXSOwnedDataPromise *)&v21 initWithSeed:seedCopy error:error];
    selfCopy = self;
    goto LABEL_14;
  }

  domain = [v10 domain];
  if ([domain isEqualToString:MIInstallerErrorDomain])
  {
    code = [v11 code];

    if (code == 232)
    {
      v14 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        path = [transferPath path];
        name = [seedCopy name];
        v20 = IXStringForClientID([seedCopy creatorIdentifier]);
        *buf = 136316418;
        v24 = "_CheckTransferPathForSeed";
        v25 = 2112;
        v26 = path;
        v27 = 2112;
        v28 = location;
        v29 = 2112;
        v30 = name;
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

  if (error)
  {
    v16 = v11;
    *error = v11;
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

- (IXSPromisedTransferToPath)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = IXSPromisedTransferToPath;
  return [(IXSOwnedDataPromise *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = IXSPromisedTransferToPath;
  [(IXSOwnedDataPromise *)&v3 encodeWithCoder:coder];
}

- (void)_remote_setTransferPath:(id)path
{
  pathCopy = path;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100039AA4;
  v8[3] = &unk_100100ED8;
  v8[4] = self;
  v9 = pathCopy;
  v7 = pathCopy;
  sub_100071134(accessQueue2, v8);
}

- (void)_remote_setShouldCopy:(BOOL)copy
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039BAC;
  v7[3] = &unk_100101998;
  v7[4] = self;
  copyCopy = copy;
  sub_100071134(accessQueue2, v7);
}

- (void)_remote_setTryDeltaCopy:(BOOL)copy
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039CB8;
  v7[3] = &unk_100101998;
  v7[4] = self;
  copyCopy = copy;
  sub_100071134(accessQueue2, v7);
}

@end