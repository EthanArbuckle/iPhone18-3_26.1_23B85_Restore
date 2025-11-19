@interface DYGLFunctionPlayer
- (DYGLFunctionPlayer)initWithCaptureStore:(id)a3;
- (id).cxx_construct;
- (id)contextForContextIdentifier:(unint64_t)a3;
- (void)_dispatchGLFunction;
- (void)dealloc;
- (void)deleteCurrentContext;
- (void)executeGraphicsFunction;
- (void)executePlatformFunction;
- (void)setCurrentContext:(unint64_t)a3;
- (void)updateCurrentStateWithNewContext:(id)a3 contextID:(unint64_t)a4 sharegroupID:(unint64_t)a5;
@end

@implementation DYGLFunctionPlayer

- (DYGLFunctionPlayer)initWithCaptureStore:(id)a3
{
  v5.receiver = self;
  v5.super_class = DYGLFunctionPlayer;
  v3 = [(DYFunctionPlayer *)&v5 initWithCaptureStore:a3];
  if (v3)
  {
    v3->_captureSessionInfo = [[DYGLCaptureSessionInfo alloc] initWithCaptureStore:[(DYFunctionPlayer *)v3 captureStore]];
    v3->_sharegroupMap = objc_opt_new();
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYGLFunctionPlayer;
  [(DYFunctionPlayer *)&v3 dealloc];
}

- (void)updateCurrentStateWithNewContext:(id)a3 contextID:(unint64_t)a4 sharegroupID:(unint64_t)a5
{
  v30 = a4;
  if (!a4)
  {
    [DYGLFunctionPlayer updateCurrentStateWithNewContext:contextID:sharegroupID:];
  }

  *(&self->super.super.isa + *MEMORY[0x277D0AF78]) = a4;
  self->_ctx = [a3 dy_platformContext];
  self->_gli_ctx = GLIContextFromEAGLContext();
  ctx = self->_ctx;
  self->_disp = GLCFrontDispatch();
  v10 = [(DYGLFunctionPlayer *)self newContextInfo];
  v11 = a3;
  v12 = v10[9];
  if (v12 != v11)
  {

    v10[9] = v11;
    v11 = 0;
  }

  v10[11] = a5;
  self->_currentContextInfo = v10;
  p_contextInfoMap = &self->_contextInfoMap;
  size = self->_contextInfoMap.__table_.__bucket_list_.__deleter_.__size_;
  if (size)
  {
    v15 = vcnt_s8(size);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      v16 = a4;
      if (size <= a4)
      {
        v16 = a4 % size;
      }
    }

    else
    {
      v16 = (size - 1) & a4;
    }

    v17 = p_contextInfoMap->__table_.__bucket_list_.__ptr_[v16];
    if (v17)
    {
      v18 = *v17;
      if (v18)
      {
        if (v15.u32[0] < 2uLL)
        {
          v19 = size - 1;
          while (1)
          {
            v21 = v18[1];
            if (v21 == a4)
            {
              if (v18[2] == a4)
              {
                goto LABEL_32;
              }
            }

            else if ((v21 & v19) != v16)
            {
              goto LABEL_24;
            }

            v18 = *v18;
            if (!v18)
            {
              goto LABEL_24;
            }
          }
        }

        do
        {
          v20 = v18[1];
          if (v20 == a4)
          {
            if (v18[2] == a4)
            {
LABEL_32:
              __assert_rtn("[DYGLFunctionPlayer updateCurrentStateWithNewContext:contextID:sharegroupID:]", &unk_24C0EEB1F, 0, "_contextInfoMap.find(contextID) == _contextInfoMap.end()");
            }
          }

          else
          {
            if (v20 >= size)
            {
              v20 %= size;
            }

            if (v20 != v16)
            {
              break;
            }
          }

          v18 = *v18;
        }

        while (v18);
      }
    }
  }

LABEL_24:
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>(p_contextInfoMap, &v30);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v22 = objc_opt_new();
  self->_ctx_dict = v22;
  v23 = v10[10];
  if (v23 != v22)
  {

    v10[10] = v22;
    v22 = 0;
  }

  v24 = [(DYIntKeyedDictionary *)self->_sharegroupMap objectForIntKey:a5];
  self->_sharegroup_dict = v24;
  if (v24)
  {
    v25 = [-[NSMutableDictionary objectForKey:](v24 objectForKey:{@"ref_count", "unsignedIntValue"}];
    v26 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:(v25 + 1)];
    [(NSMutableDictionary *)self->_sharegroup_dict setObject:v26 forKey:@"ref_count"];
  }

  else
  {
    v27 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:1];
    v28 = objc_alloc(MEMORY[0x277CBEB38]);
    v29 = [v28 initWithObjectsAndKeys:{v27, @"ref_count", 0, 0, v30}];
    self->_sharegroup_dict = v29;
    [(DYIntKeyedDictionary *)self->_sharegroupMap setObject:v29 forIntKey:a5];

    [(DYGLFunctionPlayer *)self initializeNewSharegroupInfoDictionary];
  }
}

