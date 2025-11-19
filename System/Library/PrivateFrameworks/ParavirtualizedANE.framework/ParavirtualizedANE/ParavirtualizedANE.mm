void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

uint64_t getIOSurface(int a1, os_log_t oslog)
{
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    getIOSurface();
  }

  return 0;
}

void sub_25DF595B0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25DF64438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, void *a27, void *a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  aneserializers::anemodelnewinstanceparams_v1::_ANEModelInstanceParametersSerializerDeserializer::~_ANEModelInstanceParametersSerializerDeserializer(&a34);

  _Unwind_Resume(a1);
}

uint64_t aneserializers::anemodelnewinstanceparams_v1::_ANEWeightSerializerDeserializer::getSHACode(aneserializers::anemodelnewinstanceparams_v1::_ANEWeightSerializerDeserializer *this)
{
  BaseAddress = *(*(this + 4) + 8);
  if (BaseAddress)
  {
    BaseAddress = IOSurfaceGetBaseAddress(BaseAddress);
  }

  if (*(this + 2))
  {
    return BaseAddress + (*(this + 1) + *this);
  }

  else
  {
    return 0;
  }
}

void *aneserializers::anemodelparams_v1::_ANEModelParamsSerializerDeserializer::populateCacheURLIdentifier(aneserializers::anemodelparams_v1::_ANEModelParamsSerializerDeserializer *this, const char *__src, unint64_t a3)
{
  if (*this < a3)
  {
    aneserializers::anemodelparams_v1::_ANEModelParamsSerializerDeserializer::populateCacheURLIdentifier();
  }

  v5 = a3 + 1;
  *this = a3 + 1;
  BaseAddress = *(*(this + 1) + 8);
  if (BaseAddress)
  {
    BaseAddress = IOSurfaceGetBaseAddress(BaseAddress);
    v5 = *this;
  }

  return memcpy(BaseAddress, __src, v5);
}

void sub_25DF67BB0(_Unwind_Exception *a1)
{
  if (v1)
  {
    MEMORY[0x25F8A9280](v1, 0x1000C4077774924);
  }

  _Unwind_Resume(a1);
}

void sub_25DF68C64(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    MEMORY[0x25F8A9280](v2, 0x80C40B8603338);
  }

  if (v1)
  {
    MEMORY[0x25F8A9280](v1, 0x80C40B8603338);
  }

  _Unwind_Resume(exception_object);
}

void aneserializers::anemodelnewinstanceparams_v1::_ANEModelInstanceParametersSerializerDeserializer::_ANEModelInstanceParametersSerializerDeserializer(uint64_t a1, uint64_t a2, void *a3)
{
  a3;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  std::allocate_shared[abi:ne200100]<_IOSurfaceWrapper,std::allocator<_IOSurfaceWrapper>,unsigned int &,NSObject  {objcproto9OS_os_log}* {__strong}&,0>();
}

void std::__shared_ptr_emplace<_IOSurfaceWrapper>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286FC4B68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8A9280);
}

void _IOSurfaceWrapper::~_IOSurfaceWrapper(_IOSurfaceWrapper *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*this == 1)
    {
      IOSurfaceUnlock(v2, 0, 0);
      *this = 0;
      v2 = *(this + 1);
    }

    CFRelease(v2);
    *(this + 1) = 0;
  }
}

void aneserializers::anemodelnewinstanceparams_v1::_ANEProcedureDataSerializerDeserializer::_ANEProcedureDataSerializerDeserializer(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  a3;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  std::allocate_shared[abi:ne200100]<_IOSurfaceWrapper,std::allocator<_IOSurfaceWrapper>,unsigned int &,NSObject  {objcproto9OS_os_log}* {__strong}&,0>();
}

void aneserializers::anemodelnewinstanceparams_v1::_ANEWeightSerializerDeserializer::_ANEWeightSerializerDeserializer(_OWORD *a1, _OWORD *a2, void *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  a3;
  v5 = *(a2 + 12);
  *a1 = *a2;
  *(a1 + 12) = v5;
  std::allocate_shared[abi:ne200100]<_IOSurfaceWrapper,std::allocator<_IOSurfaceWrapper>,unsigned int &,NSObject  {objcproto9OS_os_log}* {__strong}&,0>();
}

void sub_25DF69D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = *(v10 + 40);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(a1);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void aneserializers::anemodelnewinstanceparams_v1::_ANEModelInstanceParametersSerializerDeserializer::~_ANEModelInstanceParametersSerializerDeserializer(aneserializers::anemodelnewinstanceparams_v1::_ANEModelInstanceParametersSerializerDeserializer *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = 0;
    v4 = this + 40;
    do
    {
      v5 = *&v4[8 * v3];
      if (v5)
      {
        aneserializers::anemodelnewinstanceparams_v1::_ANEProcedureDataSerializerDeserializer::~_ANEProcedureDataSerializerDeserializer(v5);
        MEMORY[0x25F8A9280]();
        *&v4[8 * v3] = 0;
        v2 = *(this + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  v6 = *(this + 3);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void aneserializers::anemodelnewinstanceparams_v1::_ANEProcedureDataSerializerDeserializer::~_ANEProcedureDataSerializerDeserializer(aneserializers::anemodelnewinstanceparams_v1::_ANEProcedureDataSerializerDeserializer *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = 0;
    v4 = this + 40;
    do
    {
      v5 = *&v4[8 * v3];
      if (v5)
      {
        v6 = *(v5 + 56);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v7 = *(v5 + 40);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        MEMORY[0x25F8A9280](v5, 0x1020C4076FB8CD1);
        *&v4[8 * v3] = 0;
        v2 = *(this + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  v8 = *(this + 3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void aneserializers::anemodelparams_v1::_ANEModelParamsSerializerDeserializer::_ANEModelParamsSerializerDeserializer(void *a1, void *a2)
{
  *a1 = *a2;
  v2 = MEMORY[0x277D86220];
  std::allocate_shared[abi:ne200100]<_IOSurfaceWrapper,std::allocator<_IOSurfaceWrapper>,unsigned int &,NSObject  {objcproto9OS_os_log}* {__strong}&,0>();
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = result;
  *(a2 + 12) = 1024;
  *(a2 + 14) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_2(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = result;
  *(a2 + 12) = 2048;
  *(a2 + 14) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_6(uint64_t result, float a2)
{
  *v2 = a2;
  *(v2 + 4) = result;
  *(v2 + 12) = 2112;
  *(v2 + 14) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_9(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_10(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_13(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

void OUTLINED_FUNCTION_14(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_21(uint64_t result, float a2)
{
  *v2 = a2;
  *(v2 + 4) = result;
  return result;
}

id OUTLINED_FUNCTION_22(id a1)
{

  return a1;
}

uint64_t OUTLINED_FUNCTION_25(uint64_t result, float *a2, void *a3, float a4)
{
  *a2 = a4;
  *a3 = result;
  return result;
}

void OUTLINED_FUNCTION_30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0x16u);
}

id OUTLINED_FUNCTION_31(id a1)
{

  return a1;
}

void getIOSurface()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void aneserializers::anemodelnewinstanceparams_v1::_ANEModelInstanceParametersSerializerDeserializer::_ANEModelInstanceParametersSerializerDeserializer(unsigned int *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_17();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
  v9 = *MEMORY[0x277D85DE8];
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}