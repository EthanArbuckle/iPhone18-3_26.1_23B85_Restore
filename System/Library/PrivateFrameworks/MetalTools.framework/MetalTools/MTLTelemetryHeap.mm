@interface MTLTelemetryHeap
- (MTLTelemetryHeap)initWithHeap:(id)heap descriptor:(id)descriptor device:(id)device;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options offset:(unint64_t)offset;
- (id)newTextureWithDescriptor:(id)descriptor;
- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset;
- (unint64_t)setPurgeableState:(unint64_t)state;
@end

@implementation MTLTelemetryHeap

- (MTLTelemetryHeap)initWithHeap:(id)heap descriptor:(id)descriptor device:(id)device
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = MTLTelemetryHeap;
  v7 = [(MTLToolsObject *)&v13 initWithBaseObject:heap parent:device];
  v8 = v7;
  if (v7)
  {
    v7->_telemetryDevice = device;
    if ([device enableTelemetry])
    {
      if (*MEMORY[0x277CD7168])
      {
        if (*MEMORY[0x277CD7168] != 1)
        {
          goto LABEL_8;
        }

        printf("\n\nHeap, size=%u", [descriptor size]);
      }

      telemetryLog = [device telemetryLog];
      if (os_log_type_enabled(telemetryLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [descriptor size];
        *buf = 67109120;
        v15 = v10;
        _os_log_impl(&dword_22E0FF000, telemetryLog, OS_LOG_TYPE_DEFAULT, "Heap, size=%u", buf, 8u);
      }
    }
  }

LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [[MTLTelemetryBuffer alloc] initWithBuffer:result device:self->_telemetryDevice options:options];

    return v8;
  }

  return result;
}

- (id)newTextureWithDescriptor:(id)descriptor
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLTelemetryTexture alloc] initWithBaseTexture:result device:self->_telemetryDevice descriptor:descriptor];

    return v7;
  }

  return result;
}

- (unint64_t)setPurgeableState:(unint64_t)state
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject setPurgeableState:state];
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options offset:(unint64_t)offset
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLTelemetryBuffer alloc] initWithBuffer:result device:self->_telemetryDevice options:options];

    return v9;
  }

  return result;
}

- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [[MTLTelemetryTexture alloc] initWithBaseTexture:result device:self->_telemetryDevice descriptor:descriptor];

    return v8;
  }

  return result;
}

@end