uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpIiEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t realityio::replication::details::writeVector<std::vector<int>>(uint64_t a1, uint64_t *a2)
{
  v5 = (a2[1] - *a2) >> 2;
  std::ostream::write();
  v3 = *a2;
  return std::ostream::write();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpIxEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t realityio::replication::details::writeVector<std::vector<long long>>(uint64_t a1, uint64_t *a2)
{
  v5 = (a2[1] - *a2) >> 3;
  std::ostream::write();
  v3 = *a2;
  return std::ostream::write();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpIjEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpIyEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__16vectorIN32pxrInternal__aapl__pxrReserved__7SdfPathENS_9allocatorIS2_EEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  v5 = *a2;
  v4 = a2[1];
  result = std::ostream::write();
  v7 = v4 - v5;
  if (v7)
  {
    v8 = *a2;
    do
    {
      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v8);
      result = realityio::replication::write(a1, String);
      v8 = (v8 + 8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(pxrInternal__aapl__pxrReserved__::TfToken *a1, void *a2)
{
  v5 = *a2;
  v4 = a2[1];
  result = std::ostream::write();
  v7 = v4 - v5;
  if (v7)
  {
    v8 = *a2;
    do
    {
      result = realityio::replication::write(a1, v8++);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfPermission>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__13SdfPermissionE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfVariability>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__14SdfVariabilityE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::map<std::string,std::string>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x8000000247762DBCLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

void realityio::replication::details::writeMap<std::map<std::string,std::string>>(uint64_t a1, void *a2)
{
  v12.__r_.__value_.__r.__words[0] = a2[2];
  std::ostream::write();
  v6 = *a2;
  v4 = (a2 + 1);
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      std::pair<std::string const,std::string>::pair[abi:ne200100](&v12, v5 + 2);
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v11, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
      }

      else
      {
        v11 = v12;
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v13;
      }

      realityio::replication::write(a1, &v11);
      realityio::replication::write(a1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      v7 = *(v5 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v5 + 2);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v4);
  }
}

void sub_2476B79B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&a23);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfPayload>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__10SdfPayloadE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::vector<double>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x8000000247762E60 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__16vectorIN32pxrInternal__aapl__pxrReserved__14SdfLayerOffsetENS_9allocatorIS2_EEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>(uint64_t a1, uint64_t *a2)
{
  v5 = (a2[1] - *a2) >> 4;
  std::ostream::write();
  v3 = *a2;
  return std::ostream::write();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::vector<std::string>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x8000000247762EDDLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t realityio::replication::details::writeVector<std::vector<std::string>>(uint64_t a1, uint64_t **a2)
{
  v5 = *a2;
  v4 = a2[1];
  result = std::ostream::write();
  v7 = v4 - v5;
  if (v7)
  {
    v8 = *a2;
    do
    {
      result = realityio::replication::write(a1, v8);
      v8 += 3;
      v7 -= 24;
    }

    while (v7);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__20SdfUnregisteredValueE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpINS_20SdfUnregisteredValueEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  result = std::ostream::write();
  v7 = v4 - v5;
  if (v7)
  {
    v8 = *a2;
    do
    {
      result = realityio::replication::write(a1, v8);
      v8 += 16;
      v7 -= 16;
    }

    while (v7);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpINS_10SdfPayloadEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>>(uint64_t a1, uint64_t **a2)
{
  v5 = *a2;
  v4 = a2[1];
  result = std::ostream::write();
  v7 = v4 - v5;
  if (v7)
  {
    v8 = *a2;
    do
    {
      result = realityio::replication::write(a1, v8);
      v8 += 6;
      v7 -= 48;
    }

    while (v7);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfTimeCode>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__11SdfTimeCodeE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t realityio::TransformComponentBuilder::kOutputName(realityio::TransformComponentBuilder *this)
{
  if ((atomic_load_explicit(&qword_27EE535C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE535C0))
  {
    operator new();
  }

  return _MergedGlobals_52;
}

void sub_2476B805C(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  __cxa_guard_abort(&qword_27EE535C0);
  _Unwind_Resume(a1);
}

void realityio::TransformComponentBuilder::TransformComponentBuilder(realityio::TransformComponentBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v6, "TransformComponentBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kTransformComponentBuilderIdentifier);
  realityio::generateTransformDirtyStageSubscription(&v4);
  v8[0] = &unk_28595C640;
  v8[3] = v8;
  v7[0] = &unk_28595C6C0;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_2476B81D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
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

uint64_t realityio::TransformComponentBuilder::run(realityio::TransformComponentBuilder *this, realityio::Inputs *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = (a2 + 32);
  v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v45, v5, v4);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v45);
  if (IsValid)
  {
    v7 = *(realityio::logObjects(IsValid) + 24);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_247485000, v7, OS_LOG_TYPE_INFO, "Updating entity transform", buf, 2u);
    }

    v9 = realityio::EntityBuilder::kInputName(v8);
    realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v9, v43);
    if (v43[0])
    {
      v11 = realityio::EntityBuilder::kPrimPathOutputName(v10);
      realityio::Inputs::_getValue<pxrInternal__aapl__pxrReserved__::SdfPath *>(a2, v11, v39);
      if (v39[0])
      {
        v13 = v40;
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v45, buf);
        v14 = *v13;
        v15 = *buf;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        v16 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
        if (v14 == v15)
        {
          *buf = 0;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          realityio::WrappedRERef<REAsset *>::operator=(v16, v44);
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v37 = MEMORY[0x277D86748] + 16;
          pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v36, 1.0);
          if (v38 && (*(v38 + 57) & 8) == 0 && (*(v37 + 32))(&v37))
          {
            MEMORY[0x24C1A54B0](v35, &v37);
            pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery::GetLocalTransformation();
            ComponentType = v35;
            std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__destroy_vector::operator()[abi:ne200100](&ComponentType);
          }

          MEMORY[0x24C1A4BE0](v35, v36);
          REDecomposeMatrix();
          v17 = atomic_load(&realityio::tokens::TransformBuilderTokens);
          if (v17)
          {
            pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v34, &v45, (v17 + 64));
            if (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredValue(&v34))
            {
              pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&ComponentType, &v45);
              v18 = v52;
              if (v52)
              {
                if (*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(&v52) + 14))
                {
                  v18 = ComponentType;
                }

                else
                {
                  v18 = 0;
                }
              }

              __p = v18;
              pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&__p);
              v19 = atomic_load(&realityio::tokens::TransformBuilderTokens);
              if (!v19)
              {
                pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData();
              }

              v33[0] = 0;
              RealityKitStage = realityio::getRealityKitStageMetadata<BOOL>(&__p, (v19 + 56), v33);
              pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&__p);
              v21 = v52;
              if (v52 && atomic_fetch_add_explicit((v52 + 8), 0xFFFFFFFF, memory_order_release) == 1)
              {
                (*(*v21 + 8))(v21);
              }

              if ((RealityKitStage & 1) == 0)
              {
                v56 = 1;
                ComponentType = REAnchoringComponentGetComponentType();
                std::__tree<REComponentClass *>::__emplace_unique_key_args<REComponentClass *,REComponentClass * const&>(this + 40, &ComponentType);
                pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
              }
            }

            v56 = 0;
            v29 = *(a2 + 5);
            v49 = this;
            v50[21] = 0;
            operator new();
          }

          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData();
        }

        v25 = *(realityio::logObjects(v16) + 24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v45, v36);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v36);
          v28 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v40);
          *buf = 136315394;
          *&buf[4] = Text;
          v54 = 2080;
          v55 = v28;
          _os_log_impl(&dword_247485000, v25, OS_LOG_TYPE_INFO, "Skipping entity transform for %s becuase entity is for %s", buf, 0x16u);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v36);
        }
      }

      else
      {
        v25 = *(realityio::logObjects(v12) + 24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v45, v36);
          v26 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v36);
          *buf = 136315138;
          *&buf[4] = v26;
          _os_log_impl(&dword_247485000, v25, OS_LOG_TYPE_INFO, "Skipping entity transform for %s becuase entity path is not available for some reason", buf, 0xCu);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v36);
        }
      }

      if ((v39[0] & 1) == 0 && v42 < 0)
      {
        operator delete(v41);
      }
    }

    else
    {
      v24 = *(realityio::logObjects(v10) + 24);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247485000, v24, OS_LOG_TYPE_DEFAULT, "Stopping operation to set transform component because entity no longer exists", buf, 2u);
      }
    }

    realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v43);
  }

  else
  {
    v22 = *(realityio::logObjects(IsValid) + 24);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v45, v36);
      v23 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v36);
      *buf = 136315138;
      *&buf[4] = v23;
      _os_log_impl(&dword_247485000, v22, OS_LOG_TYPE_DEFAULT, "Stopping operation to set transform component because the prim is not valid: '%s'", buf, 0xCu);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v36);
    }
  }

  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v47);
  result = v46;
  if (v46)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v46);
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476B8AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a13);
  v72 = STACK[0x2B8];
  if (STACK[0x2B8] && atomic_fetch_add_explicit(v72 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v72 + 8))(v72);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a23);
  MEMORY[0x24C1A54D0](&a52);
  if ((a55 & 1) == 0 && a63 < 0)
  {
    operator delete(__p);
  }

  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a64);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a70);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::TransformAnchoringData::TransformAnchoringData(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    RERetain();
  }

  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 16) = v5;
  v8 = a2[9];
  *(a1 + 72) = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 72) &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = a2[10];
  *(a1 + 80) = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 80) &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), a2[11], a2[12]);
  }

  else
  {
    v10 = *(a2 + 11);
    *(a1 + 104) = a2[13];
    *(a1 + 88) = v10;
  }

  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 112), a2[14], a2[15]);
  }

  else
  {
    v11 = *(a2 + 7);
    *(a1 + 128) = a2[16];
    *(a1 + 112) = v11;
  }

  return a1;
}

void sub_2476B8E0C(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  v3 = *(v1 + 80);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(v1 + 72);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(v1);
  _Unwind_Resume(a1);
}

uint64_t realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 88);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 16));
  return a1;
}

void anonymous namespace::TransformAnchoringData::~TransformAnchoringData(void **this)
{
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  v2 = this[10];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = this[9];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(this);
}

uint64_t realityio::TransformComponentBuilder::clear(realityio::TransformComponentBuilder *this, realityio::Inputs *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 6);
  v5[0] = &unk_28595C990;
  v5[1] = a2;
  v5[2] = this;
  v5[3] = v5;
  (*(*v2 + 16))(v2, v5);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476B9014(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::TransformComponentBuilder::~TransformComponentBuilder(realityio::TransformComponentBuilder *this)
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

void sub_2476B94D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TransformComponentBuilder::TransformComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::TransformComponentBuilder::TransformComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::referenceImageCallback@<X0>(_anonymous_namespace_ *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdStage *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v11, this, a2);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v11))
  {
    v5 = atomic_load(&realityio::tokens::TransformBuilderTokens);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v7, &v11, (v5 + 64));
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredValue(&v7))
    {
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
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
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
  result = v12;
  if (v12)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12);
  }

  return result;
}

void sub_2476B9898(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  *(v3 - 40) = va;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100]((v3 - 40));
  pxrInternal__aapl__pxrReserved__::UsdRelationship::~UsdRelationship(va1);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v3 - 72));
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

void sub_2476B9A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_2476B9C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t std::__function::__func<realityio::TransformComponentBuilder::TransformComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::TransformComponentBuilder::TransformComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::Inputs::_getValue<void *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58[2] = *MEMORY[0x277D85DE8];
  v50 = 0;
  v51 = 0;
  v8 = *(a2 + 24);
  if (v8)
  {
    v51 = std::__shared_weak_count::lock(v8);
    if (v51)
    {
      v50 = *(a2 + 16);
    }
  }

  MEMORY[0x24C1A5E00](&v52, a3);
  v9 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(a2 + 8), &v50);
  if (v9 == v10)
  {
    std::operator+<char>();
    v11 = std::string::append(&v48, ") at prim path (");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a2 + 32));
    v14 = *(String + 23);
    if (v14 >= 0)
    {
      v15 = String;
    }

    else
    {
      v15 = *String;
    }

    if (v14 >= 0)
    {
      v16 = *(String + 23);
    }

    else
    {
      v16 = *(String + 8);
    }

    v17 = std::string::append(&v49, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v53.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v53.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v53, ")");
    goto LABEL_22;
  }

  v20 = 1;
  v21 = v9;
  do
  {
    v21 = *v21;
    --v20;
  }

  while (v21 != v10);
  if (v20)
  {
    std::operator+<char>();
    v22 = std::string::append(&v48, ") at prim path (");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a2 + 32));
    v25 = *(v24 + 23);
    if (v25 >= 0)
    {
      v26 = v24;
    }

    else
    {
      v26 = *v24;
    }

    if (v25 >= 0)
    {
      v27 = *(v24 + 23);
    }

    else
    {
      v27 = *(v24 + 8);
    }

    v28 = std::string::append(&v49, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v53.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v53.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v53, ") because more than one connected builder produced the same output type");
LABEL_22:
    v30 = *&v19->__r_.__value_.__l.__data_;
    v55 = v19->__r_.__value_.__r.__words[2];
    *__p = v30;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v56, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a1 + 8) = v56;
    v58[0] = v57.__r_.__value_.__l.__size_;
    v31 = v57.__r_.__value_.__r.__words[0];
    *(v58 + 7) = *(&v57.__r_.__value_.__r.__words[1] + 7);
    v32 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    memset(&v57, 0, sizeof(v57));
    *a1 = 0;
    *(a1 + 39) = *(v58 + 7);
    v33 = v58[0];
    *(a1 + 24) = v31;
    *(a1 + 32) = v33;
    *(a1 + 47) = v32;
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      v34 = v48.__r_.__value_.__r.__words[0];
LABEL_30:
      operator delete(v34);
      goto LABEL_50;
    }

    goto LABEL_50;
  }

  v35 = v9[5];
  v37 = *(v35 + 16);
  v36 = *(v35 + 24);
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v9[7] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v9[7] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  std::mutex::lock(v37 + 1);
  v39 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v37->__m_.__opaque[32], EmptyString);
  v41 = v39;
  v42 = &v37->__m_.__opaque[40];
  if (&v37->__m_.__opaque[40] != v39)
  {
    *&v40 = *(*(v39 + 56) + 8);
    v47 = v40;
    std::mutex::unlock(v37 + 1);
    if (!v36)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  std::operator+<char>();
  v43 = std::string::append(&v53, " does not exist in the builder outputs");
  v44 = *&v43->__r_.__value_.__l.__data_;
  v55 = v43->__r_.__value_.__r.__words[2];
  *__p = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  realityio::DetailedError::DetailedError(&v56, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
  v47 = v56;
  size = v57.__r_.__value_.__l.__size_;
  EmptyString = v57.__r_.__value_.__r.__words[0];
  LODWORD(v49.__r_.__value_.__l.__data_) = v57.__r_.__value_.__r.__words[2];
  *(v49.__r_.__value_.__r.__words + 3) = *(&v57.__r_.__value_.__r.__words[2] + 3);
  v4 = SHIBYTE(v57.__r_.__value_.__r.__words[2]);
  memset(&v57, 0, sizeof(v57));
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(v37 + 1);
  v56 = v47;
  if ((v4 & 0x80000000) == 0)
  {
    LODWORD(v48.__r_.__value_.__l.__data_) = v49.__r_.__value_.__l.__data_;
    *(v48.__r_.__value_.__r.__words + 3) = *(v49.__r_.__value_.__r.__words + 3);
    if (!v36)
    {
      goto LABEL_39;
    }

LABEL_38:
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    goto LABEL_39;
  }

  std::string::__init_copy_ctor_external(&v57, EmptyString, size);
  v47 = v56;
  size = v57.__r_.__value_.__l.__size_;
  v46 = v57.__r_.__value_.__r.__words[0];
  LOBYTE(v4) = *(&v57.__r_.__value_.__s + 23);
  LODWORD(v48.__r_.__value_.__l.__data_) = v57.__r_.__value_.__r.__words[2];
  *(v48.__r_.__value_.__r.__words + 3) = *(&v57.__r_.__value_.__r.__words[2] + 3);
  operator delete(EmptyString);
  EmptyString = v46;
  if (v36)
  {
    goto LABEL_38;
  }

LABEL_39:
  if (v42 == v41)
  {
    v56 = v47;
    if ((v4 & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(&v57, EmptyString, size);
      *a1 = 0;
      *(a1 + 8) = v56;
      *(a1 + 24) = v57;
      v34 = EmptyString;
      goto LABEL_30;
    }

    v57.__r_.__value_.__r.__words[0] = EmptyString;
    v57.__r_.__value_.__l.__size_ = size;
    LODWORD(v57.__r_.__value_.__r.__words[2]) = v48.__r_.__value_.__l.__data_;
    *(&v57.__r_.__value_.__r.__words[2] + 3) = *(v48.__r_.__value_.__r.__words + 3);
    *(&v57.__r_.__value_.__s + 23) = v4;
    *a1 = 0;
    *(a1 + 8) = v56;
    *(a1 + 24) = v57;
  }

  else
  {
    *a1 = 1;
    *(a1 + 8) = v47;
  }

LABEL_50:
  if ((v52 & 7) != 0)
  {
    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  v45 = *MEMORY[0x277D85DE8];
}

void sub_2476BA1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  operator delete(v33);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if ((a26 & 7) != 0)
  {
    atomic_fetch_add_explicit((a26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_28595C740;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 112);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 104);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 32));
  return a1;
}

void std::__function::__func<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_28595C740;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 112);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 104);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 32));

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28595C740;
  a2[2] = *(a1 + 16);
}

void *std::__function::__func<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 112);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 104);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 32));
}

void std::__function::__func<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 112);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 104);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 32));

  operator delete(a1);
}

void std::__function::__func<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = *(a1 + 16);
  RETransformComponentGetComponentType();
  v9[0] = &unk_28595C7B0;
  v9[1] = v3;
  v9[3] = v9;
  v5 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(v9, v5);
  RENetworkMarkComponentDirty();
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v9);
  if (*(a1 + 100) == 1)
  {
    v6 = *v3;
    REAnchoringComponentGetComponentType();
    v8[0] = &unk_28595C830;
    v8[1] = v3;
    v8[3] = v8;
    v7 = REEntityGetOrAddComponentByClass();
    std::function<void ()(REComponent *)>::operator()(v8, v7);
    RENetworkMarkComponentDirty();
    std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v8);
  }

  operator new();
}

