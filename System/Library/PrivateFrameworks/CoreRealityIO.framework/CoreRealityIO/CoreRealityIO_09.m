void sub_24751FC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr((v31 - 128));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a26);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a10);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a12);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v30);
  _Unwind_Resume(a1);
}

void anonymous namespace::SampleBetweenKeyedTimes<pxrInternal__aapl__pxrReserved__::GfVec3f>(uint64_t a1, uint64_t *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetFramesPerSecond(v3);
  v5 = v4;
  v6 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetTimeCodesPerSecond(v6);
  __p = 0;
  v11 = 0;
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamples();
  v7 = 1.0 / v5;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v7;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  LODWORD(v15) = 0;
  v13 = &v14;
  v14 = 0;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfVec3f const&)::_Filler>(v8, ((0.0 - 0.0) / v7 + 1.0 + 0.5), &v13);
  if (((0.0 - 0.0) / v7 + 1.0 + 0.5))
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(v8);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec3f>();
  }

  v15 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

void sub_247520070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void anonymous namespace::SampleBetweenKeyedTimes<pxrInternal__aapl__pxrReserved__::GfVec3d>(uint64_t a1, uint64_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetFramesPerSecond(v3);
  v5 = v4;
  v6 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetTimeCodesPerSecond(v6);
  __p = 0;
  v11 = 0;
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamples();
  v7 = 1.0 / v5;
  v13[5] = 0;
  v14 = 0;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = *&v7;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v15 = 0;
  v16 = 0;
  v13[0] = &v14;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::resize(unsigned long,pxrInternal__aapl__pxrReserved__::GfVec3d const&)::{lambda(pxrInternal__aapl__pxrReserved__::GfVec3d*,pxrInternal__aapl__pxrReserved__::GfVec3d*)#1}>(v8, ((0.0 - 0.0) / v7 + 1.0 + 0.5), v13);
  if (((0.0 - 0.0) / v7 + 1.0 + 0.5))
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DetachIfNotUnique(v8);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec3d>();
  }

  v15 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

void sub_2475202A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void anonymous namespace::SampleBetweenKeyedTimes<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(uint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetFramesPerSecond(v3);
  v5 = v4;
  v6 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetTimeCodesPerSecond(v6);
  __p = 0;
  v11 = 0;
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamples();
  v7 = 1.0 / v5;
  v13[5] = 0;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = *&v7;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  memset(v14, 0, sizeof(v14));
  v13[0] = v14;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::resize(unsigned long,pxrInternal__aapl__pxrReserved__::GfMatrix4d const&)::{lambda(pxrInternal__aapl__pxrReserved__::GfMatrix4d*,pxrInternal__aapl__pxrReserved__::GfMatrix4d*)#1}>(v8, ((0.0 - 0.0) / v7 + 1.0 + 0.5), v13);
  if (((0.0 - 0.0) / v7 + 1.0 + 0.5))
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DetachIfNotUnique(v8);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfMatrix4d>();
  }

  *(&v14[0] + 1) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

void sub_2475204DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void anonymous namespace::SampleBetweenKeyedTimes<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(uint64_t a1, uint64_t *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetFramesPerSecond(v3);
  v5 = v4;
  v6 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetTimeCodesPerSecond(v6);
  __p = 0;
  v22 = 0;
  v23 = 0;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamples();
  v7 = 1.0 / v5;
  v8 = (0.0 - 0.0) / v7 + 1.0 + 0.5;
  v9 = v8;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v26 = v7;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  if (v8)
  {
    v10 = v9 > 0x666666666666666;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>::_AllocateNew(v8);
    v12 = New;
    do
    {
      v13 = v29;
      *v12 = v28;
      *(v12 + 1) = v13;
      v14 = v30;
      v12[4] = v30;
      if (v14)
      {
        v15 = (v14 - 16);
        if (v12[3])
        {
          v15 = v12[3];
        }

        atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
      }

      v12 += 5;
    }

    while (v12 != &New[5 * v9]);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>::_DecRef(&v18);
    v20 = New;
    *&v18 = v9;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v28);
  if (v9)
  {
    if (v20)
    {
      if (*(&v19 + 1) || (v16 = atomic_load(v20 - 2), v16 != 1))
      {
        pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(&v18, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>::_DetachIfNotUnique() [ELEM = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>]");
        Copy = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>::_AllocateCopy(v20, v18, v18);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>::_DecRef(&v18);
        v20 = Copy;
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>();
  }

  *(&v28 + 1) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

void sub_2475207D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a23);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>::_DecRef(&a9);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a21);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::SampleBetweenKeyedTimes<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(uint64_t a1, uint64_t *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetFramesPerSecond(v3);
  v5 = v4;
  v6 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetTimeCodesPerSecond(v6);
  __p = 0;
  v22 = 0;
  v23 = 0;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamples();
  v7 = 1.0 / v5;
  v8 = (0.0 - 0.0) / v7 + 1.0 + 0.5;
  v9 = v8;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v26 = v7;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  if (v8)
  {
    v10 = v9 > 0x666666666666666;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_AllocateNew(v8);
    v12 = New;
    do
    {
      v13 = v29;
      *v12 = v28;
      *(v12 + 1) = v13;
      v14 = v30;
      v12[4] = v30;
      if (v14)
      {
        v15 = (v14 - 16);
        if (v12[3])
        {
          v15 = v12[3];
        }

        atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
      }

      v12 += 5;
    }

    while (v12 != &New[5 * v9]);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_DecRef(&v18);
    v20 = New;
    *&v18 = v9;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v28);
  if (v9)
  {
    if (v20)
    {
      if (*(&v19 + 1) || (v16 = atomic_load(v20 - 2), v16 != 1))
      {
        pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(&v18, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_DetachIfNotUnique() [ELEM = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>]");
        Copy = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_AllocateCopy(v20, v18, v18);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_DecRef(&v18);
        v20 = Copy;
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
  }

  *(&v28 + 1) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

void sub_247520AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a23);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_DecRef(&a9);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a21);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::SampleBetweenKeyedTimes<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(uint64_t a1, uint64_t *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetFramesPerSecond(v3);
  v5 = v4;
  v6 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetTimeCodesPerSecond(v6);
  __p = 0;
  v22 = 0;
  v23 = 0;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamples();
  v7 = 1.0 / v5;
  v8 = (0.0 - 0.0) / v7 + 1.0 + 0.5;
  v9 = v8;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v26 = v7;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  if (v8)
  {
    v10 = v9 > 0x666666666666666;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_AllocateNew(v8);
    v12 = New;
    do
    {
      v13 = v29;
      *v12 = v28;
      *(v12 + 1) = v13;
      v14 = v30;
      v12[4] = v30;
      if (v14)
      {
        v15 = (v14 - 16);
        if (v12[3])
        {
          v15 = v12[3];
        }

        atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
      }

      v12 += 5;
    }

    while (v12 != &New[5 * v9]);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_DecRef(&v18);
    v20 = New;
    *&v18 = v9;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v28);
  if (v9)
  {
    if (v20)
    {
      if (*(&v19 + 1) || (v16 = atomic_load(v20 - 2), v16 != 1))
      {
        pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(&v18, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_DetachIfNotUnique() [ELEM = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>]");
        Copy = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_AllocateCopy(v20, v18, v18);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_DecRef(&v18);
        v20 = Copy;
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>();
  }

  *(&v28 + 1) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

void sub_247520DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a23);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_DecRef(&a9);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a21);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::VtArray<float>::resize<pxrInternal__aapl__pxrReserved__::VtArray<float>::resize(unsigned long,float const&)::{lambda(float *,float *)#1}>(unint64_t *a1, unint64_t a2, __int32 **a3, int16x4_t a4)
{
  v4 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v8 = a1[4];
    if (v8)
    {
      if (!a1[3])
      {
        v9 = atomic_load(v8 - 2);
        if (v9 == 1)
        {
          if (v4 >= a2)
          {
            v14 = a1[4];
          }

          else
          {
            v10 = a1[4];
            if (*(v10 - 8) < a2)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<float>::_AllocateNew(a1, a2);
              v8 = New;
              if (v4)
              {
                v12 = 0;
                do
                {
                  *(New + v12) = *(v10 + v12);
                  v12 += 4;
                }

                while (4 * v4 != v12);
              }
            }

            v13 = 0;
            v14 = v8;
            a4.i32[0] = **a3;
            v15 = (4 * a2 - 4 * v4 - 4) >> 2;
            v16 = vdupq_n_s64(v15);
            v17 = (v15 + 4) & 0x7FFFFFFFFFFFFFFCLL;
            v18 = v8 + v4 + 2;
            do
            {
              v19 = vdupq_n_s64(v13);
              v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_247758360)));
              if (vuzp1_s16(v20, a4).u8[0])
              {
                *(v18 - 2) = a4.i32[0];
              }

              if (vuzp1_s16(v20, a4).i8[2])
              {
                *(v18 - 1) = a4.i32[0];
              }

              if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_247758350)))).i32[1])
              {
                *v18 = a4.i32[0];
                v18[1] = a4.i32[0];
              }

              v13 += 4;
              v18 += 4;
            }

            while (v17 != v13);
          }

LABEL_51:
          if (v14 != a1[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
            a1[4] = v14;
          }

          *a1 = a2;
          return;
        }

        v8 = a1[4];
      }

      if (v4 >= a2)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a1;
      }

      v30 = pxrInternal__aapl__pxrReserved__::VtArray<float>::_AllocateNew(a1, a2);
      v14 = v30;
      if (v4)
      {
        v32 = 4 * v29;
        v33 = v30;
        do
        {
          v34 = *v8;
          v8 = (v8 + 4);
          *v33 = v34;
          v33 = (v33 + 4);
          v32 -= 4;
        }

        while (v32);
      }

      if (v4 < a2)
      {
        v35 = 0;
        v31.i32[0] = **a3;
        v36 = (4 * a2 - 4 * v4 - 4) >> 2;
        v37 = vdupq_n_s64(v36);
        v38 = (v36 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v39 = v30 + v4 + 2;
        do
        {
          v40 = vdupq_n_s64(v35);
          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_247758360)));
          if (vuzp1_s16(v41, v31).u8[0])
          {
            *(v39 - 2) = v31.i32[0];
          }

          if (vuzp1_s16(v41, v31).i8[2])
          {
            *(v39 - 1) = v31.i32[0];
          }

          if (vuzp1_s16(v31, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_247758350)))).i32[1])
          {
            *v39 = v31.i32[0];
            v39[1] = v31.i32[0];
          }

          v35 += 4;
          v39 += 4;
        }

        while (v38 != v35);
      }

      goto LABEL_51;
    }

    if (4 * a2 / a2 == 4)
    {
      v14 = pxrInternal__aapl__pxrReserved__::VtArray<float>::_AllocateNew(a1, a2);
      v21 = 0;
      v22.i32[0] = **a3;
      v23 = (4 * a2 - 4) >> 2;
      v24 = vdupq_n_s64(v23);
      v25 = (v23 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v26 = v14 + 1;
      do
      {
        v27 = vdupq_n_s64(v21);
        v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_247758360)));
        if (vuzp1_s16(v28, v22).u8[0])
        {
          *(v26 - 2) = v22.i32[0];
        }

        if (vuzp1_s16(v28, v22).i8[2])
        {
          *(v26 - 1) = v22.i32[0];
        }

        if (vuzp1_s16(v22, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_247758350)))).i32[1])
        {
          *v26 = v22.i32[0];
          v26[1] = v22.i32[0];
        }

        v21 += 4;
        v26 += 4;
      }

      while (v25 != v21);
      goto LABEL_51;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<float>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<float>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<float>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<float>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<float>>>::_DecrementIfValid(result);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<float>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<float>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<float>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<float>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<float>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtHashValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(unint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    do
    {
      v4 = *v2++;
      v5 = v4;
      if (v4 == 0.0)
      {
        v5 = 0.0;
      }

      v1 = LODWORD(v5) + ((v1 + LODWORD(v5) + (v1 + LODWORD(v5)) * (v1 + LODWORD(v5))) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<float>::operator==(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 4 * *a1 - 4;
  do
  {
    v8 = *v5++;
    v9 = v8;
    v10 = *v6++;
    result = v9 == v10;
    v11 = v9 != v10 || v7 == 0;
    v7 -= 4;
  }

  while (!v11);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<float>>,pxrInternal__aapl__pxrReserved__::VtArray<float> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<float>::_Streamer>(uint64_t *a1)
{
  v1 = *a1;
  *a1 += 4;
  return MEMORY[0x282205FB8](v1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<TimeSampledDataT,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<TimeSampledDataT>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<TimeSampledDataT>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<TimeSampledDataT,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<TimeSampledDataT>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<TimeSampledDataT>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<TimeSampledDataT>>::_DecrementIfValid(0);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<TimeSampledDataT,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<TimeSampledDataT>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<TimeSampledDataT>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 40));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<TimeSampledDataT,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<TimeSampledDataT>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<TimeSampledDataT>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<TimeSampledDataT>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<TimeSampledDataT>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<TimeSampledDataT>>::_DecrementIfValid(uint64_t result)
{
  if (result && atomic_fetch_add_explicit((result + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((result + 24));

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_ProxyHelper<TimeSampledDataT,void>::Equal(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::operator==((a1 + 3), (a2 + 3));
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<double>::resize<pxrInternal__aapl__pxrReserved__::VtArray<double>::resize(unsigned long,double const&)::{lambda(double *,double *)#1}>(unint64_t *a1, unint64_t a2, uint64_t **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<double>::_AllocateNew(a1, a2);
              v7 = New;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  New[i] = *(v9 + i * 8);
                }
              }
            }

            v12 = 0;
            v13 = **a3;
            v14 = (8 * a2 - 8 * v3 - 8) >> 3;
            v15 = (v14 + 2) & 0x3FFFFFFFFFFFFFFELL;
            v16 = vdupq_n_s64(v14);
            v17 = &v7[v3 + 1];
            do
            {
              v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_247758360)));
              if (v18.i8[0])
              {
                *(v17 - 1) = v13;
              }

              if (v18.i8[4])
              {
                *v17 = v13;
              }

              v12 += 2;
              v17 += 2;
            }

            while (v15 != v12);
          }

          v19 = v7;
LABEL_43:
          if (v19 != a1[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
            a1[4] = v19;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v26 = a2;
      }

      else
      {
        v26 = *a1;
      }

      v27 = pxrInternal__aapl__pxrReserved__::VtArray<double>::_AllocateNew(a1, a2);
      v19 = v27;
      if (v3)
      {
        v28 = 8 * v26;
        v29 = v27;
        do
        {
          v30 = *v7++;
          *v29++ = v30;
          v28 -= 8;
        }

        while (v28);
      }

      if (v3 < a2)
      {
        v31 = 0;
        v32 = **a3;
        v33 = (8 * a2 - 8 * v3 - 8) >> 3;
        v34 = (v33 + 2) & 0x3FFFFFFFFFFFFFFELL;
        v35 = vdupq_n_s64(v33);
        v36 = &v27[v3 + 1];
        do
        {
          v37 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(vdupq_n_s64(v31), xmmword_247758360)));
          if (v37.i8[0])
          {
            *(v36 - 1) = v32;
          }

          if (v37.i8[4])
          {
            *v36 = v32;
          }

          v31 += 2;
          v36 += 2;
        }

        while (v34 != v31);
      }

      goto LABEL_43;
    }

    if (8 * a2 / a2 == 8)
    {
      v20 = pxrInternal__aapl__pxrReserved__::VtArray<double>::_AllocateNew(a1, a2);
      v19 = v20;
      v21 = 0;
      v22 = **a3;
      v23 = (8 * a2 - 8) >> 3;
      v24 = vdupq_n_s64(v23);
      do
      {
        v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v21), xmmword_247758360)));
        if (v25.i8[0])
        {
          v20[v21] = v22;
        }

        if (v25.i8[4])
        {
          v20[v21 + 1] = v22;
        }

        v21 += 2;
      }

      while (((v23 + 2) & 0x3FFFFFFFFFFFFFFELL) != v21);
      goto LABEL_43;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(a1);
}

