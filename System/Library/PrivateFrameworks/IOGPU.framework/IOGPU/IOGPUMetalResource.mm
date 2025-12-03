@interface IOGPUMetalResource
- (BOOL)doesAliasAllResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasAnyResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasResource:(id)resource;
- (IOGPUMetalResource)initWithDevice:(id)device options:(unint64_t)options args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)size;
- (IOGPUMetalResource)initWithResource:(id)resource;
- (NSString)label;
- (__CFArray)copyAnnotations;
- (__CFDictionary)copyAnnotationDictionary:(unint64_t)dictionary obj_key_name:(__CFString *)obj_key_name obj_dict:(__CFDictionary *)obj_dict;
- (id)initMemoryless:(id)memoryless descriptor:(id)descriptor;
- (id)initStandinWithDevice:(id)device;
- (id)retainedLabel;
- (int)setOwnerWithIdentity:(unsigned int)identity;
- (unint64_t)allocatedSize;
- (unint64_t)hazardTrackingMode;
- (unint64_t)heapOffset;
- (unint64_t)protectionOptions;
- (unint64_t)resourceOptions;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (void)annotateResource:(__CFDictionary *)resource;
- (void)dealloc;
- (void)emitResourceInfoTraceEvent;
- (void)makeAliasable;
- (void)setLabel:(id)label;
@end

@implementation IOGPUMetalResource

- (unint64_t)resourceOptions
{
  v2 = *&self->_anon_50[96];
  v3 = *&self->_anon_50[104];
  return v3 & 0xF | (16 * (v2 & 0xF)) | (([(IOGPUMetalResource *)self hazardTrackingMode]& 3) << 8);
}

- (void)dealloc
{
  if (*__globalGPUCommPage)
  {
    v3 = *&self->_anon_50[48];
    v4 = *&self->_res.var0;
    [*&self->_anon_50[32] registryID];
    [*&self->_anon_50[32] currentAllocatedSize];
    IOGPUDeviceTraceEvent();
  }

  if (*&self->_anon_50[64])
  {
    [_ioGPUMemoryInfo removeResourceFromList:self];
    objc_storeWeak(&self->weakSelf, 0);
    [*&self->_anon_50[32] _removeResource:self];
    IOGPUResourceRelease(*&self->_anon_50[64]);
    *&self->_anon_50[64] = 0;
  }

  *&self->_anon_50[32] = 0;
  *&self->_anon_50[40] = 0;
  v5.receiver = self;
  v5.super_class = IOGPUMetalResource;
  [(_MTLObjectWithLabel *)&v5 dealloc];
}

- (unint64_t)protectionOptions
{
  result = *&self->_anon_50[64];
  if (result)
  {
    return IOGPUResourceGetProtectionOptions(result);
  }

  return result;
}

- (unint64_t)allocatedSize
{
  if (*&self->_anon_50[136])
  {
    return *&self->_anon_50[160];
  }

  else
  {
    return [(IOGPUMetalResource *)self resourceSize];
  }
}

- (void)makeAliasable
{
  p_res = &self->_res;
  v3 = *&self->_anon_50[136];
  if (v3)
  {
    if (LOBYTE(p_res[4].vendor.reserved[3]) == 1)
    {
      [v3 unpinMemoryAtOffset:p_res[4].vendor.reserved[1] withLength:p_res[4].vendor.reserved[2]];
      LOBYTE(p_res[4].vendor.reserved[3]) = 0;
    }
  }
}

- (void)setLabel:(id)label
{
  p_res = &self->_res;
  if (*&self->_anon_50[40] != label)
  {
    v6 = [label copy];
    os_unfair_lock_lock(&p_res[4].vendor.reserved[3] + 1);
    v7 = *&p_res[1].var0;
    [(IOGPUMetalResource *)self _setLabel:v6];
    os_unfair_lock_unlock(&p_res[4].vendor.reserved[3] + 1);

    if (*__globalGPUCommPage)
    {
      deviceRef = [(__IOSurface *)p_res[1].info.iosurface deviceRef];
      v9 = p_res[2].vendor.reserved[0];
      v10 = p_res[2].vendor.reserved[1];
      [label cStringUsingEncoding:1];
      p_res[2].vendor.reserved[1] = IOGPUDeviceTraceObjectLabel(deviceRef, 8, 0, v9, v10);
    }
  }
}

