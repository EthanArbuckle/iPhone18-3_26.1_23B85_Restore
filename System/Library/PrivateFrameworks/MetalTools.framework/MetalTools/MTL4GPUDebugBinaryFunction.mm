@interface MTL4GPUDebugBinaryFunction
- (void)initImageData:(id)a3;
@end

@implementation MTL4GPUDebugBinaryFunction

- (void)initImageData:(id)a3
{
  if (!self->data)
  {
    v4 = [[MTLGPUDebugImageData alloc] initWithBinaryFunction:self debugInstrumentationData:[(MTL4ToolsBinaryFunction *)self debugInstrumentationData] device:a3];
    v5 = 0;
    atomic_compare_exchange_strong(&self->data, &v5, v4);
    if (v5)
    {
    }
  }

  data = self->data;
  v7 = [-[MTLToolsObject debugInstrumentationData](self->super.super._baseObject debugInstrumentationData];

  [(MTLGPUDebugImageData *)data setConstantData:v7];
}

@end