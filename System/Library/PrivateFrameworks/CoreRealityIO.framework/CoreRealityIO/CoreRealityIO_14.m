void sub_247577198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if ((a11 & 1) == 0 && a19 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a22);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a27);
  _Unwind_Resume(a1);
}

void realityio::addSkeletonJointBindingsToModelDescriptor(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI *a2, const pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton *a3, const pxrInternal__aapl__pxrReserved__::UsdPrim *a4)
{
  v89 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 1);
  if (v4 && (*(v4 + 57) & 8) == 0 && (*(*a3 + 32))(a3) && realityio::isValidSkeleton(a3, v9))
  {
    VertexCount = REGeomModelDescriptorGetVertexCount();
    MEMORY[0x24C1A4F20](v83);
    pxrInternal__aapl__pxrReserved__::UsdSkelRoot::Find();
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdSkelCache::GetSkelQuery(&v75, v83, a3);
    if (v75)
    {
      MEMORY[0x24C1A5790](v72);
      if (v82 && (*(v82 + 57) & 8) == 0 && (v11 = (*(v81 + 32))(&v81), v11))
      {
        UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(v11);
        v13 = UsdPrimDefaultPredicate[1].i64[0];
        v14.i64[0] = -8193;
        v14.i64[0] = vandq_s8(*UsdPrimDefaultPredicate, v14).u64[0];
        v14.i64[1] = vorrq_s8(*UsdPrimDefaultPredicate, vdupq_n_s64(0x2000uLL)).i64[1];
        v68 = v14;
        v69 = v13;
        pxrInternal__aapl__pxrReserved__::UsdSkelCache::Populate();
        pxrInternal__aapl__pxrReserved__::UsdSkelCache::GetSkinningQuery(v68.i64, v83, a4);
        pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::operator=(v72, &v68);
        pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::~UsdSkelSkinningQuery(&v68);
      }

      else
      {
        v62 = v78;
        v63 = v79;
        *&v64 = v80;
        if (v80)
        {
          v15 = (v80 - 16);
          if (*(&v63 + 1))
          {
            v15 = *(&v63 + 1);
          }

          atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetJointIndicesAttr(&v50, a2);
        pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetJointWeightsAttr(&v46, a2);
        pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetJointsAttr(&v43, a2);
        *&v56 = 0;
        v54 = 0u;
        v55 = 0u;
        LODWORD(v40) = 3;
        *(&v40 + 1) = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        *(&v41 + 1) = 0;
        *v86 = 3;
        *&v86[8] = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        *(&v87 + 1) = 0;
        LODWORD(v66.__begin_) = 4;
        v66.__end_ = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        v67 = 0;
        pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::UsdSkelSkinningQuery();
        pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::operator=(v72, &v68);
        pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::~UsdSkelSkinningQuery(&v68);
        if ((v67 & 7) != 0)
        {
          atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v66.__end_cap_);
        if (v66.__end_)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v66.__end_);
        }

        if ((BYTE8(v87) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v87 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v87);
        if (*&v86[8])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&v86[8]);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v41);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v54);
        if ((BYTE8(v44) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v44 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v44);
        if (*(&v43 + 1))
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v43 + 1));
        }

        if ((v48 & 7) != 0)
        {
          atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v47);
        if (*(&v46 + 1))
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v46 + 1));
        }

        if ((v53 & 7) != 0)
        {
          atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v52);
        if (v51)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v51);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v62);
      }

      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v72))
      {
        v16 = *(MEMORY[0x277D860B8] + 16);
        v62 = *MEMORY[0x277D860B8];
        v63 = v16;
        v17 = *(MEMORY[0x277D860B8] + 48);
        v64 = *(MEMORY[0x277D860B8] + 32);
        v65 = v17;
        memset(&v66, 0, sizeof(v66));
        memset(&v61, 0, sizeof(v61));
        __dst = 0;
        v59 = 0;
        v60 = 0;
        pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::GetGeomBindTransform();
        MEMORY[0x24C1A4BE0](&v54, &v68);
        v62 = v54;
        v63 = v55;
        v64 = v56;
        v65 = v57;
        v18 = v73;
        std::vector<int>::resize(&v66, VertexCount);
        if (v66.__begin_ != v66.__end_)
        {
          v19 = 0;
          v20 = (v66.__end_ - v66.__begin_ - 4) >> 2;
          v21 = vdupq_n_s32(v18);
          v22 = vdupq_n_s32(4 * v18);
          v23 = vdupq_n_s64(v20);
          v24 = vmulq_s32(v21, xmmword_247757A20);
          v25 = v66.__begin_ + 2;
          do
          {
            v26 = vdupq_n_s64(v19);
            v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_247758360)));
            v28 = vaddq_s32(v24, v21);
            if (vuzp1_s16(v27, *v21.i8).u8[0])
            {
              *(v25 - 2) = v28.i32[0];
            }

            if (vuzp1_s16(v27, *&v21).i8[2])
            {
              *(v25 - 1) = v28.u32[1];
            }

            if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_247758350)))).i32[1])
            {
              *v25 = v28.i64[1];
            }

            v19 += 4;
            v24 = vaddq_s32(v24, v22);
            v25 += 4;
          }

          while (((v20 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v19);
        }

        v29 = v74;
        pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::GetJointOrder(&v50, &v75);
        v30 = v50;
        v68.i32[0] = 3;
        v68.i64[1] = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        v70 = 0;
        v71 = 0;
        LODWORD(v54) = 3;
        *(&v54 + 1) = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        *(&v55 + 1) = 0;
        *&v56 = 0;
        if (pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::HasJointInfluences(v72))
        {
          pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::operator=();
          pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::operator=();
          ElementSize = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetElementSize(&v68);
        }

        else
        {
          ElementSize = 0;
        }

        if (v30 && (!pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar() || ElementSize == pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetElementSize(&v54)))
        {
          pxrInternal__aapl__pxrReserved__::VtArray<int>::VtArray(&v46, v30);
          for (i = 0; i != v30; ++i)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v46);
            *(v49 + 4 * i) = i;
          }

          v45 = 0;
          v43 = 0u;
          v44 = 0u;
          if (v29)
          {
            pxrInternal__aapl__pxrReserved__::UsdSkelAnimMapper::Remap<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v29, &v46, &v43);
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::VtArray<int>::operator=(&v43, &v46);
          }

          v42 = 0;
          v40 = 0u;
          v41 = 0u;
          if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar())
          {
            pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
          }

          v88 = 0;
          *v86 = 0u;
          v87 = 0u;
          if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar())
          {
            pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
          }

          if (ElementSize >= 1 && v59 != __dst && v61.__end_ != v61.__begin_ && (v59 - __dst) >> 2 >= ElementSize && v61.__end_ - v61.__begin_ >= ElementSize)
          {
            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(a3, buf);
            String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(buf);
            if (*(String + 23) < 0)
            {
              v34 = *String;
            }

            REGeomModelDescriptorAddSkinningData();
            pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(buf);
            v35 = MEMORY[0x24C1A3810](a1, "skinnedAnimationGeometryBindTransform", 4, 4, &v62);
            if ((v35 & 1) == 0)
            {
              v36 = *(realityio::logObjects(v35) + 24);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a4, &v39);
                Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v39);
                buf[0] = 136315138;
                *&buf[1] = Text;
                _os_log_impl(&dword_247485000, v36, OS_LOG_TYPE_DEFAULT, "Did not add bind transforms for (Prim %s)", buf, 0xCu);
                pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v39);
              }
            }
          }

          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v86);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v40);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v43);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v46);
        }

        if ((v56 & 7) != 0)
        {
          atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((BYTE8(v55) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v55 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v55);
        if (*(&v54 + 1))
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v54 + 1));
        }

        if ((v71 & 7) != 0)
        {
          atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v70 & 7) != 0)
        {
          atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v69);
        if (v68.i64[1])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v68.i64[1]);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v50);
        if (__dst)
        {
          v59 = __dst;
          operator delete(__dst);
        }

        if (v61.__begin_)
        {
          v61.__end_ = v61.__begin_;
          operator delete(v61.__begin_);
        }

        if (v66.__begin_)
        {
          v66.__end_ = v66.__begin_;
          operator delete(v66.__begin_);
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::~UsdSkelSkinningQuery(v72);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v77);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::~TfRefPtr(&v76);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_SkelDefinition>::~TfRefPtr(&v75);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v78);
    MEMORY[0x24C1A4DE0](&v81);
    if (v84)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v84);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

void sub_247577F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a12);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v61 - 144);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a13);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a25);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a35);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a61);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&a30);
  if (__p)
  {
    a44 = __p;
    operator delete(__p);
  }

  if (a46)
  {
    a47 = a46;
    operator delete(a46);
  }

  if (a57)
  {
    a58 = a57;
    operator delete(a57);
  }

  pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::~UsdSkelSkinningQuery(&STACK[0x330]);
  pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::~UsdSkelSkeletonQuery(&STACK[0x4C0]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef((v61 - 256));
  MEMORY[0x24C1A4DE0](v61 - 216);
  v63 = *(v61 - 184);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::isValidSkeleton(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::GetJointsAttr(&v12, this);
  v21 = 0;
  {
    pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::GetBindTransformsAttr(&v8, this);
    v19 = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get() && pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v18) == NumElements && (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(v18) & 1) != 0)
    {
      pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::GetRestTransformsAttr(v7, this);
      v17 = 0;
      if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get() && pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v16) == NumElements)
      {
        v4 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(v16);
      }

      else
      {
        v4 = 0;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v16);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(v7);
    }

    else
    {
      v4 = 0;
    }

    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v18);
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
  }

  else
  {
    v4 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v20);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_247578424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v6 - 56));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v6 - 40));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 16, (a2 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 20, (a2 + 20));
  if (a2 == a1)
  {
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v5 = *(a1 + 24);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = 0;
    *(a1 + 32) = *(a2 + 32);
    v6 = *(a1 + 40);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::operator=();
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::operator=();
  *(a1 + 144) = *(a2 + 144);
  v7 = *(a1 + 152);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
  }

  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 160, (a2 + 160));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 164, (a2 + 164));
  if (a2 != a1)
  {
    v8 = *(a1 + 168);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 168) = *(a2 + 168);
    *(a2 + 168) = 0;
  }

  *(a1 + 176) = *(a2 + 176);
  v9 = *(a1 + 184);
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9);
  }

  *(a1 + 184) = *(a2 + 184);
  *(a2 + 184) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 192, (a2 + 192));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 196, (a2 + 196));
  if (a2 != a1)
  {
    v10 = *(a1 + 200);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 200) = *(a2 + 200);
    *(a2 + 200) = 0;
  }

  *(a1 + 208) = *(a2 + 208);
  v11 = *(a1 + 216);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 224, (a2 + 224));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 228, (a2 + 228));
  if (a2 != a1)
  {
    v12 = *(a1 + 232);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 232) = *(a2 + 232);
    *(a2 + 232) = 0;
  }

  *(a1 + 240) = *(a2 + 240);
  v13 = *(a1 + 248);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13);
  }

  *(a1 + 248) = *(a2 + 248);
  *(a2 + 248) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 256, (a2 + 256));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 260, (a2 + 260));
  if (a2 != a1)
  {
    v14 = *(a1 + 264);
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 264) = *(a2 + 264);
    *(a2 + 264) = 0;
  }

  v15 = *(a2 + 272);
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  v16 = *(a1 + 280);
  *(a1 + 272) = v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(a2 + 288);
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  v18 = *(a1 + 296);
  *(a1 + 288) = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  std::__optional_storage_base<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,false>>(a1 + 304, a2 + 304);
  std::__optional_storage_base<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,false>>(a1 + 352, a2 + 352);
  return a1;
}

void std::vector<int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v2);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdSkelAnimMapper::Remap<pxrInternal__aapl__pxrReserved__::VtArray<int>>(unint64_t *a1, uint64_t a2, unint64_t *a3)
{
  if (a3)
  {
    v6 = *a1;
    if (pxrInternal__aapl__pxrReserved__::UsdSkelAnimMapper::IsIdentity(a1) && *a2 == v6)
    {

      pxrInternal__aapl__pxrReserved__::VtArray<int>::operator=(a3, a2);
    }

    else
    {
      v7 = *a3;
      v18 = 0;
      v16[0] = &v18;
      pxrInternal__aapl__pxrReserved__::VtArray<int>::resize<pxrInternal__aapl__pxrReserved__::VtArray<int>::assign(unsigned long,int const&)::_Filler>(a3, v6, v16);
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(a3);
      if (v6 > v7)
      {
        bzero((a3[4] + 4 * v7), 4 * (v6 - v7));
      }

      if ((pxrInternal__aapl__pxrReserved__::UsdSkelAnimMapper::IsNull(a1) & 1) == 0)
      {
        if (pxrInternal__aapl__pxrReserved__::UsdSkelAnimMapper::_IsOrdered(a1))
        {
          if (v6 - a1[1] >= *a2)
          {
            v8 = *a2;
          }

          else
          {
            v8 = v6 - a1[1];
          }

          v9 = *(a2 + 32);
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(a3);
          if (v8)
          {
            memmove((a3[4] + 4 * a1[1]), v9, 4 * v8);
          }
        }

        else
        {
          v10 = *(a2 + 32);
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(a3);
          v11 = *a2;
          if (a1[2] < *a2)
          {
            v11 = a1[2];
          }

          if (v11)
          {
            v12 = a3[4];
            v13 = a1[6];
            do
            {
              v15 = *v13++;
              v14 = v15;
              if ((v15 & 0x80000000) == 0 && *a3 > v14)
              {
                *(v12 + 4 * v14) = *v10;
              }

              ++v10;
              --v11;
            }

            while (v11);
          }
        }
      }
    }
  }

  else
  {
    v16[0] = "usdSkel/animMapper.h";
    v16[1] = "Remap";
    v16[2] = 187;
    v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelAnimMapper::Remap(const Container &, Container *, int, const typename Container::value_type *) const [Container = pxrInternal__aapl__pxrReserved__::VtArray<int>]";
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtArray<int>::operator=(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v8);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v4 = *(this + 1);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
  }
}

