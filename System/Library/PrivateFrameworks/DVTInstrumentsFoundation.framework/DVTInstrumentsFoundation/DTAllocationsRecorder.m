@interface DTAllocationsRecorder
+ (id)_libraryPath;
+ (unsigned)allEventsMask;
- (BOOL)_startWithError:(id *)a3;
- (DTAllocationsRecorder)init;
- (id).cxx_construct;
- (unint64_t)_setupSharedMemoryInTask:(unsigned int)a3;
- (void)_endAndTossResources:(BOOL)a3;
- (void)_processIncomingData;
- (void)addKeyFrame:(id *)a3;
- (void)createFullEventFromDelta:(id *)a3 withEvent:(id *)a4;
- (void)dealloc;
- (void)processBufferMessage:(id)a3;
@end

@implementation DTAllocationsRecorder

- (DTAllocationsRecorder)init
{
  v8.receiver = self;
  v8.super_class = DTAllocationsRecorder;
  v2 = [(DTAllocationsRecorder *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("Allocations processing queue", 0);
    processingQueue = v2->_processingQueue;
    v2->_processingQueue = v3;

    v5 = dispatch_queue_create("Allocations send queue", 0);
    serialEventQueue = v2->_serialEventQueue;
    v2->_serialEventQueue = v5;

    v2->_stopCollection = 1;
  }

  return v2;
}

- (void)dealloc
{
  [(DTAllocationsRecorder *)self cancel];
  begin_node = self->_threadToKeyFramesMap.__tree_.__begin_node_;
  if (begin_node != &self->_threadToKeyFramesMap.__tree_.__end_node_)
  {
    do
    {
      serialEventQueue = begin_node->_serialEventQueue;
      if (serialEventQueue != &begin_node->_partialEvent)
      {
        do
        {
          free(serialEventQueue->_serialEventQueue);
          shmem = serialEventQueue->_shmem;
          if (shmem)
          {
            do
            {
              opaque_1 = shmem;
              shmem = shmem->var0;
            }

            while (shmem);
          }

          else
          {
            do
            {
              opaque_1 = serialEventQueue->_trackingSymbolicator._opaque_1;
              v7 = *opaque_1 == serialEventQueue;
              serialEventQueue = opaque_1;
            }

            while (!v7);
          }

          serialEventQueue = opaque_1;
        }

        while (opaque_1 != &begin_node->_partialEvent);
      }

      v8 = begin_node->_shmem;
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = v8->var0;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = begin_node->_trackingSymbolicator._opaque_1;
          v7 = v9->super.isa == begin_node;
          begin_node = v9;
        }

        while (!v7);
      }

      begin_node = v9;
    }

    while (v9 != &self->_threadToKeyFramesMap.__tree_.__end_node_);
  }

  processingQueue = self->_processingQueue;
  self->_processingQueue = 0;

  partialEvent = self->_partialEvent;
  if (partialEvent)
  {
    free(partialEvent);
  }

  fullEvent = self->_fullEvent;
  if (fullEvent)
  {
    free(fullEvent);
  }

  v13.receiver = self;
  v13.super_class = DTAllocationsRecorder;
  [(DTAllocationsRecorder *)&v13 dealloc];
}

+ (unsigned)allEventsMask
{
  v3 = [a1 vmEventsMask];
  v4 = [a1 retainReleaseAutoEventsMask] | v3;
  return v4 | [a1 mallocReallocFreeEventsMask];
}

+ (id)_libraryPath
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 pathForResource:@"liboainject" ofType:@"dylib"];
  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [v4 bundlePath];
    [v7 handleFailureInMethod:a2 object:a1 file:@"DTAllocationsRecorder.mm" lineNumber:144 description:{@"Allocations library could not be located! Expected in bundle with path: %@", v8}];
  }

  return v5;
}

