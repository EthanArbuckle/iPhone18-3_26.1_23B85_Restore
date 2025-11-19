@interface BMContentStream
- (BMContentStream)init;
- (BMContentStream)initWithStreamIdentifier:(id)a3 eventClass:(Class)a4;
- (NSString)identifier;
- (id)publisher;
@end

@implementation BMContentStream

- (BMContentStream)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Must override method %@ in a subclass", v4}];

  __break(1u);
  return result;
}

- (NSString)identifier
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Must override method %@ in a subclass", v4}];

  __break(1u);
  return result;
}

- (BMContentStream)initWithStreamIdentifier:(id)a3 eventClass:(Class)a4
{
  v7 = a3;
  if (!v7)
  {
    [BMContentStream initWithStreamIdentifier:a2 eventClass:self];
  }

  if (([v7 hasPrefix:@"ProactiveHarvesting."] & 1) == 0)
  {
    [BMContentStream initWithStreamIdentifier:a2 eventClass:self];
  }

  v22.receiver = self;
  v22.super_class = BMContentStream;
  v8 = [(BMContentStream *)&v22 init];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = BMRootLibraryBridge();
  v21 = 0;
  v10 = [v9 streamWithIdentifier:v7 error:&v21];
  v11 = v21;
  v12 = [v10 storeStreamWithLegacyClass:a4];
  storeStream = v8->_storeStream;
  v8->_storeStream = v12;

  if (!v11)
  {
    v16 = [BMContentSource alloc];
    v17 = [(BMStoreStream *)v8->_storeStream storeConfig];
    v18 = [(BMStoreSource *)v16 initWithIdentifier:v7 storeConfig:v17];
    contentSource = v8->_contentSource;
    v8->_contentSource = v18;

LABEL_11:
    v15 = v8;
    goto LABEL_12;
  }

  v14 = __biome_log_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    [BMContentStream initWithStreamIdentifier:v7 eventClass:v14];
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)publisher
{
  v3 = [BMDSLStreamPublisher alloc];
  v4 = [(BMContentStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:v4 streamType:2];

  return v5;
}

@end