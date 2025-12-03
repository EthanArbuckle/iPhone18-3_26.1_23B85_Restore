@interface _EARNgramLmModel2
+ (void)initialize;
- (BOOL)writeToDirectory:(id)directory;
- (NSString)arpaFileName;
- (id).cxx_construct;
- (id)_initWithModel:(shared_ptr<quasar::NgramLmModel2>)model;
- (shared_ptr<quasar::NgramLmModel2>)ngramModel;
- (void)setProtectionClass:(id)class;
@end

@implementation _EARNgramLmModel2

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (id)_initWithModel:(shared_ptr<quasar::NgramLmModel2>)model
{
  ptr = model.__ptr_;
  v11.receiver = self;
  v11.super_class = _EARNgramLmModel2;
  v4 = [(_EARNgramLmModel2 *)&v11 init:model.__ptr_];
  v5 = v4;
  if (v4)
  {
    p_ngramModel = &v4->_ngramModel;
    v8 = *ptr;
    v7 = *(ptr + 1);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_ngramModel.__cntrl_;
    p_ngramModel->__ptr_ = v8;
    v5->_ngramModel.__cntrl_ = v7;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v5;
}

- (BOOL)writeToDirectory:(id)directory
{
  __p[3] = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  ptr = self->_ngramModel.__ptr_;
  if (directoryCopy)
  {
    [directoryCopy ear_toString];
  }

  else
  {
    memset(__p, 0, 24);
  }

  quasar::LmModel2::write(ptr + 656, __p);
}

- (void)setProtectionClass:(id)class
{
  v11 = *MEMORY[0x1E69E9840];
  classCopy = class;
  v5 = classCopy;
  if (*MEMORY[0x1E696A378] == classCopy)
  {
    ptr = self->_ngramModel.__ptr_;
    v8 = 1;
LABEL_12:
    *(ptr + 198) = v8;
    goto LABEL_13;
  }

  if (*MEMORY[0x1E696A380] == classCopy)
  {
    ptr = self->_ngramModel.__ptr_;
    v8 = 2;
    goto LABEL_12;
  }

  if (*MEMORY[0x1E696A388] == classCopy)
  {
    ptr = self->_ngramModel.__ptr_;
    v8 = 3;
    goto LABEL_12;
  }

  if (*MEMORY[0x1E696A3A8] == classCopy)
  {
    ptr = self->_ngramModel.__ptr_;
    v8 = 4;
    goto LABEL_12;
  }

  v6 = EarLmLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1B501D000, v6, OS_LOG_TYPE_DEFAULT, "Unknown protection class: %@", &v9, 0xCu);
  }

LABEL_13:
}

- (NSString)arpaFileName
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  ptr = self->_ngramModel.__ptr_;
  std::string::basic_string[abi:ne200100]<0>(v7, "");
  quasar::NgramLmModel2::getArpaFileName(ptr, v7, __p);
  if (v10 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [v2 stringWithUTF8String:v4];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  return v5;
}

- (shared_ptr<quasar::NgramLmModel2>)ngramModel
{
  cntrl = self->_ngramModel.__cntrl_;
  *v2 = self->_ngramModel.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

@end