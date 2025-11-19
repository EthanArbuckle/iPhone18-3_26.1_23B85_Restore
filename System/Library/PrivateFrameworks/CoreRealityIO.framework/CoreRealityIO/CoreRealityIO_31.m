void sub_247693820(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyReplacingPrefix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix((a1 + 16), (a2 + 16), (a3 + 16));
    v3 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
    return v3;
  }

  else if (a1)
  {
    v5 = (a1 + 16);

    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v5);
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_2476938E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCopyCommonPrefix(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetCommonPrefix(&v4, (a1 + 16), (a2 + 16));
    v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v4);
    return v2;
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247693978(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyMakingAbsolutePath(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(&v4, (a1 + 16), (a2 + 16));
    v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v4);
    return v2;
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247693A0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyMakingRelativePath(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeRelativePath(&v4, (a1 + 16), (a2 + 16));
    v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v4);
    return v2;
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247693AA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrSdfPathCreateCopyRemovingCommonSuffix(uint64_t a1, uint64_t a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1 && a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::RemoveCommonSuffix((a1 + 16), (a2 + 16));
    v5 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(&value);
    v13 = v5;
    v10 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(&v12);
    CFArrayAppendValue(Mutable, v5);
    CFArrayAppendValue(Mutable, v10);
    realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&v10);
    realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&v13);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&value);
  }

  else
  {
    if (a1)
    {
      EmptyPath = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>((a1 + 16));
    }

    else
    {
      EmptyPath = RIOPxrSdfPathCreateEmptyPath();
    }

    value = EmptyPath;
    if (a2)
    {
      v7 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>((a2 + 16));
    }

    else
    {
      v7 = RIOPxrSdfPathCreateEmptyPath();
    }

    v8 = v7;
    v13 = v7;
    CFArrayAppendValue(Mutable, value);
    CFArrayAppendValue(Mutable, v8);
    realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&v13);
    realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&value);
  }

  return Mutable;
}

void sub_247693C04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(va1);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathIsValidPathString(char *__s)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  IsValidPathString = pxrInternal__aapl__pxrReserved__::SdfPath::IsValidPathString();
  if (v4 < 0)
  {
    operator delete(__p);
  }

  return IsValidPathString;
}

void sub_247693CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfPathIsValidIdentifier(char *__s)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  IsValidIdentifier = pxrInternal__aapl__pxrReserved__::SdfPath::IsValidIdentifier();
  if (v4 < 0)
  {
    operator delete(__p);
  }

  return IsValidIdentifier;
}

void sub_247693D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfPathIsValidNamespacedIdentifier(char *__s)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  IsValidNamespacedIdentifier = pxrInternal__aapl__pxrReserved__::SdfPath::IsValidNamespacedIdentifier();
  if (v4 < 0)
  {
    operator delete(__p);
  }

  return IsValidNamespacedIdentifier;
}

void sub_247693D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *RIOPxrSdfPathArrayDoTask(const __CFArray *a1, uint64_t a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count)
    {
      v6 = Count;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      if (Count >= 1)
      {
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v9 = ValueAtIndex;
          v10 = v17;
          if (v17 >= v18)
          {
            v11 = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>(&v16, ValueAtIndex + 4);
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v17, ValueAtIndex + 4);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v10 + 1, v9 + 5);
            v11 = v10 + 2;
          }

          v17 = v11;
        }
      }

      v19 = &v16;
      v12 = *(a2 + 24);
      v20 = &v19;
      if (!v12)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v12 + 48))(v12, &v20);
      v13 = *v19;
      v14 = v19[1];
      while (v13 != v14)
      {
        v20 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v13);
        CFArrayAppendValue(Mutable, v20);
        realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&v20);
        v13 += 2;
      }

      v20 = &v16;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v20);
    }
  }

  return Mutable;
}

void sub_247693F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrSdfPathArrayCreateCopyConciseRelativePaths(const __CFArray *a1)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_28595AF00;
  v4[3] = v4;
  v1 = RIOPxrSdfPathArrayDoTask(a1, v4);
  std::__function::__value_func<void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::~__value_func[abi:ne200100](v4);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_247693FD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrSdfPathArrayCreateCopyRemovingDescendentPaths(const __CFArray *a1)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_28595AF90;
  v4[3] = v4;
  v1 = RIOPxrSdfPathArrayDoTask(a1, v4);
  std::__function::__value_func<void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::~__value_func[abi:ne200100](v4);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_247694070(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrSdfPathArrayCreateCopyRemovingAncestorPaths(const __CFArray *a1)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_28595B010;
  v4[3] = v4;
  v1 = RIOPxrSdfPathArrayDoTask(a1, v4);
  std::__function::__value_func<void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::~__value_func[abi:ne200100](v4);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_247694110(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t _RIOPxrSdfPathCFFinalize(const void *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 16);
}

void std::__function::__func<RIOPxrSdfPathArrayCreateCopyConciseRelativePaths::$_0,std::allocator<RIOPxrSdfPathArrayCreateCopyConciseRelativePaths::$_0>,void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = **a2;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetConciseRelativePaths();
  if (*v2 != &v4)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__assign_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(*v2, v4, v5, (v5 - v4) >> 3);
  }

  v6 = &v4;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void sub_24769431C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RIOPxrSdfPathArrayCreateCopyConciseRelativePaths::$_0,std::allocator<RIOPxrSdfPathArrayCreateCopyConciseRelativePaths::$_0>,void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<RIOPxrSdfPathArrayCreateCopyRemovingDescendentPaths::$_0,std::allocator<RIOPxrSdfPathArrayCreateCopyRemovingDescendentPaths::$_0>,void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RIOPxrSdfPathArrayCreateCopyRemovingAncestorPaths::$_0,std::allocator<RIOPxrSdfPathArrayCreateCopyRemovingAncestorPaths::$_0>,void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::unique_ptr<realityio::BuilderIsSatisfiedTracker>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::recursive_mutex::~recursive_mutex((v2 + 96));
    std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::~__hash_table(v2 + 56);
    std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::~__hash_table(v2 + 16);
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x24C1A91B0](v2, 0x10E0C4020EEA917);
  }

  return a1;
}

BOOL realityio::BuilderIsSatisfiedTracker::isBuilderWaiting(uint64_t a1, unint64_t *a2)
{
  std::recursive_mutex::lock((a1 + 96));
  v4 = std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::find<std::shared_ptr<realityio::Builder>>((a1 + 16), *a2) != 0;
  std::recursive_mutex::unlock((a1 + 96));
  return v4;
}

BOOL realityio::BuilderIsSatisfiedTracker::areAllBuildersFinishedRunning(realityio::BuilderIsSatisfiedTracker *this)
{
  std::recursive_mutex::lock((this + 96));
  if (*(this + 5))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 10) == 0;
  }

  std::recursive_mutex::unlock((this + 96));
  return v2;
}

void sub_247694ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  std::unique_ptr<realityio::BuilderIsSatisfiedTracker>::~unique_ptr[abi:ne200100](va);
  std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

void realityio::BuilderExecutor::onBuildersReadyToRunInDeterministicOrder(uint64_t *a1, uint64_t a2)
{
  if (realityio::BuilderIsSatisfiedTracker::areAllBuildersFinishedRunning(a1[21]))
  {
    dispatch_semaphore_signal(a1[3]);
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  v4 = *(a2 + 24);
  if (v4)
  {
    if (!(v4 >> 60))
    {
      v32 = &v28;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(&v28, v4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  for (i = (a2 + 16); ; std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](&v28, i + 1))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  v6 = 126 - 2 * __clz((v29 - v28) >> 4);
  if (v29 == v28)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,realityio::BuilderExecutor::onBuildersReadyToRunInDeterministicOrder(std::unordered_set<std::shared_ptr<realityio::Builder>> const&)::$_0 &,std::shared_ptr<realityio::Builder>*,false>(v28, v29, v7, 1);
  v8 = v28;
  for (j = v29; v8 != j; v8 += 16)
  {
    if ((*(**v8 + 56))())
    {
      v10 = a1[1];
      if (!v10 || (v11 = *a1, (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = a1[19];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3321888768;
      block[2] = ___ZN9realityio15BuilderExecutor19onBuilderReadyToRunERKNSt3__110shared_ptrINS_7BuilderEEE_block_invoke;
      block[3] = &__block_descriptor_64_ea8_32c97_ZTSKZN9realityio15BuilderExecutor19onBuilderReadyToRunERKNSt3__110shared_ptrINS_7BuilderEEEE3__0_e5_v8__0l;
      v15 = *v8;
      v16 = *(v8 + 1);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v32 = v15;
        v33 = v16;
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v32 = v15;
        v33 = 0;
      }

      v34 = v11;
      v35 = v13;
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      dispatch_async(v14, block);
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      std::mutex::lock((a1 + 10));
      v17 = *(a1 + 5);
      v18 = a1[6];
      v19 = a1[5];
      if (v18 == v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = 32 * (v18 - v19) - 1;
      }

      v22 = a1[8];
      v21 = a1[9];
      v23 = v21 + v22;
      if (v20 == v21 + v22)
      {
        if (v22 < 0x100)
        {
          v24 = a1[7];
          v25 = a1[4];
          if (v18 - v19 < (v24 - v25))
          {
            operator new();
          }

          if (v24 == v25)
          {
            v26 = 1;
          }

          else
          {
            v26 = (v24 - v25) >> 2;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeConnectable *>>(v26);
        }

        a1[8] = v22 - 256;
        v36 = *v19;
        a1[5] = (v19 + 8);
        std::__split_buffer<realityio::mtlx::NeoShadeConnectable *>::emplace_back<realityio::mtlx::NeoShadeConnectable *&>(a1 + 4, &v36);
        v19 = a1[5];
        v21 = a1[9];
        v23 = v21 + a1[8];
      }

      v27 = *v8;
      *(*&v19[(v23 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v23) = *v8;
      if (*(&v27 + 1))
      {
        atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
        v21 = a1[9];
      }

      a1[9] = v21 + 1;
      dispatch_semaphore_signal(a1[3]);
      std::mutex::unlock((a1 + 10));
    }
  }

  block[0] = &v28;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](block);
}

void sub_247695790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *a15)
{
  operator delete(v17);
  if (v16)
  {
    operator delete(v16);
  }

  std::mutex::unlock((v15 + 80));
  a15 = &a12;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

id realityio::BuilderExecutor::globalPendingConcurrentWorkSemaphore(realityio::BuilderExecutor *this)
{
  if ((atomic_load_explicit(&qword_27EE53578, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53578))
  {
    qword_27EE53570 = dispatch_semaphore_create(128);
    __cxa_guard_release(&qword_27EE53578);
  }

  v2 = qword_27EE53570;

  return v2;
}

void realityio::BuilderExecutor::runBuilder(uint64_t a1, unint64_t *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v33 = *(realityio::logObjects(a1) + 56);
  v4 = *(*(a1 + 176) + 296);
  if (*(a1 + 16) == 1)
  {
    memset(v41, 0, sizeof(v41));
    v42 = 1065353216;
    realityio::BuilderDependencyDAG::getDirectlyDependentBuilders(*(a1 + 160), a2, v41);
    v5 = *&v41[16];
    if (*&v41[16])
    {
      do
      {
        v6 = ((*(*a2 + 160) >> 2) + 2654435769 + (*(*a2 + 160) << 6) + *(v5[2] + 160)) ^ *(*a2 + 160);
        v7 = (v4 + 2654435769 + (v6 >> 2) + (v6 << 6)) ^ v6;
        v8 = v33;
        v9 = v8;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
        {
          v10 = *(*a2 + 160);
          v11 = *(v5[2] + 160);
          *buf = 134218496;
          *&buf[4] = v4;
          *&buf[12] = 2048;
          *&buf[14] = v10;
          *&buf[22] = 2048;
          *&buf[24] = v11;
          _os_signpost_emit_with_name_impl(&dword_247485000, v9, OS_SIGNPOST_EVENT, v7, "graph-edge", "builder dependency satisfied: update = %llu - providing builder = %llu - dependent builder = %llu", buf, 0x20u);
        }

        v5 = *v5;
      }

      while (v5);
    }

    std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::~__hash_table(v41);
  }

  v12 = *a2;
  v13 = (v4 + 2654435769 + (*(*a2 + 160) >> 2) + (*(*a2 + 160) << 6)) ^ *(*a2 + 160);
  if (*(a1 + 17) == 1)
  {
    v14 = v33;
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v16 = *(*a2 + 160);
      *v41 = 134218240;
      *&v41[4] = v16;
      *&v41[12] = 2048;
      *&v41[14] = v4;
      _os_signpost_emit_with_name_impl(&dword_247485000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "builder-run", "builder %llu update %llu", v41, 0x16u);
    }

    v12 = *a2;
  }

  v17 = a2[1];
  v18 = v12;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v18 = *a2;
  }

  v19 = *(a1 + 184);
  v20 = *(a1 + 232);
  *v41 = *(a1 + 176);
  *&v41[8] = a1 + 192;
  *&v41[16] = v12;
  *&v41[24] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v42, (v18 + 8));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v43, (v18 + 12));
    v44 = v19;
    v45 = v20;
    std::__shared_weak_count::__release_weak(v17);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v42, (v18 + 8));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v43, (v18 + 12));
    v44 = v19;
    v45 = v20;
  }

  realityio::Builder::clearAddedComponentAndAssetArrays(*a2);
  (*(**a2 + 64))(*a2, v41);
  if (*(a1 + 17) == 1)
  {
    v21 = v33;
    v22 = v21;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_247485000, v22, OS_SIGNPOST_INTERVAL_END, v13, "builder-run", "", buf, 2u);
    }
  }

  memset(v34, 0, sizeof(v34));
  v35 = 1065353216;
  v23 = *(a1 + 168);
  std::recursive_mutex::lock((v23 + 96));
  std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__erase_unique<std::shared_ptr<realityio::Builder>>((v23 + 56), a2);
  std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::clear(v34);
  v36 = 0u;
  v37 = 0u;
  v38 = 1065353216;
  realityio::BuilderDependencyDAG::getDirectlyDependentBuilders(*(v23 + 160), a2, &v36);
  if (*v23 && realityio::BuilderIsSatisfiedTracker::isBuilderWaiting(v23, v23))
  {
    std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__emplace_unique_key_args<std::shared_ptr<realityio::Builder>,std::shared_ptr<realityio::Builder> const&>(&v36, v23);
  }

  for (i = v37; i; i = *i)
  {
    if (realityio::BuilderIsSatisfiedTracker::isBuilderWaiting(v23, i + 2))
    {
      std::recursive_mutex::lock((v23 + 96));
      (*(**(i + 2) + 24))(buf);
      v25 = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
      if ((buf[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v25)
      {
        if (!*(v23 + 80))
        {
          memset(buf, 0, 24);
          memset(v39, 0, 24);
          realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>>::insert(v39, i + 1);
          realityio::BuilderDependencyDAG::findDownstreamDependencies(*(v23 + 160), v39, buf);
          v26 = *(v23 + 32);
          if (v26)
          {
            while (1)
            {
              v27 = v26[2];
              if (v27 != *(i + 2))
              {
                v28 = *buf;
                if (*buf != *&buf[8])
                {
                  v28 = *buf;
                  while (*v28 != v27)
                  {
                    v28 += 2;
                    if (v28 == *&buf[8])
                    {
                      goto LABEL_50;
                    }
                  }
                }

                if (v28 == *&buf[8])
                {
                  break;
                }
              }

              v26 = *v26;
              if (!v26)
              {
                goto LABEL_41;
              }
            }

LABEL_50:
            v29 = 0;
          }

          else
          {
LABEL_41:
            v29 = 1;
          }

          v40 = v39;
          std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v40);
          v39[0] = buf;
          std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](v39);
          std::recursive_mutex::unlock((v23 + 96));
          if ((v29 & 1) == 0)
          {
            continue;
          }

          goto LABEL_52;
        }
      }

      else
      {
        memset(buf, 0, sizeof(buf));
        v47 = 1065353216;
        realityio::BuilderDependencyDAG::getDirectlyProvidingBuilders(*(v23 + 160), i + 2, buf);
        v30 = *&buf[16];
        if (!*&buf[16])
        {
LABEL_46:
          std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::~__hash_table(buf);
          std::recursive_mutex::unlock((v23 + 96));
LABEL_52:
          std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__emplace_unique_key_args<std::shared_ptr<realityio::Builder>,std::shared_ptr<realityio::Builder> const&>(v34, i + 2);
          std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__erase_unique<std::shared_ptr<realityio::Builder>>((v23 + 16), i + 2);
          std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__emplace_unique_key_args<std::shared_ptr<realityio::Builder>,std::shared_ptr<realityio::Builder> const&>((v23 + 56), i + 2);
          continue;
        }

        while (1)
        {
          std::recursive_mutex::lock((v23 + 96));
          if (realityio::BuilderIsSatisfiedTracker::isBuilderWaiting(v23, v30 + 2))
          {
            break;
          }

          std::recursive_mutex::lock((v23 + 96));
          v31 = std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::find<std::shared_ptr<realityio::Builder>>((v23 + 56), v30[2]);
          std::recursive_mutex::unlock((v23 + 96));
          std::recursive_mutex::unlock((v23 + 96));
          if (v31)
          {
            goto LABEL_48;
          }

          v30 = *v30;
          if (!v30)
          {
            goto LABEL_46;
          }
        }

        std::recursive_mutex::unlock((v23 + 96));
LABEL_48:
        std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::~__hash_table(buf);
      }

      std::recursive_mutex::unlock((v23 + 96));
    }
  }

  std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::~__hash_table(&v36);
  std::recursive_mutex::unlock((v23 + 96));
  realityio::BuilderExecutor::onBuildersReadyToRunInDeterministicOrder(a1, v34);
  if (realityio::BuilderIsSatisfiedTracker::areAllBuildersFinishedRunning(*(a1 + 168)))
  {
    dispatch_semaphore_signal(*(a1 + 24));
  }

  std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::~__hash_table(v34);
  realityio::Inputs::~Inputs(v41);

  v32 = *MEMORY[0x277D85DE8];
}

void sub_247695EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::~__hash_table(&a29);

  _Unwind_Resume(a1);
}

void realityio::Builder::clearAddedComponentAndAssetArrays(realityio::Builder *this)
{
  v2 = (this + 48);
  std::__tree<unsigned int>::destroy(this + 40, *(this + 6));
  *v2 = 0;
  v2[1] = 0;
  *(v2 - 1) = v2;
  v5 = v2 + 2;
  v4 = v2[2];
    ;
  }

  *(this + 9) = v4;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::clear[abi:ne200100](this + 11);
  *(this + 15) = *(this + 14);
}

