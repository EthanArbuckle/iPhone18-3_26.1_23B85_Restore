__n128 std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_7,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_7>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285958E08;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_7,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_7>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v47 = v1[1];
  if (*v1 == v47)
  {
    return;
  }

  v46 = *(a1 + 16);
  do
  {
    v3 = *(a1 + 32);
    v49 = *(*(*(**(a1 + 24) + 40) + 16) + 16);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v50 = v4;
    v51 = *v2;
    v58[0] = 0;
    v58[1] = 0;
    v57 = v58;
    v6 = *(v3 + 64);
    v7 = (v3 + 72);
    if (v6 == (v3 + 72))
    {
      goto LABEL_84;
    }

    do
    {
      v8 = v58[0];
      if (v57 == v58)
      {
        v10 = v58;
        if (!v58[0])
        {
LABEL_11:
          v55 = v58;
LABEL_16:
          operator new();
        }

        goto LABEL_13;
      }

      v9 = v58;
      if (v58[0])
      {
        do
        {
          v10 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v10 = v9[2];
          v11 = *v10 == v9;
          v9 = v10;
        }

        while (v11);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v10 + 28), (v6 + 28)))
      {
        if (!v58[0])
        {
          goto LABEL_11;
        }

LABEL_13:
        v55 = v10;
        v12 = v10 + 1;
        goto LABEL_15;
      }

      v12 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(&v57, &v55, (v6 + 28));
LABEL_15:
      if (!*v12)
      {
        goto LABEL_16;
      }

      v13 = v6[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v6[2];
          v11 = *v14 == v6;
          v6 = v14;
        }

        while (!v11);
      }

      v6 = v14;
    }

    while (v14 != v7);
    v15 = v57;
    if (v57 != v58)
    {
      v16 = (v51 + 48);
      do
      {
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v55, v15 + 7);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v55 + 1, v15 + 8);
        v56 = *(v15 + 9);
        v17 = *v16;
        if (*v16)
        {
          v18 = (v51 + 48);
          do
          {
            v19 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v17 + 4, &v55);
            if (v19)
            {
              v20 = 1;
            }

            else
            {
              v20 = 0;
            }

            if (!v19)
            {
              v18 = v17;
            }

            v17 = v17[v20];
          }

          while (v17);
          if (v18 != v16 && (pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v55, v18 + 4) & 1) == 0)
          {
            v54 = 0;
            TimelineDefinitionForBlendShapeSamples = realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::createTimelineDefinitionForBlendShapeSamples(v51, (v18 + 5), v56);
            if (v54)
            {
              RERelease();
            }

            v54 = TimelineDefinitionForBlendShapeSamples;
            if (TimelineDefinitionForBlendShapeSamples)
            {
              ServiceLocator = REEngineGetServiceLocator();
              MEMORY[0x24C1A4230](ServiceLocator);
              v53 = 0;
              TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
              if (v53)
              {
                RERelease();
              }

              v53 = TimelineAsset;
              if (TimelineAsset)
              {
                String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v51);
                v25 = String;
                if (*(String + 23) >= 0)
                {
                  v26 = *(String + 23);
                }

                else
                {
                  v26 = *(String + 8);
                }

                std::string::basic_string[abi:ne200100](&v59, v26 + 25);
                if (v60 >= 0)
                {
                  v27 = &v59;
                }

                else
                {
                  v27 = v59;
                }

                if (v26)
                {
                  if (v25[23] >= 0)
                  {
                    v28 = v25;
                  }

                  else
                  {
                    v28 = *v25;
                  }

                  memmove(v27, v28, v26);
                }

                strcpy(v27 + v26, "_blendShapeAnimationAsset");
                v52 = v53;
                if (v53)
                {
                  RERetain();
                }

                if (v60 >= 0)
                {
                  v29 = &v59;
                }

                else
                {
                  v29 = v59;
                }

                realityio::Builder::addAsset(v46, &v52, v29);
                realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v52);
                v30 = *(v50 + 8);
                if (v30 >= *(v50 + 16))
                {
                  v32 = std::vector<realityio::WrappedRERef<REAsset *>>::__emplace_back_slow_path<realityio::WrappedRERef<REAsset *> const&>(v50, &v53);
                  v33 = v50;
                }

                else
                {
                  v31 = v53;
                  *v30 = v53;
                  if (v31)
                  {
                    RERetain();
                  }

                  v32 = (v30 + 1);
                  v33 = v50;
                  *(v50 + 8) = v30 + 1;
                }

                *(v33 + 8) = v32;
                v35 = *(v5 + 8);
                v34 = *(v5 + 16);
                if (v35 >= v34)
                {
                  v37 = (v35 - *v5) >> 3;
                  if ((v37 + 1) >> 61)
                  {
                    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
                  }

                  v38 = v34 - *v5;
                  v39 = v38 >> 2;
                  if (v38 >> 2 <= (v37 + 1))
                  {
                    v39 = v37 + 1;
                  }

                  if (v38 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v40 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v40 = v39;
                  }

                  if (v40)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>>(v40);
                  }

                  *(8 * v37) = v51;
                  v36 = 8 * v37 + 8;
                  v41 = *(v5 + 8) - *v5;
                  v42 = (8 * v37 - v41);
                  memcpy(v42, *v5, v41);
                  v43 = *v5;
                  *v5 = v42;
                  *(v5 + 8) = v36;
                  *(v5 + 16) = 0;
                  if (v43)
                  {
                    operator delete(v43);
                  }
                }

                else
                {
                  *v35 = v51;
                  v36 = (v35 + 1);
                }

                *(v5 + 8) = v36;
                if (SHIBYTE(v60) < 0)
                {
                  operator delete(v59);
                }
              }

              realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v53);
            }

            realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(&v54);
          }
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v55);
        v44 = v15[1];
        if (v44)
        {
          do
          {
            v45 = v44;
            v44 = *v44;
          }

          while (v44);
        }

        else
        {
          do
          {
            v45 = v15[2];
            v11 = *v45 == v15;
            v15 = v45;
          }

          while (!v11);
        }

        v15 = v45;
      }

      while (v45 != v58);
    }

LABEL_84:
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(&v57, v58[0]);
    ++v2;
  }

  while (v2 != v47);
}

void sub_24766DCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, void *a21)
{
  if (*(v21 - 81) < 0)
  {
    operator delete(*(v21 - 104));
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a16);
  realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(&a17);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,unsigned int>::~pair(&a18);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(&a20, a21);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_7,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_7>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24766DF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v20 = *v18;
  if (*v18)
  {
    v15[3].__vftable = v20;
    operator delete(v20);
  }

  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&a15);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v17);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(v16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v21);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285958E88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *std::__shared_ptr_emplace<realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 40);
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v4);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef((a1 + 32));
  return realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 24));
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285958ED8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT>>>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_285958F28;
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t realityio::InputOutputWrapperObject<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT>>::getRawValue(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  return v2;
}

__n128 std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285958F58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8>,void ()(void)>::operator()(uint64_t a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  v2 = **(a1 + 8);
  REAnimationComponentGetComponentType();
  v6[0] = &unk_285958FC8;
  v6[1] = v1;
  v6[3] = v6;
  v3 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(v6, v3);
  RENetworkMarkComponentDirty();
  result = std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24766E2C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8::operator() const(void)::{lambda(REComponent *)#1},std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8::operator() const(void)::{lambda(REComponent *)#1}>,void ()(REComponent *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285958FC8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8::operator() const(void)::{lambda(REComponent *)#1},std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8::operator() const(void)::{lambda(REComponent *)#1}>,void ()(REComponent *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  realityio::Builder::addComponent(*(a1 + 8), *a2);
  result = REAnimationComponentActiveAnimationCount();
  if (result)
  {

    return MEMORY[0x282153810](v2);
  }

  return result;
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8::operator() const(void)::{lambda(REComponent *)#1},std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8::operator() const(void)::{lambda(REComponent *)#1}>,void ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

char **RIO_MTLX::Value::isA<int>(char **result)
{
  if (result)
  {
    v1 = **result;
  }

  return result;
}

_BYTE *RIO_MTLX::TypedValue<int>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::TypedValue<int>::TYPE(void)::v, "integer");
  }

  return RIO_MTLX::TypedValue<int>::TYPE(void)::v;
}

uint64_t RIO_MTLX::toValueString<int>@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_24766E574(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIO_MTLX::anonymous namespace::dataToString<int>(unsigned int *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
  v4 = v9[0];
  *(&v9[1] + *(v9[0] - 24)) &= 0xFFFFFEFB;
  *(&v9[2] + *(v4 - 24)) = 6;
  MEMORY[0x24C1A8F00](&v10, *a1);
  std::stringbuf::str();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  v9[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v10 = v5;
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C1A9110](&v14);
}

void sub_24766E7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t RIO_MTLX::anonymous namespace::stringToData<int>(const std::string *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5, a1, 24);
  MEMORY[0x24C1A8E60](v5, a2);
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v5[2] = v3;
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C1A9110](&v9);
}

void sub_24766E934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void RIO_MTLX::TypedValue<BOOL>::TYPE()
{
  if ((atomic_load_explicit(&_MergedGlobals_44, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_44))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE53428, "BOOLean");

    __cxa_guard_release(&_MergedGlobals_44);
  }
}

std::string *RIO_MTLX::toValueString<BOOL>@<X0>(RIO_MTLX *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
}

void sub_24766EA04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *RIO_MTLX::anonymous namespace::dataToString<BOOL>(RIO_MTLX *a1, std::string *a2)
{
  if (*a1 == 1)
  {
    v3 = RIO_MTLX::VALUE_STRING_TRUE(a1);
  }

  else
  {
    v3 = RIO_MTLX::VALUE_STRING_FALSE(a1);
  }

  return std::string::operator=(a2, v3);
}

_BYTE *RIO_MTLX::anonymous namespace::stringToData<BOOL>(uint64_t a1, char *a2)
{
  result = RIO_MTLX::VALUE_STRING_TRUE(a1);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v7 = result[23];
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(result + 1);
  }

  if (v6 == v7)
  {
    v9 = v5 >= 0 ? a1 : *a1;
    v10 = v8 >= 0 ? result : *result;
    result = memcmp(v9, v10, v6);
    if (!result)
    {
      v17 = 1;
      goto LABEL_29;
    }
  }

  result = RIO_MTLX::VALUE_STRING_FALSE(result);
  v11 = *(a1 + 23);
  if (v11 >= 0)
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = *(a1 + 8);
  }

  v13 = result[23];
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(result + 1);
  }

  if (v12 == v13)
  {
    v15 = v11 >= 0 ? a1 : *a1;
    v16 = v14 >= 0 ? result : *result;
    result = memcmp(v15, v16, v12);
    if (!result)
    {
      v17 = 0;
LABEL_29:
      *a2 = v17;
    }
  }

  return result;
}

char **RIO_MTLX::Value::isA<float>(char **result)
{
  if (result)
  {
    v1 = **result;
  }

  return result;
}

_BYTE *RIO_MTLX::TypedValue<float>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::TypedValue<float>::TYPE(void)::v, "float");
  }

  return RIO_MTLX::TypedValue<float>::TYPE(void)::v;
}

uint64_t RIO_MTLX::toValueString<float>@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_24766EC68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIO_MTLX::anonymous namespace::dataToString<float>(int *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  v4 = v10[0];
  *(&v10[1] + *(v10[0] - 24)) &= 0xFFFFFEFB;
  *(&v10[2] + *(v4 - 24)) = 6;
  v5 = *a1;
  std::ostream::operator<<();
  std::stringbuf::str();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v8;
  *(a2 + 16) = v9;
  v10[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v10[2] = v6;
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C1A9110](&v14);
}

void sub_24766EE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t RIO_MTLX::anonymous namespace::stringToData<float>(const std::string *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5, a1, 24);
  MEMORY[0x24C1A8E50](v5, a2);
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v5[2] = v3;
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C1A9110](&v9);
}

void sub_24766F028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

char **RIO_MTLX::Value::isA<RIO_MTLX::Color3>(char **result)
{
  if (result)
  {
    v1 = **result;
  }

  return result;
}

uint64_t *RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(&RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE(void)::v, "color3");
  }

  return &RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE(void)::v;
}

void RIO_MTLX::toValueString<RIO_MTLX::Color3>(int *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = 3;
  do
  {
    __p = 0;
    v13 = 0;
    v14 = 0;
    if (v14 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v14 >= 0)
    {
      v6 = HIBYTE(v14);
    }

    else
    {
      v6 = v13;
    }

    v7 = std::string::append(a2, p_p, v6);
    if (v4 != 1)
    {
      v8 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v7);
      v9 = v8[23];
      if (v9 >= 0)
      {
        v10 = v8;
      }

      else
      {
        v10 = *v8;
      }

      if (v9 >= 0)
      {
        v11 = v8[23];
      }

      else
      {
        v11 = *(v8 + 1);
      }

      std::string::append(a2, v10, v11);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    ++a1;
    --v4;
  }

  while (v4);
}

void sub_24766F1E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

char **RIO_MTLX::Value::isA<RIO_MTLX::Color4>(char **result)
{
  if (result)
  {
    v1 = **result;
  }

  return result;
}

uint64_t *RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(&RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE(void)::v, "color4");
  }

  return &RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE(void)::v;
}

char **RIO_MTLX::Value::isA<RIO_MTLX::Vector2>(char **result)
{
  if (result)
  {
    v1 = **result;
  }

  return result;
}

uint64_t *RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(&RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE(void)::v, "vector2");
  }

  return &RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE(void)::v;
}

void RIO_MTLX::toValueString<RIO_MTLX::Vector2>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    __p = 0;
    v15 = 0;
    v16 = 0;
    if (v16 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v16 >= 0)
    {
      v8 = HIBYTE(v16);
    }

    else
    {
      v8 = v15;
    }

    v9 = std::string::append(a2, p_p, v8);
    if (v6)
    {
      v10 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v9);
      v11 = v10[23];
      if (v11 >= 0)
      {
        v12 = v10;
      }

      else
      {
        v12 = *v10;
      }

      if (v11 >= 0)
      {
        v13 = v10[23];
      }

      else
      {
        v13 = *(v10 + 1);
      }

      std::string::append(a2, v12, v13);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
}

void sub_24766F498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

char **RIO_MTLX::Value::isA<RIO_MTLX::Vector3>(char **result)
{
  if (result)
  {
    v1 = **result;
  }

  return result;
}

uint64_t *RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(&RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE(void)::v, "vector3");
  }

  return &RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE(void)::v;
}

void RIO_MTLX::toValueString<RIO_MTLX::Vector3>(int *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = 3;
  do
  {
    __p = 0;
    v13 = 0;
    v14 = 0;
    if (v14 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v14 >= 0)
    {
      v6 = HIBYTE(v14);
    }

    else
    {
      v6 = v13;
    }

    v7 = std::string::append(a2, p_p, v6);
    if (v4 != 1)
    {
      v8 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v7);
      v9 = v8[23];
      if (v9 >= 0)
      {
        v10 = v8;
      }

      else
      {
        v10 = *v8;
      }

      if (v9 >= 0)
      {
        v11 = v8[23];
      }

      else
      {
        v11 = *(v8 + 1);
      }

      std::string::append(a2, v10, v11);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    ++a1;
    --v4;
  }

  while (v4);
}

void sub_24766F668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

float RIO_MTLX::fromValueString<RIO_MTLX::Vector3>(RIO_MTLX *a1)
{
  v7 = 0;
  v6 = 0;
  v2 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(a1, v2, v8);
  v3 = 0;
  v4 = &v6;
  do
  {
    v3 += 24;
    v4 = (v4 + 4);
  }

  while (v3 != 72);
  v9 = v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  return *&v6;
}

void sub_24766F718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  *(v11 - 24) = &a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v11 - 24));
  _Unwind_Resume(a1);
}

char **RIO_MTLX::Value::isA<RIO_MTLX::Vector4>(char **result)
{
  if (result)
  {
    v1 = **result;
  }

  return result;
}

uint64_t *RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(&RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE(void)::v, "vector4");
  }

  return &RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE(void)::v;
}

char **RIO_MTLX::Value::isA<RIO_MTLX::Matrix33>(char **result)
{
  if (result)
  {
    v1 = **result;
  }

  return result;
}

uint64_t *RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(&RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE(void)::v, "matrix33");
  }

  return &RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE(void)::v;
}

char **RIO_MTLX::Value::isA<RIO_MTLX::Matrix44>(char **result)
{
  if (result)
  {
    v1 = **result;
  }

  return result;
}

uint64_t *RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(&RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE(void)::v, "matrix44");
  }

  return &RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE(void)::v;
}

char **RIO_MTLX::Value::isA<std::string>(char **result)
{
  if (result)
  {
    v1 = **result;
  }

  return result;
}

_BYTE *RIO_MTLX::TypedValue<std::string>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::TypedValue<std::string>::TYPE(void)::v, "string");
  }

  return RIO_MTLX::TypedValue<std::string>::TYPE(void)::v;
}

std::string *RIO_MTLX::toValueString<std::string>@<X0>(std::string *__str@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::operator=(a2, __str);
}

void sub_24766FAF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *RIO_MTLX::fromValueString<std::string>@<X0>(std::string *__str@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::operator=(a2, __str);
}

void sub_24766FB48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char **RIO_MTLX::Value::isA<std::vector<int>>(char **result)
{
  if (result)
  {
    v1 = **result;
  }

  return result;
}

void RIO_MTLX::TypedValue<std::vector<int>>::TYPE()
{
  if ((atomic_load_explicit(&qword_27EE53400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53400))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE53440, "integerarray");

    __cxa_guard_release(&qword_27EE53400);
  }
}

char **RIO_MTLX::Value::isA<std::vector<BOOL>>(char **result)
{
  if (result)
  {
    v1 = **result;
  }

  return result;
}

void RIO_MTLX::TypedValue<std::vector<BOOL>>::TYPE()
{
  if ((atomic_load_explicit(&qword_27EE53408, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53408))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE53458, "BOOLeanarray");

    __cxa_guard_release(&qword_27EE53408);
  }
}

char **RIO_MTLX::Value::isA<std::vector<float>>(char **result)
{
  if (result)
  {
    v1 = **result;
  }

  return result;
}

void RIO_MTLX::TypedValue<std::vector<float>>::TYPE()
{
  if ((atomic_load_explicit(&qword_27EE53410, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53410))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE53470, "floatarray");

    __cxa_guard_release(&qword_27EE53410);
  }
}

char **RIO_MTLX::Value::isA<std::vector<std::string>>(char **result)
{
  if (result)
  {
    v1 = **result;
  }

  return result;
}

_BYTE *RIO_MTLX::TypedValue<std::vector<std::string>>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::TypedValue<std::vector<std::string>>::TYPE(void)::v, "stringarray");
  }

  return RIO_MTLX::TypedValue<std::vector<std::string>>::TYPE(void)::v;
}

void RIO_MTLX::toValueString<std::vector<std::string>>(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      memset(&v14, 0, sizeof(v14));
      std::string::operator=(&v14, (v3 + v5));
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v14;
      }

      else
      {
        v7 = v14.__r_.__value_.__r.__words[0];
      }

      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v14.__r_.__value_.__l.__size_;
      }

      v9 = std::string::append(a2, v7, size);
      if (++v6 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3))
      {
        v10 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v9);
        v11 = v10[23];
        if (v11 >= 0)
        {
          v12 = v10;
        }

        else
        {
          v12 = *v10;
        }

        if (v11 >= 0)
        {
          v13 = v10[23];
        }

        else
        {
          v13 = *(v10 + 1);
        }

        std::string::append(a2, v12, v13);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      v3 = *a1;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  }
}

void sub_24767001C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::fromValueString<std::vector<std::string>>(RIO_MTLX *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(a1, v4, v8);
  v5 = v8[0];
  v6 = v8[1];
  while (v5 != v6)
  {
    memset(&__p, 0, sizeof(__p));
    std::string::operator=(&__p, v5);
    std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ++v5;
  }

  __p.__r_.__value_.__r.__words[0] = v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

char **RIO_MTLX::Value::isA<long>(char **result)
{
  if (result)
  {
    v1 = **result;
  }

  return result;
}

void RIO_MTLX::TypedValue<long>::TYPE()
{
  if ((atomic_load_explicit(&qword_27EE53418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53418))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE53488, "integer");

    __cxa_guard_release(&qword_27EE53418);
  }
}

char **RIO_MTLX::Value::isA<double>(char **result)
{
  if (result)
  {
    v1 = **result;
  }

  return result;
}

void RIO_MTLX::TypedValue<double>::TYPE()
{
  if ((atomic_load_explicit(&qword_27EE53420, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53420))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE534A0, "float");

    __cxa_guard_release(&qword_27EE53420);
  }
}

__int128 *RIO_MTLX::Value::_creatorMap(RIO_MTLX::Value *this)
{
  {
    RIO_MTLX::Value::_creatorMap(void)::v = 0u;
    *&qword_27EE52368 = 0u;
    dword_27EE52378 = 1065353216;
  }

  return &RIO_MTLX::Value::_creatorMap(void)::v;
}

uint64_t RIO_MTLX::Value::createValueFromStrings(RIO_MTLX::Value *a1, const void **a2)
{
  RIO_MTLX::Value::_creatorMap(a1);
  v4 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(&RIO_MTLX::Value::_creatorMap(void)::v, a2);
  RIO_MTLX::Value::_creatorMap(v4);
  if (!v4)
  {

    RIO_MTLX::TypedValue<std::string>::createFromString(a1);
  }

  v5 = v4[5];

  return v5(a1);
}

void sub_247670460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *RIO_MTLX::registryint(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<int>::ValueRegistry(&RIO_MTLX::registryint(void)::registryint);
  }

  return &RIO_MTLX::registryint(void)::registryint;
}