void sub_2476BA858(_Unwind_Exception *a1)
{
  std::mutex::unlock(v3 + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio25TransformComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595C7B0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio25TransformComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[1];
  return RETransformComponentSetLocalSRT();
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio25TransformComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio25TransformComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio25TransformComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595C830;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio25TransformComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  if (*(v3 + 135) < 0)
  {
    v4 = *(v3 + 112);
  }

  if (*(v3 + 111) < 0)
  {
    v5 = *(v3 + 88);
  }

  v6 = *a2;
  v7 = atomic_load(&realityio::tokens::TransformBuilderTokens);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v7 + 24) ^ *(v3 + 72)) > 7)
  {
    v9 = atomic_load(&realityio::tokens::TransformBuilderTokens);
    if (!v9)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v9 + 16) ^ *(v3 + 72)) > 7)
    {
      v10 = atomic_load(&realityio::tokens::TransformBuilderTokens);
      if (!v10)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      if ((*v10 ^ *(v3 + 72)) > 7)
      {
        v12 = *(realityio::logObjects(v10) + 24);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(v3 + 72) & 0xFFFFFFFFFFFFFFF8;
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

          v18 = 136315138;
          v19 = v14;
          _os_log_impl(&dword_247485000, v12, OS_LOG_TYPE_DEFAULT, "Unknown anchor type %s", &v18, 0xCu);
        }

        REAnchoringComponentSetDescriptorType();
      }

      else
      {
        REAnchoringComponentSetDescriptorType();
      }
    }

    else
    {
      REAnchoringComponentSetDescriptorType();
      REAnchoringComponentSetDescriptorResourceGroup();
      REAnchoringComponentSetDescriptorResourceName();
    }
  }

  else
  {
    REAnchoringComponentSetDescriptorType();
    if (*(v3 + 80))
    {
      v8 = atomic_load(&realityio::tokens::TransformBuilderTokens);
      if (!v8)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      if ((*(v8 + 8) ^ *(v3 + 80)) > 7)
      {
        v11 = atomic_load(&realityio::tokens::TransformBuilderTokens);
        if (!v11)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData();
        }

        *(v11 + 32);
        *(v3 + 80);
      }

      REAnchoringComponentSetDescriptorAlignment();
    }
  }

  v15 = *(*(a1 + 8) + 64);
  v16 = *MEMORY[0x277D85DE8];

  return REAnchoringComponentSetScaleFactor();
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio25TransformComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio25TransformComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E0_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<BOOL>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28595C8B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<BOOL>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28595C900;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<BOOL>>>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_28595C950;
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t realityio::InputOutputWrapperObject<std::shared_ptr<BOOL>>::getRawValue(uint64_t a1)
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

__n128 std::__function::__func<realityio::TransformComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595C990;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::TransformComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(realityio::EntityBuilder *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = realityio::EntityBuilder::kInputName(a1);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v2, v4, v30);
  if (v30[0])
  {
    v29 = v31;
    if (v31)
    {
      v5 = RERetain();
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = realityio::TransformComponentBuilder::kOutputName(v5);
      std::mutex::lock(v7 + 1);
      v9 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v7->__m_.__opaque[32], v8);
      if (&v7->__m_.__opaque[40] == v9)
      {
        std::operator+<char>();
        v13 = std::string::append(&v35, " does not exist in the builder outputs");
        v14 = *&v13->__r_.__value_.__l.__data_;
        v37 = v13->__r_.__value_.__r.__words[2];
        v36 = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        realityio::DetailedError::DetailedError(buf, 207, &realityio::FoundationErrorCategory(void)::instance, &v36);
        v33 = *buf;
        *v34 = *&buf[16];
        *&v34[8] = *&buf[24];
        *&v34[15] = *&buf[31];
        v15 = buf[39];
        memset(&buf[16], 0, 24);
        LOBYTE(v32) = 0;
        v34[23] = v15;
        if (SHIBYTE(v37) < 0)
        {
          operator delete(v36);
        }

        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v10 = *(v9 + 56);
        v12 = *(v10 + 8);
        v11 = *(v10 + 16);
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        }

        LOBYTE(v32) = 1;
        *&v33 = v12;
        *(&v33 + 1) = v11;
      }

      std::mutex::unlock(v7 + 1);
      if (v32)
      {
        v16 = v33;
        if (*(&v33 + 1))
        {
          atomic_fetch_add_explicit((*(&v33 + 1) + 8), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
          v25[0] = 1;
          v26 = v16;
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
        }

        else
        {
          v25[0] = 1;
          v26 = v33;
        }
      }

      else
      {
        *buf = v33;
        if ((v34[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&buf[16], *v34, *&v34[8]);
        }

        else
        {
          *&buf[16] = *v34;
          *&buf[32] = *&v34[16];
        }

        v25[0] = 0;
        v26 = *buf;
        v27 = *&buf[16];
        v28 = *&buf[32];
      }

      v17 = realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&v32);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      if (v25[0] == 1 && v26)
      {
        v18 = *(realityio::logObjects(v17) + 24);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          Name = REEntityGetName();
          v20 = *(a1 + 1);
          v21 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*v20 + 8));
          pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v32, v21, (v20 + 32));
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v32, &v36);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v36);
          *buf = 136315394;
          *&buf[4] = Name;
          *&buf[12] = 2080;
          *&buf[14] = Text;
          _os_log_impl(&dword_247485000, v18, OS_LOG_TYPE_INFO, "Clearing xform on entity '%s' for prim '%s'", buf, 0x16u);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v36);
          if ((v34[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v33 + 8);
          if (v33)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
          }
        }

        RETransformComponentGetComponentType();
        REEntityRemoveComponentByClass();
      }

      realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v25);
    }
  }

  else
  {
    v29 = 0;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v29);
  result = realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v30);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476BB2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&a24);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&a15);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a16);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TransformComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *RIO_MTLX::EMPTY_STRING(RIO_MTLX *this)
{
  {
    RIO_MTLX::EMPTY_STRING(void)::v = 0;
    unk_27EE52680 = 0;
    qword_27EE52688 = 0;
  }

  return &RIO_MTLX::EMPTY_STRING(void)::v;
}

BOOL RIO_MTLX::anonymous namespace::invalidNameChar(unsigned int this)
{
  if ((this & 0x80000000) != 0)
  {
    v2 = __maskrune(this, 0x500uLL);
  }

  else
  {
    v2 = *(MEMORY[0x277D85DE0] + 4 * this + 60) & 0x500;
  }

  return this != 95 && this != 58 && v2 == 0;
}

BOOL RIO_MTLX::isValidName(char *a1)
{
  v2 = a1[23];
  v3 = v2;
  v4 = *a1;
  v5 = *(a1 + 1);
  if ((v2 & 0x80u) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if ((v2 & 0x80u) == 0)
  {
    v7 = a1[23];
  }

  else
  {
    v7 = *(a1 + 1);
  }

  if (v7)
  {
    v8 = &v6[v7];
    {
      ++v6;
      if (!--v7)
      {
        v6 = v8;
        break;
      }
    }

    v2 = a1[23];
    v4 = *a1;
    v5 = *(a1 + 1);
    v3 = a1[23];
  }

  if (v3 < 0)
  {
    v2 = v5;
  }

  else
  {
    v4 = a1;
  }

  return v6 == &v4[v2];
}

void RIO_MTLX::incrementName(std::string *__str@<X0>, void *a2@<X8>)
{
  v4 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (v4 >= 0)
  {
    v6 = __str;
  }

  else
  {
    v6 = __str->__r_.__value_.__r.__words[0];
  }

  v7 = &v6[-1].__r_.__value_.__r.__words[2] + 7;
  v8 = size;
  do
  {
    v9 = v8;
    if (!v8)
    {
      break;
    }

    v10 = v7[v8];
    if (v10 < 0)
    {
      break;
    }

    v11 = *(MEMORY[0x277D85DE0] + 4 * v10 + 60);
    v8 = v9 - 1;
  }

  while ((v11 & 0x400) != 0);
  if (v9 >= size)
  {
    std::string::basic_string[abi:ne200100](a2, size + 1);
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    if (size)
    {
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = __str;
      }

      else
      {
        v18 = __str->__r_.__value_.__r.__words[0];
      }

      memmove(a2, v18, size);
    }

    *(a2 + size) = 50;
  }

  else
  {
    std::string::basic_string(&v21, __str, 0, v9, &__stra);
    if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = __str->__r_.__value_.__l.__size_;
    }

    std::string::basic_string(&__stra, __str, v9, v12, &v19);
    v13 = std::stoi(&__stra, 0, 10);
    std::to_string(&v19, v13 + 1);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v21;
    }

    else
    {
      v14 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = v21.__r_.__value_.__l.__size_;
    }

    v16 = std::string::insert(&v19, 0, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    a2[2] = *(&v16->__r_.__value_.__l + 2);
    *a2 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__stra.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2476BB6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::splitString(std::string *__str@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = __str;
  }

  else
  {
    v7 = __str->__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = a2[1];
  }

  if (!size)
  {
LABEL_18:
    v12 = -1;
LABEL_19:
    v15 = -1;
    goto LABEL_20;
  }

  v12 = 0;
  if (!v11)
  {
    goto LABEL_19;
  }

  v13 = v7 + size;
  v14 = v7;
  while (memchr(v10, v14->__r_.__value_.__s.__data_[0], v11))
  {
    v14 = (v14 + 1);
    if (size == ++v12)
    {
      goto LABEL_18;
    }
  }

  if (size <= v12)
  {
    goto LABEL_19;
  }

LABEL_66:
  v43 = v11;
  v44 = v10;
  while (v14->__r_.__value_.__s.__data_[0] != *v44)
  {
    ++v44;
    if (!--v43)
    {
      v14 = (v14 + 1);
      if (v14 != v13)
      {
        goto LABEL_66;
      }

      v14 = (v7 + size);
      break;
    }
  }

  if (v14 == v13)
  {
    v15 = -1;
  }

  else
  {
    v15 = v14 - v7;
  }

LABEL_20:
  if ((v15 & v12) != 0xFFFFFFFFFFFFFFFFLL)
  {
    do
    {
      std::string::basic_string(&__p, __str, v12, v15 - v12, &v46);
      v17 = *(a3 + 8);
      v16 = *(a3 + 16);
      if (v17 >= v16)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *a3) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<char const*>::__throw_length_error[abi:ne200100]();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a3) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v20;
        }

        v46.__end_cap_.__value_ = a3;
        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a3, v22);
        }

        v23 = 24 * v19;
        v24 = *&__p.__r_.__value_.__l.__data_;
        *(v23 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v23 = v24;
        memset(&__p, 0, sizeof(__p));
        v25 = 24 * v19 + 24;
        v26 = *(a3 + 8) - *a3;
        v27 = 24 * v19 - v26;
        memcpy((v23 - v26), *a3, v26);
        v28 = *a3;
        *a3 = v27;
        *(a3 + 8) = v25;
        v29 = *(a3 + 16);
        *(a3 + 16) = 0;
        v46.__end_ = v28;
        v46.__end_cap_.__value_ = v29;
        v46.__first_ = v28;
        v46.__begin_ = v28;
        std::__split_buffer<std::string>::~__split_buffer(&v46);
        v30 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        *(a3 + 8) = v25;
        if (v30 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v18 = *&__p.__r_.__value_.__l.__data_;
        *(v17 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v17 = v18;
        *(a3 + 8) = v17 + 24;
      }

      v31 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
      if (v31 >= 0)
      {
        v32 = __str;
      }

      else
      {
        v32 = __str->__r_.__value_.__r.__words[0];
      }

      if (v31 >= 0)
      {
        v33 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v33 = __str->__r_.__value_.__l.__size_;
      }

      v34 = *(a2 + 23);
      if (v34 >= 0)
      {
        v35 = a2;
      }

      else
      {
        v35 = *a2;
      }

      if (v34 >= 0)
      {
        v36 = *(a2 + 23);
      }

      else
      {
        v36 = a2[1];
      }

      if (v33 <= v15)
      {
        v15 = -1;
      }

      else if (v36)
      {
        v37 = v32 + v33;
        v38 = v32 + v15;
        while (memchr(v35, *v38, v36))
        {
          ++v38;
          if (v33 == ++v15)
          {
            v15 = -1;
LABEL_62:
            v39 = -1;
            goto LABEL_63;
          }
        }

        if (v33 <= v15)
        {
          goto LABEL_62;
        }

LABEL_54:
        v40 = v36;
        v41 = v35;
        while (*v38 != *v41)
        {
          ++v41;
          if (!--v40)
          {
            if (++v38 != v37)
            {
              goto LABEL_54;
            }

            v38 = v32 + v33;
            break;
          }
        }

        v39 = v38 - v32;
        if (v38 == v37)
        {
          v39 = -1;
        }

        goto LABEL_63;
      }

      v39 = -1;
LABEL_63:
      v12 = v15;
      v42 = v39 & v15;
      v15 = v39;
    }

    while (v42 != -1);
  }
}

void sub_2476BBA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

__n128 RIO_MTLX::replaceSubstrings@<Q0>(std::string *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    if ((*(i + 39) & 0x8000000000000000) != 0)
    {
      if (i[3])
      {
LABEL_6:
        for (j = 0; ; j += v20)
        {
          size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
          if ((size & 0x8000000000000000) != 0)
          {
            v7 = this->__r_.__value_.__r.__words[0];
            size = this->__r_.__value_.__l.__size_;
          }

          else
          {
            v7 = this;
          }

          v8 = *(i + 39);
          v9 = v8 >= 0 ? (i + 2) : i[2];
          v10 = v8 >= 0 ? *(i + 39) : i[3];
          v11 = size - j;
          if (size < j)
          {
            break;
          }

          if (v10)
          {
            if (v11 >= v10)
            {
              v12 = v7 + size;
              v13 = v7 + j;
              v14 = *v9;
              while (v11 - v10 != -1)
              {
                v15 = memchr(v13, v14, v11 - v10 + 1);
                if (!v15)
                {
                  break;
                }

                v16 = v15;
                if (!memcmp(v15, v9, v10))
                {
                  if (v16 == v12)
                  {
                    goto LABEL_37;
                  }

                  j = v16 - v7;
                  goto LABEL_27;
                }

                v13 = v16 + 1;
                v11 = v12 - (v16 + 1);
                if (v11 < v10)
                {
                  goto LABEL_37;
                }
              }
            }

            break;
          }

LABEL_27:
          if (j == -1)
          {
            break;
          }

          v17 = *(i + 63);
          if (v17 >= 0)
          {
            v18 = (i + 5);
          }

          else
          {
            v18 = i[5];
          }

          if (v17 >= 0)
          {
            v19 = *(i + 63);
          }

          else
          {
            v19 = i[6];
          }

          std::string::replace(this, j, v10, v18, v19);
          v20 = *(i + 63);
          if (v20 < 0)
          {
            v20 = i[6];
          }
        }
      }
    }

    else if (*(i + 39))
    {
      goto LABEL_6;
    }

LABEL_37:
    ;
  }

  result = *&this->__r_.__value_.__l.__data_;
  *a3 = *&this->__r_.__value_.__l.__data_;
  *(a3 + 16) = *(&this->__r_.__value_.__l + 2);
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  return result;
}

void *realityio::SkeletalPoseDefinitionAssetAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X2>, uint64_t a2@<X0>, void *a3@<X3>, void *a4@<X4>, pxrInternal__aapl__pxrReserved__::VtValue *a5@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a5, a1);
  v17 = 0;
  v9 = *(a2 + 8);
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  if (a3[1] != *a3)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v18, (*a4 + v11));
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REAsset *>>(v18) && (v19 & 4) != 0)
      {
        (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(v18);
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v18);
      ++v12;
      v11 += 16;
    }

    while (v12 < (a3[1] - *a3) >> 3);
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REAsset *>>(a5))
  {
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REAsset *>>(a5))
    {
      v13 = *(a5 + 1);
      if ((v13 & 4) != 0)
      {
        v14 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(a5);
      }

      else
      {
        v14 = *a5;
      }
    }

    else
    {
      v14 = pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
    }

    realityio::WrappedRERef<REAsset *>::operator=(&v17, v14);
  }

  result = realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v17);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476BBD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a9);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v9);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<realityio::WrappedRERef<REAsset *>>(void *result)
{
  if (result)
  {
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

realityio::tokens::TextBuilderTokens_StaticTokenType *realityio::tokens::TextBuilderTokens_StaticTokenType::TextBuilderTokens_StaticTokenType(realityio::tokens::TextBuilderTokens_StaticTokenType *this)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "baseline", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "bottom", 0);
  MEMORY[0x24C1A5DF0](this + 16, "center", 0);
  MEMORY[0x24C1A5DF0](this + 24, "content", 0);
  MEMORY[0x24C1A5DF0](this + 32, "depth", 0);
  MEMORY[0x24C1A5DF0](this + 40, "flowing", 0);
  MEMORY[0x24C1A5DF0](this + 48, "font", 0);
  MEMORY[0x24C1A5DF0](this + 56, "height", 0);
  MEMORY[0x24C1A5DF0](this + 64, "horizontalAlignment", 0);
  MEMORY[0x24C1A5DF0](this + 72, "justified", 0);
  MEMORY[0x24C1A5DF0](this + 80, "left", 0);
  MEMORY[0x24C1A5DF0](this + 88, "lowerMiddle", 0);
  MEMORY[0x24C1A5DF0](this + 96, "middle", 0);
  MEMORY[0x24C1A5DF0](this + 104, "pointSize", 0);
  MEMORY[0x24C1A5DF0](this + 112, "Preliminary_Text", 0);
  MEMORY[0x24C1A5DF0](this + 120, "right", 0);
  MEMORY[0x24C1A5DF0](this + 128, "singleLine", 0);
  MEMORY[0x24C1A5DF0](this + 136, "top", 0);
  MEMORY[0x24C1A5DF0](this + 144, "verticalAlignment", 0);
  MEMORY[0x24C1A5DF0](this + 152, "width", 0);
  MEMORY[0x24C1A5DF0](this + 160, "wrapMode", 0);
  v3 = (this + 168);
  v4 = *this;
  v29 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v30 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v31 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v32 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v33 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v34 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v35 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v36 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v37 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v38 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v39 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v40 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v41 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v42 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v43 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v44 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v45 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 17);
  v46 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 18);
  v47 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 19);
  v48 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 20);
  v49 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v29, &v50, 0x15uLL);
  for (i = 160; i != -8; i -= 8)
  {
    v26 = *(&v29 + i);
    if ((v26 & 7) != 0)
    {
      atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2476BC448(_Unwind_Exception *a1)
{
  v3 = 160;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[20];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[19];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[18];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[17];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[16];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[15];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[14];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[13];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[12];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[11];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[10];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[9];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[8];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[7];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[6];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[5];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[4];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[3];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[2];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[1];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void realityio::generateTextPrimDirtyStageSubscription(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE535D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE535D8))
  {
    operator new();
  }

  v3 = unk_27EE535D0;
  *a1 = _MergedGlobals_53;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2476BCD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void **a49)
{
  MEMORY[0x24C1A91B0](v50, 0x10A1C40F82F910ELL);
  a49 = &a38;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a49);
  MEMORY[0x24C1A91B0](v49, 0x10A1C401BF1BAA1);
  MEMORY[0x24C1A91B0](v51, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE535D8);
  _Unwind_Resume(a1);
}