void ___ZN9realityio15BuilderExecutor19onBuilderReadyToRunERKNSt3__110shared_ptrINS_7BuilderEEE_block_invoke(realityio::BuilderExecutor *a1)
{
  v2 = realityio::BuilderExecutor::globalPendingConcurrentWorkSemaphore(a1);
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);

  v4 = *(a1 + 5);
  v3 = *(a1 + 6);
  v5 = *(v3 + 144);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3321888768;
  v8[2] = ___ZZN9realityio15BuilderExecutor19onBuilderReadyToRunERKNSt3__110shared_ptrINS_7BuilderEEEENK3__0clEv_block_invoke;
  v8[3] = &__block_descriptor_64_ea8_32c110_ZTSKZZN9realityio15BuilderExecutor19onBuilderReadyToRunERKNSt3__110shared_ptrINS_7BuilderEEEENK3__0clEvEUlvE__e5_v8__0l;
  v6 = *(a1 + 4);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(a1 + 6);
  }

  v7 = *(a1 + 7);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8[4] = v6;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v3;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    dispatch_async(v5, v8);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  dispatch_async(v5, v8);
  if (v4)
  {
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

LABEL_10:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void *__copy_helper_block_ea8_32c97_ZTSKZN9realityio15BuilderExecutor19onBuilderReadyToRunERKNSt3__110shared_ptrINS_7BuilderEEEE3__0(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c97_ZTSKZN9realityio15BuilderExecutor19onBuilderReadyToRunERKNSt3__110shared_ptrINS_7BuilderEEEE3__0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::find<std::shared_ptr<realityio::Builder>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::deque<std::shared_ptr<realityio::Builder>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v12 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v3 + (((*(a1 + 40) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v12 = v2;
  }

  *v4 = 0;
  v13 = v12 - v3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v13 = v2 - v3;
    }

    while (v13 > 2);
    v12 = v2;
  }

  if (v13 == 1)
  {
    v14 = 128;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = 256;
  }

  *(a1 + 32) = v14;
LABEL_19:
  if (v3 != v12)
  {
    do
    {
      v15 = *v3++;
      operator delete(v15);
    }

    while (v3 != v12);
    v12 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v12)
  {
    *(a1 + 16) = v2 + ((v12 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ___ZZN9realityio15BuilderExecutor19onBuilderReadyToRunERKNSt3__110shared_ptrINS_7BuilderEEEENK3__0clEv_block_invoke(uint64_t a1)
{
  realityio::BuilderExecutor::runBuilder(*(a1 + 48), (a1 + 32));
  v2 = realityio::BuilderExecutor::globalPendingConcurrentWorkSemaphore(v1);
  dispatch_semaphore_signal(v2);
}

void *__copy_helper_block_ea8_32c110_ZTSKZZN9realityio15BuilderExecutor19onBuilderReadyToRunERKNSt3__110shared_ptrINS_7BuilderEEEENK3__0clEvEUlvE_(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c110_ZTSKZZN9realityio15BuilderExecutor19onBuilderReadyToRunERKNSt3__110shared_ptrINS_7BuilderEEEENK3__0clEvEUlvE_(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) >> 47));
  a2[1] = v5;
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v29 = *a1;
        *a1 = 0;
        if (v29)
        {
          operator delete(v29);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = v5;
    if (v6 <= v5)
    {
      v17 = v5 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & v5;
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v17);
  if (v19)
  {
    v20 = 0;
    do
    {
      v21 = v19;
      v19 = *v19;
      if (!v19)
      {
        break;
      }

      v22 = v19[1];
      if (v16.u32[0] > 1uLL)
      {
        v23 = v19[1];
        if (v22 >= v6)
        {
          v23 = v22 % v6;
        }
      }

      else
      {
        v23 = v22 & (v6 - 1);
      }

      if (v23 != v17)
      {
        break;
      }

      v24 = v22 == v5 && v19[2] == a2[2];
      v25 = v24 != (v20 & 1);
      v26 = v20 & v25;
      v20 |= v25;
    }

    while (v26 != 1);
  }

  else
  {
    v21 = 0;
  }

  v27 = a2[1];
  if (v16.u32[0] > 1uLL)
  {
    if (v27 >= v6)
    {
      v27 %= v6;
    }
  }

  else
  {
    v27 &= v6 - 1;
  }

  if (!v21)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v18[v27] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_57;
    }

    v28 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v28 >= v6)
      {
        v28 %= v6;
      }
    }

    else
    {
      v28 &= v6 - 1;
    }

LABEL_56:
    *(*a1 + 8 * v28) = a2;
    goto LABEL_57;
  }

  *a2 = *v21;
  *v21 = a2;
  if (*a2)
  {
    v28 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v28 >= v6)
      {
        v28 %= v6;
      }
    }

    else
    {
      v28 &= v6 - 1;
    }

    if (v28 != v27)
    {
      goto LABEL_56;
    }
  }

LABEL_57:
  ++*(a1 + 24);
}

void std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__erase_unique<std::shared_ptr<realityio::Builder>>(void *a1, void *a2)
{
  v3 = std::__hash_table<REEntity *,std::hash<REEntity *>,std::equal_to<REEntity *>,std::allocator<REEntity *>>::find<REEntity *>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = *v3;
    v6 = v3[1];
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      if (v6 >= *&v4)
      {
        v6 %= *&v4;
      }
    }

    else
    {
      v6 &= *&v4 - 1;
    }

    v8 = *(*a1 + 8 * v6);
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8 != v3);
    if (v9 == a1 + 2)
    {
      goto LABEL_19;
    }

    v10 = v9[1];
    if (v7.u32[0] > 1uLL)
    {
      if (v10 >= *&v4)
      {
        v10 %= *&v4;
      }
    }

    else
    {
      v10 &= *&v4 - 1;
    }

    if (v10 != v6)
    {
LABEL_19:
      if (v5)
      {
        v11 = *(v5 + 8);
        if (v7.u32[0] > 1uLL)
        {
          v12 = *(v5 + 8);
          if (v11 >= *&v4)
          {
            v12 = v11 % *&v4;
          }
        }

        else
        {
          v12 = v11 & (*&v4 - 1);
        }

        if (v12 == v6)
        {
          goto LABEL_23;
        }
      }

      *(*a1 + 8 * v6) = 0;
      v5 = *v3;
    }

    if (!v5)
    {
LABEL_29:
      *v9 = v5;
      *v3 = 0;
      --a1[3];
      v14 = 1;
      memset(v15, 0, sizeof(v15));
      v13 = a1;
      std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<realityio::Builder>,void *>>>::operator()[abi:ne200100](&v13, v3);
      return;
    }

    v11 = *(v5 + 8);
LABEL_23:
    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v4)
      {
        v11 %= *&v4;
      }
    }

    else
    {
      v11 &= *&v4 - 1;
    }

    if (v11 != v6)
    {
      *(*a1 + 8 * v11) = v9;
      v5 = *v3;
    }

    goto LABEL_29;
  }
}