void *RIO_MTLX::registryBOOL(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<BOOL>::ValueRegistry(&RIO_MTLX::registryBOOL(void)::registryBOOL);
  }

  return &RIO_MTLX::registryBOOL(void)::registryBOOL;
}

void *RIO_MTLX::registryfloat(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<float>::ValueRegistry(&RIO_MTLX::registryfloat(void)::registryfloat);
  }

  return &RIO_MTLX::registryfloat(void)::registryfloat;
}

void *RIO_MTLX::registryColor3(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<RIO_MTLX::Color3>::ValueRegistry(&RIO_MTLX::registryColor3(void)::registryColor3);
  }

  return &RIO_MTLX::registryColor3(void)::registryColor3;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Color4>::getValueString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v3 = (a1 + 8);
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = 4;
  do
  {
    __p = 0;
    v13 = 0;
    v14 = 0;
    if (v14 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v14 >= 0)
    {
      v6 = HIBYTE(v14);
    }

    else
    {
      v6 = v13;
    }

    v7 = std::string::append(a2, p_p, v6);
    if (v4 != 1)
    {
      v8 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v7);
      v9 = v8[23];
      if (v9 >= 0)
      {
        v10 = v8;
      }

      else
      {
        v10 = *v8;
      }

      if (v9 >= 0)
      {
        v11 = v8[23];
      }

      else
      {
        v11 = *(v8 + 1);
      }

      std::string::append(a2, v10, v11);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    ++v3;
    --v4;
  }

  while (v4);
}

void sub_2476707DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void *RIO_MTLX::registryColor4(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<RIO_MTLX::Color4>::ValueRegistry(&RIO_MTLX::registryColor4(void)::registryColor4);
  }

  return &RIO_MTLX::registryColor4(void)::registryColor4;
}

void *RIO_MTLX::registryVector2(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<RIO_MTLX::Vector2>::ValueRegistry(&RIO_MTLX::registryVector2(void)::registryVector2);
  }

  return &RIO_MTLX::registryVector2(void)::registryVector2;
}

void *RIO_MTLX::registryVector3(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<RIO_MTLX::Vector3>::ValueRegistry(&RIO_MTLX::registryVector3(void)::registryVector3);
  }

  return &RIO_MTLX::registryVector3(void)::registryVector3;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::getValueString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v3 = (a1 + 8);
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = 4;
  do
  {
    __p = 0;
    v13 = 0;
    v14 = 0;
    if (v14 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v14 >= 0)
    {
      v6 = HIBYTE(v14);
    }

    else
    {
      v6 = v13;
    }

    v7 = std::string::append(a2, p_p, v6);
    if (v4 != 1)
    {
      v8 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v7);
      v9 = v8[23];
      if (v9 >= 0)
      {
        v10 = v8;
      }

      else
      {
        v10 = *v8;
      }

      if (v9 >= 0)
      {
        v11 = v8[23];
      }

      else
      {
        v11 = *(v8 + 1);
      }

      std::string::append(a2, v10, v11);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    ++v3;
    --v4;
  }

  while (v4);
}

void sub_247670AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void *RIO_MTLX::registryVector4(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<RIO_MTLX::Vector4>::ValueRegistry(&RIO_MTLX::registryVector4(void)::registryVector4);
  }

  return &RIO_MTLX::registryVector4(void)::registryVector4;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::getValueString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v3 = 0;
  v4 = (a1 + 8);
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  do
  {
    v5 = v4;
    v6 = 3;
    do
    {
      __p = 0;
      v15 = 0;
      v16 = 0;
      if (v16 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v16 >= 0)
      {
        v8 = HIBYTE(v16);
      }

      else
      {
        v8 = v15;
      }

      v9 = std::string::append(a2, p_p, v8);
      if (v3 != 2 || v6 != 1)
      {
        v10 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v9);
        v11 = v10[23];
        if (v11 >= 0)
        {
          v12 = v10;
        }

        else
        {
          v12 = *v10;
        }

        if (v11 >= 0)
        {
          v13 = v10[23];
        }

        else
        {
          v13 = *(v10 + 1);
        }

        std::string::append(a2, v12, v13);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p);
      }

      ++v5;
      --v6;
    }

    while (v6);
    ++v3;
    v4 += 3;
  }

  while (v3 != 3);
}

void sub_247670C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void *RIO_MTLX::registryMatrix33(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<RIO_MTLX::Matrix33>::ValueRegistry(&RIO_MTLX::registryMatrix33(void)::registryMatrix33);
  }

  return &RIO_MTLX::registryMatrix33(void)::registryMatrix33;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::getValueString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v3 = 0;
  v4 = (a1 + 8);
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  do
  {
    v5 = v4;
    v6 = 4;
    do
    {
      __p = 0;
      v15 = 0;
      v16 = 0;
      if (v16 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v16 >= 0)
      {
        v8 = HIBYTE(v16);
      }

      else
      {
        v8 = v15;
      }

      v9 = std::string::append(a2, p_p, v8);
      if (v3 != 3 || v6 != 1)
      {
        v10 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v9);
        v11 = v10[23];
        if (v11 >= 0)
        {
          v12 = v10;
        }

        else
        {
          v12 = *v10;
        }

        if (v11 >= 0)
        {
          v13 = v10[23];
        }

        else
        {
          v13 = *(v10 + 1);
        }

        std::string::append(a2, v12, v13);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p);
      }

      ++v5;
      --v6;
    }

    while (v6);
    ++v3;
    v4 += 4;
  }

  while (v3 != 4);
}

void sub_247670DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void *RIO_MTLX::registryMatrix44(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<RIO_MTLX::Matrix44>::ValueRegistry(&RIO_MTLX::registryMatrix44(void)::registryMatrix44);
  }

  return &RIO_MTLX::registryMatrix44(void)::registryMatrix44;
}

void *RIO_MTLX::registrystring(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<std::string>::ValueRegistry(&RIO_MTLX::registrystring(void)::registrystring);
  }

  return &RIO_MTLX::registrystring(void)::registrystring;
}

void RIO_MTLX::TypedValue<std::vector<int>>::getValueString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 8);
  if (*(a1 + 16) != v3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      __p = 0;
      v15 = 0;
      v16 = 0;
      if (v16 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v16 >= 0)
      {
        v8 = HIBYTE(v16);
      }

      else
      {
        v8 = v15;
      }

      v9 = std::string::append(a2, p_p, v8);
      if (++v6 < (*(a1 + 16) - *(a1 + 8)) >> 2)
      {
        v10 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v9);
        v11 = v10[23];
        if (v11 >= 0)
        {
          v12 = v10;
        }

        else
        {
          v12 = *v10;
        }

        if (v11 >= 0)
        {
          v13 = v10[23];
        }

        else
        {
          v13 = *(v10 + 1);
        }

        std::string::append(a2, v12, v13);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p);
      }

      v3 = *(a1 + 8);
      v5 += 4;
    }

    while (v6 < (*(a1 + 16) - v3) >> 2);
  }
}

void sub_247671048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void *RIO_MTLX::registryIntVec(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<std::vector<int>>::ValueRegistry(&RIO_MTLX::registryIntVec(void)::registryIntVec);
  }

  return &RIO_MTLX::registryIntVec(void)::registryIntVec;
}

void RIO_MTLX::TypedValue<std::vector<BOOL>>::getValueString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (*(a1 + 16))
  {
    v4 = 0;
    do
    {
      memset(&__p, 0, sizeof(__p));
      v12 = (*(*(a1 + 8) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4) & 1;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v7 = std::string::append(a2, p_p, size);
      if (++v4 < *(a1 + 16))
      {
        v8 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v7);
        v9 = v8[23];
        if (v9 >= 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *v8;
        }

        if (v9 >= 0)
        {
          v11 = v8[23];
        }

        else
        {
          v11 = *(v8 + 1);
        }

        std::string::append(a2, v10, v11);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    while (v4 < *(a1 + 16));
  }
}

void sub_2476711F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void *RIO_MTLX::registryBoolVec(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<std::vector<BOOL>>::ValueRegistry(&RIO_MTLX::registryBoolVec(void)::registryBoolVec);
  }

  return &RIO_MTLX::registryBoolVec(void)::registryBoolVec;
}

void RIO_MTLX::TypedValue<std::vector<float>>::getValueString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 8);
  if (*(a1 + 16) != v3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      __p = 0;
      v15 = 0;
      v16 = 0;
      if (v16 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v16 >= 0)
      {
        v8 = HIBYTE(v16);
      }

      else
      {
        v8 = v15;
      }

      v9 = std::string::append(a2, p_p, v8);
      if (++v6 < (*(a1 + 16) - *(a1 + 8)) >> 2)
      {
        v10 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v9);
        v11 = v10[23];
        if (v11 >= 0)
        {
          v12 = v10;
        }

        else
        {
          v12 = *v10;
        }

        if (v11 >= 0)
        {
          v13 = v10[23];
        }

        else
        {
          v13 = *(v10 + 1);
        }

        std::string::append(a2, v12, v13);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p);
      }

      v3 = *(a1 + 8);
      v5 += 4;
    }

    while (v6 < (*(a1 + 16) - v3) >> 2);
  }
}

void sub_2476713AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void *RIO_MTLX::registryFloatVec(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<std::vector<float>>::ValueRegistry(&RIO_MTLX::registryFloatVec(void)::registryFloatVec);
  }

  return &RIO_MTLX::registryFloatVec(void)::registryFloatVec;
}

void *RIO_MTLX::registryStringVec(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<std::vector<std::string>>::ValueRegistry(&RIO_MTLX::registryStringVec(void)::registryStringVec);
  }

  return &RIO_MTLX::registryStringVec(void)::registryStringVec;
}

uint64_t RIO_MTLX::TypedValue<long>::getValueString@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
  v4 = v9[0];
  *(&v9[1] + *(v9[0] - 24)) &= 0xFFFFFEFB;
  *(&v9[2] + *(v4 - 24)) = 6;
  MEMORY[0x24C1A8F20](&v10, *(a1 + 8));
  std::stringbuf::str();
  *a2 = v7;
  a2[2] = v8;
  v9[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v10 = v5;
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C1A9110](&v14);
}

void sub_247671718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void *RIO_MTLX::registrylong(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<long>::ValueRegistry(&RIO_MTLX::registrylong(void)::registrylong);
  }

  return &RIO_MTLX::registrylong(void)::registrylong;
}

uint64_t RIO_MTLX::TypedValue<double>::getValueString@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
  v4 = v9[0];
  *(&v9[1] + *(v9[0] - 24)) &= 0xFFFFFEFB;
  *(&v9[2] + *(v4 - 24)) = 6;
  MEMORY[0x24C1A8EE0](&v10, *(a1 + 8));
  std::stringbuf::str();
  *a2 = v7;
  a2[2] = v8;
  v9[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v10 = v5;
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C1A9110](&v14);
}

void sub_2476719D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void *RIO_MTLX::registrydouble(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<double>::ValueRegistry(&RIO_MTLX::registrydouble(void)::registrydouble);
  }

  return &RIO_MTLX::registrydouble(void)::registrydouble;
}

void *RIO_MTLX::Value::initValueTypeRegistry(RIO_MTLX::Value *this)
{
  v1 = RIO_MTLX::registryint(this);
  v2 = RIO_MTLX::registryBOOL(v1);
  v3 = RIO_MTLX::registryfloat(v2);
  v4 = RIO_MTLX::registryColor3(v3);
  v5 = RIO_MTLX::registryColor4(v4);
  v6 = RIO_MTLX::registryVector2(v5);
  v7 = RIO_MTLX::registryVector3(v6);
  v8 = RIO_MTLX::registryVector4(v7);
  v9 = RIO_MTLX::registryMatrix33(v8);
  v10 = RIO_MTLX::registryMatrix44(v9);
  v11 = RIO_MTLX::registrystring(v10);
  v12 = RIO_MTLX::registryIntVec(v11);
  v13 = RIO_MTLX::registryBoolVec(v12);
  v14 = RIO_MTLX::registryFloatVec(v13);
  v15 = RIO_MTLX::registryStringVec(v14);
  v16 = RIO_MTLX::registrylong(v15);

  return RIO_MTLX::registrydouble(v16);
}

void *std::__shared_ptr_emplace<RIO_MTLX::TypedValue<std::string>>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<RIO_MTLX::TypedValue<std::string>>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285959290;
  RIO_MTLX::TypedValue<std::string>::TypedValue(a1 + 3, a2);
  return a1;
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959290;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *RIO_MTLX::TypedValue<std::string>::TypedValue(void *a1, __int128 *a2)
{
  *a1 = &unk_2859592E0;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

uint64_t RIO_MTLX::TypedValue<std::string>::~TypedValue(uint64_t a1)
{
  *a1 = &unk_2859592E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void RIO_MTLX::TypedValue<std::string>::~TypedValue(uint64_t a1)
{
  *a1 = &unk_2859592E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x24C1A91B0);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[22] = 0;
  v6 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v9 = MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 24);
  v11 = *(MEMORY[0x277D82818] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x277D82890] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), a2, a3);
  return a1;
}

void sub_247672024(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x24C1A9110](v1);
  _Unwind_Resume(a1);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<int>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<int>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(RIO_MTLX::TypedValue<int>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<int>::TYPE();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::TypedValue<int>::TYPE(void)::v)[5] = RIO_MTLX::TypedValue<int>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<int>::createFromString(const std::string *a1)
{
  v1 = 0;
  operator new();
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(const void **a1)
{
  v2 = std::__string_hash<char>::operator()[abi:ne200100](&RIO_MTLX::Value::_creatorMap(void)::v, a1);
  v3 = *(&RIO_MTLX::Value::_creatorMap(void)::v + 1);
  if (!*(&RIO_MTLX::Value::_creatorMap(void)::v + 1))
  {
    return 0;
  }

  v4 = v2;
  v5 = vcnt_s8(*(&RIO_MTLX::Value::_creatorMap(void)::v + 8));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = v2;
    if (v2 >= *(&RIO_MTLX::Value::_creatorMap(void)::v + 1))
    {
      v7 = v2 % *(&RIO_MTLX::Value::_creatorMap(void)::v + 1);
    }
  }

  else
  {
    v7 = (*(&RIO_MTLX::Value::_creatorMap(void)::v + 1) - 1) & v2;
  }

  v8 = *(RIO_MTLX::Value::_creatorMap(void)::v + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = i[1];
    if (v4 == v10)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](&RIO_MTLX::Value::_creatorMap(void)::v, i + 2, a1))
      {
        return i;
      }
    }

    else
    {
      if (v6 > 1)
      {
        if (v10 >= v3)
        {
          v10 %= v3;
        }
      }

      else
      {
        v10 &= v3 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(const void **a1)
{
  v2 = std::__string_hash<char>::operator()[abi:ne200100](&RIO_MTLX::Value::_creatorMap(void)::v, a1);
  v3 = v2;
  v4 = *(&RIO_MTLX::Value::_creatorMap(void)::v + 1);
  if (!*(&RIO_MTLX::Value::_creatorMap(void)::v + 1))
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(*(&RIO_MTLX::Value::_creatorMap(void)::v + 8));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = v2;
    if (v2 >= *(&RIO_MTLX::Value::_creatorMap(void)::v + 1))
    {
      v7 = v2 % *(&RIO_MTLX::Value::_creatorMap(void)::v + 1);
    }
  }

  else
  {
    v7 = (*(&RIO_MTLX::Value::_creatorMap(void)::v + 1) - 1) & v2;
  }

  v8 = *(RIO_MTLX::Value::_creatorMap(void)::v + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v3)
    {
      break;
    }

    if (v6 > 1)
    {
      if (v10 >= v4)
      {
        v10 %= v4;
      }
    }

    else
    {
      v10 &= v4 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](&RIO_MTLX::Value::_creatorMap(void)::v, v9 + 2, a1))
  {
    goto LABEL_17;
  }

  return v9;
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<BOOL>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<BOOL>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(byte_27EE53428))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<BOOL>::TYPE();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE53428)[5] = RIO_MTLX::TypedValue<BOOL>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<BOOL>::createFromString(uint64_t a1)
{
  v1 = 0;
  operator new();
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<BOOL>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859593A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<float>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<float>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(RIO_MTLX::TypedValue<float>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<float>::TYPE();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::TypedValue<float>::TYPE(void)::v)[5] = RIO_MTLX::TypedValue<float>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<float>::createFromString(const std::string *a1)
{
  v1 = 0;
  operator new();
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959428;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<RIO_MTLX::Color3>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(&RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE(void)::v)[5] = RIO_MTLX::TypedValue<RIO_MTLX::Color3>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Color3>::createFromString(RIO_MTLX *a1)
{
  v6 = 0;
  v5 = 0;
  v2 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(a1, v2, v7);
  v3 = 0;
  v4 = &v5;
  do
  {
    v3 += 24;
    v4 = (v4 + 4);
  }

  while (v3 != 72);
  v8 = v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  operator new();
}

void sub_247672E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<RIO_MTLX::Color3>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859594B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<RIO_MTLX::Color4>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(&RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE(void)::v)[5] = RIO_MTLX::TypedValue<RIO_MTLX::Color4>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Color4>::createFromString(RIO_MTLX *a1)
{
  v5 = 0uLL;
  v2 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(a1, v2, v6);
  v3 = 0;
  v4 = &v5;
  do
  {
    v3 += 24;
    v4 = (v4 + 4);
  }

  while (v3 != 96);
  v7 = v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  operator new();
}

void sub_2476730F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v13 - 40) = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v13 - 40));
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<RIO_MTLX::Color4>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959538;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<RIO_MTLX::Vector2>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(&RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE(void)::v)[5] = RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::createFromString(RIO_MTLX *a1)
{
  v3 = 0;
  v2 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(a1, v2, v4);
  v5 = v4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  operator new();
}

void sub_2476733A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<RIO_MTLX::Vector2>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859595C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<RIO_MTLX::Vector3>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(&RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE(void)::v)[5] = RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::createFromString;
  }

  return a1;
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<RIO_MTLX::Vector3>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959648;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<RIO_MTLX::Vector4>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(&RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE(void)::v)[5] = RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::createFromString(RIO_MTLX *a1)
{
  v5 = 0uLL;
  v2 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(a1, v2, v6);
  v3 = 0;
  v4 = &v5;
  do
  {
    v3 += 24;
    v4 = (v4 + 4);
  }

  while (v3 != 96);
  v7 = v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  operator new();
}

void sub_2476738A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v13 - 40) = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v13 - 40));
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<RIO_MTLX::Vector4>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859596D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<RIO_MTLX::Matrix33>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(&RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE(void)::v)[5] = RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::createFromString(RIO_MTLX *a1)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v2 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(a1, v2, v11);
  v3 = 0;
  v4 = 0;
  for (i = v9; ; i = (i + 12))
  {
    v6 = v3;
    v7 = i;
    v8 = 3;
    do
    {
      v7 += 4;
      v6 += 24;
      --v8;
    }

    while (v8);
    ++v4;
    v3 += 72;
    if (v4 == 3)
    {
      v12 = v11;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
      operator new();
    }
  }
}

void sub_247673B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959758;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<RIO_MTLX::Matrix44>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(&RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE(void)::v)[5] = RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::createFromString(RIO_MTLX *a1)
{
  memset(v9, 0, sizeof(v9));
  v2 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(a1, v2, v10);
  v3 = 0;
  v4 = 0;
  for (i = v9; ; ++i)
  {
    v6 = v3;
    v7 = i;
    v8 = 4;
    do
    {
      v7 += 4;
      v6 += 24;
      --v8;
    }

    while (v8);
    ++v4;
    v3 += 96;
    if (v4 == 4)
    {
      v11 = v10;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
      operator new();
    }
  }
}

void sub_247673E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v17 - 72) = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v17 - 72));
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859597E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<std::string>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<std::string>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(RIO_MTLX::TypedValue<std::string>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<std::string>::TYPE();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::TypedValue<std::string>::TYPE(void)::v)[5] = RIO_MTLX::TypedValue<std::string>::createFromString;
  }

  return a1;
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<std::vector<int>>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<std::vector<int>>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(byte_27EE53440))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<std::vector<int>>::TYPE();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE53440)[5] = RIO_MTLX::TypedValue<std::vector<int>>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<std::vector<int>>::createFromString(RIO_MTLX *a1)
{
  __src = 0;
  v15 = 0;
  v16 = 0;
  v2 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(a1, v2, &v17);
  v4 = v18;
  for (i = v17; i != v4; ++i)
  {
    LODWORD(v19) = 0;
    v5 = v15;
    if (v15 >= v16)
    {
      v7 = __src;
      v8 = v15 - __src;
      v9 = (v15 - __src) >> 2;
      v10 = v9 + 1;
      if ((v9 + 1) >> 62)
      {
        std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
      }

      v11 = v16 - __src;
      if ((v16 - __src) >> 1 > v10)
      {
        v10 = v11 >> 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v12 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v12);
      }

      *(4 * v9) = v19;
      v6 = 4 * v9 + 4;
      memcpy(0, v7, v8);
      v13 = __src;
      __src = 0;
      v15 = v6;
      v16 = 0;
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      *v15 = v19;
      v6 = (v5 + 4);
    }

    v15 = v6;
  }

  v19 = &v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
  std::allocate_shared[abi:ne200100]<RIO_MTLX::TypedValue<std::vector<int>>,std::allocator<RIO_MTLX::TypedValue<std::vector<int>>>,std::vector<int> const&,0>();
}

