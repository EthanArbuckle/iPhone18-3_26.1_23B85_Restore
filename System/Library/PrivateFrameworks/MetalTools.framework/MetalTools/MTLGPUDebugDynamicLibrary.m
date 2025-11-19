@interface MTLGPUDebugDynamicLibrary
- (MTLGPUDebugDynamicLibrary)initWithDynamicLibrary:(id)a3 device:(id)a4;
- (void)dealloc;
- (void)prepareForUsage;
@end

@implementation MTLGPUDebugDynamicLibrary

- (MTLGPUDebugDynamicLibrary)initWithDynamicLibrary:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLGPUDebugDynamicLibrary;
  return [(MTLToolsObject *)&v5 initWithBaseObject:a3 parent:a4];
}

- (void)prepareForUsage
{
  if (!self->_imageData && (HIBYTE(self->super.super._device[2].dynamicLibraryObjectCache) & 0x40) != 0)
  {
    v3 = [[MTLGPUDebugImageData alloc] initWithDynamicLibrary:self];
    v4 = 0;
    atomic_compare_exchange_strong(&self->_imageData, &v4, v3);
    if (v4)
    {
    }

    imageData = self->_imageData;
    v6 = [(MTLDebugInstrumentationData *)[(MTLToolsDynamicLibrary *)self debugInstrumentationData] globalConstantsData];

    [(MTLGPUDebugImageData *)imageData setConstantData:v6];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLGPUDebugDynamicLibrary;
  [(MTLToolsDynamicLibrary *)&v3 dealloc];
}

@end