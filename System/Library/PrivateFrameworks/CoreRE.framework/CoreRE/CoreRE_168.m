float re::OptionalMaterialSamplerData::OptionalMaterialSamplerData(uint64_t a1, uint64_t a2)
{
  *a1 = 266;
  *(a1 + 2) = *a2;
  *(a1 + 3) = 1;
  *(a1 + 4) = *(a2 + 1);
  *(a1 + 8) = 1;
  *(a1 + 12) = *(a2 + 4);
  *(a1 + 16) = 1;
  *(a1 + 20) = *(a2 + 8);
  *(a1 + 24) = 1;
  *(a1 + 28) = *(a2 + 12);
  *(a1 + 32) = 1;
  *(a1 + 36) = *(a2 + 16);
  *(a1 + 40) = 1;
  *(a1 + 44) = *(a2 + 20);
  *(a1 + 48) = 1;
  *(a1 + 52) = *(a2 + 24);
  *(a1 + 56) = 1;
  *(a1 + 60) = *(a2 + 28);
  *(a1 + 64) = 1;
  *(a1 + 68) = *(a2 + 32);
  *(a1 + 72) = 1;
  *(a1 + 76) = *(a2 + 36);
  *(a1 + 80) = 1;
  result = *(a2 + 40);
  *(a1 + 84) = result;
  *(a1 + 88) = 1;
  *(a1 + 96) = *(a2 + 48);
  return result;
}

id re::MaterialSamplerData::fromDescriptor@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = [*a1 normalizedCoordinates];
  *(a2 + 4) = [*a1 rAddressMode];
  *(a2 + 8) = [*a1 sAddressMode];
  *(a2 + 12) = [*a1 tAddressMode];
  *(a2 + 16) = [*a1 borderColor];
  *(a2 + 20) = [*a1 minFilter];
  *(a2 + 24) = [*a1 magFilter];
  *(a2 + 28) = [*a1 mipFilter];
  [*a1 lodMinClamp];
  *(a2 + 36) = v4;
  [*a1 lodMaxClamp];
  *(a2 + 40) = v5;
  *(a2 + 1) = [*a1 lodAverage];
  *(a2 + 48) = [*a1 maxAnisotropy];
  result = [*a1 compareFunction];
  *(a2 + 32) = result;
  return result;
}

void *re::FunctionLink::appendFunctionConstant(uint64_t a1, const re::DynamicString *a2, char *a3, unsigned __int16 a4)
{
  Size = MTLDataTypeGetSize();
  v9 = *(a1 + 248);
  v10 = re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 184, a2);
  if (v10)
  {
    v11 = *v10;

    return re::DynamicArray<REFrameAnalysisBottleneck>::copy((a1 + 232), v11, a3, Size);
  }

  else
  {
    re::DynamicArray<REFrameAnalysisBottleneck>::copy((a1 + 232), v9, a3, Size);
    *&v13 = v9;
    *(&v13 + 1) = a4;
    return re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a1 + 184, a2, &v13);
  }
}

unint64_t re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + (v7 << 6) + 40;
  }
}

unint64_t re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, _OWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v12, a2);
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + (HIDWORD(v10) << 6) + 40;
  }

  v7 = re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v10, v9);
  re::DynamicString::DynamicString((v7 + 8), a2);
  result = v7 + 40;
  *(v7 + 40) = *a3;
  ++*(a1 + 40);
  return result;
}

re::DynamicString *std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__emplace[abi:nn200100]<0ul,char const*,re::Allocator *>(re::DynamicString *this, const char **a2, re::Allocator **a3)
{
  v6 = *(this + 8);
  if (v6 != -1)
  {
    __const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_11AssetHandleEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0[v6](&v8, this);
  }

  *(this + 8) = -1;
  result = re::DynamicString::DynamicString(this, *a2, *a3);
  *(this + 8) = 0;
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::DynamicString::operator==(v10 + (v8 << 6) + 8, a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + (v8 << 6)) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + (v11 << 6) + 8, a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + (v12 << 6)) & 0x7FFFFFFF;
      LODWORD(v8) = v12;
      if (v11 == 0x7FFFFFFF)
      {
        LODWORD(v8) = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::generatePatchPlane@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = 0;
  v77 = *MEMORY[0x1E69E9840];
  v72 = 0;
  v69[1] = 0;
  v70 = 0;
  v69[0] = 0;
  v71 = 0;
  v7 = *a2;
  v8 = 1.0;
  do
  {
    v9 = 0;
    do
    {
      v10.n128_f32[0] = (v9 / v7) + -0.5;
      v11 = (v6 / *(a2 + 8)) + -0.5;
      if (*(a2 + 16))
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      v10.n128_u32[1] = 0;
      v10.n128_u32[2] = 0;
      v10.n128_f32[3] = v8;
      v50 = v10;
      *(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3))) = v11;
      v62 = v50;
      *&v13 = re::DynamicArray<re::Vector4<float>>::add(v69, &v62).n128_u64[0];
      v8 = 1.0;
      ++v9;
      v7 = *a2;
    }

    while (v9 <= *a2);
    ++v6;
    v14 = *(a2 + 8);
  }

  while (v6 <= v14);
  v68 = 0;
  v65[1] = 0;
  v66 = 0;
  v65[0] = 0;
  v67 = 0;
  if (v14)
  {
    v15 = 0;
    do
    {
      v16 = v15 + 1;
      if (v7)
      {
        v17 = 0;
        do
        {
          if (*(a2 + 16))
          {
            v18 = v17 + 1;
            v19 = v7 + 1;
            v20 = (v7 + 1) * v15;
            v21 = v20 + v17 + 1;
            v22 = v19 * v16;
            v23 = v19 * v16 + v17;
          }

          else
          {
            v24 = v7 + 1;
            v22 = (v7 + 1) * v15;
            v21 = v22 + v17;
            v20 = v24 * v16;
            v18 = v17 + 1;
            v23 = v20 + v17 + 1;
          }

          v62.n128_u64[0] = v21 | ((v22 + v18) << 48) | ((v20 + v17) << 16) | (v23 << 32);
          re::DynamicArray<unsigned short>::add(v65, &v62);
          re::DynamicArray<unsigned short>::add(v65, &v62.n128_u16[3]);
          re::DynamicArray<unsigned short>::add(v65, &v62.n128_u16[1]);
          re::DynamicArray<unsigned short>::add(v65, &v62.n128_u16[3]);
          re::DynamicArray<unsigned short>::add(v65, &v62.n128_u16[2]);
          re::DynamicArray<unsigned short>::add(v65, &v62.n128_u16[1]);
          v7 = *a2;
          v17 = v18;
        }

        while (v18 < *a2);
        v14 = *(a2 + 8);
      }

      ++v15;
    }

    while (v16 < v14);
  }

  v62.n128_u64[0] = 0;
  v62.n128_u32[2] = 0;
  v25 = [*(a1 + 208) newBufferWithBytes:v72 length:16 * v70 options:{0, v13}];
  LOWORD(v57[0]) = 287;
  *(&v57[0] + 1) = v25;
  v58 = 0;
  v59 = 0;
  v60 = [(_anonymous_namespace_ *)v25 length];
  v61 = 0xFFFFFFFF00000000;
  re::DynamicInlineArray<re::NamedVertexBuffer,2ul>::add(&v62, v56);
  if (v58 != -1)
  {
    (off_1F5D042D0[v58])(&v75, v57 + 8);
  }

  v58 = -1;
  if (*v56 && (v56[8] & 1) != 0)
  {
    (*(**v56 + 40))();
  }

  if (v25)
  {
  }

  v26 = [*(a1 + 208) newBufferWithBytes:v68 length:2 * v66 options:0];
  LOWORD(v57[0]) = 49;
  *(&v57[0] + 1) = v26;
  v58 = 0;
  v59 = 0;
  v60 = [(_anonymous_namespace_ *)v26 length];
  v61 = 0xFFFFFFFF00000000;
  re::DynamicInlineArray<re::NamedVertexBuffer,2ul>::add(&v62, v56);
  if (v58 != -1)
  {
    (off_1F5D042D0[v58])(&v75, v57 + 8);
  }

  v58 = -1;
  if (*v56 && (v56[8] & 1) != 0)
  {
    (*(**v56 + 40))();
  }

  if (v26)
  {
  }

  v27.i32[0] = 0;
  v28.i32[0] = *(a2 + 16);
  v29 = vdupq_lane_s32(*&vceqq_s32(v28, v27), 0);
  v55[0] = vbslq_s8(v29, xmmword_1E30A32E0, xmmword_1E30A32D0);
  v55[1] = vbslq_s8(v29, xmmword_1E309E550, xmmword_1E30A32C0);
  std::to_string(&v52, *a2);
  v30 = std::string::insert(&v52, 0, "PlanePatch-");
  v31 = v30->__r_.__value_.__r.__words[2];
  *&v75.__r_.__value_.__l.__data_ = *&v30->__r_.__value_.__l.__data_;
  v75.__r_.__value_.__r.__words[2] = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v75, "x");
  v33 = v32->__r_.__value_.__r.__words[2];
  *v56 = *&v32->__r_.__value_.__l.__data_;
  *&v56[16] = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v51, *(a2 + 8));
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = &v51;
  }

  else
  {
    v34 = v51.__r_.__value_.__r.__words[0];
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v51.__r_.__value_.__l.__size_;
  }

  v36 = std::string::append(v56, v34, size);
  v37 = v36->__r_.__value_.__r.__words[2];
  *__p = *&v36->__r_.__value_.__l.__data_;
  v54 = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if ((v56[23] & 0x80000000) != 0)
  {
    operator delete(*v56);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (v54 >= 0)
  {
    v38 = __p;
  }

  else
  {
    v38 = __p[0];
  }

  v51.__r_.__value_.__r.__words[0] = 0;
  v51.__r_.__value_.__l.__size_ = &str_67;
  v39 = v66;
  v40 = v70;
  v42 = re::globalAllocators(v41);
  v43 = (*(*v42[2] + 32))(v42[2], 544, 16);
  *&v52.__r_.__value_.__l.__data_ = *&v51.__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[0] = 0;
  v51.__r_.__value_.__l.__size_ = &str_67;
  *v56 = xmmword_1E3047670;
  *&v56[16] = xmmword_1E3047680;
  v57[0] = xmmword_1E30476A0;
  v57[1] = xmmword_1E30474D0;
  v74 = 0;
  v73 = 0;
  v44 = re::MeshPart::MeshPart(v43, &v52, 0, &v63, v62.n128_u64[0], v39, v40, 1, v55, 0, v56, &v73, -1, 0);
  v75.__r_.__value_.__r.__words[0] = &unk_1F5D042F0;
  v76 = &v75;
  a3[4] = (a3 + 1);
  *a3 = v44;
  a3[1] = &unk_1F5D042F0;
  v45 = std::__function::__value_func<void ()(re::MeshPart *)>::~__value_func[abi:nn200100](&v75);
  if (v52.__r_.__value_.__s.__data_[0])
  {
    if (v52.__r_.__value_.__s.__data_[0])
    {
    }
  }

  if (v51.__r_.__value_.__s.__data_[0])
  {
    if (v51.__r_.__value_.__s.__data_[0])
    {
    }
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
  }

  if (v62.n128_u64[0])
  {
    v46 = 88 * v62.n128_u64[0];
    v47 = &v64;
    do
    {
      v48 = *(v47 + 6);
      if (v48 != -1)
      {
        (off_1F5D042D0[v48])(v56, v47);
      }

      *(v47 + 6) = -1;
      re::DynamicString::deinit((v47 - 5));
      v47 += 11;
      v46 -= 88;
    }

    while (v46);
  }

  if (v65[0] && v68)
  {
    (*(*v65[0] + 40))();
  }

  result = v69[0];
  if (v69[0])
  {
    if (v72)
    {
      return (*(*v69[0] + 40))();
    }
  }

  return result;
}

uint64_t re::DynamicInlineArray<re::NamedVertexBuffer,2ul>::add(uint64_t a1, uint64_t a2)
{
  if (*a1 >= 2uLL)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v4 = a1 + 88 * *a1;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 40) = *(a2 + 24);
    v5 = *(a2 + 8);
    *(v4 + 16) = *a2;
    *a2 = 0;
    v6 = *(a2 + 16);
    *(a2 + 24) = 0;
    v8 = *(v4 + 24);
    v7 = *(v4 + 32);
    *(v4 + 24) = v5;
    *(v4 + 32) = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = v7;
    LOWORD(v6) = *(a2 + 32);
    *(v4 + 56) = 0;
    v4 += 56;
    *(v4 - 8) = v6;
    *(v4 + 24) = -1;
    result = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v4, a2 + 40);
    *(v4 + 32) = *(a2 + 72);
    *(v4 + 40) = *(a2 + 80);
    ++*a1;
    ++*(a1 + 8);
  }

  return result;
}

re *std::__function::__func<std::unique_ptr<re::MeshPart,std::function<void ()(re::MeshPart*)>> re::makeDefaultUniquePtr<re::MeshPart,re::StringID,int,re::DynamicInlineArray<re::NamedVertexBuffer,2ul> &,int,int,int,re::AABB const&,int>(re::StringID,int,re::DynamicInlineArray<re::NamedVertexBuffer,2ul> &,int,int,int,re::AABB const&,int &&)::{lambda(re::MeshPart*)#1},std::allocator<re::MeshPart*>,void ()(re::StringID,int,re::DynamicInlineArray<re::NamedVertexBuffer,2ul> &,int,int,int,re::AABB const&,int &&)>::operator()(re *result, void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::StringID::destroyString((v2 + 61));
    re::FixedArray<re::StringID>::deinit(v2 + 41);
    re::AttributeTable::~AttributeTable(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<std::unique_ptr<re::MeshPart,std::function<void ()(re::MeshPart*)>> re::makeDefaultUniquePtr<re::MeshPart,re::StringID,int,re::DynamicInlineArray<re::NamedVertexBuffer,2ul> &,int,int,int,re::AABB const&,int>(re::StringID,int,re::DynamicInlineArray<re::NamedVertexBuffer,2ul> &,int,int,int,re::AABB const&,int &&)::{lambda(re::MeshPart*)#1},std::allocator<re::MeshPart*>,void ()(re::StringID,int,re::DynamicInlineArray<re::NamedVertexBuffer,2ul> &,int,int,int,re::AABB const&,int &&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::MeshPart *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t re::SelectionMeshVisitor::visitMeshScene(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*(a2 + 472) != 0.0 && (*(a2 + 716) & 1) == 0)
  {
    *(a1 + 16) = *(a2 + 208);
    *(a1 + 32) = *(a2 + 224);
    *(a1 + 48) = *(a2 + 240);
    *(a1 + 64) = *(a2 + 256);
    *(a1 + 80) = *(a2 + 272);
    *(a1 + 88) = *(a2 + 192);
    *(a1 + 104) = *(a2 + 296);
    *(a1 + 120) = *(a2 + 280);
    *(a1 + 136) = *(a2 + 328);
    *(a1 + 152) = *(a2 + 312);
    *(a1 + 168) = *(a2 + 344);
    return (*(a2 + 472) != 0.0) & (*(a2 + 716) ^ 1u);
  }

  return v2;
}

uint64_t re::SelectionMeshVisitor::visitMeshInstance(uint64_t a1, uint64_t a2)
{
  result = re::MeshVisitor::visitMeshInstance(a1, a2);
  if (result)
  {
    *(a1 + 176) = *(a2 + 112);
  }

  return result;
}

uint64_t re::SelectionMeshVisitor::visitMeshPart(re::MeshVisitor *a1, uint64_t a2)
{
  v3 = a1;
  v140 = *MEMORY[0x1E69E9840];
  result = re::MeshVisitor::findLevelIndex(a1, *(a2 + 24));
  if ((result & 0x80000000) == 0)
  {
    v6 = *(a2 + 72);
    v7 = *(v3 + 12);
    if (v7 <= v6)
    {
      goto LABEL_107;
    }

    v8 = *(*(v3 + 11) + 8 * v6);
    if (*(v8 + 256))
    {
      v9 = 0;
      v10 = *(a2 + 48);
      v11 = *(v10 + 528);
    }

    else
    {
      v12 = *(v8 + 280);
      v10 = *(a2 + 48);
      v11 = *(v10 + 528);
      if (v12)
      {
        v9 = 0;
      }

      else
      {
        v11 = (v11 ^ *(*(v3 + 39) + 296)) & ~*(*(v3 + 39) + 300) | *(*(v3 + 39) + 300) & *(*(v3 + 39) + 296);
        v9 = 1;
      }
    }

    v72[0] = *a2;
    v72[1] = 0;
    v72[2] = *(a2 + 40);
    v72[3] = v10;
    v72[4] = 0;
    v73 = 0;
    v74 = *(a2 + 32);
    v75 = 0xFFFF010000000000;
    v76 = 0xFFFFFFFFLL;
    v67 = a2;
    v13 = *(a2 + 56);
    v14 = v13[2];
    v15 = v13[3];
    v16 = v13[1];
    v77 = *v13;
    v78 = v16;
    v79 = v14;
    v80 = v15;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v83 = 0;
    v82 = 0u;
    v81 = 0;
    v88 = v11;
    v89 = -NAN;
    v90 = 0;
    v91 = 0xFFFFFFFFLL;
    v92 = 0;
    v93 = 0;
    re::globalAllocators(result);
    v17 = *(*(v3 + 40) + 32);
    v18 = (*(*v17 + 32))(v17, 336, 16);
    v19 = *(*(v3 + 40) + 32);
    *(v18 + 48) = 0;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0u;
    *v18 = 0u;
    *(v18 + 56) = 0u;
    *(v18 + 72) = 0u;
    *(v18 + 88) = 0u;
    *(v18 + 104) = 0u;
    *(v18 + 120) = 0;
    *(v18 + 192) = 0;
    *(v18 + 200) = 0;
    *(v18 + 208) = 0;
    *(v18 + 224) = 0;
    *(v18 + 128) = 0u;
    *(v18 + 144) = 0u;
    *(v18 + 160) = 0u;
    *(v18 + 176) = 0;
    *(v18 + 184) = v19;
    *(v18 + 232) = xmmword_1E304F3C0;
    *(v18 + 248) = 0;
    *(v18 + 252) = 10854;
    __asm { FMOV            V0.2S, #1.0 }

    *(v18 + 256) = _D0;
    *(v18 + 264) = 0;
    *(v18 + 272) = 0;
    *(v18 + 320) = 0;
    *(&v104 + 1) = re::globalAllocators(v18)[2];
    *&v103 = &unk_1F5D043C8;
    *&v105 = &v103;
    v25 = (*(*v17 + 16))(v17, v18, &v103);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v103);
    v26 = *(v3 + 12);
    if ((v9 & 1) != 0 || v26 <= v6)
    {
      v27 = (v3 + 312);
    }

    else
    {
      v27 = (*(v3 + 11) + 8 * v6);
    }

    *(v25 + 56) = *v27;
    if (*(v3 + 3) > v6)
    {
      if (v26 > v6)
      {
        v28 = *(v3 + 2) + 24 * v6;
      }

      else
      {
        v28 = 0;
      }

      *v25 = v28;
    }

    if (*(v3 + 5) > v6)
    {
      if (v26 > v6)
      {
        v29 = *(v3 + 4) + 24 * v6;
      }

      else
      {
        v29 = 0;
      }

      *(v25 + 8) = v29;
    }

    *(v25 + 16) = *(v3 + 3);
    *(v25 + 32) = *(v3 + 4);
    *(v25 + 48) = *(v3 + 80);
    if (*(v3 + 16) <= v6)
    {
      v30 = 0;
    }

    else
    {
      v30 = *(*(v3 + 15) + 8 * v6);
    }

    *(v25 + 72) = v30;
    if (*(v3 + 18) <= v6)
    {
      v31 = 0;
    }

    else
    {
      v31 = *(*(v3 + 17) + 8 * v6);
    }

    *(v25 + 80) = v31;
    if (*(v3 + 14) <= v6)
    {
      v32 = 0;
    }

    else
    {
      v32 = *(*(v3 + 13) + 8 * v6);
    }

    *(v25 + 64) = v32;
    v33 = *(v3 + 22);
    if (v33 < *(v3 + 20))
    {
      v34 = (*(v3 + 19) + 16 * v33);
      if (v34[1] <= v6)
      {
        v35 = 0;
      }

      else
      {
        v35 = *(*v34 + 8 * v6);
      }

      *(v25 + 96) = v35;
    }

    v73 = v25;
    v70 = *(*(v3 + 38) + 16);
    v36 = *(*(v3 + 40) + 32);
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    v101 = 0x7FFFFFFFLL;
    v69 = v36;
    re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(&v98, v36, 10);
    v37 = 0;
    v124 = vextq_s8(*(v25 + 64), *(v25 + 64), 8uLL);
    v38 = *(v25 + 56) + 304;
    v125 = *(v25 + 88);
    v126 = v38;
    v71 = v3;
    while (1)
    {
      v68 = v37;
      v39 = *(v124.i64 + v37);
      if (v39)
      {
        if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
        {
          dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
        }

        v40 = re::MaterialParameterTable::passTechniqueHashTable(v39, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash, 1);
        v41 = v40;
        v42 = *(v40 + 8);
        if (v42)
        {
          v43 = 0;
          v44 = v40[2];
          while (1)
          {
            v45 = *v44;
            v44 += 6;
            if (v45 < 0)
            {
              break;
            }

            if (v42 == ++v43)
            {
              LODWORD(v43) = *(v40 + 8);
              break;
            }
          }
        }

        else
        {
          LODWORD(v43) = 0;
        }

        if (v43 != v42)
        {
          break;
        }
      }

LABEL_103:
      v37 = v68 + 8;
      if (v68 == 24)
      {
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v98);
        return re::DynamicArray<re::TransitionCondition *>::add(*(v3 + 38), v67);
      }
    }

    v46 = v40[2];
    while (1)
    {
      v47 = v46 + 24 * v43;
      if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(&v98, (v47 + 8)))
      {
        goto LABEL_94;
      }

      v48 = *(v3 + 37);
      re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(&v103, v48, *(v47 + 8), *(v47 + 8));
      if (HIDWORD(v103) == 0x7FFFFFFF)
      {
        re::DrawTable::DrawTable(&v103, v69, 1uLL);
        v135 = 0uLL;
        *&v136 = 0;
        re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(&v135, v48, *(v47 + 8), *(v47 + 8));
        if (HIDWORD(v135) == 0x7FFFFFFF)
        {
          v49 = re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v48, DWORD2(v135), v135);
          *(v49 + 8) = *(v47 + 8);
          *(v49 + 16) = 0;
          v50 = v49 + 16;
          *(v49 + 24) = 0;
          *(v49 + 32) = 1;
          *(v49 + 64) = 0;
          *(v49 + 48) = 0;
          *(v49 + 56) = 0;
          *(v49 + 40) = 0;
          re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v49 + 16, &v103);
          *(v49 + 72) = 0;
          *(v49 + 80) = 0;
          *(v49 + 88) = 1;
          *(v49 + 104) = 0;
          *(v49 + 112) = 0;
          *(v49 + 96) = 0;
          *(v49 + 120) = 0;
          re::BucketArray<re::FixedArray<int>,8ul>::swap(v49 + 72, &v108);
          *(v49 + 128) = 0;
          *(v49 + 136) = 0;
          *(v49 + 144) = 1;
          *(v49 + 160) = 0;
          *(v49 + 168) = 0;
          *(v49 + 152) = 0;
          *(v49 + 176) = 0;
          re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v49 + 128, &v110 + 8);
          *(v49 + 184) = 0;
          *(v49 + 192) = 0;
          *(v49 + 200) = 1;
          *(v49 + 216) = 0;
          *(v49 + 224) = 0;
          *(v49 + 208) = 0;
          *(v49 + 232) = 0;
          re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v49 + 184, &v118);
          *(v49 + 240) = 0;
          *(v49 + 248) = 0;
          v49 += 240;
          *(v49 + 16) = 1;
          *(v49 + 32) = 0;
          *(v49 + 40) = 0;
          *(v49 + 24) = 0;
          *(v49 + 48) = 0;
          re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v49, &v122);
          *(v49 + 96) = 1;
          v51 = (v49 + 56);
          v3 = v71;
          re::InlineFunction<40ul,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator=(v51, v123);
          ++*(v48 + 40);
        }

        else
        {
          v50 = *(v48 + 16) + 344 * HIDWORD(v135) + 16;
        }

        re::DrawTable::~DrawTable(&v103);
      }

      else
      {
        v50 = *(v48 + 16) + 344 * HIDWORD(v103) + 16;
      }

      v52 = *(v25 + 56);
      re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v52 + 24, (v47 + 16), *(v47 + 16), &v103);
      if (HIDWORD(v103) != 0x7FFFFFFF)
      {
        break;
      }

      v53 = *(v3 + 40);
      memset(v94, 0, sizeof(v94));
      v95 = 0;
      v54 = re::addDrawCall(v50, v72, v53, 0, v94);
      *(v54 + 44) = -1;
      *v54 = *v54 & 0xFFCF | 0x10;
      *(v54 + 12) = v70;
      re::BucketArray<re::DrawCall,128ul>::add(v50, v54);