- (void)setCurrentContext:(unint64_t)a3
{
  v4 = *MEMORY[0x277D0AF78];
  *(&self->super.super.isa + v4) = a3;
  if (a3)
  {
    size = self->_contextInfoMap.__table_.__bucket_list_.__deleter_.__size_;
    if (!size)
    {
      goto LABEL_27;
    }

    v6 = vcnt_s8(size);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = a3;
      if (size <= a3)
      {
        v7 = a3 % size;
      }
    }

    else
    {
      v7 = (size - 1) & a3;
    }

    v8 = self->_contextInfoMap.__table_.__bucket_list_.__ptr_[v7];
    if (!v8 || (v9 = *v8) == 0)
    {
LABEL_27:
      __assert_rtn("[DYGLFunctionPlayer setCurrentContext:]", &unk_24C0EEB1F, 0, "iter != _contextInfoMap.end()");
    }

    if (v6.u32[0] < 2uLL)
    {
      v10 = size - 1;
      while (1)
      {
        v11 = v9[1];
        if (v11 == a3)
        {
          if (v9[2] == a3)
          {
            goto LABEL_15;
          }
        }

        else if ((v11 & v10) != v7)
        {
          goto LABEL_27;
        }

        v9 = *v9;
        if (!v9)
        {
          goto LABEL_27;
        }
      }
    }

    while (1)
    {
      v14 = v9[1];
      if (v14 == a3)
      {
        if (v9[2] == a3)
        {
LABEL_15:
          v12 = v9[3];
          self->_currentContextInfo = v12;
          if (!v12)
          {
            [DYGLFunctionPlayer setCurrentContext:];
          }

          if (([(DYGLFunctionPlayer *)v12 setCurrentContext:&self->_currentContextInfo, &v15]& 1) == 0)
          {
            v13 = v15;
            goto LABEL_18;
          }

          return;
        }
      }

      else
      {
        if (v14 >= size)
        {
          v14 %= size;
        }

        if (v14 != v7)
        {
          goto LABEL_27;
        }
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_27;
      }
    }
  }

  [(DYGLFunctionPlayer *)self setCurrentContext:?];
  v13 = 0;
LABEL_18:
  self->_disp = v13;
}