void *pxrInternal__aapl__pxrReserved__::VtArray<double>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique() [T = double]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<double>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 8 * v5;
        v9 = New;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<double>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<double>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<double>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<double>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<double>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<double>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<double>>>::_DecrementIfValid(result);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<double>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<double>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<double>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<double>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<double>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<double>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<double>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<double>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtHashValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(unint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    do
    {
      v4 = *v2++;
      v5 = v4;
      if (v4 == 0.0)
      {
        v5 = 0.0;
      }

      v1 = *&v5 + ((v1 + *&v5 + (v1 + *&v5) * (v1 + *&v5)) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<double>::operator==(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 8 * *a1 - 8;
  do
  {
    v8 = *v5++;
    v9 = v8;
    v10 = *v6++;
    result = v9 == v10;
    v11 = v9 != v10 || v7 == 0;
    v7 -= 8;
  }

  while (!v11);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<double>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<float>>,pxrInternal__aapl__pxrReserved__::VtArray<float> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<double>::_Streamer>(uint64_t *a1)
{
  v1 = *a1;
  *a1 += 8;
  return MEMORY[0x282205FB0](v1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v4 = v2 + 16;
      v8 = *(v2 + 12);
      v9 = 0;
      v10 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float,pxrInternal__aapl__pxrReserved__::GfVec3f const&>(&v9, &v8, v2);
      v5 = bswap64(0x9E3779B97F4A7C55 * v9);
      v1 = v5 + ((v5 + v1 + (v5 + v1) * (v5 + v1)) >> 1);
      v2 = v4;
    }

    while (v3);
    v6 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v6 = 0;
  }

  return bswap64(v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float,pxrInternal__aapl__pxrReserved__::GfVec3f const&>(uint64_t a1, float *a2, float *a3)
{
  v4 = *a2;
  if (*a2 == 0.0)
  {
    v4 = 0.0;
  }

  v5 = LODWORD(v4);
  if (*(a1 + 8))
  {
    v5 = ((*a1 + LODWORD(v4) + (*a1 + LODWORD(v4)) * (*a1 + LODWORD(v4))) >> 1) + LODWORD(v4);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  v8 = 0;
  v9 = 0;
  result = pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&>(&v8, a3, a3 + 1, a3 + 2);
  v7 = bswap64(0x9E3779B97F4A7C55 * v8);
  if (*(a1 + 8))
  {
    v7 += (*a1 + v7 + (*a1 + v7) * (*a1 + v7)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::operator==(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = (a1[4] + 8);
  v6 = 16 * *a1;
  for (i = (*(a2 + 32) + 8); v5[1] == i[1] && *(v5 - 2) == *(i - 2) && *(v5 - 1) == *(i - 1) && *v5 == *i; i += 4)
  {
    v5 += 4;
    v6 -= 16;
    if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7 = 0;
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&>(&v7, v2, v2 + 1, v2 + 2);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 3;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&>(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = *a2;
  if (*(result + 8))
  {
    v4 += (*result + v4 + (*result + v4) * (*result + v4)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  v5 = *a4;
  v6 = *a3 + ((v4 + *a3 + (v4 + *a3) * (v4 + *a3)) >> 1) + v5;
  *result = v5 + ((v6 + v6 * v6) >> 1);
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::operator==(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 6 * v5 - 6;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::GfVec3h::operator==(v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 3;
    v7 += 3;
    v9 = v8;
    v8 -= 6;
  }

  while (v9);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec3f>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 68)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec3d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 71)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::resize(unsigned long,pxrInternal__aapl__pxrReserved__::GfVec3d const&)::{lambda(pxrInternal__aapl__pxrReserved__::GfVec3d*,pxrInternal__aapl__pxrReserved__::GfVec3d*)#1}>(unint64_t *a1, unint64_t a2, __int128 **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_AllocateNew(a1, a2);
              v7 = New;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = &New[v11];
                  v13 = *(v9 + v11 * 8);
                  v12[2] = *(v9 + v11 * 8 + 16);
                  *v12 = v13;
                  v11 += 3;
                }

                while (3 * v3 != v11);
              }
            }

            v14 = *a3;
            v15 = 3 * v3;
            do
            {
              v16 = &v7[v15];
              v17 = *v14;
              v16[2] = *(v14 + 2);
              *v16 = v17;
              v15 += 3;
            }

            while (3 * a2 != v15);
          }

          v18 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a1;
      }

      v25 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_AllocateNew(a1, a2);
      v18 = v25;
      if (v3)
      {
        v26 = 24 * v24;
        v27 = v25;
        do
        {
          v28 = *v7;
          v27[2] = v7[2];
          *v27 = v28;
          v27 += 3;
          v7 += 3;
          v26 -= 24;
        }

        while (v26);
      }

      if (v3 < a2)
      {
        v29 = *a3;
        v30 = 3 * v3;
        do
        {
          v31 = &v25[v30];
          v32 = *v29;
          v31[2] = *(v29 + 2);
          *v31 = v32;
          v30 += 3;
        }

        while (3 * a2 != v30);
      }

      goto LABEL_31;
    }

    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v19 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_AllocateNew(a1, a2);
      v18 = v19;
      v20 = 0;
      v21 = *a3;
      do
      {
        v22 = &v19[v20];
        v23 = *v21;
        v22[2] = *(v21 + 2);
        *v22 = v23;
        v20 += 3;
      }

      while (3 * a2 != v20);
LABEL_31:
      if (v18 != a1[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
        a1[4] = v18;
      }

      *a1 = a2;
      return;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(a1);
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0x555555555555554)
  {
    v3 = -1;
  }

  else
  {
    v3 = 24 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec3d]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 24 * v5;
        v9 = New;
        do
        {
          v10 = *v4;
          v9[2] = *(v4 + 2);
          *v9 = v10;
          v9 += 3;
          v4 = (v4 + 24);
          v8 -= 24;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7 = 0;
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&>(&v7, v2, v2 + 1, v2 + 2);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 3;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&>(uint64_t a1, double *a2, double *a3, double *a4)
{
  v4 = *a2;
  if (*a2 == 0.0)
  {
    v4 = 0.0;
  }

  v5 = v4;
  if (*(a1 + 8))
  {
    *&v5 = *&v4 + ((*a1 + *&v4 + (*a1 + *&v4) * (*a1 + *&v4)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&>(a1, a3, a4);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&>(uint64_t result, double *a2, double *a3)
{
  v3 = *a2;
  if (*a2 == 0.0)
  {
    v3 = 0.0;
  }

  v4 = v3;
  if (*(result + 8))
  {
    *&v4 = *&v3 + ((*result + *&v3 + (*result + *&v3) * (*result + *&v3)) >> 1);
  }

  else
  {
    *(result + 8) = 1;
  }

  v5 = *a3;
  if (*a3 == 0.0)
  {
    v5 = 0.0;
  }

  *result = *&v5 + ((*&v4 + *&v5 + (*&v4 + *&v5) * (*&v4 + *&v5)) >> 1);
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::operator==(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[3 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2]; i += 3)
  {
    v5 += 3;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 76)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::resize(unsigned long,pxrInternal__aapl__pxrReserved__::GfMatrix4d const&)::{lambda(pxrInternal__aapl__pxrReserved__::GfMatrix4d*,pxrInternal__aapl__pxrReserved__::GfMatrix4d*)#1}>(unint64_t *a1, unint64_t a2, __int128 **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_AllocateNew(a1, a2);
              v7 = New;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = &New[v11 / 8];
                  v13 = *(v9 + v11);
                  v14 = *(v9 + v11 + 16);
                  v15 = *(v9 + v11 + 48);
                  *(v12 + 2) = *(v9 + v11 + 32);
                  *(v12 + 3) = v15;
                  *v12 = v13;
                  *(v12 + 1) = v14;
                  v16 = *(v9 + v11 + 64);
                  v17 = *(v9 + v11 + 80);
                  v18 = *(v9 + v11 + 112);
                  *(v12 + 6) = *(v9 + v11 + 96);
                  *(v12 + 7) = v18;
                  *(v12 + 4) = v16;
                  *(v12 + 5) = v17;
                  v11 += 128;
                }

                while (v3 << 7 != v11);
              }
            }

            v19 = *a3;
            v20 = v3 << 7;
            do
            {
              v21 = (v7 + v20);
              v22 = *v19;
              v23 = v19[1];
              v24 = v19[3];
              v21[2] = v19[2];
              v21[3] = v24;
              *v21 = v22;
              v21[1] = v23;
              v25 = v19[4];
              v26 = v19[5];
              v27 = v19[7];
              v21[6] = v19[6];
              v21[7] = v27;
              v21[4] = v25;
              v21[5] = v26;
              v20 += 128;
            }

            while (a2 << 7 != v20);
          }

          v28 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v40 = a2;
      }

      else
      {
        v40 = *a1;
      }

      v41 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_AllocateNew(a1, a2);
      v28 = v41;
      if (v3)
      {
        v42 = v40 << 7;
        v43 = v41;
        do
        {
          v44 = *v7;
          v45 = *(v7 + 1);
          v46 = *(v7 + 3);
          *(v43 + 2) = *(v7 + 2);
          *(v43 + 3) = v46;
          *v43 = v44;
          *(v43 + 1) = v45;
          v47 = *(v7 + 4);
          v48 = *(v7 + 5);
          v49 = *(v7 + 7);
          *(v43 + 6) = *(v7 + 6);
          *(v43 + 7) = v49;
          *(v43 + 4) = v47;
          *(v43 + 5) = v48;
          v7 += 16;
          v43 += 16;
          v42 -= 128;
        }

        while (v42);
      }

      if (v3 < a2)
      {
        v50 = *a3;
        v51 = v3 << 7;
        do
        {
          v52 = (v41 + v51);
          v53 = *v50;
          v54 = v50[1];
          v55 = v50[3];
          v52[2] = v50[2];
          v52[3] = v55;
          *v52 = v53;
          v52[1] = v54;
          v56 = v50[4];
          v57 = v50[5];
          v58 = v50[7];
          v52[6] = v50[6];
          v52[7] = v58;
          v52[4] = v56;
          v52[5] = v57;
          v51 += 128;
        }

        while (a2 << 7 != v51);
      }

      goto LABEL_31;
    }

    v29 = a2 << 7;
    if ((a2 << 7) / a2 == 128)
    {
      v30 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_AllocateNew(a1, a2);
      v28 = v30;
      v31 = 0;
      v32 = *a3;
      do
      {
        v33 = &v30[v31 / 8];
        v34 = *v32;
        v35 = v32[1];
        v36 = v32[3];
        *(v33 + 2) = v32[2];
        *(v33 + 3) = v36;
        *v33 = v34;
        *(v33 + 1) = v35;
        v37 = v32[4];
        v38 = v32[5];
        v39 = v32[7];
        *(v33 + 6) = v32[6];
        *(v33 + 7) = v39;
        *(v33 + 4) = v37;
        *(v33 + 5) = v38;
        v31 += 128;
      }

      while (v29 != v31);
LABEL_31:
      if (v28 != a1[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
        a1[4] = v28;
      }

      *a1 = a2;
      return;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(a1);
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (HIBYTE(a2))
  {
    v3 = -1;
  }

  else
  {
    v3 = (a2 << 7) | 0x10;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = v5 << 7;
        v9 = New;
        do
        {
          v10 = *v4;
          v11 = v4[1];
          v12 = v4[3];
          v9[2] = v4[2];
          v9[3] = v12;
          *v9 = v10;
          v9[1] = v11;
          v13 = v4[4];
          v14 = v4[5];
          v15 = v4[7];
          v9[6] = v4[6];
          v9[7] = v15;
          v9[4] = v13;
          v9[5] = v14;
          v4 += 8;
          v9 += 8;
          v8 -= 128;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7 = 0;
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(&v7, v2, v2 + 1, v2 + 2, v2 + 3, v2 + 4, v2 + 5, v2 + 6, v2 + 7, v2 + 8, v2 + 9, v2 + 10, v2 + 11, v2 + 12, v2 + 13, v2 + 14, v2 + 15);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 16;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12, double *a13, double *a14, double *a15, double *a16, double *a17)
{
  v17 = *a2;
  if (*a2 == 0.0)
  {
    v17 = 0.0;
  }

  v18 = v17;
  if (*(a1 + 8))
  {
    *&v18 = *&v17 + ((*a1 + *&v17 + (*a1 + *&v17) * (*a1 + *&v17)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v18;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12, double *a13, double *a14, double *a15, double *a16)
{
  v16 = *a2;
  if (*a2 == 0.0)
  {
    v16 = 0.0;
  }

  v17 = v16;
  if (*(a1 + 8))
  {
    *&v17 = *&v16 + ((*a1 + *&v16 + (*a1 + *&v16) * (*a1 + *&v16)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v17;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12, double *a13, double *a14, double *a15)
{
  v15 = *a2;
  if (*a2 == 0.0)
  {
    v15 = 0.0;
  }

  v16 = v15;
  if (*(a1 + 8))
  {
    *&v16 = *&v15 + ((*a1 + *&v15 + (*a1 + *&v15) * (*a1 + *&v15)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v16;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12, double *a13, double *a14)
{
  v14 = *a2;
  if (*a2 == 0.0)
  {
    v14 = 0.0;
  }

  v15 = v14;
  if (*(a1 + 8))
  {
    *&v15 = *&v14 + ((*a1 + *&v14 + (*a1 + *&v14) * (*a1 + *&v14)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v15;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12, double *a13)
{
  v13 = *a2;
  if (*a2 == 0.0)
  {
    v13 = 0.0;
  }

  v14 = v13;
  if (*(a1 + 8))
  {
    *&v14 = *&v13 + ((*a1 + *&v13 + (*a1 + *&v13) * (*a1 + *&v13)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v14;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12)
{
  v12 = *a2;
  if (*a2 == 0.0)
  {
    v12 = 0.0;
  }

  v13 = v12;
  if (*(a1 + 8))
  {
    *&v13 = *&v12 + ((*a1 + *&v12 + (*a1 + *&v12) * (*a1 + *&v12)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v13;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11)
{
  v11 = *a2;
  if (*a2 == 0.0)
  {
    v11 = 0.0;
  }

  v12 = v11;
  if (*(a1 + 8))
  {
    *&v12 = *&v11 + ((*a1 + *&v11 + (*a1 + *&v11) * (*a1 + *&v11)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v12;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10)
{
  v10 = *a2;
  if (*a2 == 0.0)
  {
    v10 = 0.0;
  }

  v11 = v10;
  if (*(a1 + 8))
  {
    *&v11 = *&v10 + ((*a1 + *&v10 + (*a1 + *&v10) * (*a1 + *&v10)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v11;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(a1, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9)
{
  v9 = *a2;
  if (*a2 == 0.0)
  {
    v9 = 0.0;
  }

  v10 = v9;
  if (*(a1 + 8))
  {
    *&v10 = *&v9 + ((*a1 + *&v9 + (*a1 + *&v9) * (*a1 + *&v9)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v10;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(a1, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8)
{
  v8 = *a2;
  if (*a2 == 0.0)
  {
    v8 = 0.0;
  }

  v9 = v8;
  if (*(a1 + 8))
  {
    *&v9 = *&v8 + ((*a1 + *&v8 + (*a1 + *&v8) * (*a1 + *&v8)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v9;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&>(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7)
{
  v7 = *a2;
  if (*a2 == 0.0)
  {
    v7 = 0.0;
  }

  v8 = v7;
  if (*(a1 + 8))
  {
    *&v8 = *&v7 + ((*a1 + *&v7 + (*a1 + *&v7) * (*a1 + *&v7)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&>(a1, a3, a4, a5, a6, a7);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6)
{
  v6 = *a2;
  if (*a2 == 0.0)
  {
    v6 = 0.0;
  }

  v7 = v6;
  if (*(a1 + 8))
  {
    *&v7 = *&v6 + ((*a1 + *&v6 + (*a1 + *&v6) * (*a1 + *&v6)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&>(a1, a3, a4, a5, a6);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&>(uint64_t a1, double *a2, double *a3, double *a4, double *a5)
{
  v5 = *a2;
  if (*a2 == 0.0)
  {
    v5 = 0.0;
  }

  v6 = v5;
  if (*(a1 + 8))
  {
    *&v6 = *&v5 + ((*a1 + *&v5 + (*a1 + *&v5) * (*a1 + *&v5)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&>(a1, a3, a4, a5);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::operator==(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = (v5 << 7) - 128;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==();
    if (!result)
    {
      break;
    }

    v6 += 128;
    v7 += 128;
    v9 = v8;
    v8 -= 128;
  }

  while (v9);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 18)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>::_AllocateNew(unint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[256]>(&v5);
  if (a1 > 0x333333333333332)
  {
    v2 = -1;
  }

  else
  {
    v2 = 40 * a1 + 16;
  }

  v3 = operator new(v2);
  *v3 = 1;
  v3[1] = a1;
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v3 + 2;
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>::_AllocateCopy(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>::_AllocateNew(a2);
  if (a3)
  {
    v6 = a1 + 40 * a3;
    v7 = result;
    do
    {
      v8 = *(a1 + 16);
      *v7 = *a1;
      *(v7 + 1) = v8;
      v9 = *(a1 + 32);
      v7[4] = v9;
      if (v9)
      {
        v10 = (v9 - 16);
        if (v7[3])
        {
          v10 = v7[3];
        }

        atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
      }

      a1 += 40;
      v7 += 5;
    }

    while (a1 != v6);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>::_DecRef(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = a1 + 3;
    v3 = a1[3];
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
      {
        __dmb(9u);
        v7 = *(*v4 + 8);
        if (v7)
        {
          v7();
        }
      }
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 40 * *a1;
        do
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v5);
          v5 += 40;
          v6 -= 40;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[256]>(uint64_t a1)
{
  v2 = atomic_load(MEMORY[0x277D86538]);
  if (v2)
  {
    v3 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin();
    *a1 = v3;
    *(a1 + 8) = 2 * (v3 != 0);
    if (v3)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin();
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    v4 = v2;
    do
    {
      v6 = *v4;
      v4 += 5;
      v5 = v6;
      v1 = v6 + ((v6 + v1 + (v6 + v1) * (v6 + v1)) >> 1);
      if (v6)
      {
        v7 = v2[4];
        do
        {
          --v5;
          v11 = 0;
          v12 = 0;
          pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&>(&v11, v7, v7 + 1, v7 + 2);
          v8 = bswap64(0x9E3779B97F4A7C55 * v11);
          v1 = v8 + ((v8 + v1 + (v8 + v1) * (v8 + v1)) >> 1);
          v7 += 3;
        }

        while (v5);
      }

      v2 = v4;
      --v3;
    }

    while (v3);
    v9 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v9 = 0;
  }

  return bswap64(v9);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 40));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>>>::_DecrementIfValid(uint64_t result)
{
  if (result && atomic_fetch_add_explicit((result + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>::operator==(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 40 * v5 - 40;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::operator==(v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 5;
    v7 += 40;
    v9 = v8;
    v8 -= 40;
  }

  while (v9);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>::_Streamer>(uint64_t *a1)
{
  v1 = *a1;
  *a1 += 40;
  v3 = *(v1 + 32);
  return pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 21)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_AllocateNew(unint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[256]>(&v5);
  if (a1 > 0x333333333333332)
  {
    v2 = -1;
  }

  else
  {
    v2 = 40 * a1 + 16;
  }

  v3 = operator new(v2);
  *v3 = 1;
  v3[1] = a1;
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v3 + 2;
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_AllocateCopy(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_AllocateNew(a2);
  if (a3)
  {
    v6 = a1 + 40 * a3;
    v7 = result;
    do
    {
      v8 = *(a1 + 16);
      *v7 = *a1;
      *(v7 + 1) = v8;
      v9 = *(a1 + 32);
      v7[4] = v9;
      if (v9)
      {
        v10 = (v9 - 16);
        if (v7[3])
        {
          v10 = v7[3];
        }

        atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
      }

      a1 += 40;
      v7 += 5;
    }

    while (a1 != v6);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_DecRef(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = a1 + 3;
    v3 = a1[3];
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
      {
        __dmb(9u);
        v7 = *(*v4 + 8);
        if (v7)
        {
          v7();
        }
      }
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 40 * *a1;
        do
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v5);
          v5 += 40;
          v6 -= 40;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    v4 = v2;
    do
    {
      v6 = *v4;
      v4 += 5;
      v5 = v6;
      v1 = v6 + ((v6 + v1 + (v6 + v1) * (v6 + v1)) >> 1);
      if (v6)
      {
        v7 = v2[4];
        do
        {
          --v5;
          v11 = 0;
          v12 = 0;
          pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&>(&v11, v7, v7 + 1, v7 + 2);
          v8 = bswap64(0x9E3779B97F4A7C55 * v11);
          v1 = v8 + ((v8 + v1 + (v8 + v1) * (v8 + v1)) >> 1);
          v7 += 3;
        }

        while (v5);
      }

      v2 = v4;
      --v3;
    }

    while (v3);
    v9 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v9 = 0;
  }

  return bswap64(v9);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 40));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>>::_DecrementIfValid(uint64_t result)
{
  if (result && atomic_fetch_add_explicit((result + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>::operator==(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 40 * v5 - 40;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::operator==(v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 5;
    v7 += 40;
    v9 = v8;
    v8 -= 40;
  }

  while (v9);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_Streamer>(uint64_t *a1)
{
  v1 = *a1;
  *a1 += 40;
  v3 = *(v1 + 32);
  return pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 41)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_AllocateNew(unint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[256]>(&v5);
  if (a1 > 0x333333333333332)
  {
    v2 = -1;
  }

  else
  {
    v2 = 40 * a1 + 16;
  }

  v3 = operator new(v2);
  *v3 = 1;
  v3[1] = a1;
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v3 + 2;
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_AllocateCopy(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_AllocateNew(a2);
  if (a3)
  {
    v6 = a1 + 40 * a3;
    v7 = result;
    do
    {
      v8 = *(a1 + 16);
      *v7 = *a1;
      *(v7 + 1) = v8;
      v9 = *(a1 + 32);
      v7[4] = v9;
      if (v9)
      {
        v10 = (v9 - 16);
        if (v7[3])
        {
          v10 = v7[3];
        }

        atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
      }

      a1 += 40;
      v7 += 5;
    }

    while (a1 != v6);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_DecRef(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = a1 + 3;
    v3 = a1[3];
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
      {
        __dmb(9u);
        v7 = *(*v4 + 8);
        if (v7)
        {
          v7();
        }
      }
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 40 * *a1;
        do
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v5);
          v5 += 40;
          v6 -= 40;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    v4 = v2;
    do
    {
      v6 = *v4;
      v4 += 5;
      v5 = v6;
      v1 = v6 + ((v6 + v1 + (v6 + v1) * (v6 + v1)) >> 1);
      if (v6)
      {
        v7 = v2[4];
        do
        {
          --v5;
          v8 = v7 + 16;
          v12 = *(v7 + 12);
          v13 = 0;
          v14 = 0;
          pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float,pxrInternal__aapl__pxrReserved__::GfVec3f const&>(&v13, &v12, v7);
          v9 = bswap64(0x9E3779B97F4A7C55 * v13);
          v1 = v9 + ((v9 + v1 + (v9 + v1) * (v9 + v1)) >> 1);
          v7 = v8;
        }

        while (v5);
      }

      v2 = v4;
      --v3;
    }

    while (v3);
    v10 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v10 = 0;
  }

  return bswap64(v10);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 40));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>>>::_DecrementIfValid(uint64_t result)
{
  if (result && atomic_fetch_add_explicit((result + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>::operator==(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 40 * v5 - 40;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::operator==(v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 5;
    v7 += 40;
    v9 = v8;
    v8 -= 40;
  }

  while (v9);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_Streamer>(uint64_t *a1)
{
  v1 = *a1;
  *a1 += 40;
  v3 = *(v1 + 32);
  return pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
}

uint64_t RIOPxrUsdShadeMaterialBindingAPIGetTypeID()
{
  if (qword_27EE52E08 != -1)
  {
    dispatch_once(&qword_27EE52E08, &__block_literal_global_5);
  }

  return _MergedGlobals_10;
}

void __RIOPxrUsdShadeMaterialBindingAPIGetTypeID_block_invoke()
{
  if (!_MergedGlobals_10)
  {
    _MergedGlobals_10 = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrUsdShadeMaterialBindingAPICollectionBindingGetTypeID()
{
  if (qword_27EE52E18 != -1)
  {
    dispatch_once(&qword_27EE52E18, &__block_literal_global_2_0);
  }

  return qword_27EE52E10;
}

void __RIOPxrUsdShadeMaterialBindingAPICollectionBindingGetTypeID_block_invoke()
{
  if (!qword_27EE52E10)
  {
    qword_27EE52E10 = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef()
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v6 = 0;
  v5[0] = MEMORY[0x277D867B8] + 16;
  v0 = *MEMORY[0x277CBECE8];
  if (qword_27EE52E08 != -1)
  {
    dispatch_once(&qword_27EE52E08, &__block_literal_global_5);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v2 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    *(Instance + 16) = MEMORY[0x277D86728] + 16;
    v3 = v6;
    *(Instance + 40) = v6;
    if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *(Instance + 40) &= 0xFFFFFFFFFFFFFFF8;
    }

    *v2 = MEMORY[0x277D867B8] + 16;
  }

  MEMORY[0x24C1A5AA0](v5);
  return Instance;
}

uint64_t RIOPxrUsdShadeMaterialBindingAPICopyDirectBinding(uint64_t a1)
{
  v1 = atomic_load(MEMORY[0x277D86568]);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetDirectBinding(v4, (a1 + 16), v1);
  v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v4);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

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

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v4);
  return v2;
}

void sub_247525588(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::DirectBinding::~DirectBinding(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::DirectBinding::~DirectBinding(pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::DirectBinding *this)
{
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 24);
  v4 = *(this + 2);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

uint64_t RIOPxrUsdShadeMaterialBindingAPIBind(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = (a2 + 24);
  }

  else
  {
    v3 = 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v13, (a1 + 24), (a1 + 32));
  v17[0] = v13;
  v17[1] = v3;
  realityio::makeWriteMutexForUsdObjects<pxrInternal__aapl__pxrReserved__::UsdPrim **>(v12, v17, &v18);
  realityio::MultipleLayerMutex::lock(v12);
  v5 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D86680], v4);
  pxrInternal__aapl__pxrReserved__::UsdPrim::ApplyAPI(v13, v5);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v11[0] = (MEMORY[0x277D86758] + 16);
  v6 = atomic_load(MEMORY[0x277D86568]);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
  }

  v7 = atomic_load(MEMORY[0x277D86568]);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
  }

  v8 = pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::Bind((a1 + 16), v11, (v6 + 40), v7);
  MEMORY[0x24C1A5510](v11);
  realityio::MultipleLayerMutex::unlock(v12);
  v11[0] = v12;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](v11);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_2475257BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t realityio::makeWriteMutexForUsdObjects<pxrInternal__aapl__pxrReserved__::UsdPrim **>(void *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, pxrInternal__aapl__pxrReserved__::UsdObject **a3)
{
  *__p = 0u;
  v46 = 0u;
  v47 = 1065353216;
  if (a2 != a3)
  {
    v4 = a2;
    while (1)
    {
      v5 = *v4;
      if (*v4 && (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(*v4) & 1) != 0)
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v48, v5);
        v6 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v48);
        EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v6);
        v8 = EditTarget[1];
        *&v44[0] = *EditTarget;
        *(&v44[0] + 1) = v8;
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
        }

        v9 = v49;
        if (v49 && atomic_fetch_add_explicit(v49 + 2, 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v9 + 8))(v9);
        }
      }

      else
      {
        v44[0] = 0uLL;
      }

      v10 = bswap64(0x9E3779B97F4A7C55 * pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v44));
      v11 = __p[1];
      if (!__p[1])
      {
        goto LABEL_27;
      }

      v12 = vcnt_s8(__p[1]);
      v12.i16[0] = vaddlv_u8(v12);
      v13 = v12.u32[0];
      if (v12.u32[0] > 1uLL)
      {
        v14 = v10;
        if (v10 >= __p[1])
        {
          v14 = v10 % __p[1];
        }
      }

      else
      {
        v14 = (__p[1] - 1) & v10;
      }

      v15 = *(__p[0] + v14);
      if (!v15 || (v16 = *v15) == 0)
      {
LABEL_27:
        operator new();
      }

      while (1)
      {
        v17 = v16[1];
        if (v17 == v10)
        {
          break;
        }

        if (v13 > 1)
        {
          if (v17 >= v11)
          {
            v17 %= v11;
          }
        }

        else
        {
          v17 &= v11 - 1;
        }

        if (v17 != v14)
        {
          goto LABEL_27;
        }

LABEL_26:
        v16 = *v16;
        if (!v16)
        {
          goto LABEL_27;
        }
      }

      UniqueIdentifier = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier((v16 + 2));
      if (UniqueIdentifier != pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v44))
      {
        goto LABEL_26;
      }

      v19 = *(&v44[0] + 1);
      if (*(&v44[0] + 1) && atomic_fetch_add_explicit((*(&v44[0] + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v19 + 8))(v19);
      }

      if (++v4 == a3)
      {
        v20 = *(&v46 + 1);
        goto LABEL_34;
      }
    }
  }

  v20 = 0;
LABEL_34:
  memset(v44, 0, 24);
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::reserve(v44, v20);
  v21 = *(&v44[0] + 1);
  v22 = v46;
  if (v46)
  {
    v23 = 0;
    v24 = 0;
    v25 = v46;
    do
    {
      v25 = *v25;
      --v24;
      v23 -= 16;
    }

    while (v25);
    if (~v24 >= (*&v44[1] - *(&v44[0] + 1)) >> 4)
    {
      v27 = (*(&v44[0] + 1) - *&v44[0]) >> 4;
      v28 = v27 - v24;
      if (v28 >> 60)
      {
        std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
      }

      v29 = *&v44[1] - *&v44[0];
      if ((*&v44[1] - *&v44[0]) >> 3 > v28)
      {
        v28 = v29 >> 3;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFF0)
      {
        v30 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      v51 = v44;
      if (v30)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>(v44, v30);
      }

      v31 = (16 * v27);
      v48 = 0;
      v49 = (16 * v27);
      *(&v50 + 1) = 0;
      v32 = (16 * v27 - v23);
      do
      {
        *v31 = v22[2];
        v33 = v22[3];
        v31[1] = v33;
        if (v33)
        {
          atomic_fetch_add_explicit((v33 + 8), 1u, memory_order_relaxed);
        }

        v31 += 2;
        v22 = *v22;
      }

      while (v32 != v31);
      *&v50 = 16 * v27 - v23;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*>(v44, v21, *(&v44[0] + 1), v32);
      *&v50 = v50 + *(&v44[0] + 1) - v21;
      *(&v44[0] + 1) = v21;
      v34 = (v49 + *&v44[0] - v21);
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*>(v44, *&v44[0], v21, v34);
      v35 = *&v44[0];
      v36 = *&v44[1];
      *&v44[0] = v34;
      *(v44 + 8) = v50;
      *&v50 = v35;
      *(&v50 + 1) = v36;
      v48 = v35;
      v49 = v35;
      std::__split_buffer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::~__split_buffer(&v48);
      v21 = *(&v44[0] + 1);
    }

    else
    {
      v52 = *(&v44[0] + 1);
      v53 = *(&v44[0] + 1);
      v48 = v44;
      v49 = &v52;
      *&v50 = &v53;
      do
      {
        *v21 = v22[2];
        v26 = v22[3];
        v21[1] = v26;
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1u, memory_order_relaxed);
        }

        v22 = *v22;
        v21 += 2;
        v53 = v21;
      }

      while (v22);
      BYTE8(v50) = 1;
      std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*>>::~__exception_guard_exceptions[abi:ne200100](&v48);
      *(&v44[0] + 1) = v21;
    }
  }

  v37 = *&v44[0];
  v38 = *&v44[1];
  v39 = 126 - 2 * __clz((v21 - *&v44[0]) >> 4);
  v40 = v21 == *&v44[0];
  *a1 = *&v44[0];
  a1[1] = v21;
  a1[2] = v38;
  memset(v44, 0, 24);
  if (v40)
  {
    v41 = 0;
  }

  else
  {
    v41 = v39;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,false>(v37, v21, &v52, v41, 1);
  v48 = v44;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](&v48);
  return std::__hash_table<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::~__hash_table(__p);
}

void sub_247525F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  *(v3 - 88) = va;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100]((v3 - 88));
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdShadeMaterialBindingAPIUnbind(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v6, (a1 + 24), (a1 + 32));
  v2 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(&v6);
  std::recursive_mutex::lock(v2);
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

  v3 = atomic_load(MEMORY[0x277D86568]);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
  }

  v4 = pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::UnbindDirectBinding((a1 + 16), v3);
  std::recursive_mutex::unlock(v2);
  return v4;
}

uint64_t RIOPxrUsdShadeMaterialBindingAPIBindCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = (a2 + 24);
  }

  else
  {
    v4 = 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::CollectionBinding::GetCollection(&v21, (a3 + 16));
  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v17, &v22, v23);
  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v13, (a1 + 24), (a1 + 32));
  v24[0] = v13;
  v24[1] = v17;
  v24[2] = v4;
  realityio::makeWriteMutexForUsdObjects<pxrInternal__aapl__pxrReserved__::UsdPrim **>(v12, v24, &v25);
  realityio::MultipleLayerMutex::lock(v12);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v10 = 0;
  v11[0] = (MEMORY[0x277D86758] + 16);
  v5 = atomic_load(MEMORY[0x277D86568]);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
  }

  v6 = atomic_load(MEMORY[0x277D86568]);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
  }

  v7 = pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::Bind((a1 + 16), &v21, v11, &v10, (v5 + 40), v6);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5510](v11);
  realityio::MultipleLayerMutex::unlock(v12);
  v11[0] = v12;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](v11);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14);
  }

  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
  if (v18)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v18);
  }

  MEMORY[0x24C1A5470](&v21);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_247526338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t RIOPxrUsdShadeMaterialBindingAPIUnbindCollection(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::CollectionBinding::GetCollection(&v17, (a2 + 16));
  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v13, (a1 + 24), (a1 + 32));
  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v9, &v18, &v19);
  v22[0] = v13;
  v22[1] = v9;
  realityio::makeWriteMutexForUsdObjects<pxrInternal__aapl__pxrReserved__::UsdPrim **>(v8, v22, &v23);
  realityio::MultipleLayerMutex::lock(v8);
  v21 = v20;
  if ((v20 & 7) != 0)
  {
    v3 = (v20 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v3;
    }
  }

  v4 = atomic_load(MEMORY[0x277D86568]);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
  }

  v5 = pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::UnbindCollectionBinding((a1 + 16), &v21, v4);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::MultipleLayerMutex::unlock(v8);
  v21 = v8;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](&v21);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10);
  }

  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14);
  }

  MEMORY[0x24C1A5470](&v17);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_247526594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t RIOPxrUsdShadeMaterialBindingAPICopyMaterialBindingStrengthForDirectBinding(uint64_t a1)
{
  v1 = atomic_load(MEMORY[0x277D86568]);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetDirectBinding(v5, (a1 + 16), v1);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetMaterialBindingStrength();
  v2 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken>(&v4);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

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

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v5);
  return v2;
}

void sub_247526730(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::DirectBinding::~DirectBinding(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken>(void *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOPxrTfTokenGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrTfTokenGetTypeID::onceToken, &__block_literal_global_25);
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = *a1;
    *a1 = 0;
  }

  return result;
}

uint64_t RIOPxrUsdShadeMaterialBindingAPISetMaterialBindingStrengthForDirectBinding(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v6, (a1 + 24), (a1 + 32));
  v2 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(&v6);
  std::recursive_mutex::lock(v2);
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

  v3 = atomic_load(MEMORY[0x277D86568]);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetDirectBinding(&v6, (a1 + 16), v3);
  v4 = pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::SetMaterialBindingStrength();
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

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

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  std::recursive_mutex::unlock(v2);
  return v4;
}

void sub_247526928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::DirectBinding::~DirectBinding(va);
  std::recursive_mutex::unlock(v2);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrUsdShadeMaterialBindingAPICopyCollectionBindings(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v3 = atomic_load(MEMORY[0x277D86568]);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetCollectionBindingRels(&v28, (a1 + 16), v3);
  v4 = v29;
  if (v28 != v29)
  {
    v5 = v28 + 16;
    v14 = *MEMORY[0x277CBECE8];
    do
    {
      v6 = v5 - 16;
      v23 = *(v5 - 16);
      v7 = *(v5 - 8);
      v24 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v25, v5);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v26, (v5 + 4));
      v8 = *(v5 + 8);
      v27 = v8;
      if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v27 &= 0xFFFFFFFFFFFFFFF8;
      }

      MEMORY[0x24C1A5A40](&v16, &v23);
      if (pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::CollectionBinding::IsCollectionBindingRel() && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
      {
        if (qword_27EE52E18 != -1)
        {
          dispatch_once(&qword_27EE52E18, &__block_literal_global_2_0);
        }

        Instance = _CFRuntimeCreateInstance();
        v10 = Instance;
        if (Instance)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((Instance + 16), &v16);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v10 + 20), &v16 + 1);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v10 + 24), &v17);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v10 + 28), v18);
          *(v10 + 32) = v18[1];
          v11 = v19;
          *(v10 + 40) = v19;
          if (v11)
          {
            atomic_fetch_add_explicit((v11 + 48), 1uLL, memory_order_relaxed);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v10 + 48), &v20);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v10 + 52), &v21);
          v12 = v22;
          *(v10 + 56) = v22;
          if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *(v10 + 56) &= 0xFFFFFFFFFFFFFFF8;
          }
        }

        v15 = v10;
        CFArrayAppendValue(Mutable, v10);
        realityio::WrappedCFRef<RIOPxrUsdShadeMaterialBindingAPICollectionBinding *>::~WrappedCFRef(&v15);
      }

      pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::CollectionBinding::~CollectionBinding(&v16);
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
      if (v24)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v24);
      }

      v5 += 32;
    }

    while (v6 + 32 != v4);
  }

  v16 = &v28;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__destroy_vector::operator()[abi:ne200100](&v16);
  return Mutable;
}

void sub_247526BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  realityio::WrappedCFRef<RIOPxrUsdShadeMaterialBindingAPICollectionBinding *>::~WrappedCFRef(&a11);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::CollectionBinding::~CollectionBinding(&a12);
  pxrInternal__aapl__pxrReserved__::UsdRelationship::~UsdRelationship(&a18);
  a12 = &a22;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdShadeMaterialBindingAPICopyCollectionBindingPrimCollectionName(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::CollectionBinding::GetCollection(v4, (a1 + 16));
  v6 = v5;
  if ((v5 & 7) != 0)
  {
    v1 = v5 & 0xFFFFFFFFFFFFFFF8;
    if ((atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v1;
    }
  }

  v2 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken>(&v6);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5470](v4);
  return v2;
}

void sub_247526D4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 - 24);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5470](va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdShadeMaterialBindingAPICopyCollectionBindingStrength(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::CollectionBinding::GetCollection(&v8, (a2 + 16));
  v12 = v11;
  if ((v11 & 7) != 0)
  {
    v3 = v11 & 0xFFFFFFFFFFFFFFF8;
    if ((atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v3;
    }
  }

  MEMORY[0x24C1A5470](&v8);
  v4 = atomic_load(MEMORY[0x277D86568]);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetCollectionBindingRel(&v8, (a1 + 16), &v12, v4);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetMaterialBindingStrength();
  v5 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken>(&v7);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9);
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v5;
}

void sub_247526E98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdRelationship::~UsdRelationship(va);
  v4 = *(v2 - 24);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdShadeMaterialBindingAPISetCollectionBindingStrength(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::CollectionBinding::GetCollection(&v22, (a2 + 16));
  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v18, (a1 + 24), (a1 + 32));
  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v14, &v23, &v24);
  v26[0] = v18;
  v26[1] = v14;
  realityio::makeWriteMutexForUsdObjects<pxrInternal__aapl__pxrReserved__::UsdPrim **>(v13, v26, &v27);
  realityio::MultipleLayerMutex::lock(v13);
  v12 = v25;
  if ((v25 & 7) != 0)
  {
    v3 = v25 & 0xFFFFFFFFFFFFFFF8;
    if ((atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v3;
    }
  }

  v4 = atomic_load(MEMORY[0x277D86568]);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetCollectionBindingRel(&v8, (a1 + 16), &v12, v4);
  v5 = pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::SetMaterialBindingStrength();
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9);
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::MultipleLayerMutex::unlock(v13);
  v8 = v13;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v15);
  }

  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
  if (v19)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v19);
  }

  MEMORY[0x24C1A5470](&v22);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_2475270F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t RIOPxrUsdShadeMaterialBindingAPICopyComputedBoundMaterial(uint64_t a1)
{
  v1 = atomic_load(MEMORY[0x277D86568]);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial((a1 + 16), v1, 0);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(v4, &v5);
  v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  MEMORY[0x24C1A5510](v4);
  return v2;
}

void sub_247527240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a12);
  MEMORY[0x24C1A5510](&a9);
  _Unwind_Resume(a1);
}

void std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

atomic_uint *std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__base_destruct_at_end[abi:ne200100](atomic_uint *result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 1); i != a2; i -= 16)
  {
    result = *(i - 8);
    if (result && atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      result = (*(*result + 8))(result);
    }
  }

  *(v3 + 1) = a2;
  return result;
}

void *std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>(result, a2);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_24752750C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3 && atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*>(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4++ = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      v6 += 16;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    do
    {
      v7 = *(v5 + 8);
      if (v7 && atomic_fetch_add_explicit(v7 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v7 + 8))(v7);
      }

      v5 += 16;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*>::operator()[abi:ne200100](uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    if (result)
    {
      if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t std::__split_buffer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      *(v4 + 16) = v2 - 16;
      result = *(v2 - 8);
      if (result)
      {
        if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          result = (*(*result + 8))(result);
        }
      }

      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;
  *(a2 + 8) = 0;
  if (v4 && atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  *a2 = 0;
  return a1;
}

atomic_uint **pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator=(atomic_uint **a1, atomic_uint **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
  }

  if (v3 && atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,false>(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v21 = a2;
  v22 = result;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = (v7 - v8) >> 4;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v21 = (v7 - 4);
        UniqueIdentifier = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier((v7 - 4));
        result = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v8);
        if (UniqueIdentifier < result)
        {
          return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&>(&v22, &v21);
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,0>(v8, v8 + 16, v8 + 32, (v7 - 4));
    }

    if (v10 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,0>(v8, v8 + 16, v8 + 32, v8 + 48, (v7 - 4));
    }

LABEL_10:
    if (v10 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>(v8, v7);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>(v8, v7);
      }
    }

    if (i == 1)
    {
      if (v8 != v7)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>(v8, v7, v7, a3);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = v8 + 16 * (v10 >> 1);
    v13 = (v7 - 4);
    if (v10 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,0>(v8 + 16 * (v10 >> 1), v8, v13);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,0>(v8, v8 + 16 * (v10 >> 1), v13);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,0>(v8 + 16, v12 - 16, (v7 - 8));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,0>(v8 + 32, v8 + 16 + 16 * v11, (v7 - 12));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,0>(v12 - 16, v12, v8 + 16 + 16 * v11);
      v20 = *v8;
      *v8 = 0;
      *(v8 + 8) = 0;
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator=(v8, v12);
      v14 = *(v12 + 8);
      *v12 = v20;
      if (v14 && atomic_fetch_add_explicit(v14 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v14 + 8))(v14);
      }
    }

    v8 = v22;
    if (a5)
    {
      v7 = v21;
    }

    else
    {
      v15 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v22 - 16);
      v7 = v21;
      if (v15 >= pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v22))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,std::__less<void,void> &>(v22, v21);
        v8 = result;
        goto LABEL_29;
      }
    }

    v16 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,std::__less<void,void> &>(v22, v7);
    if ((v17 & 1) == 0)
    {
      goto LABEL_27;
    }

    v18 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>(v22, v16);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>(v16 + 16, v7);
    if (result)
    {
      if (v18)
      {
        return result;
      }

      v21 = v16;
      v7 = v16;
    }

    else
    {
      if (!v18)
      {
LABEL_27:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,false>(v22, v16, a3, -i, a5 & 1);
        v8 = v16 + 16;
LABEL_29:
        a5 = 0;
        v22 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v22 = v16 + 16;
      v8 = v16 + 16;
    }
  }

  return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,0>(v8, v8 + 16, (v7 - 4));
}

atomic_uint *std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v6 = *v2;
  *v2 = 0;
  *(v2 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator=(v2, v3);
  result = *(v3 + 8);
  *v3 = v6;
  if (result && atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = a1;
  v17 = a3;
  UniqueIdentifier = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a2);
  v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a1);
  v8 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a3);
  v9 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a2);
  if (UniqueIdentifier < v7)
  {
    if (v8 < v9)
    {
      v10 = &v19;
LABEL_9:
      v13 = &v17;
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&>(&v19, &v18);
    v14 = v18;
    v15 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v17);
    if (v15 < pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v14))
    {
      v10 = &v18;
      goto LABEL_9;
    }

    return 1;
  }

  if (v8 < v9)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&>(&v18, &v17);
    v11 = v19;
    v12 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v18);
    if (v12 < pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v11))
    {
      v10 = &v19;
      v13 = &v18;
LABEL_10:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&>(v10, v13);
      return 1;
    }

    return 1;
  }

  return 0;
}

atomic_uint *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  v15 = a1;
  v12 = a4;
  v13 = a3;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,0>(a1, a2, a3);
  UniqueIdentifier = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a4);
  result = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a3);
  if (UniqueIdentifier < result)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&>(&v13, &v12);
    v10 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v13);
    result = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a2);
    if (v10 < result)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&>(&v14, &v13);
      v11 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v14);
      result = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a1);
      if (v11 < result)
      {
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&>(&v15, &v14);
      }
    }
  }

  return result;
}