{
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v4 = *(this + 1);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
  }
}

void realityio::makeValueLookupByIndex(void *a1, std::vector<unsigned int>::size_type __sz, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, std::vector<unsigned int> *a8)
{
  memset(&v41, 0, sizeof(v41));
  v10 = a8;
  if (!a8)
  {
    v10 = &v41;
    if (a7 > 1)
    {
      if (a7 == 2)
      {
        v29 = a4 - a3;
        v30 = ((a4 - a3) >> 2);
        std::vector<int>::resize(&v41, v30);
        if ((v29 & 0x3FFFFFFFCLL) != 0)
        {
          v31 = 0;
          v32 = vdupq_n_s64(v30 - 1);
          v33 = xmmword_247758350;
          v34 = xmmword_247758360;
          v35 = v41.__begin_ + 2;
          v36 = vdupq_n_s64(4uLL);
          do
          {
            v37 = vmovn_s64(vcgeq_u64(v32, v34));
            if (vuzp1_s16(v37, *v32.i8).u8[0])
            {
              *(v35 - 2) = v31;
            }

            if (vuzp1_s16(v37, *&v32).i8[2])
            {
              *(v35 - 1) = v31 + 1;
            }

            if (vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v33))).i32[1])
            {
              *v35 = v31 + 2;
              v35[1] = v31 + 3;
            }

            v31 += 4;
            v33 = vaddq_s64(v33, v36);
            v34 = vaddq_s64(v34, v36);
            v35 += 4;
          }

          while (((v30 + 3) & 0x1FFFFFFFCLL) != v31);
        }
      }

      else
      {
        if (a7 != 3)
        {
          goto LABEL_38;
        }

        v20 = a6 - a5;
        v21 = ((a6 - a5) >> 2);
        std::vector<int>::resize(&v41, v21);
        if ((v20 & 0x3FFFFFFFCLL) != 0)
        {
          v22 = 0;
          v23 = vdupq_n_s64(v21 - 1);
          v24 = xmmword_247758350;
          v25 = xmmword_247758360;
          v26 = v41.__begin_ + 2;
          v27 = vdupq_n_s64(4uLL);
          do
          {
            v28 = vmovn_s64(vcgeq_u64(v23, v25));
            if (vuzp1_s16(v28, *v23.i8).u8[0])
            {
              *(v26 - 2) = v22;
            }

            if (vuzp1_s16(v28, *&v23).i8[2])
            {
              *(v26 - 1) = v22 + 1;
            }

            if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, *&v24))).i32[1])
            {
              *v26 = v22 + 2;
              v26[1] = v22 + 3;
            }

            v22 += 4;
            v24 = vaddq_s64(v24, v27);
            v25 = vaddq_s64(v25, v27);
            v26 += 4;
          }

          while (((v21 + 3) & 0x1FFFFFFFCLL) != v22);
        }
      }
    }

    else if (a7)
    {
      if (a7 != 1)
      {
        goto LABEL_38;
      }

      v11 = __sz;
      v12 = __sz;
      std::vector<int>::resize(&v41, __sz);
      if (v11)
      {
        v13 = 0;
        v14 = vdupq_n_s64(v12 - 1);
        v15 = xmmword_247758350;
        v16 = xmmword_247758360;
        v17 = v41.__begin_ + 2;
        v18 = vdupq_n_s64(4uLL);
        do
        {
          v19 = vmovn_s64(vcgeq_u64(v14, v16));
          if (vuzp1_s16(v19, *v14.i8).u8[0])
          {
            *(v17 - 2) = v13;
          }

          if (vuzp1_s16(v19, *&v14).i8[2])
          {
            *(v17 - 1) = v13 + 1;
          }

          if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v15))).i32[1])
          {
            *v17 = v13 + 2;
            v17[1] = v13 + 3;
          }

          v13 += 4;
          v15 = vaddq_s64(v15, v18);
          v16 = vaddq_s64(v16, v18);
          v17 += 4;
        }

        while (((v12 + 3) & 0x1FFFFFFFCLL) != v13);
      }
    }

    else
    {
      __x = 0;
      std::vector<unsigned int>::resize(&v41, 1uLL, &__x);
    }

    v10 = &v41;
  }

LABEL_38:
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  begin = v10->__begin_;
  v39 = &v41;
  if (a8)
  {
    v39 = a8;
  }

  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, begin, v39->__end_, (v39->__end_ - begin) >> 2);
  if (v41.__begin_)
  {
    v41.__end_ = v41.__begin_;
    operator delete(v41.__begin_);
  }
}

void sub_247578D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz, std::vector<unsigned int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v3, __x);
  }
}

void realityio::makeFaceVertexIndexList(char **a1, std::vector<unsigned int>::size_type a2, uint64_t *a3, uint64_t *a4, int a5, char **a6)
{
  v6 = a6;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v12 = *a3;
  v11 = a3[1];
  if (!a6)
  {
    realityio::makeValueLookupByIndex(&__p, a2, *a3, v11, *a4, a4[1], a5, 0);
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v34, __p, v33, (v33 - __p) >> 2);
    if (__p)
    {
      v33 = __p;
      operator delete(__p);
    }

    v6 = &v34;
  }

  v14 = *a4;
  v13 = a4[1];
  v15 = (v13 - *a4) >> 2;
  LODWORD(__p) = 0;
  std::vector<unsigned int>::vector[abi:ne200100](a1, v15);
  if (a5 == 1)
  {
    if (v13 != v14)
    {
      v28 = 0;
      v29 = *a4;
      v30 = *v6;
      v31 = *a1;
      do
      {
        *&v31[4 * v28] = *&v30[4 * *(v29 + 4 * v28)];
        ++v28;
      }

      while (v15 > v28);
    }
  }

  else if (a5 == 3)
  {
    if (v6 != a1)
    {
      std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, *v6, v6[1], (v6[1] - *v6) >> 2);
    }
  }

  else if (a5 == 2 && ((v11 - v12) & 0x3FFFFFFFCLL) != 0)
  {
    v16 = 0;
    v17 = 0;
    v18 = *a3;
    v19 = (*a1 + 8);
    do
    {
      v20 = *(v18 + 4 * v16);
      if (v17 < v20)
      {
        v21 = 0;
        v22 = *&(*v6)[4 * v16];
        v23 = (v20 - v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v24 = vdupq_n_s64(v20 - v17 - 1);
        v25 = (v19 + 4 * v17);
        do
        {
          v26 = vdupq_n_s64(v21);
          v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_247758360)));
          if (vuzp1_s16(v27, 2).u8[0])
          {
            *(v25 - 2) = v22;
          }

          if (vuzp1_s16(v27, 2).i8[2])
          {
            *(v25 - 1) = v22;
          }

          if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_247758350)))).i32[1])
          {
            *v25 = v22;
            v25[1] = v22;
          }

          v21 += 4;
          v25 += 4;
        }

        while (v23 != v21);
        v17 = v20;
      }

      ++v16;
    }

    while (v16 != ((v11 - v12) >> 2));
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_247578FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL realityio::isCatmullClarkSurface(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdGeomMesh *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetSubdivisionSchemeAttr(&v9, this);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(&v9, v5);
  if (v5[0] == 1)
  {
    v2 = atomic_load(MEMORY[0x277D86550]);
    if (!v2)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
    }

    v3 = (*(v2 + 96) ^ v6) < 8;
    if (v5[0])
    {
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
  }

  if (v8 < 0)
  {
    operator delete(__p);
  }

LABEL_9:
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

  return v3;
}

void sub_247579120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a9 == 1)
  {
    if ((a10 & 7) != 0)
    {
      atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (a17 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a18);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
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
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(a1, __p, a2);
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

void sub_247579308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
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

uint64_t realityio::getBoundSubsetsAndCoverage(uint64_t a1, void **a2, _BYTE *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v25, (a1 + 8), (a1 + 16));
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(v5);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v27);
  if (v26)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v26);
  }

  if (IsA)
  {
    v7 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v41[3] = 0;
    v41[0] = MEMORY[0x277D867B8] + 16;
    pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetMaterialBindSubsets(&v39, v7);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v25 = (MEMORY[0x277D866A8] + 16);
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexCountsAttr(&v35, &v25);
    MEMORY[0x24C1A4DB0](&v25);
    if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v35) || v39 == *(&v39 + 1))
    {
      v9 = 0;
    }

    else
    {
      v43 = 0;
      pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
      NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v42);
      *a3 = 0;
      memset(__p, 0, sizeof(__p));
      if (NumElements)
      {
        std::vector<BOOL>::__vallocate[abi:ne200100](__p, NumElements);
      }

      v24 = a3;
      v11 = *(&v39 + 1);
      for (i = v39; i != v11; i = (i + 24))
      {
        pxrInternal__aapl__pxrReserved__::UsdGeomSubset::GetIndicesAttr(&v30, i);
        realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v30, &v25);
        if (v25)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v26);
          v12 = v29;
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v26);
          if (v12 == &v29[v26])
          {
            v13 = 1;
            goto LABEL_18;
          }

          *v12;
        }

        v13 = 0;
LABEL_18:
        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(&v25);
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

        if ((v13 & 1) == 0)
        {
          v9 = 0;
          goto LABEL_33;
        }
      }

      *v24 = 1;
      v14 = *a2;
      if (*a2)
      {
        v15 = a2[1];
        v16 = *a2;
        if (v15 != v14)
        {
          v17 = v15 - 24;
          v18 = v15 - 24;
          v19 = v15 - 24;
          do
          {
            v20 = *v19;
            v19 -= 24;
            (*v20)(v18);
            v17 -= 24;
            v21 = v18 == v14;
            v18 = v19;
          }

          while (!v21);
          v16 = *a2;
        }

        a2[1] = v14;
        operator delete(v16);
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0;
      }

      *a2 = v39;
      a2[2] = v40;
      v40 = 0;
      v39 = 0uLL;
      v9 = 1;
LABEL_33:
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v42);
    }

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

    v25 = &v39;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&v25);
    MEMORY[0x24C1A5AA0](v41);
  }

  else
  {
    v9 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_2475797A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v27 - 112));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a23);
  a23 = &a27;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&a23);
  MEMORY[0x24C1A5AA0](v27 - 144);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
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
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(a1, __p, a2);
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

void sub_2475799FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
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

uint64_t realityio::addOpenSubdivDataToModelDescriptor(uint64_t a1, realityio *this)
{
  result = realityio::isCatmullClarkSurface(this, this);
  if (result)
  {
    VertexCount = REGeomModelDescriptorGetVertexCount();
    REGeomModelDescriptorSetSurfaceType();
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCreaseIndicesAttr(&v56, this);
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCreaseLengthsAttr(&v52, this);
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCreaseSharpnessesAttr(&v48, this);
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v56, v45);
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v52, v42);
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(&v48, &v37);
    if (v45[0] == 1 && v42[0] == 1 && v37 == 1 && v38 && v38 == v43[0])
    {
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(v43);
      v6 = v44;
      v7 = v43[0];
      if (v43[0])
      {
        v8 = 0;
        LODWORD(v9) = 0;
        v10 = 0;
        v11 = 1;
        while (1)
        {
          v12 = *(v44 + 4 * v8);
          if (v12 < 2)
          {
            break;
          }

          v9 = (v12 + v9);
          v10 = v10 + v12 - 1;
          v8 = v11;
          if (v43[0] <= v11++)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v10 = 0;
        v9 = 0;
LABEL_13:
        if (v46[0] == v9)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(v46);
          v14 = v47;
          pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(&v38);
          v15 = v41;
          std::vector<unsigned int>::vector[abi:ne200100](&v35, 2 * v10);
          std::vector<float>::vector[abi:ne200100](&__p, v10);
          if (v7)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              v21 = *(v6 + 4 * v16);
              v22 = v21 - 1;
              if (v21 != 1)
              {
                v23 = *(v15 + 4 * v16);
                v24 = v35;
                v25 = v22 + v18;
                v26 = __p;
                v27 = v14[v19];
                while (1)
                {
                  v21 = v27 < VertexCount;
                  if (v27 >= VertexCount)
                  {
                    break;
                  }

                  v24[v17] = v27;
                  v27 = v14[++v19];
                  v24[v17 + 1] = v27;
                  v26[v18++] = v23;
                  v17 += 2;
                  if (!--v22)
                  {
                    v18 = v25;
                    break;
                  }
                }
              }

              if (v14[v19] >= VertexCount)
              {
                break;
              }

              ++v19;
              v16 = (v20 + 1);
              if (v7 > v16)
              {
                v28 = v21;
              }

              else
              {
                v28 = 0;
              }

              ++v20;
              if ((v28 & 1) == 0)
              {
                if (!v21)
                {
                  break;
                }

                goto LABEL_27;
              }
            }
          }

          else
          {
LABEL_27:
            MEMORY[0x24C1A37D0](a1, "osdEdgeCreaseIndices", 4, (v36 - v35) >> 2);
            MEMORY[0x24C1A3790](a1, "osdEdgeCreaseWeights", 4, (v34 - __p) >> 2);
          }

          if (__p)
          {
            v34 = __p;
            operator delete(__p);
          }

          if (v35)
          {
            v36 = v35;
            operator delete(v35);
          }
        }
      }
    }

    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(&v37);
    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v42);
    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v45);
    if ((v51 & 7) != 0)
    {
      atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v50);
    if (v49)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v49);
    }

    if ((v55 & 7) != 0)
    {
      atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v54);
    if (v53)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v53);
    }

    if ((v59 & 7) != 0)
    {
      atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v58);
    if (v57)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v57);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCornerIndicesAttr(&v37, this);
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCornerSharpnessesAttr(&v56, this);
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v37, v45);
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(&v56, v42);
    if (v45[0] == 1 && v42[0] == 1 && v46[0] && v46[0] == v43[0])
    {
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(v46);
      if (v46[0])
      {
        v29 = v46[0];
        v30 = v47;
        while (1)
        {
          v31 = *v30++;
          if (v31 >= VertexCount)
          {
            break;
          }

          if (!--v29)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
LABEL_52:
        MEMORY[0x24C1A37D0](a1, "osdVertexCreaseIndices", 4);
        v32 = v43[0];
        pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(v43);
        MEMORY[0x24C1A3790](a1, "osdVertexCreaseWeights", 4, v32, v44);
      }
    }

    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(v42);
    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v45);
    if ((v59 & 7) != 0)
    {
      atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v58);
    if (v57)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v57);
    }

    if ((v40 & 7) != 0)
    {
      atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v39);
    result = v38;
    if (v38)
    {
      return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v38);
    }
  }

  return result;
}