LABEL_87:
      v61 = *(v47 + 8);
      v62 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v61 ^ (v61 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v61 ^ (v61 >> 30))) >> 27));
      v63 = v62 ^ (v62 >> 31);
      if (DWORD2(v99))
      {
        v64 = v63 % DWORD2(v99);
        v65 = *(*(&v98 + 1) + 4 * v64);
        if (v65 != 0x7FFFFFFF)
        {
          while (*(v99 + 24 * v65 + 16) != v61)
          {
            LODWORD(v65) = *(v99 + 24 * v65 + 8) & 0x7FFFFFFF;
            if (v65 == 0x7FFFFFFF)
            {
              goto LABEL_93;
            }
          }

          goto LABEL_94;
        }
      }

      else
      {
        LODWORD(v64) = 0;
      }

LABEL_93:
      re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addAsCopy(&v98, v64, v63, v47 + 8, (v47 + 8));
      ++HIDWORD(v101);
LABEL_94:
      if (*(v41 + 8) <= (v43 + 1))
      {
        v66 = v43 + 1;
      }

      else
      {
        v66 = *(v41 + 8);
      }

      v46 = v41[2];
      while (v66 - 1 != v43)
      {
        LODWORD(v43) = v43 + 1;
        if ((*(v46 + 24 * v43) & 0x80000000) != 0)
        {
          goto LABEL_102;
        }
      }

      LODWORD(v43) = v66;
LABEL_102:
      if (v43 == v42)
      {
        goto LABEL_103;
      }
    }

    v55 = *(v52 + 40);
    LOWORD(v103) = 263;
    v56 = v55 + 48 * HIDWORD(v103);
    *(&v103 + 2) = 0x1000000;
    *(&v103 + 6) = 0xFFFF0000FFFFLL;
    *&v105 = 0;
    v104 = 0uLL;
    *(&v105 + 1) = 0xFFFFFFFF00000000;
    v106 = 0;
    *&v108 = 0;
    *v109 = 0;
    v109[8] = 0;
    DWORD2(v110) = 0;
    v112 = 0;
    memset(&v109[12], 0, 18);
    v111 = 0uLL;
    v114 = 0xFF00000007FFFFFFLL;
    v115 = 0;
    v117 = 0;
    v119 = 0;
    if (!*(v56 + 24))
    {
LABEL_86:
      v3 = v71;
      goto LABEL_87;
    }

    v57 = v71[40];
    memset(v96, 0, sizeof(v96));
    v97 = 0;
    v58 = re::addDrawCall(v50, v72, v57, 0, v96);
    *v58 = *v58 & 0xFFCF | 0x10;
    *(v58 + 12) = v70;
    v59 = *(v56 + 24);
    if (!v59)
    {
      v102 = 0;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v135 = 0u;
      v6 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v127 = 136315906;
      v128 = "operator[]";
      v129 = 1024;
      v130 = 476;
      v131 = 2048;
      v132 = 0;
      v133 = 2048;
      v134 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_107:
      re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v7, v67);
      _os_crash();
      __break(1u);
    }

    *(v58 + 44) = **(v56 + 32);
    v103 = *v58;
    v104 = *(v58 + 16);
    v105 = *(v58 + 32);
    if (v106)
    {
      if ((*(v58 + 48) & 1) == 0)
      {
        v106 = 0;
        goto LABEL_65;
      }
    }

    else
    {
      if ((*(v58 + 48) & 1) == 0)
      {
        goto LABEL_65;
      }

      v106 = 1;
    }

    v107 = *(v58 + 52);
LABEL_65:
    *v109 = *(v58 + 72);
    *&v109[16] = *(v58 + 88);
    v110 = *(v58 + 104);
    v111 = *(v58 + 120);
    v108 = *(v58 + 56);
    LOBYTE(v112) = *(v58 + 144);
    if ((v112 & 0x100) != 0)
    {
      if ((*(v58 + 145) & 1) == 0)
      {
        HIBYTE(v112) = 0;
        goto LABEL_71;
      }
    }

    else
    {
      if ((*(v58 + 145) & 1) == 0)
      {
        goto LABEL_71;
      }

      HIBYTE(v112) = 1;
    }

    v113 = *(v58 + 146);
LABEL_71:
    v114 = *(v58 + 147);
    if (v115)
    {
      if ((*(v58 + 156) & 1) == 0)
      {
        v115 = 0;
        goto LABEL_77;
      }
    }

    else
    {
      if ((*(v58 + 156) & 1) == 0)
      {
        goto LABEL_77;
      }

      v115 = 1;
    }

    v116 = *(v58 + 160);
LABEL_77:
    v117 = *(v58 + 164);
    if (v119)
    {
      if ((*(v58 + 176) & 1) == 0)
      {
        v119 = 0;
        goto LABEL_83;
      }
    }

    else
    {
      if ((*(v58 + 176) & 1) == 0)
      {
        goto LABEL_83;
      }

      v119 = 1;
    }

    v120 = *(v58 + 192);
    v121 = *(v58 + 208);
LABEL_83:
    if (v59 != 1)
    {
      v60 = 1;
      do
      {
        HIDWORD(v105) = *(*(v56 + 32) + 4 * v60);
        re::BucketArray<re::DrawCall,128ul>::add(v50, &v103);
        ++v60;
      }

      while (v60 < *(v56 + 24));
    }

    goto LABEL_86;
  }

  return result;
}

__n128 re::BucketArray<re::DrawCall,128ul>::add(uint64_t a1, __int128 *a2)
{
  v3 = re::BucketArray<re::DrawCall,128ul>::addUninitialized(a1);
  v4 = a2[2];
  v5 = *a2;
  *(v3 + 16) = a2[1];
  *(v3 + 32) = v4;
  *v3 = v5;
  v6 = *(a2 + 48);
  *(v3 + 48) = v6;
  if (v6 == 1)
  {
    *(v3 + 52) = *(a2 + 13);
  }

  *(v3 + 56) = *(a2 + 56);
  result = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = *(a2 + 104);
  *(v3 + 120) = *(a2 + 120);
  *(v3 + 104) = v9;
  *(v3 + 88) = v8;
  *(v3 + 72) = result;
  *(v3 + 144) = *(a2 + 144);
  v10 = *(a2 + 145);
  *(v3 + 145) = v10;
  if (v10 == 1)
  {
    *(v3 + 146) = *(a2 + 146);
  }

  *(v3 + 147) = *(a2 + 147);
  v11 = *(a2 + 156);
  *(v3 + 156) = v11;
  if (v11 == 1)
  {
    *(v3 + 160) = *(a2 + 40);
  }

  result.n128_u32[0] = *(a2 + 41);
  *(v3 + 164) = result.n128_u32[0];
  v12 = *(a2 + 176);
  *(v3 + 176) = v12;
  if (v12 == 1)
  {
    result = a2[12];
    v13 = a2[13];
    *(v3 + 192) = result;
    *(v3 + 208) = v13;
  }

  return result;
}

void *re::internal::Callable<re::SelectionMeshVisitor::visitMeshPart(re::MeshPartVisitorContext const&)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D043C8;
  return result;
}

void *re::internal::Callable<re::SelectionMeshVisitor::visitMeshPart(re::MeshPartVisitorContext const&)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D043C8;
  return result;
}

re::DrawTable *re::DrawTable::DrawTable(re::DrawTable *this, re::Allocator *a2, unint64_t a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 1;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  re::BucketArray<re::DrawCall,128ul>::init(this, a2, a3);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 1;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 26) = 0;
  re::BucketArray<re::Matrix4x4<float>,128ul>::init(this + 56, a2, a3);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 1;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 40) = 0;
  re::BucketArray<re::ConstantTable const*,128ul>::init(this + 112, a2, a3);
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 1;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = 0;
  *(this + 54) = 0;
  re::BucketArray<float,128ul>::init(this + 168, a2, a3);
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 60) = 1;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 31) = 0;
  *(this + 68) = 0;
  re::BucketArray<unsigned int,128ul>::init(this + 224, a2, a3);
  *(this + 320) = 1;
  return this;
}

uint64_t re::BucketArray<re::DrawCall,128ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::DrawCall,128ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::DrawCall,128ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < a2 << 7)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 28672, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t *re::BucketArray<re::Matrix4x4<float>,128ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::Matrix4x4<float>,128ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::Matrix4x4<float>,128ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < a2 << 7)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 0x2000, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t *re::BucketArray<re::ConstantTable const*,128ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ConstantTable const*,128ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ConstantTable const*,128ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < a2 << 7)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 1024, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t *re::BucketArray<float,128ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<float,128ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<float,128ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < a2 << 7)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 512, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t *re::BucketArray<unsigned int,128ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<unsigned int,128ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<unsigned int,128ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < a2 << 7)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 512, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

void re::DrawTable::~DrawTable(void (***this)(void))
{
  if ((this[40] & 1) == 0)
  {
    (*this[35])();
    *(this + 320) = 1;
  }

  re::BucketArray<unsigned int,128ul>::deinit((this + 28));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((this + 28));
  re::BucketArray<unsigned int,128ul>::deinit((this + 21));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((this + 21));
  re::BucketArray<re::ConstantTable const*,128ul>::deinit((this + 14));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((this + 14));
  re::BucketArray<re::Matrix4x4<float>,128ul>::deinit((this + 7));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((this + 7));
  re::BucketArray<re::DrawCall,128ul>::deinit(this);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this);
}

uint64_t re::BucketArray<unsigned int,128ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<unsigned int,128ul>::operator[](a1, i);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<unsigned int,128ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 7)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 7)) + 4 * (a2 & 0x7F);
}

uint64_t re::BucketArray<re::ConstantTable const*,128ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::ConstantTable const*,128ul>::operator[](a1, i);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::ConstantTable const*,128ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 7)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 7)) + 8 * (a2 & 0x7F);
}

uint64_t re::BucketArray<re::Matrix4x4<float>,128ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](a1, i);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

unint64_t re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 7)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 7)) + ((a2 & 0x7F) << 6);
}

uint64_t re::BucketArray<re::DrawCall,128ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::DrawCall,128ul>::operator[](a1, i);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::DrawCall,128ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 7)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 7)) + 224 * (a2 & 0x7F);
}

uint64_t re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 344 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 344 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 344 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 344 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          *&v26[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v13 = *&v26[32];
          *(a1 + 24) = v14;
          ++*&v26[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 296;
            do
            {
              if ((*(*&v26[16] + v17 - 296) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *(*&v26[16] + v17 - 288) % *(a1 + 24));
                v19 = (*&v26[16] + v17);
                *(v18 + 8) = *(*&v26[16] + v17 - 288);
                *(v18 + 16) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 1;
                *(v18 + 64) = 0;
                *(v18 + 48) = 0;
                *(v18 + 56) = 0;
                *(v18 + 40) = 0;
                re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v18 + 16, (v19 - 280));
                *(v18 + 72) = 0;
                *(v18 + 80) = 0;
                *(v18 + 88) = 1;
                *(v18 + 104) = 0;
                *(v18 + 112) = 0;
                *(v18 + 96) = 0;
                *(v18 + 120) = 0;
                re::BucketArray<re::FixedArray<int>,8ul>::swap(v18 + 72, (v19 - 224));
                *(v18 + 128) = 0;
                *(v18 + 136) = 0;
                *(v18 + 144) = 1;
                *(v18 + 160) = 0;
                *(v18 + 168) = 0;
                *(v18 + 152) = 0;
                *(v18 + 176) = 0;
                re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v18 + 128, (v19 - 168));
                *(v18 + 184) = 0;
                *(v18 + 192) = 0;
                *(v18 + 200) = 1;
                *(v18 + 216) = 0;
                *(v18 + 224) = 0;
                *(v18 + 208) = 0;
                *(v18 + 232) = 0;
                re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v18 + 184, (v19 - 112));
                *(v18 + 240) = 0;
                *(v18 + 248) = 0;
                v18 += 240;
                *(v18 + 16) = 1;
                *(v18 + 32) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 48) = 0;
                re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v18, (v19 - 56));
                *(v18 + 96) = 1;
                re::InlineFunction<40ul,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator=((v18 + 56), v19);
                v15 = *&v26[32];
              }

              ++v16;
              v17 += 344;
            }

            while (v16 < v15);
          }

          re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 344 * v4);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 344 * v4);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = 344 * v4;
  *(v20 + v23) = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *(v20 + v23) = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v20 + 344 * v4;
}

void re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 344 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

double re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DrawTable::~DrawTable((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 344;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

_BYTE *re::InlineFunction<40ul,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator=(_BYTE *a1, _BYTE *a2)
{
  if (a1 != a2)
  {
    if ((a1[40] & 1) == 0)
    {
      (**a1)(a1);
      a1[40] = 1;
    }

    if ((a2[40] & 1) == 0)
    {
      (*(*a2 + 32))(a2, a1);
      if ((a2[40] & 1) == 0)
      {
        (**a2)(a2);
        a2[40] = 1;
      }

      a1[40] = 0;
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    if ((a1[40] & 1) == 0)
    {
      (**a1)(a1);
      a1[40] = 1;
    }

    if ((a2[40] & 1) == 0)
    {
      (*(*a2 + 24))(a2, a1);
      a1[40] = 0;
    }
  }

  return a1;
}

uint64_t re::BucketArray<re::DrawCall,128ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > v3 << 7)
  {
    re::BucketArray<re::DrawCall,128ul>::setBucketsCapacity(a1, (v2 + 128) >> 7);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 7)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 7));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 224 * (v2 & 0x7F);
}

unsigned __int8 *re::DeformationPassBuilder::addDeformationStack(unsigned __int8 *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v104 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    v5 = result;
    v6 = __clz(__rbit64(a3));
    v88 = a4 + 4;
    v84 = a4 + 48;
    v85 = (result + 976);
    v7 = result + 112;
    v83 = a4 + 792;
    v78 = result + 80;
    v79 = result + 24;
    v81 = a4 + 688;
    while (1)
    {
      v8 = *(v88 + 4 * v6);
      v9 = 1 << v8;
      v10 = re::Bitset<64>::toWordIndex(v85, v8);
      *(v85 + 8 * v10) |= v9;
      *&v99 = v4;
      v12 = *(v5 + 96);
      v13 = 0;
      if (v6)
      {
        v14 = (v81 + 10 * v6);
        v15 = v6;
        do
        {
          v17 = *v14++;
          v16 = v17;
          if (v17 == 255)
          {
            break;
          }

          re::Bitset<64>::toWordIndex(&v99, v16);
          if ((v99 >> v16))
          {
            if (v13 <= (v90[v16] + 1))
            {
              v13 = (v90[v16] + 1);
            }

            else
            {
              v13 = v13;
            }
          }

          --v15;
        }

        while (v15);
      }

      v89 = v6;
      v18 = v84 + (v6 << 6);
      v19 = *(v18 + 48);
      if (v19)
      {
        v20 = *(v18 + 56);
        v21 = &v20[16 * v19];
        do
        {
          v22 = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(&v7[48 * *v20], *(v20 + 1));
          if (v22)
          {
            v11 = *v22;
            if (v11 == 255)
            {
              v23 = 0;
            }

            else
            {
              v23 = *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v5, v11) + 56) + 1;
            }

            if (v13 <= v23)
            {
              v13 = v23;
            }

            else
            {
              v13 = v13;
            }
          }

          v20 += 16;
        }

        while (v20 != v21);
      }

      v24 = v83 + 24 * v89;
      v25 = *(v24 + 8);
      if (v25)
      {
        v26 = *(v24 + 16);
        v27 = &v26[16 * v25];
        do
        {
          v28 = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(&v7[48 * *v26], *(v26 + 1));
          if (v28)
          {
            v11 = *(v28 + 1);
            if (v11 == 255)
            {
              v29 = 255;
            }

            else
            {
              v29 = *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v5, v11) + 56);
            }

            if (v12 >= v29)
            {
              v12 = v29;
            }

            else
            {
              v12 = v12;
            }
          }

          v26 += 16;
        }

        while (v26 != v27);
      }

      if (v12 <= v13)
      {
LABEL_41:
        if (v13 == v12)
        {
          v40 = *(v5 + 40);
          v41 = *(v5 + 8);
          if (v40 + 1 > 8 * v41)
          {
            re::BucketArray<re::DeformationPassBuilder::DeformationInstanceBucket,8ul>::setBucketsCapacity(v5, (v40 + 8) >> 3);
            v41 = *(v5 + 8);
          }

          v42 = v40 >> 3;
          if (v41 <= v40 >> 3)
          {
            goto LABEL_94;
          }

          v43 = v79;
          if ((*(v5 + 16) & 1) == 0)
          {
            v43 = *(v5 + 32);
          }

          v44 = *&v43[8 * v42];
          ++*(v5 + 40);
          ++*(v5 + 48);
          v45 = v44 + ((v40 & 7) << 6);
          *(v45 + 16) = 0u;
          *(v45 + 32) = 0u;
          *(v45 + 40) = 0;
          *(v45 + 48) = 0;
          *v45 = 0u;
          *(v45 + 16) = 1;
          *(v45 + 24) = 0;
          *(v45 + 32) = 0;
          *(v45 + 48) = 0;
          *(v45 + 56) = -1;
          v41 = v13;
          v46 = *(v5 + 96);
          if (v46 < v13)
          {
            goto LABEL_95;
          }

          v47 = *(v5 + 40);
          v12 = *(v5 + 64);
          if (v46 + 1 > 8 * v12)
          {
            re::BucketArray<unsigned char,8ul>::setBucketsCapacity((v5 + 56), (v46 + 8) >> 3);
            v12 = *(v5 + 64);
          }

          v40 = v13 >> 3;
          if (v12 <= v40)
          {
            goto LABEL_96;
          }

          v48 = *(v5 + 96);
          v42 = v48 >> 3;
          if (*(v5 + 72))
          {
            v49 = v78;
            if (v12 <= v42)
            {
              goto LABEL_97;
            }
          }

          else
          {
            if (v12 <= v42)
            {
              goto LABEL_97;
            }

            v49 = *(v5 + 88);
          }

          v80 = v47;
          v51 = (*&v49[8 * v40] + (v13 & 7));
          v52 = (*&v49[8 * v42] + (*(v5 + 96) & 7));
          if (v51 != v52)
          {
            *v52 = *re::BucketArray<unsigned char,8ul>::operator[](v5 + 56, v48 - 1);
            for (i = *(v5 + 96) - 1; v13 != i; --i)
            {
              v54 = *re::BucketArray<unsigned char,8ul>::operator[](v5 + 56, i - 1);
              *re::BucketArray<unsigned char,8ul>::operator[](v5 + 56, i) = v54;
            }
          }

          *v51 = v80 - 1;
          ++*(v5 + 96);
          ++*(v5 + 104);
          if (*(v5 + 40) > v13)
          {
            v55 = v13;
            v56 = v13;
            do
            {
              v57 = re::BucketArray<unsigned char,8ul>::operator[](v5 + 56, v55);
              *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v5, *v57) + 56) = v56++;
              v55 = v56;
            }

            while (*(v5 + 40) > v56);
          }
        }

        else
        {
          v41 = v13;
        }

        v58 = re::BucketArray<unsigned char,8ul>::operator[](v5 + 56, v41);
        v59 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v5, *v58);
        v42 = v59;
        v40 = v59[5];
        v60 = v59[1];
        if (v40 + 1 > v60 << 6)
        {
          re::BucketArray<re::BatchedDeformationInstances,64ul>::setBucketsCapacity(v59, (v40 + 64) >> 6);
          v60 = *(v42 + 8);
        }

        v12 = v40 >> 6;
        if (v60 <= v40 >> 6)
        {
          v103 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v77 = v60;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v91 = 136315906;
          v92 = "operator[]";
          v93 = 1024;
          v94 = 858;
          v95 = 2048;
          v96 = v40 >> 6;
          v97 = 2048;
          v98 = v77;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_94:
          v103 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v91 = 136315906;
          v92 = "operator[]";
          v93 = 1024;
          v94 = 858;
          v95 = 2048;
          v96 = v42;
          v97 = 2048;
          v98 = v41;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_95:
          re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index <= m_size", "insert", 809, v41, v46);
          _os_crash();
          __break(1u);
LABEL_96:
          v103 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v91 = 136315906;
          v92 = "operator[]";
          v93 = 1024;
          v94 = 858;
          v95 = 2048;
          v96 = v40;
          v97 = 2048;
          v98 = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_97:
          v103 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v91 = 136315906;
          v92 = "operator[]";
          v93 = 1024;
          v94 = 858;
          v95 = 2048;
          v96 = v42;
          v97 = 2048;
          v98 = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v61 = *(v42 + 32);
        if (*(v42 + 16))
        {
          v61 = v42 + 24;
        }

        v62 = *(v61 + 8 * v12);
        ++*(v42 + 40);
        ++*(v42 + 48);
        v63 = v62 + ((v40 & 0x3F) << 6);
        *(v63 + 24) = 0u;
        *(v63 + 40) = 0u;
        *(v63 + 48) = 0;
        *(v63 + 56) = 0;
        *(v63 + 8) = 0u;
        *(v63 + 24) = 1;
        *(v63 + 32) = 0;
        *(v63 + 40) = 0;
        *(v63 + 56) = 0;
        v64 = *(v18 + 24);
        *v63 = *(v88 + 4 * v89);
        *(v63 + 1) = v64;
        v65 = re::BucketArray<re::DeformationInstanceIndex,64ul>::addUninitialized(v63 + 8);
        *v65 = a4;
        *(v65 + 8) = a2;
        *(v65 + 16) = v89;
      }

      else
      {
        v30 = v13;
        while (1)
        {
          v31 = re::BucketArray<unsigned char,8ul>::operator[](v5 + 56, v30);
          v32 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v5, *v31);
          v33 = *(v32 + 40);
          if (v33)
          {
            break;
          }

LABEL_40:
          if (v12 == ++v30)
          {
            goto LABEL_41;
          }
        }

        v34 = v32;
        v35 = 0;
        while (1)
        {
          v36 = re::BucketArray<re::BatchedDeformationInstances,64ul>::operator[](v34, v35);
          v37 = *(v88 + 4 * v89);
          v38 = *(v18 + 24);
          if (*v36 == v37 && v36[1] == v38)
          {
            break;
          }

          if (v33 == ++v35)
          {
            goto LABEL_40;
          }
        }

        if (!*(v36 + 6))
        {
          *v36 = v37;
          v36[1] = v38;
        }

        v50 = re::BucketArray<re::DeformationInstanceIndex,64ul>::addUninitialized((v36 + 8));
        *v50 = a4;
        *(v50 + 8) = a2;
        *(v50 + 16) = v89;
        v41 = v30;
        LOBYTE(v13) = v30;
      }

      result = re::BucketArray<unsigned char,8ul>::operator[](v5 + 56, v41);
      v66 = *result;
      v67 = *(v18 + 32);
      if (v67 != -1)
      {
        v68 = &v7[48 * *(v88 + 4 * v89)];
        result = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v68, v67);
        if (result)
        {
          v69 = *result;
          if (v69 <= v66)
          {
            v70 = v66;
          }

          else
          {
            v70 = *result;
          }

          if (v69 == 255)
          {
            v71 = v66;
          }

          else
          {
            v71 = v70;
          }

          *result = v71;
        }

        else
        {
          LOBYTE(v99) = v66;
          BYTE1(v99) = -1;
          result = re::HashTable<unsigned long long,re::DeformationPassBuilder::DeformationFence,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v68, (v18 + 32), &v99);
        }
      }

      v72 = *(v18 + 48);
      if (v72)
      {
        v73 = 16 * v72;
        v74 = (*(v18 + 56) + 8);
        do
        {
          v75 = &v7[48 * *(v74 - 8)];
          result = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v75, *v74);
          if (result)
          {
            v76 = result[1];
            if (v76 >= v66)
            {
              LOBYTE(v76) = v66;
            }

            result[1] = v76;
          }

          else
          {
            LOBYTE(v99) = -1;
            BYTE1(v99) = v66;
            result = re::HashTable<unsigned long long,re::DeformationPassBuilder::DeformationFence,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v75, v74, &v99);
          }

          v74 += 2;
          v73 -= 16;
        }

        while (v73);
      }

      v90[v89] = v13;
      v4 = a3;
      if (v89 == 63 || ((-2 << v89) & a3) == 0)
      {
        return result;
      }

      v6 = __clz(__rbit64((-2 << v89) & a3));
    }
  }

  return result;
}