void std::__shared_ptr_pointer<realityio::BuilderExecutor *,std::shared_ptr<realityio::BuilderExecutor>::__shared_ptr_default_delete<realityio::BuilderExecutor,realityio::BuilderExecutor>,std::allocator<realityio::BuilderExecutor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<realityio::BuilderExecutor *,std::shared_ptr<realityio::BuilderExecutor>::__shared_ptr_default_delete<realityio::BuilderExecutor,realityio::BuilderExecutor>,std::allocator<realityio::BuilderExecutor>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::default_delete<realityio::BuilderExecutor>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::~__hash_table(result + 192);
    std::unique_ptr<realityio::BuilderIsSatisfiedTracker>::~unique_ptr[abi:ne200100]((v1 + 168));

    std::mutex::~mutex((v1 + 80));
    std::deque<std::shared_ptr<realityio::Builder>>::~deque[abi:ne200100](v1 + 32);

    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,realityio::BuilderExecutor::onBuildersReadyToRunInDeterministicOrder(std::unordered_set<std::shared_ptr<realityio::Builder>> const&)::$_0 &,std::shared_ptr<realityio::Builder>*,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v210 = a2 - 1;
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = (a2 - v8) >> 4;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v131 = *a1;
          v132 = *(*a1 + 176);
          v133 = a1[2];
          v134 = *(v133 + 176);
          v135 = *(a2 - 2);
          v136 = *(v135 + 176);
          if (v132 <= v134)
          {
            if (v134 <= v136)
            {
              return;
            }

            a1[2] = v135;
            *(a2 - 2) = v133;
            v194 = a1[3];
            v210 = a1 + 3;
            a1[3] = *(a2 - 1);
            *(a2 - 1) = v194;
            v195 = *a1;
            v196 = a1[2];
            if (*(*a1 + 176) <= *(v196 + 176))
            {
              return;
            }

            *a1 = v196;
            a1[2] = v195;
            v137 = a1 + 1;
          }

          else
          {
            if (v134 <= v136)
            {
              v137 = a1 + 3;
              v206 = a1[3];
              v207 = a1[1];
              *a1 = v133;
              a1[1] = v206;
              a1[2] = v131;
              a1[3] = v207;
              v208 = *(a2 - 2);
              if (v132 <= *(v208 + 176))
              {
                return;
              }

              a1[2] = v208;
            }

            else
            {
              v137 = a1 + 1;
              *a1 = v135;
            }

            *(a2 - 2) = v131;
          }

          v209 = *v137;
          *v137 = *v210;
          *v210 = v209;
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,realityio::BuilderExecutor::onBuildersReadyToRunInDeterministicOrder(std::unordered_set<std::shared_ptr<realityio::Builder>> const&)::$_0 &,std::shared_ptr<realityio::Builder>*,0>(a1, a1 + 2, a1 + 4, a2 - 2);
          return;
        case 5:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,realityio::BuilderExecutor::onBuildersReadyToRunInDeterministicOrder(std::unordered_set<std::shared_ptr<realityio::Builder>> const&)::$_0 &,std::shared_ptr<realityio::Builder>*,0>(a1, a1 + 2, a1 + 4, a1 + 6);
          v116 = a1[6];
          v117 = *(a2 - 2);
          if (*(v116 + 176) > *(v117 + 176))
          {
            a1[6] = v117;
            *(a2 - 2) = v116;
            v118 = a1[7];
            a1[7] = *(a2 - 1);
            *(a2 - 1) = v118;
            v119 = a1[4];
            v120 = a1[6];
            v121 = *(v120 + 176);
            if (*(v119 + 176) > v121)
            {
              v122 = a1[5];
              v123 = a1[7];
              a1[4] = v120;
              a1[5] = v123;
              a1[6] = v119;
              a1[7] = v122;
              v124 = a1[2];
              if (*(v124 + 176) > v121)
              {
                v125 = a1[3];
                a1[2] = v120;
                a1[3] = v123;
                a1[4] = v124;
                a1[5] = v125;
                v126 = *a1;
                if (*(*a1 + 176) > v121)
                {
                  v127 = a1[1];
                  *a1 = v120;
                  a1[1] = v123;
                  a1[2] = v126;
                  a1[3] = v127;
                }
              }
            }
          }

          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v128 = *a1;
        v129 = *(a2 - 2);
        if (*(*a1 + 176) > *(v129 + 176))
        {
          *a1 = v129;
          *(a2 - 2) = v128;
          v130 = a1[1];
          a1[1] = *(a2 - 1);
          *(a2 - 1) = v130;
        }

        return;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return;
      }

      v153 = v10 >> 1;
      v154 = v10 >> 1;
      do
      {
        v155 = v154;
        if (v153 >= v154)
        {
          v156 = (2 * v154) | 1;
          v157 = &a1[2 * v156];
          if (2 * v155 + 2 >= v9)
          {
            v158 = *v157;
          }

          else
          {
            v158 = v157[2];
            if (*(v158 + 176) > *(*v157 + 176))
            {
              v157 += 2;
              v156 = 2 * v155 + 2;
            }

            else
            {
              v158 = *v157;
            }
          }

          v159 = &a1[2 * v155];
          v160 = *v159;
          if (*(*v159 + 176) <= *(v158 + 176))
          {
            v161 = v159[1];
            *v159 = 0;
            v159[1] = 0;
            v162 = *v157;
            do
            {
              v163 = v157;
              v164 = v157[1];
              *v163 = 0;
              v163[1] = 0;
              v165 = v159[1];
              *v159 = v162;
              v159[1] = v164;
              if (v165)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v165);
              }

              if (v153 < v156)
              {
                break;
              }

              v157 = &a1[2 * ((2 * v156) | 1)];
              if (2 * v156 + 2 >= v9)
              {
                v162 = *v157;
                v156 = (2 * v156) | 1;
              }

              else
              {
                v162 = v157[2];
                if (*(v162 + 176) > *(*v157 + 176))
                {
                  v157 += 2;
                  v156 = 2 * v156 + 2;
                }

                else
                {
                  v162 = *v157;
                  v156 = (2 * v156) | 1;
                }
              }

              v159 = v163;
            }

            while (*(v160 + 176) <= *(v162 + 176));
            v166 = v163[1];
            *v163 = v160;
            v163[1] = v161;
            if (v166)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v166);
            }
          }
        }

        v154 = v155 - 1;
      }

      while (v155);
      while (2)
      {
        v167 = 0;
        v168 = a2;
        v170 = *a1;
        v169 = a1[1];
        *a1 = 0;
        a1[1] = 0;
        v171 = a1;
        do
        {
          v172 = &v171[2 * v167];
          v173 = v172 + 2;
          if (2 * v167 + 2 >= v9)
          {
            v174 = *v173;
            v167 = (2 * v167) | 1;
          }

          else
          {
            v176 = v172[4];
            v175 = v172 + 4;
            v174 = v176;
            if (*(v176 + 176) > *(*(v175 - 2) + 176))
            {
              v173 = v175;
              v167 = 2 * v167 + 2;
            }

            else
            {
              v174 = *(v175 - 2);
              v167 = (2 * v167) | 1;
            }
          }

          v177 = v173[1];
          *v173 = 0;
          v173[1] = 0;
          v178 = v171[1];
          *v171 = v174;
          v171[1] = v177;
          if (v178)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v178);
          }

          v171 = v173;
        }

        while (v167 <= ((v9 - 2) >> 1));
        a2 -= 2;
        if (v173 == v168 - 2)
        {
          v193 = v173[1];
          *v173 = v170;
          v173[1] = v169;
          if (!v193)
          {
            goto LABEL_198;
          }
        }

        else
        {
          v179 = *(v168 - 1);
          *a2 = 0;
          *(v168 - 1) = 0;
          v180 = v173[1];
          *v173 = v179;
          if (v180)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v180);
          }

          v181 = *(v168 - 1);
          *(v168 - 2) = v170;
          *(v168 - 1) = v169;
          if (v181)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v181);
          }

          v182 = ((v173 + 2) - a1) >> 4;
          v183 = v182 < 2;
          v184 = v182 - 2;
          if (v183)
          {
            goto LABEL_198;
          }

          v185 = v184 >> 1;
          v186 = &a1[2 * (v184 >> 1)];
          v187 = *v173;
          if (*(*v173 + 176) <= *(*v186 + 176))
          {
            goto LABEL_198;
          }

          v188 = v173[1];
          *v173 = 0;
          v173[1] = 0;
          v189 = *v186;
          do
          {
            v190 = v186;
            v191 = v186[1];
            *v190 = 0;
            v190[1] = 0;
            v192 = v173[1];
            *v173 = v189;
            v173[1] = v191;
            if (v192)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v192);
            }

            if (!v185)
            {
              break;
            }

            v185 = (v185 - 1) >> 1;
            v186 = &a1[2 * v185];
            v189 = *v186;
            v173 = v190;
          }

          while (*(v187 + 176) > *(*v186 + 176));
          v193 = v190[1];
          *v190 = v187;
          v190[1] = v188;
          if (!v193)
          {
LABEL_198:
            v183 = v9-- <= 2;
            if (v183)
            {
              return;
            }

            continue;
          }
        }

        break;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v193);
      goto LABEL_198;
    }

    v11 = &a1[2 * (v9 >> 1)];
    v12 = v11;
    v13 = *(a2 - 2);
    v14 = *(v13 + 176);
    if (v9 >= 0x81)
    {
      v15 = *a1;
      v16 = *(*a1 + 176);
      v17 = *v11;
      v18 = *(*v11 + 176);
      if (v16 <= v18)
      {
        if (v18 > v14)
        {
          *v11 = v13;
          *(a2 - 2) = v17;
          v25 = v11 + 1;
          v26 = v11[1];
          v11[1] = *(a2 - 1);
          *(a2 - 1) = v26;
          v27 = *a1;
          if (*(*a1 + 176) > *(*v11 + 176))
          {
            *a1 = *v11;
            v19 = a1 + 1;
            *v11 = v27;
            goto LABEL_27;
          }
        }
      }

      else
      {
        if (v18 > v14)
        {
          v19 = a1 + 1;
          *a1 = v13;
          goto LABEL_26;
        }

        v19 = v11 + 1;
        v31 = v11[1];
        v32 = a1[1];
        *a1 = v17;
        a1[1] = v31;
        *v11 = v15;
        v11[1] = v32;
        v33 = *(a2 - 2);
        if (v16 > *(v33 + 176))
        {
          *v11 = v33;
LABEL_26:
          *(a2 - 2) = v15;
          v25 = a2 - 1;
LABEL_27:
          v34 = *v19;
          *v19 = *v25;
          *v25 = v34;
        }
      }

      v35 = v11 - 2;
      v36 = *(v11 - 2);
      v37 = a1[2];
      v38 = *(v37 + 176);
      v39 = *(v36 + 176);
      v40 = *(a2 - 4);
      v41 = *(v40 + 176);
      if (v38 <= v39)
      {
        if (v39 > v41)
        {
          *v35 = v40;
          *(a2 - 4) = v36;
          v43 = v11 - 1;
          v44 = *(v11 - 1);
          *(v11 - 1) = *(a2 - 3);
          *(a2 - 3) = v44;
          v45 = a1[2];
          if (*(v45 + 176) > *(*v35 + 176))
          {
            a1[2] = *v35;
            *v35 = v45;
            v42 = a1 + 3;
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (v39 > v41)
        {
          v42 = a1 + 3;
          a1[2] = v40;
          goto LABEL_39;
        }

        v42 = v11 - 1;
        v49 = *(v11 - 1);
        v50 = a1[3];
        a1[2] = v36;
        a1[3] = v49;
        *v35 = v37;
        *(v11 - 1) = v50;
        v51 = *(a2 - 4);
        if (v38 > *(v51 + 176))
        {
          *v35 = v51;
LABEL_39:
          *(a2 - 4) = v37;
          v43 = a2 - 3;
LABEL_40:
          v52 = *v42;
          *v42 = *v43;
          *v43 = v52;
        }
      }

      v55 = v11[2];
      v53 = v11 + 2;
      v54 = v55;
      v56 = a1[4];
      v57 = *(v56 + 176);
      v58 = *(v55 + 176);
      v59 = *(a2 - 6);
      v60 = *(v59 + 176);
      if (v57 <= v58)
      {
        if (v58 > v60)
        {
          *v53 = v59;
          *(a2 - 6) = v54;
          v63 = v53 + 1;
          v62 = v53[1];
          v53[1] = *(a2 - 5);
          *(a2 - 5) = v62;
          v64 = a1[4];
          v54 = *v53;
          if (*(v64 + 176) > *(*v53 + 176))
          {
            a1[4] = v54;
            *v53 = v64;
            v61 = a1 + 5;
            goto LABEL_50;
          }
        }
      }

      else
      {
        if (v58 > v60)
        {
          v61 = a1 + 5;
          a1[4] = v59;
          goto LABEL_49;
        }

        v61 = v53 + 1;
        v65 = v53[1];
        v66 = a1[5];
        a1[4] = v54;
        a1[5] = v65;
        *v53 = v56;
        v53[1] = v66;
        v67 = *(a2 - 6);
        if (v57 <= *(v67 + 176))
        {
          v54 = v56;
        }

        else
        {
          *v53 = v67;
LABEL_49:
          *(a2 - 6) = v56;
          v63 = a2 - 5;
LABEL_50:
          v68 = *v61;
          *v61 = *v63;
          *v63 = v68;
          v54 = *v53;
        }
      }

      v69 = *v35;
      v70 = *(*v35 + 176);
      v71 = *v12;
      v72 = *(*v12 + 176);
      v73 = *(v54 + 176);
      if (v70 <= v72)
      {
        if (v72 > v73)
        {
          v76 = v12 + 1;
          v77 = v12[1];
          *v12 = v54;
          v12[1] = v53[1];
          *v53 = v71;
          v53[1] = v77;
          if (v70 > v73)
          {
            *v35 = v54;
            v74 = v35 + 1;
            *v12 = v69;
            goto LABEL_60;
          }

          v71 = v54;
        }
      }

      else
      {
        if (v72 > v73)
        {
          *v35 = v54;
          v74 = v35 + 1;
          *v53 = v69;
          v75 = v53 + 1;
          goto LABEL_59;
        }

        v78 = v12[1];
        *v12 = v69;
        v79 = v35[1];
        *v35 = v71;
        v35[1] = v78;
        v12[1] = v79;
        if (v70 <= v73)
        {
          v71 = v69;
        }

        else
        {
          *v12 = v54;
          *v53 = v69;
          v75 = v53 + 1;
          v74 = v12 + 1;
LABEL_59:
          v76 = v75;
LABEL_60:
          v80 = *v74;
          *v74 = *v76;
          *v76 = v80;
          v71 = *v12;
        }
      }

      v81 = *a1;
      *a1 = v71;
      v24 = a1 + 1;
      *v12 = v81;
      v30 = v12 + 1;
      goto LABEL_62;
    }

    v20 = *v11;
    v21 = *(*v11 + 176);
    v22 = *a1;
    v23 = *(*a1 + 176);
    if (v21 <= v23)
    {
      if (v23 <= v14)
      {
        goto LABEL_63;
      }

      *a1 = v13;
      *(a2 - 2) = v22;
      v28 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v28;
      v29 = *v12;
      v22 = *a1;
      if (*(*v12 + 176) <= *(*a1 + 176))
      {
        goto LABEL_63;
      }

      *v12 = v22;
      *a1 = v29;
      v24 = v12 + 1;
      v30 = a1 + 1;
      goto LABEL_62;
    }

    if (v23 > v14)
    {
      v24 = v11 + 1;
      *v12 = v13;
      goto LABEL_36;
    }

    v24 = a1 + 1;
    v46 = a1[1];
    v47 = v12[1];
    *v12 = v22;
    v12[1] = v46;
    *a1 = v20;
    a1[1] = v47;
    v48 = *(a2 - 2);
    if (v21 > *(v48 + 176))
    {
      *a1 = v48;
LABEL_36:
      *(a2 - 2) = v20;
      v30 = a2 - 1;
LABEL_62:
      v82 = *v24;
      *v24 = *v30;
      *v30 = v82;
      v22 = *a1;
      goto LABEL_63;
    }

    v22 = v20;
LABEL_63:
    --a3;
    if ((a4 & 1) != 0 || *(v22 + 176) > *(*(a1 - 2) + 176))
    {
      v83 = 0;
      v84 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v85 = *(v22 + 176);
      do
      {
        v86 = a1[v83 + 2];
        v83 += 2;
      }

      while (v85 > *(v86 + 176));
      v87 = &a1[v83];
      v88 = a2;
      if (v83 == 2)
      {
        v88 = a2;
        do
        {
          if (v87 >= v88)
          {
            break;
          }

          v90 = *(v88 - 2);
          v88 -= 2;
        }

        while (v85 <= *(v90 + 176));
      }

      else
      {
        do
        {
          v89 = *(v88 - 2);
          v88 -= 2;
        }

        while (v85 <= *(v89 + 176));
      }

      if (v87 >= v88)
      {
        v8 = &a1[v83];
      }

      else
      {
        v91 = *v88;
        v8 = &a1[v83];
        v92 = v88;
        do
        {
          *v8 = v91;
          *v92 = v86;
          v93 = v8[1];
          v8[1] = v92[1];
          v92[1] = v93;
          do
          {
            v94 = v8[2];
            v8 += 2;
            v86 = v94;
          }

          while (v85 > *(v94 + 176));
          do
          {
            v95 = *(v92 - 2);
            v92 -= 2;
            v91 = v95;
          }

          while (v85 <= *(v95 + 176));
        }

        while (v8 < v92);
      }

      v96 = v8 - 2;
      if (v8 - 2 != a1)
      {
        v97 = *v96;
        *v96 = 0;
        *(v8 - 1) = 0;
        v98 = a1[1];
        *a1 = v97;
        if (v98)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v98);
        }
      }

      v99 = *(v8 - 1);
      *(v8 - 2) = v22;
      *(v8 - 1) = v84;
      if (v99)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v99);
      }

      if (v87 < v88)
      {
        goto LABEL_89;
      }

      v100 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,realityio::BuilderExecutor::onBuildersReadyToRunInDeterministicOrder(std::unordered_set<std::shared_ptr<realityio::Builder>> const&)::$_0 &,std::shared_ptr<realityio::Builder>*>(a1, v8 - 2);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,realityio::BuilderExecutor::onBuildersReadyToRunInDeterministicOrder(std::unordered_set<std::shared_ptr<realityio::Builder>> const&)::$_0 &,std::shared_ptr<realityio::Builder>*>(v8, a2))
      {
        a2 = v8 - 2;
        if (v100)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v100)
      {
LABEL_89:
        std::__introsort<std::_ClassicAlgPolicy,realityio::BuilderExecutor::onBuildersReadyToRunInDeterministicOrder(std::unordered_set<std::shared_ptr<realityio::Builder>> const&)::$_0 &,std::shared_ptr<realityio::Builder>*,false>(a1, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v101 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v102 = *(v22 + 176);
      if (*(*(a2 - 2) + 176) <= v102)
      {
        v104 = a1 + 2;
        do
        {
          v8 = v104;
          if (v104 >= a2)
          {
            break;
          }

          v104 += 2;
        }

        while (*(*v8 + 176) <= v102);
      }

      else
      {
        v8 = a1;
        do
        {
          v103 = v8[2];
          v8 += 2;
        }

        while (*(v103 + 176) <= v102);
      }

      v105 = a2;
      if (v8 < a2)
      {
        v105 = a2;
        do
        {
          v106 = *(v105 - 2);
          v105 -= 2;
        }

        while (*(v106 + 176) > v102);
      }

      if (v8 < v105)
      {
        v107 = *v8;
        v108 = *v105;
        do
        {
          *v8 = v108;
          *v105 = v107;
          v109 = v8[1];
          v8[1] = v105[1];
          v105[1] = v109;
          do
          {
            v110 = v8[2];
            v8 += 2;
            v107 = v110;
          }

          while (*(v110 + 176) <= v102);
          do
          {
            v111 = *(v105 - 2);
            v105 -= 2;
            v108 = v111;
          }

          while (*(v111 + 176) > v102);
        }

        while (v8 < v105);
      }

      v112 = v8 - 2;
      if (v8 - 2 != a1)
      {
        v113 = *v112;
        *v112 = 0;
        *(v8 - 1) = 0;
        v114 = a1[1];
        *a1 = v113;
        if (v114)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v114);
        }
      }

      a4 = 0;
      v115 = *(v8 - 1);
      *(v8 - 2) = v22;
      *(v8 - 1) = v101;
      if (v115)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v115);
        a4 = 0;
      }
    }
  }

  v138 = a1 + 2;
  v140 = a1 == a2 || v138 == a2;
  if (a4)
  {
    if (!v140)
    {
      v141 = 0;
      v142 = a1;
      do
      {
        v143 = v142;
        v142 = v138;
        v144 = *v143;
        v145 = v143[2];
        if (*(*v143 + 176) > *(v145 + 176))
        {
          v146 = v143[3];
          v147 = v141;
          *v142 = 0;
          v142[1] = 0;
          while (1)
          {
            v148 = (a1 + v147);
            v149 = *(a1 + v147 + 8);
            *v148 = 0;
            v148[1] = 0;
            v150 = *(a1 + v147 + 24);
            v148[2] = v144;
            v148[3] = v149;
            if (v150)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v150);
            }

            if (!v147)
            {
              break;
            }

            v144 = *(a1 + v147 - 16);
            v147 -= 16;
            if (*(v144 + 176) <= *(v145 + 176))
            {
              v151 = (a1 + v147 + 16);
              goto LABEL_147;
            }
          }

          v151 = a1;
LABEL_147:
          v152 = v151[1];
          *v151 = v145;
          v151[1] = v146;
          if (v152)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v152);
          }
        }

        v138 = v142 + 2;
        v141 += 16;
      }

      while (v142 + 2 != a2);
    }
  }

  else if (!v140)
  {
    v197 = (a1 + 3);
    do
    {
      v198 = a1;
      a1 = v138;
      v199 = *v198;
      v200 = v198[2];
      if (*(*v198 + 176) > *(v200 + 176))
      {
        v201 = v198[3];
        v202 = v197;
        *a1 = 0;
        a1[1] = 0;
        do
        {
          v203 = *(v202 - 2);
          *(v202 - 3) = 0;
          *(v202 - 2) = 0;
          v204 = *v202;
          *(v202 - 1) = v199;
          *v202 = v203;
          if (v204)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v204);
          }

          v199 = *(v202 - 5);
          v202 -= 2;
        }

        while (*(v199 + 176) > *(v200 + 176));
        v205 = *v202;
        *(v202 - 1) = v200;
        *v202 = v201;
        if (v205)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v205);
        }
      }

      v138 = a1 + 2;
      v197 += 2;
    }

    while (a1 + 2 != a2);
  }
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,realityio::BuilderExecutor::onBuildersReadyToRunInDeterministicOrder(std::unordered_set<std::shared_ptr<realityio::Builder>> const&)::$_0 &,std::shared_ptr<realityio::Builder>*,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *result;
  v5 = *a2;
  v6 = *(*a2 + 176);
  v7 = *a3;
  v8 = *(*a3 + 176);
  if (*(*result + 176) <= v6)
  {
    if (v6 > v8)
    {
      *a2 = v7;
      *a3 = v5;
      v11 = a2 + 1;
      v10 = a2[1];
      a2[1] = a3[1];
      a3[1] = v10;
      v12 = *result;
      if (*(*result + 176) > *(*a2 + 176))
      {
        *result = *a2;
        v9 = result + 1;
        *a2 = v12;
LABEL_10:
        v14 = *v9;
        *v9 = *v11;
        *v11 = v14;
      }
    }
  }

  else
  {
    if (v6 > v8)
    {
      v9 = result + 1;
      *result = v7;
LABEL_9:
      *a3 = v4;
      v11 = a3 + 1;
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v4;
    v9 = a2 + 1;
    v13 = result[1];
    result[1] = a2[1];
    a2[1] = v13;
    v4 = *a2;
    if (*(*a2 + 176) > *(*a3 + 176))
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v15 = *a3;
  if (*(*a3 + 176) > *(*a4 + 176))
  {
    *a3 = *a4;
    *a4 = v15;
    v16 = a3[1];
    a3[1] = a4[1];
    a4[1] = v16;
    v17 = *a2;
    if (*(*a2 + 176) > *(*a3 + 176))
    {
      *a2 = *a3;
      *a3 = v17;
      v18 = a2[1];
      a2[1] = a3[1];
      a3[1] = v18;
      v19 = *result;
      if (*(*result + 176) > *(*a2 + 176))
      {
        *result = *a2;
        *a2 = v19;
        v20 = result[1];
        result[1] = a2[1];
        a2[1] = v20;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,realityio::BuilderExecutor::onBuildersReadyToRunInDeterministicOrder(std::unordered_set<std::shared_ptr<realityio::Builder>> const&)::$_0 &,std::shared_ptr<realityio::Builder>*>(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v20 = *a1;
      v21 = *(*a1 + 176);
      v22 = a1[2];
      v23 = *(v22 + 176);
      v24 = *(a2 - 2);
      v25 = *(v24 + 176);
      if (v21 <= v23)
      {
        if (v23 <= v25)
        {
          return 1;
        }

        a1[2] = v24;
        *(a2 - 2) = v22;
        v36 = a1 + 3;
        v35 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v35;
        v37 = *a1;
        v38 = a1[2];
        if (*(*a1 + 176) <= *(v38 + 176))
        {
          return 1;
        }

        *a1 = v38;
        a1[2] = v37;
        v26 = a1 + 1;
      }

      else
      {
        if (v23 <= v25)
        {
          v26 = a1 + 3;
          v42 = a1[3];
          v43 = a1[1];
          *a1 = v22;
          a1[1] = v42;
          a1[2] = v20;
          a1[3] = v43;
          v44 = *(a2 - 2);
          if (v21 <= *(v44 + 176))
          {
            return 1;
          }

          a1[2] = v44;
        }

        else
        {
          v26 = a1 + 1;
          *a1 = v24;
        }

        *(a2 - 2) = v20;
        v36 = a2 - 1;
      }

      v45 = *v26;
      *v26 = *v36;
      *v36 = v45;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,realityio::BuilderExecutor::onBuildersReadyToRunInDeterministicOrder(std::unordered_set<std::shared_ptr<realityio::Builder>> const&)::$_0 &,std::shared_ptr<realityio::Builder>*,0>(a1, a1 + 2, a1 + 4, a1 + 6);
        v8 = a1[6];
        v9 = *(a2 - 2);
        if (*(v8 + 176) > *(v9 + 176))
        {
          a1[6] = v9;
          *(a2 - 2) = v8;
          v10 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v10;
          v11 = a1[4];
          v12 = a1[6];
          v13 = *(v12 + 176);
          if (*(v11 + 176) > v13)
          {
            v14 = a1[5];
            v15 = a1[7];
            a1[4] = v12;
            a1[5] = v15;
            a1[6] = v11;
            a1[7] = v14;
            v16 = a1[2];
            if (*(v16 + 176) > v13)
            {
              v17 = a1[3];
              a1[2] = v12;
              a1[3] = v15;
              a1[4] = v16;
              a1[5] = v17;
              v18 = *a1;
              if (*(*a1 + 176) > v13)
              {
                v19 = a1[1];
                *a1 = v12;
                a1[1] = v15;
                a1[2] = v18;
                a1[3] = v19;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,realityio::BuilderExecutor::onBuildersReadyToRunInDeterministicOrder(std::unordered_set<std::shared_ptr<realityio::Builder>> const&)::$_0 &,std::shared_ptr<realityio::Builder>*,0>(a1, a1 + 2, a1 + 4, a2 - 2);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *a1;
    v6 = *(a2 - 2);
    if (*(*a1 + 176) > *(v6 + 176))
    {
      *a1 = v6;
      *(a2 - 2) = v5;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v27 = a1 + 4;
  v28 = a1[4];
  v29 = *a1;
  v30 = *(*a1 + 176);
  v31 = a1[2];
  v32 = *(v31 + 176);
  v33 = *(v28 + 176);
  if (v30 > v32)
  {
    if (v32 <= v33)
    {
      v34 = a1 + 3;
      v46 = a1[3];
      v47 = a1[1];
      *a1 = v31;
      a1[1] = v46;
      a1[2] = v29;
      a1[3] = v47;
      if (v30 <= v33)
      {
        goto LABEL_35;
      }

      a1[2] = v28;
    }

    else
    {
      v34 = a1 + 1;
      *a1 = v28;
    }

    a1[4] = v29;
    v40 = a1 + 5;
    goto LABEL_34;
  }

  if (v32 > v33)
  {
    v40 = a1 + 3;
    v39 = a1[3];
    v41 = a1[5];
    a1[2] = v28;
    a1[3] = v41;
    a1[4] = v31;
    a1[5] = v39;
    if (v30 > v33)
    {
      *a1 = v28;
      a1[2] = v29;
      v34 = a1 + 1;
LABEL_34:
      v48 = *v34;
      *v34 = *v40;
      *v40 = v48;
    }
  }

LABEL_35:
  v49 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = *v27;
    v53 = *v49;
    if (*(v52 + 176) > *(*v49 + 176))
    {
      v54 = v49[1];
      v55 = v50;
      *v49 = 0;
      v49[1] = 0;
      while (1)
      {
        v56 = (a1 + v55);
        v57 = *(a1 + v55 + 40);
        v56[4] = 0;
        v56[5] = 0;
        v58 = *(a1 + v55 + 56);
        v56[6] = v52;
        v56[7] = v57;
        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v58);
        }

        if (v55 == -32)
        {
          break;
        }

        v52 = *(a1 + v55 + 16);
        v55 -= 16;
        if (*(v52 + 176) <= *(v53 + 176))
        {
          v59 = (a1 + v55 + 48);
          goto LABEL_45;
        }
      }

      v59 = a1;
LABEL_45:
      v60 = v59[1];
      *v59 = v53;
      v59[1] = v54;
      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v60);
      }

      if (++v51 == 8)
      {
        return v49 + 2 == a2;
      }
    }

    v27 = v49;
    v50 += 16;
    v49 += 2;
    if (v49 == a2)
    {
      return 1;
    }
  }
}

uint64_t realityio::mtlx::MtlxActionPayload::MtlxActionPayload(uint64_t a1, unsigned int *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1065353216;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 200) = objc_opt_new();
  *(a1 + 208) = objc_opt_new();
  v4 = objc_opt_new();
  *(a1 + 232) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 216) = v4;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 1065353216;
  *(a1 + 288) = 0;
  v5 = a2[2];
  (*(**a2 + 16))(&v45);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1, &v45);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 4, &v45 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v45);
  v6 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::TfToken::operator=((a1 + 8), (v6 + 8));
  v8 = *a2;
  v7 = *(a2 + 1);
  MEMORY[0x24C1A5DE0](&v43, "info:id");
  v45 = v8;
  v46 = v7;
  v47 = v43.__r_.__value_.__r.__words[0];
  if ((v43.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    v9 = v43.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8;
    if ((atomic_fetch_add_explicit((v43.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v47 = v9;
    }
  }

  if ((v43.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v43.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (!(*(*v45 + 184))(v45, v46, &v47) || ((*(*v45 + 32))(v45, v46, &v47) & 1) == 0)
  {
    realityio::mtlx::MtlxActionPayload::setError(a1, @"No identification attribute found.", 1u, 0);
    goto LABEL_18;
  }

  v44 = 0;
  if (!(*(*v45 + 112))(v45, v46, &v47, &v44))
  {
    goto LABEL_21;
  }

  v10 = v44 & 0xFFFFFFFFFFFFFFF8;
  if ((v44 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    goto LABEL_21;
  }

  v11 = *(v10 + 39);
  if (v11 < 0)
  {
    v11 = *(v10 + 24);
  }

  if (v11)
  {
    v12 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
    if (!v12)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v12 + 104) ^ v44) > 7)
    {
      v15 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
      if (!v15)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      v16 = *(a1 + 288);
      if ((*(v15 + 112) ^ v44) > 7)
      {
        *(a1 + 288) = v16 | 8;
        Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(a1);
        if (*(Name + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v43, *Name, *(Name + 8));
        }

        else
        {
          v18 = *Name;
          v43.__r_.__value_.__r.__words[2] = *(Name + 16);
          *&v43.__r_.__value_.__l.__data_ = v18;
        }

        v19 = v44 & 0xFFFFFFFFFFFFFFF8;
        if ((v44 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v20 = (v19 + 16);
          if (*(v19 + 39) < 0)
          {
            v20 = *v20;
          }
        }

        else
        {
          v20 = "";
        }

        v21 = MEMORY[0x277D546A8];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:v20];
        if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v43;
        }

        else
        {
          v23 = v43.__r_.__value_.__r.__words[0];
        }

        [MEMORY[0x277CCACA8] stringWithUTF8String:v23];
        v24 = v42 = 0;
        v25 = [v21 nodeWithNodeDefName:v22 name:v24 error:&v42];
        v37 = v42;
        v26 = *(a1 + 24);
        *(a1 + 24) = v25;

        if (*(a1 + 24))
        {
          v27 = *(a2 + 1);
          v38 = *a2;
          v39 = v27;
          realityio::mtlx::MtlxActionPayload::getUSDInputs(&v38);
          v28 = [*(a1 + 24) inputs];
          realityio::mtlx::MtlxActionPayload::addSiblingInputs(a1, &v40, v28);

          v48 = &v40;
          std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](&v48);
          v29 = *(a2 + 1);
          v38 = *a2;
          v39 = v29;
          realityio::mtlx::MtlxActionPayload::getUSDOutputs(&v38);
          v30 = [*(a1 + 24) outputs];
          realityio::mtlx::MtlxActionPayload::addSiblingOutputs(a1, &v40, v30);

          v48 = &v40;
          std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](&v48);
          v31 = *(a2 + 1);
          v40 = *a2;
          v41 = v31;
          realityio::mtlx::MtlxActionPayload::initializeTextureCoords(a1, &v40, &v44);
          v32 = v37;
        }

        else
        {
          v33 = *(a1 + 8) & 0xFFFFFFFFFFFFFFF8;
          if (v33)
          {
            v34 = (v33 + 16);
            if (*(v33 + 39) < 0)
            {
              v34 = *v34;
            }
          }

          else
          {
            v34 = "";
          }

          v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:v34];
          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to import from %@", v35];
          v32 = v37;
          realityio::mtlx::MtlxActionPayload::setError(a1, v36, 2u, v37);
        }

        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }

        goto LABEL_22;
      }

      v13 = v16 | 2;
    }

    else
    {
      v13 = *(a1 + 288) | 1;
    }

    *(a1 + 288) = v13;
  }

  else
  {
LABEL_21:
    realityio::mtlx::MtlxActionPayload::setError(a1, @"Identitfication attribute is not valid.", 1u, 0);
  }

LABEL_22:
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

LABEL_18:
  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1065353216;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 200) = objc_opt_new();
  *(a1 + 208) = objc_opt_new();
  v4 = objc_opt_new();
  *(a1 + 232) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 216) = v4;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 1065353216;
  *(a1 + 288) = 0;
  v5 = a2[2];
  (*(**a2 + 16))(v27);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1, v27);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 4, v27 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v27);
  v6 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::TfToken::operator=((a1 + 8), v6);
  v7 = MEMORY[0x277CCACA8];
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(a1);
  if (*(Name + 23) >= 0)
  {
    v9 = Name;
  }

  else
  {
    v9 = *Name;
  }

  v10 = [v7 stringWithUTF8String:{v9, a1 + 160, a1 + 120, a1 + 80, a1 + 40}];
  v11 = *(a2 + 1);
  v25 = *a2;
  v26 = v11;
  realityio::mtlx::MtlxActionPayload::getUSDInputs(&v25);
  v12 = *(a2 + 1);
  v23 = *a2;
  v24 = v12;
  realityio::mtlx::MtlxActionPayload::getUSDOutputs(&v23);
  v13 = realityio::mtlx::MtlxActionPayload::createSGInputs(a1, v27[0], v27[1]);
  v14 = realityio::mtlx::MtlxActionPayload::createSGOutputs(a1, &v25);
  v15 = [MEMORY[0x277D54690] graphWithName:v10 inputs:v13 outputs:v14];
  realityio::mtlx::MtlxActionPayload::setSGGraph(a1, v15);

  v16 = *(a1 + 16);
  v17 = [v16 argumentsNode];
  v18 = [v17 outputs];
  realityio::mtlx::MtlxActionPayload::addArgumentOutputs(a1, a2, v18);

  v19 = *(a1 + 16);
  v20 = [v19 resultsNode];
  v21 = [v20 inputs];
  realityio::mtlx::MtlxActionPayload::addResultInputs(a1, a2, v21);

  v23 = &v25;
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](&v23);
  v25 = v27;
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](&v25);

  return a1;
}

void sub_24769835C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>>>::~__hash_table(v32);
  std::__tree<std::string>::destroy(v31, *(v28 + 232));

  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::~__hash_table(v30);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::~__hash_table(v29);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::~__hash_table(a11);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::~__hash_table(a12);

  v34 = *(v28 + 8);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(v28);
  _Unwind_Resume(a1);
}

