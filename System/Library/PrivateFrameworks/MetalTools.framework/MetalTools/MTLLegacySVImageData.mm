@interface MTLLegacySVImageData
- (MTLLegacySVImageData)initWithDynamicLibrary:(id)library;
- (MTLLegacySVImageData)initWithFunction:(id)function;
- (MTLLegacySVImageData)initWithFunction:(id)function debugInstrumentationData:(id)data;
- (id).cxx_construct;
- (void)_applyConstantRelocation;
- (void)_applyConstantRelocation:(id)relocation;
- (void)_applyImageIDRelocation:(id)relocation;
- (void)dealloc;
- (void)setConstantData:(id)data;
@end

@implementation MTLLegacySVImageData

- (MTLLegacySVImageData)initWithDynamicLibrary:(id)library
{
  v6.receiver = self;
  v6.super_class = MTLLegacySVImageData;
  v4 = [(MTLLegacySVImageData *)&v6 init];
  *(v4 + 21) = v4;
  *(v4 + 2) = [library device];
  objc_storeWeak(v4 + 24, library);
  *(v4 + 18) = [objc_msgSend(library "installName")];
  *(v4 + 19) = [library debugInstrumentationData];
  *(v4 + 40) = 1;
  [v4 _applyImageIDRelocation:objc_loadWeak(v4 + 24)];
  return v4;
}

- (MTLLegacySVImageData)initWithFunction:(id)function
{
  debugInstrumentationData = [function debugInstrumentationData];

  return [(MTLLegacySVImageData *)self initWithFunction:function debugInstrumentationData:debugInstrumentationData];
}

- (MTLLegacySVImageData)initWithFunction:(id)function debugInstrumentationData:(id)data
{
  v8.receiver = self;
  v8.super_class = MTLLegacySVImageData;
  v6 = [(MTLLegacySVImageData *)&v8 init];
  *(v6 + 21) = v6;
  *(v6 + 2) = [function device];
  objc_storeWeak(v6 + 23, function);
  *(v6 + 18) = [objc_msgSend(function "name")];
  *(v6 + 22) = [function functionType];
  *(v6 + 19) = data;
  *(v6 + 40) = 0;
  [v6 _applyImageIDRelocation:objc_loadWeak(v6 + 23)];
  return v6;
}

- (void)_applyConstantRelocation
{
  v3 = *(self + 40);
  if (v3 == 1)
  {
    v4 = 192;
  }

  else
  {
    if (v3)
    {
      return;
    }

    v4 = 184;
  }

  Weak = objc_loadWeak((self + v4));

  [(MTLLegacySVImageData *)self _applyConstantRelocation:Weak];
}

- (void)_applyConstantRelocation:(id)relocation
{
  if ([*(self + 2) supportsGlobalVariableRelocationCompute] && (*(self + 40) || (*(self + 22) - 4) <= 2))
  {
    v7 = MTLLegacySVBufferHandleToOffset(*(self + 11));
    v5 = [objc_alloc(MEMORY[0x277CD6D40]) initWithSymbolName:@"mtl.global_constants_handle" bytes:&v7 length:8];
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(objc_msgSend(relocation, "relocations"), "count") + 2}];
    if ([relocation relocations])
    {
      [v6 addObjectsFromArray:{objc_msgSend(relocation, "relocations")}];
    }

    [v6 addObject:v5];
    [relocation setRelocations:v6];
  }
}

- (void)_applyImageIDRelocation:(id)relocation
{
  if ([*(self + 2) supportsGlobalVariableRelocationCompute] && (*(self + 40) || (*(self + 22) - 4) <= 2))
  {
    v6 = [objc_alloc(MEMORY[0x277CD6D40]) initWithSymbolName:@"mtl.current_image_id" bytes:self + 168 length:8];
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(objc_msgSend(relocation, "relocations"), "count") + 2}];
    if ([relocation relocations])
    {
      [v5 addObjectsFromArray:{objc_msgSend(relocation, "relocations")}];
    }

    [v5 addObject:v6];
    [relocation setRelocations:v5];
  }
}

- (void)setConstantData:(id)data
{
  v11 = *MEMORY[0x277D85DE8];
  std::mutex::lock((self + 24));
  if (data && [data length])
  {
    if (!*(self + 1))
    {
      LegacySVConstantBufferCache::getOrCreateBuffer((*(self + 2) + 432), data, v8);
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

      [(MTLLegacySVImageData *)self _applyConstantRelocation];
    }
  }

  else
  {
    [(MTLLegacySVImageData *)self _applyConstantRelocation];
  }

  std::mutex::unlock((self + 24));
  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  if (*(self + 17))
  {
    LegacySVConstantBufferCache::releaseBuffer((*(self + 2) + 432), self + 2);
  }

  v3.receiver = self;
  v3.super_class = MTLLegacySVImageData;
  [(MTLLegacySVImageData *)&v3 dealloc];
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