void sub_247674260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24767433C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<std::vector<int>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959868;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *RIO_MTLX::TypedValue<std::vector<int>>::~TypedValue(void *a1)
{
  *a1 = &unk_2859598B8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void RIO_MTLX::TypedValue<std::vector<int>>::~TypedValue(void *a1)
{
  *a1 = &unk_2859598B8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<std::vector<BOOL>>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<std::vector<BOOL>>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(byte_27EE53458))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<std::vector<BOOL>>::TYPE();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE53458)[5] = RIO_MTLX::TypedValue<std::vector<BOOL>>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<std::vector<BOOL>>::createFromString(RIO_MTLX *a1)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  v2 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(a1, v2, &v14);
  v4 = v15;
  for (i = v14; i != v4; i += 24)
  {
    LOBYTE(v16) = 0;
    v5 = v12;
    if (v12 == v13 << 6)
    {
      if ((v12 + 1) < 0)
      {
        std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
      }

      v6 = v13 << 7;
      if (v13 << 7 <= (v12 & 0x3FFFFFFFFFFFFFC0) + 64)
      {
        v6 = (v12 & 0x3FFFFFFFFFFFFFC0) + 64;
      }

      if (v12 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0x7FFFFFFFFFFFFFFFLL;
      }

      std::vector<BOOL>::reserve(&__p, v7);
      v5 = v12;
    }

    v12 = v5 + 1;
    v8 = v5 >> 6;
    v9 = 1 << v5;
    if (v16 == 1)
    {
      v10 = *(__p + v8) | v9;
    }

    else
    {
      v10 = *(__p + v8) & ~v9;
    }

    *(__p + v8) = v10;
  }

  v16 = &v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
  std::allocate_shared[abi:ne200100]<RIO_MTLX::TypedValue<std::vector<BOOL>>,std::allocator<RIO_MTLX::TypedValue<std::vector<BOOL>>>,std::vector<BOOL> const&,0>();
}

void sub_2476746A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_247674858(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<std::vector<BOOL>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859598F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *RIO_MTLX::TypedValue<std::vector<BOOL>>::~TypedValue(void *a1)
{
  *a1 = &unk_285959940;
  v2 = a1[1];
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void RIO_MTLX::TypedValue<std::vector<BOOL>>::~TypedValue(void *a1)
{
  *a1 = &unk_285959940;
  v1 = a1[1];
  if (v1)
  {
    operator delete(v1);
  }

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<std::vector<float>>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<std::vector<float>>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(byte_27EE53470))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<std::vector<float>>::TYPE();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE53470)[5] = RIO_MTLX::TypedValue<std::vector<float>>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<std::vector<float>>::createFromString(RIO_MTLX *a1)
{
  __src = 0;
  v15 = 0;
  v16 = 0;
  v2 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(a1, v2, &v17);
  v4 = v18;
  for (i = v17; i != v4; ++i)
  {
    LODWORD(v19) = 0;
    v5 = v15;
    if (v15 >= v16)
    {
      v7 = __src;
      v8 = v15 - __src;
      v9 = (v15 - __src) >> 2;
      v10 = v9 + 1;
      if ((v9 + 1) >> 62)
      {
        std::vector<char const*>::__throw_length_error[abi:ne200100]();
      }

      v11 = v16 - __src;
      if ((v16 - __src) >> 1 > v10)
      {
        v10 = v11 >> 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v12 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v12);
      }

      *(4 * v9) = v19;
      v6 = 4 * v9 + 4;
      memcpy(0, v7, v8);
      v13 = __src;
      __src = 0;
      v15 = v6;
      v16 = 0;
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      *v15 = v19;
      v6 = (v5 + 4);
    }

    v15 = v6;
  }

  v19 = &v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
  std::allocate_shared[abi:ne200100]<RIO_MTLX::TypedValue<std::vector<float>>,std::allocator<RIO_MTLX::TypedValue<std::vector<float>>>,std::vector<float> const&,0>();
}

void sub_247674BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_247674CCC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<std::vector<float>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *RIO_MTLX::TypedValue<std::vector<float>>::~TypedValue(void *a1)
{
  *a1 = &unk_2859599C8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void RIO_MTLX::TypedValue<std::vector<float>>::~TypedValue(void *a1)
{
  *a1 = &unk_2859599C8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<std::vector<std::string>>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<std::vector<std::string>>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(RIO_MTLX::TypedValue<std::vector<std::string>>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<std::vector<std::string>>::TYPE();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::TypedValue<std::vector<std::string>>::TYPE(void)::v)[5] = RIO_MTLX::TypedValue<std::vector<std::string>>::createFromString;
  }

  return a1;
}

void sub_247674F44(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24767500C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<std::vector<std::string>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959A00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t RIO_MTLX::TypedValue<std::vector<std::string>>::~TypedValue(uint64_t a1)
{
  *a1 = &unk_285959A50;
  v3 = (a1 + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

{
  *a1 = &unk_285959A50;
  v3 = (a1 + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return MEMORY[0x24C1A91B0](a1, 0xA1C4030951706);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<long>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<long>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(byte_27EE53488))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<long>::TYPE();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE53488)[5] = RIO_MTLX::TypedValue<long>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<long>::createFromString(const std::string *a1)
{
  v2 = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v3, a1, 24);
  MEMORY[0x24C1A8E70](v3, &v2);
  v3[0] = *MEMORY[0x277D82818];
  v1 = *(MEMORY[0x277D82818] + 72);
  *(v3 + *(v3[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v3[2] = v1;
  v4 = MEMORY[0x277D82878] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v5);
  std::iostream::~basic_iostream();
  MEMORY[0x24C1A9110](&v7);
  operator new();
}

void sub_247675414(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<long>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959A88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<double>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<double>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(byte_27EE534A0))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<double>::TYPE();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE534A0)[5] = RIO_MTLX::TypedValue<double>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<double>::createFromString(const std::string *a1)
{
  v2 = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v3, a1, 24);
  MEMORY[0x24C1A8E40](v3, &v2);
  v3[0] = *MEMORY[0x277D82818];
  v1 = *(MEMORY[0x277D82818] + 72);
  *(v3 + *(v3[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v3[2] = v1;
  v4 = MEMORY[0x277D82878] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v5);
  std::iostream::~basic_iostream();
  MEMORY[0x24C1A9110](&v7);
  operator new();
}

void sub_2476757BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<double>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959B10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t RIOPxrSdfAttributeSpecGetTypeID()
{
  if (RIOPxrSdfAttributeSpecGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfAttributeSpecGetTypeID::onceToken, &__block_literal_global_29);
  }

  return RIOPxrSdfAttributeSpecGetTypeID::typeID;
}

void __RIOPxrSdfAttributeSpecGetTypeID_block_invoke()
{
  if (!RIOPxrSdfAttributeSpecGetTypeID::typeID)
  {
    RIOPxrSdfAttributeSpecGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrSdfAttributeSpecHasColorSpace(uint64_t result)
{
  if (result)
  {
    return MEMORY[0x282207528](result + 16);
  }

  return result;
}

uint64_t RIOPxrSdfAttributeSpecCopyLayer(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfAttributeSpec>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(&v5, v1);
  v2 = RIOPxrSdfLayerCreate<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>(&v5);
  v3 = v6;
  if (v6 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  return v2;
}

void sub_247675A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

pxrInternal__aapl__pxrReserved__::SdfSpec *pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfAttributeSpec>::operator->(pxrInternal__aapl__pxrReserved__::SdfSpec *a1)
{
  v1 = a1;
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    v7[0] = "sdf/declareHandles.h";
    v7[1] = "operator->";
    v7[2] = 80;
    v7[3] = "SpecType *pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfAttributeSpec>::operator->() const [T = pxrInternal__aapl__pxrReserved__::SdfAttributeSpec]";
    v8 = 0;
    v9 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled(__p, ("N32pxrInternal__aapl__pxrReserved__16SdfAttributeSpecE" & 0x7FFFFFFFFFFFFFFFLL), v2);
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v7, "Dereferenced an invalid %s", v4);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return v1;
}

void sub_247675B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfAttributeSpecIsBlocked(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetDefaultValue(&v4, (a1 + 16));
    IsImpl = v5;
    if (v5)
    {
      if (!strcmp((*(*(v5 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__13SdfValueBlockE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
        IsImpl = 1;
      }

      else if ((IsImpl & 4) != 0)
      {
      }

      else
      {
        IsImpl = 0;
      }
    }

    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v4);
  }

  else
  {
    IsImpl = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return IsImpl;
}

void sub_247675C08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void realityio::ShadowComponentBuilder::ShadowComponentBuilder(realityio::ShadowComponentBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v7[23] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v5, "ShadowComponentBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kShadowComponentBuilderIdentifier);
  if ((atomic_load_explicit(&qword_27EE534C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE534C8))
  {
    operator new();
  }

  if (unk_27EE534C0)
  {
    atomic_fetch_add_explicit((unk_27EE534C0 + 8), 1uLL, memory_order_relaxed);
  }

  v7[0] = &unk_285959C90;
  v7[3] = v7;
  v6[0] = &unk_285959D10;
  v6[3] = v6;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_247676404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  MEMORY[0x24C1A91B0](v63, 0x10A1C40F82F910ELL);
  *(v64 - 184) = &a46;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v64 - 184));
  MEMORY[0x24C1A91B0](v62, 0x10A1C401BF1BAA1);
  MEMORY[0x24C1A91B0](v61, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE534C8);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void realityio::ShadowComponentBuilder::run(realityio::ShadowComponentBuilder *this, realityio::Inputs *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v2 = (a2 + 32);
  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v9, v3, v2);
  v4 = atomic_load(&realityio::tokens::ShadowBuilderTokens);
  if (v4)
  {
    realityio::getAttributeValue<BOOL>(&v9, v4, v11);
    v5 = v11[0];
    v6 = v11[8];
    if ((v11[0] & 1) == 0 && v13 < 0)
    {
      operator delete(__p);
    }

    v8 = v6 & 1 | ((v5 & 1) == 0);
    v7 = *(v10 + 6);
    operator new();
  }

  pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::ShadowBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::ShadowBuilderTokens_StaticTokenType>>::_TryToCreateData();
}

void sub_247676914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::ShadowComponentBuilder::clear(realityio::ShadowComponentBuilder *this, realityio::Inputs *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 6);
  v5 = a2;
  v6[0] = &unk_285959E90;
  v6[1] = &v5;
  v6[3] = v6;
  (*(*v2 + 16))(v2, v6);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247676A08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::ShadowComponentBuilder::~ShadowComponentBuilder(realityio::ShadowComponentBuilder *this)
{
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

uint64_t std::__function::__func<realityio::ShadowComponentBuilder::ShadowComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::ShadowComponentBuilder::ShadowComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::ShadowComponentBuilder::ShadowComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::ShadowComponentBuilder::ShadowComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::ShadowComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::ShadowComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285959D90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::ShadowComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::ShadowComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = **(a1 + 8);
  v4 = realityio::EntityBuilder::kInputName(a1);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v3, v4, v14);
  if (v14[0])
  {
    v5 = v15;
    v13 = v15;
    if (v15)
    {
      RERetain();
      if (**(a1 + 24) == 1)
      {
        REShadowMapComponentGetComponentType();
        v6 = *(a1 + 16);
        *&buf = &unk_285959E00;
        *(&buf + 1) = v2;
        v17 = v6;
        p_buf = &buf;
        v7 = REEntityGetOrAddComponentByClass();
        std::function<void ()(REComponent *)>::operator()(&buf, v7);
        RENetworkMarkComponentDirty();
        std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](&buf);
      }

      else
      {
        REShadowMapComponentGetComponentType();
        REEntityRemoveComponentByClass();
      }

      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  v8 = *(realityio::logObjects(v5) + 24);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*(a1 + 16), &v12);
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v12);
    LODWORD(buf) = 136315138;
    *(&buf + 4) = Text;
    _os_log_impl(&dword_247485000, v8, OS_LOG_TYPE_DEFAULT, "Stopping operation to set shadow component because entity no longer exists for prim %s", &buf, 0xCu);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  }

LABEL_9:
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v13);
  result = realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v14);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476772E0(_Unwind_Exception *a1, uint64_t a2, ...)
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
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](va2);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(va);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::ShadowComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::ShadowComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZN9realityio22ShadowComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285959E00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

atomic_uint **_ZNSt3__110__function6__funcIZZN9realityio22ShadowComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  realityio::Builder::addComponent(*(a1 + 8), *a2);
  v3 = atomic_load(&realityio::tokens::ShadowBuilderTokens);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::ShadowBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::ShadowBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  v4 = *(v3 + 8);
  v17 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  realityio::getAttributeValue<float>(*(a1 + 16), &v17, &v18);
  v5 = v18;
  v6 = *&v19;
  if ((v18 & 1) == 0 && v21 < 0)
  {
    operator delete(__p);
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = -1.0;
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = atomic_load(&realityio::tokens::ShadowBuilderTokens);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::ShadowBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::ShadowBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  v9 = *(v8 + 16);
  v17 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  realityio::getAttributeValue<float>(*(a1 + 16), &v17, &v18);
  v10 = v18;
  v11 = *&v19;
  if ((v18 & 1) == 0 && v21 < 0)
  {
    operator delete(__p);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = -1.0;
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v18, *(a1 + 16));
  v13 = v19;
  if (v19)
  {
    if (*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(&v19) + 14))
    {
      v13 = v18;
    }

    else
    {
      v13 = 0;
    }
  }

  v17 = v13;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v17);
  v14 = v19;
  if (v19 && atomic_fetch_add_explicit(v19 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v14 + 8))(v14);
  }

  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(&v18, &v17);
  pxrInternal__aapl__pxrReserved__::UsdGeomGetStageMetersPerUnit();
  v15 = v19;
  if (v19 && atomic_fetch_add_explicit(v19 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v15 + 8))(v15);
  }

  if (v7 > -0.5)
  {
    REShadowMapComponentSetDepthBias();
  }

  if (v12 > -0.5)
  {
    REShadowMapComponentSetDistance();
  }

  return pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v17);
}

void sub_2476776C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio22ShadowComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio22ShadowComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::ShadowComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::ShadowComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285959E90;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::ShadowComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::ShadowComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(realityio::EntityBuilder *a1)
{
  v1 = **(a1 + 1);
  v2 = realityio::EntityBuilder::kInputName(a1);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v1, v2, v5);
  if (v5[0])
  {
    v4 = v6;
    if (v6)
    {
      RERetain();
      REShadowMapComponentGetComponentType();
      REEntityRemoveComponentByClass();
    }
  }

  else
  {
    v4 = 0;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v4);
  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v5);
}

void sub_247677904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::ShadowComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::ShadowComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t RIOPxrUsdUtilsSdfCopySpec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[6] = *MEMORY[0x277D85DE8];
  if (a1 && a2 && a3 && a4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v7, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(v8, (a3 + 16));
    operator new();
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_247677CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::~__value_func[abi:ne200100](v17 - 104);
  *(v17 - 104) = &a14;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100]((v17 - 104));
  *(v17 - 104) = &a17;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100]((v17 - 104));
  _Unwind_Resume(a1);
}

void sub_247677DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v20 = 24;
  while (1)
  {
    v21 = *(&a20 + v20);
    if (v21 && atomic_fetch_add_explicit(v21 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v21 + 8))(v21);
    }

    v20 -= 16;
    if (v20 == -8)
    {
      JUMPOUT(0x247677DC4);
    }
  }
}

void sub_247677E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, atomic_uint *a21)
{
  if (a21)
  {
    if (atomic_fetch_add_explicit(a21 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a21 + 8))(a21);
    }
  }

  JUMPOUT(0x247677DC4);
}

void std::function<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::operator=<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>,void>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a2 + 2);
  operator new();
}

void sub_247677FD0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>,std::allocator<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>>,BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285959F10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>,std::allocator<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>>,BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, char *a8, void *a9, void *a10)
{
  v10 = *a9;
  v12 = *a8;
  return (*(a1 + 8))(*(a1 + 16), *(a1 + 24), a2, a3, a4, *a5, a6, a7, v12, *a9, *a10);
}

uint64_t std::__function::__func<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>,std::allocator<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>>,BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>,std::allocator<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285959FA8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>,std::allocator<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::MeshAssetBuilder::kOutputName(realityio::MeshAssetBuilder *this)
{
  {
    operator new();
  }

  return realityio::MeshAssetBuilder::kOutputName(void)::kOutputName;
}

void sub_247678328(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::MeshAssetBuilder::MeshAssetBuilder(realityio::MeshAssetBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v6, "MeshAssetBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kMeshAssetBuilderIdentifier);
  realityio::generateMeshAssetBuilderDirtyStageSubscription(&v4);
  v8[0] = &unk_28595A240;
  v8[3] = v8;
  v7[0] = &unk_28595A350;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_2476784A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
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

uint64_t isTexCoord3(const pxrInternal__aapl__pxrReserved__::UsdAttribute *a1)
{
  v6[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a1);
  v6[1] = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(v6);
  v1 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v1))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v1))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  return pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==();
}

