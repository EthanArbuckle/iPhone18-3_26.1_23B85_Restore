void __chkstk_darwin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (___chkstk_darwin)
  {
    ___chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    __chkstk_darwin_probe(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

void __chkstk_darwin_probe(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &a9;
  if (v9 >= 0x1000)
  {
    do
    {
      v10 -= 4096;
      v11 = *v10;
      v9 -= 4096;
    }

    while (v9 > 0x1000);
  }

  v12 = v10[-v9];
}

uint64_t ODIE::Common::ScalarTypeAttr::getScalarTag(ODIE::Common::ScalarTypeAttr *this)
{
  v6[0] = ODIE::Common::TypeAttr::getAttrs(this);
  v6[1] = v1;
  v2 = ODIE::Common::CompositeAttr::getAttrByIndex<ODIE::Common::IntegerAttr>(v6, 0);
  v3 = (v2 - *v2);
  if (*v3 < 5u)
  {
    LOWORD(v4) = 0;
  }

  else
  {
    v4 = v3[2];
    if (v4)
    {
      LOWORD(v4) = *(v2 + v4);
    }
  }

  return v4;
}

char *ODIE::Common::NDArrayTypeAttr::getShape(ODIE::Common::NDArrayTypeAttr *this)
{
  v8[0] = ODIE::Common::TypeAttr::getAttrs(this);
  v8[1] = v1;
  v2 = ODIE::Common::CompositeAttr::getAttrByIndex<ODIE::Common::ArrayAttr>(v8, 1);
  v3 = *v2;
  v4 = *(v2 - v3 + 4);
  if (*(v2 - v3) <= 4u)
  {
    v5 = 0;
    LODWORD(v3) = *(v2 + v4);
  }

  else if (*(v2 - v3 + 4))
  {
    v5 = v2 + v4 + *(v2 + v4);
    LODWORD(v3) = *(v2 + v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v2 + v4 + v3) >> 2;
  return v5 + 4;
}

char *ODIE::Common::NDArrayTypeAttr::getDimOrdering(ODIE::Common::NDArrayTypeAttr *this)
{
  v8[0] = ODIE::Common::TypeAttr::getAttrs(this);
  v8[1] = v1;
  v2 = ODIE::Common::CompositeAttr::getAttrByIndex<ODIE::Common::ArrayAttr>(v8, 2);
  v3 = *v2;
  v4 = *(v2 - v3 + 4);
  if (*(v2 - v3) <= 4u)
  {
    v5 = 0;
    LODWORD(v3) = *(v2 + v4);
  }

  else if (*(v2 - v3 + 4))
  {
    v5 = v2 + v4 + *(v2 + v4);
    LODWORD(v3) = *(v2 + v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v2 + v4 + v3) >> 2;
  return v5 + 4;
}

uint64_t ODIE::Common::NDArrayTypeAttr::getElementType(ODIE::Common::NDArrayTypeAttr *this)
{
  v6[0] = ODIE::Common::TypeAttr::getAttrs(this);
  v6[1] = v1;
  result = ODIE::Common::CompositeAttr::getAttrByIndex<ODIE::Common::TypeAttr>(v6, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = (v3 - *v3);
  if (*v4 < 7u)
  {
    return 0;
  }

  v5 = v4[3];
  if (!v5)
  {
    return 0;
  }

  if (*(v3 + v5) != 0x9C98D4C713A836BDLL)
  {
    return 0;
  }

  return result;
}

int *ODIE::Common::TypeAttr::getAttrs(ODIE::Common::TypeAttr *this)
{
  result = *this;
  v3 = *(this + 1);
  v4 = (v3 - *v3);
  if (*v4 >= 9u && (v5 = v4[4]) != 0)
  {
    v6 = (4 * *(v3 + v5));
  }

  else
  {
    v6 = 0;
  }

  v7 = (result - *result);
  if (*v7 < 9u)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7[4];
    if (v8)
    {
      v8 += result + *(result + v8);
    }
  }

  v9 = v8 + v6 + 4 + *(v8 + v6 + 4);
  return result;
}

void odie_log(int a1, ODIE::Platform *a2, const char *a3, char *__format, ...)
{
  va_start(va, __format);
  v10 = *MEMORY[0x277D85DE8];
  if (vsnprintf(__str, 0x400uLL, __format, va) < 0)
  {
    strcpy(__str, "Unable to encode error message.");
  }

  if (a1 == 1)
  {
    ODIE::Platform::logErrorMessage(a2, a3, __str, v7);
  }

  else
  {
    ODIE::Platform::logInfoMessage(a2, a3, __str, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t odie_alloc_aligned(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    if (a4)
    {
      *a4 = 1;
    }

    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_alloc_aligned", "Invalid alloc callback");
    return 0;
  }

  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = *(a1 + 32);
  result = v5(v8);
  if (!result)
  {
    if (a4)
    {
      *a4 = 4;
    }

    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_alloc_aligned", "Memory allocation failed");
    return 0;
  }

  return result;
}

void ODIE::Common::MallocAllocator::~MallocAllocator(ODIE::Common::MallocAllocator *this)
{
  *this = &unk_286E74130;
  for (i = *(this + 1); i; i = *(this + 1))
  {
    (*(*this + 24))(this, *i);
  }

  if (*(this + 2))
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Allocators/MallocAllocator.cpp", "~MallocAllocator", "MallocAllocator: Potential memory leak detected.");
    ODIE::Platform::abort(v3);
  }
}

{
  ODIE::Common::MallocAllocator::~MallocAllocator(this);

  JUMPOUT(0x25F891040);
}

void *ODIE::Common::MallocAllocator::alloc(ODIE::Common::MallocAllocator *this, uint64_t a2, uint64_t a3)
{
  if (a3 <= 7)
  {
    v4 = 8;
  }

  else
  {
    v4 = a3;
  }

  v5 = (a2 + v4 - 1) / v4 * v4;
  v6 = malloc_type_aligned_alloc(v4, v5, 0x49F92BE2uLL);
  if (v6)
  {
    v7 = malloc_type_malloc(0x18uLL, 0x10A0040319E9F20uLL);
    if (!v7)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Containers/LinkedList.hpp", "linkedListPush", "linkedListPush: Failed to create a new allocation node.");
      ODIE::Platform::abort(v10);
    }

    *v7 = v6;
    v7[1] = v5;
    v8 = *(this + 2);
    v7[2] = *(this + 1);
    *(this + 1) = v7;
    *(this + 2) = v8 + v5;
    bzero(v6, v5);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Allocators/MallocAllocator.cpp", "alloc", "MallocAllocator: Failed to allocate memory of size %lld & alignment %lld", v5, v4);
  }

  return v6;
}

void ODIE::Common::MallocAllocator::dealloc(ODIE::Common::MallocAllocator *this, void *a2)
{
  if (a2)
  {
    v4 = (this + 8);
    v3 = *(this + 1);
    if (v3)
    {
      v6 = v3;
      while (*v6 != a2)
      {
        v6 = v6[2];
        if (!v6)
        {
          return;
        }
      }

      *(this + 2) -= v6[1];
      v7 = v6[1];
      if (*v3 == a2 && v3[1] == v7)
      {
LABEL_18:
        *v4 = v3[2];
        free(v3);
      }

      else
      {
        while (1)
        {
          v9 = v3;
          v3 = v3[2];
          if (!v3)
          {
            break;
          }

          if (*v3 == a2 && v3[1] == v7)
          {
            v4 = v9 + 2;
            goto LABEL_18;
          }
        }
      }

      free(a2);
    }
  }
}

void *ODIE::Common::MallocAllocator::reset(void *this)
{
  v1 = this[1];
  if (v1)
  {
    v2 = this;
    do
    {
      this = (*(*v2 + 24))(v2, *v1);
      v1 = v2[1];
    }

    while (v1);
  }

  return this;
}

uint64_t ODIE::Common::MallocAllocator::operator odie_memory_allocator_t@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = ODIE::Common::wrapAlloc<ODIE::Common::MallocAllocator>;
  a2[2] = ODIE::Common::wrapDealloc<ODIE::Common::MallocAllocator>;
  a2[3] = ODIE::Common::wrapReset<ODIE::Common::MallocAllocator>;
  a2[4] = result;
  return result;
}

uint64_t ODIE::Common::wrapAlloc<ODIE::Common::MallocAllocator>(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(*v3 + 16);

    return v4();
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Allocators/AllocatorBase.hpp", "wrapAlloc", "Invalid allocator state", v1, v2);
    return 0;
  }
}

void ODIE::Common::wrapDealloc<ODIE::Common::MallocAllocator>(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(*v1 + 24))();
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Allocators/AllocatorBase.hpp", "wrapDealloc", "Invalid allocator state");
  }
}

void ODIE::Common::wrapReset<ODIE::Common::MallocAllocator>(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(*v1 + 32))();
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Allocators/AllocatorBase.hpp", "wrapReset", "Invalid allocator state");
  }
}

uint64_t ODIE::Common::CompositeAttr::getAttrByIndex<ODIE::Common::IntegerAttr>(char **a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = (v2 + *(v2 - *v2 + 4));
  v5 = *(&v4[a2 + 1] + *v4);
  v6 = &(*a1)[-**a1];
  if (*v6 < 9u)
  {
    v8 = (4 * v5);
  }

  else
  {
    v7 = *(v6 + 4);
    if (*(v6 + 4))
    {
      v7 += &v3[*&v3[v7]];
    }

    v8 = v7 + (4 * v5);
  }

  v10 = v8 + 4 + *(v8 + 4);
  if (v3[*(v6 + 3) + 4 + *&v3[*(v6 + 3)] + v5] == 2)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t ODIE::Common::CompositeAttr::getAttrByIndex<ODIE::Common::ArrayAttr>(char **a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = (v2 + *(v2 - *v2 + 4));
  v5 = *(&v4[a2 + 1] + *v4);
  v6 = &(*a1)[-**a1];
  if (*v6 < 9u)
  {
    v8 = (4 * v5);
  }

  else
  {
    v7 = *(v6 + 4);
    if (*(v6 + 4))
    {
      v7 += &v3[*&v3[v7]];
    }

    v8 = v7 + (4 * v5);
  }

  v10 = v8 + 4 + *(v8 + 4);
  if (v3[*(v6 + 3) + 4 + *&v3[*(v6 + 3)] + v5] == 5)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t ODIE::Common::CompositeAttr::getAttrByIndex<ODIE::Common::TypeAttr>(int **a1, int a2)
{
  v4 = a1[1];
  if (!v4)
  {
    return 0;
  }

  v6 = *a1;
  v7 = (v4 + *(v4 - *v4 + 4));
  v8 = *(&v7[a2 + 1] + *v7);
  v9 = (*a1 - **a1);
  if (*v9 < 9u)
  {
    v11 = (4 * v8);
  }

  else
  {
    v10 = v9[4];
    if (v9[4])
    {
      v10 += v6 + *(v6 + v10);
    }

    v11 = v10 + (4 * v8);
  }

  v12 = (v11 + 4 + *(v11 + 4));
  if (*(v6 + v9[3] + *(v6 + v9[3]) + v8 + 4) != 6)
  {
    return 0;
  }

  v14[2] = v2;
  v14[3] = v3;
  ODIE::Common::TypeAttr::TypeAttr(v14, v6, v12);
  return v14[0];
}

uint64_t ODIE::Common::DictionaryAttr::getAttrByName<ODIE::Common::StringAttr>(char **a1, const void *a2, size_t a3)
{
  v3 = a1[1];
  v4 = (v3 - *v3);
  if (*v4 < 5u)
  {
    return 0;
  }

  v5 = v4[2];
  if (!v5)
  {
    return 0;
  }

  v9 = (v3 + v5);
  v10 = *v9;
  v11 = v9 + v10 + 4;
  v12 = *(v9 + v10);
  v13 = v12 & 0x3FFFFFFF;
  if ((v12 & 0x3FFFFFFF) != 0)
  {
    v14 = (v9 + v10 + 4);
    do
    {
      v15 = (v14 + ((2 * v13) & 0xFFFFFFFC));
      v16 = (v15 + *v15 + *(v15 + *v15 - *(v15 + *v15) + 4));
      v28 = v16 + *v16 + 4;
      v29 = strlen(v28);
      if (ODIE::Common::StringRef::compare(&v28, a2, a3) >= 0)
      {
        v13 >>= 1;
      }

      else
      {
        v14 = v15 + 1;
        v13 += ~(v13 >> 1);
      }
    }

    while (v13);
  }

  else
  {
    v14 = (v9 + v10 + 4);
  }

  if (v14 == (v11 + (4 * v12)))
  {
    return 0;
  }

  v17 = (v14 + *v14 + *(v14 + *v14 - *(v14 + *v14) + 4));
  v28 = v17 + *v17 + 4;
  v29 = strlen(v28);
  if (ODIE::Common::StringRef::compare(&v28, a2, a3))
  {
    return 0;
  }

  v19 = (v14 + *v14);
  v20 = (v19 - *v19);
  if (*v20 >= 7u && (v21 = v20[3]) != 0)
  {
    v22 = *(v19 + v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = *a1;
  v24 = &(*a1)[-**a1];
  if (*v24 < 9u)
  {
    v26 = 4 * v22;
  }

  else
  {
    v25 = *(v24 + 4);
    if (*(v24 + 4))
    {
      v25 += &v23[*&v23[v25]];
    }

    v26 = v25 + 4 * v22;
  }

  v27 = v26 + 4 + *(v26 + 4);
  if (v23[*(v24 + 3) + 4 + *&v23[*(v24 + 3)] + v22] == 4)
  {
    return v27;
  }

  else
  {
    return 0;
  }
}

int *ODIE::Common::SymbolAttr::getOutputType(ODIE::Common::SymbolAttr *this, int a2)
{
  result = *this;
  v4 = (*(this + 1) + *(*(this + 1) - **(this + 1) + 10));
  v5 = *(&v4[a2 + 1] + *v4);
  v6 = (result - *result);
  if (*v6 < 5u)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6[2];
    if (v7)
    {
      v7 += result + *(result + v7);
    }
  }

  v8 = v7 + (4 * v5) + 4 + *(v7 + (4 * v5) + 4);
  return result;
}

int *ODIE::Common::SymbolAttr::getNamedAttributes(ODIE::Common::SymbolAttr *this)
{
  result = *this;
  v3 = *(this + 1);
  v4 = (v3 - *v3);
  if (*v4 >= 0xFu && (v5 = v4[7]) != 0)
  {
    v6 = (4 * *(v3 + v5));
  }

  else
  {
    v6 = 0;
  }

  v7 = (result - *result);
  if (*v7 < 9u)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7[4];
    if (v8)
    {
      v8 += result + *(result + v8);
    }
  }

  v9 = v8 + v6 + 4 + *(v8 + v6 + 4);
  return result;
}

void *ODIE::Common::TypeAttr::TypeAttr(void *result, int *a2, int *a3)
{
  v3 = (a3 - *a3);
  if (*v3 < 5u)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3[2];
    if (v4)
    {
      v4 = (4 * *(a3 + v4));
    }
  }

  v5 = (a2 - *a2);
  if (*v5 < 5u)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5[2];
    if (v6)
    {
      v6 += a2 + *(a2 + v6);
    }
  }

  v7 = v6 + v4 + 4 + *(v6 + v4 + 4);
  *result = a2;
  result[1] = v7;
  return result;
}

