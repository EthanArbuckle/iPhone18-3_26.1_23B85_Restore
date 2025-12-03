@interface IOGPUMemoryInfo
+ (id)initialize;
- (IOGPUMemoryInfo)init;
- (__CFArray)annotationList;
- (__CFArray)getAnnotationListAndEmitResourceInfo;
- (void)addResourceToList:(id)list;
- (void)dealloc;
- (void)removeResourceFromList:(id)list;
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
      copyAnnotations = [Weak copyAnnotations];
      if (copyAnnotations)
      {
        v9 = copyAnnotations;
        v11.length = CFArrayGetCount(copyAnnotations);
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
      copyAnnotations = [v8 copyAnnotations];
      if (copyAnnotations)
      {
        v10 = copyAnnotations;
        v12.length = CFArrayGetCount(copyAnnotations);
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

- (void)addResourceToList:(id)list
{
  os_unfair_lock_lock(&self->_memoryInfoLock);
  fResourceListHead = self->fResourceListHead;
  *(list + 33) = fResourceListHead;
  *(list + 34) = fResourceListHead->prev;
  self->fResourceListHead->prev->next = list;
  self->fResourceListHead->prev = list;

  os_unfair_lock_unlock(&self->_memoryInfoLock);
}

- (void)removeResourceFromList:(id)list
{
  os_unfair_lock_lock(&self->_memoryInfoLock);
  *(*(list + 33) + 272) = *(list + 34);
  *(*(list + 34) + 264) = *(list + 33);
  *(list + 33) = 0;
  *(list + 34) = 0;

  os_unfair_lock_unlock(&self->_memoryInfoLock);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IOGPUMemoryInfo;
  [(IOGPUMemoryInfo *)&v3 dealloc];
}

@end