void realityio::mtlx::MtlxActionPayload::setError(pxrInternal__aapl__pxrReserved__::SdfPath *a1, void *a2, unsigned int a3, void *a4)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1)];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error in prim %@: %@", v9, v7];
  v11 = [MEMORY[0x277CBEB38] dictionary];
  [v11 setObject:v9 forKeyedSubscript:@"primPath"];
  [v11 setObject:v7 forKeyedSubscript:@"message"];
  [v11 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCA450]];
  if (v8)
  {
    v15[0] = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v11 setObject:v12 forKeyedSubscript:@"NSMultipleUnderlyingErrorsKey"];
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MaterialX" code:a3 userInfo:v11];
  realityio::mtlx::MtlxActionPayload::setError(a1, v13);

  v14 = *MEMORY[0x277D85DE8];
}

void sub_247698670(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void realityio::mtlx::MtlxActionPayload::addSiblingInputs(pxrInternal__aapl__pxrReserved__::SdfPath *a1, unsigned int **a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!*(a1 + 4))
  {
    v29 = 0;
    v28 = v5;
    v6 = v5;
    v7 = v6;
    v8 = *a2;
    v9 = a2[1];
    if (*a2 == v9)
    {
LABEL_23:
    }

    else
    {
      while (1)
      {
        v10 = *(realityio::logObjects(v6) + 48);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = v8[2];
          (*(**v8 + 24))(&v30);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v30);
          *buf = 136315138;
          *&buf[4] = Text;
          _os_log_impl(&dword_247485000, v10, OS_LOG_TYPE_INFO, "    Adding sibling input %s", buf, 0xCu);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
        }

        v13 = MEMORY[0x277CCACA8];
        v14 = v8[2];
        (*(**v8 + 40))(buf);
        v15 = *buf & 0xFFFFFFFFFFFFFFF8;
        if ((*buf & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v16 = (v15 + 16);
          if (*(v15 + 39) < 0)
          {
            v16 = *v16;
          }
        }

        else
        {
          v16 = "";
        }

        v17 = [v13 stringWithUTF8String:v16];
        v18 = v29;
        v29 = v17;

        if ((buf[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = ___ZN9realityio4mtlx12_GLOBAL__N_19addInputsERKNSt3__16vectorINS0_13NeoShadeInputENS2_9allocatorIS4_EEEEPK7NSArrayIP7SGInputERNS2_13unordered_mapIN32pxrInternal__aapl__pxrReserved__7SdfPathENS0_17MtlxActionPayload11InputRecordENSI_4HashENS2_8equal_toISI_EENS5_INS2_4pairIKSI_SK_EEEEEERU8__strongP8NSString_block_invoke;
        v34[3] = &__block_descriptor_40_e24_B32__0__SGInput_8Q16_B24l;
        v34[4] = &v29;
        v19 = MEMORY[0x24C1A9770](v34);
        v20 = [(realityio *)v7 indexOfObjectPassingTest:v19];
        realityio::mtlx::MtlxActionPayload::Connectable::Connectable<realityio::mtlx::NeoShadeInput>(buf, v8);
        v39 = 0;
        if (v20 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v21 = [(realityio *)v7 objectAtIndex:v20];
        v22 = v39;
        v39 = v21;

        if (!v39)
        {
          break;
        }

        v23 = *v8;
        v31 = v8[2];
        v30 = v23;
        v24 = *(v8 + 2);
        v32 = v24;
        if ((v24 & 7) != 0)
        {
          v25 = (v24 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed) & 1) == 0)
          {
            v32 = v25;
          }
        }

        (*(*v30 + 3))(&v33);
        std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>(a1 + 15, &v33);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v33);
        if ((v32 & 7) != 0)
        {
          atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v38);
        if ((v37 & 7) != 0)
        {
          atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v36 & 7) != 0)
        {
          atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v30 = &buf[8];
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v30);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);

        v8 += 6;
        if (v8 == v9)
        {
          goto LABEL_23;
        }
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v38);
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = &buf[8];
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v30);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);

      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown input name '%@' in '%s'", v29, pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1)];
      realityio::mtlx::MtlxActionPayload::setError(a1, v26, 6u, 0);
    }

    v5 = v28;
  }

  v27 = *MEMORY[0x277D85DE8];
}

void sub_247698AE4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void realityio::mtlx::MtlxActionPayload::addSiblingOutputs(pxrInternal__aapl__pxrReserved__::SdfPath *a1, unsigned int **a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!*(a1 + 4))
  {
    v30 = 0;
    v29 = v5;
    v6 = v5;
    v7 = v6;
    v8 = *a2;
    v9 = a2[1];
    if (v8 == v9)
    {
LABEL_26:
    }

    else
    {
      while (1)
      {
        v10 = *(realityio::logObjects(v6) + 48);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = v8[2];
          (*(**v8 + 24))(&v31);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v31);
          *buf = 136315138;
          *&buf[4] = Text;
          _os_log_impl(&dword_247485000, v10, OS_LOG_TYPE_INFO, "    Adding sibling output %s", buf, 0xCu);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v31);
        }

        v13 = MEMORY[0x277CCACA8];
        v14 = v8[2];
        (*(**v8 + 40))(buf);
        v15 = *buf & 0xFFFFFFFFFFFFFFF8;
        if ((*buf & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v16 = (v15 + 16);
          if (*(v15 + 39) < 0)
          {
            v16 = *v16;
          }
        }

        else
        {
          v16 = "";
        }

        v17 = [v13 stringWithUTF8String:v16];
        v18 = v30;
        v30 = v17;

        if ((buf[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (([(__CFString *)v30 isEqualToString:@"surface"]& 1) != 0 || [(__CFString *)v30 isEqualToString:@"vertex"])
        {
          v19 = v30;
          v30 = @"out";
        }

        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = ___ZN9realityio4mtlx12_GLOBAL__N_110addOutputsERKNSt3__16vectorINS0_14NeoShadeOutputENS2_9allocatorIS4_EEEEPK7NSArrayIP8SGOutputERNS2_13unordered_mapIN32pxrInternal__aapl__pxrReserved__7SdfPathENS0_17MtlxActionPayload12OutputRecordENSI_4HashENS2_8equal_toISI_EENS5_INS2_4pairIKSI_SK_EEEEEERU8__strongP8NSString_block_invoke;
        v35[3] = &__block_descriptor_40_e25_B32__0__SGOutput_8Q16_B24l;
        v35[4] = &v30;
        v20 = MEMORY[0x24C1A9770](v35);
        v21 = [(realityio *)v7 indexOfObjectPassingTest:v20];
        realityio::mtlx::MtlxActionPayload::Connectable::Connectable<realityio::mtlx::NeoShadeOutput>(buf, v8);
        v40 = 0;
        if (v21 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v22 = [(realityio *)v7 objectAtIndex:v21];
        v23 = v40;
        v40 = v22;

        if (!v40)
        {
          break;
        }

        v24 = *v8;
        v32 = v8[2];
        v31 = v24;
        v25 = *(v8 + 2);
        v33 = v25;
        if ((v25 & 7) != 0)
        {
          v26 = (v25 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed) & 1) == 0)
          {
            v33 = v26;
          }
        }

        (*(*v31 + 3))(&v34);
        std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>(a1 + 20, &v34);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
        if ((v33 & 7) != 0)
        {
          atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v39);
        if ((v38 & 7) != 0)
        {
          atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v37 & 7) != 0)
        {
          atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v31 = &buf[8];
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v31);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);

        v8 += 6;
        if (v8 == v9)
        {
          goto LABEL_26;
        }
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v39);
      if ((v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = &buf[8];
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v31);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);

      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown output name '%@' in '%s'", v30, pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1)];
      realityio::mtlx::MtlxActionPayload::setError(a1, v27, 7u, 0);
    }

    v5 = v29;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_24769900C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void realityio::mtlx::MtlxActionPayload::initializeTextureCoords(uint64_t a1, uint64_t a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v5 + 144) ^ *a3) < 8)
  {
    goto LABEL_5;
  }

  v6 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v6 + 160) ^ *a3) <= 7)
  {
LABEL_5:
    v7 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
    if (!v7)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    v8 = *(v7 + 256);
    v59 = v8;
    if ((v8 & 7) != 0)
    {
      v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
      {
        v59 = v9;
      }
    }

    realityio::TexcoordID::TexcoordID(v60, &v59, 0, 0);
    v10 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
    if (!v10)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    v55 = v10 + 256;
    v11 = std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::TfToken const&>,std::tuple<>>((a1 + 248), *(v10 + 256));
    realityio::TexcoordID::operator=((v11 + 3), v60);
    if (v62 < 0)
    {
      operator delete(__p);
    }

    if ((v60[1] & 7) != 0)
    {
      atomic_fetch_add_explicit((v60[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = v59;
LABEL_15:
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    goto LABEL_17;
  }

  v14 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v14)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v14 + 152) ^ *a3) < 8)
  {
    goto LABEL_22;
  }

  v15 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v15)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v15 + 168) ^ *a3) <= 7)
  {
LABEL_22:
    v16 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
    if (!v16)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    v17 = *(v16 + 264);
    v58 = v17;
    if ((v17 & 7) != 0)
    {
      v18 = (v17 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed) & 1) == 0)
      {
        v58 = v18;
      }
    }

    realityio::TexcoordID::TexcoordID(v60, &v58, 1, 0);
    v19 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
    if (!v19)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    v55 = v19 + 264;
    v20 = std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::TfToken const&>,std::tuple<>>((a1 + 248), *(v19 + 264));
    realityio::TexcoordID::operator=((v20 + 3), v60);
    if (v62 < 0)
    {
      operator delete(__p);
    }

    if ((v60[1] & 7) != 0)
    {
      atomic_fetch_add_explicit((v60[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = v58;
    goto LABEL_15;
  }

  v21 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v21)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v21 + 120) ^ *a3) < 8)
  {
    goto LABEL_38;
  }

  v22 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v22)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v22 + 128) ^ *a3) < 8)
  {
    goto LABEL_38;
  }

  v23 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v23)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v23 + 136) ^ *a3) <= 7)
  {
LABEL_38:
    v24 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
    if (!v24)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    v25 = *(a2 + 8);
    v55 = *a2;
    v56 = v25;
    v26 = *(v24 + 64);
    v57 = v26;
    if ((v26 & 7) != 0)
    {
      v27 = (v26 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed) & 1) == 0)
      {
        v57 = v27;
      }
    }

    v64 = 0;
    (*(*v55 + 104))(v55, v56, &v57, v63);
    if ((*(*v55 + 32))(v55, v56, &v57) && (Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v63), pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827C0], v29)))
    {
      v30 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<int>(v63);
    }

    else
    {
      v30 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(&v53, "UV");
    std::to_string(&v52, v30);
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v52;
    }

    else
    {
      v31 = v52.__r_.__value_.__r.__words[0];
    }

    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v52.__r_.__value_.__l.__size_;
    }

    v33 = std::string::append(&v53, v31, size);
    v34 = *&v33->__r_.__value_.__l.__data_;
    __p = v33->__r_.__value_.__r.__words[2];
    *v60 = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C1A5E00](&v54, v60);
    if (SHIBYTE(__p) < 0)
    {
      operator delete(v60[0]);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    v35 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
    if (!v35)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    v36 = *(v35 + 120) ^ *a3;
    v51 = v54;
    if ((v54 & 7) != 0)
    {
      v37 = v54 & 0xFFFFFFFFFFFFFFF8;
      if ((atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v51 = v37;
      }
    }

    realityio::TexcoordID::TexcoordID(v60, &v51, v30, v36 > 7);
    v53.__r_.__value_.__r.__words[0] = &v54;
    v38 = std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::TfToken const&>,std::tuple<>>((a1 + 248), v54);
    realityio::TexcoordID::operator=((v38 + 3), v60);
    if (v62 < 0)
    {
      operator delete(__p);
    }

    if ((v60[1] & 7) != 0)
    {
      atomic_fetch_add_explicit((v60[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v51 & 7) != 0)
    {
      atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v54 & 7) != 0)
    {
      atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v63);
    v12 = v57;
    goto LABEL_15;
  }

  v39 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v39)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v39 + 216) ^ *a3) < 8)
  {
    v40 = 0;
    v41 = 0;
LABEL_84:
    realityio::mtlx::MtlxActionPayload::recordGeomprop(a1, v40, v41);
    goto LABEL_17;
  }

  v42 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v42)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v42 + 224) ^ *a3) < 8)
  {
    goto LABEL_82;
  }

  v43 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v43)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v43 + 232) ^ *a3) < 8)
  {
    goto LABEL_82;
  }

  v44 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v44)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v44 + 240) ^ *a3) < 8)
  {
    goto LABEL_82;
  }

  v45 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v45)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v45 + 248) ^ *a3) < 8)
  {
LABEL_82:
    v40 = 0;
LABEL_83:
    v41 = 1;
    goto LABEL_84;
  }

  v46 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v46)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v46 + 176) ^ *a3) < 8)
  {
    v41 = 0;
    v40 = 1;
    goto LABEL_84;
  }

  v47 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v47)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v47 + 184) ^ *a3) < 8)
  {
    goto LABEL_101;
  }

  v48 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v48)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v48 + 192) ^ *a3) < 8)
  {
    goto LABEL_101;
  }

  v49 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v49)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v49 + 200) ^ *a3) < 8)
  {
    goto LABEL_101;
  }

  v50 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v50)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v50 + 208) ^ *a3) <= 7)
  {
LABEL_101:
    v40 = 1;
    goto LABEL_83;
  }

LABEL_17:
  v13 = *MEMORY[0x277D85DE8];
}

void sub_247699814(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

realityio::mtlx::MtlxActionPayload *realityio::mtlx::MtlxActionPayload::MtlxActionPayload(realityio::mtlx::MtlxActionPayload *this, realityio::mtlx::NeoShadeNodeGraph *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(this + 8) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 24) = 0u;
  *(this + 18) = 1065353216;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 1065353216;
  *(this + 25) = objc_opt_new();
  *(this + 26) = objc_opt_new();
  v4 = objc_opt_new();
  *(this + 29) = 0;
  *(this + 28) = this + 232;
  *(this + 27) = v4;
  *(this + 30) = 0;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 70) = 1065353216;
  *(this + 144) = 0;
  v5 = *(a2 + 2);
  (*(**a2 + 16))(v27);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(this, v27);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(this + 4, v27 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v27);
  v6 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::TfToken::operator=(this + 1, (v6 + 16));
  v7 = MEMORY[0x277CCACA8];
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(this);
  if (*(Name + 23) >= 0)
  {
    v9 = Name;
  }

  else
  {
    v9 = *Name;
  }

  v10 = [v7 stringWithUTF8String:{v9, this + 160, this + 120, this + 80, this + 40}];
  *(this + 144) |= 0x10u;
  v11 = *(a2 + 1);
  v25 = *a2;
  v26 = v11;
  realityio::mtlx::MtlxActionPayload::getUSDInputs(&v25);
  v12 = *(a2 + 1);
  v23 = *a2;
  v24 = v12;
  realityio::mtlx::MtlxActionPayload::getUSDOutputs(&v23);
  v13 = realityio::mtlx::MtlxActionPayload::createSGInputs(this, v27[0], v27[1]);
  v14 = realityio::mtlx::MtlxActionPayload::createSGOutputs(this, &v25);
  v15 = [MEMORY[0x277D54690] graphWithName:v10 inputs:v13 outputs:v14];
  realityio::mtlx::MtlxActionPayload::setSGGraph(this, v15);

  v16 = *(this + 2);
  v17 = [v16 argumentsNode];
  v18 = [v17 outputs];
  realityio::mtlx::MtlxActionPayload::addArgumentOutputs(this, a2, v18);

  v19 = *(this + 2);
  v20 = [v19 resultsNode];
  v21 = [v20 inputs];
  realityio::mtlx::MtlxActionPayload::addResultInputs(this, a2, v21);

  v23 = &v25;
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](&v23);
  v25 = v27;
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](&v25);

  return this;
}

void sub_247699B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>>>::~__hash_table(v14);
  std::__tree<std::string>::destroy(v13, *(v12 + 232));

  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::~__hash_table(a9);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::~__hash_table(a10);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::~__hash_table(a11);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::~__hash_table(a12);

  v16 = *(v12 + 8);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(v12);
  _Unwind_Resume(a1);
}

id realityio::mtlx::MtlxActionPayload::createSGInputs(pxrInternal__aapl__pxrReserved__::SdfPath *a1, unsigned int *a2, unsigned int *a3)
{
  v19 = a1;
  if (a2 == a3)
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
    do
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = *(**a2 + 40);
      v7 = a2 + 4;
      v8 = a2[2];
      v6(&v20.__type_name);
      v9 = v20.__type_name & 0xFFFFFFFFFFFFFFF8;
      if ((v20.__type_name & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v10 = (v9 + 16);
        if (*(v9 + 39) < 0)
        {
          v10 = *v10;
        }
      }

      else
      {
        v10 = "";
      }

      v11 = [v5 stringWithUTF8String:{v10, v19}];
      if ((v20.__type_name & 7) != 0)
      {
        atomic_fetch_add_explicit((v20.__type_name & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20.__type_name = (*(**(v7 - 2) + 48))(*(v7 - 2), *(v7 - 2), v7, 1);
      v12 = *pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetType(&v20.__type_name);
      v20.__type_name = *(v7 - 2);
      v21 = *(v7 - 2);
      v13 = *v7;
      v22 = v13;
      if ((v13 & 7) != 0)
      {
        v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
        {
          v22 = v14;
        }
      }

      (*(*v20.__type_name + 120))(&v23);
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20.__vftable = v23;
      if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v20.__vftable = (v20.__vftable & 0xFFFFFFFFFFFFFFF8);
      }

      v15 = realityio::conversions::usdToSGDataType(v12, &v20);
      if ((v20.__vftable & 7) != 0)
      {
        atomic_fetch_add_explicit((v20.__vftable & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = [MEMORY[0x277D54698] inputWithName:v11 type:v15];
      if (v16)
      {
        v17 = [v4 arrayByAddingObject:v16];

        v4 = v17;
      }

      else
      {
        realityio::mtlx::MtlxActionPayload::setError(v19, @"Could not create a node input", 3u, 0);
      }

      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      a2 = (v7 + 1);
    }

    while (v7 + 1 != a3);
  }

  return v4;
}

id realityio::mtlx::MtlxActionPayload::createSGOutputs(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t **a2)
{
  v4 = objc_opt_new();
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = *(v5 + 2);
      (*(**v5 + 40))(&v33);
      v9 = v33 & 0xFFFFFFFFFFFFFFF8;
      if ((v33 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v10 = (v9 + 16);
        if (*(v9 + 39) < 0)
        {
          v10 = *v10;
        }
      }

      else
      {
        v10 = "";
      }

      v11 = [v7 stringWithUTF8String:v10];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = (*(**v5 + 48))(*v5, *(v5 + 2), v5 + 2, 0);
      v12 = *pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetType(&v33);
      v13 = *v5;
      v34 = *(v5 + 2);
      v33 = v13;
      v14 = v5[2];
      v35 = v14;
      if ((v14 & 7) != 0)
      {
        v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
        {
          v35 = v15;
        }
      }

      (*(*v33 + 120))(&v36);
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      if ((*v16 ^ *(a1 + 1)) > 7)
      {
        v31.__vftable = v36;
        if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v31.__vftable = (v31.__vftable & 0xFFFFFFFFFFFFFFF8);
        }

        v24 = realityio::conversions::usdToSGDataType(v12, &v31);
        v25 = v31.__vftable;
      }

      else
      {
        v17 = *v5;
        v18 = *(v5 + 2);
        v19 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
        if (!v19)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
        }

        (*(*v17 + 96))(&v33, v17, v18, v19 + 24);
        (*(*v33 + 40))(&v32);
        if ((v35 & 7) != 0)
        {
          atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v20 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
        if (!v20)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
        }

        (*(*v17 + 152))(&v33, v17, v18, v20 + 96);
        (*(*v33 + 40))(&v31.__type_name);
        if ((v35 & 7) != 0)
        {
          atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v21 = *(v5 + 2);
        (*(**v5 + 40))(&v33);
        v23 = v32;
        v22 = v33;
        if ((v33 & 7) != 0)
        {
          atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v23 ^ v22) >= 8)
        {
          v26 = *(v5 + 2);
          (*(**v5 + 40))(&v33);
          v27 = v33;
          type_name = v31.__type_name;
          if ((v33 & 7) != 0)
          {
            atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((type_name ^ v27) >= 8)
          {
            v24 = 0;
          }

          else
          {
            v24 = 54;
          }
        }

        else
        {
          v24 = 53;
        }

        if ((v31.__type_name & 7) != 0)
        {
          atomic_fetch_add_explicit((v31.__type_name & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v25 = v32;
      }

      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = [MEMORY[0x277D546B0] outputWithName:v11 type:v24];
      if (v29)
      {
        [v4 addObject:v29];
      }

      else
      {
        realityio::mtlx::MtlxActionPayload::setError(a1, @"Could not create a node output", 3u, 0);
      }

      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v5 += 3;
    }

    while (v5 != v6);
  }

  return v4;
}

void realityio::mtlx::MtlxActionPayload::setSGGraph(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((a1 + 16), a2);
  if (v5)
  {
    v4 = *(a1 + 24);
    *(a1 + 24) = 0;
  }
}

void realityio::mtlx::MtlxActionPayload::addArgumentOutputs(uint64_t a1, realityio::mtlx::NeoShadeNodeGraph *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  realityio::mtlx::NeoShadeNodeGraph::GetInputs(a2, v39);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v5)
  {
    v29 = *v36;
    do
    {
      v30 = v5;
      for (i = 0; i != v30; ++i)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v35 + 1) + 8 * i);
        v8 = v7;
        v10 = v39[0];
        v9 = v39[1];
        while (v10 != v9)
        {
          v11 = *(realityio::logObjects(v7) + 48);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [(realityio *)v8 name];
            v13 = v10[2];
            (*(**v10 + 24))(&v31);
            Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v31);
            *buf = 138412546;
            *&buf[4] = v12;
            v41 = 2080;
            v42 = Text;
            _os_log_impl(&dword_247485000, v11, OS_LOG_TYPE_INFO, "    Publishing argument node output '%@' in %s", buf, 0x16u);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v31);
          }

          v15 = [(realityio *)v8 name];
          v16 = MEMORY[0x277CCACA8];
          v17 = v10[2];
          (*(**v10 + 40))(buf);
          v18 = *buf & 0xFFFFFFFFFFFFFFF8;
          if ((*buf & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v19 = (v18 + 16);
            if (*(v18 + 39) < 0)
            {
              v19 = *v19;
            }
          }

          else
          {
            v19 = "";
          }

          v20 = [v16 stringWithUTF8String:v19];
          v21 = [v15 isEqualToString:v20];

          if ((buf[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v21)
          {
            v22 = v8;
            realityio::mtlx::MtlxActionPayload::Connectable::Connectable<realityio::mtlx::NeoShadeInput>(buf, v10);
            v46 = v22;
            v23 = *v10;
            v32 = v10[2];
            v31 = v23;
            v24 = *(v10 + 2);
            v33 = v24;
            if ((v24 & 7) != 0)
            {
              v25 = (v24 & 0xFFFFFFFFFFFFFFF8);
              if ((atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed) & 1) == 0)
              {
                v33 = v25;
              }
            }

            (*(*v31 + 3))(&v34);
            std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>((a1 + 80), &v34);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
            if ((v33 & 7) != 0)
            {
              atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v45);
            if ((v44 & 7) != 0)
            {
              atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v43 & 7) != 0)
            {
              atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v31 = &buf[8];
            std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v31);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
            break;
          }

          v10 += 6;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v5);
  }

  *buf = v39;
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](buf);

  v26 = *MEMORY[0x277D85DE8];
}

