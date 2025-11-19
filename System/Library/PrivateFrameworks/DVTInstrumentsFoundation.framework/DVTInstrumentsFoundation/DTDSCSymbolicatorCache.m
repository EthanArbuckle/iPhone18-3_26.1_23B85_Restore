@interface DTDSCSymbolicatorCache
- (DTDSCSymbolicatorCache)init;
- (_CSTypeRef)symbolicatorForSharedCacheUUID:(id)a3;
- (void)dealloc;
@end

@implementation DTDSCSymbolicatorCache

- (DTDSCSymbolicatorCache)init
{
  v4.receiver = self;
  v4.super_class = DTDSCSymbolicatorCache;
  v2 = [(DTDSCSymbolicatorCache *)&v4 init];
  if (v2)
  {
    v2->_sharedCacheUUIDSymbolicators = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277D025E0]);
  }

  return v2;
}

- (void)dealloc
{
  CFRelease(self->_sharedCacheUUIDSymbolicators);
  v3.receiver = self;
  v3.super_class = DTDSCSymbolicatorCache;
  [(DTDSCSymbolicatorCache *)&v3 dealloc];
}

- (_CSTypeRef)symbolicatorForSharedCacheUUID:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  Value = CFDictionaryGetValue(self->_sharedCacheUUIDSymbolicators, v4);
  if (Value)
  {
    v6 = *Value;
    v7 = Value[1];
  }

  else
  {
    [v4 getUUIDBytes:v23];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3010000000;
    v21 = 0;
    v22 = 0;
    v20 = &unk_248061803;
    CSSymbolicatorForeachSharedCache();
    v8 = v18[4];
    v9 = v18[5];
    v10 = CSIsNull();
    sharedCacheUUIDSymbolicators = self->_sharedCacheUUIDSymbolicators;
    if (v10)
    {
      CFDictionarySetValue(sharedCacheUUIDSymbolicators, v4, &unk_24803DCE0);
      v6 = 0;
      v7 = 0;
    }

    else
    {
      CFDictionarySetValue(sharedCacheUUIDSymbolicators, v4, v18 + 4);
      v12 = v18[4];
      v13 = v18[5];
      CSRelease();
      v6 = v18[4];
      v7 = v18[5];
    }

    _Block_object_dispose(&v17, 8);
  }

  v14 = *MEMORY[0x277D85DE8];
  v15 = v6;
  v16 = v7;
  result._opaque_2 = v16;
  result._opaque_1 = v15;
  return result;
}

@end