- (unint64_t)_setupSharedMemoryInTask:(unsigned int)a3
{
  v38 = *MEMORY[0x277D85DE8];
  if (self->_shmem)
  {
    v3 = 0;
    goto LABEL_32;
  }

  self->_targetTask = a3;
  v6 = [(DTAllocationsRecorder *)self sharedMemorySize];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x2000000;
  }

  v8 = mmap(0, (v7 + 16463) & 0x1FFFFC000, 3, 4098, 167772160, 0);
  if (v8 == -1)
  {
LABEL_31:
    v3 = 0;
    self->_shmem = 0;
    goto LABEL_32;
  }

  v9 = v8;
  v8->var0 = (v7 + 16463) & 0x1FFFFC000;
  v8->var1 = v8;
  v8->var2 = 0;
  *&v8->var3 = 0;
  v8->var5 = 0;
  v8->var6 = v7;
  atomic_store(0, &v8->var10);
  atomic_store(0, &v8->var11);
  atomic_store(0, &v8->var12);
  atomic_store(0, &v8->var13);
  atomic_store(0, &v8->var9);
  atomic_store(getpid(), &v8->var7);
  atomic_store(0, &v9->var8);
  self->_shmem = v9;
  v10 = MEMORY[0x277D85F48];
  if (a3 - 1 > 0xFFFFFFFD || (v11 = *MEMORY[0x277D85F48], (*MEMORY[0x277D85F48] - 1) >= 0xFFFFFFFE))
  {
LABEL_26:
    shmem = self->_shmem;
    if (shmem)
    {
      atomic_store(1u, &shmem->var9);
      if (shmem->var2)
      {
        if (!atomic_load(&shmem->var8))
        {
          shm_unlink(shmem + shmem->var2);
        }
      }

      mach_vm_deallocate(*v10, shmem, shmem->var0);
    }

    goto LABEL_31;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v23 = sub_247FEE3B0;
  v24 = &unk_278EF4080;
  v25 = &v26;
  v12 = v22;
  if (mach_task_is_self(v11))
  {
    v23(v12, v9);
  }

  else
  {
    v13 = *v10;
    *cur_protection = 0;
    target_address = 0;
    v14 = mach_vm_remap(v13, &target_address, 0x50uLL, 0, 1048577, v11, v9, 0, &cur_protection[1], cur_protection, 2u);
    if (v14)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 134218496;
        v33 = v9;
        v34 = 1024;
        v35 = v11;
        v36 = 1024;
        v37 = v14;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to map memory for address: %#llx in task: 0x%x (%d)\n", buf, 0x18u);
      }

      v15 = 0;
    }

    else
    {
      if ((~cur_protection[1] & 3) != 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          v33 = v9;
          v34 = 1024;
          v35 = v11;
          v36 = 1024;
          v37 = cur_protection[1];
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to map memory r/w for address: %#llx in task: 0x%x (%d)\n", buf, 0x18u);
        }

        mach_vm_deallocate(v13, target_address, 0x50uLL);
      }

      v15 = target_address;
    }

    v23(v12, v15);
    mach_vm_deallocate(*v10, v15, 0x50uLL);
  }

  v16 = v27[3];
  if (!v16)
  {
LABEL_25:
    _Block_object_dispose(&v26, 8);
    goto LABEL_26;
  }

  *cur_protection = 0;
  target_address = 0;
  v17 = mach_vm_remap(a3, &target_address, v16, 0, 1048577, v11, v9, 0, &cur_protection[1], cur_protection, 2u);
  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v33 = v9;
      v34 = 1024;
      v35 = v11;
      v36 = 1024;
      v37 = v17;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to map memory for address: %#llx in task: 0x%x (%d)\n", buf, 0x18u);
    }

    goto LABEL_25;
  }

  if ((~cur_protection[1] & 3) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v33 = v9;
      v34 = 1024;
      v35 = v11;
      v36 = 1024;
      v37 = cur_protection[1];
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to map memory r/w for address: %#llx in task: 0x%x (%d)\n", buf, 0x18u);
    }

    mach_vm_deallocate(a3, target_address, v16);
  }

  v3 = target_address;
  _Block_object_dispose(&v26, 8);
  if (!v3)
  {
    goto LABEL_26;
  }

LABEL_32:
  v20 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_startWithError:(id *)a3
{
  stopCollection = self->_stopCollection;
  if (stopCollection)
  {
    self->_stopCollection = 0;
    v6 = [(DTAllocationsRecorder *)self bufferHandler];

    if (!v6)
    {
      v7 = [(DTAllocationsRecorder *)self eventHandler];
      self->_partialEvent = malloc_type_malloc(0x1030uLL, 0x1000040EED21634uLL);
      self->_fullEvent = malloc_type_malloc(0x1030uLL, 0x1000040EED21634uLL);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_247FED034;
      aBlock[3] = &unk_278EF3F90;
      v8 = v7;
      aBlock[4] = self;
      v15 = v8;
      v16 = a2;
      v9 = _Block_copy(aBlock);
      [(DTAllocationsRecorder *)self setBufferHandler:v9];
    }

    processingQueue = self->_processingQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_247FED388;
    v13[3] = &unk_278EF3128;
    v13[4] = self;
    dispatch_async(processingQueue, v13);
  }

  else if (a3)
  {
    *a3 = sub_247FEC9A4(@"Allocations recording already in process.");
  }

  return stopCollection != 0;
}