void sub_24769A82C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void realityio::mtlx::MtlxActionPayload::addResultInputs(uint64_t a1, realityio::mtlx::NeoShadeNodeGraph *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  realityio::mtlx::NeoShadeNodeGraph::GetOutputs(a2, v39);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v5)
  {
    v29 = *v36;
    do
    {
      v30 = v5;
      for (i = 0; i != v30; ++i)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v35 + 1) + 8 * i);
        v8 = v7;
        v10 = v39[0];
        v9 = v39[1];
        while (v10 != v9)
        {
          v11 = *(realityio::logObjects(v7) + 48);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [(realityio *)v8 name];
            v13 = v10[2];
            (*(**v10 + 24))(&v31);
            Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v31);
            *buf = 138412546;
            *&buf[4] = v12;
            v41 = 2080;
            v42 = Text;
            _os_log_impl(&dword_247485000, v11, OS_LOG_TYPE_INFO, "    Publishing result node input '%@' in %s", buf, 0x16u);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v31);
          }

          v15 = [(realityio *)v8 name];
          v16 = MEMORY[0x277CCACA8];
          v17 = v10[2];
          (*(**v10 + 40))(buf);
          v18 = *buf & 0xFFFFFFFFFFFFFFF8;
          if ((*buf & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v19 = (v18 + 16);
            if (*(v18 + 39) < 0)
            {
              v19 = *v19;
            }
          }

          else
          {
            v19 = "";
          }

          v20 = [v16 stringWithUTF8String:v19];
          v21 = [v15 isEqualToString:v20];

          if ((buf[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v21)
          {
            v22 = v8;
            realityio::mtlx::MtlxActionPayload::Connectable::Connectable<realityio::mtlx::NeoShadeOutput>(buf, v10);
            v46 = v22;
            v23 = *v10;
            v32 = v10[2];
            v31 = v23;
            v24 = *(v10 + 2);
            v33 = v24;
            if ((v24 & 7) != 0)
            {
              v25 = (v24 & 0xFFFFFFFFFFFFFFF8);
              if ((atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed) & 1) == 0)
              {
                v33 = v25;
              }
            }

            (*(*v31 + 3))(&v34);
            std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>((a1 + 40), &v34);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
            if ((v33 & 7) != 0)
            {
              atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v45);
            if ((v44 & 7) != 0)
            {
              atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v43 & 7) != 0)
            {
              atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v31 = &buf[8];
            std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v31);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
            break;
          }

          v10 += 6;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v5);
  }

  *buf = v39;
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](buf);

  v26 = *MEMORY[0x277D85DE8];
}

void sub_24769AC84(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_24769AFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>>>::~__hash_table(v14);
  std::__tree<std::string>::destroy(v13, *(v12 + 232));

  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::~__hash_table(a9);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::~__hash_table(a10);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::~__hash_table(a11);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::~__hash_table(a12);

  v16 = *(v12 + 8);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(v12);
  _Unwind_Resume(a1);
}

void realityio::mtlx::MtlxActionPayload::setError(realityio::mtlx::MtlxActionPayload *this, NSError *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(this + 2);
    *(this + 2) = 0;

    v5 = *(this + 3);
    *(this + 3) = 0;

    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::clear(this + 40);
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::clear(this + 80);
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::clear(this + 120);
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::clear(this + 160);
    v6 = *(this + 25);
    *(this + 25) = 0;

    v7 = *(this + 26);
    *(this + 26) = 0;

    std::__tree<std::string>::destroy(this + 224, *(this + 29));
    *(this + 29) = 0;
    *(this + 30) = 0;
    *(this + 28) = this + 232;
    if (*(this + 34))
    {
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>>>::__deallocate_node(this + 248, *(this + 33));
      *(this + 33) = 0;
      v8 = *(this + 32);
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          *(*(this + 31) + 8 * i) = 0;
        }
      }

      *(this + 34) = 0;
    }
  }

  v10 = *(this + 4);
  *(this + 4) = v3;
}

void realityio::mtlx::MtlxActionPayload::addChildError(id *this, NSError *a2)
{
  v12 = a2;
  v3 = MEMORY[0x277CBEB38];
  v4 = this[4];
  v5 = [v4 userInfo];
  v6 = [v3 dictionaryWithDictionary:v5];

  v7 = objc_opt_new();
  v8 = [v6 objectForKeyedSubscript:@"NSMultipleUnderlyingErrorsKey"];
  if (v8)
  {
    [v7 addObjectsFromArray:v8];
  }

  [v7 addObject:v12];
  [v6 setObject:v7 forKeyedSubscript:@"NSMultipleUnderlyingErrorsKey"];
  v9 = MEMORY[0x277CCA9B8];
  v10 = this[4];
  v11 = [v9 errorWithDomain:@"MaterialX" code:objc_msgSend(v10 userInfo:{"code"), v6}];
  realityio::mtlx::MtlxActionPayload::setError(this, v11);
}

void realityio::mtlx::MtlxActionPayload::recordGeomprop(uint64_t a1, int a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 136);
  if (v3)
  {
    v5 = a2;
    v6 = a1;
    v7 = &realityio::tokens::MaterialBuilderTokens;
    v8 = "varname";
    do
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v3 + 2));
      pxrInternal__aapl__pxrReserved__::SdfPath::StripNamespace();
      v9 = atomic_load(v7);
      if (!v9)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      if (v5 || (*(v9 + 72) ^ v48) >= 8)
      {
        v10 = atomic_load(v7);
        if (!v10)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
        }

        if (v5 != 1 || (*(v10 + 80) ^ v48) > 7)
        {
          goto LABEL_72;
        }
      }

      v47 = 0;
      memset(&__p, 0, sizeof(__p));
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&buf, (v3 + 10));
      v11 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(&buf);
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&buf);
      if (v11)
      {
        v12 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v55, (v3 + 10));
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(v12))
        {
          v13 = v56;
          if ((v56 & 4) != 0)
          {
            (*((v56 & 0xFFFFFFFFFFFFFFF8) + 176))(&buf, &v55);
            pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v55, &buf);
            pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&buf);
            v13 = v56;
          }

          v14 = v55;
          v55 = 0;
          if (v13 && (v13 & 3) != 3)
          {
            (*((v13 & 0xFFFFFFFFFFFFFFF8) + 32))(&v55);
          }

          v56 = 0;
        }

        else
        {
          v14 = *pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
          if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v14 &= 0xFFFFFFFFFFFFFFF8;
          }
        }

        if ((v47 & 7) != 0)
        {
          atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v47 = v14;
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v55);
        if ((v47 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((v47 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v15);
        }

        std::string::operator=(&__p, EmptyString);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&buf, (v3 + 10));
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::string>(&buf);
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&buf);
        if (v17)
        {
          v18 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v52, (v3 + 10));
          if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::string>(v18))
          {
            memset(&buf, 0, sizeof(buf));
            if ((v53 & 4) != 0)
            {
              (*((v53 & 0xFFFFFFFFFFFFFFF8) + 176))(&v55, &v52);
              pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v52, &v55);
              pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v55);
            }

            MutableObj = pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::string>::_GetMutableObj(&v52);
            v20 = *MutableObj;
            buf.__r_.__value_.__r.__words[2] = *(MutableObj + 16);
            *&buf.__r_.__value_.__l.__data_ = v20;
            *(MutableObj + 8) = 0;
            *(MutableObj + 16) = 0;
            *MutableObj = 0;
            if (v53 && (v53 & 3) != 3)
            {
              (*((v53 & 0xFFFFFFFFFFFFFFF8) + 32))(&v52);
            }

            v53 = 0;
          }

          else
          {
            v41 = pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
            if (*(v41 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&buf, *v41, *(v41 + 8));
            }

            else
            {
              v42 = *v41;
              buf.__r_.__value_.__r.__words[2] = *(v41 + 16);
              *&buf.__r_.__value_.__l.__data_ = v42;
            }
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = buf;
          *(&buf.__r_.__value_.__s + 23) = 0;
          buf.__r_.__value_.__s.__data_[0] = 0;
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v52);
          MEMORY[0x24C1A5E00](&buf, &__p);
          if ((v47 & 7) != 0)
          {
            atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v47 = buf.__r_.__value_.__r.__words[0];
        }
      }

      v21 = atomic_load(v7);
      if (!v21)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      if ((*(v21 + 312) ^ v47) >= 8)
      {
        v22 = atomic_load(v7);
        if (!v22)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
        }

        if ((*(v22 + 320) ^ v47) >= 8)
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            if (!__p.__r_.__value_.__l.__size_)
            {
LABEL_52:
              v55 = 0;
              v56 = 0;
              v57 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              if (v5)
              {
                MEMORY[0x24C1A8D40](&v55, "PrimvarReader");
                v24 = v8;
              }

              else
              {
                MEMORY[0x24C1A8D40](&v55, "GeomProp");
                v24 = "geomprop";
              }

              v25 = MEMORY[0x24C1A8D40](&v52, v24);
              v26 = *(realityio::logObjects(v25) + 48);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = v7;
                v28 = v8;
                v29 = v6;
                v30 = a3;
                v31 = SHIBYTE(v57);
                v32 = v55;
                v33 = SHIBYTE(v54);
                v34 = v52;
                Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v3 + 2));
                v36 = &v52;
                if (v33 < 0)
                {
                  v36 = v34;
                }

                v37 = *(Name + 23);
                v38 = *Name;
                v39 = &v55;
                if (v31 < 0)
                {
                  v39 = v32;
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
                if (v37 >= 0)
                {
                  v40 = Name;
                }

                else
                {
                  v40 = v38;
                }

                *(buf.__r_.__value_.__r.__words + 4) = v39;
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = v36;
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                v50 = v40;
                _os_log_impl(&dword_247485000, v26, OS_LOG_TYPE_DEFAULT, "%s has an empty %s attribute at path %s.", &buf, 0x20u);
                a3 = v30;
                v6 = v29;
                v8 = v28;
                v7 = v27;
                v5 = a2;
              }

              if (SHIBYTE(v54) < 0)
              {
                operator delete(v52);
              }

              if (SHIBYTE(v57) < 0)
              {
                operator delete(v55);
              }

              goto LABEL_68;
            }

            std::string::__init_copy_ctor_external(&v45, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            if (!*(&__p.__r_.__value_.__s + 23))
            {
              goto LABEL_52;
            }

            v45 = __p;
          }

          realityio::TexcoordID::TexcoordID(&buf, &v45, -1, a3);
          v55 = &v47;
          v23 = std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::TfToken const&>,std::tuple<>>((v6 + 248), v47);
          realityio::TexcoordID::operator=((v23 + 3), &buf);
          if (v51 < 0)
          {
            operator delete(buf.__r_.__value_.__r.__words[2]);
          }

          if ((buf.__r_.__value_.__s.__data_[8] & 7) != 0)
          {
            atomic_fetch_add_explicit((buf.__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v45.__r_.__value_.__l.__data_);
          }

          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v6 + 224, &__p.__r_.__value_.__l.__data_);
        }
      }

LABEL_68:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v47 & 7) != 0)
      {
        atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

LABEL_72:
      if ((v48 & 7) != 0)
      {
        atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v3 = *v3;
    }

    while (v3);
  }

  v43 = *MEMORY[0x277D85DE8];
}

void sub_24769B958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if ((a28 & 7) != 0)
  {
    atomic_fetch_add_explicit((a28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::mtlx::MtlxActionPayload::collectTextureInfo(uint64_t a1, uint64_t a2)
{
  result = std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a1 + 224, *(a2 + 224), (a2 + 232));
  for (i = *(a2 + 264); i; i = *i)
  {
    result = std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::TexcoordID> const&>((a1 + 248), i + 2);
  }

  return result;
}

uint64_t realityio::mtlx::MtlxActionPayload::collectNodes(realityio::mtlx::MtlxActionPayload *this, id *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  isSiblingOf = realityio::mtlx::MtlxActionPayload::isSiblingOf(this, a2);
  if (isSiblingOf)
  {
    v5 = *(realityio::logObjects(isSiblingOf) + 48);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
      v30 = 2080;
      v31 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      _os_log_impl(&dword_247485000, v5, OS_LOG_TYPE_INFO, "Collecting sibling nodes into %s from %s", buf, 0x16u);
    }

    v6 = *(this + 26);
    v7 = a2[3];
    [v6 addObject:v7];

    v8 = *(this + 26);
    v9 = [a2[26] allObjects];
    [v8 addObjectsFromArray:v9];
LABEL_5:

    v11 = *(realityio::logObjects(v10) + 48);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = a2[3];
      v13 = [v12 name];
      v14 = v13;
      v15 = [v13 UTF8String];
      *buf = 136315138;
      Text = v15;
      _os_log_impl(&dword_247485000, v11, OS_LOG_TYPE_INFO, "  Adding '%s'", buf, 0xCu);
    }

    goto LABEL_13;
  }

  isParentOf = realityio::mtlx::MtlxActionPayload::isParentOf(this, a2);
  if (!isParentOf)
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
    v22 = [v20 stringWithFormat:@"Unexpected dependency between %s and %s.", v21, pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2)];
    realityio::mtlx::MtlxActionPayload::setError(this, v22, 5u, 0);

    result = 0;
    goto LABEL_15;
  }

  v17 = *(this + 144);
  if ((v17 & 3) != 0)
  {
    v18 = *(a2 + 144) | v17 | 4;
  }

  else
  {
    v18 = *(a2 + 144) | v17;
  }

  *(this + 144) = v18;
  if ((v18 & 3) == 0)
  {
    v24 = *(realityio::logObjects(isParentOf) + 48);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
      v30 = 2080;
      v31 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      _os_log_impl(&dword_247485000, v24, OS_LOG_TYPE_INFO, "Collecting child nodes into %s from %s", buf, 0x16u);
    }

    v25 = *(this + 25);
    v26 = a2[3];
    [v25 addObject:v26];

    v27 = *(this + 25);
    v9 = [a2[26] allObjects];
    [v27 addObjectsFromArray:v9];
    goto LABEL_5;
  }

LABEL_13:
  result = 1;
LABEL_15:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24769BE98(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL realityio::mtlx::MtlxActionPayload::isParentOf(realityio::mtlx::MtlxActionPayload *this, const realityio::mtlx::MtlxActionPayload *a2)
{
  v3 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v3 + 8) ^ *(this + 1)) < 8)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v8, a2);
  v5 = *this;
  v6 = v8;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  v4 = v5 == v6;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  return v4;
}

uint64_t realityio::mtlx::MtlxActionPayload::collectInputsAndOutputs(realityio::mtlx::MtlxActionPayload *this, unsigned int **a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = *(realityio::logObjects(this) + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(this + 1) & 0xFFFFFFFFFFFFFFF8;
    if (v5)
    {
      v6 = (v5 + 16);
      if (*(v5 + 39) < 0)
      {
        v6 = *v6;
      }
    }

    else
    {
      v6 = "";
    }

    *buf = 136315394;
    v28 = v6;
    v29 = 2080;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
    _os_log_impl(&dword_247485000, v4, OS_LOG_TYPE_INFO, "Collecting inputs and outputs on %s %s", buf, 0x16u);
  }

  isSiblingOf = realityio::mtlx::MtlxActionPayload::isSiblingOf(this, a2);
  if (isSiblingOf)
  {
    v8 = *(realityio::logObjects(isSiblingOf) + 48);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = a2[1] & 0xFFFFFFFFFFFFFFF8;
      if (v9)
      {
        v10 = (v9 + 16);
        if (*(v9 + 39) < 0)
        {
          v10 = *v10;
        }
      }

      else
      {
        v10 = "";
      }

      v19 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      *buf = 136315394;
      v28 = v10;
      v29 = 2080;
      Text = v19;
      _os_log_impl(&dword_247485000, v8, OS_LOG_TYPE_INFO, "  Sibling on %s %s", buf, 0x16u);
    }

    for (i = a2[22]; i; i = *i)
    {
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::OutputRecord> const&>(this + 20, i + 4);
    }

    for (j = a2[17]; j; j = *j)
    {
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::InputRecord> const&>(this + 15, j + 4);
    }

LABEL_34:
    result = 1;
    goto LABEL_35;
  }

  isParentOf = realityio::mtlx::MtlxActionPayload::isParentOf(this, a2);
  if (isParentOf)
  {
    v12 = *(realityio::logObjects(isParentOf) + 48);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = a2[1] & 0xFFFFFFFFFFFFFFF8;
      if (v13)
      {
        v14 = (v13 + 16);
        if (*(v13 + 39) < 0)
        {
          v14 = *v14;
        }
      }

      else
      {
        v14 = "";
      }

      Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(a2);
      if (*(Name + 23) >= 0)
      {
        v23 = Name;
      }

      else
      {
        v23 = *Name;
      }

      *buf = 136315394;
      v28 = v14;
      v29 = 2080;
      Text = v23;
      _os_log_impl(&dword_247485000, v12, OS_LOG_TYPE_INFO, "  Child on %s %s", buf, 0x16u);
    }

    for (k = a2[22]; k; k = *k)
    {
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::OutputRecord> const&>(this + 10, k + 4);
    }

    for (m = a2[17]; m; m = *m)
    {
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::InputRecord> const&>(this + 5, m + 4);
    }

    goto LABEL_34;
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
  v17 = [v15 stringWithFormat:@"Unexpected dependency between %s and %s.", v16, pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2)];
  realityio::mtlx::MtlxActionPayload::setError(this, v17, 5u, 0);

  result = 0;