void sub_247579EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(&a15);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(&a21);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(&a27);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute((v27 - 176));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute((v27 - 144));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute((v27 - 112));
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
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
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(a1, __p, a2);
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

void sub_24757A174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
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

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
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
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(a1, __p, a2);
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

void sub_24757A364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
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

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 16 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = *(a1 + 16);
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
      }

      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a1 + 8), 16 * v6);
    v11 = v4 + 16 * v6;
  }

  *(a1 + 8) = v11;
}

__n128 realityio::getGeomPrimitiveOrientation(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v11 = xmmword_247757270;
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
  if (IsValid)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomCone::_GetStaticTfType(IsValid);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
    if (IsA & 1) != 0 || (pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::_GetStaticTfType(IsA), pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(), v5 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(), (v5) || (pxrInternal__aapl__pxrReserved__::UsdGeomCylinder::_GetStaticTfType(v5), pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(), pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA()))
    {
      MEMORY[0x24C1A5DE0](&v13, "axis");
      MEMORY[0x24C1A5DE0](&v12, "Z");
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(this, &v13, v15);
      if (v15[0])
      {
        v6 = v16;
      }

      else
      {
        v6 = v12;
      }

      v14 = v6;
      if ((v6 & 7) != 0)
      {
        v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
        {
          v14 = v7;
        }
      }

      if (v15[0] == 1)
      {
        if ((v16 & 7) != 0)
        {
          atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else if (v18 < 0)
      {
        operator delete(__p);
      }

      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
      {
        v8 = xmmword_24775F400;
      }

      else
      {
        if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
        {
          v9 = -1;
        }

        else
        {
          v9 = 0;
        }

        v8 = vbslq_s8(vdupq_n_s32(v9), xmmword_24775F410, xmmword_247757270);
      }

      v11 = v8;
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  return v11;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::IsA<pxrInternal__aapl__pxrReserved__::UsdGeomCylinder>(pxrInternal__aapl__pxrReserved__::UsdGeomCylinder *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomCylinder::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
}

uint64_t realityio::createGeomModelDescriptorWithPrimitivePrim@<X0>(realityio *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, __int16 a3@<W3>, __int16 a4@<W4>, __int16 a5@<W5>, uint64_t *a6@<X8>)
{
  *a6 = 0;
  result = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
  if (!result)
  {
    return result;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomGprim::_GetStaticTfType(result);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if ((result & 1) == 0)
  {
    return result;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomCube::_GetStaticTfType(result);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if (IsA)
  {
    v13 = atomic_load(MEMORY[0x277D86550]);
    if (!v13)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
    }

    realityio::getAttributeValue<float>(this, (v13 + 1016), v59);
    v14 = v59[0];
    v15 = *&v59[8];
    if ((v59[0] & 1) == 0 && SHIBYTE(v60) < 0)
    {
      operator delete(*&v59[24]);
    }

    memset(v59, 0, 28);
    REGeomBuildBoxDefaultOptions();
    v16 = 2.0;
    if (v14)
    {
      v16 = v15;
    }

    *&v59[12] = v16;
    *&v59[16] = v16;
    *&v59[20] = v16;
    *v53 = *v59;
    *&v53[12] = *&v59[12];
    v17 = REGeomModelDescriptorCreateFromBoxOptions();
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomSphere::_GetStaticTfType(IsA);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    v18 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
    if (v18)
    {
      REGeomBuildSphereDefaultOptions();
      v19 = atomic_load(MEMORY[0x277D86550]);
      if (!v19)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
      }

      realityio::getAttributeValue<float>(this, (v19 + 920), v59);
      if ((v59[0] & 1) == 0 && SHIBYTE(v60) < 0)
      {
        operator delete(*&v59[24]);
      }

      v17 = REGeomModelDescriptorCreateFromSphereOptions();
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomCone::_GetStaticTfType(v18);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      v20 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
      if (v20)
      {
        v21 = MEMORY[0x277D86550];
        v22 = atomic_load(MEMORY[0x277D86550]);
        if (!v22)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
        }

        realityio::getAttributeValue<float>(this, (v22 + 920), v59);
        if ((v59[0] & 1) == 0 && SHIBYTE(v60) < 0)
        {
          operator delete(*&v59[24]);
        }

        v23 = atomic_load(v21);
        if (!v23)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
        }

        realityio::getAttributeValue<float>(this, (v23 + 408), v59);
        if ((v59[0] & 1) == 0 && SHIBYTE(v60) < 0)
        {
          operator delete(*&v59[24]);
        }

        REGeomBuildConeDefaultOptions();
        v17 = REGeomModelDescriptorCreateFromConeOptions();
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::_GetStaticTfType(v20);
        pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
        if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
        {
          v24 = MEMORY[0x277D86550];
          v25 = atomic_load(MEMORY[0x277D86550]);
          if (!v25)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
          }

          *v59 = 1056964608;
          realityio::getAttributeValueWithDefaultValue<float>((v25 + 920), v59, this);
          v27 = v26;
          v28 = atomic_load(v24);
          if (!v28)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
          }

          *v59 = 1065353216;
          realityio::getAttributeValueWithDefaultValue<float>((v28 + 408), v59, this);
          v30 = v29;
          memset(v59, 0, 20);
          REGeomBuildCapsuleDefaultOptions();
          v31 = v30 + v27 * 2.0;
          *&v59[8] = v27;
          *&v59[12] = v31;
          *v59 = a3;
          *&v59[4] = a4;
          *v53 = *v59;
          *&v53[16] = *&v59[16];
          v17 = REGeomModelDescriptorCreateFromCapsuleOptions();
        }

        else
        {
          if (!pxrInternal__aapl__pxrReserved__::UsdPrim::IsA<pxrInternal__aapl__pxrReserved__::UsdGeomCylinder>(this))
          {
            v39 = 0;
            goto LABEL_36;
          }

          v32 = MEMORY[0x277D86550];
          v33 = atomic_load(MEMORY[0x277D86550]);
          if (!v33)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
          }

          *v59 = 1065353216;
          realityio::getAttributeValueWithDefaultValue<float>((v33 + 920), v59, this);
          v35 = v34;
          v36 = atomic_load(v32);
          if (!v36)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
          }

          *v59 = 0x40000000;
          realityio::getAttributeValueWithDefaultValue<float>((v36 + 408), v59, this);
          v38 = v37;
          memset(v59, 0, 24);
          REGeomBuildCylinderDefaultOptions();
          *&v59[8] = v35;
          *&v59[12] = v35;
          *&v59[4] = v38;
          *v59 = a5;
          *v53 = *v59;
          *&v53[16] = *&v59[16];
          v17 = REGeomModelDescriptorCreateFromCylinderOptions();
        }
      }
    }
  }

  v39 = v17;
LABEL_36:
  result = *a6;
  if (*a6)
  {
    result = RERelease();
  }

  *a6 = v39;
  if (v39)
  {
    v40 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    *v59 = MEMORY[0x277D866C8] + 16;
    pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetDisplayColorAttr(&v55, v40);
    MEMORY[0x24C1A4EF0](v59);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v55) && pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredValue(&v55))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(&v55, v59);
      if (v59[0] == 1)
      {
        *v53 = *&v59[8];
        *&v53[16] = *&v59[24];
        v54 = v60;
        if (v60)
        {
          v41 = (v60 - 4);
          if (*&v53[24])
          {
            v41 = *&v53[24];
          }

          atomic_fetch_add_explicit(v41, 1uLL, memory_order_relaxed);
        }

        if (*v53 == 1)
        {
          __p = 0;
          v51 = 0;
          v52 = 0;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(v53);
          v48 = *v54;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(v53);
          v47 = v54[1];
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(v53);
          __asm { FMOV            V0.4S, #1.0 }

          *&_Q0 = __PAIR64__(v47, v48);
          DWORD2(_Q0) = v54[2];
          v49 = _Q0;
          _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(&__p, &v49);
          MEMORY[0x24C1A3810](v39, "vertexColor", 0, 1, __p);
          if (__p)
          {
            v51 = __p;
            operator delete(__p);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v53);
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,realityio::DetailedError>::~Result(v59);
    }

    if ((v58 & 7) != 0)
    {
      atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v57);
    result = v56;
    if (v56)
    {
      return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v56);
    }
  }

  return result;
}

void realityio::getAttributeValueWithDefaultValue<float>(const pxrInternal__aapl__pxrReserved__::TfToken *a1, int *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  realityio::getAttributeValue<float>(this, a1, v5);
  v4 = *a2;
  if ((v5[0] & 1) == 0 && v7 < 0)
  {
    operator delete(__p);
  }
}

pxrInternal__aapl__pxrReserved__::UsdGeomGprim *realityio::approximateGeomWithPrimitivePrim@<X0>(realityio *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v9 = a2;
  result = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomGprim::_GetStaticTfType(result);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomCube::_GetStaticTfType(result);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
      if (result)
      {
        *a6 = xmmword_24775F420;
LABEL_14:
        *(a6 + 16) = 14;
        return result;
      }

      pxrInternal__aapl__pxrReserved__::UsdGeomSphere::_GetStaticTfType(result);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
      if (result)
      {
        v13 = ((v9 - 2) * v9 + 2);
        v14 = v9 * (v9 - 1);
LABEL_12:
        v15 = (2 * v14);
        goto LABEL_13;
      }

      pxrInternal__aapl__pxrReserved__::UsdGeomCone::_GetStaticTfType(result);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
      if (result)
      {
        v13 = (a3 + 1);
        v15 = (2 * a3 - 2);
LABEL_13:
        *a6 = v13;
        *(a6 + 8) = v15;
        goto LABEL_14;
      }

      pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::_GetStaticTfType(result);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
      if (result || (result = pxrInternal__aapl__pxrReserved__::UsdPrim::IsA<pxrInternal__aapl__pxrReserved__::UsdGeomCylinder>(this), result))
      {
        v13 = (2 * a4 * (a5 - 1) + 2);
        v14 = a5 * a4;
        goto LABEL_12;
      }
    }
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  return result;
}

void *realityio::createModelDescriptorFromUsdGeomMesh@<X0>(realityio *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdGeomMesh *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  *v163 = 0;
  v8 = (this + 8);
  v7 = *(this + 1);
  if (!v7)
  {
    goto LABEL_23;
  }

  if ((*(v7 + 57) & 8) != 0)
  {
    v7 = 0;
LABEL_23:
    *a6 = v7;
    *v163 = 0;
    return realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(v163);
  }

  v10 = a3;
  if (((*(*this + 32))(this) & 1) == 0)
  {
    v7 = *v163;
    goto LABEL_23;
  }

  __p = 0;
  v161 = 0;
  v162 = 0;
  memset(&v159, 0, sizeof(v159));
  memset(&v158, 0, sizeof(v158));
  pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetPointsAttr(&v176, this);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexCountsAttr(&v172, this);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexIndicesAttr(&v168, this);
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v176) || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v172) || (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v168) & 1) == 0)
  {
    v26 = 0;
    goto LABEL_26;
  }

  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(&v176, &v197);
  if (v197)
  {
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v172, &v190);
    if ((v190 & 1) == 0)
    {
      v26 = 0;
LABEL_407:
      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(&v190);
      goto LABEL_408;
    }

    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v168, __sz);
    if (__sz[0])
    {
      v13 = a4;
      if (pxrInternal__aapl__pxrReserved__::UsdGeomMesh::ValidateTopology())
      {
        std::vector<int>::resize(&v159, v191);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v191);
        v14 = v196;
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v191);
        v15 = &v196[v191];
        if (v14 != v15)
        {
          begin = v159.__begin_;
          do
          {
            v17 = *v14++;
            *begin++ = v17;
          }

          while (v14 != v15);
        }

        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&__p, v198);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v198);
        v18 = v203;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v198);
        v20 = v203 + 12 * v198;
        if (v18 != v20)
        {
          v21 = __p;
          do
          {
            *&v19 = *v18;
            DWORD2(v19) = *(v18 + 8);
            *v21++ = v19;
            v18 += 12;
          }

          while (v18 != v20);
        }

        std::vector<int>::resize(&v158, __sz[1]);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&__sz[1]);
        v22 = v167;
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&__sz[1]);
        v23 = &v167[__sz[1]];
        if (v22 != v23)
        {
          v24 = v158.__begin_;
          a4 = v13;
          do
          {
            v25 = *v22++;
            *v24++ = v25;
          }

          while (v22 != v23);
          v26 = 1;
          goto LABEL_406;
        }

        v26 = 1;
      }

      else
      {
        v26 = 0;
      }

      a4 = v13;
    }

    else
    {
      v26 = 0;
    }