void ODIE::Platform::logInfoMessage(ODIE::Platform *this, const char *a2, const char *a3, const char *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (qword_27FC1D128 != -1)
  {
    dispatch_once(&qword_27FC1D128, &__block_literal_global);
  }

  v7 = _MergedGlobals;
  if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = this;
    v11 = 2080;
    v12 = a2;
    v13 = 2080;
    v14 = a3;
    _os_log_impl(&dword_25C85D000, v7, OS_LOG_TYPE_INFO, "File:%s Function:%s Info: %s", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void ODIE::Platform::logErrorMessage(ODIE::Platform *this, const char *a2, const char *a3, const char *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (qword_27FC1D128 != -1)
  {
    dispatch_once(&qword_27FC1D128, &__block_literal_global);
  }

  v7 = _MergedGlobals;
  if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315650;
    v10 = this;
    v11 = 2080;
    v12 = a2;
    v13 = 2080;
    v14 = a3;
    _os_log_error_impl(&dword_25C85D000, v7, OS_LOG_TYPE_ERROR, "File:%s Function:%s Error: %s", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

os_log_t ___ZN12_GLOBAL__N_16getLogEv_block_invoke()
{
  result = os_log_create("com.apple.odie", "rt");
  _MergedGlobals = result;
  return result;
}

uint64_t ODIE::Registration::KernelRegistryImpl::tryGetKernel(uint64_t a1, const void *a2, size_t a3)
{
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  if (v6)
  {
    v7 = *(a1 + 80);
    v8 = *(a1 + 88);
    do
    {
      v9 = v7 + 88 * (v8 >> 1);
      v10 = *(v9 + 56) >> 1;
      v14 = *(v9 + 48);
      v15 = v10;
      v11 = ODIE::Common::StringRef::compare(&v14, a2, a3);
      if (v11 >= 0)
      {
        v8 >>= 1;
      }

      else
      {
        v8 += ~(v8 >> 1);
      }

      if (v11 < 0)
      {
        v7 = v9 + 88;
      }
    }

    while (v8);
  }

  else
  {
    v7 = *(a1 + 80);
  }

  if (v7 == v5 + 88 * v6)
  {
    return 0;
  }

  v12 = *(v7 + 56) >> 1;
  v14 = *(v7 + 48);
  v15 = v12;
  if (ODIE::Common::StringRef::compare(&v14, a2, a3))
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void ODIE::Registration::KernelRegistry::create(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = *(a1 + 32);
  v5 = odie_alloc_aligned(v9, 8, 8, 0);
  if (!v5)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Registration/KernelRegistry.cpp", "create", "Unable to allocate memory for KernelRegistry.");
LABEL_5:
    v8 = 0;
    *a2 = 4;
    goto LABEL_6;
  }

  v6 = v5;
  *v5 = 0;
  v7 = ODIE::Common::Allocator::allocInstance<ODIE::Registration::KernelRegistryImpl,ODIE::Common::Allocator&>(a1, a1);
  *v6 = v7;
  if (!v7)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Registration/KernelRegistry.cpp", "create", "Unable to allocate memory for KernelRegistry's impl.");
    goto LABEL_5;
  }

  *a2 = v6;
  v8 = 1;
LABEL_6:
  *(a2 + 8) = v8;
}

uint64_t ODIE::Common::Allocator::allocInstance<ODIE::Registration::KernelRegistryImpl,ODIE::Common::Allocator&>(__int128 *a1, __int128 *a2)
{
  v3 = a1[1];
  v10 = *a1;
  v11 = v3;
  v12 = *(a1 + 4);
  v4 = odie_alloc_aligned(&v10, 104, 8, 0);
  v5 = v4;
  if (v4)
  {
    v7 = a2[1];
    v10 = *a2;
    v6 = v10;
    v11 = v7;
    v8 = *(a2 + 4);
    v12 = v8;
    *(v4 + 32) = v8;
    *v4 = v6;
    *(v4 + 16) = v7;
    *(v4 + 40) = v6;
    *(v4 + 56) = v7;
    *(v4 + 72) = v8;
    *(v4 + 80) = 0;
    *(v4 + 88) = 0;
    *(v4 + 96) = 0;
    ODIE::Common::Vector<ODIE::Registration::CAPI::Kernel>::doResize((v4 + 40), 0x64uLL);
    *(v5 + 88) = 0;
  }

  return v5;
}

uint64_t ODIE::Registration::KernelRegistry::addKernel(_OWORD **a1, uint64_t a2, char a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v44[0] = **a1;
  v44[1] = v6[1];
  v45 = *(v6 + 4);
  v7 = odie_alloc_aligned(v44, 88, 8, 0);
  v8 = v7;
  if (v7)
  {
    ODIE::Common::String::String(v7, a2);
    v9 = *(a2 + 64);
    *(v8 + 80) = *(a2 + 80);
    *(v8 + 64) = v9;
  }

  v10 = *a1;
  ODIE::Common::String::copy(v8, v44);
  if (*(a2 + 64))
  {
    v11 = ODIE::Registration::CAPI::typeInferenceCppKernel;
  }

  else
  {
    v11 = 0;
  }

  *&v48 = v11;
  *(&v48 + 1) = ODIE::Registration::CAPI::valueInferenceCppKernel;
  v49 = v8;
  if (v47 <= 1)
  {
    v31 = 2;
    goto LABEL_51;
  }

  v12 = *(v10 + 10);
  v13 = *(v10 + 11);
  v14 = v47 >> 1;
  if (v13)
  {
    v15 = v46;
    v16 = *(v10 + 10);
    v41 = *(v10 + 11);
    v17 = v41;
    do
    {
      v18 = v16 + 88 * (v17 >> 1);
      v19 = *(v18 + 56) >> 1;
      *&v42 = *(v18 + 48);
      *(&v42 + 1) = v19;
      v20 = ODIE::Common::StringRef::compare(&v42, v15, v14);
      if (v20 >= 0)
      {
        v17 >>= 1;
      }

      else
      {
        v17 += ~(v17 >> 1);
      }

      if (v20 < 0)
      {
        v16 = v18 + 88;
      }
    }

    while (v17);
    v13 = v41;
  }

  else
  {
    v15 = v46;
    v16 = *(v10 + 10);
  }

  v21 = *(v16 + 56) >> 1;
  *&v42 = *(v16 + 48);
  *(&v42 + 1) = v21;
  if (ODIE::Common::StringRef::compare(&v42, v15, v14))
  {
    v22 = v13 + 1;
    v23 = v12;
    v24 = v16;
    if (*(v10 + 12) < v13 + 1)
    {
      if (v12)
      {
        v25 = -v12 & v12;
      }

      else
      {
        v25 = 8;
      }

      v26 = *(v10 + 56);
      v42 = *(v10 + 40);
      *v43 = v26;
      *&v43[16] = *(v10 + 9);
      v27 = odie_alloc_aligned(&v42, 88 * v22, v25, 0);
      v12 = v27;
      v23 = *(v10 + 10);
      if (v27 == v23)
      {
        v24 = v16;
      }

      else
      {
        v24 = v27;
        if (v23 != v16)
        {
          do
          {
            if (v23 != v24)
            {
              ODIE::Common::String::String(v24, v23);
            }

            v28 = *(v23 + 64);
            *(v24 + 80) = *(v23 + 80);
            *(v24 + 64) = v28;
            v23 += 88;
            v24 += 88;
          }

          while (v23 != v16);
          v23 = *(v10 + 10);
        }
      }
    }

    v32 = v23 + 88 * *(v10 + 11);
    if (v32 != v16)
    {
      v33 = v12 + 88 * v13;
      do
      {
        v34 = v33 + 88;
        v35 = v32 - 88;
        if (v32 != v33 + 88)
        {
          v33 = ODIE::Common::String::String(v33, v32 - 88);
        }

        v36 = *(v32 - 24);
        *(v34 - 8) = *(v32 - 8);
        *(v34 - 24) = v36;
        v33 -= 88;
        v32 -= 88;
      }

      while (v35 != v16);
    }

    if (v24 != v44)
    {
      ODIE::Common::String::String(v24, v44);
    }

    v37 = v48;
    *(v24 + 80) = v49;
    *(v24 + 64) = v37;
    if (v12 != *(v10 + 10))
    {
      *(v10 + 10) = v12;
      v38 = *(v10 + 7);
      if (v38)
      {
        v42 = *(v10 + 40);
        *v43 = v38;
        *&v43[8] = v10[4];
        v38(&v42);
      }

      else
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
      }
    }

    v30 = *(v10 + 12);
    if (v22 > v30)
    {
      v30 = v22;
    }

    *(v10 + 11) = v22;
    *(v10 + 12) = v30;
  }

  else
  {
    if ((a3 & 1) == 0)
    {
      v31 = 1;
      goto LABEL_51;
    }

    if (v16 != v44)
    {
      ODIE::Common::String::String(v16, v44);
    }

    v29 = v48;
    *(v16 + 80) = v49;
    *(v16 + 64) = v29;
    v22 = *(v10 + 11);
    v30 = *(v10 + 12);
  }

  if (v30 - v22 <= 5 && v30 <= v22 + 50)
  {
    ODIE::Common::Vector<ODIE::Registration::CAPI::Kernel>::doResize((v10 + 40), v22 + 50);
    v31 = 0;
    *(v10 + 11) = v22;
  }

  else
  {
    v31 = 0;
  }

LABEL_51:
  ODIE::Common::String::~String(v44);
  v39 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t ODIE::Registration::CAPI::typeInferenceCppKernel(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  if (!v2)
  {
    return 2;
  }

  v3 = *(v1 + 24);
  v25 = *(v1 + 8);
  v26 = v3;
  v27 = *(v1 + 40);
  v4 = *(v2 + 80);
  v5 = *(v1 + 72);
  v21 = *(v1 + 56);
  v22 = v5;
  v23 = *(v1 + 88);
  v24 = *(v1 + 104);
  v20 = *(v1 + 112);
  v7 = a1[1];
  v6 = a1[2];
  v9 = a1[3];
  v8 = a1[4];
  v10 = *(v2 + 64);
  v12[0] = v25;
  v12[1] = v26;
  v13 = v27;
  v14 = v4;
  v15 = v21;
  v16 = v5;
  v17 = v23;
  v18 = v24;
  v19 = v20;
  return v10(v12, v6, v7 & 0x1FFFFFFFFFFFFFFFLL, v8, v9 & 0x1FFFFFFFFFFFFFFFLL);
}

uint64_t ODIE::Registration::CAPI::valueInferenceCppKernel(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  if (!v2)
  {
    return 2;
  }

  v3 = *(v1 + 24);
  v26 = *(v1 + 8);
  v27 = v3;
  v28 = *(v1 + 40);
  v4 = *(v1 + 72);
  v22 = *(v1 + 56);
  v23 = v4;
  v24 = *(v1 + 88);
  v25 = *(v1 + 104);
  v21 = *(v1 + 112);
  v6 = a1[1];
  v5 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v11 = v2 + 72;
  v9 = *(v2 + 72);
  v10 = *(v11 + 8);
  v13[0] = v26;
  v13[1] = v27;
  v14 = v28;
  v15 = v10;
  v16 = v22;
  v17 = v4;
  v18 = v24;
  v19 = v25;
  v20 = v21;
  return v9(v13, v5, v6 & 0x1FFFFFFFFFFFFFFFLL, v7, v8 & 0x1FFFFFFFFFFFFFFFLL);
}

void ODIE::Common::Vector<ODIE::Registration::CAPI::Kernel>::doResize(__int128 *a1, unint64_t a2)
{
  v5 = *(a1 + 4);
  v4 = *(a1 + 5);
  if (v4)
  {
    v6 = -v4 & v4;
  }

  else
  {
    v6 = 8;
  }

  v7 = a1[1];
  v15 = *a1;
  *v16 = v7;
  *&v16[16] = v5;
  v8 = odie_alloc_aligned(&v15, 88 * a2, v6, 0);
  v9 = v8;
  v11 = *(a1 + 5);
  v10 = *(a1 + 6);
  if (v10 >= a2)
  {
    v10 = a2;
  }

  if (v10)
  {
    v12 = v11 + 88 * v10;
    do
    {
      if (v11 != v8)
      {
        v8 = ODIE::Common::String::String(v8, v11);
      }

      v13 = *(v11 + 64);
      *(v8 + 80) = *(v11 + 80);
      *(v8 + 64) = v13;
      v11 += 88;
      v8 += 88;
    }

    while (v11 != v12);
    v11 = *(a1 + 5);
  }

  *(a1 + 5) = v9;
  v14 = *(a1 + 2);
  if (v14)
  {
    v15 = *a1;
    *v16 = v14;
    *&v16[8] = *(a1 + 24);
    v14(&v15, v11);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 6) = a2;
  *(a1 + 7) = a2;
}

uint64_t ODIE::Common::StringRef::compare(uint64_t a1, const void *a2, size_t a3)
{
  v3 = a3;
  v4 = *(a1 + 8);
  if (a3 >= v4)
  {
    a3 = *(a1 + 8);
  }

  if (!a3 || ((v5 = memcmp(*a1, a2, a3), v5 < 1) ? (result = 0xFFFFFFFFLL) : (result = 1), !v5))
  {
    if (v4 < v3)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (v4 == v3)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t ODIE::Common::String::String(uint64_t a1, __int128 *a2, const void *a3, unsigned int a4, uint64_t a5)
{
  *(a1 + 40) = 0;
  v7 = *a2;
  v8 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 40) = 1;
  v9 = a4;
  *(a1 + 48) = 0;
  *(a1 + 56) = a4 & 1 | (2 * a5);
  v10 = a2[1];
  v15[0] = *a2;
  v15[1] = v10;
  v16 = *(a2 + 4);
  v11 = odie_alloc_aligned(v15, (a5 & 0x7FFFFFFFFFFFFFFFLL) + a4, 1, 0);
  v12 = v11;
  if (!v11)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Containers/String.cpp", "String", "Memory allocation failure");
    ODIE::Platform::abort(v14);
  }

  if ((*(a1 + 56) >> 1) + v9)
  {
    memmove(v11, a3, (*(a1 + 56) >> 1) + v9);
  }

  *(a1 + 48) = v12;
  return a1;
}

void ODIE::Common::String::~String(ODIE::Common::String *this)
{
  if (*(this + 40) == 1)
  {
    v2 = ODIE::Common::Optional<ODIE::Common::Allocator>::value(this);
    v3 = *(this + 6);
    v4 = *v2;
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    if (v5)
    {
      v7 = *v2;
      v8 = v5;
      v9 = v6;
      v5(&v7, v3);
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
    }
  }
}

uint64_t ODIE::Common::String::String(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    v5 = ODIE::Common::Optional<ODIE::Common::Allocator>::value(a2);
    v6 = *(v5 + 32);
    v7 = *(v5 + 16);
    *a1 = *v5;
    *(a1 + 16) = v7;
    *(a1 + 32) = v6;
    v4 = 1;
  }

  *(a1 + 40) = v4;
  *(a2 + 40) = 0;
  v8 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v8;
  v9 = *(a2 + 56);
  *(a1 + 56) = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  *(a1 + 56) = *(a2 + 56) & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  return a1;
}

uint64_t ODIE::Common::String::copy@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  if (*(this + 40))
  {
    v4 = ODIE::Common::Optional<ODIE::Common::Allocator>::value(this);
    v5 = *(v4 + 16);
    v8[0] = *v4;
    v8[1] = v5;
    v9 = *(v4 + 32);
    return ODIE::Common::String::String(a2, v8, *(v2 + 48), *(v2 + 56) & 1, *(v2 + 56) >> 1);
  }

  else
  {
    v6 = *(this + 48);
    v7 = *(this + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = v6;
    *(a2 + 56) = v7;
  }

  return this;
}

uint64_t ODIE::Common::Optional<ODIE::Common::Allocator>::value(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Containers/Optional.hpp", "value", "access of Optional while empty");
    ODIE::Platform::abort(v1);
  }

  return result;
}

{
  if ((*(result + 40) & 1) == 0)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Containers/Optional.hpp", "value", "access of Optional while empty");
    ODIE::Platform::abort(v1);
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::Utils::getSubByteTypeMin(int a1)
{
  if ((a1 - 19) >= 0x15 || ((0x15E015u >> (a1 - 19)) & 1) == 0)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/SubByteUtils.cpp", "getSubByteTypeMin", "Scalar tag %d is not a sub-byte dtype", a1);
    ODIE::Platform::abort(v2);
  }

  return byte_25D09E800[(a1 - 19)];
}

uint64_t ODIE::Kernels::Core::CPU::Utils::getSubByteTypeBitCount(int a1)
{
  if ((a1 - 19) >= 0x15 || ((0x15E015u >> (a1 - 19)) & 1) == 0)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/SubByteUtils.cpp", "getSubByteTypeBitCount", "Scalar tag %d is not a sub-byte dtype", a1);
    ODIE::Platform::abort(v2);
  }

  return byte_25D09E815[(a1 - 19)];
}

uint64_t ODIE::Kernels::Core::CPU::Utils::getSubByteIntegerFromStream(uint64_t a1, int a2, int a3)
{
  SubByteTypeBitCount = ODIE::Kernels::Core::CPU::Utils::getSubByteTypeBitCount(a3);
  v7 = ~(-1 << ODIE::Kernels::Core::CPU::Utils::getSubByteTypeBitCount(a3));
  if (((SubByteTypeBitCount * a2) & 0x80000000) == 0)
  {
    v8 = SubByteTypeBitCount * a2;
  }

  else
  {
    v8 = SubByteTypeBitCount * a2 + 7;
  }

  v9 = (a1 + (v8 >> 3));
  v10 = SubByteTypeBitCount * a2 - (v8 & 0xFFFFFFF8);
  v11 = (((v7 | 1) << v10) & *v9) >> v10;
  v12 = 8 - v10;
  v13 = SubByteTypeBitCount - (8 - v10);
  if (SubByteTypeBitCount > v12)
  {
    v14 = v9[1];
    v15 = v13 - 1;
    if (v13 < 1)
    {
      v32 = 0;
    }

    else
    {
      v16 = (v13 + 15) & 0x7FFFFFF0;
      v17 = xmmword_25D0A0490;
      v18 = xmmword_25D0A04A0;
      v19 = xmmword_25D0A04B0;
      v20 = xmmword_25D0A04C0;
      v21 = 0uLL;
      v22.i64[0] = 0x100000001;
      v22.i64[1] = 0x100000001;
      v23 = vdupq_n_s32(v15);
      v24.i64[0] = 0x1000000010;
      v24.i64[1] = 0x1000000010;
      do
      {
        v25 = v21;
        v26 = v17;
        v27 = v18;
        v28 = v19;
        v29 = v20;
        v21 = vorrq_s8(v21, vuzp1q_s8(vuzp1q_s16(vshlq_u32(v22, v20), vshlq_u32(v22, v19)), vuzp1q_s16(vshlq_u32(v22, v18), vshlq_u32(v22, v17))));
        v20 = vaddq_s32(v20, v24);
        v19 = vaddq_s32(v19, v24);
        v18 = vaddq_s32(v18, v24);
        v17 = vaddq_s32(v17, v24);
        v16 -= 16;
      }

      while (v16);
      v30 = vbslq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_u32(v29, v23), vcgtq_u32(v28, v23)), vuzp1q_s16(vcgtq_u32(v27, v23), vcgtq_u32(v26, v23))), v25, v21);
      *v30.i8 = vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
      v31 = v30.i64[0] | HIDWORD(v30.i64[0]) | ((v30.i64[0] | HIDWORD(v30.i64[0])) >> 16);
      v32 = v31 | (v31 >> 8);
    }

    v11 |= (v32 & v14) << v12;
  }

  if ((ODIE::Kernels::Core::CPU::Utils::getSubByteTypeMin(a3) & 0x80000000) != 0 && ((1 << (SubByteTypeBitCount - 1)) & v11) != 0 && SubByteTypeBitCount != 8)
  {
    v34 = vdupq_n_s32(7 - SubByteTypeBitCount);
    v35 = vdupq_n_s32(SubByteTypeBitCount);
    *v34.i8 = vbic_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(xmmword_25D0A04E0, v35), vshlq_u32(xmmword_25D0A04D0, v35))), vmovn_s16(vuzp1q_s16(vcgtq_u32(xmmword_25D0A04C0, v34), vcgtq_u32(xmmword_25D0A04B0, v34))));
    v36 = vorr_s8(v11, *v34.i8);
    v37 = *&v36 | HIDWORD(v34.i64[0]) | ((*&v36 | HIDWORD(v34.i64[0])) >> 16);
    LOBYTE(v11) = v37 | BYTE1(v37);
  }

  return v11;
}

void ODIE::Kernels::Core::CPU::Utils::equalizeRanks(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  v10 = 1;
  ODIE::Common::Vector<int>::resize(a4, a3, &v10);
  if (a2 - 1 >= 0)
  {
    v8 = 4 * (a2 - 1);
    v9 = (*(a4 + 40) + 4 * a3 - 4);
    do
    {
      *v9-- = *(a1 + v8);
      v8 -= 4;
    }

    while (v8 != -4);
  }
}

void ODIE::Common::Vector<int>::resize(uint64_t a1, unint64_t a2, int *a3)
{
  v6 = *(a1 + 48);
  ODIE::Common::Vector<int>::doResize(a1, a2);
  if (v6 < a2)
  {
    v7 = *(a1 + 48);
    v8 = v7 - v6;
    if (v7 > v6)
    {
      v9 = 0;
      v10 = *a3;
      v11 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v12 = vdupq_n_s64(v8 - 1);
      v13 = (*(a1 + 40) + 4 * v6 + 8);
      do
      {
        v14 = vdupq_n_s64(v9);
        v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_25D0A0500)));
        if (vuzp1_s16(v15, *v12.i8).u8[0])
        {
          *(v13 - 2) = v10;
        }

        if (vuzp1_s16(v15, *&v12).i8[2])
        {
          *(v13 - 1) = v10;
        }

        if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_25D0A04F0)))).i32[1])
        {
          *v13 = v10;
          v13[1] = v10;
        }

        v9 += 4;
        v13 += 4;
      }

      while (v11 != v9);
    }
  }
}

void ODIE::Kernels::Core::CPU::Utils::broadcastShapes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  if (*(a3 + 56) <= v6)
  {
    v7 = *(a3 + 48);
    ODIE::Common::Vector<int>::doResize(a3, v6);
    *(a3 + 48) = v7;
    v6 = *(a1 + 48);
  }

  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a1 + 40) + 4 * v8);
      if (v9 <= *(*(a2 + 40) + 4 * v8))
      {
        v9 = *(*(a2 + 40) + 4 * v8);
      }

      __src = v9;
      ODIE::Common::Vector<int>::insert<true,int *>(a3, (*(a3 + 40) + 4 * *(a3 + 48)), &__src, &v11);
      ++v8;
    }

    while (v8 < *(a1 + 48));
  }
}

uint64_t ODIE::Kernels::Core::CPU::Utils::broadcastShapesForTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(*(a1 + 40), v9, v11, a3);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(*(a2 + 40), *(a2 + 32), v11, a4);
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(a3, a4, a5);
  return v11;
}

void ODIE::Common::Vector<int>::doResize(__int128 *a1, unint64_t a2)
{
  v5 = *(a1 + 4);
  v4 = *(a1 + 5);
  if (v4)
  {
    v6 = -v4 & v4;
  }

  else
  {
    v6 = 4;
  }

  v7 = a1[1];
  v13 = *a1;
  *v14 = v7;
  *&v14[16] = v5;
  v8 = odie_alloc_aligned(&v13, 4 * a2, v6, 0);
  v9 = v8;
  v10 = *(a1 + 5);
  v11 = *(a1 + 6);
  if (v11 >= a2)
  {
    v11 = a2;
  }

  if (v11)
  {
    memmove(v8, v10, 4 * v11);
    v10 = *(a1 + 5);
  }

  *(a1 + 5) = v9;
  v12 = *(a1 + 2);
  if (v12)
  {
    v13 = *a1;
    *v14 = v12;
    *&v14[8] = *(a1 + 24);
    v12(&v13, v10);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 6) = a2;
  *(a1 + 7) = a2;
}

void ODIE::Common::Vector<int>::insert<true,int *>(__int128 *a1, char *__dst, _BYTE *__src, _BYTE *a4)
{
  v8 = a4 - __src;
  v9 = *(a1 + 5);
  v10 = *(a1 + 6) + ((a4 - __src) >> 2);
  v11 = v9;
  v12 = __dst;
  if (*(a1 + 7) < v10)
  {
    if (v9)
    {
      v13 = -v9 & v9;
    }

    else
    {
      v13 = 4;
    }

    v14 = a1[1];
    v20 = *a1;
    *v21 = v14;
    *&v21[16] = *(a1 + 4);
    v15 = odie_alloc_aligned(&v20, 4 * v10, v13, 0);
    v9 = v15;
    v11 = *(a1 + 5);
    if (v15 == v11)
    {
      v12 = __dst;
    }

    else
    {
      v16 = (__dst - v11);
      if (__dst != v11)
      {
        memmove(v15, v11, __dst - v11);
        v11 = *(a1 + 5);
      }

      v12 = &v16[v9];
    }
  }

  v17 = &v11[4 * *(a1 + 6)];
  if (v17 != __dst)
  {
    memmove((v9 + 4 * v10 - (v17 - __dst)), __dst, v17 - __dst);
  }

  if (a4 != __src)
  {
    memmove(v12, __src, v8);
  }

  if (v9 != *(a1 + 5))
  {
    *(a1 + 5) = v9;
    v18 = *(a1 + 2);
    if (v18)
    {
      v20 = *a1;
      *v21 = v18;
      *&v21[8] = *(a1 + 24);
      v18(&v20);
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
    }
  }

  v19 = *(a1 + 7);
  if (v10 > v19)
  {
    v19 = v10;
  }

  *(a1 + 6) = v10;
  *(a1 + 7) = v19;
}

void ODIE::Kernels::Core::CPU::registerAllocationKernels(_OWORD **a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v5 = "NDArray.alloc";
  v6 = 27;
  v7 = ODIE::Kernels::Core::CPU::allocTi;
  v8 = ODIE::Kernels::Core::CPU::allocVi;
  v9 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v3, 1);
  ODIE::Common::String::~String(v3);
  v4 = 0;
  v5 = "NDArray.alloc_const";
  v6 = 39;
  v7 = 0;
  v8 = ODIE::Kernels::Core::CPU::allocConstVi;
  v9 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v3, 1);
  ODIE::Common::String::~String(v3);
  v4 = 0;
  v5 = "NDArray.alloc_view";
  v6 = 37;
  v7 = 0;
  v8 = ODIE::Kernels::Core::CPU::allocViewVi;
  v9 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v3, 1);
  ODIE::Common::String::~String(v3);
  v4 = 0;
  v5 = "NDArray.load";
  v6 = 25;
  v7 = 0;
  v8 = ODIE::Kernels::Core::CPU::loadVi;
  v9 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v3, 1);
  ODIE::Common::String::~String(v3);
  v4 = 0;
  v5 = "NDArray.copy";
  v6 = 25;
  v7 = 0;
  v8 = ODIE::Kernels::Core::CPU::copyVi;
  v9 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v3, 1);
  ODIE::Common::String::~String(v3);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::allocTi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v13[0] = *(a1 + 104);
  OutputType = ODIE::Common::SymbolAttr::getOutputType(v13, 0);
  v7 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v7;
  v14 = *(a1 + 32);
  v15[0] = OutputType;
  v15[1] = v8;
  v16[0] = ODIE::Common::TypeAttr::getAttrs(v15);
  v16[1] = v9;
  v10 = ODIE::Common::CompositeAttr::getAttrByIndex<ODIE::Common::TypeAttr>(v16, 0);
  *a4 = ODIE::Kernels::Core::CPU::Utils::createStaticNDArrayType(v13, v10, v11);
  return 0;
}

