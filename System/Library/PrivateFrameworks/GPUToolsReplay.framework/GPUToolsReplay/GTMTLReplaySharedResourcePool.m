@interface GTMTLReplaySharedResourcePool
- (GTMTLReplaySharedResourcePool)initWithDevice:(id)a3 bufferCapacity:(unint64_t)a4;
- (id)newBufferHeapWithLength:(unint64_t)a3;
- (id)newTextureWithDescriptor:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)reclaimBuffer:(id)a3;
- (void)releasePooledBuffers;
- (void)setMaxPooledBuffers:(unint64_t)a3;
- (void)waitUntilCapacity;
@end

@implementation GTMTLReplaySharedResourcePool

- (void)releasePooledBuffers
{
  pthread_mutex_lock(&self->_mutex);
  [(NSMutableArray *)self->_pooledBuffers removeAllObjects];

  pthread_mutex_unlock(&self->_mutex);
}

- (void)setMaxPooledBuffers:(unint64_t)a3
{
  pthread_mutex_lock(&self->_mutex);
  v5 = [(NSMutableArray *)self->_pooledBuffers count];
  if (v5 > a3)
  {
    [(NSMutableArray *)self->_pooledBuffers removeObjectsInRange:a3, v5 - a3];
  }

  self->_maxPooledBuffers = a3;

  pthread_mutex_unlock(&self->_mutex);
}

- (void)reclaimBuffer:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  pthread_mutex_lock(&self->_mutex);
  if (v5 == self->_defaultBufferCapacity && [(NSMutableArray *)self->_pooledBuffers count]< self->_maxPooledBuffers)
  {
    [(NSMutableArray *)self->_pooledBuffers addObject:v4];
  }

  pthread_mutex_unlock(&self->_mutex);

  atomic_fetch_add(&self->_usedSize, -v5);

  pthread_cond_broadcast(&self->_cond);
}

