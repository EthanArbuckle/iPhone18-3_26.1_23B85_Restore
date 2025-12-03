@interface MTLTelemetryBuffer
- (MTLTelemetryBuffer)initWithBuffer:(id)buffer device:(id)device bytes:(const void *)bytes options:(unint64_t)options;
- (MTLTelemetryBuffer)initWithBuffer:(id)buffer device:(id)device options:(unint64_t)options;
- (id)newLinearTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row;
- (void)accumBufferDistribution:(id)distribution options:(unint64_t)options;
@end

@implementation MTLTelemetryBuffer

- (void)accumBufferDistribution:(id)distribution options:(unint64_t)options
{
  if ([distribution enableTelemetry])
  {
    v6 = *(distribution + 91);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__MTLTelemetryBuffer_accumBufferDistribution_options___block_invoke;
    v7[3] = &unk_2787B4928;
    v7[4] = distribution;
    v7[5] = self;
    dispatch_sync(v6, v7);
  }
}

uint64_t __54__MTLTelemetryBuffer_accumBufferDistribution_options___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 216);
  result = [*(a1 + 40) length];
  if (result)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
      if (*(v1 + 4) < result)
      {
        *(v1 + 4) = result;
      }

      if (*v1 <= result)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(v1 + 4) = result;
    }

    *v1 = result;
LABEL_9:
    *(v1 + 8) += result;
    *(v1 + 16) = v3 + 1;
  }

  return result;
}

- (MTLTelemetryBuffer)initWithBuffer:(id)buffer device:(id)device options:(unint64_t)options
{
  v10.receiver = self;
  v10.super_class = MTLTelemetryBuffer;
  v7 = [(MTLToolsResource *)&v10 initWithBaseObject:buffer parent:?];
  v8 = v7;
  if (v7)
  {
    [(MTLTelemetryBuffer *)v7 accumBufferDistribution:device options:options];
  }

  return v8;
}

- (MTLTelemetryBuffer)initWithBuffer:(id)buffer device:(id)device bytes:(const void *)bytes options:(unint64_t)options
{
  v11.receiver = self;
  v11.super_class = MTLTelemetryBuffer;
  bytes = [(MTLToolsResource *)&v11 initWithBaseObject:buffer parent:device, bytes];
  v9 = bytes;
  if (bytes)
  {
    [(MTLTelemetryBuffer *)bytes accumBufferDistribution:device options:options];
  }

  return v9;
}

- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v10 = result;
    v11 = [[MTLTelemetryTexture alloc] initWithBaseTexture:result device:[(MTLToolsObject *)self device] buffer:self descriptor:descriptor offset:offset bytesPerRow:row];

    return v11;
  }

  return result;
}

- (id)newLinearTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v11 = result;
    v12 = [[MTLTelemetryTexture alloc] initWithBaseTexture:result device:[(MTLToolsObject *)self device] buffer:self descriptor:descriptor offset:offset bytesPerRow:row];

    return v12;
  }

  return result;
}

@end