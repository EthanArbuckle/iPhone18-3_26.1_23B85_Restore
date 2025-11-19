@interface MTLTelemetryParallelRenderCommandEncoder
- (MTLTelemetryParallelRenderCommandEncoder)initWithBaseRenderPass:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5;
- (id)renderCommandEncoder;
- (void)endEncoding;
@end

@implementation MTLTelemetryParallelRenderCommandEncoder

- (MTLTelemetryParallelRenderCommandEncoder)initWithBaseRenderPass:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5
{
  v9.receiver = self;
  v9.super_class = MTLTelemetryParallelRenderCommandEncoder;
  v7 = [MTLToolsParallelRenderCommandEncoder initWithParallelRenderCommandEncoder:sel_initWithParallelRenderCommandEncoder_parent_descriptor_ parent:a3 descriptor:?];
  if (v7)
  {
    v7->_descriptor = [a5 copy];
    v7->_telemetryDevice = [(MTLToolsObject *)v7 device];
    v7->_telemetryCommandBuffer = a4;
    v7->_encoderCount = 0;
  }

  return v7;
}

- (id)renderCommandEncoder
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    ++self->_encoderCount;
    v4 = [[MTLTelemetryRenderCommandEncoder alloc] initWithRenderCommandEncoder:result parent:self commandBuffer:self->_telemetryCommandBuffer descriptor:self->_descriptor];

    return v4;
  }

  return result;
}

- (void)endEncoding
{
  encoderCount = self->_encoderCount;
  if (encoderCount)
  {
    parallellRenderEncoderDistribution = self->_telemetryCommandBuffer->parallellRenderEncoderDistribution;
    if (parallellRenderEncoderDistribution->count)
    {
      if (encoderCount > parallellRenderEncoderDistribution->max)
      {
        parallellRenderEncoderDistribution->max = encoderCount;
        parallellRenderEncoderDistribution = self->_telemetryCommandBuffer->parallellRenderEncoderDistribution;
      }

      if (encoderCount >= parallellRenderEncoderDistribution->min)
      {
        goto LABEL_9;
      }
    }

    else
    {
      parallellRenderEncoderDistribution->max = encoderCount;
      parallellRenderEncoderDistribution = self->_telemetryCommandBuffer->parallellRenderEncoderDistribution;
    }

    parallellRenderEncoderDistribution->min = encoderCount;
LABEL_9:
    self->_telemetryCommandBuffer->parallellRenderEncoderDistribution->total += encoderCount;
    ++self->_telemetryCommandBuffer->parallellRenderEncoderDistribution->count;
  }

  v6 = [(MTLToolsObject *)self baseObject];

  [v6 endEncoding];
}

@end