atomic_uint *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a2;
  v19 = a1;
  v16 = a4;
  v17 = a3;
  v15 = a5;
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,0>(a1, a2, a3, a4);
  UniqueIdentifier = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a5);
  result = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a4);
  if (UniqueIdentifier < result)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&>(&v16, &v15);
    v12 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v16);
    result = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a3);
    if (v12 < result)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&>(&v17, &v16);
      v13 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v17);
      result = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a2);
      if (v13 < result)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&>(&v18, &v17);
        v14 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v18);
        result = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a1);
        if (v14 < result)
        {
          return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&>(&v19, &v18);
        }
      }
    }
  }

  return result;
}

atomic_uint *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>(atomic_uint *result, atomic_uint *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 4);
    if (result + 4 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v4;
        UniqueIdentifier = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v4);
        result = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v7);
        if (UniqueIdentifier < result)
        {
          v13 = *v6;
          *v6 = 0;
          *(v6 + 8) = 0;
          v9 = v5;
          while (1)
          {
            pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator=(v3 + v9 + 16, v3 + v9);
            if (!v9)
            {
              break;
            }

            v10 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(&v13);
            v11 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v3 + v9 - 16);
            v9 -= 16;
            if (v10 >= v11)
            {
              v12 = v3 + v9 + 16;
              goto LABEL_10;
            }
          }

          v12 = v3;