- (id)retainedLabel
{
  p_res = &self->_res;
  os_unfair_lock_lock(&self->_anon_50[172]);
  v3 = *&p_res[1].var0;
  os_unfair_lock_unlock(&p_res[4].vendor.reserved[3] + 1);
  return v3;
}

- (NSString)label
{
  retainedLabel = [(IOGPUMetalResource *)self retainedLabel];

  return retainedLabel;
}

- (unint64_t)hazardTrackingMode
{
  v4 = (*&self->_anon_50[88] >> 8) & 3;
  if (v4)
  {
    return v4;
  }

  v6 = [(IOGPUMetalResource *)self heap:v2];
  if (!v6)
  {
    return 2;
  }

  return [(MTLHeap *)v6 hazardTrackingMode];
}

- (id)initStandinWithDevice:(id)device
{
  if (!device)
  {
    [IOGPUMetalResource initStandinWithDevice:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalResource initStandinWithDevice:];
  }

  v7.receiver = self;
  v7.super_class = IOGPUMetalResource;
  v5 = [(_MTLResource *)&v7 init];
  if (v5)
  {
    *&v5->_anon_50[32] = device;
    v5->_anon_50[128] = 1;
    *&v5->_anon_50[96] = 0;
    *&v5->_anon_50[104] = 0;
    *&v5->_anon_50[88] = 0;
    *&v5->_anon_50[112] = getpid();
    *&v5->_anon_50[120] = 2;
    *v5->_anon_50 = 0;
    *&v5->_anon_50[48] = 0;
    *&v5->_anon_50[72] = 0;
    *&v5->_anon_50[80] = 0;
    *&v5->_anon_50[64] = 0;
    *&v5->_res.var0 = *(&v5->_res.var1 + 3) << 56;
    *&v5->_anon_50[172] = 0;
    *&v5->_anon_50[16] = 0;
    *&v5->_anon_50[24] = 0;
    *&v5->_anon_50[8] = 0;
  }

  return v5;
}

- (IOGPUMetalResource)initWithDevice:(id)device options:(unint64_t)options args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)size
{
  if (!device)
  {
    [IOGPUMetalResource initWithDevice:options:args:argsSize:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalResource initWithDevice:options:args:argsSize:];
  }

  v27.receiver = self;
  v27.super_class = IOGPUMetalResource;
  v11 = [(_MTLResource *)&v27 init];
  if (v11)
  {
    *(v11 + 14) = device;
    v11[208] = 1;
    *(v11 + 21) = options;
    *(v11 + 22) = options >> 4;
    *(v11 + 23) = options & 0xF;
    *(v11 + 48) = getpid();
    *(v11 + 25) = 2;
    *(v11 + 216) = 0u;
    *(v11 + 232) = 0u;
    v11[248] = 1;
    *(v11 + 63) = 0;
    if (*(v11 + 22) == 3)
    {
      *(v11 + 20) = 0;
      *(v11 + 16) = 0;
      *(v11 + 19) = 0;
      *(v11 + 20) = 0;
      *(v11 + 18) = 0;
      *(v11 + 9) = v11[79] << 56;
      v11[208] = 0;
      *(v11 + 12) = 0;
      *(v11 + 13) = 0;
      *(v11 + 11) = 0;
    }

    else
    {
      if ((options & 0x300) == 0x100)
      {
        args->var0.var10 |= 0x1000u;
      }

      if (initWithDevice_options_args_argsSize__once_token != -1)
      {
        [IOGPUMetalResource initWithDevice:options:args:argsSize:];
      }

      v12 = *(v11 + 21);
      if ((v12 & 0x80000) != 0 || (initWithDevice_options_args_argsSize__gAllowCPUMapping & 1) == 0 && (options & 0x20000) == 0 && *(v11 + 22) == 2)
      {
        args->var0.var10 |= 0x2000u;
      }

      var10 = args->var0.var10;
      v14 = var10 & 0xFFFFFBCF | 0x10;
      v15 = var10 | 0x30;
      if ((v12 & 0x1000000) != 0)
      {
        v16 = v14;
      }

      else
      {
        v16 = v15;
      }

      if ((options & 0x40000) != 0)
      {
        v17 = 66560;
      }

      else
      {
        v17 = 1024;
      }

      args->var0.var10 = v16 | v17;
      v18 = IOGPUResourceCreate([*(v11 + 14) deviceRef], args, size);
      *(v11 + 18) = v18;
      ClientShared = IOGPUResourceGetClientShared(v18);
      *(v11 + 19) = ClientShared;
      if (!ClientShared)
      {

        return 0;
      }

      v20 = *(v11 + 18);
      *(v11 + 20) = *(v20 + 48);
      *(v11 + 16) = IOGPUResourceGetGlobalTraceObjectID(v20);
      *(v11 + 9) = IOGPUResourceGetResidentDataSize(*(v11 + 18)) & 0xFFFFFFFFFFFFFFLL | (v11[79] << 56);
      v21 = *(v11 + 18);
      v22 = *(v21 + 52);
      if (v22 == 130)
      {
        *(v11 + 20) = 0;
      }

      else if ((v22 & 0x80) == 0 || (args->var0.var10 & 0x200000) != 0)
      {
        *(v11 + 20) = IOGPUResourceGetDataBytes(v21);
        v21 = *(v11 + 18);
      }

      else
      {
        *(v11 + 20) = args->var0.var16.var0.var0;
      }

      *(v11 + 13) = IOGPUResourceGetGPUVirtualAddress(v21);
      *(v11 + 32) = 0;
      v23 = *(v11 + 18);
      if (*(v23 + 52) == 64)
      {
        *(v11 + 32) = IOGPUResourceGeMetadataBytes(v23);
        v23 = *(v11 + 18);
      }

      IOGPUResourceCreateAllocationIdentifierSet(v23, v11 + 11, v11 + 12);
      [device _addResource:v11];
      objc_storeWeak(v11 + 36, v11);
      [_ioGPUMemoryInfo addResourceToList:v11];
    }

    if (*__globalGPUCommPage)
    {
      v24 = *(v11 + 16);
      v25 = *(v11 + 9);
      [device registryID];
      [device currentAllocatedSize];
      IOGPUDeviceTraceEvent();
    }
  }

  return v11;
}