uint64_t realityio::MeshAssetBuilder::run(realityio::MeshAssetBuilder *this, realityio::Inputs *a2)
{
  v361 = *MEMORY[0x277D85DE8];
  v2 = (a2 + 32);
  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  v254 = v2;
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v329, v3, v2);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v329))
  {
    realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v328, 2034, this);
    v4 = *(*(*(a2 + 5) + 16) + 16);
    v326 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v327 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    v5 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v324 = 0;
    v323 = 0;
    v325 = 0;
    v6 = realityio::MeshModelDescriptorBuilder::kModelDescriptorOutputName(v5);
    realityio::Inputs::getAccumulatedValues<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>(a2, v6, &v342);
    if (v342 != 1 || (v7 = v344, v8 = v343, v344 == v343))
    {
      realityio::Result<std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>,realityio::DetailedError>::~Result(&v342);
    }

    else
    {
      v9 = 0;
      do
      {
        v11 = *v8;
        v10 = v8[1];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          *&v357[8] = v10;
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          *&v357[8] = 0;
        }

        *v357 = v11;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v319, (v11 + 8));
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v320, (v11 + 12));
        v12 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
        pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(buf[0].i64, v12, &v319);
        if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
        {
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetPrimInPrototype(buf, v276);
          if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v276))
          {
            pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v276, &v339);
            if (v9)
            {
              if (v339.__r_.__value_.__r.__words[0] == v326)
              {
                operator new();
              }
            }

            else
            {
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v350, &v339);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v350 + 1, v339.__r_.__value_.__r.__words + 1);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v350[1], &v319);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v350[1] + 1, &v320);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v326, v350);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v326 + 4, v350 + 1);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v327, &v350[1]);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v327 + 4, &v350[1] + 1);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v350[1]);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v350);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v339);
            v9 = 1;
          }

          if ((BYTE8(v276[1]) & 7) != 0)
          {
            atomic_fetch_add_explicit((*(&v276[1] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v276[1]);
          if (*(&v276[0] + 1))
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v276[0] + 1));
          }
        }

        std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::push_back[abi:ne200100](&v323, v357);
        if ((buf[1].i8[8] & 7) != 0)
        {
          atomic_fetch_add_explicit((buf[1].i64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf[1].i64);
        if (buf[0].i64[1])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(buf[0].i64[1]);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v319);
        if (*&v357[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v357[8]);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        v8 += 2;
      }

      while (v8 != v7);
      v13 = realityio::Result<std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>,realityio::DetailedError>::~Result(&v342);
      v14 = realityio::MaterialAssetBuilder::kMaterialDataName(v13);
      realityio::Inputs::getAccumulatedValues<realityio::MaterialAssetDataT *>(a2, v14, &v319);
      v317 = 0;
      v316 = 0;
      v318 = 0;
      if (v319)
      {
        std::vector<realityio::MaterialAssetDataT *>::__init_with_size[abi:ne200100]<realityio::MaterialAssetDataT **,realityio::MaterialAssetDataT **>(&v316, v321, v322, (v322 - v321) >> 3);
      }

      EntityGeneratingDataForPrim = realityio::internal::PrimToEntityMap::getEntityGeneratingDataForPrim((*a2 + 16), &v329);
      if (EntityGeneratingDataForPrim && *(EntityGeneratingDataForPrim + 96) == 1 && !*(EntityGeneratingDataForPrim + 72))
      {
        v253 = *(*(*(a2 + 5) + 16) + 272) ^ 1;
      }

      else
      {
        v253 = 0;
      }

      v314 = 0;
      v313 = 0;
      v315 = 0;
      v312[1] = 0;
      v312[0] = 0;
      v311 = v312;
      v16 = v310;
      v310[1] = 0;
      v310[0] = 0;
      v309 = v310;
      v308[1] = 0;
      v308[0] = 0;
      v307 = v308;
      v306[1] = 0;
      v306[0] = 0;
      v305 = v306;
      v304 = 0;
      v303 = REMeshAssetDescriptorCreate();
      if (v303)
      {
        ServiceLocator = REEngineGetServiceLocator();
        MEMORY[0x24C1A4230](ServiceLocator);
        v18 = *(*a2 + 304);
        v19 = *(a2 + 5);
        v20 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
        MaterialIndexAssignor::make(&v342, &v316, &v323, v18, v19, v20, this);
        v301 = 0;
        v300 = 0;
        v302 = 0;
        v251 = *(*a2 + 304);
        memset(v299, 0, sizeof(v299));
        v22 = v323;
        v255 = v324;
        if (v323 == v324)
        {
          goto LABEL_503;
        }

        v256 = 0;
        v252 = *(MEMORY[0x277D86788] + 48);
        v267 = *(MEMORY[0x277D86748] + 48);
        while (1)
        {
          v24 = *v22;
          v23 = v22[1];
          *&v298 = *v22;
          *(&v298 + 1) = v23;
          if (v23)
          {
            atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v297, (v24 + 8));
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v297 + 1, (v24 + 12));
          v25 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
          pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v295, v25, &v297);
          v26 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(&v311, &v297);
          if (v312 != v26)
          {
            v257 = v22;
            v27 = *(v26 + 36);
            goto LABEL_42;
          }

          v32 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
          PrimAtPath = pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v293, v32, &v297);
          pxrInternal__aapl__pxrReserved__::UsdGeomGprim::_GetStaticTfType(PrimAtPath);
          pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
          if ((pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA() & 1) == 0)
          {
            if ((v294 & 7) != 0)
            {
              atomic_fetch_add_explicit((v294 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            goto LABEL_125;
          }

          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v292 = 0;
          v290 = MEMORY[0x277D867B8] + 16;
          v34 = atomic_load(MEMORY[0x277D86568]);
          if (!v34)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
          }

          pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial(&v290, v34, 0);
          pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v283, &v288, &v289);
          MEMORY[0x24C1A5DE0](&v282, "primvars:st");
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          buf[1].i64[1] = 0;
          buf[0].i64[0] = MEMORY[0x277D867B8] + 16;
          v35 = atomic_load(MEMORY[0x277D86568]);
          if (!v35)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
          }

          pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial(buf, v35, 0);
          pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v276, &v339.__r_.__value_.__l.__size_, &v339.__r_.__value_.__r.__words[2]);
          v36 = atomic_load(MEMORY[0x277D86568]);
          if (!v36)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
          }

          v37 = *(v36 + 216);
          v347 = v37;
          if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v347 &= 0xFFFFFFFFFFFFFFF8;
          }

          v350[1] = 0;
          v350[0] = 0;
          *&v351 = 0;
          std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v350, &v347, &v348, 1uLL);
          pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::ComputeSurfaceSource();
          realityio::findFirstUVMeshAttributeNameFromShader(v357, v38, &v337);
          MEMORY[0x24C1A5280](v357);
          v335 = v350;
          std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v335);
          if ((v347 & 7) != 0)
          {
            atomic_fetch_add_explicit((v347 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v257 = v22;
          pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetMaterialBindSubsets(&v335, buf);
          v39 = v336[0];
          v40 = v335;
          if (v336[0] != v335)
          {
            do
            {
              pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v350, v40 + 1, v40 + 4);
              pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
              *(&v358 + 1) = 0;
              *v357 = MEMORY[0x277D867B8] + 16;
              if ((BYTE8(v351) & 7) != 0)
              {
                atomic_fetch_add_explicit((*(&v351 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v351);
              if (v350[1])
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v350[1]);
              }

              v41 = atomic_load(MEMORY[0x277D86568]);
              if (!v41)
              {
                pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
              }

              pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial(v357, v41, 0);
              pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v350, &v348, &v349);
              v42 = atomic_load(MEMORY[0x277D86568]);
              if (!v42)
              {
                pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
              }

              v43 = *(v42 + 216);
              v346 = v43;
              if ((v43 & 7) != 0 && (atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                v346 &= 0xFFFFFFFFFFFFFFF8;
              }

              memset(v332, 0, sizeof(v332));
              std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v332, &v346, &v347, 1uLL);
              pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::ComputeSurfaceSource();
              realityio::findFirstUVMeshAttributeNameFromShader(v333, v44, &__p);
              MEMORY[0x24C1A5280](v333);
              v338 = v332;
              std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v338);
              if ((v346 & 7) != 0)
              {
                atomic_fetch_add_explicit((v346 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                if (__p.__r_.__value_.__l.__size_)
                {
LABEL_127:
                  std::string::operator=(&v337, &__p);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  if ((BYTE8(v351) & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*(&v351 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v351);
                  if (v350[1])
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v350[1]);
                  }

                  MEMORY[0x24C1A5510](&v347);
                  MEMORY[0x24C1A5AA0](v357);
                  break;
                }

                operator delete(__p.__r_.__value_.__l.__data_);
              }

              else if (*(&__p.__r_.__value_.__s + 23))
              {
                goto LABEL_127;
              }

              if ((BYTE8(v351) & 7) != 0)
              {
                atomic_fetch_add_explicit((*(&v351 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v351);
              if (v350[1])
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v350[1]);
              }

              MEMORY[0x24C1A5510](&v347);
              MEMORY[0x24C1A5AA0](v357);
              v40 += 3;
            }

            while (v40 != v39);
          }

          if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
          {
            if (!v337.__r_.__value_.__l.__size_)
            {
LABEL_145:
              std::string::basic_string[abi:ne200100]<0>(v280, "");
              goto LABEL_146;
            }
          }

          else if (!*(&v337.__r_.__value_.__s + 23))
          {
            goto LABEL_145;
          }

          v78 = std::string::basic_string[abi:ne200100]<0>(v357, "primvars:");
          if ((v337.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v79 = &v337;
          }

          else
          {
            v79 = v337.__r_.__value_.__r.__words[0];
          }

          if ((v337.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v337.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v337.__r_.__value_.__l.__size_;
          }

          v81 = std::string::append(v78, v79, size);
          v82 = *&v81->__r_.__value_.__l.__data_;
          v281 = v81->__r_.__value_.__r.__words[2];
          *v280 = v82;
          v81->__r_.__value_.__l.__size_ = 0;
          v81->__r_.__value_.__r.__words[2] = 0;
          v81->__r_.__value_.__r.__words[0] = 0;
          if (SBYTE7(v358) < 0)
          {
            operator delete(*v357);
          }

LABEL_146:
          *v357 = &v335;
          std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](v357);
          if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v337.__r_.__value_.__l.__data_);
          }

          if ((BYTE8(v276[1]) & 7) != 0)
          {
            atomic_fetch_add_explicit((*(&v276[1] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v276[1]);
          if (*(&v276[0] + 1))
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v276[0] + 1));
          }

          MEMORY[0x24C1A5510](&v339);
          MEMORY[0x24C1A5AA0](buf);
          if (SHIBYTE(v281) < 0)
          {
            if (!v280[1])
            {
              goto LABEL_160;
            }

            v83 = v280[0];
          }

          else
          {
            if (!HIBYTE(v281))
            {
              goto LABEL_160;
            }

            v83 = v280;
          }

          MEMORY[0x24C1A5DE0](buf, v83);
          if ((v282 & 7) != 0)
          {
            atomic_fetch_add_explicit((v282 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v282 = buf[0].i64[0];
LABEL_160:
          LOBYTE(v332[0]) = 0;
          pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(buf[0].i64, &v329);
          v84 = buf[0].i64[1];
          if (buf[0].i64[1])
          {
            if (*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(&buf[0].i64[1]) + 14))
            {
              v84 = buf[0].i64[0];
            }

            else
            {
              v84 = 0;
            }
          }

          v279 = v84;
          pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v279);
          v85 = atomic_load(&realityio::tokens::MeshBuilderTokens);
          if (!v85)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MeshBuilderTokens_StaticTokenType>>::_TryToCreateData();
          }

          RealityKitStage = realityio::getRealityKitStageMetadata<BOOL>(&v279, (v85 + 112), v332);
          pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v279);
          v87 = buf[0].i64[1];
          if (buf[0].i64[1] && atomic_fetch_add_explicit((buf[0].i64[1] + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            v87 = (*(*v87 + 8))(v87);
          }

          v333[0] = 0;
          pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(v87);
          pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
          if (!pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
          {
            if (*(*(*(a2 + 5) + 16) + 272) == 1)
            {
              realityio::createGeomModelDescriptorWithPrimitivePrim(&v293, 0x40, 64, 32, 64, buf[0].i64);
              v96 = v333[0];
              if (v333[0] != buf[0].i64[0])
              {
                v333[0] = buf[0].i64[0];
                buf[0].i64[0] = v96;
              }

              realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(buf);
LABEL_421:
              if (v333[0])
              {
                goto LABEL_422;
              }

              v27 = -1;
              if (v304)
              {
                goto LABEL_463;
              }

              v102 = 0;
              goto LABEL_467;
            }

            *v357 = 0;
            IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v293);
            if (IsValid)
            {
              pxrInternal__aapl__pxrReserved__::UsdGeomGprim::_GetStaticTfType(IsValid);
              pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
              IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
              if (IsA)
              {
                pxrInternal__aapl__pxrReserved__::UsdGeomSphere::_GetStaticTfType(IsA);
                pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
                v99 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
                if (!v99)
                {
                  pxrInternal__aapl__pxrReserved__::UsdGeomCube::_GetStaticTfType(v99);
                  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
                  v157 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
                  if (v157)
                  {
                    v158 = atomic_load(&realityio::tokens::CubeMeshBuilderTokens);
                    if (!v158)
                    {
                      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::CubeMeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::CubeMeshBuilderTokens_StaticTokenType>>::_TryToCreateData();
                    }

                    realityio::getAttributeValue<float>(&v293, (v158 + 8), buf);
                    v159 = buf[0].u8[0];
                    v160 = buf[0].i32[2];
                    if ((buf[0].i8[0] & 1) == 0 && buf[2].i8[15] < 0)
                    {
                      operator delete(buf[1].i64[1]);
                    }

                    memset(buf, 0, 28);
                    REGeomBuildBoxDefaultOptions();
                    if (v159)
                    {
                      v161 = v160;
                    }

                    else
                    {
                      *&v161 = 2.0;
                    }

                    buf[0].i32[3] = v161;
                    buf[1].i32[0] = v161;
                    buf[1].i32[1] = v161;
                    v276[0] = buf[0];
                    *(v276 + 12) = *(buf + 12);
                    BoxDescriptor = REMeshAssetCreateBoxDescriptor();
                    if (!*v357)
                    {
                      goto LABEL_417;
                    }
                  }

                  else
                  {
                    pxrInternal__aapl__pxrReserved__::UsdGeomCylinder::_GetStaticTfType(v157);
                    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
                    v162 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
                    if (v162)
                    {
                      v163 = atomic_load(&realityio::tokens::CylinderMeshBuilderTokens);
                      if (!v163)
                      {
                        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::CylinderMeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::CylinderMeshBuilderTokens_StaticTokenType>>::_TryToCreateData();
                      }

                      realityio::getAttributeValue<float>(&v293, (v163 + 24), buf);
                      v164 = buf[0].u8[0];
                      v165 = *&buf[0].i32[2];
                      if ((buf[0].i8[0] & 1) == 0 && buf[2].i8[15] < 0)
                      {
                        operator delete(buf[1].i64[1]);
                      }

                      if (!v164)
                      {
                        v165 = 1.0;
                      }

                      v166 = atomic_load(&realityio::tokens::CylinderMeshBuilderTokens);
                      if (!v166)
                      {
                        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::CylinderMeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::CylinderMeshBuilderTokens_StaticTokenType>>::_TryToCreateData();
                      }

                      realityio::getAttributeValue<float>(&v293, (v166 + 16), buf);
                      v167 = buf[0].u8[0];
                      v168 = buf[0].i32[2];
                      if ((buf[0].i8[0] & 1) == 0 && buf[2].i8[15] < 0)
                      {
                        operator delete(buf[1].i64[1]);
                      }

                      memset(buf, 0, 24);
                      REGeomBuildCylinderDefaultOptions();
                      if (v167)
                      {
                        v169 = *&v168;
                      }

                      else
                      {
                        v169 = 2.0;
                      }

                      *&buf[0].i32[3] = v165;
                      *(buf[0].i64 + 4) = __PAIR64__(LODWORD(v165), LODWORD(v169));
                      strcpy(buf[0].i8, "@");
                      v276[0] = buf[0];
                      *&v276[1] = buf[1].i64[0];
                      BoxDescriptor = REMeshAssetCreateCylinderDescriptor();
                      if (!*v357)
                      {
                        goto LABEL_417;
                      }
                    }

                    else
                    {
                      pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::_GetStaticTfType(v162);
                      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
                      if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
                      {
                        v170 = atomic_load(&realityio::tokens::CapsuleMeshBuilderTokens);
                        if (!v170)
                        {
                          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::CapsuleMeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::CapsuleMeshBuilderTokens_StaticTokenType>>::_TryToCreateData();
                        }

                        buf[0].i32[0] = 1056964608;
                        realityio::getAttributeValueWithDefaultValue<float>((v170 + 24), buf[0].i32, &v293);
                        v172 = v171;
                        v173 = atomic_load(&realityio::tokens::CapsuleMeshBuilderTokens);
                        if (!v173)
                        {
                          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::CapsuleMeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::CapsuleMeshBuilderTokens_StaticTokenType>>::_TryToCreateData();
                        }

                        buf[0].i32[0] = 1065353216;
                        realityio::getAttributeValueWithDefaultValue<float>((v173 + 16), buf[0].i32, &v293);
                        v175 = v174;
                        memset(buf, 0, 20);
                        REGeomBuildCapsuleDefaultOptions();
                        *&v176 = v175 + v172 * 2.0;
                        buf[0].i64[1] = __PAIR64__(v176, LODWORD(v172));
                        strcpy(buf[0].i8, "@");
                        strcpy(&buf[0].i8[4], " ");
                        v276[0] = buf[0];
                        LODWORD(v276[1]) = buf[1].i32[0];
                        BoxDescriptor = REMeshAssetCreateCapsuleDescriptor();
                        if (!*v357)
                        {
                          goto LABEL_417;
                        }
                      }

                      else
                      {
                        if (!pxrInternal__aapl__pxrReserved__::UsdPrim::IsA<pxrInternal__aapl__pxrReserved__::UsdGeomCone>(&v293))
                        {
                          goto LABEL_418;
                        }

                        v177 = atomic_load(&realityio::tokens::ConeMeshBuilderTokens);
                        if (!v177)
                        {
                          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::ConeMeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::ConeMeshBuilderTokens_StaticTokenType>>::_TryToCreateData();
                        }

                        buf[0].i32[0] = 1065353216;
                        realityio::getAttributeValueWithDefaultValue<float>((v177 + 24), buf[0].i32, &v293);
                        v178 = atomic_load(&realityio::tokens::ConeMeshBuilderTokens);
                        if (!v178)
                        {
                          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::ConeMeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::ConeMeshBuilderTokens_StaticTokenType>>::_TryToCreateData();
                        }

                        buf[0].i32[0] = 0x40000000;
                        realityio::getAttributeValueWithDefaultValue<float>((v178 + 16), buf[0].i32, &v293);
                        REGeomBuildConeDefaultOptions();
                        BoxDescriptor = REMeshAssetCreateConeDescriptor();
                        if (!*v357)
                        {
                          goto LABEL_417;
                        }
                      }
                    }
                  }

LABEL_416:
                  RERelease();
                  goto LABEL_417;
                }

                v100 = atomic_load(&realityio::tokens::SphereMeshBuilderTokens);
                if (!v100)
                {
                  pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SphereMeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SphereMeshBuilderTokens_StaticTokenType>>::_TryToCreateData();
                }

                realityio::getAttributeValue<float>(&v293, (v100 + 8), buf);
                if ((buf[0].i8[0] & 1) == 0 && buf[2].i8[15] < 0)
                {
                  operator delete(buf[1].i64[1]);
                }

                REGeomBuildSphereDefaultOptions();
                BoxDescriptor = REMeshAssetCreateSphereDescriptor();
                if (*v357)
                {
                  goto LABEL_416;
                }

LABEL_417:
                *v357 = BoxDescriptor;
              }
            }

LABEL_418:
            v179 = v304;
            if (v304 != *v357)
            {
              v304 = *v357;
              *v357 = v179;
            }

            realityio::WrappedRERef<REAssetDescriptor *>::~WrappedRERef(v357);
            goto LABEL_421;
          }

          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v337.__r_.__value_.__r.__words[0] = MEMORY[0x277D866A8] + 16;
          realityio::createModelDescriptorFromUsdGeomMesh(&v337, &v282, 1, RealityKitStage, v251, buf[0].i64);
          v88 = v333[0];
          if (v333[0] != buf[0].i64[0])
          {
            v333[0] = buf[0].i64[0];
            buf[0].i64[0] = v88;
          }

          realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(buf);
          if (!v333[0])
          {
            MEMORY[0x24C1A4DB0](&v337);
            v102 = 0;
            v27 = -1;
            goto LABEL_467;
          }

          v278 = v333[0];
          RERetain();
          v89 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
          v90 = v298;
          AttributeCount = REGeomModelDescriptorGetAttributeCount();
          v92 = *(v90 + 56);
          v93 = *(v90 + 64);
          if (((v93 - v92) >> 5) + AttributeCount < 0xC9)
          {
            if (v92 != v93)
            {
              v103 = 0;
              do
              {
                pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(buf[0].i64, v89, v92);
                pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                *&v276[0] = MEMORY[0x277D86788] + 16;
                if (*(&v276[0] + 1) && (*(*(&v276[0] + 1) + 57) & 8) == 0 && v252(v276))
                {
                  pxrInternal__aapl__pxrReserved__::UsdSkelBlendShape::GetInbetweens(v357, v276);
                  v105 = *v357;
                  v104 = *&v357[8];
                  v350[0] = v357;
                  std::vector<pxrInternal__aapl__pxrReserved__::UsdSkelInbetweenShape>::__destroy_vector::operator()[abi:ne200100](v350);
                  if (v104 != v105)
                  {
                    v107 = *(realityio::logObjects(v106) + 24);
                    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                    {
                      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(buf, v350);
                      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v350);
                      *v357 = 136315138;
                      *&v357[4] = Text;
                      _os_log_impl(&dword_247485000, v107, OS_LOG_TYPE_DEFAULT, "USD blend shape inbetweens on: %s are not currently supported by RealityIO.", v357, 0xCu);
                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v350);
                    }
                  }

                  v339.__r_.__value_.__r.__words[0] = v278;
                  if (v278)
                  {
                    RERetain();
                  }

                  v109 = realityio::addAttributeFromUsdSkelBlendShape(&v339, v92 + 8, v276);
                  v110 = realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(&v339);
                  if (v109)
                  {
                    v103 = 1;
                  }

                  else
                  {
                    v111 = *(realityio::logObjects(v110) + 24);
                    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
                    {
                      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(buf, v350);
                      v112 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v350);
                      *v357 = 136315138;
                      *&v357[4] = v112;
                      _os_log_impl(&dword_247485000, v111, OS_LOG_TYPE_DEFAULT, "Could not ingest blend shape %s", v357, 0xCu);
                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v350);
                    }
                  }
                }

                MEMORY[0x24C1A5630](v276);
                if ((buf[1].i8[8] & 7) != 0)
                {
                  atomic_fetch_add_explicit((buf[1].i64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf[1].i64);
                if (buf[0].i64[1])
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(buf[0].i64[1]);
                }

                v92 = (v92 + 32);
              }

              while (v92 != v93);
              realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(&v278);
              if (v103)
              {
                pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                *(&v358 + 1) = 0;
                *v357 = MEMORY[0x277D86780] + 16;
                MEMORY[0x24C1A58A0](buf, v357);
                pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetInheritedSkeleton(&v339, v357);
                if (v339.__r_.__value_.__l.__size_ && (*(v339.__r_.__value_.__l.__size_ + 57) & 8) == 0 && (*(v339.__r_.__value_.__r.__words[0] + 32))(&v339))
                {
                  MEMORY[0x24C1A4F20](v350);
                  pxrInternal__aapl__pxrReserved__::UsdSkelCache::GetSkelQuery(v276, v350, &v339);
                  if (v350[1])
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v350[1]);
                  }

                  v335 = *pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::GetAnimQuery(v276);
                  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v335);
                  pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery::GetPrim(v350, &v335);
                  if ((BYTE8(v351) & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*(&v351 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v351);
                  if (v350[1])
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v350[1]);
                  }

                  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::~TfRefPtr(&v335);
                  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v276[2]);
                  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::~TfRefPtr(v276 + 1);
                  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_SkelDefinition>::~TfRefPtr(v276);
                }

                MEMORY[0x24C1A53A0](&v339);
                v113 = v301;
                if (v301 >= v302)
                {
                  v114 = std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdPrim const&>(&v300, &v293);
                }

                else
                {
                  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrim>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdPrim const&,0>(v301, &v293);
                  v114 = v113 + 32;
                }

                v301 = v114;
                *&v276[0] = &v356;
                std::vector<pxrInternal__aapl__pxrReserved__::UsdSkelInbetweenShape>::__destroy_vector::operator()[abi:ne200100](v276);
                *&v276[0] = &v355 + 8;
                std::vector<pxrInternal__aapl__pxrReserved__::UsdSkelBlendShapeQuery::_BlendShape>::__destroy_vector::operator()[abi:ne200100](v276);
                if (buf[2].i64[0])
                {
                  buf[2].i64[1] = buf[2].i64[0];
                  operator delete(buf[2].i64[0]);
                }

                if ((buf[1].i8[8] & 7) != 0)
                {
                  atomic_fetch_add_explicit((buf[1].i64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf[1].i64);
                if (buf[0].i64[1])
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(buf[0].i64[1]);
                }

                MEMORY[0x24C1A5620](v357);
              }

              goto LABEL_224;
            }
          }

          else
          {
            v94 = *(realityio::logObjects(AttributeCount) + 24);
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              v95 = (*(v90 + 64) - *(v90 + 56)) >> 5;
              buf[0].i32[0] = 134217984;
              *(buf[0].i64 + 4) = v95;
              _os_log_impl(&dword_247485000, v94, OS_LOG_TYPE_DEFAULT, "Skipping %zu blend shape paths to avoid exceeding attribute limit", buf, 0xCu);
            }
          }

          realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(&v278);