- (id)newTextureWithDescriptor:(id)a3 error:(id *)a4
{
  v92 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(MTLDevice *)self->_device heapTextureSizeAndAlignWithDescriptor:v6];
  v8 = v7;
  if (v7)
  {
    atomic_fetch_add(&self->_usedSize, v7);
    v9 = [(MTLDevice *)self->_device newTextureWithDescriptor:v6];
  }

  else
  {
    v10 = [v6 pixelFormat];
    if (v10 == 540)
    {
      v11 = 875704438;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v6 width];
    v13 = [v6 height];
    if (v12)
    {
      v14 = v13;
      if (v13)
      {
        if (v10 == 540)
        {
          v8 = MinBytesPerRow(v11, v12);
          if (v8)
          {
            if (IsBiplanar(v11))
            {
              v15 = (v12 + 1) >> 1;
              v16 = MinBytesPerRow(826486840, v12);
              v17 = MinBytesPerRow(843264056, v15);
              if (v16 <= v17)
              {
                v18 = v17;
              }

              else
              {
                v18 = v16;
              }

              v8 = (v14 + ((v14 + 1) >> 1)) * ((v18 + 15) & 0xFFFFFFF0);
            }

            else
            {
              v8 = ((v8 + 15) & 0x1FFFFFFF0) * v12;
            }
          }
        }
      }
    }

    atomic_fetch_add(&self->_usedSize, v8);
    v19 = [v6 width];
    v20 = [v6 height];
    v21 = 0;
    if (v19)
    {
      v22 = v20;
      if (v20)
      {
        if (v10 == 540)
        {
          v21 = MinBytesPerRow(v11, v19);
          if (v21)
          {
            v85 = a4;
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v24 = *MEMORY[0x277CD2B88];
            LODWORD(valuePtr) = v19;
            v25 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFDictionarySetValue(Mutable, v24, v25);
            CFRelease(v25);
            v26 = *MEMORY[0x277CD2A28];
            LODWORD(valuePtr) = v22;
            v27 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFDictionarySetValue(Mutable, v26, v27);
            CFRelease(v27);
            v28 = *MEMORY[0x277CD2A70];
            LODWORD(valuePtr) = v11;
            v29 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            theDict = Mutable;
            CFDictionarySetValue(Mutable, v28, v29);
            CFRelease(v29);
            if (IsBiplanar(v11))
            {
              v82 = (v19 + 1) >> 1;
              v80 = BytesPerElement(826486840);
              v84 = BytesPerElement(843264056);
              v81 = ElementWidth(826486840);
              v83 = ElementWidth(843264056);
              v30 = MinBytesPerRow(826486840, v19);
              v31 = MinBytesPerRow(843264056, v82);
              if (v30 <= v31)
              {
                v32 = v31;
              }

              else
              {
                v32 = v30;
              }

              v33 = (v32 + 15) & 0xFFFFFFF0;
              v34 = *MEMORY[0x277CD2968];
              LODWORD(valuePtr) = v33;
              v35 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
              CFDictionarySetValue(Mutable, v34, v35);
              CFRelease(v35);
              v36 = *MEMORY[0x277CD2948];
              LODWORD(valuePtr) = (v22 + ((v22 + 1) >> 1)) * v33;
              v37 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
              CFDictionarySetValue(Mutable, v36, v37);
              CFRelease(v37);
              v38 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              valuePtr = v38;
              v39 = *MEMORY[0x277CD2B50];
              key = *MEMORY[0x277CD2B50];
              v87 = v19;
              v40 = CFNumberCreate(0, kCFNumberIntType, &v87);
              CFDictionarySetValue(v38, v39, v40);
              CFRelease(v40);
              v41 = *MEMORY[0x277CD2B18];
              v78 = *MEMORY[0x277CD2B18];
              v87 = v22;
              v42 = CFNumberCreate(0, kCFNumberIntType, &v87);
              CFDictionarySetValue(v38, v41, v42);
              CFRelease(v42);
              v43 = *MEMORY[0x277CD2B38];
              v77 = *MEMORY[0x277CD2B38];
              v87 = 0;
              v44 = CFNumberCreate(0, kCFNumberIntType, &v87);
              CFDictionarySetValue(v38, v43, v44);
              CFRelease(v44);
              v45 = *MEMORY[0x277CD2AA0];
              v87 = v33;
              v46 = CFNumberCreate(0, kCFNumberIntType, &v87);
              CFDictionarySetValue(v38, v45, v46);
              CFRelease(v46);
              v47 = *MEMORY[0x277CD2A98];
              v87 = v80;
              v48 = CFNumberCreate(0, kCFNumberIntType, &v87);
              CFDictionarySetValue(v38, v47, v48);
              CFRelease(v48);
              v49 = *MEMORY[0x277CD2AF0];
              v87 = v81;
              v50 = CFNumberCreate(0, kCFNumberIntType, &v87);
              CFDictionarySetValue(v38, v49, v50);
              CFRelease(v50);
              v51 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              v91 = v51;
              v87 = v82;
              v52 = CFNumberCreate(0, kCFNumberIntType, &v87);
              CFDictionarySetValue(v51, key, v52);
              CFRelease(v52);
              v87 = (v22 + 1) >> 1;
              v53 = CFNumberCreate(0, kCFNumberIntType, &v87);
              CFDictionarySetValue(v51, v78, v53);
              CFRelease(v53);
              v87 = v33 * v22;
              v54 = CFNumberCreate(0, kCFNumberIntType, &v87);
              CFDictionarySetValue(v51, v77, v54);
              CFRelease(v54);
              v87 = v33;
              v55 = theDict;
              v56 = CFNumberCreate(0, kCFNumberIntType, &v87);
              CFDictionarySetValue(v51, v45, v56);
              CFRelease(v56);
              v87 = v84;
              v57 = CFNumberCreate(0, kCFNumberIntType, &v87);
              CFDictionarySetValue(v51, v47, v57);
              CFRelease(v57);
              v87 = v83;
              v58 = CFNumberCreate(0, kCFNumberIntType, &v87);
              CFDictionarySetValue(v51, v49, v58);
              CFRelease(v58);
              v59 = CFArrayCreate(0, &valuePtr, 2, MEMORY[0x277CBF128]);
              CFDictionarySetValue(theDict, *MEMORY[0x277CD2B30], v59);
              CFRelease(v59);
              CFRelease(valuePtr);
              v60 = v91;
            }

            else
            {
              v61 = *MEMORY[0x277CD2968];
              LODWORD(valuePtr) = (v21 + 15) & 0xFFFFFFF0;
              v62 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
              v55 = Mutable;
              CFDictionarySetValue(Mutable, v61, v62);
              CFRelease(v62);
              v63 = ElementWidth(v11);
              if (v63 >= 2)
              {
                v64 = *MEMORY[0x277CD29F0];
                LODWORD(valuePtr) = v63;
                v65 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                CFDictionarySetValue(Mutable, v64, v65);
                CFRelease(v65);
              }

              v66 = BytesPerElement(v11);
              v67 = *MEMORY[0x277CD2960];
              LODWORD(valuePtr) = v66;
              v68 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
              CFDictionarySetValue(Mutable, v67, v68);
              v60 = v68;
            }

            CFRelease(v60);
            a4 = v85;
            v21 = IOSurfaceCreate(v55);
            CFRelease(v55);
          }
        }
      }
    }

    v9 = [(MTLDevice *)self->_device newTextureWithDescriptor:v6 iosurface:v21 plane:0, v77];
  }

  v69 = v9;
  if (v9)
  {
    v70 = [[GTMTLReplaySharedTexture alloc] initWithAllocatedSize:v8 resourcePool:self];
    objc_setAssociatedObject(v69, &AssociatedObjectKey, v70, 1);
    v71 = v69;
  }

  else
  {
    v88 = @"GTErrorKeyMTLTextureDescriptor";
    v72 = SerializeMTLTextureDescriptorToDictionary(v6);
    v89 = v72;
    v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];

    GTMTLReplay_fillError(a4, 101, v73);
    if (a4)
    {
      v74 = *a4;
    }

    else
    {
      v74 = 0;
    }

    GTMTLReplay_handleNSError(v74);
  }

  v75 = *MEMORY[0x277D85DE8];
  return v69;
}