LABEL_10:
          result = *(v12 + 8);
          *v12 = v13;
          *(&v13 + 1) = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
            {
              (*(*result + 8))(result);
            }

            result = *(&v13 + 1);
            *&v13 = 0;
            if (*(&v13 + 1))
            {
              if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
              {
                result = (*(*result + 8))(result);
              }
            }
          }
        }

        v4 = v6 + 16;
        v5 += 16;
      }

      while ((v6 + 16) != a2);
    }
  }

  return result;
}

void sub_247528234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

atomic_uint *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>(atomic_uint *result, atomic_uint *a2)
{
  if (result != a2)
  {
    v3 = result;
    for (i = (result + 4); (v3 + 16) != a2; i = v3 + 16)
    {
      v5 = v3;
      v3 = i;
      UniqueIdentifier = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(i);
      result = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v5);
      if (UniqueIdentifier < result)
      {
        v11 = *v3;
        *v3 = 0;
        *(v3 + 8) = 0;
        v7 = v3;
        do
        {
          v8 = v7 - 16;
          pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator=(v7, v7 - 16);
          v9 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(&v11);
          v10 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v7 - 32);
          v7 -= 16;
        }

        while (v9 < v10);
        result = *(v8 + 8);
        *v8 = v11;
        *(&v11 + 1) = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
          {
            (*(*result + 8))(result);
          }

          result = *(&v11 + 1);
          *&v11 = 0;
          if (*(&v11 + 1))
          {
            if (atomic_fetch_add_explicit((*(&v11 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
            {
              result = (*(*result + 8))(result);
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2475283CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,std::__less<void,void> &>(uint64_t a1, unint64_t a2)
{
  v21 = a2;
  v22 = a1;
  v20 = *a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  UniqueIdentifier = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(&v20);
  if (UniqueIdentifier >= pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a2 - 16))
  {
    v7 = a1 + 16;
    do
    {
      v5 = v7;
      v22 = v7;
      if (v7 >= v21)
      {
        break;
      }

      v8 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(&v20);
      v9 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v5);
      v7 = v5 + 16;
    }

    while (v8 >= v9);
  }

  else
  {
    v5 = a1;
    do
    {
      v5 += 16;
      v22 = v5;
      v6 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(&v20);
    }

    while (v6 >= pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v5));
  }

  v10 = v21;
  if (v5 < v21)
  {
    do
    {
      v10 -= 16;
      v21 = v10;
      v11 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(&v20);
    }

    while (v11 < pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v10));
    v5 = v22;
  }

  if (v5 < v10)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&>(&v22, &v21);
      do
      {
        v22 += 16;
        v12 = v22;
        v13 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(&v20);
      }

      while (v13 >= pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v12));
      do
      {
        v21 -= 16;
        v14 = v21;
        v15 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(&v20);
      }

      while (v15 < pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v14));
      v5 = v22;
    }

    while (v22 < v21);
  }

  if (v5 - 16 != a1)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator=(a1, v5 - 16);
  }

  v16 = *(v5 - 8);
  *(v5 - 16) = v20;
  *(&v20 + 1) = 0;
  if (!v16)
  {
    return v22;
  }

  if (atomic_fetch_add_explicit(v16 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(&v20 + 1);
  *&v20 = 0;
  v18 = v22;
  if (*(&v20 + 1) && atomic_fetch_add_explicit((*(&v20 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v17 + 8))(v17);
  }

  return v18;
}

void sub_247528634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,std::__less<void,void> &>(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  v17 = a2;
  v16 = *a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  do
  {
    v18 = a1 + v3 + 16;
    UniqueIdentifier = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v18);
    v3 += 16;
  }

  while (UniqueIdentifier < pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(&v16));
  v5 = v17;
  if (v3 == 16)
  {
    v8 = a1 + 16;
    do
    {
      if (v8 >= v5)
      {
        break;
      }

      v5 -= 16;
      v17 = v5;
      v9 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v5);
    }

    while (v9 >= pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(&v16));
  }

  else
  {
    v6 = v17 - 16;
    do
    {
      v17 = v6;
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v6);
      v6 -= 16;
    }

    while (v7 >= pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(&v16));
    v8 = v18;
  }

  v10 = v8;
  if (v8 < v17)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&>(&v18, &v17);
      do
      {
        v18 += 16;
        v11 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v18);
      }

      while (v11 < pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(&v16));
      do
      {
        v17 -= 16;
        v12 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v17);
      }

      while (v12 >= pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(&v16));
      v10 = v18;
    }

    while (v18 < v17);
  }

  if (v10 - 16 != a1)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator=(a1, v10 - 16);
  }

  v13 = *(v10 - 8);
  *(v10 - 16) = v16;
  *(&v16 + 1) = 0;
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = *(&v16 + 1);
    *&v16 = 0;
    if (*(&v16 + 1) && atomic_fetch_add_explicit((*(&v16 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v14 + 8))(v14);
    }
  }

  return v10 - 16;
}

void sub_247528898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  v4 = (a2 - a1) >> 4;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v17 = a2 - 16;
        UniqueIdentifier = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a2 - 16);
        if (UniqueIdentifier < pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a1))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&>(&v18, &v17);
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,0>(a1, a1 + 16, a2 - 16);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,0>(a1, a1 + 16, a1 + 32, a2 - 16);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16);
      return 1;
  }

LABEL_11:
  v6 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,0>(a1, a1 + 16, a1 + 32);
  v7 = a1 + 48;
  if (v7 == a2)
  {
    return 1;
  }

  v8 = 0;
  while (1)
  {
    v9 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v7);
    if (v9 >= pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v6))
    {
      goto LABEL_24;
    }

    v16 = *v7;
    *v7 = 0;
    *(v7 + 8) = 0;
    do
    {
      v10 = v6;
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator=(v6 + 16, v6);
      if (v6 == v18)
      {
        break;
      }

      v11 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(&v16);
      v6 -= 16;
    }

    while (v11 < pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v10 - 16));
    v12 = *(v10 + 8);
    *v10 = v16;
    *(&v16 + 1) = 0;
    if (!v12)
    {
      break;
    }

    if (atomic_fetch_add_explicit(v12 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = *(&v16 + 1);
    v14 = v17;
    *&v16 = 0;
    ++v8;
    if (*(&v16 + 1) && atomic_fetch_add_explicit((*(&v16 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }

    if (v8 == 8)
    {
      return v7 + 16 == v14;
    }

LABEL_24:
    v6 = v7;
    v7 += 16;
    if (v7 == v17)
    {
      return 1;
    }
  }

  if (++v8 != 8)
  {
    goto LABEL_24;
  }

  v14 = v17;
  return v7 + 16 == v14;
}

void sub_247528B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>(atomic_uint *a1, atomic_uint *a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>(v7, a4, v8, v11);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }

    v17 = v6;
    v12 = v6;
    if (v6 != a3)
    {
      do
      {
        v13 = v18;
        UniqueIdentifier = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v12);
        if (UniqueIdentifier < pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v13))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *&>(&v17, &v18);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>(v18, a4, v8, v18);
        }

        v12 = v17 + 16;
        v17 = v12;
      }

      while (v12 != a3);
      v7 = v18;
      v8 = (v6 - v18) >> 4;
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>(v7, v6, a4, v8);
        v6 -= 16;
      }

      while (v8-- > 2);
      return v17;
    }

    return v12;
  }

  return a3;
}

atomic_uint *std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>(atomic_uint *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v9 = (a4 - result) >> 3;
      v10 = v9 + 1;
      v11 = &result[4 * v9 + 4];
      v12 = v9 + 2;
      if (v9 + 2 < a3)
      {
        UniqueIdentifier = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(&result[4 * v9 + 4]);
        if (UniqueIdentifier < pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v11 + 16))
        {
          v11 += 16;
          v10 = v12;
        }
      }

      v14 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v11);
      result = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v5);
      if (v14 >= result)
      {
        v19 = *v5;
        *v5 = 0;
        *(v5 + 8) = 0;
        do
        {
          v15 = v11;
          pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator=(v5, v11);
          if (v7 < v10)
          {
            break;
          }

          v16 = (2 * v10) | 1;
          v11 = &v6[4 * v16];
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v16;
          }

          else
          {
            v17 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(&v6[4 * v16]);
            if (v17 >= pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v11 + 16))
            {
              v10 = v16;
            }

            else
            {
              v11 += 16;
            }
          }

          v18 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v11);
          v5 = v15;
        }

        while (v18 >= pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(&v19));
        result = *(v15 + 8);
        *v15 = v19;
        *(&v19 + 1) = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
          {
            (*(*result + 8))(result);
          }

          result = *(&v19 + 1);
          *&v19 = 0;
          if (*(&v19 + 1))
          {
            if (atomic_fetch_add_explicit((*(&v19 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
            {
              return (*(*result + 8))(result);
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_247528EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

atomic_uint *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>(atomic_uint *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = result;
    v8 = *result;
    v7 = *(result + 1);
    *result = 0;
    *(result + 1) = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>(result, a3, a4);
    v10 = v9;
    if (v9 == a2 - 16)
    {
      result = *(v9 + 8);
      *v10 = v8;
      v10[1] = v7;
      if (result && atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        v13 = *(*result + 8);

        return v13();
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator=(v9, a2 - 16);
      v11 = (v10 + 2);
      v12 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v12 && atomic_fetch_add_explicit(v12 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v12 + 8))(v12);
      }

      return std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>(v6, v11, a3, (v11 - v6) >> 4);
    }
  }

  return result;
}

void sub_24752904C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v1 + 8))(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 16 * v5;
    v8 = v7 + 16;
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 < a3)
    {
      v11 = v7 + 32;
      UniqueIdentifier = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v7 + 16);
      if (UniqueIdentifier < pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v11))
      {
        v8 = v11;
        v9 = v10;
      }
    }

    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator=(a1, v8);
    a1 = v8;
    v5 = v9;
  }

  while (v9 <= v6);
  return v8;
}

