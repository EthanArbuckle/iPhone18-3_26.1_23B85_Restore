@interface IXSPromisedOutOfBandStreamingZipTransfer
- (IXSPromisedOutOfBandStreamingZipTransfer)initWithSeed:(id)seed error:(id *)error;
- (unint64_t)totalBytesForProgress;
- (void)_remote_setArchiveBytesConsumed:(unint64_t)consumed;
- (void)reset;
@end

@implementation IXSPromisedOutOfBandStreamingZipTransfer

- (IXSPromisedOutOfBandStreamingZipTransfer)initWithSeed:(id)seed error:(id *)error
{
  v5.receiver = self;
  v5.super_class = IXSPromisedOutOfBandStreamingZipTransfer;
  return [(IXSDataPromise *)&v5 initWithSeed:seed error:error];
}

- (void)reset
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  seed = [(IXSDataPromise *)self seed];
  [seed setArchiveBytesConsumed:0];

  v5.receiver = self;
  v5.super_class = IXSPromisedOutOfBandStreamingZipTransfer;
  [(IXSDataPromise *)&v5 reset];
}

- (unint64_t)totalBytesForProgress
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  seed = [(IXSDataPromise *)self seed];
  archiveSizeBytes = [seed archiveSizeBytes];

  return archiveSizeBytes;
}

- (void)_remote_setArchiveBytesConsumed:(unint64_t)consumed
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000030E4;
  v7[3] = &unk_100100DF8;
  v7[4] = self;
  v7[5] = consumed;
  dispatch_sync(accessQueue2, v7);
}

@end