LABEL_406:
    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(__sz);
    goto LABEL_407;
  }

  v26 = 0;
LABEL_408:
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,realityio::DetailedError>::~Result(&v197);
LABEL_26:
  if ((v171 & 7) != 0)
  {
    atomic_fetch_add_explicit((v171 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v170);
  if (v169)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v169);
  }

  if ((v175 & 7) != 0)
  {
    atomic_fetch_add_explicit((v175 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v174);
  if (v173)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v173);
  }

  if ((v179 & 7) != 0)
  {
    atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v178);
  if (v177)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v177);
  }

  if ((v26 & 1) == 0)
  {
    *a6 = *v163;
LABEL_46:
    *v163 = 0;
    goto LABEL_47;
  }

  HighVertexPerPolygon = REGeomModelDescriptorCreateHighVertexPerPolygon();
  if (*v163)
  {
    RERelease();
  }

  *v163 = HighVertexPerPolygon;
  if (!HighVertexPerPolygon)
  {
    *a6 = 0;
    goto LABEL_46;
  }

  v29 = pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v197, v8, this + 4);
  Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v29);
  if ((*Name & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (*Name & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
  }

  if (*(EmptyString + 23) < 0)
  {
    v32 = *EmptyString;
  }

  REGeomModelDescriptorSetName();
  if ((v201 & 7) != 0)
  {
    atomic_fetch_add_explicit((v201 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v199);
  if (v198)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v198);
  }

  if (MEMORY[0x24C1A3800](*v163, "vertexPosition", 1, (v161 - __p) >> 4))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetPointsAttr(&v197, this);
    v33 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v197);
    if ((*v33 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v34 = (*v33 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      v34 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v33);
    }

    if (*(v34 + 23) < 0)
    {
      v35 = *v34;
    }

    REGeomModelDescriptorAddAttributeAlias();
    if ((v201 & 7) != 0)
    {
      atomic_fetch_add_explicit((v201 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v199);
    if (v198)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v198);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetOrientationAttr(&v190, this);
    v36 = atomic_load(MEMORY[0x277D86550]);
    if (!v36)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
    }

    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(&v190, &v197);
    if (v197)
    {
      v37 = v198;
    }

    else
    {
      v37 = *(v36 + 976);
    }

    if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v37 &= 0xFFFFFFFFFFFFFFF8;
    }

    if (v197 == 1)
    {
      if ((v198 & 7) != 0)
      {
        atomic_fetch_add_explicit((v198 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else if (SHIBYTE(v203) < 0)
    {
      operator delete(v201);
    }

    if ((v194 & 7) != 0)
    {
      atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v192);
    if (v191)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v191);
    }

    v38 = atomic_load(MEMORY[0x277D86550]);
    v155 = v37;
    if (!v38)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
    }

    v39 = v37 ^ *(v38 + 528);
    REGeomModelDescriptorSetWindingOrder();
    *__sz = 0u;
    v165 = 0u;
    v166 = 1.0;
    v40 = pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v197, v8, this + 4);
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttributes(v157, v40);
    if ((v201 & 7) != 0)
    {
      atomic_fetch_add_explicit((v201 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v199);
    if (v198)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v198);
    }

    std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__rehash<true>(__sz, vcvtps_u32_f32(((v157[1] - v157[0]) >> 5) / v166));
    pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetPointsAttr(&v197, this);
    v41 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v197);
    if ((*v41 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v42 = ((*v41 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v42 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v41);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v42);
    if ((v201 & 7) != 0)
    {
      atomic_fetch_add_explicit((v201 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v199);
    if (v198)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v198);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexCountsAttr(&v197, this);
    v43 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v197);
    if ((*v43 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v44 = ((*v43 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v44 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v43);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v44);
    if ((v201 & 7) != 0)
    {
      atomic_fetch_add_explicit((v201 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v199);
    if (v198)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v198);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexIndicesAttr(&v197, this);
    v45 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v197);
    if ((*v45 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v46 = ((*v45 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v46 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v45);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v46);
    if ((v201 & 7) != 0)
    {
      atomic_fetch_add_explicit((v201 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v199);
    if (v198)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v198);
    }

    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v154 = a4;
    v179 = 0;
    v176 = MEMORY[0x277D86790] + 16;
    MEMORY[0x24C1A5DE0](&v172, "primvars:normals");
    LODWORD(v190) = 3;
    v191 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v194 = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::HasPrimvar(&v176, &v172))
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(&v197, &v176, &v172);
      LODWORD(v190) = v197;
      v47 = v198;
      if (v198)
      {
        atomic_fetch_add_explicit((v198 + 48), 1uLL, memory_order_relaxed);
      }

      if (v191)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v191);
      }

      v191 = v47;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v192, &v199);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v193, &v200);
      pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v194, &v201);
      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v190))
      {
        v48 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v190);
        if ((*v48 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v49 = ((*v48 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v49 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v48);
        }

        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v49);
        v50 = atomic_load(MEMORY[0x277D86550]);
        if (!v50)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
        }

        if (realityio::addUsdAttributeToGeomModelDescriptor(*v163, &v190, "vertexNormal", (v50 + 1232)))
        {
          v51 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v197);
          if ((*v51 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v52 = (*v51 & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            v52 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v51);
          }

          if (*(v52 + 23) < 0)
          {
            v53 = *v52;
          }

          REGeomModelDescriptorAddAttributeAlias();
        }
      }

      if ((v202 & 7) != 0)
      {
        atomic_fetch_add_explicit((v202 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v201 & 7) != 0)
      {
        atomic_fetch_add_explicit((v201 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v199);
      if (v198)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v198);
      }
    }

    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v190) & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetNormalsAttr(&v197, this);
      LODWORD(v190) = v197;
      if (v191)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v191);
      }

      v191 = v198;
      v198 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v192, &v199);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v193, &v200);
      if ((v194 & 7) != 0)
      {
        atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v194 = v201;
      v201 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v199);
      if (v198)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v198);
      }

      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v190))
      {
        v54 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v190);
        if ((*v54 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v55 = ((*v54 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v55 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v54);
        }

        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v55);
        v56 = *v163;
        pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetNormalsInterpolation(&v197, this);
        v57 = realityio::addUsdAttributeToGeomModelDescriptor(v56, &v190, "vertexNormal", &v197);
        if ((v197 & 7) != 0)
        {
          atomic_fetch_add_explicit((v197 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v57)
        {
          v58 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v190);
          if ((*v58 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v59 = (*v58 & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            v59 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v58);
          }

          if (*(v59 + 23) < 0)
          {
            v60 = *v59;
          }

          REGeomModelDescriptorAddAttributeAlias();
        }
      }
    }

    if ((v194 & 7) != 0)
    {
      atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v192);
    if (v191)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v191);
    }

    if ((v172 & 7) != 0)
    {
      atomic_fetch_add_explicit((v172 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    LODWORD(v197) = 3;
    v198 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v201 = 0;
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvarsWithAuthoredValues(&v190, &v176);
    v62 = v190;
    for (i = v191; v62 != i; v62 += 6)
    {
      if ((realityio::isTexCoord2(v62, v61) & 1) != 0 || realityio::isScalar2(v62, v64))
      {
        if ((*a2 ^ *pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v62)) <= 7)
        {
          LODWORD(v197) = *v62;
          v66 = v62[1];
          if (v66)
          {
            atomic_fetch_add_explicit((v66 + 48), 1uLL, memory_order_relaxed);
          }

          if (v198)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v198);
          }

          v198 = v66;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v199, v62 + 4);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v200, v62 + 5);
          pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v201, v62 + 3);
          break;
        }

        if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v197) & 1) == 0)
        {
          LODWORD(v197) = *v62;
          v65 = v62[1];
          if (v65)
          {
            atomic_fetch_add_explicit((v65 + 48), 1uLL, memory_order_relaxed);
          }

          if (v198)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v198);
          }

          v198 = v65;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v199, v62 + 4);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v200, v62 + 5);
          pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v201, v62 + 3);
        }
      }
    }

    v172 = &v190;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar>::__destroy_vector::operator()[abi:ne200100](&v172);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v197))
    {
      v67 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v197);
      if ((*v67 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v68 = ((*v67 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v68 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v67);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v68);
      v69 = atomic_load(MEMORY[0x277D86550]);
      if (!v69)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
      }

      if (realityio::addUsdAttributeToGeomModelDescriptor(*v163, &v197, "vertexUV", (v69 + 136)))
      {
        v70 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v197);
        if ((*v70 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v71 = (*v70 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v71 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v70);
        }

        if (*(v71 + 23) < 0)
        {
          v72 = *v71;
        }

        REGeomModelDescriptorAddAttributeAlias();
      }
    }

    if ((v201 & 7) != 0)
    {
      atomic_fetch_add_explicit((v201 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v199);
    if (v198)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v198);
    }

    v73 = atomic_load(MEMORY[0x277D86550]);
    v74 = v155;
    if (!v73)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
    }

    if ((*(v73 + 106) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v75 = ((*(v73 + 106) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v75 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v73);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v75);
    v76 = atomic_load(MEMORY[0x277D86550]);
    if (!v76)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
    }

    if ((*(v76 + 107) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v77 = ((*(v76 + 107) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v77 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v76);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v77);
    v78 = *v163;
    pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetDisplayColorPrimvar(&v197, this);
    pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetDisplayOpacityPrimvar(&v190, this);
    if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar())
    {
      HasValue = pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&v197);
    }

    else
    {
      HasValue = 0;
    }

    if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar())
    {
      v80 = pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&v190);
    }

    else
    {
      v80 = 0;
    }

    if (((HasValue | v80) & 1) == 0)
    {
      goto LABEL_304;
    }

    if (HasValue)
    {
      v81 = atomic_load(MEMORY[0x277D86550]);
      if (!v81)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
      }

      v153 = realityio::addUsdAttributeToGeomModelDescriptor(v78, &v197, 0, (v81 + 136));
    }

    else
    {
      v153 = 0;
    }

    if (v80)
    {
      v82 = atomic_load(MEMORY[0x277D86550]);
      if (!v82)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
      }

      v83 = realityio::addUsdAttributeToGeomModelDescriptor(v78, &v190, 0, (v82 + 136));
    }

    else
    {
      v83 = 0;
    }

    if (((v153 | v83) & 1) == 0)
    {
      goto LABEL_304;
    }

    if (v153)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(&v172, &v197);
      v85 = realityio::meshAttributeRateForInterpolation(&v172, v84);
      if ((v172 & 7) != 0)
      {
        atomic_fetch_add_explicit((v172 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      v85 = 255;
    }

    if (v83)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(&v172, &v190);
      v87 = realityio::meshAttributeRateForInterpolation(&v172, v86);
      v88 = v87;
      if ((v172 & 7) != 0)
      {
        atomic_fetch_add_explicit((v172 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v153)
      {
        v152 = 1;
        if (v87 != v85)
        {
          goto LABEL_242;
        }

        v89 = v85;
        if (v87 == 2)
        {
          goto LABEL_242;
        }
      }

      else
      {
        v89 = v87;
        if (v87 == 2)
        {
          v152 = 1;
          goto LABEL_242;
        }
      }
    }

    else
    {
      v89 = 255;
    }

    v91 = (v85 & 0xFE) == 2 || v89 == 3;
    v152 = v91;
    v88 = v89;
LABEL_242:
    LODWORD(v94) = REGeomModelDescriptorGetIndexCount();
    FaceCount = REGeomModelDescriptorGetFaceCount();
    v150 = v85;
    VertexCount = REGeomModelDescriptorGetVertexCount();
    v93 = FaceCount;
    LODWORD(v168) = 0;
    std::vector<unsigned int>::vector[abi:ne200100](&v172, FaceCount);
    v94 = v94;
    LODWORD(v187) = -1;
    std::vector<unsigned int>::vector[abi:ne200100](&v168, v94);
    REGeomModelDescriptorGetFaceVertexCountsHighVertexPerPolygon();
    REGeomModelDescriptorGetIndices();
    v95 = VertexCount;
    v96 = v150;
    if (!v153)
    {
      v96 = v88;
    }

    if (v152)
    {
      v96 = 3;
    }

    if (v96 != 1)
    {
      v95 = 1;
    }

    v149 = v96;
    if (v96 != 3)
    {
      v94 = v95;
    }

    v187 = 0;
    v188 = 0;
    v189 = 0;
    if (v94)
    {
      _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(&v187, v94);
    }

    LODWORD(v183) = 0;
    std::vector<unsigned int>::vector[abi:ne200100](&v185, FaceCount);
    if (FaceCount)
    {
      v97 = 0;
      v98 = v172;
      v99 = v185;
      do
      {
        v100 = *v98++;
        v97 += v100;
        *v99++ = v97;
        --v93;
      }

      while (v93);
    }

    v74 = v155;
    if (v83)
    {
      v101 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v190);
      if ((*v101 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v102 = (*v101 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v102 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v101);
      }

      if (*(v102 + 23) < 0)
      {
        v103 = *v102;
      }

      if (REGeomModelDescriptorGetAttributeIndex() == -1)
      {
        goto LABEL_296;
      }

      AttributeValueCount = REGeomModelDescriptorGetAttributeValueCount();
      std::vector<float>::vector[abi:ne200100](&v183, AttributeValueCount);
      memset(&v182, 0, sizeof(v182));
      REGeomModelDescriptorGetAttributeValuesFloat();
      if (REGeomModelDescriptorIsAttributeIndexed())
      {
        AttributeIndexCount = REGeomModelDescriptorGetAttributeIndexCount();
        std::vector<int>::resize(&v182, AttributeIndexCount);
        REGeomModelDescriptorGetAttributeIndices();
        v106 = &v182;
      }

      else
      {
        v106 = 0;
      }

      if (v152)
      {
        realityio::makeFaceVertexIndexList(&v180, VertexCount, &v185, &v168, v88, v106);
      }

      else
      {
        realityio::makeValueLookupByIndex(&v180, VertexCount, v185, v186, v168, v169, v88, v106);
      }

      if (v180)
      {
        v181 = v180;
        operator delete(v180);
      }

      if (v182.__begin_)
      {
        v182.__end_ = v182.__begin_;
        operator delete(v182.__begin_);
      }

      if (v183)
      {
        v184 = v183;
        operator delete(v183);
      }
    }

    if (v153)
    {
      v107 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v197);
      if ((*v107 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v108 = (*v107 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v108 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v107);
      }

      if (*(v108 + 23) < 0)
      {
        v109 = *v108;
      }

      if (REGeomModelDescriptorGetAttributeIndex() == -1)
      {
        goto LABEL_296;
      }

      v110 = REGeomModelDescriptorGetAttributeValueCount();
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v183, v110);
      memset(&v182, 0, sizeof(v182));
      REGeomModelDescriptorGetAttributeValuesVector3F();
      if (REGeomModelDescriptorIsAttributeIndexed())
      {
        v111 = REGeomModelDescriptorGetAttributeIndexCount();
        std::vector<int>::resize(&v182, v111);
        REGeomModelDescriptorGetAttributeIndices();
        v112 = &v182;
      }

      else
      {
        v112 = 0;
      }

      if (v152)
      {
        realityio::makeFaceVertexIndexList(&v180, VertexCount, &v185, &v168, v150, v112);
      }

      else
      {
        realityio::makeValueLookupByIndex(&v180, VertexCount, v185, v186, v168, v169, v150, v112);
      }

      if (v180)
      {
        v181 = v180;
        operator delete(v180);
      }

      if (v182.__begin_)
      {
        v182.__end_ = v182.__begin_;
        operator delete(v182.__begin_);
      }

      if (v183)
      {
        v184 = v183;
        operator delete(v183);
      }
    }

    MEMORY[0x24C1A3810](v78, "vertexColor", v149, (v188 - v187) >> 4);
LABEL_296:
    if (v185)
    {
      v186 = v185;
      operator delete(v185);
    }

    if (v187)
    {
      v188 = v187;
      operator delete(v187);
    }

    if (v168)
    {
      v169 = v168;
      operator delete(v168);
    }

    if (v172)
    {
      v173 = v172;
      operator delete(v172);
    }

LABEL_304:
    if ((v195 & 7) != 0)
    {
      atomic_fetch_add_explicit((v195 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v194 & 7) != 0)
    {
      atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v192);
    if (v191)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v191);
    }

    if ((v202 & 7) != 0)
    {
      atomic_fetch_add_explicit((v202 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v201 & 7) != 0)
    {
      atomic_fetch_add_explicit((v201 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v199);
    if (v198)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v198);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v197, v8, this + 4);
    pxrInternal__aapl__pxrReserved__::UsdSkelRoot::Find();
    if (!v191 || (*(v191 + 57) & 8) != 0)
    {
      v113 = 0;
    }

    else
    {
      v113 = (v190[4])(&v190);
    }

    MEMORY[0x24C1A4DE0](&v190);
    if ((v201 & 7) != 0)
    {
      atomic_fetch_add_explicit((v201 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v199);
    if (v198)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v198);
    }

    if (v113)
    {
      v115 = MEMORY[0x277D86558];
      v116 = atomic_load(MEMORY[0x277D86558]);
      if (!v116)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData();
      }

      if ((*(v116 + 6) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v117 = ((*(v116 + 6) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v117 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v116);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v117);
      v118 = atomic_load(v115);
      if (!v118)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData();
      }

      if ((*(v118 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v119 = ((*(v118 + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v119 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v118);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v119);
      v120 = atomic_load(v115);
      if (!v120)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData();
      }

      if ((*(v120 + 20) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v121 = ((*(v120 + 20) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v121 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v120);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v121);
      v122 = atomic_load(v115);
      if (!v122)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData();
      }

      if ((*(v122 + 23) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v123 = ((*(v122 + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v123 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v122);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v123);
      v124 = atomic_load(v115);
      if (!v124)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData();
      }

      if ((*(v124 + 14) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v125 = ((*(v124 + 14) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v125 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v124);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v125);
      v126 = atomic_load(v115);
      if (!v126)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData();
      }

      if ((*(v126 + 11) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v127 = ((*(v126 + 11) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v127 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v126);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v127);
      v128 = atomic_load(v115);
      if (!v128)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData();
      }

      if ((*(v128 + 12) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v129 = ((*(v128 + 12) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v129 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v128);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v129);
      v130 = atomic_load(v115);
      if (!v130)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData();
      }

      if ((*(v130 + 10) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v131 = ((*(v130 + 10) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v131 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v130);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v131);
      pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v190, v8, this + 4);
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v201 = 0;
      v197 = MEMORY[0x277D86780] + 16;
      if ((v194 & 7) != 0)
      {
        atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v192);
      if (v191)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v191);
      }

      pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetInheritedSkeleton(&v172, &v197);
      v132 = *v163;
      pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v190, v8, this + 4);
      realityio::addSkeletonJointBindingsToModelDescriptor(v132, &v197, &v172, &v190);
      if ((v194 & 7) != 0)
      {
        atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v192);
      if (v191)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v191);
      }

      MEMORY[0x24C1A53A0](&v172);
      MEMORY[0x24C1A5620](&v197);
    }

    if (v10)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvarsWithAuthoredValues(&v197, &v176);
      v133 = v197;
      v134 = v198;
      while (v133 != v134)
      {
        if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar() && ((realityio::isTexCoord2(v133, v135) & 1) != 0 || realityio::isTexCoord3(v133, v136)))
        {
          v137 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v133);
          v138 = ((*v137 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v137 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v137));
          if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(__sz, v138))
          {
            v139 = atomic_load(MEMORY[0x277D86550]);
            if (!v139)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
            }

            realityio::addUsdAttributeToGeomModelDescriptor(*v163, v133, 0, (v139 + 136));
            v140 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v133);
            if ((*v140 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v141 = ((*v140 & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v141 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v140);
            }

            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v141);
          }
        }

        v133 = (v133 + 48);
      }

      v190 = &v197;
      std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar>::__destroy_vector::operator()[abi:ne200100](&v190);
    }

    if ((realityio::isCatmullClarkSurface(this, v114) & a5) == 1)
    {
      realityio::addOpenSubdivDataToModelDescriptor(*v163, this);
    }

    if (v154)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvarsWithAuthoredValues(&v197, &v176);
      v142 = v197;
      v143 = v198;
      while (v142 != v143)
      {
        if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar())
        {
          v144 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v142);
          v145 = ((*v144 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v144 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v144));
          if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(__sz, v145))
          {
            v146 = atomic_load(MEMORY[0x277D86550]);
            if (!v146)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
            }

            realityio::addUsdAttributeToGeomModelDescriptor(*v163, v142, 0, (v146 + 136));
            v147 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v142);
            if ((*v147 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v148 = ((*v147 & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v148 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v147);
            }

            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v148);
          }
        }

        v142 = (v142 + 48);
      }

      v190 = &v197;
      std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar>::__destroy_vector::operator()[abi:ne200100](&v190);
    }

    *a6 = *v163;
    *v163 = 0;
    MEMORY[0x24C1A56A0](&v176);
    v197 = v157;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](&v197);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(__sz);
    if ((v74 & 7) != 0)
    {
      atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    goto LABEL_47;
  }

  *a6 = 0;
