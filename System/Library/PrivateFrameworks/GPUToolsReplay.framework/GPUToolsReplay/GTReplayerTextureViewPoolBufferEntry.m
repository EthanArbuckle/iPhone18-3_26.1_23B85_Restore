@interface GTReplayerTextureViewPoolBufferEntry
+ (id)entryWithBuffer:(id)a3 descriptor:(id)a4 offset:(unint64_t)a5 bytesPerRow:(unint64_t)a6;
- (GTReplayerTextureViewPoolBufferEntry)initWithBuffer:(id)a3 descriptor:(id)a4 offset:(unint64_t)a5 bytesPerRow:(unint64_t)a6;
- (id)materializeTextureView;
@end

@implementation GTReplayerTextureViewPoolBufferEntry

- (id)materializeTextureView
{
  v2 = [(MTLBuffer *)self->_buffer newTextureWithDescriptor:self->_descriptor offset:self->_offset bytesPerRow:self->_bytesPerRow];

  return v2;
}

- (GTReplayerTextureViewPoolBufferEntry)initWithBuffer:(id)a3 descriptor:(id)a4 offset:(unint64_t)a5 bytesPerRow:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = GTReplayerTextureViewPoolBufferEntry;
  v13 = [(GTReplayerTextureViewPoolBufferEntry *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_buffer, a3);
    objc_storeStrong(&v14->_descriptor, a4);
    v14->_offset = a5;
    v14->_bytesPerRow = a6;
  }

  return v14;
}

+ (id)entryWithBuffer:(id)a3 descriptor:(id)a4 offset:(unint64_t)a5 bytesPerRow:(unint64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [[a1 alloc] initWithBuffer:v11 descriptor:v10 offset:a5 bytesPerRow:a6];

  return v12;
}

@end