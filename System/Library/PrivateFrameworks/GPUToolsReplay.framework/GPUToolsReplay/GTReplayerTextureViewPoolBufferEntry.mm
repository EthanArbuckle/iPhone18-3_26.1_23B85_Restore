@interface GTReplayerTextureViewPoolBufferEntry
+ (id)entryWithBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row;
- (GTReplayerTextureViewPoolBufferEntry)initWithBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row;
- (id)materializeTextureView;
@end

@implementation GTReplayerTextureViewPoolBufferEntry

- (id)materializeTextureView
{
  v2 = [(MTLBuffer *)self->_buffer newTextureWithDescriptor:self->_descriptor offset:self->_offset bytesPerRow:self->_bytesPerRow];

  return v2;
}

- (GTReplayerTextureViewPoolBufferEntry)initWithBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row
{
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  v16.receiver = self;
  v16.super_class = GTReplayerTextureViewPoolBufferEntry;
  v13 = [(GTReplayerTextureViewPoolBufferEntry *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_buffer, buffer);
    objc_storeStrong(&v14->_descriptor, descriptor);
    v14->_offset = offset;
    v14->_bytesPerRow = row;
  }

  return v14;
}

+ (id)entryWithBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row
{
  descriptorCopy = descriptor;
  bufferCopy = buffer;
  v12 = [[self alloc] initWithBuffer:bufferCopy descriptor:descriptorCopy offset:offset bytesPerRow:row];

  return v12;
}

@end