uint64_t ODIE::Kernels::Core::CPU::allocVi(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = *a2;
  }

  else
  {
    v7 = *(a1 + 16);
    v23 = *a1;
    v24 = v7;
    v25 = *(a1 + 32);
    v19[0] = *(a1 + 104);
    OutputType = ODIE::Common::SymbolAttr::getOutputType(v19, 0);
    v6 = ODIE::Kernels::Core::CPU::Utils::createStaticNDArrayType(&v23, OutputType, v9);
  }

  if (*(v6 + 8) == 2)
  {
    v17 = *(a1 + 16);
    v18 = *(a1 + 32);
    v10 = *(v6 + 16);
    v23 = *a1;
    v16 = v23;
    v24 = v17;
    v25 = *(a1 + 32);
    v11 = odie_alloc_aligned(&v23, v10, 8, 0);
    v19[0] = v16;
    v19[1] = v17;
    v20 = v18;
    *&v23 = 0;
    ODIE::Common::NDArrayValue::create(v19, v6, v11, v10, &v23, &v21);
    if ((v22 & 1) == 0)
    {
      ODIE::Platform::abort(v12);
    }

    v13 = v21;
    if (v23 <= 2)
    {
      (off_286E74180[v23])(&v23 + 8);
    }

    result = 0;
    *a4 = v13;
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    result = 2;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::allocConstVi(uint64_t a1, uint64_t *a2, uint64_t a3, ODIE::Common::Value **a4)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v19 = *(a1 + 104);
  OutputType = ODIE::Common::SymbolAttr::getOutputType(&v19, 0);
  v8 = *(a1 + 16);
  v19 = *a1;
  v20 = v8;
  v21 = *(a1 + 32);
  v10 = ODIE::Kernels::Core::CPU::Utils::createStaticNDArrayType(&v19, OutputType, v9);
  v11 = *(a1 + 16);
  v19 = *a1;
  v20 = v11;
  v21 = *(a1 + 32);
  v24 = 0;
  ODIE::Common::NDArrayValue::create(&v19, v10, 0, 0, &v24, &v17);
  if ((v18 & 1) == 0)
  {
    ODIE::Platform::abort(v12);
  }

  v13 = v17;
  *a4 = v17;
  if (v24 <= 2)
  {
    (off_286E74180[v24])(v25);
    v13 = *a4;
  }

  v14 = *(*v13 + 16);
  v22 = 0;
  ODIE::Common::Value::setData<unsigned char>(v13, v6, v14, &v22, 0);
  if (v22 <= 2)
  {
    (off_286E74180[v22])(&v23);
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ODIE::Kernels::Core::CPU::allocViewVi(uint64_t a1, uint64_t *a2, uint64_t a3, ODIE::Common::Value **a4)
{
  v27[5] = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v6 = a2[1];
  v21 = *(a1 + 104);
  OutputType = ODIE::Common::SymbolAttr::getOutputType(&v21, 0);
  v9 = *(a1 + 16);
  v21 = *a1;
  v22 = v9;
  v23 = *(a1 + 32);
  v11 = ODIE::Kernels::Core::CPU::Utils::createStaticNDArrayType(&v21, OutputType, v10);
  v12 = *(a1 + 16);
  v21 = *a1;
  v22 = v12;
  v23 = *(a1 + 32);
  v26 = 0;
  ODIE::Common::NDArrayValue::create(&v21, v11, 0, 0, &v26, &v19);
  if ((v20 & 1) == 0)
  {
    ODIE::Platform::abort(v13);
  }

  v14 = v19;
  *a4 = v19;
  if (v26 <= 2)
  {
    (off_286E74180[v26])(v27);
    v14 = *a4;
  }

  v15 = *(v7 + 8);
  v16 = *(*v14 + 16);
  v24 = 0;
  ODIE::Common::Value::setData<unsigned char>(v14, v15 + v6, v16, &v24, 0);
  if (v24 <= 2)
  {
    (off_286E74180[v24])(&v25);
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ODIE::Kernels::Core::CPU::Utils::createStaticNDArrayType(__int128 *a1, uint64_t a2, uint64_t a3)
{
  *&v22 = a2;
  *(&v22 + 1) = a3;
  *&v22 = ODIE::Common::NDArrayTypeAttr::getElementType(&v22);
  *(&v22 + 1) = v6;
  ScalarTag = ODIE::Common::ScalarTypeAttr::getScalarTag(&v22);
  v8 = a1[1];
  v22 = *a1;
  v23 = v8;
  v24 = *(a1 + 4);
  StorageSize = ODIE::Common::ScalarType::getStorageSize(ScalarTag);
  ODIE::Common::ScalarType::create(&v22, ScalarTag, StorageSize, &v25);
  if ((v26 & 1) == 0)
  {
    ODIE::Platform::abort(v10);
  }

  v11 = v25;
  v12 = a1[1];
  v22 = *a1;
  v23 = v12;
  v24 = *(a1 + 4);
  v25 = a2;
  v26 = a3;
  ODIE::Common::NDArrayTypeAttr::getShape(&v25);
  v14 = v13;
  v25 = a2;
  v26 = a3;
  Shape = ODIE::Common::NDArrayTypeAttr::getShape(&v25);
  v17 = v16;
  v25 = a2;
  v26 = a3;
  DimOrdering = ODIE::Common::NDArrayTypeAttr::getDimOrdering(&v25);
  ODIE::Common::NDArrayType::create(&v22, v11, v14, Shape, v17, DimOrdering, v19, &v25);
  if ((v26 & 1) == 0)
  {
    ODIE::Platform::abort(v20);
  }

  return v25;
}

uint64_t ODIE::Common::Value::setData<unsigned char>(ODIE::Common::Value *this, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5 || (v9 = *this, result = (*(**this + 16))(), !result))
  {
    if (*(*this + 16) > a3)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Value.hpp", "setData", "Provided data span is insufficiently sized for Value. Expected data should be at least %lld bytes.", *(*this + 16));
      return 2;
    }

    else
    {
      ODIE::Common::Value::resetData(this);
      *(this + 1) = a2;
      v11 = *(this + 2);
      if (v11 <= 2)
      {
        (off_286E74180[v11])(this + 24);
      }

      v12 = *a4;
      *(this + 2) = *a4;
      (off_286E74198[v12])(this + 24, a4 + 1);
      return 0;
    }
  }

  return result;
}

void ODIE::Common::Value::resetData(ODIE::Common::Value *this)
{
  v2 = *(this + 2);
  if (v2 == 2)
  {
    (*(this + 3))(*(this + 1));
  }

  else if (v2 == 1)
  {
    v3 = *(this + 5);
    if (v3)
    {
      v4 = *(this + 1);
      v5 = *(this + 24);
      v6 = v3;
      v7 = *(this + 3);
      v3(&v5, v4);
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
    }
  }

  *(this + 1) = 0;
}

__n128 ODIE::Common::Variant<ODIE::Common::EmptyState,ODIE::Common::Allocator,void (*)(void *)>::copyConstructStorage(unsigned char const&)::{lambda(unsigned char &,unsigned char const&)#2}::__invoke(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceBatchNorm(uint64_t a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v9);
  }

  v11 = *(a1 + 32);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  ODIE::Common::NDArrayType::create(v10, *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 32), *(v5 + 48), *(v5 + 32), &v12);
  if ((v13 & 1) == 0)
  {
    ODIE::Platform::abort(v7);
  }

  *a4 = v12;
  return 0;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceBatchNorm(uint64_t a1, uint64_t **a2, uint64_t a3, ODIE::Common::NDArrayType ***a4)
{
  v6 = **a2;
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v68);
  }

  v7 = **a4;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v69);
  }

  v8 = *(v6 + 32);
  if (v8 != *(v7 + 8))
  {
    v18 = "Input and output of batchnorm kernel must have same ranks";
LABEL_16:
    v19 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/BatchNorm.cpp", "validateBatchNorm", v18);
    return v19;
  }

  if (v8 < 2)
  {
    v18 = "input and output rank must be at least 2";
    goto LABEL_16;
  }

  v9 = 0;
  v10 = *(v6 + 40);
  v11 = *(v7 + 5);
  v12 = 4 * v8;
  do
  {
    if (*(v10 + v9) != *(v11 + v9))
    {
      v18 = "Every dim of input and output of batchnorm kernel must be the same";
      goto LABEL_16;
    }

    v9 += 4;
  }

  while (v12 != v9);
  if (a3 < 3)
  {
    goto LABEL_18;
  }

  v13 = a2 + 1;
  v14 = 1;
  v15 = 2;
  while (1)
  {
    v16 = **v13;
    if (*(v16 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v17);
    }

    if (**(v16 + 40) != *(v10 + 4))
    {
      break;
    }

    v14 = a3 - 1 > v15;
    ++v13;
    if (a3 == ++v15)
    {
      goto LABEL_18;
    }
  }

  v19 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/BatchNorm.cpp", "validateBatchNorm", "input must have the same size as the input channel dim");
  if (!v14)
  {
LABEL_18:
    v20 = **a2;
    if (*(v20 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v70);
    }

    v21 = (*a4)[1];
    v22 = **a2;
    v23 = *(v20 + 24);
    if (*(v23 + 8) != 1)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v71);
    }

    v24 = *(v23 + 24);
    v25 = **a4;
    if (*(v25 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v72);
    }

    v26 = *(v20 + 40);
    v27 = *(v20 + 32);
    if (v27 <= 2)
    {
      v30 = 1;
    }

    else
    {
      v28 = v27 - 2;
      v29 = (v26 + 8);
      v30 = 1;
      do
      {
        v31 = *v29++;
        v30 *= v31;
        --v28;
      }

      while (v28);
    }

    if (v27 < 2)
    {
      v34 = 1;
    }

    else
    {
      v32 = v27 - 1;
      v33 = (v26 + 4);
      v34 = 1;
      do
      {
        v35 = *v33++;
        v34 *= v35;
        --v32;
      }

      while (v32);
    }

    v36 = (*a2)[1];
    v37 = a2[1][1];
    v38 = a2[2][1];
    v39 = a2[3][1];
    v40 = a2[5];
    v41 = a2[4][1];
    v42 = v40[1];
    if (v24 == 69)
    {
      ODIE::Common::NDArrayType::getNumElements(v25, &v73);
      if ((v74 & 1) == 0)
      {
        ODIE::Platform::abort(v63);
      }

      v64 = v73;
      if (v73 >= 1)
      {
        v65 = 0;
        do
        {
          v66 = v65 % v34 / v30;
          *(v21 + v65) = *(v38 + 4 * v66) + (((*(v36 + 4 * v65) - *(v39 + 4 * v66)) / sqrtf(*(v41 + 4 * v66) + *v42)) * *(v37 + 4 * v66));
          ++v65;
        }

        while (v64 != v65);
      }
    }

    else
    {
      if (v24 != 68)
      {
        return 1;
      }

      ODIE::Common::NDArrayType::getNumElements(v25, &v73);
      if ((v74 & 1) == 0)
      {
        ODIE::Platform::abort(v43);
      }

      v44 = v73;
      if (v73 >= 1)
      {
        v45 = 0;
        do
        {
          v46 = v45 % v34 / v30;
          _H0 = *(v36 + 2 * v45);
          __asm { FCVT            S0, H0 }

          _H1 = *(v39 + 2 * v46);
          __asm { FCVT            S1, H1 }

          v55 = _S0 - _S1;
          LOWORD(_S1) = *(v41 + 2 * v46);
          __asm { FCVT            S1, H1 }

          _H2 = *v42;
          __asm { FCVT            S2, H2 }

          v59 = v55 / sqrtf(_S1 + _S2);
          LOWORD(_S1) = *(v37 + 2 * v46);
          __asm { FCVT            S1, H1 }

          LOWORD(_S2) = *(v38 + 2 * v46);
          __asm { FCVT            S2, H2 }

          _S0 = _S2 + (v59 * _S1);
          __asm { FCVT            H0, S0 }

          *(v21 + v45++) = LOWORD(_S0);
        }

        while (v44 != v45);
      }
    }

    return 0;
  }

  return v19;
}

void ODIE::Kernels::Core::CPU::registerBatchNormKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.batchnorm";
  v4 = 33;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceBatchNorm;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceBatchNorm;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceBroadcastInDims(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v6 = a2[2];
  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v21);
  }

  v8 = a2[1][1];
  if (!v8)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "typeInferenceBroadcastInDims", "broadcast_in_dims: Require dim sizes data to do type inference.");
    return 2;
  }

  v9 = v6[1];
  if (!v9)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "typeInferenceBroadcastInDims", "broadcast_in_dims: Require axes data to do type inference.");
    return 2;
  }

  v10 = *(v7 + 40);
  v11 = *(*v6 + 16);
  v12 = 4 * *(v7 + 32);
  v13 = a1[1];
  v24 = *a1;
  v25 = v13;
  v26 = *(a1 + 4);
  v14 = odie_alloc_aligned(&v24, v12, 4, 0);
  memcpy(v14, v10, v12);
  if (v11 >= 4)
  {
    v15 = v11 >> 2;
    do
    {
      v17 = *v8++;
      v16 = v17;
      v18 = *v9++;
      *(v14 + v18) = v16;
      --v15;
    }

    while (v15);
  }

  v26 = *(a1 + 4);
  v19 = a1[1];
  v24 = *a1;
  v25 = v19;
  ODIE::Common::NDArrayType::create(&v24, *(v7 + 24), *(v7 + 32), v14, *(v7 + 32), *(v7 + 48), *(v7 + 32), &v22);
  if ((v23 & 1) == 0)
  {
    return v22;
  }

  result = 0;
  *a4 = v22;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceBroadcastInDims(uint64_t a1, char ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a3 >= 1)
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = a2[v9];
      if (*(*v11 + 2))
      {
        if (!v11[1])
        {
          break;
        }
      }

      v10 = ++v9 < a3;
      if (a3 == v9)
      {
        goto LABEL_6;
      }
    }

    v18 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v9);
    if (v10)
    {
      return v18;
    }
  }

LABEL_6:
  if (a5 >= 1)
  {
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = a4[v12];
      if (*(*v14 + 16))
      {
        if (!v14[1])
        {
          break;
        }
      }

      v13 = ++v12 < a5;
      if (a5 == v12)
      {
        goto LABEL_11;
      }
    }

    v18 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v12);
    if (v13)
    {
      return v18;
    }
  }

LABEL_11:
  if (a3 != 3 || (**a2)[8] != 2)
  {
    v31 = "broadcast_in_dims expects 3 packed NDArrayType inputs.";
    goto LABEL_36;
  }

  v15 = 1;
  do
  {
    if (v15 == 3)
    {
      goto LABEL_17;
    }

    v16 = (*a2[v15++])[8];
  }

  while (v16 == 2);
  v17 = v15 - 2;
  v18 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "broadcast_in_dims expects 3 packed NDArrayType inputs.");
  if (v17 >= 2)
  {
LABEL_17:
    if (a5 == 1 && *(**a4 + 8) == 2)
    {
      v19 = *a2;
      v20 = a2[2];
      v21 = **a2;
      if (v21[8] != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v32);
      }

      v22 = *(v21 + 8);
      if ((v22 & 0x80000000) != 0)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "validateAndGetAxes", "broadcast_dims does not support negative rank input.", v37);
      }

      else
      {
        if ((*v20)[8] != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v33);
        }

        if (*(*v20 + 8) == 1)
        {
          if ((*v20)[8] != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v34);
          }

          v23 = *(*v20 + 3);
          if (*(v23 + 8) != 1)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v36);
          }

          if (*(v23 + 24) == 25)
          {
            v24 = *(*v20 + 2);
            v25 = v24 >> 2;
            if (v24 >> 2 > v22)
            {
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "validateAndGetAxes", "broadcast_in_dims: axes has %lld values. input rank is only %d.");
            }

            else if (v24 < 4)
            {
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "validateAndGetAxes", "broadcast_in_dims: axes has 0 values.");
            }

            else
            {
              v26 = 0;
              v27 = v20[1];
              v28 = -1;
              while (1)
              {
                v29 = *(v27 + 4 * v26);
                if (v29 < 0)
                {
                  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "validateAndGetAxes", "broadcast_in_dims: axes[%d] is %d. Currently does not support negative axes.");
                  goto LABEL_46;
                }

                if (v29 <= v28)
                {
                  break;
                }

                ++v26;
                v28 = v29;
                if (v25 == v26)
                {
                  return 0;
                }
              }

              v38 = *(v27 + 4 * v26);
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "validateAndGetAxes", "broadcast_in_dims: axes[%d] is %d <= max seen before %d. Not strictly monotonic.");
            }
          }

          else
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "validateAndGetAxes", "broadcast_in_dims currently supports only Int32 axes.", v37);
          }
        }

        else
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "validateAndGetAxes", "broadcast_in_dims requires 1D axes input.", v37);
        }
      }

LABEL_46:
      ODIE::Platform::abort(v35);
    }

    v31 = "broadcast_in_dims expects 1 packed NDArrayType output.";
LABEL_36:
    v18 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", v31);
  }

  return v18;
}

char *ODIE::Kernels::Core::CPU::anonymous namespace::broadcastInDims(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v22 = *MEMORY[0x277D85DE8];
  if ((*a1)[8] != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v18);
  }

  v8 = *(*(*a1 + 3) + 16);
  v9 = *a6;
  if (*(*a6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v19);
  }

  v10 = *(v9 + 40);
  v11 = *(v9 + 32);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  if (a5)
  {
    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v14 = a1[1];
    if (v14)
    {
      v15 = *(*a1 + 2);
    }

    else
    {
      v15 = 0;
    }

    v16 = a6[1];
    v17 = *MEMORY[0x277D85DE8];

    return memcpy(v16, v14, v15);
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceBroadcastTo(uint64_t a1, char ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v47 = *MEMORY[0x277D85DE8];
  if (a3 < 1)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = a2[v9];
    if (*(*v11 + 2))
    {
      if (!v11[1])
      {
        break;
      }
    }

    v10 = ++v9 < a3;
    if (a3 == v9)
    {
      goto LABEL_6;
    }
  }

  v38 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v9);
  if (!v10)
  {
LABEL_6:
    if (a5 >= 1)
    {
      v12 = 0;
      v13 = 1;
      while (1)
      {
        v14 = a4[v12];
        if (*(*v14 + 16))
        {
          if (!v14[1])
          {
            break;
          }
        }

        v13 = ++v12 < a5;
        if (a5 == v12)
        {
          goto LABEL_11;
        }
      }

      v38 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v12);
      if (v13)
      {
        goto LABEL_36;
      }
    }

LABEL_11:
    if (a3 == 2 && (v15 = *a2, v16 = **a2, v16[8] == 2) && (v17 = a2[1], (*v17)[8] == 2))
    {
      if (a5 == 1)
      {
        v18 = *a4;
        v19 = *v18;
        if (*(*v18 + 8) == 2)
        {
          v20 = *(v16 + 8);
          v21 = *(v16 + 5);
          v22 = *(v19 + 32);
          if (v20 == v22)
          {
            if (v20 < 1)
            {
LABEL_21:
              v29 = v18[1];
              v30 = v15[1];
              v31 = *(*(v16 + 3) + 16);
              ODIE::Common::NDArrayType::getNumElements(v19, __b);
              if ((BYTE4(__b[0]) & 1) == 0)
              {
                ODIE::Platform::abort(v32);
              }

              memcpy(v29, v30, v31 * SLODWORD(__b[0]));
LABEL_35:
              v38 = 0;
              goto LABEL_36;
            }

            v23 = *(v19 + 40);
            v24 = *(v16 + 8);
            v25 = *(v16 + 5);
            while (1)
            {
              v27 = *v25++;
              v26 = v27;
              v28 = *v23++;
              if (v26 != v28)
              {
                break;
              }

              if (!--v24)
              {
                goto LABEL_21;
              }
            }
          }

          v46 = 0;
          memset(__b, 0, sizeof(__b));
          v43 = 0;
          memset(v42, 0, sizeof(v42));
          if (v22 < 1)
          {
            v36 = 0;
          }

          else
          {
            memset_pattern16(__b, &unk_25D0A0510, 4 * v22);
            if (v20 >= 1)
            {
              v33 = v22;
              do
              {
                *&v44[4 * v33] = *(v21 - 4 + 4 * v20);
                if (v20 < 2)
                {
                  break;
                }

                --v20;
              }

              while (v33-- > 1);
            }

            v35 = 0;
            v36 = 0;
            v37 = v17[1];
            do
            {
              if (*&v37[4 * v35] != *(__b + v35))
              {
                *(v42 + v36++) = v35;
              }

              ++v35;
            }

            while (v22 != v35);
          }

          goto LABEL_35;
        }
      }

      v41 = "broadcast_to expects 1 packed NDArrayType output.";
    }

    else
    {
      v41 = "broadcast_to expects 2 packed NDArrayType inputs.";
    }

    v38 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", v41);
  }

LABEL_36:
  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceBroadcastShapes(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, ODIE::Common::NDArrayType ***a4, uint64_t a5)
{
  if (a5 < 1)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = a4[v9];
    if (*(*v11 + 2))
    {
      if (!v11[1])
      {
        break;
      }
    }

    v10 = ++v9 < a5;
    if (a5 == v9)
    {
      goto LABEL_6;
    }
  }

  v30 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v9);
  if (!v10)
  {
LABEL_6:
    if (a3 == 2 && (v12 = **a2, *(v12 + 8) == 2) && (v13 = a2[1], *(*v13 + 8) == 2))
    {
      if (a5 == 1)
      {
        v14 = *a4;
        v15 = **a4;
        if (*(v15 + 8) == 2)
        {
          v16 = *v13;
          if (*(*v13 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v33);
          }

          v17 = (*a2)[1];
          v18 = v13[1];
          v19 = v14[1];
          ODIE::Common::NDArrayType::getNumElements(v12, &v34);
          if ((v35 & 1) == 0)
          {
            ODIE::Platform::abort(v20);
          }

          v21 = v34;
          ODIE::Common::NDArrayType::getNumElements(v16, &v34);
          if ((v35 & 1) == 0)
          {
            ODIE::Platform::abort(v22);
          }

          v23 = v34;
          if (v21 <= v34)
          {
            v24 = v34;
          }

          else
          {
            v24 = v21;
          }

          ODIE::Common::NDArrayType::getNumElements(v15, &v34);
          if ((v35 & 1) == 0)
          {
            ODIE::Platform::abort(v25);
          }

          if (v34 == v24)
          {
            if (v24 < 1)
            {
              return 0;
            }

            v26 = v23 - 1;
            for (i = v21 - 1; ; --i)
            {
              v28 = 1;
              if (v17 && (i & 0x80000000) == 0)
              {
                v28 = *(v17 + i);
              }

              v29 = 1;
              if (v18 && (v26 & 0x80000000) == 0)
              {
                v29 = *(v18 + v26);
              }

              if (v28 != v29 && v28 != 1 && v29 != 1)
              {
                break;
              }

              if (v28 <= v29)
              {
                v28 = v29;
              }

              *(v19 + v24 - 1) = v28;
              --v26;
              if (!--v24)
              {
                return 0;
              }
            }

            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "valueInferenceBroadcastShapes", "Invalid broadcasting indices: %d vs %d");
          }

          else
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "valueInferenceBroadcastShapes", "Computed rank is different than output rank in broadcast_shapes");
          }

          return 3;
        }
      }

      v32 = "broadcast_shapes expects 1 packed NDArrayType output.";
    }

    else
    {
      v32 = "broadcast_shapes expects 2 packed NDArrayType inputs.";
    }

    v30 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", v32);
  }

  return v30;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceBroadcastTo(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v6 = a2[1];
  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v15);
  }

  v8 = v6[1];
  if (!v8)
  {
    return 2;
  }

  v9 = *(*v6 + 16) >> 2;
  v10 = a1[1];
  v18 = *a1;
  v19 = v10;
  v20 = *(a1 + 4);
  v11 = odie_alloc_aligned(&v18, 4 * v9, 4, 0);
  memcpy(v11, v8, 4 * v9);
  v12 = *(v7 + 32);
  if (v12 > v9)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "typeInferenceBroadcastTo", "coreml.broadcast_to type inference is invoked where output rank %d is smaller than input rank %d", v9, v12);
    return 2;
  }

  v20 = *(a1 + 4);
  v13 = a1[1];
  v18 = *a1;
  v19 = v13;
  ODIE::Common::NDArrayType::create(&v18, *(v7 + 24), v9, v11, v9, &ODIE::Common::Constants::kDefaultDimOrdering, v9, &v16);
  if ((v17 & 1) == 0)
  {
    return v16;
  }

  result = 0;
  *a4 = v16;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceBroadcastShapes(__int128 *a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, void *a4)
{
  v6 = **a2;
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v16);
  }

  v7 = *a2[1];
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v17);
  }

  ODIE::Common::NDArrayType::getNumElements(**a2, &v20);
  if ((BYTE4(v20) & 1) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v20;
  ODIE::Common::NDArrayType::getNumElements(v7, &v20);
  if ((BYTE4(v20) & 1) == 0)
  {
    ODIE::Platform::abort(v10);
  }

  if (v9 <= v20)
  {
    v11 = v20;
  }

  else
  {
    v11 = v9;
  }

  v12 = a1[1];
  v20 = *a1;
  v21 = v12;
  v22 = *(a1 + 4);
  v13 = odie_alloc_aligned(&v20, 4, 4, 0);
  *v13 = v11;
  v22 = *(a1 + 4);
  v14 = a1[1];
  v20 = *a1;
  v21 = v14;
  ODIE::Common::NDArrayType::create(&v20, *(v6 + 3), 1, v13, 1, *(v6 + 6), *(v6 + 8), &v18);
  if ((v19 & 1) == 0)
  {
    return v18;
  }

  result = 0;
  *a4 = v18;
  return result;
}

void ODIE::Kernels::Core::CPU::registerBroadcastInDimsKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.broadcast_in_dims";
  v4 = 49;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceBroadcastInDims;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceBroadcastInDims;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

void ODIE::Kernels::Core::CPU::registerBroadcastToKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.broadcast_to";
  v4 = 39;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceBroadcastTo;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceBroadcastTo;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

void ODIE::Kernels::Core::CPU::registerBroadcastShapesKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.broadcast_shapes";
  v4 = 47;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceBroadcastShapes;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceBroadcastShapes;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