unint64_t re::BucketArray<unsigned char,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 3)) + (a2 & 7);
}

uint64_t re::HashTable<unsigned long long,re::DeformationPassBuilder::DeformationFence,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, uint64_t *a2, _WORD *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v8, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,re::DeformationPassBuilder::DeformationFence,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v9, v8);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::BucketArray<re::DeformationInstanceIndex,64ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > v3 << 6)
  {
    re::BucketArray<re::DeformationInstanceIndex,64ul>::setBucketsCapacity(a1, (v2 + 64) >> 6);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 6)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 6));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 24 * (v2 & 0x3F);
}

void *re::BucketArray<re::DeformationInstanceIndex,64ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < a2 << 6)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 1536, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::DeformationInstanceIndex,64ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

unint64_t re::BucketArray<re::BatchedDeformationInstances,64ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 6)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 6)) + ((a2 & 0x3F) << 6);
}

void *re::BucketArray<re::BatchedDeformationInstances,64ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < a2 << 6)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 4096, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::BatchedDeformationInstances,64ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::BucketArray<re::DeformationPassBuilder::DeformationInstanceBucket,8ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 512, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::DeformationPassBuilder::DeformationInstanceBucket,8ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::BucketArray<unsigned char,8ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 8, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<unsigned char,8ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::DeformationPassBuilder::DeformationFence,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 16;
            do
            {
              if ((*(v18 - 16) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::DeformationPassBuilder::DeformationFence,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v18 + 8) % *(a1 + 24));
                *(v19 + 8) = *(v18 - 8);
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 32;
            }

            while (v17 < v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v20 + 32 * v5;
}

void re::dispatchMaterialPipelineDataCompilation(unint64_t *a1)
{
  v75 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v1 = a1[1];
  v51 = a1[2];
  v3 = re::internal::enableSignposts(0, 0);
  if (v3)
  {
    v3 = kdebug_trace();
  }

  v4 = *v1;
  v5 = **v1;
  re::make::shared::object<re::FunctionReflectionCache>(v3, &v66);
  if (*(v4 + 40) == 1)
  {
    v6 = (v4 + 6);
  }

  else
  {
    v6 = *v4 + 8;
  }

  re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::FixedArray(v64, v6);
  v65 = *(v6 + 24);
  WeakRetained = objc_loadWeakRetained((v5 + 2736));
  v8 = WeakRetained - 8;
  if (!WeakRetained)
  {
    v8 = 0;
  }

  v50 = v8;
  v9 = v4[1];
  if (v9)
  {
    v10 = (v9 + 8);
  }

  if (*(v9 + 192) == 1)
  {
    re::completeLinkedFunctions(v9 + 248, v9 + 200, (v9 + 192));
  }

  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v63 = 0x7FFFFFFFLL;
  v60 = 0;
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  if (*(v1 + 16) == 1)
  {
    v11 = *(v5 + 2776);
    if (v11)
    {
      v12 = 0;
      v13 = *(v5 + 2760);
      while (1)
      {
        v14 = *v13;
        v13 += 38;
        if (v14 < 0)
        {
          break;
        }

        if (v11 == ++v12)
        {
          LODWORD(v12) = *(v5 + 2776);
          break;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

    while (v12 != v11)
    {
      v15 = *(v5 + 2760) + 152 * v12;
      re::DynamicString::DynamicString(&v67, (v15 + 40));
      *v69 = *(v15 + 72);
      v16 = *(v15 + 88);
      v17 = *(v15 + 104);
      v18 = *(v15 + 120);
      LODWORD(v71) = *(v15 + 136);
      *v70 = v17;
      *&v70[16] = v18;
      *&v69[16] = v16;
      if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v61, &v67))
      {
        re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v61, &v67);
        v19 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v58, &v67);
      }

      if (v67 && (BYTE8(v67) & 1) != 0)
      {
        (*(*v67 + 40))(v19);
      }

      v20 = *(v5 + 2776);
      if (v20 <= v12 + 1)
      {
        v20 = v12 + 1;
      }

      while (v20 - 1 != v12)
      {
        LODWORD(v12) = v12 + 1;
        if ((*(*(v5 + 2760) + 152 * v12) & 0x80000000) != 0)
        {
          goto LABEL_31;
        }
      }

      LODWORD(v12) = v20;
LABEL_31:
      ;
    }

    v21 = *(v9 + 232);
    if (v21)
    {
      v22 = 0;
      v23 = *(v9 + 216);
      while (1)
      {
        v24 = *v23;
        v23 += 38;
        if (v24 < 0)
        {
          break;
        }

        if (v21 == ++v22)
        {
          LODWORD(v22) = *(v9 + 232);
          break;
        }
      }
    }

    else
    {
      LODWORD(v22) = 0;
    }

    while (v22 != v21)
    {
      v25 = *(v9 + 216) + 152 * v22;
      re::DynamicString::DynamicString(&v67, (v25 + 40));
      *v69 = *(v25 + 72);
      v26 = *(v25 + 88);
      v27 = *(v25 + 104);
      v28 = *(v25 + 120);
      LODWORD(v71) = *(v25 + 136);
      *v70 = v27;
      *&v70[16] = v28;
      *&v69[16] = v26;
      if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v61, &v67))
      {
        re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v61, &v67);
        v29 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v58, &v67);
      }

      if (v67 && (BYTE8(v67) & 1) != 0)
      {
        (*(*v67 + 40))(v29);
      }

      v30 = *(v9 + 232);
      if (v30 <= v22 + 1)
      {
        v30 = v22 + 1;
      }

      while (v30 - 1 != v22)
      {
        LODWORD(v22) = v22 + 1;
        if ((*(*(v9 + 216) + 152 * v22) & 0x80000000) != 0)
        {
          goto LABEL_50;
        }
      }

      LODWORD(v22) = v30;
LABEL_50:
      ;
    }

    v31 = v4[3];
    if (v31)
    {
      v32 = v4[4];
      v33 = v32 + 104 * v31;
      do
      {
        re::DynamicString::DynamicString(&v67, v32);
        *v69 = *(v32 + 32);
        v34 = *(v32 + 48);
        v35 = *(v32 + 64);
        v36 = *(v32 + 80);
        LODWORD(v71) = *(v32 + 96);
        *v70 = v35;
        *&v70[16] = v36;
        *&v69[16] = v34;
        if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v61, &v67))
        {
          re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v61, &v67);
          v37 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v58, &v67);
        }

        if (v67 && (BYTE8(v67) & 1) != 0)
        {
          (*(*v67 + 40))(v37);
        }

        v32 += 104;
      }

      while (v32 != v33);
    }
  }

  if (*(v1 + 16) == 1)
  {
    re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(v55, v58);
  }

  else
  {
    re::FunctionConstantsEnumerator::createPermutation(v64, v2, v4[4], v4[3], v55);
  }

  if ((*(v1 + 16) & 1) == 0)
  {
    re::MaterialBuilder::addOrReplaceFunctionConstants(v57, v56, v9 + 200, &v67);
    re::DynamicArray<re::TechniqueFunctionConstant>::operator=(v55, &v67);
    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v67);
  }

  *&v67 = v57;
  *(&v67 + 1) = v56;
  re::MaterialBuilder::addFunctionsToReflectionCache(v5, &v67, v66);
  v38 = dispatch_group_create();

  *(v66 + 16) = mach_absolute_time();
  dispatch_group_enter(v38);
  v39 = *(v9 + 1440);
  v40 = v66;
  v41 = v38;
  v54 = v41;
  re::FunctionReflectionCache::scheduleAllFunctionBuildTasks(v40, v51, &v54);

  v42 = *(v51 + 48);
  v43 = *(v1 + 16);
  v44 = v41;
  v53 = v44;
  re::StringID::invalid(&v52);
  *&v67 = v1;
  *(&v67 + 1) = v66;
  if (v66)
  {
    v45 = (v66 + 8);
  }

  *&v68 = v42;
  *(&v68 + 1) = v5;
  re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(v69, v55);
  *&v70[8] = v39;
  *&v70[16] = v9 + 248;
  *&v70[24] = v51;
  *&v71 = v50;
  if (WeakRetained)
  {
    v46 = WeakRetained;
  }

  *(&v71 + 1) = v9;
  v73 = re::globalAllocators((v9 + 8))[2];
  v47 = (*(*v73 + 32))(v73, 120, 0);
  *v47 = &unk_1F5D04420;
  *(v47 + 8) = v67;
  *(v47 + 24) = v68;
  *(v47 + 64) = 0;
  *(v47 + 40) = *v69;
  *(&v67 + 1) = 0;
  *v69 = 0;
  *(v47 + 48) = *&v69[8];
  *(v47 + 56) = 0;
  *(v47 + 56) = *&v69[16];
  *&v69[8] = 0u;
  *(v47 + 72) = *v70;
  *v70 = 0;
  ++*&v69[24];
  *(v47 + 64) = 1;
  v48 = *&v70[8];
  *(v47 + 96) = *&v70[24];
  *(v47 + 80) = v48;
  *(v47 + 104) = v71;
  v71 = 0u;
  v74 = v47;
  re::ShaderManager::scheduleGroupNotifyOnCompilationQueue(v42, v43, v39, &v53, 3, &v52, v72);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v72);
  if (*(&v71 + 1))
  {

    *(&v71 + 1) = 0;
  }

  if (v71)
  {

    *&v71 = 0;
  }

  v49 = re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v69);
  if (*(&v67 + 1))
  {
  }

  if (*&v52.var0)
  {
    if (*&v52.var0)
    {
    }
  }

  *&v52.var0 = 0;
  v52.var1 = &str_67;

  dispatch_group_leave(v44);
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v55);
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v58);
  re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v61);

  if (WeakRetained)
  {
  }

  re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(v64);
  if (v66)
  {
  }
}

void *re::internal::Callable<re::dispatchMaterialPipelineDataCompilation(re::MaterialPipelineDataContext const&)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D04420;
  v2 = a1[14];
  if (v2)
  {

    a1[14] = 0;
  }

  v3 = a1[13];
  if (v3)
  {

    a1[13] = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit((a1 + 5));
  v4 = a1[2];
  if (v4)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::dispatchMaterialPipelineDataCompilation(re::MaterialPipelineDataContext const&)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D04420;
  v2 = a1[14];
  if (v2)
  {

    a1[14] = 0;
  }

  v3 = a1[13];
  if (v3)
  {

    a1[13] = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit((a1 + 5));
  v4 = a1[2];
  if (v4)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::dispatchMaterialPipelineDataCompilation(re::MaterialPipelineDataContext const&)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = dispatch_group_create();

  dispatch_group_enter(v2);
  v3 = *(a1 + 16);
  v4 = *(a1 + 96);
  v5 = v2;
  v28 = v5;
  re::FunctionReflectionCache::scheduleReflectionTasksForBuiltFunctions(v3, v4, &v28, *(*(a1 + 8) + 16), *(a1 + 80));

  v6 = *(a1 + 24);
  v7 = *(*(a1 + 8) + 16);
  v8 = *(a1 + 80);
  v9 = v5;
  v27 = v9;
  re::StringID::invalid(&v26);
  v10 = *(a1 + 16);
  *v19 = *(a1 + 8);
  *&v19[8] = v10;
  if (v10)
  {
    v11 = (v10 + 8);
  }

  v12 = re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(&v19[16], (a1 + 40));
  v13 = *(a1 + 104);
  *&v23 = *(a1 + 32);
  *(&v23 + 1) = v13;
  if (v13)
  {
    v12 = (v13 + 8);
  }

  v24 = *(a1 + 88);
  v14 = *(a1 + 112);
  v25 = v14;
  if (v14)
  {
    v12 = (v14 + 8);
  }

  v30 = re::globalAllocators(v12)[2];
  v15 = (*(*v30 + 32))(v30, 104, 0);
  *v15 = &unk_1F5D04478;
  *(v15 + 8) = *v19;
  *(v15 + 48) = 0;
  v16 = *&v19[16];
  v17 = v20;
  *&v19[8] = 0u;
  *(v15 + 24) = v16;
  *(v15 + 32) = __PAIR128__(*(&v20 + 1), v17);
  v20 = 0u;
  *(v15 + 56) = v22;
  ++v21;
  *(v15 + 48) = 1;
  *(v15 + 64) = v23;
  v22 = 0;
  *(&v23 + 1) = 0;
  *(v15 + 80) = v24;
  *(v15 + 96) = v25;
  v25 = 0;
  v31 = v15;
  re::ShaderManager::scheduleGroupNotifyOnCompilationQueue(v6, v7, v8, &v27, 7, &v26, v29);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v29);
  if (v25)
  {

    v25 = 0;
  }

  if (*(&v23 + 1))
  {

    *(&v23 + 1) = 0;
  }

  v18 = re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v19[16]);
  if (*&v19[8])
  {
  }

  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  *&v26.var0 = 0;
  v26.var1 = &str_67;

  dispatch_group_leave(v9);
}

uint64_t re::internal::Callable<re::dispatchMaterialPipelineDataCompilation(re::MaterialPipelineDataContext const&)::$_0,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_1F5D04420;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    v6 = (v4 + 8);
  }

  *(a2 + 24) = *(a1 + 24);
  re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(a2 + 40, (a1 + 40));
  v7 = *(a1 + 80);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 80) = v7;
  v8 = *(a1 + 104);
  *(a2 + 104) = v8;
  if (v8)
  {
    v9 = (v8 + 8);
  }

  v10 = *(a1 + 112);
  *(a2 + 112) = v10;
  if (v10)
  {
    v11 = (v10 + 8);
  }

  return a2;
}

uint64_t re::internal::Callable<re::dispatchMaterialPipelineDataCompilation(re::MaterialPipelineDataContext const&)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D04420;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 72) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a2 + 64) = 0;
  v2 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v3 = *(a2 + 56);
  *(a2 + 56) = *(a1 + 56);
  *(a1 + 56) = v3;
  v4 = *(a2 + 72);
  *(a2 + 72) = *(a1 + 72);
  *(a1 + 72) = v4;
  ++*(a1 + 64);
  ++*(a2 + 64);
  v5 = *(a1 + 80);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 80) = v5;
  *(a2 + 104) = *(a1 + 104);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return a2;
}

void *re::internal::Callable<re::dispatchMaterialPipelineDataCompilation(re::MaterialPipelineDataContext const&)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D04478;
  v2 = a1[12];
  if (v2)
  {

    a1[12] = 0;
  }

  v3 = a1[9];
  if (v3)
  {

    a1[9] = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit((a1 + 3));
  v4 = a1[2];
  if (v4)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::dispatchMaterialPipelineDataCompilation(re::MaterialPipelineDataContext const&)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D04478;
  v2 = a1[12];
  if (v2)
  {

    a1[12] = 0;
  }

  v3 = a1[9];
  if (v3)
  {

    a1[9] = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit((a1 + 3));
  v4 = a1[2];
  if (v4)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::dispatchMaterialPipelineDataCompilation(re::MaterialPipelineDataContext const&)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_1F5D04478;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    v6 = (v4 + 8);
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(a2 + 24, (a1 + 24));
  v7 = *(a1 + 72);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = v7;
  if (v7)
  {
    v8 = (v7 + 8);
  }

  *(a2 + 80) = *(a1 + 80);
  v9 = *(a1 + 96);
  *(a2 + 96) = v9;
  if (v9)
  {
    v10 = (v9 + 8);
  }

  return a2;
}

uint64_t re::internal::Callable<re::dispatchMaterialPipelineDataCompilation(re::MaterialPipelineDataContext const&)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D04478;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  *(a2 + 56) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a2 + 48) = 0;
  v2 = *(a1 + 32);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *(a2 + 40);
  *(a2 + 40) = *(a1 + 40);
  *(a1 + 40) = v3;
  v4 = *(a2 + 56);
  *(a2 + 56) = *(a1 + 56);
  *(a1 + 56) = v4;
  ++*(a1 + 48);
  ++*(a2 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a1 + 72) = 0;
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 96) = *(a1 + 96);
  *(a1 + 96) = 0;
  return a2;
}

_anonymous_namespace_ *re::setVertexAmplificationCount(_anonymous_namespace_ *this, int a2, int a3, int a4, uint64_t a5, const re::mtl::RenderCommandEncoder *a6)
{
  if (a3 != 2 || !a2 || !this)
  {
    return this;
  }

  if (!v8)
  {
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    this = _os_crash();
    __break(1u);
    return this;
  }

  v10 = v8;
  v8[1] = 0x100000001;
  *v8 = 0;
  if ((~a4 & 3) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if ((a4 & 2) != 0)
      {
        (*(*(a5 + 8) + 144))(**(a5 + 8), sel_setVertexAmplificationCount_viewMappings_, 1, v8 + 1);
      }

      goto LABEL_13;
    }

    v15 = *(a5 + 8);
    v12 = *v15;
    v13 = v15[18];
    v14 = 1;
  }

  else
  {
    v11 = *(a5 + 8);
    v12 = *v11;
    v13 = v11[18];
    v14 = 2;
  }

  v13(v12, sel_setVertexAmplificationCount_viewMappings_, v14, v10);
LABEL_13:
}

void **re::VertexCacheDeformer::init(void **result, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if ((result[9] & 1) == 0)
  {
    *(result + 72) = 1;
    v2 = *(a2 + 16);
    if (v2)
    {
      if (*(v2 + 26))
      {
        v3 = 0;
        v10 = result;
        v4 = result + 5;
        do
        {
          memset(v39, 0, sizeof(v39));
          v5 = re::DynamicString::setCapacity(v39, 0);
          memset(v44, 0, sizeof(v44));
          v43 = 0u;
          v42 = 0u;
          v40 = 33;
          v41 = v3;
          v28[0] = 0;
          v31 = 0;
          memset(v34, 0, sizeof(v34));
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = 1;
          re::DynamicArray<re::TechniqueFunctionConstant>::add(v34, v39);
          MetalFunction = re::getOrCreateMetalFunction(v2, &v26, v28, v6);
          v8 = NS::SharedPtr<MTL::Buffer>::operator=(v4 - 4, MetalFunction);
          v13 = 0;
          v16 = 0;
          memset(v19, 0, sizeof(v19));
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          re::DynamicArray<re::TechniqueFunctionConstant>::add(v19, v39);
          ComputePipelineState = re::getOrCreateComputePipelineState(v2, &v11);
          NS::SharedPtr<MTL::Buffer>::operator=(v4, ComputePipelineState);
          if (v24)
          {

            v24 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v19);
          if (v16 == 1 && v17)
          {
            if (BYTE8(v17))
            {
              (*(*v17 + 40))();
            }

            v17 = 0u;
            v18 = 0u;
          }

          if (v13 == 1 && v14)
          {
            if (BYTE8(v14))
            {
              (*(*v14 + 40))();
            }

            v15 = 0u;
            v14 = 0u;
          }

          if (v11 && (v12 & 1) != 0)
          {
            (*(*v11 + 40))();
          }

          if (v26 && (v27 & 1) != 0)
          {
            (*(*v26 + 40))();
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v34);
          if (v31 == 1 && v32)
          {
            if (BYTE8(v32))
            {
              (*(*v32 + 40))();
            }

            v32 = 0u;
            v33 = 0u;
          }

          if (v28[0] == 1 && v29 && (v30 & 1) != 0)
          {
            (*(*v29 + 40))();
          }

          result = *&v39[0];
          if (*&v39[0])
          {
            if (BYTE8(v39[0]))
            {
              result = (*(**&v39[0] + 40))();
            }
          }

          ++v3;
          ++v4;
        }

        while (v3 != 4);
        *(v10 + 73) = 1;
      }
    }
  }

  return result;
}

re::DeformerFeatureFlags *re::VertexCacheDeformer::addDeformationInstance@<X0>(re::DeformerFeatureFlags *result@<X0>, _BYTE *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  *a4 = 0xFFFFFFFFLL;
  *(a4 + 8) = vdupq_n_s64(2uLL);
  v7 = *a3;
  if (v7 == 255)
  {
    v8 = *(a3 + 2);
    if (v8 && *(v8 + 208))
    {
      if (v5 && (result = re::DeformerFeatureFlags::enableStitchableDeformation(result), !result))
      {
        LOBYTE(v7) = 1;
      }

      else
      {
        LOBYTE(v7) = v6;
      }
    }

    else
    {
      LOBYTE(v7) = 3;
    }
  }

  *(a4 + 24) = v7;
  *(a4 + 32) = -1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  return result;
}