void realityio::textInformationFromPrim(realityio *this@<X0>, uint64_t a2@<X8>)
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Helvetica");
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::VtArray(__s, __p, 1);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(this, (v5 + 48), buf);
  if (buf[0])
  {
    v70 = *&v76[4];
    v71 = v77;
    v6 = v78;
  }

  else
  {
    v70 = *__s;
    v71 = v68;
    v6 = v69;
  }

  v72 = v6;
  if (v6)
  {
    v7 = (v6 - 1);
    if (*(&v71 + 1))
    {
      v7 = *(&v71 + 1);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,realityio::DetailedError>::~Result(buf);
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(__s);
  if (v74 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  v9 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v9)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(this, (v8 + 160), buf);
  if (buf[0])
  {
    v10 = *&v76[4];
  }

  else
  {
    v10 = *(v9 + 40);
  }

  __p[0] = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      __p[0] = v11;
    }
  }

  if (buf[0] == 1)
  {
    if ((v76[4] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v76[4] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  v12 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v12)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  v13 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v13)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(this, (v12 + 64), buf);
  if (buf[0])
  {
    v14 = *&v76[4];
  }

  else
  {
    v14 = *(v13 + 40);
  }

  v66 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v66 = v15;
    }
  }

  if (buf[0] == 1)
  {
    if ((v76[4] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v76[4] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  v16 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v16)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  v17 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v17)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(this, (v16 + 144), buf);
  if (buf[0])
  {
    v18 = *&v76[4];
  }

  else
  {
    v18 = *(v17 + 40);
  }

  v65 = v18;
  if ((v18 & 7) != 0)
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
    {
      v65 = v19;
    }
  }

  if (buf[0] == 1)
  {
    if ((v76[4] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v76[4] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  v20 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v20)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  std::string::basic_string[abi:ne200100]<0>(__s, "");
  realityio::getAttributeValue<std::string>(this, (v20 + 24), buf);
  v21 = &v76[4];
  if (buf[0])
  {
    if ((SBYTE7(v77) & 0x80000000) == 0)
    {
      *a2 = *&v76[4];
      *(a2 + 16) = v77;
      goto LABEL_64;
    }

    v22 = *&v76[4];
    v23 = &v76[12];
  }

  else
  {
    if ((SBYTE7(v68) & 0x80000000) == 0)
    {
      *a2 = *__s;
      *(a2 + 16) = v68;
      goto LABEL_61;
    }

    v22 = __s[0];
    v23 = &__s[1];
  }

  std::string::__init_copy_ctor_external(a2, v22, *v23);
  if (buf[0])
  {
    if ((SBYTE7(v77) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_61:
  if ((SHIBYTE(v78) & 0x80000000) == 0)
  {
    goto LABEL_64;
  }

  v21 = &v77;
LABEL_63:
  operator delete(*v21);
LABEL_64:
  if (v70)
  {
    if (*(v72 + 23) < 0)
    {
      std::string::__init_copy_ctor_external((a2 + 24), *v72, *(v72 + 1));
    }

    else
    {
      v24 = *v72;
      *(a2 + 40) = *(v72 + 2);
      *(a2 + 24) = v24;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>((a2 + 24), "Helvetica");
  }

  v25 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v25)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  realityio::getAttributeValue<double>(this, (v25 + 104), buf);
  v26 = buf[0];
  v27 = *&v76[4];
  if ((buf[0] & 1) == 0 && SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  v28 = v27 * 0.00035277723;
  if (!v26)
  {
    v28 = 0.0507999211;
  }

  *(a2 + 48) = v28;
  v29 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v29)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  realityio::getAttributeValue<double>(this, (v29 + 152), buf);
  v30 = buf[0];
  v31 = *&v76[4];
  if ((buf[0] & 1) == 0 && SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  v32 = 0.6;
  if (v30)
  {
    v32 = v31;
  }

  *(a2 + 56) = v32;
  v33 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v33)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  realityio::getAttributeValue<double>(this, (v33 + 56), buf);
  v34 = buf[0];
  v35 = *&v76[4];
  if ((buf[0] & 1) == 0 && SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  v36 = 0.15;
  if (v34)
  {
    v36 = v35;
  }

  *(a2 + 64) = v36;
  v37 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v37)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  realityio::getAttributeValue<double>(this, (v37 + 32), buf);
  v38 = buf[0];
  v39 = *&v76[4];
  if ((buf[0] & 1) == 0 && SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  v40 = 0.2;
  if (v38)
  {
    v40 = v39;
  }

  *(a2 + 72) = v40;
  v41 = __p[0];
  *(a2 + 80) = __p[0];
  if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 80) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a2 + 88) = v66;
  if ((v66 & 7) != 0 && (atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 88) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a2 + 96) = v65;
  if ((v65 & 7) != 0 && (atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 96) &= 0xFFFFFFFFFFFFFFF8;
  }

  if ((pxrInternal__aapl__pxrReserved__::TfToken::operator==() & 1) == 0)
  {
    if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
    {
      v42 = 1;
      goto LABEL_110;
    }

    if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
    {
      v42 = 2;
      goto LABEL_110;
    }

    v43 = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
    if (v43)
    {
      v42 = 3;
      goto LABEL_110;
    }

    v49 = *(realityio::logObjects(v43) + 24);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v66 & 0xFFFFFFFFFFFFFFF8;
      if ((v66 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v51 = (v50 + 16);
        if (*(v50 + 39) < 0)
        {
          v51 = *v51;
        }
      }

      else
      {
        v51 = "";
      }

      *buf = 136315138;
      *v76 = v51;
      _os_log_impl(&dword_247485000, v49, OS_LOG_TYPE_DEFAULT, "Unknown text horizontal alignment value %s defaulting to left", buf, 0xCu);
    }
  }

  v42 = 0;
LABEL_110:
  *(a2 + 104) = v42;
  if (pxrInternal__aapl__pxrReserved__::TfToken::operator==() & 1) != 0 || (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
  {
    v44 = 2;
  }

  else
  {
    v45 = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
    if ((v45 & 1) == 0)
    {
      v46 = *(realityio::logObjects(v45) + 24);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = __p[0] & 0xFFFFFFFFFFFFFFF8;
        if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v48 = (v47 + 16);
          if (*(v47 + 39) < 0)
          {
            v48 = *v48;
          }
        }

        else
        {
          v48 = "";
        }

        *buf = 136315138;
        *v76 = v48;
        _os_log_impl(&dword_247485000, v46, OS_LOG_TYPE_DEFAULT, "Unknown wrap mode value %s defaulting to flowing", buf, 0xCu);
      }
    }

    v44 = 0;
  }

  *(a2 + 105) = v44;
  v52 = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
  v53 = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
  if (!v52)
  {
    if ((v53 & 1) == 0)
    {
      if ((pxrInternal__aapl__pxrReserved__::TfToken::operator==() & 1) == 0)
      {
        v59 = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
        if (v59)
        {
          goto LABEL_152;
        }

        v55 = *(realityio::logObjects(v59) + 24);
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_152;
        }

        v60 = v65 & 0xFFFFFFFFFFFFFFF8;
        if ((v65 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v57 = (v60 + 16);
          if (*(v60 + 39) < 0)
          {
            v57 = *v57;
          }
        }

        else
        {
          v57 = "";
        }

        v61 = __p[0] & 0xFFFFFFFFFFFFFFF8;
        if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v62 = (v61 + 16);
          if (*(v61 + 39) < 0)
          {
            v62 = *v62;
          }
        }

        else
        {
          v62 = "";
        }

        goto LABEL_151;
      }

LABEL_138:
      v58 = 2;
      goto LABEL_153;
    }

LABEL_136:
    v58 = 0;
    goto LABEL_153;
  }

  if (v53)
  {
    goto LABEL_136;
  }

  if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
  {
    goto LABEL_138;
  }

  if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
  {
    goto LABEL_152;
  }

  if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
  {
    goto LABEL_152;
  }

  v54 = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
  if (v54)
  {
    goto LABEL_152;
  }

  v55 = *(realityio::logObjects(v54) + 24);
  if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_152;
  }

  v56 = v65 & 0xFFFFFFFFFFFFFFF8;
  if ((v65 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v57 = (v56 + 16);
    if (*(v56 + 39) < 0)
    {
      v57 = *v57;
    }
  }

  else
  {
    v57 = "";
  }

  v64 = __p[0] & 0xFFFFFFFFFFFFFFF8;
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v62 = (v64 + 16);
    if (*(v64 + 39) < 0)
    {
      v62 = *v62;
    }
  }

  else
  {
    v62 = "";
  }

LABEL_151:
  *buf = 136315394;
  *v76 = v57;
  *&v76[8] = 2080;
  *&v76[10] = v62;
  _os_log_impl(&dword_247485000, v55, OS_LOG_TYPE_DEFAULT, "Unknown text vertical alignment value %s for wrap mode %s; defaulting to bottom", buf, 0x16u);
LABEL_152:
  v58 = 1;
LABEL_153:
  *(a2 + 106) = v58;
  if (SBYTE7(v68) < 0)
  {
    operator delete(__s[0]);
  }

  if ((v65 & 7) != 0)
  {
    atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v66 & 7) != 0)
  {
    atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v70);
  v63 = *MEMORY[0x277D85DE8];
}

void sub_2476BDC34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (*(v31 + 47) < 0)
  {
    operator delete(*(v31 + 24));
  }

  if (*(v31 + 23) < 0)
  {
    operator delete(*v31);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a25 & 7) != 0)
  {
    atomic_fetch_add_explicit((a25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&a20);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(pxrInternal__aapl__pxrReserved__::UsdObject *this@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X0>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(&__p, a3);
      if ((*a3 & 1) == 0)
      {
        v7 = *realityio::logObjects(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
          if (v8)
          {
            v9 = (v8 + 16);
            if (*(v8 + 39) < 0)
            {
              v9 = *v9;
            }
          }

          else
          {
            v9 = "";
          }

          v15 = *(a3 + 24);
          v14 = a3 + 24;
          v13 = v15;
          if (*(v14 + 23) >= 0)
          {
            v13 = v14;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v13;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v16, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v16);
      *(a3 + 8) = *buf;
      v11 = v22;
      *(a3 + 24) = *&buf[16];
      *(a3 + 32) = v11;
      *(a3 + 39) = *(&v22 + 7);
      LOBYTE(v11) = HIBYTE(v22);
      v22 = 0uLL;
      *&buf[16] = 0;
      *a3 = 0;
      *(a3 + 47) = v11;
      if (v17 < 0)
      {
        operator delete(v16[0]);
      }
    }

    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v19);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a3 + 8) = *buf;
    v10 = v22;
    *(a3 + 24) = *&buf[16];
    *(a3 + 32) = v10;
    *(a3 + 39) = *(&v22 + 7);
    LOBYTE(v10) = HIBYTE(v22);
    v22 = 0uLL;
    *&buf[16] = 0;
    *a3 = 0;
    *(a3 + 47) = v10;
    if ((v19[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2476BDFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,realityio::DetailedError>::~Result(v5);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2476BE1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13);
    }
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v44 = 0;
    v6 = *a2;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(v43))
      {
        v7 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(v43);
        v8 = *(v7 + 16);
        v40 = *v7;
        v41[0] = v8;
        v9 = *(v7 + 32);
        if (v9)
        {
          v10 = *(&v41[0] + 1);
          if (!*(&v41[0] + 1))
          {
            v10 = (v9 - 16);
          }

          atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
        }

        *a3 = 1;
        v11 = v41[0];
        *(a3 + 8) = v40;
        *(a3 + 24) = v11;
        v40 = 0u;
        v41[0] = 0u;
        *(a3 + 40) = v9;
        *&v41[1] = 0;
        pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v40);
        goto LABEL_46;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v43);
      {
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(v43);
        v18 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v42, v17);
        if (v42.__r_.__value_.__l.__size_)
        {
          v19 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(v18);
          v20 = *(v19 + 16);
          v40 = *v19;
          v41[0] = v20;
          v21 = *(v19 + 32);
          if (v21)
          {
            v22 = *(&v41[0] + 1);
            if (!*(&v41[0] + 1))
            {
              v22 = (v21 - 16);
            }

            atomic_fetch_add_explicit(v22, 1uLL, memory_order_relaxed);
          }

          *a3 = 1;
          v23 = v41[0];
          *(a3 + 8) = v40;
          *(a3 + 24) = v23;
          v40 = 0u;
          v41[0] = 0u;
          *(a3 + 40) = v21;
          *&v41[1] = 0;
          pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v40);
        }

        else
        {
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v40, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a3 + 8) = v40;
          v34 = *(&v41[0] + 1);
          *(a3 + 24) = *&v41[0];
          *(a3 + 32) = v34;
          *(a3 + 39) = *(v41 + 15);
          LOBYTE(v34) = BYTE7(v41[1]);
          memset(v41, 0, 24);
          *a3 = 0;
          *(a3 + 47) = v34;
          if (SHIBYTE(v39) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v42);
        goto LABEL_46;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v40, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v40;
      v32 = *(&v41[0] + 1);
      *(a3 + 24) = *&v41[0];
      *(a3 + 32) = v32;
      *(a3 + 39) = *(v41 + 15);
      LOBYTE(v32) = BYTE7(v41[1]);
      memset(v41, 0, 24);
      *a3 = 0;
      *(a3 + 47) = v32;
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
LABEL_46:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v43);
        goto LABEL_47;
      }

      v31 = __p[0];
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v13 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v13);
      }

      std::operator+<char>();
      v24 = std::string::append(&v37, ") at the given time: ");
      v25 = *&v24->__r_.__value_.__l.__data_;
      v42.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v42.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v36, *a2);
      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v36;
      }

      else
      {
        v26 = v36.__r_.__value_.__r.__words[0];
      }

      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v36.__r_.__value_.__l.__size_;
      }

      v28 = std::string::append(&v42, v26, size);
      v29 = *&v28->__r_.__value_.__l.__data_;
      v39 = v28->__r_.__value_.__r.__words[2];
      *__p = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v40, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v40;
      v30 = *(&v41[0] + 1);
      *(a3 + 24) = *&v41[0];
      *(a3 + 32) = v30;
      *(a3 + 39) = *(v41 + 15);
      LOBYTE(v30) = BYTE7(v41[1]);
      memset(v41, 0, 24);
      *a3 = 0;
      *(a3 + 47) = v30;
      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      v31 = v37.__r_.__value_.__r.__words[0];
    }

    operator delete(v31);
    goto LABEL_46;
  }

  v12 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v12 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v40, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a3 + 8) = v40;
  v14 = *(&v41[0] + 1);
  *(a3 + 24) = *&v41[0];
  *(a3 + 32) = v14;
  *(a3 + 39) = *(v41 + 15);
  LOBYTE(v14) = BYTE7(v41[1]);
  memset(v41, 0, 24);
  *a3 = 0;
  *(a3 + 47) = v14;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_47:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_2476BE674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 59)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

void *pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(void *result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef((a1 + 8));
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void realityio::getAttributeValue<std::string>(pxrInternal__aapl__pxrReserved__::UsdObject *this@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X0>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<std::string>(&__p, a3);
      if ((*a3 & 1) == 0)
      {
        v7 = *realityio::logObjects(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
          if (v8)
          {
            v9 = (v8 + 16);
            if (*(v8 + 39) < 0)
            {
              v9 = *v9;
            }
          }

          else
          {
            v9 = "";
          }

          v15 = *(a3 + 24);
          v14 = a3 + 24;
          v13 = v15;
          if (*(v14 + 23) >= 0)
          {
            v13 = v14;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v13;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v16, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v16);
      *(a3 + 8) = *buf;
      v11 = v22;
      *(a3 + 24) = *&buf[16];
      *(a3 + 32) = v11;
      *(a3 + 39) = *(&v22 + 7);
      LOBYTE(v11) = HIBYTE(v22);
      v22 = 0uLL;
      *&buf[16] = 0;
      *a3 = 0;
      *(a3 + 47) = v11;
      if (v17 < 0)
      {
        operator delete(v16[0]);
      }
    }

    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v19);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a3 + 8) = *buf;
    v10 = v22;
    *(a3 + 24) = *&buf[16];
    *(a3 + 32) = v10;
    *(a3 + 39) = *(&v22 + 7);
    LOBYTE(v10) = HIBYTE(v22);
    v22 = 0uLL;
    *&buf[16] = 0;
    *a3 = 0;
    *(a3 + 47) = v10;
    if ((v19[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2476BEBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  realityio::Result<std::string,realityio::DetailedError>::~Result(v5);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void realityio::ImportSessionInit(realityio *this)
{
  if (!REComponentClassFromName())
  {
    {
      if (REStructBuilderInit())
      {
        REStructBuilderAddMemberDataTypeWithTag();
      }

      REStructBuilderDestroy();
    }

    REComponentClassFromName();
  }
}

void anonymous namespace::RIOPrimPathComponent::primPathComponentDestroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (*a2)
    {
      RECIntrospectionFree();
      *a2 = 0;
    }

    JUMPOUT(0x24C1A91B0);
  }
}

void realityio::ImportSessionDeinit(realityio *this)
{
  {
    RECustomComponentTypeDestroy();
  }
}

void realityio::ImportSession::SessionMeshAssetCacheDeleter::operator()(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>>>::destroy(a2 + 24, *(a2 + 32));
    std::__tree<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<realityio::SessionMeshAssetCache::CryptographicHash,std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::less<realityio::SessionMeshAssetCache::CryptographicHash>,true>,std::allocator<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>>>::destroy(a2, *(a2 + 8));

    JUMPOUT(0x24C1A91B0);
  }
}

void ___Z26shouldImportSubdsByDefaultv_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  _MergedGlobals_54 = [v0 BOOLForKey:@"com.apple.RealityIO.disableSubd"] ^ 1;
}

