@interface SNNMILProgram
+ (void)loadContentsOfURL:(id)l withContext:(id)context completion:(id)completion;
- (BOOL)isReferencingBlobFile;
- (NSArray)functionNames;
- (SNNMILProgram)initWithProgram:()unique_ptr<MIL:(std:(id)l :default_delete<MIL::IRProgram>>)a3 :IRProgram sourceFilePath:;
- (SNNMILProgram)initWithProgram:()unique_ptr<MIL:(std::default_delete<MIL::IRProgram>>)l :IRProgram;
- (id).cxx_construct;
- (id)description;
- (id)functionWithName:(id)name;
- (id)serializeToProtobufWithError:(id *)error;
- (shared_ptr<MIL::IRProgram>)milProgram;
- (void)writeToFile:(id)file;
@end

@implementation SNNMILProgram

+ (void)loadContentsOfURL:(id)l withContext:(id)context completion:(id)completion
{
  lCopy = l;
  contextCopy = context;
  completionCopy = completion;
  v10 = objc_autoreleasePoolPush();
  v11 = [lCopy hasPathExtension:@"mil"];
  if ((v11 & 1) != 0 || (v11 = [lCopy hasPathExtension:@"txt"], v11))
  {
    MIL::ParserOptions::Make(&v36, v11);
    v12 = v36;
    path = [lCopy path];
    v14 = path;
    if (path)
    {
      [path cxxString];
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v35 = 0;
    }

    (*(*v12 + 32))(v12, __p, 1);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p[0]);
    }

    if (contextCopy)
    {
      [contextCopy context];
    }

    else
    {
      v31[1] = 0;
      v32 = 0;
    }

    MIL::Text::ParseProgramFromFile();
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    v15 = [SNNMILProgram alloc];
    v16 = v33;
    v33 = 0;
    v31[0] = v16;
    path2 = [lCopy path];
    v18 = [(SNNMILProgram *)v15 initWithProgram:v31 sourceFilePath:path2];

    v19 = v31[0];
    v31[0] = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    completionCopy[2](completionCopy, v18, 0);

    v20 = v33;
    v33 = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v36;
    v36 = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }
  }

  else if ([lCopy hasPathExtension:@"mlpackage"])
  {
    v22 = MEMORY[0x277CBFF20];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __58__SNNMILProgram_loadContentsOfURL_withContext_completion___block_invoke;
    v28[3] = &unk_279971910;
    v30 = completionCopy;
    v29 = contextCopy;
    [v22 compileModelAtURL:lCopy completionHandler:v28];
  }

  else
  {
    if ([lCopy hasPathExtension:@"mlmodelc"])
    {
      v23 = [lCopy URLByAppendingPathComponent:@"model.mil"];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      path3 = [v23 path];
      v26 = [defaultManager fileExistsAtPath:path3];

      if (v26)
      {
        [SNNMILProgram loadContentsOfURL:v23 withContext:contextCopy completion:completionCopy];
      }

      else
      {
        v27 = [SNNError errorWithCode:-8 description:@"Model package must be exported as a MLProgram."];
        (completionCopy)[2](completionCopy, 0, v27);
      }
    }

    else
      v23 = {;
      (completionCopy)[2](completionCopy, 0, v23);
    }
  }

  objc_autoreleasePoolPop(v10);
}

void __58__SNNMILProgram_loadContentsOfURL_withContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [v11 URLByAppendingPathComponent:@"model.mil"];
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v6 path];
    v9 = [v7 fileExistsAtPath:v8];

    if (v9)
    {
      [SNNMILProgram loadContentsOfURL:v6 withContext:*(a1 + 32) completion:*(a1 + 40)];
    }

    else
    {
      v10 = [SNNError errorWithCode:-8 description:@"Model package must be exported as a MLProgram."];
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (SNNMILProgram)initWithProgram:()unique_ptr<MIL:(std:(id)l :default_delete<MIL::IRProgram>>)a3 :IRProgram sourceFilePath:
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = SNNMILProgram;
  v7 = [(SNNMILProgram *)&v10 init];
  std::shared_ptr<MIL::IRProgram>::operator=[abi:ne200100]<MIL::IRProgram,std::default_delete<MIL::IRProgram>,0>(&v7->_program.__ptr_, a3.var0);
  milFilePath = v7->_milFilePath;
  v7->_milFilePath = lCopy;

  return v7;
}

- (SNNMILProgram)initWithProgram:()unique_ptr<MIL:(std::default_delete<MIL::IRProgram>>)l :IRProgram
{
  v3 = *l.var0;
  *l.var0 = 0;
  v7 = v3;
  v4 = [(SNNMILProgram *)self initWithProgram:&v7 sourceFilePath:0];
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return v4;
}

