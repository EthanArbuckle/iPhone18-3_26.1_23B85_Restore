@interface MTLTelemetryComputeCommandEncoder
- (MTLTelemetryComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor;
- (void)accumDispatchDistribution:(unint64_t)distribution threadgroupsPerGrid:(id *)grid threadsPerThreadgroup:(id *)threadgroup threadsPerGrid:(id *)perGrid;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)endEncoding;
- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count;
- (void)memoryBarrierWithScope:(unint64_t)scope;
- (void)setComputePipelineState:(id)state;
- (void)setTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
@end

@implementation MTLTelemetryComputeCommandEncoder

- (MTLTelemetryComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor
{
  v10.receiver = self;
  v10.super_class = MTLTelemetryComputeCommandEncoder;
  v6 = [(MTLToolsComputeCommandEncoder *)&v10 initWithComputeCommandEncoder:encoder parent:buffer descriptor:descriptor];
  v7 = v6;
  if (v6)
  {
    device = [(MTLToolsObject *)v6 device];
    v7->_telemetryDevice = device;
    if ([(MTLDevice *)device enableTelemetry])
    {
      v7->_telemetryCommandBuffer = buffer;
    }
  }

  return v7;
}

- (void)setComputePipelineState:(id)state
{
  if (state)
  {
    [state accumulateUsage];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setComputePipelineState:baseObject2];
}

- (void)accumDispatchDistribution:(unint64_t)distribution threadgroupsPerGrid:(id *)grid threadsPerThreadgroup:(id *)threadgroup threadsPerGrid:(id *)perGrid
{
  distributionCopy = distribution;
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    ++self->_ceDispatches;
    ++self->_telemetryCommandBuffer->cbDispatches;
    dispatchDistribution = self->_telemetryCommandBuffer->dispatchDistribution;
    if (!distributionCopy)
    {
      goto LABEL_11;
    }

    count = dispatchDistribution->var10.count;
    if (count)
    {
      if (dispatchDistribution->var10.max < distributionCopy)
      {
        dispatchDistribution->var10.max = distributionCopy;
      }

      if (dispatchDistribution->var10.min <= distributionCopy)
      {
        goto LABEL_10;
      }
    }

    else
    {
      dispatchDistribution->var10.max = distributionCopy;
    }

    dispatchDistribution->var10.min = distributionCopy;
LABEL_10:
    dispatchDistribution->var10.total += distributionCopy;
    dispatchDistribution->var10.count = count + 1;
LABEL_11:
    var0 = grid->var0;
    if (!grid->var0)
    {
      goto LABEL_20;
    }

    v14 = dispatchDistribution->var1.count;
    if (v14)
    {
      if (dispatchDistribution->var1.max < var0)
      {
        dispatchDistribution->var1.max = var0;
      }

      if (dispatchDistribution->var1.min <= var0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      dispatchDistribution->var1.max = var0;
    }

    dispatchDistribution->var1.min = var0;
LABEL_19:
    dispatchDistribution->var1.total += var0;
    dispatchDistribution->var1.count = v14 + 1;
LABEL_20:
    var1 = grid->var1;
    if (!var1)
    {
      goto LABEL_29;
    }

    v16 = dispatchDistribution->var2.count;
    if (v16)
    {
      if (dispatchDistribution->var2.max < var1)
      {
        dispatchDistribution->var2.max = var1;
      }

      if (dispatchDistribution->var2.min <= var1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      dispatchDistribution->var2.max = var1;
    }

    dispatchDistribution->var2.min = var1;
LABEL_28:
    dispatchDistribution->var2.total += var1;
    dispatchDistribution->var2.count = v16 + 1;
LABEL_29:
    var2 = grid->var2;
    if (!var2)
    {
      goto LABEL_38;
    }

    v18 = dispatchDistribution->var3.count;
    if (v18)
    {
      if (dispatchDistribution->var3.max < var2)
      {
        dispatchDistribution->var3.max = var2;
      }

      if (dispatchDistribution->var3.min <= var2)
      {
        goto LABEL_37;
      }
    }

    else
    {
      dispatchDistribution->var3.max = var2;
    }

    dispatchDistribution->var3.min = var2;
LABEL_37:
    dispatchDistribution->var3.total += var2;
    dispatchDistribution->var3.count = v18 + 1;
LABEL_38:
    v19 = threadgroup->var0;
    if (!threadgroup->var0)
    {
      goto LABEL_47;
    }

    v20 = dispatchDistribution->var7.count;
    if (v20)
    {
      if (dispatchDistribution->var7.max < v19)
      {
        dispatchDistribution->var7.max = v19;
      }

      if (dispatchDistribution->var7.min <= v19)
      {
        goto LABEL_46;
      }
    }

    else
    {
      dispatchDistribution->var7.max = v19;
    }

    dispatchDistribution->var7.min = v19;
LABEL_46:
    dispatchDistribution->var7.total += v19;
    dispatchDistribution->var7.count = v20 + 1;
LABEL_47:
    v21 = threadgroup->var1;
    if (!v21)
    {
      goto LABEL_56;
    }

    v22 = dispatchDistribution->var8.count;
    if (v22)
    {
      if (dispatchDistribution->var8.max < v21)
      {
        dispatchDistribution->var8.max = v21;
      }

      if (dispatchDistribution->var8.min <= v21)
      {
        goto LABEL_55;
      }
    }

    else
    {
      dispatchDistribution->var8.max = v21;
    }

    dispatchDistribution->var8.min = v21;
LABEL_55:
    dispatchDistribution->var8.total += v21;
    dispatchDistribution->var8.count = v22 + 1;
LABEL_56:
    v23 = threadgroup->var2;
    if (!v23)
    {
      goto LABEL_65;
    }

    v24 = dispatchDistribution->var9.count;
    if (v24)
    {
      if (dispatchDistribution->var9.max < v23)
      {
        dispatchDistribution->var9.max = v23;
      }

      if (dispatchDistribution->var9.min <= v23)
      {
        goto LABEL_64;
      }
    }

    else
    {
      dispatchDistribution->var9.max = v23;
    }

    dispatchDistribution->var9.min = v23;
LABEL_64:
    dispatchDistribution->var9.total += v23;
    dispatchDistribution->var9.count = v24 + 1;
LABEL_65:
    v25 = perGrid->var0;
    if (!perGrid->var0)
    {
      goto LABEL_74;
    }

    v26 = dispatchDistribution->var4.count;
    if (v26)
    {
      if (dispatchDistribution->var4.max < v25)
      {
        dispatchDistribution->var4.max = v25;
      }

      if (dispatchDistribution->var4.min <= v25)
      {
        goto LABEL_73;
      }
    }

    else
    {
      dispatchDistribution->var4.max = v25;
    }

    dispatchDistribution->var4.min = v25;
LABEL_73:
    dispatchDistribution->var4.total += v25;
    dispatchDistribution->var4.count = v26 + 1;
LABEL_74:
    v27 = perGrid->var1;
    if (!v27)
    {
      goto LABEL_83;
    }

    v28 = dispatchDistribution->var5.count;
    if (v28)
    {
      if (dispatchDistribution->var5.max < v27)
      {
        dispatchDistribution->var5.max = v27;
      }

      if (dispatchDistribution->var5.min <= v27)
      {
        goto LABEL_82;
      }
    }

    else
    {
      dispatchDistribution->var5.max = v27;
    }

    dispatchDistribution->var5.min = v27;
LABEL_82:
    dispatchDistribution->var5.total += v27;
    dispatchDistribution->var5.count = v28 + 1;
LABEL_83:
    v29 = perGrid->var2;
    if (!v29)
    {
      return;
    }

    v30 = dispatchDistribution->var6.count;
    if (v30)
    {
      if (dispatchDistribution->var6.max < v29)
      {
        dispatchDistribution->var6.max = v29;
      }

      if (dispatchDistribution->var6.min <= v29)
      {
        goto LABEL_91;
      }
    }

    else
    {
      dispatchDistribution->var6.max = v29;
    }

    dispatchDistribution->var6.min = v29;
LABEL_91:
    dispatchDistribution->var6.total += v29;
    dispatchDistribution->var6.count = v30 + 1;
  }
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  memset(v7, 0, sizeof(v7));
  memset(v8, 0, sizeof(v8));
  memset(v9, 0, sizeof(v9));
  [(MTLTelemetryComputeCommandEncoder *)self accumDispatchDistribution:length threadgroupsPerGrid:v9 threadsPerThreadgroup:v8 threadsPerGrid:v7];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  memset(v8, 0, sizeof(v8));
  v10 = *threadgroups;
  v9 = *threadgroup;
  [(MTLTelemetryComputeCommandEncoder *)self accumDispatchDistribution:0 threadgroupsPerGrid:&v10 threadsPerThreadgroup:&v9 threadsPerGrid:v8];
  baseObject = [(MTLToolsObject *)self baseObject];
  v10 = *threadgroups;
  v9 = *threadgroup;
  [baseObject dispatchThreadgroups:&v10 threadsPerThreadgroup:&v9];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup
{
  memset(v11, 0, sizeof(v11));
  memset(&v13, 0, sizeof(v13));
  v12 = *threadgroup;
  [(MTLTelemetryComputeCommandEncoder *)self accumDispatchDistribution:0 threadgroupsPerGrid:&v13 threadsPerThreadgroup:&v12 threadsPerGrid:v11];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  v13 = *threadgroup;
  [baseObject dispatchThreadgroupsWithIndirectBuffer:baseObject2 indirectBufferOffset:offset threadsPerThreadgroup:&v13];
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  memset(&v10, 0, sizeof(v10));
  v9 = *threadgroup;
  v8 = *threads;
  [(MTLTelemetryComputeCommandEncoder *)self accumDispatchDistribution:0 threadgroupsPerGrid:&v10 threadsPerThreadgroup:&v9 threadsPerGrid:&v8];
  baseObject = [(MTLToolsObject *)self baseObject];
  v10 = *threads;
  v9 = *threadgroup;
  [baseObject dispatchThreads:&v10 threadsPerThreadgroup:&v9];
}

- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  memset(v7, 0, sizeof(v7));
  memset(v8, 0, sizeof(v8));
  memset(v9, 0, sizeof(v9));
  [(MTLTelemetryComputeCommandEncoder *)self accumDispatchDistribution:0 threadgroupsPerGrid:v9 threadsPerThreadgroup:v8 threadsPerGrid:v7];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)endEncoding
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    ceDispatches = self->_ceDispatches;
    if (ceDispatches)
    {
      computeEncoderDispatchDistribution = self->_telemetryCommandBuffer->computeEncoderDispatchDistribution;
      if (computeEncoderDispatchDistribution->count)
      {
        if (ceDispatches > computeEncoderDispatchDistribution->max)
        {
          computeEncoderDispatchDistribution->max = ceDispatches;
          computeEncoderDispatchDistribution = self->_telemetryCommandBuffer->computeEncoderDispatchDistribution;
        }

        if (ceDispatches >= computeEncoderDispatchDistribution->min)
        {
          goto LABEL_10;
        }
      }

      else
      {
        computeEncoderDispatchDistribution->max = ceDispatches;
        computeEncoderDispatchDistribution = self->_telemetryCommandBuffer->computeEncoderDispatchDistribution;
      }

      computeEncoderDispatchDistribution->min = ceDispatches;
LABEL_10:
      self->_telemetryCommandBuffer->computeEncoderDispatchDistribution->total += ceDispatches;
      ++self->_telemetryCommandBuffer->computeEncoderDispatchDistribution->count;
    }
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject endEncoding];
}