- (void)deleteCurrentContext
{
  v3 = [-[NSMutableDictionary objectForKey:](self->_sharegroup_dict objectForKey:{@"ref_count", "unsignedIntValue"}];
  if (v3 == 1)
  {
    [(DYIntKeyedDictionary *)self->_sharegroupMap removeObjectForIntKey:*(self->_currentContextInfo + 11)];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:(v3 - 1)];
    [(NSMutableDictionary *)self->_sharegroup_dict setObject:v4 forKey:@"ref_count"];
  }

  p_contextInfoMap = &self->_contextInfoMap;
  v6 = *MEMORY[0x277D0AF78];
  v7 = *(&self->super.super.isa + v6);
  size = self->_contextInfoMap.__table_.__bucket_list_.__deleter_.__size_;
  if ((size & (size - 1)) != 0)
  {
    v10 = *(&self->super.super.isa + v6);
    if (v7 >= size)
    {
      v10 = v7 % size;
    }

    v9 = *(*p_contextInfoMap + 8 * v10);
    do
    {
      do
      {
        v9 = *v9;
      }

      while (v9[1] != v7);
    }

    while (v9[2] != v7);
  }

  else
  {
    v9 = *(*p_contextInfoMap + 8 * ((size - 1) & v7));
    do
    {
      do
      {
        v9 = *v9;
      }

      while (v9[1] != v7);
    }

    while (v9[2] != v7);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>>>::remove(p_contextInfoMap, v9, &v14);
  v11 = v14;
  v14 = 0;
  if (v11)
  {
    if (v15 == 1)
    {
      v12 = v11[3];
      v11[3] = 0;
      if (v12)
      {
        v13 = v11;
        (*(*v12 + 8))(v12);
        v11 = v13;
      }
    }

    operator delete(v11);
  }

  self->_currentContextInfo = 0;
  *(&self->super.super.isa + v6) = 0;
  self->_ctx = 0;
  self->_ctx_dict = 0;
  self->_sharegroup_dict = 0;
  self->_gli_ctx = 0;
  self->_disp = 0;
}

- (id)contextForContextIdentifier:(unint64_t)a3
{
  size = self->_contextInfoMap.__table_.__bucket_list_.__deleter_.__size_;
  if (!size)
  {
    goto LABEL_24;
  }

  v4 = vcnt_s8(size);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a3;
    if (size <= a3)
    {
      v5 = a3 % size;
    }
  }

  else
  {
    v5 = (size - 1) & a3;
  }

  v6 = self->_contextInfoMap.__table_.__bucket_list_.__ptr_[v5];
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_24:
    __assert_rtn("[DYGLFunctionPlayer contextForContextIdentifier:]", &unk_24C0EEB1F, 0, "iter != _contextInfoMap.end()");
  }

  if (v4.u32[0] < 2uLL)
  {
    v8 = size - 1;
    while (1)
    {
      v9 = v7[1];
      if (v9 == a3)
      {
        if (v7[2] == a3)
        {
          goto LABEL_14;
        }
      }

      else if ((v9 & v8) != v5)
      {
        goto LABEL_24;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
    v12 = v7[1];
    if (v12 == a3)
    {
      break;
    }

    if (v12 >= size)
    {
      v12 %= size;
    }

    if (v12 != v5)
    {
      goto LABEL_24;
    }

LABEL_18:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_24;
    }
  }

  if (v7[2] != a3)
  {
    goto LABEL_18;
  }

LABEL_14:
  v10 = *(v7[3] + 72);

  return [v10 dy_platformContext];
}

- (void)_dispatchGLFunction
{
  v3 = *MEMORY[0x277D0AFA0];
  v4 = **(&self->super.super.isa + v3);
  [(DYFunctionPlayer *)self processArguments];
  disp = self->_disp;
  gli_ctx = self->_gli_ctx;
  v7 = *MEMORY[0x277D0AF68];
  v8 = *MEMORY[0x277D0AFA8];
  v9 = *(&self->super.super.isa + v8);
  dy_dispatch();
  if (((*(&self->super.super.isa + v3))[23] & 0x10) != 0)
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:(*(&self->super.super.isa + v3))[3] encoding:1];
    NSMapInsert(*(&self->super.super.isa + *MEMORY[0x277D0AFB0]), v10, **(&self->super.super.isa + v8));
  }
}