atomic_uint *std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>(atomic_uint *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = &result[4 * (v4 >> 1)];
    v8 = a2 - 16;
    UniqueIdentifier = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v7);
    result = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v8);
    if (UniqueIdentifier < result)
    {
      v12 = *v8;
      *v8 = 0;
      *(v8 + 8) = 0;
      do
      {
        v10 = v7;
        pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator=(v8, v7);
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = &v5[4 * v6];
        v11 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v7);
        v8 = v10;
      }

      while (v11 < pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(&v12));
      result = *(v10 + 8);
      *v10 = v12;
      *(&v12 + 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*result + 8))(result);
        }

        result = *(&v12 + 1);
        *&v12 = 0;
        if (*(&v12 + 1))
        {
          if (atomic_fetch_add_explicit((*(&v12 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            return (*(*result + 8))(result);
          }
        }
      }
    }
  }

  return result;
}

void sub_24752928C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

uint64_t std::__hash_table<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[3];
    if (v4 && atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v4 + 8))(v4);
    }

    operator delete(v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void realityio::MultipleLayerMutex::lock(realityio::MultipleLayerMutex *this)
{
  v2 = realityio::UsdLayerMutexTracker::instance(this);
  v3 = *this;
  v4 = *(this + 1);
  if (v3 != v4)
  {
    v5 = v2;
    do
    {
      v6 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v5, v3);
      std::recursive_mutex::lock(v6);
      v3 += 2;
    }

    while (v3 != v4);
  }
}

void realityio::MultipleLayerMutex::unlock(realityio::MultipleLayerMutex *this)
{
  v2 = realityio::UsdLayerMutexTracker::instance(this);
  v3 = *this;
  v4 = *(this + 1);
  if (v3 != v4)
  {
    v5 = v2;
    do
    {
      v6 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v5, v3);
      std::recursive_mutex::unlock(v6);
      v3 += 2;
    }

    while (v3 != v4);
  }
}

const void **realityio::WrappedCFRef<RIOPxrUsdShadeMaterialBindingAPICollectionBinding *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **realityio::createCGColor@<X0>(float32x4_t *a1@<X0>, void *a2@<X1>, CGColorRef *a3@<X8>)
{
  v15 = 0;
  v5 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

  v15 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v6, 0x8000100u);
  v14 = 0;
  v7 = MEMORY[0x24C1A4490]();
  v13 = v7;
  if (v7)
  {
    v8 = CGColorSpaceCreateWithName(v7);
  }

  else
  {
    v8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]);
  }

  v9 = v8;
  v14 = v8;
  v10 = vcvt_hight_f64_f32(*a1);
  v12[0] = vcvtq_f64_f32(*a1->f32);
  v12[1] = v10;
  *a3 = 0;
  *a3 = CGColorCreate(v8, v12);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v13);
  v14 = 0;
  if (v9)
  {
    CGColorSpaceRelease(v9);
  }

  return realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v15);
}

void sub_247529548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v9 = va_arg(va1, const void *);
  realityio::WrappedCFRef<CGColor *>::~WrappedCFRef(v6);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va);
  std::unique_ptr<CGColorSpace,realityio::ColorDeleter>::reset[abi:ne200100](va1, 0);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v7 - 40));
  _Unwind_Resume(a1);
}

void std::unique_ptr<CGColorSpace,realityio::ColorDeleter>::reset[abi:ne200100](CGColorSpace **a1, CGColorSpace *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    CGColorSpaceRelease(v3);
  }
}

const void **realityio::WrappedCFRef<CGColor *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t RIOImportSessionGetPrimPathComponentType()
{
  return v0;
}

uint64_t RIOImportSessionGetTypeID()
{
  if (qword_27EE52E28 != -1)
  {
    dispatch_once(&qword_27EE52E28, &__block_literal_global_6);
  }

  return _MergedGlobals_11;
}

void __RIOImportSessionGetTypeID_block_invoke()
{
  if (!_MergedGlobals_11)
  {
    _MergedGlobals_11 = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOImportSessionCreateWithEngine(uint64_t a1)
{
  if (a1)
  {
    RIOPxrUsdStageCreateInMemory();
  }

  return 0;
}

void sub_247529824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  std::recursive_mutex::unlock(v14);
  realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(&a11);
  _Unwind_Resume(a1);
}

uint64_t RIOImportSessionCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &,REEngine *&,realityio::WrappedCFRef<RIOPxrUsdStage *> &,realityio::ImportSessionImpl::PipelineVersion,realityio::ImportSessionImpl::Threading>(uint64_t *a1, uint64_t *a2, uint64_t a3, int *a4, unsigned int *a5)
{
  v10 = *MEMORY[0x277CBECE8];
  if (qword_27EE52E28 != -1)
  {
    dispatch_once(&qword_27EE52E28, &__block_literal_global_6);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v13 = *a1;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v13);
    realityio::ImportSession::ImportSession(Instance + 16, &v13, *a2, a3, *a4, *a5, 0, 1);
  }

  return 0;
}

void sub_247529970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va);
  _Unwind_Resume(a1);
}

uint64_t RIOImportSessionCreateWithURLWithErrorReporting(void *a1, uint64_t a2, int a3, int a4)
{
  v20 = a2;
  if (!a2)
  {
    return 0;
  }

  v6 = RIOPxrUsdStageCreateWithFileURLWithErrorReporting(a1);
  cf = v6;
  if (v6)
  {
    v18 = v6[2];
    v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v18);
    v8 = realityio::UsdLayerMutexTracker::instance(v7);
    if (v18)
    {
      v9 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v18);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v9);
      v11 = EditTarget[1];
      v21 = *EditTarget;
      v22 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v13 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v8, &v21);
    v14 = v22;
    if (v22 && atomic_fetch_add_explicit((v22 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v14 + 8))(v14);
    }

    std::recursive_mutex::lock(v13);
    if (v18)
    {
      v15 = 2 * (a3 == 2);
      if (a3 == 1)
      {
        v15 = 1;
      }

      LODWORD(v21) = v15;
      v17 = a4 != 0;
      v12 = RIOImportSessionCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &,REEngine *&,realityio::WrappedCFRef<RIOPxrUsdStage *> &,realityio::ImportSessionImpl::PipelineVersion,realityio::ImportSessionImpl::Threading>(&v18, &v20, &cf, &v21, &v17);
    }

    else
    {
      v12 = 0;
    }

    std::recursive_mutex::unlock(v13);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v18);
  }

  else
  {
    v12 = 0;
  }

  realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(&cf);
  return v12;
}

void sub_247529B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  std::recursive_mutex::unlock(v14);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a10);
  realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(&a11);
  _Unwind_Resume(a1);
}

uint64_t RIOImportSessionCreateSingleUseImporterWithURLWithErrorReporting(void *a1, uint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = RIOPxrUsdStageCreateWithFileURLWithErrorReporting(a1);
  cf = v7;
  if (v7)
  {
    v20 = v7[2];
    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v20);
    v9 = realityio::UsdLayerMutexTracker::instance(v8);
    if (v20)
    {
      v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v20);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v10);
      v12 = EditTarget[1];
      v22 = *EditTarget;
      v23 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v14 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v9, &v22);
    v15 = v23;
    if (v23 && atomic_fetch_add_explicit((v23 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v15 + 8))(v15);
    }

    std::recursive_mutex::lock(v14);
    if (v20)
    {
      if (a3 == 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2 * (a3 == 2);
      }

      v17 = a4 != 0;
      v18 = *MEMORY[0x277CBECE8];
      if (qword_27EE52E28 != -1)
      {
        dispatch_once(&qword_27EE52E28, &__block_literal_global_6);
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v22 = v20;
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v22);
        realityio::ImportSession::ImportSession(Instance + 16, &v22, a2, &cf, v16, v17, 1, 1);
      }
    }

    else
    {
      Instance = 0;
    }

    std::recursive_mutex::unlock(v14);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v20);
  }

  else
  {
    Instance = 0;
  }

  realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(&cf);
  return Instance;
}

void sub_247529D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_uint *a9, const void *a10, atomic_uint *a11)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a11);
  std::recursive_mutex::unlock(v11);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a9);
  realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t RIOImportSessionCreateWithStage(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v19 = a2;
  if (a1 && a2)
  {
    v18 = a1;
    v8 = CFRetain(a1);
    v9 = realityio::UsdLayerMutexTracker::instance(v8);
    if (a1[2])
    {
      v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1 + 2);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v10);
      v12 = EditTarget[1];
      v20 = *EditTarget;
      v21 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    v13 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v9, &v20);
    v14 = v21;
    if (v21 && atomic_fetch_add_explicit((v21 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v14 + 8))(v14);
    }

    std::recursive_mutex::lock(v13);
    if (a1[2])
    {
      v15 = 2 * (a3 == 2);
      if (a3 == 1)
      {
        v15 = 1;
      }

      LODWORD(v20) = v15;
      v17 = a4 != 0;
      v4 = RIOImportSessionCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &,REEngine *&,realityio::WrappedCFRef<RIOPxrUsdStage *> &,realityio::ImportSessionImpl::PipelineVersion,realityio::ImportSessionImpl::Threading>(a1 + 2, &v19, &v18, &v20, &v17);
    }

    else
    {
      v4 = 0;
    }

    std::recursive_mutex::unlock(v13);
    realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(&v18);
  }

  return v4;
}

void sub_247529F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  std::recursive_mutex::unlock(v14);
  realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(&a11);
  _Unwind_Resume(a1);
}

uint64_t RIOImportSessionCreateSingleUseImporterWithStage(uint64_t *a1, uint64_t a2, int a3, int a4, char a5)
{
  Instance = 0;
  if (a1 && a2)
  {
    v22 = a1;
    v11 = CFRetain(a1);
    v12 = realityio::UsdLayerMutexTracker::instance(v11);
    if (a1[2])
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1 + 2);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v13);
      v15 = EditTarget[1];
      v23 = *EditTarget;
      v24 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    v16 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v12, &v23);
    v17 = v24;
    if (v24 && atomic_fetch_add_explicit((v24 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v17 + 8))(v17);
    }

    std::recursive_mutex::lock(v16);
    if (a1[2])
    {
      if (a3 == 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2 * (a3 == 2);
      }

      v19 = a4 != 0;
      v20 = *MEMORY[0x277CBECE8];
      if (qword_27EE52E28 != -1)
      {
        dispatch_once(&qword_27EE52E28, &__block_literal_global_6);
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v23 = a1[2];
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v23);
        realityio::ImportSession::ImportSession(Instance + 16, &v23, a2, &v22, v18, v19, 1, a5);
      }
    }

    else
    {
      Instance = 0;
    }

    std::recursive_mutex::unlock(v16);
    realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(&v22);
  }

  return Instance;
}

void sub_24752A19C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va1);
  std::recursive_mutex::unlock(v2);
  realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

void *RIOImportSessionQueueAssetForLoad(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a2)
  {
    RERetain();
  }

  if (*(*(a1 + 32) + 40))
  {
    realityio::LiveSceneManager::queueForDeferredAssetLoad();
  }

  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v4);
}

void sub_24752A2A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

uint64_t RIOImportSessionPerformBlockAfterAssetLoadOnEngineQueue(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_28594A528;
  v5[1] = MEMORY[0x24C1A9770](a2);
  v5[3] = v5;
  realityio::ImportSession::performBlockPostAssetLoadOnEngineQueue(a1 + 16, v5);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24752A348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t realityio::ImportSession::performBlockPostAssetLoadOnEngineQueue(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v5, a2);
  realityio::ImportSessionImpl::performBlockPostAssetLoadOnEngineQueue(v2, v5);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24752A3CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RIOImportSessionPerformSceneChangeSetupBlockOnEngineQueue(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28594A5A8;
  v7[1] = MEMORY[0x24C1A9770](a2);
  v7[3] = v7;
  v3 = *(a1 + 32);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v8, v7);
  v4 = *(v3 + 40);
  if (v4)
  {
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v10, v8);
    std::function<void ()(void)>::operator=((*(v4 + 464) + 72), v10);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v10);
  }

  else
  {
    if (!v9)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v9 + 48))(v9);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v8);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24752A4EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v2 - 56);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RIOImportSessionSetSwiftObject(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  v10 = *(result + 24);
  if (v10 != a2 && v10 != 0)
  {
    result = realityio::internal::assertHandler(1u, "(mSwiftObject == object || mSwiftObject == nullptr)", "setSwiftObject", 662, 1, a6, a7, a8, "The swift object associated with a CoreRealityIO Import Session can only be assigned once, and then it is fixed.", v12);
    if (result == 1)
    {
      result = raise(5);
    }

    else if (result == 2)
    {
      abort();
    }
  }

  *(v9 + 24) = a2;
  return result;
}

uint64_t RIOImportSessionSetSceneUpdatePassCompletion(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = v6;
    v6[0] = &unk_28594A628;
    v6[1] = MEMORY[0x24C1A9770](a2);
    v6[3] = v6;
    realityio::ImportSession::setSceneUpdatePassCompletion(*(a1 + 32), v6);
  }

  else
  {
    v8 = 0;
    v3 = v7;
    realityio::ImportSession::setSceneUpdatePassCompletion(*(a1 + 32), v7);
  }

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24752A6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t realityio::ImportSession::setSceneUpdatePassCompletion(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v5, a2);
  (*(*a1 + 32))(a1, v5);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24752A76C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RIOImportSessionSetRegistrationForScenes(uint64_t a1, uint64_t a2, void *a3)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v18[0] = &unk_28594A6A8;
  v18[1] = MEMORY[0x24C1A9770](a2);
  v18[3] = v18;
  v6 = MEMORY[0x24C1A9770](v5);

  v17[0] = &unk_28594A738;
  v17[1] = v6;
  v17[3] = v17;
  v7 = *(a1 + 32);
  std::__function::__value_func<void ()(REScene *,char const*,REEntity *)>::__value_func[abi:ne200100](v20, v18);
  std::__function::__value_func<void ()(REEntity *,REScene **,REAsset **,unsigned long,unsigned long)>::__value_func[abi:ne200100](v19, v17);
  std::__function::__value_func<void ()(REScene *,char const*,REEntity *)>::__value_func[abi:ne200100](v21, v20);
  v8 = v7 + 72;
  if (v21 != (v7 + 72))
  {
    v9 = v22;
    v10 = *(v7 + 96);
    if (v22 == v21)
    {
      if (v10 == v8)
      {
        (*(*v22 + 24))(v22, v23);
        (*(*v22 + 32))(v22);
        v22 = 0;
        (*(**(v7 + 96) + 24))(*(v7 + 96), v21);
        (*(**(v7 + 96) + 32))(*(v7 + 96));
        *(v7 + 96) = 0;
        v22 = v21;
        (*(v23[0] + 24))(v23, v7 + 72);
        (*(v23[0] + 32))(v23);
      }

      else
      {
        (*(*v22 + 24))(v22, v7 + 72);
        (*(*v22 + 32))(v22);
        v22 = *(v7 + 96);
      }

      *(v7 + 96) = v8;
    }

    else if (v10 == v8)
    {
      (*(*v10 + 24))(*(v7 + 96), v21);
      (*(**(v7 + 96) + 32))(*(v7 + 96));
      *(v7 + 96) = v22;
      v22 = v21;
    }

    else
    {
      v22 = *(v7 + 96);
      *(v7 + 96) = v9;
    }
  }

  v11 = std::__function::__value_func<void ()(REScene *,char const*,REEntity *)>::~__value_func[abi:ne200100](v21);
  std::__function::__value_func<void ()(REEntity *,REScene **,REAsset **,unsigned long,unsigned long)>::__value_func[abi:ne200100](v11, v19);
  v12 = v7 + 104;
  if (v21 != (v7 + 104))
  {
    v13 = v22;
    v14 = *(v7 + 128);
    if (v22 == v21)
    {
      if (v14 == v12)
      {
        (*(*v22 + 24))();
        (*(*v22 + 32))(v22);
        v22 = 0;
        (*(**(v7 + 128) + 24))(*(v7 + 128), v21);
        (*(**(v7 + 128) + 32))(*(v7 + 128));
        *(v7 + 128) = 0;
        v22 = v21;
        (*(v23[0] + 24))(v23, v7 + 104);
        (*(v23[0] + 32))(v23);
      }

      else
      {
        (*(*v22 + 24))();
        (*(*v22 + 32))(v22);
        v22 = *(v7 + 128);
      }

      *(v7 + 128) = v12;
    }

    else if (v14 == v12)
    {
      (*(*v14 + 24))(*(v7 + 128), v21);
      (*(**(v7 + 128) + 32))(*(v7 + 128));
      *(v7 + 128) = v22;
      v22 = v21;
    }

    else
    {
      v22 = *(v7 + 128);
      *(v7 + 128) = v13;
    }
  }

  std::__function::__value_func<void ()(REEntity *,REScene **,REAsset **,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v21);
  std::__function::__value_func<void ()(REEntity *,REScene **,REAsset **,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v19);
  std::__function::__value_func<void ()(REScene *,char const*,REEntity *)>::~__value_func[abi:ne200100](v20);
  std::__function::__value_func<void ()(REEntity *,REScene **,REAsset **,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v17);
  result = std::__function::__value_func<void ()(REScene *,char const*,REEntity *)>::~__value_func[abi:ne200100](v18);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24752ACF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOEntityUsingMaterialCreateFromMtlxURLWithFiles(uint64_t a1, realityio::MaterialXStandalone *a2, const __CFURL *a3, uint64_t a4, void *a5)
{
  v8 = a5;
  realityio::MaterialXStandalone::makeSource(a2, a3, v14);
  if (v14[0])
  {
    v9 = v16;
    v12[0] = v15;
    v12[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    sourceToEntity(&v13, a1, v12, v8);
    v10 = v13;
    v13 = 0;
    realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v13);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    v10 = 0;
  }

  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v14);

  return v10;
}

void sub_24752AE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(va);

  _Unwind_Resume(a1);
}

