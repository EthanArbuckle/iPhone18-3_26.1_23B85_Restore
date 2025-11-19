@interface MTLTelemetryBuffer
- (MTLTelemetryBuffer)initWithBuffer:(id)a3 device:(id)a4 bytes:(const void *)a5 options:(unint64_t)a6;
- (MTLTelemetryBuffer)initWithBuffer:(id)a3 device:(id)a4 options:(unint64_t)a5;
- (id)newLinearTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5 bytesPerImage:(unint64_t)a6;
- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5;
- (void)accumBufferDistribution:(id)a3 options:(unint64_t)a4;
@end

@implementation MTLTelemetryBuffer

- (void)accumBufferDistribution:(id)a3 options:(unint64_t)a4
{
  if ([a3 enableTelemetry])
  {
    v6 = *(a3 + 91);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__MTLTelemetryBuffer_accumBufferDistribution_options___block_invoke;
    v7[3] = &unk_2787B4928;
    v7[4] = a3;
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

- (MTLTelemetryBuffer)initWithBuffer:(id)a3 device:(id)a4 options:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = MTLTelemetryBuffer;
  v7 = [(MTLToolsResource *)&v10 initWithBaseObject:a3 parent:?];
  v8 = v7;
  if (v7)
  {
    [(MTLTelemetryBuffer *)v7 accumBufferDistribution:a4 options:a5];
  }

  return v8;
}

- (MTLTelemetryBuffer)initWithBuffer:(id)a3 device:(id)a4 bytes:(const void *)a5 options:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = MTLTelemetryBuffer;
  v8 = [(MTLToolsResource *)&v11 initWithBaseObject:a3 parent:a4, a5];
  v9 = v8;
  if (v8)
  {
    [(MTLTelemetryBuffer *)v8 accumBufferDistribution:a4 options:a6];
  }

  return v9;
}

- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v10 = result;
    v11 = [[MTLTelemetryTexture alloc] initWithBaseTexture:result device:[(MTLToolsObject *)self device] buffer:self descriptor:a3 offset:a4 bytesPerRow:a5];

    return v11;
  }

  return result;
}

- (id)newLinearTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5 bytesPerImage:(unint64_t)a6
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v11 = result;
    v12 = [[MTLTelemetryTexture alloc] initWithBaseTexture:result device:[(MTLToolsObject *)self device] buffer:self descriptor:a3 offset:a4 bytesPerRow:a5];

    return v12;
  }

  return result;
}

@end