LABEL_35:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24769C274(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void realityio::mtlx::MtlxActionPayload::populateSubgraph(id *this)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!this[4])
  {
    v2 = *(realityio::logObjects(this) + 48);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = this[1] & 0xFFFFFFFFFFFFFFF8;
      if (v3)
      {
        v4 = (v3 + 16);
        if (*(v3 + 39) < 0)
        {
          v4 = *v4;
        }
      }

      else
      {
        v4 = "";
      }

      *buf = 136315394;
      v17 = v4;
      v18 = 2080;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
      _os_log_impl(&dword_247485000, v2, OS_LOG_TYPE_INFO, "Populating %s %s", buf, 0x16u);
    }

    v5 = [this[25] allObjects];
    v6 = this[2];
    v15 = 0;
    v7 = [v6 insertNodes:v5 error:&v15];
    v8 = v15;
    if ((v7 & 1) == 0)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
      v11 = [v9 stringWithFormat:@"Unexpected dependency between %s and %s.", v10, pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this)];
      v12 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
      if (!v12)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      if ((*v12 ^ this[1]) >= 8)
      {
        v13 = 3;
      }

      else
      {
        v13 = 4;
      }

      realityio::mtlx::MtlxActionPayload::setError(this, v11, v13, v8);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_24769C460(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void realityio::mtlx::MtlxActionPayload::connectFromOutput(pxrInternal__aapl__pxrReserved__::SdfPath *a1, void *a2, pxrInternal__aapl__pxrReserved__::SdfPath **a3, void *a4, pxrInternal__aapl__pxrReserved__::SdfPath *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(buf, a5);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(&v30, v10);
      v13 = v30;
      v12 = *buf;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      v14 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
      if (v12 == v13)
      {
        break;
      }

      v20 = std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a4, v10);
      if (v20)
      {
        v21 = v20;
        if (*(v20 + 72) == 1)
        {
          realityio::mtlx::MtlxActionPayload::setError(a1, @"Multiple connections to input.", 8u, 0);
          goto LABEL_16;
        }

        v22 = *(a1 + 2);
        v23 = v21[12];
        v29 = 0;
        [v22 connect:v9 to:v23 error:&v29];
        v24 = v29;
        if (v24)
        {
          v27 = v24;
          realityio::mtlx::MtlxActionPayload::setError(a1, @"Failed to create material.", 0, v24);

          goto LABEL_16;
        }

        *(v21 + 72) = 1;
        v15 = *(realityio::logObjects(0) + 48);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a5);
          v26 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v10);
          *buf = 136315394;
          *&buf[4] = Text;
          v32 = 2080;
          v33 = v26;
          v18 = v15;
          v19 = "  Connected %s from output %s";
LABEL_10:
          _os_log_impl(&dword_247485000, v18, OS_LOG_TYPE_INFO, v19, buf, 0x16u);
        }

LABEL_11:
      }

      v10 = (v10 + 8);
      if (v10 == v11)
      {
        goto LABEL_16;
      }
    }

    v15 = *(realityio::logObjects(v14) + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a5);
      v17 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v10);
      *buf = 136315394;
      *&buf[4] = v16;
      v32 = 2080;
      v33 = v17;
      v18 = v15;
      v19 = "    Filtering connection from %s to %s";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_16:

  v28 = *MEMORY[0x277D85DE8];
}

void realityio::mtlx::MtlxActionPayload::connectSubgraph(void *a1, uint64_t *a2)
{
  v152 = *MEMORY[0x277D85DE8];
  if (!a1[4])
  {
    realityio::mtlx::MtlxActionPayload::getUSDInputs(a2);
    v126 = a2;
    USDOutputs = realityio::mtlx::MtlxActionPayload::getUSDOutputs(a2);
    v5 = *(realityio::logObjects(USDOutputs) + 48);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = a1[1] & 0xFFFFFFFFFFFFFFF8;
      if (v6)
      {
        v7 = (v6 + 16);
        if (*(v6 + 39) < 0)
        {
          v7 = *v7;
        }
      }

      else
      {
        v7 = "";
      }

      v8 = a1[2];
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
      v10 = "child";
      *buf = 136315650;
      if (!v8)
      {
        v10 = "sibling";
      }

      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v7;
      *&buf[22] = 2080;
      v141 = Text;
      _os_log_impl(&dword_247485000, v5, OS_LOG_TYPE_INFO, "Connecting %s inputs of %s %s", buf, 0x20u);
    }

    v129 = a1;

    v123 = (a1 + 10);
    if (a1[2])
    {
      v11 = a1 + 10;
    }

    else
    {
      v11 = a1 + 20;
    }

    v12 = (v11 + 2);
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      realityio::mtlx::MtlxActionPayload::connectFromOutput(a1, v12[12], v12 + 4, a1 + 5, (v12 + 2));
      if (a1[4])
      {
        goto LABEL_174;
      }
    }

    v13 = a1[2];
    v124 = a1 + 5;
    if (v13)
    {
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v14 = [v13 argumentsNode];
      v15 = [v14 outputs];

      v16 = [v15 countByEnumeratingWithState:&v130 objects:v139 count:16];
      if (v16)
      {
        v17 = *v131;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v131 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v130 + 1) + 8 * i);
            memset(buf, 0, sizeof(buf));
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
            v20 = [v19 name];
            v21 = v20;
            std::string::basic_string[abi:ne200100]<0>(&v142, [v20 UTF8String]);

            v22 = v135[0];
            v23 = v135[1];
            while (1)
            {
              if (v22 == v23)
              {
                goto LABEL_50;
              }

              v24 = *(v22 + 2);
              v25 = (*(**v22 + 40))(v148);
              if ((*v148 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                EmptyString = ((*v148 & 0xFFFFFFFFFFFFFFF8) + 16);
              }

              else
              {
                EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v25);
              }

              v27 = *(EmptyString + 23);
              if (v27 >= 0)
              {
                v28 = *(EmptyString + 23);
              }

              else
              {
                v28 = EmptyString[1];
              }

              v29 = BYTE7(v143);
              if (SBYTE7(v143) < 0)
              {
                v29 = *(&v142 + 1);
              }

              if (v28 == v29)
              {
                if (v27 < 0)
                {
                  EmptyString = *EmptyString;
                }

                v30 = (SBYTE7(v143) & 0x80u) == 0 ? &v142 : v142;
                v31 = memcmp(EmptyString, v30, v28) == 0;
              }

              else
              {
                v31 = 0;
              }

              if ((v148[0] & 7) != 0)
              {
                atomic_fetch_add_explicit((*v148 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if (v31)
              {
                break;
              }

              v22 += 3;
            }

            (*(**v22 + 80))(*v22, *(v22 + 2), v22 + 2, 1, buf);
            v32 = *v22;
            *&v148[8] = *(v22 + 2);
            *v148 = v32;
            v33 = v22[2];
            *&v150[2] = v33;
            if ((v33 & 7) != 0)
            {
              v34 = (v33 & 0xFFFFFFFFFFFFFFF8);
              if ((atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed) & 1) == 0)
              {
                *&v150[2] = v34;
              }
            }

            (*(**v148 + 24))(v147);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v136, v147);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v136.__r_.__value_.__r.__words + 4, v147 + 1);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v147);
            if ((v150[2] & 7) != 0)
            {
              atomic_fetch_add_explicit((*&v150[2] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

LABEL_50:
            if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() || *buf == *&buf[8])
            {
              v35 = 5;
            }

            else
            {
              realityio::mtlx::MtlxActionPayload::connectFromOutput(a1, v19, buf, v124, &v136);
              v35 = a1[4] != 0;
            }

            if (SBYTE7(v143) < 0)
            {
              operator delete(v142);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v136);
            *&v142 = buf;
            std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v142);
            if (v35 != 5 && v35)
            {

              goto LABEL_174;
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v130 objects:v139 count:16];
        }

        while (v16);
      }
    }

    if (a1[4])
    {
      goto LABEL_174;
    }

    v36 = *(realityio::logObjects(v13) + 48);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = a1[1] & 0xFFFFFFFFFFFFFFF8;
      if (v37)
      {
        v38 = (v37 + 16);
        if (*(v37 + 39) < 0)
        {
          v38 = *v38;
        }
      }

      else
      {
        v38 = "";
      }

      v39 = a1[2];
      v40 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
      v41 = "child";
      *buf = 136315650;
      if (!v39)
      {
        v41 = "sibling";
      }

      *&buf[4] = v41;
      *&buf[12] = 2080;
      *&buf[14] = v38;
      *&buf[22] = 2080;
      v141 = v40;
      _os_log_impl(&dword_247485000, v36, OS_LOG_TYPE_INFO, "Connecting %s inputs of %s %s", buf, 0x20u);
    }

    v43 = a1;
    v44 = a1 + 5;
    if (!a1[2])
    {
      v44 = a1 + 15;
    }

    v45 = v44 + 2;
LABEL_74:
    v46 = *v45;
    if (!v46)
    {
      v107 = *(realityio::logObjects(v42) + 48);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
      {
        v108 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v43);
        *buf = 136315138;
        *&buf[4] = v108;
        _os_log_impl(&dword_247485000, v107, OS_LOG_TYPE_INFO, "  Adding child constants to %s", buf, 0xCu);
      }

      v109 = *(v129 + 7);
      for (j = v124; v109; v109 = *v109)
      {
        if ((v109[9] & 1) == 0)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(buf, (v109 + 3));
          v111 = *buf;
          v112 = v129;
          v113 = *v129;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
          if (v111 != v113)
          {
            String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v109 + 3));
            if (*(String + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v136, *String, *(String + 8));
            }

            else
            {
              v115 = *String;
              v136.__r_.__value_.__r.__words[2] = *(String + 16);
              *&v136.__r_.__value_.__l.__data_ = v115;
            }

            pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(buf, (v109 + 3));
            v116 = *buf;
            v117 = *v129;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
            if (v116 == v117)
            {
              Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v109 + 3));
              std::string::operator=(&v136, Name);
            }

            if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v119 = &v136;
            }

            else
            {
              v119 = v136.__r_.__value_.__r.__words[0];
            }

            v120 = [MEMORY[0x277CCACA8] stringWithUTF8String:v119];
            pxrInternal__aapl__pxrReserved__::VtValue::VtValue(buf, (v109 + 10));
            v121 = *&buf[8];
            pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(buf);
            if (v121)
            {
              pxrInternal__aapl__pxrReserved__::VtValue::VtValue(buf, (v109 + 10));
              pxrInternal__aapl__pxrReserved__::VtValue::GetType(buf);
              pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(buf);
              v135[4] = 0;
              v151 = 0;
              operator new();
            }

            if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v136.__r_.__value_.__l.__data_);
            }

            v112 = v129;
            j = v124;
          }

          if (*(v112 + 4))
          {
            goto LABEL_174;
          }
        }
      }

      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::clear(j);
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::clear(v123);
      goto LABEL_174;
    }

    v127 = *(v46 + 96);
    v47 = *(v46 + 32);
    v125 = v46;
    v128 = *(v46 + 40);
    if (v47 == v128)
    {
      v48 = 0;
      goto LABEL_150;
    }

    v48 = 0;
    while (1)
    {
      v49 = std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v129 + 15, v47);
      if (v49)
      {
        v50 = v49;
        if (*(v49 + 72) == 1)
        {
          v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Multiple connections to input '%s'.", pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v49 + 2))];
          realityio::mtlx::MtlxActionPayload::setError(v43, v51, 8u, 0);

          v43 = v129;
        }

        v52 = MEMORY[0x277CCACA8];
        pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v50 + 3));
        pxrInternal__aapl__pxrReserved__::SdfPath::StripNamespace();
        if (v150[9] >= 0)
        {
          v53 = v148;
        }

        else
        {
          v53 = *v148;
        }

        v54 = [v52 stringWithUTF8String:v53];
        if ((v150[9] & 0x80000000) != 0)
        {
          operator delete(*v148);
        }

        v142 = 0u;
        v143 = 0u;
        v144 = 0u;
        v145 = 0u;
        v55 = [*&v43[2] argumentsNode];
        v56 = [v55 outputs];

        v57 = [v56 countByEnumeratingWithState:&v142 objects:buf count:16];
        if (v57)
        {
          v58 = *v143;
LABEL_87:
          v59 = 0;
          while (1)
          {
            if (*v143 != v58)
            {
              objc_enumerationMutation(v56);
            }

            v60 = *(*(&v142 + 1) + 8 * v59);
            v61 = [v60 name];
            v62 = [v54 isEqualToString:v61];

            if (v62)
            {
              break;
            }

            if (v57 == ++v59)
            {
              v57 = [v56 countByEnumeratingWithState:&v142 objects:buf count:16];
              if (v57)
              {
                goto LABEL_87;
              }

              goto LABEL_139;
            }
          }

          v63 = v60;
          v64 = v127;
          v65 = *v126;
          v66 = *(v126 + 2);
          v67 = v63;
          if ((*(*v65 + 176))(v65, v66) && ([v67 type] == 11 || objc_msgSend(v67, "type") == 12))
          {
            v68 = [v67 name];
            v69 = v68;
            MEMORY[0x24C1A5DE0](&v136, [v68 UTF8String]);
            (*(*v65 + 144))(v148, v65, v66, &v136);
            if ((v136.__r_.__value_.__s.__data_[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((v136.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            memset(&v136, 0, sizeof(v136));
            if ([v67 type] == 11)
            {
              (*(**v148 + 72))(*v148, *&v148[8], &v150[2], &v136);
            }

            else
            {
              v147[0] = 0;
              v79 = (*(**v148 + 64))(*v148, *&v148[8], &v150[2], v147);
              if ((v147[0] & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v80 = ((v147[0] & 0xFFFFFFFFFFFFFFF8) + 16);
              }

              else
              {
                v80 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v79);
              }

              std::string::operator=(&v136, v80);
              if ((v147[0] & 7) != 0)
              {
                atomic_fetch_add_explicit((v147[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }

            v81 = *(v129 + 27);
            v82 = [v67 name];
            v83 = [v81 objectForKeyedSubscript:v82];

            if (v83)
            {
              v74 = 0;
            }

            else
            {
              v84 = MEMORY[0x277D546A8];
              if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v85 = &v136;
              }

              else
              {
                v85 = v136.__r_.__value_.__r.__words[0];
              }

              v86 = [MEMORY[0x277CCACA8] stringWithUTF8String:v85];
              v87 = [v67 type];
              v88 = [v67 name];
              v147[0] = 0;
              v83 = [v84 nodeWithConstantString:v86 type:v87 name:v88 error:v147];
              v74 = v147[0];

              if (!v74)
              {
                v89 = *(v129 + 2);
                v146 = v83;
                v90 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:1];
                v138 = 0;
                [v89 insertNodes:v90 error:&v138];
                v74 = v138;

                v91 = *(v129 + 27);
                v92 = [v67 name];
                [v91 setObject:v83 forKeyedSubscript:v92];
              }
            }

            v93 = [v83 outputs];
            v75 = [v93 objectAtIndexedSubscript:0];

            if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v136.__r_.__value_.__l.__data_);
            }

            if ((v150[2] & 7) != 0)
            {
              atomic_fetch_add_explicit((*&v150[2] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          else
          {
            v74 = 0;
            v75 = v67;
          }

          v94 = *(v129 + 2);
          *v148 = v74;
          [v94 connect:v75 to:v64 error:v148];
          v95 = *v148;

          v96 = v95;
          v97 = v95;
          v98 = v97;
          if (v95)
          {
            realityio::mtlx::MtlxActionPayload::setError(v129, @"Failed to create material.", 0, v97);

            goto LABEL_148;
          }

          v99 = *(realityio::logObjects(v97) + 48);
          if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
          {
            v100 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v125 + 16));
            v101 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v47);
            *v148 = 136315394;
            *&v148[4] = v100;
            v149 = 2080;
            *v150 = v101;
            _os_log_impl(&dword_247485000, v99, OS_LOG_TYPE_INFO, "  Connected %s from input %s", v148, 0x16u);
          }

          v48 = 1;
        }

LABEL_139:

LABEL_140:
        v43 = v129;
      }

      else
      {
        v70 = v43[11];
        if (v70)
        {
          v71 = bswap64(0x9E3779B97F4A7C55 * (v47[1] + ((v47[1] + *v47 + (v47[1] + *v47) * (v47[1] + *v47)) >> 1)));
          v72 = vcnt_s8(v70);
          v72.i16[0] = vaddlv_u8(v72);
          if (v72.u32[0] > 1uLL)
          {
            v73 = v71;
            if (v71 >= *&v70)
            {
              v73 = v71 % *&v70;
            }
          }

          else
          {
            v73 = v71 & (*&v70 - 1);
          }

          v76 = *(*&v43[10] + 8 * v73);
          if (v76)
          {
            for (k = *v76; k; k = *k)
            {
              v78 = k[1];
              if (v78 == v71)
              {
                if (k[2] == *v47)
                {
                  v102 = v43[2];
                  v103 = k[12];
                  v137 = 0;
                  [v102 connect:v103 to:v127 error:&v137];
                  v104 = v137;
                  v98 = v104;
                  if (!v104)
                  {
                    v54 = *(realityio::logObjects(0) + 48);
                    v48 = 1;
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                    {
                      v105 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v125 + 16));
                      v106 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v47);
                      *v148 = 136315394;
                      *&v148[4] = v105;
                      v149 = 2080;
                      *v150 = v106;
                      _os_log_impl(&dword_247485000, v54, OS_LOG_TYPE_INFO, "  Internally connected %s to %s", v148, 0x16u);
                    }

                    goto LABEL_140;
                  }

                  realityio::mtlx::MtlxActionPayload::setError(v129, @"Failed to create material.", 0, v104);
LABEL_148:
                  v48 = 0;
LABEL_149:

LABEL_150:
                  v45 = v125;
                  *(v125 + 72) = v48 & 1;
                  v43 = v129;
                  if (*(v129 + 4))
                  {
LABEL_174:
                    *buf = &v134;
                    std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](buf);
                    *buf = v135;
                    std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](buf);
                    goto LABEL_175;
                  }

                  goto LABEL_74;
                }
              }

              else
              {
                if (v72.u32[0] > 1uLL)
                {
                  if (v78 >= *&v70)
                  {
                    v78 %= *&v70;
                  }
                }

                else
                {
                  v78 &= *&v70 - 1;
                }

                if (v78 != v73)
                {
                  break;
                }
              }
            }
          }
        }
      }

      v47 += 2;
      if (v47 == v128)
      {
        v98 = 0;
        goto LABEL_149;
      }
    }
  }

LABEL_175:
  v122 = *MEMORY[0x277D85DE8];
}

void sub_24769E48C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void realityio::mtlx::MtlxActionPayload::nodeFromGraph(id *this)
{
  if (!this[4])
  {
    v2 = MEMORY[0x277CCACA8];
    Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(this);
    if (*(Name + 23) >= 0)
    {
      v4 = Name;
    }

    else
    {
      v4 = *Name;
    }

    v5 = [v2 stringWithUTF8String:v4];
    v6 = MEMORY[0x277D546A8];
    v7 = this[2];
    v13 = 0;
    v8 = [v6 nodeWithGraph:v7 name:v5 error:&v13];
    v9 = v13;
    v10 = v8;
    objc_storeStrong(this + 3, v8);
    if (v10)
    {
      v11 = this[2];
      this[2] = 0;
    }

    if (v9)
    {
      realityio::mtlx::MtlxActionPayload::setError(this, @"Failed to import NodeGraph.", 3u, v9);
    }

    v12 = this[25];
    this[25] = 0;

    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::clear((this + 5));
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::clear((this + 10));
  }
}

BOOL realityio::mtlx::MtlxActionPayload::isSiblingOf(realityio::mtlx::MtlxActionPayload *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v4 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v4 + 8) ^ *(this + 1)) < 8)
  {
    return 1;
  }

  if (*this == *a2)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v8, this);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v7, a2);
  v5 = v8 == v7;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  return v5;
}

uint64_t ___ZN9realityio4mtlx12_GLOBAL__N_19addInputsERKNSt3__16vectorINS0_13NeoShadeInputENS2_9allocatorIS4_EEEEPK7NSArrayIP7SGInputERNS2_13unordered_mapIN32pxrInternal__aapl__pxrReserved__7SdfPathENS0_17MtlxActionPayload11InputRecordENSI_4HashENS2_8equal_toISI_EENS5_INS2_4pairIKSI_SK_EEEEEERU8__strongP8NSString_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:**(a1 + 32)];

  return v4;
}

uint64_t realityio::mtlx::MtlxActionPayload::Connectable::Connectable<realityio::mtlx::NeoShadeInput>(uint64_t a1, void *a2)
{
  v15 = *a2;
  v19 = *(a2 + 2);
  v5 = a2 + 2;
  v4 = a2[2];
  v23 = v4;
  if ((v4 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v6;
    }
  }

  (*(*v15 + 24))(v15, v19, &v23);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v16 = *a2;
  v20 = *(a2 + 2);
  v7 = a2[2];
  v23 = v7;
  if ((v7 & 7) != 0)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v8;
    }
  }

  (*(*v16 + 120))(v16, v20, &v23);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *a2;
  v21 = *(a2 + 2);
  v9 = a2[2];
  v23 = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v10;
    }
  }

  (*(*v17 + 128))(v17, v21, &v23);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  v18 = *a2;
  v22 = *(a2 + 2);
  v11 = a2[2];
  v23 = v11;
  if ((v11 & 7) != 0)
  {
    v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v12;
    }
  }

  (*(*v18 + 104))(v18, v22, &v23, a1 + 56);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::conversions::castToSupportedType((a1 + 56), v13);
  (*(**a2 + 80))(*a2, *(a2 + 2), v5, 1, a1 + 8);
  return a1;
}