_BYTE *__59__IOGPUMetalResource_initWithDevice_options_args_argsSize___block_invoke()
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    initWithDevice_options_args_argsSize__gAllowCPUMapping = 1;
  }

  result = _MTLIsInternalBuild();
  if (result)
  {
    result = getenv("MTL_PRIVATE_ALLOW_CPU_ACCESS");
    if (result)
    {
      if (*result == 49 && !result[1])
      {
        initWithDevice_options_args_argsSize__gAllowCPUMapping = 1;
      }
    }
  }

  return result;
}

- (id)initMemoryless:(id)memoryless descriptor:(id)descriptor
{
  v8.receiver = self;
  v8.super_class = IOGPUMetalResource;
  v6 = [(_MTLResource *)&v8 init];
  if (v6)
  {
    *(v6 + 14) = memoryless;
    *(v6 + 168) = xmmword_1CA0CCDD0;
    *(v6 + 23) = [descriptor cpuCacheMode];
    *(v6 + 48) = getpid();
    *(v6 + 25) = 1;
    *(v6 + 20) = 0;
    *(v6 + 19) = 0;
    *(v6 + 20) = 0;
    *(v6 + 18) = 0;
    *(v6 + 9) = v6[79] << 56;
    *(v6 + 16) = 0;
    *(v6 + 63) = 0;
    *(v6 + 12) = 0;
    *(v6 + 13) = 0;
    *(v6 + 11) = 0;
    *(v6 + 216) = 0u;
    *(v6 + 232) = 0u;
    v6[248] = 0;
  }

  return v6;
}

- (IOGPUMetalResource)initWithResource:(id)resource
{
  if (!resource)
  {
    [IOGPUMetalResource initWithResource:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalResource initWithResource:];
  }

  v13.receiver = self;
  v13.super_class = IOGPUMetalResource;
  v5 = [(_MTLResource *)&v13 init];
  if (v5)
  {
    *(v5 + 14) = [resource device];
    v5[208] = 0;
    CFRetain(*(resource + 18));
    v6 = *(resource + 18);
    *(v5 + 18) = v6;
    *(v5 + 19) = IOGPUResourceGetClientShared(v6);
    v7 = *(resource + 4);
    v8 = *(resource + 10);
    *(v5 + 10) = v8;
    *(v5 + 4) = v7;
    v9 = *(v5 + 18);
    if (v8 != *(v9 + 48))
    {
      [IOGPUMetalResource initWithResource:];
    }

    *(v5 + 20) = *(resource + 20);
    *(v5 + 13) = IOGPUResourceGetGPUVirtualAddress(v9);
    *(v5 + 23) = *(resource + 23);
    *(v5 + 168) = *(resource + 168);
    *(v5 + 48) = getpid();
    *(v5 + 25) = *(resource + 25);
    *(v5 + 16) = *(resource + 16);
    *(v5 + 88) = *(resource + 88);
    objc_storeWeak(v5 + 36, v5);
    [_ioGPUMemoryInfo addResourceToList:v5];
    [*(v5 + 14) _addResource:v5];
    if (*__globalGPUCommPage)
    {
      v10 = *(v5 + 16);
      v11 = *(v5 + 9);
      [objc_msgSend(resource "device")];
      IOGPUDeviceTraceEvent();
    }
  }

  return v5;
}