LABEL_224:
          v336[0] = 0;
          v336[1] = 0;
          v335 = v336;
          v351 = 0u;
          *v350 = 0u;
          LODWORD(v352) = 1065353216;
          pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(buf, &v337.__r_.__value_.__l.__size_, &v337.__r_.__value_.__r.__words[2]);
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttributes(&v347, buf);
          if ((buf[1].i8[8] & 7) != 0)
          {
            atomic_fetch_add_explicit((buf[1].i64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf[1].i64);
          if (buf[0].i64[1])
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(buf[0].i64[1]);
          }

          v115 = v348;
          v116 = v347;
          v266 = v347;
          while (v115 != v116)
          {
            v115 = (v115 - 32);
            v117 = *pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v115);
            if ((v117 & 7) != 0 && (atomic_fetch_add_explicit((v117 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v117 &= 0xFFFFFFFFFFFFFFF8;
            }

            *&v276[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(v115);
            buf[0].i64[0] = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(v276);
            if (!atomic_load(MEMORY[0x277D86578]))
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
              goto LABEL_252;
            }

            if (!atomic_load(MEMORY[0x277D86578]))
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
              goto LABEL_252;
            }

            if (!atomic_load(MEMORY[0x277D86578]))
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==() & 1) != 0 || (isTexCoord3(v115))
            {
              goto LABEL_252;
            }

            *&v276[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(v115);
            buf[0].i64[0] = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(v276);
            if (!atomic_load(MEMORY[0x277D86578]))
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
              goto LABEL_252;
            }

            if (!atomic_load(MEMORY[0x277D86578]))
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
              goto LABEL_252;
            }

            if (!atomic_load(MEMORY[0x277D86578]))
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
LABEL_252:
              v124 = isTexCoord3(v115);
              v275 = v117;
              if ((v117 & 7) != 0 && (atomic_fetch_add_explicit((v117 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                v275 &= 0xFFFFFFFFFFFFFFF8;
              }

              realityio::TexcoordID::TexcoordID(buf, &v275, -1, v124);
              if ((v275 & 7) != 0)
              {
                atomic_fetch_add_explicit((v275 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if (!*std::__tree<realityio::TexcoordID>::__find_equal<realityio::TexcoordID>(&v335, v357, buf))
              {
                operator new();
              }

              if (buf[0].i32[1] != -1)
              {
                if (v350[1])
                {
                  v125 = vcnt_s8(v350[1]);
                  v125.i16[0] = vaddlv_u8(v125);
                  if (v125.u32[0] > 1uLL)
                  {
                    v126 = buf[0].i32[1];
                    if (v350[1] <= buf[0].i32[1])
                    {
                      v126 = buf[0].i32[1] % v350[1];
                    }
                  }

                  else
                  {
                    v126 = (v350[1] - 1) & buf[0].i32[1];
                  }

                  v127 = *(v350[0] + v126);
                  if (v127)
                  {
                    for (i = *v127; i; i = *i)
                    {
                      v129 = i[1];
                      if (v129 == buf[0].i32[1])
                      {
                        if (*(i + 4) == buf[0].i32[1])
                        {
                          goto LABEL_277;
                        }
                      }

                      else
                      {
                        if (v125.u32[0] > 1uLL)
                        {
                          if (v129 >= v350[1])
                          {
                            v129 %= v350[1];
                          }
                        }

                        else
                        {
                          v129 &= v350[1] - 1;
                        }

                        if (v129 != v126)
                        {
                          break;
                        }
                      }
                    }
                  }
                }

                operator new();
              }

LABEL_277:
              if (buf[2].i8[7] < 0)
              {
                operator delete(buf[1].i64[0]);
              }

              if ((buf[0].i8[8] & 7) != 0)
              {
                atomic_fetch_add_explicit((buf[0].i64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v117 & 7) != 0)
              {
LABEL_282:
                atomic_fetch_add_explicit((v117 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }

            else if ((v117 & 7) != 0)
            {
              goto LABEL_282;
            }

            v116 = v266;
          }

          v130 = 0;
          memset(buf, 0, sizeof(buf));
          v131 = 1;
          LODWORD(v276[0]) = 0;
          do
          {
            v132 = v131;
            if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v350[0], v350[1], v130))
            {
              std::deque<int>::push_back(buf, v276);
            }

            v131 = 0;
            LODWORD(v276[0]) = v130 + 1;
            v130 = 1;
          }

          while ((v132 & 1) != 0);
          memset(v276, 0, sizeof(v276));
          v133 = 3;
          *v357 = 2;
          do
          {
            if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v350[0], v350[1], v133 - 1))
            {
              std::deque<int>::push_back(v276, v357);
            }

            *v357 = v133++;
          }

          while (v133 != 7);
          v134 = v335;
          if (v335 != v336)
          {
            do
            {
              realityio::TexcoordID::TexcoordID(v357, (v134 + 4));
              LODWORD(v135) = *&v357[4];
              if (*&v357[4] != -1)
              {
                goto LABEL_315;
              }

              if ((BYTE8(v359) & 1) != 0 || !buf[2].i64[1])
              {
                if (*(&v276[2] + 1))
                {
                  realityio::TexcoordID::setIndex(v357, *(*(*(&v276[0] + 1) + ((*&v276[2] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v276[2] & 0x3FF)));
                  v276[2] = vaddq_s64(v276[2], xmmword_2477680B0);
                  if (*&v276[2] >= 0x800uLL)
                  {
                    operator delete(**(&v276[0] + 1));
                    *(&v276[0] + 1) += 8;
                    *&v276[2] -= 1024;
                  }
                }

                else
                {
                  v136 = *(realityio::logObjects(*&v357[4]) + 24);
                  if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
                  {
                    v137 = *&v357[8];
                    if ((v357[8] & 7) != 0 && (atomic_fetch_add_explicit((*&v357[8] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                    {
                      v137 &= 0xFFFFFFFFFFFFFFF8;
                    }

                    v138 = v137 & 0xFFFFFFFFFFFFFFF8;
                    if ((v137 & 0xFFFFFFFFFFFFFFF8) != 0)
                    {
                      v139 = (v138 + 16);
                      if (*(v138 + 39) < 0)
                      {
                        v139 = *v139;
                      }
                    }

                    else
                    {
                      v139 = "";
                    }

                    LODWORD(v339.__r_.__value_.__l.__data_) = 136316162;
                    *(v339.__r_.__value_.__r.__words + 4) = v139;
                    WORD2(v339.__r_.__value_.__r.__words[1]) = 1024;
                    *(&v339.__r_.__value_.__r.__words[1] + 6) = 6 - buf[2].i32[2];
                    WORD1(v339.__r_.__value_.__r.__words[2]) = 1024;
                    HIDWORD(v339.__r_.__value_.__r.__words[2]) = 2;
                    LOWORD(v340) = 1024;
                    *(&v340 + 2) = 6 - DWORD2(v276[2]);
                    HIWORD(v340) = 1024;
                    v341 = 6;
                    _os_log_impl(&dword_247485000, v136, OS_LOG_TYPE_DEFAULT, "Could not allocate a material buffer for '%s'. %d of %d float2 and %d of %d float4 buffers have been assigned already.", &v339, 0x24u);
                    if ((v137 & 7) != 0)
                    {
                      atomic_fetch_add_explicit(v138, 0xFFFFFFFE, memory_order_release);
                    }
                  }
                }
              }

              else
              {
                realityio::TexcoordID::setIndex(v357, *(*(buf[0].i64[1] + ((buf[2].i64[0] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (buf[2].i16[0] & 0x3FF)));
                buf[2] = vaddq_s64(buf[2], xmmword_2477680B0);
                if (buf[2].i64[0] >= 0x800uLL)
                {
                  operator delete(*buf[0].i64[1]);
                  buf[0].i64[1] += 8;
                  buf[2].i64[0] -= 1024;
                }
              }

              v135 = *&v357[4];
              if (*&v357[4] != -1)
              {
LABEL_315:
                std::to_string(&__p, v135);
                v140 = std::string::insert(&__p, 0, "UV");
                v141 = *&v140->__r_.__value_.__l.__data_;
                v339.__r_.__value_.__r.__words[2] = v140->__r_.__value_.__r.__words[2];
                *&v339.__r_.__value_.__l.__data_ = v141;
                v140->__r_.__value_.__l.__size_ = 0;
                v140->__r_.__value_.__r.__words[2] = 0;
                v140->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                v142 = *&v357[8];
                if ((v357[8] & 7) != 0 && (atomic_fetch_add_explicit((*&v357[8] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  v142 &= 0xFFFFFFFFFFFFFFF8;
                }

                v143 = v142 & 0xFFFFFFFFFFFFFFF8;
                if ((v142 & 0xFFFFFFFFFFFFFFF8) != 0 && *(v143 + 39) < 0)
                {
                  v144 = *(v143 + 16);
                }

                v135 = REGeomModelDescriptorAddAttributeAlias();
                if ((v142 & 7) != 0)
                {
                  atomic_fetch_add_explicit(v143, 0xFFFFFFFE, memory_order_release);
                }

                if (SHIBYTE(v339.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v339.__r_.__value_.__l.__data_);
                }
              }

              v145 = *&v357[8];
              if ((v357[8] & 7) != 0 && (atomic_fetch_add_explicit((*&v357[8] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                v145 &= 0xFFFFFFFFFFFFFFF8;
              }

              v146 = (v145 & 0xFFFFFFFFFFFFFFF8);
              if ((v145 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                EmptyString = (v146 + 4);
              }

              else
              {
                EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v135);
              }

              v148 = *(EmptyString + 23);
              v149 = v148;
              if ((v148 & 0x80u) != 0)
              {
                v148 = *(EmptyString + 8);
              }

              if (v148 >= 9)
              {
                if (v149 < 0)
                {
                  EmptyString = *EmptyString;
                }

                EmptyString = strncmp(EmptyString, "primvars:", 9uLL);
                v150 = EmptyString == 0;
              }

              else
              {
                v150 = 0;
              }

              if ((v145 & 7) != 0)
              {
                atomic_fetch_add_explicit(v146, 0xFFFFFFFE, memory_order_release);
              }

              if (v150)
              {
                v151 = *&v357[8];
                if ((v357[8] & 7) != 0 && (atomic_fetch_add_explicit((*&v357[8] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  v151 &= 0xFFFFFFFFFFFFFFF8;
                }

                if ((v151 & 0xFFFFFFFFFFFFFFF8) == 0)
                {
                  pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
                }

                pxrInternal__aapl__pxrReserved__::TfStringGetSuffix();
                if ((v151 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v151 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                if (REGeomModelDescriptorGetAttributeIndex() == -1)
                {
                  v152 = *&v357[8];
                  if ((v357[8] & 7) != 0 && (atomic_fetch_add_explicit((*&v357[8] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                  {
                    v152 &= 0xFFFFFFFFFFFFFFF8;
                  }

                  v153 = v152 & 0xFFFFFFFFFFFFFFF8;
                  if ((v152 & 0xFFFFFFFFFFFFFFF8) != 0 && *(v153 + 39) < 0)
                  {
                    v154 = *(v153 + 16);
                  }

                  REGeomModelDescriptorAddAttributeAlias();
                  if ((v152 & 7) != 0)
                  {
                    atomic_fetch_add_explicit(v153, 0xFFFFFFFE, memory_order_release);
                  }
                }

                if (SHIBYTE(v339.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v339.__r_.__value_.__l.__data_);
                }
              }

              if (SBYTE7(v359) < 0)
              {
                operator delete(v358);
              }

              if ((v357[8] & 7) != 0)
              {
                atomic_fetch_add_explicit((*&v357[8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v155 = v134[1];
              if (v155)
              {
                do
                {
                  v156 = v155;
                  v155 = *v155;
                }

                while (v155);
              }

              else
              {
                do
                {
                  v156 = v134[2];
                  _ZF = *v156 == v134;
                  v134 = v156;
                }

                while (!_ZF);
              }

              v134 = v156;
            }

            while (v156 != v336);
          }

          std::deque<int>::~deque[abi:ne200100](v276);
          std::deque<int>::~deque[abi:ne200100](buf);
          buf[0].i64[0] = &v347;
          std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](buf);
          std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(v350);
          std::__tree<realityio::TexcoordID>::destroy(&v335, v336[0]);
          MEMORY[0x24C1A4DB0](&v337);
          if (!v333[0])
          {
            v27 = -1;
            goto LABEL_463;
          }

LABEL_422:
          std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::push_back[abi:ne200100](v299, &v298);
          v27 = REMeshAssetDescriptorAddModel();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v276, &v297);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v276 + 1, &v297 + 1);
          DWORD2(v276[0]) = v27;
          if (!*std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(&v311, v357, v276))
          {
            operator new();
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v276);
          v274 = v333[0];
          if (v333[0])
          {
            RERetain();
          }

          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v293, buf);
          v180 = v345[0];
          if (!v345[0])
          {
            goto LABEL_436;
          }

          v181 = v345;
          do
          {
            v182 = v181;
            v183 = v180 + 4;
            v184 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v180 + 4, buf);
            v185 = 1;
            if (!v184)
            {
              v185 = 0;
              v181 = v180;
            }

            v180 = v180[v185];
          }

          while (v180);
          if (v181 == v345 || (!v184 ? (v186 = v183) : (v186 = v182 + 4), pxrInternal__aapl__pxrReserved__::SdfPath::operator<(buf, v186)))
          {
LABEL_436:
            v181 = v345;
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
          LODWORD(v339.__r_.__value_.__l.__data_) = *(v181 + 15);
          v188 = v181[8];
          v187 = v181[9];
          v189 = v187 - v188;
          if (v187 == v188)
          {
            v199 = REGeomModelDescriptorSetMaterialAssignmentForModel();
            pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(v199);
            pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
            if ((pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA() & 1) == 0)
            {
              FaceCount = REGeomModelDescriptorGetFaceCount();
              std::vector<unsigned int>::vector[abi:ne200100](buf, FaceCount);
              REGeomModelDescriptorSetMaterialAssignmentsPerFace();
              v198 = buf[0].i64[0];
              if (buf[0].i64[0])
              {
                buf[0].i64[1] = buf[0].i64[0];
LABEL_458:
                operator delete(v198);
              }
            }
          }

          else
          {
            v190 = REGeomModelDescriptorGetFaceCount();
            std::vector<unsigned int>::vector[abi:ne200100](v357, v190);
            v191 = 0;
            if (0xAAAAAAAAAAAAAAABLL * (v189 >> 3) <= 1)
            {
              v192 = 1;
            }

            else
            {
              v192 = 0xAAAAAAAAAAAAAAABLL * (v189 >> 3);
            }

            do
            {
              pxrInternal__aapl__pxrReserved__::UsdGeomSubset::GetIndicesAttr(v276, (v181[8] + 24 * v191));
              realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v276, buf);
              if (buf[0].i8[0])
              {
                v193 = *(v181[11] + 4 * v191);
                if (v193 != -1)
                {
                  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&buf[0].u64[1]);
                  v194 = buf[2].i64[1];
                  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&buf[0].u64[1]);
                  v195 = buf[2].i64[1] + 4 * buf[0].i64[1];
                  if (v194 != v195)
                  {
                    v196 = *v357;
                    do
                    {
                      v197 = *v194;
                      if (v197 < v190)
                      {
                        *(v196 + 4 * v197) = v193;
                      }

                      ++v194;
                    }

                    while (v194 != v195);
                  }
                }
              }

              realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(buf);
              if ((BYTE8(v276[1]) & 7) != 0)
              {
                atomic_fetch_add_explicit((*(&v276[1] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v276[1]);
              if (*(&v276[0] + 1))
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v276[0] + 1));
              }

              ++v191;
            }

            while (v191 != v192);
            REGeomModelDescriptorSetMaterialAssignmentsPerFace();
            v198 = *v357;
            if (*v357)
            {
              *&v357[8] = *v357;
              goto LABEL_458;
            }
          }

          realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(&v274);
          v201 = v314;
          if (v314 >= v315)
          {
            v202 = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>(&v313, &v297);
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v314, &v297);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v201 + 1, &v297 + 1);
            v202 = v201 + 2;
          }

          v314 = v202;
LABEL_463:
          if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
          {
            v203 = v298;
            buf[0].i64[0] = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
            v204 = *(v203 + 24);
            v205 = buf[0].i64[0];
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
            if (v204 != v205)
            {
              std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<true,0>(buf, (v298 + 16), (v298 + 24));
              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>(&v307, buf);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&buf[0].i64[1]);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
            }
          }

          v102 = 1;
LABEL_467:
          realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(v333);
          if (SHIBYTE(v281) < 0)
          {
            operator delete(v280[0]);
          }

          if ((v282 & 7) != 0)
          {
            atomic_fetch_add_explicit((v282 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v286 & 7) != 0)
          {
            atomic_fetch_add_explicit((v286 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v285);
          if (v284)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v284);
          }

          MEMORY[0x24C1A5510](v287);
          MEMORY[0x24C1A5AA0](&v290);
          if ((v294 & 7) != 0)
          {
            atomic_fetch_add_explicit((v294 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v293.__r_.__value_.__r.__words[2]);
          if (v293.__r_.__value_.__l.__size_)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v293.__r_.__value_.__l.__size_);
          }

          if ((v102 & 1) == 0)
          {
LABEL_480:
            v22 = v257;
            goto LABEL_481;
          }

LABEL_42:
          if (!v256)
          {
            v256 = *v298;
          }

          if (v27 == -1)
          {
            goto LABEL_480;
          }

          v28 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
          v29 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
          if (v29 && (v30 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8)), pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v270, v30, (v298 + 16)), pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v270)))
          {
            v31 = (v298 + 16);
          }

          else
          {
            v31 = &v297;
          }

          pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v293, v28, v31);
          if (v29)
          {
            if ((v273 & 7) != 0)
            {
              atomic_fetch_add_explicit((v273 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v272);
            if (v271)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v271);
            }
          }

          pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetDiagonal(v276, 1.0);
          v22 = v257;
          LODWORD(v339.__r_.__value_.__l.__data_) = v293.__r_.__value_.__l.__data_;
          v339.__r_.__value_.__l.__size_ = v293.__r_.__value_.__l.__size_;
          if (v293.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v293.__r_.__value_.__l.__size_ + 48), 1uLL, memory_order_relaxed);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v339.__r_.__value_.__r.__words[2], &v293.__r_.__value_.__r.__words[2]);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v339.__r_.__value_.__r.__words[2] + 1, &v293.__r_.__value_.__r.__words[2] + 1);
          v340 = v294;
          if ((v294 & 7) != 0 && (atomic_fetch_add_explicit((v294 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v340 &= 0xFFFFFFFFFFFFFFF8;
          }

          while ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v339) & 1) != 0)
          {
            if (LODWORD(v339.__r_.__value_.__l.__data_) == v329 && *&v339.__r_.__value_.__r.__words[1] == v330)
            {
              v45 = v340;
              if ((v331 ^ v340) < 8)
              {
                goto LABEL_113;
              }
            }

            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
            v290 = MEMORY[0x277D86748] + 16;
            if (v291 && (*(v291 + 57) & 8) == 0 && v267(&v290))
            {
              pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetDiagonal(v357, 1.0);
              pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(buf, 1.0);
              MEMORY[0x24C1A54B0](v350, &v290);
              pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery::GetLocalTransformation();
              v283 = v350;
              std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__destroy_vector::operator()[abi:ne200100](&v283);
              MEMORY[0x24C1A4BE0](v350, buf);
              *v357 = *v350;
              v358 = v351;
              v359 = v352;
              v360 = v353;
              *v350 = v276[0];
              v351 = v276[1];
              v352 = v276[2];
              v353 = v277;
              pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator*=();
              v276[0] = *v350;
              v276[1] = v351;
              v276[2] = v352;
              v277 = v353;
              pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v339, v350);
              v46 = atomic_load(&realityio::tokens::MeshBuilderTokens);
              if (!v46)
              {
                pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MeshBuilderTokens_StaticTokenType>>::_TryToCreateData();
              }

              realityio::MutableDirtyPropertyTable::addProperty((this + 136), v350, (v46 + 88));
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v350);
              pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v339, v350);
              v47 = atomic_load(&realityio::tokens::MeshBuilderTokens);
              if (!v47)
              {
                pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MeshBuilderTokens_StaticTokenType>>::_TryToCreateData();
              }

              realityio::MutableDirtyPropertyTable::addProperty((this + 136), v350, (v47 + 96));
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v350);
            }

            pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(&v339, buf);
            LODWORD(v339.__r_.__value_.__l.__data_) = buf[0].i32[0];
            if (v339.__r_.__value_.__l.__size_)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v339.__r_.__value_.__l.__size_);
            }

            v339.__r_.__value_.__l.__size_ = buf[0].u64[1];
            buf[0].i64[1] = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v339.__r_.__value_.__r.__words[2], buf[1].i32);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v339.__r_.__value_.__r.__words[2] + 4, &buf[1].i32[1]);
            if ((v340 & 7) != 0)
            {
              atomic_fetch_add_explicit((v340 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v340 = buf[1].i64[1];
            buf[1].i64[1] = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf[1].i64);
            if (buf[0].i64[1])
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(buf[0].i64[1]);
            }

            MEMORY[0x24C1A54D0](&v290);
          }

          v45 = v340;
LABEL_113:
          v262 = v276[1];
          v264 = v276[0];
          v258 = v277;
          v260 = v276[2];
          if ((v45 & 7) != 0)
          {
            atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v339.__r_.__value_.__r.__words[2]);
          v48 = v339.__r_.__value_.__l.__size_;
          if (v339.__r_.__value_.__l.__size_)
          {
            v48 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v339.__r_.__value_.__l.__size_);
          }

          pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(v48);
          pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
          v49 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
          v51 = v258;
          v51.i32[3] = 1.0;
          v52 = v260;
          v52.i32[3] = 0;
          v259 = v51;
          v261 = v52;
          v53 = v262;
          v53.i32[3] = 0;
          v263 = v53;
          v54 = v264;
          v54.i32[3] = 0;
          v265 = v54;
          if (((v49 | v253) & 1) == 0)
          {
            _Q0 = realityio::getGeomPrimitiveOrientation(&v293, v50);
            v56 = 0;
            _S1 = _Q0.n128_u32[1];
            _S3 = _Q0.n128_u32[2];
            __asm { FMLS            S2, S3, V0.S[2] }

            _S5 = _Q0.n128_u32[3];
            __asm { FMLA            S2, S5, V0.S[3] }

            v66 = vmuls_lane_f32(_Q0.n128_f32[2], _Q0, 3);
            v67.f32[0] = vmuls_lane_f32(_Q0.n128_f32[1], _Q0, 3);
            HIDWORD(v68) = 0;
            LODWORD(v68) = _S2;
            *(&v68 + 1) = (v66 + (_Q0.n128_f32[0] * _Q0.n128_f32[1])) + (v66 + (_Q0.n128_f32[0] * _Q0.n128_f32[1]));
            *(&v68 + 2) = -(v67.f32[0] - (_Q0.n128_f32[0] * _Q0.n128_f32[2])) - (v67.f32[0] - (_Q0.n128_f32[0] * _Q0.n128_f32[2]));
            v69 = -(v66 - (_Q0.n128_f32[0] * _Q0.n128_f32[1])) - (v66 - (_Q0.n128_f32[0] * _Q0.n128_f32[1]));
            __asm
            {
              FMLA            S4, S1, V0.S[1]
              FMLA            S4, S5, V0.S[3]
              FMLA            S6, S3, V0.S[1]
            }

            *&v73 = v69;
            *(&v73 + 1) = _S4 - (_Q0.n128_f32[0] * _Q0.n128_f32[0]);
            *(&v73 + 1) = COERCE_UNSIGNED_INT(_S6 + _S6);
            v67.f32[1] = -(_Q0.n128_f32[0] * _Q0.n128_f32[3]);
            v74 = vmla_laneq_f32(v67, _Q0.n128_u64[0], _Q0, 2);
            *&v75 = vadd_f32(v74, v74);
            __asm
            {
              FMLA            S4, S3, V0.S[2]
              FMLS            S3, S1, V0.S[1]
            }

            *(&v75 + 1) = _S3;
            v276[0] = v68;
            v276[1] = v73;
            v276[2] = v75;
            v277 = xmmword_247757270;
            do
            {
              buf[v56] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v265, COERCE_FLOAT(v276[v56])), v263, *&v276[v56], 1), v261, v276[v56], 2), v259, v276[v56], 3);
              ++v56;
            }

            while (v56 != 4);
          }

          buf[0].i64[0] = REGeomInstanceCreate();
          REMeshAssetDescriptorAddInstance();
          realityio::WrappedRERef<REGeomInstance *>::~WrappedRERef(buf);
          if ((v294 & 7) != 0)
          {
            atomic_fetch_add_explicit((v294 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

LABEL_125:
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v293.__r_.__value_.__r.__words[2]);
          if (v293.__r_.__value_.__l.__size_)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v293.__r_.__value_.__l.__size_);
          }

LABEL_481:
          if ((v296 & 7) != 0)
          {
            atomic_fetch_add_explicit((v296 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v16 = &v295;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v295.__r_.__value_.__r.__words[2]);
          if (v295.__r_.__value_.__l.__size_)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v295.__r_.__value_.__l.__size_);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v297);
          v21 = *(&v298 + 1);
          if (*(&v298 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v298 + 1));
          }

          v22 += 2;
          if (v22 == v255)
          {
LABEL_503:
            v206 = realityio::SkeletonPoseDefinitionBuilder::kOutputName(v21);
            v350[1] = 0;
            v350[0] = 0;
            v207 = *(a2 + 3);
            if (v207)
            {
              v350[1] = std::__shared_weak_count::lock(v207);
              if (v350[1])
              {
                v350[0] = *(a2 + 2);
              }
            }

            MEMORY[0x24C1A5E00](&v351, v206);
            v208 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(a2 + 1), v350);
            v209 = v208;
            v211 = v210;
            if (v208 == v210)
            {
              std::operator+<char>();
              v212 = std::string::append(&v293, ") at prim path (");
              v213 = *&v212->__r_.__value_.__l.__data_;
              v295.__r_.__value_.__r.__words[2] = v212->__r_.__value_.__r.__words[2];
              *&v295.__r_.__value_.__l.__data_ = v213;
              v212->__r_.__value_.__l.__size_ = 0;
              v212->__r_.__value_.__r.__words[2] = 0;
              v212->__r_.__value_.__r.__words[0] = 0;
              String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v254);
              v215 = *(String + 23);
              if (v215 >= 0)
              {
                v216 = String;
              }

              else
              {
                v216 = *String;
              }

              if (v215 >= 0)
              {
                v217 = *(String + 23);
              }

              else
              {
                v217 = *(String + 8);
              }

              v218 = std::string::append(&v295, v216, v217);
              v219 = *&v218->__r_.__value_.__l.__data_;
              v339.__r_.__value_.__r.__words[2] = v218->__r_.__value_.__r.__words[2];
              *&v339.__r_.__value_.__l.__data_ = v219;
              v218->__r_.__value_.__l.__size_ = 0;
              v218->__r_.__value_.__r.__words[2] = 0;
              v218->__r_.__value_.__r.__words[0] = 0;
              v220 = std::string::append(&v339, ")");
              v221 = *&v220->__r_.__value_.__l.__data_;
              *&v358 = *(&v220->__r_.__value_.__l + 2);
              *v357 = v221;
              v220->__r_.__value_.__l.__size_ = 0;
              v220->__r_.__value_.__r.__words[2] = 0;
              v220->__r_.__value_.__r.__words[0] = 0;
              realityio::DetailedError::DetailedError(buf, 204, &realityio::FoundationErrorCategory(void)::instance, v357);
              *(v276 + 8) = buf[0];
              *(&v276[1] + 8) = buf[1];
              *(&v276[2] + 7) = *(&buf[1].i64[1] + 7);
              v222 = buf[2].i8[7];
              memset(&buf[1], 0, 24);
              LOBYTE(v276[0]) = 0;
              HIBYTE(v276[2]) = v222;
              if (SBYTE7(v358) < 0)
              {
                operator delete(*v357);
              }

              if (SHIBYTE(v339.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v339.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v295.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v293.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              do
              {
                v223 = *(v209 + 5);
                v225 = *(v223 + 16);
                v224 = *(v223 + 24);
                if (v224)
                {
                  atomic_fetch_add_explicit(&v224->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if ((*(v209 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v226 = ((*(v209 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
                }

                else
                {
                  v226 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v208);
                }

                realityio::Outputs::getRawValue<realityio::SkeletonPoseDefinitionBuilder::SkeletonPoseDataT *>(v225, v226, buf);
                v227 = buf[0].u8[0];
                if ((buf[0].i8[0] & 1) == 0)
                {
                  *v357 = *(buf + 8);
                  if (buf[2].i8[15] < 0)
                  {
                    std::string::__init_copy_ctor_external(&v358, buf[1].i64[1], buf[2].u64[0]);
                    v22 = v358;
                    LOBYTE(v16) = BYTE7(v359);
                    if ((buf[0].i8[0] & 1) == 0 && buf[2].i8[15] < 0)
                    {
                      operator delete(buf[1].i64[1]);
                    }
                  }

                  else
                  {
                    *&v359 = buf[2].i64[1];
                    v358 = *(&buf[1] + 8);
                    v22 = buf[1].i64[1];
                    LOBYTE(v16) = buf[2].i8[15];
                  }
                }

                if (v224)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v224);
                }

                if (v227)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeConnectable *>>(1uLL);
                }

                if ((v16 & 0x80) != 0)
                {
                  operator delete(v22);
                }

                v209 = *v209;
              }

              while (v209 != v211);
              LOBYTE(v276[0]) = 1;
              memset(v276 + 8, 0, 24);
            }

            if ((v351 & 7) != 0)
            {
              atomic_fetch_add_explicit((v351 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (v350[1])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v350[1]);
            }

            if (LOBYTE(v276[0]) == 1)
            {
              v228 = *(&v276[0] + 1);
              for (j = *&v276[1]; v228 != j; ++v228)
              {
                v230 = *v228;
                v231 = **v228;
                v232 = REMeshAssetDescriptorAddSkeleton();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(buf, v230 + 4);
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&buf[0].i32[1], v230 + 5);
                buf[0].i64[1] = v232;
                std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>(&v309, buf);
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
                v233 = v230[1];
                if (v233)
                {
                  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<true,0>(buf, v230 + 4, v233);
                  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>(&v307, buf);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&buf[0].i64[1]);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
                }
              }
            }

            pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(buf);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
            v347 = 0;
            ModelCount = REMeshAssetDescriptorGetModelCount();
            if (ModelCount)
            {
              memset(v357, 0, sizeof(v357));
              *&v358 = 0;
              v235 = *(a2 + 5);
              PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(&v329);
              v237 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(PrimPath);
              std::string::basic_string[abi:ne200100]<0>(v350, "Mesh");
              v238 = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(&v329);
              AssetURLFromBundle = realityio::ImportSessionImpl::getAssetURLFromBundle(*(v235 + 16), v237, v350, v238, v357);
              if (SBYTE7(v351) < 0)
              {
                operator delete(v350[0]);
              }

              if (AssetURLFromBundle)
              {
                v350[0] = REMemoryAssetParametersCreate();
                REMemoryAssetParametersSetAsyncRegistration();
                REMemoryAssetParametersSetAssetName();
                v240 = REAssetManagerMeshAssetCreateFromMeshAssetDescriptorAndOptionsWithParameters();
                v339.__r_.__value_.__r.__words[0] = v240;
                v241 = v347;
                if (v347 != v240)
                {
                  v347 = v240;
                  v339.__r_.__value_.__r.__words[0] = v241;
                }

                realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v339);
                ModelCount = realityio::WrappedRERef<REMemoryAssetParameters *>::~WrappedRERef(v350);
              }

              else
              {
                v244 = REAssetManagerMeshAssetCreateFromMeshAssetDescriptorAndOptionsAsyncRegistration();
                v350[0] = v244;
                v245 = v347;
                if (v347 != v244)
                {
                  v347 = v244;
                  v350[0] = v245;
                }

                ModelCount = realityio::WrappedRERef<REAsset *>::~WrappedRERef(v350);
              }

              if (SBYTE7(v358) < 0)
              {
                operator delete(*v357);
              }
            }

            else if (v304)
            {
              *v357 = REAssetRegistrationOptionsCreate();
              v242 = REAssetHandleCreateFromAssetRegistrationOptions();
              v350[0] = v242;
              v243 = v347;
              if (v347 != v242)
              {
                v347 = v242;
                v350[0] = v243;
              }

              realityio::WrappedRERef<REAsset *>::~WrappedRERef(v350);
              ModelCount = realityio::WrappedRERef<void *>::~WrappedRERef(v357);
            }

            if (v347)
            {
              pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v329, v357);
              v246 = *(a2 + 5);
              operator new();
            }

            v247 = *(realityio::logObjects(ModelCount) + 24);
            if (os_log_type_enabled(v247, OS_LOG_TYPE_DEFAULT))
            {
              *v357 = 0;
              _os_log_impl(&dword_247485000, v247, OS_LOG_TYPE_DEFAULT, "Could not create valid meshAssetRef.", v357, 2u);
            }

            realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v347);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v335);
            if (buf[2].i8[15] < 0)
            {
              operator delete(buf[1].i64[1]);
            }

            if (buf[1].i8[7] < 0)
            {
              operator delete(buf[0].i64[0]);
            }

            realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(v276);
            buf[0].i64[0] = v299;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](buf);
            buf[0].i64[0] = &v300;
            std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__destroy_vector::operator()[abi:ne200100](buf);
            realityio::Result<MaterialIndexAssignor,realityio::DetailedError>::~Result(&v342, v248);
            break;
          }
        }
      }

      realityio::WrappedRERef<REMeshAssetDescriptor *>::~WrappedRERef(&v303);
      realityio::WrappedRERef<REAssetDescriptor *>::~WrappedRERef(&v304);
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(&v305, v306[0]);
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(&v307, v308[0]);
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(&v309, v310[0]);
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(&v311, v312[0]);
      v342 = &v313;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v342);
      if (v316)
      {
        v317 = v316;
        operator delete(v316);
      }

      realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(&v319);
    }

    v342 = &v323;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v342);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v327);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v326);
    realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v328);
  }

  if ((v331 & 7) != 0)
  {
    atomic_fetch_add_explicit((v331 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v330 + 8);
  result = v330;
  if (v330)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v330);
  }

  v250 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24767C43C(_Unwind_Exception *a1)
{
  realityio::WrappedRERef<REAssetDescriptor *>::~WrappedRERef((v1 - 208));
  realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(&STACK[0x488]);
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if ((STACK[0x250] & 7) != 0)
  {
    atomic_fetch_add_explicit((STACK[0x250] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&STACK[0x258]);
  MEMORY[0x24C1A5510](&STACK[0x278]);
  MEMORY[0x24C1A5AA0](&STACK[0x290]);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&STACK[0x2B0]);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&STACK[0x2D0]);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&STACK[0x2F8]);
  if (STACK[0x308])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x308]);
  }

  STACK[0xA50] = &STACK[0x310];
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&STACK[0xA50]);
  STACK[0xA50] = &STACK[0x328];
  std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__destroy_vector::operator()[abi:ne200100](&STACK[0xA50]);
  realityio::Result<MaterialIndexAssignor,realityio::DetailedError>::~Result(&STACK[0x538], v3);
  realityio::WrappedRERef<REMeshAssetDescriptor *>::~WrappedRERef(&STACK[0x340]);
  realityio::WrappedRERef<REAssetDescriptor *>::~WrappedRERef(&STACK[0x348]);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(&STACK[0x350], STACK[0x358]);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(&STACK[0x368], STACK[0x370]);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(&STACK[0x380], STACK[0x388]);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(&STACK[0x398], STACK[0x3A0]);
  STACK[0x538] = &STACK[0x3B0];
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&STACK[0x538]);
  v4 = STACK[0x3C8];
  if (STACK[0x3C8])
  {
    STACK[0x3D0] = v4;
    operator delete(v4);
  }

  realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(&STACK[0x3E0]);
  STACK[0x538] = &STACK[0x418];
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x538]);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::~pair(&STACK[0x430]);
  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&STACK[0x440]);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&STACK[0x450]);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::GetPrimInPrototype@<X0>(pxrInternal__aapl__pxrReserved__::UsdPrim *this@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(a2, this + 1, &v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    *(a2 + 24) = 0;
  }

  return result;
}

