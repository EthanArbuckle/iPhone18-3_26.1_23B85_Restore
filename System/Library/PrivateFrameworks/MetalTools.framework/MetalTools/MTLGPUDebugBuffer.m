@interface MTLGPUDebugBuffer
- (MTLGPUDebugBuffer)initWithBuffer:(id)a3 device:(id)a4;
- (MTLGPUDebugBuffer)initWithBuffer:(id)a3 heap:(id)a4 device:(id)a5;
- (MTLGPUDebugBuffer)initWithBuffer:(id)a3 heap:(id)a4 device:(id)a5 offset:(unint64_t)a6 length:(unint64_t)a7 track:(BOOL)a8;
- (id).cxx_construct;
- (id)newLinearTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5 bytesPerImage:(unint64_t)a6;
- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5;
- (void)dealloc;
- (void)setBufferIndex:(unint64_t)a3;
@end

@implementation MTLGPUDebugBuffer

- (MTLGPUDebugBuffer)initWithBuffer:(id)a3 device:(id)a4
{
  v7 = [a3 length];

  return [(MTLGPUDebugBuffer *)self initWithBuffer:a3 device:a4 offset:0 length:v7 track:1];
}

- (MTLGPUDebugBuffer)initWithBuffer:(id)a3 heap:(id)a4 device:(id)a5
{
  v9 = [a3 length];

  return [(MTLGPUDebugBuffer *)self initWithBuffer:a3 heap:a4 device:a5 offset:0 length:v9 track:1];
}

- (MTLGPUDebugBuffer)initWithBuffer:(id)a3 heap:(id)a4 device:(id)a5 offset:(unint64_t)a6 length:(unint64_t)a7 track:(BOOL)a8
{
  v8 = a8;
  v12 = a4;
  if (!a4)
  {
    a4 = a5;
  }

  v17.receiver = self;
  v17.super_class = MTLGPUDebugBuffer;
  v14 = [(MTLToolsResource *)&v17 initWithBaseObject:a3 parent:a4 heap:v12];
  v15 = v14;
  if (v14)
  {
    v14->_offset = a6;
    v14->_length = a7;
    v14->_bufferEndAddress = a7 + a6 + [a3 gpuAddress];
    if (v8 && (*(a5 + 286) & 0x80) != 0)
    {
      v15->_descriptorHeap = a5 + 296;
      if (!([a3 gpuAddress] >> 44))
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

- (id)newLinearTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5 bytesPerImage:(unint64_t)a6
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newLinearTextureWithDescriptor:a3 offset:a4 bytesPerRow:a5 bytesPerImage:a6];
  if (result)
  {

    return CreateTexture(result, self);
  }

  return result;
}

- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newTextureWithDescriptor:a3 offset:a4 bytesPerRow:a5];
  if (result)
  {

    return CreateTexture(result, self);
  }

  return result;
}

- (void)setBufferIndex:(unint64_t)a3
{
  bufferIndex = self->_bufferIndex;
  if (bufferIndex != a3)
  {
    if (bufferIndex)
    {
      MTLGPUDebugSetBufferForResourceHandle(self->super.super.super._device, bufferIndex, 0);
      GPUDebugBufferDescriptorHeap::freeBufferHandle(self->_descriptorHeap, self->_bufferIndex);
    }

    self->_bufferIndex = a3;
    if (a3)
    {
      device = self->super.super.super._device;

      MTLGPUDebugSetBufferForResourceHandle(device, a3, self);
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