char *ODIE::Kernels::Core::CPU::anonymous namespace::broadcastNDims(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, uint64_t a11, int a12)
{
  v14 = a5;
  v15 = result;
  v16 = a12;
  v17 = a10;
  if (a9 == a12)
  {
    *(a11 + 4 * a9) = 0;
    if (a9 < 0)
    {
      v18 = -1;
    }

    else
    {
      v18 = a9;
    }

    v19 = (v18 + 1);
    v20 = a6 - v19;
    if (a6 <= v19)
    {
      v22 = 1;
    }

    else
    {
      v21 = (a5 + 4 * v19);
      v22 = 1;
      do
      {
        v23 = *v21++;
        v22 *= v23;
        --v20;
      }

      while (v20);
    }

    if (a6 < 1)
    {
      v45 = 0;
    }

    else
    {
      v40 = 0;
      v41 = (a6 & 0x7FFFFFFF) - 1;
      v42 = 1;
      v43 = v41;
      do
      {
        v40 += *(a11 + 4 * v43) * v42;
        v42 *= *(a7 + 4 * v43);
        v44 = v43-- + 1;
      }

      while (v44 > 1);
      v45 = 0;
      v46 = v40 * a10;
      v47 = 1;
      do
      {
        v45 += *(a11 + 4 * v41) * v47;
        v47 *= *(a5 + 4 * v41);
        v48 = v41-- + 1;
      }

      while (v48 > 1);
      v15 = &result[v46];
    }

    if (*(a5 + 4 * a9) >= 1)
    {
      v49 = 0;
      v50 = (a3 + v45 * a10);
      v51 = (v22 * a10);
      do
      {
        result = memcpy(v50, v15, v51);
        ++v49;
        v50 += v51;
      }

      while (v49 < *(v14 + 4 * a9));
    }
  }

  else
  {
    *(a11 + 4 * a9) = 0;
    if (*(a7 + 4 * a9) >= 1)
    {
      v61 = result;
      do
      {
        v27 = v15;
        v28 = a3;
        v29 = v14;
        v30 = v14;
        v31 = v17;
        v17 = v31;
        v14 = v30;
        a3 = v28;
        v15 = v61;
        v32 = *(a11 + 4 * a9) + 1;
        *(a11 + 4 * a9) = v32;
        v16 = a12;
      }

      while (v32 < *(a7 + 4 * a9));
    }

    *(a11 + 4 * a9) = 0;
    v33 = *(v14 + 4 * a9);
    if (v33 != *(a7 + 4 * a9))
    {
      v34 = a9 < 0 ? -1 : a9;
      v35 = (v34 + 1);
      v36 = a6 - v35;
      if (a6 <= v35)
      {
        v38 = 1;
      }

      else
      {
        v37 = (v14 + 4 * v35);
        v38 = 1;
        do
        {
          v39 = *v37++;
          v38 *= v39;
          --v36;
        }

        while (v36);
      }

      if (a6 < 1)
      {
        v52 = 0;
      }

      else
      {
        v52 = 0;
        v53 = (a6 & 0x7FFFFFFF) - 1;
        v54 = 1;
        do
        {
          v52 += *(a11 + 4 * v53) * v54;
          v54 *= *(v14 + 4 * v53);
          v55 = v53-- + 1;
        }

        while (v55 > 1);
      }

      if (v33 > 1)
      {
        v56 = v52 * v17;
        v57 = (a3 + v56);
        v58 = v38 * v17;
        v59 = (a3 + v58 + v56);
        v60 = 1;
        do
        {
          result = memcpy(v59, v57, v58);
          ++v60;
          v59 += v58;
        }

        while (v60 < *(v14 + 4 * a9));
      }
    }
  }

  return result;
}

void ODIE::Kernels::Core::CPU::registerBuiltinKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "Context.alloc";
  v4 = 27;
  v5 = 0;
  v6 = ODIE::Kernels::Core::CPU::contextAlloc;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::contextAlloc(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v23 = *(a1 + 104);
  v22[0] = ODIE::Common::SymbolAttr::getOutputType(&v23, 0);
  v22[1] = v6;
  ODIE::Common::TypeAttr::getAttrs(v22);
  v8 = (v7 + *(v7 - *v7 + 4));
  v9 = *(v8 + *v8);
  v10 = a1[1];
  v23 = *a1;
  *v24 = v10;
  *&v24[16] = *(a1 + 4);
  v11 = odie_alloc_aligned(&v23, 64, 8, 0);
  v12 = v11;
  if (v11)
  {
    v13 = *a1;
    v14 = a1[1];
    *(v11 + 32) = *(a1 + 4);
    *v11 = v13;
    *(v11 + 16) = v14;
    *(v11 + 40) = 0;
    v15 = (v11 + 40);
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    v23 = *v11;
    *v24 = *(v11 + 16);
    *&v24[16] = *(v11 + 32);
    v16 = odie_alloc_aligned(&v23, 8 * v9, 8, 0);
    v17 = v16;
    v18 = *(v12 + 48);
    v19 = *v15;
    if (v18 >= v9)
    {
      v18 = v9;
    }

    if (v18)
    {
      memmove(v16, v19, 8 * v18);
      v19 = *v15;
    }

    *(v12 + 40) = v17;
    v20 = *(v12 + 16);
    if (v20)
    {
      v23 = *v12;
      *v24 = v20;
      *&v24[8] = *(v12 + 24);
      v20(&v23, v19);
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
    }

    *(v12 + 48) = v9;
    *(v12 + 56) = v9;
  }

  *a4 = v12;
  return 0;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceCast(__int128 *a1, uint64_t **a2, uint64_t a3, int **a4)
{
  v6 = **a2;
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v16);
  }

  v17 = *(a1 + 104);
  OutputType = ODIE::Common::SymbolAttr::getOutputType(&v17, 0);
  v21 = v7;
  *&v17 = ODIE::Common::TypeAttr::getAttrs(&OutputType);
  *(&v17 + 1) = v8;
  *&v17 = ODIE::Common::CompositeAttr::getAttrByIndex<ODIE::Common::TypeAttr>(&v17, 0);
  *(&v17 + 1) = v9;
  *&v17 = ODIE::Common::NDArrayTypeAttr::getElementType(&v17);
  *(&v17 + 1) = v10;
  ScalarTag = ODIE::Common::ScalarTypeAttr::getScalarTag(&v17);
  v12 = a1[1];
  v17 = *a1;
  v18 = v12;
  v19 = *(a1 + 4);
  StorageSize = ODIE::Common::ScalarType::getStorageSize(ScalarTag);
  ODIE::Common::ScalarType::create(&v17, ScalarTag, StorageSize, &OutputType);
  if ((v21 & 1) == 0)
  {
    return OutputType;
  }

  v19 = *(a1 + 4);
  v14 = a1[1];
  v17 = *a1;
  v18 = v14;
  ODIE::Common::NDArrayType::create(&v17, OutputType, *(v6 + 32), *(v6 + 40), *(v6 + 32), *(v6 + 48), *(v6 + 32), &OutputType);
  if ((v21 & 1) == 0)
  {
    return OutputType;
  }

  result = 0;
  *a4 = OutputType;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceCast(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, ODIE::Common::NDArrayType ***a4)
{
  v5 = *a2;
  v6 = (*a2)[1];
  v7 = *a4;
  v8 = (*a4)[1];
  if (*(**a2 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v82);
  }

  v9 = *v7;
  if (*(*v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v83);
  }

  ODIE::Common::NDArrayType::getNumElements(**a2, &v90);
  ODIE::Common::NDArrayType::getNumElements(v9, &v88);
  if (v89 == 1)
  {
    v10 = v88;
  }

  else if (v91 == 1)
  {
    v10 = v90;
  }

  else
  {
    v10 = -1;
  }

  if (*(*v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v84);
  }

  v11 = *(*v5 + 3);
  if (*(v11 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v85);
  }

  v12 = *(v11 + 24);
  v13 = **a4;
  if (*(v13 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v86);
  }

  v14 = *(v13 + 3);
  if (*(v14 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v87);
  }

  v15 = *(v14 + 24);
  result = 3;
  if (v12 > 25)
  {
    if (v12 > 67)
    {
      if (v12 == 68)
      {
        if (v15 <= 24)
        {
          switch(v15)
          {
            case 16:
              if (v10 < 1)
              {
                return 0;
              }

              result = 0;
              do
              {
                v50 = *v6++;
                __asm { FCMP            H0, #0 }

                if (_ZF)
                {
                  v52 = 0;
                }

                else
                {
                  v52 = 1;
                }

                *v8++ = v52;
                --v10;
              }

              while (v10);
              break;
            case 23:
              if (v10 < 1)
              {
                return 0;
              }

              result = 0;
              do
              {
                v77 = *v6++;
                *v8++ = v77;
                --v10;
              }

              while (v10);
              break;
            case 24:
              if (v10 < 1)
              {
                return 0;
              }

              result = 0;
              do
              {
                v28 = *v6++;
                *v8 = v28;
                v8 += 2;
                --v10;
              }

              while (v10);
              break;
            default:
              return result;
          }
        }

        else if (v15 > 67)
        {
          if (v15 == 68)
          {
            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v64 = *v6++;
              *v8 = v64;
              v8 += 2;
              --v10;
            }

            while (v10);
          }

          else
          {
            if (v15 != 69)
            {
              return result;
            }

            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v36 = *v6++;
              _H0 = v36;
              __asm { FCVT            S0, H0 }

              *v8 = _S0;
              v8 += 4;
              --v10;
            }

            while (v10);
          }
        }

        else if (v15 == 25)
        {
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v56 = *v6++;
            *v8 = v56;
            v8 += 4;
            --v10;
          }

          while (v10);
        }

        else
        {
          if (v15 != 26)
          {
            return result;
          }

          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v24 = *v6++;
            *v8 = v24;
            v8 += 8;
            --v10;
          }

          while (v10);
        }
      }

      else
      {
        if (v12 != 69)
        {
          return result;
        }

        if (v15 <= 24)
        {
          switch(v15)
          {
            case 16:
              if (v10 < 1)
              {
                return 0;
              }

              result = 0;
              do
              {
                v60 = *v6;
                v6 += 2;
                *v8++ = v60 != 0.0;
                --v10;
              }

              while (v10);
              break;
            case 23:
              if (v10 < 1)
              {
                return 0;
              }

              result = 0;
              do
              {
                v81 = *v6;
                v6 += 2;
                *v8++ = v81;
                --v10;
              }

              while (v10);
              break;
            case 24:
              if (v10 < 1)
              {
                return 0;
              }

              result = 0;
              do
              {
                v32 = *v6;
                v6 += 2;
                *v8 = v32;
                v8 += 2;
                --v10;
              }

              while (v10);
              break;
            default:
              return result;
          }
        }

        else if (v15 > 67)
        {
          if (v15 == 68)
          {
            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v72 = *v6;
              v6 += 2;
              _S0 = v72;
              __asm { FCVT            H0, S0 }

              *v8 = LOWORD(_S0);
              v8 += 2;
              --v10;
            }

            while (v10);
          }

          else
          {
            if (v15 != 69)
            {
              return result;
            }

            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v46 = *v6;
              v6 += 2;
              *v8 = v46;
              v8 += 4;
              --v10;
            }

            while (v10);
          }
        }

        else if (v15 == 25)
        {
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v68 = *v6;
            v6 += 2;
            *v8 = v68;
            v8 += 4;
            --v10;
          }

          while (v10);
        }

        else
        {
          if (v15 != 26)
          {
            return result;
          }

          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v20 = *v6;
            v6 += 2;
            *v8 = v20;
            v8 += 8;
            --v10;
          }

          while (v10);
        }
      }
    }

    else if (v12 == 26)
    {
      if (v15 <= 24)
      {
        switch(v15)
        {
          case 16:
            if (v10 < 1)
            {
              return 0;
            }

            do
            {
              result = 0;
              v48 = *v6;
              v6 += 4;
              *v8++ = v48 != 0;
              --v10;
            }

            while (v10);
            break;
          case 23:
            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v75 = *v6;
              v6 += 4;
              *v8++ = v75;
              --v10;
            }

            while (v10);
            break;
          case 24:
            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v26 = *v6;
              v6 += 4;
              *v8 = v26;
              v8 += 2;
              --v10;
            }

            while (v10);
            break;
          default:
            return result;
        }
      }

      else if (v15 > 67)
      {
        if (v15 == 68)
        {
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v62 = *v6;
            v6 += 4;
            *v8 = v62;
            v8 += 2;
            --v10;
          }

          while (v10);
        }

        else
        {
          if (v15 != 69)
          {
            return result;
          }

          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v34 = *v6;
            v6 += 4;
            *v8 = v34;
            v8 += 4;
            --v10;
          }

          while (v10);
        }
      }

      else if (v15 == 25)
      {
        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v54 = *v6;
          v6 += 4;
          *v8 = v54;
          v8 += 4;
          --v10;
        }

        while (v10);
      }

      else
      {
        if (v15 != 26)
        {
          return result;
        }

        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v22 = *v6;
          v6 += 4;
          *v8 = v22;
          v8 += 8;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      if (v12 != 41)
      {
        return result;
      }

      if (v15 <= 24)
      {
        switch(v15)
        {
          case 16:
            if (v10 < 1)
            {
              return 0;
            }

            do
            {
              result = 0;
              v58 = *v6;
              v6 += 2;
              *v8++ = LODWORD(v58) != 0;
              --v10;
            }

            while (v10);
            break;
          case 23:
            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v79 = *v6;
              v6 += 2;
              *v8++ = LOBYTE(v79);
              --v10;
            }

            while (v10);
            break;
          case 24:
            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v30 = *v6;
              v6 += 2;
              *v8 = LOWORD(v30);
              v8 += 2;
              --v10;
            }

            while (v10);
            break;
          default:
            return result;
        }
      }

      else if (v15 > 67)
      {
        if (v15 == 68)
        {
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v70 = *v6;
            v6 += 2;
            *v8 = v70;
            v8 += 2;
            --v10;
          }

          while (v10);
        }

        else
        {
          if (v15 != 69)
          {
            return result;
          }

          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v44 = *v6;
            v6 += 2;
            *v8 = v44;
            v8 += 4;
            --v10;
          }

          while (v10);
        }
      }

      else if (v15 == 25)
      {
        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v66 = *v6;
          v6 += 2;
          *v8 = v66;
          v8 += 4;
          --v10;
        }

        while (v10);
      }

      else
      {
        if (v15 != 26)
        {
          return result;
        }

        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v18 = *v6;
          v6 += 2;
          *v8 = LODWORD(v18);
          v8 += 8;
          --v10;
        }

        while (v10);
      }
    }
  }

  else if (v12 > 23)
  {
    if (v12 == 24)
    {
      if (v15 <= 24)
      {
        switch(v15)
        {
          case 16:
            if (v10 < 1)
            {
              return 0;
            }

            do
            {
              result = 0;
              v49 = *v6++;
              *v8++ = v49 != 0;
              --v10;
            }

            while (v10);
            break;
          case 23:
            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v76 = *v6++;
              *v8++ = v76;
              --v10;
            }

            while (v10);
            break;
          case 24:
            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v27 = *v6++;
              *v8 = v27;
              v8 += 2;
              --v10;
            }

            while (v10);
            break;
          default:
            return result;
        }
      }

      else if (v15 > 67)
      {
        if (v15 == 68)
        {
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v63 = *v6++;
            *v8 = v63;
            v8 += 2;
            --v10;
          }

          while (v10);
        }

        else
        {
          if (v15 != 69)
          {
            return result;
          }

          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v35 = *v6++;
            *v8 = v35;
            v8 += 4;
            --v10;
          }

          while (v10);
        }
      }

      else if (v15 == 25)
      {
        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v55 = *v6++;
          *v8 = v55;
          v8 += 4;
          --v10;
        }

        while (v10);
      }

      else
      {
        if (v15 != 26)
        {
          return result;
        }

        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v23 = *v6++;
          *v8 = v23;
          v8 += 8;
          --v10;
        }

        while (v10);
      }
    }

    else if (v15 <= 24)
    {
      switch(v15)
      {
        case 16:
          if (v10 < 1)
          {
            return 0;
          }

          do
          {
            result = 0;
            v59 = *v6;
            v6 += 2;
            *v8++ = LODWORD(v59) != 0;
            --v10;
          }

          while (v10);
          break;
        case 23:
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v80 = *v6;
            v6 += 2;
            *v8++ = LOBYTE(v80);
            --v10;
          }

          while (v10);
          break;
        case 24:
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v31 = *v6;
            v6 += 2;
            *v8 = LOWORD(v31);
            v8 += 2;
            --v10;
          }

          while (v10);
          break;
        default:
          return result;
      }
    }

    else if (v15 > 67)
    {
      if (v15 == 68)
      {
        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v71 = *v6;
          v6 += 2;
          *v8 = v71;
          v8 += 2;
          --v10;
        }

        while (v10);
      }

      else
      {
        if (v15 != 69)
        {
          return result;
        }

        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v45 = *v6;
          v6 += 2;
          *v8 = v45;
          v8 += 4;
          --v10;
        }

        while (v10);
      }
    }

    else if (v15 == 25)
    {
      if (v10 < 1)
      {
        return 0;
      }

      result = 0;
      do
      {
        v67 = *v6;
        v6 += 2;
        *v8 = v67;
        v8 += 4;
        --v10;
      }

      while (v10);
    }

    else
    {
      if (v15 != 26)
      {
        return result;
      }

      if (v10 < 1)
      {
        return 0;
      }

      result = 0;
      do
      {
        v19 = *v6;
        v6 += 2;
        *v8 = v19;
        v8 += 8;
        --v10;
      }

      while (v10);
    }
  }

  else if (v12 == 16)
  {
    if (v15 <= 24)
    {
      switch(v15)
      {
        case 16:
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v47 = *v6;
            v6 = (v6 + 1);
            *v8++ = v47;
            --v10;
          }

          while (v10);
          break;
        case 23:
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v74 = *v6;
            v6 = (v6 + 1);
            *v8++ = v74;
            --v10;
          }

          while (v10);
          break;
        case 24:
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v25 = *v6;
            v6 = (v6 + 1);
            *v8 = v25;
            v8 += 2;
            --v10;
          }

          while (v10);
          break;
        default:
          return result;
      }
    }

    else if (v15 > 67)
    {
      if (v15 == 68)
      {
        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v61 = *v6;
          v6 = (v6 + 1);
          *v8 = v61;
          v8 += 2;
          --v10;
        }

        while (v10);
      }

      else
      {
        if (v15 != 69)
        {
          return result;
        }

        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v33 = *v6;
          v6 = (v6 + 1);
          *v8 = v33;
          v8 += 4;
          --v10;
        }

        while (v10);
      }
    }

    else if (v15 == 25)
    {
      if (v10 < 1)
      {
        return 0;
      }

      result = 0;
      do
      {
        v53 = *v6;
        v6 = (v6 + 1);
        *v8 = v53;
        v8 += 4;
        --v10;
      }

      while (v10);
    }

    else
    {
      if (v15 != 26)
      {
        return result;
      }

      if (v10 < 1)
      {
        return 0;
      }

      result = 0;
      do
      {
        v21 = *v6;
        v6 = (v6 + 1);
        *v8 = v21;
        v8 += 8;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    if (v12 != 23)
    {
      return result;
    }

    if (v15 <= 24)
    {
      switch(v15)
      {
        case 16:
          if (v10 < 1)
          {
            return 0;
          }

          do
          {
            result = 0;
            v57 = *v6;
            v6 = (v6 + 1);
            *v8++ = v57 != 0;
            --v10;
          }

          while (v10);
          break;
        case 23:
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v78 = *v6;
            v6 = (v6 + 1);
            *v8++ = v78;
            --v10;
          }

          while (v10);
          break;
        case 24:
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v29 = *v6;
            v6 = (v6 + 1);
            *v8 = v29;
            v8 += 2;
            --v10;
          }

          while (v10);
          break;
        default:
          return result;
      }
    }

    else if (v15 > 67)
    {
      if (v15 == 68)
      {
        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v69 = *v6;
          v6 = (v6 + 1);
          *v8 = v69;
          v8 += 2;
          --v10;
        }

        while (v10);
      }

      else
      {
        if (v15 != 69)
        {
          return result;
        }

        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v43 = *v6;
          v6 = (v6 + 1);
          *v8 = v43;
          v8 += 4;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      if (v15 != 25)
      {
        if (v15 != 26)
        {
          return result;
        }

        if (v10 >= 1)
        {
          result = 0;
          do
          {
            v17 = *v6;
            v6 = (v6 + 1);
            *v8 = v17;
            v8 += 8;
            --v10;
          }

          while (v10);
          return result;
        }

        return 0;
      }

      if (v10 < 1)
      {
        return 0;
      }

      result = 0;
      do
      {
        v65 = *v6;
        v6 = (v6 + 1);
        *v8 = v65;
        v8 += 4;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

void ODIE::Kernels::Core::CPU::registerCastKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.cast";
  v4 = 23;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceCast;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceCast;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceComplexPart(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v6 = **a2;
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v15);
  }

  v7 = *(v6 + 24);
  if (*(v7 + 8) == 1)
  {
    v8 = *(v7 + 24);
    if ((v8 - 96) >= 3)
    {
      v13 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Complex.cpp", "typeInferenceComplexPart", "Expect input scalar tag to be complex. Found %d", *(v7 + 24));
    }

    else
    {
      v9 = *(v6 + 40);
      v10 = *(v6 + 32);
      v18 = *(a1 + 4);
      v11 = a1[1];
      v16 = *a1;
      v17 = v11;
      ODIE::Common::ScalarType::create(&v16, (v8 - 28), *(v7 + 16) / 2, &v19);
      if (v20 & 1) != 0 && (v12 = a1[1], v16 = *a1, v17 = v12, v18 = *(a1 + 4), ODIE::Common::NDArrayType::create(&v16, v19, v10, v9, v10, &ODIE::Common::Constants::kDefaultDimOrdering, v10, &v19), (v20))
      {
        v13 = 0;
        *a4 = v19;
      }

      else
      {
        return v19;
      }
    }
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  return v13;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceCreateComplex(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v6 = **a2;
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v15);
  }

  v7 = *(v6 + 24);
  if (*(v7 + 8) == 1)
  {
    v8 = *(v7 + 24);
    if ((v8 - 68) >= 3)
    {
      v13 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Complex.cpp", "typeInferenceCreateComplex", "Expect real scalar tag to be floating point. Found %d", *(v7 + 24));
    }

    else
    {
      v9 = *(v6 + 40);
      v10 = *(v6 + 32);
      v18 = *(a1 + 4);
      v11 = a1[1];
      v16 = *a1;
      v17 = v11;
      ODIE::Common::ScalarType::create(&v16, (v8 + 28), 2 * *(v7 + 16), &v19);
      if (v20 & 1) != 0 && (v12 = a1[1], v16 = *a1, v17 = v12, v18 = *(a1 + 4), ODIE::Common::NDArrayType::create(&v16, v19, v10, v9, v10, &ODIE::Common::Constants::kDefaultDimOrdering, v10, &v19), (v20))
      {
        v13 = 0;
        *a4 = v19;
      }

      else
      {
        return v19;
      }
    }
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  return v13;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceRealPart(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, const ODIE::Common::Value **a4, uint64_t a5)
{
  if (a3 != 1 || (v5 = *a2, v6 = **a2, *(v6 + 8) != 2))
  {
    v12 = "real_part expects a packed NDArrayType input.";
LABEL_15:
    v13 = "validateOperandsAreNdArrayType";
    v14 = "%s";
    v15 = v12;
LABEL_16:
    v10 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", v13, v14, v15);
    return v10;
  }

  if (a5 != 1 || (v7 = *a4, v8 = **a4, *(v8 + 8) != 2))
  {
    v12 = "real_part expects a packed NDArrayType output.";
    goto LABEL_15;
  }

  if (*(v6 + 2) && !v5[1] || *(v8 + 16) && !*(v7 + 1))
  {
    v13 = "validateOperandsHaveData";
    v14 = "Operand %lld does not have data bound.";
    v15 = 0;
    goto LABEL_16;
  }

  if (v9)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::copyPartFromComplex(ODIE::Common::NDArrayType **this, const ODIE::Common::Value *a2, ODIE::Common::Value *a3)
{
  v3 = a3;
  v6 = *this;
  if (*(*this + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v13);
  }

  ODIE::Common::NDArrayType::getNumElements(*this, &v14);
  v7 = v14;
  if (v15 == 1)
  {
    if (v14 < 1)
    {
      return 0;
    }

    else
    {
      v8 = *(*(v6 + 3) + 16);
      v9 = *(a2 + 1);
      if (v3)
      {
        v10 = 0;
      }

      else
      {
        v10 = v8 / 2;
      }

      v11 = this[1] + v10;
      do
      {
        memcpy(v9, v11, v8 / 2);
        v11 += v8;
        v9 += v8 / 2;
        v7 = (v7 - 1);
      }

      while (v7);
    }
  }

  return v7;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceImaginaryPart(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, const ODIE::Common::Value **a4, uint64_t a5)
{
  if (a3 != 1 || (v5 = *a2, v6 = **a2, *(v6 + 8) != 2))
  {
    v12 = "imaginary_part expects a packed NDArrayType input.";
LABEL_15:
    v13 = "validateOperandsAreNdArrayType";
    v14 = "%s";
    v15 = v12;
LABEL_16:
    v10 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", v13, v14, v15);
    return v10;
  }

  if (a5 != 1 || (v7 = *a4, v8 = **a4, *(v8 + 8) != 2))
  {
    v12 = "imaginary_part expects a packed NDArrayType output.";
    goto LABEL_15;
  }

  if (*(v6 + 2) && !v5[1] || *(v8 + 16) && !*(v7 + 1))
  {
    v13 = "validateOperandsHaveData";
    v14 = "Operand %lld does not have data bound.";
    v15 = 0;
    goto LABEL_16;
  }

  if (v9)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceCreateComplex(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a3 != 2 || *(**a2 + 8) != 2 || *(*a2[1] + 8) != 2)
  {
    v25 = "create_complex expects two packed NDArrayType inputs.";
LABEL_24:
    v26 = "validateOperandsAreNdArrayType";
    v27 = "%s";
    v29 = v25;
LABEL_25:
    v19 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", v26, v27, v29);
    return v19;
  }

  if (a5 != 1 || (v7 = *a4, v8 = **a4, *(v8 + 8) != 2))
  {
    v25 = "create_complex expects a packed NDArrayType output.";
    goto LABEL_24;
  }

  v9 = 0;
  v10 = 0;
  v11 = 1;
  v12 = 1;
  while (1)
  {
    v13 = v9;
    v14 = a2[v10];
    if (*(*v14 + 16))
    {
      if (!v14[1])
      {
        break;
      }
    }

    v9 = 1;
    v11 = v12;
    v10 = 1;
    v12 = 0;
    if (v13)
    {
      goto LABEL_10;
    }
  }

  v19 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v10);
  if (v11)
  {
    return v19;
  }

  v7 = *a4;
  v8 = **a4;
LABEL_10:
  if (*(v8 + 16) && !v7[1])
  {
    v26 = "validateOperandsHaveData";
    v27 = "Operand %lld does not have data bound.";
    v29 = 0;
    goto LABEL_25;
  }

  v15 = *a2;
  v16 = a2[1];
  v17 = **a2;
  if (*(v17 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v28);
  }

  v18 = *(*(v17 + 24) + 16);
  ODIE::Common::NDArrayType::getNumElements(v17, &v30);
  v19 = v30;
  if (v31 == 1)
  {
    if (v30 < 1)
    {
      return 0;
    }

    else
    {
      v20 = (*a4)[1];
      v21 = v16[1];
      v22 = v15[1];
      do
      {
        memcpy(v20, v22, v18);
        v23 = &v20[v18];
        v22 += v18;
        memcpy(v23, v21, v18);
        v20 = &v23[v18];
        v21 += v18;
        v19 = (v19 - 1);
      }

      while (v19);
    }
  }

  return v19;
}

void ODIE::Kernels::Core::CPU::registerComplexKernels(_OWORD **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v15[40] = 0;
  v16 = "coreml.real_part";
  v17 = 33;
  v18 = ODIE::Kernels::Core::CPU::typeInferenceComplexPart;
  v19 = ODIE::Kernels::Core::CPU::valueInferenceRealPart;
  v20 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v15, 1);
  v9[40] = 0;
  v10 = "coreml.imaginary_part";
  v11 = 43;
  v12 = ODIE::Kernels::Core::CPU::typeInferenceComplexPart;
  v13 = ODIE::Kernels::Core::CPU::valueInferenceImaginaryPart;
  v14 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v9, 1);
  v3[40] = 0;
  v4 = "coreml.create_complex";
  v5 = 43;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceCreateComplex;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceCreateComplex;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v3, 1);
  ODIE::Common::String::~String(v3);
  ODIE::Common::String::~String(v9);
  ODIE::Common::String::~String(v15);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceConcat(__int128 *a1, void **a2, uint64_t a3, void *a4)
{
  v4 = *a2;
  if (!(*a2)[1])
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Concat.cpp", "typeInferenceConcat", "Cannot do type inference for coreml.slice without dim data.");
    return 2;
  }

  v9 = *a2[1];
  if (*(v9 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v30);
  }

  v10 = *(v9 + 32);
  if (*(*v4 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  v11 = *(*v4 + 3);
  if (*(v11 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  if (*(v11 + 24) != 25)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
    return 2;
  }

  v12 = *v4[1];
  if (v10 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10;
  }

  v14 = *(v9 + 40);
  v15 = a1[1];
  v34 = *a1;
  v35 = v15;
  v36 = *(a1 + 4);
  v16 = odie_alloc_aligned(&v34, 4 * v13, 4, 0);
  if (v10)
  {
    if (v10 >= 1)
    {
      v17 = v16;
      v18 = v10;
      do
      {
        v19 = *v14++;
        *v17++ = v19;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    *v16 = 1;
  }

  if (a3 >= 3)
  {
    v20 = (v10 & (v12 >> 31)) + v12;
    v21 = 2;
    do
    {
      v22 = *a2[v21];
      if (*(v22 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v27);
      }

      v23 = *(v22 + 32);
      if (v23)
      {
        if (v23 >= 1)
        {
          v24 = 0;
          v25 = *(v22 + 40);
          do
          {
            if (v20 == v24)
            {
              v26 = *(v25 + 4 * v20);
              if (v26 != -1)
              {
                v26 += v16[v20];
              }

              v16[v20] = v26;
            }

            else if (v16[v24] != *(v25 + 4 * v24))
            {
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Concat.cpp", "typeInferenceConcat", "coreml.concat requires all tensor inputs to match shape along all dimensions other than concat dimension. Mismatch at dim %d");
              return 2;
            }

            ++v24;
          }

          while (v23 != v24);
        }
      }

      else
      {
        ++*v16;
      }

      ++v21;
    }

    while (v21 != a3);
  }

  v36 = *(a1 + 4);
  v28 = a1[1];
  v34 = *a1;
  v35 = v28;
  ODIE::Common::NDArrayType::create(&v34, *(v9 + 24), v13, v16, v13, &ODIE::Common::Constants::kDefaultDimOrdering, v13, &v32);
  if ((v33 & 1) == 0)
  {
    return v32;
  }

  result = 0;
  *a4 = v32;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceConcat(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v4 = a3;
  v6 = **a4;
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v146);
  }

  v7 = *(v6 + 24);
  if (*(v7 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v147);
  }

  v8 = *(v7 + 24);
  if (v8 <= 25)
  {
    if (v8 == 16)
    {
      v90 = *a4;
      if (a3 >= 1)
      {
        if (*(**a2 + 8) != 2)
        {
          goto LABEL_190;
        }

        v91 = 0;
        do
        {
          if (a3 - 1 == v91)
          {
            goto LABEL_111;
          }

          v92 = *(*a2[++v91] + 8);
        }

        while (v92 == 2);
        v12 = 1;
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "No error message.");
        if (v91 < v4)
        {
          return v12;
        }

LABEL_111:
        v93 = 0;
        v94 = 1;
        while (1)
        {
          v95 = a2[v93];
          if (*(*v95 + 16))
          {
            if (!v95[1])
            {
              break;
            }
          }

          v94 = ++v93 < v4;
          if (v4 == v93)
          {
            goto LABEL_115;
          }
        }

        v12 = 1;
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v93);
        if (v94)
        {
          return v12;
        }
      }

LABEL_115:
      v98 = v90;
      v97 = *v90;
      v96 = v98[1];
      if (*(v97 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v154);
      }

      v100 = **a2;
      if (*(v100 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v155);
      }

      v101 = *(v100 + 24);
      if (*(v101 + 8) == 1)
      {
        if (*(v101 + 24) == 25)
        {
          v99 = *(v97 + 32);
          v102 = (v99 & (*(*a2)[1] >> 31)) + *(*a2)[1];
          v103 = *(v97 + 40);
          if (v102 < 0)
          {
            v104 = -1;
          }

          else
          {
            v104 = (v99 & (*(*a2)[1] >> 31)) + *(*a2)[1];
          }

          v105 = (v104 + 1);
          v106 = 1;
          if (v99 > v105)
          {
            do
            {
              v106 *= v103[v105++];
            }

            while (v105 < v99);
          }

          if (v102 < 1)
          {
            v108 = 1;
          }

          else
          {
            v107 = v102;
            v108 = 1;
            do
            {
              v109 = *v103++;
              v108 *= v109;
              --v107;
            }

            while (v107);
            if (v108 < 1)
            {
              return 0;
            }
          }

          v124 = 0;
          v165 = a2 + 1;
          v170 = v4 - 1;
          do
          {
            if (v4 >= 2)
            {
              v125 = v165;
              v126 = v170;
              do
              {
                v127 = **v125;
                if (*(v127 + 8) != 2)
                {
                  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                  ODIE::Platform::abort(v130);
                }

                v128 = v106;
                if (*(v127 + 32))
                {
                  v128 = v106 * *(*(v127 + 40) + 4 * v102);
                }

                v129 = *v125++;
                memcpy(v96, (v129[1] + v128 * v124), v128);
                v96 += v128;
                --v126;
              }

              while (v126);
              v4 = a3;
            }

            ++v124;
          }

          while (v124 != v108);
          return 0;
        }

        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
      }

      else
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      }

      ODIE::Platform::abort(v156);
    }

    if (v8 == 25)
    {
      v30 = *a4;
      if (a3 >= 1)
      {
        if (*(**a2 + 8) != 2)
        {
          goto LABEL_190;
        }

        v31 = 0;
        do
        {
          if (a3 - 1 == v31)
          {
            goto LABEL_39;
          }

          v32 = *(*a2[++v31] + 8);
        }

        while (v32 == 2);
        v12 = 1;
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "No error message.");
        if (v31 < v4)
        {
          return v12;
        }

LABEL_39:
        v33 = 0;
        v34 = 1;
        while (1)
        {
          v35 = a2[v33];
          if (*(*v35 + 16))
          {
            if (!v35[1])
            {
              break;
            }
          }

          v34 = ++v33 < v4;
          if (v4 == v33)
          {
            goto LABEL_43;
          }
        }

        v12 = 1;
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v33);
        if (v34)
        {
          return v12;
        }
      }

LABEL_43:
      v38 = v30;
      v37 = *v30;
      v36 = v38[1];
      if (*(v37 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v160);
      }

      v40 = **a2;
      if (*(v40 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v161);
      }

      v41 = *(v40 + 24);
      if (*(v41 + 8) == 1)
      {
        if (*(v41 + 24) == 25)
        {
          v39 = *(v37 + 32);
          v42 = (v39 & (*(*a2)[1] >> 31)) + *(*a2)[1];
          v43 = *(v37 + 40);
          if (v42 < 0)
          {
            v44 = -1;
          }

          else
          {
            v44 = (v39 & (*(*a2)[1] >> 31)) + *(*a2)[1];
          }

          v45 = (v44 + 1);
          v46 = 1;
          if (v39 > v45)
          {
            do
            {
              v46 *= v43[v45++];
            }

            while (v45 < v39);
          }

          if (v42 < 1)
          {
            v48 = 1;
          }

          else
          {
            v47 = v42;
            v48 = 1;
            do
            {
              v49 = *v43++;
              v48 *= v49;
              --v47;
            }

            while (v47);
            if (v48 < 1)
            {
              return 0;
            }
          }

          v138 = 0;
          v167 = a2 + 1;
          v172 = v4 - 1;
          do
          {
            if (v4 >= 2)
            {
              v139 = v167;
              v140 = v172;
              do
              {
                v141 = **v139;
                if (*(v141 + 8) != 2)
                {
                  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                  ODIE::Platform::abort(v144);
                }

                v142 = v46;
                if (*(v141 + 32))
                {
                  v142 = v46 * *(*(v141 + 40) + 4 * v42);
                }

                v143 = *v139++;
                memcpy(v36, (v143[1] + 4 * v142 * v138), 4 * v142);
                v36 += 4 * v142;
                --v140;
              }

              while (v140);
              v4 = a3;
            }

            ++v138;
          }

          while (v138 != v48);
          return 0;
        }

        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
      }

      else
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      }

      ODIE::Platform::abort(v162);
    }