void realityio::ImportSession::ImportSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, char a8)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28595CA68;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  *(a1 + 36) = 0;
  *(a1 + 52) = 0;
  *(a1 + 60) = a7;
  *(a1 + 72) = 0;
  *(a1 + 64) = a1 + 72;
  *(a1 + 88) = 850045863;
  *(a1 + 160) = 850045863;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 248) = a1 + 256;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a8;
  *(a1 + 273) = 257;
  v9 = _os_feature_enabled_impl();
  if (v9)
  {
    v10 = *realityio::logObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_247485000, v10, OS_LOG_TYPE_DEFAULT, "ImportSession forced to TargetBasedBuilderDirtying mode due to RealityIO/TargetBasedBuilderDirtying FeatureFlag", v11, 2u);
    }
  }

  else if (a5 != 2)
  {
    if (a5 == 1)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_2476BF228(_Unwind_Exception *a1)
{
  __cxa_guard_abort(qword_27EE535F8);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v5, *(v1 + 256));
  std::__tree<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>>>::destroy(*(v1 + 232));
  std::mutex::~mutex(v4);
  v8 = *(v1 + 152);
  *(v1 + 152) = 0;
  if (v8)
  {
    realityio::ImportSession::SessionMeshAssetCacheDeleter::operator()(v7, v8);
  }

  std::mutex::~mutex(v3);
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(v2, *(v1 + 72));
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  v9 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::ImportSession::deduplicateMeshAsset(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  std::mutex::lock((a1 + 160));
  v8 = *(a1 + 152);
  if (!v8)
  {
    operator new();
  }

  v9 = realityio::SessionMeshAssetCache::deduplicateMeshAsset(v8, a2, a3, a4);
  std::mutex::unlock((a1 + 160));
  return v9;
}

uint64_t realityio::SessionMeshAssetCache::deduplicateMeshAsset(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v36 = *MEMORY[0x277D85DE8];
  CompiledStreamAndRemap = REAssetCreateCompiledStreamAndRemap();
  cf = CompiledStreamAndRemap;
  if (!CompiledStreamAndRemap)
  {
    goto LABEL_35;
  }

  bzero(&c, 0x68uLL);
  CC_SHA256_Init(&c);
  BytePtr = CFDataGetBytePtr(CompiledStreamAndRemap);
  Length = CFDataGetLength(CompiledStreamAndRemap);
  CC_SHA256_Update(&c, BytePtr, Length);
  CC_SHA256_Final(md, &c);
  CFRelease(cf);
  cf = 0;
  v12 = (a1 + 32);
  v11 = *(a1 + 32);
  if (!v11)
  {
    goto LABEL_8;
  }

  while (1)
  {
    while (1)
    {
      v13 = v11;
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, (v11 + 28)))
      {
        break;
      }

      v11 = *v13;
      v12 = v13;
      if (!*v13)
      {
        goto LABEL_8;
      }
    }

    if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v13 + 28), a2))
    {
      break;
    }

    v12 = v13 + 1;
    v11 = v13[1];
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v28 = *v12;
  if (!*v12)
  {
LABEL_8:
    operator new();
  }

  v14 = v35;
  *(v28 + 36) = *md;
  *(v28 + 52) = v14;
  v15 = std::__tree<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<realityio::SessionMeshAssetCache::CryptographicHash,std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::less<realityio::SessionMeshAssetCache::CryptographicHash>,true>,std::allocator<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>>>::find<realityio::SessionMeshAssetCache::CryptographicHash>(a1, md);
  v16 = (a1 + 8);
  if ((a1 + 8) != v15)
  {
    v17 = v15;
    if (a4)
    {
      RERelease();
      a3 = v17[8];
      RERetain();
    }

    else
    {
      a3 = v15[8];
    }

    goto LABEL_35;
  }

  *c.count = a3;
  if (a3)
  {
    RERetain();
  }

  v18 = *v16;
  if (!*v16)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v19 = v18;
      v20 = *(v18 + 32);
      v21 = md[0];
      v22 = v20;
      if (md[0] == v20)
      {
        break;
      }

LABEL_19:
      if (v21 <= v22)
      {
        goto LABEL_22;
      }

      v18 = *v19;
      if (!*v19)
      {
        goto LABEL_28;
      }
    }

    v23 = 0;
    while (v23 != 31)
    {
      v21 = md[v23 + 1];
      v22 = *(v19 + v23++ + 33);
      if (v21 != v22)
      {
        goto LABEL_19;
      }
    }

LABEL_22:
    v24 = md[0];
    if (md[0] == v20)
    {
      break;
    }

LABEL_26:
    if (v20 <= v24)
    {
      goto LABEL_32;
    }

    v18 = v19[1];
    if (!v18)
    {
      goto LABEL_28;
    }
  }

  v25 = 33;
  v26 = &md[1];
  while (v25 != 64)
  {
    v20 = *(v19 + v25);
    v27 = *v26++;
    v24 = v27;
    ++v25;
    if (v20 != v27)
    {
      goto LABEL_26;
    }
  }

LABEL_32:
  v29 = v19[8];
  if (v29 != a3)
  {
    v19[8] = a3;
    *c.count = v29;
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&c);
LABEL_35:
  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&cf);
  v30 = *MEMORY[0x277D85DE8];
  return a3;
}

void sub_2476BF76C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(va1);
  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

void realityio::ImportSession::clearMeshAsset(realityio::ImportSession *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  std::mutex::lock((this + 160));
  v4 = *(this + 19);
  if (v4)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>>>::__erase_unique<pxrInternal__aapl__pxrReserved__::SdfPath>((v4 + 24), a2);
  }

  std::mutex::unlock((this + 160));
}

void realityio::ImportSession::purgeMeshAssetCache(realityio::ImportSession *this)
{
  std::mutex::lock((this + 160));
  v2 = *(this + 19);
  if (v2)
  {
    realityio::SessionMeshAssetCache::purge(v2);
  }

  std::mutex::unlock((this + 160));
}

void realityio::SessionMeshAssetCache::purge(realityio::SessionMeshAssetCache *this)
{
  v40 = *MEMORY[0x277D85DE8];
  v38[0] = 0;
  v38[1] = 0;
  v37 = v38;
  v2 = *(this + 3);
  v3 = this + 32;
  if (v2 != (this + 32))
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v39, v2 + 7);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v39[4], v2 + 8);
      *&v39[8] = *(v2 + 36);
      *&v39[24] = *(v2 + 52);
      std::__tree<realityio::SessionMeshAssetCache::CryptographicHash>::__emplace_unique_key_args<realityio::SessionMeshAssetCache::CryptographicHash,realityio::SessionMeshAssetCache::CryptographicHash const&>(&v37, &v39[8]);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v39);
      v4 = v2[1];
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
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  v36[0] = 0;
  v36[1] = 0;
  v35 = v36;
  v7 = (this + 8);
  v8 = *this;
  if (*this != (this + 8))
  {
    while (1)
    {
      v9 = *(v8 + 3);
      *v39 = *(v8 + 2);
      *&v39[16] = v9;
      *&v39[32] = v8[8];
      if (*&v39[32])
      {
        RERetain();
      }

      v10 = v38[0];
      if (!v38[0])
      {
        goto LABEL_28;
      }

      v11 = v39[0];
      v12 = v38;
      do
      {
        v13 = *(v10 + 25);
        v14 = v39[0];
        if (v13 == v39[0])
        {
          v15 = 26;
          v16 = &v39[1];
          while (v15 != 57)
          {
            v13 = *(v10 + v15);
            v17 = *v16++;
            v14 = v17;
            ++v15;
            if (v13 != v17)
            {
              goto LABEL_17;
            }
          }

          v12 = v10;
        }

        else
        {
LABEL_17:
          v18 = v13 > v14;
          v19 = v13 > v14;
          if (!v18)
          {
            v12 = v10;
          }

          v10 += v19;
        }

        v10 = *v10;
      }

      while (v10);
      if (v12 == v38)
      {
        goto LABEL_28;
      }

      v20 = *(v12 + 25);
      if (v39[0] == v20)
      {
        v21 = 0;
        v22 = v12 + 26;
        while (v21 != 31)
        {
          v11 = v39[v21 + 1];
          v20 = v22[v21++];
          if (v11 != v20)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_29;
      }

LABEL_27:
      if (v11 > v20)
      {
LABEL_28:
        std::__tree<realityio::SessionMeshAssetCache::CryptographicHash>::__emplace_unique_key_args<realityio::SessionMeshAssetCache::CryptographicHash,realityio::SessionMeshAssetCache::CryptographicHash const&>(&v35, v39);
      }

LABEL_29:
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v39[32]);
      v23 = v8[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v8[2];
          v6 = *v24 == v8;
          v8 = v24;
        }

        while (!v6);
      }

      v8 = v24;
      if (v24 == v7)
      {
        v25 = v35;
        if (v35 != v36)
        {
          do
          {
            v26 = std::__tree<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<realityio::SessionMeshAssetCache::CryptographicHash,std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::less<realityio::SessionMeshAssetCache::CryptographicHash>,true>,std::allocator<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>>>::find<realityio::SessionMeshAssetCache::CryptographicHash>(this, v25 + 25);
            if (v7 != v26)
            {
              v27 = v26;
              v28 = v26[1];
              if (v28)
              {
                do
                {
                  v29 = v28;
                  v28 = *v28;
                }

                while (v28);
              }

              else
              {
                v30 = v26;
                do
                {
                  v29 = v30[2];
                  v6 = *v29 == v30;
                  v30 = v29;
                }

                while (!v6);
              }

              if (*this == v26)
              {
                *this = v29;
              }

              v31 = *(this + 1);
              --*(this + 2);
              std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v31, v27);
              realityio::WrappedRERef<REAsset *>::~WrappedRERef(v27 + 8);
              operator delete(v27);
            }

            v32 = *(v25 + 1);
            if (v32)
            {
              do
              {
                v33 = v32;
                v32 = *v32;
              }

              while (v32);
            }

            else
            {
              do
              {
                v33 = *(v25 + 2);
                v6 = *v33 == v25;
                v25 = v33;
              }

              while (!v6);
            }

            v25 = v33;
          }

          while (v33 != v36);
        }

        break;
      }
    }
  }

  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(v36[0]);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(v38[0]);
  v34 = *MEMORY[0x277D85DE8];
}

void sub_2476BFB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(a10);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(a13);
  _Unwind_Resume(a1);
}

float realityio::ImportSession::getWorldScaleAtPrim(realityio::ImportSession *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  *&v10[0] = *(*(*(this + 2) + 8) + 16);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(v10);
  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(&v8, v10);
  pxrInternal__aapl__pxrReserved__::UsdGeomGetStageMetersPerUnit();
  v3 = v2;
  v4 = v9;
  if (v9 && atomic_fetch_add_explicit((v9 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v10);
  pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::UsdGeomXformCache(v11);
  memset(v10, 0, sizeof(v10));
  pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::GetLocalToWorldTransform();
  MEMORY[0x24C1A4BE0](v10, &v8);
  LODWORD(v9) = 0;
  v8 = 0;
  REDecomposeMatrix();
  v5 = v3;
  v6 = *(&v8 + 1) * v5;
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,pxrInternal__aapl__pxrReserved__::TfHash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>>>::~__hash_table(v11);
  return v6;
}

void realityio::ImportSessionImpl::ImportSessionImpl(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5)
{
  v49 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28595CA90;
  v9 = *a5;
  *(a1 + 8) = *a5;
  if (v9)
  {
    CFRetain(v9);
  }

  *(a1 + 16) = 0;
  v10 = (a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 168) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 96) = 0;
  *(a1 + 176) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 184) = 850045863;
  *(a1 + 256) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 264) = a4;
  *(a1 + 272) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 280), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 304), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 328), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 352), "");
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = a1 + 384;
  v11 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(__p, v11);
  v12 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(__p);
  Identifier = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(v12);
  std::string::operator=((a1 + 280), Identifier);
  size = __p[0].__r_.__value_.__l.__size_;
  if (__p[0].__r_.__value_.__l.__size_ && atomic_fetch_add_explicit((__p[0].__r_.__value_.__l.__size_ + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*size + 8))(size);
  }

  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(__p);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(__p);
  realityio::ImportSessionInit(v15);
  v16 = [MEMORY[0x277CCA8D8] mainBundle];
  v17 = [v16 resourcePath];

  if (!v17)
  {
LABEL_59:
    if (*v10 != a3)
    {
      if (*v10)
      {
        RERelease();
      }

      *v10 = a3;
      if (a3)
      {
        RERetain();
      }
    }

    operator new();
  }

  v18 = v17;
  std::string::basic_string[abi:ne200100]<0>(__p, [v17 UTF8String]);
  LOBYTE(v19) = *(&__p[0].__r_.__value_.__s + 23);
  if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v20 = __p[0].__r_.__value_.__l.__size_;
    if (!__p[0].__r_.__value_.__l.__size_)
    {
      v25 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    if (!*(&__p[0].__r_.__value_.__s + 23))
    {
LABEL_28:
      v45 = __p[0];
      goto LABEL_32;
    }

    v20 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
  }

  v21 = __p[0].__r_.__value_.__r.__words[0];
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = __p;
  }

  if (v21->__r_.__value_.__s.__data_[v20 - 1] != 47)
  {
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = __p[0].__r_.__value_.__l.__size_;
    }

    v23 = &v46;
    std::string::basic_string[abi:ne200100](&v46, v22 + 1);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v23 = v46.__r_.__value_.__r.__words[0];
    }

    if (v22)
    {
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0].__r_.__value_.__r.__words[0];
      }

      memmove(v23, v24, v22);
    }

    *(&v23->__r_.__value_.__l.__data_ + v22) = 47;
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    __p[0] = v46;
    v19 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  if ((v19 & 0x80) == 0)
  {
    goto LABEL_28;
  }

  v25 = __p[0].__r_.__value_.__l.__size_;
LABEL_31:
  std::string::__init_copy_ctor_external(&v45, __p[0].__r_.__value_.__l.__data_, v25);
LABEL_32:
  v26 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v43, v26);
  v27 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v43);
  v28 = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(v27);
  if (*(v28 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v44, *v28, *(v28 + 8));
  }

  else
  {
    v29 = *v28;
    v44.__r_.__value_.__r.__words[2] = *(v28 + 16);
    *&v44.__r_.__value_.__l.__data_ = v29;
  }

  pxrInternal__aapl__pxrReserved__::TfStringGetCommonPrefix();
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  v30 = v43.__r_.__value_.__l.__size_;
  if (v43.__r_.__value_.__l.__size_ && atomic_fetch_add_explicit((v43.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v30 + 8))(v30);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  v31 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v46.__r_.__value_.__l.__size_;
  }

  v33 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v33 = __p[0].__r_.__value_.__l.__size_;
  }

  if (v32 == v33 && ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v34 = &v46) : (v34 = v46.__r_.__value_.__r.__words[0]), (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v35 = __p) : (v35 = __p[0].__r_.__value_.__r.__words[0]), !memcmp(v34, v35, v32)))
  {
    v36 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v41, v36);
    v37 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v41);
    v38 = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(v37);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v39 = v46.__r_.__value_.__l.__size_;
    }

    std::string::basic_string(&v43, v38, v39, 0xFFFFFFFFFFFFFFFFLL, &v48);
    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }

    *(a1 + 136) = v43;
    *(&v43.__r_.__value_.__s + 23) = 0;
    v43.__r_.__value_.__s.__data_[0] = 0;
    v40 = v42;
    if (v42 && atomic_fetch_add_explicit((v42 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v40 + 8))(v40);
    }

    if ((*(&v46.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_57;
    }
  }

  else if ((v31 & 0x80) == 0)
  {
    goto LABEL_57;
  }

  operator delete(v46.__r_.__value_.__l.__data_);
LABEL_57:
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  goto LABEL_59;
}

void sub_2476C0428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, uint64_t a11, const void **a12, char a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>>>::destroy(*(v51 + 384));
  if (*(v51 + 375) < 0)
  {
    operator delete(*(v51 + 352));
  }

  if (*(v51 + 351) < 0)
  {
    operator delete(*(v51 + 328));
  }

  if (*(v51 + 327) < 0)
  {
    operator delete(*(v51 + 304));
  }

  if (*(v51 + 303) < 0)
  {
    operator delete(*(v52 + 264));
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(v54);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef((v52 + 232));
  std::mutex::~mutex(a10);
  std::__tree<std::string>::destroy(a11, *(v51 + 168));
  if (*(v51 + 159) < 0)
  {
    operator delete(*(v52 + 120));
  }

  std::__function::__value_func<void ()(REEntity *,REScene **,REAsset **,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v52 + 88);
  std::__function::__value_func<void ()(REScene *,char const*,REEntity *)>::~__value_func[abi:ne200100](v52 + 56);
  std::unique_ptr<realityio::BuilderDependencyDAG>::reset[abi:ne200100](v53, 0);
  v57 = *(v51 + 48);
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  realityio::WrappedRERef<REEngine *>::~WrappedRERef(v52);
  realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(a12);
  _Unwind_Resume(a1);
}

uint64_t *realityio::ImportSessionImpl::setMissingMaterial(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    v3 = (a1 + 248);

    return realityio::WrappedRERef<REAsset *>::operator=(v3, a2);
  }

  else
  {
    v5 = *(a1 + 16);
    ServiceLocator = REEngineGetServiceLocator();
    MEMORY[0x24C1A4230](ServiceLocator);
    AssetHandle = REAssetManagerCreateAssetHandle();
    v9 = AssetHandle;
    if (AssetHandle)
    {
      RERetain();
    }

    v8 = *(a1 + 248);
    if (v8 != AssetHandle)
    {
      *(a1 + 248) = AssetHandle;
      v9 = v8;
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v9);
    return RERelease();
  }
}