void *re::VertexCacheDeformer::allocateBuffers(uint64_t a1, unint64_t a2, re::PerFrameAllocatorGPU **a3, unsigned int a4, uint64_t *a5)
{
  v8 = a2;
  v66 = *MEMORY[0x1E69E9840];
  v50 = *a5;
  v9 = *(*a5 + 48);
  v10 = (*(*a2 + 32))(a2, 56, 8);
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  *(v10 + 24) = 0;
  v44 = v10 + 24;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = 0;
  v46 = v10;
  re::BucketArray<re::Pair<unsigned long,re::BufferView,true>,8ul>::init(v10, v8, 1uLL);
  v49 = v9;
  if (v9)
  {
    v11 = 0;
    while (1)
    {
      v12 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v50 + 8, v11);
      v14 = *(v12 + 8);
      v15 = a5[6];
      if (v15 <= v14)
      {
        break;
      }

      v16 = v12;
      v17 = a5[5];
      v18 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a5[1], v14);
      v6 = *(*(v18 + 44) + 144);
      if (v6)
      {
        v9 = v18;
        if (*(v6 + 80) != 0.0)
        {
          v19 = re::DeformerFeatureFlags::enableStitchableDeformation(v18);
          if (v19)
          {
            v20 = *re::graphicsLogObjects(v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
            }
          }
        }

        v21 = (v17 + 312 * v14);
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 1u);
        v22 = *(v21[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 7, buf) + 20);
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 1u);
        v23 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 15, buf);
        v5 = v22 / *(v21[16] + 20 * v23 + 4);
        v25 = *(v6 + 84);
        v8 = *(v6 + 36);
        if (v26 == v5)
        {
          if (*(v6 + 80) >= 0.5)
          {
            v27 = 1.0;
          }

          else
          {
            v27 = 0.0;
          }

          if (*(a1 + 73))
          {
            v28 = *(v6 + 80);
          }

          else
          {
            v28 = v27;
          }

          *(&v51 + 2) = 16842753;
          LOWORD(v51) = (re::sizeFromVertexFormat(v29, v24) + 3) & 0x1FC;
          BYTE4(v52) = v29;
          LODWORD(v52) = 0;
          if (v28 != 0.0)
          {
            v30 = fabsf(v28) + 1.0;
            if (vabds_f32(0.0, v28) >= (v30 * 0.00001))
            {
              if (v28 == 1.0 || vabds_f32(1.0, v28) < ((v30 + 1.0) * 0.00001))
              {
                v6 += 40;
              }

              else
              {
                re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 8uLL, 4uLL, buf);
                v31 = *&buf[8];
                v32 = *&buf[16];
                v33 = *buf + *&buf[8];
                *v33 = v5;
                *(v33 + 4) = v28;
                v34 = v46;
                v35 = v46[5];
                v6 = v46[1];
                if (v35 + 1 > 8 * v6)
                {
                  v43 = v31;
                  v36 = v32;
                  re::BucketArray<re::Pair<unsigned long,re::BufferView,true>,8ul>::setBucketsCapacity(v46, (v35 + 8) >> 3);
                  v32 = v36;
                  v31 = v43;
                  v34 = v46;
                  v6 = v46[1];
                }

                v5 = v35 >> 3;
                if (v6 <= v35 >> 3)
                {
                  goto LABEL_35;
                }

                v37 = v44;
                if ((v34[2] & 1) == 0)
                {
                  v37 = v34[4];
                }

                v38 = *(v37 + 8 * v5);
                ++v34[5];
                ++*(v34 + 12);
                v39 = v38 + 32 * (v35 & 7);
                *v39 = v14;
                *(v39 + 8) = v32;
                *(v39 + 16) = 0;
                *(v39 + 24) = v31;
                v40 = re::DeformationBufferAllocator::alloc(*(v9 + 45), a5[2], 1, v51, v52, *(v16 + 16), v8);
                v41 = *(v9 + 45);
                v8 = *(v16 + 16);
                v9 = *(v41 + 8);
                if (v9 <= v8)
                {
                  goto LABEL_36;
                }

                v6 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](*(v41 + 16) + 72 * *(v16 + 16) + 16, v40) + 24;
              }
            }
          }

          re::DeformationVertexBufferState::setOutputBuffer(v21, 1, a4, v6, &v51);
        }

        else
        {
          v8 = *re::graphicsLogObjects(v23);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *&buf[4] = v26;
            *&buf[12] = 2048;
            *&buf[14] = v5;
            _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Vertex cache size (%zu) does not match target vertex buffer size (%zu)", buf, 0x16u);
          }
        }
      }

      if (v49 == ++v11)
      {
        return v46;
      }
    }

    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, *(v12 + 8), v15);
    _os_crash();
    __break(1u);
LABEL_35:
    v53 = 0;
    v65 = 0u;
    v63 = 0u;
    v64 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    v57 = 858;
    v58 = 2048;
    v59 = v5;
    v60 = 2048;
    v61 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_36:
    v53 = 0;
    v65 = 0u;
    v63 = 0u;
    v64 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    v57 = 476;
    v58 = 2048;
    v59 = v8;
    v60 = 2048;
    v61 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return v46;
}

uint64_t re::DeformationVertexBufferState::setOutputBuffer(uint64_t a1, uint64_t a2, uint64_t a3, id *this, uint64_t a5)
{
  v8 = a2;
  re::BufferSlice::buffer(this, a2);
  v10 = [*this contents];
  v11 = this[4];
  re::BufferSlice::buffer(this, v12);
  v13 = *this;
  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v13;
  return re::DeformationVertexBufferState::setOutputBuffer(a1, v8, a3, v15, a5);
}

void re::VertexCacheDeformer::stitchedFunctionParameters(uint64_t a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, uint64_t *a4, void *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v39 = *a4;
  v5 = *(*a4 + 48);
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v36 = a1 + 8;
    v33 = *(*a4 + 48);
    while (1)
    {
      v9 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v39 + 8, v8);
      v10 = *(v9 + 8);
      v11 = a4[6];
      if (v11 <= v10)
      {
        break;
      }

      v12 = (a4[5] + 312 * v10);
      v13 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a4[1], v10);
      if ((*v12 & 2) != 0)
      {
        v14 = v13;
        v15 = re::DeformationVertexBufferState::inputVertexCount(v12, 1u);
        v16 = *(*(v14 + 352) + 144);
        v17 = *(v16 + 84);
        if (v18 == v15)
        {
          v19 = (v36 + 8 * v17);
          if (*v19)
          {
            v20 = *(v16 + 80);
            re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 8uLL, 4uLL, buf);
            v22 = *&buf[8];
            v23 = *&buf[16];
            v24 = (*buf + *&buf[8]);
            *v24 = 0;
            v24[1] = v20;
            v25 = a5[1];
            if (v25 <= v8)
            {
              goto LABEL_18;
            }

            v37 = v23;
            v38 = v22;
            v26 = (*a5 + v7);
            *v26 = v19;
            if (v26[2] <= 3uLL)
            {
              re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(v26 + 1, 4uLL);
            }

            *buf = 1;
            *&buf[8] = 0u;
            v43 = 0u;
            re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v26 + 1), buf);
            *buf = 2;
            *&buf[8] = 0;
            *&buf[16] = 0;
            *&v43 = *(v16 + 32);
            v27 = *(v16 + 24);
            if (v27 == -1)
            {
              goto LABEL_19;
            }

            v41 = &v40;
            *&buf[8] = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v27])(&v41, v16);
            *&buf[16] = v28;
            *(&v43 + 1) = 1;
            re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v26 + 1), buf);
            *buf = 2;
            *&buf[8] = 0;
            *&buf[16] = 0;
            *&v43 = *(v16 + 72);
            v29 = *(v16 + 64);
            if (v29 == -1)
            {
              goto LABEL_19;
            }

            v41 = &v40;
            *&buf[8] = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v29])(&v41, v16 + 40);
            *&buf[16] = v30;
            *(&v43 + 1) = 1;
            re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v26 + 1), buf);
            *buf = 3;
            *&buf[8] = v37;
            *&buf[16] = 0;
            v43 = v38;
            re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v26 + 1), buf);
            v5 = v33;
          }
        }

        else
        {
          v31 = v15;
          v32 = *re::graphicsLogObjects(v15);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *&buf[4] = v18;
            *&buf[12] = 2048;
            *&buf[14] = v31;
            _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "Vertex cache size (%zu) does not match target vertex buffer size (%zu)", buf, 0x16u);
          }
        }
      }

      ++v8;
      v7 += 48;
      if (v5 == v8)
      {
        return;
      }
    }

    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, *(v9 + 8), v11);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v25);
    _os_crash();
    __break(1u);
LABEL_19:
    std::__throw_bad_variant_access[abi:nn200100]();
  }
}

uint64_t re::DeformationVertexBufferState::inputVertexCount(void *a1, unsigned __int8 a2)
{
  v6 = a2;
  re::DeformationVertexBufferState::ensureVertexBufferInitialized(a1, a2);
  v4 = *(a1[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(a1 + 7, &v6) + 20);
  v7 = a2;
  re::DeformationVertexBufferState::ensureVertexBufferInitialized(a1, a2);
  return v4 / *(a1[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(a1 + 15, &v7) + 4);
}

uint64_t re::VertexCacheDeformer::deformGPU(uint64_t a1, uint64_t a2, void **this, uint64_t *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Apply Vertex Cache Deformer");
  v25 = *(a2 + 40);
  if (v25)
  {
    v9 = 0;
    v24 = a1 + 40;
    while (1)
    {
      v10 = *(a2 + 40);
      if (v10 <= v9)
      {
        break;
      }

      a1 = v9 >> 3;
      v4 = *(a2 + 8);
      if (v4 <= v9 >> 3)
      {
        goto LABEL_11;
      }

      v11 = a2 + 24;
      if ((*(a2 + 16) & 1) == 0)
      {
        v11 = *(a2 + 32);
      }

      v12 = *(v11 + 8 * a1) + 32 * (v9 & 7);
      v13 = *v12;
      v14 = a4[6];
      if (v14 <= *v12)
      {
        goto LABEL_12;
      }

      a1 = a4[5] + 312 * v13;
      v15 = *(*(re::BucketArray<re::ActiveDeformation,8ul>::operator[](a4[1], v13) + 352) + 144);
      LOBYTE(v30[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(a1, 1u);
      v16 = *(*(a1 + 64) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((a1 + 56), v30) + 20);
      LOBYTE(v30[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(a1, 1u);
      v17 = v16 / *(*(a1 + 128) + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((a1 + 120), v30) + 4);
      v18 = *(v15 + 84);
      v4 = [*(v24 + 8 * v18) maxTotalThreadsPerThreadgroup];
      [*this setComputePipelineState:*(v24 + 8 * v18)];
      re::BufferSlice::buffer(v15, v19);
      [*this setBuffer:*v15 offset:*(v15 + 32) atIndex:0];
      re::BufferSlice::buffer(v15 + 40, v20);
      [*this setBuffer:*(v15 + 40) offset:*(v15 + 72) atIndex:1];
      LOBYTE(v30[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(a1, 1u);
      v21 = *(*(a1 + 192) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((a1 + 184), v30) + 24);
      LOBYTE(v30[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(a1, 1u);
      [*this setBuffer:v21 offset:*(*(a1 + 192) + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find((a1 + 184), v30) + 16), 2}];
      [*this setBuffer:*(v12 + 8) offset:*(v12 + 24) atIndex:3];
      v22 = *this;
      *&v30[0] = (v17 + v4 - 1) / v4;
      *(v30 + 8) = vdupq_n_s64(1uLL);
      *v27 = v4;
      *&v27[8] = *(v30 + 8);
      [v22 dispatchThreadgroups:v30 threadsPerThreadgroup:v27];
      if (v25 == ++v9)
      {
        return [*this popDebugGroup];
      }
    }

    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, v9, v10);
    _os_crash();
    __break(1u);
LABEL_11:
    memset(v30, 0, sizeof(v30));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v27 = 136315906;
    *&v27[4] = "operator[]";
    *&v27[12] = 1024;
    *&v27[14] = 858;
    *&v27[18] = 2048;
    *&v27[20] = a1;
    v28 = 2048;
    v29 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v13, v14);
    _os_crash();
    __break(1u);
  }

  return [*this popDebugGroup];
}

void re::VertexCacheDeformer::~VertexCacheDeformer(re::VertexCacheDeformer *this)
{
  re::VertexCacheDeformer::~VertexCacheDeformer(this);

  JUMPOUT(0x1E6906520);
}

{
  for (i = 64; i != 32; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }

  do
  {
    v4 = *(this + i);
    if (v4)
    {

      *(this + i) = 0;
    }

    i -= 8;
  }

  while (i);
}

void re::VertexCacheDeformer::deformCPU(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected CPU deform call for Vertex Cache Deformer.", "!Unreachable code", "deformCPU", 88);
  _os_crash();
  __break(1u);
}

uint64_t re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(void *a1, unsigned __int8 *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = *a2;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v4) ^ ((0xBF58476D1CE4E5B9 * v4) >> 27));
  v6 = v5 ^ (v5 >> 31);
  v7 = v6 % v3;
  v8 = vdupq_n_s8(v6 & 0x7F);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = v6 % v3;
  while (1)
  {
    v11 = *(*a1 + 16 * v10);
    v12 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v8, v11), xmmword_1E304FAD0)))), 0x3830282018100800);
    v13 = __clz(__rbit64(v12));
    if (v13 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v11, v9), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v10 + 1 == v3)
    {
      v10 = 0;
    }

    else
    {
      ++v10;
    }

    v15 = -1;
    if (v10 == v7)
    {
      return v15;
    }
  }

  v14 = 16 * v10;
  while (1)
  {
    v15 = v13 + v14;
    if (v4 == *(a1[1] + 32 * (v13 + v14)))
    {
      return v15;
    }

    if (v13 <= 0x3E)
    {
      v13 = __clz(__rbit64((-2 << v13) & v12));
      if (v13 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

uint64_t re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(void *a1, unsigned __int8 *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = *a2;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v4) ^ ((0xBF58476D1CE4E5B9 * v4) >> 27));
  v6 = v5 ^ (v5 >> 31);
  v7 = v6 % v3;
  v8 = vdupq_n_s8(v6 & 0x7F);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = v6 % v3;
  while (1)
  {
    v11 = *(*a1 + 16 * v10);
    v12 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v8, v11), xmmword_1E304FAD0)))), 0x3830282018100800);
    v13 = __clz(__rbit64(v12));
    if (v13 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v11, v9), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v10 + 1 == v3)
    {
      v10 = 0;
    }

    else
    {
      ++v10;
    }

    v15 = -1;
    if (v10 == v7)
    {
      return v15;
    }
  }

  v14 = 16 * v10;
  while (1)
  {
    v15 = v13 + v14;
    if (v4 == *(a1[1] + 20 * (v13 + v14)))
    {
      return v15;
    }

    if (v13 <= 0x3E)
    {
      v13 = __clz(__rbit64((-2 << v13) & v12));
      if (v13 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

uint64_t re::DeformationVertexBufferState::setOutputBuffer(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v19 = a2;
  re::DeformationVertexBufferState::ensureVertexBufferInitialized(a1, a2);
  v8 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v7 + 248), &v19);
  *(v7 + 32) |= !re::VertexBufferFormat::operator==((*(v7 + 256) + 20 * v8 + 4), a5);
  v9 = *(v7 + 192) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v7 + 184), &v19);
  v10 = *(a4 + 16);
  *(v9 + 8) = *a4;
  *(v9 + 24) = v10;
  v11 = *(v7 + 256) + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v7 + 248), &v19);
  v12 = *(a5 + 5);
  *(v11 + 4) = *a5;
  *(v11 + 9) = v12;
  v13 = 1 << v19;
  v14 = re::Bitset<64>::toWordIndex(v7 + 8, v19);
  *(v7 + 8 + 8 * v14) |= v13;
  v15 = 1 << v19;
  v16 = re::Bitset<64>::toWordIndex(v7 + 16, v19);
  *(v7 + 16 + 8 * v16) |= v15;
  v7 += 24;
  v17 = 1 << v19;
  result = re::Bitset<64>::toWordIndex(v7, v19);
  *(v7 + 8 * result) |= v17;
  return result;
}

void *re::BucketArray<re::Pair<unsigned long,re::BufferView,true>,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::Pair<unsigned long,re::BufferView,true>,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::Pair<unsigned long,re::BufferView,true>,8ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
    {
      v4 = result[1];
      if (v4 > a2)
      {
        v5 = *(result + 4);
        do
        {
          v6 = v3 + 3;
          if ((v5 & 1) == 0)
          {
            v6 = v3[4];
          }

          result = (*(**v3 + 40))(*v3, v6[v4 - 1]);
          v7 = *(v3 + 4);
          v4 = v3[1] - 1;
          v3[1] = v4;
          v5 = v7 + 2;
          *(v3 + 4) = v5;
        }

        while (v4 > a2);
      }

      if (v4 < a2)
      {
        v8 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 256, 0);
          v9 = result;
          if (*v3)
          {
            v10 = v3[1];
            v11 = *(v3 + 4);
            if ((v11 & 1) == 0)
            {
              v12 = *v8;
              v14 = v10 >= *v8;
              v13 = v10 + 1;
              v14 = !v14 || v12 >= v13;
              if (v14)
              {
                goto LABEL_24;
              }

              v15 = 2 * v12;
              goto LABEL_20;
            }

            v13 = v10 + 1;
            if (v13 >= 3)
            {
              v15 = 4;
LABEL_20:
              if (v15 <= v13)
              {
                v17 = v13;
              }

              else
              {
                v17 = v15;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v17);
              v11 = *(v3 + 4);
            }
          }

          else
          {
            v16 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v16 + 1);
            v11 = *(v3 + 4) + 2;
            *(v3 + 4) = v11;
          }

LABEL_24:
          v18 = v3 + 3;
          if ((v11 & 1) == 0)
          {
            v18 = v3[4];
          }

          v19 = v3[1];
          v18[v19++] = v9;
          v3[1] = v19;
          *(v3 + 4) += 2;
        }

        while (v19 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

unsigned int *re::RenderGraphStats::registerNewFrame(unsigned int *this)
{
  v1 = *this + 1;
  *this = v1;
  if (v1 >> 3 >= 0x2A3)
  {
    v2 = this;
    this = this[1];
    if (this | v2[2] || v2[3] || v2[4])
    {
      this = re::REAnalyticsEventRenderGraphCacheState(this);
    }

    *v2 = 0;
    *(v2 + 1) = 0;
    v2[4] = 0;
  }

  return this;
}

uint64_t re::RenderFrameWorkloadPatchCamera::trackLocalEyePose(uint64_t a1, __int128 *a2, int a3, re::DynamicString *a4)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v5 = a3 == 2;
  v7 = *a2;
  v8 = a2[1];
  re::DynamicString::DynamicString(&v9, a4);
  v12[0] = 1;
  v13 = v7;
  v14 = v8;
  v15 = 0;
  v16[0] = v9;
  v16[3] = v11;
  *&v16[1] = v10;
  v11 = 0;
  v9 = 0;
  v10 = 0uLL;
  re::Optional<re::RenderFrameWorkloadPatchCamera::TrackedEyePoseInfo>::operator=(a1 + 96 * v5 + 192, v12);
  if (v12[0] == 1 && v16[0])
  {
    if (v16[1])
    {
      (*(*v16[0] + 40))();
    }

    memset(v16, 0, 32);
  }

  result = v9;
  if (v9)
  {
    if (v10)
    {
      return (*(*v9 + 40))();
    }
  }

  return result;
}

uint64_t re::Optional<re::RenderFrameWorkloadPatchCamera::TrackedEyePoseInfo>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      v3 = *(a2 + 16);
      v4 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 16) = v3;
      *(a1 + 32) = v4;
      re::DynamicString::operator=((a1 + 56), (a2 + 56));
    }

    else
    {
      re::DynamicString::deinit((a1 + 56));
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 80) = *(a2 + 80);
    v7 = *(a2 + 64);
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 56) = 0;
    v8 = *(a2 + 72);
    *(a2 + 80) = 0;
    v10 = *(a1 + 64);
    v9 = *(a1 + 72);
    *(a1 + 64) = v7;
    *(a1 + 72) = v8;
    *(a2 + 64) = v10;
    *(a2 + 72) = v9;
  }

  return a1;
}

uint64_t re::RenderFrameWorkloadPatchCamera::trackWorldEyePose(uint64_t a1, __int128 *a2, int a3, re::DynamicString *a4)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v5 = a3 == 2;
  v7 = *a2;
  v8 = a2[1];
  re::DynamicString::DynamicString(&v9, a4);
  v12[0] = 1;
  v13 = v7;
  v14 = v8;
  v15 = 1;
  v16[0] = v9;
  v16[3] = v11;
  *&v16[1] = v10;
  v11 = 0;
  v9 = 0;
  v10 = 0uLL;
  re::Optional<re::RenderFrameWorkloadPatchCamera::TrackedEyePoseInfo>::operator=(a1 + 96 * v5 + 192, v12);
  if (v12[0] == 1 && v16[0])
  {
    if (v16[1])
    {
      (*(*v16[0] + 40))();
    }

    memset(v16, 0, 32);
  }

  result = v9;
  if (v9)
  {
    if (v10)
    {
      return (*(*v9 + 40))();
    }
  }

  return result;
}

void re::RenderFrameWorkloadPatchCamera::applyPostEncode(re::RenderFrameWorkloadPatchCamera *this, const re::RenderFrame *a2)
{
  re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(this, a2, "Camera", this + 32, 0);
  re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(this, a2, "MXI", this + 32, "_MXIOffscreen_0");
  re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(this, a2, "MXI", this + 32, "_MXIOffscreen_1");
  re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(this, a2, "MXI", this + 32, "_MXIOffscreen_2");
  re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(this, a2, "MXI", this + 32, "_MXIOffscreen_3");
  re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(this, a2, "MXI", this + 32, "_MXIOffscreen_4");
  re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(this, a2, "MXI", this + 32, "_MXIOffscreen_5");
  re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(this, a2, "MXI", this + 32, "_MXIOffscreen_6");

  re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(this, a2, "MXI", this + 32, "_MXIOffscreen_7");
}