LABEL_203:
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Concat.cpp", "valueInferenceConcat", "Unsupported type for Concat kernel %u", v8);
    return 3;
  }

  if (v8 == 26)
  {
    v50 = *a4;
    if (a3 >= 1)
    {
      if (*(**a2 + 8) != 2)
      {
        goto LABEL_190;
      }

      v51 = 0;
      do
      {
        if (a3 - 1 == v51)
        {
          goto LABEL_63;
        }

        v52 = *(*a2[++v51] + 8);
      }

      while (v52 == 2);
      v12 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "No error message.");
      if (v51 < v4)
      {
        return v12;
      }

LABEL_63:
      v53 = 0;
      v54 = 1;
      while (1)
      {
        v55 = a2[v53];
        if (*(*v55 + 16))
        {
          if (!v55[1])
          {
            break;
          }
        }

        v54 = ++v53 < v4;
        if (v4 == v53)
        {
          goto LABEL_67;
        }
      }

      v12 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v53);
      if (v54)
      {
        return v12;
      }
    }

LABEL_67:
    v58 = v50;
    v57 = *v50;
    v56 = v58[1];
    if (*(v57 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v148);
    }

    v60 = **a2;
    if (*(v60 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v149);
    }

    v61 = *(v60 + 24);
    if (*(v61 + 8) == 1)
    {
      if (*(v61 + 24) == 25)
      {
        v59 = *(v57 + 32);
        v62 = (v59 & (*(*a2)[1] >> 31)) + *(*a2)[1];
        v63 = *(v57 + 40);
        if (v62 < 0)
        {
          v64 = -1;
        }

        else
        {
          v64 = (v59 & (*(*a2)[1] >> 31)) + *(*a2)[1];
        }

        v65 = (v64 + 1);
        v66 = 1;
        if (v59 > v65)
        {
          do
          {
            v66 *= v63[v65++];
          }

          while (v65 < v59);
        }

        if (v62 < 1)
        {
          v68 = 1;
        }

        else
        {
          v67 = v62;
          v68 = 1;
          do
          {
            v69 = *v63++;
            v68 *= v69;
            --v67;
          }

          while (v67);
          if (v68 < 1)
          {
            return 0;
          }
        }

        v110 = 0;
        v163 = a2 + 1;
        v168 = v4 - 1;
        do
        {
          if (v4 >= 2)
          {
            v111 = v163;
            v112 = v168;
            do
            {
              v113 = **v111;
              if (*(v113 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v116);
              }

              v114 = v66;
              if (*(v113 + 32))
              {
                v114 = v66 * *(*(v113 + 40) + 4 * v62);
              }

              v115 = *v111++;
              memcpy(v56, (v115[1] + 8 * v114 * v110), 8 * v114);
              v56 += 8 * v114;
              --v112;
            }

            while (v112);
            v4 = a3;
          }

          ++v110;
        }

        while (v110 != v68);
        return 0;
      }

      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    }

    ODIE::Platform::abort(v150);
  }

  if (v8 == 68)
  {
    v70 = *a4;
    if (a3 >= 1)
    {
      if (*(**a2 + 8) != 2)
      {
        goto LABEL_190;
      }

      v71 = 0;
      do
      {
        if (a3 - 1 == v71)
        {
          goto LABEL_87;
        }

        v72 = *(*a2[++v71] + 8);
      }

      while (v72 == 2);
      v12 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "No error message.");
      if (v71 < v4)
      {
        return v12;
      }

LABEL_87:
      v73 = 0;
      v74 = 1;
      while (1)
      {
        v75 = a2[v73];
        if (*(*v75 + 16))
        {
          if (!v75[1])
          {
            break;
          }
        }

        v74 = ++v73 < v4;
        if (v4 == v73)
        {
          goto LABEL_91;
        }
      }

      v12 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v73);
      if (v74)
      {
        return v12;
      }
    }

LABEL_91:
    v78 = v70;
    v77 = *v70;
    v76 = v78[1];
    if (*(v77 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v151);
    }

    v80 = **a2;
    if (*(v80 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v152);
    }

    v81 = *(v80 + 24);
    if (*(v81 + 8) == 1)
    {
      if (*(v81 + 24) == 25)
      {
        v79 = *(v77 + 32);
        v82 = (v79 & (*(*a2)[1] >> 31)) + *(*a2)[1];
        v83 = *(v77 + 40);
        if (v82 < 0)
        {
          v84 = -1;
        }

        else
        {
          v84 = (v79 & (*(*a2)[1] >> 31)) + *(*a2)[1];
        }

        v85 = (v84 + 1);
        v86 = 1;
        if (v79 > v85)
        {
          do
          {
            v86 *= v83[v85++];
          }

          while (v85 < v79);
        }

        if (v82 < 1)
        {
          v88 = 1;
        }

        else
        {
          v87 = v82;
          v88 = 1;
          do
          {
            v89 = *v83++;
            v88 *= v89;
            --v87;
          }

          while (v87);
          if (v88 < 1)
          {
            return 0;
          }
        }

        v117 = 0;
        v164 = a2 + 1;
        v169 = v4 - 1;
        do
        {
          if (v4 >= 2)
          {
            v118 = v164;
            v119 = v169;
            do
            {
              v120 = **v118;
              if (*(v120 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v123);
              }

              v121 = v86;
              if (*(v120 + 32))
              {
                v121 = v86 * *(*(v120 + 40) + 4 * v82);
              }

              v122 = *v118++;
              memcpy(v76, (v122[1] + 2 * v121 * v117), 2 * v121);
              v76 += 2 * v121;
              --v119;
            }

            while (v119);
            v4 = a3;
          }

          ++v117;
        }

        while (v117 != v88);
        return 0;
      }

      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    }

    ODIE::Platform::abort(v153);
  }

  if (v8 != 69)
  {
    goto LABEL_203;
  }

  v9 = *a4;
  if (a3 < 1)
  {
    goto LABEL_17;
  }

  if (*(**a2 + 8) != 2)
  {
LABEL_190:
    v12 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "No error message.");
    return v12;
  }

  v10 = 0;
  do
  {
    if (a3 - 1 == v10)
    {
      goto LABEL_13;
    }

    v11 = *(*a2[++v10] + 8);
  }

  while (v11 == 2);
  v12 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "No error message.");
  if (v10 >= v4)
  {
LABEL_13:
    v13 = 0;
    v14 = 1;
    while (1)
    {
      v15 = a2[v13];
      if (*(*v15 + 16))
      {
        if (!v15[1])
        {
          break;
        }
      }

      v14 = ++v13 < v4;
      if (v4 == v13)
      {
        goto LABEL_17;
      }
    }

    v12 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v13);
    if (v14)
    {
      return v12;
    }

LABEL_17:
    v18 = v9;
    v17 = *v9;
    v16 = v18[1];
    if (*(v17 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v157);
    }

    v20 = **a2;
    if (*(v20 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v158);
    }

    v21 = *(v20 + 24);
    if (*(v21 + 8) == 1)
    {
      if (*(v21 + 24) == 25)
      {
        v19 = *(v17 + 32);
        v22 = (v19 & (*(*a2)[1] >> 31)) + *(*a2)[1];
        v23 = *(v17 + 40);
        if (v22 < 0)
        {
          v24 = -1;
        }

        else
        {
          v24 = (v19 & (*(*a2)[1] >> 31)) + *(*a2)[1];
        }

        v25 = (v24 + 1);
        v26 = 1;
        if (v19 > v25)
        {
          do
          {
            v26 *= v23[v25++];
          }

          while (v25 < v19);
        }

        if (v22 < 1)
        {
          v28 = 1;
        }

        else
        {
          v27 = v22;
          v28 = 1;
          do
          {
            v29 = *v23++;
            v28 *= v29;
            --v27;
          }

          while (v27);
          if (v28 < 1)
          {
            return 0;
          }
        }

        v131 = 0;
        v166 = a2 + 1;
        v171 = v4 - 1;
        do
        {
          if (v4 >= 2)
          {
            v132 = v166;
            v133 = v171;
            do
            {
              v134 = **v132;
              if (*(v134 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v137);
              }

              v135 = v26;
              if (*(v134 + 32))
              {
                v135 = v26 * *(*(v134 + 40) + 4 * v22);
              }

              v136 = *v132++;
              memcpy(v16, (v136[1] + 4 * v135 * v131), 4 * v135);
              v16 += 4 * v135;
              --v133;
            }

            while (v133);
            v4 = a3;
          }

          ++v131;
        }

        while (v131 != v28);
        return 0;
      }

      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    }

    ODIE::Platform::abort(v159);
  }

  return v12;
}

void ODIE::Kernels::Core::CPU::registerConcatKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.concat";
  v4 = 27;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceConcat;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceConcat;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceConv2d(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v4 = a2[2][1];
  if (!v4)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Conv.cpp", "typeInferenceConv2d", "coreml.conv2d: Cannot do type inference without stride data.");
    return 2;
  }

  v5 = a2[3][1];
  if (!v5)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Conv.cpp", "typeInferenceConv2d", "coreml.conv2d: Cannot do type inference without padding data.");
    return 2;
  }

  v6 = a2[4][1];
  if (!v6)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Conv.cpp", "typeInferenceConv2d", "coreml.conv2d: Cannot do type inference without dilation data.");
    return 2;
  }

  v8 = a2[1];
  v9 = **a2;
  if (*(v9 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v27);
  }

  v10 = *(v9 + 40);
  v11 = *v10;
  v13 = v10[2];
  v12 = v10[3];
  v14 = *v5;
  v31 = v5[1];
  v15 = *v6;
  v30 = v6[1];
  v29 = *v4;
  v32 = v4[1];
  if (*(*v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v28);
  }

  v16 = *(*v8 + 40);
  v17 = *v16;
  v19 = v16[2];
  v18 = v16[3];
  v20 = 4 * *(v9 + 32);
  v21 = a1[1];
  v36 = *a1;
  v37 = v21;
  v38 = *(a1 + 4);
  v22 = odie_alloc_aligned(&v36, v20, 4, 0);
  *v22 = v11;
  v22[1] = v17;
  if (v13 == -1)
  {
    v23 = -1;
  }

  else
  {
    v23 = (v13 + 2 * v14 + ~((v19 - 1) * v15)) / v29 + 1;
  }

  v22[2] = v23;
  if (v12 == -1)
  {
    v24 = -1;
  }

  else
  {
    v24 = (v12 + 2 * v31 + ~((v18 - 1) * v30)) / v32 + 1;
  }

  v22[3] = v24;
  v38 = *(a1 + 4);
  v25 = a1[1];
  v36 = *a1;
  v37 = v25;
  ODIE::Common::NDArrayType::create(&v36, *(v9 + 24), *(v9 + 32), v22, *(v9 + 32), *(v9 + 48), *(v9 + 32), &v34);
  if ((v35 & 1) == 0)
  {
    return v34;
  }

  result = 0;
  *a4 = v34;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceConv2d(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v346 = *MEMORY[0x277D85DE8];
  if (a3 < 1)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = a2[v9];
    if (*(*v11 + 16))
    {
      if (!v11[1])
      {
        break;
      }
    }

    v10 = ++v9 < a3;
    if (a3 == v9)
    {
      goto LABEL_6;
    }
  }

  v18 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v9);
  if (!v10)
  {
LABEL_6:
    if (a5 >= 1)
    {
      v12 = 0;
      v13 = 1;
      while (1)
      {
        v14 = *(a4 + 8 * v12);
        if (*(*v14 + 16))
        {
          if (!v14[1])
          {
            break;
          }
        }

        v13 = ++v12 < a5;
        if (a5 == v12)
        {
          goto LABEL_11;
        }
      }

      v18 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v12);
      if (v13)
      {
        goto LABEL_209;
      }
    }