void sourceToEntity(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  v9 = *a3;
  v10 = a3[1];
  v12[0] = v9;
  v12[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = 0;
  if (v7)
  {
    v14[0] = &unk_28594A3B0;
    v14[1] = MEMORY[0x24C1A9770](v7);
    v15 = v14;
  }

  realityio::MaterialXStandalone::generateSyncOnEngineQueue(a2, v12, v14, &v13);
  std::__function::__value_func<__CFData const* ()(char const*)>::~__value_func[abi:ne200100](v14);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v13)
  {
    assetToEntity(a1, a2, &v13);
  }

  else
  {
    *a1 = 0;
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v13);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_24752AF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(va);

  _Unwind_Resume(a1);
}

uint64_t RIOEntityUsingMaterialCreateFromInMemoryMtlxDataBufferWithFiles(uint64_t a1, uint64_t a2, char *a3, realityio::MaterialXStandalone *a4, uint64_t a5, void *a6)
{
  v9 = a6;
  realityio::MaterialXStandalone::makeSource(a4, a3, v15);
  if (v15[0])
  {
    v10 = v17;
    v13[0] = v16;
    v13[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    sourceToEntity(&v14, a1, v13, v9);
    v11 = v14;
    v14 = 0;
    realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v14);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  else
  {
    v11 = 0;
  }

  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v15);

  return v11;
}

void sub_24752B058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(va);

  _Unwind_Resume(a1);
}

void RIOEntityUsingMaterialCreateFromMtlxURLAsyncWithFiles(uint64_t a1, const void *a2, char *a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v26 = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  std::string::basic_string[abi:ne200100]<0>(&v25, a3);
  v24 = a1;
  if (a1)
  {
    RERetain();
    v11 = v24;
  }

  else
  {
    v11 = 0;
  }

  v12 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = __RIOEntityUsingMaterialCreateFromMtlxURLAsyncWithFiles_block_invoke;
  block[3] = &__block_descriptor_88_ea8_32c66_ZTSKZ53RIOEntityUsingMaterialCreateFromMtlxURLAsyncWithFilesE3__0_e5_v8__0l;
  v13 = v11;
  if (v11)
  {
    RERetain();
  }

  cf = v26;
  if (v26)
  {
    CFRetain(v26);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v25;
  }

  v16 = MEMORY[0x24C1A9770](v9);
  v17 = MEMORY[0x24C1A9770](v10);
  v19 = v13;
  if (v13)
  {
    RERetain();
  }

  v20 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = __p;
  }

  v22 = MEMORY[0x24C1A9770](v16);
  v23 = MEMORY[0x24C1A9770](v17);
  dispatch_async(v12, block);

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  realityio::WrappedCFRef<__CFURL const*>::~WrappedCFRef(&cf);
  realityio::WrappedRERef<REEngine *>::~WrappedRERef(&v13);

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  realityio::WrappedCFRef<__CFURL const*>::~WrappedCFRef(&v20);
  realityio::WrappedRERef<REEngine *>::~WrappedRERef(&v19);
  realityio::WrappedRERef<REEngine *>::~WrappedRERef(&v24);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  realityio::WrappedCFRef<__CFURL const*>::~WrappedCFRef(&v26);
}

void sub_24752B2DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedCFRef<__CFURL const*>::~WrappedCFRef((v6 + 40));
  realityio::WrappedRERef<REEngine *>::~WrappedRERef((v5 + 32));
  RIOEntityUsingMaterialCreateFromMtlxURLAsyncWithFiles::$_0::~$_0(va);

  realityio::WrappedRERef<REEngine *>::~WrappedRERef((v7 - 104));
  if (*(v7 - 73) < 0)
  {
    operator delete(*(v7 - 96));
  }

  realityio::WrappedCFRef<__CFURL const*>::~WrappedCFRef((v7 - 72));

  _Unwind_Resume(a1);
}

uint64_t __RIOEntityUsingMaterialCreateFromMtlxURLAsyncWithFiles_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    v3 = *v3;
  }

  realityio::MaterialXStandalone::makeSource(v2, v3, v7);
  v4 = *(a1 + 32);
  realityio::Result<std::shared_ptr<realityio::mtlx::NeoDataSource>,realityio::DetailedError>::Result(v6, v7);
  sourceAsync(v4, v6, *(a1 + 72), *(a1 + 80));
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v6);
  return realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v7);
}

void sub_24752B3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&a9);
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&a15);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c66_ZTSKZ53RIOEntityUsingMaterialCreateFromMtlxURLAsyncWithFilesE3__0(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  a1[1].__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    RERetain();
  }

  v5 = *(a2 + 40);
  a1[1].__r_.__value_.__r.__words[2] = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v6;
  }

  a1[3].__r_.__value_.__r.__words[0] = MEMORY[0x24C1A9770](*(a2 + 72));
  result = MEMORY[0x24C1A9770](*(a2 + 80));
  a1[3].__r_.__value_.__l.__size_ = result;
  return result;
}

void sub_24752B4A4(_Unwind_Exception *a1)
{
  realityio::WrappedCFRef<__CFURL const*>::~WrappedCFRef(v2);
  realityio::WrappedRERef<REEngine *>::~WrappedRERef(v1);
  _Unwind_Resume(a1);
}

void *__destroy_helper_block_ea8_32c66_ZTSKZ53RIOEntityUsingMaterialCreateFromMtlxURLAsyncWithFilesE3__0(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  realityio::WrappedCFRef<__CFURL const*>::~WrappedCFRef((a1 + 40));

  return realityio::WrappedRERef<REEngine *>::~WrappedRERef((a1 + 32));
}

void RIOEntityUsingMaterialCreateFromMtlxURLAsyncWithFiles::$_0::~$_0(RIOEntityUsingMaterialCreateFromMtlxURLAsyncWithFiles::$_0 *this)
{
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  realityio::WrappedCFRef<__CFURL const*>::~WrappedCFRef(this + 1);

  realityio::WrappedRERef<REEngine *>::~WrappedRERef(this);
}

void RIOEntityUsingMaterialCreateFromInMemoryMtlxDataBufferAsyncWithFiles(uint64_t a1, const void *a2, char *a3, char *a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  v32 = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  std::string::basic_string[abi:ne200100]<0>(&v31, a3);
  std::string::basic_string[abi:ne200100]<0>(&v30, a4);
  v29 = a1;
  if (a1)
  {
    RERetain();
    v13 = v29;
  }

  else
  {
    v13 = 0;
  }

  v14 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = __RIOEntityUsingMaterialCreateFromInMemoryMtlxDataBufferAsyncWithFiles_block_invoke;
  block[3] = &__block_descriptor_112_ea8_32c81_ZTSKZ68RIOEntityUsingMaterialCreateFromInMemoryMtlxDataBufferAsyncWithFilesE3__0_e5_v8__0l;
  v15 = v13;
  if (v13)
  {
    RERetain();
  }

  v16 = v32;
  if (v32)
  {
    CFRetain(v32);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = v31;
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v30;
  }

  v19 = MEMORY[0x24C1A9770](v11);
  v20 = MEMORY[0x24C1A9770](v12);
  RIOEntityUsingMaterialCreateFromInMemoryMtlxDataBufferAsyncWithFiles::$_0::$_0(&v22, &v15);
  dispatch_async(v14, block);

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&v16);
  realityio::WrappedRERef<REEngine *>::~WrappedRERef(&v15);

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v24 < 0)
  {
    operator delete(v23[1]);
  }

  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(v23);
  realityio::WrappedRERef<REEngine *>::~WrappedRERef(&v22);
  realityio::WrappedRERef<REEngine *>::~WrappedRERef(&v29);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&v32);
}

void sub_24752B7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef((v19 + 8));
  realityio::WrappedRERef<REEngine *>::~WrappedRERef(&a9);

  realityio::WrappedRERef<REEngine *>::~WrappedRERef((v20 - 128));
  if (*(v20 - 97) < 0)
  {
    operator delete(*(v20 - 120));
  }

  if (*(v20 - 73) < 0)
  {
    operator delete(*(v20 - 96));
  }

  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef((v20 - 72));

  _Unwind_Resume(a1);
}

uint64_t __RIOEntityUsingMaterialCreateFromInMemoryMtlxDataBufferAsyncWithFiles_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 71) < 0)
  {
    v3 = *(a1 + 48);
  }

  v4 = (a1 + 72);
  if (*(a1 + 95) < 0)
  {
    v4 = *v4;
  }

  realityio::MaterialXStandalone::makeSource(v2, v4, v8);
  v5 = *(a1 + 32);
  realityio::Result<std::shared_ptr<realityio::mtlx::NeoDataSource>,realityio::DetailedError>::Result(v7, v8);
  sourceAsync(v5, v7, *(a1 + 96), *(a1 + 104));
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v7);
  return realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v8);
}

void sub_24752B924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&a9);
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&a15);
  _Unwind_Resume(a1);
}

uint64_t RIOEntityUsingMaterialCreateFromInMemoryMtlxDataBufferAsyncWithFiles::$_0::$_0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    RERetain();
  }

  v5 = a2[1];
  *(a1 + 8) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), a2[2], a2[3]);
  }

  else
  {
    v6 = *(a2 + 1);
    *(a1 + 32) = a2[4];
    *(a1 + 16) = v6;
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), a2[5], a2[6]);
  }

  else
  {
    v7 = *(a2 + 5);
    *(a1 + 56) = a2[7];
    *(a1 + 40) = v7;
  }

  *(a1 + 64) = MEMORY[0x24C1A9770](a2[8]);
  *(a1 + 72) = MEMORY[0x24C1A9770](a2[9]);
  return a1;
}

void sub_24752BA08(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(v2);
  realityio::WrappedRERef<REEngine *>::~WrappedRERef(v1);
  _Unwind_Resume(a1);
}

void *__destroy_helper_block_ea8_32c81_ZTSKZ68RIOEntityUsingMaterialCreateFromInMemoryMtlxDataBufferAsyncWithFilesE3__0(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef((a1 + 40));

  return realityio::WrappedRERef<REEngine *>::~WrappedRERef((a1 + 32));
}

void RIOEntityUsingMaterialCreateFromInMemoryMtlxDataBufferAsyncWithFiles::$_0::~$_0(RIOEntityUsingMaterialCreateFromInMemoryMtlxDataBufferAsyncWithFiles::$_0 *this)
{
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(this + 1);

  realityio::WrappedRERef<REEngine *>::~WrappedRERef(this);
}

uint64_t MaterialToEntity::setup(uint64_t *a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v8 = *a1;
  *a1 = a4[2];
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(a4 + 2);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::_RemoveRef(a1, v8);
  CFRelease(a4);
  pxrInternal__aapl__pxrReserved__::UsdStage::CreateInMemory();
  v9 = a1[1];
  a1[1] = v36;
  v36 = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::_RemoveRef((a1 + 1), v9);
  v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v36);
  std::string::basic_string[abi:ne200100]<0>(v10, "/root");
  MEMORY[0x24C1A5D70](v40, &v36);
  if ((v38[7] & 0x80000000) != 0)
  {
    operator delete(v36);
  }

  v11 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1 + 1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "/root/cube");
  MEMORY[0x24C1A5D70](&v28, &__p);
  MEMORY[0x24C1A5DE0](v23, "Cube");
  pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(&v36, v11, &v28, v23);
  if ((v23[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v23[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v28);
  if ((v34[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  v12 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1 + 1);
  std::string::basic_string[abi:ne200100]<0>(&v28, a3);
  MEMORY[0x24C1A5D70](&v26, &v28);
  NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v26);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(v23, v40, NameToken);
  v22[0] = 0;
  pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(&__p, v12, v23, v22);
  if ((v22[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v22[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v23);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
  if ((v30[7] & 0x80000000) != 0)
  {
    operator delete(v28);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(&v28, &__p);
  v14 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v26, v14);
  v15 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v26);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(v15);
  std::string::basic_string[abi:ne200100]<0>(v23, a3);
  MEMORY[0x24C1A5D70](v25, v23);
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v22, 0.0, 1.0);
  pxrInternal__aapl__pxrReserved__::UsdReferences::AddReference();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v25);
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  v16 = v27;
  if (v27 && atomic_fetch_add_explicit((v27 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v16 + 8))(v16);
  }

  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v30);
  if (v29)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
  }

  MEMORY[0x24C1A5DE0](v23, "material:binding");
  pxrInternal__aapl__pxrReserved__::UsdPrim::CreateRelationship(&v36, v23);
  if ((v23[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v23[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&__p, v23);
  pxrInternal__aapl__pxrReserved__::UsdRelationship::AddTarget();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v23);
  v17 = RIOPxrUsdStageCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &>(a1 + 1);
  v18 = a1[2];
  if (v18)
  {
    CFRelease(v18);
  }

  a1[2] = v17;
  v19 = RIOImportSessionCreateWithStage(v17, a2, 0, 0);
  v20 = a1[3];
  if (v20)
  {
    CFRelease(v20);
  }

  a1[3] = v19;
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v30);
  if (v29)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
  }

  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v34);
  if (v33)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
  }

  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v38);
  if (v37)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v37);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v40);
}

void sub_24752BF94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&__p);
  pxrInternal__aapl__pxrReserved__::UsdRelationship::~UsdRelationship(&a24);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a31);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v36 - 88));
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v36 - 56));
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdStageCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &>(void *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOPxrUsdStageGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrUsdStageGetTypeID::onceToken, &__block_literal_global_23);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 16) = *a1;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef((Instance + 16));
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
  }

  return v4;
}

uint64_t MaterialToEntity::getModelEntity(MaterialToEntity *this, uint64_t a2)
{
  result = (*(*a2 + 16))(a2);
  if (result && (result = REEntityGetChildCount()) != 0)
  {
    result = REEntityGetChild();
    *this = result;
    if (result)
    {

      return RERetain();
    }
  }

  else
  {
    *this = 0;
  }

  return result;
}

uint64_t RIOEntityUsingMaterialCreateFromURLWithErrorReporting(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 isFileURL];
  if (v3)
  {
    cf = 0;
    *buf = 0u;
    v7 = 0u;
    RIOPxrUsdStageCreateWithFilePathWithErrorReporting([v2 fileSystemRepresentation]);
  }

  v4 = *(realityio::logObjects(v3) + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "CoreRealityIO only supports loading content from file URLs", buf, 2u);
  }

  return 0;
}

void sub_24752C44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MaterialToEntity::~MaterialToEntity(va);

  _Unwind_Resume(a1);
}

void RIOEntityUsingMaterialCreateFromURLAsync(uint64_t a1, void *a2, char *a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  v9 = [v8 isFileURL];
  if (v9)
  {
    v14 = a1;
    if (a1)
    {
      RERetain();
    }

    std::string::basic_string[abi:ne200100]<0>(buf, [v8 fileSystemRepresentation]);
    std::string::basic_string[abi:ne200100]<0>(v12, a3);
    operator new();
  }

  v10 = *(realityio::logObjects(v9) + 32);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_247485000, v10, OS_LOG_TYPE_ERROR, "CoreRealityIO only supports loading content from file URLs", buf, 2u);
  }

  REEngineConfigurationCreateFromEngine();
  v11 = REEngineConfigurationGetEngineQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __RIOEntityUsingMaterialCreateFromURLAsync_block_invoke;
  block[3] = &unk_278EA83D0;
  v16 = v7;
  dispatch_async(v11, block);
}

void sub_24752C778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  realityio::WrappedRERef<REEngine *>::~WrappedRERef((v42 + 56));
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  realityio::WrappedRERef<REEngine *>::~WrappedRERef((v43 - 112));

  _Unwind_Resume(a1);
}

void __RIOEntityUsingMaterialCreateFromURLAsync_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "CoreRealityIO only supports loading content from file URLs");
  Error = realityio::createError(__p);
  (*(v1 + 16))(v1, 0, Error);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24752C88C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __RIOEntityUsingMaterialCreateFromURLAsync_block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v2 = *v2;
  }

  if (*(a1 + 111) < 0)
  {
    v3 = *(a1 + 88);
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  RIOPxrUsdStageCreateWithFilePathWithErrorReporting(v2);
}

void sub_24752CA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  realityio::WrappedRERef<REEngineConfigurationWrapper *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

uint64_t MaterialToEntity::evaluateAsync(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 24);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3321888768;
  v8[2] = ___ZN16MaterialToEntity13evaluateAsyncENSt3__110shared_ptrIS_EENS0_8functionIFvP8REEntityP9__CFErrorEEE_block_invoke;
  v8[3] = &__block_descriptor_80_ea8_32c47_ZTSNSt3__18functionIFvP8REEntityP9__CFErrorEEE64c44_ZTSNSt3__110shared_ptrI16MaterialToEntityEE_e5_v8__0l;
  std::__function::__value_func<void ()(REEntity *,__CFError *)>::__value_func[abi:ne200100](v9, a2);
  v4 = a1[1];
  v9[4] = *a1;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIOImportSessionSetSceneUpdatePassCompletion(v3, v8);
  v5 = *(*(*a1 + 24) + 32);
  (*(*v5 + 24))(v5, 0);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  result = std::__function::__value_func<void ()(REEntity *,__CFError *)>::~__value_func[abi:ne200100](v9);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24752CBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  std::__function::__value_func<void ()(REEntity *,__CFError *)>::~__value_func[abi:ne200100](v19 + 32);
  _Unwind_Resume(a1);
}

void sub_24752CC58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedCFRef<__CFError *>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_40c44_ZTSNSt3__110shared_ptrI16MaterialToEntityEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_40c44_ZTSNSt3__110shared_ptrI16MaterialToEntityEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void __copy_helper_block_ea8_40c44_ZTSNSt3__110shared_ptrI16MaterialToEntityEE56c42_ZTSN9realityio12WrappedRERefIP8REEngineEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 56);
  *(a1 + 56) = v5;
  if (v5)
  {
    RERetain();
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v7;
  }
}

void sub_24752CD40(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  realityio::WrappedRERef<REEngine *>::~WrappedRERef(v2);
  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_40c44_ZTSNSt3__110shared_ptrI16MaterialToEntityEE56c42_ZTSN9realityio12WrappedRERefIP8REEngineEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  realityio::WrappedRERef<REEngine *>::~WrappedRERef((a1 + 56));
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void RIOEntityUsingMaterialCreateFromInMemoryDataBufferWithErrorReporting(int a1, const char *a2, int a3, CFDataRef theData)
{
  cf = 0;
  memset(v4, 0, sizeof(v4));
  MaterialToEntity::setup(v4, a1, a2, a3, theData);
}

void sub_24752CEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MaterialToEntity::~MaterialToEntity(va);
  _Unwind_Resume(a1);
}

