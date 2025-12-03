@interface MTL4GPUDebugBinaryFunction
- (void)initImageData:(id)data;
@end

@implementation MTL4GPUDebugBinaryFunction

- (void)initImageData:(id)data
{
  if (!self->data)
  {
    v4 = [[MTLGPUDebugImageData alloc] initWithBinaryFunction:self debugInstrumentationData:[(MTL4ToolsBinaryFunction *)self debugInstrumentationData] device:data];
    v5 = 0;
    atomic_compare_exchange_strong(&self->data, &v5, v4);
    if (v5)
    {
    }
  }

  data = self->data;
  debugInstrumentationData = [-[MTLToolsObject debugInstrumentationData](self->super.super._baseObject debugInstrumentationData];

  [(MTLGPUDebugImageData *)data setConstantData:debugInstrumentationData];
}

@end