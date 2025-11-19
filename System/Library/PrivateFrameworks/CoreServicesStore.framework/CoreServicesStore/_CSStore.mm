@interface _CSStore
+ (void)initialize;
- (BOOL)isReadOnly;
- (_CSStore)initWithCoder:(id)a3;
- (_CSStore)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (_CSStore)initWithError:(id *)a3;
- (id).cxx_construct;
- (id)description;
- (id)initByMovingStore:(void *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setAccessContext:(id)a3;
- (void)setReadOnly:(BOOL)a3;
- (void)setUnitIdentifierExhaustionHandler:(id)a3;
@end

@implementation _CSStore

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = getenv("CS_ENABLE_IO_LOGGING");
    if (v2)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
      v4 = [v3 BOOLValue];

      if (v4)
      {
        CSStore2::Writer::logIO = 1;
      }
    }
  }
}

- (BOOL)isReadOnly
{
  if (performConstantAssertions == 1)
  {
    accessContext = self->_accessContext;
    if (accessContext)
    {
      (*(*accessContext->_impl.__ptr_ + 8))(accessContext->_impl.__ptr_, a2);
      if (performConstantAssertions)
      {
        v4 = self->_accessContext;
        if (v4)
        {
          (*(*v4->_impl.__ptr_ + 8))(v4->_impl.__ptr_);
        }
      }
    }
  }

  return *&self->_store.flags & 1;
}

- (id).cxx_construct
{
  *(self + 320) = 0;
  *(self + 324) = 0;
  *(self + 41) = 0;
  *(self + 1) = 0;
  *(self + 37) = 0;
  *(self + 38) = 0;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(self + 1) = v2;
  *(self + 2) = v2;
  *(self + 3) = v2;
  *(self + 4) = v2;
  *(self + 5) = v2;
  *(self + 6) = v2;
  *(self + 7) = v2;
  *(self + 8) = v2;
  *(self + 9) = v2;
  *(self + 10) = v2;
  *(self + 11) = v2;
  *(self + 12) = v2;
  *(self + 13) = v2;
  *(self + 14) = v2;
  *(self + 15) = v2;
  *(self + 16) = v2;
  *(self + 34) = 0;
  *(self + 35) = 0;
  *(self + 36) = 0;
  atomic_store(0, self + 37);
  atomic_store(0, self + 38);
  *(self + 39) = atomic_fetch_add(&CSStore2::Store::Store(void)::nextFamily, 1uLL);
  *(self + 320) = 0;
  *(self + 321) = v5;
  *(self + 323) = v6;
  *(self + 324) = 0;
  *(self + 325) = v3;
  *(self + 327) = v4;
  *(self + 336) = 0;
  return self;
}

- (_CSStore)initWithCoder:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self)
    {
      goto LABEL_3;
    }

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"CSStore.mm" lineNumber:253 description:{@"Invalid parameter not satisfying: %@", @"[aDecoder isKindOfClass:[NSXPCCoder class]]"}];

  if (!self)
  {
    goto LABEL_16;
  }

LABEL_3:
  v22 = 0;
  v6 = v5;
  v7 = @"XPCRepresentation";
  v23 = 0;
  if (!v6)
  {
    v14 = MEMORY[0x1E696ABC0];
    v24[0] = *MEMORY[0x1E696A278];
    v24[1] = @"Line";
    v25[0] = @"paramErr";
    v25[1] = &unk_1F37D7AD8;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v11 = [v14 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v15];
LABEL_9:

    v10 = 0;
    v13 = 1;
LABEL_10:
    v16 = v11;
    v22 = v11;
    v12 = v11;
    goto LABEL_11;
  }

  v8 = [v6 decodeXPCObjectOfType:MEMORY[0x1E69E9E70] forKey:@"XPCRepresentation"];
  if (!v8)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:0];
    v15 = 0;
    goto LABEL_9;
  }

  CSStore2::Store::CreateWithXPCObject(v25, v8, &v22);
  v9 = v25[0];
  v25[0] = 0;
  std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](&v23, v9);
  std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](v25, 0);
  v10 = v23;

  v11 = 0;
  v12 = 0;
  v13 = v10 == 0;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_11:

  v17 = v22;
  if (v13)
  {
    [v6 failWithError:v17];

    v18 = 0;
  }

  else
  {
    v18 = [(_CSStore *)self initByMovingStore:v10];
  }

  std::unique_ptr<CSStore2::Store>::~unique_ptr[abi:nn200100](&v23);