void re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(re::LateLatch *a1, uint64_t a2, const char *a3, _BYTE *a4, const char *a5)
{
  v102 = *MEMORY[0x1E69E9840];
  if (*a4 == 1 && re::LateLatch::shouldApplyHeadPoseLateLatching(a1))
  {
    v93 = 0u;
    *buf = xmmword_1E30474D0;
    v101 = 0u;
    re::decomposeScaleRotationTranslation<float>((a4 + 16), &v93, buf, &v101);
    v84 = v101;
    v85 = *buf;
    v10 = strlen(a3);
    v80 = a2;
    if (v10)
    {
      v10 = MurmurHash3_x64_128(a3, v10, 0, &v93);
      v11 = (*(&v93 + 1) - 0x61C8864680B583E9 + (v93 << 6) + (v93 >> 2)) ^ v93;
    }

    else
    {
      v11 = 0;
    }

    v12 = 0;
    v13 = 0;
    *v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v14 = a1 + 192;
    v95 = 0u;
    v96 = 0u;
    v88 = &buf[9];
    v89 = v11;
    v87 = (v11 >> 2) + (v11 << 6);
    v82 = vnegq_f32(v85);
    v83 = vextq_s8(vuzp1q_s32(v85, v85), v85, 0xCuLL);
    _S8 = v85.i32[3];
    v16 = (&v90 + 8);
    v17 = &v93;
    v18 = 1;
    v93 = 0u;
    v94 = 0u;
    v81 = vdupq_laneq_s32(v85, 3);
    do
    {
      v19 = v18;
      v20 = &v14[96 * v13];
      if (v20->i8[0] == 1)
      {
        *buf = 0u;
        v92 = 0u;
        re::DynamicString::setCapacity(buf, 0);
        re::DynamicString::operator=(buf, &v20[3].u32[2]);
        if (a5)
        {
          v21 = strlen(a5);
          re::DynamicString::append(buf, a5, v21);
        }

        if (buf[8])
        {
          v22 = v92;
        }

        else
        {
          v22 = &buf[9];
        }

        v23 = strlen(v22);
        v25 = 0x9E3779B97F4A7C17;
        if (v23)
        {
          MurmurHash3_x64_128(v22, v23, 0, &v101);
          v25 = ((*(&v101 + 1) - 0x61C8864680B583E9 + (v101 << 6) + (v101 >> 2)) ^ v101) - 0x61C8864680B583E9;
        }

        *v16 = (v87 + v25) ^ v89;
        if (v20[3].i8[0] == 1)
        {
          v32 = v20[1];
          v38 = v20[2];
        }

        else
        {
          if (v20[3].i8[0])
          {
            re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "worldEyePose", 207);
            _os_crash();
            __break(1u);
          }

          v26 = v20[1];
          _Q2 = v20[2];
          v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v82), v26, v83);
          v29 = vaddq_f32(v28, v28);
          v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
          _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), v82), v30, v83);
          v32 = vaddq_f32(v84, vaddq_f32(vaddq_f32(v26, vmulq_laneq_f32(v30, v85, 3)), vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL)));
          v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), v82), _Q2, v83);
          v38 = vmlaq_laneq_f32(vmlaq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), _Q2, v81), v85, _Q2, 3);
          __asm { FMLA            S3, S8, V2.S[3] }

          v38.i32[3] = _Q3.i32[0];
        }

        v39 = vnegq_f32(v38);
        v40 = vnegq_f32(v32);
        v41 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
        v42 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), v38), v41, v32);
        v43 = vaddq_f32(v42, v42);
        v44 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
        v45 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL), v38), v44, v41);
        v46 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v44, v38, 3), v32), vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL));
        v44.f32[0] = v39.f32[0] + v39.f32[0];
        v47 = (v39.f32[0] + v39.f32[0]) * v39.f32[0];
        v48 = vmuls_lane_f32(v39.f32[1] + v39.f32[1], *v39.f32, 1);
        v49 = vmuls_lane_f32(v39.f32[2] + v39.f32[2], v39, 2);
        v50 = vmuls_lane_f32(v39.f32[0] + v39.f32[0], *v39.f32, 1);
        v51 = vmuls_lane_f32(v39.f32[0] + v39.f32[0], v39, 2);
        v39.f32[0] = vmuls_lane_f32(v39.f32[1] + v39.f32[1], v39, 2);
        v44.f32[0] = vmuls_lane_f32(v44.f32[0], v38, 3);
        v41.f32[0] = vmuls_lane_f32(v39.f32[1] + v39.f32[1], v38, 3);
        v52 = vmuls_lane_f32(v39.f32[2] + v39.f32[2], v38, 3);
        HIDWORD(v53) = 0;
        *&v53 = 1.0 - (v48 + v49);
        *(&v53 + 1) = v50 + v52;
        *(&v53 + 2) = v51 - v41.f32[0];
        *v45.i32 = 1.0 - (v47 + v49);
        HIDWORD(v54) = 0;
        *&v54 = v50 - v52;
        DWORD1(v54) = v45.i32[0];
        *(&v54 + 2) = v39.f32[0] + v44.f32[0];
        v41.i32[3] = 0;
        v41.f32[0] = v51 + v41.f32[0];
        v41.f32[1] = v39.f32[0] - v44.f32[0];
        v41.f32[2] = 1.0 - (v47 + v48);
        v46.i32[3] = 1.0;
        *v17 = v53;
        v17[1] = v54;
        v17[2] = v41;
        v17[3] = v46;
        v10 = *buf;
        if (*buf && (buf[8] & 1) != 0)
        {
          v10 = (*(**buf + 40))();
        }

        ++v12;
      }

      v18 = 0;
      v16 = &v90;
      v17 = &v97;
      v13 = 1;
    }

    while ((v19 & 1) != 0);
    if (v12)
    {
      v55 = *(a2 + 672);
      if (v55)
      {
        v56 = 0;
        v57 = *(a2 + 656);
        while ((*v57 & 0x80000000) == 0)
        {
          v57 += 576;
          if (v55 == ++v56)
          {
            LODWORD(v56) = *(a2 + 672);
            break;
          }
        }
      }

      else
      {
        LODWORD(v56) = 0;
      }

      if (v56 != v55)
      {
        v59 = *(&v90 + 1);
        v60 = *(a2 + 656);
        do
        {
          if (*(v60 + 2304 * v56 + 8) == v59)
          {
            v61 = (v60 + 2304 * v56);
            re::VFXLateLatch::patchTrackedVFXDrawCalls(&v61[114].n128_i8[8], v61 + 120, &v93, 2);
            re::VisualDepthLateLatch::patchCameraMatrix(&v61[117], &v93, v12);
            *buf = &v93;
            *&buf[8] = 2;
            re::ViewConstantsLateLatch::patchTrackedViewConstantsBuffers(v61[16].n128_u64, &v61[120], buf, v12, v62, v63, v64, v65, v75, v76, v77, v78, v79, v80, v81.i64[0], v81.i64[1], v82.i64[0], v82.i64[1], v83.i64[0], v83.i64[1], v84, *(&v84 + 1), v85.i64[0], v85.i64[1], v86, v87, v88, v89, v90, *buf, v92, v93, v94, v95, v96, v97, v98, *(&v98 + 1), v99[0], v99[1], v100, *(&v100 + 1), v101, *(&v101 + 1), v102, v103, v104, v105, v106, v107, v108, v109, v110);
            re::InstanceConstantsLateLatch::patchTrackedInstanceConstantsBuffers(&v61[112], *(*(a2 + 8) + 184), *(a2 + 384) & 0xFFFFFFFFFFFFFFFLL, &v61[120]);
            LODWORD(v55) = *(a2 + 672);
            v60 = *(a2 + 656);
          }

          if (v55 <= v56 + 1)
          {
            v66 = v56 + 1;
          }

          else
          {
            v66 = v55;
          }

          while (v66 - 1 != v56)
          {
            LODWORD(v56) = v56 + 1;
            if ((*(v60 + 2304 * v56) & 0x80000000) != 0)
            {
              goto LABEL_44;
            }
          }

          LODWORD(v56) = v66;
LABEL_44:
          ;
        }

        while (v56 != v55);
      }

      if ((*(a2 + 704) & 1) == 0 && (atomic_exchange(re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(re::RenderFrame const&,char const*,re::Optional<re::Matrix4x4<float>> const&,char const*)::__FILE____LINE___logged, 1u) & 1) == 0)
      {
        v67 = *re::graphicsLogObjects(v10);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v68 = *(a2 + 696);
          *buf = 134217984;
          *&buf[4] = v68;
          _os_log_impl(&dword_1E1C61000, v67, OS_LOG_TYPE_DEFAULT, "Patch Functions Overflowed the inline space and triggered an alloc. Size: %zu", buf, 0xCu);
        }
      }

      v69 = *(a2 + 696);
      if (v69)
      {
        v70 = 0;
        for (i = 0; i < v69; ++i)
        {
          if (*(a2 + 704))
          {
            v73 = *(a2 + 712 + v70);
            v74 = *(&v90 + 1);
            v72 = a2 + 712;
          }

          else
          {
            v72 = *(a2 + 720);
            v73 = *(v72 + v70);
            v74 = *(&v90 + 1);
          }

          if (v73 == v74)
          {
            (*(*(v72 + v70 + 8) + 16))(v72 + v70 + 8, &v93, &v97);
            v69 = *(a2 + 696);
          }

          v70 += 512;
        }
      }
    }

    else
    {
      v58 = *re::graphicsLogObjects(v10);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "patchPostEncodeTransforms";
        _os_log_error_impl(&dword_1E1C61000, v58, OS_LOG_TYPE_ERROR, "%s: Expecting at least one viewport", buf, 0xCu);
      }
    }
  }
}

void re::RenderFrameWorkloadPatchCamera::~RenderFrameWorkloadPatchCamera(re::RenderFrameWorkloadPatchCamera *this)
{
  for (i = 0; i != -192; i -= 96)
  {
    if (*(this + i + 288) == 1)
    {
      re::DynamicString::deinit((this + i + 344));
    }
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  v2 = 0;
  while (1)
  {
    if (*(this + v2 + 288) == 1)
    {
      re::DynamicString::deinit((this + v2 + 344));
    }

    v2 -= 96;
    if (v2 == -192)
    {
      *this = &unk_1F5CCF868;
      objc_destructInstance(this + 8);

      JUMPOUT(0x1E6906520);
    }
  }
}

re::ContactDeformerModelBuilder *re::ContactDeformerModelBuilder::ContactDeformerModelBuilder(re::ContactDeformerModelBuilder *this, re::Allocator *a2, const re::mtl::Device *a3, uint64_t a4, unint64_t a5, DeformationModelData *a6)
{
  *this = a3;
  *(this + 1) = a6;
  *(this + 2) = 0;
  v10 = re::DeformationModelData::create<re::ContactDeformer,re::ContactDeformerModel>(a6, a2);
  re::FixedArray<re::FixedArray<re::ContactDeformerModel::ContactDeformerTarget>>::init<>(v10 + 3, a2, a5);
  re::FixedArray<re::StringID>::init<>(v10, a2, a5);
  re::FixedArray<unsigned short>::init<unsigned short const&>(v10 + 6, a2, a4, &re::ContactDeformerModel::kInvalidIndex);
  return this;
}

uint64_t re::DeformationModelData::create<re::ContactDeformer,re::ContactDeformerModel>(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 32))(a2, 88, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = &str_67;
  v6[0] = &unk_1F5D04678;
  v6[1] = a2;
  v6[3] = v6;
  v7 = v4;
  v8[3] = v8;
  v8[0] = &unk_1F5D04678;
  v8[1] = a2;
  std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:nn200100]((a1 + 560), &v7);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v7);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v6);
  return *(a1 + 560);
}

void re::FixedArray<re::FixedArray<re::ContactDeformerModel::ContactDeformerTarget>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 24 * a3;
  v6 = (*(*a2 + 32))(a2, 24 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 24);
    v8 = (v8 + v5 - 24);
  }

  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
}

void *re::FixedArray<unsigned short>::init<unsigned short const&>(void *result, uint64_t a2, uint64_t a3, __int16 *a4)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 < 0)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 2, a3);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  result = (*(*a2 + 32))(a2, 2 * a3, 2);
  v6[2] = result;
  if (!result)
  {
LABEL_10:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v8 = a3 - 1;
  if (a3 != 1)
  {
    v9 = *a4;
    do
    {
      *result = v9;
      result = (result + 2);
      --v8;
    }

    while (v8);
  }

  *result = *a4;
  return result;
}

unint64_t *re::ContactDeformerModelBuilder::initTargetsForMeshPart(re::ContactDeformerModelBuilder *this, unint64_t a2, unint64_t a3, unint64_t a4, const re::StringID *a5)
{
  v6 = *(*(this + 1) + 560);
  if (v6[7] <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  *(v6[8] + 2 * a2) = a3;
  if (v6[4] <= a3)
  {
LABEL_14:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  v5 = a4;
  v9 = (v6[5] + 24 * a3);
  v9[1] = v5;
  if (v5)
  {
    if (v5 >> 60)
    {
LABEL_16:
      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, v5);
      _os_crash();
      __break(1u);
LABEL_17:
      re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    v11 = 16 * v5;
    v9[2] = v12;
    if (!v12)
    {
      goto LABEL_17;
    }

    v14 = v12;
    if (v5 != 1)
    {
      bzero(v12, v11 - 16);
      v14 = (v14 + v11 - 16);
    }

    *v14 = 0;
    v14[1] = 0;
  }

  v5 = v6[1];
  if (v5 <= a3)
  {
LABEL_15:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v15 = (v6[2] + 16 * a3);

  return re::StringID::operator=(v15, a5);
}

void re::ContactDeformerModelBuilder::addContactTarget(_anonymous_namespace_ *a1, unint64_t a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 2);
  v6 = *(*(a1 + 1) + 560);
  *(a1 + 2) = v5 + 1;
  v27 = *a3;
  v28 = 0;
  if (!a3[2])
  {
    goto LABEL_21;
  }

  v7 = a3;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v10 = 0;
  LODWORD(v11) = 1.0;
  LODWORD(v12) = 998277249;
  do
  {
    v13 = v7[2];
    if (v13 <= v10)
    {
      re::internal::assertLog(6, v9, v11, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, v13);
      _os_crash();
      __break(1u);
LABEL_27:
      v29 = 0;
      v39 = 0u;
      v40 = 0u;
      memset(v38, 0, sizeof(v38));
      *v37 = 0u;
      a2 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v30 = 136315906;
      *&v30[4] = "operator[]";
      v31 = 1024;
      v32 = 468;
      v33 = 2048;
      v34 = v10;
      v35 = 2048;
      v36 = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_28:
      v24 = 0;
      v39 = 0u;
      v40 = 0u;
      memset(v38, 0, sizeof(v38));
      *v37 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v30 = 136315906;
      *&v30[4] = "operator[]";
      v31 = 1024;
      v32 = 468;
      v33 = 2048;
      v34 = a2;
      v35 = 2048;
      v36 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_29:
      v24 = 0;
      v39 = 0u;
      v40 = 0u;
      memset(v38, 0, sizeof(v38));
      *v37 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v30 = 136315906;
      *&v30[4] = "operator[]";
      v31 = 1024;
      v32 = 468;
      v33 = 2048;
      v34 = v5;
      v35 = 2048;
      v36 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v14 = *(v7[1] + 4 * v10);
    if (v14 >= 1.0)
    {
      LOBYTE(v15) = -1;
    }

    else if (v14 <= 0.0)
    {
      LOBYTE(v15) = 0;
    }

    else
    {
      v15 = (v14 / 0.0039216);
    }

    v3 = v25;
    if (v25 <= v10)
    {
      goto LABEL_27;
    }

    *(v26 + v10++) = v15;
  }

  while (v10 != 64800);
  v16 = **a1;
  v29 = 0;
  *v30 = v16;
  v22 = 0;
  v23 = 10;
  v37[0] = 2;
  TextureCompressionType = re::mtl::getTextureCompressionType(v30, &v22, &v23, &v29, v37);
  v18 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  [v18 setUsage_];
  if (([v18 respondsToSelector_] & 1) != 0 || objc_msgSend(v18, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v18 setCompressionType_];
  }

  [v18 setStorageMode_];
  [v18 setWidth_];
  [v18 setHeight_];
  [v18 setPixelFormat_];
  re::mtl::Device::makeTexture(v18, *a1, v37);
  NS::SharedPtr<MTL::Texture>::operator=(&v28, v37);
  if (v37[0])
  {
  }

  v37[0] = 0;
  v37[1] = 0;
  *&v38[0] = 0;
  *(v38 + 8) = xmmword_1E30A36F0;
  *(&v38[1] + 1) = 1;
  [v28 replaceRegion:v37 mipmapLevel:0 withBytes:v26 bytesPerRow:360];
  if (v18)
  {
  }

  if (v24 && v25)
  {
    (*(*v24 + 40))();
  }

LABEL_21:
  v7 = *(v6 + 32);
  if (v7 <= a2)
  {
    goto LABEL_28;
  }

  v19 = *(v6 + 40) + 24 * a2;
  v20 = *(v19 + 8);
  if (v20 <= v5)
  {
    goto LABEL_29;
  }

  v21 = *(v19 + 16) + 16 * v5;
  *v21 = v27;
  NS::SharedPtr<MTL::Buffer>::operator=((v21 + 8), &v28);
  if (v28)
  {
  }
}

uint64_t re::ContactDeformer::addDeformationInstance@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2)
  {
    v4 = 0;
  }

  else if (*(result + 32) == 1)
  {
    v4 = *(result + 33);
  }

  else
  {
    v4 = 1;
  }

  *a4 = 0xFFFFFFFFLL;
  *(a4 + 8) = xmmword_1E30A3700;
  LODWORD(v5) = *a3;
  if (v5 == 255)
  {
    v5 = *(a3 + 2);
    if (v5)
    {
      LOBYTE(v5) = (*(v5 + 208) != 0) & v4;
    }
  }

  *(a4 + 24) = v5;
  *(a4 + 32) = -1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  return result;
}

uint64_t re::ContactDeformer::init(uint64_t result, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*(result + 32) & 1) == 0)
  {
    v2 = result;
    *(result + 32) = 1;
    v3 = *(a2 + 16);
    if (v3)
    {
      if (*(v3 + 208))
      {
        *(result + 8) = *(v3 + 32);
        if (*(v3 + 313) == 1)
        {
          v4 = 0;
          v5 = 1;
          v26 = 1;
          v25 = 0;
          v6 = &v26;
          do
          {
            v7 = v5;
            v12 = 0;
            v15 = 0;
            memset(v18, 0, sizeof(v18));
            v19 = 0;
            v23 = 0;
            v24 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0;
            memset(v27, 0, sizeof(v27));
            re::DynamicString::setCapacity(v27, 0);
            v32 = 0u;
            v31 = 0u;
            v30 = 0u;
            v29 = 0u;
            LOBYTE(v29) = *v6;
            v28 = 53;
            re::DynamicArray<re::TechniqueFunctionConstant>::add(v18, v27);
            ComputePipelineState = re::getOrCreateComputePipelineState(v3, &v10);
            NS::SharedPtr<MTL::Buffer>::operator=((v2 + 16 + 8 * v4), ComputePipelineState);
            if (*&v27[0] && (BYTE8(v27[0]) & 1) != 0)
            {
              (*(**&v27[0] + 40))();
            }

            if (v23)
            {

              v23 = 0;
            }

            re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v18);
            if (v15 == 1 && v16)
            {
              if (BYTE8(v16))
              {
                (*(*v16 + 40))();
              }

              v16 = 0u;
              v17 = 0u;
            }

            if (v12 == 1 && v13)
            {
              if (BYTE8(v13))
              {
                (*(*v13 + 40))();
              }

              v14 = 0u;
              v13 = 0u;
            }

            result = v10;
            if (v10)
            {
              if (v11)
              {
                result = (*(*v10 + 40))();
              }
            }

            v5 = 0;
            v6 = &v25;
            v4 = 1;
          }

          while ((v7 & 1) != 0);
          *(v2 + 33) = 1;
        }
      }
    }
  }

  return result;
}

uint64_t re::ContactDeformer::allocateBuffers(re *a1, size_t a2, unint64_t a3, size_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = a5;
  v113 = *MEMORY[0x1E69E9840];
  v80 = *a5;
  v11 = *(*a5 + 48);
  re::globalAllocators(a1);
  v12 = (*(*a2 + 32))(a2, 24, 8);
  v14 = v12;
  v12[1] = v11;
  v12[2] = 0;
  v87 = a2;
  *v12 = a2;
  if (v11)
  {
    if (v11 >= 0x276276276276277)
    {
LABEL_71:
      re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 104, v11);
      _os_crash();
      __break(1u);
      goto LABEL_72;
    }

    v6 = 104 * v11;
    v12 = (*(*a2 + 32))(a2, 104 * v11, 8);
    v14[2] = v12;
    if (!v12)
    {
LABEL_72:
      re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
LABEL_73:
      re::internal::assertLog(5, v65, "assertion failure: '%s' (%s:line %i) Invalid deformation execution mode: %u.", "!Unreachable code", "allocateBuffers", 272, a4);
      _os_crash();
      __break(1u);
    }

    a2 = v12;
    if (v11 != 1)
    {
      v6 -= 104;
      bzero(v12, v6);
      a2 += v6;
    }

    *(a2 + 96) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  v16 = re::globalAllocators(v12)[2];
  *&v108 = &unk_1F5D04620;
  *(&v109 + 1) = v16;
  *&v110 = &v108;
  v81 = (*(*v87 + 16))(v87, v14, &v108);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v108);
  if (v11)
  {
    v17 = 0;
    v77 = v7;
    v78 = a4;
    v90 = a3;
    v76 = v11;
    while (1)
    {
      v18 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v80 + 8, v17);
      v20 = *(v18 + 8);
      v21 = v7[6];
      if (v21 <= v20)
      {
        goto LABEL_60;
      }

      v83 = v18;
      v22 = v7[5];
      v23 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v7[1], v20);
      a2 = *(*(v23 + 344) + 560);
      a4 = *(v23 + 392);
      v6 = *(a2 + 56);
      if (v6 <= a4)
      {
        goto LABEL_61;
      }

      v86 = v17;
      v24 = *(a1 + 1);
      v6 = WORD1(*(*(v23 + 368) + 16));
      v17 = *(v24 + 24);
      if (v17 <= v6)
      {
        goto LABEL_62;
      }

      v25 = *(*(v24 + 40) + 16 * WORD1(*(*(v23 + 368) + 16))) + 864 * *(*(v23 + 368) + 16);
      v6 = *(v25 + 56);
      if (v6 <= a4)
      {
        goto LABEL_63;
      }

      v26 = (v22 + 312 * v20);
      v11 = *(*(a2 + 64) + 2 * a4);
      v98 = *(v25 + 64);
      LOBYTE(v108) = 1;
      v27 = v23;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 1u);
      v28 = *(v26[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 7, &v108) + 20);
      LOBYTE(v108) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 1u);
      v85 = v26;
      v30 = *(v26[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 15, &v108) + 4);
      v82 = v27;
      v31 = *(v27 + 352);
      v32 = *(v31 + 136);
      if (v32)
      {
        v33 = re::BufferSlice::contents(*(v31 + 136));
        v88 = *(v32 + 36) >> 6;
        v89 = v33;
      }

      else
      {
        v88 = 0;
        v89 = 0;
      }

      v17 = v86;
      v6 = *(a2 + 32);
      if (v6 <= v11)
      {
        goto LABEL_64;
      }

      v6 = *(v81 + 8);
      if (v6 <= v86)
      {
        goto LABEL_65;
      }

      a3 = *(*(a2 + 40) + 24 * v11 + 8);
      v34 = *(v81 + 16) + 104 * v86;
      *(v34 + 96) = a3;
      *v34 = v87;
      *(v34 + 8) = a3;
      if (a3)
      {
        if (a3 >= 0xAAAAAAAAAAAAAABLL)
        {
          goto LABEL_67;
        }

        v35 = (*(*v87 + 32))(v87, 24 * a3, 8);
        *(v34 + 16) = v35;
        if (!v35)
        {
          goto LABEL_68;
        }

        v37 = v35;
        if (a3 != 1)
        {
          bzero(v35, 24 * a3 - 24);
          v37 += 3 * a3 - 3;
        }

        *v37 = 0;
        v37[1] = 0;
        v37[2] = 0;
      }

      v6 = v98 + 544 * a4;
      a4 = v28 / v30;
      re::FixedArray<NS::SharedPtr<MTL::Texture>>::init<>((v34 + 72), v87, a3);
      v38 = v6;
      do
      {
        v39 = v38;
        v38 = *v38;
      }

      while (v38 && !v39[8]);
      v17 = *(a2 + 8);
      if (v17 <= v11)
      {
        goto LABEL_66;
      }

      *&v108 = *(*(a2 + 16) + 16 * v11) >> 1;
      v40 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v39 + 5, &v108);
      v84 = 12 * a4;
      v41 = v40 == -1 ? 0 : (v39[6] + 16 * v40 + 8);
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(v90, 4 * a4, 4uLL, &v108);
      v42 = v108;
      v44 = DWORD2(v108);
      v43 = HIDWORD(v108);
      v45 = v109;
      *(v34 + 24) = v108;
      *(v34 + 32) = v44;
      *(v34 + 36) = v43;
      *(v34 + 40) = v45;
      if (v41)
      {
        v46 = re::AttributeTable::buffers(v6);
        v48 = *v41;
        if (v47 <= v48)
        {
          goto LABEL_69;
        }

        v49 = re::BufferView::contents((v46 + 24 * *v41));
        memcpy((v42 + v44), v49, 4 * a4);
      }

      else if (v43 >= 4)
      {
        bzero((v42 + v44), v43 & 0xFFFFFFFC);
      }

      if (a3)
      {
        break;
      }