- (void)setTexture:(id)texture atIndex:(unint64_t)index
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    v7 = index + 1;
    if (index != -1)
    {
      textureBindCount = self->_telemetryCommandBuffer->textureBindCount;
      if (textureBindCount->count)
      {
        if (v7 > textureBindCount->max)
        {
          textureBindCount->max = v7;
          textureBindCount = self->_telemetryCommandBuffer->textureBindCount;
        }

        if (v7 >= textureBindCount->min)
        {
          goto LABEL_10;
        }
      }

      else
      {
        textureBindCount->max = v7;
        textureBindCount = self->_telemetryCommandBuffer->textureBindCount;
      }

      textureBindCount->min = v7;
LABEL_10:
      self->_telemetryCommandBuffer->textureBindCount->total += v7;
      ++self->_telemetryCommandBuffer->textureBindCount->count;
    }
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject setTexture:baseObject2 atIndex:index];
}

- (void)setTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v17 = *MEMORY[0x277D85DE8];
  enableTelemetry = [(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry];
  v9 = location + length;
  if (enableTelemetry && v9 != 0)
  {
    textureBindCount = self->_telemetryCommandBuffer->textureBindCount;
    if (textureBindCount->count)
    {
      if (textureBindCount->max < v9)
      {
        textureBindCount->max = v9;
        textureBindCount = self->_telemetryCommandBuffer->textureBindCount;
      }

      if (textureBindCount->min <= v9)
      {
LABEL_15:
        self->_telemetryCommandBuffer->textureBindCount->total += v9;
        ++self->_telemetryCommandBuffer->textureBindCount->count;
        if (!length)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }
    }

    else
    {
      textureBindCount->max = v9;
      textureBindCount = self->_telemetryCommandBuffer->textureBindCount;
    }

    textureBindCount->min = v9;
    goto LABEL_15;
  }

  if (!length)
  {
    goto LABEL_18;
  }

LABEL_16:
  v12 = v16;
  v13 = length;
  do
  {
    v14 = *textures++;
    *v12++ = [v14 baseObject];
    --v13;
  }

  while (v13);
LABEL_18:
  [-[MTLToolsObject baseObject](self "baseObject")];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)memoryBarrierWithScope:(unint64_t)scope
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    ++self->_telemetryCommandBuffer->cbMemoryBarriers;
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject memoryBarrierWithScope:scope];
}

- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    ++self->_telemetryCommandBuffer->cbMemoryBarriers;
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject memoryBarrierWithResources:resources count:count];
}

@end