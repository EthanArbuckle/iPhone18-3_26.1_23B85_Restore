@interface MTLToolsIOHandle
- (MTLToolsIOHandle)initWithBaseObject:(id)object parent:(id)parent;
- (NSString)label;
- (int64_t)decompress:(void *)decompress size:(unint64_t)size offset:(unint64_t)offset stagingBuffer:(void *)buffer stagingBufferSize:(unint64_t)bufferSize;
- (int64_t)read:(void *)read size:(unint64_t)size offset:(unint64_t)offset stagingBuffer:(void *)buffer stagingBufferSize:(unint64_t)bufferSize;
- (int64_t)read:(void *)read size:(unint64_t)size offset:(unint64_t)offset stagingBuffer:(void *)buffer stagingBufferSize:(unint64_t)bufferSize needsDecompress:(BOOL *)decompress;
- (unint64_t)getHandleOffset:(unint64_t)offset offset:(unint64_t)a4;
- (unint64_t)globalTraceObjectID;
- (unint64_t)length;
- (unint64_t)stagingBufferSize:(unint64_t)size offset:(unint64_t)offset;
- (unsigned)vnioID;
- (void)dealloc;
- (void)readIntoStagingBuffer:(unint64_t)buffer offset:(unint64_t)offset stagingBuffer:(void *)stagingBuffer stagingBufferSize:(unint64_t)size;
- (void)readIntoStagingBuffer:(unint64_t)buffer offset:(unint64_t)offset stagingBuffer:(void *)stagingBuffer stagingBufferSize:(unint64_t)size needsDecompress:(BOOL *)decompress;
- (void)setLabel:(id)label;
@end

@implementation MTLToolsIOHandle

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (void)setLabel:(id)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setLabel:label];
}

- (unsigned)vnioID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject vnioID];
}

- (MTLToolsIOHandle)initWithBaseObject:(id)object parent:(id)parent
{
  if (object)
  {
    v5.receiver = self;
    v5.super_class = MTLToolsIOHandle;
    return [(MTLToolsObject *)&v5 initWithBaseObject:object parent:parent];
  }

  else
  {

    return 0;
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLToolsIOHandle;
  [(MTLToolsObject *)&v2 dealloc];
}

- (unint64_t)globalTraceObjectID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject globalTraceObjectID];
}

- (int64_t)read:(void *)read size:(unint64_t)size offset:(unint64_t)offset stagingBuffer:(void *)buffer stagingBufferSize:(unint64_t)bufferSize needsDecompress:(BOOL *)decompress
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject read:read size:size offset:offset stagingBuffer:buffer stagingBufferSize:bufferSize needsDecompress:decompress];
}

- (void)readIntoStagingBuffer:(unint64_t)buffer offset:(unint64_t)offset stagingBuffer:(void *)stagingBuffer stagingBufferSize:(unint64_t)size needsDecompress:(BOOL *)decompress
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject readIntoStagingBuffer:buffer offset:offset stagingBuffer:stagingBuffer stagingBufferSize:size needsDecompress:decompress];
}

- (int64_t)read:(void *)read size:(unint64_t)size offset:(unint64_t)offset stagingBuffer:(void *)buffer stagingBufferSize:(unint64_t)bufferSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject read:read size:size offset:offset stagingBuffer:buffer stagingBufferSize:bufferSize];
}

- (void)readIntoStagingBuffer:(unint64_t)buffer offset:(unint64_t)offset stagingBuffer:(void *)stagingBuffer stagingBufferSize:(unint64_t)size
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject readIntoStagingBuffer:buffer offset:offset stagingBuffer:stagingBuffer stagingBufferSize:size];
}

- (unint64_t)stagingBufferSize:(unint64_t)size offset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject stagingBufferSize:size offset:offset];
}

- (unint64_t)getHandleOffset:(unint64_t)offset offset:(unint64_t)a4
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getHandleOffset:offset offset:a4];
}

- (int64_t)decompress:(void *)decompress size:(unint64_t)size offset:(unint64_t)offset stagingBuffer:(void *)buffer stagingBufferSize:(unint64_t)bufferSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject decompress:decompress size:size offset:offset stagingBuffer:buffer stagingBufferSize:bufferSize];
}

- (unint64_t)length
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject length];
}

@end