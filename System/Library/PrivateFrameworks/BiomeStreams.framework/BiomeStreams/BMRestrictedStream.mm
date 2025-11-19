@interface BMRestrictedStream
- (BMRestrictedStream)initWithIdentifier:(id)a3 eventDataClass:(Class)a4;
- (BMRestrictedStream)initWithIdentifier:(id)a3 segmentSize:(unint64_t)a4 pruningPolicy:(id)a5 eventDataClass:(Class)a6;
@end

@implementation BMRestrictedStream

- (BMRestrictedStream)initWithIdentifier:(id)a3 eventDataClass:(Class)a4
{
  v7 = a3;
  if (!v7)
  {
    [BMRestrictedStream initWithIdentifier:a2 eventDataClass:self];
  }

  v23.receiver = self;
  v23.super_class = BMRestrictedStream;
  v8 = [(BMRestrictedStream *)&v23 init];
  if (v8)
  {
    v9 = [v7 isEqualToString:@"Messages.CommunicationSafety.ResultWithoutImage"];
    v10 = BMRootLibraryBridge();
    v11 = v10;
    if (v9)
    {
      v12 = [v10 streamWithIdentifier:@"Messages.CommunicationSafety" error:0];

      v13 = [BMStoreStream alloc];
      v14 = [(__CFString *)v12 configuration];
      v15 = [v14 storeConfig];
      v16 = [(BMStoreStream *)v13 initWithStreamIdentifier:@"Messages.CommunicationSafety.ResultWithoutImage" storeConfig:v15 streamType:2 eventDataClass:a4 useCase:*MEMORY[0x1E698E928]];
      storeStream = v8->_storeStream;
      v8->_storeStream = v16;
    }

    else
    {
      v22 = 0;
      v18 = [v10 streamWithIdentifier:v7 error:&v22];
      v12 = v22;
      v19 = [v18 storeStreamWithLegacyClass:a4];
      v20 = v8->_storeStream;
      v8->_storeStream = v19;

      if (v8->_storeStream)
      {
LABEL_10:

        goto LABEL_11;
      }

      v14 = __biome_log_for_category();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [(BMRestrictedStream *)v7 initWithIdentifier:v12 eventDataClass:v14];
      }
    }

    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

- (BMRestrictedStream)initWithIdentifier:(id)a3 segmentSize:(unint64_t)a4 pruningPolicy:(id)a5 eventDataClass:(Class)a6
{
  v11 = a3;
  v12 = a5;
  if (v11)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMRestrictedStream initWithIdentifier:a2 segmentSize:self pruningPolicy:? eventDataClass:?];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  [BMRestrictedStream initWithIdentifier:a2 segmentSize:self pruningPolicy:? eventDataClass:?];
LABEL_3:
  v19.receiver = self;
  v19.super_class = BMRestrictedStream;
  v13 = [(BMRestrictedStream *)&v19 init];
  if (v13)
  {
    v14 = [MEMORY[0x1E698F130] newRestrictedStreamWithSegmentSize:a4];
    [v14 setPruningPolicy:v12];
    v15 = [[BMStoreStream alloc] initWithRestrictedStreamIdentifier:v11 storeConfig:v14 eventDataClass:a6];
    storeStream = v13->_storeStream;
    v13->_storeStream = v15;

    if (!v13->_storeStream)
    {
      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [BMRestrictedStream initWithIdentifier:v11 segmentSize:a4 pruningPolicy:v17 eventDataClass:?];
      }
    }
  }

  return v13;
}

@end