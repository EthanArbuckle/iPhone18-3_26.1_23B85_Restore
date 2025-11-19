@interface MTLGPUDebugImageData
- (MTLGPUDebugImageData)initWithBinaryFunction:(id)a3 debugInstrumentationData:(id)a4 device:(id)a5;
- (MTLGPUDebugImageData)initWithDynamicLibrary:(id)a3;
- (MTLGPUDebugImageData)initWithFunction:(id)a3;
- (MTLGPUDebugImageData)initWithFunction:(id)a3 debugInstrumentationData:(id)a4;
- (MTLGPUDebugImageData)initWithFunctionName:(id)a3 functionType:(unint64_t)a4 debugInstrumentationData:(id)a5 device:(id)a6;
- (id).cxx_construct;
- (void)_applyConstantRelocation;
- (void)_applyConstantRelocation:(id)a3;
- (void)_applyImageIDRelocation:(id)a3;
- (void)dealloc;
- (void)setConstantData:(id)a3;
@end

@implementation MTLGPUDebugImageData

- (MTLGPUDebugImageData)initWithDynamicLibrary:(id)a3
{
  v6.receiver = self;
  v6.super_class = MTLGPUDebugImageData;
  v4 = [(MTLGPUDebugImageData *)&v6 init];
  *(v4 + 21) = v4;
  *(v4 + 2) = [a3 device];
  objc_storeWeak(v4 + 24, a3);
  *(v4 + 18) = [objc_msgSend(a3 "installName")];
  *(v4 + 19) = [a3 debugInstrumentationData];
  *(v4 + 40) = 1;
  [v4 _applyImageIDRelocation:objc_loadWeak(v4 + 24)];
  return v4;
}

- (MTLGPUDebugImageData)initWithFunction:(id)a3
{
  v5 = [a3 debugInstrumentationData];

  return [(MTLGPUDebugImageData *)self initWithFunction:a3 debugInstrumentationData:v5];
}

- (MTLGPUDebugImageData)initWithFunction:(id)a3 debugInstrumentationData:(id)a4
{
  v8.receiver = self;
  v8.super_class = MTLGPUDebugImageData;
  v6 = [(MTLGPUDebugImageData *)&v8 init];
  *(v6 + 21) = v6;
  *(v6 + 2) = [a3 device];
  objc_storeWeak(v6 + 23, a3);
  *(v6 + 18) = [objc_msgSend(a3 "name")];
  *(v6 + 22) = [a3 functionType];
  *(v6 + 19) = a4;
  *(v6 + 40) = 0;
  [v6 _applyImageIDRelocation:objc_loadWeak(v6 + 23)];
  return v6;
}

- (MTLGPUDebugImageData)initWithFunctionName:(id)a3 functionType:(unint64_t)a4 debugInstrumentationData:(id)a5 device:(id)a6
{
  v12.receiver = self;
  v12.super_class = MTLGPUDebugImageData;
  v10 = [(MTLGPUDebugImageData *)&v12 init];
  *(v10 + 21) = v10;
  *(v10 + 2) = a6;
  objc_storeWeak(v10 + 23, 0);
  objc_storeWeak(v10 + 25, 0);
  *(v10 + 19) = a5;
  *(v10 + 18) = [a3 copy];
  *(v10 + 22) = a4;
  *(v10 + 40) = 3;
  return v10;
}

- (MTLGPUDebugImageData)initWithBinaryFunction:(id)a3 debugInstrumentationData:(id)a4 device:(id)a5
{
  v10.receiver = self;
  v10.super_class = MTLGPUDebugImageData;
  v8 = [(MTLGPUDebugImageData *)&v10 init];
  *(v8 + 21) = v8;
  *(v8 + 2) = a5;
  objc_storeWeak(v8 + 25, a3);
  *(v8 + 18) = [objc_msgSend(a3 "name")];
  *(v8 + 22) = [a3 functionType];
  *(v8 + 19) = a4;
  *(v8 + 40) = 2;
  [v8 _applyImageIDRelocation:objc_loadWeak(v8 + 25)];
  return v8;
}

- (void)_applyConstantRelocation
{
  v3 = *(self + 40);
  if (v3 <= 2)
  {
    Weak = objc_loadWeak(self + v3 + 23);

    [(MTLGPUDebugImageData *)self _applyConstantRelocation:Weak];
  }
}

- (void)_applyConstantRelocation:(id)a3
{
  if ([*(self + 2) supportsGlobalVariableRelocationCompute] && (*(self + 40) || (*(self + 22) - 4) <= 2))
  {
    v7 = [*(self + 1) handleForOffset:0];
    v5 = [objc_alloc(MEMORY[0x277CD6D40]) initWithSymbolName:@"mtl.global_constants_handle" bytes:&v7 length:8];
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(objc_msgSend(a3, "relocations"), "count") + 2}];
    if ([a3 relocations])
    {
      [v6 addObjectsFromArray:{objc_msgSend(a3, "relocations")}];
    }

    [v6 addObject:v5];
    [a3 setRelocations:v6];
  }
}

- (void)_applyImageIDRelocation:(id)a3
{
  if ([*(self + 2) supportsGlobalVariableRelocationCompute] && (*(self + 40) || (*(self + 22) - 4) <= 2))
  {
    v6 = [objc_alloc(MEMORY[0x277CD6D40]) initWithSymbolName:@"mtl.current_image_id" bytes:self + 168 length:8];
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(objc_msgSend(a3, "relocations"), "count") + 2}];
    if ([a3 relocations])
    {
      [v5 addObjectsFromArray:{objc_msgSend(a3, "relocations")}];
    }

    [v5 addObject:v6];
    [a3 setRelocations:v5];
  }
}

- (void)setConstantData:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  std::mutex::lock((self + 24));
  if (a3 && [a3 length])
  {
    if (!*(self + 1))
    {
      GPUDebugConstantBufferCache::getOrCreateBuffer((*(self + 2) + 448), a3, v8);
      v5 = v8[1];
      *(self + 6) = v8[0];
      *(self + 7) = v5;
      v6 = v10;
      *(self + 16) = v9;
      *(self + 17) = v6;
      *(self + 1) = v6;
      if (*(self + 11))
      {
        [v6 setBufferIndex:?];
      }

      else
      {
        *(self + 11) = [v6 bufferIndex];
      }

      [(MTLGPUDebugImageData *)self _applyConstantRelocation];
    }
  }

  else
  {
    [(MTLGPUDebugImageData *)self _applyConstantRelocation];
  }

  std::mutex::unlock((self + 24));
  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  if (*(self + 17))
  {
    GPUDebugConstantBufferCache::releaseBuffer((*(self + 2) + 448), self + 2);
  }

  v3.receiver = self;
  v3.super_class = MTLGPUDebugImageData;
  [(MTLGPUDebugImageData *)&v3 dealloc];
}

- (id).cxx_construct
{
  *(self + 3) = 850045863;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 10) = 0;
  *(self + 16) = 0;
  *(self + 17) = 0;
  return self;
}

@end