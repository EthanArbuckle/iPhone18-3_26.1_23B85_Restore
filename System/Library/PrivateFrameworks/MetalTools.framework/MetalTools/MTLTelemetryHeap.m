@interface MTLTelemetryHeap
- (MTLTelemetryHeap)initWithHeap:(id)a3 descriptor:(id)a4 device:(id)a5;
- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4;
- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4 offset:(unint64_t)a5;
- (id)newTextureWithDescriptor:(id)a3;
- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4;
- (unint64_t)setPurgeableState:(unint64_t)a3;
@end

@implementation MTLTelemetryHeap

- (MTLTelemetryHeap)initWithHeap:(id)a3 descriptor:(id)a4 device:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = MTLTelemetryHeap;
  v7 = [(MTLToolsObject *)&v13 initWithBaseObject:a3 parent:a5];
  v8 = v7;
  if (v7)
  {
    v7->_telemetryDevice = a5;
    if ([a5 enableTelemetry])
    {
      if (*MEMORY[0x277CD7168])
      {
        if (*MEMORY[0x277CD7168] != 1)
        {
          goto LABEL_8;
        }

        printf("\n\nHeap, size=%u", [a4 size]);
      }

      v9 = [a5 telemetryLog];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [a4 size];
        *buf = 67109120;
        v15 = v10;
        _os_log_impl(&dword_22E0FF000, v9, OS_LOG_TYPE_DEFAULT, "Heap, size=%u", buf, 8u);
      }
    }
  }

LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [[MTLTelemetryBuffer alloc] initWithBuffer:result device:self->_telemetryDevice options:a4];

    return v8;
  }

  return result;
}

- (id)newTextureWithDescriptor:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLTelemetryTexture alloc] initWithBaseTexture:result device:self->_telemetryDevice descriptor:a3];

    return v7;
  }

  return result;
}

- (unint64_t)setPurgeableState:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 setPurgeableState:a3];
}

- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4 offset:(unint64_t)a5
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLTelemetryBuffer alloc] initWithBuffer:result device:self->_telemetryDevice options:a4];

    return v9;
  }

  return result;
}

- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [[MTLTelemetryTexture alloc] initWithBaseTexture:result device:self->_telemetryDevice descriptor:a3];

    return v8;
  }

  return result;
}

@end