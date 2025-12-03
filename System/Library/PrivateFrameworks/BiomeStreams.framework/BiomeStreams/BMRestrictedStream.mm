@interface BMRestrictedStream
- (BMRestrictedStream)initWithIdentifier:(id)identifier eventDataClass:(Class)class;
- (BMRestrictedStream)initWithIdentifier:(id)identifier segmentSize:(unint64_t)size pruningPolicy:(id)policy eventDataClass:(Class)class;
@end

@implementation BMRestrictedStream

- (BMRestrictedStream)initWithIdentifier:(id)identifier eventDataClass:(Class)class
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [BMRestrictedStream initWithIdentifier:a2 eventDataClass:self];
  }

  v23.receiver = self;
  v23.super_class = BMRestrictedStream;
  v8 = [(BMRestrictedStream *)&v23 init];
  if (v8)
  {
    v9 = [identifierCopy isEqualToString:@"Messages.CommunicationSafety.ResultWithoutImage"];
    v10 = BMRootLibraryBridge();
    v11 = v10;
    if (v9)
    {
      v12 = [v10 streamWithIdentifier:@"Messages.CommunicationSafety" error:0];

      v13 = [BMStoreStream alloc];
      configuration = [(__CFString *)v12 configuration];
      storeConfig = [configuration storeConfig];
      v16 = [(BMStoreStream *)v13 initWithStreamIdentifier:@"Messages.CommunicationSafety.ResultWithoutImage" storeConfig:storeConfig streamType:2 eventDataClass:class useCase:*MEMORY[0x1E698E928]];
      storeStream = v8->_storeStream;
      v8->_storeStream = v16;
    }

    else
    {
      v22 = 0;
      v18 = [v10 streamWithIdentifier:identifierCopy error:&v22];
      v12 = v22;
      v19 = [v18 storeStreamWithLegacyClass:class];
      v20 = v8->_storeStream;
      v8->_storeStream = v19;

      if (v8->_storeStream)
      {
LABEL_10:

        goto LABEL_11;
      }

      configuration = __biome_log_for_category();
      if (os_log_type_enabled(configuration, OS_LOG_TYPE_FAULT))
      {
        [(BMRestrictedStream *)identifierCopy initWithIdentifier:v12 eventDataClass:configuration];
      }
    }

    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

- (BMRestrictedStream)initWithIdentifier:(id)identifier segmentSize:(unint64_t)size pruningPolicy:(id)policy eventDataClass:(Class)class
{
  identifierCopy = identifier;
  policyCopy = policy;
  if (identifierCopy)
  {
    if (size)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMRestrictedStream initWithIdentifier:a2 segmentSize:self pruningPolicy:? eventDataClass:?];
    if (size)
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
    v14 = [MEMORY[0x1E698F130] newRestrictedStreamWithSegmentSize:size];
    [v14 setPruningPolicy:policyCopy];
    v15 = [[BMStoreStream alloc] initWithRestrictedStreamIdentifier:identifierCopy storeConfig:v14 eventDataClass:class];
    storeStream = v13->_storeStream;
    v13->_storeStream = v15;

    if (!v13->_storeStream)
    {
      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [BMRestrictedStream initWithIdentifier:identifierCopy segmentSize:size pruningPolicy:v17 eventDataClass:?];
      }
    }
  }

  return v13;
}

@end