- (void)executePlatformFunction
{
  v3 = *MEMORY[0x277D0AFA0];
  v4 = *(&self->super.super.isa + v3);
  v5 = *v4;
  if (*v4 <= -12277)
  {
    if (v5 == -12279)
    {
      v31 = **(v4 + 72);
      disp = self->_disp;
      *&v63 = 0;
      (disp->get_buffer_pointerv)(self->_gli_ctx, v31, 35005, &v63);
      v33 = *(v4 + 118);
      if ((v33 & 0x28) != 0)
      {
        v34 = [(DYFunctionPlayer *)self captureStore];
        v35 = *(v4 + 96);
        if ((v33 & 8) != 0)
        {
          [(DYCaptureStore *)v34 readDataForFilenameBuffer:v35 buffer:**(v4 + 120) + v63 size:**(v4 + 144) error:0];
        }

        else
        {
          [(DYCaptureStore *)v34 readDataForFilePosition:*v35 buffer:**(v4 + 120) + v63 size:**(v4 + 144) error:0];
        }
      }

      else
      {
        memcpy((**(v4 + 120) + v63), *(v4 + 96), **(v4 + 144));
      }

      return;
    }

    if (v5 != -12277)
    {
      return;
    }

    currentContextInfo = self->_currentContextInfo;
    currentContextInfo[8] = **(v4 + 96);
    v7 = *(v4 + 94);
    if ((v7 & 0x28) == 0)
    {
      currentContextInfo[7] = *(v4 + 72);
      return;
    }

    currentContextInfo[7] = 0;
    v8 = [(DYFunctionPlayer *)self captureStore];
    v9 = *(v4 + 72);
    if ((v7 & 8) != 0)
    {
      [(DYCaptureStore *)v8 getInfo:&v63 forFilenameBuffer:v9 error:0];
      v10 = DWORD1(v64);
      v11 = (DWORD1(v64) + 15) & 0x1FFFFFFF0;
      v12 = currentContextInfo[6];
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      [(DYCaptureStore *)v8 getInfo:&v63 forFilePosition:*v9 error:0];
      v10 = DWORD1(v64);
      v11 = (DWORD1(v64) + 15) & 0x1FFFFFFF0;
      v12 = currentContextInfo[6];
      if (v12)
      {
LABEL_7:
        v13 = *(*(currentContextInfo[2] + (((v12 + currentContextInfo[5] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v12 + currentContextInfo[5] - 1) & 0x1FF));
        if (v13[1] - v13[4] < v11)
        {
          operator new();
        }

        v66 = 0;
        v59 = [(DYFunctionPlayer *)self captureStore];
        if ([(DYCaptureStore *)v59 readDataForFilePosition:v63 buffer:v13[4] + *v13 size:v10 error:&v66]== -1)
        {
          v62 = *MEMORY[0x277D0B240];
          _DYOLog();
        }

        else
        {
          v60 = v13[4];
          v61 = ((v11 + v13[5] - 1) & -v13[5]) + v60;
          v13[3] = v60;
          v13[4] = v61;
        }

        return;
      }
    }

    operator new();
  }

  if (v5 != -12276)
  {
    if (v5 != -12275)
    {
      return;
    }

    v14 = self->_currentContextInfo;
    v15 = v14[6];
    if (!v15)
    {
      return;
    }

    v17 = v14 + 5;
    v16 = v14[5];
    v18 = v15 + v16 - 1;
    v19 = v14[2];
    v20 = *(v19 + ((v18 >> 6) & 0x3FFFFFFFFFFFFF8));
    v21 = v18 & 0x1FF;
    v22 = *(v20 + 8 * v21);
    *(v20 + 8 * v21) = 0;
    v23 = ((*v22 + v22[5] - 1) & -v22[5]) - *v22;
    v22[3] = v23;
    v22[4] = v23;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v24 = v14[3];
    if (v24 == v19)
    {
      v14[6] = 0;
      v48 = 0;
    }

    else
    {
      v25 = &v19[v16 >> 9];
      v26 = *v25;
      v27 = (*v25 + 8 * (v16 & 0x1FF));
      v28 = *(v19 + (((v14[6] + v16) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v14[6] + v16) & 0x1FF);
      if (v27 != v28)
      {
        do
        {
          v29 = *v27;
          *v27 = 0;
          if (v29)
          {
            GPUTools::VMBuffer::~VMBuffer(v29);
            MEMORY[0x24C2553C0]();
            v26 = *v25;
          }

          if (++v27 - v26 == 4096)
          {
            v30 = v25[1];
            ++v25;
            v26 = v30;
            v27 = v30;
          }
        }

        while (v27 != v28);
        v19 = v14[2];
        v24 = v14[3];
      }

      v14[6] = 0;
      v48 = v24 - v19;
      if (v48 >= 3)
      {
        do
        {
          operator delete(*v19);
          v49 = v14[3];
          v19 = (v14[2] + 8);
          v14[2] = v19;
          v48 = (v49 - v19) >> 3;
        }

        while (v48 > 2);
      }
    }

    if (v48 == 1)
    {
      v50 = 256;
    }

    else
    {
      if (v48 != 2)
      {
LABEL_42:
        std::deque<std::unique_ptr<GPUTools::VMBuffer>>::shrink_to_fit(v14 + 1);
        v52 = v14[2];
        v51 = v14[3];
        if (v51 != v52)
        {
          v14[3] = v51 + ((v52 - v51 + 7) & 0xFFFFFFFFFFFFFFF8);
        }

        std::__split_buffer<std::unique_ptr<GPUTools::VMBuffer> *,std::allocator<std::unique_ptr<GPUTools::VMBuffer> *>>::shrink_to_fit((v14 + 1));
        *(v14 + 3) = 0u;
        *(v14 + 1) = 0u;
        v63 = 0u;
        v64 = 0u;
        *v17 = 0;
        v14[6] = 0;
        v65 = 0uLL;
        std::stack<std::unique_ptr<GPUTools::VMBuffer>>::~stack(&v63);
        v53 = *(v14 + 1);
        v54 = v14[3];
        v55 = v14[2];
        *&v63 = v22;
        if (v54 == v55)
        {
          v56 = 0;
        }

        else
        {
          v56 = ((v54 - v55) << 6) - 1;
        }

        v57 = v14[6];
        v58 = v57 + v14[5];
        if (v56 == v58)
        {
          std::deque<std::unique_ptr<GPUTools::VMBuffer>>::__add_back_capacity(v14 + 1);
          v55 = v14[2];
          v57 = v14[6];
          v58 = v14[5] + v57;
        }

        *(*(v55 + ((v58 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v58 & 0x1FF)) = v22;
        v14[6] = v57 + 1;
        return;
      }

      v50 = 512;
    }

    *v17 = v50;
    goto LABEL_42;
  }

  v36 = *(v4 + 10);
  v37 = (v4 + 24 * *(v4 + 10));
  v38 = *v37[3];
  v39 = **v37;
  v40 = self->_currentContextInfo;
  v41 = v40[7];
  if (!v41)
  {
    v42 = v40[6] + v40[5] - 1;
    v43 = *(*(v40[2] + ((v42 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v42 & 0x1FF));
    v41 = v43[3] + *v43;
  }

  v44 = *(v37 + 3);
  **v37 = v39 - v40[8] + v41;
  *(v4 + 24 * v36 + 12) = 13;
  *v4 = v38;
  *(v4 + 10) = v36 - 1;
  if ([(DYFunctionPlayer *)self shouldExecuteGraphicsFunction])
  {
    [(DYGLFunctionPlayer *)self executeGraphicsFunction];
  }

  v45 = *(&self->super.super.isa + v3);
  *v45 = -12276;
  v46 = *(v45 + 10) + 1;
  *(v45 + 10) = v46;
  v47 = v4 + 24 * v46;
  **v47 = v39;
  *(v47 + 12) = v44;
}

- (id).cxx_construct
{
  *(self + 86) = 0u;
  *(self + 87) = 0u;
  *(self + 352) = 1065353216;
  return self;
}

- (void)executeGraphicsFunction
{
  if ([(DYFunctionPlayer *)self shouldExecuteGraphicsFunction])
  {
    [(DYGLFunctionPlayer *)self _dispatchGLFunction];
    v3 = (*(self->_currentContextInfo + 96) & 1) == 0 && (self->_disp->get_error)(self->_gli_ctx) != 0;

    [(DYGLFunctionPlayer *)self performPostGraphicsFunctionDispatchActions:v3];
  }
}

- (void)setCurrentContext:(void *)result .cold.2(void *result, void *a2)
{
  result[180] = 0;
  *a2 = 0;
  result[179] = 0;
  result[181] = 0;
  result[182] = 0;
  result[183] = 0;
  return result;
}

- (uint64_t)setCurrentContext:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(a2 + 1448) = *(a1 + 80);
  *(a2 + 1456) = [*(a2 + 1416) objectForIntKey:*(*a3 + 88)];
  v7 = [*(*a3 + 72) dy_platformContext];
  *(a2 + 1432) = v7;
  if (!v7)
  {
    return 1;
  }

  *(a2 + 1464) = GLIContextFromEAGLContext();
  v8 = *(a2 + 1432);
  v9 = GLCFrontDispatch();
  result = 0;
  *a4 = v9;
  return result;
}

@end