void realityio::ImportSessionImpl::~ImportSessionImpl(realityio::ImportSessionImpl *this)
{
  *this = &unk_28595CA90;
  v2 = *(this + 6);
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    v7 = (v5 + 136);
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v7);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>>>::destroy(v5 + 112, *(v5 + 120));
    v7 = (v5 + 88);
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v7);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>>>::destroy(v5 + 64, *(v5 + 72));
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>>>::~__hash_table(v5 + 24);
    v7 = v5;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v7);
    MEMORY[0x24C1A91B0](v5, 0x10A0C409217B224);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>>>::destroy(*(this + 48));
  if (*(this + 375) < 0)
  {
    operator delete(*(this + 44));
  }

  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  if (*(this + 327) < 0)
  {
    operator delete(*(this + 38));
  }

  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(this + 32);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 31);
  std::mutex::~mutex((this + 184));
  std::__tree<std::string>::destroy(this + 160, *(this + 21));
  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  std::__function::__value_func<void ()(REEntity *,REScene **,REAsset **,unsigned long,unsigned long)>::~__value_func[abi:ne200100](this + 104);
  std::__function::__value_func<void ()(REScene *,char const*,REEntity *)>::~__value_func[abi:ne200100](this + 72);
  std::unique_ptr<realityio::BuilderDependencyDAG>::reset[abi:ne200100](this + 8, 0);
  v6 = *(this + 6);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  realityio::WrappedRERef<REEngine *>::~WrappedRERef(this + 2);
  realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(this + 1);
}

void realityio::ImportSessionImpl::queueDedupingAssetForDeferredLoad(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v2 = *(*(*(*(a1 + 264) + 16) + 40) + 488);
    v3 = a2[1];
    *&v4 = *a2;
    *(&v4 + 1) = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    realityio::AssetLoadTracker::add(v2, &v4);
    if (*(&v4 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
    }
  }
}

void sub_2476C0A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::ImportSession::registerAssetDescriptorHandler()
{
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(v2);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(v2);
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  REAssetProviderBuilderCreate();
  REAssetProviderBuilderSetUserData();
  REAssetProviderBuilderSetREAssetRefLoadCallback();
  REAssetManagerRegisterAssetProviderBuilder();
  RERelease();
  return 1;
}

void sub_2476C0B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN9realityio13ImportSession30registerAssetDescriptorHandlerEP8REEngine_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v101 = *MEMORY[0x277D85DE8];
  v75 = *(a1 + 32);
  REAssetProviderCompiledDataLoadContextGetDescriptor();
  v76 = REAssetDescriptorCopyData();
  std::string::basic_string[abi:ne200100]<0>(v83, [v76 bytes]);
  v73 = a4;
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&__p);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v5 = MEMORY[0x277CCACA8];
  v6 = v84;
  v7 = v83[0];
  v8 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v6 >= 0)
  {
    v9 = v83;
  }

  else
  {
    v9 = v7;
  }

  v10 = [v5 stringWithCString:v9 encoding:{v8, v73}];
  v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 scheme];
    if (v13)
    {
      v14 = [v12 host];
      if (v14)
      {
        v15 = [v12 path];
        v16 = v15 == 0;

        if (!v16)
        {
          v17 = [v12 scheme];
          v18 = v17;
          std::string::basic_string[abi:ne200100]<0>(&v92, [v17 UTF8String]);

          v19 = [v12 host];
          v20 = v19;
          std::string::basic_string[abi:ne200100]<0>(v86, [v19 UTF8String]);

          v21 = [v12 path];
          v22 = v21;
          std::string::basic_string[abi:ne200100]<0>(&v85, [v21 UTF8String]);

          MEMORY[0x24C1A5D70](&buf, &v85);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v79, &buf);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v80, buf.__r_.__value_.__r.__words + 1);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&buf);
          v23 = [MEMORY[0x277CCACE0] componentsWithURL:v12 resolvingAgainstBaseURL:0];
          v24 = objc_opt_new();
          v100 = 0u;
          memset(v99, 0, sizeof(v99));
          v25 = [v23 queryItems];
          v26 = [v25 countByEnumeratingWithState:v99 objects:&buf count:16];
          if (v26)
          {
            v27 = *v99[0].__r_.__value_.__r.__words[2];
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v99[0].__r_.__value_.__r.__words[2] != v27)
                {
                  objc_enumerationMutation(v25);
                }

                v29 = *(v99[0].__r_.__value_.__l.__size_ + 8 * i);
                v30 = [v29 value];
                v31 = v30 == 0;

                if (!v31)
                {
                  v32 = [v29 value];
                  v33 = [v29 name];
                  [v24 setObject:v32 forKey:v33];
                }
              }

              v26 = [v25 countByEnumeratingWithState:v99 objects:&buf count:16];
            }

            while (v26);
          }

          v34 = [v24 objectForKeyedSubscript:@"bundlepath"];
          v35 = v34;
          std::string::basic_string[abi:ne200100]<0>(v99, [v34 UTF8String]);

          MEMORY[0x24C1A4E40](&buf, v99);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = buf;
          *(&buf.__r_.__value_.__s + 23) = 0;
          buf.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v82.__r_.__value_.__l.__data_);
            v82 = v97;
            *(&v97.__r_.__value_.__s + 23) = 0;
            v97.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v82 = v97;
          }

          if (SHIBYTE(v99[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99[0].__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v85.__r_.__value_.__l.__data_);
          }

          if (v87 < 0)
          {
            operator delete(v86[0]);
          }

          if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v92.__r_.__value_.__l.__data_);
          }

          v41 = [MEMORY[0x277CCA8D8] mainBundle];
          v42 = [v41 resourcePath];

          v43 = v42;
          std::string::basic_string[abi:ne200100]<0>(v86, [v42 UTF8String]);
          memset(&v85, 0, sizeof(v85));
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            if (!__p.__r_.__value_.__l.__size_)
            {
              goto LABEL_124;
            }

            p_p = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (!*(&__p.__r_.__value_.__s + 23))
            {
              goto LABEL_124;
            }

            p_p = &__p;
          }

          if (p_p->__r_.__value_.__s.__data_[0] == 47)
          {
            std::string::operator=(&v85, &__p);
          }

          else
          {
            if ((v87 & 0x80u) == 0)
            {
              v46 = v87;
            }

            else
            {
              v46 = v86[1];
            }

            std::string::basic_string[abi:ne200100](&buf, v46 + 1);
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_buf = &buf;
            }

            else
            {
              p_buf = buf.__r_.__value_.__r.__words[0];
            }

            if (v46)
            {
              if ((v87 & 0x80u) == 0)
              {
                v48 = v86;
              }

              else
              {
                v48 = v86[0];
              }

              memmove(p_buf, v48, v46);
            }

            *(&p_buf->__r_.__value_.__l.__data_ + v46) = 47;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v49 = &__p;
            }

            else
            {
              v49 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            v51 = std::string::append(&buf, v49, size);
            v52 = v51->__r_.__value_.__r.__words[0];
            v99[0].__r_.__value_.__r.__words[0] = v51->__r_.__value_.__l.__size_;
            *(v99[0].__r_.__value_.__r.__words + 7) = *(&v51->__r_.__value_.__r.__words[1] + 7);
            v53 = HIBYTE(v51->__r_.__value_.__r.__words[2]);
            v51->__r_.__value_.__l.__size_ = 0;
            v51->__r_.__value_.__r.__words[2] = 0;
            v51->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v85.__r_.__value_.__l.__data_);
            }

            v85.__r_.__value_.__r.__words[0] = v52;
            v85.__r_.__value_.__l.__size_ = v99[0].__r_.__value_.__r.__words[0];
            *(&v85.__r_.__value_.__r.__words[1] + 7) = *(v99[0].__r_.__value_.__r.__words + 7);
            *(&v85.__r_.__value_.__s + 23) = v53;
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          MEMORY[0x24C1A4E50](&buf, &__p, &v85);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = buf;
          *(&buf.__r_.__value_.__s + 23) = 0;
          buf.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v82.__r_.__value_.__l.__data_);
            v82 = v97;
            *(&v97.__r_.__value_.__s + 23) = 0;
            v97.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v82 = v97;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v99, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v99[0] = __p;
          }

          if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v99[1], v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
          }

          else
          {
            v99[1] = v82;
          }

          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v77, &v79);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v78, &v80);
          v93 = v75;
          realityio::ImportSession::registerAssetDescriptorHandler();
          v54 = std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfAssetPath&,pxrInternal__aapl__pxrReserved__::SdfPath&,0>(&buf, v99, &v77);
          if (v55 != &qword_27EE526B8)
          {
            v24 = *(v55 + 11);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v98);
          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (v55 == &qword_27EE526B8)
          {
            memset(&v92, 0, sizeof(v92));
            pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v94, &v77);
            pxrInternal__aapl__pxrReserved__::UsdStagePopulationMask::GetUnion(&buf, &v92, &v94);
            std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__vdeallocate(&v92.__r_.__value_.__l.__data_);
            v92 = buf;
            v95 = &buf;
            memset(&buf, 0, sizeof(buf));
            std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v95);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v94);
            v57 = pxrInternal__aapl__pxrReserved__::TfPathExists();
            if (v57)
            {
              pxrInternal__aapl__pxrReserved__::UsdStage::OpenMasked();
              v58 = RIOPxrUsdStageCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &>(&v94);
              v91 = v58;
              if (v58)
              {
                CFRetain(v58);
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 0;
              LODWORD(v95) = 0;
              v59 = RIOImportSessionCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &,REEngine *&,realityio::WrappedCFRef<RIOPxrUsdStage *> &,realityio::ImportSessionImpl::PipelineVersion,realityio::ImportSessionImpl::Threading>(&v94, &v93, &v91, &buf, &v95);
              v90 = v59;
              v60 = v59[4];
              *(*(v60 + 40) + 224) = 1;
              std::string::operator=((v60 + 136), &v99[1]);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v88, &v77);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v89, &v78);
              v61 = v59[4];
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v95, &v88);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v95 + 1, &v89);
              v62 = *(v61 + 40);
              v63 = *(v61 + 48);
              if (v63)
              {
                atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&buf, &v95);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(buf.__r_.__value_.__r.__words + 1, &v95 + 1);
              realityio::LiveSceneManager::updateAsset(v62, &buf, 0);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&buf);
              if (v63)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v63);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v95);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v88);
              MEMORY[0x24C1A4E40](&buf, v59[4] + 136);
              if (SHIBYTE(v99[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v99[0].__r_.__value_.__l.__data_);
              }

              v99[0] = buf;
              *(&buf.__r_.__value_.__s + 23) = 0;
              buf.__r_.__value_.__s.__data_[0] = 0;
              if (SHIBYTE(v99[1].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v99[1].__r_.__value_.__l.__data_);
                v99[1] = v97;
                *(&v97.__r_.__value_.__s + 23) = 0;
                v97.__r_.__value_.__s.__data_[0] = 0;
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                v99[1] = v97;
              }

              v65 = std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfAssetPath&,pxrInternal__aapl__pxrReserved__::SdfPath&,0>(&buf, v99, &v77);
              if (v66 == &qword_27EE526B8)
              {
                v24 = 0;
              }

              else
              {
                v24 = *(v66 + 11);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v98);
              if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v97.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              realityio::WrappedCFRef<RIOImportSession *>::~WrappedCFRef(&v90);
              realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(&v91);
              pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v94);
            }

            else
            {
              v64 = *realityio::logObjects(v57);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                if ((v99[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  data = &v99[1];
                }

                else
                {
                  data = v99[1].__r_.__value_.__l.__data_;
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                *(buf.__r_.__value_.__r.__words + 4) = data;
                _os_log_error_impl(&dword_247485000, v64, OS_LOG_TYPE_ERROR, "AssetFile (%s) does not exist", &buf, 0xCu);
              }

              v24 = 0;
            }

            buf.__r_.__value_.__r.__words[0] = &v92;
            std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&buf);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          v68 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v77);
          if (SHIBYTE(v99[1].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99[1].__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v99[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99[0].__r_.__value_.__l.__data_);
          }

          if (v24)
          {
            ServiceLocator = REEngineGetServiceLocator();
            MEMORY[0x24C1A4230](ServiceLocator);
            REAssetManagerReplaceAssetRefDataWith();
            v38 = 1;
LABEL_125:
            if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v85.__r_.__value_.__l.__data_);
            }

            if (v87 < 0)
            {
              operator delete(v86[0]);
            }

            goto LABEL_24;
          }

          v70 = *realityio::logObjects(v68);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            v71 = v83;
            if (v84 < 0)
            {
              v71 = v83[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
            *(buf.__r_.__value_.__r.__words + 4) = v71;
            _os_log_error_impl(&dword_247485000, v70, OS_LOG_TYPE_ERROR, "Invalid Asset from (%s) in USD AssetDescriptor.", &buf, 0xCu);
          }

          if (v74)
          {
            v38 = 0;
            *v74 = CFErrorCreate(0, @"REAssetRefErrorDomain", 0, 0);
            goto LABEL_125;
          }

LABEL_124:
          v38 = 0;
          goto LABEL_125;
        }
      }

      else
      {
      }
    }
  }

  v37 = *realityio::logObjects(v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v45 = v83;
    if (v84 < 0)
    {
      v45 = v83[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v45;
    _os_log_error_impl(&dword_247485000, v37, OS_LOG_TYPE_ERROR, "Invalid URL (%s) in USD AssetDescriptor.", &buf, 0xCu);
  }

  v38 = 0;
LABEL_24:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v79);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v84 < 0)
  {
    operator delete(v83[0]);
  }

  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

void sub_2476C17D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, char a13, int a14, __int16 a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, const void *a41, const void *a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>::~pair(&a49);
  realityio::WrappedCFRef<RIOImportSession *>::~WrappedCFRef(&a41);
  realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(&a42);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a47);
  a47 = &a43;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a47);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a13);
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath((v50 - 176));
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a15);
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&a16);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void realityio::ImportSession::assetDescriptorCacheEject(__int128 *a1, _DWORD *a2)
{
  std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfAssetPath&,pxrInternal__aapl__pxrReserved__::SdfPath&,0>(&v5, a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_2476C1B98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>::~pair(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::assetDescriptorCache(_anonymous_namespace_ *this)
{
  {
    qword_27EE526C0 = 0;
    qword_27EE526B8 = 0;
  }
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_uint **realityio::ImportSession::gatherTextureInfo(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = (a1 + 16);
  v11 = *(*(*(a1 + 16) + 8) + 16);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v11);
  v8 = *v7;
  std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::__value_func[abi:ne200100](v12, a4);
  realityio::TextureBuilder::gatherTextureInfo(&v11, a2, a3, v8 + 328, v12);
  std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::~__value_func[abi:ne200100](v12);
  result = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476C1D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_uint *a9, char a10)
{
  std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::~__value_func[abi:ne200100](&a10);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a9);
  _Unwind_Resume(a1);
}

uint64_t realityio::ImportSession::allowUnsupportedTextures(realityio::ImportSession *this)
{
  v2 = *(this + 2);
  if (*(v2 + 272) == 1)
  {
    if (*(v2 + 303) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *(v2 + 280), *(v2 + 288));
    }

    else
    {
      __str = *(v2 + 280);
    }
  }

  else
  {
    v31 = *(*(v2 + 8) + 16);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v31);
    v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v31);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&__p, v3);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&__p);
    Identifier = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(v4);
    if (*(Identifier + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *Identifier, *(Identifier + 8));
    }

    else
    {
      v6 = *Identifier;
      __str.__r_.__value_.__r.__words[2] = *(Identifier + 16);
      *&__str.__r_.__value_.__l.__data_ = v6;
    }

    v7 = v29;
    if (v29 && atomic_fetch_add_explicit((v29 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v7 + 8))(v7);
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v31);
  }

  v8 = (this + 32);
  v9 = *(this + 55);
  if (v9 < 0)
  {
    if (!*(this + 5))
    {
      goto LABEL_29;
    }
  }

  else if (!*(this + 55))
  {
    goto LABEL_29;
  }

  if (v9 >= 0)
  {
    v10 = *(this + 55);
  }

  else
  {
    v10 = *(this + 5);
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v12 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (v10 == size)
  {
    v13 = v9 >= 0 ? (this + 32) : *v8;
    v14 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
    if (!memcmp(v13, v14, v10))
    {
      v25 = *(this + 56);
      if ((v12 & 0x80) == 0)
      {
        return v25 & 1;
      }

      goto LABEL_52;
    }
  }

LABEL_29:
  std::string::operator=((this + 32), &__str);
  pxrInternal__aapl__pxrReserved__::TfGetExtension();
  v15 = v30;
  v16 = v30;
  v17 = (v30 & 0x80u) != 0;
  v18 = v29;
  if ((v30 & 0x80u) != 0)
  {
    v16 = v29;
  }

  if (v16)
  {
    v19 = 0;
    do
    {
      if (v17)
      {
        p_p = __p;
      }

      else
      {
        p_p = &__p;
      }

      v21 = __tolower(p_p[v19]);
      if ((v30 & 0x80u) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p;
      }

      v22[v19++] = v21;
      v15 = v30;
      v23 = v30;
      v17 = (v30 & 0x80u) != 0;
      v18 = v29;
      if ((v30 & 0x80u) != 0)
      {
        v23 = v29;
      }
    }

    while (v23 > v19);
  }

  if (!v17)
  {
    if (v15 == 4)
    {
      v24 = &__p;
      goto LABEL_47;
    }

LABEL_48:
    v25 = 1;
    goto LABEL_49;
  }

  if (v18 != 4)
  {
    goto LABEL_48;
  }

  v24 = __p;
LABEL_47:
  if (*v24 != 2053403509)
  {
    goto LABEL_48;
  }

  if (*(this + 55) < 0)
  {
    v8 = *v8;
  }

  v27 = MEMORY[0x24C1A4970](v8, 0);
  if (v27 < 1688194860.0 || v27 == 520844460.0)
  {
    goto LABEL_48;
  }

  v25 = 0;
LABEL_49:
  *(this + 56) = v25;
  if (v30 < 0)
  {
    operator delete(__p);
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_52:
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v25 & 1;
}

void sub_2476C2014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::ImportSession::reloadAsset(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v84 = *MEMORY[0x277D85DE8];
  if ((*(**(a1 + 16) + 48))(*(a1 + 16)))
  {
    if (a3)
    {
      std::operator+<char>();
      v5 = std::string::append(&v76, " while update is in progress");
      v6 = *&v5->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      *a3 = realityio::createError(&__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }
    }

    v7 = 0;
    goto LABEL_163;
  }

  v8 = pxrInternal__aapl__pxrReserved__::ArchNormPath();
  pxrInternal__aapl__pxrReserved__::ArGetResolver(v8);
  pxrInternal__aapl__pxrReserved__::ArResolver::GetExtension();
  std::string::basic_string[abi:ne200100]<0>(&__p, "m4a");
  std::string::basic_string[abi:ne200100]<0>(v78, "caf");
  std::string::basic_string[abi:ne200100]<0>(v79, "ac3");
  std::string::basic_string[abi:ne200100]<0>(v80, "flac");
  std::string::basic_string[abi:ne200100]<0>(v81, "wav");
  std::string::basic_string[abi:ne200100]<0>(v82, "aiff");
  std::string::basic_string[abi:ne200100]<0>(v83, "mp3");
  v9 = 0;
  v63[0] = 0;
  v63[1] = 0;
  v62 = v63;
  do
  {
    std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(&v62, v63, (&__p.__r_.__value_.__l.__data_ + v9));
    v9 += 24;
  }

  while (v9 != 168);
  for (i = 0; i != -168; i -= 24)
  {
    if (v83[i + 23] < 0)
    {
      operator delete(*&v83[i]);
    }
  }

  v61[0] = 0;
  v61[1] = 0;
  v60 = v61;
  v11 = std::__tree<std::string>::__count_unique<std::string>(&v62, &v64);
  if (v11)
  {
    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v66;
    }

    pxrInternal__aapl__pxrReserved__::ArGetResolver(v11);
    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v76, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
    }

    else
    {
      v76 = v66;
    }

    pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset();
    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }

    if (!v71)
    {
      std::operator+<char>();
      v34 = std::string::append(&v75, " could not be opened for reading.");
      v35 = *&v34->__r_.__value_.__l.__data_;
      v76.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&v76.__r_.__value_.__l.__data_ = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      *a3 = realityio::createError(&v76);
      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      v7 = 0;
      goto LABEL_136;
    }

    (*(*v71 + 24))(&v68);
    v31 = v68;
    if (!v68)
    {
      std::operator+<char>();
      *a3 = realityio::createError(&v76);
      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      v7 = 0;
      goto LABEL_134;
    }

    v32 = (*(*v71 + 16))(v71);
    v74 = CFDataCreateWithBytesNoCopy(0, v31, v32, *MEMORY[0x277CBED00]);
    if (v74)
    {
      v33 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a1 + 248, &v66.__r_.__value_.__l.__data_);
      if (a1 + 256 != v33)
      {
        if (*(v33 + 79) < 0)
        {
          std::string::__init_copy_ctor_external(&v76, *(v33 + 56), *(v33 + 64));
        }

        else
        {
          v76 = *(v33 + 56);
        }

        realityio::ImportSession::extraAssets(a1, &v75);
        v52 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v75, &v76.__r_.__value_.__l.__data_);
        v7 = &v75.__r_.__value_.__r.__words[1] != v52;
        if (&v75.__r_.__value_.__r.__words[1] == v52)
        {
          std::operator+<char>();
          v54 = std::string::append(&v70, " could not be found for replacing.");
          v55 = *&v54->__r_.__value_.__l.__data_;
          v73.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
          *&v73.__r_.__value_.__l.__data_ = v55;
          v54->__r_.__value_.__l.__size_ = 0;
          v54->__r_.__value_.__r.__words[2] = 0;
          v54->__r_.__value_.__r.__words[0] = 0;
          *a3 = realityio::createError(&v73);
          if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v73.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v70.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          size = v52[2].__r_.__value_.__l.__size_;
          REAudioFileAssetMakeMutableAndReplaceWithData();
        }

        std::__tree<std::string>::destroy(&v75, v75.__r_.__value_.__l.__size_);
        if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v76.__r_.__value_.__l.__data_);
        }

        goto LABEL_133;
      }

      std::operator+<char>();
      v50 = std::string::append(&v75, " is not in use as an asset.");
      v51 = *&v50->__r_.__value_.__l.__data_;
      v76.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
      *&v76.__r_.__value_.__l.__data_ = v51;
      v50->__r_.__value_.__l.__size_ = 0;
      v50->__r_.__value_.__r.__words[2] = 0;
      v50->__r_.__value_.__r.__words[0] = 0;
      *a3 = realityio::createError(&v76);
      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        v38 = v75.__r_.__value_.__r.__words[0];
        goto LABEL_122;
      }
    }

    else
    {
      std::operator+<char>();
      *a3 = realityio::createError(&v76);
      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        v38 = v76.__r_.__value_.__r.__words[0];
LABEL_122:
        operator delete(v38);
      }
    }

    v7 = 0;