LABEL_47:
  if (v158.__begin_)
  {
    v158.__end_ = v158.__begin_;
    operator delete(v158.__begin_);
  }

  if (v159.__begin_)
  {
    v159.__end_ = v159.__begin_;
    operator delete(v159.__begin_);
  }

  if (__p)
  {
    v161 = __p;
    operator delete(__p);
  }

  return realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(v163);
}

void sub_24757CA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53)
{
  if (__p)
  {
    a53 = __p;
    operator delete(__p);
  }

  v55 = *(v53 - 256);
  if (v55)
  {
    *(v53 - 248) = v55;
    operator delete(v55);
  }

  v56 = *(v53 - 232);
  if (v56)
  {
    *(v53 - 224) = v56;
    operator delete(v56);
  }

  v57 = *(v53 - 208);
  if (v57)
  {
    *(v53 - 200) = v57;
    operator delete(v57);
  }

  if (a37)
  {
    a38 = a37;
    operator delete(a37);
  }

  if (a41)
  {
    a42 = a41;
    operator delete(a41);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar((v53 - 184));
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar((v53 - 136));
  MEMORY[0x24C1A56A0](&a45);
  a45 = &a16;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](&a45);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a29);
  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(&a28);
  _Unwind_Resume(a1);
}

void realityio::approximateGeomFromUsdGeomMesh(realityio *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetPointsAttr(&v7, this);
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
}

uint64_t realityio::addAttributeFromUsdSkelBlendShape(uint64_t *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::UsdSkelBlendShape *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v64, *a2, *(a2 + 8));
  }

  else
  {
    v64 = *a2;
  }

  std::string::append(&v64, "|blendTargetPosDeltas");
  pxrInternal__aapl__pxrReserved__::UsdSkelBlendShape::GetOffsetsAttr(&v60, a3);
  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v60) & 1) == 0)
  {
    v10 = 0;
    goto LABEL_54;
  }

  pxrInternal__aapl__pxrReserved__::UsdSkelBlendShape::GetPointIndicesAttr(&v56, a3);
  if (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&v56))
  {
    TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v60);
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(&TypeName);
    v5 = MEMORY[0x277D86578];
    if (!atomic_load(MEMORY[0x277D86578]))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_15;
    }

    if (!atomic_load(v5))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_15;
    }

    if (!atomic_load(v5))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
LABEL_15:
      v9 = *a1;
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(&v60, v81);
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v56, v77);
      v10 = 0;
      if (v81[0] == 1 && (v77[0] & 1) != 0)
      {
        v74 = v82;
        v75 = v83;
        v76 = v84;
        if (v84)
        {
          v11 = &v84[-1];
          if (*(&v75 + 1))
          {
            v11 = *(&v75 + 1);
          }

          atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
        }

        v71 = v78;
        v72 = v79;
        v73 = v80;
        if (v80)
        {
          v12 = (v80 - 16);
          if (*(&v72 + 1))
          {
            v12 = *(&v72 + 1);
          }

          atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
        }

        v13 = v71;
        VertexCount = REGeomModelDescriptorGetVertexCount();
        v10 = 0;
        if (v13 <= VertexCount && v74 == v13)
        {
          __p = 0;
          v69 = 0;
          v70 = 0;
          memset(&v67, 0, sizeof(v67));
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, v13 + 1);
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&__p, v74);
          v16 = __p;
          if (v74)
          {
            v17 = v76;
            v18 = 12 * v74;
            do
            {
              *&v15 = v17->f64[0];
              DWORD2(v15) = LODWORD(v17->f64[1]);
              *v16++ = v15;
              v17 = (v17 + 12);
              v18 -= 12;
            }

            while (v18);
            v16 = __p;
          }

          __x = (v69 - v16) >> 4;
          v65 = 0u;
          _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(&__p, &v65);
          std::vector<unsigned int>::resize(&v67, VertexCount, &__x);
          v19 = v71;
          if (v71)
          {
            v20 = 0;
            v21 = v73;
            v22 = 1;
            begin = v67.__begin_;
            while (1)
            {
              v10 = 0;
              v24 = *(v21 + 4 * v20);
              if ((v24 & 0x80000000) != 0 || v24 >= VertexCount)
              {
                break;
              }

              v25 = v22 - 1;
              v20 = v22;
              v26 = v19 > v22++;
              begin[v24] = v25;
              if (!v26)
              {
                goto LABEL_36;
              }
            }
          }

          else
          {
LABEL_36:
            v10 = REGeomModelDescriptorAddIndexedAttributeVector3F();
          }

          if (v67.__begin_)
          {
            v67.__end_ = v67.__begin_;
            operator delete(v67.__begin_);
          }

          if (__p)
          {
            v69 = __p;
            operator delete(__p);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v71);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v74);
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v77);
      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,realityio::DetailedError>::~Result(v81);
      goto LABEL_50;
    }

    if (!atomic_load(v5))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_70;
    }

    if (!atomic_load(v5))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_70;
    }

    if (!atomic_load(v5))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