- (id)newBufferHeapWithLength:(unint64_t)a3
{
  pthread_mutex_lock(&self->_mutex);
  atomic_fetch_add(&self->_usedSize, a3);
  if (self->_defaultBufferCapacity == a3)
  {
    v5 = [(NSMutableArray *)self->_pooledBuffers lastObject];
    [(NSMutableArray *)self->_pooledBuffers removeLastObject];
    pthread_mutex_unlock(&self->_mutex);
    if (v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    pthread_mutex_unlock(&self->_mutex);
  }

  result = [(MTLDevice *)self->_device newBufferWithLength:a3 options:256];
  if (!result)
  {
    return result;
  }

  v5 = result;
LABEL_7:
  v7 = [[GTMTLReplaySharedBufferHeap alloc] initWithBuffer:v5 resourcePool:self];

  return v7;
}

- (void)waitUntilCapacity
{
  pthread_mutex_lock(&self->_mutex);
  maxSize = self->_maxSize;
  v4 = atomic_load(&self->_usedSize);
  if (maxSize < v4)
  {
    do
    {
      pthread_cond_wait(&self->_cond, &self->_mutex);
      v5 = self->_maxSize;
      v6 = atomic_load(&self->_usedSize);
    }

    while (v5 < v6);
  }

  pthread_mutex_unlock(&self->_mutex);
}

- (void)dealloc
{
  pthread_cond_destroy(&self->_cond);
  pthread_mutex_destroy(&self->_mutex);
  v3.receiver = self;
  v3.super_class = GTMTLReplaySharedResourcePool;
  [(GTMTLReplaySharedResourcePool *)&v3 dealloc];
}

- (GTMTLReplaySharedResourcePool)initWithDevice:(id)a3 bufferCapacity:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = GTMTLReplaySharedResourcePool;
  v8 = [(GTMTLReplaySharedResourcePool *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a3);
    v9->_defaultBufferCapacity = a4;
    pthread_mutex_init(&v9->_mutex, 0);
    pthread_cond_init(&v9->_cond, 0);
    v9->_maxPooledBuffers = 8;
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v9->_maxPooledBuffers];
    pooledBuffers = v9->_pooledBuffers;
    v9->_pooledBuffers = v10;

    v9->_maxSize = word_27F09CF8C << 20;
  }

  return v9;
}

@end