- (unint64_t)setPurgeableState:(unint64_t)state
{
  p_res = &self->_res;
  if (self->_anon_50[128] != 1)
  {
    return 2;
  }

  if (state != 1 && state != 256)
  {
    *&self->_anon_50[120] = state;
  }

  v16 = v3;
  v17 = v4;
  if (state == 256 || (iosurface = self->_res.info.iosurface) == 0)
  {
    v14 = 0;
    if (state == 256)
    {
      v9 = 5;
    }

    else
    {
      v9 = 1;
    }

    if (state == 4)
    {
      v10 = 4;
    }

    else
    {
      v10 = v9;
    }

    if (state == 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = 1;
    }

    if (state == 2)
    {
      v11 = 2;
    }

    if (state <= 3)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    IOGPUResourceSetPurgeable(p_res[2].vendor.reserved[2], v12, &v14);
    v13 = (v14 - 2);
    if (v13 >= 3)
    {
      return 1;
    }

    else
    {
      return v13 + 2;
    }
  }

  else
  {
    v15 = 0;
    if (state - 2 >= 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = state - 2;
    }

    IOSurfaceSetPurgeable(iosurface, v7, &v15);
    if (v15 > 3)
    {
      return 4;
    }

    else
    {
      return qword_1CA0CCDE0[v15];
    }
  }
}

- (__CFDictionary)copyAnnotationDictionary:(unint64_t)dictionary obj_key_name:(__CFString *)obj_key_name obj_dict:(__CFDictionary *)obj_dict
{
  dictionaryCopy = dictionary;
  v7 = MEMORY[0x1E695E9D8];
  v8 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  CFDictionaryAddValue(Mutable, @"Processes", v10);
  CFRelease(v10);
  v11 = CFDictionaryCreateMutable(0, 0, v7, v8);
  CFArrayAppendValue(v10, v11);
  CFRelease(v11);
  valuePtr = getpid();
  v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(v11, @"PID", v12);
  CFRelease(v12);
  if (obj_key_name && obj_dict)
  {
    v13 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    CFDictionaryAddValue(v11, obj_key_name, v13);
    CFRelease(v13);
    CFArrayAppendValue(v13, obj_dict);
  }

  values = CFNumberCreate(0, kCFNumberSInt64Type, &dictionaryCopy);
  v14 = CFArrayCreate(0, &values, 1, MEMORY[0x1E695E9C0]);
  CFDictionaryAddValue(Mutable, @"AllocationIdentifiers", v14);
  CFRelease(v14);
  CFRelease(values);
  return Mutable;
}

- (void)annotateResource:(__CFDictionary *)resource
{
  p_res = &self->_res;
  valuePtr = *(*&self->_anon_50[64] + 48);
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(resource, @"Name", v5);
  CFRelease(v5);
  v7 = p_res[3].vendor.reserved[2];
  v6 = &p_res[3].vendor.reserved[2];
  if (v7 != getpid())
  {
    v8 = CFNumberCreate(0, kCFNumberIntType, v6);
    CFDictionaryAddValue(resource, @"ResponsiblePID", v8);
    CFRelease(v8);
  }
}