void sub_24767D1BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

void MaterialIndexAssignor::make(_BYTE *a1, uint64_t *a2, void *a3, char a4, uint64_t a5, pxrInternal__aapl__pxrReserved__::UsdStage *a6, uint64_t a7)
{
  v203 = *MEMORY[0x277D85DE8];
  LODWORD(v185) = 0;
  v187[0] = 0;
  v186 = v187;
  v189[1] = 0;
  v189[0] = 0;
  v187[1] = 0;
  v188 = v189;
  v192 = 0uLL;
  v191[1] = 0;
  v191[0] = 0;
  v190 = v191;
  v193 = 0;
  *&v10 = 0xFFFFFFFFLL;
  *(&v10 + 1) = 0xFFFFFFFFLL;
  v194 = v10;
  v196[1] = 0;
  v196[0] = 0;
  v195 = v196;
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::concurrent_unordered_base(v197, 8uLL, &v199);
  v144 = a7;
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>,false>>::concurrent_unordered_base(v198, 8uLL, &v199);
  v12 = *a2;
  v11 = a2[1];
  v13 = v11 - *a2;
  v14 = *(&v192 + 1);
  v15 = v192;
  if (*(&v192 + 1) == v192)
  {
    v16 = v11 - *a2;
  }

  else
  {
    do
    {
      v14 = realityio::WrappedRERef<REAsset *>::~WrappedRERef(v14 - 1);
    }

    while (v14 != v15);
    v16 = a2[1] - *a2;
  }

  *(&v192 + 1) = v15;
  std::vector<realityio::WrappedRERef<REAsset *>>::reserve(&v192, v16 >> 2);
  v150 = a3;
  if (v11 != v12)
  {
    v17 = 0;
    if ((v13 >> 3) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v13 >> 3;
    }

    do
    {
      v19 = *(*a2 + 8 * v17);
      if (v19)
      {
        if (*(v19 + 8))
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v199, *(*a2 + 8 * v17));
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v199 + 1, (v19 + 4));
          BYTE8(v199) = 0;
          if (v191 == std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::find<MaterialIndexAssignor::MaterialKey>(&v190, &v199))
          {
            v20 = (*(&v192 + 1) - v192) >> 3;
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v173, &v199);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v173 + 1, &v199 + 1);
            LOBYTE(v173[1]) = BYTE8(v199);
            v174 = v20;
            std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::__emplace_unique_key_args<MaterialIndexAssignor::MaterialKey,std::pair<MaterialIndexAssignor::MaterialKey,unsigned long>>(&v190, v173);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v173);
            v173[0] = *(v19 + 8);
            if (v173[0])
            {
              RERetain();
            }

            v21 = *(&v192 + 1);
            if (*(&v192 + 1) >= v193)
            {
              v22 = std::vector<realityio::WrappedRERef<REAsset *>>::__emplace_back_slow_path<realityio::WrappedRERef<REAsset *>>(&v192, v173);
            }

            else
            {
              **(&v192 + 1) = v173[0];
              v22 = v21 + 8;
              v173[0] = 0;
            }

            *(&v192 + 1) = v22;
            realityio::WrappedRERef<REAsset *>::~WrappedRERef(v173);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v199);
        }

        if (*(v19 + 16))
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v199, v19);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v199 + 1, (v19 + 4));
          BYTE8(v199) = 1;
          if (v191 == std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::find<MaterialIndexAssignor::MaterialKey>(&v190, &v199))
          {
            v23 = (*(&v192 + 1) - v192) >> 3;
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v173, &v199);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v173 + 1, &v199 + 1);
            LOBYTE(v173[1]) = BYTE8(v199);
            v174 = v23;
            std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::__emplace_unique_key_args<MaterialIndexAssignor::MaterialKey,std::pair<MaterialIndexAssignor::MaterialKey,unsigned long>>(&v190, v173);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v173);
            v173[0] = *(v19 + 16);
            if (v173[0])
            {
              RERetain();
            }

            v24 = *(&v192 + 1);
            if (*(&v192 + 1) >= v193)
            {
              v25 = std::vector<realityio::WrappedRERef<REAsset *>>::__emplace_back_slow_path<realityio::WrappedRERef<REAsset *>>(&v192, v173);
            }

            else
            {
              **(&v192 + 1) = v173[0];
              v25 = v24 + 8;
              v173[0] = 0;
            }

            *(&v192 + 1) = v25;
            realityio::WrappedRERef<REAsset *>::~WrappedRERef(v173);
            LOBYTE(v185) = 1;
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v199);
        }
      }

      ++v17;
    }

    while (v18 != v17);
  }

  v27 = *a3;
  v26 = a3[1];
  v28 = *(&v192 + 1);
  v29 = v192;
  v30 = (*(&v192 + 1) - v192) >> 3;
  v163 = -1;
  std::vector<unsigned int>::vector[abi:ne200100](&__p, v30);
  v146 = v29;
  v147 = v28;
  v142 = v30;
  if (v26 == v27)
  {
    v32 = 0;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    do
    {
      v34 = (*a3 + 16 * v31);
      v35 = *v34;
      v36 = v34[1];
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v35)
      {
        v162 = 0;
        v166 = 0;
        v167 = 0;
        v168 = 0;
        pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v173, a6, (v35 + 8));
        v37 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        *&v199 = MEMORY[0x277D866C8] + 16;
        BoundSubsetsAndCoverage = realityio::getBoundSubsetsAndCoverage(v37, &v166, &v162);
        MEMORY[0x24C1A4EF0](&v199);
        v39 = BoundSubsetsAndCoverage & v162 ^ 1;
        if (BoundSubsetsAndCoverage && v167 != v166)
        {
          v40 = 0;
          if (0xAAAAAAAAAAAAAAABLL * (v167 - v166) <= 1)
          {
            v41 = 1;
          }

          else
          {
            v41 = 0xAAAAAAAAAAAAAAABLL * (v167 - v166);
          }

          do
          {
            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
            *(&v200 + 1) = 0;
            *&v199 = MEMORY[0x277D867B8] + 16;
            if (!atomic_load(MEMORY[0x277D86568]))
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
            }

            pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v160, &v164);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v158, &v164);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v158 + 1, &v165);
            v159 = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v164);
            v43 = std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::find<MaterialIndexAssignor::MaterialKey>(&v190, &v158);
            if (v191 == v43)
            {
              v39 = 1;
            }

            else
            {
              v44 = v43[6];
              if (*(__p + v44) == -1)
              {
                *(__p + v44) = v32++;
              }
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v158);
            MEMORY[0x24C1A5510](&v160);
            MEMORY[0x24C1A5AA0](&v199);
            v40 += 24;
            --v41;
          }

          while (v41);
        }

        if (v39)
        {
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          *(&v200 + 1) = 0;
          *&v199 = MEMORY[0x277D867B8] + 16;
          if (!atomic_load(MEMORY[0x277D86568]))
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
          }

          pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v160, &v164);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v158, &v164);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v158 + 1, &v165);
          v159 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          a3 = v150;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v164);
          v46 = std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::find<MaterialIndexAssignor::MaterialKey>(&v190, &v158);
          if (v191 != v46)
          {
            v47 = v46[6];
            if (*(__p + v47) == -1)
            {
              *(__p + v47) = v32++;
            }
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v158);
          MEMORY[0x24C1A5510](&v160);
          MEMORY[0x24C1A5AA0](&v199);
        }

        else
        {
          a3 = v150;
        }

        if ((v175 & 7) != 0)
        {
          atomic_fetch_add_explicit((v175 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v174);
        if (v173[1])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v173[1]);
        }

        v173[0] = &v166;
        std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](v173);
      }

      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      v31 = ++v33;
    }

    while ((v26 - v27) >> 4 > v33);
  }

  if (v147 != v146)
  {
    v48 = __p;
    if (v142 <= 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = v142;
    }

    v50 = v49;
    while (1)
    {
      if (*v48 == -1)
      {
        *v48 = v32++;
      }

      ++v48;
      if (!--v50)
      {
        v173[0] = 0;
        v173[1] = 0;
        v174 = 0;
        *&v199 = v173;
        BYTE8(v199) = 0;
        std::vector<realityio::WrappedRERef<REAsset *>>::__vallocate[abi:ne200100](v173, v142);
      }
    }
  }

  v173[0] = 0;
  v173[1] = 0;
  v174 = 0;
  std::vector<realityio::WrappedRERef<REAsset *>>::__vdeallocate(&v192);
  v192 = *v173;
  v193 = v174;
  v173[0] = 0;
  v173[1] = 0;
  v174 = 0;
  v51 = v190;
  if (v190 != v191)
  {
    v52 = __p;
    do
    {
      v51[6] = v52[v51[6]];
      v53 = v51[1];
      if (v53)
      {
        do
        {
          v54 = v53;
          v53 = *v53;
        }

        while (v53);
      }

      else
      {
        do
        {
          v54 = v51[2];
          v55 = *v54 == v51;
          v51 = v54;
        }

        while (!v55);
      }

      v51 = v54;
    }

    while (v54 != v191);
  }

  *&v199 = v173;
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v199);
  if (__p)
  {
    v170 = __p;
    operator delete(__p);
  }

  v56 = a3[1] - *a3;
  if (v56)
  {
    v57 = 0;
    v58 = v56 >> 4;
    if (v58 <= 1)
    {
      v59 = 1;
    }

    else
    {
      v59 = v58;
    }

    while (1)
    {
      v60 = *(*a3 + 16 * v57);
      if (v60)
      {
        break;
      }

LABEL_106:
      if (++v57 == v59)
      {
        goto LABEL_139;
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v158, (v60 + 8));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v158 + 1, (v60 + 12));
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&__p, a6, &v158);
    hasMaterialXSurface = realityio::hasMaterialXSurface(&__p, v61);
    if ((hasMaterialXSurface & 1) != 0 || (pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(hasMaterialXSurface), pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(), !pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA()) || (pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(), v173[0] = (MEMORY[0x277D866A8] + 16), v64 = realityio::isCatmullClarkSurface(v173, v63) & a4, MEMORY[0x24C1A4DB0](v173), (v64 & 1) == 0))
    {
      MaterialIndexAssignor::registerNonSubdGPrim(&v185, &__p);
LABEL_101:
      if ((v172 & 7) != 0)
      {
        atomic_fetch_add_explicit((v172 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v171);
      if (v170)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v170);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v158);
      goto LABEL_106;
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&__p, v173);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v199, v173);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v199 + 1, v173 + 1);
    WORD4(v199) = 1;
    HIDWORD(v199) = -1;
    v200 = 0u;
    v201 = 0u;
    v202 = 0u;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v173);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v173[0] = (MEMORY[0x277D866A8] + 16);
    v65 = realityio::getBoundSubsetsAndCoverage(v173, &v200, (&v199 | 9));
    MEMORY[0x24C1A4DB0](v173);
    v66 = v200;
    v67 = (*(&v200 + 1) - v200) >> 3;
    v68 = 0xAAAAAAAAAAAAAAABLL * v67;
    if (*(&v200 + 1) == v200)
    {
      if ((v65 & 1) == 0)
      {
LABEL_126:
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        v175 = 0;
        v173[0] = (MEMORY[0x277D867B8] + 16);
        if (!atomic_load(MEMORY[0x277D86568]))
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v166, &v164);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v160, &v164);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v160 + 1, &v165);
        v161 = 1;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v164);
        v80 = std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::find<MaterialIndexAssignor::MaterialKey>(&v190, &v160);
        v81 = v80;
        if (v191 != v80)
        {
          HIDWORD(v199) = v80[6];
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v160);
        MEMORY[0x24C1A5510](&v166);
        MEMORY[0x24C1A5AA0](v173);
        if (v191 != v81)
        {
LABEL_130:
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&__p, &v160);
          std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo,0>(v173, &v160, &v199);
          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>(&v188, v173);
          if (v177)
          {
            v178 = v177;
            operator delete(v177);
          }

          v166 = v176;
          std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&v166);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v174);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v173);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v160);
          BYTE1(v185) = 1;
          goto LABEL_135;
        }