LABEL_70:
      v35 = *a1;
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(v81, &v60);
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v56, v77);
      v10 = 0;
      if (v81[0] == 1 && (v77[0] & 1) != 0)
      {
        v74 = v82;
        v75 = v83;
        v76 = v84;
        if (v84)
        {
          v36 = &v84[-1];
          if (*(&v75 + 1))
          {
            v36 = *(&v75 + 1);
          }

          atomic_fetch_add_explicit(v36, 1uLL, memory_order_relaxed);
        }

        v71 = v78;
        v72 = v79;
        v73 = v80;
        if (v80)
        {
          v37 = (v80 - 16);
          if (*(&v72 + 1))
          {
            v37 = *(&v72 + 1);
          }

          atomic_fetch_add_explicit(v37, 1uLL, memory_order_relaxed);
        }

        v38 = v71;
        v39 = REGeomModelDescriptorGetVertexCount();
        v10 = 0;
        if (v38 <= v39 && v74 == v38)
        {
          __p = 0;
          v69 = 0;
          v70 = 0;
          memset(&v67, 0, sizeof(v67));
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, v38 + 1);
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&__p, v74);
          v40 = __p;
          if (v74)
          {
            v41 = v76;
            v42 = (v76 + 24 * v74);
            do
            {
              v43 = *v41;
              *&v43.f64[0] = vcvt_f32_f64(*v41);
              v44 = v41[1].f64[0];
              *&v43.f64[1] = v44;
              *v40++ = v43;
              v41 = (v41 + 24);
            }

            while (v41 != v42);
            v40 = __p;
          }

          __x = (v69 - v40) >> 4;
          v65 = 0u;
          _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(&__p, &v65);
          std::vector<unsigned int>::resize(&v67, v39, &__x);
          v45 = v71;
          if (v71)
          {
            v46 = 0;
            v47 = v73;
            v48 = 1;
            v49 = v67.__begin_;
            while (1)
            {
              v10 = 0;
              v50 = *(v47 + 4 * v46);
              if ((v50 & 0x80000000) != 0 || v50 >= v39)
              {
                break;
              }

              v51 = v48 - 1;
              v46 = v48;
              v26 = v45 > v48++;
              v49[v50] = v51;
              if (!v26)
              {
                goto LABEL_91;
              }
            }
          }

          else
          {
LABEL_91:
            v10 = REGeomModelDescriptorAddIndexedAttributeVector3F();
          }

          if (v67.__begin_)
          {
            v67.__end_ = v67.__begin_;
            operator delete(v67.__begin_);
          }

          if (__p)
          {
            v69 = __p;
            operator delete(__p);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v71);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v74);
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v77);
      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>,realityio::DetailedError>::~Result(v81);
      goto LABEL_50;
    }

    if (!atomic_load(v5))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if ((pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==() & 1) == 0)
    {
      if (!atomic_load(v5))
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
      }

      if ((pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==() & 1) == 0)
      {
        if (!atomic_load(v5))
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
        }

        if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
        {
          v10 = 0;
          goto LABEL_50;
        }
      }
    }

    v30 = _ZN9realityio29addIndexedBlendShapeAttributeIN32pxrInternal__aapl__pxrReserved__7GfVec3hEDv3_fEEbP21REGeomModelDescriptorRKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEERKNS1_12UsdAttributeESH_(*a1, &v64, &v60, &v56);
  }

  else
  {
    v27 = *a1;
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v64;
    }

    else
    {
      v28 = v64.__r_.__value_.__r.__words[0];
    }

    v29 = atomic_load(MEMORY[0x277D86550]);
    if (!v29)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
    }

    v30 = realityio::addUsdAttributeToGeomModelDescriptor(v27, &v60, v28, (v29 + 1232));
  }

  v10 = v30;
LABEL_50:
  if ((v59 & 7) != 0)
  {
    atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v58);
  if (v57)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v57);
  }

LABEL_54:
  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v62);
  if (v61)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v61);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_24757E29C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, char a36)
{
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a36);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v36 - 192);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v36 - 144);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>,realityio::DetailedError>::~Result(v36 - 96);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a11);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a15);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZN9realityio29addIndexedBlendShapeAttributeIN32pxrInternal__aapl__pxrReserved__7GfVec3hEDv3_fEEbP21REGeomModelDescriptorRKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEERKNS1_12UsdAttributeESH_(int a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this, pxrInternal__aapl__pxrReserved__::UsdObject *a4)
{
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(v41, this);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(a4, v37);
  v6 = 0;
  if (v41[0] == 1 && (v37[0] & 1) != 0)
  {
    v34 = v42;
    v35 = v43;
    v36 = v44;
    if (v44)
    {
      v7 = (v44 - 8);
      if (*(&v35 + 1))
      {
        v7 = *(&v35 + 1);
      }

      atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
    }

    v31 = v38;
    v32 = v39;
    v33 = v40;
    if (v40)
    {
      v8 = (v40 - 16);
      if (*(&v32 + 1))
      {
        v8 = *(&v32 + 1);
      }

      atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    VertexCount = REGeomModelDescriptorGetVertexCount();
    v6 = 0;
    if (v31 <= VertexCount && v34 == v31)
    {
      __p = 0;
      v29 = 0;
      v30 = 0;
      memset(&v27, 0, sizeof(v27));
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, v31 + 1);
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&__p, v34);
      v11 = __p;
      if (v34)
      {
        v12 = v36;
        v13 = &v36[3 * v34];
        v14 = MEMORY[0x277D86658];
        do
        {
          LODWORD(v10) = *(v14 + 4 * *v12);
          DWORD1(v10) = *(v14 + 4 * v12[1]);
          DWORD2(v10) = *(v14 + 4 * v12[2]);
          *v11++ = v10;
          v12 += 3;
        }

        while (v12 != v13);
        v11 = __p;
      }

      __x = (v29 - v11) >> 4;
      v25 = 0u;
      _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(&__p, &v25);
      std::vector<unsigned int>::resize(&v27, VertexCount, &__x);
      v15 = v31;
      if (v31)
      {
        v16 = 0;
        v17 = v33;
        v18 = 1;
        begin = v27.__begin_;
        while (1)
        {
          v6 = 0;
          v20 = *(v17 + 4 * v16);
          if ((v20 & 0x80000000) != 0 || v20 >= VertexCount)
          {
            break;
          }

          v21 = v18 - 1;
          v16 = v18;
          v22 = v15 > v18++;
          begin[v20] = v21;
          if (!v22)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:
        if (*(a2 + 23) < 0)
        {
          v23 = *a2;
        }

        v6 = REGeomModelDescriptorAddIndexedAttributeVector3F();
      }

      if (v27.__begin_)
      {
        v27.__end_ = v27.__begin_;
        operator delete(v27.__begin_);
      }

      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v31);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v34);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v37);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>,realityio::DetailedError>::~Result(v41);
  return v6;
}

void sub_24757E63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a25);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v25 - 144);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>,realityio::DetailedError>::~Result(v25 - 96);
  _Unwind_Resume(a1);
}

double std::__optional_storage_base<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40))
  {
    if (a1 != a2)
    {
      if (*(a1 + 40))
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(a1);
        v4 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v4;
        result = 0.0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        *(a1 + 32) = *(a2 + 32);
        *(a2 + 32) = 0;
      }
    }
  }

  else if (*(a1 + 40))
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(a1);
    *(a1 + 40) = 0;
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a1 + 40) = 1;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::~UsdSkelSkinningQuery(pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery *this)
{
  std::__optional_destruct_base<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,false>::~__optional_destruct_base[abi:ne200100](this + 352);
  std::__optional_destruct_base<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,false>::~__optional_destruct_base[abi:ne200100](this + 304);
  v2 = *(this + 37);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 35);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 33);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 256);
  v5 = *(this + 31);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5);
  }

  v6 = *(this + 29);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 224);
  v7 = *(this + 27);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
  }

  v8 = *(this + 25);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 192);
  v9 = *(this + 23);
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9);
  }

  v10 = *(this + 21);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 160);
  v11 = *(this + 19);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  v12 = *(this + 16);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 15);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 112);
  v14 = *(this + 13);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14);
  }

  v15 = *(this + 10);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 9);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 64);
  v17 = *(this + 7);
  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17);
  }

  v18 = *(this + 5);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 3);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v20 = *(this + 1);
  if (v20)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20);
  }
}

uint64_t std::__optional_destruct_base<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,false>::~__optional_destruct_base[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(a1);
  }

  return a1;
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3f>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
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
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3f>(a1, __p, a2);
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

void sub_24757EB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
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

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3f>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v39 = 0;
    v6 = *a2;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3f>(v38))
      {
        v7 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3f>(v38);
        v8 = *(v7 + 8);
        *a3 = 1;
        *(a3 + 8) = *v7;
        *(a3 + 16) = v8;
        goto LABEL_38;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v38);
      {
        v14 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec3f>(v38);
        v15 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v37, v14);
        if (v37.__r_.__value_.__l.__size_)
        {
          v16 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3f>(v15);
          v17 = *(v16 + 8);
          *a3 = 1;
          *(a3 + 8) = *v16;
          *(a3 + 16) = v17;
        }

        else
        {
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v34, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a3 + 8) = v34;
          v28 = v36;
          *(a3 + 24) = v35;
          *(a3 + 32) = v28;
          *(a3 + 39) = *(&v36 + 7);
          LOBYTE(v28) = HIBYTE(v36);
          v36 = 0uLL;
          v35 = 0;
          *a3 = 0;
          *(a3 + 47) = v28;
          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v37);
        goto LABEL_38;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v34, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v34;
      v26 = v36;
      *(a3 + 24) = v35;
      *(a3 + 32) = v26;
      *(a3 + 39) = *(&v36 + 7);
      LOBYTE(v26) = HIBYTE(v36);
      v36 = 0uLL;
      v35 = 0;
      *a3 = 0;
      *(a3 + 47) = v26;
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
LABEL_38:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v38);
        goto LABEL_39;
      }

      v25 = __p[0];
    }

    else
    {
      v10 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v10 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
      }

      std::operator+<char>();
      v18 = std::string::append(&v31, ") at the given time: ");
      v19 = *&v18->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v30, *a2);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v30;
      }

      else
      {
        v20 = v30.__r_.__value_.__r.__words[0];
      }

      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v30.__r_.__value_.__l.__size_;
      }

      v22 = std::string::append(&v37, v20, size);
      v23 = *&v22->__r_.__value_.__l.__data_;
      v33 = v22->__r_.__value_.__r.__words[2];
      *__p = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v34, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v34;
      v24 = v36;
      *(a3 + 24) = v35;
      *(a3 + 32) = v24;
      *(a3 + 39) = *(&v36 + 7);
      LOBYTE(v24) = HIBYTE(v36);
      v36 = 0uLL;
      v35 = 0;
      *a3 = 0;
      *(a3 + 47) = v24;
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      v25 = v31.__r_.__value_.__r.__words[0];
    }

    operator delete(v25);
    goto LABEL_38;
  }

  v9 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v9 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v34, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a3 + 8) = v34;
  v11 = v36;
  *(a3 + 24) = v35;
  *(a3 + 32) = v11;
  *(a3 + 39) = *(&v36 + 7);
  LOBYTE(v11) = HIBYTE(v36);
  v36 = 0uLL;
  v35 = 0;
  *a3 = 0;
  *(a3 + 47) = v11;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  v29 = *MEMORY[0x277D85DE8];
}

void sub_24757EFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 80));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 56));
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
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
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(a1, __p, a2);
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

void sub_24757F1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
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

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v44 = 0;
    v6 = *a2;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(v43))
      {
        v7 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(v43);
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
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v40);
        goto LABEL_46;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v43);
      {
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(v43);
        v18 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v42, v17);
        if (v42.__r_.__value_.__l.__size_)
        {
          v19 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(v18);
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
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v40);
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

void sub_24757F67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 22)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = *(a1 + 16);
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, v10);
      }

      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a1 + 8), 8 * v6);
    v11 = v4 + 8 * v6;
  }

  *(a1 + 8) = v11;
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3d>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
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
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3d>(a1, __p, a2);
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