- (__CFArray)copyAnnotations
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  [(IOGPUMetalResource *)self annotateResource:Mutable];
  CFDictionaryAddValue(Mutable, @"Type", @"Buffer");
  retainedLabel = [(IOGPUMetalResource *)self retainedLabel];
  if (retainedLabel)
  {
    v5 = retainedLabel;
    v6 = CFStringCreateWithCString(0, [retainedLabel UTF8String], 0x600u);
  }

  else
  {
    v6 = CFStringCreateWithCString(0, "IOGPUMetalResource", 0x600u);
  }

  CFDictionaryAddValue(Mutable, @"Description", v6);
  CFRelease(v6);
  v7 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v8 = *&self->_anon_50[8];
  v9 = *&self->_anon_50[16];
  v10 = 1;
  do
  {
    v11 = v10;
    if (v8)
    {
      v12 = [(IOGPUMetalResource *)self copyAnnotationDictionary:v8 obj_key_name:@"OpenGLObjects" obj_dict:Mutable];
      CFArrayAppendValue(v7, v12);
      CFRelease(v12);
    }

    v10 = 0;
    v8 = v9;
  }

  while ((v11 & 1) != 0);
  CFRelease(Mutable);
  return v7;
}

- (unint64_t)heapOffset
{
  p_res = &self->_res;
  result = *&self->_anon_50[136];
  if (result)
  {
    if ([result type] == 1)
    {
      return p_res[4].vendor.reserved[1];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)doesAliasResource:(id)resource
{
  p_res = &self->_res;
  v4 = *&self->_anon_50[136];
  if (!v4)
  {
    return 0;
  }

  if (v4 != [resource heap])
  {
    return 0;
  }

  v7 = p_res[4].vendor.reserved[2];
  if (!v7)
  {
    return 0;
  }

  v8 = *(resource + 30);
  if (!v8)
  {
    return 0;
  }

  v9 = p_res[4].vendor.reserved[1];
  v10 = *(resource + 29);
  v11 = v10 + v8;
  return v9 + v7 > v10 && v11 > v9;
}

- (BOOL)doesAliasAllResources:(const void *)resources count:(unint64_t)count
{
  if (count)
  {
    v4 = *&self->_anon_50[136];
    v5 = *resources + 32;
    if (v4 == *(*resources + 27))
    {
      v6 = 0;
      v8 = *&self->_anon_50[160];
      v9 = 1;
      do
      {
        if (!v8)
        {
          break;
        }

        v10 = *(v5 + 26);
        if (!v10)
        {
          break;
        }

        v11 = *&self->_anon_50[152];
        v12 = *(v5 + 25);
        v13 = v12 + v10;
        if (v11 + v8 <= v12 || v13 <= v11)
        {
          break;
        }

        v6 = v9 >= count;
        if (count == v9)
        {
          break;
        }

        v5 = resources[v9] + 32;
        v15 = *(resources[v9++] + 27);
      }

      while (v4 == v15);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return v6;
}

- (BOOL)doesAliasAnyResources:(const void *)resources count:(unint64_t)count
{
  if (count)
  {
    p_res = &self->_res;
    v7 = 1;
    countCopy = count;
    v9 = 1;
    do
    {
      v10 = *&p_res[3].var0;
      if (v10 == [*resources heap])
      {
        v11 = p_res[4].vendor.reserved[2];
        if (v11)
        {
          v12 = *(*resources + 30);
          if (v12)
          {
            v13 = p_res[4].vendor.reserved[1];
            v14 = *(*resources + 29);
            v15 = v14 + v12;
            if (v13 + v11 > v14 && v15 > v13)
            {
              break;
            }
          }
        }
      }

      v9 = v7++ < count;
      ++resources;
      --countCopy;
    }

    while (countCopy);
  }

  else
  {
    return 0;
  }

  return v9;
}

- (int)setOwnerWithIdentity:(unsigned int)identity
{
  v3 = *&self->_anon_50[64];
  if (v3)
  {
    return IOGPUResourceSetOwnerIdentity(v3, identity);
  }

  else
  {
    return -536870206;
  }
}

- (void)emitResourceInfoTraceEvent
{
  p_res = &self->_res;
  if (*&self->_anon_50[32])
  {
    if (objc_loadWeak(&self->attachedResourceInfoTraceEmitter))
    {
      objc_loadWeak(&self->attachedResourceInfoTraceEmitter);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        [IOGPUMetalResource emitResourceInfoTraceEvent];
      }

      [objc_loadWeak(&self->attachedResourceInfoTraceEmitter) emitResourceInfoTraceEvent];
    }

    if (*__globalGPUCommPage)
    {
      v4 = p_res[2].vendor.reserved[0];
      v5 = *&p_res->var0 & 0xFFFFFFFFFFFFFFLL;

      IOGPUDeviceTraceEvent();
    }
  }
}

@end