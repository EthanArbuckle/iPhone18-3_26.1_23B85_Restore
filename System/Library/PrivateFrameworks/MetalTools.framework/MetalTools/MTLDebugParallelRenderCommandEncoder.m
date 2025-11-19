@interface MTLDebugParallelRenderCommandEncoder
- (MTLDebugParallelRenderCommandEncoder)initWithBaseRenderPass:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (id)formattedDescription:(unint64_t)a3;
- (id)renderCommandEncoder;
- (id)sampledRenderCommandEncoderWithProgramInfoBuffer:(id *)a3 capacity:(unint64_t)a4;
- (void)dealloc;
- (void)endEncoding;
- (void)endEncoding_private;
- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setColorStoreActionOptions:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setDepthStoreAction:(unint64_t)a3;
- (void)setDepthStoreActionOptions:(unint64_t)a3;
- (void)setStencilStoreAction:(unint64_t)a3;
- (void)setStencilStoreActionOptions:(unint64_t)a3;
@end

@implementation MTLDebugParallelRenderCommandEncoder

- (MTLDebugParallelRenderCommandEncoder)initWithBaseRenderPass:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5
{
  v13.receiver = self;
  v13.super_class = MTLDebugParallelRenderCommandEncoder;
  v6 = [(MTLToolsParallelRenderCommandEncoder *)&v13 initWithParallelRenderCommandEncoder:a3 parent:a4 descriptor:?];
  if (v6)
  {
    v7 = [a5 copy];
    v6->_descriptor = v7;
    if (v7)
    {
      v8 = [(MTLRenderPassDescriptor *)v7 colorAttachments];
      for (i = 0; i != 10; ++i)
      {
        v10 = [(MTLRenderPassColorAttachmentDescriptorArray *)v8 _descriptorAtIndex:i];
        if (v10)
        {
          v11 = v10;
          if ([v10 texture])
          {
            if ([v11 storeAction] == 4)
            {
              *(&v6->_unknownStoreActions + 1) |= 1 << i;
            }
          }
        }
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDebugParallelRenderCommandEncoder;
  [(MTLToolsObject *)&v3 dealloc];
}

- (id)sampledRenderCommandEncoderWithProgramInfoBuffer:(id *)a3 capacity:(unint64_t)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = [[MTLDebugRenderCommandEncoder alloc] initWithRenderCommandEncoder:v8 parallelRenderCommandEncoder:self descriptor:self->_descriptor];
    objc_autoreleasePoolPop(v7);

    return v9;
  }

  else
  {
    objc_autoreleasePoolPop(v7);
    return 0;
  }
}

- (id)renderCommandEncoder
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [[MTLDebugRenderCommandEncoder alloc] initWithRenderCommandEncoder:v4 parallelRenderCommandEncoder:self descriptor:self->_descriptor];
    objc_autoreleasePoolPop(v3);

    return v5;
  }

  else
  {
    objc_autoreleasePoolPop(v3);
    return 0;
  }
}

- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if (a4 >= 8)
  {
    [MTLDebugParallelRenderCommandEncoder setColorStoreAction:atIndex:];
  }

  v7 = [(MTLRenderPassColorAttachmentDescriptorArray *)[(MTLRenderPassDescriptor *)self->_descriptor colorAttachments] _descriptorAtIndex:a4];
  _MTLDebugValidateDeferredStoreActionOnDevice([(MTLToolsObject *)self device], a3, v7, a4, *(&self->_unknownStoreActions + 1));
  [v7 setStoreAction:a3];
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setColorStoreAction:a3 atIndex:a4];
}

- (void)setDepthStoreAction:(unint64_t)a3
{
  v5 = [(MTLRenderPassColorAttachmentDescriptorArray *)[(MTLRenderPassDescriptor *)self->_descriptor colorAttachments] _descriptorAtIndex:8];
  _MTLDebugValidateDeferredStoreActionOnDevice([(MTLToolsObject *)self device], a3, v5, 8uLL, *(&self->_unknownStoreActions + 1));
  [v5 setStoreAction:a3];
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setDepthStoreAction:a3];
}

- (void)setStencilStoreAction:(unint64_t)a3
{
  v5 = [(MTLRenderPassColorAttachmentDescriptorArray *)[(MTLRenderPassDescriptor *)self->_descriptor colorAttachments] _descriptorAtIndex:9];
  _MTLDebugValidateDeferredStoreActionOnDevice([(MTLToolsObject *)self device], a3, v5, 9uLL, *(&self->_unknownStoreActions + 1));
  [v5 setStoreAction:a3];
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setStencilStoreAction:a3];
}

- (void)setColorStoreActionOptions:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if (a4 >= 8)
  {
    [MTLDebugParallelRenderCommandEncoder setColorStoreActionOptions:atIndex:];
  }

  v7 = [(MTLRenderPassColorAttachmentDescriptorArray *)[(MTLRenderPassDescriptor *)self->_descriptor colorAttachments] _descriptorAtIndex:a4];
  _MTLDebugValidateDeferredStoreActionOptionsOnDevice([(MTLToolsObject *)self device], a3, v7, a4, *(&self->_unknownStoreActions + 1));
  [v7 setStoreActionOptions:a3];
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setColorStoreActionOptions:a3 atIndex:a4];
}