LABEL_47:
      a3 = v90;
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(v90, v84, 4uLL, &v108);
      v66 = v109;
      v67 = *(&v108 + 1);
      *(v34 + 48) = v108;
      *(v34 + 56) = v67;
      *(v34 + 64) = v66;
      a4 = v78;
      if (v78)
      {
        v11 = v76;
        v7 = v77;
        v68 = v86;
        if (v78 != 1)
        {
          goto LABEL_73;
        }

        v75 = v75 & 0xFFFFFF0000000000 | 0x1E00000000;
        v69 = re::DeformationBufferAllocator::alloc(*(v82 + 360), v77[2], 1, v74 & 0xFFFF000000000000 | 0x1010001000CLL, v75, *(v83 + 16), v84);
        v70 = *(v82 + 360);
        a2 = *(v83 + 16);
        v6 = *(v70 + 8);
        if (v6 <= a2)
        {
          goto LABEL_70;
        }

        v74 = v74 & 0xFFFF000000000000 | 0x1010001000CLL;
        v71 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](*(v70 + 16) + 72 * *(v83 + 16) + 16, v69);
        WORD2(v108) = 257;
        LODWORD(v108) = 65548;
        BYTE12(v108) = 30;
        DWORD2(v108) = 0;
        re::DeformationVertexBufferState::setOutputBuffer(v85, 1, 1, (v71 + 24), &v108);
      }

      else
      {
        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(v90, v84, 0x10uLL, &v108);
        LOWORD(v101) = 257;
        v100 = 65548;
        LOBYTE(v102) = 30;
        HIDWORD(v101) = 0;
        re::DeformationVertexBufferState::setOutputBuffer(v85, 1u, 0, &v108, &v100);
        v11 = v76;
        v7 = v77;
        v68 = v86;
      }

      v17 = v68 + 1;
      if (v17 == v11)
      {
        goto LABEL_53;
      }
    }

    v17 = 0;
    v50 = 0;
    v51 = 0;
    v6 = 0;
    while (1)
    {
      v52 = *(a2 + 32);
      if (v52 <= v11)
      {
        break;
      }

      v53 = *(a2 + 40) + 24 * v11;
      v52 = *(v53 + 8);
      if (v52 <= v6)
      {
        goto LABEL_55;
      }

      v54 = (*(v53 + 16) + v51);
      v55 = *v54;
      v56 = (v89 + (v55 << 6));
      v57 = v88 > v55;
      v58 = MEMORY[0x1E69E9B18];
      if (v57)
      {
        v58 = v56;
      }

      v114 = *v58;
      v97 = v114.columns[1];
      v99 = v58->columns[0];
      v95 = v114.columns[3];
      v96 = v114.columns[2];
      v59 = v54[1];
      v115 = __invert_f4(*v58);
      v93 = v115.columns[1];
      v94 = v115.columns[0];
      v91 = v115.columns[3];
      v92 = v115.columns[2];
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(v90, 0xA0uLL, 0x10uLL, &v108);
      v60 = v108;
      v61 = v109;
      v62 = (v108 + DWORD2(v108));
      v62->i32[0] = v59;
      v62[1] = v99;
      v62[2] = v97;
      v62[3] = v96;
      v62[4] = v95;
      v62[5] = v94;
      v62[6] = v93;
      v62[7] = v92;
      v62[8] = v91;
      v62[9].i32[0] = a4;
      v52 = *(v34 + 8);
      if (v52 <= v6)
      {
        goto LABEL_56;
      }

      v63 = *(v34 + 16) + v17;
      *v63 = v60;
      *(v63 + 16) = v61;
      v52 = *(a2 + 32);
      if (v52 <= v11)
      {
        goto LABEL_57;
      }

      v64 = *(a2 + 40) + 24 * v11;
      v52 = *(v64 + 8);
      if (v52 <= v6)
      {
        goto LABEL_58;
      }

      v52 = *(v34 + 80);
      if (v52 <= v6)
      {
        goto LABEL_59;
      }

      NS::SharedPtr<MTL::Buffer>::operator=((*(v34 + 88) + v50), (*(v64 + 16) + v51 + 8));
      ++v6;
      v51 += 16;
      v50 += 8;
      v17 += 24;
      if (a3 == v6)
      {
        goto LABEL_47;
      }
    }

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v100 = 136315906;
    v101 = "operator[]";
    v102 = 1024;
    v103 = 476;
    v104 = 2048;
    v105 = v11;
    v106 = 2048;
    v107 = v52;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_55:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v100 = 136315906;
    v101 = "operator[]";
    v102 = 1024;
    v103 = 476;
    v104 = 2048;
    v105 = v6;
    v106 = 2048;
    v107 = v52;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v100 = 136315906;
    v101 = "operator[]";
    v102 = 1024;
    v103 = 468;
    v104 = 2048;
    v105 = v6;
    v106 = 2048;
    v107 = v52;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_57:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v100 = 136315906;
    v101 = "operator[]";
    v102 = 1024;
    v103 = 476;
    v104 = 2048;
    v105 = v11;
    v106 = 2048;
    v107 = v52;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_58:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v100 = 136315906;
    v101 = "operator[]";
    v102 = 1024;
    v103 = 476;
    v104 = 2048;
    v105 = v6;
    v106 = 2048;
    v107 = v52;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_59:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v100 = 136315906;
    v101 = "operator[]";
    v102 = 1024;
    v103 = 468;
    v104 = 2048;
    v105 = v6;
    v106 = 2048;
    v107 = v52;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_60:
    re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v20, v21);
    _os_crash();
    __break(1u);
LABEL_61:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v100 = 136315906;
    v101 = "operator[]";
    v102 = 1024;
    v103 = 476;
    v104 = 2048;
    v105 = a4;
    v106 = 2048;
    v107 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_62:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v100 = 136315906;
    v101 = "operator[]";
    v102 = 1024;
    v103 = 797;
    v104 = 2048;
    v105 = v6;
    v106 = 2048;
    v107 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_63:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v100 = 136315906;
    v101 = "operator[]";
    v102 = 1024;
    v103 = 476;
    v104 = 2048;
    v105 = a4;
    v106 = 2048;
    v107 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_64:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v100 = 136315906;
    v101 = "operator[]";
    v102 = 1024;
    v103 = 476;
    v104 = 2048;
    v105 = v11;
    v106 = 2048;
    v107 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_65:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v100 = 136315906;
    v101 = "operator[]";
    v102 = 1024;
    v103 = 468;
    v104 = 2048;
    v105 = v17;
    v106 = 2048;
    v107 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_66:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v100 = 136315906;
    v101 = "operator[]";
    v102 = 1024;
    v103 = 476;
    v104 = 2048;
    v105 = v11;
    v106 = 2048;
    v107 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_67:
    re::internal::assertLog(6, v29, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash();
    __break(1u);
LABEL_68:
    re::internal::assertLog(4, v36, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
LABEL_69:
    re::internal::assertLog(6, v47, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v48, v47);
    _os_crash();
    __break(1u);
LABEL_70:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v100 = 136315906;
    v101 = "operator[]";
    v102 = 1024;
    v103 = 476;
    v104 = 2048;
    v105 = a2;
    v106 = 2048;
    v107 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  *a6 |= 2uLL;
  *(a6 + 9) = 1;
  return v81;
}

void re::FixedArray<NS::SharedPtr<MTL::Texture>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

uint64_t re::ContactDeformer::deformGPU(uint64_t a1, uint64_t a2, void **this, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Perform Contact");
  v32 = *a4;
  v31 = *(*a4 + 48);
  if (v31)
  {
    v8 = 0;
    v29 = a2;
    v30 = a4;
    while (1)
    {
      v9 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v32 + 8, v8);
      v11 = *(a2 + 8);
      if (v11 <= v8)
      {
        goto LABEL_27;
      }

      v12 = *(v9 + 8);
      v13 = a4[6];
      if (v13 <= v12)
      {
        goto LABEL_28;
      }

      v33 = v8;
      v14 = *(a2 + 16) + 104 * v8;
      v15 = (a4[5] + 312 * v12);
      LOBYTE(v39[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
      v16 = *(v15[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 7, v39) + 20);
      LOBYTE(v39[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
      v17 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 15, v39);
      if (*(v14 + 96))
      {
        break;
      }

LABEL_22:
      v8 = v33 + 1;
      a4 = v30;
      a2 = v29;
      if (v33 + 1 == v31)
      {
        return [*this popDebugGroup];
      }
    }

    v8 = 0;
    v18 = 0;
    v35 = v16 / *(v15[16] + 20 * v17 + 4) - 1;
    while (1)
    {
      v19 = *(v14 + 80);
      if (v19 <= v18)
      {
        break;
      }

      v20 = *(*(v14 + 88) + 8 * v18);
      if (v20)
      {
        v21 = 16;
      }

      else
      {
        v21 = 24;
      }

      v22 = [*(a1 + v21) maxTotalThreadsPerThreadgroup];
      [*this setComputePipelineState:*(a1 + v21)];
      if (v18)
      {
        v23 = *(v14 + 64);
        v24 = (v14 + 56);
      }

      else
      {
        LOBYTE(v39[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
        v23 = *(v15[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 7, v39) + 24);
        LOBYTE(v39[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
        v24 = (v15[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 7, v39) + 16);
      }

      [*this setBuffer:v23 offset:*v24 atIndex:1];
      if (v18 == *(v14 + 96) - 1)
      {
        LOBYTE(v39[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
        v25 = *(v15[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 23, v39) + 24);
        LOBYTE(v39[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
        v26 = (v15[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 23, v39) + 16);
      }

      else
      {
        v25 = *(v14 + 64);
        v26 = (v14 + 56);
      }

      [*this setBuffer:v25 offset:*v26 atIndex:0];
      [*this setBuffer:*(v14 + 40) offset:*(v14 + 32) atIndex:2];
      v4 = *(v14 + 8);
      if (v4 <= v18)
      {
        goto LABEL_25;
      }

      [*this setBuffer:*(*(v14 + 16) + v8 + 16) offset:*(*(v14 + 16) + v8 + 8) atIndex:3];
      if (v20)
      {
        v4 = *(v14 + 80);
        if (v4 <= v18)
        {
          goto LABEL_26;
        }

        [*this setTexture:*(*(v14 + 88) + 8 * v18) atIndex:0];
      }

      v27 = *this;
      *&v39[0] = (v35 + v22) / v22;
      *(v39 + 8) = vdupq_n_s64(1uLL);
      *v36 = v22;
      *&v36[8] = *(v39 + 8);
      [v27 dispatchThreadgroups:v39 threadsPerThreadgroup:v36];
      ++v18;
      v8 += 24;
      if (v18 >= *(v14 + 96))
      {
        goto LABEL_22;
      }
    }

    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    memset(v39, 0, sizeof(v39));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v36 = 136315906;
    *&v36[4] = "operator[]";
    *&v36[12] = 1024;
    *&v36[14] = 476;
    *&v36[18] = 2048;
    *&v36[20] = v18;
    v37 = 2048;
    v38 = v19;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_25:
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    memset(v39, 0, sizeof(v39));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v36 = 136315906;
    *&v36[4] = "operator[]";
    *&v36[12] = 1024;
    *&v36[14] = 476;
    *&v36[18] = 2048;
    *&v36[20] = v18;
    v37 = 2048;
    v38 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_26:
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    memset(v39, 0, sizeof(v39));
    v11 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v36 = 136315906;
    *&v36[4] = "operator[]";
    *&v36[12] = 1024;
    *&v36[14] = 476;
    *&v36[18] = 2048;
    *&v36[20] = v18;
    v37 = 2048;
    v38 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_27:
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    memset(v39, 0, sizeof(v39));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v36 = 136315906;
    *&v36[4] = "operator[]";
    *&v36[12] = 1024;
    *&v36[14] = 468;
    *&v36[18] = 2048;
    *&v36[20] = v8;
    v37 = 2048;
    v38 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_28:
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v12, v13);
    _os_crash();
    __break(1u);
  }

  return [*this popDebugGroup];
}

void re::ContactDeformer::deformCPU(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  v4 = *(*a3 + 48);
  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v8 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v3 + 8, v7);
      if (*(a2 + 8) <= v7)
      {
        goto LABEL_18;
      }

      v10 = *(v8 + 8);
      v11 = a3[6];
      if (v11 <= v10)
      {
        goto LABEL_19;
      }

      v12 = *(a2 + 16) + 104 * v7;
      v13 = a3[5] + 312 * v10;
      LOBYTE(v37) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 1u);
      v14 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v13 + 184), &v37);
      v16 = *(v12 + 96);
      if (v16)
      {
        break;
      }

LABEL_14:
      if (++v7 == v4)
      {
        return;
      }
    }

    v17 = 0;
    v18 = *(v13 + 192) + 32 * v14;
    v19 = *(v18 + 20);
    v20 = (*(v12 + 24) + *(v12 + 32));
    v21 = *(v12 + 8);
    v22 = *(v18 + 8) + *(v18 + 16) + 8;
    while (1)
    {
      if (v17 == v21)
      {
        goto LABEL_17;
      }

      v23 = (*(*(v12 + 16) + 24 * v17) + *(*(v12 + 16) + 24 * v17 + 8));
      v24 = v23[9].u32[0];
      v25 = v20;
      v26 = v19 / 0xCuLL;
      v27 = v22;
      if (v24)
      {
        break;
      }

LABEL_13:
      if (++v17 == v16)
      {
        goto LABEL_14;
      }
    }

    while (v26)
    {
      v28 = vaddq_f32(v23[8], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v23[5], *(v27 - 2)), v23[6], *(v27 - 1)), v23[7], *v27));
      v29 = vmulq_f32(v28, v28);
      v29.f32[0] = v29.f32[2] + vaddv_f32(*v29.f32);
      v30 = sqrtf(v29.f32[0]);
      v31 = v29.i32[0];
      *v29.f32 = vrsqrte_f32(v29.u32[0]);
      *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v31, vmul_f32(*v29.f32, *v29.f32)));
      v32 = vmulq_n_f32(v28, vmul_f32(*v29.f32, vrsqrts_f32(v31, vmul_f32(*v29.f32, *v29.f32))).f32[0]);
      v33 = *v25++;
      v34 = (v23->f32[0] + v33) - v30;
      if (v34 < 0.0)
      {
        v34 = 0.0;
      }

      v35 = vaddq_f32(v28, vmulq_n_f32(v32, v34));
      v36 = vaddq_f32(v23[4], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23[1], v35.f32[0]), v23[2], *v35.f32, 1), v23[3], v35, 2));
      *(v27 - 1) = v36.i64[0];
      *v27 = v36.f32[2];
      v27 += 3;
      --v26;
      if (!--v24)
      {
        goto LABEL_13;
      }
    }

    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v19 / 0xCuLL, v19 / 0xCuLL);
    _os_crash();
    __break(1u);
LABEL_17:
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_18:
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v10, v11);
    _os_crash();
    __break(1u);
  }
}

void re::ContactDeformerModelUtil::heightMapForTarget(re::ContactDeformerModelUtil *this@<X0>, const DeformationModelData *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *(this + 70);
  if (v5)
  {
    if (*(v5 + 32) > a2)
    {
      v6 = *(v5 + 40) + 24 * a2;
      if (*(v6 + 8) > a3)
      {
        v7 = *(*(v6 + 16) + 16 * a3 + 8);
        if (v7)
        {
          v8 = v7;
          if (([v7 width] == 360 || objc_msgSend(v8, sel_height) == 180) && objc_msgSend(v8, sel_pixelFormat) == 10)
          {
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v29 = 0uLL;
            *&v30[0] = 0;
            *(v30 + 8) = xmmword_1E30A36F0;
            *(&v30[1] + 1) = 1;
            [v8 getBytes:v19 bytesPerRow:360 fromRegion:&v29 mipmapLevel:0];
            v11 = 0;
            v13 = v18;
            v12 = v19;
            v15 = a4[1];
            v14 = a4[2];
            v16.n128_u32[0] = 998277249;
            do
            {
              if (v13 == v11)
              {
                v20 = 0;
                v31 = 0u;
                v32 = 0u;
                memset(v30, 0, sizeof(v30));
                v29 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v21 = 136315906;
                v22 = "operator[]";
                v23 = 1024;
                v24 = 468;
                v25 = 2048;
                v26 = v13;
                v27 = 2048;
                v28 = v13;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_17:
                v20 = 0;
                v31 = 0u;
                v32 = 0u;
                memset(v30, 0, sizeof(v30));
                v29 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v21 = 136315906;
                v22 = "operator[]";
                v23 = 1024;
                v24 = 468;
                v25 = 2048;
                v26 = v15;
                v27 = 2048;
                v28 = v15;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
              }

              if (v15 == v11)
              {
                goto LABEL_17;
              }

              LOBYTE(v10) = *(v12 + v11);
              v10 = LODWORD(v10) * 0.0039216;
              *(v14 + 4 * v11++) = v10;
            }

            while (v11 != 64800);
            if (v17)
            {
              (*(*v17 + 40))(v17, v16);
            }
          }
        }
      }
    }
  }
}

re::StringID *re::ContactDeformerModelUtil::offsetBufferName@<X0>(re::ContactDeformerModelUtil *this@<X0>, const DeformationModelData *a2@<X1>, re::StringID *a3@<X8>)
{
  v3 = *(this + 70);
  if (v3 && *(v3 + 8) > a2)
  {
    return re::StringID::StringID(a3, (*(v3 + 16) + 16 * a2));
  }

  else
  {
    return re::StringID::invalid(a3);
  }
}

size_t re::ContactDeformerModelUtil::computeContactModelSizeExcludingMetalBuffers(re::ContactDeformerModelUtil *this, const DeformationModelData *a2)
{
  v2 = *(this + 70);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  v4 = 16 * v3 + 88;
  if (v3)
  {
    v5 = (*(v2 + 16) + 8);
    do
    {
      if (*(v5 - 1))
      {
        v6 = strlen(*v5) + 1;
      }

      else
      {
        v6 = 0;
      }

      v4 += v6;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  v7 = *(v2 + 32);
  v8 = v4 + 24 * v7;
  if (v7)
  {
    v9 = (*(v2 + 40) + 8);
    do
    {
      v10 = *v9;
      v9 += 3;
      v8 += 16 * v10;
      --v7;
    }

    while (v7);
  }

  v11 = v8 + 2 * *(v2 + 56);
  if (*(v2 + 72))
  {
    v12 = strlen(*(v2 + 80)) + 1;
  }

  else
  {
    v12 = 0;
  }

  return v11 + v12;
}

void re::ContactDeformer::~ContactDeformer(re::ContactDeformer *this)
{
  for (i = 24; i != 8; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }
}

{
  v2 = 24;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {

      *(this + v2) = 0;
    }

    v2 -= 8;
    if (v2 == 8)
    {

      JUMPOUT(0x1E6906520);
    }
  }
}

void re::internal::Callable<re::ContactDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::operator()(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (**a2)
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = 104 * v3;
      v5 = (v2[2] + 72);
      do
      {
        re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(v5);
        v6 = *(v5 - 9);
        if (v6)
        {
          if (*(v5 - 8))
          {
            (*(*v6 + 40))(v6, *(v5 - 7));
            *(v5 - 8) = 0;
            *(v5 - 7) = 0;
          }

          *(v5 - 9) = 0;
        }

        v5 += 13;
        v4 -= 104;
      }

      while (v4);
      (*(**v2 + 40))(*v2, v2[2]);
      v2[1] = 0;
      v2[2] = 0;
    }

    *v2 = 0;
  }
}

void *re::internal::Callable<re::ContactDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04620;
  return result;
}

void *re::internal::Callable<re::ContactDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04620;
  return result;
}

uint64_t *std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(void *)>::operator()((a1 + 1), v5);
  }

  std::__function::__value_func<void ()(void *)>::operator=[abi:nn200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_15ContactDeformerENS2_20ContactDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D04678;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_15ContactDeformerENS2_20ContactDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EEclEOSE_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::StringID::destroyString((v2 + 72));
    re::FixedArray<CoreIKTransform>::deinit((v2 + 48));
    if (*(v2 + 24))
    {
      v4 = *(v2 + 32);
      if (v4)
      {
        v5 = *(v2 + 40);
        v6 = &v5[3 * v4];
        do
        {
          if (*v5)
          {
            v7 = v5[1];
            if (v7)
            {
              v8 = 16 * v7;
              v9 = (v5[2] + 8);
              do
              {
                if (*v9)
                {

                  *v9 = 0;
                }

                v9 += 2;
                v8 -= 16;
              }

              while (v8);
              (*(**v5 + 40))(*v5, v5[2]);
              v5[1] = 0;
              v5[2] = 0;
            }

            *v5 = 0;
          }

          v5 += 3;
        }

        while (v5 != v6);
        (*(**(v2 + 24) + 40))(*(v2 + 24), *(v2 + 40));
        *(v2 + 32) = 0;
        *(v2 + 40) = 0;
      }

      *(v2 + 24) = 0;
    }

    re::FixedArray<re::StringID>::deinit(v2);
    v10 = *(*v3 + 40);

    return v10(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_15ContactDeformerENS2_20ContactDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void *)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(void *)>::operator=[abi:nn200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void *)>::operator=[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

re::RenderGraphResourceDescriptions *re::RenderGraphResourceDescriptions::RenderGraphResourceDescriptions(re::RenderGraphResourceDescriptions *this)
{
  *(this + 8) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 188) = 0u;
  *(this + 204) = 0x7FFFFFFFLL;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 60) = 0;
  *(this + 27) = 0;
  *(this + 36) = 0;
  *(this + 70) = 0;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 136, 8);
  v4 = re::Allocator::Allocator(v3, "RenderGraphResourceDescriptions", 1);
  *v4 = &unk_1F5D046F8;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 30) = 0;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 68) = 0u;
  *(v4 + 124) = 0x7FFFFFFFLL;
  *this = v4;
  *(v3 + 5) = 0;
  *(v3 + 6) = 1024;
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *(v3 + 8) = 0;
  *(v3 + 9) = 0;
  return this;
}