void sub_24769EC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v10 + 7));
  v13 = v10[5];
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(v11 + 24);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a10 = v11;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a10);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(v10);
  _Unwind_Resume(a1);
}

void sub_24769EC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  JUMPOUT(0x24769EC88);
}

uint64_t ___ZN9realityio4mtlx12_GLOBAL__N_110addOutputsERKNSt3__16vectorINS0_14NeoShadeOutputENS2_9allocatorIS4_EEEEPK7NSArrayIP8SGOutputERNS2_13unordered_mapIN32pxrInternal__aapl__pxrReserved__7SdfPathENS0_17MtlxActionPayload12OutputRecordENSI_4HashENS2_8equal_toISI_EENS5_INS2_4pairIKSI_SK_EEEEEERU8__strongP8NSString_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:**(a1 + 32)];

  return v4;
}

uint64_t realityio::mtlx::MtlxActionPayload::Connectable::Connectable<realityio::mtlx::NeoShadeOutput>(uint64_t a1, void *a2)
{
  v15 = *a2;
  v19 = *(a2 + 2);
  v5 = a2 + 2;
  v4 = a2[2];
  v23 = v4;
  if ((v4 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v6;
    }
  }

  (*(*v15 + 24))(v15, v19, &v23);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v16 = *a2;
  v20 = *(a2 + 2);
  v7 = a2[2];
  v23 = v7;
  if ((v7 & 7) != 0)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v8;
    }
  }

  (*(*v16 + 120))(v16, v20, &v23);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *a2;
  v21 = *(a2 + 2);
  v9 = a2[2];
  v23 = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v10;
    }
  }

  (*(*v17 + 128))(v17, v21, &v23);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  v18 = *a2;
  v22 = *(a2 + 2);
  v11 = a2[2];
  v23 = v11;
  if ((v11 & 7) != 0)
  {
    v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v12;
    }
  }

  (*(*v18 + 104))(v18, v22, &v23, a1 + 56);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::conversions::castToSupportedType((a1 + 56), v13);
  (*(**a2 + 80))(*a2, *(a2 + 2), v5, 0, a1 + 8);
  return a1;
}

void sub_24769EFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v10 + 7));
  v13 = v10[5];
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(v11 + 24);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a10 = v11;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a10);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(v10);
  _Unwind_Resume(a1);
}

void sub_24769F038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  JUMPOUT(0x24769F030);
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::TfToken const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = bswap64(0x9E3779B97F4A7C55 * (a2 & 0xFFFFFFFFFFFFFFF8));
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if ((v7[2] ^ a2) >= 8)
  {
    goto LABEL_17;
  }

  return v7;
}

__n128 std::__function::__func<realityio::mtlx::MtlxActionPayload::createInputConstant(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::mtlx::MtlxActionPayload::Connectable const&)::$_0,std::allocator<realityio::mtlx::MtlxActionPayload::createInputConstant(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::mtlx::MtlxActionPayload::Connectable const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595B168;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::mtlx::MtlxActionPayload::createInputConstant(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::mtlx::MtlxActionPayload::Connectable const&)::$_0,std::allocator<realityio::mtlx::MtlxActionPayload::createInputConstant(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::mtlx::MtlxActionPayload::Connectable const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  if (**(a1 + 8))
  {
    v2 = *(a1 + 24);
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create asset constant at %s.", pxrInternal__aapl__pxrReserved__::SdfPath::GetText(*(a1 + 16))];
    realityio::mtlx::MtlxActionPayload::setError(v2, v3, 0xAu, **(a1 + 8));
  }
}

uint64_t std::__function::__func<realityio::mtlx::MtlxActionPayload::createInputConstant(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::mtlx::MtlxActionPayload::Connectable const&)::$_0,std::allocator<realityio::mtlx::MtlxActionPayload::createInputConstant(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::mtlx::MtlxActionPayload::Connectable const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

id realityio::conversions::asScalarMatrix<pxrInternal__aapl__pxrReserved__::GfMatrix2f>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = *(a1 + 4 * v3 + 8 * v7);
      v11 = realityio::conversions::asScalar<float>();
      [v6 setObject:v11 atIndexedSubscript:v7];

      v8 = 0;
      v7 = 1;
    }

    while ((v9 & 1) != 0);
    [v2 setObject:v6 atIndexedSubscript:v3];

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);

  return v2;
}

id realityio::conversions::asScalarMatrix<pxrInternal__aapl__pxrReserved__::GfMatrix3f>(int *a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  for (i = 0; i != 3; ++i)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    v5 = 0;
    v6 = a1;
    do
    {
      v7 = *v6;
      v8 = realityio::conversions::asScalar<float>();
      [v4 setObject:v8 atIndexedSubscript:v5];

      ++v5;
      v6 += 3;
    }

    while (v5 != 3);
    [v2 setObject:v4 atIndexedSubscript:i];

    ++a1;
  }

  return v2;
}

id realityio::conversions::asScalarMatrix<pxrInternal__aapl__pxrReserved__::GfMatrix4f>(int *a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  for (i = 0; i != 4; ++i)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
    v5 = 0;
    v6 = a1;
    do
    {
      v7 = *v6;
      v8 = realityio::conversions::asScalar<float>();
      [v4 setObject:v8 atIndexedSubscript:v5];

      ++v5;
      v6 += 4;
    }

    while (v5 != 4);
    [v2 setObject:v4 atIndexedSubscript:i];

    ++a1;
  }

  return v2;
}

id realityio::conversions::asScalarVector<pxrInternal__aapl__pxrReserved__::GfQuatd>(uint64_t *a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  v3 = a1[3];
  v4 = realityio::conversions::asScalar<double>();
  [v2 setObject:v4 atIndexedSubscript:0];

  for (i = 1; i != 4; ++i)
  {
    v6 = *a1;
    v7 = realityio::conversions::asScalar<double>();
    [v2 setObject:v7 atIndexedSubscript:i];

    ++a1;
  }

  return v2;
}

id realityio::conversions::asScalarVector<pxrInternal__aapl__pxrReserved__::GfQuatf>(int *a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  v3 = a1[3];
  v4 = realityio::conversions::asScalar<float>();
  [v2 setObject:v4 atIndexedSubscript:0];

  for (i = 1; i != 4; ++i)
  {
    v6 = *a1;
    v7 = realityio::conversions::asScalar<float>();
    [v2 setObject:v7 atIndexedSubscript:i];

    ++a1;
  }

  return v2;
}

id realityio::conversions::asScalarVector<pxrInternal__aapl__pxrReserved__::GfVec2d>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = *(a1 + 8 * v3);
    v7 = realityio::conversions::asScalar<double>();
    [v2 setObject:v7 atIndexedSubscript:v3];

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);

  return v2;
}

id realityio::conversions::asScalarVector<pxrInternal__aapl__pxrReserved__::GfVec2f>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = *(a1 + 4 * v3);
    v7 = realityio::conversions::asScalar<float>();
    [v2 setObject:v7 atIndexedSubscript:v3];

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);

  return v2;
}

id realityio::conversions::asScalarVector<pxrInternal__aapl__pxrReserved__::GfVec2i>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = realityio::conversions::asScalar<int>(*(a1 + 4 * v3));
    [v2 setObject:v6 atIndexedSubscript:v3];

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);

  return v2;
}

id realityio::conversions::asScalarVector<pxrInternal__aapl__pxrReserved__::GfVec3d>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  for (i = 0; i != 3; ++i)
  {
    v4 = *(a1 + 8 * i);
    v5 = realityio::conversions::asScalar<double>();
    [v2 setObject:v5 atIndexedSubscript:i];
  }

  return v2;
}

id realityio::conversions::asScalarVector<pxrInternal__aapl__pxrReserved__::GfVec3f>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  for (i = 0; i != 3; ++i)
  {
    v4 = *(a1 + 4 * i);
    v5 = realityio::conversions::asScalar<float>();
    [v2 setObject:v5 atIndexedSubscript:i];
  }

  return v2;
}

id realityio::conversions::asScalarVector<pxrInternal__aapl__pxrReserved__::GfVec3i>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  for (i = 0; i != 3; ++i)
  {
    v4 = realityio::conversions::asScalar<int>(*(a1 + 4 * i));
    [v2 setObject:v4 atIndexedSubscript:i];
  }

  return v2;
}

id realityio::conversions::asScalarVector<pxrInternal__aapl__pxrReserved__::GfVec4d>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  for (i = 0; i != 4; ++i)
  {
    v4 = *(a1 + 8 * i);
    v5 = realityio::conversions::asScalar<double>();
    [v2 setObject:v5 atIndexedSubscript:i];
  }

  return v2;
}

id realityio::conversions::asScalarVector<pxrInternal__aapl__pxrReserved__::GfVec4f>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  for (i = 0; i != 4; ++i)
  {
    v4 = *(a1 + 4 * i);
    v5 = realityio::conversions::asScalar<float>();
    [v2 setObject:v5 atIndexedSubscript:i];
  }

  return v2;
}

id realityio::conversions::asScalarVector<pxrInternal__aapl__pxrReserved__::GfVec4i>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  for (i = 0; i != 4; ++i)
  {
    v4 = realityio::conversions::asScalar<int>(*(a1 + 4 * i));
    [v2 setObject:v4 atIndexedSubscript:i];
  }

  return v2;
}

id realityio::conversions::asScalarVector<pxrInternal__aapl__pxrReserved__::GfVec2h>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = realityio::conversions::asScalar<pxrInternal__aapl__pxrReserved__::pxr_half::half>(*(a1 + 2 * v3));
    [v2 setObject:v6 atIndexedSubscript:v3];

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);

  return v2;
}

id realityio::conversions::asScalarVector<pxrInternal__aapl__pxrReserved__::GfVec3h>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  for (i = 0; i != 3; ++i)
  {
    v4 = realityio::conversions::asScalar<pxrInternal__aapl__pxrReserved__::pxr_half::half>(*(a1 + 2 * i));
    [v2 setObject:v4 atIndexedSubscript:i];
  }

  return v2;
}

id realityio::conversions::asScalarVector<pxrInternal__aapl__pxrReserved__::GfVec4h>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  for (i = 0; i != 4; ++i)
  {
    v4 = realityio::conversions::asScalar<pxrInternal__aapl__pxrReserved__::pxr_half::half>(*(a1 + 2 * i));
    [v2 setObject:v4 atIndexedSubscript:i];
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>(void *result, unsigned int *a2)
{
  v2 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v3 = result[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = v2 & (*&v3 - 1);
  }

  v6 = *(*result + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != *a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_2476A0300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2476A0424(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>(void *result, unsigned int *a2)
{
  v2 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v3 = result[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = v2 & (*&v3 - 1);
  }

  v6 = *(*result + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != *a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_2476A06C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrTfWeakPtrGetTypeID()
{
  if (RIOPxrTfWeakPtrGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrTfWeakPtrGetTypeID::onceToken, &__block_literal_global_31);
  }

  return RIOPxrTfWeakPtrGetTypeID::typeID;
}

void __RIOPxrTfWeakPtrGetTypeID_block_invoke()
{
  if (!RIOPxrTfWeakPtrGetTypeID::typeID)
  {
    RIOPxrTfWeakPtrGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrTfWeakPtrRefGetBase(uint64_t result)
{
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::GetWeakBase((result + 16));
  }

  return result;
}

uint64_t RIOPxrUsdAttributeSetValue(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v7, (a1 + 32), (a1 + 40));
    IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8);
    }

    if (IsValid)
    {
      v5 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdAttribute>((a1 + 24));
      std::recursive_mutex::lock(v5);
      v2 = pxrInternal__aapl__pxrReserved__::UsdAttribute::Set();
      std::recursive_mutex::unlock(v5);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdAttribute>(realityio::UsdLayerMutexTracker *a1)
{
  v2 = realityio::UsdLayerMutexTracker::instance(a1);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v12, a1);
    v3 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v12);
    EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v3);
    v5 = EditTarget[1];
    v10 = *EditTarget;
    v11 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
    }

    v6 = v13;
    if (v13 && atomic_fetch_add_explicit((v13 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v6 + 8))(v6);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v7 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v10);
  v8 = v11;
  if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v8 + 8))(v8);
  }

  return v7;
}

void sub_2476A0A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrUsdAttributeCopyValue(uint64_t a1)
{
  v1 = a1;
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v5, (a1 + 32), (a1 + 40));
    IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v5);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
    if (v6)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v6);
    }

    if (IsValid)
    {
      v6 = 0;
      if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
      {
        v1 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue &>(v5);
      }

      else
      {
        v1 = 0;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_2476A0BA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdAttributeCopyTypeName(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&TypeName, (a1 + 32), (a1 + 40));
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&TypeName);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5);
  }

  if (IsValid)
  {
    TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName((a1 + 24));
  }

  else
  {
LABEL_8:
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&TypeName);
  }

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(&TypeName);
}

uint64_t RIOPxrUsdAttributeGetVariability(uint64_t result)
{
  if (result)
  {
    v1 = result;
    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v4, (v1 + 32), (v1 + 40));
    IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v4);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
    if (v5)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5);
    }

    if (IsValid)
    {
      Variability = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetVariability((v1 + 24));
      if (Variability == 2)
      {
        return 2;
      }

      else
      {
        return Variability == 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t RIOPxrUsdAttributeCopyColorSpace(uint64_t result)
{
  if (result)
  {
    v1 = result;
    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v3, (v1 + 32), (v1 + 40));
    IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v3);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
    if (v4)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
    }

    if (IsValid)
    {
      pxrInternal__aapl__pxrReserved__::UsdAttribute::GetColorSpace(&v3, (v1 + 24));
      result = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken>(&v3);
      if ((v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_2476A0E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void RIOPxrUsdAttributeSetColorSpace(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v6, (a1 + 32), (a1 + 40));
    IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v6);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
    if (v7)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
    }

    if (IsValid)
    {
      v5 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdAttribute>((a1 + 24));
      std::recursive_mutex::lock(v5);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::SetColorSpace((a1 + 24), (a2 + 16));
      std::recursive_mutex::unlock(v5);
    }
  }
}

uint64_t RIOPxrUsdAttributeHasColorSpace(uint64_t result)
{
  if (result)
  {
    v1 = result;
    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v3, (v1 + 32), (v1 + 40));
    IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v3);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
    if (v4)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
    }

    if (IsValid)
    {
      return pxrInternal__aapl__pxrReserved__::UsdAttribute::HasColorSpace((v1 + 24));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t RIOPxrUsdAttributeClearColorSpace(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v5, (a1 + 32), (a1 + 40));
    IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v5);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
    if (v6)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v6);
    }

    if (IsValid)
    {
      v3 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdAttribute>((v1 + 24));
      std::recursive_mutex::lock(v3);
      v1 = pxrInternal__aapl__pxrReserved__::UsdAttribute::ClearColorSpace((v1 + 24));
      std::recursive_mutex::unlock(v3);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t RIOPxrUsdAttributeHasValue(uint64_t result)
{
  if (result)
  {
    v1 = result;
    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v3, (v1 + 32), (v1 + 40));
    IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v3);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
    if (v4)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
    }

    if (IsValid)
    {
      return pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue((v1 + 24));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t RIOPxrUsdAttributeHasAuthoredValue(uint64_t a1)
{
  if (a1)
  {
    return pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredValue((a1 + 24));
  }

  else
  {
    return pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredValue(0);
  }
}

void RIOPxrUsdAttributeBlock(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 + 24);
  }

  else
  {
    v1 = 0;
  }

  v2 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdAttribute>(v1);
  std::recursive_mutex::lock(v2);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Block(v1);

  std::recursive_mutex::unlock(v2);
}

uint64_t RIOPxrUsdAttributeClear(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 + 24);
  }

  else
  {
    v1 = 0;
  }

  v2 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdAttribute>(v1);
  std::recursive_mutex::lock(v2);
  v3 = pxrInternal__aapl__pxrReserved__::UsdAttribute::Clear(v1);
  std::recursive_mutex::unlock(v2);
  return v3;
}

void RIOPxrUsdAttributeClearAll(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1 + 24;
  }

  else
  {
    v1 = 0;
  }

  v2 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdAttribute>(v1);
  std::recursive_mutex::lock(v2);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Clear(v1);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetAllAuthoredMetadata(&v25, v1);
  v3 = v25;
  if (v25 != v26)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::ClearMetadata(v1, (v3 + 4));
      v4 = v3[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != v26);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v21, (v1 + 8), (v1 + 16));
  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v19, v21);
  v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v19);
  EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v7);
  v9 = *(EditTarget + 8);
  v27 = *EditTarget;
  v28 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::_Data(v29, EditTarget + 16);
  v30 = *(EditTarget + 56);
  v10 = v20;
  if (v20 && atomic_fetch_add_explicit((v20 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v10 + 8))(v10);
  }

  v19 = v27;
  v20 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1u, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v1, &v17);
  pxrInternal__aapl__pxrReserved__::UsdEditTarget::GetPropertySpecForScenePath(&v18, &v27, &v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
  v11 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v19);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(&v16, &v18);
  MEMORY[0x24C1A5F90](&v17, v11, &v16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
  pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v19);
  v15 = v17;
  if (v17)
  {
    atomic_fetch_add(v17, 1u);
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::RemovePropertyIfHasOnlyRequiredFields();
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v15);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v17);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v18);
  v12 = v20;
  if (v20 && atomic_fetch_add_explicit((v20 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v12 + 8))(v12);
  }

  pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::~_Data(v29);
  v13 = v28;
  if (v28 && atomic_fetch_add_explicit((v28 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v13 + 8))(v13);
  }

  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v23);
  if (v22)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v22);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v25, v26[0]);
  std::recursive_mutex::unlock(v2);
  v14 = *MEMORY[0x277D85DE8];
}

void sub_2476A157C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CFMutableArrayRef RIOPxrUsdAttributeCopyTimeSamples(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamples();
  }

  return CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
}

void sub_2476A17C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrUsdAttributeAddConnection(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 + 24);
  }

  else
  {
    v1 = 0;
  }

  v2 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdAttribute>(v1);
  std::recursive_mutex::lock(v2);
  v3 = pxrInternal__aapl__pxrReserved__::UsdAttribute::AddConnection();
  std::recursive_mutex::unlock(v2);
  return v3;
}

uint64_t RIOPxrUsdAttributeRemoveConnection(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = (a1 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdAttribute>(v3);
  std::recursive_mutex::lock(v4);
  v5 = pxrInternal__aapl__pxrReserved__::UsdAttribute::RemoveConnection(v3, (a2 + 16));
  std::recursive_mutex::unlock(v4);
  return v5;
}

uint64_t RIOPxrUsdAttributeSetConnections(uint64_t a1, CFArrayRef theArray)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v7 = ValueAtIndex;
      v8 = v15;
      if (v15 >= v16)
      {
        v9 = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>(&v14, ValueAtIndex + 4);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v15, ValueAtIndex + 4);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v8 + 1, v7 + 5);
        v9 = v8 + 2;
      }

      v15 = v9;
    }
  }

  if (a1)
  {
    v10 = (a1 + 24);
  }

  else
  {
    v10 = 0;
  }

  v11 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdAttribute>(v10);
  std::recursive_mutex::lock(v11);
  v12 = pxrInternal__aapl__pxrReserved__::UsdAttribute::SetConnections();
  std::recursive_mutex::unlock(v11);
  v17 = &v14;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v17);
  return v12;
}

void sub_2476A19E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  std::recursive_mutex::unlock(v12);
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdAttributeClearConnections(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 + 24);
  }

  else
  {
    v1 = 0;
  }

  v2 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdAttribute>(v1);
  std::recursive_mutex::lock(v2);
  v3 = pxrInternal__aapl__pxrReserved__::UsdAttribute::ClearConnections(v1);
  std::recursive_mutex::unlock(v2);
  return v3;
}

uint64_t RIOPxrUsdAttributeCopyConnections()
{
  memset(v1, 0, sizeof(v1));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections();
  v2 = v1;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v2);
  return 0;
}

void sub_2476A1B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdAttributeHasAuthoredConnections(uint64_t a1)
{
  if (a1)
  {
    return pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredConnections((a1 + 24));
  }

  else
  {
    return pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredConnections(0);
  }
}

uint64_t realityio::TextEntityBuilder::kOutputName(realityio::TextEntityBuilder *this)
{
  {
    operator new();
  }

  return realityio::TextEntityBuilder::kOutputName(void)::kOutputName;
}

