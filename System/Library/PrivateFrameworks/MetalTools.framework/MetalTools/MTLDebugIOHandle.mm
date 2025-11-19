@interface MTLDebugIOHandle
- (MTLDebugIOHandle)initWithBaseObject:(id)a3 parent:(id)a4;
- (int64_t)decompress:(void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5 stagingBuffer:(void *)a6 stagingBufferSize:(unint64_t)a7;
- (int64_t)read:(void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5 stagingBuffer:(void *)a6 stagingBufferSize:(unint64_t)a7;
- (unint64_t)getHandleOffset:(unint64_t)a3 offset:(unint64_t)a4;
- (unint64_t)globalTraceObjectID;
- (unint64_t)stagingBufferSize:(unint64_t)a3 offset:(unint64_t)a4;
- (void)dealloc;
- (void)readIntoStagingBuffer:(unint64_t)a3 offset:(unint64_t)a4 stagingBuffer:(void *)a5 stagingBufferSize:(unint64_t)a6;
@end

@implementation MTLDebugIOHandle

- (MTLDebugIOHandle)initWithBaseObject:(id)a3 parent:(id)a4
{
  if (a3)
  {
    v5.receiver = self;
    v5.super_class = MTLDebugIOHandle;
    return [(MTLToolsIOHandle *)&v5 initWithBaseObject:a3 parent:a4];
  }

  else
  {

    return 0;
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLDebugIOHandle;
  [(MTLToolsIOHandle *)&v2 dealloc];
}

- (unint64_t)globalTraceObjectID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 globalTraceObjectID];
}

- (int64_t)read:(void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5 stagingBuffer:(void *)a6 stagingBufferSize:(unint64_t)a7
{
  v12 = [(MTLToolsObject *)self baseObject];

  return [v12 read:a3 size:a4 offset:a5 stagingBuffer:a6 stagingBufferSize:a7];
}

- (void)readIntoStagingBuffer:(unint64_t)a3 offset:(unint64_t)a4 stagingBuffer:(void *)a5 stagingBufferSize:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  return [v10 readIntoStagingBuffer:a3 offset:a4 stagingBuffer:a5 stagingBufferSize:a6];
}

- (unint64_t)stagingBufferSize:(unint64_t)a3 offset:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 stagingBufferSize:a3 offset:a4];
}

- (unint64_t)getHandleOffset:(unint64_t)a3 offset:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 getHandleOffset:a3 offset:a4];
}

- (int64_t)decompress:(void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5 stagingBuffer:(void *)a6 stagingBufferSize:(unint64_t)a7
{
  v12 = [(MTLToolsObject *)self baseObject];

  return [v12 decompress:a3 size:a4 offset:a5 stagingBuffer:a6 stagingBufferSize:a7];
}

@end