void re::RenderGraphResourceDescriptions::~RenderGraphResourceDescriptions(re::RenderGraphResourceDescriptions *this)
{
  re::RenderGraphResourceDescriptions::deinit(this);
  re::DynamicArray<unsigned long>::deinit(this + 256);
  re::DynamicArray<unsigned long>::deinit(this + 216);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 21);
  re::DynamicArray<unsigned long>::deinit(this + 128);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  re::DynamicArray<unsigned long>::deinit(this + 48);
  re::DynamicArray<re::RenderGraphResource>::deinit(this + 8);
}

re::GrowableLinearAllocator *re::RenderGraphResourceDescriptions::deinit(re::RenderGraphResourceDescriptions *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 88);
  re::DynamicArray<unsigned long>::deinit(this + 48);
  re::DynamicArray<re::RenderGraphResource>::deinit(this + 8);
  re::DynamicArray<unsigned long>::deinit(this + 128);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 21);
  re::DynamicArray<unsigned long>::deinit(this + 216);
  re::DynamicArray<unsigned long>::deinit(this + 256);
  result = *this;
  if (*this)
  {
    re::GrowableLinearAllocator::deinit(result);
    result = re::internal::destroyPersistent<re::GrowableLinearAllocator>("deinit", 36, *this);
    *this = 0;
  }

  return result;
}

uint64_t re::DynamicArray<re::RenderGraphResource>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = (v3 + 8);
        v6 = 48 * v4;
        do
        {
          re::StringID::destroyString(v5);
          v5 = (v5 + 48);
          v6 -= 48;
        }

        while (v6);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

double re::GrowableLinearAllocator::deinit(re::GrowableLinearAllocator *this)
{
  if (*(this + 6))
  {
    v2 = *(this + 8);
    if (v2)
    {
      do
      {
        v3 = *(v2 + 8);
        (*(**(this + 7) + 40))(*(this + 7));
        v2 = v3;
      }

      while (v3);
    }

    *(this + 9) = 0;
    result = 0.0;
    *(this + 56) = 0u;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
  }

  return result;
}

re *re::internal::destroyPersistent<re::GrowableLinearAllocator>(re *result, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::GrowableLinearAllocator::deinit(a3);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(a3 + 11);
    re::Allocator::~Allocator(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void re::RenderGraphResourceDescriptions::clear(re::RenderGraphResourceDescriptions *this)
{
  *(this + 13) = 0;
  ++*(this + 28);
  *(this + 8) = 0;
  ++*(this + 18);
  re::DynamicArray<re::RenderGraphResource>::clear(this + 8);
  *(this + 18) = 0;
  ++*(this + 38);
  re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(this + 168);
  *(this + 29) = 0;
  ++*(this + 60);
  *(this + 34) = 0;
  ++*(this + 70);
  v2 = *this;
  if (*this)
  {
    v3 = v2[8];
    if (v3)
    {
      v2[3] = v3;
      v2[4] = v3 + 16;
      v2[5] = v3 + 16;
      v2[9] = 0;
    }
  }
}

void re::DynamicArray<re::RenderGraphResource>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = (*(a1 + 32) + 8);
    v4 = 48 * v2;
    do
    {
      re::StringID::destroyString(v3);
      v3 = (v3 + 48);
      v4 -= 48;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_17, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 10;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

uint64_t re::RenderGraphResourceDescriptions::swap(re::RenderGraphResourceDescriptions *this, re::RenderGraphResourceDescriptions *a2)
{
  v4 = *this;
  v5 = a2 + 8;
  *this = *a2;
  *a2 = v4;
  v6 = a2 + 48;
  v8 = *(this + 1);
  v7 = (this + 8);
  *v11 = v8;
  *v7 = 0;
  *&v11[8] = *(this + 1);
  *(this + 1) = 0u;
  *(&v12 + 1) = *(this + 5);
  *(this + 5) = 0;
  ++*(this + 8);
  LODWORD(v12) = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v7, a2 + 8);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v5, v11);
  re::DynamicArray<re::RenderGraphResource>::deinit(v11);
  *v11 = *(this + 6);
  *(this + 6) = 0;
  *&v11[8] = *(this + 56);
  *(this + 56) = 0u;
  *(&v12 + 1) = *(this + 10);
  *(this + 10) = 0;
  ++*(this + 18);
  LODWORD(v12) = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 48, v6);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v6, v11);
  if (*v11 && *(&v12 + 1))
  {
    (*(**v11 + 40))();
  }

  *v11 = *(this + 11);
  *&v11[8] = *(this + 6);
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(&v12 + 1) = *(this + 15);
  *(this + 15) = 0;
  ++*(this + 28);
  LODWORD(v12) = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 88, a2 + 88);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 88, v11);
  if (*v11 && *(&v12 + 1))
  {
    (*(**v11 + 40))();
  }

  *v11 = *(this + 16);
  *&v11[8] = *(this + 136);
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(&v12 + 1) = *(this + 20);
  *(this + 20) = 0;
  ++*(this + 38);
  LODWORD(v12) = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 128, a2 + 128);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 128, v11);
  if (*v11 && *(&v12 + 1))
  {
    (*(**v11 + 40))();
  }

  *v11 = *(this + 168);
  *(this + 168) = 0u;
  *&v11[16] = *(this + 23);
  *(this + 23) = 0;
  v12 = *(this + 12);
  *(this + 12) = xmmword_1E3058120;
  v13 = 1;
  re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(this + 168, a2 + 168);
  re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(a2 + 168, v11);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v11);
  *v11 = *(this + 27);
  *(this + 27) = 0;
  *&v11[8] = *(this + 14);
  *(this + 14) = 0u;
  *(&v12 + 1) = *(this + 31);
  *(this + 31) = 0;
  ++*(this + 60);
  LODWORD(v12) = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 216, a2 + 216);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 216, v11);
  if (*v11 && *(&v12 + 1))
  {
    (*(**v11 + 40))();
  }

  *v11 = *(this + 32);
  v9 = *(this + 264);
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *&v11[8] = v9;
  *(&v12 + 1) = *(this + 36);
  *(this + 36) = 0;
  ++*(this + 70);
  LODWORD(v12) = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 256, a2 + 256);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 256, v11);
  result = *v11;
  if (*v11)
  {
    if (*(&v12 + 1))
    {
      return (*(**v11 + 40))();
    }
  }

  return result;
}

void *re::RenderGraphResourceDescriptions::resolveResourceSources(void *this)
{
  v1 = this;
  v2 = this[8];
  v3 = this[29];
  if (v3 >= v2)
  {
    if (v3 <= v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (this[28] < v2)
    {
      this = re::DynamicArray<re::RenderGraphTargetHandle>::setCapacity(this + 27, v2);
      v3 = *(v1 + 232);
    }

    v4 = v2 - v3;
    if (v2 > v3)
    {
      v5 = 16 * v3;
      do
      {
        v6 = (*(v1 + 248) + v5);
        *v6 = 0;
        v6[1] = -1;
        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }

  *(v1 + 232) = v2;
  ++*(v1 + 240);
LABEL_10:
  v7 = *(v1 + 104);
  v8 = *(v1 + 272);
  if (v8 >= v7)
  {
    if (v8 <= v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (*(v1 + 264) < v7)
    {
      this = re::DynamicArray<re::RenderGraphTargetHandle>::setCapacity((v1 + 256), *(v1 + 104));
      v8 = *(v1 + 272);
    }

    v9 = v7 - v8;
    if (v7 > v8)
    {
      v10 = 16 * v8;
      do
      {
        v11 = (*(v1 + 288) + v10);
        *v11 = 0;
        v11[1] = -1;
        v10 += 16;
        --v9;
      }

      while (v9);
    }
  }

  *(v1 + 272) = v7;
  ++*(v1 + 280);
  v8 = v7;
LABEL_19:
  v12 = *(v1 + 24);
  if (v12)
  {
    v13 = *(v1 + 40);
    v14 = (v13 + 24);
    v15 = *(v1 + 24);
    while (1)
    {
      v16 = *(v14 - 6);
      if (v16 == 1)
      {
        break;
      }

      if (!v16)
      {
        v17 = *v14;
        v18 = HIDWORD(*v14);
        if (*(v1 + 64) <= v18)
        {
          goto LABEL_51;
        }

        v19 = (*(v1 + 80) + 112 * v18);
        v20 = v19[19];
        if (*v19 != 4 || v20 == -1)
        {
          if (*(v1 + 232) <= v18)
          {
            goto LABEL_52;
          }

          v22 = *(v14 - 2);
        }

        else
        {
          if (v12 <= v20)
          {
            goto LABEL_55;
          }

          if (*(v1 + 232) <= v18)
          {
            goto LABEL_57;
          }

          v27 = v13 + 48 * v20;
          v17 = *(v27 + 24);
          v22 = *(v27 + 8);
        }

        v28 = v22 >> 1;
        v29 = *(v1 + 248);
LABEL_47:
        v31 = (v29 + 16 * v18);
        *v31 = v28;
        v31[1] = v17;
      }

      v14 += 6;
      if (!--v15)
      {
        return this;
      }
    }

    v17 = *v14;
    v18 = HIDWORD(*v14);
    if (*(v1 + 104) <= v18)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_51:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_52:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_53:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_54:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_55:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_56:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_57:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v23 = (*(v1 + 120) + 48 * v18);
    v24 = v23[7];
    if (*v23 != 4 || v24 == -1)
    {
      if (v8 <= v18)
      {
        goto LABEL_53;
      }

      v26 = *(v14 - 2);
    }

    else
    {
      if (v12 <= v24)
      {
        goto LABEL_54;
      }

      if (v8 <= v18)
      {
        goto LABEL_56;
      }

      v30 = v13 + 48 * v24;
      v17 = *(v30 + 24);
      v26 = *(v30 + 8);
    }

    v28 = v26 >> 1;
    v29 = *(v1 + 288);
    goto LABEL_47;
  }

  return this;
}

uint64_t re::DynamicArray<re::RenderGraphTargetDescription>::operator[](uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 112 * a2;
}

{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 112 * a2;
}

uint64_t re::DynamicArray<re::RenderGraphBufferDescription>::operator[](uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 48 * a2;
}

{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 48 * a2;
}

void re::RenderGraphResourceDescriptions::addTarget(re::GrowableLinearAllocator **this@<X0>, const re::RenderGraphTargetDescription *a2@<X1>, const char *__s@<X2>, void *a4@<X8>)
{
  v25 = -1;
  v26 = -1;
  v24 = -1;
  v21 = 0;
  v8 = strlen(__s);
  v9 = re::GrowableLinearAllocator::alloc(*this, v8 + 1, 0);
  memcpy(v9, __s, v8);
  v9[v8] = 0;
  v10 = *v9;
  if (*v9)
  {
    v11 = v9[1];
    if (v11)
    {
      v12 = v9 + 2;
      do
      {
        v10 = 31 * v10 + v11;
        v13 = *v12++;
        v11 = v13;
      }

      while (v13);
    }
  }

  v22 = 2 * v10;
  v23 = v9;
  re::DynamicArray<re::RenderGraphResource>::add((this + 1), &v21);
  re::DynamicArray<re::RenderGraphTargetDescription>::add((this + 6), a2);
  v15 = this[3];
  v16 = v15 - 1;
  v17 = this[5] + 48 * v15;
  v18 = *(this + 16) - 1;
  *(v17 - 24) = v16;
  *(v17 - 20) = v18;
  if (*(a2 + 40) == 1)
  {
    v19 = this[10] + 112 * this[8];
    *(v19 - 44) |= 1u;
  }

  v20 = this[5] + 48 * this[3];
  *a4 = *(v20 - 40) >> 1;
  a4[1] = *(v20 - 24);
  if (v22)
  {
    if (v22)
    {
    }
  }
}

__n128 re::DynamicArray<re::RenderGraphResource>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraphResource>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 48 * v4;
  *v5 = *a2;
  re::StringID::StringID((v5 + 8), (a2 + 8));
  result = *(a2 + 24);
  *(v5 + 40) = *(a2 + 40);
  *(v5 + 24) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::DynamicArray<re::RenderGraphTargetDescription>::add(_anonymous_namespace_ *this, __int128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraphTargetDescription>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 112 * v4;
  v6 = *a2;
  v7 = a2[2];
  *(v5 + 16) = a2[1];
  *(v5 + 32) = v7;
  *v5 = v6;
  result = a2[3];
  v9 = a2[4];
  v10 = a2[6];
  *(v5 + 80) = a2[5];
  *(v5 + 96) = v10;
  *(v5 + 48) = result;
  *(v5 + 64) = v9;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RenderGraphResourceDescriptions::targetDescription(re *a1, uint64_t *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(a2 + 3);
  if (v3 < v4)
  {
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a2 + 2);
      v8 = *(a2 + 3);
      v10 = *a2;
      *buf = 67109632;
      *&buf[4] = v8;
      *&buf[8] = 1024;
      *&buf[10] = v9;
      *&buf[14] = 2048;
      *&v24 = v10;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "TargetIndex: %u ResourceIndex: %u NameHash: %llu", buf, 0x18u);
    }

    if (!*(a1 + 8))
    {
      v3 = 0;
      v4 = *(a2 + 3);
      goto LABEL_18;
    }

    v11 = 0;
    do
    {
      v12 = re::DynamicArray<re::RenderGraphTargetDescription>::operator[](a1 + 48, v11);
      v13 = *re::graphicsLogObjects(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        re::RenderGraphTargetDescription::valuesToString(v12, buf);
        if (buf[8])
        {
          v14 = v24;
        }

        else
        {
          v14 = &buf[9];
        }

        *v15 = 136315138;
        v16 = v14;
        _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "%s", v15, 0xCu);
        if (*buf)
        {
          if (buf[8])
          {
            (*(**buf + 40))();
          }
        }
      }

      ++v11;
      v3 = *(a1 + 8);
    }

    while (v3 > v11);
    v4 = *(a2 + 3);
  }

  if (v3 > v4)
  {
    return *(a1 + 10) + 112 * v4;
  }

LABEL_18:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *buf = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v15 = 136315906;
  v16 = "operator[]";
  v17 = 1024;
  v18 = 789;
  v19 = 2048;
  v20 = v4;
  v21 = 2048;
  v22 = v3;
  _os_log_send_and_compose_impl();
  result = _os_crash_msg();
  __break(1u);
  return result;
}

{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(a2 + 3);
  if (v3 < v4)
  {
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a2 + 2);
      v8 = *(a2 + 3);
      v10 = *a2;
      *buf = 67109632;
      *&buf[4] = v8;
      *&buf[8] = 1024;
      *&buf[10] = v9;
      *&buf[14] = 2048;
      *&v24 = v10;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "TargetIndex: %u ResourceIndex: %u NameHash: %llu", buf, 0x18u);
    }

    if (!*(a1 + 8))
    {
      v3 = 0;
      v4 = *(a2 + 3);
      goto LABEL_18;
    }

    v11 = 0;
    do
    {
      v12 = re::DynamicArray<re::RenderGraphTargetDescription>::operator[](a1 + 48, v11);
      v13 = *re::graphicsLogObjects(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        re::RenderGraphTargetDescription::valuesToString(v12, buf);
        if (buf[8])
        {
          v14 = v24;
        }

        else
        {
          v14 = &buf[9];
        }

        *v15 = 136315138;
        v16 = v14;
        _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "%s", v15, 0xCu);
        if (*buf)
        {
          if (buf[8])
          {
            (*(**buf + 40))();
          }
        }
      }

      ++v11;
      v3 = *(a1 + 8);
    }

    while (v3 > v11);
    v4 = *(a2 + 3);
  }

  if (v3 > v4)
  {
    return *(a1 + 10) + 112 * v4;
  }

LABEL_18:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *buf = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v15 = 136315906;
  v16 = "operator[]";
  v17 = 1024;
  v18 = 797;
  v19 = 2048;
  v20 = v4;
  v21 = 2048;
  v22 = v3;
  _os_log_send_and_compose_impl();
  result = _os_crash_msg();
  __break(1u);
  return result;
}

double re::RenderGraphResourceDescriptions::targetDescriptionSource@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 12);
  if (*(a1 + 232) <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(a1 + 248) + 16 * v3;
  *a3 = *v4;
  result = *(v4 + 8);
  *(a3 + 8) = result;
  return result;
}

void re::RenderGraphResourceDescriptions::addBuffer(re::GrowableLinearAllocator **this@<X0>, const re::RenderGraphBufferDescription *a2@<X1>, const char *__s@<X2>, void *a4@<X8>)
{
  v24 = -1;
  v25 = -1;
  v23 = -1;
  v20 = 1;
  v8 = strlen(__s);
  v9 = re::GrowableLinearAllocator::alloc(*this, v8 + 1, 0);
  memcpy(v9, __s, v8);
  v9[v8] = 0;
  v10 = *v9;
  if (*v9)
  {
    v11 = v9[1];
    if (v11)
    {
      v12 = v9 + 2;
      do
      {
        v10 = 31 * v10 + v11;
        v13 = *v12++;
        v11 = v13;
      }

      while (v13);
    }
  }

  v21 = 2 * v10;
  v22 = v9;
  re::DynamicArray<re::RenderGraphResource>::add((this + 1), &v20);
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::add((this + 11), a2);
  v15 = this[3];
  v16 = v15 - 1;
  v17 = this[5] + 48 * v15;
  v18 = *(this + 26) - 1;
  *(v17 - 24) = v16;
  *(v17 - 20) = v18;
  v19 = this[5] + 48 * this[3];
  *a4 = *(v19 - 40) >> 1;
  a4[1] = *(v19 - 24);
  if (v21)
  {
    if (v21)
    {
    }
  }
}

uint64_t re::RenderGraphResourceDescriptions::bufferDescription(re *a1, uint64_t *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 13);
  v4 = *(a2 + 3);
  if (v3 < v4)
  {
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a2 + 2);
      v8 = *(a2 + 3);
      v10 = *a2;
      *buf = 67109632;
      *&buf[4] = v8;
      *&buf[8] = 1024;
      *&buf[10] = v9;
      *&buf[14] = 2048;
      *&v24 = v10;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "BufferIndex: %u ResourceIndex: %u NameHash: %llu", buf, 0x18u);
    }

    if (!*(a1 + 13))
    {
      v3 = 0;
      v4 = *(a2 + 3);
      goto LABEL_18;
    }

    v11 = 0;
    do
    {
      v12 = re::DynamicArray<re::RenderGraphBufferDescription>::operator[](a1 + 88, v11);
      v13 = *re::graphicsLogObjects(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        re::RenderGraphBufferDescription::valuesToString(v12, buf);
        if (buf[8])
        {
          v14 = v24;
        }

        else
        {
          v14 = &buf[9];
        }

        *v15 = 136315138;
        v16 = v14;
        _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "%s", v15, 0xCu);
        if (*buf)
        {
          if (buf[8])
          {
            (*(**buf + 40))();
          }
        }
      }

      ++v11;
      v3 = *(a1 + 13);
    }

    while (v3 > v11);
    v4 = *(a2 + 3);
  }

  if (v3 > v4)
  {
    return *(a1 + 15) + 48 * v4;
  }

LABEL_18:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *buf = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v15 = 136315906;
  v16 = "operator[]";
  v17 = 1024;
  v18 = 789;
  v19 = 2048;
  v20 = v4;
  v21 = 2048;
  v22 = v3;
  _os_log_send_and_compose_impl();
  result = _os_crash_msg();
  __break(1u);
  return result;
}

{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 13);
  v4 = *(a2 + 3);
  if (v3 < v4)
  {
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a2 + 2);
      v8 = *(a2 + 3);
      v10 = *a2;
      *buf = 67109632;
      *&buf[4] = v8;
      *&buf[8] = 1024;
      *&buf[10] = v9;
      *&buf[14] = 2048;
      *&v24 = v10;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "BufferIndex: %u ResourceIndex: %u NameHash: %llu", buf, 0x18u);
    }

    if (!*(a1 + 13))
    {
      v3 = 0;
      v4 = *(a2 + 3);
      goto LABEL_18;
    }

    v11 = 0;
    do
    {
      v12 = re::DynamicArray<re::RenderGraphBufferDescription>::operator[](a1 + 88, v11);
      v13 = *re::graphicsLogObjects(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        re::RenderGraphBufferDescription::valuesToString(v12, buf);
        if (buf[8])
        {
          v14 = v24;
        }

        else
        {
          v14 = &buf[9];
        }

        *v15 = 136315138;
        v16 = v14;
        _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "%s", v15, 0xCu);
        if (*buf)
        {
          if (buf[8])
          {
            (*(**buf + 40))();
          }
        }
      }

      ++v11;
      v3 = *(a1 + 13);
    }

    while (v3 > v11);
    v4 = *(a2 + 3);
  }

  if (v3 > v4)
  {
    return *(a1 + 15) + 48 * v4;
  }

LABEL_18:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *buf = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v15 = 136315906;
  v16 = "operator[]";
  v17 = 1024;
  v18 = 797;
  v19 = 2048;
  v20 = v4;
  v21 = 2048;
  v22 = v3;
  _os_log_send_and_compose_impl();
  result = _os_crash_msg();
  __break(1u);
  return result;
}

double re::RenderGraphResourceDescriptions::bufferDescriptionSource@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 12);
  if (*(a1 + 272) <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(a1 + 288) + 16 * v3;
  *a3 = *v4;
  result = *(v4 + 8);
  *(a3 + 8) = result;
  return result;
}

void *re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, uint64_t *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return (*(a1 + 16) + 40 * HIDWORD(v11) + 16);
  }

  v7 = re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 16) = 0;
  result = (v7 + 16);
  *(result - 1) = v8;
  result[1] = -1;
  *result = *a3;
  result[1] = a3[1];
  ++*(a1 + 40);
  return result;
}