void sub_2476A1C3C(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::TextEntityBuilder::TextEntityBuilder(realityio::TextEntityBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v6, "TextEntityBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kTextEntityBuilderIdentifier);
  realityio::generateTextPrimDirtyStageSubscription(&v4);
  v8[0] = &unk_28595B2E0;
  v8[3] = v8;
  v7[0] = &unk_28595B360;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_2476A1DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a24);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v24 - 56);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void *realityio::TextEntityBuilder::run(void *this, realityio::Inputs *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!this[35])
  {
    v3 = this;
    v4 = realityio::EntityBuilder::kInputName(this);
    realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v4, v16);
    if (v16[0])
    {
      v15 = v17;
      if (v17)
      {
        RERetain();
        v5 = *(a2 + 6);
        *&buf = &unk_28595B3E0;
        *(&buf + 1) = v3;
        v19 = &v15;
        p_buf = &buf;
        (*(*v5 + 16))(v5, &buf);
        v6 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&buf);
        v8 = v3[2];
        v7 = v3[3];
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        realityio::TextEntityBuilder::kOutputName(v6);
        realityio::Outputs::storeValue<realityio::WrappedRERef<REEntity *> &>(v8);
      }
    }

    else
    {
      v15 = 0;
    }

    v9 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&buf, v9, (a2 + 32));
    PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(&buf);
    if ((p_buf & 7) != 0)
    {
      atomic_fetch_add_explicit((p_buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
    v11 = *(&buf + 1);
    if (*(&buf + 1))
    {
      v11 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&buf + 1));
    }

    v12 = *(realityio::logObjects(v11) + 24);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(PrimPath);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = Text;
      _os_log_error_impl(&dword_247485000, v12, OS_LOG_TYPE_ERROR, "Unable to create text entity at path (%s) because the parent entity does not exist.\n", &buf, 0xCu);
    }

    realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v15);
    this = realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v16);
  }

  v13 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2476A201C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  v7 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va2);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(va);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va1);
  _Unwind_Resume(a1);
}

void *realityio::TextEntityBuilder::clear(realityio::TextEntityBuilder *this, realityio::Inputs *a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = realityio::TextEntityBuilder::kOutputName(this);
  std::mutex::lock((v5 + 64));
  if (v5 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v5 + 40, v6))
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v5 + 40), v6);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v5, v6);
  std::mutex::unlock((v5 + 64));
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v7 = *(a2 + 6);
  v11[0] = &unk_28595B460;
  v11[1] = this;
  v11[3] = v11;
  (*(*v7 + 16))(v7, v11);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v11);
  v11[0] = 0;
  v8 = *(this + 35);
  if (v8)
  {
    *(this + 35) = 0;
    v11[0] = v8;
  }

  result = realityio::WrappedRERef<REEntity *>::~WrappedRERef(v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476A21E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::TextEntityBuilder::~TextEntityBuilder(realityio::TextEntityBuilder *this)
{
  *this = &unk_28595B268;
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(this + 35);
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_28595B268;
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(this + 35);
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

void sub_2476A2544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TextEntityBuilder::TextEntityBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::TextEntityBuilder::TextEntityBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2476A2764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TextEntityBuilder::TextEntityBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::TextEntityBuilder::TextEntityBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::TextEntityBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TextEntityBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595B3E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::TextEntityBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TextEntityBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = REEntityCreate();
  RENetworkComponentGetComponentType();
  v11[0] = &unk_28594FEA8;
  v11[3] = v11;
  v4 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(v11, v4);
  RENetworkMarkComponentDirty();
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v11);
  v11[0] = v3;
  v5 = *(v2 + 280);
  if (v5 != v3)
  {
    *(v2 + 280) = v3;
    v11[0] = v5;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(v11);
  v6 = *(v2 + 280);
  v7 = **(a1 + 16);
  REEntitySetParent();
  v8 = *(v2 + 280);
  result = REEntitySetName();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<realityio::TextEntityBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TextEntityBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::TextEntityBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::TextEntityBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595B460;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::TextEntityBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::TextEntityBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  result = *(*(a1 + 8) + 280);
  if (result)
  {
    return REEntitySetParent();
  }

  return result;
}

uint64_t std::__function::__func<realityio::TextEntityBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::TextEntityBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::LiveSceneManager::LiveSceneManager(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28595B4E0;
  *(a1 + 24) = a2;
  *(a1 + 32) = *a4;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef((a1 + 32));
  *(a1 + 40) = 0;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0;
  MEMORY[0x24C1A8FC0](a1 + 88);
  MEMORY[0x24C1A8FC0](a1 + 152);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = a6;
  *(a1 + 240) = a7;
  *(a1 + 248) = a5;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = a8;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = a1 + 312;
  *(a1 + 328) = 850045863;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 416) = 0;
  *(a1 + 448) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  v13 = dispatch_queue_create("com.apple.realityio.live-scene-update-queue", 0);
  v14 = *(a1 + 216);
  *(a1 + 216) = v13;

  if (*(a1 + 288) == 1)
  {
    v16 = *realityio::logObjects(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_247485000, v16, OS_LOG_TYPE_DEFAULT, "ImportSession using TargetGeneration for additional builder dirty propagation RealityIO/TargetDirtying FeatureFlag", v18, 2u);
    }
  }

  return a1;
}

void sub_2476A2C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<realityio::LiveSceneManager::AssetRecord>::__destroy_vector::operator()[abi:ne200100](&a9);
  v13 = *(v9 + 496);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(v9 + 480);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::unique_ptr<realityio::LiveSceneManager::LiveSceneUpdateContext>::reset[abi:ne200100]((v9 + 464), 0);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v9 + 424);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v9 + 392);
  std::mutex::~mutex((v9 + 328));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>>>::destroy(v9 + 304, *(v9 + 312));
  std::vector<realityio::LiveSceneManager::CompatibilityFault>::__destroy_vector::operator()[abi:ne200100](&a9);

  std::recursive_mutex::~recursive_mutex((v9 + 152));
  std::recursive_mutex::~recursive_mutex((v11 + 6));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((v11 + 2));
  v15 = *(v9 + 48);
  *(v9 + 48) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *v11;
  *v11 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v10);
  v17 = *(v9 + 16);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  _Unwind_Resume(a1);
}

void realityio::LiveSceneManager::~LiveSceneManager(realityio::LiveSceneManager *this)
{
  *this = &unk_28595B4E0;
  v2 = *(this + 37);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v8 = (this + 504);
  std::vector<realityio::LiveSceneManager::AssetRecord>::__destroy_vector::operator()[abi:ne200100](&v8);
  v3 = *(this + 62);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 60);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::unique_ptr<realityio::LiveSceneManager::LiveSceneUpdateContext>::reset[abi:ne200100](this + 58, 0);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 424);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 392);
  std::mutex::~mutex((this + 328));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>>>::destroy(this + 304, *(this + 39));
  v8 = (this + 256);
  std::vector<realityio::LiveSceneManager::CompatibilityFault>::__destroy_vector::operator()[abi:ne200100](&v8);

  std::recursive_mutex::~recursive_mutex((this + 152));
  std::recursive_mutex::~recursive_mutex((this + 88));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 56);
  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(this + 4);
  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

{
  realityio::LiveSceneManager::~LiveSceneManager(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t realityio::LiveSceneManager::performBlockLaterOnEngineQueue(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 464);
  if (v3)
  {

    return std::vector<std::function<void ()(void)>>::push_back[abi:ne200100]((v3 + 24), a2);
  }

  else
  {
    v5 = *(a2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = *(*v5 + 48);

    return v6();
  }
}

uint64_t std::vector<std::function<void ()(void)>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)> const&>(a1, a2);
  }

  else
  {
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](a1[1], a2);
    result = v3 + 32;
    a1[1] = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t realityio::LiveSceneManager::performBlockSyncOnEngineQueue(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 472);
  if (v3)
  {
    v4 = *(*v3 + 16);

    return v4();
  }

  else
  {
    v6 = *(a2 + 24);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v7 = *(*v6 + 48);

    return v7();
  }
}

uint64_t realityio::LiveSceneManager::enableEntityOnCompletion(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 464);
  v3 = v2[14];
  if (v3 >= v2[15])
  {
    result = std::vector<realityio::WrappedRERef<REEntity *>>::__emplace_back_slow_path<realityio::WrappedRERef<REEntity *> const&>(v2 + 13, a2);
  }

  else
  {
    v4 = *a2;
    *v3 = *a2;
    if (v4)
    {
      RERetain();
    }

    result = (v3 + 1);
    v2[14] = v3 + 1;
  }

  v2[14] = result;
  return result;
}

void sub_2476A3194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

void realityio::LiveSceneManager::performLiveSceneUpdateMaybeAsync(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 24) + 16) + 16) && REEngineGetServiceLocator() && MEMORY[0x24C1A4230]())
  {
    v4 = REAssetManagerGetEngineQueue();
  }

  else
  {
    v4 = 0;
  }

  if (*(a2 + 64) == 1)
  {
    dispatch_assert_queue_V2(v4);
  }

  v5 = *(a1 + 16);
  if (!v5 || (v6 = *(a1 + 8), (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  v13 = (*(a1 + 24) - 16);
  CFRetain(v13);
  v9 = *(*(a1 + 24) + 8);
  v12 = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  std::mutex::lock((a1 + 328));
  if (!*(a1 + 464))
  {
    std::function<void ()(void)>::operator=((a1 + 392), a2);
    std::function<void ()(void)>::operator=((a1 + 424), a2 + 32);
    *(a1 + 456) = *(a2 + 64);
    operator new();
  }

  v11 = *realityio::logObjects(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247485000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to start a live update while update already in progress -- queuing another.", buf, 2u);
  }

  *(a1 + 457) = 1;
  std::mutex::unlock((a1 + 328));
  realityio::WrappedCFRef<void const*>::~WrappedCFRef(&v12);
  realityio::WrappedCFRef<RIOImportSession *>::~WrappedCFRef(&v13);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
}

void sub_2476A36C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v16 = va_arg(va1, const void *);
  realityio::LiveSceneManager::performLiveSceneUpdateMaybeAsync(realityio::LiveSceneManager::UpdateFramingInfo)::$_0::~$_0(v13 + 32);
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  realityio::WrappedCFRef<void const*>::~WrappedCFRef(va);
  realityio::WrappedCFRef<RIOImportSession *>::~WrappedCFRef(va1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);

  _Unwind_Resume(a1);
}

const void **realityio::WrappedCFRef<RIOImportSession *>::operator=(const void **a1, const void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      CFRelease(v3);
      v4 = *a2;
    }

    *a1 = v4;
    if (v4)
    {
      CFRetain(v4);
    }
  }

  return a1;
}

void ___ZN9realityio16LiveSceneManager32performLiveSceneUpdateMaybeAsyncENS0_17UpdateFramingInfoE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[7];
  v4[0] = a1[6];
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  realityio::LiveSceneManager::updateLiveSceneImpl(v2, v4);
}

void sub_2476A383C(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  v4 = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(exception_object);
    pxrInternal__aapl__pxrReserved__::TfBaseException::TfBaseException(va, exception_ptr);
    __cxa_begin_catch(exception_object);
    pxrInternal__aapl__pxrReserved__::ArchPrintStackFrames();
    MEMORY[0x24C1A52F0](va);
    __cxa_end_catch();
    JUMPOUT(0x2476A3814);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_ea8_32c99_ZTSKZN9realityio16LiveSceneManager32performLiveSceneUpdateMaybeAsyncENS0_17UpdateFramingInfoEE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 64) = *(a2 + 64);
  return result;
}

void __destroy_helper_block_ea8_32c99_ZTSKZN9realityio16LiveSceneManager32performLiveSceneUpdateMaybeAsyncENS0_17UpdateFramingInfoEE3__0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t realityio::LiveSceneManager::performLiveSceneUpdateMaybeAsync(realityio::LiveSceneManager::UpdateFramingInfo)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t realityio::LiveSceneManager::updateLiveScene(realityio::LiveSceneManager *this, unsigned __int8 a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28595BC38;
  v7[1] = this;
  v7[3] = v7;
  v8[0] = &unk_28595BCB8;
  v8[3] = v8;
  v9 = a2;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v5, v7);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v6, v8);
  v6[16] = v9;
  realityio::LiveSceneManager::performLiveSceneUpdateMaybeAsync(this, v5);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v8);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476A3A7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3 + 32);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void realityio::LiveSceneManager::updateAsset(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, unsigned __int8 a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a1 + 32));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&buf, v6, a2);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&buf);
  if ((p_buf & 7) != 0)
  {
    atomic_fetch_add_explicit((p_buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  v8 = *(&buf + 1);
  if (*(&buf + 1))
  {
    v8 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&buf + 1));
  }

  if (IsValid)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, a2 + 1);
    v14 = a1;
    p_buf = 0;
    *&buf = &unk_28595BD38;
    DWORD2(buf) = v12;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
    HIDWORD(buf) = v13;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
    v18 = v14;
    p_buf = &buf;
    v20[3] = 0;
    v21 = a3;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v15, &buf);
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v16, v20);
    v16[16] = v21;
    realityio::LiveSceneManager::performLiveSceneUpdateMaybeAsync(a1, v15);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v16);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v15);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v20);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&buf);
  }

  else
  {
    v9 = *(realityio::logObjects(v8) + 16);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = Text;
      _os_log_impl(&dword_247485000, v9, OS_LOG_TYPE_DEFAULT, "Invalid Prim for updateAsset %s", &buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void *realityio::LiveSceneManager::addAsset(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4)
{
  if (*(a3 + 23) < 0)
  {
    if (!*(a3 + 8))
    {
      goto LABEL_7;
    }

    v8 = *a3;
    goto LABEL_6;
  }

  if (*(a3 + 23))
  {
LABEL_6:
    v9 = *a2;
    REAssetSetMetadataString();
  }

LABEL_7:
  v11 = *a2;
  if (v11)
  {
    RERetain();
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, a4);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14, a4 + 1);
  std::vector<realityio::LiveSceneManager::AssetRecord>::push_back[abi:ne200100]((a1 + 504), &v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v11);
}

void sub_2476A3E38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<realityio::LiveSceneManager::AssetRecord>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<realityio::LiveSceneManager::AssetRecord>::__emplace_back_slow_path<realityio::LiveSceneManager::AssetRecord>(a1, a2);
  }

  else
  {
    std::vector<realityio::LiveSceneManager::AssetRecord>::__construct_one_at_end[abi:ne200100]<realityio::LiveSceneManager::AssetRecord>(a1, a2);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

void realityio::LiveSceneManager::visitDirtyPrim(pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>> &,realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>> &,realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>> &)::$_0::operator()(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken **a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v5 = *a2;
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(*a1, *a2);
  if ((v6 & 1) == 0)
  {
    goto LABEL_54;
  }

  if (**(a1 + 8) == 1 && ((pxrInternal__aapl__pxrReserved__::TfToken::operator==() & 1) != 0 || pxrInternal__aapl__pxrReserved__::TfToken::operator==()))
  {
    realityio::BuilderDependencyDAG::getBuilderAtPrimPathWithBuilderIdentifier(*(v4 + 248), *(a1 + 24), v5, buf);
    if (!*buf)
    {
      v7 = *(*a2 + 6);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v8 = *(a1 + 24);
      (*(*v7 + 48))(v47);
      v9 = *v47;
      v47[0] = 0;
      v47[1] = 0;
      v10 = *&buf[8];
      *buf = v9;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        if (v47[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47[1]);
        }
      }

      *(*buf + 168) = *(v4 + 24);
      v11 = *(a1 + 32);
      std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](v11, buf);
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan &,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(*v11, *(v11 + 8), v47, (*(v11 + 8) - *v11) >> 4);
    }

    v12 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_54;
    }

LABEL_53:
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    goto LABEL_54;
  }

  v14 = *(*a2 + 1);
  v13 = *(*a2 + 2);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (**(a1 + 8) == (realityio::DirtyStageSubscription::numberOfStageMetadataOnlyPredicates(v14) == (*(v14 + 2) - *(v14 + 1)) >> 4))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(*(a1 + 40)))
    {
      v16 = *(v4 + 40);
      v15 = *(v4 + 48);
      v17 = *(a1 + 48);
      v18 = *(a1 + 24);
      if (v15)
      {
        v19 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((v15 + 8));
      }

      else
      {
        v19 = 0;
      }

      v21 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v16 + 1);
      *buf = &unk_28595B5F0;
      *&buf[8] = v16;
      v50 = buf;
      v47[0] = &unk_28595B680;
      v47[1] = v16;
      v48 = v47;
      v44 = &unk_28595B700;
      v45 = v16;
      v46 = &v44;
      v41 = &unk_28595B780;
      v42 = v16;
      v43 = &v41;
      v20 = realityio::DirtyStageSubscription::validate(v14, v18, v19, v21, (v16 + 2), v17, buf, v47, &v44, &v41);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](&v41);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](&v44);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v47);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](buf);
    }

    else
    {
      v20 = 1;
    }

    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(*(a1 + 40)))
    {
      v23 = *(v4 + 40);
      v22 = *(v4 + 48);
      v40 = *(a1 + 48);
      v24 = *(a1 + 24);
      if (v22)
      {
        v25 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((v22 + 8));
      }

      else
      {
        v25 = 0;
      }

      v27 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v23 + 1);
      *buf = &unk_28595B810;
      *&buf[8] = v23;
      v50 = buf;
      v47[0] = &unk_28595B890;
      v47[1] = v23;
      v48 = v47;
      v44 = &unk_28595B910;
      v45 = v23;
      v46 = &v44;
      v41 = &unk_28595B990;
      v42 = v23;
      v43 = &v41;
      v26 = realityio::DirtyStageSubscription::validate(v14, v24, v25, v27, (v23 + 2), v40, buf, v47, &v44, &v41);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](&v41);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](&v44);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v47);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](buf);
    }

    else
    {
      v26 = 0;
    }

    realityio::BuilderDependencyDAG::getBuilderAtPrimPathWithBuilderIdentifier(*(v4 + 248), *(a1 + 24), v5, v47);
    if ((v20 | v26 ^ (v47[0] != 0)))
    {
      if (((v47[0] == 0) & v26) == 1)
      {
        v28 = *(*a2 + 6);
        if (!v28)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v29 = *(a1 + 24);
        (*(*v28 + 48))(buf);
        v30 = *buf;
        *buf = 0;
        *&buf[8] = 0;
        v31 = v47[1];
        *v47 = v30;
        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          v31 = *&buf[8];
          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
          }

          v32 = v47[0];
        }

        else
        {
          v32 = v30;
        }

        ++totalBuilders;
        if (v32)
        {
          *(v32 + 21) = *(v4 + 24);
          v34 = *(a1 + 32);
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](v34, v47);
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan &,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(*v34, *(v34 + 8), buf, (*(v34 + 8) - *v34) >> 4);
        }

        else
        {
          v35 = *(realityio::logObjects(v31) + 16);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(*(a1 + 24));
            v37 = *v5 & 0xFFFFFFFFFFFFFFF8;
            if (v37)
            {
              v38 = (v37 + 16);
              if (*(v37 + 39) < 0)
              {
                v38 = *v38;
              }
            }

            else
            {
              v38 = "";
            }

            *buf = 136315394;
            *&buf[4] = Text;
            *&buf[12] = 2080;
            *&buf[14] = v38;
            _os_log_impl(&dword_247485000, v35, OS_LOG_TYPE_DEFAULT, "Builder at prim path (%s) with identifier (%s) could not be generated.", buf, 0x16u);
          }
        }
      }

      else if ((v47[0] == 0) | v26 & 1)
      {
        if (!((v47[0] == 0) | (v26 ^ 1) & 1))
        {
          realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>>::insert(*(a1 + 64), v47);
        }
      }

      else
      {
        v33 = *(a1 + 56);
        std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](v33, v47);
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan &,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(*v33, *(v33 + 8), buf, (*(v33 + 8) - *v33) >> 4);
      }
    }

    if (v47[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47[1]);
    }
  }

  if (v13)
  {
    v12 = v13;
    goto LABEL_53;
  }

LABEL_54:
  v39 = *MEMORY[0x277D85DE8];
}

void sub_2476A4498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(a1);
}

const void **realityio::LiveSceneManager::addMetadataToAssets(std::unordered_set<std::shared_ptr<realityio::Builder>> const&)::$_0::operator()(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
  REAssetSetMetadataString();
  v6 = REAssetCopyMetadataString();
  v12 = v6;
  if (v6)
  {
    realityio::CFStringCopyUTF8String(v6, &v8);
    if (v8 == 1)
    {
      REAssetSetDebugName();
      if ((v8 & 1) != 0 && v11 < 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
    REAssetSetDebugName();
  }

  __p = 0;
  v10 = 0;
  v8 = 0;
  if (realityio::ImportSessionImpl::getAssetURLFromBundle(*(*(a1 + 24) + 16), a2, this, &v8))
  {
    REAssetSetMetadataString();
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }

  return realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v12);
}