LABEL_133:
    realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&v74);
LABEL_134:
    if (v69)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v69);
    }

LABEL_136:
    if (v72)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v72);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_159;
  }

  *&v75.__r_.__value_.__r.__words[1] = 0uLL;
  v75.__r_.__value_.__r.__words[0] = &v75.__r_.__value_.__l.__size_;
  pxrInternal__aapl__pxrReserved__::ArchNormPath();
  v12 = *(a1 + 232);
  if (!v12)
  {
    goto LABEL_27;
  }

  v13 = a1 + 232;
  do
  {
    v14 = std::less<std::string>::operator()[abi:ne200100](a1 + 224, (v12 + 32), &v76.__r_.__value_.__l.__data_);
    if (v14)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (!v14)
    {
      v13 = v12;
    }

    v12 = *(v12 + v15);
  }

  while (v12);
  if (v13 == a1 + 232 || std::less<std::string>::operator()[abi:ne200100](a1 + 224, &v76.__r_.__value_.__l.__data_, (v13 + 32)))
  {
LABEL_27:
    v16 = 0;
  }

  else
  {
    if ((v13 + 56) != &v75)
    {
      v39 = *(v13 + 56);
      v40 = (v13 + 64);
      if (v75.__r_.__value_.__r.__words[2])
      {
        v41 = v75.__r_.__value_.__r.__words[0];
        v75.__r_.__value_.__r.__words[0] = &v75.__r_.__value_.__l.__size_;
        *(v75.__r_.__value_.__l.__size_ + 16) = 0;
        *&v75.__r_.__value_.__r.__words[1] = 0uLL;
        if (*(v41 + 8))
        {
          v42 = *(v41 + 8);
        }

        else
        {
          v42 = v41;
        }

        __p.__r_.__value_.__r.__words[0] = &v75;
        __p.__r_.__value_.__l.__size_ = v42;
        __p.__r_.__value_.__r.__words[2] = v42;
        if (!v42 || (__p.__r_.__value_.__l.__size_ = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::__detach_next(v42), v39 == v40))
        {
          v49 = v39;
        }

        else
        {
          do
          {
            std::string::operator=((v42 + 32), (v39 + 4));
            std::string::operator=((v42 + 56), (v39 + 7));
            std::string::operator=((v42 + 80), (v39 + 10));
            v43 = *(v39 + 13);
            *(v42 + 120) = *(v39 + 60);
            *(v42 + 104) = v43;
            std::string::operator=((v42 + 128), (v39 + 16));
            v44 = __p.__r_.__value_.__r.__words[2];
            v45 = v75.__r_.__value_.__l.__size_;
            p_size = &v75.__r_.__value_.__l.__size_;
            v47 = &v75.__r_.__value_.__l.__size_;
            if (v75.__r_.__value_.__l.__size_)
            {
              do
              {
                while (1)
                {
                  p_size = v45;
                  if (!realityio::TextureImportOperationSettings::operator<((v44 + 4), v45 + 32))
                  {
                    break;
                  }

                  v45 = *p_size;
                  v47 = p_size;
                  if (!*p_size)
                  {
                    goto LABEL_105;
                  }
                }

                v45 = p_size[1];
              }

              while (v45);
              v47 = p_size + 1;
            }

LABEL_105:
            *v44 = 0;
            v44[1] = 0;
            v44[2] = p_size;
            *v47 = v44;
            if (*v75.__r_.__value_.__l.__data_)
            {
              v75.__r_.__value_.__r.__words[0] = *v75.__r_.__value_.__l.__data_;
              v44 = *v47;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v75.__r_.__value_.__l.__size_, v44);
            ++v75.__r_.__value_.__r.__words[2];
            v42 = __p.__r_.__value_.__l.__size_;
            __p.__r_.__value_.__r.__words[2] = __p.__r_.__value_.__l.__size_;
            if (__p.__r_.__value_.__l.__size_)
            {
              __p.__r_.__value_.__l.__size_ = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::__detach_next(__p.__r_.__value_.__l.__size_);
            }

            v48 = v39[1];
            if (v48)
            {
              do
              {
                v49 = v48;
                v48 = *v48;
              }

              while (v48);
            }

            else
            {
              do
              {
                v49 = v39[2];
                v30 = *v49 == v39;
                v39 = v49;
              }

              while (!v30);
            }

            if (!v42)
            {
              break;
            }

            v39 = v49;
          }

          while (v49 != v40);
        }

        std::__tree<realityio::TextureImportOperationSettings>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&__p);
        v39 = v49;
      }

      if (v39 != v40)
      {
        std::__tree<realityio::TextureImportOperationSettings>::__construct_node<realityio::TextureImportOperationSettings const&>();
      }
    }

    v16 = 1;
  }

  if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v16)
    {
      goto LABEL_30;
    }

LABEL_87:
    if (!a3)
    {
LABEL_157:
      v7 = 0;
      goto LABEL_158;
    }

    std::operator+<char>();
    v36 = std::string::append(&v76, "is not in use as an asset");
    v37 = *&v36->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    *a3 = realityio::createError(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_155:
    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }

    goto LABEL_157;
  }

  operator delete(v76.__r_.__value_.__l.__data_);
  if ((v16 & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_30:
  v17 = *(*(a1 + 16) + 16);
  ServiceLocator = REEngineGetServiceLocator();
  v19 = MEMORY[0x24C1A4260](ServiceLocator);
  v20 = v75.__r_.__value_.__r.__words[0];
  if (v75.__r_.__value_.__l.__data_ != &v75.__r_.__value_.__r.__words[1])
  {
    v21 = v19;
    v22 = *MEMORY[0x277CBED00];
    while (1)
    {
      realityio::TextureImportOperationSettings::makeTextureResourceKey(&v20[1].__words[1], &v76);
      realityio::ImportSession::getTextureAssetWithKey(a1, &v76.__r_.__value_.__l.__data_, &v74);
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v73, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
      }

      else
      {
        v73 = v66;
      }

      pxrInternal__aapl__pxrReserved__::ArGetResolver(v23);
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v66;
      }

      pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (!v71)
      {
        break;
      }

      (*(*v71 + 24))(&v68);
      v24 = v68;
      if (!v68)
      {
        if (a3)
        {
          std::operator+<char>();
          *a3 = realityio::createError(&__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (v69)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v69);
        }

        goto LABEL_150;
      }

      cf = 0;
      v25 = (*(*v71 + 16))(v71);
      v26 = CFDataCreateWithBytesNoCopy(0, v24, v25, v22);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = v26;
      v27 = *(*(a1 + 16) + 16);
      realityio::TextureBuilder::createStandaloneTextureAssetData(&cf, &v20[1].__words[1], &__p);
      if (__p.__r_.__value_.__s.__data_[0])
      {
        v7 = MEMORY[0x24C1A4480](v21, v74, __p.__r_.__value_.__l.__size_, a3);
      }

      else
      {
        if (a3)
        {
          std::error_code::message(&v70, &__p.__r_.__value_.__r.__words[1]);
          *a3 = realityio::createError(&v70);
          if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v70.__r_.__value_.__l.__data_);
          }
        }

        v7 = 0;
      }

      realityio::Result<realityio::WrappedRERef<RETextureAssetData *>,realityio::DetailedError>::~Result(&__p);
      realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&cf);
      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v69);
      }

      if (v72)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v72);
      }

      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v74);
      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (v7)
      {
        v28 = v20->__words[1];
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = v28->__r_.__value_.__r.__words[0];
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = v20->__words[2];
            v30 = v29->__r_.__value_.__r.__words[0] == v20;
            v20 = v29;
          }

          while (!v30);
        }

        v20 = v29;
        if (v29 != &v75.__r_.__value_.__r.__words[1])
        {
          continue;
        }
      }

      goto LABEL_158;
    }

    if (a3)
    {
      std::operator+<char>();
      v56 = std::string::append(&v70, "could not be opened for reading");
      v57 = *&v56->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      *a3 = realityio::createError(&__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }
    }

LABEL_150:
    if (v72)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v72);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v74);
    goto LABEL_155;
  }

  v7 = 1;
LABEL_158:
  std::__tree<realityio::TextureImportOperationSettings>::destroy(&v75, v75.__r_.__value_.__l.__size_);
LABEL_159:
  std::__tree<std::string>::destroy(&v60, v61[0]);
  std::__tree<std::string>::destroy(&v62, v63[0]);
  if (v65 < 0)
  {
    operator delete(v64);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

LABEL_163:
  v58 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_2476C2D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    operator delete(__p);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a42);
  if (a51 < 0)
  {
    operator delete(a46);
  }

  std::__tree<realityio::TextureImportOperationSettings>::destroy(&a43, a44);
  std::__tree<std::string>::destroy(&a9, a10);
  std::__tree<std::string>::destroy(&a12, a13);
  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void realityio::ImportSession::insertTextureImportSettingsIntoCache(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pxrInternal__aapl__pxrReserved__::ArchNormPath();
  v8 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 224, __p);
  std::__tree<realityio::TextureImportOperationSettings>::__emplace_unique_key_args<realityio::TextureImportOperationSettings,realityio::TextureImportOperationSettings const&>(v5 + 56, a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2476C31A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void realityio::ImportSession::registerAudioAsset(uint64_t a1, const void **a2, std::string *a3, uint64_t a4)
{
  pxrInternal__aapl__pxrReserved__::ArchNormPath();
  v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 248, a2);
  std::string::operator=((v8 + 56), a3);
  realityio::ImportSessionImpl::addOrReplaceExtraAsset(*(a1 + 16), &a3->__r_.__value_.__l.__data_, a4);
  if (v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_2476C325C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::ImportSessionImpl::getAssetURLFromBundle(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4)
{
  v27[2] = *MEMORY[0x277D85DE8];
  if (!a2 || (Type = REAssetGetType(), realityio::CFStringCopyUTF8String(Type, v24), v24[0] != 1))
  {
    AssetURLFromBundle = 0;
    goto LABEL_6;
  }

  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a3);
  if (*(String + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *String, *(String + 8));
  }

  else
  {
    v9 = *String;
    v23.__r_.__value_.__r.__words[2] = *(String + 16);
    *&v23.__r_.__value_.__l.__data_ = v9;
  }

  v14 = REAssetCopyMetadataString();
  cf = v14;
  if (v14)
  {
    realityio::CFStringCopyUTF8String(v14, v19);
    if ((v19[0] & 1) == 0)
    {
      AssetURLFromBundle = 0;
      goto LABEL_19;
    }

    pxrInternal__aapl__pxrReserved__::TfMakeValidIdentifier();
    v15 = std::string::insert(&__p, 0, "/");
    v16 = v15->__r_.__value_.__r.__words[0];
    v27[0] = v15->__r_.__value_.__l.__size_;
    *(v27 + 7) = *(&v15->__r_.__value_.__r.__words[1] + 7);
    v17 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    v23.__r_.__value_.__r.__words[0] = v16;
    v23.__r_.__value_.__l.__size_ = v27[0];
    *(&v23.__r_.__value_.__r.__words[1] + 7) = *(v27 + 7);
    *(&v23.__r_.__value_.__s + 23) = v17;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v19[0] == 1 && v21 < 0)
    {
      operator delete(v20);
    }
  }

  AssetURLFromBundle = realityio::ImportSessionImpl::getAssetURLFromBundle(a1, &v23, &v25, v13, a4);
LABEL_19:
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&cf);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if ((v24[0] & 1) != 0 && v26 < 0)
  {
    operator delete(v25);
  }

LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return AssetURLFromBundle;
}

void sub_2476C3460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&a22);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a29 == 1 && a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::ImportSessionImpl::getAssetURLFromBundle(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if ((*(a1 + 327) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 312))
    {
      return 0;
    }
  }

  else if (!*(a1 + 327))
  {
    return 0;
  }

  if ((*(a1 + 375) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 360))
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!*(a1 + 375))
  {
    return 0;
  }

LABEL_7:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v28);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "asset://", 8);
  realityio::urlSafeString(a2, __p);
  if (v27 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v27 >= 0)
  {
    v11 = HIBYTE(v27);
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "?", 1);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "bundleId=", 9);
  realityio::urlSafeString((a1 + 304), __p);
  if (v27 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if (v27 >= 0)
  {
    v15 = HIBYTE(v27);
  }

  else
  {
    v15 = __p[1];
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "&", 1);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "bundleName=", 11);
  realityio::urlSafeString((a1 + 352), __p);
  if (v27 >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if (v27 >= 0)
  {
    v19 = HIBYTE(v27);
  }

  else
  {
    v19 = __p[1];
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "&", 1);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "assetType=", 10);
  realityio::urlSafeString(a3, __p);
  if (v27 >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if (v27 >= 0)
  {
    v23 = HIBYTE(v27);
  }

  else
  {
    v23 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  *a5 = *__p;
  *(a5 + 16) = v27;
  v28[0] = *MEMORY[0x277D82818];
  v24 = *(MEMORY[0x277D82818] + 72);
  *(v28 + *(v28[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v29 = v24;
  v30 = MEMORY[0x277D82878] + 16;
  if (v32 < 0)
  {
    operator delete(v31[7].__locale_);
  }

  v30 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v31);
  std::iostream::~basic_iostream();
  MEMORY[0x24C1A9110](&v33);
  return 1;
}

void sub_2476C3870(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a8, MEMORY[0x277D82818]);
  MEMORY[0x24C1A9110](va);
  _Unwind_Resume(a1);
}

BOOL realityio::ImportSessionImpl::addExtraAsset(uint64_t a1, const void **a2, uint64_t a3)
{
  std::mutex::lock((a1 + 184));
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a1 + 160, a2);
  if (a1 + 168 == v6)
  {
    *(std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 160, a2) + 56) = a3;
  }

  std::mutex::unlock((a1 + 184));
  return a1 + 168 == v6;
}

