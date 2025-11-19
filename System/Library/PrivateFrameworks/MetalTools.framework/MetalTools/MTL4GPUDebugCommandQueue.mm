@interface MTL4GPUDebugCommandQueue
- (MTL4GPUDebugCommandQueue)initWithCommandQueue:(id)a3 device:(id)a4;
- (id)setUpLogState:(unint64_t)a3;
- (void)_checkReportBuffers:(id)a3 outputArray:(id)a4 encoderLabels:(const void *)a5;
- (void)_commit:(const void *)a3 count:(unint64_t)a4 options:(id)a5;
- (void)dealloc;
@end

@implementation MTL4GPUDebugCommandQueue

- (id)setUpLogState:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CD6EC8]);
  v6 = v5;
  v7 = (a3 << 9) & 0xFFFFFFFFFFFFFC00;
  if (((a3 << 9) & 0xFFFFFFFFFFF00000) != 0)
  {
    v7 = 0x100000;
  }

  if (a3 == 1)
  {
    v8 = 1024;
  }

  else
  {
    v8 = v7;
  }

  [v5 setBufferSize:v8];
  v14 = 0;
  v9 = [(MTLToolsDevice *)self->super.super._device newLogStateWithDescriptor:v6 error:&v14];
  [v9 setUsedForShaderValidation:1];

  v10 = MTLGPUDebugLog();
  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.Metal"];
  [v9 populateDefaultLoggerCache:objc_msgSend(v11 logger:{"stringWithFormat:", @"%@%@", v12, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "GPUDebug")), v10}];
  return v9;
}

- (void)_checkReportBuffers:(id)a3 outputArray:(id)a4 encoderLabels:(const void *)a5
{
  if (a3)
  {
    [(MTL4GPUDebugCommandQueue *)self _decodeReportLogState:a3 outputArray:a4 encoderLabels:a5];
  }
}

- (void)_commit:(const void *)a3 count:(unint64_t)a4 options:(id)a5
{
  v34 = a5;
  v59 = *MEMORY[0x277D85DE8];
  v8 = objc_alloc_init(MEMORY[0x277CD6FA0]);
  [v8 setLabel:@"Commit Residency Set"];
  v57 = 0;
  v9 = [-[MTLToolsObject baseObject](self->super.super._device "baseObject")];

  device = self->super.super._device;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3052000000;
  v54 = __Block_byref_object_copy_;
  v55 = __Block_byref_object_dispose_;
  v56 = 0;
  if ((BYTE4(device[2].dynamicLibraryObjectCache) & 2) != 0)
  {
    v11 = [(MTL4GPUDebugCommandQueue *)self setUpLogState:a4];
    v52[5] = v11;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x4812000000;
  v45 = __Block_byref_object_copy__9;
  v46 = __Block_byref_object_dispose__10;
  v47 = &unk_22E286CE1;
  v49 = 0;
  v50 = 0;
  __p = 0;
  if (a4)
  {
    v12 = 0;
    do
    {
      v13 = a3[v12];
      if (v52[5])
      {
        [a3[v12] initReportBufferInPrivateData:?];
      }

      [v13 preCommit:{self, v34}];
      v14 = [v13 getRetainedData];
      v15 = [v14 cbAllocations];
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v16 = [v15 countByEnumeratingWithState:&v38 objects:v58 count:16];
      if (v16)
      {
        v17 = *v39;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v39 != v17)
            {
              objc_enumerationMutation(v15);
            }

            [v9 addAllocation:*(*(&v38 + 1) + 8 * i)];
          }

          v16 = [v15 countByEnumeratingWithState:&v38 objects:v58 count:16];
        }

        while (v16);
      }

      v19 = v43;
      v21 = v43[7];
      v20 = v43[8];
      if (v21 >= v20)
      {
        v23 = v43[6];
        v24 = (v21 - v23) >> 3;
        if ((v24 + 1) >> 61)
        {
          std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
        }

        v25 = v20 - v23;
        v26 = v25 >> 2;
        if (v25 >> 2 <= (v24 + 1))
        {
          v26 = v24 + 1;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto19MTLGPUDebugViewable}*>>((v43 + 6), v27);
        }

        v28 = (8 * v24);
        *v28 = v14;
        v22 = 8 * v24 + 8;
        v29 = v19[6];
        v30 = v19[7] - v29;
        v31 = v28 - v30;
        memcpy(v28 - v30, v29, v30);
        v32 = v19[6];
        v19[6] = v31;
        v19[7] = v22;
        v19[8] = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v21 = v14;
        v22 = (v21 + 1);
      }

      v19[7] = v22;
      ++v12;
    }

    while (v12 != a4);
  }

  [v9 commit];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __50__MTL4GPUDebugCommandQueue__commit_count_options___block_invoke;
  v37[3] = &unk_2787B4D20;
  v37[5] = &v51;
  v37[6] = &v42;
  v37[4] = self;
  [(NSLock *)self->_commitMutex lock];
  [(MTLToolsObject *)self->super.super._baseObject addInternalResidencySet:v9];
  [v9 requestResidency];
  v36.receiver = self;
  v36.super_class = MTL4GPUDebugCommandQueue;
  [(MTL4ToolsCommandQueue *)&v36 commit:a3 count:a4 options:v35 preprocessHandler:v37];
  [(MTLToolsObject *)self->super.super._baseObject removeInternalResidencySet:v9];

  [(NSLock *)self->_commitMutex unlock];
  _Block_object_dispose(&v42, 8);
  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v51, 8);
  v33 = *MEMORY[0x277D85DE8];
}

void __50__MTL4GPUDebugCommandQueue__commit_count_options___block_invoke(uint64_t a1, void *a2)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    memset(v14, 0, sizeof(v14));
    v15 = 1065353216;
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
    while (v5 != v6)
    {
      if (*v5)
      {
        [*v5 encoderLabels];
      }

      else
      {
        v13 = 0;
        memset(v12, 0, sizeof(v12));
      }

      std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__node_handle_merge_unique[abi:ne200100]<std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>>(v14, v12);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v12);
      ++v5;
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [*(a1 + 32) _checkReportBuffers:*(*(*(a1 + 40) + 8) + 40) outputArray:v7 encoderLabels:v14];
    [a2 setLogs:v7];

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v14);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 48);
  v10 = *(v8 + 56);
  while (v9 != v10)
  {
    v11 = *v9++;
  }
}

- (MTL4GPUDebugCommandQueue)initWithCommandQueue:(id)a3 device:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTL4GPUDebugCommandQueue;
  v5 = [(MTL4ToolsCommandQueue *)&v7 initWithBaseObject:a3 parent:?];
  if (v5)
  {
    v5->_commitMutex = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v5->_deviceOptions = (a4 + 292);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4GPUDebugCommandQueue;
  [(MTL4ToolsCommandQueue *)&v3 dealloc];
}

@end