LABEL_11:
    if (a3 == 6 && *(**a2 + 8) == 2)
    {
      v15 = 1;
      while (v15 != 6)
      {
        v16 = *(*a2[v15++] + 8);
        if (v16 != 2)
        {
          v17 = v15 - 2;
          v18 = 1;
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "conv2d expects 6 packed NDArrayType inputs.");
          if (v17 < 5)
          {
            goto LABEL_209;
          }

          break;
        }
      }

      if (a5 == 1 && *(**a4 + 8) == 2)
      {
        v19 = a2[1];
        v20 = **a2;
        if (*(v20 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v256);
        }

        v21 = *(v20 + 24);
        if (*(v21 + 8) != 1)
        {
          goto LABEL_217;
        }

        v22 = *(v21 + 24);
        if (*(*v19 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v257);
        }

        v23 = *(*v19 + 24);
        if (*(v23 + 8) != 1)
        {
          goto LABEL_217;
        }

        v24 = *(v23 + 24);
        if (v22 != 68)
        {
          if (v22 != 69)
          {
            goto LABEL_207;
          }

          if (v24 != 68)
          {
            if (v24 == 69)
            {
              v25 = *a2;
              v26 = a2[1];
              v27 = a2[2];
              v28 = a2[3];
              v29 = a2[4];
              v30 = a2[5];
              v31 = *a4;
              v32 = **a2;
              if (*(v32 + 8) != 2)
              {
                v258 = a2[5];
                v259 = a2[4];
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v260);
              }

              v33 = *(v32 + 40);
              v34 = *v26;
              if (*(*v26 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v261);
              }

              v35 = *(v34 + 40);
              if (*(*v31 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v262);
              }

              v311 = *v31;
              v36 = *(*v31 + 40);
              v37 = v25[1];
              v38 = v26[1];
              v331 = v31[1];
              v39 = v27[1];
              v40 = v28[1];
              v41 = v29[1];
              if (*(*v30 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v263);
              }

              v42 = *(*v30 + 24);
              if (*(v42 + 8) == 1)
              {
                if (*(v42 + 24) == 25)
                {
                  v287 = *v30[1];
                  v43 = v33[2];
                  v44 = v33[3];
                  v45 = *v33;
                  v46 = v33[1];
                  v47 = *v35;
                  v48 = *(v36 + 12);
                  v315 = *(v36 + 8);
                  v49 = v35[2];
                  v50 = v35[3];
                  v307 = *v39;
                  v327 = v39[1];
                  v51 = *v40;
                  v52 = v40[1];
                  v53 = *v41;
                  v54 = v41[1];
                  v345 = 0;
                  if (v45 >= 1)
                  {
                    v55 = 0;
                    v56 = v46 / v287;
                    v303 = -v51;
                    v323 = -v52;
                    v291 = v47 / v287;
                    do
                    {
                      v343 = v55;
                      v283 = v55;
                      v339 = v55;
                      if (v287 >= 1)
                      {
                        for (i = 0; i != v287; ++i)
                        {
                          if (v291 >= 1)
                          {
                            v57 = i * v291;
                            do
                            {
                              v335 = v57;
                              v299 = v57;
                              v340 = v57;
                              if (v315 >= 1)
                              {
                                v58 = 0;
                                do
                                {
                                  v319 = v58;
                                  v341 = v58;
                                  if (v48 >= 1)
                                  {
                                    v59 = 0;
                                    v60 = v303 + v58 * v307;
                                    v61 = *(v311 + 40);
                                    do
                                    {
                                      v342 = v59;
                                      if (v56 < 1)
                                      {
                                        v75 = 0.0;
                                      }

                                      else
                                      {
                                        v63 = 0.0;
                                        v64 = i * v56;
                                        do
                                        {
                                          v344 = v64;
                                          v336 = v64 - i * v56;
                                          if (v49 >= 1)
                                          {
                                            for (j = 0; j != v49; ++j)
                                            {
                                              v337 = j;
                                              v66 = v60 + j * v53;
                                              if ((v66 & 0x80000000) == 0 && v66 < v43)
                                              {
                                                LODWORD(v345) = v60 + j * v53;
                                                if (v50 >= 1)
                                                {
                                                  for (k = 0; k != v50; ++k)
                                                  {
                                                    v338 = k;
                                                    v62 = v323 + v59 * v327;
                                                    v68 = v62 + k * v54;
                                                    if ((v68 & 0x80000000) == 0 && v68 < v44)
                                                    {
                                                      v69 = 0;
                                                      HIDWORD(v345) = v62 + k * v54;
                                                      v70 = 1;
                                                      for (m = 12; m != -4; m -= 4)
                                                      {
                                                        v69 += *(&v343 + m) * v70;
                                                        v70 *= *(*(v32 + 40) + m);
                                                      }

                                                      v72 = 0;
                                                      v73 = 1;
                                                      for (n = 12; n != -4; n -= 4)
                                                      {
                                                        v72 += *(&v335 + n) * v73;
                                                        v73 *= *(*(v34 + 40) + n);
                                                      }

                                                      v63 = v63 + *(v37 + 4 * v69) * *(v38 + 4 * v72);
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }

                                          ++v64;
                                        }

                                        while (v64 < i * v56 + v56);
                                        v75 = v63;
                                      }

                                      v76 = 0;
                                      v77 = 1;
                                      for (ii = 12; ii != -4; ii -= 4)
                                      {
                                        v76 += *(&v339 + ii) * v77;
                                        v77 *= *(v61 + ii);
                                      }

                                      *(v331 + 4 * v76) = v75;
                                      ++v59;
                                    }

                                    while (v59 != v48);
                                  }

                                  v58 = v319 + 1;
                                }

                                while (v319 + 1 != v315);
                              }

                              v57 = v299 + 1;
                            }

                            while (v299 + 1 < i * v291 + v291);
                          }
                        }
                      }

                      v55 = v283 + 1;
                    }

                    while (v283 + 1 != v45);
                  }

LABEL_206:
                  v18 = 0;
                  goto LABEL_209;
                }

                goto LABEL_220;
              }

              goto LABEL_217;
            }

LABEL_207:
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Conv.cpp", "valueInferenceConv2d", "Unsupported input scalar tag %u weight scalar tag %u.");
LABEL_208:
            v18 = 2;
            goto LABEL_209;
          }

          v139 = *a2;
          v140 = a2[1];
          v141 = a2[2];
          v142 = a2[3];
          v143 = a2[4];
          v144 = a2[5];
          v145 = *a4;
          v146 = **a2;
          if (*(v146 + 8) != 2)
          {
            v270 = a2[5];
            v271 = a2[4];
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v272);
          }

          v147 = *(v146 + 40);
          v148 = *v140;
          if (*(*v140 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v273);
          }

          v149 = *(v148 + 40);
          if (*(*v145 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v274);
          }

          v313 = *v145;
          v150 = *(*v145 + 40);
          v151 = v139[1];
          v152 = v140[1];
          v333 = v145[1];
          v153 = v141[1];
          v154 = v142[1];
          v155 = v143[1];
          if (*(*v144 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v275);
          }

          v156 = *(*v144 + 24);
          if (*(v156 + 8) == 1)
          {
            if (*(v156 + 24) == 25)
            {
              v289 = *v144[1];
              v157 = v147[2];
              v158 = v147[3];
              v159 = *v147;
              v160 = v147[1];
              v161 = *v149;
              v162 = *(v150 + 12);
              v317 = *(v150 + 8);
              v163 = v149[2];
              v164 = v149[3];
              v309 = *v153;
              v329 = v153[1];
              v165 = *v154;
              v166 = v154[1];
              v167 = *v155;
              v168 = v155[1];
              v345 = 0;
              if (v159 >= 1)
              {
                v169 = 0;
                v170 = v160 / v289;
                v305 = -v165;
                v325 = -v166;
                v293 = v161 / v289;
                do
                {
                  v343 = v169;
                  v285 = v169;
                  v339 = v169;
                  if (v289 >= 1)
                  {
                    for (jj = 0; jj != v289; ++jj)
                    {
                      if (v293 >= 1)
                      {
                        v171 = jj * v293;
                        do
                        {
                          v335 = v171;
                          v301 = v171;
                          v340 = v171;
                          if (v317 >= 1)
                          {
                            v172 = 0;
                            do
                            {
                              v321 = v172;
                              v341 = v172;
                              if (v162 >= 1)
                              {
                                v173 = 0;
                                v174 = v305 + v172 * v309;
                                v175 = *(v313 + 40);
                                do
                                {
                                  v342 = v173;
                                  if (v170 < 1)
                                  {
                                    v191 = 0.0;
                                  }

                                  else
                                  {
                                    v177 = 0.0;
                                    v178 = jj * v170;
                                    do
                                    {
                                      v344 = v178;
                                      v336 = v178 - jj * v170;
                                      if (v163 >= 1)
                                      {
                                        for (kk = 0; kk != v163; ++kk)
                                        {
                                          v337 = kk;
                                          v180 = v174 + kk * v167;
                                          if ((v180 & 0x80000000) == 0 && v180 < v157)
                                          {
                                            LODWORD(v345) = v174 + kk * v167;
                                            if (v164 >= 1)
                                            {
                                              for (mm = 0; mm != v164; ++mm)
                                              {
                                                v338 = mm;
                                                v176 = v325 + v173 * v329;
                                                v182 = v176 + mm * v168;
                                                if ((v182 & 0x80000000) == 0 && v182 < v158)
                                                {
                                                  v183 = 0;
                                                  HIDWORD(v345) = v176 + mm * v168;
                                                  v184 = 1;
                                                  for (nn = 12; nn != -4; nn -= 4)
                                                  {
                                                    v183 += *(&v343 + nn) * v184;
                                                    v184 *= *(*(v146 + 40) + nn);
                                                  }

                                                  v186 = 0;
                                                  v187 = 1;
                                                  for (i1 = 12; i1 != -4; i1 -= 4)
                                                  {
                                                    v186 += *(&v335 + i1) * v187;
                                                    v187 *= *(*(v148 + 40) + i1);
                                                  }

                                                  _H2 = *(v152 + 2 * v186);
                                                  __asm { FCVT            D2, H2 }

                                                  v177 = v177 + *(v151 + 4 * v183) * _D2;
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }

                                      ++v178;
                                    }

                                    while (v178 < jj * v170 + v170);
                                    v191 = v177;
                                  }

                                  v192 = 0;
                                  v193 = 1;
                                  for (i2 = 12; i2 != -4; i2 -= 4)
                                  {
                                    v192 += *(&v339 + i2) * v193;
                                    v193 *= *(v175 + i2);
                                  }

                                  *(v333 + 4 * v192) = v191;
                                  ++v173;
                                }

                                while (v173 != v162);
                              }

                              v172 = v321 + 1;
                            }

                            while (v321 + 1 != v317);
                          }

                          v171 = v301 + 1;
                        }

                        while (v301 + 1 < jj * v293 + v293);
                      }
                    }
                  }

                  v169 = v285 + 1;
                }

                while (v285 + 1 != v159);
              }

              goto LABEL_206;
            }

            goto LABEL_220;
          }

LABEL_217:
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.", v282);
          goto LABEL_208;
        }

        if (v24 == 68)
        {
          v195 = *a2;
          v196 = a2[1];
          v197 = a2[2];
          v198 = a2[3];
          v199 = a2[4];
          v200 = a2[5];
          v201 = *a4;
          v202 = **a2;
          if (*(v202 + 8) != 2)
          {
            v276 = a2[5];
            v277 = a2[4];
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v278);
          }

          v203 = *(v202 + 40);
          v204 = *v196;
          if (*(*v196 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v279);
          }

          v205 = *(v204 + 40);
          if (*(*v201 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v280);
          }

          v314 = *v201;
          v206 = *(*v201 + 40);
          v207 = v195[1];
          v208 = v196[1];
          v334 = v201[1];
          v209 = v197[1];
          v210 = v198[1];
          v211 = v199[1];
          if (*(*v200 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v281);
          }

          v212 = *(*v200 + 24);
          if (*(v212 + 8) != 1)
          {
            goto LABEL_217;
          }

          if (*(v212 + 24) == 25)
          {
            v290 = *v200[1];
            v213 = v203[2];
            v214 = v203[3];
            v215 = *v203;
            v216 = v203[1];
            v217 = *v205;
            v218 = *(v206 + 12);
            v318 = *(v206 + 8);
            v219 = v205[2];
            v220 = v205[3];
            v310 = *v209;
            v330 = v209[1];
            v221 = *v210;
            v222 = v210[1];
            v223 = *v211;
            v224 = v211[1];
            v345 = 0;
            if (v215 >= 1)
            {
              v225 = 0;
              v226 = v216 / v290;
              v306 = -v221;
              v326 = -v222;
              v294 = v217 / v290;
              do
              {
                v343 = v225;
                v286 = v225;
                v339 = v225;
                if (v290 >= 1)
                {
                  for (i3 = 0; i3 != v290; ++i3)
                  {
                    if (v294 >= 1)
                    {
                      v227 = i3 * v294;
                      do
                      {
                        v335 = v227;
                        v302 = v227;
                        v340 = v227;
                        if (v318 >= 1)
                        {
                          v228 = 0;
                          do
                          {
                            v322 = v228;
                            v341 = v228;
                            if (v218 >= 1)
                            {
                              v229 = 0;
                              v230 = v306 + v228 * v310;
                              v231 = *(v314 + 40);
                              do
                              {
                                v342 = v229;
                                if (v226 < 1)
                                {
                                  _H0 = 0;
                                }

                                else
                                {
                                  _D0 = 0.0;
                                  v234 = i3 * v226;
                                  do
                                  {
                                    v344 = v234;
                                    v336 = v234 - i3 * v226;
                                    if (v219 >= 1)
                                    {
                                      for (i4 = 0; i4 != v219; ++i4)
                                      {
                                        v337 = i4;
                                        v236 = v230 + i4 * v223;
                                        if ((v236 & 0x80000000) == 0 && v236 < v213)
                                        {
                                          LODWORD(v345) = v230 + i4 * v223;
                                          if (v220 >= 1)
                                          {
                                            for (i5 = 0; i5 != v220; ++i5)
                                            {
                                              v338 = i5;
                                              v232 = v326 + v229 * v330;
                                              v238 = v232 + i5 * v224;
                                              if ((v238 & 0x80000000) == 0 && v238 < v214)
                                              {
                                                v239 = 0;
                                                HIDWORD(v345) = v232 + i5 * v224;
                                                v240 = 1;
                                                for (i6 = 12; i6 != -4; i6 -= 4)
                                                {
                                                  v239 += *(&v343 + i6) * v240;
                                                  v240 *= *(*(v202 + 40) + i6);
                                                }

                                                v242 = 0;
                                                _H1 = *(v207 + 2 * v239);
                                                v244 = 1;
                                                for (i7 = 12; i7 != -4; i7 -= 4)
                                                {
                                                  v242 += *(&v335 + i7) * v244;
                                                  v244 *= *(*(v204 + 40) + i7);
                                                }

                                                _H2 = *(v208 + 2 * v242);
                                                __asm
                                                {
                                                  FCVT            D1, H1
                                                  FCVT            D2, H2
                                                }

                                                _D0 = _D0 + _D1 * _D2;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }

                                    ++v234;
                                  }

                                  while (v234 < i3 * v226 + v226);
                                  __asm { FCVT            H0, D0 }
                                }

                                v250 = 0;
                                v251 = 1;
                                for (i8 = 12; i8 != -4; i8 -= 4)
                                {
                                  v250 += *(&v339 + i8) * v251;
                                  v251 *= *(v231 + i8);
                                }

                                *(v334 + 2 * v250) = _H0;
                                ++v229;
                              }

                              while (v229 != v218);
                            }

                            v228 = v322 + 1;
                          }

                          while (v322 + 1 != v318);
                        }

                        v227 = v302 + 1;
                      }

                      while (v302 + 1 < i3 * v294 + v294);
                    }
                  }
                }

                v225 = v286 + 1;
              }

              while (v286 + 1 != v215);
            }

            goto LABEL_206;
          }
        }

        else
        {
          if (v24 != 69)
          {
            goto LABEL_207;
          }

          v79 = *a2;
          v80 = a2[1];
          v81 = a2[2];
          v82 = a2[3];
          v83 = a2[4];
          v84 = a2[5];
          v85 = *a4;
          v86 = **a2;
          if (*(v86 + 8) != 2)
          {
            v264 = a2[5];
            v265 = a2[4];
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v266);
          }

          v87 = *(v86 + 40);
          v88 = *v80;
          if (*(*v80 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v267);
          }

          v89 = *(v88 + 40);
          if (*(*v85 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v268);
          }

          v312 = *v85;
          v90 = *(*v85 + 40);
          v91 = v79[1];
          v92 = v80[1];
          v332 = v85[1];
          v93 = v81[1];
          v94 = v82[1];
          v95 = v83[1];
          if (*(*v84 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v269);
          }

          v96 = *(*v84 + 24);
          if (*(v96 + 8) != 1)
          {
            goto LABEL_217;
          }

          if (*(v96 + 24) == 25)
          {
            v288 = *v84[1];
            v97 = v87[2];
            v98 = v87[3];
            v99 = *v87;
            v100 = v87[1];
            v101 = *v89;
            v102 = *(v90 + 12);
            v316 = *(v90 + 8);
            v103 = v89[2];
            v104 = v89[3];
            v308 = *v93;
            v328 = v93[1];
            v105 = *v94;
            v106 = v94[1];
            v107 = *v95;
            v108 = v95[1];
            v345 = 0;
            if (v99 >= 1)
            {
              v109 = 0;
              v110 = v100 / v288;
              v304 = -v105;
              v324 = -v106;
              v292 = v101 / v288;
              do
              {
                v343 = v109;
                v284 = v109;
                v339 = v109;
                if (v288 >= 1)
                {
                  for (i9 = 0; i9 != v288; ++i9)
                  {
                    if (v292 >= 1)
                    {
                      v111 = i9 * v292;
                      do
                      {
                        v335 = v111;
                        v300 = v111;
                        v340 = v111;
                        if (v316 >= 1)
                        {
                          v112 = 0;
                          do
                          {
                            v320 = v112;
                            v341 = v112;
                            if (v102 >= 1)
                            {
                              v113 = 0;
                              v114 = v304 + v112 * v308;
                              v115 = *(v312 + 40);
                              do
                              {
                                v342 = v113;
                                if (v110 < 1)
                                {
                                  _H0 = 0;
                                }

                                else
                                {
                                  _D0 = 0.0;
                                  v118 = i9 * v110;
                                  do
                                  {
                                    v344 = v118;
                                    v336 = v118 - i9 * v110;
                                    if (v103 >= 1)
                                    {
                                      for (i10 = 0; i10 != v103; ++i10)
                                      {
                                        v337 = i10;
                                        v120 = v114 + i10 * v107;
                                        if ((v120 & 0x80000000) == 0 && v120 < v97)
                                        {
                                          LODWORD(v345) = v114 + i10 * v107;
                                          if (v104 >= 1)
                                          {
                                            for (i11 = 0; i11 != v104; ++i11)
                                            {
                                              v338 = i11;
                                              v116 = v324 + v113 * v328;
                                              v122 = v116 + i11 * v108;
                                              if ((v122 & 0x80000000) == 0 && v122 < v98)
                                              {
                                                v123 = 0;
                                                HIDWORD(v345) = v116 + i11 * v108;
                                                v124 = 1;
                                                for (i12 = 12; i12 != -4; i12 -= 4)
                                                {
                                                  v123 += *(&v343 + i12) * v124;
                                                  v124 *= *(*(v86 + 40) + i12);
                                                }

                                                v126 = 0;
                                                _H1 = *(v91 + 2 * v123);
                                                v128 = 1;
                                                for (i13 = 12; i13 != -4; i13 -= 4)
                                                {
                                                  v126 += *(&v335 + i13) * v128;
                                                  v128 *= *(*(v88 + 40) + i13);
                                                }

                                                __asm { FCVT            D1, H1 }

                                                _D0 = _D0 + _D1 * *(v92 + 4 * v126);
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }

                                    ++v118;
                                  }

                                  while (v118 < i9 * v110 + v110);
                                  __asm { FCVT            H0, D0 }
                                }

                                v136 = 0;
                                v137 = 1;
                                for (i14 = 12; i14 != -4; i14 -= 4)
                                {
                                  v136 += *(&v339 + i14) * v137;
                                  v137 *= *(v115 + i14);
                                }

                                *(v332 + 2 * v136) = _H0;
                                ++v113;
                              }

                              while (v113 != v102);
                            }

                            v112 = v320 + 1;
                          }

                          while (v320 + 1 != v316);
                        }

                        v111 = v300 + 1;
                      }

                      while (v300 + 1 < i9 * v292 + v292);
                    }
                  }
                }

                v109 = v284 + 1;
              }

              while (v284 + 1 != v99);
            }

            goto LABEL_206;
          }
        }

LABEL_220:
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
        goto LABEL_208;
      }

      v255 = "conv2d expects 1 packed NDArrayType output.";
    }

    else
    {
      v255 = "conv2d expects 6 packed NDArrayType inputs.";
    }

    v18 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", v255);
  }

LABEL_209:
  v253 = *MEMORY[0x277D85DE8];
  return v18;
}

void ODIE::Kernels::Core::CPU::registerConvKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.conv2d";
  v4 = 27;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceConv2d;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceConv2d;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceElementwiseBinary(uint64_t a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v9);
  }

  v11 = *(a1 + 32);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  ODIE::Common::NDArrayType::create(v10, *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 32), *(v5 + 48), *(v5 + 32), &v12);
  if ((v13 & 1) == 0)
  {
    ODIE::Platform::abort(v7);
  }

  *a4 = v12;
  return 0;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceElementwiseBinaryComparison(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v18);
  }

  v6 = a1[1];
  v23 = *a1;
  v24 = v6;
  v25 = *(a1 + 4);
  v7 = *(v5 + 40);
  v8 = *(v5 + 32);
  v9 = a1[1];
  v26 = *a1;
  v27 = v9;
  v28 = *(a1 + 4);
  v10 = odie_alloc_aligned(&v26, 4 * v8, 4, 0);
  v11 = v10;
  if (v8 >= 1)
  {
    v12 = v10;
    v13 = v8;
    do
    {
      v14 = *v7++;
      *v12++ = v14;
      --v13;
    }

    while (v13);
  }

  v26 = v23;
  v27 = v24;
  v28 = v25;
  v19[0] = v23;
  v19[1] = v24;
  v20 = v25;
  ODIE::Common::ScalarType::create(v19, 16, 1, &v21);
  if ((v22 & 1) == 0)
  {
    ODIE::Platform::abort(v15);
  }

  ODIE::Common::NDArrayType::create(&v26, v21, *(v5 + 32), v11, v8, &ODIE::Common::Constants::kDefaultDimOrdering, v8, v19);
  if ((BYTE8(v19[0]) & 1) == 0)
  {
    ODIE::Platform::abort(v16);
  }

  *a4 = *&v19[0];
  return 0;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseAdd(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v4 = a2[1][1];
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v174);
  }

  v6 = *(v5 + 24);
  if (*(v6 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v175);
  }

  v7 = *(v6 + 24);
  v8 = **a4;
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v176);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v177);
  }

  v10 = *(v9 + 24);
  if (v10 != v7 && v10 != 16)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Output scalar tag is different than input's and is not BOOL. Unsupported operation.");
    return 2;
  }

  v11 = **a2;
  if (*(v11 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v178);
  }

  v180 = (*a2)[1];
  v181 = (*a4)[1];
  v12 = *a2[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.", v180);
    ODIE::Platform::abort(v179);
  }

  v13 = *(v11 + 40);
  v14 = *(v11 + 32);
  v15 = *(v12 + 40);
  v16 = *(v12 + 32);
  v17 = *(a1 + 16);
  v197 = *a1;
  v198 = v17;
  v199 = *(a1 + 32);
  if (v14 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18;
  v20 = *(a1 + 16);
  v192 = *a1;
  *v193 = v20;
  *&v193[16] = *(a1 + 32);
  v194 = 0;
  v195 = 0;
  v196 = 0;
  v187 = v192;
  *v188 = v20;
  *&v188[16] = *(a1 + 32);
  v189 = 0;
  v190 = 0;
  v191 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v18, &v192);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v19, &v187);
  v182 = v197;
  *v183 = v198;
  *&v183[16] = v199;
  v184 = 0;
  v185 = 0;
  v186 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v192, &v187, &v182);
  if (v185)
  {
    v21 = v184;
    v22 = 4 * v185;
    v23 = 1;
    do
    {
      v24 = *v21++;
      v23 *= v24;
      v22 -= 4;
    }

    while (v22);
  }

  else
  {
    v23 = 1;
  }

  if (v7 <= 68)
  {
    if (v7 != 25)
    {
      if (v7 == 68)
      {
        if (v14 <= v16)
        {
          v25 = v16;
        }

        else
        {
          v25 = v14;
        }

        if (v10 == 68)
        {
          v231 = v197;
          *v232 = v198;
          *&v232[16] = v199;
          v233 = 0;
          v234 = 0;
          v235 = 0;
          v226 = v197;
          *v227 = v198;
          *&v227[16] = v199;
          v228 = 0;
          v229 = 0;
          v230 = 0;
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v231);
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v226);
          v221 = v197;
          *v222 = v198;
          *&v222[16] = v199;
          v223 = 0;
          v225 = 0;
          v224 = 0;
          ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
          v203 = v197;
          v204 = v198;
          v205 = v199;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v212, &v203, v180, &v231, &v221);
          v200 = v197;
          v201 = v198;
          v202 = v199;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v203, &v200, v4, &v226, &v221);
          if (v219)
          {
            bzero(v218, 4 * v219);
          }

          if (v210)
          {
            bzero(v209, 4 * v210);
          }

          if (v23 < 1)
          {
            goto LABEL_181;
          }

          v26 = 0;
          while (1)
          {
            v27 = v219;
            if (!v219)
            {
LABEL_37:
              v34 = (v215 + 2 * v27);
              goto LABEL_39;
            }

            v28 = 0;
            v29 = v216;
            v30 = v217;
            v31 = v218;
            v32 = v220;
            while (1)
            {
              v33 = *v29++;
              if (v33 != 1)
              {
                break;
              }

LABEL_35:
              ++v32;
              ++v30;
              ++v31;
              if (!--v27)
              {
                v27 = v28;
                goto LABEL_37;
              }
            }

            if (*v31 < *v30)
            {
              break;
            }

            v34 = 0;
LABEL_39:
            v35 = v210;
            if (v210)
            {
              v36 = 0;
              v37 = v207;
              v38 = v208;
              v39 = v209;
              v40 = v211;
              do
              {
                v41 = *v37++;
                if (v41 != 1)
                {
                  if (*v39 >= *v38)
                  {
                    goto LABEL_181;
                  }

                  v36 += *v40 * *v39;
                }

                ++v40;
                ++v38;
                ++v39;
                --v35;
              }

              while (v35);
              v35 = v36;
            }

            if (v34)
            {
              _ZF = v206 == 0;
            }

            else
            {
              _ZF = 1;
            }

            if (!_ZF)
            {
              *(v181 + 2 * v26) = *v34 + *(v206 + 2 * v35);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v212);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v203);
              if (++v26 != v23)
              {
                continue;
              }
            }

            goto LABEL_181;
          }

          v28 += *v32 * *v31;
          goto LABEL_35;
        }

        v231 = v197;
        *v232 = v198;
        *&v232[16] = v199;
        v233 = 0;
        v234 = 0;
        v235 = 0;
        v226 = v197;
        *v227 = v198;
        *&v227[16] = v199;
        v228 = 0;
        v229 = 0;
        v230 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v231);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v226);
        v221 = v197;
        *v222 = v198;
        *&v222[16] = v199;
        v223 = 0;
        v225 = 0;
        v224 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
        v203 = v197;
        v204 = v198;
        v205 = v199;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v212, &v203, v180, &v231, &v221);
        v200 = v197;
        v201 = v198;
        v202 = v199;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v203, &v200, v4, &v226, &v221);
        if (v219)
        {
          bzero(v218, 4 * v219);
        }

        if (v210)
        {
          bzero(v209, 4 * v210);
        }

        if (v23 < 1)
        {
          goto LABEL_181;
        }

        v98 = 0;
