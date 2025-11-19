@interface BMStreamDatastoreWriter
- (BMStreamDatastoreWriter)initWithStream:(id)a3 config:(id)a4 eventDataClass:(Class)a5;
@end

@implementation BMStreamDatastoreWriter

- (BMStreamDatastoreWriter)initWithStream:(id)a3 config:(id)a4 eventDataClass:(Class)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = BMStreamDatastoreWriter;
  v10 = [(BMStreamDatastoreWriter *)&v15 init];
  if (v10)
  {
    v11 = [BMStreamDatastore alloc];
    v12 = [(BMStreamDatastore *)v11 initWithStream:v8 permission:1 config:v9 includeTombstones:0 eventDataClass:a5 useCase:*MEMORY[0x1E698E960]];
    inner = v10->_inner;
    v10->_inner = v12;
  }

  return v10;
}

@end