- (void)addKeyFrame:(id *)a3
{
  var1_low = LOBYTE(a3->var1);
  p_end_node = &self->_threadToKeyFramesMap.__tree_.__end_node_;
  left = self->_threadToKeyFramesMap.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_9;
  }

  var5 = a3->var5;
  v8 = &self->_threadToKeyFramesMap.__tree_.__end_node_;
  do
  {
    v9 = left[4].__left_;
    v10 = v9 >= var5;
    v11 = v9 < var5;
    if (v10)
    {
      v8 = left;
    }

    left = left[v11].__left_;
  }

  while (left);
  if (v8 != p_end_node && var5 >= v8[4].__left_)
  {
    v16 = v8[6].__left_;
    v14 = v8 + 6;
    v15 = v16;
    if (!v16)
    {
      goto LABEL_19;
    }

    v17 = v14;
    do
    {
      v18 = v15[4].__left_;
      v10 = v18 >= var1_low;
      v19 = v18 < var1_low;
      if (v10)
      {
        v17 = v15;
      }

      v15 = v15[v19].__left_;
    }

    while (v15);
    if (v17 != v14 && var1_low >= LODWORD(v17[4].__left_))
    {
      v12 = v17[5].__left_;
    }

    else
    {
LABEL_19:
      v20 = &v14[-1];
      v12 = malloc_type_calloc(1uLL, 0x1010uLL, 0x10000408E8BD56EuLL);
      v21 = var1_low;
      v22[0] = v12;
      sub_247FEE8B4(v20, &v21);
    }
  }

  else
  {
LABEL_9:
    v24[0] = 0;
    v24[1] = 0;
    v23 = v24;
    v12 = malloc_type_calloc(1uLL, 0x1010uLL, 0x10000408E8BD56EuLL);
    v21 = var1_low;
    v22[0] = v12;
    sub_247FEE8B4(&v23, &v21);
    v21 = a3->var5;
    sub_247FEE52C(v22, &v23);
    sub_247FEE988(&p_end_node[-1], &v21);
    sub_247FEE84C(v22, v22[1]);
    sub_247FEE84C(&v23, v24[0]);
  }

  var2 = a3->var2;
  a3->var1 &= 0xFF0000FF;
  v12[2] = 512 - var2;
  memcpy(&v12[2 * (512 - var2) + 4], a3->var7, 8 * a3->var2);
}

- (void)createFullEventFromDelta:(id *)a3 withEvent:(id *)a4
{
  left = self->_threadToKeyFramesMap.__tree_.__end_node_.__left_;
  p_end_node = &self->_threadToKeyFramesMap.__tree_.__end_node_;
  v5 = left;
  if (left)
  {
    var1_low = LOBYTE(a3->var1);
    var5 = a3->var5;
    v11 = p_end_node;
    do
    {
      v12 = *(v5 + 4);
      v13 = v12 >= var5;
      v14 = v12 < var5;
      if (v13)
      {
        v11 = v5;
      }

      v5 = *(v5 + v14);
    }

    while (v5);
    if (v11 != p_end_node && var5 >= v11[4].__left_)
    {
      v17 = v11[6].__left_;
      v15 = v11 + 6;
      v16 = v17;
      if (v17)
      {
        v18 = v15;
        do
        {
          v19 = v16[4].__left_;
          v13 = v19 >= var1_low;
          v20 = v19 < var1_low;
          if (v13)
          {
            v18 = v16;
          }

          v16 = v16[v20].__left_;
        }

        while (v16);
        if (v18 != v15 && var1_low >= LODWORD(v18[4].__left_))
        {
          v21 = v18[5].__left_;
          v21[2] = LOWORD(a3->var2);
          memcpy(&v21[2 * a3->var2 + 4], a3->var7, (a3->var2 >> 13) & 0x7FFF8);
          v22 = 512 - v21[2];
          v23 = *&a3->var0;
          v24 = *&a3->var5;
          *&a4->var3 = *&a3->var3;
          *&a4->var5 = v24;
          *&a4->var0 = v23;
          memcpy(a4->var7, &v21[2 * v21[2] + 4], 8 * v22);
          a4->var1 &= 0xFF0000FF;
          a4->var2 = v22 & 0x1FFFFFFF;
        }
      }
    }
  }
}

- (void)processBufferMessage:(id)a3
{
  v4 = a3;
  processingQueue = self->_processingQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FED71C;
  v7[3] = &unk_278EF3FB8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(processingQueue, v7);
}

- (void)_endAndTossResources:(BOOL)a3
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  self->_stopCollection = v3;
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FED848;
  block[3] = &unk_278EF3128;
  block[4] = self;
  dispatch_sync(processingQueue, block);
}

