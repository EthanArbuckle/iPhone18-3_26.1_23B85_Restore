@interface DYFunctionPlayer
+ (CGSize)shrinkSourceSize:(CGSize)result toDestSize:(CGSize)size;
- (DYFunctionPlayer)init;
- (DYFunctionPlayer)initWithCaptureStore:(id)store;
- (id).cxx_construct;
- (void)copyDataForFilename:(const char *)filename dataSize:(unint64_t *)size;
- (void)dealloc;
- (void)executeFunctions:(CoreFunction *)functions count:(unint64_t)count subCommandIndex:(unsigned int)index;
- (void)prepareForCaptureExecution;
- (void)processArguments;
- (void)releaseArguments;
- (void)releaseDataForArgument:(int)argument;
- (void)releaseDataForPosition:(unint64_t)position;
- (void)requestDataForFilename:(const char *)filename dataSize:(unint64_t *)size position:(unint64_t *)position;
- (void)requestDataForPosition:(unint64_t)position dataSize:(unint64_t *)size;
@end

@implementation DYFunctionPlayer

- (DYFunctionPlayer)init
{
  [(DYFunctionPlayer *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (DYFunctionPlayer)initWithCaptureStore:(id)store
{
  if (!store)
  {
    [DYFunctionPlayer initWithCaptureStore:];
  }

  v18.receiver = self;
  v18.super_class = DYFunctionPlayer;
  v4 = [(DYFunctionPlayer *)&v18 init];
  if (v4)
  {
    v4->_captureStore = store;
    v4->_skipOptionalFunctions = 1;
    p_executePlatformSEL = &v4->_executePlatformSEL;
    if (sel_executePlatformFunction)
    {
      *p_executePlatformSEL = sel_executePlatformFunction;
      v6 = sel_executePlatformFunction;
    }

    else
    {
      v6 = 0;
      *p_executePlatformSEL = 0;
    }

    v7 = [(DYFunctionPlayer *)v4 methodForSelector:v6];
    v4->_executePlatform = v7;
    if (!v7)
    {
      [DYFunctionPlayer initWithCaptureStore:];
    }

    p_executeGraphicsSEL = &v4->_executeGraphicsSEL;
    if (sel_executeGraphicsFunction)
    {
      *p_executeGraphicsSEL = sel_executeGraphicsFunction;
      v9 = sel_executeGraphicsFunction;
    }

    else
    {
      v9 = 0;
      *p_executeGraphicsSEL = 0;
    }

    v10 = [(DYFunctionPlayer *)v4 methodForSelector:v9];
    v4->_executeGraphics = v10;
    if (!v10)
    {
      [DYFunctionPlayer initWithCaptureStore:];
    }

    p_shouldExecuteGraphicsSEL = &v4->_shouldExecuteGraphicsSEL;
    if (sel_shouldExecuteGraphicsFunction)
    {
      *p_shouldExecuteGraphicsSEL = sel_shouldExecuteGraphicsFunction;
      v12 = sel_shouldExecuteGraphicsFunction;
    }

    else
    {
      v12 = 0;
      *p_shouldExecuteGraphicsSEL = 0;
    }

    v13 = [(DYFunctionPlayer *)v4 methodForSelector:v12];
    v4->_shouldExecuteGraphics = v13;
    if (!v13)
    {
      [DYFunctionPlayer initWithCaptureStore:];
    }

    p_isFrameBoundarySEL = &v4->_isFrameBoundarySEL;
    if (sel_isFrameBoundary)
    {
      *p_isFrameBoundarySEL = sel_isFrameBoundary;
      v15 = sel_isFrameBoundary;
    }

    else
    {
      v15 = 0;
      *p_isFrameBoundarySEL = 0;
    }

    v16 = [(DYFunctionPlayer *)v4 methodForSelector:v15];
    v4->_isFrameBoundary = v16;
    if (!v16)
    {
      [DYFunctionPlayer initWithCaptureStore:];
    }

    v4->_retval_buffer = malloc_type_malloc(0x80uLL, 0xF49F14C7uLL);
    v4->_variables = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:1282 capacity:0];
  }

  return v4;
}

- (void)dealloc
{
  retval_buffer = self->_retval_buffer;
  if (retval_buffer)
  {
    free(retval_buffer);
  }

  v4.receiver = self;
  v4.super_class = DYFunctionPlayer;
  [(DYFunctionPlayer *)&v4 dealloc];
}

- (void)prepareForCaptureExecution
{
  self->_mainExecutionMode = 1;
  self->_currentExecutionModeFunctionIndex = 0;
  self->_frameCounter = 0;
  self->_lastCommandWasFrameBoundary = 1;
  if ([(DYPlaybackEngine *)[(DYFunctionPlayer *)self engine] loopCount]>= 3)
  {

    GPUTools::Playback::MemoryManager::Begin(&self->_memoryManager._state);
  }
}

- (void)executeFunctions:(CoreFunction *)functions count:(unint64_t)count subCommandIndex:(unsigned int)index
{
  self->_function = functions;
  if (count)
  {
    v6 = &functions[count];
    p_currentExecutionModeFunctionIndex = &self->_currentExecutionModeFunctionIndex;
    while (1)
    {
      v8 = objc_autoreleasePoolPush();
      if (([(DYFunctionPlayer *)self function][4] & 2) == 0 && (![(DYFunctionPlayer *)self skipOptionalFunctions]|| ([(DYFunctionPlayer *)self function][5] & 1) == 0))
      {
        break;
      }

LABEL_25:
      objc_autoreleasePoolPop(v8);
      v15 = self->_function + 1;
      self->_function = v15;
      *p_currentExecutionModeFunctionIndex = vadd_s32(*p_currentExecutionModeFunctionIndex, 0x100000001);
      if (v15 == v6)
      {
        return;
      }
    }

    v9 = [(DYFunctionPlayer *)self function][16];
    if (v9 != [(DYFunctionPlayer *)self ctxID])
    {
      [DYFunctionPlayer executeFunctions:? count:? subCommandIndex:?];
    }

    if ([(DYFunctionPlayer *)self mainExecutionMode]&& self->_lastCommandWasFrameBoundary)
    {
      self->_lastCommandWasFrameBoundary = 0;
      [(DYFunctionPlayer *)self performNewFrameActions];
    }

    if (self->_isFrameBoundarySEL)
    {
      isFrameBoundarySEL = self->_isFrameBoundarySEL;
    }

    else
    {
      isFrameBoundarySEL = 0;
    }

    v11 = (self->_isFrameBoundary)(self, isFrameBoundarySEL);
    if ([(DYFunctionPlayer *)self mainExecutionMode]&& v11)
    {
      [(DYFunctionPlayer *)self setFrameCounter:[(DYFunctionPlayer *)self frameCounter]+ 1];
      [(DYFunctionPlayer *)self performPreDispatchFrameBoundaryActions];
    }

    if (*[(DYFunctionPlayer *)self function]>= 0xFFFFD000)
    {
      executePlatform = self->_executePlatform;
      executePlatformSEL = self->_executePlatformSEL;
      if (executePlatformSEL)
      {
        goto LABEL_19;
      }
    }

    else
    {
      executePlatform = self->_executeGraphics;
      executePlatformSEL = self->_executeGraphicsSEL;
      if (executePlatformSEL)
      {
LABEL_19:
        v14 = executePlatformSEL;
LABEL_22:
        executePlatform(self, v14);
        if (([(DYFunctionPlayer *)self mainExecutionMode]& v11) == 1)
        {
          [(DYFunctionPlayer *)self performPostDispatchFrameBoundaryActions];
          self->_lastCommandWasFrameBoundary = 1;
        }

        GPUTools::Playback::MemoryManager::AllocClear(&self->_memoryManager);
        [(DYFunctionPlayer *)self releaseArguments];
        goto LABEL_25;
      }
    }

    v14 = 0;
    goto LABEL_22;
  }
}

- (void)copyDataForFilename:(const char *)filename dataSize:(unint64_t *)size
{
  if (size)
  {
    *size = 0;
  }

  v11 = 0;
  if (([(DYCaptureStore *)[(DYFunctionPlayer *)self captureStore] getInfo:&v9 forFilenameBuffer:filename error:&v11]& 1) == 0 || (v6 = GPUTools::Playback::MemoryManager::Alloc(&self->_memoryManager, v10), v7 = [(DYFunctionPlayer *)self captureStore], [(DYCaptureStore *)v7 readDataForFilePosition:v9 buffer:v6 size:v10 error:&v11]== -1))
  {
    [DYFunctionPlayer copyDataForFilename:dataSize:];
    return 0;
  }

  else if (size)
  {
    *size = v10;
  }

  return v6;
}

- (void)releaseDataForPosition:(unint64_t)position
{
  captureStore = [(DYFunctionPlayer *)self captureStore];

  [(DYCaptureStore *)captureStore releaseBytesForFilePosition:position];
}

- (void)requestDataForPosition:(unint64_t)position dataSize:(unint64_t *)size
{
  if (size)
  {
    *size = 0;
  }

  v6 = 0;
  v7 = 0;
  if (([(DYCaptureStore *)[(DYFunctionPlayer *)self captureStore] requestDataForFilePosition:position buffer:&v6 size:size error:&v7]& 1) != 0)
  {
    return v6;
  }

  v5 = *MEMORY[0x277D0B240];
  _DYOLog();
  return 0;
}

- (void)requestDataForFilename:(const char *)filename dataSize:(unint64_t *)size position:(unint64_t *)position
{
  if (size)
  {
    *size = 0;
  }

  v9 = 0;
  if (([(DYCaptureStore *)[(DYFunctionPlayer *)self captureStore] getInfo:v8 forFilenameBuffer:filename error:&v9]& 1) != 0)
  {
    *position = v8[0];
    return [DYFunctionPlayer requestDataForPosition:"requestDataForPosition:dataSize:" dataSize:?];
  }

  else
  {
    [DYFunctionPlayer copyDataForFilename:dataSize:];
    return 0;
  }
}

- (void)releaseDataForArgument:(int)argument
{
  v3 = self + 24 * argument;
  v4 = (v3 + 976);
  v5 = *(v3 + 123);
  v6 = *(v3 + 122);
  if (v5 != v6)
  {
    v8 = 0;
    do
    {
      [(DYFunctionPlayer *)self releaseDataForPosition:*(v6 + 8 * v8++)];
      v6 = *v4;
    }

    while (v8 < (v4[1] - *v4) >> 3);
  }

  v4[1] = v6;
}

- (void)releaseArguments
{
  function = self->_function;
  if (function->argument_count)
  {
    v4 = 0;
    v5 = 24 * function->argument_count;
    arguments = function->arguments;
    argumentStorePositions = self->_argumentStorePositions;
    do
    {
      if (arguments->value)
      {
        if (argumentStorePositions[v4].__begin_ != argumentStorePositions[v4].__end_)
        {
          [(DYFunctionPlayer *)self releaseDataForArgument:v4];
        }

        ++v4;
      }

      ++arguments;
      v5 -= 24;
    }

    while (v5);
  }
}

- (void)processArguments
{
  function = self->_function;
  if (function->argument_count)
  {
    selfCopy3 = self;
    v4 = 0;
    arguments = function->arguments;
    argumentStorePositions = self->_argumentStorePositions;
    argumentURLs = self->_argumentURLs;
    pointers = self->_pointers;
    v112 = &function->arguments[function->argument_count];
    argumentPointers = self->_argumentPointers;
    v116 = self->_pointers;
    while (1)
    {
      v7 = &argumentURLs[v4];
      std::vector<std::pair<std::string,BOOL>>::clear[abi:ne200100](v7);
      v8 = &argumentStorePositions[v4];
      v8->__end_ = v8->__begin_;
      flags = arguments->flags;
      if ((flags & 8) != 0)
      {
        break;
      }

      if ((flags & 0x20) != 0)
      {
        if ((flags & 1) == 0)
        {
          v17 = *arguments->value;
          v119 = 0;
          v18 = v4;
          v19 = &v116[v4];
          *v19 = [(DYFunctionPlayer *)selfCopy3 requestDataForPosition:v17 dataSize:&v119];
          v20 = v119;
          v120 = v19;
          std::__hash_table<std::__hash_value_type<void *,unsigned long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>(&selfCopy3->_dataSizeMap.__table_.__bucket_list_.__ptr_, v19)[3] = v20;
          argumentPointers[v18] = v19;
          end = v8->__end_;
          cap = v8->__cap_;
          if (end >= cap)
          {
            begin = v8->__begin_;
            v75 = end - v8->__begin_;
            v76 = v75 >> 3;
            v77 = (v75 >> 3) + 1;
            if (v77 >> 61)
            {
              goto LABEL_126;
            }

            v78 = cap - begin;
            if (v78 >> 2 > v77)
            {
              v77 = v78 >> 2;
            }

            v38 = v78 >= 0x7FFFFFFFFFFFFFF8;
            v79 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v38)
            {
              v79 = v77;
            }

            if (v79)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(v8, v79);
            }

            *(8 * v76) = v17;
            v23 = 8 * v76 + 8;
            memcpy(0, begin, v75);
            v91 = v8->__begin_;
            v8->__begin_ = 0;
            v8->__end_ = v23;
            v8->__cap_ = 0;
            if (v91)
            {
              operator delete(v91);
            }

            v4 = v18;
          }

          else
          {
            v4 = v18;
            *end = v17;
            v23 = (end + 1);
          }

          pointers = v116;
          v8->__end_ = v23;
          v92 = *(v7 + 8);
          v93 = *(v7 + 16);
          if (v92 >= v93)
          {
            v95 = (v92 - *v7) >> 5;
            v96 = v95 + 1;
            if ((v95 + 1) >> 59)
            {
LABEL_127:
              std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
            }

            v97 = v93 - *v7;
            if (v97 >> 4 > v96)
            {
              v96 = v97 >> 4;
            }

            if (v97 >= 0x7FFFFFFFFFFFFFE0)
            {
              v98 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v98 = v96;
            }

            v124 = v7;
            if (v98)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,BOOL>>>(v7, v98);
            }

            v99 = 32 * v95;
            *v99 = 0;
            *(v99 + 8) = 0;
            *(v99 + 16) = 0;
            *(v99 + 24) = 1;
            v94 = 32 * v95 + 32;
            v100 = *(v7 + 8) - *v7;
            v101 = v99 - v100;
            memcpy((v99 - v100), *v7, v100);
            v102 = *v7;
            *v7 = v101;
            *(v7 + 8) = v94;
            v103 = *(v7 + 16);
            *(v7 + 16) = 0;
            v122 = v102;
            v123 = v103;
            v120 = v102;
            v121 = v102;
            std::__split_buffer<std::pair<std::string,BOOL>>::~__split_buffer(&v120);
          }

          else
          {
            *v92 = 0;
            *(v92 + 8) = 0;
            *(v92 + 16) = 0;
            v94 = v92 + 32;
            *(v92 + 24) = 1;
          }

          *(v7 + 8) = v94;
          goto LABEL_124;
        }

        v111 = v4;
        v109 = GPUTools::Playback::MemoryManager::Alloc(&selfCopy3->_memoryManager, 8 * arguments->length);
        if (arguments->length)
        {
          v46 = 0;
          value = arguments->value;
          v48 = v109;
          do
          {
            v49 = value[v46];
            if (v49 == -1)
            {
              *v48 = 0;
            }

            else
            {
              v119 = 0;
              *v48 = [(DYFunctionPlayer *)self requestDataForPosition:v49 dataSize:&v119];
              v51 = v8->__end_;
              v50 = v8->__cap_;
              if (v51 >= v50)
              {
                v53 = v8->__begin_;
                v54 = v51 - v8->__begin_;
                v55 = v54 >> 3;
                v56 = (v54 >> 3) + 1;
                if (v56 >> 61)
                {
                  goto LABEL_126;
                }

                v57 = v50 - v53;
                if (v57 >> 2 > v56)
                {
                  v56 = v57 >> 2;
                }

                v38 = v57 >= 0x7FFFFFFFFFFFFFF8;
                v58 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v38)
                {
                  v58 = v56;
                }

                if (v58)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(v8, v58);
                }

                *(8 * v55) = v49;
                v52 = 8 * v55 + 8;
                memcpy(0, v53, v54);
                v59 = v8->__begin_;
                v8->__begin_ = 0;
                v8->__end_ = v52;
                v8->__cap_ = 0;
                if (v59)
                {
                  operator delete(v59);
                }
              }

              else
              {
                *v51 = v49;
                v52 = (v51 + 1);
              }

              v8->__end_ = v52;
              v60 = v119;
              v120 = v48;
              std::__hash_table<std::__hash_value_type<void *,unsigned long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>(&self->_dataSizeMap.__table_.__bucket_list_.__ptr_, v48)[3] = v60;
            }

            v61 = *(v7 + 8);
            v62 = *(v7 + 16);
            if (v61 >= v62)
            {
              v64 = (v61 - *v7) >> 5;
              v65 = v64 + 1;
              if ((v64 + 1) >> 59)
              {
                goto LABEL_127;
              }

              v66 = v62 - *v7;
              if (v66 >> 4 > v65)
              {
                v65 = v66 >> 4;
              }

              if (v66 >= 0x7FFFFFFFFFFFFFE0)
              {
                v67 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v67 = v65;
              }

              v124 = v7;
              if (v67)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,BOOL>>>(v7, v67);
              }

              v68 = 32 * v64;
              *v68 = 0;
              *(v68 + 8) = 0;
              *(v68 + 16) = 0;
              *(v68 + 24) = 1;
              v63 = 32 * v64 + 32;
              v69 = *(v7 + 8) - *v7;
              v70 = v68 - v69;
              memcpy((v68 - v69), *v7, v69);
              v71 = *v7;
              *v7 = v70;
              *(v7 + 8) = v63;
              v72 = *(v7 + 16);
              *(v7 + 16) = 0;
              v122 = v71;
              v123 = v72;
              v120 = v71;
              v121 = v71;
              std::__split_buffer<std::pair<std::string,BOOL>>::~__split_buffer(&v120);
            }

            else
            {
              *v61 = 0;
              *(v61 + 8) = 0;
              *(v61 + 16) = 0;
              v63 = v61 + 32;
              *(v61 + 24) = 1;
            }

            *(v7 + 8) = v63;
            ++v46;
            ++v48;
          }

          while (v46 < arguments->length);
        }

        v44 = v109;
        v4 = v111;
        pointers = v116;
        selfCopy3 = self;
        goto LABEL_78;
      }

      if ((flags & 0x10) == 0)
      {
        if ((flags & 2) == 0)
        {
          if ((flags & 1) == 0)
          {
            if (arguments->core_type == 13)
            {
              goto LABEL_96;
            }

            v10 = arguments->value;
            goto LABEL_79;
          }

          if ((flags & 0x40) == 0)
          {
LABEL_96:
            pointers[v4] = arguments->value;
            argumentPointers[v4] = &pointers[v4];
            goto LABEL_124;
          }
        }

        v86 = arguments->value;
        v87 = GPUTools::Playback::MemoryManager::Alloc(&selfCopy3->_memoryManager, 8 * arguments->length);
        length = arguments->length;
        if (arguments->length)
        {
          v89 = v87;
          do
          {
            v90 = *v86;
            v86 = (v86 + 4);
            *v89++ = arguments->value + v90;
            --length;
          }

          while (length);
        }

        v10 = &pointers[v4];
        *v10 = v87;
LABEL_79:
        argumentPointers[v4] = v10;
        goto LABEL_124;
      }

      v45 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:arguments->value length:strlen(arguments->value) encoding:1 freeWhenDone:0];
      pointers[v4] = NSMapGet(selfCopy3->_variables, v45);
      argumentPointers[v4] = &pointers[v4];