void RIOEntityUsingMaterialCreateFromInMemoryDataBufferAsync(uint64_t a1, char *a2, char *a3, const void *a4, void *a5)
{
  v9 = a5;
  v13 = a1;
  if (a1)
  {
    RERetain();
  }

  v12 = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  std::string::basic_string[abi:ne200100]<0>(&v11, a2);
  std::string::basic_string[abi:ne200100]<0>(v10, a3);
  operator new();
}

void sub_24752D138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  realityio::WrappedRERef<REEngine *>::~WrappedRERef((v39 + 56));
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (*(v40 - 81) < 0)
  {
    operator delete(*(v40 - 104));
  }

  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef((v40 - 80));
  realityio::WrappedRERef<REEngine *>::~WrappedRERef((v40 - 72));

  _Unwind_Resume(a1);
}

void __RIOEntityUsingMaterialCreateFromInMemoryDataBufferAsync_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v3 = *v3;
  }

  v4 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v4 = *v4;
  }

  MaterialToEntity::setup(v2, *(a1 + 56), v3, v4, *(a1 + 112));
}

void sub_24752D3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  realityio::WrappedRERef<REEngineConfigurationWrapper *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

void sub_24752D444(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedCFRef<__CFError *>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_ea8_40c44_ZTSNSt3__110shared_ptrI16MaterialToEntityEE56c42_ZTSN9realityio12WrappedRERefIP8REEngineEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE112c43_ZTSN9realityio12WrappedCFRefIPK8__CFDataEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 56);
  *(a1 + 56) = v5;
  if (v5)
  {
    RERetain();
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v7;
  }

  result = *(a2 + 112);
  *(a1 + 112) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void sub_24752D510(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  realityio::WrappedRERef<REEngine *>::~WrappedRERef(v2);
  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_40c44_ZTSNSt3__110shared_ptrI16MaterialToEntityEE56c42_ZTSN9realityio12WrappedRERefIP8REEngineEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE112c43_ZTSN9realityio12WrappedCFRefIPK8__CFDataEE(uint64_t a1)
{
  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef((a1 + 112));
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  realityio::WrappedRERef<REEngine *>::~WrappedRERef((a1 + 56));
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

unint64_t RIOImportSessionGetSceneCount(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  getImportedScenes(a1, &v3);
  v1 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 4);
  v6 = &v3;
  std::vector<realityio::ImportedScene>::__destroy_vector::operator()[abi:ne200100](&v6);
  return v1;
}

void sub_24752D648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<realityio::ImportedScene>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

atomic_uint **getImportedScenes(uint64_t a1, uint64_t a2)
{
  std::vector<realityio::ImportedScene>::__base_destruct_at_end[abi:ne200100](a2, *a2);
  v4 = *(a1 + 32);
  v6 = v4[5];
  v5 = v4[6];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(v6 + 248);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    v4 = *(a1 + 32);
  }

  else
  {
    v7 = *(v6 + 248);
  }

  v79 = *(v4[1] + 16);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v79);
  v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v79);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v74, v8);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v74);
  if ((IsValid & 1) == 0)
  {
    goto LABEL_83;
  }

  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(IsValid);
  v12 = *UsdPrimDefaultPredicate;
  v11 = UsdPrimDefaultPredicate[1];
  v13 = UsdPrimDefaultPredicate[2];
  if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v12 & 0x2000) != 0 || (v11 & 0x2000) == 0))
  {
    v12 |= 0x2000uLL;
    v11 &= ~0x2000uLL;
  }

  v47 = v12;
  *&v48[0] = v11;
  *(&v48[0] + 1) = v13;
  pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeDescendantsRange(&v74, &v47, &v64);
  v59 = v74;
  v60 = v75;
  if (v75)
  {
    atomic_fetch_add_explicit((v75 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v61, &v76);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v62, &v77);
  v63 = v78;
  if ((v78 & 7) != 0 && (atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v63 &= 0xFFFFFFFFFFFFFFF8;
  }

  v47 = v64;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v48, &v65);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v48 + 1, &v66);
  *(v48 + 8) = v67;
  *(&v48[1] + 1) = v68;
  v55 = v69;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v56, &v70);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v56 + 1, &v71);
  v57 = v72;
  v58 = v73;
  while (v47 != v55 || *&v48[0] != v56 || (pxrInternal__aapl__pxrReserved__::operator==(v48 + 8, &v57) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference(&v47, &v50);
    if (realityio::isSceneLibrary(&v50, v14))
    {
      v59 = v50;
      v15 = v51;
      if (v51)
      {
        atomic_fetch_add_explicit((v51 + 48), 1uLL, memory_order_relaxed);
      }

      if (v60)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v60);
      }

      v60 = v15;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v61, &v52);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v62, &v53);
      pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v63, &v54);
      if ((v54 & 7) != 0)
      {
        atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v52);
      if (v51)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v51);
      }

      break;
    }

    if ((v54 & 7) != 0)
    {
      atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v52);
    if (v51)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v51);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::increment(&v47);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v56);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v48);
  IsPseudoRoot = pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(&v59);
  if (!IsPseudoRoot)
  {
    PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(&v59);
    MEMORY[0x24C1A5DE0](&v55, realityio::kSceneAssetBuilderIdentifier);
    realityio::BuilderDependencyDAG::getBuilderAtPrimPathWithBuilderIdentifier(v7, PrimPath, &v55, &v47);
    v32 = v47;
    v18 = *&v48[0];
    if (*&v48[0])
    {
      atomic_fetch_add_explicit((*&v48[0] + 16), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if ((v55 & 7) != 0)
    {
      atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (!v18)
    {
      goto LABEL_78;
    }

    v33 = std::__shared_weak_count::lock(v18);
    if (!v33)
    {
      goto LABEL_77;
    }

    v21 = v33;
    if (v32)
    {
      v34 = **v32;
      if (v35)
      {
        v36 = v35;
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        std::mutex::lock((v36 + 304));
        std::mutex::unlock((v36 + 304));
        if (v36 + 280 != a2)
        {
          v38 = *(v36 + 35);
          v37 = *(v36 + 36);
          v39 = v37 - v38;
          v40 = *a2;
          if (*(a2 + 16) - *a2 < (v37 - v38))
          {
            v41 = 0xCCCCCCCCCCCCCCCDLL * (v39 >> 4);
            std::vector<realityio::ImportedScene>::__vdeallocate(a2);
            if (v41 <= 0x333333333333333)
            {
              v42 = 0x999999999999999ALL * ((*(a2 + 16) - *a2) >> 4);
              if (v42 <= v41)
              {
                v42 = v41;
              }

              if (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *a2) >> 4) >= 0x199999999999999)
              {
                v43 = 0x333333333333333;
              }

              else
              {
                v43 = v42;
              }

              if (v43 <= 0x333333333333333)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::ImportedScene>>(a2, v43);
              }
            }

            std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
          }

          v44 = *(a2 + 8) - v40;
          if (v44 >= v39)
          {
            v46 = std::__copy_impl::operator()[abi:ne200100]<realityio::ImportedScene *,realityio::ImportedScene *,realityio::ImportedScene *>(v38, v37, v40);
            std::vector<realityio::ImportedScene>::__base_destruct_at_end[abi:ne200100](a2, v46);
          }

          else
          {
            std::__copy_impl::operator()[abi:ne200100]<realityio::ImportedScene *,realityio::ImportedScene *,realityio::ImportedScene *>(v38, v38 + v44, v40);
            *(a2 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<realityio::ImportedScene>,realityio::ImportedScene*,realityio::ImportedScene*,realityio::ImportedScene*>(a2, v38 + v44, v37, *(a2 + 8));
          }
        }
      }
    }

    goto LABEL_76;
  }

  v17 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(IsPseudoRoot);
  MEMORY[0x24C1A5DE0](&v55, realityio::kStageSceneLibraryAssetBuilderIdentifier);
  realityio::BuilderDependencyDAG::getBuilderAtPrimPathWithBuilderIdentifier(v7, v17, &v55, &v47);
  v19 = v47;
  v18 = *&v48[0];
  if (*&v48[0])
  {
    atomic_fetch_add_explicit((*&v48[0] + 16), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if ((v55 & 7) != 0)
  {
    atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (!v18)
  {
    goto LABEL_78;
  }

  v20 = std::__shared_weak_count::lock(v18);
  if (v20)
  {
    v21 = v20;
    if (v19)
    {
      v22 = **v19;
      if (v23)
      {
        v24 = v23;
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        realityio::StageSceneLibraryAssetBuilder::getImportedScene(v24, &v47);
        v25 = BYTE7(v48[2]);
        if (SBYTE7(v48[2]) < 0)
        {
          v25 = *(&v48[1] + 1);
        }

        if (v25)
        {
          v26 = HIBYTE(v48[3]);
          if (v48[3] < 0)
          {
            v26 = *&v48[3];
          }

          if (v26)
          {
            v27 = *(a2 + 8);
            if (v27 >= *(a2 + 16))
            {
              v30 = std::vector<realityio::ImportedScene>::__emplace_back_slow_path<realityio::ImportedScene>(a2, &v47);
            }

            else
            {
              *v27 = v47;
              *(v27 + 8) = v48[0];
              v48[0] = 0u;
              v28 = *&v48[2];
              *(v27 + 24) = v48[1];
              *(v27 + 40) = v28;
              memset(&v48[1], 0, 24);
              v29 = *(&v48[3] + 1);
              *(v27 + 48) = *(&v48[2] + 8);
              *(v27 + 64) = v29;
              memset(&v48[2] + 8, 0, 24);
              *(v27 + 72) = v49;
              v30 = v27 + 80;
            }

            *(a2 + 8) = v30;
          }
        }

        if (SHIBYTE(v48[3]) < 0)
        {
          operator delete(*(&v48[2] + 1));
        }

        if (SBYTE7(v48[2]) < 0)
        {
          operator delete(*&v48[1]);
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(v48 + 1);
        realityio::WrappedRERef<void *>::~WrappedRERef(v48);
      }
    }

LABEL_76:
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

LABEL_77:
  std::__shared_weak_count::__release_weak(v18);
LABEL_78:
  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v61);
  if (v60)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v60);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v70);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v65);
LABEL_83:
  if ((v78 & 7) != 0)
  {
    atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v76);
  if (v75)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v75);
  }

  return pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v79);
}

void sub_24752DDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v32 + 8) = v35;
  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  std::__shared_weak_count::__release_weak(v33);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a28);
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeRange::~UsdPrimSubtreeRange(&a32);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v36 - 120));
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr((v36 - 88));
  _Unwind_Resume(a1);
}

__CFString *RIOImportSessionCopySceneAssetName(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return &stru_28595E8A0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  getImportedScenes(a1, &v10);
  if (0xCCCCCCCCCCCCCCCDLL * ((v11 - v10) >> 4) <= a2)
  {
    v8 = &stru_28595E8A0;
  }

  else
  {
    v3 = v10 + 80 * a2;
    v6 = *(v3 + 48);
    v4 = v3 + 48;
    v5 = v6;
    if (*(v4 + 23) >= 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    v8 = CFStringCreateWithCString(0, v7, 0x8000100u);
  }

  v13 = &v10;
  std::vector<realityio::ImportedScene>::__destroy_vector::operator()[abi:ne200100](&v13);
  return v8;
}

void sub_24752DFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<realityio::ImportedScene>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__CFString *RIOImportSessionCopySceneName(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return &stru_28595E8A0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  getImportedScenes(a1, &v10);
  if (0xCCCCCCCCCCCCCCCDLL * ((v11 - v10) >> 4) <= a2)
  {
    v8 = &stru_28595E8A0;
  }

  else
  {
    v3 = v10 + 80 * a2;
    v6 = *(v3 + 24);
    v4 = v3 + 24;
    v5 = v6;
    if (*(v4 + 23) >= 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    v8 = CFStringCreateWithCString(0, v7, 0x8000100u);
  }

  v13 = &v10;
  std::vector<realityio::ImportedScene>::__destroy_vector::operator()[abi:ne200100](&v13);
  return v8;
}

void sub_24752E074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<realityio::ImportedScene>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RIOImportSessionIsSceneActive(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    getImportedScenes(a1, &v5);
    if (0xCCCCCCCCCCCCCCCDLL * ((v6 - v5) >> 4) <= a2)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(v5 + 80 * a2 + 72);
    }

    v8 = &v5;
    std::vector<realityio::ImportedScene>::__destroy_vector::operator()[abi:ne200100](&v8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_24752E11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<realityio::ImportedScene>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RIOImportSessionRegisterBuilderGenerator(uint64_t a1, void *a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1)
  {
    if (v3)
    {
      v6 = *(a1 + 32);
      v5 = *(v6 + 56);
      if (v5)
      {
        if (*(v6 + 40))
        {
          v9[0] = &unk_28594A8A8;
          v9[1] = a1;
          v9[2] = MEMORY[0x24C1A9770](v3);
          v9[3] = v9;
          v5 = realityio::BuilderRegistry::registerBuilder(v5, v9);
          std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v9);
        }

        else
        {
          v5 = 1;
        }
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_24752E20C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

uint64_t *RIOImportSessionUnregisterBuilderWithIdentifier(uint64_t a1, __CFString *this)
{
  v2 = 0;
  if (a1 && this)
  {
    realityio::CFStringCopyUTF8String(this, v8);
    if (v8[0] == 1)
    {
      v4 = SHIBYTE(v9.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v7, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
      }

      else
      {
        v7 = v9;
      }

      v2 = *(*(a1 + 32) + 56);
      if (v2)
      {
        if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v7;
        }

        v2 = realityio::BuilderRegistry::unregisterBuilder(v2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v7.__r_.__value_.__l.__data_);
        if ((v4 & 0x80000000) == 0)
        {
          return v2;
        }
      }

      else if ((v4 & 0x80000000) == 0)
      {
        return v2;
      }

      operator delete(v9.__r_.__value_.__l.__data_);
      return v2;
    }

    return 0;
  }

  return v2;
}

void sub_24752E334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *RIOImportSessionCopyAllRegisteredBuilderIdentifiers(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v3 = Mutable;
  if (a1)
  {
    v4 = *(*(a1 + 32) + 56);
    if (v4)
    {
      v5 = *v4;
      v6 = v4[1];
      if (*v4 != v6)
      {
        do
        {
          v7 = *v5;
          v8 = *(v5 + 8);
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v9 = *v7 & 0xFFFFFFFFFFFFFFF8;
          if (v9)
          {
            EmptyString = v9 + 16;
          }

          else
          {
            EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Mutable);
          }

          if (*(EmptyString + 23) >= 0)
          {
            v11 = EmptyString;
          }

          else
          {
            v11 = *EmptyString;
          }

          v13 = CFStringCreateWithCString(0, v11, 0x8000100u);
          CFArrayAppendValue(v3, v13);
          Mutable = realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v13);
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

          v5 += 16;
        }

        while (v5 != v6);
      }
    }
  }

  return v3;
}

void sub_24752E46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOImportSessionCopyBuilderAtPrimPathWithIdentifier(uint64_t a1, uint64_t a2, __CFString *this)
{
  v3 = 0;
  if (a2 && a1 && this)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    v7 = *(v5 + 48);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v6 && (v8 = *(v6 + 248), realityio::CFStringCopyUTF8String(this, v15), (v15[0] & 1) != 0))
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v14 = __p;
      }

      MEMORY[0x24C1A5E00](&v12, &v14);
      realityio::BuilderDependencyDAG::getBuilderAtPrimPathWithBuilderIdentifier(v8, (a2 + 16), &v12, &v13);
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = *MEMORY[0x277CBECE8];
      if (RIOBuilderGetTypeID::onceToken != -1)
      {
        dispatch_once(&RIOBuilderGetTypeID::onceToken, &__block_literal_global_35);
      }

      Instance = _CFRuntimeCreateInstance();
      v3 = Instance;
      if (Instance)
      {
        *(Instance + 16) = v13;
      }

      else if (*(&v13 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if ((v15[0] & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v3 = 0;
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  return v3;
}

void sub_24752E648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  operator delete(__p);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void realityio::BuilderDependencyDAG::getBuilderAtPrimPathWithBuilderIdentifier(realityio::BuilderDependencyDAG *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  realityio::BuilderDependencyDAG::getWeakBuilderAtPrimPathWithBuilderIdentifier(this, a2, a3, &v6);
  *a4 = 0;
  a4[1] = 0;
  if (v7)
  {
    v5 = std::__shared_weak_count::lock(v7);
    a4[1] = v5;
    if (v5)
    {
      *a4 = v6;
    }

    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

uint64_t RIOImportSessionGetEntityAtPrimPath(uint64_t a1, uint64_t a2)
{
  EntityAtPrimPath = 0;
  if (a1 && a2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v6, (a2 + 16));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v7, (a2 + 20));
    EntityAtPrimPath = realityio::ImportSession::getEntityAtPrimPath(a1 + 16, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  }

  return EntityAtPrimPath;
}

void sub_24752E7AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOImportSessionCopyPrimPathForEntity()
{
  if (!REComponentClassFromName() || !REEntityGetCustomComponent())
  {
    return 0;
  }

  Object = RECustomComponentGetObject();
  std::string::basic_string[abi:ne200100]<0>(__p, *Object);
  MEMORY[0x24C1A5D70](&v5, __p);
  v1 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v1;
}

void sub_24752E868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__CFArray *RIOImportSessionCopyExtraAssetTags(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    realityio::ImportSession::extraAssets((a1 + 16), &v12);
    v3 = v12;
    if (v12 != v13)
    {
      do
      {
        if (*(v3 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v10, v3[4], v3[5]);
        }

        else
        {
          v10 = *(v3 + 4);
        }

        v11 = v3[7];
        if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v4 = &v10;
        }

        else
        {
          v4 = v10.__r_.__value_.__r.__words[0];
        }

        v9 = CFStringCreateWithCString(0, v4, 0x8000100u);
        CFArrayAppendValue(Mutable, v9);
        realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v9);
        if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v10.__r_.__value_.__l.__data_);
        }

        v5 = v3[1];
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = v3[2];
            v7 = *v6 == v3;
            v3 = v6;
          }

          while (!v7);
        }

        v3 = v6;
      }

      while (v6 != v13);
    }

    std::__tree<std::string>::destroy(&v12, v13[0]);
  }

  return Mutable;
}