void realityio::ImportSessionImpl::removeExtraAsset(uint64_t a1, const void **a2)
{
  std::mutex::lock((a1 + 184));
  std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::__erase_unique<std::string>((a1 + 160), a2);

  std::mutex::unlock((a1 + 184));
}

void realityio::ImportSessionImpl::addOrReplaceExtraAsset(uint64_t a1, const void **a2, uint64_t a3)
{
  std::mutex::lock((a1 + 184));
  *(std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 160, a2) + 56) = a3;
  std::mutex::unlock((a1 + 184));
}

uint64_t realityio::ImportSessionImpl::setSceneUpdatePassCompletion(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v5, a2);
  realityio::LiveSceneManager::setSceneUpdatePassCompletion(v2, v5);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476C3AD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::ImportSessionV1::ImportSessionV1(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5)
{
  v9[5] = *MEMORY[0x277D85DE8];
  v9[0] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(v9);
  realityio::ImportSessionImpl::ImportSessionImpl(a1, v9, a3, a4, a5);
}

void sub_2476C3D44(_Unwind_Exception *a1)
{
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(v1 + 50);
  realityio::ImportSessionImpl::~ImportSessionImpl(v1);
  _Unwind_Resume(a1);
}

void realityio::ImportSessionV1::~ImportSessionV1(realityio::ImportSessionV1 *this)
{
  *this = &unk_28595CB08;
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(this + 50);

  realityio::ImportSessionImpl::~ImportSessionImpl(this);
}

{
  *this = &unk_28595CB08;
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(this + 50);
  realityio::ImportSessionImpl::~ImportSessionImpl(this);

  JUMPOUT(0x24C1A91B0);
}

realityio::LiveSceneManager *realityio::ImportSessionV1::updateLiveScene(realityio::ImportSessionV1 *this, unsigned __int8 a2)
{
  v4 = atomic_load(off_278EA82B0);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::TraceCollector::Clear(v4);
  v5 = atomic_load(off_278EA82B0);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::TraceCollector::SetEnabled(v5);
  result = *(this + 5);
  if (result)
  {
    if (*(this + 408) == 1)
    {
      *(*(this + 4) + 168) = 1;
      *(this + 408) = 0;
    }

    return realityio::LiveSceneManager::updateLiveScene(result, a2);
  }

  return result;
}

uint64_t realityio::ImportSessionV1::gatherFaultRecords(uint64_t result, uint64_t a2)
{
  if (atomic_load((*(result + 264) + 28)))
  {
    return std::function<void ()(char const*,ExecFault::Type,char const*)>::operator()(a2, "status", 5, "session cancelled");
  }

  return result;
}

uint64_t realityio::ImportSessionV1::getEntityAtPrimPath(pxrInternal__aapl__pxrReserved__::SdfPath *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (*a2 == *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1))
  {
    v4 = *(*a1 + 16);

    return v4(a1);
  }

  else
  {
    v6 = *(a1 + 48);
    if (!v6)
    {
      goto LABEL_15;
    }

    v7 = (a1 + 384);
    do
    {
      v8 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v6 + 4, a2);
      if (v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0;
      }

      if (!v8)
      {
        v7 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v7 != (a1 + 384) && (pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, v7 + 4) & 1) == 0)
    {
      return v7[5];
    }

LABEL_15:
    v10 = *(a1 + 8);
    v11 = realityio::kEntityBuilderIdentifier;
    MEMORY[0x24C1A5DE0](&v24, realityio::kEntityBuilderIdentifier);
    realityio::BuilderDependencyDAG::getBuilderAtPrimPathWithBuilderIdentifier(v10, a2, &v24, &v29);
    EntityRefFromBuilderPtr = getEntityRefFromBuilderPtr(v29);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if ((v24 & 7) != 0)
    {
      atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (!EntityRefFromBuilderPtr)
    {
      v16 = *(*(a1 + 1) + 16);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v16);
      v13 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v16);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v24, v13, a2);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v16);
      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v24))
      {
        while ((pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(&v24) & 1) == 0)
        {
          v14 = *(a1 + 8);
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v24, &v16);
          MEMORY[0x24C1A5DE0](&v21, v11);
          realityio::BuilderDependencyDAG::getBuilderAtPrimPathWithBuilderIdentifier(v14, &v16, &v21, &v22);
          v15 = getEntityRefFromBuilderPtr(v22);
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }

          if ((v21 & 7) != 0)
          {
            atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
          if (v15)
          {
            EntityRefFromBuilderPtr = (*(*a1 + 16))(a1);
            goto LABEL_36;
          }

          pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(&v24, &v16);
          LODWORD(v24) = v16;
          if (v25)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v25);
          }

          v25 = v17;
          v17 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v26, &v18);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v27, &v19);
          if ((v28 & 7) != 0)
          {
            atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v28 = v20;
          v20 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
          if (v17)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17);
          }
        }
      }

      EntityRefFromBuilderPtr = 0;
LABEL_36:
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v26);
      if (v25)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v25);
      }
    }

    return EntityRefFromBuilderPtr;
  }
}

void sub_2476C4274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

std::string::size_type getEntityRefFromBuilderPtr(char **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = **a1;
  if (!v2)
  {
    return 0;
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = realityio::EntityBuilder::kOutputName(v2);
  realityio::Outputs::getValue<realityio::WrappedRERef<REEntity *>>(v4, v5, v8);
  if (v8[0].__r_.__value_.__s.__data_[0])
  {
    size = v8[0].__r_.__value_.__l.__size_;
  }

  else
  {
    size = 0;
  }

  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return size;
}

void sub_2476C43F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::ImportSessionV1::dumpDiagnostics(void *a1, const void **a2)
{
  v7 = *(a1[1] + 16);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v7);
  v4 = a1[2];
  (*(*a1 + 16))(a1);
  v5 = realityio::internal::dumpDiagnostics(a2, &v7);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v7);
  return v5;
}

void sub_2476C44A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va);
  _Unwind_Resume(a1);
}

void realityio::ImportSessionV1::gatherStatistics(realityio::ImportSessionV1 *this, pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = atomic_load(off_278EA82B0);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance();
  }

  v4 = pxrInternal__aapl__pxrReserved__::TraceCollector::SetEnabled(v3);
  pxrInternal__aapl__pxrReserved__::TraceReporter::GetGlobalReporter(&__p, v4);
  v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::TraceReporter>::operator->(&__p);
  MEMORY[0x24C1A5020](v5);
  v6 = v17;
  if (v17 && atomic_fetch_add_explicit(v17 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    v6 = (*(*v6 + 8))(v6);
  }

  pxrInternal__aapl__pxrReserved__::TraceReporter::GetGlobalReporter(&__p, v6);
  v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::TraceReporter>::operator->(&__p);
  Counters = pxrInternal__aapl__pxrReserved__::TraceReporter::GetCounters(v7);
  v9 = v17;
  if (v17 && atomic_fetch_add_explicit(v17 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    v9 = (*(*v9 + 8))(v9);
  }

  for (i = *(Counters + 16); i; i = *i)
  {
    v11 = i[2];
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 &= 0xFFFFFFFFFFFFFFF8;
    }

    v12 = i[3];
    if ((v11 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
    }

    v17 = &unk_285946DC3;
    __p = v12;
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__p);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "importSessionVersion");
  v14 = 0x3FF0000000000000;
  v15 = &unk_285946DC3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v14);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "importSession:Version");
  v14 = 0x3FF0000000000000;
  v15 = &unk_285946DC3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v14);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  if (*(this + 409) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "importSession:TargetDirtying");
    v15 = &unk_285946C7B;
    LOBYTE(v14) = 1;
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v14);
    if (v18 < 0)
    {
      operator delete(__p);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2476C4788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL realityio::ImportSessionV1::dumpDependencies(uint64_t a1, uint64_t a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 64);
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v47 = v3;
  realityio::BuilderDependencyDAG::getAllBuilders(v3, &v60);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = fopen(v4, "w");
  if (!v5)
  {
    goto LABEL_104;
  }

  fwrite("digraph G {\n", 0xCuLL, 1uLL, v5);
  fwrite("node [shape=record];\n", 0x15uLL, 1uLL, v5);
  memset(v58, 0, sizeof(v58));
  v59 = 1065353216;
  *__p = 0u;
  v56 = 0u;
  v57 = 1065353216;
  v6 = v60;
  v7 = v61;
  if (v60 == v61)
  {
    goto LABEL_68;
  }

  v8 = 0;
  v46 = v61;
  do
  {
    v9 = v6[1];
    if (v9 && (v10 = std::__shared_weak_count::lock(v9)) != 0)
    {
      v48 = v10;
      v11 = *v6;
    }

    else
    {
      v48 = 0;
      v11 = 0;
    }

    snprintf(__str, 0x400uLL, "node_%i", v8);
    v12 = realityio::WeakBuilderPtrHash::operator()(v58, v6);
    v13 = v12;
    v14 = *(&v58[0] + 1);
    if (!*(&v58[0] + 1))
    {
      goto LABEL_27;
    }

    v15 = vcnt_s8(*(v58 + 8));
    v15.i16[0] = vaddlv_u8(v15);
    v16 = v15.u32[0];
    if (v15.u32[0] > 1uLL)
    {
      v17 = v12;
      if (v12 >= *(&v58[0] + 1))
      {
        v17 = v12 % *(&v58[0] + 1);
      }
    }

    else
    {
      v17 = (*(&v58[0] + 1) - 1) & v12;
    }

    v18 = *(*&v58[0] + 8 * v17);
    if (!v18 || (v19 = *v18) == 0)
    {
LABEL_27:
      operator new();
    }

    while (1)
    {
      v20 = v19[1];
      if (v20 == v13)
      {
        break;
      }

      if (v16 > 1)
      {
        if (v20 >= v14)
        {
          v20 %= v14;
        }
      }

      else
      {
        v20 &= v14 - 1;
      }

      if (v20 != v17)
      {
        goto LABEL_27;
      }

LABEL_26:
      v19 = *v19;
      if (!v19)
      {
        goto LABEL_27;
      }
    }

    if (!realityio::WeakBuilderPtrEqual::operator()(v58, v19 + 2, v6))
    {
      goto LABEL_26;
    }

    MEMORY[0x24C1A8D40](v19 + 4, __str);
    std::string::basic_string[abi:ne200100]<0>(&v63, __str);
    v21 = std::__string_hash<char>::operator()[abi:ne200100](__p, &v63);
    v22 = v21;
    v23 = __p[1];
    if (!__p[1])
    {
      goto LABEL_44;
    }

    v24 = vcnt_s8(__p[1]);
    v24.i16[0] = vaddlv_u8(v24);
    v25 = v24.u32[0];
    if (v24.u32[0] > 1uLL)
    {
      v26 = v21;
      if (v21 >= __p[1])
      {
        v26 = v21 % __p[1];
      }
    }

    else
    {
      v26 = (__p[1] - 1) & v21;
    }

    v27 = *(__p[0] + v26);
    if (!v27 || (v28 = *v27) == 0)
    {
LABEL_44:
      operator new();
    }

    while (2)
    {
      v29 = v28[1];
      if (v29 != v22)
      {
        if (v25 > 1)
        {
          if (v29 >= v23)
          {
            v29 %= v23;
          }
        }

        else
        {
          v29 &= v23 - 1;
        }

        if (v29 != v26)
        {
          goto LABEL_44;
        }

LABEL_43:
        v28 = *v28;
        if (!v28)
        {
          goto LABEL_44;
        }

        continue;
      }

      break;
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](__p, v28 + 2, &v63.__r_.__value_.__l.__data_))
    {
      goto LABEL_43;
    }

    v31 = *v6;
    v30 = v6[1];
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 16), 1uLL, memory_order_relaxed);
    }

    v32 = v28[6];
    v28[5] = v31;
    v28[6] = v30;
    if (v32)
    {
      std::__shared_weak_count::__release_weak(v32);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    v33 = (*(*v11 + 24))(&v53, v11);
    if ((v53 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v33);
    }

    std::string::basic_string[abi:ne200100]<0>(v51, "com.apple.");
    std::string::basic_string[abi:ne200100]<0>(&v63, "");
    pxrInternal__aapl__pxrReserved__::TfStringReplace();
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51[0]);
    }

    if ((v53 & 7) != 0)
    {
      atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v11 + 8));
    v35 = &v54;
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v35 = v54.__r_.__value_.__r.__words[0];
    }

    fprintf(v5, "%s [label=%s:%s ];\n", __str, Text, v35);
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
      if (v48)
      {
LABEL_63:
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }
    }

    else if (v48)
    {
      goto LABEL_63;
    }

    ++v8;
    v6 += 2;
  }

  while (v6 != v46);
  v6 = v60;
  v7 = v61;
LABEL_68:
  while (v6 != v7)
  {
    v53 = 0uLL;
    v36 = v6[1];
    if (v36)
    {
      *(&v53 + 1) = std::__shared_weak_count::lock(v36);
      if (*(&v53 + 1))
      {
        *&v53 = *v6;
      }
    }

    *__str = 0;
    v66 = 0;
    v67 = 0;
    v51[0] = 0;
    v51[1] = 0;
    v52 = 0;
    realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>>::insert(v51, &v53);
    realityio::BuilderDependencyDAG::findDownstreamDependencies(v47, v51, __str);
    *&v54.__r_.__value_.__l.__data_ = v53;
    if (*(&v53 + 1))
    {
      atomic_fetch_add_explicit((*(&v53 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v49 = &v54;
    v37 = std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>>>::__emplace_unique_key_args<std::weak_ptr<realityio::Builder>,std::piecewise_construct_t const&,std::tuple<std::weak_ptr<realityio::Builder>&&>,std::tuple<>>(v58, &v54);
    if (*(v37 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v63, v37[4], v37[5]);
    }

    else
    {
      v63 = *(v37 + 4);
    }

    if (v54.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_weak(v54.__r_.__value_.__l.__size_);
    }

    v39 = *__str;
    v38 = v66;
    while (v39 != v38)
    {
      if (*v39 != v53)
      {
        v40 = *(v39 + 8);
        v49 = *v39;
        v50 = v40;
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v64 = &v49;
        v41 = std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>>>::__emplace_unique_key_args<std::weak_ptr<realityio::Builder>,std::piecewise_construct_t const&,std::tuple<std::weak_ptr<realityio::Builder>&&>,std::tuple<>>(v58, &v49);
        if (*(v41 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v54, v41[4], v41[5]);
        }

        else
        {
          v54 = *(v41 + 4);
        }

        if (v50)
        {
          std::__shared_weak_count::__release_weak(v50);
        }

        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = &v63;
        }

        else
        {
          v42 = v63.__r_.__value_.__r.__words[0];
        }

        if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = &v54;
        }

        else
        {
          v43 = v54.__r_.__value_.__r.__words[0];
        }

        fprintf(v5, "%s -> %s \n", v42, v43);
        if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v54.__r_.__value_.__l.__data_);
        }
      }

      v39 += 16;
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    v63.__r_.__value_.__r.__words[0] = v51;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v63);
    v51[0] = __str;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](v51);
    if (*(&v53 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v53 + 1));
    }

    v6 += 2;
  }

  fwrite("}\n", 2uLL, 1uLL, v5);
  fclose(v5);
  std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>>>::~__hash_table(__p);
  std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>>>::~__hash_table(v58);
LABEL_104:
  *__str = &v60;
  std::vector<std::weak_ptr<realityio::Builder>>::__destroy_vector::operator()[abi:ne200100](__str);
  v44 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

void sub_2476C5354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, char *a56)
{
  a56 = &a46;
  std::vector<std::weak_ptr<realityio::Builder>>::__destroy_vector::operator()[abi:ne200100](&a56);
  _Unwind_Resume(a1);
}

uint64_t realityio::ImportSessionImpl::getPrototypeEntityRoot(realityio::ImportSessionImpl *this)
{
  v7[4] = *MEMORY[0x277D85DE8];
  if (!*(this + 32))
  {
    v2 = REEntityCreate();
    RENetworkComponentGetComponentType();
    v7[0] = &unk_28594FEA8;
    v7[3] = v7;
    v3 = REEntityGetOrAddComponentByClass();
    std::function<void ()(REComponent *)>::operator()(v7, v3);
    RENetworkMarkComponentDirty();
    std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v7);
    v7[0] = v2;
    if (v2)
    {
      RERetain();
    }

    v4 = *(this + 32);
    if (v4 != v2)
    {
      *(this + 32) = v2;
      v7[0] = v4;
    }

    realityio::WrappedRERef<REEntity *>::~WrappedRERef(v7);
    RERelease();
  }

  v5 = *MEMORY[0x277D85DE8];
  return this + 256;
}

uint64_t realityio::ImportSessionImpl::generateOverridePrimPathToEntityForActiveSceneAssets(void *a1, uint64_t a2)
{
  v21 = a2;
  v3 = a1 + 48;
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>>>::destroy(a1[48]);
  a1[48] = 0;
  a1[49] = 0;
  a1[47] = v3;
  result = REComponentClassFromName();
  if (result)
  {
    v20 = 0u;
    memset(v19, 0, sizeof(v19));
    std::deque<REEntity *>::push_back(v19, &v21);
    for (i = *(&v20 + 1); *(&v20 + 1); i = *(&v20 + 1))
    {
      v6 = *(*(*(&v19[0] + 1) + ((v20 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v20 & 0x1FF));
      *&v20 = v20 + 1;
      *(&v20 + 1) = i - 1;
      if (v20 >= 0x400)
      {
        operator delete(**(&v19[0] + 1));
        *(&v19[0] + 1) += 8;
        *&v20 = v20 - 512;
      }

      ChildCount = REEntityGetChildCount();
      if (ChildCount)
      {
        for (j = 0; j != ChildCount; ++j)
        {
          __p[0] = REEntityGetChild();
          std::deque<REEntity *>::push_back(v19, __p);
        }
      }

      if (REEntityGetCustomComponent())
      {
        Object = RECustomComponentGetObject();
        std::string::basic_string[abi:ne200100]<0>(__p, *Object);
        MEMORY[0x24C1A5D70](v16, __p);
        v13 = v6;
        if (v6)
        {
          RERetain();
        }

        LODWORD(v17) = v16[0];
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
        HIDWORD(v17) = v16[1];
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
        v18 = v13;
        v13 = 0;
        v10 = *v3;
        if (!*v3)
        {
          goto LABEL_20;
        }

        v11 = v3;
        while (1)
        {
          while (1)
          {
            v12 = v10;
            if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v17, v10 + 4))
            {
              break;
            }

            v10 = *v12;
            v11 = v12;
            if (!*v12)
            {
              goto LABEL_20;
            }
          }

          if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v12 + 4, &v17))
          {
            break;
          }

          v11 = v12 + 1;
          v10 = v12[1];
          if (!v10)
          {
            goto LABEL_20;
          }
        }

        if (!*v11)
        {
LABEL_20:
          operator new();
        }

        realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v18);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
        realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v13);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v16);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    return std::deque<unsigned long>::~deque[abi:ne200100](v19);
  }

  return result;
}