LABEL_17:
  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"CSStore.mm" lineNumber:246 description:{@"Invalid parameter not satisfying: %@", @"[aCoder isKindOfClass:[NSXPCCoder class]]"}];
  }

  if (performConstantAssertions == 1)
  {
    accessContext = self->_accessContext;
    if (accessContext)
    {
      (*(*accessContext->_impl.__ptr_ + 8))(accessContext->_impl.__ptr_);
    }
  }

  v14 = v5;
  v7 = @"XPCRepresentation";
  if (v14)
  {
    v15 = 0;
    v8 = CSStore2::Store::encodeAsXPCObject(self->_store.dataContainer, &v15);
    v9 = v15;
    v10 = v9;
    if (v8)
    {
      [v14 encodeXPCObject:v8 forKey:@"XPCRepresentation"];
    }

    else
    {
      v11 = CSStore2::GetLog(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v17 = v10;
        _os_log_fault_impl(&dword_1B9D5B000, v11, OS_LOG_TYPE_FAULT, "Unexpectedly could not encode store: %@", buf, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  if (performConstantAssertions == 1)
  {
    accessContext = self->_accessContext;
    if (accessContext)
    {
      (*(*accessContext->_impl.__ptr_ + 8))(accessContext->_impl.__ptr_, a2);
    }
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  dataContainer = self->_store.dataContainer;
  v8 = [v4 stringWithFormat:@"<%@ %p> { p = %p, gen = %llu, length = %llu/%llu/%llu }", v6, self, *(dataContainer + 1), *(*(dataContainer + 1) + 8), *(dataContainer + 4), *(*(dataContainer + 1) + 12), *(*(dataContainer + 1) + 16)];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3 error:(id *)a4
{
  v29[3] = *MEMORY[0x1E69E9840];
  if (performConstantAssertions == 1)
  {
    accessContext = self->_accessContext;
    if (accessContext)
    {
      (*(*accessContext->_impl.__ptr_ + 8))(accessContext->_impl.__ptr_, a2);
    }
  }

  dataContainer = self->_store.dataContainer;
  if (dataContainer)
  {
    v9 = *(dataContainer + 1);
    v10 = *(dataContainer + 4);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  CSStore2::Store::CreateWithBytes(&v20, v9, v10, a4);
  if (!v20)
  {
    goto LABEL_14;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__114;
  v26 = __Block_byref_object_dispose__115;
  v27 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = ___ZNK8CSStore25Store4copyEPU15__autoreleasingP7NSError_block_invoke;
  v21[3] = &unk_1E7ED3588;
  v21[4] = &v22;
  CSStore2::Store::enumerateTables(v20, v21);
  v11 = v23[5];
  if (v11)
  {
    if (a4)
    {
      v12 = MEMORY[0x1E696ABC0];
      v28[0] = *MEMORY[0x1E696A278];
      v28[1] = @"Line";
      v29[0] = @"kCSStoreValidationErr";
      v29[1] = &unk_1F37D7AC0;
      v28[2] = @"FullTable";
      v29[2] = v11;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
      *a4 = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-9491 userInfo:v13];
    }

    std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](&v20, 0);
  }

  _Block_object_dispose(&v22, 8);

  v14 = v20;
  if (v20)
  {
    v15 = *(*(self->_store.dataContainer + 1) + 8);
    v20[38] = self->_store.pedigree.family;
    *(v14 + 78) = v15;
    *(v14 + 316) = 1;
    v16 = [objc_opt_class() allocWithZone:a3];
    v17 = [v16 initByMovingStore:v20];
  }

  else
  {
LABEL_14:
    v17 = 0;
  }

  std::unique_ptr<CSStore2::Store>::~unique_ptr[abi:nn200100](&v20);
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)setReadOnly:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x1E69E9840];
  if (performMutatingAssertions == 1)
  {
    accessContext = self->_accessContext;
    if (accessContext)
    {
      (**accessContext->_impl.__ptr_)(accessContext->_impl.__ptr_, a2);
      if (performMutatingAssertions)
      {
        v6 = self->_accessContext;
        if (v6)
        {
          (**v6->_impl.__ptr_)(v6->_impl.__ptr_);
        }
      }
    }
  }

  if ((*&self->_store.flags & 1) != v3)
  {
    if (v3)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }

    dataContainer = self->_store.dataContainer;
    if (dataContainer)
    {
      v9 = *(dataContainer + 1);
      v10 = *(dataContainer + 4);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v11 = MEMORY[0x1BFAE65B0](*MEMORY[0x1E69E9A60], v9, v10, 0, v7);
    if (v11)
    {
      v12 = v11;
      v13 = CSStore2::GetLog(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = 134218752;
        v16 = v9;
        v17 = 2048;
        v18 = v10;
        v19 = 2048;
        v20 = v7;
        v21 = 2048;
        v22 = v12;
        _os_log_error_impl(&dword_1B9D5B000, v13, OS_LOG_TYPE_ERROR, "Failed to set protection of region at %p length %zu to %lx: %lx", &v15, 0x2Au);
      }
    }

    *&self->_store.flags = *&self->_store.flags & 0xFE | v3;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setUnitIdentifierExhaustionHandler:(id)a3
{
  v4 = a3;
  if (performMutatingAssertions == 1)
  {
    accessContext = self->_accessContext;
    if (accessContext)
    {
      (**accessContext->_impl.__ptr_)(accessContext->_impl.__ptr_);
      if (performMutatingAssertions)
      {
        v6 = self->_accessContext;
        if (v6)
        {
          (**v6->_impl.__ptr_)(v6->_impl.__ptr_);
        }
      }
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47___CSStore_setUnitIdentifierExhaustionHandler___block_invoke;
  v11[3] = &unk_1E7ED36C0;
  v7 = v4;
  v12 = v7;
  v8 = v11;
  v9 = [v8 copy];
  unitIdentifierExhaustionHandler = self->_store.unitIdentifierExhaustionHandler;
  self->_store.unitIdentifierExhaustionHandler = v9;
}

- (void)setAccessContext:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_accessContext, a3);
  accessContext = self->_accessContext;
  if (accessContext && (*(*accessContext->_impl.__ptr_ + 40))(accessContext->_impl.__ptr_) && [_CSStore setAccessContext:]::once != -1)
  {
    dispatch_once(&[_CSStore setAccessContext:]::once, &__block_literal_global_165);
  }
}

- (_CSStore)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v4 = MEMORY[0x1EEE9AC00](self, a2, a3, a4);
  v6 = v5;
  v7 = v4;
  v82 = *MEMORY[0x1E69E9840];
  v9 = v8;
  v10 = v9;
  v73 = 0;
  if (!v9 || ![v9 isFileURL])
  {
    v17 = MEMORY[0x1E696ABC0];
    *buf = *MEMORY[0x1E696A278];
    *&buf[8] = @"Line";
    *&__ptr = @"paramErr";
    *(&__ptr + 1) = &unk_1F37D7B80;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&__ptr forKeys:buf count:2];
    v13 = [v17 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v11];
    goto LABEL_10;
  }

  v75 = 0;
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v10 options:1 error:&v75];
  v12 = v75;
  v13 = v12;
  if (!v11)
  {
    goto LABEL_10;
  }

  v14 = CSStore2::GetLog(v12);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v55 = [v11 length];
    LODWORD(__ptr) = 134217984;
    *(&__ptr + 4) = v55;
    _os_log_debug_impl(&dword_1B9D5B000, v14, OS_LOG_TYPE_DEBUG, "Creating CSStore from file with length %llu", &__ptr, 0xCu);
  }

  if ([v11 length] >> 32)
  {
    v15 = MEMORY[0x1E696ABC0];
    *buf = *MEMORY[0x1E696A278];
    *&buf[8] = @"Line";
    *&__ptr = @"fileBoundsErr";
    *(&__ptr + 1) = &unk_1F37D7B68;
    v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&__ptr forKeys:buf count:2];
    v16 = [v15 errorWithDomain:*MEMORY[0x1E696A768] code:-1309 userInfo:?];

    v13 = v16;
    goto LABEL_8;
  }

  v36 = v11;
  v74 = v13;
  CSStore2::Store::_Create(&__ptr, [v11 bytes], objc_msgSend(v11, "length"), 1, 1, &v74);
  v71 = v74;

  v37 = __ptr;
  *&__ptr = 0;
  std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](&v73, v37);
  std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](&__ptr, 0);
  if (v73)
  {
    v18 = 0;
LABEL_27:
    v13 = v71;
    goto LABEL_11;
  }

  v38 = [v71 userInfo];
  v39 = [v38 objectForKey:@"ZeroedRanges"];
  v40 = v39 == 0;

  if (v40)
  {
    v18 = 1;
    goto LABEL_27;
  }

  v41 = [v71 userInfo];
  v72 = [v41 mutableCopy];

  v42 = v11;
  v70 = [v11 bytes];
  v43 = [v11 length];
  v69 = v10;
  v44 = v69;
  v45 = fopen([v69 fileSystemRepresentation], "rb");
  if (!v45)
  {
    v56 = CSStore2::GetLog(0);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__ptr) = 138412290;
      *(&__ptr + 4) = v69;
      _os_log_error_impl(&dword_1B9D5B000, v56, OS_LOG_TYPE_ERROR, "verifying map with file: URL %@ could not be opened", &__ptr, 0xCu);
    }

    v57 = 4;
    goto LABEL_59;
  }

  v46 = 0;
  v47 = 0;
  v48 = v43;
  while (!feof(v45) && !ferror(v45))
  {
    v49 = fread(&__ptr, 1uLL, 0x1000uLL, v45);
    v50 = v49;
    if (!v49)
    {
      goto LABEL_43;
    }

    if (v49 <= v48 - v46)
    {
      v52 = memcmp(&__ptr, (v70 + v46), v49);
      if (!v52)
      {
        goto LABEL_43;
      }

      v51 = CSStore2::GetLog(v52);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v46;
        *&buf[12] = 2048;
        *&buf[14] = v50 + v46;
        _os_log_error_impl(&dword_1B9D5B000, v51, OS_LOG_TYPE_ERROR, "file/map mismatch between offsets %#zx and %#zx", buf, 0x16u);
      }

      v47 = 1;
    }

    else
    {
      v51 = CSStore2::GetLog(v49);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = v48;
        _os_log_error_impl(&dword_1B9D5B000, v51, OS_LOG_TYPE_ERROR, "file/map mismatch: file longer than map of length %#zx", buf, 0xCu);
      }

      v47 = 3;
    }

