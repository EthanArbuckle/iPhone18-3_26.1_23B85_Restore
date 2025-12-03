@interface IXSPromisedStreamingZipTransfer
- (IXSPromisedStreamingZipTransfer)initWithSeed:(id)seed error:(id *)error;
- (unint64_t)bytesConsumedOnDisk;
- (unint64_t)totalBytesForProgress;
- (void)_remote_setArchiveBytesConsumed:(unint64_t)consumed;
- (void)reset;
@end

@implementation IXSPromisedStreamingZipTransfer

- (IXSPromisedStreamingZipTransfer)initWithSeed:(id)seed error:(id *)error
{
  v10.receiver = self;
  v10.super_class = IXSPromisedStreamingZipTransfer;
  v4 = [(IXSOwnedDataPromise *)&v10 initWithSeed:seed error:error];
  v5 = v4;
  if (v4)
  {
    accessQueue = [(IXSDataPromise *)v4 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002B6CC;
    block[3] = &unk_1001010A0;
    v9 = v5;
    dispatch_sync(accessQueue, block);
  }

  return v5;
}

- (void)reset
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  seed = [(IXSDataPromise *)self seed];
  [seed setArchiveBytesConsumed:0];

  v5.receiver = self;
  v5.super_class = IXSPromisedStreamingZipTransfer;
  [(IXSOwnedDataPromise *)&v5 reset];
}

- (unint64_t)totalBytesForProgress
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  seed = [(IXSDataPromise *)self seed];
  archiveSizeBytes = [seed archiveSizeBytes];

  return archiveSizeBytes;
}

- (unint64_t)bytesConsumedOnDisk
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v4 = +[IXFileManager defaultManager];
  stagedPath = [(IXSOwnedDataPromise *)self stagedPath];
  v6 = [v4 diskUsageForURL:stagedPath];

  return v6;
}

- (void)_remote_setArchiveBytesConsumed:(unint64_t)consumed
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B930;
  v7[3] = &unk_100100DF8;
  v7[4] = self;
  v7[5] = consumed;
  sub_100071134(accessQueue2, v7);
}

@end