void realityio::ImportSession::~ImportSession(realityio::ImportSession *this)
{
  realityio::ImportSession::~ImportSession(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_28595CA68;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 248, *(this + 32));
  std::__tree<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>>>::destroy(*(this + 29));
  std::mutex::~mutex((this + 160));
  v3 = *(this + 19);
  *(this + 19) = 0;
  if (v3)
  {
    realityio::ImportSession::SessionMeshAssetCacheDeleter::operator()(v2, v3);
  }

  std::mutex::~mutex((this + 88));
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(this + 64, *(this + 9));
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

atomic_uint **realityio::ImportSession::description@<X0>(realityio::ImportSession *this@<X0>, CFStringRef *a2@<X8>)
{
  v3 = *(this + 2);
  *a2 = 0;
  v8 = *(v3[1] + 16);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v8);
  v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v8);
  v5 = v3[2];
  v6 = (*(*v3 + 72))(v3);
  *a2 = CFStringCreateWithFormat(0, 0, @"<ImportSession: %p { stage: %p, engine: %p, version: %d }>", v3, v4, v5, v6);
  return pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v8);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::SessionMeshAssetCache::CryptographicHash>,0>(a2 + 28);

    operator delete(a2);
  }
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::SessionMeshAssetCache::CryptographicHash>,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::SessionMeshAssetCache::CryptographicHash>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void std::__tree<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<realityio::SessionMeshAssetCache::CryptographicHash,std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::less<realityio::SessionMeshAssetCache::CryptographicHash>,true>,std::allocator<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<realityio::SessionMeshAssetCache::CryptographicHash,std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::less<realityio::SessionMeshAssetCache::CryptographicHash>,true>,std::allocator<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<realityio::SessionMeshAssetCache::CryptographicHash,std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::less<realityio::SessionMeshAssetCache::CryptographicHash>,true>,std::allocator<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>>>::destroy(a1, a2[1]);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(a2 + 8);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<realityio::SessionMeshAssetCache::CryptographicHash,std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::less<realityio::SessionMeshAssetCache::CryptographicHash>,true>,std::allocator<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>>>::find<realityio::SessionMeshAssetCache::CryptographicHash>(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = v2;
  do
  {
    v7 = *(v3 + 32);
    v8 = *a2;
    if (v7 == v5)
    {
      v9 = 0;
      while (v9 != 31)
      {
        v7 = *(v3 + v9 + 33);
        v8 = a2[++v9];
        if (v7 != v8)
        {
          goto LABEL_7;
        }
      }

      v6 = v3;
    }

    else
    {
LABEL_7:
      v10 = v7 > v8;
      v11 = v7 > v8;
      if (!v10)
      {
        v6 = v3;
      }

      v3 += v11;
    }

    v3 = *v3;
  }

  while (v3);
  if (v6 == v2)
  {
    return v2;
  }

  v12 = *(v6 + 32);
  if (v5 != v12)
  {
LABEL_17:
    if (v5 <= v12)
    {
      return v6;
    }

    return v2;
  }

  v13 = a2 + 1;
  v14 = 33;
  while (v14 != 64)
  {
    v15 = *v13++;
    v5 = v15;
    v12 = *(v6 + v14++);
    if (v15 != v12)
    {
      goto LABEL_17;
    }
  }

  return v6;
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>>>::__erase_unique<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t **a1, void *a2)
{
  v3 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__remove_node_pointer(a1, v3);
  std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::SessionMeshAssetCache::CryptographicHash>,0>(v4 + 28);
  operator delete(v4);
  return 1;
}

uint64_t std::__tree<realityio::SessionMeshAssetCache::CryptographicHash>::__emplace_unique_key_args<realityio::SessionMeshAssetCache::CryptographicHash,realityio::SessionMeshAssetCache::CryptographicHash const&>(uint64_t result, unsigned __int8 *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_16:
    operator new();
  }

  v5 = *a2;
  v3 = a2 + 1;
  v4 = v5;
  while (1)
  {
    while (1)
    {
      v6 = v2;
      v7 = *(v2 + 25);
      v8 = v4;
      v9 = v7;
      if (v4 == v7)
      {
        break;
      }

LABEL_7:
      if (v8 <= v9)
      {
        goto LABEL_10;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    v10 = 0;
    while (v10 != 31)
    {
      v8 = v3[v10];
      v9 = *(v6 + v10++ + 26);
      if (v8 != v9)
      {
        goto LABEL_7;
      }
    }

LABEL_10:
    v11 = v4;
    if (v4 == v7)
    {
      break;
    }

LABEL_14:
    if (v7 <= v11)
    {
      return result;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_16;
    }
  }

  v12 = 0;
  while (v12 != 31)
  {
    v7 = *(v6 + v12 + 26);
    v11 = v3[v12++];
    if (v7 != v11)
    {
      goto LABEL_14;
    }
  }

  return result;
}

std::string *std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfAssetPath&,pxrInternal__aapl__pxrReserved__::SdfPath&,0>(std::string *this, __int128 *a2, _DWORD *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v7 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v7;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&this[2], a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(this[2].__r_.__value_.__r.__words + 1, a3 + 1);
  return this;
}

void sub_2476C5E3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>::~pair(uint64_t a1)
{
  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void std::__tree<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<realityio::TextureImportOperationSettings>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<realityio::TextureImportOperationSettings>>,0>(uint64_t a1)
{
  std::__tree<realityio::TextureImportOperationSettings>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *std::unique_ptr<realityio::BuilderDependencyDAG>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    realityio::WrappedRERef<REEngine *>::~WrappedRERef((v2 + 120));
    std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>>>::~__hash_table(v2 + 80);
    std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::~__hash_table(v2 + 40);
    std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::~__hash_table(v2);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>>>::destroy(a1[1]);
    realityio::WrappedRERef<REEntity *>::~WrappedRERef(a1 + 5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 4));

    operator delete(a1);
  }
}

__n128 std::__function::__func<std::__bind<void (realityio::UsdStageStateTracker::*)(realityio::UsdStageDelta const&),realityio::UsdStageStateTracker*&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (realityio::UsdStageStateTracker::*)(realityio::UsdStageDelta const&),realityio::UsdStageStateTracker*&,std::placeholders::__ph<1> const&>>,void ()(realityio::UsdStageDelta const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595CBB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (realityio::UsdStageStateTracker::*)(realityio::UsdStageDelta const&),realityio::UsdStageStateTracker*&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (realityio::UsdStageStateTracker::*)(realityio::UsdStageDelta const&),realityio::UsdStageStateTracker*&,std::placeholders::__ph<1> const&>>,void ()(realityio::UsdStageDelta const&)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t std::__function::__func<std::__bind<void (realityio::UsdStageStateTracker::*)(realityio::UsdStageDelta const&),realityio::UsdStageStateTracker*&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (realityio::UsdStageStateTracker::*)(realityio::UsdStageDelta const&),realityio::UsdStageStateTracker*&,std::placeholders::__ph<1> const&>>,void ()(realityio::UsdStageDelta const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::__map_value_compare<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::less<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>>,true>,std::allocator<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>>>::__erase_unique<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>>(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::__map_value_compare<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::less<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>>,true>,std::allocator<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>>>::find<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  std::__tree<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::__map_value_compare<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::less<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>>,true>,std::allocator<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>>>::erase(a1, v3);
  return 1;
}

void *std::__tree<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::__map_value_compare<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::less<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>>,true>,std::allocator<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>>>::find<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>>(uint64_t a1, uint64_t a2)
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
    if (pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<())
    {
      ++v3;
    }

    else if (pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<())
    {
      v5 = v3;
    }

    else
    {
      v6 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v3 + 10, (a2 + 48));
      if (v6)
      {
        v7 = 8;
      }

      else
      {
        v7 = 0;
      }

      if ((v6 & 1) == 0)
      {
        v5 = v3;
      }

      v3 = (v3 + v7);
    }

    v3 = *v3;
  }

  while (v3);
  if (v5 == v2 || (pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<() & 1) != 0 || (pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<() & 1) == 0 && pxrInternal__aapl__pxrReserved__::SdfPath::operator<((a2 + 48), v5 + 10))
  {
    return v2;
  }

  return v5;
}

uint64_t *std::__tree<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::__map_value_compare<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::less<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>>,true>,std::allocator<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__remove_node_pointer(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a2 + 80);
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t std::__tree<realityio::TextureImportOperationSettings>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<realityio::TextureImportOperationSettings>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<realityio::TextureImportOperationSettings>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<realityio::TextureImportOperationSettings>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_2476C66D8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::__erase_unique<std::string>(uint64_t **a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::erase(a1, v3);
  return 1;
}

uint64_t *std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__remove_node_pointer(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

void std::__shared_ptr_emplace<realityio::LiveSceneManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28595CC70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::weak_ptr<realityio::Builder> const,std::string>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::weak_ptr<realityio::Builder> const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<realityio::Builder>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<realityio::Builder>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::weak_ptr<realityio::Builder> const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<realityio::Builder>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>>>::__emplace_unique_key_args<std::weak_ptr<realityio::Builder>,std::piecewise_construct_t const&,std::tuple<std::weak_ptr<realityio::Builder>&&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v4 = realityio::WeakBuilderPtrHash::operator()(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!realityio::WeakBuilderPtrEqual::operator()(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_2476C6C84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

realityio::tokens::AnimationBuilderTokens_StaticTokenType *realityio::tokens::AnimationBuilderTokens_StaticTokenType::AnimationBuilderTokens_StaticTokenType(atomic_uint **this)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "primvars:realitykit:stageTimeLine", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "primvars:realitykit:animationLibrary:timelines", 0);
  MEMORY[0x24C1A5DF0](this + 2, "primvars:realitykit:animationLibrary:times", 0);
  MEMORY[0x24C1A5DF0](this + 3, "autoPlay", 0);
  v3 = this + 4;
  v4 = *this;
  v16 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v5;
    }
  }

  v6 = this[1];
  v17 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v7;
    }
  }

  v8 = this[2];
  v18 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v9;
    }
  }

  v10 = this[3];
  v19 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v11;
    }
  }

  *v3 = 0;
  this[5] = 0;
  this[6] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v16, &v20, 4uLL);
  for (i = 3; i != -1; --i)
  {
    v13 = (&v16)[i];
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2476C6ED4(_Unwind_Exception *a1)
{
  v3 = 24;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[3];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[2];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t realityio::PhysicsMaterialAssetBuilder::kOutputName(realityio::PhysicsMaterialAssetBuilder *this)
{
  {
    operator new();
  }

  return realityio::PhysicsMaterialAssetBuilder::kOutputName(void)::kOutputName;
}

void sub_2476C6FEC(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::PhysicsMaterialAssetBuilder::PhysicsMaterialAssetBuilder(realityio::PhysicsMaterialAssetBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v6, "PhysicsMaterialAssetBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kPhysicsMaterialAssetBuilderIdentifier);
  realityio::generatePhysicsMaterialsDirtyStageSubscription(&v4);
  v8[0] = &unk_28595CD48;
  v8[3] = v8;
  v7[0] = &unk_28595CDC8;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_2476C718C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v24 + 35);
  realityio::DynamicBuilder::~DynamicBuilder(v24);
  _Unwind_Resume(a1);
}

void realityio::PhysicsMaterialAssetBuilder::run(realityio::PhysicsMaterialAssetBuilder *this, realityio::Inputs *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = (a2 + 32);
  v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v31, v5, v4);
  v29 = 0;
  v30 = 0;
  v28 = 0;
  MEMORY[0x24C1A5DE0](buf, "physics:restitution");
  v7 = MEMORY[0x277D86598];
  v8 = atomic_load(MEMORY[0x277D86598]);
  if (v8)
  {
    UsdPhysicsAttributeDoubleValue = realityio::getUsdPhysicsAttributeDoubleValue(&v31, buf, (v8 + 48), &v30, v6);
    if ((buf[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((UsdPhysicsAttributeDoubleValue & 1) == 0)
    {
      v10 = *(realityio::logObjects(UsdPhysicsAttributeDoubleValue) + 24);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v31, &v27);
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v27);
        *buf = 136315138;
        *&buf[4] = Text;
        _os_log_impl(&dword_247485000, v10, OS_LOG_TYPE_DEFAULT, "Unable to get restitution attribute value for %s", buf, 0xCu);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v27);
      }
    }

    MEMORY[0x24C1A5DE0](buf, "physics:staticFriction");
    v13 = atomic_load(v7);
    if (v13)
    {
      v14 = realityio::getUsdPhysicsAttributeDoubleValue(&v31, buf, (v13 + 40), &v29, v12);
      if ((buf[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v14 & 1) == 0)
      {
        v15 = *(realityio::logObjects(v14) + 24);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v31, &v27);
          v16 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v27);
          *buf = 136315138;
          *&buf[4] = v16;
          _os_log_impl(&dword_247485000, v15, OS_LOG_TYPE_DEFAULT, "Unable to get static friction attribute value for %s", buf, 0xCu);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v27);
        }
      }

      MEMORY[0x24C1A5DE0](buf, "physics:dynamicFriction");
      v18 = atomic_load(v7);
      if (v18)
      {
        v19 = realityio::getUsdPhysicsAttributeDoubleValue(&v31, buf, (v18 + 32), &v28, v17);
        if ((buf[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v19 & 1) == 0)
        {
          v20 = *(realityio::logObjects(v19) + 24);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v31, &v27);
            v21 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v27);
            *buf = 136315138;
            *&buf[4] = v21;
            _os_log_impl(&dword_247485000, v20, OS_LOG_TYPE_DEFAULT, "Unable to get dynamic friction attribute value for %s", buf, 0xCu);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v27);
          }
        }

        v22 = *(realityio::logObjects(v19) + 24);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_247485000, v22, OS_LOG_TYPE_INFO, "Creating and Saving physics material reference", buf, 2u);
        }

        *buf = 0;
        v23 = *(this + 35);
        if (v23)
        {
          *(this + 35) = 0;
          *buf = v23;
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(buf);
        v24 = *(*(*(a2 + 5) + 16) + 16);
        ServiceLocator = REEngineGetServiceLocator();
        v27 = MEMORY[0x24C1A4230](ServiceLocator);
        v26 = *(a2 + 6);
        operator new();
      }

      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType>>::_TryToCreateData();
}

void sub_2476C76B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void realityio::PhysicsMaterialAssetBuilder::clear(realityio::PhysicsMaterialAssetBuilder *this, realityio::Inputs *a2)
{
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = realityio::PhysicsMaterialAssetBuilder::kOutputName(this);
  realityio::Outputs::getRawValue<REAsset *>(v5, v6, &v14);
  v8 = v14;
  if ((v14 & 1) == 0)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v5 = v13.__r_.__value_.__r.__words[0];
      v2 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
      if ((v14 & 1) == 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v13 = __p;
      v5 = __p.__r_.__value_.__r.__words[0];
      v2 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v8)
  {
    v10 = *(this + 2);
    v9 = *(this + 3);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = realityio::PhysicsMaterialAssetBuilder::kOutputName(v7);
    std::mutex::lock((v10 + 64));
    if (v10 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v10 + 40, v11))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v10 + 40), v11);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v10, v11);
    std::mutex::unlock((v10 + 64));
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v14 = 0;
    v12 = *(this + 35);
    if (v12)
    {
      *(this + 35) = 0;
      v14 = v12;
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v14);
  }

  else if (v2 < 0)
  {
    operator delete(v5);
  }
}

void sub_2476C7938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a15 & 1) == 0 && a23 < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void realityio::PhysicsMaterialAssetBuilder::~PhysicsMaterialAssetBuilder(void **this)
{
  realityio::PhysicsMaterialAssetBuilder::~PhysicsMaterialAssetBuilder(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_28595CCD0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((this + 42));
  if (*(this + 335) < 0)
  {
    operator delete(this[39]);
  }

  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 35);
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100]((this + 31));
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100]((this + 27));
  v2 = this[26];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[24];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = this[23];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

uint64_t std::__function::__func<realityio::PhysicsMaterialAssetBuilder::PhysicsMaterialAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::PhysicsMaterialAssetBuilder::PhysicsMaterialAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2476C7DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t std::__function::__func<realityio::PhysicsMaterialAssetBuilder::PhysicsMaterialAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::PhysicsMaterialAssetBuilder::PhysicsMaterialAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::PhysicsMaterialAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsMaterialAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595CE48;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<realityio::PhysicsMaterialAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsMaterialAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = **(a1 + 8);
  v3 = **(a1 + 16);
  v4 = **(a1 + 24);
  v5 = **(a1 + 32);
  v6 = REAssetManagerPhysicsMaterialAssetCreate2();
  v9 = v6;
  v7 = *(v1 + 280);
  if (v7 != v6)
  {
    *(v1 + 280) = v6;
    v9 = v7;
  }

  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v9);
}

uint64_t std::__function::__func<realityio::PhysicsMaterialAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsMaterialAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

realityio::tokens::ArbitraryComponentBuilderTokens_StaticTokenType *realityio::tokens::ArbitraryComponentBuilderTokens_StaticTokenType::ArbitraryComponentBuilderTokens_StaticTokenType(atomic_uint **this)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "__realitykit_offset", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "__realitykit_type", 0);
  MEMORY[0x24C1A5DF0](this + 2, "info:id", 0);
  v3 = this + 3;
  v4 = *this;
  v14 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v5;
    }
  }

  v6 = this[1];
  v15 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v7;
    }
  }

  v8 = this[2];
  v16 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v9;
    }
  }

  *v3 = 0;
  this[4] = 0;
  this[5] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v14, &v17, 3uLL);
  for (i = 2; i != -1; --i)
  {
    v11 = (&v14)[i];
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return this;
}