LABEL_134:
        MaterialIndexAssignor::registerNonSubdGPrim(&v185, &__p);
LABEL_135:
        if (*(&v201 + 1))
        {
          *&v202 = *(&v201 + 1);
          operator delete(*(&v201 + 1));
        }

        v173[0] = &v200;
        std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](v173);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        a3 = v150;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v199);
        goto LABEL_101;
      }

      LOBYTE(v70) = 0;
    }

    else
    {
      v69 = 0;
      v70 = 0;
      if (v68 <= 1)
      {
        v71 = 1;
      }

      else
      {
        v71 = 0xAAAAAAAAAAAAAAABLL * v67;
      }

      do
      {
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        v175 = 0;
        v173[0] = (MEMORY[0x277D867B8] + 16);
        if (!atomic_load(MEMORY[0x277D86568]))
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
        v70 |= realityio::isMaterialX(&v166, v73);
        MEMORY[0x24C1A5510](&v166);
        MEMORY[0x24C1A5AA0](v173);
        v69 += 24;
        --v71;
      }

      while (v71);
      if ((v65 & 1) == 0)
      {
        if (v70)
        {
          goto LABEL_134;
        }

        goto LABEL_126;
      }
    }

    if (BYTE9(v199) == 1 && (v70 & 1) == 0)
    {
      std::vector<unsigned int>::resize((&v201 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(&v200 + 1) - v200) >> 3), &MaterialIndexAssignor::kInvalidMaterialIndex);
      if (*(&v66 + 1) == v66)
      {
        goto LABEL_130;
      }

      v74 = 0;
      v75 = 0;
      if (v68 <= 1)
      {
        v68 = 1;
      }

      v76 = 1;
      do
      {
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        v175 = 0;
        v173[0] = (MEMORY[0x277D867B8] + 16);
        if (!atomic_load(MEMORY[0x277D86568]))
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v166, &v164);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v160, &v164);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v160 + 1, &v165);
        v161 = 1;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v164);
        v78 = std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::find<MaterialIndexAssignor::MaterialKey>(&v190, &v160);
        if (v191 == v78)
        {
          v76 = 0;
        }

        else
        {
          *(*(&v201 + 1) + 4 * v75) = v78[6];
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v160);
        MEMORY[0x24C1A5510](&v166);
        MEMORY[0x24C1A5AA0](v173);
        ++v75;
        v74 += 24;
      }

      while (v68 != v75);
      if (v76)
      {
        goto LABEL_130;
      }
    }

    goto LABEL_134;
  }

LABEL_139:
  v82 = *(*(a5 + 16) + 16);
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  v84 = v144;
  v85 = v186;
  v86 = MEMORY[0x277D82818];
  if (v186 != v187)
  {
    v87 = *(MEMORY[0x277D82818] + 64);
    v151 = v87;
    v152 = *MEMORY[0x277D82818];
    v149 = *(MEMORY[0x277D82818] + 72);
    do
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v173);
      Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v84 + 8));
      v89 = *(Name + 23);
      if (v89 >= 0)
      {
        v90 = Name;
      }

      else
      {
        v90 = *Name;
      }

      if (v89 >= 0)
      {
        v91 = *(Name + 23);
      }

      else
      {
        v91 = *(Name + 8);
      }

      v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v174, v90, v91);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, "_baseColor_", 11);
      v93 = *(v85 + 8);
      v94 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, "_", 1);
      v95 = *(v85 + 9);
      v96 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, "_", 1);
      v97 = *(v85 + 10);
      v98 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v98, "_", 1);
      v99 = *(v85 + 11);
      v100 = std::ostream::operator<<();
      v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, "_", 1);
      LOBYTE(v199) = *(v85 + 48);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, &v199, 1);
      v154 = *(v85 + 2);
      v102 = *(v85 + 48);
      std::stringbuf::str();
      v158 = 0;
      __p = REAssetManagerCreateAssetHandle();
      if (__p)
      {
        v166 = REMaterialAssetBuilderCreate();
        if (v166)
        {
          REMaterialAssetBuilderSetName();
          REMaterialAssetBuilderSetMaterialDefinition();
          REMaterialAssetBuilderSetColor4F();
          v103 = REAssetManagerMaterialAssetBuilderBuildAsync();
          v160 = v103;
          if (v103)
          {
            v158 = v103;
            v160 = 0;
          }

          realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v160);
        }

        realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(&v166);
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&__p);
      if (SBYTE7(v200) < 0)
      {
        operator delete(v199);
      }

      if (v158)
      {
        if (*(*(a5 + 16) + 40))
        {
          v104 = *(*(a5 + 16) + 40);
          realityio::LiveSceneManager::queueForDeferredAssetLoad();
        }

        v157 = v158;
        RERetain();
        realityio::Builder::addAsset(v84, &v157, 0);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v157);
        v155 = *(v85 + 2);
        v105 = *(v85 + 48);
        *&v199 = *(v85 + 49);
        *(&v199 + 7) = v85[7];
        v106 = v196[0];
        if (!v196[0])
        {
LABEL_179:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v107 = v106;
            v108 = v106[3].u8[0];
            if (v108 <= v105)
            {
              v109 = v107[2];
              if (v108 != v105)
              {
                break;
              }

              v110 = vmovn_s32(vcgtq_f32(v109, v155));
              if ((v110.i8[0] & 1) == 0 && ((vmovn_s32(vceqq_f32(v155, v109)).u8[0] & 1) == 0 || v155.f32[1] >= v109.f32[1] && (v155.f32[1] != v109.f32[1] || v155.f32[2] >= v109.f32[2] && (v155.f32[2] != v109.f32[2] || (v110.i8[6] & 1) == 0))))
              {
                break;
              }
            }

            v106 = v107->i64[0];
            if (!v107->i64[0])
            {
              goto LABEL_179;
            }
          }

          if (v108 >= v105)
          {
            v111 = vmovn_s32(vcgtq_f32(v155, v109));
            if ((v111.i8[0] & 1) == 0 && ((vmovn_s32(vceqq_f32(v109, v155)).u8[0] & 1) == 0 || v109.f32[1] >= v155.f32[1] && (v109.f32[1] != v155.f32[1] || v109.f32[2] >= v155.f32[2] && (v109.f32[2] != v155.f32[2] || (v111.i8[6] & 1) == 0))))
            {
              break;
            }
          }

          v106 = v107->i64[1];
          if (!v106)
          {
            goto LABEL_179;
          }
        }

        std::vector<realityio::WrappedRERef<REAsset *>>::push_back[abi:ne200100](&v192, &v158);
        v84 = v144;
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v158);
      v173[0] = v152;
      *(v173 + *(v152 - 3)) = v151;
      v174 = v149;
      v175 = MEMORY[0x277D82878] + 16;
      if (v181 < 0)
      {
        operator delete(v180);
      }

      v175 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v176);
      std::iostream::~basic_iostream();
      MEMORY[0x24C1A9110](v182);
      v112 = v85[1];
      if (v112)
      {
        do
        {
          v113 = v112;
          v112 = *v112;
        }

        while (v112);
      }

      else
      {
        do
        {
          v113 = v85[2];
          v55 = *v113 == v85;
          v85 = v113;
        }

        while (!v55);
      }

      v85 = v113;
    }

    while (v113 != v187);
  }

  if (BYTE3(v185))
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v173);
    v114 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v84 + 8));
    v115 = *(v114 + 23);
    if (v115 >= 0)
    {
      v116 = v114;
    }

    else
    {
      v116 = *v114;
    }

    if (v115 >= 0)
    {
      v117 = *(v114 + 23);
    }

    else
    {
      v117 = *(v114 + 8);
    }

    v118 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v174, v116, v117);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "_vertexColor", 12);
    std::stringbuf::str();
    v158 = 0;
    __p = REAssetManagerCreateAssetHandle();
    if (__p)
    {
      v166 = REMaterialAssetBuilderCreate();
      if (v166)
      {
        REMaterialAssetBuilderSetName();
        REMaterialAssetBuilderSetMaterialDefinition();
        REMaterialAssetBuilderSetFunctionConstant();
        REMaterialAssetBuilderSetFunctionConstant();
        v119 = REAssetManagerMaterialAssetBuilderBuildAsync();
        v160 = v119;
        if (v119)
        {
          v158 = v119;
          v160 = 0;
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v160);
      }

      realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(&v166);
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&__p);
    if (SBYTE7(v200) < 0)
    {
      operator delete(v199);
    }

    if (v158)
    {
      if (*(*(a5 + 16) + 40))
      {
        v120 = *(*(a5 + 16) + 40);
        realityio::LiveSceneManager::queueForDeferredAssetLoad();
      }

      v156 = v158;
      RERetain();
      realityio::Builder::addAsset(v144, &v156, 0);
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v156);
      *(&v194 + 1) = (*(&v192 + 1) - v192) >> 3;
      std::vector<realityio::WrappedRERef<REAsset *>>::push_back[abi:ne200100](&v192, &v158);
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v158);
    v173[0] = *v86;
    v121 = *(v86 + 72);
    *(v173 + *(v173[0] - 3)) = *(v86 + 64);
    v174 = v121;
    v175 = MEMORY[0x277D82878] + 16;
    if (v181 < 0)
    {
      operator delete(v180);
    }

    v175 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v176);
    std::iostream::~basic_iostream();
    MEMORY[0x24C1A9110](v182);
  }

  if (BYTE2(v185) == 1)
  {
    v173[0] = *(*(a5 + 16) + 248);
    if (v173[0])
    {
      RERetain();
      if (v173[0])
      {
        *&v194 = (*(&v192 + 1) - v192) >> 3;
        std::vector<realityio::WrappedRERef<REAsset *>>::push_back[abi:ne200100](&v192, v173);
        if (*(*(a5 + 16) + 40))
        {
          realityio::LiveSceneManager::queueForDeferredAssetLoad();
        }
      }
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(v173);
  }

  v122 = v188;
  if (v188 != v189)
  {
    do
    {
      MaterialIndexAssignor::updateSentinelToRealIndex((v122 + 6), -2, v194);
      MaterialIndexAssignor::updateSentinelToRealIndex((v122 + 6), -3, SDWORD2(v194));
      if (*(v122 + 15) == -4)
      {
        v123 = v196[0];
        if (v196[0])
        {
          v124 = *(v122 + 128);
          v125 = *(v122 + 7);
          LODWORD(v126) = HIDWORD(v122[14]);
          LODWORD(v127) = v122[15];
          v128 = v196;
          do
          {
            v129 = v123[3].u8[0];
            if (v129 < v124 || v129 == v124 && ((v130 = v123[2], v131 = vmovn_s32(vcgtq_f32(v125, v130)), (v131.i8[0] & 1) != 0) || (vmovn_s32(vceqq_f32(v130, v125)).u8[0] & 1) != 0 && (v130.f32[1] < v126 || v130.f32[1] == v126 && (v130.f32[2] < v127 || v130.f32[2] == v127 && (v131.i8[6] & 1) != 0))))
            {
              v123 = (v123 + 8);
            }

            else
            {
              v128 = v123;
            }

            v123 = v123->i64[0];
          }

          while (v123);
          if (v128 != v196)
          {
            v132 = v128[3].u8[0];
            if (v132 <= v124)
            {
              if (v132 != v124 || (v133 = v128[2], v134 = vmovn_s32(vcgtq_f32(v133, v125)), (v134.i8[0] & 1) == 0) && ((vmovn_s32(vceqq_f32(v125, v133)).u8[0] & 1) == 0 || v126 >= v133.f32[1] && (v126 != v133.f32[1] || v127 >= v133.f32[2] && (v127 != v133.f32[2] || (v134.i8[6] & 1) == 0))))
              {
                *(v122 + 15) = v128[4].i64[0];
              }
            }
          }
        }
      }

      v135 = v122[1];
      if (v135)
      {
        do
        {
          v136 = v135;
          v135 = *v135;
        }

        while (v135);
      }

      else
      {
        do
        {
          v136 = v122[2];
          v55 = *v136 == v122;
          v122 = v136;
        }

        while (!v55);
      }

      v122 = v136;
    }

    while (v136 != v189);
  }

  MaterialIndexAssignor::MaterialIndexAssignor(v173, &v185);
  *a1 = 1;
  MaterialIndexAssignor::MaterialIndexAssignor((a1 + 8), v173);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>,false>>::~concurrent_unordered_base(&v184, v137);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::~concurrent_unordered_base(&v183, v138);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(v182[0]);
  *&v199 = &v179;
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v199);
  std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::destroy(v178);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::destroy(v176[1].__locale_);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(v174);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>,false>>::~concurrent_unordered_base(v198, v139);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::~concurrent_unordered_base(v197, v140);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(v196[0]);
  v173[0] = &v192;
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](v173);
  std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::destroy(v191[0]);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::destroy(v189[0]);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(v187[0]);
  v141 = *MEMORY[0x277D85DE8];
}

void sub_24767EAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(&a36);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&__p);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a29);
  if (*(v43 - 185) < 0)
  {
    operator delete(*(v43 - 208));
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a43);
  realityio::types::Ok<MaterialIndexAssignor>::~Ok(&STACK[0x600], v45);
  _Unwind_Resume(a1);
}

uint64_t realityio::getRealityKitStageMetadata<BOOL>(uint64_t *a1, void *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v3 = a3;
  if (*a1)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = *a3;
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v20, v7);
    v8 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v20);
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetCustomLayerData(&v23, v8);
    v9 = v21;
    if (v21 && atomic_fetch_add_explicit(v21 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      v9 = (*(*v9 + 8))(v9);
    }

    if ((*a2 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
    }

    std::operator+<char>();
    ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
    v11 = ValueAtPath;
    if (ValueAtPath && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>(ValueAtPath))
    {
      v12 = *(v11 + 8);
      if ((v12 & 4) != 0)
      {
        v11 = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(v11);
      }

      v5 = *v11;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::TfStringToLower();
      v13 = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
      v14 = v13;
      if (v13 && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>(v13))
      {
        v15 = *(v14 + 1);
        if ((v15 & 4) != 0)
        {
          v3 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(v14);
        }

        else
        {
          v3 = v14;
        }
      }

      v5 = *v3;
      if (v19 < 0)
      {
        operator delete(__p);
      }
    }

    if (v22 < 0)
    {
      operator delete(v20);
    }

    v16 = v23;
    v23 = 0;
    if (v16)
    {
      std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v16, *(v16 + 8));
      MEMORY[0x24C1A91B0](v16, 0x1020C4062D53EE8);
    }
  }

  return v5 & 1;
}

void sub_24767F020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary((v21 - 24));
  _Unwind_Resume(a1);
}

void sub_24767F068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, atomic_uint *a14)
{
  if (a14)
  {
    if (atomic_fetch_add_explicit(a14 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a14 + 8))(a14);
    }
  }

  JUMPOUT(0x24767F060);
}

void *std::deque<int>::push_back(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 7) - 1;
  }

  v8 = result[4];
  v7 = result[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x400)
    {
      v10 = result[3];
      v11 = v10 - *result;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(v13);
    }

    result[4] = v8 - 1024;
    v14 = *v4;
    result[1] = v4 + 8;
    result = std::__split_buffer<int *>::emplace_back<int *&>(result, &v14);
    v4 = v3[1];
    v7 = v3[5];
    v9 = v3[4] + v7;
  }

  *(*&v4[(v9 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v9 & 0x3FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void sub_24767F54C(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *realityio::MeshAssetBuilder::run(realityio::Inputs *)::$_0::~$_0(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(a1);
}

uint64_t realityio::MeshAssetBuilder::clear(realityio::MeshAssetBuilder *this, realityio::Inputs *a2)
{
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = realityio::MeshAssetBuilder::kOutputName(this);
  realityio::Outputs::getRawValue<std::shared_ptr<realityio::MeshAssetBuilder::MeshAssetDataT>>(v5, v6, &v25);
  if (v25)
  {
    v7 = v26;
    if (*(&v26 + 1))
    {
      atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit((*(&v7 + 1) + 8), 1uLL, memory_order_relaxed);
      v20[0] = 1;
      v21 = v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
    }

    else
    {
      v20[0] = 1;
      v21 = v26;
    }
  }

  else
  {
    v23 = v26;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
    }

    else
    {
      v24 = v27;
    }

    v20[0] = 0;
    v21 = v23;
    v22 = v24;
  }

  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&v25);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v20[0])
  {
    v8 = v21;
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
    {
      if (*(v21 + 159) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, *(v21 + 136), *(v21 + 144));
      }

      else
      {
        v18 = *(v21 + 136);
      }

      if (*(v8 + 183) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v8 + 160), *(v8 + 168));
      }

      else
      {
        __p = *(v8 + 160);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v16, (v8 + 184));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v17, (v8 + 188));
      realityio::ImportSession::assetDescriptorCacheEject(&v18, &v16);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }
    }

    v9 = *(a2 + 5);
    v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v25, v10, (a2 + 32));
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v25, &v23);
    realityio::ImportSession::clearMeshAsset(v9, &v23);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v23);
    if ((v27.__r_.__value_.__s.__data_[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v27.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26 + 8);
    v11 = v26;
    if (v26)
    {
      v11 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v26);
    }

    v13 = *(this + 2);
    v12 = *(this + 3);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = realityio::MeshAssetBuilder::kOutputName(v11);
    std::mutex::lock((v13 + 64));
    if (v13 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v13 + 40, v14))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v13 + 40), v14);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v13, v14);
    std::mutex::unlock((v13 + 64));
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  return realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v20);
}