LABEL_43:
    v46 += v50;
  }

  v53 = ferror(v45);
  if (v53)
  {
    v54 = CSStore2::GetLog(v53);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__ptr) = 0;
      _os_log_error_impl(&dword_1B9D5B000, v54, OS_LOG_TYPE_ERROR, "file/map comparison read error", &__ptr, 2u);
    }

    v47 = 4;
    goto LABEL_48;
  }

  if (v48 != v46)
  {
    v58 = feof(v45);
    if (v58)
    {
      v54 = CSStore2::GetLog(v58);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__ptr) = 134217984;
        *(&__ptr + 4) = v48;
        _os_log_error_impl(&dword_1B9D5B000, v54, OS_LOG_TYPE_ERROR, "file/map mismatch: file shorter than map of length %#zx", &__ptr, 0xCu);
      }

      v47 = 2;
LABEL_48:
    }
  }

  fclose(v45);
  v57 = v47;
LABEL_59:

  v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v57];
  [v72 setObject:v59 forKeyedSubscript:@"filecmp"];

  v60 = v11;
  CSStore2::Store::_Create(buf, [v11 bytes], objc_msgSend(v11, "length"), 1, 0, 0);
  v61 = *buf;
  if (*buf)
  {
    *&__ptr = MEMORY[0x1E69E9820];
    *(&__ptr + 1) = 3221225472;
    v78 = ___ZN8CSStore25Store23CreateWithContentsOfURLEP5NSURLPU15__autoreleasingP7NSError_block_invoke;
    v79 = &unk_1E7ED35B0;
    v81 = *buf;
    v62 = v72;
    v80 = v62;
    CSStore2::Store::enumerateTables(v61, &__ptr);
    v64 = CSStore2::String::GetDebugDescriptionOfCache(v61, v63);
    [v62 setObject:v64 forKeyedSubscript:@"string$"];
  }

  v65 = objc_alloc(MEMORY[0x1E696ABC0]);
  v66 = [v71 domain];
  v67 = [v71 code];
  v68 = [v72 copy];
  v13 = [v65 initWithDomain:v66 code:v67 userInfo:v68];

  std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](buf, 0);
