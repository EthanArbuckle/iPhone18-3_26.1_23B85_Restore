@interface BMStreamDatastoreWriter
- (BMStreamDatastoreWriter)initWithStream:(id)stream config:(id)config eventDataClass:(Class)class;
@end

@implementation BMStreamDatastoreWriter

- (BMStreamDatastoreWriter)initWithStream:(id)stream config:(id)config eventDataClass:(Class)class
{
  streamCopy = stream;
  configCopy = config;
  v15.receiver = self;
  v15.super_class = BMStreamDatastoreWriter;
  v10 = [(BMStreamDatastoreWriter *)&v15 init];
  if (v10)
  {
    v11 = [BMStreamDatastore alloc];
    v12 = [(BMStreamDatastore *)v11 initWithStream:streamCopy permission:1 config:configCopy includeTombstones:0 eventDataClass:class useCase:*MEMORY[0x1E698E960]];
    inner = v10->_inner;
    v10->_inner = v12;
  }

  return v10;
}

@end