LABEL_124:
      ++v4;
      if (++arguments == v112)
      {
        return;
      }
    }

    if ((flags & 1) == 0)
    {
      if (arguments->value)
      {
        v11 = arguments->value;
      }

      else
      {
        v11 = "";
      }

      if (*v11)
      {
        v118 = 0;
        v119 = 0;
        v12 = v4;
        v13 = &v116[v4];
        *v13 = [(DYFunctionPlayer *)selfCopy3 requestDataForFilename:v11 dataSize:&v119 position:&v118];
        if (v118 != -1)
        {
          v15 = v8->__end_;
          v14 = v8->__cap_;
          if (v15 >= v14)
          {
            v80 = v8->__begin_;
            v81 = v15 - v8->__begin_;
            v82 = v81 >> 3;
            v83 = (v81 >> 3) + 1;
            if (v83 >> 61)
            {
LABEL_126:
              std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
            }

            v84 = v14 - v80;
            if (v84 >> 2 > v83)
            {
              v83 = v84 >> 2;
            }

            v38 = v84 >= 0x7FFFFFFFFFFFFFF8;
            v85 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v38)
            {
              v85 = v83;
            }

            if (v85)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(v8, v85);
            }

            *(8 * v82) = v118;
            v16 = 8 * v82 + 8;
            memcpy(0, v80, v81);
            v104 = v8->__begin_;
            v8->__begin_ = 0;
            v8->__end_ = v16;
            v8->__cap_ = 0;
            if (v104)
            {
              operator delete(v104);
            }
          }

          else
          {
            *v15 = v118;
            v16 = (v15 + 1);
          }

          v8->__end_ = v16;
        }

        v105 = v119;
        v120 = v13;
        std::__hash_table<std::__hash_value_type<void *,unsigned long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>(&selfCopy3->_dataSizeMap.__table_.__bucket_list_.__ptr_, v13)[3] = v105;
        v4 = v12;
        v73 = v116;
      }

      else
      {
        v73 = v116;
        v116[v4] = 0;
      }

      argumentPointers[v4] = &v73[v4];
      v120 = v11;
      LOBYTE(v121) = 0;
      v106 = *(v7 + 8);
      if (v106 >= *(v7 + 16))
      {
        v107 = std::vector<std::pair<std::string,BOOL>>::__emplace_back_slow_path<std::pair<char const*,BOOL>>(v7, &v120);
      }

      else
      {
        std::allocator_traits<std::allocator<std::pair<std::string,BOOL>>>::construct[abi:ne200100]<std::pair<std::string,BOOL>,std::pair<char const*,BOOL>,0>(v7, *(v7 + 8), &v120);
        v107 = v106 + 32;
        *(v7 + 8) = v106 + 32;
      }

      pointers = v116;
      *(v7 + 8) = v107;
      goto LABEL_124;
    }

    v110 = v4;
    v108 = GPUTools::Playback::MemoryManager::Alloc(&selfCopy3->_memoryManager, 8 * arguments->length);
    v24 = GPUTools::FD::Argument::ViewAsCStringArray(arguments);
    if (arguments->length)
    {
      v25 = v24;
      v26 = 0;
      v27 = v108;
      do
      {
        v28 = *v25;
        if ((*(v25 + 22) & 0x40) != 0)
        {
          v29 = (*(v28 + 4 * v26) + v28);
        }

        else
        {
          v29 = *(v28 + 8 * v26);
        }

        if (*v29)
        {
          v118 = 0;
          v119 = 0;
          *v27 = [(DYFunctionPlayer *)selfCopy3 requestDataForFilename:v29 dataSize:&v119 position:&v118];
          if (v118 != -1)
          {
            v31 = v8->__end_;
            v30 = v8->__cap_;
            if (v31 >= v30)
            {
              v33 = v8->__begin_;
              v34 = v31 - v8->__begin_;
              v35 = v34 >> 3;
              v36 = (v34 >> 3) + 1;
              if (v36 >> 61)
              {
                goto LABEL_126;
              }

              v37 = v30 - v33;
              if (v37 >> 2 > v36)
              {
                v36 = v37 >> 2;
              }

              v38 = v37 >= 0x7FFFFFFFFFFFFFF8;
              v39 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v38)
              {
                v39 = v36;
              }

              if (v39)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(v8, v39);
              }

              *(8 * v35) = v118;
              v32 = 8 * v35 + 8;
              memcpy(0, v33, v34);
              v40 = v8->__begin_;
              v8->__begin_ = 0;
              v8->__end_ = v32;
              v8->__cap_ = 0;
              if (v40)
              {
                operator delete(v40);
              }

              selfCopy3 = self;
            }

            else
            {
              *v31 = v118;
              v32 = (v31 + 1);
            }

            v8->__end_ = v32;
          }

          v41 = v119;
          v120 = v27;
          std::__hash_table<std::__hash_value_type<void *,unsigned long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>(&selfCopy3->_dataSizeMap.__table_.__bucket_list_.__ptr_, v27)[3] = v41;
        }

        else
        {
          *v27 = 0;
        }

        v120 = v29;
        LOBYTE(v121) = 0;
        v42 = *(v7 + 8);
        if (v42 >= *(v7 + 16))
        {
          v43 = std::vector<std::pair<std::string,BOOL>>::__emplace_back_slow_path<std::pair<char const*,BOOL>>(v7, &v120);
        }

        else
        {
          std::allocator_traits<std::allocator<std::pair<std::string,BOOL>>>::construct[abi:ne200100]<std::pair<std::string,BOOL>,std::pair<char const*,BOOL>,0>(v7, *(v7 + 8), &v120);
          v43 = v42 + 32;
          *(v7 + 8) = v42 + 32;
        }

        *(v7 + 8) = v43;
        ++v26;
        ++v27;
      }

      while (v26 < arguments->length);
    }

    v44 = v108;
    v4 = v110;
    pointers = v116;
