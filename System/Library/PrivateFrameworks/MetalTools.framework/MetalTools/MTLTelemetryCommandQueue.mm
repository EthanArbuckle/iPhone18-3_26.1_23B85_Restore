@interface MTLTelemetryCommandQueue
- (id)commandBuffer;
- (id)commandBufferWithDescriptor:(id)descriptor;
- (id)commandBufferWithUnretainedReferences;
@end

@implementation MTLTelemetryCommandQueue

- (id)commandBuffer
{
  device = [(MTLToolsObject *)self device];
  if (![(MTLDevice *)device enableTelemetry])
  {
    return 0;
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = *(device + 91);
    if (v6)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __41__MTLTelemetryCommandQueue_commandBuffer__block_invoke;
      block[3] = &unk_2787B4A48;
      block[4] = device;
      dispatch_sync(v6, block);
    }

    return [[MTLTelemetryCommandBuffer alloc] initWithCommandBuffer:v5 commandQueue:self descriptor:0];
  }

  return result;
}

- (id)commandBufferWithUnretainedReferences
{
  device = [(MTLToolsObject *)self device];
  if (![(MTLDevice *)device enableTelemetry])
  {
    return 0;
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = *(device + 91);
    if (v6)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__MTLTelemetryCommandQueue_commandBufferWithUnretainedReferences__block_invoke;
      block[3] = &unk_2787B4A48;
      block[4] = device;
      dispatch_sync(v6, block);
    }

    return [[MTLTelemetryCommandBuffer alloc] initWithCommandBuffer:v5 commandQueue:self descriptor:0];
  }

  return result;
}

uint64_t __65__MTLTelemetryCommandQueue_commandBufferWithUnretainedReferences__block_invoke(uint64_t result)
{
  ++**(*(result + 32) + 112);
  ++*(*(*(result + 32) + 112) + 4);
  return result;
}

- (id)commandBufferWithDescriptor:(id)descriptor
{
  device = [(MTLToolsObject *)self device];
  if (![(MTLDevice *)device enableTelemetry])
  {
    return 0;
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = *(device + 91);
    if (v8)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __56__MTLTelemetryCommandQueue_commandBufferWithDescriptor___block_invoke;
      v9[3] = &unk_2787B4928;
      v9[4] = device;
      v9[5] = descriptor;
      dispatch_sync(v8, v9);
    }

    return [[MTLTelemetryCommandBuffer alloc] initWithCommandBuffer:v7 commandQueue:self descriptor:descriptor];
  }

  return result;
}

uint64_t __56__MTLTelemetryCommandQueue_commandBufferWithDescriptor___block_invoke(uint64_t a1)
{
  ++**(*(a1 + 32) + 112);
  result = [*(a1 + 40) retainedReferences];
  if ((result & 1) == 0)
  {
    ++*(*(*(a1 + 32) + 112) + 4);
  }

  return result;
}

@end