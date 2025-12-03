@interface BMStreamDatastoreReader
- (BMStreamDatastoreReader)initWithStream:(id)stream config:(id)config;
- (BMStreamDatastoreReader)initWithStream:(id)stream config:(id)config eventDataClass:(Class)class useCase:(id)case;
- (id)newEnumeratorFromStartTime:(double)time options:(unint64_t)options;
@end

@implementation BMStreamDatastoreReader

- (BMStreamDatastoreReader)initWithStream:(id)stream config:(id)config eventDataClass:(Class)class useCase:(id)case
{
  streamCopy = stream;
  configCopy = config;
  caseCopy = case;
  v17.receiver = self;
  v17.super_class = BMStreamDatastoreReader;
  v13 = [(BMStreamDatastoreReader *)&v17 init];
  if (v13)
  {
    v14 = [[BMStreamDatastore alloc] initWithStream:streamCopy streamPath:0 permission:0 config:configCopy eventDataClass:class useCase:caseCopy];
    inner = v13->_inner;
    v13->_inner = v14;
  }

  return v13;
}

- (BMStreamDatastoreReader)initWithStream:(id)stream config:(id)config
{
  streamCopy = stream;
  configCopy = config;
  v12.receiver = self;
  v12.super_class = BMStreamDatastoreReader;
  v8 = [(BMStreamDatastoreReader *)&v12 init];
  if (v8)
  {
    v9 = [[BMStreamDatastore alloc] initWithStream:streamCopy permission:0 config:configCopy includeTombstones:0];
    inner = v8->_inner;
    v8->_inner = v9;
  }

  return v8;
}

- (id)newEnumeratorFromStartTime:(double)time options:(unint64_t)options
{
  inner = self->_inner;
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v9 = [(BMStreamDatastore *)inner newEnumeratorFromStartTime:options endTime:time options:v8];

  return v9;
}

@end