void sub_24757FC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
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

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v62 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v51, this);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    v50 = v8;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v57.__r_.__value_.__r.__words[0] = *&v61[8];
      v19 = *v61;
      *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
      v20 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
      v21 = v57.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v19;
      *(a1 + 32) = v21;
      *(a1 + 47) = v20;
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_59;
    }

    v59.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(&v59))
      {
        v9 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(&v59);
        v10 = *(v9 + 16);
        v60 = *v9;
        *v61 = v10;
        v11 = *(v9 + 32);
        if (v11)
        {
          v12 = *&v61[8];
          if (!*&v61[8])
          {
            v12 = (v11 - 16);
          }

          atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
        }

        *a1 = 1;
        v13 = *v61;
        *(a1 + 8) = v60;
        *(a1 + 24) = v13;
        v60 = 0u;
        *v61 = 0u;
        *(a1 + 40) = v11;
        *&v61[16] = 0;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v60);
        goto LABEL_58;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v59);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(&v59))
        {
          v25 = &v59;
        }

        else
        {
          v25 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v59, &v60);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v60);
        }

        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v57, v25);
        if (v57.__r_.__value_.__l.__size_)
        {
          v39 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(&v57);
          v40 = *(v39 + 16);
          v60 = *v39;
          *v61 = v40;
          v41 = *(v39 + 32);
          if (v41)
          {
            v42 = *&v61[8];
            if (!*&v61[8])
            {
              v42 = (v41 - 16);
            }

            atomic_fetch_add_explicit(v42, 1uLL, memory_order_relaxed);
          }

          *a1 = 1;
          v43 = *v61;
          *(a1 + 8) = v60;
          *(a1 + 24) = v43;
          v60 = 0u;
          *v61 = 0u;
          *(a1 + 40) = v41;
          *&v61[16] = 0;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v60);
        }

        else
        {
          v44 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
          if ((*v44 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v44);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a1 + 8) = v60;
          v56.__r_.__value_.__r.__words[0] = *&v61[8];
          v45 = *v61;
          *(v56.__r_.__value_.__r.__words + 7) = *&v61[15];
          v46 = v61[23];
          memset(v61, 0, sizeof(v61));
          *a1 = 0;
          *(a1 + 39) = *(v56.__r_.__value_.__r.__words + 7);
          v47 = v56.__r_.__value_.__r.__words[0];
          *(a1 + 24) = v45;
          *(a1 + 32) = v47;
          *(a1 + 47) = v46;
          if (SHIBYTE(v55) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v57);
        goto LABEL_58;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v57.__r_.__value_.__r.__words[0] = *&v61[8];
      v36 = *v61;
      *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
      v37 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
      v38 = v57.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v36;
      *(a1 + 32) = v38;
      *(a1 + 47) = v37;
      if ((SHIBYTE(v55) & 0x80000000) == 0)
      {
LABEL_58:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v59);
LABEL_59:
        v48 = v52;
        if (v52 && atomic_fetch_add_explicit((v52 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v48 + 8))(v48);
        }

        goto LABEL_62;
      }

      v35 = __p[0];
    }

    else
    {
      v18 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*v18 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
      }

      std::operator+<char>();
      v26 = std::string::append(&v56, ") at the given time: ");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v53, v50);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v53;
      }

      else
      {
        v28 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v53.__r_.__value_.__l.__size_;
      }

      v30 = std::string::append(&v57, v28, size);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v55 = v30->__r_.__value_.__r.__words[2];
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v58[0] = *&v61[8];
      v32 = *v61;
      *(v58 + 7) = *&v61[15];
      v33 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v58 + 7);
      v34 = v58[0];
      *(a1 + 24) = v32;
      *(a1 + 32) = v34;
      *(a1 + 47) = v33;
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      v35 = v56.__r_.__value_.__r.__words[0];
    }

    operator delete(v35);
    goto LABEL_58;
  }

  v6 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
  if ((*v6 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a1 + 8) = v60;
  v57.__r_.__value_.__r.__words[0] = *&v61[8];
  v15 = *v61;
  *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
  v16 = v61[23];
  memset(v61, 0, sizeof(v61));
  *a1 = 0;
  *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
  v17 = v57.__r_.__value_.__r.__words[0];
  *(a1 + 24) = v15;
  *(a1 + 32) = v17;
  *(a1 + 47) = v16;
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_62:
  v49 = *MEMORY[0x277D85DE8];
}

void sub_2475802AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3d>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v39 = 0;
    v6 = *a2;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3d>(v38))
      {
        v7 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3d>(v38);
        v8 = *(v7 + 16);
        *a3 = 1;
        *(a3 + 8) = *v7;
        *(a3 + 24) = v8;
        goto LABEL_38;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v38);
      {
        v14 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec3d>(v38);
        v15 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v37, v14);
        if (v37.__r_.__value_.__l.__size_)
        {
          v16 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3d>(v15);
          v17 = *(v16 + 16);
          *a3 = 1;
          *(a3 + 8) = *v16;
          *(a3 + 24) = v17;
        }

        else
        {
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v34, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a3 + 8) = v34;
          v28 = v36;
          *(a3 + 24) = v35;
          *(a3 + 32) = v28;
          *(a3 + 39) = *(&v36 + 7);
          LOBYTE(v28) = HIBYTE(v36);
          v36 = 0uLL;
          v35 = 0;
          *a3 = 0;
          *(a3 + 47) = v28;
          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v37);
        goto LABEL_38;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v34, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v34;
      v26 = v36;
      *(a3 + 24) = v35;
      *(a3 + 32) = v26;
      *(a3 + 39) = *(&v36 + 7);
      LOBYTE(v26) = HIBYTE(v36);
      v36 = 0uLL;
      v35 = 0;
      *a3 = 0;
      *(a3 + 47) = v26;
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
LABEL_38:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v38);
        goto LABEL_39;
      }

      v25 = __p[0];
    }

    else
    {
      v10 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v10 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
      }

      std::operator+<char>();
      v18 = std::string::append(&v31, ") at the given time: ");
      v19 = *&v18->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v30, *a2);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v30;
      }

      else
      {
        v20 = v30.__r_.__value_.__r.__words[0];
      }

      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v30.__r_.__value_.__l.__size_;
      }

      v22 = std::string::append(&v37, v20, size);
      v23 = *&v22->__r_.__value_.__l.__data_;
      v33 = v22->__r_.__value_.__r.__words[2];
      *__p = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v34, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v34;
      v24 = v36;
      *(a3 + 24) = v35;
      *(a3 + 32) = v24;
      *(a3 + 39) = *(&v36 + 7);
      LOBYTE(v24) = HIBYTE(v36);
      v36 = 0uLL;
      v35 = 0;
      *a3 = 0;
      *(a3 + 47) = v24;
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      v25 = v31.__r_.__value_.__r.__words[0];
    }

    operator delete(v25);
    goto LABEL_38;
  }

  v9 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v9 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v34, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a3 + 8) = v34;
  v11 = v36;
  *(a3 + 24) = v35;
  *(a3 + 32) = v11;
  *(a3 + 39) = *(&v36 + 7);
  LOBYTE(v11) = HIBYTE(v36);
  v36 = 0uLL;
  v35 = 0;
  *a3 = 0;
  *(a3 + 47) = v11;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  v29 = *MEMORY[0x277D85DE8];
}

void sub_247580778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 80));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 56));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 24)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 25)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v62 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v51, this);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    v50 = v8;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v57.__r_.__value_.__r.__words[0] = *&v61[8];
      v19 = *v61;
      *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
      v20 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
      v21 = v57.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v19;
      *(a1 + 32) = v21;
      *(a1 + 47) = v20;
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_59;
    }

    v59.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(&v59))
      {
        v9 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(&v59);
        v10 = *(v9 + 16);
        v60 = *v9;
        *v61 = v10;
        v11 = *(v9 + 32);
        if (v11)
        {
          v12 = *&v61[8];
          if (!*&v61[8])
          {
            v12 = (v11 - 16);
          }

          atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
        }

        *a1 = 1;
        v13 = *v61;
        *(a1 + 8) = v60;
        *(a1 + 24) = v13;
        v60 = 0u;
        *v61 = 0u;
        *(a1 + 40) = v11;
        *&v61[16] = 0;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v60);
        goto LABEL_58;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v59);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(&v59))
        {
          v25 = &v59;
        }

        else
        {
          v25 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v59, &v60);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v60);
        }

        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v57, v25);
        if (v57.__r_.__value_.__l.__size_)
        {
          v39 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(&v57);
          v40 = *(v39 + 16);
          v60 = *v39;
          *v61 = v40;
          v41 = *(v39 + 32);
          if (v41)
          {
            v42 = *&v61[8];
            if (!*&v61[8])
            {
              v42 = (v41 - 16);
            }

            atomic_fetch_add_explicit(v42, 1uLL, memory_order_relaxed);
          }

          *a1 = 1;
          v43 = *v61;
          *(a1 + 8) = v60;
          *(a1 + 24) = v43;
          v60 = 0u;
          *v61 = 0u;
          *(a1 + 40) = v41;
          *&v61[16] = 0;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v60);
        }

        else
        {
          v44 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
          if ((*v44 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v44);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a1 + 8) = v60;
          v56.__r_.__value_.__r.__words[0] = *&v61[8];
          v45 = *v61;
          *(v56.__r_.__value_.__r.__words + 7) = *&v61[15];
          v46 = v61[23];
          memset(v61, 0, sizeof(v61));
          *a1 = 0;
          *(a1 + 39) = *(v56.__r_.__value_.__r.__words + 7);
          v47 = v56.__r_.__value_.__r.__words[0];
          *(a1 + 24) = v45;
          *(a1 + 32) = v47;
          *(a1 + 47) = v46;
          if (SHIBYTE(v55) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v57);
        goto LABEL_58;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v57.__r_.__value_.__r.__words[0] = *&v61[8];
      v36 = *v61;
      *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
      v37 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
      v38 = v57.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v36;
      *(a1 + 32) = v38;
      *(a1 + 47) = v37;
      if ((SHIBYTE(v55) & 0x80000000) == 0)
      {
LABEL_58:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v59);
LABEL_59:
        v48 = v52;
        if (v52 && atomic_fetch_add_explicit((v52 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v48 + 8))(v48);
        }

        goto LABEL_62;
      }

      v35 = __p[0];
    }

    else
    {
      v18 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*v18 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
      }

      std::operator+<char>();
      v26 = std::string::append(&v56, ") at the given time: ");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v53, v50);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v53;
      }

      else
      {
        v28 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v53.__r_.__value_.__l.__size_;
      }

      v30 = std::string::append(&v57, v28, size);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v55 = v30->__r_.__value_.__r.__words[2];
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v58[0] = *&v61[8];
      v32 = *v61;
      *(v58 + 7) = *&v61[15];
      v33 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v58 + 7);
      v34 = v58[0];
      *(a1 + 24) = v32;
      *(a1 + 32) = v34;
      *(a1 + 47) = v33;
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      v35 = v56.__r_.__value_.__r.__words[0];
    }

    operator delete(v35);
    goto LABEL_58;
  }

  v6 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
  if ((*v6 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a1 + 8) = v60;
  v57.__r_.__value_.__r.__words[0] = *&v61[8];
  v15 = *v61;
  *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
  v16 = v61[23];
  memset(v61, 0, sizeof(v61));
  *a1 = 0;
  *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
  v17 = v57.__r_.__value_.__r.__words[0];
  *(a1 + 24) = v15;
  *(a1 + 32) = v17;
  *(a1 + 47) = v16;
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_62:
  v49 = *MEMORY[0x277D85DE8];
}

void sub_2475811EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 18)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 19)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
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
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(a1, __p, a2);
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

void sub_247581824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
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

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v44 = 0;
    v6 = *a2;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(v43))
      {
        v7 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(v43);
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
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v40);
        goto LABEL_46;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v43);
      {
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(v43);
        v18 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v42, v17);
        if (v42.__r_.__value_.__l.__size_)
        {
          v19 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(v18);
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
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v40);
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

void sub_247581CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 20)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 23)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 17)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void realityio::getAttributeValue<int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
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
    realityio::getAttributeValue<int>(a1, __p, a2);
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

void sub_247582510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
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

void realityio::getAttributeValue<int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v37 = 0;
    v6 = *a2;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<int>(v36))
      {
        v7 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<int>(v36);
        *a3 = 1;
        *(a3 + 8) = v7;
        goto LABEL_38;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v36);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827C0], v12))
      {
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<int>(v36);
        v14 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v35, v13);
        if (v35.__r_.__value_.__l.__size_)
        {
          v15 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<int>(v14);
          *a3 = 1;
          *(a3 + 8) = v15;
        }

        else
        {
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a3 + 8) = v32;
          v26 = v34;
          *(a3 + 24) = v33;
          *(a3 + 32) = v26;
          *(a3 + 39) = *(&v34 + 7);
          LOBYTE(v26) = HIBYTE(v34);
          v34 = 0uLL;
          v33 = 0;
          *a3 = 0;
          *(a3 + 47) = v26;
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v35);
        goto LABEL_38;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v32;
      v24 = v34;
      *(a3 + 24) = v33;
      *(a3 + 32) = v24;
      *(a3 + 39) = *(&v34 + 7);
      LOBYTE(v24) = HIBYTE(v34);
      v34 = 0uLL;
      v33 = 0;
      *a3 = 0;
      *(a3 + 47) = v24;
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
LABEL_38:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v36);
        goto LABEL_39;
      }

      v23 = __p[0];
    }

    else
    {
      v9 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v9 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
      }

      std::operator+<char>();
      v16 = std::string::append(&v29, ") at the given time: ");
      v17 = *&v16->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v28, *a2);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v28;
      }

      else
      {
        v18 = v28.__r_.__value_.__r.__words[0];
      }

      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v28.__r_.__value_.__l.__size_;
      }

      v20 = std::string::append(&v35, v18, size);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v31 = v20->__r_.__value_.__r.__words[2];
      *__p = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v32;
      v22 = v34;
      *(a3 + 24) = v33;
      *(a3 + 32) = v22;
      *(a3 + 39) = *(&v34 + 7);
      LOBYTE(v22) = HIBYTE(v34);
      v34 = 0uLL;
      v33 = 0;
      *a3 = 0;
      *(a3 + 47) = v22;
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      v23 = v29.__r_.__value_.__r.__words[0];
    }

    operator delete(v23);
    goto LABEL_38;
  }

  v8 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v8 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a3 + 8) = v32;
  v10 = v34;
  *(a3 + 24) = v33;
  *(a3 + 32) = v10;
  *(a3 + 39) = *(&v34 + 7);
  LOBYTE(v10) = HIBYTE(v34);
  v34 = 0uLL;
  v33 = 0;
  *a3 = 0;
  *(a3 + 47) = v10;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  v27 = *MEMORY[0x277D85DE8];
}