LABEL_78:
    v10 = &pointers[v4];
    *v10 = v44;
    goto LABEL_79;
  }
}

+ (CGSize)shrinkSourceSize:(CGSize)result toDestSize:(CGSize)size
{
  v4 = size.width / result.width;
  v5 = size.height / result.height;
  v6 = v4 >= 1.0;
  v7 = v5 >= 1.0;
  if (v4 >= v5)
  {
    v4 = v5;
  }

  v8 = result.width * v4;
  v9 = result.height * v4;
  if (!v6 || !v7)
  {
    result.width = v8;
    result.height = v9;
  }

  return result;
}

- (id).cxx_construct
{
  GPUTools::Playback::MemoryManager::MemoryManager(&self->_memoryManager, 16);
  GPUTools::Playback::SequenceCache::SequenceCache(&self->_functionIndexSequence);
  self->_dataSizeMap.__table_.__bucket_list_ = 0u;
  *&self->_dataSizeMap.__table_.__first_node_.__next_ = 0u;
  self->_dataSizeMap.__table_.__max_load_factor_ = 1.0;
  *&self->_argumentURLs[0].__begin_ = 0u;
  *&self->_argumentURLs[0].__cap_ = 0u;
  *&self->_argumentURLs[1].__end_ = 0u;
  *&self->_argumentURLs[2].__begin_ = 0u;
  *&self->_argumentURLs[2].__cap_ = 0u;
  *&self->_argumentURLs[3].__end_ = 0u;
  *&self->_argumentURLs[4].__begin_ = 0u;
  *&self->_argumentURLs[4].__cap_ = 0u;
  *&self->_argumentURLs[5].__end_ = 0u;
  *&self->_argumentURLs[6].__begin_ = 0u;
  *&self->_argumentURLs[6].__cap_ = 0u;
  *&self->_argumentURLs[7].__end_ = 0u;
  *&self->_argumentURLs[8].__begin_ = 0u;
  *&self->_argumentURLs[8].__cap_ = 0u;
  *&self->_argumentURLs[9].__end_ = 0u;
  *&self->_argumentURLs[10].__begin_ = 0u;
  *&self->_argumentURLs[10].__cap_ = 0u;
  *&self->_argumentURLs[11].__end_ = 0u;
  *&self->_argumentURLs[12].__begin_ = 0u;
  *&self->_argumentURLs[12].__cap_ = 0u;
  *&self->_argumentURLs[13].__end_ = 0u;
  *&self->_argumentURLs[14].__begin_ = 0u;
  *&self->_argumentURLs[14].__cap_ = 0u;
  *&self->_argumentURLs[15].__end_ = 0u;
  *&self->_argumentStorePositions[15].__end_ = 0u;
  *&self->_argumentStorePositions[14].__cap_ = 0u;
  *&self->_argumentStorePositions[14].__begin_ = 0u;
  *&self->_argumentStorePositions[13].__end_ = 0u;
  *&self->_argumentStorePositions[12].__cap_ = 0u;
  *&self->_argumentStorePositions[12].__begin_ = 0u;
  *&self->_argumentStorePositions[11].__end_ = 0u;
  *&self->_argumentStorePositions[10].__cap_ = 0u;
  *&self->_argumentStorePositions[10].__begin_ = 0u;
  *&self->_argumentStorePositions[9].__end_ = 0u;
  *&self->_argumentStorePositions[8].__cap_ = 0u;
  *&self->_argumentStorePositions[8].__begin_ = 0u;
  *&self->_argumentStorePositions[7].__end_ = 0u;
  *&self->_argumentStorePositions[6].__cap_ = 0u;
  *&self->_argumentStorePositions[6].__begin_ = 0u;
  *&self->_argumentStorePositions[5].__end_ = 0u;
  *&self->_argumentStorePositions[4].__cap_ = 0u;
  *&self->_argumentStorePositions[4].__begin_ = 0u;
  *&self->_argumentStorePositions[3].__end_ = 0u;
  *&self->_argumentStorePositions[2].__cap_ = 0u;
  *&self->_argumentStorePositions[1].__end_ = 0u;
  *&self->_argumentStorePositions[2].__begin_ = 0u;
  *&self->_argumentStorePositions[0].__begin_ = 0u;
  *&self->_argumentStorePositions[0].__cap_ = 0u;
  return self;
}

- (uint64_t)executeFunctions:(void *)a1 count:subCommandIndex:.cold.1(void *a1)
{
  v2 = *([a1 function] + 16);

  return [a1 setCurrentContext:v2];
}

- (uint64_t)copyDataForFilename:dataSize:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = *MEMORY[0x277D0B240];
  [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  v3 = *v0;
  return _DYOLog();
}

@end