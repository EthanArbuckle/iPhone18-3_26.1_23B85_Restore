@interface ImsNetworkPath
- (ImsNetworkPath)initWithInterface:()basic_string<char delegate:()std:(std::allocator<char>> *)a3 :char_traits<char>;
- (basic_string<char,)ifaceName;
- (id).cxx_construct;
- (void)dealloc;
- (void)evaluateInterface;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation ImsNetworkPath

- (basic_string<char,)ifaceName
{
  if (result[2].__rep_.__s.__data_[7] < 0)
  {
    std::string::__init_copy_ctor_external(retstr, result[1].__rep_.__l.__size_, *(&result[1].__rep_.__l + 2));
  }

  else
  {
    *retstr = *(result + 32);
  }

  return result;
}

- (ImsNetworkPath)initWithInterface:()basic_string<char delegate:()std:(std::allocator<char>> *)a3 :char_traits<char>
{
  v4 = v3;
  v13.receiver = self;
  v13.super_class = ImsNetworkPath;
  v6 = [(ImsNetworkPath *)&v13 init];
  v7 = v6;
  if (v6)
  {
    pathEvaluator = v6->_pathEvaluator;
    v6->_pathEvaluator = 0;

    std::string::operator=(&v7->_ifaceName, a3);
    v10 = *v4;
    v9 = v4[1];
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 2, 1uLL, memory_order_relaxed);
    }

    cntrl = v7->_delegate.__cntrl_;
    v7->_delegate.__ptr_ = v10;
    v7->_delegate.__cntrl_ = v9;
    if (cntrl)
    {
      std::__shared_weak_count::__release_weak(cntrl);
    }

    v7->_observingPath = 0;
  }

  return v7;
}

- (void)evaluateInterface
{
  if (!self->_pathEvaluator)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6977E40]);
    v4 = objc_alloc(MEMORY[0x1E6977E30]);
    p_ifaceName = &self->_ifaceName;
    if (*(&self->_ifaceName.__rep_.__l + 23) < 0)
    {
      p_ifaceName = p_ifaceName->__rep_.__l.__data_;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_ifaceName];
    v7 = [v4 initWithInterfaceName:v6];
    [v3 setRequiredInterface:v7];

    v8 = [objc_alloc(MEMORY[0x1E6977E50]) initWithEndpoint:0 parameters:v3];
    pathEvaluator = self->_pathEvaluator;
    self->_pathEvaluator = v8;
  }

  std::string::basic_string[abi:ne200100]<0>(v21, "net");
  v17[0] = 0;
  v20 = 0;
  v10 = ims::debug(v21, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Adding observer for path on interface ", 38);
  *(v10 + 17) = 0;
  (*(*v10 + 32))(v10, &self->_ifaceName);
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    operator delete(__p);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  v11 = [(NWPathEvaluator *)self->_pathEvaluator path];
  v12 = [v11 status];

  if (v12 == 1)
  {
    cntrl = self->_delegate.__cntrl_;
    if (cntrl)
    {
      v14 = std::__shared_weak_count::lock(cntrl);
      if (v14)
      {
        v15 = v14;
        ptr = self->_delegate.__ptr_;
        if (ptr)
        {
          (**ptr)(ptr);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }
  }

  else
  {
    self->_observingPath = 1;
    [(NWPathEvaluator *)self->_pathEvaluator addObserver:self forKeyPath:@"path" options:5 context:0];
  }
}

- (void)dealloc
{
  pathEvaluator = self->_pathEvaluator;
  if (pathEvaluator && self->_observingPath)
  {
    [(NWPathEvaluator *)pathEvaluator removeObserver:self forKeyPath:@"path"];
    self->_observingPath = 0;
    pathEvaluator = self->_pathEvaluator;
  }

  self->_pathEvaluator = 0;

  v4.receiver = self;
  v4.super_class = ImsNetworkPath;
  [(ImsNetworkPath *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v18 = a3;
  v9 = a4;
  v10 = a5;
  cntrl = self->_delegate.__cntrl_;
  if (cntrl)
  {
    v12 = std::__shared_weak_count::lock(cntrl);
    if (v12)
    {
      v13 = v12;
      pathEvaluator = self->_pathEvaluator;
      if (pathEvaluator)
      {
        ptr = self->_delegate.__ptr_;
        if (ptr)
        {
          v16 = [(NWPathEvaluator *)pathEvaluator path];
          v17 = [v16 status];

          if (v17 == 1)
          {
            (**ptr)(ptr);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  return self;
}

@end