void sub_247582934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 80));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 56));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::VtArray<int>::emplace_back<int>(uint64_t a1, _DWORD *a2)
{
  if (!*(a1 + 8))
  {
    v4 = *a1;
    if (*(a1 + 24))
    {
      goto LABEL_14;
    }

    v5 = *(a1 + 32);
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = atomic_load((v5 - 16));
    if (v6 != 1)
    {
      goto LABEL_14;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      if (*(a1 + 24))
      {
        v7 = a1;
      }

      else
      {
        v7 = (v5 - 8);
      }

      v8 = *v7;
    }

    else
    {
LABEL_10:
      v8 = 0;
    }

    if (v4 != v8)
    {
      *(v5 + 4 * v4) = *a2;
LABEL_13:
      ++*a1;
      return;
    }

LABEL_14:
    v9 = *(a1 + 32);
    v10 = 1;
    do
    {
      v11 = v10;
      v10 *= 2;
    }

    while (v11 < v4 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<int>::_AllocateNew(a1, v11);
    v13 = New;
    if (v4)
    {
      v14 = 4 * v4;
      v15 = New;
      do
      {
        v16 = *v9++;
        *v15++ = v16;
        v14 -= 4;
      }

      while (v14);
    }

    *(New + v4) = *a2;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
    *(a1 + 32) = v13;
    goto LABEL_13;
  }

  if (*(a1 + 12))
  {
    *(a1 + 16);
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
}

void realityio::getAttributeValue<unsigned int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
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
    realityio::getAttributeValue<unsigned int>(a1, __p, a2);
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

void sub_247582CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
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

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
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
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(a1, __p, a2);
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

void sub_247582EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
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

void realityio::getAttributeValue<unsigned int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v37 = 0;
    v6 = *a2;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<unsigned int>(v36))
      {
        v7 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned int>(v36);
        *a3 = 1;
        *(a3 + 8) = v7;
        goto LABEL_38;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v36);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827C8], v12))
      {
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<unsigned int>(v36);
        v14 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v35, v13);
        if (v35.__r_.__value_.__l.__size_)
        {
          v15 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned int>(v14);
          *a3 = 1;
          *(a3 + 8) = v15;
        }

        else
        {
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a3 + 8) = v32;
          v26 = v34;
          *(a3 + 24) = v33;
          *(a3 + 32) = v26;
          *(a3 + 39) = *(&v34 + 7);
          LOBYTE(v26) = HIBYTE(v34);
          v34 = 0uLL;
          v33 = 0;
          *a3 = 0;
          *(a3 + 47) = v26;
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v35);
        goto LABEL_38;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v32;
      v24 = v34;
      *(a3 + 24) = v33;
      *(a3 + 32) = v24;
      *(a3 + 39) = *(&v34 + 7);
      LOBYTE(v24) = HIBYTE(v34);
      v34 = 0uLL;
      v33 = 0;
      *a3 = 0;
      *(a3 + 47) = v24;
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
LABEL_38:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v36);
        goto LABEL_39;
      }

      v23 = __p[0];
    }

    else
    {
      v9 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v9 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
      }

      std::operator+<char>();
      v16 = std::string::append(&v29, ") at the given time: ");
      v17 = *&v16->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v28, *a2);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v28;
      }

      else
      {
        v18 = v28.__r_.__value_.__r.__words[0];
      }

      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v28.__r_.__value_.__l.__size_;
      }

      v20 = std::string::append(&v35, v18, size);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v31 = v20->__r_.__value_.__r.__words[2];
      *__p = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v32;
      v22 = v34;
      *(a3 + 24) = v33;
      *(a3 + 32) = v22;
      *(a3 + 39) = *(&v34 + 7);
      LOBYTE(v22) = HIBYTE(v34);
      v34 = 0uLL;
      v33 = 0;
      *a3 = 0;
      *(a3 + 47) = v22;
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      v23 = v29.__r_.__value_.__r.__words[0];
    }

    operator delete(v23);
    goto LABEL_38;
  }

  v8 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v8 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a3 + 8) = v32;
  v10 = v34;
  *(a3 + 24) = v33;
  *(a3 + 32) = v10;
  *(a3 + 39) = *(&v34 + 7);
  LOBYTE(v10) = HIBYTE(v34);
  v34 = 0uLL;
  v33 = 0;
  *a3 = 0;
  *(a3 + 47) = v10;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  v27 = *MEMORY[0x277D85DE8];
}

void sub_2475832C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 80));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 56));
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v44 = 0;
    v6 = *a2;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(v43))
      {
        v7 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(v43);
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
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v40);
        goto LABEL_46;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v43);
      {
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(v43);
        v18 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v42, v17);
        if (v42.__r_.__value_.__l.__size_)
        {
          v19 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(v18);
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
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v40);
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

void sub_24758379C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 53)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void realityio::getAttributeValue<unsigned char>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
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
    realityio::getAttributeValue<unsigned char>(a1, __p, a2);
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

void sub_247583C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
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

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
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
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(a1, __p, a2);
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

void sub_247583E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
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

void realityio::getAttributeValue<unsigned char>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v37 = 0;
    v6 = *a2;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<unsigned char>(v36))
      {
        v7 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned char>(v36);
        *a3 = 1;
        *(a3 + 8) = v7;
        goto LABEL_38;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v36);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827B8], v12))
      {
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<unsigned char>(v36);
        v14 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v35, v13);
        if (v35.__r_.__value_.__l.__size_)
        {
          v15 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned char>(v14);
          *a3 = 1;
          *(a3 + 8) = v15;
        }

        else
        {
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a3 + 8) = v32;
          v26 = v34;
          *(a3 + 24) = v33;
          *(a3 + 32) = v26;
          *(a3 + 39) = *(&v34 + 7);
          LOBYTE(v26) = HIBYTE(v34);
          v34 = 0uLL;
          v33 = 0;
          *a3 = 0;
          *(a3 + 47) = v26;
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v35);
        goto LABEL_38;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v32;
      v24 = v34;
      *(a3 + 24) = v33;
      *(a3 + 32) = v24;
      *(a3 + 39) = *(&v34 + 7);
      LOBYTE(v24) = HIBYTE(v34);
      v34 = 0uLL;
      v33 = 0;
      *a3 = 0;
      *(a3 + 47) = v24;
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
LABEL_38:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v36);
        goto LABEL_39;
      }

      v23 = __p[0];
    }

    else
    {
      v9 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v9 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
      }

      std::operator+<char>();
      v16 = std::string::append(&v29, ") at the given time: ");
      v17 = *&v16->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v28, *a2);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v28;
      }

      else
      {
        v18 = v28.__r_.__value_.__r.__words[0];
      }

      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v28.__r_.__value_.__l.__size_;
      }

      v20 = std::string::append(&v35, v18, size);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v31 = v20->__r_.__value_.__r.__words[2];
      *__p = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v32;
      v22 = v34;
      *(a3 + 24) = v33;
      *(a3 + 32) = v22;
      *(a3 + 39) = *(&v34 + 7);
      LOBYTE(v22) = HIBYTE(v34);
      v34 = 0uLL;
      v33 = 0;
      *a3 = 0;
      *(a3 + 47) = v22;
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      v23 = v29.__r_.__value_.__r.__words[0];
    }

    operator delete(v23);
    goto LABEL_38;
  }

  v8 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v8 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a3 + 8) = v32;
  v10 = v34;
  *(a3 + 24) = v33;
  *(a3 + 32) = v10;
  *(a3 + 39) = *(&v34 + 7);
  LOBYTE(v10) = HIBYTE(v34);
  v34 = 0uLL;
  v33 = 0;
  *a3 = 0;
  *(a3 + 47) = v10;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  v27 = *MEMORY[0x277D85DE8];
}

void sub_247584240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 80));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 56));
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v44 = 0;
    v6 = *a2;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(v43))
      {
        v7 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(v43);
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
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v40);
        goto LABEL_46;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v43);
      {
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(v43);
        v18 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v42, v17);
        if (v42.__r_.__value_.__l.__size_)
        {
          v19 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(v18);
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
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v40);
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

void sub_247584714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 49)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::VtArray<float>::emplace_back<float>(uint64_t a1, _DWORD *a2)
{
  if (!*(a1 + 8))
  {
    v4 = *a1;
    if (*(a1 + 24))
    {
      goto LABEL_14;
    }

    v5 = *(a1 + 32);
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = atomic_load((v5 - 16));
    if (v6 != 1)
    {
      goto LABEL_14;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      if (*(a1 + 24))
      {
        v7 = a1;
      }

      else
      {
        v7 = (v5 - 8);
      }

      v8 = *v7;
    }

    else
    {
LABEL_10:
      v8 = 0;
    }

    if (v4 != v8)
    {
      *(v5 + 4 * v4) = *a2;
LABEL_13:
      ++*a1;
      return;
    }

LABEL_14:
    v9 = *(a1 + 32);
    v10 = 1;
    do
    {
      v11 = v10;
      v10 *= 2;
    }

    while (v11 < v4 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<float>::_AllocateNew(a1, v11);
    v13 = New;
    if (v4)
    {
      v14 = 4 * v4;
      v15 = New;
      do
      {
        v16 = *v9++;
        *v15++ = v16;
        v14 -= 4;
      }

      while (v14);
    }

    *(New + v4) = *a2;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
    *(a1 + 32) = v13;
    goto LABEL_13;
  }

  if (*(a1 + 12))
  {
    *(a1 + 16);
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
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
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(a1, __p, a2);
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

void sub_247584D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
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

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v44 = 0;
    v6 = *a2;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<double>>(v43))
      {
        v7 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<double>>(v43);
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
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v40);
        goto LABEL_46;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v43);
      {
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<double>>(v43);
        v18 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v42, v17);
        if (v42.__r_.__value_.__l.__size_)
        {
          v19 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<double>>(v18);
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
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v40);
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

void sub_2475851B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<double>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 56)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<double>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<double>>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<double>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<double>>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<double>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<double>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void std::vector<int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n, std::vector<unsigned int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_247758360)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_247758350)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_247758360)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_247758350)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_247585890(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *std::vector<unsigned int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_247585AD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_247585B84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void sub_247585BFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v37 = 0;
    v6 = *a2;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(v36))
      {
        v7 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::TfToken>(v36);
        if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v7 &= 0xFFFFFFFFFFFFFFF8;
        }

        *a3 = 1;
        *(a3 + 8) = v7;
        goto LABEL_44;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v36);
      {
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::TfToken>(v36);
        v14 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v35, v13);
        if (v35.__r_.__value_.__l.__size_)
        {
          v15 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::TfToken>(v14);
          if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v15 &= 0xFFFFFFFFFFFFFFF8;
          }

          *a3 = 1;
          *(a3 + 8) = v15;
        }

        else
        {
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a3 + 8) = v32;
          v26 = v34;
          *(a3 + 24) = v33;
          *(a3 + 32) = v26;
          *(a3 + 39) = *(&v34 + 7);
          LOBYTE(v26) = HIBYTE(v34);
          v34 = 0uLL;
          v33 = 0;
          *a3 = 0;
          *(a3 + 47) = v26;
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v35);
        goto LABEL_44;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v32;
      v24 = v34;
      *(a3 + 24) = v33;
      *(a3 + 32) = v24;
      *(a3 + 39) = *(&v34 + 7);
      LOBYTE(v24) = HIBYTE(v34);
      v34 = 0uLL;
      v33 = 0;
      *a3 = 0;
      *(a3 + 47) = v24;
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
LABEL_44:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v36);
        goto LABEL_45;
      }

      v23 = __p[0];
    }

    else
    {
      v9 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v9 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
      }

      std::operator+<char>();
      v16 = std::string::append(&v29, ") at the given time: ");
      v17 = *&v16->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v28, *a2);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v28;
      }

      else
      {
        v18 = v28.__r_.__value_.__r.__words[0];
      }

      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v28.__r_.__value_.__l.__size_;
      }

      v20 = std::string::append(&v35, v18, size);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v31 = v20->__r_.__value_.__r.__words[2];
      *__p = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v32;
      v22 = v34;
      *(a3 + 24) = v33;
      *(a3 + 32) = v22;
      *(a3 + 39) = *(&v34 + 7);
      LOBYTE(v22) = HIBYTE(v34);
      v34 = 0uLL;
      v33 = 0;
      *a3 = 0;
      *(a3 + 47) = v22;
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      v23 = v29.__r_.__value_.__r.__words[0];
    }

    operator delete(v23);
    goto LABEL_44;
  }

  v8 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v8 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a3 + 8) = v32;
  v10 = v34;
  *(a3 + 24) = v33;
  *(a3 + 32) = v10;
  *(a3 + 39) = *(&v34 + 7);
  LOBYTE(v10) = HIBYTE(v34);
  v34 = 0uLL;
  v33 = 0;
  *a3 = 0;
  *(a3 + 47) = v10;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_45:
  v27 = *MEMORY[0x277D85DE8];
}