LABEL_8:

LABEL_10:
  v18 = 1;
LABEL_11:

  v19 = objc_autoreleasePoolPush();
  if (((v10 != 0) & v18) == 1)
  {
    if (v13)
    {
      v20 = [v13 userInfo];
      v21 = *MEMORY[0x1E696A998];
      v22 = [v20 objectForKeyedSubscript:*MEMORY[0x1E696A998]];
      v23 = v22 == 0;

      if (v23)
      {
        v24 = [v13 userInfo];
        v25 = [v24 mutableCopy];

        [v25 setObject:v10 forKeyedSubscript:v21];
        v26 = MEMORY[0x1E696ABC0];
        v27 = [v13 domain];
        v28 = [v26 errorWithDomain:v27 code:objc_msgSend(v13 userInfo:{"code"), v25}];

        v13 = v28;
      }
    }
  }

  objc_autoreleasePoolPop(v19);
  if (v18)
  {
    v29 = v13;
    v30 = v13;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  if (v73)
  {
    v32 = [v7 initByMovingStore:?];
    if (!v6)
    {
      goto LABEL_24;
    }

LABEL_22:
    if (!v32)
    {
      v33 = v31;
      *v6 = v31;
    }
  }

  else
  {

    v32 = 0;
    if (v6)
    {
      goto LABEL_22;
    }
  }

LABEL_24:
  std::unique_ptr<CSStore2::Store>::~unique_ptr[abi:nn200100](&v73);

  v34 = *MEMORY[0x1E69E9840];
  return v32;
}