- (shared_ptr<MIL::IRProgram>)milProgram
{
  cntrl = self->_program.__cntrl_;
  *v2 = self->_program.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (BOOL)isReferencingBlobFile
{
  v43 = *MEMORY[0x277D85DE8];
  if (self->_milFilePath)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [(SNNMILProgram *)self functionNames];
    v3 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v3)
    {
      v21 = v3;
      v22 = *v37;
      do
      {
        v24 = 0;
        while (2)
        {
          if (*v37 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v36 + 1) + 8 * v24);
          v26 = [(SNNMILProgram *)self functionWithName:?];
          for (i = 0; [v26 operationCount] > i; ++i)
          {
            v4 = [v26 operationAtIndex:?];
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            attributes = [v4 attributes];
            v6 = [attributes countByEnumeratingWithState:&v32 objects:v41 count:16];
            if (v6)
            {
              v7 = *v33;
LABEL_11:
              v8 = 0;
              while (1)
              {
                if (*v33 != v7)
                {
                  objc_enumerationMutation(attributes);
                }

                v9 = *(*(&v32 + 1) + 8 * v8);
                value = [v9 value];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  goto LABEL_29;
                }

                if (v6 == ++v8)
                {
                  v6 = [attributes countByEnumeratingWithState:&v32 objects:v41 count:16];
                  if (v6)
                  {
                    goto LABEL_11;
                  }

                  break;
                }
              }
            }

            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            attributes = [v4 inputs];
            v12 = [attributes countByEnumeratingWithState:&v28 objects:v40 count:16];
            if (v12)
            {
              v13 = *v29;
LABEL_19:
              v14 = 0;
              while (1)
              {
                if (*v29 != v13)
                {
                  objc_enumerationMutation(attributes);
                }

                v15 = *(*(&v28 + 1) + 8 * v14);
                value2 = [v15 value];
                objc_opt_class();
                v17 = objc_opt_isKindOfClass();

                if (v17)
                {
                  break;
                }

                if (v12 == ++v14)
                {
                  v12 = [attributes countByEnumeratingWithState:&v28 objects:v40 count:16];
                  if (v12)
                  {
                    goto LABEL_19;
                  }

                  goto LABEL_25;
                }
              }

LABEL_29:

              v18 = 1;
              goto LABEL_32;
            }

LABEL_25:
          }

          if (++v24 != v21)
          {
            continue;
          }

          break;
        }

        v18 = 0;
        v21 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v21);
    }

    else
    {
      v18 = 0;
    }

LABEL_32:
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (NSArray)functionNames
{
  v3 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = *((*(*self->_program.__ptr_ + 72))(self->_program.__ptr_) + 16); i; i = *i)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCXXString:i + 2];
    [v3 addObject:v5];
  }

  return v3;
}

- (id)functionWithName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy)
  {
    [nameCopy cxxString];
  }

  else
  {
    memset(&__p, 0, sizeof(__p));
  }

  v6 = *((*(*self->_program.__ptr_ + 72))(self->_program.__ptr_) + 16);
  if (v6)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    while (1)
    {
      v9 = *(v6 + 39);
      v10 = v9;
      if (v9 < 0)
      {
        v9 = v6[3];
      }

      if (size == v9)
      {
        v11 = v10 >= 0 ? (v6 + 2) : v6[2];
        if (!memcmp(p_p, v11, size))
        {
          break;
        }
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_19;
      }
    }

    v14 = [SNNMILFunction alloc];
    v15 = v6[6];
    v17 = v6[5];
    v18 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v16 = __p;
    }

    v12 = [(SNNMILFunction *)v14 initWithFunction:&v17 name:&v16];
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  else
  {
LABEL_19:
    v12 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v12;
}

- (void)writeToFile:(id)file
{
  fileCopy = file;
  MIL::Text::SerializerOptions::Make(&v10, fileCopy);
  (*(*v10 + 88))(v10, 1);
  v5 = v10;
  if (fileCopy)
  {
    [(MIL::Text::SerializerOptions *)fileCopy cxxString];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v9 = 0;
  }

  (*(*v5 + 24))(v5, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  ptr = self->_program.__ptr_;
  MIL::Text::SerializeToFile();
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }
}

- (id)serializeToProtobufWithError:(id *)error
{
  MIL::Opsets::Common::CreateMILContext(&v14, self);
  if (v14)
  {
    operator new();
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  v12 = 0;
  v13 = 0;
  ptr = self->_program.__ptr_;
  MIL::Proto::SerializeProgram();
  std::stringbuf::str();
  v5 = objc_alloc(MEMORY[0x277CBEA90]);
  if ((v11 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = [v5 initWithBytes:v6 length:v7];
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = *MEMORY[0x277D82828];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
  v15 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  MEMORY[0x25F878BF0](&v18);

  return v8;
}

- (id)description
{
  (*(*self->_program.__ptr_ + 16))(__p);
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCXXString:__p];
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end