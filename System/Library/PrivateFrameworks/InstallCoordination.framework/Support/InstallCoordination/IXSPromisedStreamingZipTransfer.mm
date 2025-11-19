@interface IXSPromisedStreamingZipTransfer
- (IXSPromisedStreamingZipTransfer)initWithSeed:(id)a3 error:(id *)a4;
- (unint64_t)bytesConsumedOnDisk;
- (unint64_t)totalBytesForProgress;
- (void)_remote_setArchiveBytesConsumed:(unint64_t)a3;
- (void)reset;
@end

@implementation IXSPromisedStreamingZipTransfer

- (IXSPromisedStreamingZipTransfer)initWithSeed:(id)a3 error:(id *)a4
{
  v10.receiver = self;
  v10.super_class = IXSPromisedStreamingZipTransfer;
  v4 = [(IXSOwnedDataPromise *)&v10 initWithSeed:a3 error:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(IXSDataPromise *)v4 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002B6CC;
    block[3] = &unk_1001010A0;
    v9 = v5;
    dispatch_sync(v6, block);
  }

  return v5;
}

- (void)reset
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSDataPromise *)self seed];
  [v4 setArchiveBytesConsumed:0];

  v5.receiver = self;
  v5.super_class = IXSPromisedStreamingZipTransfer;
  [(IXSOwnedDataPromise *)&v5 reset];
}

- (unint64_t)totalBytesForProgress
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSDataPromise *)self seed];
  v5 = [v4 archiveSizeBytes];

  return v5;
}

- (unint64_t)bytesConsumedOnDisk
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[IXFileManager defaultManager];
  v5 = [(IXSOwnedDataPromise *)self stagedPath];
  v6 = [v4 diskUsageForURL:v5];

  return v6;
}

- (void)_remote_setArchiveBytesConsumed:(unint64_t)a3
{
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B930;
  v7[3] = &unk_100100DF8;
  v7[4] = self;
  v7[5] = a3;
  sub_100071134(v6, v7);
}

@end