void re::RenderGraphResourceDescriptions::specify(unint64_t *a1, uint64_t a2, uint64_t a3, int a4, _anonymous_namespace_ *a5)
{
  v75 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 12);
  v7 = a1[8];
  if (v7 <= v6)
  {
    v69[0] = 0;
    v73 = 0u;
    v74 = 0u;
    memset(v72, 0, sizeof(v72));
    v71 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v70 = 136315906;
    *&v70[4] = "operator[]";
    *&v70[12] = 1024;
    *&v70[14] = 789;
    *&v70[18] = 2048;
    *&v70[20] = v6;
    *&v70[28] = 2048;
    *&v70[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_115;
  }

  v5 = *(a3 + 12);
  if (v7 <= v5)
  {
LABEL_115:
    v69[0] = 0;
    v73 = 0u;
    v74 = 0u;
    memset(v72, 0, sizeof(v72));
    v71 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v70 = 136315906;
    *&v70[4] = "operator[]";
    *&v70[12] = 1024;
    *&v70[14] = 789;
    *&v70[18] = 2048;
    *&v70[20] = v5;
    *&v70[28] = 2048;
    *&v70[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_116;
  }

  if (a4)
  {
    v12 = a1[10];
    v13 = v12 + 112 * v6;
    v14 = v12 + 112 * v5;
    v15 = *v13 == 3 || *v13 == *v14;
    if (!v15 || (v16 = *(v13 + 4)) != 0 && ((v17 = *(v14 + 4)) != 0 ? (v18 = v16 == v17) : (v18 = 1), !v18) || (v19 = *(v13 + 12), v19 != -1) && ((v20 = *(v14 + 12), v20 != -1) ? (v21 = v19 == v20) : (v21 = 1), !v21) || (v22 = *(v13 + 16), v22 != -1) && ((v23 = *(v14 + 16), v23 != -1) ? (v24 = v22 == v23) : (v24 = 1), !v24) || (v25 = *(v13 + 20), v25 != -1) && ((v26 = *(v14 + 20), v26 != -1) ? (v27 = v25 == v26) : (v27 = 1), !v27) || (v28 = *(v13 + 24), v28 != -1) && ((v29 = *(v14 + 24), v29 != -1) ? (v30 = v28 == v29) : (v30 = 1), !v30) || (v31 = *(v13 + 88), v31 != -1) && ((v32 = *(v14 + 88), v32 != -1) ? (v33 = v31 == v32) : (v33 = 1), !v33) || ((v34 = *(v13 + 8), v35 = *(v14 + 8), v34 != v35) ? (v36 = (v35 | v34) >= 2) : (v36 = 0), v36 && (v34 > 8 || (((1 << v34) & 0x11C) != 0 ? (v37 = v35 > 8) : (v37 = 1), !v37 ? (v38 = ((1 << v35) & 0x11C) == 0) : (v38 = 1), v38))) && ((v35 - 5) | (v34 - 5)) >= 2)
    {
      v7 = *(a3 + 8);
      v6 = a1[3];
      if (v6 <= v7)
      {
LABEL_117:
        v69[0] = 0;
        v73 = 0u;
        v74 = 0u;
        memset(v72, 0, sizeof(v72));
        v71 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v70 = 136315906;
        *&v70[4] = "operator[]";
        *&v70[12] = 1024;
        *&v70[14] = 789;
        *&v70[18] = 2048;
        *&v70[20] = v7;
        *&v70[28] = 2048;
        *&v70[30] = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_118:
        v68[0] = 0;
        v73 = 0u;
        v74 = 0u;
        memset(v72, 0, sizeof(v72));
        v71 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v70 = 136315906;
        *&v70[4] = "operator[]";
        *&v70[12] = 1024;
        *&v70[14] = 789;
        *&v70[18] = 2048;
        *&v70[20] = v7;
        *&v70[28] = 2048;
        *&v70[30] = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      re::StringID::StringID(v69, (a1[5] + 48 * v7 + 8));
      v7 = *(a2 + 8);
      v6 = a1[3];
      if (v6 <= v7)
      {
        goto LABEL_118;
      }

      v39 = v69[1];
      re::StringID::StringID(v68, (a1[5] + 48 * v7 + 8));
      v40 = v68[1];
      v41 = *a1;
      v72[0] = 0uLL;
      v71 = v41;
      re::DynamicString::setCapacity(&v71, 0x200uLL);
      v42 = *(v14 + 4);
      if (v42)
      {
        v43 = *(v13 + 4);
        if (v43)
        {
          if (v42 != v43)
          {
            Name = MTLPixelFormatGetName();
            v45 = MTLPixelFormatGetName();
            re::DynamicString::appendf(&v71, "--- %s: %s (current) vs. %s\n", "format", Name, v45);
          }
        }
      }

      if (*(v14 + 8) != *(v13 + 8))
      {
        TextureTypeName = re::mtl::getTextureTypeName();
        v47 = re::mtl::getTextureTypeName();
        re::DynamicString::appendf(&v71, "--- %s: %s (current) vs. %s\n", "textureType", TextureTypeName, v47);
      }

      v48 = *(v14 + 12);
      if (v48 != -1)
      {
        v49 = *(v13 + 12);
        if (v49 != -1 && v48 != v49)
        {
          re::DynamicString::appendf(&v71, "--- %s: %u (current) vs. %u\n", "width", *(v14 + 12), v49);
        }
      }

      v50 = *(v14 + 16);
      if (v50 != -1)
      {
        v51 = *(v13 + 16);
        if (v51 != -1 && v50 != v51)
        {
          re::DynamicString::appendf(&v71, "--- %s: %u (current) vs. %u\n", "height", *(v14 + 16), v51);
        }
      }

      v52 = *(v14 + 20);
      if (v52 != -1)
      {
        v53 = *(v13 + 20);
        if (v53 != -1 && v52 != v53)
        {
          re::DynamicString::appendf(&v71, "--- %s: %u (current) vs. %u\n", "sampleCount", *(v14 + 20), v53);
        }
      }

      v54 = *(v14 + 24);
      if (v54 != -1)
      {
        v55 = *(v13 + 24);
        if (v55 != -1 && v54 != v55)
        {
          re::DynamicString::appendf(&v71, "--- %s: %u (current) vs. %u\n", "arrayLength", *(v14 + 24), v55);
        }
      }

      v56 = *(v14 + 28);
      if (v56 != -1)
      {
        v57 = *(v13 + 28);
        if (v57 != -1 && v56 != v57)
        {
          re::DynamicString::appendf(&v71, "--- %s: %u (current) vs. %u\n", "mipLevelCount", *(v14 + 28), v57);
        }
      }

      v58 = *(v14 + 32);
      if (v58 != -1)
      {
        v59 = *(v13 + 32);
        if (v59 != -1 && v58 != v59)
        {
          re::DynamicString::appendf(&v71, "--- %s: %u (current) vs. %u\n", "tonemapInPlace", *(v14 + 32), v59);
        }
      }

      v60 = *(v14 + 88);
      if (v60 != -1)
      {
        v61 = *(v13 + 88);
        if (v61 != -1 && v60 != v61)
        {
          re::DynamicString::appendf(&v71, "--- %s: %llu (current) vs. %llu\n", "protectionOptions", *(v14 + 88), v61);
        }
      }

      v63 = v71.n128_u8[8];
      v62 = *&v72[0];
      if (v71.n128_u64[0] && (v71.n128_u8[8] & 1) != 0)
      {
        (*(*v71.n128_u64[0] + 40))();
      }

      v64 = &v71.n128_i8[9];
      if (v63)
      {
        v64 = v62;
      }

      re::DynamicString::format("Specify called on target (%s) which has already been specified; the following properties from other target (%s) did not match:\n%s", v70, v39, v40, v64);
      v71.n128_u64[0] = 2000;
      v71.n128_u64[1] = &re::GraphicsErrorCategory(void)::instance;
      *&v72[0] = *v70;
      *(&v72[1] + 1) = *&v70[24];
      *(v72 + 8) = *&v70[8];
      v65 = re::DynamicArray<re::DetailedError>::add(a5, &v71);
      v66 = *&v72[0];
      if (*&v72[0])
      {
        if (BYTE8(v72[0]))
        {
          v66 = (*(**&v72[0] + 40))(v65);
        }

        memset(v72, 0, sizeof(v72));
      }

      if (v68[0])
      {
        if (v68[0])
        {
        }
      }

      if (v69[0])
      {
        if (v69[0])
        {
        }
      }

      v6 = *(a2 + 12);
      v7 = a1[8];
    }
  }

  if (v7 <= v6)
  {
LABEL_116:
    v69[0] = 0;
    v73 = 0u;
    v74 = 0u;
    memset(v72, 0, sizeof(v72));
    v71 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v70 = 136315906;
    *&v70[4] = "operator[]";
    *&v70[12] = 1024;
    *&v70[14] = 789;
    *&v70[18] = 2048;
    *&v70[20] = v6;
    *&v70[28] = 2048;
    *&v70[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_117;
  }

  v67 = (a1[10] + 112 * v6);
  *v67 = 4;
  v67[19] = *(a3 + 8);
}

re::StringID *re::RenderGraphResourceDescriptions::resourceFromIndex@<X0>(re::StringID *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  if (*(this + 3) <= a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = &str_67;
    a3[3] = -1;
    a3[4] = -1;
    a3[5] = -1;
  }

  else
  {
    v4 = *(this + 5) + 48 * a2;
    *a3 = *v4;
    this = re::StringID::StringID((a3 + 1), (v4 + 8));
    v5 = *(v4 + 24);
    a3[5] = *(v4 + 40);
    *(a3 + 3) = v5;
  }

  return this;
}

unint64_t re::GrowableLinearAllocator::alloc(re::GrowableLinearAllocator *this, uint64_t a2, unint64_t a3)
{
  if (a3 <= 8)
  {
    v5 = 8;
  }

  else
  {
    v5 = a3;
  }

  v6 = v5 + a2;
  v7 = *(this + 4);
  if (v7)
  {
    v7 = **(this + 3) + v7 - *(this + 5);
  }

  if (v7 >= v6)
  {
    v9 = *(this + 5);
  }

  else
  {
    v8 = *(this + 3);
    if (v8)
    {
      while (1)
      {
        v8 = v8[1];
        if (!v8)
        {
          break;
        }

        *(this + 3) = v8;
        if (*v8 >= v6)
        {
          v9 = v8 + 2;
          *(this + 4) = v8 + 2;
          goto LABEL_18;
        }
      }
    }

    if (v6 + 16 > *(this + 6))
    {
      v10 = (v6 + 15) | ((v6 + 15) >> 1) | (((v6 + 15) | ((v6 + 15) >> 1)) >> 2);
      v11 = v10 | (v10 >> 4) | ((v10 | (v10 >> 4)) >> 8);
      *(this + 6) = (v11 | (v11 >> 16) | ((v11 | (v11 >> 16)) >> 32)) + 1;
    }

    v12 = (*(**(this + 7) + 32))(*(this + 7));
    v13 = *(this + 6);
    *v12 = v13 - 16;
    v12[1] = 0;
    v14 = *(this + 3);
    if (v14)
    {
      v15 = (v14 + 8);
    }

    else
    {
      v15 = (this + 64);
    }

    *v15 = v12;
    v9 = v12 + 2;
    *(this + 3) = v12;
    *(this + 4) = v12 + 2;
    *(this + 6) = 2 * v13;
  }

LABEL_18:
  result = (v9 + v5 - 1) & -v5;
  *(this + 5) = result + a2;
  *(this + 9) += a2;
  return result;
}

void re::GrowableLinearAllocator::~GrowableLinearAllocator(re::GrowableLinearAllocator *this)
{
  re::GrowableLinearAllocator::deinit(this);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 11);

  re::Allocator::~Allocator(this);
}

{
  re::GrowableLinearAllocator::deinit(this);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 11);
  re::Allocator::~Allocator(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::GrowableLinearAllocator::statistics(re::GrowableLinearAllocator *this)
{
  result = *(this + 9);
  v3 = *(this + 8);
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = *v3;
      v3 = v3[1];
      v4 += v5 + 16;
    }

    while (v3);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    v5 = *a2;
    if (*a1)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *a1 = v5;
      *a2 = v4;
      v7 = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = v7;
      v8 = *(a1 + 16);
      *(a1 + 16) = *(a2 + 16);
      *(a2 + 16) = v8;
      LODWORD(v8) = *(a1 + 24);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 24) = v8;
      LODWORD(v8) = *(a1 + 28);
      *(a1 + 28) = *(a2 + 28);
      *(a2 + 28) = v8;
      LODWORD(v8) = *(a1 + 32);
      *(a1 + 32) = *(a2 + 32);
      *(a2 + 32) = v8;
      LODWORD(v8) = *(a1 + 36);
      *(a1 + 36) = *(a2 + 36);
      *(a2 + 36) = v8;
LABEL_12:
      ++*(a1 + 40);
      return a1;
    }

    re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1);
    if (*a2)
    {
      v9 = *(a2 + 28);
      if (*(a1 + 24) < v9)
      {
        re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, v9);
      }

      re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, a2);
      goto LABEL_12;
    }
  }

  return a1;
}

void re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

void *re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 32) % *(v4 + 6));
        v7 = *(a2 + 16);
        result[1] = *(v7 + v5 + 8);
        result[2] = 0;
        result[3] = -1;
        result[2] = *(v7 + v5 + 16);
        result[3] = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 40;
    }

    while (v6 < v2);
  }

  return result;
}

void re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_17, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 40 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 32) = a3;
  ++*(a1 + 28);
  return v7 + 40 * v5;
}

void *re::DynamicArray<re::RenderGraphResource>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RenderGraphResource>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraphResource>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderGraphResource>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RenderGraphResource>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 48 * v9;
        v11 = v7 + 1;
        v12 = v8 + 8;
        do
        {
          *(v11 - 2) = *(v12 - 8);
          re::StringID::StringID(v11, v12);
          v13 = *(v12 + 16);
          v11[4] = *(v12 + 32);
          *(v11 + 1) = v13;
          re::StringID::destroyString(v12);
          v11 += 6;
          v14 = v12 + 40;
          v12 += 48;
        }

        while (v14 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::RenderGraphTargetDescription>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RenderGraphTargetDescription>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraphTargetDescription>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderGraphTargetDescription>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 112 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::RenderGraphTargetDescription>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::addVFXSceneDrawsToTechniqueBuckets(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((*(a1 + 1011) & 1) == 0)
  {
    v5 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v6 = "VFX simulation did not run, can't draw VFXScene";
      goto LABEL_15;
    }

    return 0;
  }

  if (*(a1 + 1010) == 1)
  {
    v5 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v6 = "Should not arrive here when VFXScene culled by clipping";
LABEL_15:
      _os_log_debug_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEBUG, v6, buf, 2u);
      return 0;
    }

    return 0;
  }

  if (*(a1 + 744) != -2)
  {
    v20 = *(*(a2 + 8) + 72);
    *buf = *(a1 + 744);
    v21 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v20 + 56, buf);
    if (v21)
    {
      v22 = *(v21 + 16);
      v23 = v22;
      v24 = *(a1 + 752);
      *buf = 0;
      v30 = buf;
      v31 = 0x2020000000;
      v32 = 0;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = ___ZN2re34addVFXSceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEj_block_invoke;
      v27[3] = &unk_1E871F348;
      v27[4] = buf;
      v27[5] = a2;
      v27[6] = v20;
      v27[7] = a1;
      v28 = a4;
      v27[8] = a3;
      v25 = v24;
      v26 = v22;
      [v26 enumerateDrawCallsForNode:v25 usingBlock:v27];
      v7 = *(v30 + 24);

      _Block_object_dispose(buf, 8);
      return v7;
    }

    return 0;
  }

  v12 = *(*(a2 + 8) + 72);
  v13 = *(a1 + 752);
  v14 = re::getVFXREForEachDrawCallFct(v13);
  v15 = [(re *)v13 transientDrawCall];

  if (!v15)
  {
    v17 = objc_alloc_init(re::getVFXREDrawCallClass(v16));
    [(re *)v13 setTransientDrawCall:v17];
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v18 = [(re *)v13 opaqueECS];
  v19 = [(re *)v13 transientDrawCall];
  *buf = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = ___ZN2re12_GLOBAL__N_140addVFXLegacySceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEj_block_invoke;
  v32 = &unk_1E871F3C0;
  v33 = &v39;
  v34 = a2;
  v35 = v12;
  v36 = a1;
  v38 = a4;
  v37 = a3;
  v14(v18, v19, buf);

  v7 = v40[3];
  _Block_object_dispose(&v39, 8);

  return v7;
}

void ___ZN2re34addVFXSceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEj_block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  re::globalAllocators(v3);
  v4 = *(**(a1 + 40) + 32);
  v5 = (*(*v4 + 32))(v4, 544, 16);
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 256) = 0u;
  *(v5 + 272) = 0u;
  *(v5 + 200) = 1;
  *(v5 + 216) = 0;
  *(v5 + 224) = 0;
  *(v5 + 208) = 0;
  *(v5 + 232) = 0;
  *(v5 + 248) = 0;
  *(v5 + 256) = 0;
  *(v5 + 240) = 0;
  *(v5 + 264) = 0;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 304) = 0u;
  *(v5 + 304) = 0;
  *(v5 + 320) = 0;
  *(v5 + 328) = 0;
  *(v5 + 336) = 0;
  *(v5 + 344) = 0;
  *(v5 + 352) = xmmword_1E3047670;
  *(v5 + 368) = xmmword_1E3047680;
  *(v5 + 384) = xmmword_1E30476A0;
  *(v5 + 400) = xmmword_1E30474D0;
  v6.i64[0] = 0x7F0000007FLL;
  v6.i64[1] = 0x7F0000007FLL;
  *(v5 + 416) = vnegq_f32(v6);
  *(v5 + 432) = v6;
  *(v5 + 456) = 0;
  *(v5 + 448) = 0;
  *(v5 + 458) = 0;
  *(v5 + 488) = 0;
  *(v5 + 496) = &str_67;
  *(v5 + 512) = 0;
  *(v5 + 520) = 3;
  *(v5 + 524) = 0x180197E00000001;
  *(v5 + 460) = -1;
  *(v5 + 468) = -1;
  *(v5 + 473) = -1;
  v7 = re::globalAllocators(v5)[2];
  v23[0] = &unk_1F5D047C0;
  v26 = v7;
  v27 = v23;
  v8 = (*(*v4 + 16))(v4, v5, v23);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v23);
  re::StringID::destroyString((v8 + 488));
  *(v8 + 488) = 0x8B87378FFD0D002ALL;
  *(v8 + 496) = "VFX Particles";
  [(re *)v3 boundingBoxMin];
  v20 = v9;
  [(re *)v3 boundingBoxMax];
  *(v8 + 416) = v20;
  *(v8 + 432) = v10;
  *(v8 + 520) = [(re *)v3 primitiveType];
  *(v8 + 458) = [(re *)v3 materialType];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 24);
  *(v11 + 24) = v12 + 1;
  v13 = [(re *)v3 encodeHandler];
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v21[0] = v13;
  v21[1] = v14;
  v22 = 0;
  v16 = *(a1 + 72);
  v17 = *(v15 + 592);
  if (!v17)
  {
    v17 = *(v15 + 512);
  }

  v23[0] = *(v15 + 512);
  v23[1] = v17;
  v24 = v16;
  v25 = 0;
  v26 = v12;
  LODWORD(v27) = 0;
  v28 = 0;
  v29 = v8;
  v30 = v15 + 128;
  v31 = v8 + 416;
  v32 = *(v8 + 458);
  v33 = v15 + 504;
  v34 = 0;
  v35 = *(v15 + 440);
  v36 = *(v15 + 448);
  v37 = v21;
  v38 = 0;
  v18 = *(a1 + 64);
  v19 = *(*v18 + 16);

  v19(v18, v23);
}

void re::bucketVFXMeshPart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 72);
  if (v5)
  {
    if ((atomic_load_explicit(&qword_1EE1B8818, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8818))
    {
      _MergedGlobals_438 = re::hashString("FadeOpaque", v41);
      __cxa_guard_release(&qword_1EE1B8818);
    }

    v9 = *(a2 + 224);
    v46 = *(a5 + 16);
    v45 = *(a5 + 8);
    v49 = _Block_copy(*a5);
    v48 = *(*(a5 + 8) + 200);

    v42 = *(*(a1 + 24) + 458);
    v10 = re::MaterialParameterTable::passTechniqueHashTable(v5, v9, 1);
    v51 = *(v10 + 8);
    if (v51)
    {
      v11 = 0;
      v12 = v10[2];
      while (1)
      {
        v13 = *v12;
        v12 += 6;
        if (v13 < 0)
        {
          break;
        }

        if (v51 == ++v11)
        {
          LODWORD(v11) = *(v10 + 8);
          break;
        }
      }
    }

    else
    {
      LODWORD(v11) = 0;
    }

    if (v11 != v51)
    {
      v15 = v10[2];
      v43 = v10;
      v44 = a4;
      do
      {
        v68 = *(v15 + 24 * v11 + 8);
        v16 = v68 == _MergedGlobals_438;
        v17 = objc_alloc_init(VFXREDrawCallContextImpl);
        *(a1 + 224) = 1;
        *(a1 + 227) = 0;
        *(a1 + 225) = !isDepthOnly;
        v19 = v68;
        v20 = *(a5 + 16);
        if ((atomic_load_explicit(&qword_1EE1B8858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8858))
        {
          qword_1EE1B8850 = re::hashString("Opaque", v40);
          __cxa_guard_release(&qword_1EE1B8858);
        }

        {
          v21 = 1;
        }

        else
        {
          v21 = v20 ^ 1;
          if (v42 != 1)
          {
            v21 = 0;
          }
        }

        *(a1 + 226) = v21;
        v22 = *(a3 + 32);
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = ___ZN2re17bucketVFXMeshPartERNS_19MeshPartDrawContextEPKNS_28MaterialParameterTableLayersERKNS_12FrameContextERNS_9HashTableImNS_12MeshPassInfoENS_17PrecalculatedHashENS_7EqualToImEELb0ELb0EEEPvb_block_invoke;
        v60[3] = &unk_1E871F370;
        v65 = v46;
        v64 = v45;
        v23 = v17;
        v61 = v23;
        v66 = v16;
        v67 = isDepthOnly;
        v62 = v48;
        v63 = v49;
        re::DrawCallHandler::registerHandler(a1 + 224, v22, v60);
        if (!*v44 || (v24 = *(*(v44 + 8) + 4 * (v68 % *(v44 + 24))), v24 == 0x7FFFFFFF))
        {
LABEL_26:
          *buf = 0;
          v53 = 0;
          v54 = 1;
          v56 = 0;
          v57 = 0;
          v55 = 0;
          v58 = 0;
          re::BucketArray<re::MeshPartDrawContext,128ul>::init(buf, v22, 1uLL);
          v59 = 0;
          v26 = re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(v44, &v68, buf);
          re::BucketArray<re::MeshPartDrawContext,128ul>::deinit(buf);
          if (*buf && (v54 & 1) == 0)
          {
            (*(**buf + 40))();
          }
        }

        else
        {
          v25 = *(v44 + 16);
          while (*(v25 + 80 * v24 + 8) != v68)
          {
            v24 = *(v25 + 80 * v24) & 0x7FFFFFFF;
            if (v24 == 0x7FFFFFFF)
            {
              goto LABEL_26;
            }
          }

          v26 = v25 + 80 * v24 + 16;
        }

        *(a1 + 64) = 0;
        *(a1 + 60) = -1;
        *(a1 + 66) = 0;
        v27 = re::BucketArray<re::MeshPartDrawContext,128ul>::addUninitialized(v26);
        v29 = *(a1 + 16);
        v28 = *(a1 + 32);
        *v27 = *a1;
        v27[1] = v29;
        v27[2] = v28;
        v30 = *(a1 + 96);
        v32 = *(a1 + 48);
        v31 = *(a1 + 64);
        v27[5] = *(a1 + 80);
        v27[6] = v30;
        v27[3] = v32;
        v27[4] = v31;
        v33 = *(a1 + 160);
        v35 = *(a1 + 112);
        v34 = *(a1 + 128);
        v27[9] = *(a1 + 144);
        v27[10] = v33;
        v27[7] = v35;
        v27[8] = v34;
        v36 = *(a1 + 224);
        v38 = *(a1 + 176);
        v37 = *(a1 + 192);
        v27[13] = *(a1 + 208);
        v27[14] = v36;
        v27[11] = v38;
        v27[12] = v37;

        if (*(v43 + 8) <= (v11 + 1))
        {
          v39 = v11 + 1;
        }

        else
        {
          v39 = *(v43 + 8);
        }

        v15 = v43[2];
        while (v39 - 1 != v11)
        {
          LODWORD(v11) = v11 + 1;
          if ((*(v15 + 24 * v11) & 0x80000000) != 0)
          {
            goto LABEL_38;
          }
        }

        LODWORD(v11) = v39;
LABEL_38:
        ;
      }

      while (v11 != v51);
    }
  }

  else
  {
    v14 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEBUG, "Missing MaterialParameterTable, can't render VFX", buf, 2u);
    }
  }
}