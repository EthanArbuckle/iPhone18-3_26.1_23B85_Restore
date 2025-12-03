@interface MTLLegacySVBuffer
- (MTLLegacySVBuffer)initWithBuffer:(id)buffer device:(id)device;
- (MTLLegacySVBuffer)initWithBuffer:(id)buffer heap:(id)heap device:(id)device;
- (MTLLegacySVBuffer)initWithBuffer:(id)buffer heap:(id)heap device:(id)device offset:(unint64_t)offset length:(unint64_t)length track:(BOOL)track;
- (id)newLinearTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row;
- (void)dealloc;
- (void)setBufferIndex:(unint64_t)index;
@end

@implementation MTLLegacySVBuffer

- (MTLLegacySVBuffer)initWithBuffer:(id)buffer device:(id)device
{
  v7 = [buffer length];

  return [(MTLLegacySVBuffer *)self initWithBuffer:buffer device:device offset:0 length:v7 track:1];
}

- (MTLLegacySVBuffer)initWithBuffer:(id)buffer heap:(id)heap device:(id)device
{
  v9 = [buffer length];

  return [(MTLLegacySVBuffer *)self initWithBuffer:buffer heap:heap device:device offset:0 length:v9 track:1];
}

- (MTLLegacySVBuffer)initWithBuffer:(id)buffer heap:(id)heap device:(id)device offset:(unint64_t)offset length:(unint64_t)length track:(BOOL)track
{
  trackCopy = track;
  heapCopy = heap;
  if (!heap)
  {
    heap = device;
  }

  v16.receiver = self;
  v16.super_class = MTLLegacySVBuffer;
  v13 = [(MTLToolsResource *)&v16 initWithBaseObject:buffer parent:heap heap:heapCopy];
  v14 = v13;
  if (v13)
  {
    v13->_offset = offset;
    v13->_length = length;
    if (trackCopy && (*(device + 286) & 0x80) != 0)
    {
      v13->_descriptorHeap = device + 296;
      [(MTLLegacySVBuffer *)v13 setBufferIndex:LegacySVBufferDescriptorHeap::createHandle((device + 296), v13)];
    }
  }

  return v14;
}

- (void)dealloc
{
  if (self->_descriptorHeap)
  {
    [(MTLLegacySVBuffer *)self setBufferIndex:0];
  }

  v3.receiver = self;
  v3.super_class = MTLLegacySVBuffer;
  [(MTLToolsBuffer *)&v3 dealloc];
}

- (id)newLinearTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newLinearTextureWithDescriptor:descriptor offset:offset bytesPerRow:row bytesPerImage:image];
  if (result)
  {

    return CreateTexture(result, self);
  }

  return result;
}

- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newTextureWithDescriptor:descriptor offset:offset bytesPerRow:row];
  if (result)
  {

    return CreateTexture(result, self);
  }

  return result;
}

- (void)setBufferIndex:(unint64_t)index
{
  bufferIndex = self->_bufferIndex;
  if (bufferIndex != index)
  {
    if (bufferIndex)
    {
      MTLLegacySVSetBufferForResourceHandle(self->super.super.super._device, bufferIndex, 0);
      LegacySVBufferDescriptorHeap::freeBufferHandle(self->_descriptorHeap, self->_bufferIndex);
    }

    self->_bufferIndex = index;
    if (index)
    {
      device = self->super.super.super._device;

      MTLLegacySVSetBufferForResourceHandle(device, index, self);
    }
  }
}

@end