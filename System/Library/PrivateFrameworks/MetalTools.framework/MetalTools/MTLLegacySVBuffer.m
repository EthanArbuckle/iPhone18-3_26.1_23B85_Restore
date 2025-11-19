@interface MTLLegacySVBuffer
- (MTLLegacySVBuffer)initWithBuffer:(id)a3 device:(id)a4;
- (MTLLegacySVBuffer)initWithBuffer:(id)a3 heap:(id)a4 device:(id)a5;
- (MTLLegacySVBuffer)initWithBuffer:(id)a3 heap:(id)a4 device:(id)a5 offset:(unint64_t)a6 length:(unint64_t)a7 track:(BOOL)a8;
- (id)newLinearTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5 bytesPerImage:(unint64_t)a6;
- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5;
- (void)dealloc;
- (void)setBufferIndex:(unint64_t)a3;
@end

@implementation MTLLegacySVBuffer

- (MTLLegacySVBuffer)initWithBuffer:(id)a3 device:(id)a4
{
  v7 = [a3 length];

  return [(MTLLegacySVBuffer *)self initWithBuffer:a3 device:a4 offset:0 length:v7 track:1];
}

- (MTLLegacySVBuffer)initWithBuffer:(id)a3 heap:(id)a4 device:(id)a5
{
  v9 = [a3 length];

  return [(MTLLegacySVBuffer *)self initWithBuffer:a3 heap:a4 device:a5 offset:0 length:v9 track:1];
}

- (MTLLegacySVBuffer)initWithBuffer:(id)a3 heap:(id)a4 device:(id)a5 offset:(unint64_t)a6 length:(unint64_t)a7 track:(BOOL)a8
{
  v8 = a8;
  v12 = a4;
  if (!a4)
  {
    a4 = a5;
  }

  v16.receiver = self;
  v16.super_class = MTLLegacySVBuffer;
  v13 = [(MTLToolsResource *)&v16 initWithBaseObject:a3 parent:a4 heap:v12];
  v14 = v13;
  if (v13)
  {
    v13->_offset = a6;
    v13->_length = a7;
    if (v8 && (*(a5 + 286) & 0x80) != 0)
    {
      v13->_descriptorHeap = a5 + 296;
      [(MTLLegacySVBuffer *)v13 setBufferIndex:LegacySVBufferDescriptorHeap::createHandle((a5 + 296), v13)];
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
      MTLLegacySVSetBufferForResourceHandle(self->super.super.super._device, bufferIndex, 0);
      LegacySVBufferDescriptorHeap::freeBufferHandle(self->_descriptorHeap, self->_bufferIndex);
    }

    self->_bufferIndex = a3;
    if (a3)
    {
      device = self->super.super.super._device;

      MTLLegacySVSetBufferForResourceHandle(device, a3, self);
    }
  }
}

@end