- (_CSStore)initWithError:(id *)a3
{
  v9 = 0;
  CSStore2::Store::_Create(&v10, 0, 0, 0, 0, &v9);
  v5 = v9;
  if (v10)
  {
    v6 = [(_CSStore *)self initByMovingStore:?];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v6 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    v7 = v5;
    *a3 = v5;
  }

LABEL_7:
  std::unique_ptr<CSStore2::Store>::~unique_ptr[abi:nn200100](&v10);

  return v6;
}

- (id)initByMovingStore:(void *)a3
{
  v21.receiver = self;
  v21.super_class = _CSStore;
  v4 = [(_CSStore *)&v21 init];
  v5 = (v4 + 8);
  if (v4)
  {
    v6 = v5 == a3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    objc_storeStrong(v5, *a3);
    v7 = *a3;
    *a3 = 0;

    v8 = *(a3 + 8);
    v9 = *(a3 + 24);
    v10 = *(a3 + 56);
    *(v4 + 3) = *(a3 + 40);
    *(v4 + 4) = v10;
    *(v4 + 1) = v8;
    *(v4 + 2) = v9;
    v11 = *(a3 + 72);
    v12 = *(a3 + 88);
    v13 = *(a3 + 120);
    *(v4 + 7) = *(a3 + 104);
    *(v4 + 8) = v13;
    *(v4 + 5) = v11;
    *(v4 + 6) = v12;
    v14 = *(a3 + 136);
    v15 = *(a3 + 152);
    v16 = *(a3 + 184);
    *(v4 + 11) = *(a3 + 168);
    *(v4 + 12) = v16;
    *(v4 + 9) = v14;
    *(v4 + 10) = v15;
    v17 = *(a3 + 200);
    v18 = *(a3 + 216);
    v19 = *(a3 + 248);
    *(v4 + 15) = *(a3 + 232);
    *(v4 + 16) = v19;
    *(v4 + 13) = v17;
    *(v4 + 14) = v18;
    *(v4 + 34) = *(a3 + 33);
    *(v4 + 280) = *(a3 + 17);
    atomic_store(0, v4 + 37);
    atomic_store(0, v4 + 38);
    *(v4 + 312) = *(a3 + 19);
  }

  return v4;
}

@end