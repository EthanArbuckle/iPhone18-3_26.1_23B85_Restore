@interface MTLGPUDebugBuffer
- (MTLGPUDebugBuffer)initWithBuffer:(id)buffer device:(id)device;
- (MTLGPUDebugBuffer)initWithBuffer:(id)buffer heap:(id)heap device:(id)device;
- (MTLGPUDebugBuffer)initWithBuffer:(id)buffer heap:(id)heap device:(id)device offset:(unint64_t)offset length:(unint64_t)length track:(BOOL)track;
- (id).cxx_construct;
- (id)newLinearTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row;
- (void)dealloc;
- (void)setBufferIndex:(unint64_t)index;
@end

@implementation MTLGPUDebugBuffer

- (MTLGPUDebugBuffer)initWithBuffer:(id)buffer device:(id)device
{
  v7 = [buffer length];

  return [(MTLGPUDebugBuffer *)self initWithBuffer:buffer device:device offset:0 length:v7 track:1];
}

- (MTLGPUDebugBuffer)initWithBuffer:(id)buffer heap:(id)heap device:(id)device
{
  v9 = [buffer length];

  return [(MTLGPUDebugBuffer *)self initWithBuffer:buffer heap:heap device:device offset:0 length:v9 track:1];
}

- (MTLGPUDebugBuffer)initWithBuffer:(id)buffer heap:(id)heap device:(id)device offset:(unint64_t)offset length:(unint64_t)length track:(BOOL)track
{
  trackCopy = track;
  heapCopy = heap;
  if (!heap)
  {
    heap = device;
  }

  v17.receiver = self;
  v17.super_class = MTLGPUDebugBuffer;
  v14 = [(MTLToolsResource *)&v17 initWithBaseObject:buffer parent:heap heap:heapCopy];
  v15 = v14;
  if (v14)
  {
    v14->_offset = offset;
    v14->_length = length;
    v14->_bufferEndAddress = length + offset + [buffer gpuAddress];
    if (trackCopy && (*(device + 286) & 0x80) != 0)
    {
      v15->_descriptorHeap = device + 296;
      if (!([buffer gpuAddress] >> 44))
      {
        [(MTLGPUDebugBuffer *)v15 setBufferIndex:GPUDebugBufferDescriptorHeap::createHandle(v15->_descriptorHeap, v15)];
      }
    }
  }

  return v15;
}

- (void)dealloc
{
  if (self->_descriptorHeap)
  {
    [(MTLGPUDebugBuffer *)self setBufferIndex:0];
  }

  for (i = self->_activeViews.__table_.__first_node_.__next_; i; i = *i)
  {
    TextureTypeTable::setType(&self->super.super.super._device[3]._integrated, i[2], MTLTextureTypeTextureBuffer|MTLTextureTypeCubeArray);
  }

  v4.receiver = self;
  v4.super_class = MTLGPUDebugBuffer;
  [(MTLToolsBuffer *)&v4 dealloc];
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
      MTLGPUDebugSetBufferForResourceHandle(self->super.super.super._device, bufferIndex, 0);
      GPUDebugBufferDescriptorHeap::freeBufferHandle(self->_descriptorHeap, self->_bufferIndex);
    }

    self->_bufferIndex = index;
    if (index)
    {
      device = self->super.super.super._device;

      MTLGPUDebugSetBufferForResourceHandle(device, index, self);
    }
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 32) = 1065353216;
  return self;
}

@end