- (void)setDepthStoreActionOptions:(unint64_t)a3
{
  v5 = [(MTLRenderPassColorAttachmentDescriptorArray *)[(MTLRenderPassDescriptor *)self->_descriptor colorAttachments] _descriptorAtIndex:8];
  _MTLDebugValidateDeferredStoreActionOptionsOnDevice([(MTLToolsObject *)self device], a3, v5, 8, *(&self->_unknownStoreActions + 1));
  [v5 setStoreActionOptions:a3];
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setDepthStoreActionOptions:a3];
}

- (void)setStencilStoreActionOptions:(unint64_t)a3
{
  v5 = [(MTLRenderPassColorAttachmentDescriptorArray *)[(MTLRenderPassDescriptor *)self->_descriptor colorAttachments] _descriptorAtIndex:9];
  _MTLDebugValidateDeferredStoreActionOptionsOnDevice([(MTLToolsObject *)self device], a3, v5, 9, *(&self->_unknownStoreActions + 1));
  [v5 setStoreActionOptions:a3];
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setStencilStoreActionOptions:a3];
}

- (void)endEncoding_private
{
  v23 = *MEMORY[0x277D85DE8];
  descriptor = self->_descriptor;
  if (descriptor)
  {
    v4 = [(MTLRenderPassDescriptor *)descriptor colorAttachments];
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v21 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = [(MTLRenderPassColorAttachmentDescriptorArray *)v4 _descriptorAtIndex:v6];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 texture];
        if (v12)
        {
          v13 = v12;
          if (v6 > 7)
          {
            v14 = [v11 storeAction];
            if (v6 == 8)
            {
              if (v14 == 4)
              {
                [MTLDebugParallelRenderCommandEncoder endEncoding_private];
              }

              v8 = [v11 storeAction];
              v5 = 1;
            }

            else
            {
              if (v14 == 4)
              {
                [MTLDebugParallelRenderCommandEncoder endEncoding_private];
              }

              v21 = [v11 storeAction];
              v7 = *([v11 _descriptorPrivate] + 104);
              v9 = 1;
            }
          }

          else if ([v11 storeAction] == 4)
          {
            [MTLDebugParallelRenderCommandEncoder endEncoding_private];
          }

          if ([v13 storageMode] == 3 && objc_msgSend(v11, "storeAction") && objc_msgSend(v11, "storeAction") != 2)
          {
            [MTLDebugParallelRenderCommandEncoder endEncoding_private];
          }

          v15 = MTLReportFailureTypeEnabled();
          if (v6 <= 7 && v15 && ((*(&self->_unknownStoreActions + 1) >> v6) & 1) != 0)
          {
            [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] validateStoreLoadTransition:v11 atIndex:v6 renderTargetArrayLength:[(MTLRenderPassDescriptor *)self->_descriptor renderTargetArrayLength]];
          }
        }
      }

      ++v6;
    }

    while (v6 != 10);
    if (v5 & v9)
    {
      _MTLValidateDepthStencilStoreState(v8, v21, v7, 0);
    }

    if ([(MTLToolsDevice *)self->super.super.super._device storeValidationEnabled])
    {
      v16 = objc_autoreleasePoolPush();
      v17 = [(MTLDebugParallelRenderCommandEncoder *)self renderCommandEncoder];
      v22[0] = xmmword_22E27C300;
      v22[1] = unk_22E27C310;
      device = self->super.super.super._device;
      v19 = atomic_load(&self->_attachmentWriteMask.__a_.__a_value);
      [(MTLToolsDevice *)device clearRenderEncoder:v17 writeMask:v19 withCheckerboard:v22];
      [v17 endEncoding];
      objc_autoreleasePoolPop(v16);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)endEncoding
{
  [(MTLDebugParallelRenderCommandEncoder *)self endEncoding_private];
  v3.receiver = self;
  v3.super_class = MTLDebugParallelRenderCommandEncoder;
  [(MTLToolsParallelRenderCommandEncoder *)&v3 endEncoding];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  [(MTLDebugParallelRenderCommandEncoder *)self endEncoding_private];
  v4.receiver = self;
  v4.super_class = MTLDebugParallelRenderCommandEncoder;
  return [(MTLToolsParallelRenderCommandEncoder *)&v4 endEncodingAndRetrieveProgramAddressTable];
}

- (id)formattedDescription:(unint64_t)a3
{
  v5 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = MTLDebugParallelRenderCommandEncoder;
  v6 = [(MTLToolsObject *)&v10 description];
  descriptor = self->_descriptor;
  if (descriptor)
  {
    v8 = [(MTLRenderPassDescriptor *)descriptor formattedDescription:a3 + 4];
  }

  else
  {
    v8 = @"<null>";
  }

  return [v5 stringWithFormat:@"%@%@", v6, v8];
}

@end