LABEL_157:
        v99 = v219;
        if (!v219)
        {
LABEL_164:
          v106 = (v215 + 2 * v99);
          goto LABEL_166;
        }

        v100 = 0;
        v101 = v216;
        v102 = v217;
        v103 = v218;
        v104 = v220;
        while (1)
        {
          v105 = *v101++;
          if (v105 != 1)
          {
            if (*v103 >= *v102)
            {
              v106 = 0;
LABEL_166:
              v107 = v210;
              if (v210)
              {
                v108 = 0;
                v109 = v207;
                v110 = v208;
                v111 = v209;
                v112 = v211;
                do
                {
                  v113 = *v109++;
                  if (v113 != 1)
                  {
                    if (*v111 >= *v110)
                    {
                      goto LABEL_181;
                    }

                    v108 += *v112 * *v111;
                  }

                  ++v112;
                  ++v110;
                  ++v111;
                  --v107;
                }

                while (v107);
                v107 = v108;
              }

              if (v106)
              {
                v114 = v206 == 0;
              }

              else
              {
                v114 = 1;
              }

              if (v114)
              {
                goto LABEL_181;
              }

              v115 = *(v206 + 2 * v107);
              v116 = *v106;
              __asm { FCMP            H0, #0 }

              v121 = !_ZF;
              *(v181 + v98) = v121;
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v212);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v203);
              if (++v98 == v23)
              {
LABEL_181:
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v203);
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v212);
                goto LABEL_266;
              }

              goto LABEL_157;
            }

            v100 += *v104 * *v103;
          }

          ++v104;
          ++v102;
          ++v103;
          if (!--v99)
          {
            v99 = v100;
            goto LABEL_164;
          }
        }
      }

LABEL_86:
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Unexpected data type encountered.", v180);
      v61 = 3;
      goto LABEL_273;
    }

    if (v14 <= v16)
    {
      v62 = v16;
    }

    else
    {
      v62 = v14;
    }

    if (v10 == 25)
    {
      v231 = v197;
      *v232 = v198;
      *&v232[16] = v199;
      v233 = 0;
      v234 = 0;
      v235 = 0;
      v226 = v197;
      *v227 = v198;
      *&v227[16] = v199;
      v228 = 0;
      v229 = 0;
      v230 = 0;
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v62, &v231);
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v62, &v226);
      v221 = v197;
      *v222 = v198;
      *&v222[16] = v199;
      v223 = 0;
      v225 = 0;
      v224 = 0;
      ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
      v203 = v197;
      v204 = v198;
      v205 = v199;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v212, &v203, v180, &v231, &v221);
      v200 = v197;
      v201 = v198;
      v202 = v199;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v203, &v200, v4, &v226, &v221);
      if (v219)
      {
        bzero(v218, 4 * v219);
      }

      if (v210)
      {
        bzero(v209, 4 * v210);
      }

      if (v23 < 1)
      {
        goto LABEL_237;
      }

      v63 = 0;
      while (1)
      {
        v64 = v219;
        if (!v219)
        {
LABEL_104:
          v71 = (v215 + 4 * v64);
          goto LABEL_106;
        }

        v65 = 0;
        v66 = v216;
        v67 = v217;
        v68 = v218;
        v69 = v220;
        while (1)
        {
          v70 = *v66++;
          if (v70 != 1)
          {
            break;
          }

LABEL_102:
          ++v69;
          ++v67;
          ++v68;
          if (!--v64)
          {
            v64 = v65;
            goto LABEL_104;
          }
        }

        if (*v68 < *v67)
        {
          break;
        }

        v71 = 0;
LABEL_106:
        v72 = v210;
        if (v210)
        {
          v73 = 0;
          v74 = v207;
          v75 = v208;
          v76 = v209;
          v77 = v211;
          do
          {
            v78 = *v74++;
            if (v78 != 1)
            {
              if (*v76 >= *v75)
              {
                goto LABEL_237;
              }

              v73 += *v77 * *v76;
            }

            ++v77;
            ++v75;
            ++v76;
            --v72;
          }

          while (v72);
          v72 = v73;
        }

        if (v71)
        {
          v79 = v206 == 0;
        }

        else
        {
          v79 = 1;
        }

        if (!v79)
        {
          *(v181 + 4 * v63) = *(v206 + 4 * v72) + *v71;
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v212);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v203);
          if (++v63 != v23)
          {
            continue;
          }
        }

        goto LABEL_237;
      }

      v65 += *v69 * *v68;
      goto LABEL_102;
    }

    v231 = v197;
    *v232 = v198;
    *&v232[16] = v199;
    v233 = 0;
    v234 = 0;
    v235 = 0;
    v226 = v197;
    *v227 = v198;
    *&v227[16] = v199;
    v228 = 0;
    v229 = 0;
    v230 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v62, &v231);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v62, &v226);
    v221 = v197;
    *v222 = v198;
    *&v222[16] = v199;
    v223 = 0;
    v225 = 0;
    v224 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
    v203 = v197;
    v204 = v198;
    v205 = v199;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v212, &v203, v180, &v231, &v221);
    v200 = v197;
    v201 = v198;
    v202 = v199;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v203, &v200, v4, &v226, &v221);
    if (v219)
    {
      bzero(v218, 4 * v219);
    }

    if (v210)
    {
      bzero(v209, 4 * v210);
    }

    if (v23 < 1)
    {
      goto LABEL_237;
    }

    v139 = 0;
LABEL_216:
    v140 = v219;
    if (!v219)
    {
LABEL_223:
      v147 = (v215 + 4 * v140);
      goto LABEL_225;
    }

    v141 = 0;
    v142 = v216;
    v143 = v217;
    v144 = v218;
    v145 = v220;
    while (1)
    {
      v146 = *v142++;
      if (v146 != 1)
      {
        if (*v144 >= *v143)
        {
          v147 = 0;
LABEL_225:
          v148 = v210;
          if (v210)
          {
            v149 = 0;
            v150 = v207;
            v151 = v208;
            v152 = v209;
            v153 = v211;
            do
            {
              v154 = *v150++;
              if (v154 != 1)
              {
                if (*v152 >= *v151)
                {
                  goto LABEL_237;
                }

                v149 += *v153 * *v152;
              }

              ++v153;
              ++v151;
              ++v152;
              --v148;
            }

            while (v148);
            v148 = v149;
          }

          if (v147)
          {
            v155 = v206 == 0;
          }

          else
          {
            v155 = 1;
          }

          if (v155 || (*(v181 + v139) = *(v206 + 4 * v148) + *v147 != 0, ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v212), ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v203), ++v139, v139 == v23))
          {
LABEL_237:
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v203);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v212);
            goto LABEL_266;
          }

          goto LABEL_216;
        }

        v141 += *v145 * *v144;
      }

      ++v145;
      ++v143;
      ++v144;
      if (!--v140)
      {
        v140 = v141;
        goto LABEL_223;
      }
    }
  }

  if (v7 != 70)
  {
    if (v7 == 69)
    {
      if (v14 <= v16)
      {
        v43 = v16;
      }

      else
      {
        v43 = v14;
      }

      if (v10 == 69)
      {
        v231 = v197;
        *v232 = v198;
        *&v232[16] = v199;
        v233 = 0;
        v234 = 0;
        v235 = 0;
        v226 = v197;
        *v227 = v198;
        *&v227[16] = v199;
        v228 = 0;
        v229 = 0;
        v230 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v43, &v231);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v43, &v226);
        v221 = v197;
        *v222 = v198;
        *&v222[16] = v199;
        v223 = 0;
        v225 = 0;
        v224 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
        v203 = v197;
        v204 = v198;
        v205 = v199;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v212, &v203, v180, &v231, &v221);
        v200 = v197;
        v201 = v198;
        v202 = v199;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v203, &v200, v4, &v226, &v221);
        if (v219)
        {
          bzero(v218, 4 * v219);
        }

        if (v210)
        {
          bzero(v209, 4 * v210);
        }

        if (v23 >= 1)
        {
          for (i = 0; i != v23; ++i)
          {
            v45 = v219;
            if (!v219)
            {
              goto LABEL_71;
            }

            v46 = 0;
            v47 = v216;
            v48 = v217;
            v49 = v218;
            v50 = v220;
            do
            {
              v51 = *v47++;
              if (v51 != 1)
              {
                if (*v49 >= *v48)
                {
                  v52 = 0;
                  goto LABEL_73;
                }

                v46 += *v50 * *v49;
              }

              ++v50;
              ++v48;
              ++v49;
              --v45;
            }

            while (v45);
            v45 = v46;
LABEL_71:
            v52 = (v215 + 4 * v45);
LABEL_73:
            v53 = v210;
            if (v210)
            {
              v54 = 0;
              v55 = v207;
              v56 = v208;
              v57 = v209;
              v58 = v211;
              do
              {
                v59 = *v55++;
                if (v59 != 1)
                {
                  if (*v57 >= *v56)
                  {
                    goto LABEL_209;
                  }

                  v54 += *v58 * *v57;
                }

                ++v58;
                ++v56;
                ++v57;
                --v53;
              }

              while (v53);
              v53 = v54;
            }

            if (v52)
            {
              v60 = v206 == 0;
            }

            else
            {
              v60 = 1;
            }

            if (v60)
            {
              break;
            }

            *(v181 + 4 * i) = *v52 + *(v206 + 4 * v53);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v212);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v203);
          }
        }
      }

      else
      {
        v231 = v197;
        *v232 = v198;
        *&v232[16] = v199;
        v233 = 0;
        v234 = 0;
        v235 = 0;
        v226 = v197;
        *v227 = v198;
        *&v227[16] = v199;
        v228 = 0;
        v229 = 0;
        v230 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v43, &v231);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v43, &v226);
        v221 = v197;
        *v222 = v198;
        *&v222[16] = v199;
        v223 = 0;
        v225 = 0;
        v224 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
        v203 = v197;
        v204 = v198;
        v205 = v199;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v212, &v203, v180, &v231, &v221);
        v200 = v197;
        v201 = v198;
        v202 = v199;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v203, &v200, v4, &v226, &v221);
        if (v219)
        {
          bzero(v218, 4 * v219);
        }

        if (v210)
        {
          bzero(v209, 4 * v210);
        }

        if (v23 >= 1)
        {
          for (j = 0; j != v23; ++j)
          {
            v123 = v219;
            if (!v219)
            {
              goto LABEL_195;
            }

            v124 = 0;
            v125 = v216;
            v126 = v217;
            v127 = v218;
            v128 = v220;
            do
            {
              v129 = *v125++;
              if (v129 != 1)
              {
                if (*v127 >= *v126)
                {
                  v130 = 0;
                  goto LABEL_197;
                }

                v124 += *v128 * *v127;
              }

              ++v128;
              ++v126;
              ++v127;
              --v123;
            }

            while (v123);
            v123 = v124;
LABEL_195:
            v130 = (v215 + 4 * v123);
LABEL_197:
            v131 = v210;
            if (v210)
            {
              v132 = 0;
              v133 = v207;
              v134 = v208;
              v135 = v209;
              v136 = v211;
              do
              {
                v137 = *v133++;
                if (v137 != 1)
                {
                  if (*v135 >= *v134)
                  {
                    goto LABEL_209;
                  }

                  v132 += *v136 * *v135;
                }

                ++v136;
                ++v134;
                ++v135;
                --v131;
              }

              while (v131);
              v131 = v132;
            }

            if (v130)
            {
              v138 = v206 == 0;
            }

            else
            {
              v138 = 1;
            }

            if (v138)
            {
              break;
            }

            *(v181 + j) = (*v130 + *(v206 + 4 * v131)) != 0.0;
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v212);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v203);
          }
        }
      }

LABEL_209:
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v203);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v212);
      goto LABEL_266;
    }

    goto LABEL_86;
  }

  if (v14 <= v16)
  {
    v80 = v16;
  }

  else
  {
    v80 = v14;
  }

  if (v10 != 70)
  {
    v231 = v197;
    *v232 = v198;
    *&v232[16] = v199;
    v233 = 0;
    v234 = 0;
    v235 = 0;
    v226 = v197;
    *v227 = v198;
    *&v227[16] = v199;
    v228 = 0;
    v229 = 0;
    v230 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v80, &v231);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v80, &v226);
    v221 = v197;
    *v222 = v198;
    *&v222[16] = v199;
    v223 = 0;
    v225 = 0;
    v224 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
    v203 = v197;
    v204 = v198;
    v205 = v199;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v212, &v203, v180, &v231, &v221);
    v200 = v197;
    v201 = v198;
    v202 = v199;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v203, &v200, v4, &v226, &v221);
    if (v219)
    {
      bzero(v218, 4 * v219);
    }

    if (v210)
    {
      bzero(v209, 4 * v210);
    }

    if (v23 < 1)
    {
      goto LABEL_265;
    }

    v156 = 0;
    while (1)
    {
      v157 = v219;
      if (!v219)
      {
        goto LABEL_251;
      }

      v158 = 0;
      v159 = v216;
      v160 = v217;
      v161 = v218;
      v162 = v220;
      do
      {
        v163 = *v159++;
        if (v163 != 1)
        {
          if (*v161 >= *v160)
          {
            v164 = 0;
            goto LABEL_253;
          }

          v158 += *v162 * *v161;
        }

        ++v162;
        ++v160;
        ++v161;
        --v157;
      }

      while (v157);
      v157 = v158;
LABEL_251:
      v164 = (v215 + 8 * v157);
LABEL_253:
      v165 = v210;
      if (v210)
      {
        v166 = 0;
        v167 = v207;
        v168 = v208;
        v169 = v209;
        v170 = v211;
        do
        {
          v171 = *v167++;
          if (v171 != 1)
          {
            if (*v169 >= *v168)
            {
              goto LABEL_265;
            }

            v166 += *v170 * *v169;
          }

          ++v170;
          ++v168;
          ++v169;
          --v165;
        }

        while (v165);
        v165 = v166;
      }

      if (v164)
      {
        v172 = v206 == 0;
      }

      else
      {
        v172 = 1;
      }

      if (!v172)
      {
        *(v181 + v156) = *v164 + *(v206 + 8 * v165) != 0.0;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v212);
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v203);
        if (++v156 != v23)
        {
          continue;
        }
      }

      goto LABEL_265;
    }
  }

  v231 = v197;
  *v232 = v198;
  *&v232[16] = v199;
  v233 = 0;
  v234 = 0;
  v235 = 0;
  v226 = v197;
  *v227 = v198;
  *&v227[16] = v199;
  v228 = 0;
  v229 = 0;
  v230 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v80, &v231);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v80, &v226);
  v221 = v197;
  *v222 = v198;
  *&v222[16] = v199;
  v223 = 0;
  v225 = 0;
  v224 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
  v203 = v197;
  v204 = v198;
  v205 = v199;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v212, &v203, v180, &v231, &v221);
  v200 = v197;
  v201 = v198;
  v202 = v199;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v203, &v200, v4, &v226, &v221);
  if (v219)
  {
    bzero(v218, 4 * v219);
  }

  if (v210)
  {
    bzero(v209, 4 * v210);
  }

  if (v23 < 1)
  {
    goto LABEL_265;
  }

  for (k = 0; k != v23; ++k)
  {
    v82 = v219;
    if (!v219)
    {
LABEL_136:
      v89 = (v215 + 8 * v82);
      goto LABEL_138;
    }

    v83 = 0;
    v84 = v216;
    v85 = v217;
    v86 = v218;
    v87 = v220;
    while (1)
    {
      v88 = *v84++;
      if (v88 != 1)
      {
        break;
      }

LABEL_134:
      ++v87;
      ++v85;
      ++v86;
      if (!--v82)
      {
        v82 = v83;
        goto LABEL_136;
      }
    }

    if (*v86 < *v85)
    {
      v83 += *v87 * *v86;
      goto LABEL_134;
    }

    v89 = 0;
LABEL_138:
    v90 = v210;
    if (v210)
    {
      v91 = 0;
      v92 = v207;
      v93 = v208;
      v94 = v209;
      v95 = v211;
      do
      {
        v96 = *v92++;
        if (v96 != 1)
        {
          if (*v94 >= *v93)
          {
            goto LABEL_265;
          }

          v91 += *v95 * *v94;
        }

        ++v95;
        ++v93;
        ++v94;
        --v90;
      }

      while (v90);
      v90 = v91;
    }

    if (v89)
    {
      v97 = v206 == 0;
    }

    else
    {
      v97 = 1;
    }

    if (v97)
    {
      break;
    }

    *(v181 + 8 * k) = *v89 + *(v206 + 8 * v90);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v212);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v203);
  }