void sub_24767F878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&a20);
  _Unwind_Resume(a1);
}

void realityio::MeshAssetBuilder::~MeshAssetBuilder(realityio::MeshAssetBuilder *this)
{
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

uint64_t std::vector<realityio::WrappedRERef<REAsset *>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<realityio::WrappedRERef<REAsset *>>::__emplace_back_slow_path<realityio::WrappedRERef<REAsset *> const&>(a1, a2);
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
    *(a1 + 8) = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t MaterialIndexAssignor::updateSentinelToRealIndex(uint64_t result, int a2, int a3)
{
  if (*(result + 12) == a2)
  {
    *(result + 12) = a3;
    v3 = *(result + 24) - *(result + 16);
    if (v3)
    {
      if ((*(result + 9) & 1) == 0)
      {
        v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
        v5 = *(result + 40);
        if (v4 <= 1)
        {
          v4 = 1;
        }

        do
        {
          if (*v5 == a2)
          {
            *v5 = a3;
          }

          ++v5;
          --v4;
        }

        while (v4);
      }
    }
  }

  return result;
}

void std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::destroy(*a1);
    std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<MaterialIndexAssignor::MaterialKey const,unsigned long>,0>((a1 + 4));

    operator delete(a1);
  }
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<MaterialIndexAssignor::MaterialKey const,unsigned long>,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void MaterialIndexAssignor::MaterialKey::~MaterialKey(MaterialIndexAssignor::MaterialKey *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 11);
    if (v2)
    {
      *(a1 + 12) = v2;
      operator delete(v2);
    }

    v3 = (a1 + 64);
    std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&v3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 48));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 32));
    operator delete(a1);
  }
}

void MaterialIndexAssignor::GPrimInfo::~GPrimInfo(MaterialIndexAssignor::GPrimInfo *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = (this + 16);
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

uint64_t std::pair<MaterialIndexAssignor::MaterialKey,unsigned long>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t *std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::find<MaterialIndexAssignor::MaterialKey>(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = (a1 + 8);
  do
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v3 + 4, a2) || v3[4] == *a2 && *(v3 + 40) < *(a2 + 8))
    {
      ++v3;
    }

    else
    {
      v5 = v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v2 == v5 || (pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, v5 + 4) & 1) != 0 || *a2 == v5[4] && *(a2 + 8) < *(v5 + 40))
  {
    return v2;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::__emplace_unique_key_args<MaterialIndexAssignor::MaterialKey,std::pair<MaterialIndexAssignor::MaterialKey,unsigned long>>(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_11;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if ((pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, v2 + 4) & 1) == 0 && (*a2 != v5[4] || *(a2 + 8) >= *(v5 + 40)))
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_11;
      }
    }

    result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v5 + 4, a2);
    if ((result & 1) == 0 && (v5[4] != *a2 || *(v5 + 40) >= *(a2 + 8)))
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  if (!*v3)
  {
LABEL_11:
    operator new();
  }

  return result;
}

uint64_t MaterialIndexAssignor::registerNonSubdGPrim(float32x4_t **this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v73 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdGeomGprim::_GetStaticTfType(this);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if (!result)
  {
    goto LABEL_90;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2, &v58);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v64, &v58);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v65, &v58 + 1);
  v66 = 0;
  v67 = -1;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v58);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v58 = (MEMORY[0x277D866C8] + 16);
  BoundSubsetsAndCoverage = realityio::getBoundSubsetsAndCoverage(&v58, &v68, (&v64 | 9));
  MEMORY[0x24C1A4EF0](&v58);
  v6 = BoundSubsetsAndCoverage & HIBYTE(v66) ^ 1;
  if (BoundSubsetsAndCoverage)
  {
    v7 = v68;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((*(&v68 + 1) - v68) >> 3);
    std::vector<unsigned int>::resize((&v69 + 8), v8, &MaterialIndexAssignor::kInvalidMaterialIndex);
    if (*(&v7 + 1) != v7)
    {
      v9 = 0;
      v10 = 0;
      if (v8 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v8;
      }

      v12 = MEMORY[0x277D86568];
      do
      {
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        *&v60 = 0;
        v58 = (MEMORY[0x277D867B8] + 16);
        if (!atomic_load(v12))
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v41, &v46);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v55, &v46);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v55 + 1, &v46 + 1);
        v56 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v46);
        v14 = std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::find<MaterialIndexAssignor::MaterialKey>((this + 7), &v55);
        if (this + 8 == v14)
        {
          v6 = 1;
        }

        else
        {
          *(*(&v69 + 1) + 4 * v10) = v14[6];
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v55);
        MEMORY[0x24C1A5510](&v41);
        MEMORY[0x24C1A5AA0](&v58);
        ++v10;
        v9 += 24;
      }

      while (v11 != v10);
    }
  }

  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v57 = 0;
    v55 = MEMORY[0x277D867B8] + 16;
    if (!atomic_load(MEMORY[0x277D86568]))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(v54, &v58);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v51, &v58);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v52, &v58 + 1);
    v53 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v58);
    v16 = std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::find<MaterialIndexAssignor::MaterialKey>((this + 7), &v51);
    if (this + 8 != v16)
    {
      v17 = *(v16 + 12);
      v67 = v17;
      if (BoundSubsetsAndCoverage)
      {
        v18 = *(&v69 + 1);
        if (v70 != *(&v69 + 1))
        {
          v19 = (v70 - *(&v69 + 1)) >> 2;
          if (v19 <= 1)
          {
            v19 = 1;
          }

          do
          {
            if (*v18 == -1)
            {
              *v18 = v17;
            }

            ++v18;
            --v19;
          }

          while (v19);
        }
      }

      goto LABEL_84;
    }

    v20 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v50[0] = MEMORY[0x277D866C8] + 16;
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(v20);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetDisplayColorPrimvar(&v58, v50);
      if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar() && pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredValue(&v58))
      {
        *(this + 3) = 1;
        v67 = -3;
        if (BoundSubsetsAndCoverage)
        {
          v21 = *(&v69 + 1);
          if (v70 != *(&v69 + 1))
          {
            v22 = (v70 - *(&v69 + 1)) >> 2;
            if (v22 <= 1)
            {
              v22 = 1;
            }

            do
            {
              if (*v21 == -1)
              {
                *v21 = -3;
              }

              ++v21;
              --v22;
            }

            while (v22);
          }
        }
      }

      else
      {
        *(this + 2) = 1;
        v67 = -2;
        if (BoundSubsetsAndCoverage)
        {
          v35 = *(&v69 + 1);
          if (v70 != *(&v69 + 1))
          {
            v36 = (v70 - *(&v69 + 1)) >> 2;
            if (v36 <= 1)
            {
              v36 = 1;
            }

            do
            {
              if (*v35 == -1)
              {
                *v35 = -2;
              }

              ++v35;
              --v36;
            }

            while (v36);
          }
        }
      }

      if ((BYTE8(v60) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v60 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v60 & 7) != 0)
      {
        atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v59 + 8);
      v37 = v59;
      if (!v59)
      {
        goto LABEL_83;
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetDisplayColorAttr(&v46, v50);
      v45 = 0;
      v44 = xmmword_247757260;
      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v46) && pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredValue(&v46))
      {
        realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(&v46, &v58);
        if (v58 == 1)
        {
          v41 = v59;
          v42 = v60;
          v43 = v61;
          if (v61)
          {
            v23 = (v61 - 4);
            if (*(&v42 + 1))
            {
              v23 = *(&v42 + 1);
            }

            atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
          }

          if (v41)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v41);
            v40 = *v43;
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v41);
            v39 = v43[1];
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v41);
            __asm { FMOV            V0.4S, #1.0 }

            _Q0.i64[0] = __PAIR64__(v39, v40);
            _Q0.i32[2] = v43[2];
            v44 = _Q0;
          }

          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v41);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,realityio::DetailedError>::~Result(&v58);
      }

      realityio::assignGamutFromAttribute(&v44, &v45, &v46);
      v67 = -4;
      v71 = v44;
      v72 = v45;
      v29 = this[2];
      if (!v29)
      {
LABEL_91:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v30 = v29;
          v31 = v29[3].u8[0];
          if (v31 <= v45)
          {
            v32 = v30[2];
            if (v31 != v45)
            {
              break;
            }

            v33 = vmovn_s32(vcgtq_f32(v32, v44));
            if ((v33.i8[0] & 1) == 0 && ((vmovn_s32(vceqq_f32(v44, v32)).u8[0] & 1) == 0 || *(&v44 + 1) >= v32.f32[1] && (*(&v44 + 1) != v32.f32[1] || *(&v44 + 2) >= v32.f32[2] && (*(&v44 + 2) != v32.f32[2] || (v33.i8[6] & 1) == 0))))
            {
              break;
            }
          }

          v29 = v30->i64[0];
          if (!v30->i64[0])
          {
            goto LABEL_91;
          }
        }

        if (v31 >= v45)
        {
          v34 = vmovn_s32(vcgtq_f32(v44, v32));
          if ((v34.i8[0] & 1) == 0 && ((vmovn_s32(vceqq_f32(v32, v44)).u8[0] & 1) == 0 || v32.f32[1] >= *(&v44 + 1) && (v32.f32[1] != *(&v44 + 1) || v32.f32[2] >= *(&v44 + 2) && (v32.f32[2] != *(&v44 + 2) || (v34.i8[6] & 1) == 0))))
          {
            break;
          }
        }

        v29 = v30->i64[1];
        if (!v29)
        {
          goto LABEL_91;
        }
      }

      if ((v49 & 7) != 0)
      {
        atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v48);
      v37 = v47;
      if (!v47)
      {
        goto LABEL_83;
      }
    }

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v37);
LABEL_83:
    MEMORY[0x24C1A4EF0](v50);
LABEL_84:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v51);
    MEMORY[0x24C1A5510](v54);
    MEMORY[0x24C1A5AA0](&v55);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2, &v55);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo,0>(&v58, &v55, &v64);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>((this + 4), &v58);
  if (__p)
  {
    v63 = __p;
    operator delete(__p);
  }

  *&v41 = &v60 + 8;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&v41);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v59 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v58);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v55);
  if (*(&v69 + 1))
  {
    *&v70 = *(&v69 + 1);
    operator delete(*(&v69 + 1));
  }

  v58 = &v68;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&v58);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v64);
LABEL_90:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476807DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, int a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>::~pair(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>(uint64_t a1, void *a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, v2 + 4))
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v5 + 4, a2);
    if (!result)
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return result;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo,0>(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v6 + 1, a2 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 16), a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 20), (a3 + 4));
  *(a1 + 24) = *(a3 + 8);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = *(a3 + 16);
  *(a1 + 48) = *(a3 + 32);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = *(a3 + 40);
  *(a1 + 72) = *(a3 + 56);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  v7 = *(a3 + 80);
  *(a1 + 80) = *(a3 + 64);
  *(a1 + 96) = v7;
  return a1;
}

uint64_t MaterialIndexAssignor::MaterialIndexAssignor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = (a2 + 16);
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = a1 + 16;
  v7 = *(a2 + 24);
  *(a1 + 24) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 8) = v4;
    *v4 = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    *(a1 + 8) = v6;
  }

  *(a1 + 32) = *(a2 + 32);
  v8 = (a2 + 40);
  v9 = *(a2 + 40);
  *(a1 + 40) = v9;
  v10 = a1 + 40;
  v11 = *(a2 + 48);
  *(a1 + 48) = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *(a2 + 32) = v8;
    *v8 = 0;
    *(a2 + 48) = 0;
  }

  else
  {
    *(a1 + 32) = v10;
  }

  *(a1 + 56) = *(a2 + 56);
  v12 = (a2 + 64);
  v13 = *(a2 + 64);
  *(a1 + 64) = v13;
  v14 = a1 + 64;
  v15 = *(a2 + 72);
  *(a1 + 72) = v15;
  if (v15)
  {
    *(v13 + 16) = v14;
    *(a2 + 56) = v12;
    *v12 = 0;
    *(a2 + 72) = 0;
  }

  else
  {
    *(a1 + 56) = v14;
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  v16 = (a2 + 128);
  v17 = *(a2 + 128);
  *(a1 + 128) = v17;
  v18 = a1 + 128;
  v19 = *(a2 + 136);
  *(a1 + 136) = v19;
  if (v19)
  {
    *(v17 + 16) = v18;
    *(a2 + 120) = v16;
    *v16 = 0;
    *(a2 + 136) = 0;
  }

  else
  {
    *(a1 + 120) = v18;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 168) = 0;
  v20 = tbb::internal::allocate_via_handler_v3(0x20);
  v20[3] = 0;
  *v20 = 0;
  *(a1 + 176) = v20;
  *(a1 + 188) = 1082130432;
  __dmb(0xBu);
  *(a1 + 192) = 0u;
  v21 = a1 + 192;
  *(a1 + 152) = 8;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  v45 = *(a1 + 176);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::set_bucket(a1 + 144, 0, &v45);
  if (a1 != a2)
  {
    v22 = 0;
    v23 = *(a1 + 144);
    *(a1 + 144) = *(a2 + 144);
    *(a2 + 144) = v23;
    v24 = *(a1 + 168);
    *(a1 + 168) = *(a2 + 168);
    *(a2 + 168) = v24;
    v25 = *(a1 + 176);
    *(a1 + 176) = *(a2 + 176);
    *(a2 + 176) = v25;
    v26 = a2 + 192;
    do
    {
      v27 = *(v21 + v22);
      __dmb(0xBu);
      v28 = *(v26 + v22);
      __dmb(0xBu);
      *(v21 + v22) = v28;
      __dmb(0xBu);
      *(v26 + v22) = v27;
      v22 += 8;
    }

    while (v22 != 512);
    v45 = *(a1 + 152);
    v29 = *(a2 + 152);
    __dmb(0xBu);
    *(a1 + 152) = v29;
    v30 = v45;
    __dmb(0xBu);
    *(a2 + 152) = v30;
    v31 = *(a1 + 188);
    *(a1 + 188) = *(a2 + 188);
    *(a2 + 188) = v31;
  }

  *(a1 + 704) = *(a2 + 704);
  *(a1 + 728) = 0;
  v32 = tbb::internal::allocate_via_handler_v3(0x20);
  v32[3] = 0;
  *v32 = 0;
  *(a1 + 736) = v32;
  *(a1 + 748) = 1082130432;
  __dmb(0xBu);
  *(a1 + 712) = 8;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  v45 = *(a1 + 736);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::set_bucket(a1 + 704, 0, &v45);
  if (a1 != a2)
  {
    v33 = 0;
    v34 = *(a1 + 704);
    *(a1 + 704) = *(a2 + 704);
    *(a2 + 704) = v34;
    v35 = *(a1 + 728);
    *(a1 + 728) = *(a2 + 728);
    *(a2 + 728) = v35;
    v36 = *(a1 + 736);
    *(a1 + 736) = *(a2 + 736);
    v37 = a1 + 752;
    *(a2 + 736) = v36;
    v38 = a2 + 752;
    do
    {
      v39 = *(v37 + v33);
      __dmb(0xBu);
      v40 = *(v38 + v33);
      __dmb(0xBu);
      *(v37 + v33) = v40;
      __dmb(0xBu);
      *(v38 + v33) = v39;
      v33 += 8;
    }

    while (v33 != 512);
    v45 = *(a1 + 712);
    v41 = *(a2 + 712);
    __dmb(0xBu);
    *(a1 + 712) = v41;
    v42 = v45;
    __dmb(0xBu);
    *(a2 + 712) = v42;
    v43 = *(a1 + 748);
    *(a1 + 748) = *(a2 + 748);
    *(a2 + 748) = v43;
  }

  return a1;
}

void sub_247680F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>>::~split_ordered_list(v9 + 720);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::~concurrent_unordered_base(v10, v16);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*v14);
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::destroy(*v13);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::destroy(*v12);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*v11);
  _Unwind_Resume(a1);
}

uint64_t realityio::types::Ok<MaterialIndexAssignor>::~Ok(uint64_t a1, void *a2)
{
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>,false>>::~concurrent_unordered_base(a1 + 704, a2);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::~concurrent_unordered_base(a1 + 144, v3);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(a1 + 128));
  v5 = (a1 + 80);
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::destroy(*(a1 + 64));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::destroy(*(a1 + 40));
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(a1 + 16));
  return a1;
}

uint64_t realityio::TexcoordID::TexcoordID(uint64_t a1, void *a2, int a3, char a4)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  v8 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  realityio::TexcoordID::setIndex(a1, a3);
  pxrInternal__aapl__pxrReserved__::TfToken::operator=(v8, a2);
  *(a1 + 40) = a4;
  if (*v8)
  {
    realityio::TexcoordID::computeNormalizedName(a1);
    if (a3 == -1)
    {
      realityio::TexcoordID::getIndexFromName(a1);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "UV");
    std::to_string(&v14, a3);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v14;
    }

    else
    {
      v9 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v15, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v17 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C1A5E00](&v18, __p);
    if (&v18 == v8)
    {
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v8 = v18;
      v18 = 0;
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  return a1;
}

void sub_2476811C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v26 + 39) < 0)
  {
    operator delete(*(v26 + 16));
  }

  if ((*v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

_DWORD *std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<true,0>(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v6 + 1, a2 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1 + 2, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1 + 3, a3 + 1);
  return a1;
}

__n128 std::__function::__func<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_0,std::allocator<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_0>,unsigned long ()(std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595A0B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_0,std::allocator<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_0>,unsigned long ()(std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  operator new();
}

void sub_24768164C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x24C1A91B0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_0,std::allocator<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_0>,unsigned long ()(std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<std::vector<char const*> *,std::shared_ptr<std::vector<char const*>>::__shared_ptr_default_delete<std::vector<char const*>,std::vector<char const*>>,std::allocator<std::vector<char const*>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<std::vector<char const*> *,std::shared_ptr<std::vector<char const*>>::__shared_ptr_default_delete<std::vector<char const*>,std::vector<char const*>>,std::allocator<std::vector<char const*>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void **std::default_delete<std::vector<char const*>>::operator()[abi:ne200100](void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v1[1] = v2;
      operator delete(v2);
    }

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

__n128 std::__function::__func<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_1,std::allocator<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595A1C0;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_1,std::allocator<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 8) - **(a1 + 8);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = v2 >> 4;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v29 = v5;
    do
    {
      v6 = (**(a1 + 8) + v3);
      v8 = *v6;
      v7 = v6[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v8[8] != v8[7])
      {
        v9 = *(*(a1 + 16) + 24);
        if (!v9)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v10 = (*(*v9 + 48))(v9, v8 + 7);
        v11 = v10;
        if (v10 != -1)
        {
          v12 = *(a1 + 24);
          v13 = **(a1 + 32);
          ModelName = REMeshAssetGetModelName();
          v15 = *(v12 + 8);
          v16 = *(v12 + 16);
          if (v15 >= v16)
          {
            v18 = (v15 - *v12) >> 5;
            v19 = v18 + 1;
            if ((v18 + 1) >> 59)
            {
              std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
            }

            v20 = v16 - *v12;
            if (v20 >> 4 > v19)
            {
              v19 = v20 >> 4;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFE0)
            {
              v21 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v19;
            }

            if (v21)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<REBlendWeightsMeshMap>>(v12, v21);
            }

            v22 = 32 * v18;
            *v22 = 2;
            *(v22 + 8) = ModelName;
            *(v22 + 16) = 0;
            *(v22 + 24) = v11;
            v17 = 32 * v18 + 32;
            v23 = *(v12 + 8) - *v12;
            v24 = v22 - v23;
            memcpy((v22 - v23), *v12, v23);
            v25 = *v12;
            *v12 = v24;
            *(v12 + 8) = v17;
            *(v12 + 16) = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v15 = 2;
            *(v15 + 8) = ModelName;
            *(v15 + 16) = 0;
            v17 = v15 + 32;
            *(v15 + 24) = v11;
          }

          *(v12 + 8) = v17;
          pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v35, *(a1 + 40), (v8 + 1));
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v30 = MEMORY[0x277D866A8] + 16;
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v42[3] = 0;
          v42[0] = MEMORY[0x277D86780] + 16;
          MEMORY[0x24C1A4DB0](&v30);
          if ((v38 & 7) != 0)
          {
            atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v37);
          if (v36)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v36);
          }

          pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetInheritedSkeleton(&v40, v42);
          if (v41 && (*(v41 + 57) & 8) == 0 && (*(v40 + 32))(&v40))
          {
            MEMORY[0x24C1A4F20](&v30);
            pxrInternal__aapl__pxrReserved__::UsdSkelCache::GetSkelQuery(&v35, &v30, &v40);
            if (v31)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v31);
            }

            v34 = *pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::GetAnimQuery(&v35);
            pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v34);
            pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery::GetPrim(&v30, &v34);
            if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v30) && !*std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(*(a1 + 48), &v43, v8 + 1))
            {
              operator new();
            }

            if ((v33 & 7) != 0)
            {
              atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v32);
            if (v31)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v31);
            }

            pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::~TfRefPtr(&v34);
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v39);
            pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::~TfRefPtr(&v36);
            pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_SkelDefinition>::~TfRefPtr(&v35);
          }

          MEMORY[0x24C1A53A0](&v40);
          MEMORY[0x24C1A5620](v42);
        }
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      ++v4;
      v3 += 16;
    }

    while (v29 != v4);
  }

  if (*(*(a1 + 56) + 8) != **(a1 + 56) && *(*(a1 + 24) + 8) != **(a1 + 24))
  {
    v26 = *(a1 + 64);
    v27 = **(a1 + 72);
    AssetWithDefinitionsAndWeightNames = REBlendShapeWeightsDefinitionAssetCreateAssetWithDefinitionsAndWeightNames();
    if (*v26)
    {
      RERelease();
    }

    *v26 = AssetWithDefinitionsAndWeightNames;
  }
}