- (void)_processIncomingData
{
  v63 = *MEMORY[0x277D85DE8];
  v36 = objc_autoreleasePoolPush();
  v41 = [(DTAllocationsRecorder *)self bufferHandler];
  if ([(DTAllocationsRecorder *)self readStackLogsUponAttach])
  {
    targetTask = self->_targetTask;
    if (targetTask + 1 >= 2)
    {
      MEMORY[0x28223BE20]();
      bzero(v35, 0x1030uLL);
      suspend_token[0] = 0;
      task_suspend2(targetTask, suspend_token);
      v4 = self->_targetTask;
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = sub_247FEDF98;
      v52[3] = &unk_278EF3FE0;
      v54 = v35;
      v53 = v41;
      v5 = v52;
      v6 = [objc_alloc(MEMORY[0x277D6AFA0]) initWithTask:v4];
      v57 = MEMORY[0x277D85DD0];
      v58 = 3221225472;
      v59 = sub_247FEE8A0;
      v60 = &unk_278EF40F8;
      v7 = v5;
      v61 = v6;
      v62 = v7;
      v8 = v6;
      [v8 enumerateMSLRecordsAndPayloads:&v57];

      task_resume2(suspend_token[0]);
    }
  }

  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  LOBYTE(v60) = 0;
  v40 = dispatch_semaphore_create(1);
  if (!self->_stopCollection)
  {
    v42 = v48;
    v35[518] = v44;
    v38 = self;
    do
    {
      shmem = self->_shmem;
      if (!shmem)
      {
        break;
      }

      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v48[0] = sub_247FEE0C8;
      v48[1] = &unk_278EF4030;
      v48[2] = self;
      v37 = v40;
      v49 = v37;
      v39 = v41;
      v50 = v39;
      v51 = &v57;
      v11 = v47;
      v12 = 0;
      var6 = shmem->var6;
      v14 = &shmem->var17[shmem->var5];
      v15 = 64;
      v16 = 128000000;
      while (1)
      {
        while (1)
        {
          v17 = atomic_load(&shmem->var12);
          v18 = atomic_load(&shmem->var13);
          v19 = v17 >= v18 ? 0 : var6;
          v20 = v19 + v17;
          v21 = atomic_load_explicit(&shmem->var9, memory_order_acquire) | v12;
          v22 = v20 - v18;
          if (v20 == v18)
          {
            break;
          }

          v26 = v18;
          if ((v15 & 0xFFFE0000) != 0 || v22 > var6 >> 2)
          {
            v15 = 64;
          }

          if (var6 - v18 >= v22)
          {
            v28 = v22;
          }

          else
          {
            v28 = var6 - v18;
          }

          v56 = 0;
          (v48[0])(v11, v14 + v18, v28, &v56);
          v29 = v22 - v28;
          if (v29)
          {
            (v48[0])(v11, v14, v29, &v56);
          }

          else
          {
            LODWORD(v29) = v28 + v26;
          }

          v33 = v26;
          atomic_compare_exchange_strong(&shmem->var13, &v33, v29);
          if (v33 != v26 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            LOWORD(suspend_token[0]) = 0;
            _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Inconsistent reader offset in shared memory! MT reception suspected...\n", suspend_token, 2u);
          }

          if (v56 == 1)
          {
            atomic_store(1u, &shmem->var9);
LABEL_48:
            self = v38;
LABEL_49:

            goto LABEL_50;
          }

          v12 = 0;
          v16 = 128000000;
          if (v21)
          {
            goto LABEL_48;
          }
        }

        if (v21)
        {
          goto LABEL_48;
        }

        if (!v16)
        {
          break;
        }

        v23 = atomic_load(&shmem->var8);
        if (v15 <= 0x40)
        {
          v24 = 64;
        }

        else
        {
          v24 = v15;
        }

        usleep(v24);
        v25 = 2 * v24;
        if (2 * v24 <= 0x20000)
        {
          v12 = 0;
        }

        else
        {
          v12 = v23 && kill(v23, 0) == -1 && *__error() == 3;
          v25 = 0x20000;
        }

        v30 = 1000 * v15;
        v31 = v16 >= v30;
        v32 = v16 - v30;
        if (v31)
        {
          v16 = v32;
        }

        else
        {
          v16 = 0;
        }

        v15 = v25;
      }

      self = v38;
      if (*(v58 + 24) == 1)
      {
        serialEventQueue = v38->_serialEventQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        v44[0] = sub_247FEE2B0;
        v44[1] = &unk_278EF4058;
        v45 = v39;
        v46 = &v57;
        dispatch_sync(serialEventQueue, block);
        v11 = v45;
        goto LABEL_49;
      }

LABEL_50:
    }

    while (!self->_stopCollection);
  }

  _Block_object_dispose(&v57, 8);
  objc_autoreleasePoolPop(v36);
  v9 = *MEMORY[0x277D85DE8];
}

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 14) = 0;
  *(self + 13) = self + 112;
  return self;
}

@end