void *realityio::ImportSession::extraAssets@<X0>(realityio::ImportSession *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 2);
  std::mutex::lock((v3 + 184));
  std::mutex::unlock((v3 + 184));

  return std::map<std::string,REAsset *>::map[abi:ne200100](a2, (v3 + 160));
}

uint64_t RIOImportSessionGetExtraAssetWithTag(uint64_t a1, char *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    realityio::ImportSession::extraAssets((a1 + 16), &v8);
    std::string::basic_string[abi:ne200100]<0>(__p, a2);
    v4 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v8, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    if (&v9 == v4)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(v4 + 56);
    }

    std::__tree<std::string>::destroy(&v8, v9);
  }

  return v2;
}

void sub_24752EAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, char *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::string>::destroy(&a15, a16);
  _Unwind_Resume(a1);
}

BOOL RIOImportSessionSetExtraAssetWithTag(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, a2);
        v3 = realityio::ImportSessionImpl::addExtraAsset(*(a1 + 32), __p, a3);
        if (v8 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return v3;
}

void sub_24752EB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RIOImportSessionRemoveExtraAssetWithTag(uint64_t a1, char *a2)
{
  if (a1 && a2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, a2);
    realityio::ImportSessionImpl::removeExtraAsset(*(a1 + 32), __p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_24752EC08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RIOImportSessionRegisterAudioAsset(realityio *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 && a2 && a3 && a4)
  {
    std::string::basic_string[abi:ne200100]<0>(buf, a2);
    std::string::basic_string[abi:ne200100]<0>(&__p, a3);
    realityio::ImportSession::registerAudioAsset(a1 + 16, buf, &__p, a4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v10 < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v7 = *(realityio::logObjects(a1) + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "RIOImportSessionRegisterAudioAsset has been called with nullptrs and that is not supported.", buf, 2u);
    }
  }
}

void sub_24752ECFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOImportSessionReloadAsset(uint64_t a1, void *a2, CFErrorRef *a3)
{
  v5 = a2;
  v6 = [v5 isFileURL];
  if ((v6 & 1) == 0)
  {
    v8 = *(realityio::logObjects(v6) + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&dword_247485000, v8, OS_LOG_TYPE_ERROR, "CoreRealityIO only supports loading content from file URLs", __p, 2u);
    }

    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, [v5 fileSystemRepresentation]);
  v7 = realityio::ImportSession::reloadAsset(a1 + 16, __p, a3);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_8:

  return v7;
}

void sub_24752EE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t RIOImportSessionGetEngineRef(uint64_t result)
{
  if (result)
  {
    return *(*(result + 32) + 16);
  }

  return result;
}

void *RIOImportSessionSetMissingMaterial(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v5 = a2;
    if (a2)
    {
      RERetain();
      v4 = v3[4];
      v6 = a2;
      RERetain();
    }

    else
    {
      v4 = result[4];
      v6 = 0;
    }

    realityio::ImportSessionImpl::setMissingMaterial(v4, &v6);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v6);
    return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v5);
  }

  return result;
}

void RIOImportSessionGatherUsedTextureInfo(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v9 = 0;
    if (v5)
    {
      v8[0] = &unk_28594A938;
      v8[1] = MEMORY[0x24C1A9770](v5);
      v9 = v8;
    }

    realityio::ImportSession::gatherTextureInfo(a1 + 16, a2, 1, v8);
    std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::~__value_func[abi:ne200100](v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_24752EFA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void RIOImportSessionGatherTextureInfo(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v9 = 0;
    if (v5)
    {
      v8[0] = &unk_28594A938;
      v8[1] = MEMORY[0x24C1A9770](v5);
      v9 = v8;
    }

    realityio::ImportSession::gatherTextureInfo(a1 + 16, a2, 0, v8);
    std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::~__value_func[abi:ne200100](v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_24752F08C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void RIOImportSessionGatherTextureInfoWithOptionallyUnusedTextures(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  if (a1)
  {
    v11 = 0;
    if (v7)
    {
      v10[0] = &unk_28594A938;
      v10[1] = MEMORY[0x24C1A9770](v7);
      v11 = v10;
    }

    realityio::ImportSession::gatherTextureInfo(a1 + 16, a2, a3, v10);
    std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::~__value_func[abi:ne200100](v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_24752F17C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void RIOImportSessionGatherMeshEstimates(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v12 = *(*(*(a1 + 32) + 8) + 16);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v12);
    realityio::internal::PrimToEntityMap::makePrimToEntityMap(&v12, __p);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v12);
    if (v15 != v14)
    {
      v4 = 0;
      v5 = 0;
      if ((0x4EC4EC4EC4EC4EC5 * ((v15 - v14) >> 3)) <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = 0x4EC4EC4EC4EC4EC5 * ((v15 - v14) >> 3);
      }

      do
      {
        if (0x4EC4EC4EC4EC4EC5 * ((v15 - v14) >> 3) <= v5)
        {
          v7 = 0;
        }

        else
        {
          v7 = v14 + v4;
        }

        v9 = *(*(*(a1 + 32) + 8) + 16);
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v9);
        realityio::internal::PrimToEntityMap::EntityData::estimateMeshes(v7, &v9, v10);
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v9);
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v7 + 24));
        (*(v3 + 2))(v3, Text, LODWORD(v10[0]), v10[1], v10[2], v11);
        ++v5;
        v4 += 104;
      }

      while (v6 != v5);
    }

    std::__tree<std::string>::destroy(v17, v17[1]);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>>::destroy(v16, v16[1]);
    v10[0] = &v14;
    std::vector<realityio::internal::PrimToEntityMap::EntityData>::__destroy_vector::operator()[abi:ne200100](v10);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_24752F318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va);

  _Unwind_Resume(a1);
}

uint64_t RIOImportSessionSetIsLoadModelUseCase(uint64_t result, char a2)
{
  if (result)
  {
    *(*(result + 32) + 272) = a2;
  }

  return result;
}

uint64_t RIOImportSessionGetIsLoadModelUseCase(uint64_t a1)
{
  if (a1)
  {
    v1 = *(*(a1 + 32) + 272);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

realityio *RIOImportSessionSetOriginalUrl(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  v4 = [v3 isFileURL];
  v5 = v4;
  if (v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, [v3 fileSystemRepresentation]);
    std::string::operator=((*(a1 + 32) + 280), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v6 = *(realityio::logObjects(v4) + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_247485000, v6, OS_LOG_TYPE_ERROR, "CoreRealityIO only supports loading content from file URLs", &__p, 2u);
    }
  }

  return v5;
}

void sub_24752F45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

CFURLRef RIOImportSessionGetOriginalUrl(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *MEMORY[0x277CBECE8];
  v2 = *(a1 + 32);
  if (*(v2 + 303) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v2 + 280), *(v2 + 288));
  }

  else
  {
    __p = *(v2 + 280);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v5 = CFStringCreateWithCString(v1, p_p, 0x8000100u);
  v8 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v3 = CFURLCreateWithString(v1, v5, 0);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v8);
  return v3;
}

void RIOImportSessionSetBundleInfo(uint64_t a1, char *a2, char *a3, char *a4)
{
  if (a1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, a2);
    std::string::basic_string[abi:ne200100]<0>(&v9, a3);
    std::string::basic_string[abi:ne200100]<0>(&v8, a4);
    v7 = *(a1 + 32);
    std::string::operator=((v7 + 304), &__str);
    std::string::operator=((v7 + 328), &v9);
    std::string::operator=((v7 + 352), &v8);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void sub_24752F634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

__CFString *RIOImportSessionCopyBundleId(uint64_t a1)
{
  if (!a1)
  {
    return &stru_28595E8A0;
  }

  std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(&v4, (*(a1 + 32) + 304), (*(a1 + 32) + 352));
  if ((v4.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v1 = &v4;
  }

  else
  {
    v1 = v4.__r_.__value_.__r.__words[0];
  }

  v2 = CFStringCreateWithCString(0, v1, 0x8000100u);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  return v2;
}

__CFString *RIOImportSessionCopyBundleNameInBundle(uint64_t a1)
{
  if (!a1)
  {
    return &stru_28595E8A0;
  }

  std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(&v4, (*(a1 + 32) + 304), (*(a1 + 32) + 352));
  if (v6 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v2 = CFStringCreateWithCString(0, p_p, 0x8000100u);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  return v2;
}

CFStringRef RIOImportSessionCopyAssetURLFromBundle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2 && a3)
  {
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
    if (realityio::ImportSessionImpl::getAssetURLFromBundle(*(a1 + 32), a2, (a3 + 16), __p))
    {
      if (v7 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      v3 = CFStringCreateWithCString(0, v4, 0x8000100u);
    }

    else
    {
      v3 = 0;
    }

    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v3;
}

void sub_24752F868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RIOImportSessionGatherFaultRecords(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = a3;
  if (a1)
  {
    v19[0] = &unk_28594A9C8;
    v19[1] = &v18;
    v19[3] = v19;
    v5 = *(a1 + 32);
    std::__function::__value_func<void ()(char const*,ExecFault::Type,char const*)>::__value_func[abi:ne200100](v20, v19);
    (*(*v5 + 40))(v5, v20);
    std::__function::__value_func<void ()(char const*,ExecFault::Type,char const*)>::~__value_func[abi:ne200100](v20);
    std::__function::__value_func<void ()(char const*,ExecFault::Type,char const*)>::~__value_func[abi:ne200100](v19);
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    v8 = *(v6 + 48);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    DeploymentErrors = realityio::LiveSceneManager::getDeploymentErrors(v7, a2);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v10 = DeploymentErrors[1];
    if (*DeploymentErrors != v10)
    {
      v11 = *DeploymentErrors + 8;
      do
      {
        v12 = v11 - 8;
        v13 = v18;
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v11 - 8));
        if (*(v11 + 24))
        {
          v15 = 4;
        }

        else
        {
          v15 = 3;
        }

        v16 = v11;
        if (*(v11 + 23) < 0)
        {
          v16 = *v11;
        }

        v13[2](v13, Text, v15, v16);
        v11 += 40;
      }

      while (v12 + 40 != v10);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_24752FA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

__CFDictionary *RIOImportSessionCopyStatistics(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  (*(**(a1 + 32) + 96))(*(a1 + 32), &v4);
  v1 = ConvertNestedDictionaryOfStatistics(&v4);
  v2 = v4;
  v4 = 0;
  if (v2)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v2, *(v2 + 8));
    MEMORY[0x24C1A91B0](v2, 0x1020C4062D53EE8);
  }

  return v1;
}

void sub_24752FAF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(va);
  _Unwind_Resume(a1);
}

__CFDictionary *ConvertNestedDictionaryOfStatistics(const pxrInternal__aapl__pxrReserved__::VtDictionary *a1)
{
  v51 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(a1);
  v5 = v4;
  v46 = v3;
  v47 = v4;
  v6 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  v8 = v6;
  v9 = v7;
  if (v7)
  {
    v10 = v3 == v6;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v5 != v7 || (v11 & 1) == 0)
  {
    v14 = *MEMORY[0x277CBECE8];
    while (1)
    {
      std::pair<std::string const,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100](&__p, (v3 + 32));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v16 = CFStringCreateWithCString(v14, p_p, 0x8000100u);
      cf = 0;
      v45 = v16;
      v17 = v50;
      if (!v50)
      {
        goto LABEL_79;
      }

      v18 = (v50 & 0xFFFFFFFFFFFFFFF8);
      if (!strcmp((*(*(v50 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12VtDictionaryE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
LABEL_18:
        if ((v17 & 4) != 0)
        {
          v20 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(&v49);
        }

        else
        {
          v20 = v49;
        }

        v21 = ConvertNestedDictionaryOfStatistics(v20);
        v22 = cf;
        if (!cf)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      if ((v17 & 4) != 0)
      {
        v17 = v50;
        if (IsImpl)
        {
          goto LABEL_18;
        }

        if (!v50)
        {
          goto LABEL_79;
        }

        v18 = (v50 & 0xFFFFFFFFFFFFFFF8);
      }

      if (v18[4] == 9)
      {
LABEL_25:
        v23 = &v49;
        if ((v17 & 4) != 0)
        {
          v23 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(&v49);
        }

        valuePtr.__r_.__value_.__r.__words[0] = *v23;
        v21 = CFNumberCreate(v14, kCFNumberDoubleType, &valuePtr);
        v22 = cf;
        if (!cf)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      if ((v17 & 4) != 0)
      {
        v24 = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&v49, MEMORY[0x277D827A8]);
        v17 = v50;
        if (v24)
        {
          goto LABEL_25;
        }

        if (!v50)
        {
          goto LABEL_79;
        }

        v18 = (v50 & 0xFFFFFFFFFFFFFFF8);
      }

      if (v18[4] == 5)
      {
LABEL_34:
        v25 = &v49;
        if ((v17 & 4) != 0)
        {
          v25 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(&v49);
        }

        LODWORD(valuePtr.__r_.__value_.__l.__data_) = *v25;
        v21 = CFNumberCreate(v14, kCFNumberIntType, &valuePtr);
        v22 = cf;
        if (!cf)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      if ((v17 & 4) != 0)
      {
        v26 = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&v49, MEMORY[0x277D827C0]);
        v17 = v50;
        if (v26)
        {
          goto LABEL_34;
        }

        if (!v50)
        {
          goto LABEL_79;
        }

        v18 = (v50 & 0xFFFFFFFFFFFFFFF8);
      }

      if (!v18[4])
      {
        break;
      }

      if ((v17 & 4) != 0)
      {
        v27 = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&v49, MEMORY[0x277D82798]);
        v17 = v50;
        if (v27)
        {
          break;
        }

        if (!v50)
        {
          goto LABEL_79;
        }

        v18 = (v50 & 0xFFFFFFFFFFFFFFF8);
      }

      if (!strcmp((*(*v18 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(MEMORY[0x277D827D0] + 8) & 0x7FFFFFFFFFFFFFFFLL)))
      {
LABEL_54:
        v30 = &v49;
        if ((v17 & 4) != 0)
        {
          v30 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(&v49);
        }

        valuePtr.__r_.__value_.__r.__words[0] = *v30;
        v21 = CFNumberCreate(v14, kCFNumberSInt64Type, &valuePtr);
        v22 = cf;
        if (!cf)
        {
          goto LABEL_67;
        }

LABEL_66:
        CFRelease(v22);
        goto LABEL_67;
      }

      if ((v17 & 4) != 0)
      {
        v29 = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&v49, MEMORY[0x277D827D0]);
        v17 = v50;
        if (v29)
        {
          goto LABEL_54;
        }

        if (!v50)
        {
          goto LABEL_79;
        }

        v18 = (v50 & 0xFFFFFFFFFFFFFFF8);
      }

      if (strcmp((*(*v18 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(MEMORY[0x277D827D8] + 8) & 0x7FFFFFFFFFFFFFFFLL)))
      {
        if ((v17 & 4) == 0)
        {
          goto LABEL_70;
        }

        v31 = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&v49, MEMORY[0x277D827D8]);
        v17 = v50;
        if (!v31)
        {
          if (!v50)
          {
            goto LABEL_79;
          }

          v18 = (v50 & 0xFFFFFFFFFFFFFFF8);
LABEL_70:
          if (v18[4] == 12)
          {
            if ((v17 & 4) == 0)
            {
              goto LABEL_72;
            }

LABEL_78:
            v33 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(&v49);
            goto LABEL_73;
          }

          {
            v17 = v50;
            if ((v50 & 4) != 0)
            {
              goto LABEL_78;
            }

LABEL_72:
            v33 = v49;
LABEL_73:
            if (*(v33 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&valuePtr, *v33, *(v33 + 1));
            }

            else
            {
              v34 = *v33;
              valuePtr.__r_.__value_.__r.__words[2] = *(v33 + 2);
              *&valuePtr.__r_.__value_.__l.__data_ = v34;
            }

            if ((valuePtr.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_valuePtr = &valuePtr;
            }

            else
            {
              p_valuePtr = valuePtr.__r_.__value_.__r.__words[0];
            }

            v38 = CFStringCreateWithCString(v14, p_valuePtr, 0x8000100u);
            v39 = cf;
            if (cf)
            {
LABEL_85:
              CFRelease(v39);
            }
          }

          else
          {
LABEL_79:
            pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v42, &v49);
            v35 = std::string::insert(&v42, 0, "UnknownDataType_");
            v36 = *&v35->__r_.__value_.__l.__data_;
            valuePtr.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
            *&valuePtr.__r_.__value_.__l.__data_ = v36;
            v35->__r_.__value_.__l.__size_ = 0;
            v35->__r_.__value_.__r.__words[2] = 0;
            v35->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v42.__r_.__value_.__l.__data_);
            }

            if ((valuePtr.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v37 = &valuePtr;
            }

            else
            {
              v37 = valuePtr.__r_.__value_.__r.__words[0];
            }

            v38 = CFStringCreateWithCString(v14, v37, 0x8000100u);
            v39 = cf;
            if (cf)
            {
              goto LABEL_85;
            }
          }

          cf = v38;
          if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(valuePtr.__r_.__value_.__l.__data_);
          }

          goto LABEL_88;
        }
      }

      v32 = &v49;
      if ((v17 & 4) != 0)
      {
        v32 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(&v49);
      }

      valuePtr.__r_.__value_.__r.__words[0] = *v32;
      v21 = CFNumberCreate(v14, kCFNumberLongLongType, &valuePtr);
      v22 = cf;
      if (cf)
      {
        goto LABEL_66;
      }

LABEL_67:
      cf = v21;
LABEL_88:
      CFDictionaryAddValue(Mutable, v45, cf);
      realityio::WrappedCFRef<void const*>::~WrappedCFRef(&cf);
      realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v45);
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v49);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment(&v46);
      v3 = v46;
      v40 = v46 == v8 || v9 == 0;
      if (v47 == v9 && v40)
      {
        goto LABEL_9;
      }
    }

    v28 = &v49;
    if ((v17 & 4) != 0)
    {
      v28 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(&v49);
    }

    LODWORD(valuePtr.__r_.__value_.__l.__data_) = *v28;
    v21 = CFNumberCreate(v14, kCFNumberIntType, &valuePtr);
    v22 = cf;
    if (!cf)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
  return Mutable;
}