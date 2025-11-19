@interface IOGPUMemoryInfo
+ (id)initialize;
- (IOGPUMemoryInfo)init;
- (__CFArray)annotationList;
- (__CFArray)getAnnotationListAndEmitResourceInfo;
- (void)addResourceToList:(id)a3;
- (void)dealloc;
- (void)removeResourceFromList:(id)a3;
- (void)shutdown;
@end

@implementation IOGPUMemoryInfo

+ (id)initialize
{
  if (initialize_been_here != -1)
  {
    +[IOGPUMemoryInfo initialize];
  }

  return _ioGPUMemoryInfo;
}

uint64_t __29__IOGPUMemoryInfo_initialize__block_invoke()
{
  _ioGPUMemoryInfo = objc_alloc_init(IOGPUMemoryInfo);
  result = [_ioGPUMemoryInfo addDataSource:&__block_literal_global_3_0];
  *(_ioGPUMemoryInfo + 8) = result;
  return result;
}

- (IOGPUMemoryInfo)init
{
  v6.receiver = self;
  v6.super_class = IOGPUMemoryInfo;
  v2 = [(IOGPUMemoryInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_memoryInfoLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(IOGPUMetalResource);
    v3->fResourceListHead = v4;
    v4->next = v4;
    v3->fResourceListHead->prev = v3->fResourceListHead;
  }

  return v3;
}

- (__CFArray)annotationList
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  fResourceListHead = self->fResourceListHead;
  v5 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&self->_memoryInfoLock);
  for (i = fResourceListHead->next; i != self->fResourceListHead; i = i->next)
  {
    Weak = objc_loadWeak(&i->weakSelf);
    if (Weak)
    {
      v8 = [Weak copyAnnotations];
      if (v8)
      {
        v9 = v8;
        v11.length = CFArrayGetCount(v8);
        v11.location = 0;
        CFArrayAppendArray(Mutable, v9, v11);
        CFRelease(v9);
      }
    }
  }

  os_unfair_lock_unlock(&self->_memoryInfoLock);
  objc_autoreleasePoolPop(v5);
  return Mutable;
}

- (__CFArray)getAnnotationListAndEmitResourceInfo
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  fResourceListHead = self->fResourceListHead;
  v5 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&self->_memoryInfoLock);
  for (i = fResourceListHead->next; i != self->fResourceListHead; i = i->next)
  {
    Weak = objc_loadWeak(&i->weakSelf);
    if (Weak)
    {
      v8 = Weak;
      [Weak emitResourceInfoTraceEvent];
      v9 = [v8 copyAnnotations];
      if (v9)
      {
        v10 = v9;
        v12.length = CFArrayGetCount(v9);
        v12.location = 0;
        CFArrayAppendArray(Mutable, v10, v12);
        CFRelease(v10);
      }
    }
  }

  os_unfair_lock_unlock(&self->_memoryInfoLock);
  objc_autoreleasePoolPop(v5);
  return Mutable;
}

- (void)shutdown
{
  [(IOGPUMemoryInfo *)self removeDataSource:self->memlist_key];

  [(IOGPUMemoryInfo *)self dealloc];
}

- (void)addResourceToList:(id)a3
{
  os_unfair_lock_lock(&self->_memoryInfoLock);
  fResourceListHead = self->fResourceListHead;
  *(a3 + 33) = fResourceListHead;
  *(a3 + 34) = fResourceListHead->prev;
  self->fResourceListHead->prev->next = a3;
  self->fResourceListHead->prev = a3;

  os_unfair_lock_unlock(&self->_memoryInfoLock);
}

- (void)removeResourceFromList:(id)a3
{
  os_unfair_lock_lock(&self->_memoryInfoLock);
  *(*(a3 + 33) + 272) = *(a3 + 34);
  *(*(a3 + 34) + 264) = *(a3 + 33);
  *(a3 + 33) = 0;
  *(a3 + 34) = 0;

  os_unfair_lock_unlock(&self->_memoryInfoLock);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IOGPUMemoryInfo;
  [(IOGPUMemoryInfo *)&v3 dealloc];
}

@end