@interface BMStreamDatastoreReader
- (BMStreamDatastoreReader)initWithStream:(id)a3 config:(id)a4;
- (BMStreamDatastoreReader)initWithStream:(id)a3 config:(id)a4 eventDataClass:(Class)a5 useCase:(id)a6;
- (id)newEnumeratorFromStartTime:(double)a3 options:(unint64_t)a4;
@end

@implementation BMStreamDatastoreReader

- (BMStreamDatastoreReader)initWithStream:(id)a3 config:(id)a4 eventDataClass:(Class)a5 useCase:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = BMStreamDatastoreReader;
  v13 = [(BMStreamDatastoreReader *)&v17 init];
  if (v13)
  {
    v14 = [[BMStreamDatastore alloc] initWithStream:v10 streamPath:0 permission:0 config:v11 eventDataClass:a5 useCase:v12];
    inner = v13->_inner;
    v13->_inner = v14;
  }

  return v13;
}

- (BMStreamDatastoreReader)initWithStream:(id)a3 config:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = BMStreamDatastoreReader;
  v8 = [(BMStreamDatastoreReader *)&v12 init];
  if (v8)
  {
    v9 = [[BMStreamDatastore alloc] initWithStream:v6 permission:0 config:v7 includeTombstones:0];
    inner = v8->_inner;
    v8->_inner = v9;
  }

  return v8;
}

- (id)newEnumeratorFromStartTime:(double)a3 options:(unint64_t)a4
{
  inner = self->_inner;
  v7 = [MEMORY[0x1E695DF00] distantFuture];
  [v7 timeIntervalSinceReferenceDate];
  v9 = [(BMStreamDatastore *)inner newEnumeratorFromStartTime:a4 endTime:a3 options:v8];

  return v9;
}

@end