LABEL_265:
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v203);
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v212);
LABEL_266:
  if (*v222)
  {
    v212 = v221;
    v213 = *v222;
    v214 = *&v222[8];
    (*v222)(&v212, v223);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v227)
  {
    v212 = v226;
    v213 = *v227;
    v214 = *&v227[8];
    (*v227)(&v212, v228);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v232)
  {
    v212 = v231;
    v213 = *v232;
    v214 = *&v232[8];
    (*v232)(&v212, v233);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v61 = 0;
LABEL_273:
  if (*v183)
  {
    v212 = v182;
    v213 = *v183;
    v214 = *&v183[8];
    (*v183)(&v212, v184);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v188)
  {
    v212 = v187;
    v213 = *v188;
    v214 = *&v188[8];
    (*v188)(&v212, v189);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v193)
  {
    v212 = v192;
    v213 = *v193;
    v214 = *&v193[8];
    (*v193)(&v212, v194);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  return v61;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseMul(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v4 = a2[1][1];
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v177);
  }

  v6 = *(v5 + 24);
  if (*(v6 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v178);
  }

  v7 = *(v6 + 24);
  v8 = **a4;
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v179);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v180);
  }

  v10 = *(v9 + 24);
  if (v10 != v7 && v10 != 16)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Output scalar tag is different than input's and is not BOOL. Unsupported operation.");
    return 2;
  }

  v11 = **a2;
  if (*(v11 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v181);
  }

  v183 = (*a2)[1];
  v184 = (*a4)[1];
  v12 = *a2[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.", v183);
    ODIE::Platform::abort(v182);
  }

  v13 = *(v11 + 40);
  v14 = *(v11 + 32);
  v15 = *(v12 + 40);
  v16 = *(v12 + 32);
  v17 = *(a1 + 16);
  v200 = *a1;
  v201 = v17;
  v202 = *(a1 + 32);
  if (v14 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18;
  v20 = *(a1 + 16);
  v195 = *a1;
  *v196 = v20;
  *&v196[16] = *(a1 + 32);
  v197 = 0;
  v198 = 0;
  v199 = 0;
  v190 = v195;
  *v191 = v20;
  *&v191[16] = *(a1 + 32);
  v192 = 0;
  v193 = 0;
  v194 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v18, &v195);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v19, &v190);
  v185 = v200;
  *v186 = v201;
  *&v186[16] = v202;
  v187 = 0;
  v188 = 0;
  v189 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v195, &v190, &v185);
  if (v188)
  {
    v21 = v187;
    v22 = 4 * v188;
    v23 = 1;
    do
    {
      v24 = *v21++;
      v23 *= v24;
      v22 -= 4;
    }

    while (v22);
  }

  else
  {
    v23 = 1;
  }

  if (v7 <= 68)
  {
    if (v7 != 25)
    {
      if (v7 == 68)
      {
        if (v14 <= v16)
        {
          v25 = v16;
        }

        else
        {
          v25 = v14;
        }

        if (v10 == 68)
        {
          v234 = v200;
          *v235 = v201;
          *&v235[16] = v202;
          v236 = 0;
          v237 = 0;
          v238 = 0;
          v229 = v200;
          *v230 = v201;
          *&v230[16] = v202;
          v231 = 0;
          v232 = 0;
          v233 = 0;
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v234);
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v229);
          v224 = v200;
          *v225 = v201;
          *&v225[16] = v202;
          v226 = 0;
          v228 = 0;
          v227 = 0;
          ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v234, &v229, &v224);
          v206 = v200;
          v207 = v201;
          v208 = v202;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v215, &v206, v183, &v234, &v224);
          v203 = v200;
          v204 = v201;
          v205 = v202;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v206, &v203, v4, &v229, &v224);
          if (v222)
          {
            bzero(v221, 4 * v222);
          }

          if (v213)
          {
            bzero(v212, 4 * v213);
          }

          if (v23 < 1)
          {
            goto LABEL_181;
          }

          v26 = 0;
          while (1)
          {
            v27 = v222;
            if (!v222)
            {
LABEL_37:
              v34 = (v218 + 2 * v27);
              goto LABEL_39;
            }

            v28 = 0;
            v29 = v219;
            v30 = v220;
            v31 = v221;
            v32 = v223;
            while (1)
            {
              v33 = *v29++;
              if (v33 != 1)
              {
                break;
              }

LABEL_35:
              ++v32;
              ++v30;
              ++v31;
              if (!--v27)
              {
                v27 = v28;
                goto LABEL_37;
              }
            }

            if (*v31 < *v30)
            {
              break;
            }

            v34 = 0;
LABEL_39:
            v35 = v213;
            if (v213)
            {
              v36 = 0;
              v37 = v210;
              v38 = v211;
              v39 = v212;
              v40 = v214;
              do
              {
                v41 = *v37++;
                if (v41 != 1)
                {
                  if (*v39 >= *v38)
                  {
                    goto LABEL_181;
                  }

                  v36 += *v40 * *v39;
                }

                ++v40;
                ++v38;
                ++v39;
                --v35;
              }

              while (v35);
              v35 = v36;
            }

            if (v34)
            {
              _ZF = v209 == 0;
            }

            else
            {
              _ZF = 1;
            }

            if (!_ZF)
            {
              *(v184 + 2 * v26) = *v34 * *(v209 + 2 * v35);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v215);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v206);
              if (++v26 != v23)
              {
                continue;
              }
            }

            goto LABEL_181;
          }

          v28 += *v32 * *v31;
          goto LABEL_35;
        }

        v234 = v200;
        *v235 = v201;
        *&v235[16] = v202;
        v236 = 0;
        v237 = 0;
        v238 = 0;
        v229 = v200;
        *v230 = v201;
        *&v230[16] = v202;
        v231 = 0;
        v232 = 0;
        v233 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v234);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v229);
        v224 = v200;
        *v225 = v201;
        *&v225[16] = v202;
        v226 = 0;
        v228 = 0;
        v227 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v234, &v229, &v224);
        v206 = v200;
        v207 = v201;
        v208 = v202;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v215, &v206, v183, &v234, &v224);
        v203 = v200;
        v204 = v201;
        v205 = v202;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v206, &v203, v4, &v229, &v224);
        if (v222)
        {
          bzero(v221, 4 * v222);
        }

        if (v213)
        {
          bzero(v212, 4 * v213);
        }

        if (v23 < 1)
        {
          goto LABEL_181;
        }

        v98 = 0;
LABEL_157:
        v99 = v222;
        if (!v222)
        {
LABEL_164:
          v106 = (v218 + 2 * v99);
          goto LABEL_166;
        }

        v100 = 0;
        v101 = v219;
        v102 = v220;
        v103 = v221;
        v104 = v223;
        while (1)
        {
          v105 = *v101++;
          if (v105 != 1)
          {
            if (*v103 >= *v102)
            {
              v106 = 0;
LABEL_166:
              v107 = v213;
              if (v213)
              {
                v108 = 0;
                v109 = v210;
                v110 = v211;
                v111 = v212;
                v112 = v214;
                do
                {
                  v113 = *v109++;
                  if (v113 != 1)
                  {
                    if (*v111 >= *v110)
                    {
                      goto LABEL_181;
                    }

                    v108 += *v112 * *v111;
                  }

                  ++v112;
                  ++v110;
                  ++v111;
                  --v107;
                }

                while (v107);
                v107 = v108;
              }

              if (v106)
              {
                v114 = v209 == 0;
              }

              else
              {
                v114 = 1;
              }

              if (v114)
              {
                goto LABEL_181;
              }

              v115 = *(v209 + 2 * v107);
              v116 = *v106;
              __asm { FCMP            H0, #0 }

              v121 = !_ZF;
              *(v184 + v98) = v121;
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v215);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v206);
              if (++v98 == v23)
              {
LABEL_181:
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v206);
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v215);
                goto LABEL_272;
              }

              goto LABEL_157;
            }

            v100 += *v104 * *v103;
          }

          ++v104;
          ++v102;
          ++v103;
          if (!--v99)
          {
            v99 = v100;
            goto LABEL_164;
          }
        }
      }

LABEL_86:
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Unexpected data type encountered.", v183);
      v61 = 3;
      goto LABEL_279;
    }

    if (v14 <= v16)
    {
      v62 = v16;
    }

    else
    {
      v62 = v14;
    }

    if (v10 == 25)
    {
      v234 = v200;
      *v235 = v201;
      *&v235[16] = v202;
      v236 = 0;
      v237 = 0;
      v238 = 0;
      v229 = v200;
      *v230 = v201;
      *&v230[16] = v202;
      v231 = 0;
      v232 = 0;
      v233 = 0;
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v62, &v234);
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v62, &v229);
      v224 = v200;
      *v225 = v201;
      *&v225[16] = v202;
      v226 = 0;
      v228 = 0;
      v227 = 0;
      ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v234, &v229, &v224);
      v206 = v200;
      v207 = v201;
      v208 = v202;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v215, &v206, v183, &v234, &v224);
      v203 = v200;
      v204 = v201;
      v205 = v202;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v206, &v203, v4, &v229, &v224);
      if (v222)
      {
        bzero(v221, 4 * v222);
      }

      if (v213)
      {
        bzero(v212, 4 * v213);
      }

      if (v23 < 1)
      {
        goto LABEL_243;
      }

      v63 = 0;
      while (1)
      {
        v64 = v222;
        if (!v222)
        {
LABEL_104:
          v71 = (v218 + 4 * v64);
          goto LABEL_106;
        }

        v65 = 0;
        v66 = v219;
        v67 = v220;
        v68 = v221;
        v69 = v223;
        while (1)
        {
          v70 = *v66++;
          if (v70 != 1)
          {
            break;
          }

LABEL_102:
          ++v69;
          ++v67;
          ++v68;
          if (!--v64)
          {
            v64 = v65;
            goto LABEL_104;
          }
        }

        if (*v68 < *v67)
        {
          break;
        }

        v71 = 0;
LABEL_106:
        v72 = v213;
        if (v213)
        {
          v73 = 0;
          v74 = v210;
          v75 = v211;
          v76 = v212;
          v77 = v214;
          do
          {
            v78 = *v74++;
            if (v78 != 1)
            {
              if (*v76 >= *v75)
              {
                goto LABEL_243;
              }

              v73 += *v77 * *v76;
            }

            ++v77;
            ++v75;
            ++v76;
            --v72;
          }

          while (v72);
          v72 = v73;
        }

        if (v71)
        {
          v79 = v209 == 0;
        }

        else
        {
          v79 = 1;
        }

        if (!v79)
        {
          *(v184 + 4 * v63) = *(v209 + 4 * v72) * *v71;
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v215);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v206);
          if (++v63 != v23)
          {
            continue;
          }
        }

        goto LABEL_243;
      }

      v65 += *v69 * *v68;
      goto LABEL_102;
    }

    v234 = v200;
    *v235 = v201;
    *&v235[16] = v202;
    v236 = 0;
    v237 = 0;
    v238 = 0;
    v229 = v200;
    *v230 = v201;
    *&v230[16] = v202;
    v231 = 0;
    v232 = 0;
    v233 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v62, &v234);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v62, &v229);
    v224 = v200;
    *v225 = v201;
    *&v225[16] = v202;
    v226 = 0;
    v228 = 0;
    v227 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v234, &v229, &v224);
    v206 = v200;
    v207 = v201;
    v208 = v202;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v215, &v206, v183, &v234, &v224);
    v203 = v200;
    v204 = v201;
    v205 = v202;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v206, &v203, v4, &v229, &v224);
    if (v222)
    {
      bzero(v221, 4 * v222);
    }

    if (v213)
    {
      bzero(v212, 4 * v213);
    }

    if (v23 < 1)
    {
      goto LABEL_243;
    }

    v139 = 0;
LABEL_216:
    v140 = v222;
    if (!v222)
    {
LABEL_223:
      v147 = (v218 + 4 * v140);
      goto LABEL_225;
    }

    v141 = 0;
    v142 = v219;
    v143 = v220;
    v144 = v221;
    v145 = v223;
    while (1)
    {
      v146 = *v142++;
      if (v146 != 1)
      {
        if (*v144 >= *v143)
        {
          v147 = 0;
LABEL_225:
          v148 = v213;
          if (v213)
          {
            v149 = 0;
            v150 = v210;
            v151 = v211;
            v152 = v212;
            v153 = v214;
            do
            {
              v154 = *v150++;
              if (v154 != 1)
              {
                if (*v152 >= *v151)
                {
                  goto LABEL_243;
                }

                v149 += *v153 * *v152;
              }

              ++v153;
              ++v151;
              ++v152;
              --v148;
            }

            while (v148);
            v148 = v149;
          }

          if (v147)
          {
            v155 = v209 == 0;
          }

          else
          {
            v155 = 1;
          }

          if (v155 || ((v156 = *v147, *(v209 + 4 * v148)) ? (v157 = v156 == 0) : (v157 = 1), v157 ? (v158 = 0) : (v158 = 1), *(v184 + v139) = v158, ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v215), ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v206), ++v139, v139 == v23))
          {
LABEL_243:
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v206);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v215);
            goto LABEL_272;
          }

          goto LABEL_216;
        }

        v141 += *v145 * *v144;
      }

      ++v145;
      ++v143;
      ++v144;
      if (!--v140)
      {
        v140 = v141;
        goto LABEL_223;
      }
    }
  }

  if (v7 != 70)
  {
    if (v7 == 69)
    {
      if (v14 <= v16)
      {
        v43 = v16;
      }

      else
      {
        v43 = v14;
      }

      if (v10 == 69)
      {
        v234 = v200;
        *v235 = v201;
        *&v235[16] = v202;
        v236 = 0;
        v237 = 0;
        v238 = 0;
        v229 = v200;
        *v230 = v201;
        *&v230[16] = v202;
        v231 = 0;
        v232 = 0;
        v233 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v43, &v234);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v43, &v229);
        v224 = v200;
        *v225 = v201;
        *&v225[16] = v202;
        v226 = 0;
        v228 = 0;
        v227 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v234, &v229, &v224);
        v206 = v200;
        v207 = v201;
        v208 = v202;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v215, &v206, v183, &v234, &v224);
        v203 = v200;
        v204 = v201;
        v205 = v202;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v206, &v203, v4, &v229, &v224);
        if (v222)
        {
          bzero(v221, 4 * v222);
        }

        if (v213)
        {
          bzero(v212, 4 * v213);
        }

        if (v23 >= 1)
        {
          for (i = 0; i != v23; ++i)
          {
            v45 = v222;
            if (!v222)
            {
              goto LABEL_71;
            }

            v46 = 0;
            v47 = v219;
            v48 = v220;
            v49 = v221;
            v50 = v223;
            do
            {
              v51 = *v47++;
              if (v51 != 1)
              {
                if (*v49 >= *v48)
                {
                  v52 = 0;
                  goto LABEL_73;
                }

                v46 += *v50 * *v49;
              }

              ++v50;
              ++v48;
              ++v49;
              --v45;
            }

            while (v45);
            v45 = v46;
LABEL_71:
            v52 = (v218 + 4 * v45);
LABEL_73:
            v53 = v213;
            if (v213)
            {
              v54 = 0;
              v55 = v210;
              v56 = v211;
              v57 = v212;
              v58 = v214;
              do
              {
                v59 = *v55++;
                if (v59 != 1)
                {
                  if (*v57 >= *v56)
                  {
                    goto LABEL_209;
                  }

                  v54 += *v58 * *v57;
                }

                ++v58;
                ++v56;
                ++v57;
                --v53;
              }

              while (v53);
              v53 = v54;
            }

            if (v52)
            {
              v60 = v209 == 0;
            }

            else
            {
              v60 = 1;
            }

            if (v60)
            {
              break;
            }

            *(v184 + 4 * i) = *v52 * *(v209 + 4 * v53);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v215);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v206);
          }
        }
      }

      else
      {
        v234 = v200;
        *v235 = v201;
        *&v235[16] = v202;
        v236 = 0;
        v237 = 0;
        v238 = 0;
        v229 = v200;
        *v230 = v201;
        *&v230[16] = v202;
        v231 = 0;
        v232 = 0;
        v233 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v43, &v234);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v43, &v229);
        v224 = v200;
        *v225 = v201;
        *&v225[16] = v202;
        v226 = 0;
        v228 = 0;
        v227 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v234, &v229, &v224);
        v206 = v200;
        v207 = v201;
        v208 = v202;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v215, &v206, v183, &v234, &v224);
        v203 = v200;
        v204 = v201;
        v205 = v202;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v206, &v203, v4, &v229, &v224);
        if (v222)
        {
          bzero(v221, 4 * v222);
        }

        if (v213)
        {
          bzero(v212, 4 * v213);
        }

        if (v23 >= 1)
        {
          for (j = 0; j != v23; ++j)
          {
            v123 = v222;
            if (!v222)
            {
              goto LABEL_195;
            }

            v124 = 0;
            v125 = v219;
            v126 = v220;
            v127 = v221;
            v128 = v223;
            do
            {
              v129 = *v125++;
              if (v129 != 1)
              {
                if (*v127 >= *v126)
                {
                  v130 = 0;
                  goto LABEL_197;
                }

                v124 += *v128 * *v127;
              }

              ++v128;
              ++v126;
              ++v127;
              --v123;
            }

            while (v123);
            v123 = v124;
LABEL_195:
            v130 = (v218 + 4 * v123);
LABEL_197:
            v131 = v213;
            if (v213)
            {
              v132 = 0;
              v133 = v210;
              v134 = v211;
              v135 = v212;
              v136 = v214;
              do
              {
                v137 = *v133++;
                if (v137 != 1)
                {
                  if (*v135 >= *v134)
                  {
                    goto LABEL_209;
                  }

                  v132 += *v136 * *v135;
                }

                ++v136;
                ++v134;
                ++v135;
                --v131;
              }

              while (v131);
              v131 = v132;
            }

            if (v130)
            {
              v138 = v209 == 0;
            }

            else
            {
              v138 = 1;
            }

            if (v138)
            {
              break;
            }

            *(v184 + j) = (*v130 * *(v209 + 4 * v131)) != 0.0;
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v215);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v206);
          }
        }
      }

LABEL_209:
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v206);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v215);
      goto LABEL_272;
    }

    goto LABEL_86;
  }

  if (v14 <= v16)
  {
    v80 = v16;
  }

  else
  {
    v80 = v14;
  }

  if (v10 != 70)
  {
    v234 = v200;
    *v235 = v201;
    *&v235[16] = v202;
    v236 = 0;
    v237 = 0;
    v238 = 0;
    v229 = v200;
    *v230 = v201;
    *&v230[16] = v202;
    v231 = 0;
    v232 = 0;
    v233 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v80, &v234);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v80, &v229);
    v224 = v200;
    *v225 = v201;
    *&v225[16] = v202;
    v226 = 0;
    v228 = 0;
    v227 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v234, &v229, &v224);
    v206 = v200;
    v207 = v201;
    v208 = v202;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v215, &v206, v183, &v234, &v224);
    v203 = v200;
    v204 = v201;
    v205 = v202;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v206, &v203, v4, &v229, &v224);
    if (v222)
    {
      bzero(v221, 4 * v222);
    }

    if (v213)
    {
      bzero(v212, 4 * v213);
    }

    if (v23 < 1)
    {
      goto LABEL_271;
    }

    v159 = 0;
    while (1)
    {
      v160 = v222;
      if (!v222)
      {
        goto LABEL_257;
      }

      v161 = 0;
      v162 = v219;
      v163 = v220;
      v164 = v221;
      v165 = v223;
      do
      {
        v166 = *v162++;
        if (v166 != 1)
        {
          if (*v164 >= *v163)
          {
            v167 = 0;
            goto LABEL_259;
          }

          v161 += *v165 * *v164;
        }

        ++v165;
        ++v163;
        ++v164;
        --v160;
      }

      while (v160);
      v160 = v161;
LABEL_257:
      v167 = (v218 + 8 * v160);
LABEL_259:
      v168 = v213;
      if (v213)
      {
        v169 = 0;
        v170 = v210;
        v171 = v211;
        v172 = v212;
        v173 = v214;
        do
        {
          v174 = *v170++;
          if (v174 != 1)
          {
            if (*v172 >= *v171)
            {
              goto LABEL_271;
            }

            v169 += *v173 * *v172;
          }

          ++v173;
          ++v171;
          ++v172;
          --v168;
        }

        while (v168);
        v168 = v169;
      }

      if (v167)
      {
        v175 = v209 == 0;
      }

      else
      {
        v175 = 1;
      }

      if (!v175)
      {
        *(v184 + v159) = *v167 * *(v209 + 8 * v168) != 0.0;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v215);
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v206);
        if (++v159 != v23)
        {
          continue;
        }
      }

      goto LABEL_271;
    }
  }

  v234 = v200;
  *v235 = v201;
  *&v235[16] = v202;
  v236 = 0;
  v237 = 0;
  v238 = 0;
  v229 = v200;
  *v230 = v201;
  *&v230[16] = v202;
  v231 = 0;
  v232 = 0;
  v233 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v80, &v234);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v80, &v229);
  v224 = v200;
  *v225 = v201;
  *&v225[16] = v202;
  v226 = 0;
  v228 = 0;
  v227 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v234, &v229, &v224);
  v206 = v200;
  v207 = v201;
  v208 = v202;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v215, &v206, v183, &v234, &v224);
  v203 = v200;
  v204 = v201;
  v205 = v202;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v206, &v203, v4, &v229, &v224);
  if (v222)
  {
    bzero(v221, 4 * v222);
  }

  if (v213)
  {
    bzero(v212, 4 * v213);
  }

  if (v23 < 1)
  {
    goto LABEL_271;
  }

  for (k = 0; k != v23; ++k)
  {
    v82 = v222;
    if (!v222)
    {
LABEL_136:
      v89 = (v218 + 8 * v82);
      goto LABEL_138;
    }

    v83 = 0;
    v84 = v219;
    v85 = v220;
    v86 = v221;
    v87 = v223;
    while (1)
    {
      v88 = *v84++;
      if (v88 != 1)
      {
        break;
      }

LABEL_134:
      ++v87;
      ++v85;
      ++v86;
      if (!--v82)
      {
        v82 = v83;
        goto LABEL_136;
      }
    }

    if (*v86 < *v85)
    {
      v83 += *v87 * *v86;
      goto LABEL_134;
    }

    v89 = 0;
LABEL_138:
    v90 = v213;
    if (v213)
    {
      v91 = 0;
      v92 = v210;
      v93 = v211;
      v94 = v212;
      v95 = v214;
      do
      {
        v96 = *v92++;
        if (v96 != 1)
        {
          if (*v94 >= *v93)
          {
            goto LABEL_271;
          }

          v91 += *v95 * *v94;
        }

        ++v95;
        ++v93;
        ++v94;
        --v90;
      }

      while (v90);
      v90 = v91;
    }

    if (v89)
    {
      v97 = v209 == 0;
    }

    else
    {
      v97 = 1;
    }

    if (v97)
    {
      break;
    }

    *(v184 + 8 * k) = *v89 * *(v209 + 8 * v90);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v215);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v206);
  }

LABEL_271:
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v206);
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v215);
LABEL_272:
  if (*v225)
  {
    v215 = v224;
    v216 = *v225;
    v217 = *&v225[8];
    (*v225)(&v215, v226);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v230)
  {
    v215 = v229;
    v216 = *v230;
    v217 = *&v230[8];
    (*v230)(&v215, v231);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v235)
  {
    v215 = v234;
    v216 = *v235;
    v217 = *&v235[8];
    (*v235)(&v215, v236);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v61 = 0;
LABEL_279:
  if (*v186)
  {
    v215 = v185;
    v216 = *v186;
    v217 = *&v186[8];
    (*v186)(&v215, v187);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v191)
  {
    v215 = v190;
    v216 = *v191;
    v217 = *&v191[8];
    (*v191)(&v215, v192);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v196)
  {
    v215 = v195;
    v216 = *v196;
    v217 = *&v196[8];
    (*v196)(&v215, v197);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  return v61;
}