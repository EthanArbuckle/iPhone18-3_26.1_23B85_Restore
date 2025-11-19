void re::DynamicArray<re::GeomSkeleton>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::GeomSkeleton>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::GeomSkeleton *,re::GeomSkeleton *,re::GeomSkeleton *>(&v15, *(a2 + 32), *(a2 + 32) + 160 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = a1[4];
      v12 = 160 * v9;
      v13 = 160 * v4;
      do
      {
        re::StringID::StringID((v11 + v12), (v10 + v12));
        re::FixedArray<re::StringID>::FixedArray((v11 + v12 + 16), v10 + v12 + 16);
        re::FixedArray<unsigned int>::FixedArray((v11 + v12 + 40), v10 + v12 + 40);
        re::FixedArray<re::GenericSRT<float>>::FixedArray((v11 + v12 + 64), v10 + v12 + 64);
        re::FixedArray<re::Matrix4x4<float>>::FixedArray((v11 + v12 + 88), v10 + v12 + 88);
        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(v11 + v12 + 112, v10 + v12 + 112);
        v10 += 160;
        v13 -= 160;
        v11 += 160;
      }

      while (v12 != v13);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::GeomSkeleton *,re::GeomSkeleton *,re::GeomSkeleton *>(&v14, *(a2 + 32), *(a2 + 32) + 160 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4];
      v7 = 160 * v4;
      v8 = 160 * v5;
      do
      {
        re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v6 + v7 + 112));
        re::FixedArray<CoreIKTransform>::deinit((v6 + v7 + 88));
        re::FixedArray<CoreIKTransform>::deinit((v6 + v7 + 64));
        re::FixedArray<CoreIKTransform>::deinit((v6 + v7 + 40));
        re::FixedArray<re::StringID>::deinit((v6 + v7 + 16));
        re::StringID::destroyString((v6 + v7));
        v6 += 160;
        v8 -= 160;
      }

      while (v7 != v8);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::GeomSkeleton>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::GeomSkeleton>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA0uLL))
        {
          v2 = 160 * a2;
          result = (*(*result + 32))(result, 160 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 160, a2);
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
        v10 = &v8[20 * v9];
        v21 = v7;
        do
        {
          v11 = *v8;
          *v7 = *v7 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v7 = *v8 & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
          v7[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v7[2] = 0;
          v7[3] = 0;
          v7[4] = 0;
          v7[2] = v8[2];
          v8[2] = 0;
          v12 = v7[4];
          v13 = v8[4];
          v7[3] = v8[3];
          v7[4] = v13;
          v8[3] = 0;
          v8[4] = v12;
          v7[5] = 0;
          v7[6] = 0;
          v7[7] = 0;
          v7[5] = v8[5];
          v8[5] = 0;
          v14 = v7[7];
          v15 = v8[7];
          v7[6] = v8[6];
          v7[7] = v15;
          v8[6] = 0;
          v8[7] = v14;
          v7[8] = 0;
          v7[9] = 0;
          v7[10] = 0;
          v7[8] = v8[8];
          v8[8] = 0;
          v16 = v7[10];
          v17 = v8[10];
          v7[9] = v8[9];
          v7[10] = v17;
          v8[9] = 0;
          v8[10] = v16;
          v7[11] = 0;
          v7[12] = 0;
          v7[13] = 0;
          v7[11] = v8[11];
          v8[11] = 0;
          v18 = v7[13];
          v19 = v8[13];
          v7[12] = v8[12];
          v7[13] = v19;
          v8[12] = 0;
          v8[13] = v18;
          *(v7 + 7) = 0u;
          v20 = v7 + 14;
          *(v20 + 8) = 0;
          *(v20 + 1) = 0u;
          *(v20 + 36) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v20, v8 + 14);
          re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v8 + 14);
          re::FixedArray<CoreIKTransform>::deinit(v8 + 11);
          re::FixedArray<CoreIKTransform>::deinit(v8 + 8);
          re::FixedArray<CoreIKTransform>::deinit(v8 + 5);
          re::FixedArray<re::StringID>::deinit(v8 + 2);
          re::StringID::destroyString(v8);
          v8 += 20;
          v7 = v20 + 6;
        }

        while (v8 != v10);
        v8 = v5[4];
        v7 = v21;
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::GeomSkeleton *,re::GeomSkeleton *,re::GeomSkeleton *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    re::StringID::operator=((a4 + v7), (a2 + v7));
    re::FixedArray<re::StringID>::operator=((a4 + v7 + 16), a2 + v7 + 16);
    re::FixedArray<unsigned int>::operator=((a4 + v7 + 40), a2 + v7 + 40);
    re::FixedArray<re::GenericSRT<float>>::operator=((a4 + v7 + 64), a2 + v7 + 64);
    re::FixedArray<re::Matrix4x4<float>>::operator=((a4 + v7 + 88), a2 + v7 + 88);
    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((a4 + v7 + 112), a2 + v7 + 112);
    v7 += 160;
  }

  while (a2 + v7 != v6);
  return v6;
}

id *re::TextureCompiler::init(uint64_t a1, uint64_t a2, char a3)
{
  re::ObjCObject::operator=((a1 + 8), a2);
  result = re::ObjCObject::operator=((a1 + 16), (a2 + 8));
  v7 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 18);
  *(a1 + 24) = v7;
  if ((*(a1 + 27) & 1) == 0)
  {
    if ((*(a2 + 19) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 27) = 1;
LABEL_6:
    *(a1 + 28) = *(a2 + 20);
    goto LABEL_7;
  }

  if (*(a2 + 19))
  {
    goto LABEL_6;
  }

  *(a1 + 27) = 0;
LABEL_7:
  v8 = *(a2 + 21);
  *(a1 + 36) = *(a2 + 28);
  *(a1 + 29) = v8;
  *(a1 + 40) = a3;
  return result;
}

re::DynamicString *re::TextureCompiler::getCurrentCompiledAssetInfo@<X0>(re::TextureCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::TextureAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::TextureCompiler::assetIntrospectionType(re::TextureCompiler *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::TextureAsset>(BOOL)::info = re::introspect_TextureAsset(0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[235];
}

void *re::TextureCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v3 = &re::TextureCompiler::getSupportedExtensions(void)const::supportedExtensions;
  v4 = 13;
  *(a1 + 24) = 0;
  do
  {
    result = re::DynamicArray<re::TransitionCondition *>::add(a1, v3++);
    --v4;
  }

  while (v4);
  return result;
}

void re::TextureCompiler::compile(re::TextureCompiler *this@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v7 = a2;
    v50 = 0uLL;
    *v51 = 1;
    *&v51[24] = 0;
    v51[28] = 0;
    *&v51[32] = 0;
    v51[36] = 0;
    memset(&v51[4], 0, 17);
    *&v51[40] = 6;
    v53 = 0uLL;
    v52 = 0;
    v54 = -65536;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    if (a3)
    {
      v9 = *(a3 + 1);
      v50 = *a3;
      *v51 = v9;
      *&v51[16] = *(a3 + 2);
      *&v51[28] = *(a3 + 44);
      re::ObjCObject::operator=(&v52, a3 + 8);
      v53 = *(a3 + 72);
      v54 = *(a3 + 22);
      re::FixedArray<short>::operator=(&v55, a3 + 12);
      v58 = a3[120];
      v10 = v52;
    }

    else
    {
      v10 = 0;
    }

    v40 = v50;
    v41 = *v51;
    *v42 = *&v51[16];
    *&v42[12] = *&v51[28];
    v43 = v10;
    v44 = v53;
    v45 = v54;
    re::FixedArray<short>::FixedArray(&v46, &v55);
    v49 = v58;
    v15 = strrchr(v7, 47);
    if (v15)
    {
      v16 = v15;
      v17 = strcasestr(v15, "cubemap") != 0;
      v18 = strcasestr(v16, "lut") != 0;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v83 = 0;
    v84 = 0;
    v85[0] = 0;
    memset(&v85[4], 0, 24);
    v86 = 0u;
    memset(v87, 0, 28);
    v88 = 0;
    v89 = 0;
    v19 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    v20 = this;
    v42[20] = *(this + 40);
    v39 = v19;
    if (v42[20] == 1)
    {
      [v19 setStorageMode_];
      v19 = v39;
    }

    v21 = buf;
    if (v17)
    {
      v76 = v19;
      *buf = v40;
      *v69 = v41;
      *&v69[16] = *v42;
      *&v69[28] = *&v42[12];
      *&v69[48] = v43;
      v70 = v44;
      LODWORD(v71) = v45;
      re::FixedArray<short>::FixedArray(&v72, &v46);
      v75 = v49;
      re::loadTextureFileAndConvertToCubeMap(v20 + 1, v7, &v76, buf, 0, 0, v77);
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v83, v77);
      v85[0] = v77[2];
      *&v85[4] = *&v77[3];
      *&v85[10] = *(&v77[4] + 4);
      v22 = *(&v86 + 1);
      v23 = *v78;
      *v78 = v86;
      *&v78[8] = 0;
      v86 = v23;

      re::DynamicArray<short>::operator=(v87, &v78[16]);
      v89 = v82;
      if (*&v78[16])
      {
        if (v81)
        {
          (*(**&v78[16] + 40))();
        }

        v81 = 0;
        *&v78[24] = 0;
        v79 = 0;
        *&v78[16] = 0;
        LODWORD(v80) = v80 + 1;
      }

      if (*v78)
      {

        *v78 = 0;
      }

      if (LODWORD(v77[1]) != -1)
      {
        (off_1F5CCFE58[LODWORD(v77[1])])(&v59, v77);
      }

      LODWORD(v77[1]) = -1;
      if (v72)
      {
        if (v73)
        {
          (*(*v72 + 40))();
          v73 = 0;
          v74 = 0;
        }

        v72 = 0;
      }
    }

    else
    {
      if (v18)
      {
        LOWORD(v77[0]) = 0;
        memset(&v77[1], 0, 24);
        *&v77[5] = 0u;
        memset(v78, 0, 28);
        v80 = 0;
        v79 = 0;
        re::loadTextureFileAndConvertTo3DTexture(v20 + 1, v7, &v59);
        buf[0] = 0;
        *&buf[8] = -1;
        std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(buf, &v59);
        *v69 = v77[0];
        *&v69[8] = *&v77[1];
        *&v69[20] = *(&v77[2] + 4);
        *&v69[40] = v77[5];
        if (v77[5])
        {
          v24 = (v77[5] + 8);
        }

        *&v69[48] = v77[6];
        re::DynamicArray<short>::DynamicArray(&v70, v78);
        v74 = v80;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v83, buf);
        v85[0] = *v69;
        *&v85[4] = *&v69[8];
        *&v85[10] = *&v69[20];
        v25 = *(&v86 + 1);
        v26 = *&v69[40];
        *&v69[40] = v86;
        *&v69[48] = 0;
        v86 = v26;

        re::DynamicArray<short>::operator=(v87, &v70);
        v89 = v74;
        if (v70)
        {
          if (v73)
          {
            (*(*v70 + 40))();
          }

          v73 = 0;
          v71 = 0;
          v70 = 0uLL;
          LODWORD(v72) = v72 + 1;
        }

        if (*&v69[40])
        {

          *&v69[40] = 0;
        }

        if (*&buf[8] != -1)
        {
          (off_1F5CCFE58[*&buf[8]])(&v64, buf);
        }

        *&buf[8] = -1;
        if (DWORD2(v59) != -1)
        {
          (off_1F5CCFE58[DWORD2(v59)])(&v64, &v59);
        }

        if (*v78)
        {
          if (v79)
          {
            (*(**v78 + 40))();
          }

          v79 = 0;
          memset(v78, 0, 24);
          ++*&v78[24];
        }

        if (v77[5])
        {
        }

LABEL_57:
        if (v84)
        {
          if (v84 != 1)
          {
            v37 = std::__throw_bad_variant_access[abi:nn200100]();
            re::TextureCompiler::deleteAsset(v37, v38);
            return;
          }

          if (!*(v83 + 48))
          {
            goto LABEL_64;
          }

          v30 = (v83 + 24);
        }

        else
        {
          v30 = &v83;
        }

        if (*v30)
        {
          TextureAsset = re::TextureAsset::makeTextureAsset((v20 + 8), &v83, v85, *&v42[24], SDWORD2(v41));
          v32 = 1;
          LOBYTE(v77[0]) = 1;
          v77[1] = TextureAsset;
          v33 = 1;
LABEL_68:
          if (v39)
          {
          }

          if (v87[0])
          {
            if (v88)
            {
              (*(*v87[0] + 40))();
            }

            v88 = 0;
            memset(v87, 0, 24);
            ++LODWORD(v87[3]);
          }

          if (v86)
          {

            *&v86 = 0;
          }

          if (v84 != -1)
          {
            (off_1F5CCFE58[v84])(&v59, &v83);
          }

          if (v46)
          {
            if (v47)
            {
              (*(*v46 + 40))();
              v47 = 0;
              v48 = 0;
            }

            v46 = 0;
          }

          if (v33)
          {
            v35 = v77[1];
            *a4 = 1;
            *(a4 + 8) = v35;
          }

          else
          {
            *buf = *&v77[1];
            re::DynamicString::DynamicString(v69, &v77[3]);
            *a4 = 0;
            *(a4 + 8) = *buf;
            v36 = *&v69[24];
            *(a4 + 24) = *v69;
            *(a4 + 48) = v36;
            *(a4 + 32) = *&v69[8];
            if (v21 != 0 && !v32)
            {
              (*(*v21 + 40))(v21, v7);
            }
          }

          if (v55)
          {
            if (v56)
            {
              (*(*v55 + 40))();
              v56 = 0;
              v57 = 0;
            }

            v55 = 0;
          }

          return;
        }

LABEL_64:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        re::DynamicString::setCapacity(&v64, 0);
        re::DynamicString::assignf(&v64, "failed to load texture %s", v7);
        *&v59 = 100;
        *(&v59 + 1) = re::AssetErrorCategory(void)::instance;
        re::DynamicString::DynamicString(&v60, &v64);
        v7 = v62;
        v21 = v60;
        v34 = v61;
        LOBYTE(v77[0]) = 0;
        *&v77[1] = v59;
        v77[5] = v62;
        v77[6] = v63;
        v77[3] = v60;
        v77[4] = v61;
        if (v64 && (v65 & 1) != 0)
        {
          (*(*v64 + 40))();
        }

        v33 = 0;
        v32 = (v34 & 1) == 0;
        goto LABEL_68;
      }

      DWORD1(v40) = 2;
      v76 = v19;
      re::loadTextureFromFile(v20 + 1, v7, &v76, &v40, buf);
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v83, buf);
      v85[0] = *v69;
      *&v85[4] = *&v69[8];
      *&v85[10] = *&v69[20];
      v28 = *(&v86 + 1);
      v29 = *&v69[40];
      *&v69[40] = v86;
      *&v69[48] = 0;
      v86 = v29;

      re::DynamicArray<short>::operator=(v87, &v70);
      v89 = v74;
      if (v70)
      {
        if (v73)
        {
          (*(*v70 + 40))();
        }

        v73 = 0;
        v71 = 0;
        v70 = 0uLL;
        LODWORD(v72) = v72 + 1;
      }

      if (*&v69[40])
      {

        *&v69[40] = 0;
      }

      if (*&buf[8] != -1)
      {
        (off_1F5CCFE58[*&buf[8]])(v77, buf);
      }

      *&buf[8] = -1;
    }

    v27 = v76;
    if (v76)
    {

      v76 = 0;
    }

    goto LABEL_57;
  }

  v11 = *re::pipelineLogObjects(this);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "TextureAssetCompiler: sourceFilePath is null.", buf, 2u);
  }

  v13 = *buf;
  v14 = *v69;
  *a4 = 0;
  *(a4 + 8) = 100;
  *(a4 + 16) = re::AssetErrorCategory(void)::instance;
  *(a4 + 24) = v13;
  *(a4 + 40) = v14;
}

re *re::internal::destroyPersistent<re::TextureFromImageOptions>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::FixedArray<CoreIKTransform>::deinit((a3 + 96));

    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void re::TextureCompiler::~TextureCompiler(id *this)
{
}

{

  JUMPOUT(0x1E6906520);
}

re::DynamicString *re::BVHCompiler::getCurrentCompiledAssetInfo@<X0>(re::BVHCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::TimelineAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::BVHCompiler::assetIntrospectionType(re::BVHCompiler *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::TimelineAsset>(BOOL)::info = re::introspect_TimelineAsset(0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 344);
}

uint64_t re::BVHCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v3[0] = &re::BVHCompiler::getSupportedExtensions(void)const::supportedExtensions;
  v3[1] = 1;
  return re::DynamicArray<char const*>::DynamicArray(a1, v3);
}

uint64_t re::BVHCompiler::compile@<X0>(re::FileStreamReader *a1@<X1>, uint64_t a2@<X8>)
{
  v89 = *MEMORY[0x1E69E9840];
  re::FileStreamReader::open(a1, v75);
  if (v75[0])
  {
    v7 = re::parseAnimationBVH(&v76, v63);
    if (v63[0])
    {
      v52 = v64;
      re::FixedArray<re::StringID>::FixedArray(v53, &v65);
      re::FixedArray<unsigned int>::FixedArray(&v54, &v68);
      re::FixedArray<re::GenericSRT<float>>::FixedArray(&v57, &v71);
      re::FixedArray<re::FixedArray<re::GenericSRT<float>>>::FixedArray(&v60, v74);
      v8 = v52;
      v9 = v61;
      v10 = re::Timeline::Timeline(&v37, 34);
      v43 = 256;
      v48 = 0;
      v49 = 0;
      v47 = 0;
      v37 = &unk_1F5CAF198;
      v50 = 257;
      v51 = 1;
      v44 = v8;
      v45 = 0;
      v46 = v52 * (v9 - 1);
      *&v34 = 0;
      *(&v34 + 1) = &str_67;
      memset(v35, 0, sizeof(v35));
      v36 = 0x7FFFFFFFLL;
      *&v84 = 0x190FB25473155C2;
      *(&v84 + 1) = "BVHSkeleton";
      *v79 = v53[2];
      *&v79[8] = v53[1];
      v30[0] = v56;
      v30[1] = v55;
      v29[0] = v59;
      v29[1] = v58;
      if ((v31[0] & 1) == 0)
      {
        v12 = v32;
        if (v32)
        {
          if (BYTE8(v32))
          {
            v12 = (*(*v32 + 40))();
          }

          v33 = 0u;
          v32 = 0u;
        }
      }

      if (v84)
      {
        if (v84)
        {
        }
      }

      v13 = re::make::shared::object<re::SkeletalPoseJointDefinition,re::FixedArray<re::StringID>,re::Skeleton>(v53, &v34, v29);
      if (v48)
      {
        v14 = v49;
        v15 = 88 * v48;
        do
        {
          re::SkeletalPose::init(v14, v29);
          v14 += 11;
          v15 -= 88;
        }

        while (v15);
      }

      if (v9)
      {
        v16 = 0;
        v17 = 0;
        v18 = 2;
        do
        {
          v19 = v61;
          if (v61 <= v17)
          {
            v30[0] = 0;
            v88 = 0u;
            v87 = 0u;
            v86 = 0u;
            v85 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v79 = 136315906;
            *&v79[4] = "operator[]";
            *&v79[12] = 1024;
            *&v79[14] = 468;
            v80 = 2048;
            v81 = v17;
            v82 = 2048;
            v83 = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_63:
            v30[0] = 0;
            v88 = 0u;
            v87 = 0u;
            v86 = 0u;
            v85 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v79 = 136315906;
            *&v79[4] = "operator[]";
            *&v79[12] = 1024;
            *&v79[14] = 468;
            v80 = 2048;
            v81 = v17;
            v82 = 2048;
            v83 = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v19 = v48;
          if (v48 <= v17)
          {
            goto LABEL_63;
          }

          v13 = re::FixedArray<float>::operator=(&v49[v18], (v62 + v16));
          ++v17;
          v16 += 24;
          v18 += 11;
        }

        while (v9 != v17);
      }

      LODWORD(v86) = 0;
      v85 = 0u;
      v84 = 0u;
      *(&v86 + 4) = 0x7FFFFFFFLL;
      v20 = re::globalAllocators(v13);
      v21 = (*(*v20[2] + 32))(v20[2], 120, 8);
      re::SampledAnimation<re::SkeletalPose>::SampledAnimation(v21, &v37);
      *v22 = &unk_1F5CAF198;
      v23 = v50;
      *(v22 + 114) = v51;
      *(v22 + 112) = v23;
      TimelineAsset = re::AssetHelper::makeTimelineAsset(v22, &v84);
      *a2 = 1;
      *(a2 + 8) = TimelineAsset;
      re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v84);
      if (v29[0])
      {
      }

      re::Skeleton::~Skeleton(&v34);
      v37 = &unk_1F5CAEFA8;
      re::FixedArray<re::SkeletalPose>::deinit(&v47);
      v37 = &unk_1F5CAD3A8;
      v25 = v41;
      if (v41)
      {
        if (BYTE8(v41))
        {
          v25 = (*(*v41 + 40))();
        }

        v42 = 0u;
        v41 = 0u;
      }

      if (v39)
      {
        if (v39)
        {
        }
      }

      re::FixedArray<re::FixedArray<unsigned int>>::deinit(&v60);
      if (v57)
      {
        if (v58)
        {
          (*(*v57 + 40))();
          v58 = 0;
          v59 = 0;
        }

        v57 = 0;
      }

      if (v54)
      {
        if (v55)
        {
          (*(*v54 + 40))();
          v55 = 0;
          v56 = 0;
        }

        v54 = 0;
      }

      re::FixedArray<re::StringID>::deinit(v53);
    }

    else
    {
      re::DynamicString::operator+(&v37, a1, &v34);
      v26 = v34;
      v34 = 0uLL;
      v27 = *v35;
      *v35 = 0uLL;
      *a2 = 0;
      *(a2 + 8) = 100;
      *(a2 + 16) = re::AssetErrorCategory(void)::instance;
      *(a2 + 24) = v26;
      *(a2 + 40) = v27;
      if (v37 && (v38 & 1) != 0)
      {
        (*(*v37 + 40))();
      }
    }

    if (v63[0] == 1)
    {
      re::FixedArray<re::FixedArray<unsigned int>>::deinit(v74);
      if (v71)
      {
        if (v72)
        {
          (*(*v71 + 40))();
          v72 = 0;
          v73 = 0;
        }

        v71 = 0;
      }

      if (v68)
      {
        if (v69)
        {
          (*(*v68 + 40))();
          v69 = 0;
          v70 = 0;
        }

        v68 = 0;
      }

      re::FixedArray<re::StringID>::deinit(&v65);
    }

    else if (v66 && (v67 & 1) != 0)
    {
      (*(*v66 + 40))();
    }
  }

  else
  {
    v34 = v76;
    re::DynamicString::DynamicString(v35, &v77);
    *a2 = 0;
    *(a2 + 8) = v34;
    *(a2 + 24) = *v35;
    *(a2 + 48) = *&v35[24];
    *(a2 + 32) = *&v35[8];
  }

  if (v75[0] == 1)
  {
    result = *(&v76 + 1);
    if (*(&v76 + 1))
    {
      if (v78 == 1)
      {
        return fclose(*(&v76 + 1));
      }
    }
  }

  else
  {
    result = v77;
    if (v77 && (v78 & 1) != 0)
    {
      return (*(*v77 + 40))();
    }
  }

  return result;
}

re *re::BVHCompiler::deleteAsset(re *this, void *a2)
{
  if (a2)
  {
    v2 = *(*re::globalAllocators(this)[2] + 40);

    return v2();
  }

  return this;
}

uint64_t *re::FixedArray<re::FixedArray<re::GenericSRT<float>>>::FixedArray(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::FixedArray<unsigned int>>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<re::FixedArray<re::GenericSRT<float>>>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::FixedArray<re::FixedArray<re::GenericSRT<float>>>::copy(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 == *(a2 + 8))
  {
    if (v2)
    {
      v3 = *(a2 + 16);
      v4 = *(result + 16);
      v5 = 24 * v2;
      do
      {
        result = re::FixedArray<re::GenericSRT<float>>::operator=(v4, v3);
        v3 += 24;
        v4 += 3;
        v5 -= 24;
      }

      while (v5);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

double re::SampledAnimation<re::SkeletalPose>::SampledAnimation(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v2;
  v3 = *(a2 + 24);
  *(a1 + 24) = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  *(a1 + 24) = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = &str_67;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v6 = *(a2 + 56);
  *(a2 + 64) = 0;
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a2 + 48) = v8;
  *(a2 + 56) = v7;
  *(a1 + 72) = *(a2 + 72);
  *a1 = &unk_1F5CAEFA8;
  v9 = *(a2 + 73);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = 0;
  *(a1 + 73) = v9;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v10 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v10;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v11 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v11;
  return result;
}

re::DynamicString *re::TextureDefinitionCompiler::getCurrentCompiledAssetInfo@<X0>(re::TextureDefinitionCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::TextureAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::TextureDefinitionCompiler::assetIntrospectionType(re::TextureDefinitionCompiler *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::TextureAsset>(BOOL)::info = re::introspect_TextureAsset(0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[235];
}

void *re::TextureDefinitionCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, &re::TextureDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions);
}

re::DynamicString *re::TextureDefinitionCompiler::compile@<X0>(id *this@<X0>, char *a2@<X1>, char *a3@<X2>, re::AssetSerializationScheme *a4@<X3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    {
      re::introspect<re::TextureAsset>(BOOL)::info = re::introspect_TextureAsset(0);
    }

    v10 = re::introspect<re::TextureAsset>(BOOL)::info;
    memset(v61, 0, 40);
    re::FileStreamReader::open(a2, v57);
    if (v57[0])
    {
      v61[0] = a4;
      v12 = re::globalAllocators(v11);
      v13 = (*(*v12[2] + 32))(v12[2], 408, 8);
      *v13 = 0u;
      *(v13 + 16) = 0u;
      *(v13 + 32) = 0u;
      *(v13 + 48) = 0u;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 0u;
      *(v13 + 96) = 0u;
      *(v13 + 112) = 0u;
      *(v13 + 128) = 0u;
      *(v13 + 144) = 0u;
      *(v13 + 160) = 0u;
      *(v13 + 176) = 0u;
      *(v13 + 192) = 0u;
      *(v13 + 208) = 0u;
      *(v13 + 224) = 0u;
      *(v13 + 240) = 0u;
      *(v13 + 256) = 0u;
      *(v13 + 272) = 0u;
      *(v13 + 288) = 0u;
      *(v13 + 304) = 0u;
      *(v13 + 320) = 0u;
      *(v13 + 336) = 0u;
      *(v13 + 352) = 0u;
      *(v13 + 368) = 0u;
      *(v13 + 384) = 0u;
      *(v13 + 400) = 0;
      re::TextureAsset::TextureAsset(v13);
      *buf = v10[2];
      if (v53[0])
      {
        memset(buf, 0, sizeof(buf));
        *v45 = 1;
        *&v45[24] = 0;
        v45[28] = 0;
        *&v45[32] = 0;
        v45[36] = 0;
        memset(&v45[4], 0, 17);
        *&v45[40] = 6;
        v47 = 0uLL;
        v46 = 0;
        v48 = -65536;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        if (a3)
        {
          v14 = *(a3 + 1);
          *buf = *a3;
          *v45 = v14;
          *&v45[16] = *(a3 + 2);
          *&v45[28] = *(a3 + 44);
          re::ObjCObject::operator=(&v46, a3 + 8);
          v47 = *(a3 + 72);
          v48 = *(a3 + 22);
          re::FixedArray<short>::operator=(&v49, a3 + 12);
          v52 = a3[120];
        }

        v15 = ((re::TextureData::usage((v13 + 112)) << 29) >> 31) & 5;
        v16 = re::TextureData::usage((v13 + 112)) & 1;
        v17 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
        [v17 setWidth_];
        [v17 setHeight_];
        [v17 setDepth_];
        [v17 setPixelFormat_];
        [v17 setTextureType_];
        [v17 setStorageMode_];
        if (*&v45[4] == 2)
        {
          v18 = 1;
        }

        else
        {
          v29 = *(v13 + 248);
          if (v29 <= *(v13 + 252))
          {
            v29 = *(v13 + 252);
          }

          v18 = (floor(log2(v29)) + 1.0);
        }

        v30 = v15 | v16;
        [v17 setMipmapLevelCount_];
        [v17 setSampleCount_];
        v31 = re::TextureData::usage((v13 + 112));
        if ((v31 & 4) != 0)
        {
          [v17 setProtectionOptions_];
        }

        [v17 setUsage_];
        re::mtl::Device::makeTexture(v17, this + 1, &v43);
        if (v43)
        {
          *&v35 = v43;
          DWORD2(v35) = 0;
          std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(v13 + 112, &v35);
          if (DWORD2(v35) != -1)
          {
            (off_1F5CCFF38[DWORD2(v35)])(&v39, &v35);
          }

          std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(v13 + 232, v13 + 112);
          *a5 = 1;
          *(a5 + 8) = v13;
        }

        else
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          re::DynamicString::setCapacity(&v39, 0);
          re::DynamicString::assignf(&v39, "failed to load texture %s", a2);
          *&v35 = 100;
          *(&v35 + 1) = re::AssetErrorCategory(void)::instance;
          re::DynamicString::DynamicString(&v36, &v39);
          v32 = v36;
          *(a5 + 8) = v35;
          v33 = v37;
          v34 = v38;
          *a5 = 0;
          *(a5 + 24) = v32;
          *(a5 + 40) = v33;
          *(a5 + 48) = v34;
          if (v39 && (v40 & 1) != 0)
          {
            (*(*v39 + 40))();
          }
        }

        if (v43)
        {
        }

        if (v17)
        {
        }

        if (v49)
        {
          if (v50)
          {
            (*(*v49 + 40))();
            v50 = 0;
            v51 = 0;
          }

          v49 = 0;
        }
      }

      else
      {
        if (v55)
        {
          v25 = *&v56[7];
        }

        else
        {
          v25 = v56;
        }

        re::DynamicString::format("Failed to read JSON source asset %s: %s", buf, a2, v25);
        v26 = *buf;
        v27 = *v45;
        v28 = *&v45[8];
        *a5 = 0;
        *(a5 + 8) = 100;
        *(a5 + 16) = re::AssetErrorCategory(void)::instance;
        *(a5 + 24) = v26;
        *(a5 + 40) = v27;
        *(a5 + 48) = v28;
      }

      if (v53[0] & 1) == 0 && v54 && (v55)
      {
        (*(*v54 + 40))();
      }
    }

    else
    {
      *buf = v58;
      re::DynamicString::DynamicString(v45, &v59);
      *a5 = 0;
      *(a5 + 8) = *buf;
      *(a5 + 24) = *v45;
      *(a5 + 48) = *&v45[24];
      *(a5 + 32) = *&v45[8];
    }

    if (v57[0] == 1)
    {
      result = *(&v58 + 1);
      if (*(&v58 + 1))
      {
        if (v60 == 1)
        {
          return fclose(*(&v58 + 1));
        }
      }
    }

    else
    {
      result = v59;
      if (v59 && (v60 & 1) != 0)
      {
        return (*(*v59 + 40))();
      }
    }
  }

  else
  {
    v19 = *re::pipelineLogObjects(this);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "TextureAssetCompiler: sourceFilePath is null.", buf, 2u);
    }

    v22 = *buf;
    v23 = *v45;
    v24 = *&v45[8];
    *a5 = 0;
    *(a5 + 8) = 100;
    *(a5 + 16) = re::AssetErrorCategory(void)::instance;
    *(a5 + 24) = v22;
    *(a5 + 40) = v23;
    *(a5 + 48) = v24;
  }

  return result;
}

id re::TextureData::usage(re::TextureData *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return [*this usage];
  }

  if (v1 == 1)
  {
    this = (*this + 24);
    return [*this usage];
  }

  v3 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::TextureDefinitionCompiler::deleteAsset(v3, v4);
}

void re::TextureDefinitionCompiler::~TextureDefinitionCompiler(id *this)
{
}

{

  JUMPOUT(0x1E6906520);
}

id *re::KTXTextureCompiler::init(uint64_t a1, uint64_t a2, char a3, char a4)
{
  re::ObjCObject::operator=((a1 + 8), a2);
  result = re::ObjCObject::operator=((a1 + 16), (a2 + 8));
  v9 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 18);
  *(a1 + 24) = v9;
  if ((*(a1 + 27) & 1) == 0)
  {
    if ((*(a2 + 19) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 27) = 1;
LABEL_6:
    *(a1 + 28) = *(a2 + 20);
    goto LABEL_7;
  }

  if (*(a2 + 19))
  {
    goto LABEL_6;
  }

  *(a1 + 27) = 0;
LABEL_7:
  v10 = *(a2 + 21);
  *(a1 + 36) = *(a2 + 28);
  *(a1 + 29) = v10;
  *(a1 + 40) = a3;
  *(a1 + 41) = a4;
  return result;
}

re::DynamicString *re::KTXTextureCompiler::getCurrentCompiledAssetInfo@<X0>(re::KTXTextureCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::TextureAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::KTXTextureCompiler::assetIntrospectionType(re::KTXTextureCompiler *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::TextureAsset>(BOOL)::info = re::introspect_TextureAsset(0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[235];
}

void *re::KTXTextureCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, &re::KTXTextureCompiler::getSupportedExtensions(void)const::supportedExtensions);
}

void re::KTXTextureCompiler::compile(re::KTXTextureCompiler *this@<X0>, const char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v90 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = a2;
    v8 = this;
    v46 = 0uLL;
    *v47 = 1;
    *&v47[24] = 0;
    v47[28] = 0;
    *&v47[32] = 0;
    v47[36] = 0;
    *&v47[8] = 0;
    *&v47[13] = 0;
    *&v47[40] = 6;
    v49 = 0uLL;
    v48 = 0;
    v50 = -65536;
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v54 = 0;
    if (a3)
    {
      v9 = *(a3 + 1);
      v46 = *a3;
      *v47 = v9;
      *&v47[16] = *(a3 + 2);
      *&v47[28] = *(a3 + 44);
      re::ObjCObject::operator=(&v48, a3 + 8);
      v49 = *(a3 + 72);
      v50 = *(a3 + 22);
      re::FixedArray<short>::operator=(&v51, a3 + 12);
      v54 = a3[120];
      v10 = v48;
    }

    else
    {
      v10 = 0;
    }

    *&v47[4] = 2;
    v34 = *v47;
    *v35 = *&v47[16];
    *&v35[12] = *&v47[28];
    v33 = v46;
    v36 = v10;
    v37 = v49;
    v38 = v50;
    re::FixedArray<short>::FixedArray(&v39, &v51);
    v42 = v54;
    DWORD1(v33) = 2;
    if (*(v8 + 41) != 1)
    {
      goto LABEL_15;
    }

    v16 = strlen(v7);
    v17 = v16;
    if (v16 < 0x2F)
    {
      if (v16 < 0x25)
      {
        goto LABEL_15;
      }

      v18 = 1;
    }

    else
    {
      v18 = strncmp(&v7[v16 - 47], "CoreRE.framework/Resources/blueNoise64RGBA8.ktx", 0x2FuLL) != 0;
    }

    v19 = strncmp(&v7[v17 - 37], "CoreRE.framework/blueNoise64RGBA8.ktx", 0x25uLL);
    v20 = 0;
    v21 = 1;
    if (!v19 || !v18)
    {
LABEL_16:
      v35[20] = v20 & 1;
      v22 = re::FileSeekableInputStream::FileSeekableInputStream(buf, v7, 0, -1);
      v64[0] = v33;
      v64[1] = v34;
      v65[0] = *v35;
      *(v65 + 12) = *&v35[12];
      v66 = v36;
      v67 = v37;
      v68 = v38;
      re::FixedArray<short>::FixedArray(&v69, &v39);
      v72 = v42;
      if (v69)
      {
        if (v70)
        {
          (*(*v69 + 40))();
          v70 = 0;
          v71 = 0;
        }

        v69 = 0;
      }

      v24 = &v80;
      if (v81)
      {
        if (v81 != 1)
        {
          v31 = std::__throw_bad_variant_access[abi:nn200100]();
          re::KTXTextureCompiler::deleteAsset(v31, v32);
          return;
        }

        if (!*(v80 + 48))
        {
          goto LABEL_28;
        }

        v24 = (v80 + 24);
      }

      if (*v24)
      {
        TextureAsset = re::TextureAsset::makeTextureAsset((v8 + 8), &v80, &v82, 6, SDWORD2(v34));
        if (*(TextureAsset + 86))
        {
          if ((v78 & 1) == 0)
          {
            *(TextureAsset + 86) = 0;
LABEL_35:
            v28 = 1;
            v43 = 1;
            *&v44 = TextureAsset;
            v27 = 1;
LABEL_36:
            if (v85)
            {
              if (v89)
              {
                (*(*v85 + 40))();
              }

              v89 = 0;
              v86 = 0;
              v87 = 0;
              v85 = 0;
              ++v88;
            }

            if (v83)
            {

              v83 = 0;
            }

            if (v81 != -1)
            {
              (off_1F5CCFFB0[v81])(&v55, &v80);
            }

            re::FileSeekableInputStream::~FileSeekableInputStream(buf);
            if (v39)
            {
              if (v40)
              {
                (*(*v39 + 40))();
                v40 = 0;
                v41 = 0;
              }

              v39 = 0;
            }

            if (v27)
            {
              v29 = v44;
              *a4 = 1;
              *(a4 + 8) = v29;
            }

            else
            {
              *buf = v44;
              re::DynamicString::DynamicString(&v74, v45);
              *a4 = 0;
              *(a4 + 8) = *buf;
              v30 = v76;
              *(a4 + 24) = v74;
              *(a4 + 48) = v30;
              *(a4 + 32) = v75;
              if (v8 != 0 && !v28)
              {
                (*(*v8 + 40))(v8, v7);
              }
            }

            if (v51)
            {
              if (v52)
              {
                (*(*v51 + 40))();
                v52 = 0;
                v53 = 0;
              }

              v51 = 0;
            }

            return;
          }
        }

        else
        {
          if ((v78 & 1) == 0)
          {
            goto LABEL_35;
          }

          *(TextureAsset + 86) = 1;
        }

        *(TextureAsset + 88) = v79;
        goto LABEL_35;
      }

LABEL_28:
      v61 = 0;
      v62 = 0;
      v63 = 0;
      re::DynamicString::setCapacity(&v60, 0);
      re::DynamicString::assignf(&v60, "failed to load texture %s", v7);
      *&v55 = 100;
      *(&v55 + 1) = re::AssetErrorCategory(void)::instance;
      re::DynamicString::DynamicString(&v56, &v60);
      v7 = v58;
      v8 = v56;
      v26 = v57;
      v43 = 0;
      v44 = v55;
      v45[2] = v58;
      v45[3] = v59;
      v45[0] = v56;
      v45[1] = v57;
      if (v60 && (v61 & 1) != 0)
      {
        (*(*v60 + 40))();
      }

      v27 = 0;
      v28 = (v26 & 1) == 0;
      goto LABEL_36;
    }

LABEL_15:
    v21 = 0;
    v20 = *(v8 + 40);
    goto LABEL_16;
  }

  v11 = *re::pipelineLogObjects(this);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "TextureAssetCompiler: sourceFilePath is null.", buf, 2u);
  }

  v13 = *buf;
  v14 = v74;
  v15 = v75;
  *a4 = 0;
  *(a4 + 8) = 100;
  *(a4 + 16) = re::AssetErrorCategory(void)::instance;
  *(a4 + 24) = v13;
  *(a4 + 40) = v14;
  *(a4 + 48) = v15;
}

void re::KTXTextureCompiler::~KTXTextureCompiler(id *this)
{
}

{

  JUMPOUT(0x1E6906520);
}

re::DynamicString *re::RenderGraphCompiler::getCurrentCompiledAssetInfo@<X0>(re::RenderGraphCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::RenderGraphAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

void *re::RenderGraphCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &re::RenderGraphCompiler::getSupportedExtensions(void)const::supportedExtensions);

  return re::DynamicArray<re::TransitionCondition *>::add(a1, &off_1ECEF5DE8);
}

uint64_t re::RenderGraphCompiler::assetIntrospectionType(re::RenderGraphCompiler *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::RenderGraphAsset>(BOOL)::info = re::introspect_RenderGraphAsset(0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[214];
}

uint64_t re::RenderGraphCompiler::compile@<X0>(re::RenderGraphCompiler *this@<X0>, re::FileStreamReader *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = re::globalAllocators(this);
  v9 = (*(*v8[2] + 32))(v8[2], 872, 8);
  bzero((v9 + 48), 0x338uLL);
  *v9 = &unk_1F5CCA328;
  *(v9 + 8) = &unk_1F5CC5700;
  *(v9 + 32) = 0u;
  *(v9 + 16) = 0u;
  v11 = re::DynamicString::setCapacity((v9 + 16), 0);
  *(v9 + 8) = &unk_1F5CC4EA8;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0;
  *(v9 + 120) = 0u;
  *(v9 + 136) = 0u;
  *(v9 + 152) = 0;
  *(v9 + 160) = 0u;
  *(v9 + 176) = 0u;
  *(v9 + 192) = 0;
  *(v9 + 200) = 0u;
  *(v9 + 216) = 0u;
  *(v9 + 232) = 0;
  *(v9 + 240) = 0u;
  *(v9 + 256) = 0u;
  *(v9 + 272) = 0;
  *(v9 + 312) = 0;
  *(v9 + 280) = 0u;
  *(v9 + 296) = 0u;
  *(v9 + 320) = 0u;
  *(v9 + 336) = 0u;
  *(v9 + 352) = 0;
  *(v9 + 360) = 0u;
  *(v9 + 376) = 0u;
  *(v9 + 392) = 0u;
  re::DynamicString::setCapacity((v9 + 376), 0);
  v12 = 0uLL;
  *(v9 + 436) = 0u;
  *(v9 + 408) = 0u;
  *(v9 + 424) = 0u;
  *(v9 + 452) = 0x7FFFFFFFLL;
  *(v9 + 464) = 0u;
  *(v9 + 480) = 0u;
  *(v9 + 496) = 0;
  *(v9 + 500) = 0x7FFFFFFFLL;
  *(v9 + 512) = 0u;
  *(v9 + 528) = 0u;
  *(v9 + 544) = 0;
  *(v9 + 548) = 0x7FFFFFFFLL;
  *(v9 + 560) = 0u;
  *(v9 + 576) = 0u;
  *(v9 + 592) = 0;
  *(v9 + 596) = 0x7FFFFFFFLL;
  *(v9 + 640) = 0;
  *(v9 + 608) = 0u;
  *(v9 + 624) = 0u;
  *(v9 + 644) = 0x7FFFFFFFLL;
  *(v9 + 656) = 0u;
  *(v9 + 672) = 0u;
  *(v9 + 688) = 0;
  *(v9 + 692) = 0x7FFFFFFFLL;
  *(v9 + 704) = 0;
  *(v9 + 712) = 1;
  *(v9 + 720) = 0u;
  *(v9 + 736) = 0u;
  *(v9 + 752) = 0u;
  *(v9 + 764) = 0u;
  *(v9 + 780) = 0x7FFFFFFFLL;
  *(v9 + 808) = 0;
  *(v9 + 816) = 0;
  *(v9 + 792) = 0u;
  *(v9 + 864) = 0;
  *(v9 + 856) = 0;
  *(v9 + 824) = 0u;
  *(v9 + 840) = 0u;
  if ((atomic_load_explicit(&qword_1EE19DA68, memory_order_acquire) & 1) == 0)
  {
    v26 = __cxa_guard_acquire(&qword_1EE19DA68);
    v12 = 0uLL;
    if (v26)
    {
      _MergedGlobals_135 = re::introspect_RenderGraphFile(0);
      __cxa_guard_release(&qword_1EE19DA68);
      v12 = 0uLL;
    }
  }

  v13 = _MergedGlobals_135;
  v43 = v12;
  v44 = v12;
  v42 = a3;
  re::FileStreamReader::open(a2, v38);
  if (v38[0])
  {
    v27 = *(v13 + 32);
    if (v34)
    {
      v16 = re::RenderGraphFile::calculateValidity((v9 + 8), v31);
      if ((v31[0] & 1) == 0)
      {
        goto LABEL_16;
      }

      re::RenderGraphFile::initRuntimeNodeSettings((v9 + 8), &v27);
      v16 = re::Result<re::Unit,re::DynamicString>::operator=(v31, &v27);
      if ((v27 & 1) == 0)
      {
        v16 = *(&v27 + 1);
        if (*(&v27 + 1))
        {
          if (v28)
          {
            v16 = (*(**(&v27 + 1) + 40))();
          }
        }
      }

      if (v31[0])
      {
        *a4 = 1;
        *(a4 + 8) = v9;
      }

      else
      {
LABEL_16:
        v21 = re::globalAllocators(v16)[2];
        (**v9)(v9);
        (*(*v21 + 40))(v21, v9);
        *&v27 = 100;
        *(&v27 + 1) = re::AssetErrorCategory(void)::instance;
        re::DynamicString::DynamicString(&v28, &v32);
        v22 = v28;
        *(a4 + 8) = v27;
        v23 = v29;
        v24 = v30;
        *a4 = 0;
        *(a4 + 24) = v22;
        *(a4 + 40) = v23;
        *(a4 + 48) = v24;
      }

      if (v31[0] & 1) == 0 && v32 && (v33)
      {
        (*(*v32 + 40))();
      }
    }

    else
    {
      v17 = re::globalAllocators(v15)[2];
      (**v9)(v9);
      (*(*v17 + 40))(v17, v9);
      if (BYTE8(v36))
      {
        v18 = v37;
      }

      else
      {
        v18 = &v36 + 9;
      }

      re::DynamicString::format("Failed to read JSON source asset %s: %s", &v27, a2, v18);
      v19 = v27;
      v20 = v28;
      *a4 = 0;
      *(a4 + 8) = 100;
      *(a4 + 16) = re::AssetErrorCategory(void)::instance;
      *(a4 + 24) = v19;
      *(a4 + 40) = v20;
    }

    if (v34 & 1) == 0 && v36 && (BYTE8(v36))
    {
      (*(*v36 + 40))();
    }
  }

  else
  {
    v34 = v39;
    re::DynamicString::DynamicString(&v35, &v40);
    *a4 = 0;
    *(a4 + 8) = v34;
    *(a4 + 24) = v35;
    *(a4 + 48) = v37;
    *(a4 + 32) = v36;
  }

  if (v38[0] == 1)
  {
    result = *(&v39 + 1);
    if (*(&v39 + 1))
    {
      if (v41 == 1)
      {
        return fclose(*(&v39 + 1));
      }
    }
  }

  else
  {
    result = v40;
    if (v40 && (v41 & 1) != 0)
    {
      return (*(*v40 + 40))();
    }
  }

  return result;
}

re::DynamicString *re::RenderGraphEmitterCompiler::getCurrentCompiledAssetInfo@<X0>(re::RenderGraphEmitterCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::RenderGraphEmitterAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::RenderGraphEmitterCompiler::assetIntrospectionType(re::RenderGraphEmitterCompiler *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::RenderGraphEmitterAsset>(BOOL)::info = re::introspect_RenderGraphEmitterAsset(0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[187];
}

void *re::RenderGraphEmitterCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, &re::RenderGraphEmitterCompiler::getSupportedExtensions(void)const::supportedExtensions);
}

re *re::RenderGraphEmitterCompiler::compile@<X0>(re::RenderGraphEmitterCompiler *this@<X0>, re::AssetUtilities *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = re::globalAllocators(this);
  v9 = (*(*v8[2] + 32))(v8[2], 32, 8);
  *(v9 + 8) = 0;
  v10 = (v9 + 8);
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *v9 = &unk_1F5CBD118;
  if ((atomic_load_explicit(&qword_1EE19DA78, memory_order_acquire) & 1) == 0)
  {
    v18 = __cxa_guard_acquire(&qword_1EE19DA78);
    v10 = (v9 + 8);
    if (v18)
    {
      qword_1EE19DA70 = re::introspect_RenderGraphEmitterPointer(0);
      __cxa_guard_release(&qword_1EE19DA78);
      v10 = (v9 + 8);
    }
  }

  SourceJson = re::AssetUtilities::readSourceJson(a2, v10, qword_1EE19DA70, a3, v23);
  if ((v23[0] & 1) == 0)
  {
    v13 = re::globalAllocators(SourceJson)[2];
    (**v9)(v9);
    (*(*v13 + 40))(v13, v9);
    *&v19 = 100;
    *(&v19 + 1) = re::AssetErrorCategory(void)::instance;
LABEL_11:
    result = re::DynamicString::DynamicString(&v20, &v24);
    v15 = v20;
    *(a4 + 8) = v19;
    v16 = v21;
    v17 = v22;
    *a4 = 0;
    *(a4 + 24) = v15;
    *(a4 + 40) = v16;
    *(a4 + 48) = v17;
    goto LABEL_12;
  }

  re::RenderGraphEmitterBase::initRuntimeSettings(*(v9 + 16), *(v9 + 8), &v19);
  result = re::Result<re::Unit,re::DynamicString>::operator=(v23, &v19);
  if ((v19 & 1) == 0)
  {
    result = *(&v19 + 1);
    if (*(&v19 + 1))
    {
      if (v20)
      {
        result = (*(**(&v19 + 1) + 40))();
      }
    }
  }

  if ((v23[0] & 1) == 0)
  {
    v14 = re::globalAllocators(result)[2];
    (**v9)(v9);
    (*(*v14 + 40))(v14, v9);
    *&v19 = 100;
    *(&v19 + 1) = re::AssetErrorCategory(void)::instance;
    goto LABEL_11;
  }

  *a4 = 1;
  *(a4 + 8) = v9;
LABEL_12:
  if ((v23[0] & 1) == 0)
  {
    result = v24;
    if (v24)
    {
      if (v25)
      {
        return (*(*v24 + 40))();
      }
    }
  }

  return result;
}

re::TextureImportOperation *re::TextureImportOperation::TextureImportOperation(re::TextureImportOperation *this, re::TextureProvider *a2, char a3, re::AssetManager *a4)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = a4;
  *this = &unk_1F5CD00A0;
  *(this + 8) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  v9 = re::DynamicString::setCapacity(this + 5, 0);
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  v10 = re::DynamicString::setCapacity(this + 9, 0);
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  v11 = re::DynamicString::setCapacity(this + 15, 0);
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  v12 = re::DynamicString::setCapacity(this + 19, 0);
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  re::DynamicString::setCapacity(this + 23, 0);
  re::TextureAssetData::TextureAssetData((this + 216));
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  v14 = re::DynamicString::setCapacity(this + 46, 0);
  *(this + 106) = 0;
  *(this + 52) = 0;
  *(this + 25) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 116) = 0;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 63) = 0;
  re::DynamicString::setCapacity(this + 60, 0);
  *(this + 68) = a2;
  *(this + 552) = a3;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  return this;
}

void re::TextureImportOperation::~TextureImportOperation(re::TextureImportOperation *this)
{
  v1 = this;
  *this = &unk_1F5CD00A0;
  if (*(this + 552) == 1)
  {
    v2 = *(this + 68);
    if (v2)
    {
      v3 = re::globalAllocators(this)[2];
      (**v2)(v2);
      this = (*(*v3 + 40))(v3, v2);
    }

    *(v1 + 68) = 0;
  }

  v4 = *(v1 + 64);
  if (v4)
  {
    v5 = re::globalAllocators(this)[2];
    (**v4)(v4);
    (*(*v5 + 40))(v5, v4);
    *(v1 + 64) = 0;
  }

  re::AssetHandle::~AssetHandle((v1 + 520));
  re::DynamicString::deinit((v1 + 480));
  re::DynamicArray<unsigned long>::deinit(v1 + 440);
  re::DynamicArray<unsigned long>::deinit(v1 + 400);
  re::DynamicString::deinit((v1 + 368));
  *(v1 + 27) = &unk_1F5CC40A0;
  v6 = *(v1 + 45);
  if (v6)
  {

    *(v1 + 45) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(v1 + 312);

  v7 = *(v1 + 37);
  if (v7)
  {

    *(v1 + 37) = 0;
  }

  v8 = *(v1 + 62);
  if (v8 != -1)
  {
    (off_1F5CD00D8[v8])(&v9, v1 + 240);
  }

  *(v1 + 62) = -1;
  *(v1 + 27) = &unk_1F5CCF868;
  objc_destructInstance(v1 + 224);
  re::DynamicString::deinit((v1 + 184));
  re::DynamicString::deinit((v1 + 152));
  re::DynamicString::deinit((v1 + 120));
  re::DynamicString::deinit((v1 + 72));
  re::DynamicString::deinit((v1 + 40));
  *v1 = &unk_1F5CCF868;
  objc_destructInstance(v1 + 8);
}

{
  re::TextureImportOperation::~TextureImportOperation(this);

  JUMPOUT(0x1E6906520);
}

void re::USDImportContext::init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  v83 = *MEMORY[0x1E69E9840];
  *a1 = a7;
  if (*(a1 + 16))
  {
    if ((*a4 & 1) == 0)
    {
      *(a1 + 16) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*a4 & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 16) = 1;
  }

  *(a1 + 20) = *(a4 + 4);
LABEL_7:
  if (*(a1 + 24))
  {
    if ((*a5 & 1) == 0)
    {
      *(a1 + 24) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*a5 & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 24) = 1;
  }

  *(a1 + 28) = *(a5 + 4);
LABEL_13:
  if (*a4 == 1)
  {
    v9 = *(a4 + 4);
  }

  else
  {
    v9 = 2139095040;
  }

  *(a1 + 8) = v9;
  if (*a5 == 1)
  {
    v10 = *(a5 + 4);
  }

  else
  {
    v10 = -8388608;
  }

  *(a1 + 12) = v10;
  *(a1 + 32) = a6;
  *(a1 + 40) = a3;
  re::BucketArray<re::USDImportContextSkeletonData,4ul>::init(a1 + 56, a2, 1uLL);
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1 + 112, a2, 4);
  re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::init(a1 + 160, a2, 1uLL);
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1 + 216, a2, 8);
  re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::init(a1 + 624, a2, 1uLL);
  v11 = re::BucketArray<unsigned long,32ul>::init(a1 + 680, a2, 1uLL);
  re::DynamicString::setCapacity((a1 + 784), 0x40uLL);
  *(a1 + 816) = a2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity((a1 + 816), 0x20uLL);
  ++*(a1 + 840);
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1 + 856, a2, 3);
  bzero(v19, 0x430uLL);
  v19[2] = &str_67;
  v19[4] = &str_67;
  v19[6] = &str_67;
  memset(v20, 0, sizeof(v20));
  v21 = 0x7FFFFFFF00000000;
  v22 = 0u;
  v23 = 1;
  v24 = 0;
  v25 = 0u;
  v26 = 0;
  v27 = -1;
  v28 = 16842752;
  v29 = 1;
  v30 = 0;
  v31 = 0;
  v32 = 65793;
  v35 = 0u;
  v33 = 0u;
  v34 = 0u;
  DWORD1(v35) = 0x7FFFFFFF;
  v36 = -1;
  v37 = 0;
  v38 = 0x3F80000000000000;
  v40 = 0;
  v41 = 0;
  v39 = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0;
  v48 = 0u;
  v49 = 0u;
  v50 = 0x3F8000003F800000;
  v51 = 1065353216;
  v52 = 0;
  v53 = 0x3F80000000000000;
  v54 = 0u;
  v13 = re::TimelineAssetData::TimelineAssetData(&v55, 33);
  v56 = 256;
  v57 = 1023969417;
  v61 = 0;
  v58 = 0u;
  v59 = 0u;
  v60 = 0;
  v55 = &unk_1F5CC0788;
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  v14 = re::DynamicString::setCapacity(v62 + 1, 0);
  memset(v64, 0, 32);
  v15 = re::DynamicString::setCapacity(v64, 0);
  memset(v65, 0, sizeof(v65));
  v16 = re::DynamicString::setCapacity(v65, 0);
  memset(v66, 0, sizeof(v66));
  v17 = re::DynamicString::setCapacity(v66, 0);
  memset(v67, 0, sizeof(v67));
  re::DynamicString::setCapacity(v67, 0);
  v68 = 0u;
  v70 = 0;
  v69 = 0;
  v71 = 0u;
  v72 = 0u;
  v73 = -1;
  v74 = 0u;
  v75 = 1;
  v76 = 0;
  v77 = 0u;
  v78 = 0;
  v79 = 0u;
  memset(v80, 0, 28);
  v82 = 0;
  memset(&v80[32], 0, 64);
  v81 = 0;
  v18 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::addUninitialized(a1 + 624);
  re::USDImportContext::NodeStackItem::NodeStackItem(v18, v19);
  re::USDImportContext::NodeStackItem::~NodeStackItem(v19);
  v19[0] = 0;
  re::DynamicArray<unsigned long>::add((a1 + 816), v19);
  re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::init(a1 + 368, a2, 1uLL);
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1 + 424, a2, 8);
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1 + 472, a2, 8);
  re::BucketArray<re::USDImportContextPhysicsRigidBodyData,8ul>::init(a1 + 520, a2, 1uLL);
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1 + 576, a2, 8);
}

void *re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<unsigned long,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<unsigned long,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

double re::USDImportContext::deinit(re::USDImportContext *this)
{
  *this = 0;
  *(this + 1) = 0xFF7FFFFF7F7FFFFFLL;
  *(this + 5) = 0;
  re::BucketArray<re::USDImportContextSkeletonData,4ul>::deinit(this + 56);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 14);
  re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::deinit(this + 160);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 27);
  re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::deinit(this + 624);
  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(this + 680);
  re::DynamicString::deinit((this + 784));
  re::DynamicArray<unsigned long>::deinit(this + 816);
  re::USDImportContext::PhysicsColliderTable::deinit((this + 368));
  re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::deinit(this + 520);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 72);

  return re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 107);
}

uint64_t re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1, i);
      re::USDImportContext::NodeStackItem::~NodeStackItem(v4);
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

double re::USDImportContext::PhysicsColliderTable::deinit(re::USDImportContext::PhysicsColliderTable *this)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::operator[](this, i);
      re::StringID::StringID(&v10, v4);
      v5 = *(v4 + 16);
      v6 = *(v4 + 32);
      v7 = *(v4 + 48);
      v15 = *(v4 + 64);
      v13 = v6;
      v14 = v7;
      v12 = v5;
      v8 = re::internal::destroyPersistent<re::CollisionShapeData>("deinit", 667, v5);
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }

  re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::deinit(this);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 7);
  return re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 13);
}

uint64_t re::USDImportContext::pushNodePath(re::USDImportContext *this, const char *a2, const char *a3, const char *a4)
{
  v5 = re::USDImportContext::pushNodeLevel(this, a2, a3, a4, 1);
  v7 = *(this + 83);
  if (v7)
  {
    v8 = v5;
    v10[0] = *(re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](this + 624, v7 - 1) + 32);
    v10[1] = strlen(v10[0]);
    re::DynamicString::operator=((this + 784), v10);
    return v8;
  }

  else
  {
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::USDImportContext::pushNodeLevel(re::USDImportContext *this, const char *a2, const char *a3, const char *a4, int a5)
{
  v112 = *MEMORY[0x1E69E9840];
  v10 = *(*(this + 106) + 8 * *(this + 104) - 8);
  v11 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](this + 624, v10);
  v12 = v11;
  if (a5)
  {
    re::UniqueNameGenerator::uniqueName((v11 + 56), a2, a3, &v44);
  }

  else
  {
    *&v44.var0 = 0;
    v44.var1 = &str_67;
  }

  v13 = *(this + 83);
  v14 = re::BucketArray<unsigned long,8ul>::addUninitialized(v12 + 880);
  *v14 = v13;
  v15 = *(v12 + 32);
  var1 = v44.var1;
  v18 = v43 & 1;
  v19 = v43 >> 1;
  v20 = v43 >> 1;
  if (v43)
  {
    v21 = v43 >> 1;
  }

  else
  {
    v21 = v43 >> 1;
  }

  if (v21)
  {
    if (v21 != 1 || *re::DynamicString::operator[](&v42, 0) != 47)
    {
LABEL_20:
      re::DynamicString::append(&v42, "/", 1uLL);
      goto LABEL_21;
    }

    v18 = v43 & 1;
    v19 = v43 >> 1;
    v20 = v43 >> 1;
  }

  if (v18)
  {
    v22 = v19;
  }

  else
  {
    v22 = v20;
  }

  if (!v22)
  {
    v23 = (v41 & 1) != 0 ? v41 >> 1 : v41 >> 1;
    if (v23 != 1 || *re::DynamicString::operator[](&v40, 0) != 47)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  LOBYTE(v45) = 0;
  re::StringID::StringID(&v46, &v44);
  v24 = re::DynamicString::operator+(&v42, v44.var1, &v37);
  if (v38)
  {
    v25 = *&v39[7];
  }

  else
  {
    v25 = v39;
  }

  v47[0] = 0;
  v47[1] = &str_67;
  v48[0] = 0;
  v48[1] = &str_67;
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  v51 = 0x7FFFFFFFLL;
  v53 = 1;
  v52 = 0u;
  v55 = 0u;
  v54 = 0;
  v56 = 0;
  v57 = -1;
  v58 = 16842752;
  v59 = 1;
  v60 = 0;
  v61 = 0;
  v62 = 65793;
  v65 = 0u;
  v63 = 0u;
  v64 = 0u;
  DWORD1(v65) = 0x7FFFFFFF;
  v66 = -1;
  v67 = 0;
  v68 = 0x3F80000000000000;
  v71 = 0;
  v70 = 0;
  v69 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0;
  v75 = 0u;
  v76 = 0u;
  v77 = 0;
  v78 = 0u;
  v79 = 0u;
  v81 = 1065353216;
  v80 = 0x3F8000003F800000;
  v83 = 0x3F80000000000000;
  v82 = 0;
  v84 = 0u;
  v28 = re::TimelineAssetData::TimelineAssetData(&v85, 33);
  v86 = 256;
  v87 = 1023969417;
  v91 = 0;
  v88 = 0u;
  v89 = 0u;
  v90 = 0;
  v85 = &unk_1F5CC0788;
  memset(v92, 0, sizeof(v92));
  v93 = 0;
  v29 = re::DynamicString::setCapacity(v92 + 1, 0);
  memset(v94, 0, 32);
  v30 = re::DynamicString::setCapacity(v94, 0);
  memset(v95, 0, sizeof(v95));
  memset(&v94[4], 0, 32);
  v31 = re::DynamicString::setCapacity(v95, 0);
  memset(v96, 0, sizeof(v96));
  v32 = re::DynamicString::setCapacity(v96, 0);
  memset(v97, 0, sizeof(v97));
  re::DynamicString::setCapacity(v97, 0);
  v98 = 0u;
  v100 = 0;
  v99 = 0;
  v101 = 0u;
  v102 = 0u;
  v103 = v10;
  v107 = 0;
  v104 = 0u;
  v105 = 1u;
  v106 = 0uLL;
  v108 = 0u;
  memset(v109, 0, 28);
  v111 = 0;
  memset(&v109[32], 0, 64);
  v110 = 0;
  v33 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::addUninitialized(this + 624);
  re::USDImportContext::NodeStackItem::NodeStackItem(v33, &v45);
  re::USDImportContext::NodeStackItem::~NodeStackItem(&v45);
  if (v37 && (v38 & 1) != 0)
  {
    (*(*v37 + 40))();
  }

  v45 = *(this + 83) - 1;
  re::DynamicArray<unsigned long>::add(this + 102, &v45);
  if (!v10)
  {
    re::USDImportContext::setNodeAsEntity(this, *(*(this + 106) + 8 * *(this + 104) - 8));
  }

  v34 = *(this + 83);
  if (v40 && (v41 & 1) != 0)
  {
    (*(*v40 + 40))();
  }

  v35 = v42;
  if (v42 && (v43 & 1) != 0)
  {
    v35 = (*(*v42 + 40))();
  }

  if (*&v44.var0)
  {
    if (*&v44.var0)
    {
    }
  }

  return v34 - 1;
}

uint64_t re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](uint64_t a1, unint64_t a2)
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

  if (*(a1 + 8) <= a2 >> 5)
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

  return *(v3 + 8 * (a2 >> 5)) + 1072 * (a2 & 0x1F);
}

{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 5)
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

  return *(v3 + 8 * (a2 >> 5)) + 1072 * (a2 & 0x1F);
}

uint64_t re::USDImportContext::popNodePath(re::USDImportContext *this)
{
  result = re::DynamicString::rfind(this + 784, 47, v4);
  if (v4[0] == 1)
  {
    result = re::DynamicString::resize(this + 98, v5, 0);
  }

  else
  {
    if (*(this + 792))
    {
      *(this + 99) = 1;
      v3 = *(this + 100);
    }

    else
    {
      *(this + 792) = 0;
      v3 = this + 793;
    }

    *v3 = 0;
  }

  --*(this + 104);
  ++*(this + 210);
  return result;
}

uint64_t re::USDImportContext::setNodeAsEntity(re::USDImportContext *this, unint64_t a2)
{
  result = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](this + 624, a2);
  if (*(result + 160) == -1)
  {
    *re::BucketArray<unsigned long,32ul>::addUninitialized(this + 680) = a2;
    v5 = *(this + 90) - 1;
    result = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](this + 624, a2);
    *(result + 160) = v5;
  }

  return result;
}

re::DynamicString *re::USDImportContext::setText3D(re::USDImportContext *this, const re::USDImportContext::GeomText3D *a2)
{
  v3 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](this + 624, *(*(this + 106) + 8 * *(this + 104) - 8));
  re::DynamicString::operator=((v3 + 616), a2);
  re::DynamicString::operator=((v3 + 648), (a2 + 32));
  v4 = *(a2 + 5);
  *(v3 + 680) = *(a2 + 4);
  *(v3 + 696) = v4;
  re::DynamicString::operator=((v3 + 712), (a2 + 96));
  re::DynamicString::operator=((v3 + 744), (a2 + 128));

  return re::DynamicString::operator=((v3 + 776), (a2 + 160));
}

uint64_t re::USDImportContext::setPrimitiveShape(uint64_t a1, _OWORD *a2)
{
  v4 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, *(*(a1 + 848) + 8 * *(a1 + 832) - 8));
  v6 = a2[1];
  v5 = a2[2];
  v4[15] = *a2;
  v4[16] = v6;
  v4[17] = v5;
  v7 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, *(*(a1 + 848) + 8 * *(a1 + 832) - 8));
  v8 = (*(a1 + 848) + 8 * *(a1 + 832) - 8);

  return re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 856, (v7 + 40), v8);
}

uint64_t re::USDImportContext::setModel(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, *(*(a1 + 848) + 8 * *(a1 + 832) - 8));
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(v4 + 288, 1uLL);
  re::make::shared::object<re::ShareableInternal<re::GeomModelDescriptor>,re::GeomModelDescriptor>(v11, a2);
  v5 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, *(*(a1 + 848) + 8 * *(a1 + 832) - 8));
  if (!*(v5 + 304))
  {
    v11[1] = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    v15 = 789;
    v16 = 2048;
    v17 = 0;
    v18 = 2048;
    v19 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(v5 + 320);
  v7 = *v6;
  *v6 = v11[0];
  if (v7)
  {
  }

  v8 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, *(*(a1 + 848) + 8 * *(a1 + 832) - 8));
  v9 = (*(a1 + 848) + 8 * *(a1 + 832) - 8);

  return re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 856, (v8 + 40), v9);
}

uint64_t *re::USDImportContext::setModelsWithLods(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v34 = *(*(a1 + 848) + 8 * *(a1 + 832) - 8);
  v10 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, v34);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(v10 + 288, *(a2 + 16));
  v11 = *(v10 + 304);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *(a2 + 16);
      if (v14 <= v13)
      {
        break;
      }

      re::make::shared::object<re::ShareableInternal<re::GeomModelDescriptor>,re::GeomModelDescriptor>(&v33, *(a2 + 32) + v12);
      v14 = *(v10 + 304);
      if (v14 <= v13)
      {
        goto LABEL_25;
      }

      v15 = *(v10 + 320);
      v16 = *(v15 + 8 * v13);
      *(v15 + 8 * v13) = v33;
      if (v16)
      {
      }

      v14 = *(a4 + 16);
      if (v14 <= v13)
      {
        goto LABEL_26;
      }

      v17 = *(*(a4 + 32) + 8 * v13);
      if (v17 != -1)
      {
        v18 = re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::operator[](a1 + 160, v17);
        re::DynamicArray<unsigned long>::add((v18 + 240), &v34);
      }

      v14 = *(a3 + 16);
      if (v14 <= v13)
      {
        goto LABEL_27;
      }

      v19 = *(*(a3 + 32) + 8 * v13);
      if (v19 != -1)
      {
        v20 = re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](a1 + 56, v19);
        re::DynamicArray<unsigned long>::add((v20 + 376), &v34);
      }

      ++v13;
      v12 += 216;
      if (v11 == v13)
      {
        goto LABEL_14;
      }
    }

    v35 = 0;
    v48 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 789;
    v40 = 2048;
    v41 = v13;
    v42 = 2048;
    v43 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_25:
    v35 = 0;
    v48 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 789;
    v40 = 2048;
    v41 = v13;
    v42 = 2048;
    v43 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_26:
    v35 = 0;
    v48 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 789;
    v40 = 2048;
    v41 = v13;
    v42 = 2048;
    v43 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_27:
    v35 = 0;
    v48 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 789;
    v40 = 2048;
    v41 = v13;
    v42 = 2048;
    v43 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_14:
  v21 = *(a2 + 16);
  *(a2 + 16) = 0;
  if (v21)
  {
    v22 = 0;
    v23 = *(a2 + 32);
    v24 = 216 * v21;
    do
    {
      v25 = v23 + v22;
      re::DynamicString::deinit((v23 + v22 + 184));
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v23 + v22 + 136));
      re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit(v23 + v22 + 96);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v23 + v22 + 48));
      v26 = *(v23 + v22 + 40);
      if (v26)
      {

        *(v25 + 40) = 0;
      }

      v27 = *(v25 + 32);
      if (v27)
      {

        *(v25 + 32) = 0;
      }

      v28 = *(v23 + v22 + 8);
      if (v28)
      {

        *(v23 + v22 + 8) = 0;
      }

      v22 += 216;
    }

    while (v24 != v22);
  }

  ++*(a2 + 24);
  v29 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, *(*(a1 + 848) + 8 * *(a1 + 832) - 8));
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v29 + 328, a3);
  v30 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, *(*(a1 + 848) + 8 * *(a1 + 832) - 8));
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v30 + 368, a4);
  v31 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, *(*(a1 + 848) + 8 * *(a1 + 832) - 8));
  return re::FixedArray<float>::operator=((v31 + 408), a5);
}

uint64_t re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v3 + 8 * (a2 >> 3)) + 280 * (a2 & 7);
}

{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
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

  return *(v3 + 8 * (a2 >> 3)) + 280 * (a2 & 7);
}

uint64_t re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  if (*(a1 + 8) <= a2 >> 2)
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

  return *(v3 + 8 * (a2 >> 2)) + 424 * (a2 & 3);
}

{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
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

  return *(v3 + 8 * (a2 >> 2)) + 424 * (a2 & 3);
}

uint64_t re::USDImportContext::setMeshMaterials(uint64_t a1, uint64_t a2)
{
  v3 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, *(*(a1 + 848) + 8 * *(a1 + 832) - 8)) + 808;

  return re::DynamicArray<re::AssetHandle>::operator=(v3, a2);
}

uint64_t re::DynamicArray<re::AssetHandle>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = *(result + 8);
      v9 = *(a2 + 8);
      *result = v5;
      *(result + 8) = v9;
      *a2 = v4;
      *(a2 + 8) = v8;
      v10 = *(result + 16);
      *(result + 16) = *(a2 + 16);
      *(a2 + 16) = v10;
      v11 = *(result + 32);
      *(result + 32) = *(a2 + 32);
      *(a2 + 32) = v11;
      ++*(a2 + 24);
      ++*(result + 24);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

float32x4_t re::USDImportContext::concatenateLocalTransform(uint64_t a1, float32x4_t *a2)
{
  v3 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, *(*(a1 + 848) + 8 * *(a1 + 832) - 8));
  v4 = *(v3 + 432);
  _Q1 = *(v3 + 448);
  _Q3 = a2[1];
  v7 = vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL);
  v8 = vnegq_f32(_Q1);
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v8), _Q3, v7);
  _S7 = _Q3.i32[3];
  v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), _Q3, _Q1, 3), _Q1, _Q3, 3);
  __asm { FMLA            S3, S7, V1.S[3] }

  v11.i32[3] = _Q3.i32[0];
  v16 = vmulq_f32(v4, *a2);
  v17 = a2[2];
  v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v8), v17, v7);
  v19 = vaddq_f32(v18, v18);
  v20 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
  v21 = vaddq_f32(v17, vmulq_laneq_f32(v20, _Q1, 3));
  v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), v8), v20, v7);
  result = vaddq_f32(*(v3 + 464), vmulq_f32(v4, vaddq_f32(v21, vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL))));
  *(v3 + 432) = v16;
  *(v3 + 448) = v11;
  *(v3 + 464) = result;
  return result;
}

uint64_t re::USDImportContext::setTransformAnimation(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    v4 = *(a1 + 8);
    if (v4 > *(a2 + 80))
    {
      v4 = *(a2 + 80);
    }

    *(a1 + 8) = v4;
  }

  if (*(a1 + 24) == 1)
  {
    v5 = *(a2 + 84);
  }

  else
  {
    v6 = *(a1 + 12);
    v5 = *(a2 + 84);
    if (v6 < v5)
    {
      v6 = *(a2 + 84);
    }

    *(a1 + 12) = v6;
  }

  v7 = *(a2 + 80);
  v8 = v7;
  *(a2 + 80) = 0;
  *(a2 + 84) = v5 - v7;
  v9 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, *(*(a1 + 848) + 8 * *(a1 + 832) - 8));
  v10 = *(a2 + 16);
  *(v9 + 488) = *(a2 + 8);
  *(v9 + 496) = v10;
  re::StringID::operator=((v9 + 504), (a2 + 24));
  re::DynamicString::operator=((v9 + 520), (a2 + 40));
  *(v9 + 552) = *(a2 + 72);
  v11 = *(a2 + 73);
  *(v9 + 560) = *(a2 + 80);
  *(v9 + 553) = v11;
  re::DynamicArray<re::AssetHandle>::operator=(v9 + 568, a2 + 88);
  result = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, *(*(a1 + 848) + 8 * *(a1 + 832) - 8));
  *(result + 608) = v8;
  return result;
}

void re::USDImportContext::setVertexCacheAnimation(uint64_t a1, void *a2)
{
  v3 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, *(*(a1 + 848) + 8 * *(a1 + 832) - 8));
  v5 = v3;
  v3[124] = *a2;
  if (v3 + 125 != a2 + 1)
  {
    v6 = v3[125];
    v7 = a2[1];
    if (v6)
    {
      v8 = v6 == v7;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296);
      _os_crash();
      __break(1u);
      return;
    }

    v3[125] = v7;
    a2[1] = v6;
    v9 = v3[126];
    v3[126] = a2[2];
    a2[2] = v9;
    v10 = v3[127];
    v3[127] = a2[3];
    a2[3] = v10;
  }

  v11 = 0xBD8878DBB047AD5ELL;
  v12 = "DefaultVertexCacheDeformer";
  v13 = 0x20889405B90383CLL;
  v14 = "VertexCache";
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v18 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v23 = 0u;
  v26 = 0u;
  v22 = 0u;
  DWORD2(v23) = 1;
  v24 = 0;
  v25 = 0;
  *&v26 = 0;
  v28 = 1;
  v27 = 0u;
  DWORD2(v26) = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v36 = 0;
  v33 = 0u;
  v34 = 1uLL;
  v35 = 0uLL;
  v37 = 0u;
  v38 = 1;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v46 = 0;
  v43 = 0u;
  v44 = 1uLL;
  v45 = 0uLL;
  v47 = 0u;
  v48 = 1;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  re::DynamicArray<re::GeomDeformer>::add((v3 + 128), &v11);
  re::GeomDeformer::~GeomDeformer(&v11);
  v11 = 0xAE076461BA42A276;
  v12 = "DefaultRenormalizationDeformer";
  v13 = 0xABCEC87F22A13454;
  v14 = "Renormalization";
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v18 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v23 = 0u;
  v26 = 0u;
  v22 = 0u;
  DWORD2(v23) = 1;
  v24 = 0;
  v25 = 0;
  *&v26 = 0;
  v28 = 1;
  v27 = 0u;
  DWORD2(v26) = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v36 = 0;
  v33 = 0u;
  v34 = 1u;
  v35 = 0uLL;
  v38 = 1;
  v37 = 0u;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v46 = 0;
  v43 = 0u;
  v44 = 1u;
  v45 = 0uLL;
  v48 = 1;
  v47 = 0u;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  re::DynamicArray<re::GeomDeformer>::add((v5 + 128), &v11);
  re::GeomDeformer::~GeomDeformer(&v11);
}

void re::GeomDeformer::~GeomDeformer(re::GeomDeformer *this)
{
  re::BucketArray<re::Matrix4x4<float>,8ul>::deinit(this + 392);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 392);
  re::BucketArray<re::StringID,8ul>::deinit(this + 336);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 336);
  re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::deinit(this + 280);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 280);
  re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::deinit(this + 224);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 224);
  re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::deinit(this + 168);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 168);
  re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::deinit(this + 112);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 112);
  re::DynamicArray<re::GeomDeformer::Affector>::deinit(this + 72);
  re::DynamicArray<re::GeomDeformer::Attribute>::deinit(this + 32);
  re::StringID::destroyString((this + 16));
  re::StringID::destroyString(this);
}

uint64_t re::USDImportContext::setSkeletonReference(re::USDImportContext *this, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v7[0] = *(*(this + 106) + 8 * *(this + 104) - 8);
  v4 = re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](this + 56, a2);
  re::DynamicArray<unsigned long>::add((v4 + 376), v7);
  v5 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](this + 624, v7[0]);
  re::DynamicArray<unsigned long>::resize(v5 + 328, 1uLL);
  result = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](this + 624, v7[0]);
  if (!*(result + 344))
  {
    v7[1] = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v8 = 136315906;
    v9 = "operator[]";
    v10 = 1024;
    v11 = 789;
    v12 = 2048;
    v13 = 0;
    v14 = 2048;
    v15 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  **(result + 360) = a2;
  return result;
}

uint64_t re::USDImportContext::setSkeletalAnimationReference(re::USDImportContext *this, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v7[0] = *(*(this + 106) + 8 * *(this + 104) - 8);
  v4 = re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::operator[](this + 160, a2);
  re::DynamicArray<unsigned long>::add((v4 + 240), v7);
  v5 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](this + 624, v7[0]);
  re::DynamicArray<unsigned long>::resize(v5 + 368, 1uLL);
  result = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](this + 624, v7[0]);
  if (!*(result + 384))
  {
    v7[1] = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v8 = 136315906;
    v9 = "operator[]";
    v10 = 1024;
    v11 = 789;
    v12 = 2048;
    v13 = 0;
    v14 = 2048;
    v15 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  **(result + 400) = a2;
  return result;
}

void re::USDImportContext::setSpatialAudioData(uint64_t a1, uint64_t *a2)
{
  v3 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, *(*(a1 + 848) + 8 * *(a1 + 832) - 8));
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(v3 + 936) = v4;
  v6 = *(v3 + 944);
  *(v3 + 944) = v5;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void *re::USDImportContext::setAdditionalAnimation(re::USDImportContext *this, re::Timeline *a2)
{
  v4 = a2;
  v2 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](this + 624, *(*(this + 106) + 8 * *(this + 104) - 8));
  return re::DynamicArray<re::TransitionCondition *>::add((v2 + 952), &v4);
}

void *re::USDImportContext::setSkeletonEntity(re::USDImportContext *this, unint64_t a2, unint64_t a3)
{
  *(re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](this + 56, a3) + 416) = a2;
  v6 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](this + 624, a2);
  result = re::BucketArray<unsigned long,4ul>::addUninitialized(v6 + 104);
  *result = a3;
  return result;
}

uint64_t re::USDImportContext::addBlendShape(uint64_t a1, StringID *a2, uint64_t *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = re::StringID::StringID(&v17, a2);
  v19 = *a3;
  v7 = *(a3 + 1);
  *a3 = 0;
  a3[1] = &str_67;
  v20 = v7;
  v21 = a3[3];
  v22 = *(a3 + 2);
  *(a3 + 1) = 0u;
  *(a3 + 2) = 0u;
  v23 = a3[6];
  a3[6] = 0;
  v24 = *(a3 + 7);
  *(a3 + 7) = 0u;
  v8 = a3[10];
  v25 = a3[9];
  v26 = v8;
  a3[9] = 0;
  a3[10] = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0u;
  v9 = *(a1 + 304);
  v10 = *(a1 + 272);
  v30 = 0;
  v31 = -1;
  if (v9 + 1 > 8 * v10)
  {
    v6 = re::BucketArray<re::USDImportContextBlendShapeData,8ul>::setBucketsCapacity((a1 + 264), (v9 + 8) >> 3);
    v10 = *(a1 + 272);
  }

  if (v10 <= v9 >> 3)
  {
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    v36 = 858;
    v37 = 2048;
    v38 = v9 >> 3;
    v39 = 2048;
    v40 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 280))
  {
    v11 = a1 + 288;
  }

  else
  {
    v11 = *(a1 + 296);
  }

  v12 = *(v11 + 8 * (v9 >> 3));
  ++*(a1 + 304);
  ++*(a1 + 312);
  v13 = v12 + 152 * (v9 & 7);
  v14 = v17;
  *v13 = *v13 & 0xFFFFFFFFFFFFFFFELL | v17 & 1;
  *v13 = v17 & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  *(v13 + 8) = v18;
  v17 = 0;
  v18 = &str_67;
  v15 = v19;
  *(v13 + 16) = *(v13 + 16) & 0xFFFFFFFFFFFFFFFELL | v19 & 1;
  *(v13 + 16) = v19 & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
  *(v13 + 24) = v20;
  v19 = 0;
  *&v20 = &str_67;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = *(&v20 + 1);
  *(&v20 + 1) = 0;
  *(v13 + 40) = v21;
  v21 = 0;
  *(v13 + 48) = v22;
  *&v22 = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  *(v13 + 56) = *(&v22 + 1);
  *(&v22 + 1) = 0;
  *(v13 + 64) = v23;
  v23 = 0;
  *(v13 + 72) = v24;
  *&v24 = 0;
  *(v13 + 80) = 0;
  *(v13 + 88) = 0;
  *(v13 + 96) = 0;
  *(v13 + 80) = *(&v24 + 1);
  *(&v24 + 1) = 0;
  *(v13 + 88) = v25;
  v25 = 0;
  *(v13 + 96) = v26;
  v26 = 0;
  *(v13 + 136) = 0;
  *(v13 + 128) = 0;
  *(v13 + 112) = 0;
  *(v13 + 120) = 0;
  *(v13 + 104) = 0;
  *(v13 + 104) = v27;
  *&v27 = 0;
  *(v13 + 112) = *(&v27 + 1);
  *(&v27 + 1) = 0;
  *(v13 + 120) = v28;
  v28 = 0;
  *(v13 + 136) = v30;
  v30 = 0;
  ++v29;
  ++*(v13 + 128);
  *(v13 + 144) = v31;
  if (v19)
  {
    if (v19)
    {
    }
  }

  v19 = 0;
  *&v20 = &str_67;
  if (v17)
  {
    if (v17)
    {
    }
  }

  v17 = *(a1 + 304) - 1;
  return re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 320, a2, &v17);
}

uint64_t re::USDImportContext::addSkeleton(uint64_t a1, StringID *a2, uint64_t *a3)
{
  v80 = *MEMORY[0x1E69E9840];
  re::StringID::StringID(&v29, a2);
  v31 = *a3;
  v6 = *(a3 + 1);
  *a3 = 0;
  a3[1] = &str_67;
  v32 = v6;
  v33 = a3[3];
  v34 = *(a3 + 2);
  *(a3 + 1) = 0u;
  *(a3 + 2) = 0u;
  v35 = a3[6];
  a3[6] = 0;
  v36 = *(a3 + 7);
  *(a3 + 7) = 0u;
  v37 = a3[9];
  a3[9] = 0;
  v38 = *(a3 + 5);
  *(a3 + 5) = 0u;
  v39 = a3[12];
  a3[12] = 0;
  v40 = *(a3 + 13);
  *(a3 + 13) = 0u;
  v41 = *(a3 + 15);
  *(a3 + 15) = 0u;
  v42 = *(a3 + 17);
  *(a3 + 17) = xmmword_1E3058120;
  v43 = 1;
  re::TimelineAssetData::TimelineAssetData(v44, 34);
  v49 = 256;
  v50 = 1023969417;
  v53 = 0;
  memset(v51, 0, sizeof(v51));
  v52 = 0;
  v44[0] = &unk_1F5CC0838;
  v58 = 0;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0;
  v59 = 257;
  v60 = 1;
  v61 = 0;
  v62 = 0u;
  v63 = 0;
  v7 = *(a1 + 96);
  v8 = *(a1 + 64);
  v64 = 0;
  v65 = -1;
  if (v7 + 1 > 4 * v8)
  {
    re::BucketArray<re::USDImportContextSkeletonData,4ul>::setBucketsCapacity((a1 + 56), (v7 + 4) >> 2);
    v8 = *(a1 + 64);
  }

  if (v8 <= v7 >> 2)
  {
    v66 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v67 = 136315906;
    v68 = "operator[]";
    v69 = 1024;
    v70 = 858;
    v71 = 2048;
    v72 = v7 >> 2;
    v73 = 2048;
    v74 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 72))
  {
    v9 = a1 + 80;
  }

  else
  {
    v9 = *(a1 + 88);
  }

  v10 = *(v9 + 8 * (v7 >> 2));
  ++*(a1 + 96);
  ++*(a1 + 104);
  v11 = v10 + 424 * (v7 & 3);
  LOBYTE(v10) = v29;
  *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | v29 & 1;
  *v11 = v29 & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  *(v11 + 8) = v30;
  v29 = 0;
  v30 = &str_67;
  LOBYTE(v10) = v31;
  *(v11 + 16) = *(v11 + 16) & 0xFFFFFFFFFFFFFFFELL | v31 & 1;
  *(v11 + 16) = v31 & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  *(v11 + 24) = v32;
  v31 = 0;
  *&v32 = &str_67;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 32) = *(&v32 + 1);
  *(&v32 + 1) = 0;
  *(v11 + 40) = v33;
  v33 = 0;
  v12 = *(v11 + 48);
  *(v11 + 48) = v34;
  *&v34 = v12;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 56) = *(&v34 + 1);
  *(&v34 + 1) = 0;
  *(v11 + 64) = v35;
  v35 = 0;
  v13 = *(v11 + 72);
  *(v11 + 72) = v36;
  *&v36 = v13;
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0;
  *(v11 + 80) = *(&v36 + 1);
  *(&v36 + 1) = 0;
  *(v11 + 88) = v37;
  v37 = 0;
  v14 = *(v11 + 96);
  *(v11 + 96) = v38;
  *&v38 = v14;
  *(v11 + 104) = 0;
  *(v11 + 112) = 0;
  *(v11 + 120) = 0;
  *(v11 + 104) = *(&v38 + 1);
  *(&v38 + 1) = 0;
  *(v11 + 112) = v39;
  v39 = 0;
  v15 = *(v11 + 120);
  *(v11 + 120) = v40;
  *&v40 = v15;
  *(v11 + 160) = 0;
  *(v11 + 128) = 0u;
  *(v11 + 144) = 0u;
  *(v11 + 164) = 0x7FFFFFFFLL;
  *(v11 + 128) = *(&v40 + 1);
  *(&v40 + 1) = 0;
  v16 = *(v11 + 136);
  *(v11 + 136) = v41;
  *&v41 = v16;
  v17 = *(v11 + 144);
  *(v11 + 144) = *(&v41 + 1);
  *(&v41 + 1) = v17;
  *(v11 + 152) = v42;
  LODWORD(v42) = 0;
  LODWORD(v17) = *(v11 + 156);
  *(v11 + 156) = DWORD1(v42);
  DWORD1(v42) = v17;
  LODWORD(v17) = *(v11 + 160);
  *(v11 + 160) = DWORD2(v42);
  DWORD2(v42) = v17;
  LODWORD(v17) = *(v11 + 164);
  *(v11 + 164) = HIDWORD(v42);
  HIDWORD(v42) = v17;
  ++*(v11 + 168);
  v18 = re::SampledAnimationAssetData<re::SkeletalPoseAssetData>::SampledAnimationAssetData(v11 + 176, v44);
  *(v11 + 176) = &unk_1F5CC0838;
  *(v11 + 312) = 0;
  *(v11 + 320) = 0;
  *(v11 + 304) = 0;
  *(v11 + 312) = *(&v54 + 1);
  *(&v54 + 1) = 0;
  v19 = *(v11 + 304);
  *(v11 + 304) = 0;
  *(v11 + 304) = v54;
  *&v54 = v19;
  v20 = *(v11 + 320);
  *(v11 + 320) = v55;
  *&v55 = v20;
  *(v11 + 360) = 0;
  *(v11 + 336) = 0;
  *(v11 + 344) = 0;
  *(v11 + 328) = 0;
  *(v11 + 352) = 0;
  *(v11 + 328) = *(&v55 + 1);
  *(&v55 + 1) = 0;
  *(v11 + 336) = v56;
  *&v56 = 0;
  v21 = *(v11 + 344);
  *(v11 + 344) = *(&v56 + 1);
  *(&v56 + 1) = v21;
  v22 = *(v11 + 360);
  *(v11 + 360) = v58;
  v58 = v22;
  ++v57;
  ++*(v11 + 352);
  LOWORD(v22) = v59;
  *(v11 + 370) = v60;
  *(v11 + 368) = v22;
  *(v11 + 408) = 0;
  *(v11 + 384) = 0;
  *(v11 + 392) = 0;
  *(v11 + 376) = 0;
  *(v11 + 400) = 0;
  *(v11 + 376) = v61;
  v61 = 0;
  *(v11 + 384) = v62;
  *&v62 = 0;
  v23 = *(v11 + 392);
  *(v11 + 392) = *(&v62 + 1);
  *(&v62 + 1) = v23;
  v24 = *(v11 + 408);
  *(v11 + 408) = v64;
  v64 = v24;
  ++v63;
  ++*(v11 + 400);
  *(v11 + 416) = v65;
  if (v61)
  {
    if (v24)
    {
      (*(*v61 + 40))(v18);
    }

    v64 = 0;
    v62 = 0uLL;
    v61 = 0;
    ++v63;
  }

  re::DynamicArray<re::StringID>::deinit(&v55 + 8);
  re::AssetHandle::~AssetHandle(&v54);
  v44[0] = &unk_1F5CC08A8;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(v51 + 8);
  v44[0] = &unk_1F5CC3608;
  v25 = v47;
  if (v47)
  {
    if (BYTE8(v47))
    {
      v25 = (*(*v47 + 40))();
    }

    v48 = 0u;
    v47 = 0u;
  }

  if (v45)
  {
    if (v45)
    {
    }
  }

  v45 = 0;
  v46 = &str_67;
  v26.n128_f64[0] = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v40 + 1);
  if (*(&v38 + 1))
  {
    if (v39)
    {
      (*(**(&v38 + 1) + 40))(v26.n128_f64[0]);
      v39 = 0;
      *&v40 = 0;
    }

    *(&v38 + 1) = 0;
  }

  if (*(&v36 + 1))
  {
    if (v37)
    {
      (*(**(&v36 + 1) + 40))(v26);
      v37 = 0;
      *&v38 = 0;
    }

    *(&v36 + 1) = 0;
  }

  if (*(&v34 + 1))
  {
    if (v35)
    {
      (*(**(&v34 + 1) + 40))(v26);
      v35 = 0;
      *&v36 = 0;
    }

    *(&v34 + 1) = 0;
  }

  v27 = re::FixedArray<re::StringID>::deinit(&v32 + 1);
  if (v31)
  {
    if (v31)
    {
    }
  }

  v31 = 0;
  *&v32 = &str_67;
  if (v29)
  {
    if (v29)
    {
    }
  }

  v29 = *(a1 + 96) - 1;
  return re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 112, a2, &v29);
}

void re::USDImportContext::addSkeletalAnimation(uint64_t a1, StringID *a2, uint64_t *a3, uint64_t a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a4 + 80);
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  if (v9 > v8)
  {
    v9 = *(a4 + 80);
  }

  *(a1 + 8) = v9;
  v11 = *(a4 + 84);
  if (v10 < v11)
  {
    v10 = *(a4 + 84);
  }

  *(a1 + 12) = v10;
  v12 = v8;
  *(a4 + 80) = 0;
  *(a4 + 84) = v11 - v8;
  re::StringID::operator=((a4 + 24), a3);
  v26 = *(a1 + 200);
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 216, a2, &v26);
  var1 = a2->var1;
  v26 = *&a2->var0;
  v27 = var1;
  *&a2->var0 = 0;
  a2->var1 = &str_67;
  v14 = a3[1];
  v28 = *a3;
  v29 = v14;
  *a3 = 0;
  a3[1] = &str_67;
  re::SampledAnimationAssetData<re::SkeletalPoseAssetData>::SampledAnimationAssetData(v30, a4);
  v15 = *(a4 + 136);
  v36 = *(a4 + 128);
  v37 = v15;
  v30[0] = &unk_1F5CC0838;
  v16 = *(a4 + 144);
  v17 = *(a4 + 160);
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  v38 = v16;
  v39 = v17;
  *(a4 + 160) = 0u;
  v41 = *(a4 + 184);
  *(a4 + 184) = 0;
  ++*(a4 + 176);
  v40 = 1;
  LOWORD(v15) = *(a4 + 192);
  v43 = *(a4 + 194);
  v42 = v15;
  v44 = v12;
  v48 = 0;
  v47 = 0;
  v18 = *(a1 + 200);
  v46 = 0;
  v19 = *(a1 + 168);
  v45 = 0u;
  if (v18 + 1 > 8 * v19)
  {
    re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::setBucketsCapacity((a1 + 160), (v18 + 8) >> 3);
    v19 = *(a1 + 168);
  }

  if (v19 <= v18 >> 3)
  {
    v49 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    v53 = 858;
    v54 = 2048;
    v55 = v18 >> 3;
    v56 = 2048;
    v57 = v19;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 176))
  {
    v20 = a1 + 184;
  }

  else
  {
    v20 = *(a1 + 192);
  }

  v21 = *(v20 + 8 * (v18 >> 3));
  ++*(a1 + 200);
  ++*(a1 + 208);
  v22 = v21 + 280 * (v18 & 7);
  LOBYTE(v21) = v26;
  *v22 = *v22 & 0xFFFFFFFFFFFFFFFELL | v26 & 1;
  *v22 = v26 & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
  *(v22 + 8) = v27;
  v26 = 0;
  v27 = &str_67;
  LOBYTE(v21) = v28;
  *(v22 + 16) = *(v22 + 16) & 0xFFFFFFFFFFFFFFFELL | v28 & 1;
  *(v22 + 16) = v28 & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
  *(v22 + 24) = v29;
  v28 = 0;
  v29 = &str_67;
  re::SampledAnimationAssetData<re::SkeletalPoseAssetData>::SampledAnimationAssetData(v22 + 32, v30);
  *(v22 + 32) = &unk_1F5CC0838;
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;
  *(v22 + 160) = 0;
  *(v22 + 168) = v37;
  v37 = 0;
  v23 = *(v22 + 160);
  *(v22 + 160) = 0;
  *(v22 + 160) = v36;
  v36 = v23;
  v24 = *(v22 + 176);
  *(v22 + 176) = v38;
  *&v38 = v24;
  *(v22 + 216) = 0;
  *(v22 + 192) = 0;
  *(v22 + 200) = 0;
  *(v22 + 184) = 0;
  *(v22 + 208) = 0;
  *(v22 + 184) = *(&v38 + 1);
  *(&v38 + 1) = 0;
  *(v22 + 192) = v39;
  *&v39 = 0;
  *(v22 + 200) = *(&v39 + 1);
  *(&v39 + 1) = 0;
  *(v22 + 216) = v41;
  v41 = 0;
  ++v40;
  ++*(v22 + 208);
  LOWORD(v24) = v42;
  *(v22 + 226) = v43;
  *(v22 + 224) = v24;
  *(v22 + 232) = v44;
  *(v22 + 272) = 0;
  *(v22 + 248) = 0;
  *(v22 + 256) = 0;
  *(v22 + 240) = 0;
  *(v22 + 264) = 0;
  *(v22 + 240) = v45;
  *&v45 = 0;
  *(v22 + 248) = *(&v45 + 1);
  *(&v45 + 1) = 0;
  *(v22 + 256) = v46;
  v46 = 0;
  *(v22 + 272) = v48;
  v48 = 0;
  ++v47;
  ++*(v22 + 264);
  re::DynamicArray<re::StringID>::deinit(&v38 + 8);
  re::AssetHandle::~AssetHandle(&v36);
  v30[0] = &unk_1F5CC08A8;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(&v35);
  v30[0] = &unk_1F5CC3608;
  v25 = v33;
  if (v33)
  {
    if (BYTE8(v33))
    {
      v25 = (*(*v33 + 40))();
    }

    v34 = 0u;
    v33 = 0u;
  }

  if (v31)
  {
    if (v31)
    {
    }
  }

  v31 = 0;
  v32 = &str_67;
  if (v28)
  {
    if (v28)
    {
    }
  }

  v28 = 0;
  v29 = &str_67;
  if (v26)
  {
    if (v26)
    {
    }
  }
}

double re::USDImportContext::addPhysicsCollider(uint64_t a1, StringID *a2, uint64_t a3, _OWORD *a4, int a5, char a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    *v17 = 1;
    re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 472, a2, v17);
  }

  *v17 = *(a1 + 408);
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 424, a2, v17);
  v11 = *&a2->var0;
  var1 = a2->var1;
  *&a2->var0 = 0;
  a2->var1 = &str_67;
  v13 = a4[1];
  *&v17[8] = *a4;
  *&v17[24] = v13;
  v14 = re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::addUninitialized(a1 + 368);
  *v14 = v11;
  *(v14 + 8) = var1;
  *(v14 + 16) = a3;
  result = *v17;
  v16 = *&v17[16];
  *(v14 + 24) = *v17;
  *(v14 + 40) = v16;
  *(v14 + 56) = *&v17[32];
  *(v14 + 64) = a6;
  return result;
}

double re::USDImportContext::addPhysicsRigidBody(uint64_t a1, StringID *a2, __int128 *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  *&v13 = *(a1 + 560);
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 576, a2, &v13);
  v6 = *&a2->var0;
  var1 = a2->var1;
  *&a2->var0 = 0;
  a2->var1 = &str_67;
  v8 = a3[1];
  v13 = *a3;
  v14 = v8;
  v15 = a3[2];
  LODWORD(v16) = *(a3 + 12);
  v9 = re::BucketArray<re::USDImportContextPhysicsRigidBodyData,8ul>::addUninitialized(a1 + 520);
  *v9 = v6;
  *(v9 + 8) = var1;
  v10 = v14;
  *(v9 + 16) = v13;
  *(v9 + 32) = v10;
  result = *&v15;
  v12 = v16;
  *(v9 + 48) = v15;
  *(v9 + 64) = v12;
  return result;
}

uint64_t re::BucketArray<re::USDImportContextBlendShapeData,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
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

  return *(v3 + 8 * (a2 >> 3)) + 152 * (a2 & 7);
}

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

  return *(v3 + 8 * (a2 >> 3)) + 152 * (a2 & 7);
}

uint64_t re::USDImportContext::blendShapeIndex@<X0>(re::USDImportContext *this@<X0>, const re::StringID *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 320, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v8);
  if (v9 == 0x7FFFFFFF)
  {
    v7 = 0;
  }

  else
  {
    *(a3 + 8) = *(*(this + 42) + 32 * v9 + 24);
    v7 = 1;
  }

  *a3 = v7;
  return result;
}

uint64_t re::USDImportContext::skeletonIndex@<X0>(re::USDImportContext *this@<X0>, const re::StringID *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 112, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v8);
  if (v9 == 0x7FFFFFFF)
  {
    v7 = 0;
  }

  else
  {
    *(a3 + 8) = *(*(this + 16) + 32 * v9 + 24);
    v7 = 1;
  }

  *a3 = v7;
  return result;
}

uint64_t re::USDImportContext::skeletalAnimationIndex@<X0>(re::USDImportContext *this@<X0>, const re::StringID *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 216, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v8);
  if (v9 == 0x7FFFFFFF)
  {
    v7 = 0;
  }

  else
  {
    *(a3 + 8) = *(*(this + 29) + 32 * v9 + 24);
    v7 = 1;
  }

  *a3 = v7;
  return result;
}

uint64_t re::USDImportContext::getPhysicsColliderData(re::USDImportContext *this, unint64_t a2)
{
  v3 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](this + 624, a2);
  v4 = 0xBF58476D1CE4E5B9 * ((*(v3 + 40) >> 31) ^ (*(v3 + 40) >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 424, (v3 + 40), (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31), v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::operator[](this + 368, *(*(this + 55) + 32 * v7 + 24)) + 16);
  }
}

uint64_t re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
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

  return *(v3 + 8 * (a2 >> 3)) + 80 * (a2 & 7);
}

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

  return *(v3 + 8 * (a2 >> 3)) + 80 * (a2 & 7);
}

uint64_t re::USDImportContext::getPhysicsColliderPose(re::USDImportContext *this, unint64_t a2)
{
  v3 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](this + 624, a2);
  v4 = 0xBF58476D1CE4E5B9 * ((*(v3 + 40) >> 31) ^ (*(v3 + 40) >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 424, (v3 + 40), (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31), v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::operator[](this + 368, *(*(this + 55) + 32 * v7 + 24)) + 32;
  }
}

uint64_t re::USDImportContext::getCollidesWithEnvironment(re::USDImportContext *this, unint64_t a2)
{
  v3 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](this + 624, a2);
  v4 = 0xBF58476D1CE4E5B9 * ((*(v3 + 40) >> 31) ^ (*(v3 + 40) >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 424, (v3 + 40), (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31), v7);
  if (v8 == 0x7FFFFFFF)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::operator[](this + 368, *(*(this + 55) + 32 * v8 + 24)) + 64);
  }

  return v5 & 1;
}

BOOL re::USDImportContext::isTaggedAsSceneGroundPlane(re::USDImportContext *this, unint64_t a2)
{
  v3 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](this + 624, a2);
  v4 = 0xBF58476D1CE4E5B9 * ((*(v3 + 40) >> 31) ^ (*(v3 + 40) >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 472, (v3 + 40), (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31), v6);
  return v7 != 0x7FFFFFFF;
}

uint64_t re::USDImportContext::getPhysicsRigidBodyProperties(re::USDImportContext *this, unint64_t a2)
{
  v3 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](this + 624, a2);
  v4 = 0xBF58476D1CE4E5B9 * ((*(v3 + 40) >> 31) ^ (*(v3 + 40) >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 576, (v3 + 40), (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31), v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::operator[](this + 520, *(*(this + 74) + 32 * v7 + 24)) + 16;
  }
}

uint64_t re::USDImportContext::meshNodeItemIndex@<X0>(re::USDImportContext *this@<X0>, const re::StringID *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 856, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v8);
  if (v9 == 0x7FFFFFFF)
  {
    v7 = 0;
  }

  else
  {
    *(a3 + 8) = *(*(this + 109) + 32 * v9 + 24);
    v7 = 1;
  }

  *a3 = v7;
  return result;
}

uint64_t re::BucketArray<re::USDImportContextBlendShapeData,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::USDImportContextBlendShapeData,8ul>::operator[](a1, i);
      re::DynamicArray<unsigned long>::deinit((v4 + 13));
      re::FixedArray<CoreIKTransform>::deinit(v4 + 10);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 7);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 4);
      re::StringID::destroyString((v4 + 2));
      re::StringID::destroyString(v4);
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

void *re::BucketArray<re::USDImportContextSkeletonData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::USDImportContextSkeletonData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::USDImportContextSkeletonData,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](a1, i);
      re::DynamicArray<unsigned long>::deinit((v4 + 47));
      re::DynamicArray<re::StringID>::deinit((v4 + 41));
      re::AssetHandle::~AssetHandle((v4 + 38));
      v4[22] = &unk_1F5CC08A8;
      re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((v4 + 33));
      v4[22] = &unk_1F5CC3608;
      re::DynamicString::deinit((v4 + 27));
      re::StringID::destroyString((v4 + 25));
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v4 + 16);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 13);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 10);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 7);
      re::FixedArray<re::StringID>::deinit(v4 + 4);
      re::StringID::destroyString((v4 + 2));
      re::StringID::destroyString(v4);
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

void *re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::operator[](a1, i);
      re::DynamicArray<unsigned long>::deinit((v4 + 30));
      re::DynamicArray<re::StringID>::deinit((v4 + 23));
      re::AssetHandle::~AssetHandle((v4 + 20));
      v4[4] = &unk_1F5CC08A8;
      re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((v4 + 15));
      v4[4] = &unk_1F5CC3608;
      re::DynamicString::deinit((v4 + 9));
      re::StringID::destroyString((v4 + 7));
      re::StringID::destroyString((v4 + 2));
      re::StringID::destroyString(v4);
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

double re::USDImportContext::generatePerMeshCompileOptions@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 52) = 0x7FFFFFFF;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *(a3 + 100) = 0x7FFFFFFFLL;
  *a3 = *a2;
  *(a3 + 7) = *(a2 + 7);
  *(a3 + 16) = 0u;
  *(a3 + 64) = 0u;
  v5 = a3 + 64;
  re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a3 + 16), a2 + 16);
  v12 = 16842752;
  v13 = 1;
  v14 = 0;
  v15 = 0;
  v16 = 65793;
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  DWORD1(v18) = 0x7FFFFFFF;
  if (*(a1 + 664))
  {
    v6 = 0;
    do
    {
      v7 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, v6);
      if ((re::MeshCompileOptions::operator==((v7 + 168), &v12) & 1) == 0)
      {
        v8 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, v6);
        if ((re::MeshCompileOptions::operator==((v8 + 168), a2) & 1) == 0)
        {
          v9 = *(re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, v6) + 32);
          v10 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a1 + 624, v6);
          re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(v5, v9, (v10 + 168));
        }
      }

      ++v6;
    }

    while (*(a1 + 664) > v6);
  }

  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v17);
}

uint64_t re::MeshCompileOptions::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[5] != a2[5] || a1[6] != a2[6] || a1[7] != a2[7] || a1[9] != a2[9] || a1[8] != a2[8] || !re::MeshModelIOLoadOptions::operator==(a1 + 10, a2 + 10))
  {
    return 0;
  }

  return re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator==((a1 + 16), (a2 + 16));
}

void *re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(uint64_t a1, char *a2, void *a3)
{
  v9 = 0;
  v10 = a2;
  v7 = 0;
  v8 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v10, v5, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::MeshCompileOptions const&>(a1, &v7, &v10, a3);
  }

  else
  {
    return (*(a1 + 16) + 112 * HIDWORD(v8) + 40);
  }
}

void re::USDImportContext::PhysicsColliderTable::~PhysicsColliderTable(re::USDImportContext::PhysicsColliderTable *this)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 13);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 7);
  re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::deinit(this);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this);
}

void *re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

re *re::internal::destroyPersistent<re::CollisionShapeData>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::operator[](a1, i);
      re::StringID::destroyString(v4);
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

void *re::BucketArray<re::USDImportContextPhysicsRigidBodyData,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::USDImportContextPhysicsRigidBodyData,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void re::USDImportContext::NodeStackItem::~NodeStackItem(re::USDImportContext::NodeStackItem *this)
{
  re::DynamicArray<re::GeomDeformer>::deinit(this + 1024);
  re::FixedArray<re::VertexCacheAnimationData::FrameData>::deinit(this + 125);
  re::DynamicArray<unsigned long>::deinit(this + 952);
  v2 = *(this + 118);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  re::BucketArray<unsigned long,8ul>::deinit(this + 880);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 880);
  re::AssetHandle::~AssetHandle((this + 848));
  re::DynamicArray<re::AssetHandle>::deinit(this + 808);
  re::DynamicString::deinit((this + 776));
  re::DynamicString::deinit((this + 744));
  re::DynamicString::deinit((this + 712));
  re::DynamicString::deinit((this + 648));
  re::DynamicString::deinit((this + 616));
  *(this + 60) = &unk_1F5CC07F8;
  re::DynamicArray<unsigned long>::deinit(this + 568);
  *(this + 60) = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 520));
  re::StringID::destroyString((this + 504));
  re::FixedArray<CoreIKTransform>::deinit(this + 51);
  re::DynamicArray<unsigned long>::deinit(this + 368);
  re::DynamicArray<unsigned long>::deinit(this + 328);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 288);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 23);
  re::BucketArray<unsigned long,4ul>::deinit(this + 104);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 104);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 7);
  re::StringID::destroyString((this + 40));
  re::StringID::destroyString((this + 24));
  re::StringID::destroyString((this + 8));
}

void *re::FixedArray<re::VertexCacheAnimationData::FrameData>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = v2 << 6;
      v5 = (result[2] + 32);
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v5);
        v5 += 8;
        v4 -= 64;
      }

      while (v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::BucketArray<unsigned long,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<unsigned long,4ul>::operator[](a1, i);
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

uint64_t re::BucketArray<unsigned long,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  if (*(a1 + 8) <= a2 >> 2)
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

  return *(v3 + 8 * (a2 >> 2)) + 8 * (a2 & 3);
}

uint64_t re::BucketArray<re::Matrix4x4<float>,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1, i);
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

unint64_t re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v3 + 8 * (a2 >> 3)) + ((a2 & 7) << 6);
}

{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
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

  return *(v3 + 8 * (a2 >> 3)) + ((a2 & 7) << 6);
}

uint64_t re::BucketArray<re::StringID,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](a1, i);
      re::StringID::destroyString(v4);
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

uint64_t re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::operator[](a1, i);
      re::StringID::destroyString((v4 + 16));
      re::StringID::destroyString(v4);
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

uint64_t re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a1, i);
      re::FixedArray<CoreIKTransform>::deinit(v4);
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

uint64_t re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v3 + 8 * (a2 >> 3)) + 24 * (a2 & 7);
}

uint64_t re::DynamicArray<re::GeomDeformer::Affector>::deinit(uint64_t a1)
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
        v5 = 40 * v4;
        do
        {
          re::DynamicArray<re::GeomDeformer::Attribute>::deinit(v3);
          v3 += 40;
          v5 -= 40;
        }

        while (v5);
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

uint64_t re::DynamicArray<re::GeomDeformer::Attribute>::deinit(uint64_t a1)
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
        v5 = 40 * v4;
        v6 = (v3 + 8);
        do
        {
          re::StringID::destroyString(v6);
          v6 = (v6 + 40);
          v5 -= 40;
        }

        while (v5);
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

uint64_t re::SampledAnimationAssetData<re::SkeletalPoseAssetData>::SampledAnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *(a1 + 72) = *(a2 + 72);
  *a1 = &unk_1F5CC08A8;
  v5 = *(a2 + 73);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 73) = v5;
  re::DynamicArray<re::SkeletalPoseAssetData>::DynamicArray(a1 + 88, (a2 + 88));
  return a1;
}

double re::SampledAnimationAssetData<re::SkeletalPoseAssetData>::SampledAnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v2 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v2;
  v3 = *(a2 + 24);
  *(a1 + 24) = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  *(a1 + 24) = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = &str_67;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v6 = *(a2 + 56);
  *(a2 + 64) = 0;
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a2 + 48) = v8;
  *(a2 + 56) = v7;
  *(a1 + 72) = *(a2 + 72);
  *a1 = &unk_1F5CC08A8;
  v9 = *(a2 + 73);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = 0;
  *(a1 + 73) = v9;
  *(a1 + 120) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v10 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v10;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v11 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v11;
  v12 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = v12;
  ++*(a2 + 112);
  ++*(a1 + 112);
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28) != *(a2 + 28))
  {
    return 0;
  }

  v2 = *(a2 + 32);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = *(a2 + 16);
  while (1)
  {
    if ((*(v5 + 56 * v4) & 0x80000000) != 0)
    {
      if (!*a1)
      {
        break;
      }

      v6 = *(*(a1 + 8) + 4 * (*(v5 + 56 * v4 + 48) % *(a1 + 24)));
      if (v6 == 0x7FFFFFFF)
      {
        break;
      }

      v7 = *(a1 + 16);
      while (!re::DynamicString::operator==(v7 + 56 * v6 + 8, v5 + 56 * v4 + 8))
      {
        v8 = *(v7 + 56 * v6);
        v6 = v8 & 0x7FFFFFFF;
        if ((v8 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          return 0;
        }
      }

      v9 = v7 + 56 * v6;
      v12 = *(v9 + 40);
      v10 = v9 + 40;
      v11 = v12;
      v13 = v5 + 56 * v4;
      v15 = *(v13 + 40);
      v14 = v13 + 40;
      if (v11 != v15 || *(v10 + 4) != *(v14 + 4))
      {
        break;
      }
    }

    if (++v4 == v2)
    {
      return 1;
    }
  }

  return 0;
}

double re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 112;
      }

      while (v4 < *(a1 + 8));
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

double re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 14);
    re::DynamicString::deinit((a1 + 2));

    return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v2);
  }

  return result;
}

void *re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 32 * a2)
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
          result = (*(**v3 + 32))(*v3, 34304, 0);
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
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
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

LABEL_24:
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
  }

  return result;
}

uint64_t *re::BucketArray<unsigned long,32ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 32 * a2)
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
        v5 = (*(**v3 + 32))(*v3, 256, 0);
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

uint64_t re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 32 * v3)
  {
    re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::setBucketsCapacity(a1, (v2 + 32) >> 5);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 5)
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

  v5 = *(v4 + 8 * (v2 >> 5));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 1072 * (v2 & 0x1F);
}

uint64_t re::USDImportContext::NodeStackItem::NodeStackItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = *(a1 + 8) & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
  *(a1 + 8) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = &str_67;
  v5 = *(a2 + 24);
  *(a1 + 24) = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
  *(a1 + 24) = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = &str_67;
  v6 = *(a2 + 40);
  *(a1 + 40) = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(a1 + 40) = *(a2 + 40) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = &str_67;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  v7 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v7;
  v8 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v8;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  LODWORD(v8) = *(a1 + 84);
  *(a1 + 84) = *(a2 + 84);
  *(a2 + 84) = v8;
  LODWORD(v8) = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v8;
  LODWORD(v8) = *(a1 + 92);
  *(a1 + 92) = *(a2 + 92);
  *(a2 + 92) = v8;
  *(a1 + 104) = 0;
  v9 = a1 + 104;
  ++*(a1 + 96);
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::DynamicOverflowArray(v46, a1 + 104);
  re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::operator=(v9, a2 + 104);
  re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::operator=(a2 + 104, v46);
  if (v46[0] && (v47 & 1) == 0)
  {
    (*(*v46[0] + 40))();
  }

  v10 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = v10;
  ++*(a1 + 152);
  ++*(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  v11 = *(a2 + 168);
  *(a1 + 175) = *(a2 + 175);
  *(a1 + 168) = v11;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 220) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 184), (a2 + 184));
  v12 = *(a2 + 240);
  v13 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v13;
  *(a1 + 240) = v12;
  *(a1 + 320) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 288) = 0;
  v14 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v14;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  v15 = *(a1 + 304);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 304) = v15;
  v16 = *(a1 + 320);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 320) = v16;
  ++*(a2 + 312);
  ++*(a1 + 312);
  *(a1 + 360) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0;
  v17 = *(a2 + 336);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = v17;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  v18 = *(a1 + 344);
  *(a1 + 344) = *(a2 + 344);
  *(a2 + 344) = v18;
  v19 = *(a1 + 360);
  *(a1 + 360) = *(a2 + 360);
  *(a2 + 360) = v19;
  ++*(a2 + 352);
  ++*(a1 + 352);
  *(a1 + 400) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0;
  v20 = *(a2 + 376);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = v20;
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  v21 = *(a1 + 384);
  *(a1 + 384) = *(a2 + 384);
  *(a2 + 384) = v21;
  v22 = *(a1 + 400);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 400) = v22;
  ++*(a2 + 392);
  ++*(a1 + 392);
  *(a1 + 408) = 0;
  *(a1 + 416) = 0u;
  v23 = *(a2 + 416);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = v23;
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  v24 = *(a1 + 424);
  *(a1 + 424) = *(a2 + 424);
  *(a2 + 424) = v24;
  v25 = *(a2 + 432);
  v26 = *(a2 + 464);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = v26;
  *(a1 + 432) = v25;
  re::SampledAnimationAssetData<re::GenericSRT<float>>::SampledAnimationAssetData(a1 + 480, a2 + 480);
  *(a1 + 480) = &unk_1F5CC0788;
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 616) = *(a2 + 616);
  *(a2 + 616) = 0;
  v27 = *(a1 + 632);
  *(a1 + 632) = *(a2 + 632);
  *(a2 + 632) = v27;
  *(a1 + 640) = *(a2 + 640);
  *(a2 + 640) = 0;
  v28 = *(a1 + 624);
  *(a1 + 624) = *(a2 + 624);
  *(a2 + 624) = v28;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 648) = *(a2 + 648);
  *(a2 + 648) = 0;
  v29 = *(a1 + 664);
  *(a1 + 664) = *(a2 + 664);
  *(a2 + 664) = v29;
  *(a1 + 672) = *(a2 + 672);
  *(a2 + 672) = 0;
  v30 = *(a1 + 656);
  *(a1 + 656) = *(a2 + 656);
  *(a2 + 656) = v30;
  v31 = *(a2 + 696);
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 696) = v31;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 712) = *(a2 + 712);
  *(a2 + 712) = 0;
  v32 = *(a1 + 728);
  *(a1 + 728) = *(a2 + 728);
  *(a2 + 728) = v32;
  *(a1 + 736) = *(a2 + 736);
  *(a2 + 736) = 0;
  v33 = *(a1 + 720);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = v33;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 744) = *(a2 + 744);
  *(a2 + 744) = 0;
  v34 = *(a1 + 760);
  *(a1 + 760) = *(a2 + 760);
  *(a2 + 760) = v34;
  *(a1 + 768) = *(a2 + 768);
  *(a2 + 768) = 0;
  v35 = *(a1 + 752);
  *(a1 + 752) = *(a2 + 752);
  *(a2 + 752) = v35;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 776) = *(a2 + 776);
  *(a2 + 776) = 0;
  v36 = *(a1 + 792);
  *(a1 + 792) = *(a2 + 792);
  *(a2 + 792) = v36;
  *(a1 + 800) = *(a2 + 800);
  *(a2 + 800) = 0;
  v37 = *(a1 + 784);
  *(a1 + 784) = *(a2 + 784);
  *(a2 + 784) = v37;
  *(a1 + 840) = 0;
  *(a1 + 832) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 808) = 0;
  *(a1 + 808) = *(a2 + 808);
  *(a2 + 808) = 0;
  *(a1 + 816) = *(a2 + 816);
  *(a2 + 816) = 0;
  v38 = *(a1 + 824);
  *(a1 + 824) = *(a2 + 824);
  *(a2 + 824) = v38;
  v39 = *(a1 + 840);
  *(a1 + 840) = *(a2 + 840);
  *(a2 + 840) = v39;
  ++*(a2 + 832);
  ++*(a1 + 832);
  *(a1 + 848) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 856) = *(a2 + 856);
  *(a2 + 856) = 0;
  v40 = *(a1 + 848);
  *(a1 + 848) = 0;
  *(a1 + 848) = *(a2 + 848);
  *(a2 + 848) = v40;
  v41 = *(a1 + 864);
  *(a1 + 864) = *(a2 + 864);
  *(a2 + 864) = v41;
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 880) = 0u;
  *(a1 + 896) = 1;
  *(a1 + 928) = 0;
  *(a1 + 912) = 0u;
  *(a1 + 904) = 0;
  re::BucketArray<RESubscriptionHandle,8ul>::swap(a1 + 880, a2 + 880);
  *(a1 + 936) = *(a2 + 936);
  *(a1 + 944) = *(a2 + 944);
  *(a2 + 936) = 0u;
  *(a1 + 984) = 0;
  *(a1 + 976) = 0;
  *(a1 + 968) = 0;
  *(a1 + 960) = 0;
  *(a1 + 952) = 0;
  *(a1 + 952) = *(a2 + 952);
  *(a2 + 952) = 0;
  *(a1 + 960) = *(a2 + 960);
  *(a2 + 960) = 0;
  v42 = *(a1 + 968);
  *(a1 + 968) = *(a2 + 968);
  *(a2 + 968) = v42;
  v43 = *(a1 + 984);
  *(a1 + 984) = *(a2 + 984);
  *(a2 + 984) = v43;
  ++*(a2 + 976);
  ++*(a1 + 976);
  *(a1 + 992) = *(a2 + 992);
  *(a1 + 1000) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1000) = *(a2 + 1000);
  *(a2 + 1000) = 0;
  *(a1 + 1008) = *(a2 + 1008);
  *(a2 + 1008) = 0;
  v44 = *(a1 + 1016);
  *(a1 + 1016) = *(a2 + 1016);
  *(a2 + 1016) = v44;
  re::DynamicArray<re::GeomDeformer>::DynamicArray(a1 + 1024, (a2 + 1024));
  return a1;
}

double re::SampledAnimationAssetData<re::GenericSRT<float>>::SampledAnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v2 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v2;
  v3 = *(a2 + 24);
  *(a1 + 24) = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  *(a1 + 24) = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = &str_67;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v6 = *(a2 + 56);
  *(a2 + 64) = 0;
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a2 + 48) = v8;
  *(a2 + 56) = v7;
  *(a1 + 72) = *(a2 + 72);
  *a1 = &unk_1F5CC07F8;
  v9 = *(a2 + 73);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = 0;
  *(a1 + 73) = v9;
  *(a1 + 120) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v10 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v10;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v11 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v11;
  v12 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = v12;
  ++*(a2 + 112);
  ++*(a1 + 112);
  return result;
}

uint64_t re::DynamicArray<re::GeomDeformer>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::GeomDeformer>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::GeomDeformer>::copy(a1, a2);
  }

  return a1;
}

re::GeomDeformer *re::DynamicArray<re::GeomDeformer>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::GeomDeformer>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::GeomDeformer *,re::GeomDeformer *,re::GeomDeformer *>(&v15, *(a2 + 32), *(a2 + 32) + 448 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = a1[4];
      v12 = 448 * v9;
      v13 = 448 * v4;
      do
      {
        re::StringID::StringID((v11 + v12), (v10 + v12));
        re::StringID::StringID((v11 + v12 + 16), (v10 + v12 + 16));
        re::DynamicArray<re::GeomDeformer::Attribute>::DynamicArray(v11 + v12 + 32, (v10 + v12 + 32));
        re::DynamicArray<re::GeomDeformer::Affector>::DynamicArray(v11 + v12 + 72, (v10 + v12 + 72));
        re::BucketArray<re::FixedArray<int>,8ul>::BucketArray(v11 + v12 + 112, v10 + v12 + 112);
        re::BucketArray<re::FixedArray<float>,8ul>::BucketArray(v11 + v12 + 168, v10 + v12 + 168);
        re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArray(v11 + v12 + 224, v10 + v12 + 224);
        re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArray(v11 + v12 + 280, v10 + v12 + 280);
        re::BucketArray<re::StringID,8ul>::BucketArray(v11 + v12 + 336, v10 + v12 + 336);
        result = re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArray(v11 + v12 + 392, v10 + v12 + 392);
        v10 += 448;
        v13 -= 448;
        v11 += 448;
      }

      while (v12 != v13);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::GeomDeformer *,re::GeomDeformer *,re::GeomDeformer *>(&v14, *(a2 + 32), *(a2 + 32) + 448 * v4, a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      result = (a1[4] + 448 * v4);
      v7 = -448 * v4 + 448 * v6;
      do
      {
        re::GeomDeformer::~GeomDeformer(result);
        result = (v8 + 448);
        v7 -= 448;
      }

      while (v7);
    }
  }

  a1[2] = v4;
  return result;
}

void *re::DynamicArray<re::GeomDeformer>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::GeomDeformer>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x1C0uLL))
        {
          v2 = 448 * a2;
          result = (*(*result + 32))(result, 448 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 448, a2);
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
        v10 = 448 * v9;
        v11 = v7;
        do
        {
          re::GeomDeformer::GeomDeformer(v11, v8);
          re::GeomDeformer::~GeomDeformer(v8);
          v8 += 56;
          v11 += 448;
          v10 -= 448;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::GeomDeformer::GeomDeformer(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a1 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *a1 = *a2 & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
  *(a1 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v5 = a2[2];
  *(a1 + 16) = *(a1 + 16) & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
  *(a1 + 16) = a2[2] & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
  *(a1 + 24) = a2[3];
  a2[2] = 0;
  a2[3] = &str_67;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  v6 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v6;
  a2[4] = 0;
  a2[5] = 0;
  v7 = *(a1 + 48);
  *(a1 + 48) = a2[6];
  a2[6] = v7;
  v8 = *(a1 + 64);
  *(a1 + 64) = a2[8];
  a2[8] = v8;
  ++*(a2 + 14);
  ++*(a1 + 56);
  *(a1 + 104) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  v9 = a2[10];
  *(a1 + 72) = a2[9];
  *(a1 + 80) = v9;
  a2[9] = 0;
  a2[10] = 0;
  v10 = *(a1 + 88);
  *(a1 + 88) = a2[11];
  a2[11] = v10;
  v11 = *(a1 + 104);
  *(a1 + 104) = a2[13];
  a2[13] = v11;
  ++*(a2 + 24);
  ++*(a1 + 96);
  *(a1 + 120) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  re::BucketArray<re::FixedArray<int>,8ul>::swap(a1 + 112, (a2 + 14));
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  re::BucketArray<re::FixedArray<int>,8ul>::swap(a1 + 168, (a2 + 21));
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 1;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  re::BucketArray<re::FixedArray<int>,8ul>::swap(a1 + 224, (a2 + 28));
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 1;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  re::BucketArray<re::FixedArray<int>,8ul>::swap(a1 + 280, (a2 + 35));
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 1;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0;
  *(a1 + 384) = 0;
  re::BucketArray<re::FixedArray<int>,8ul>::swap(a1 + 336, (a2 + 42));
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 1;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0;
  *(a1 + 440) = 0;
  re::BucketArray<re::FixedArray<int>,8ul>::swap(a1 + 392, (a2 + 49));
  return a1;
}

uint64_t re::BucketArray<re::FixedArray<int>,8ul>::swap(uint64_t a1, uint64_t a2)
{
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::DynamicOverflowArray(v6, a1);
  re::DynamicOverflowArray<re::FixedArray<int> *,2ul>::operator=(a1, a2);
  re::DynamicOverflowArray<re::FixedArray<int> *,2ul>::operator=(a2, v6);
  result = v6[0];
  if (v6[0] && (v7 & 1) == 0)
  {
    result = (*(*v6[0] + 40))();
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  ++*(a1 + 48);
  ++*(a2 + 48);
  return result;
}

uint64_t re::DynamicOverflowArray<re::FixedArray<int> *,2ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      if (*a2 && *a1 != *a2)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
        result = _os_crash();
        __break(1u);
        return result;
      }
    }

    if (*(a2 + 16))
    {
      if (*(a2 + 8))
      {
        re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::move(a1, a2);
      }

      else
      {
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
        *a1 = *a2;
        *(a2 + 16) += 2;
        *(a1 + 16) += 2;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 16) += 2;
      re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
    }
  }

  return a1;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::GeomDeformer *,re::GeomDeformer *,re::GeomDeformer *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    re::StringID::operator=((a4 + v7), (a2 + v7));
    re::StringID::operator=((a4 + v7 + 16), (a2 + v7 + 16));
    re::DynamicArray<re::GeomDeformer::Attribute>::operator=(a4 + v7 + 32, (a2 + v7 + 32));
    re::DynamicArray<re::GeomDeformer::Affector>::operator=(a4 + v7 + 72, (a2 + v7 + 72));
    re::BucketArray<re::FixedArray<int>,8ul>::operator=(a4 + v7 + 112, a2 + v7 + 112);
    re::BucketArray<re::FixedArray<float>,8ul>::operator=(a4 + v7 + 168, a2 + v7 + 168);
    re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator=(a4 + v7 + 224, a2 + v7 + 224);
    re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::operator=(a4 + v7 + 280, a2 + v7 + 280);
    re::BucketArray<re::StringID,8ul>::operator=(a4 + v7 + 336, a2 + v7 + 336);
    re::BucketArray<re::Matrix4x4<float>,8ul>::operator=(a4 + v7 + 392, a2 + v7 + 392);
    v7 += 448;
  }

  while (a2 + v7 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::GeomDeformer::Attribute>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::GeomDeformer::Attribute>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::GeomDeformer::Attribute>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::GeomDeformer::Attribute>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::GeomDeformer::Attribute>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::GeomDeformer::Affector>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::GeomDeformer::Affector>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::GeomDeformer::Affector>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::GeomDeformer::Affector>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::GeomDeformer::Affector>::copy(a1, a2);
    }
  }

  return a1;
}

void re::DynamicArray<re::GeomDeformer::Attribute>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::GeomDeformer::Attribute>::setCapacity(a1, *(a2 + 16));
    v15 = *(a2 + 32);
    v16 = a1[2];
    v17 = a1[4];
    if (v16)
    {
      v18 = v15 + 40 * v16;
      v19 = (v17 + 8);
      v20 = v15 + 8;
      do
      {
        *(v19 - 1) = *(v20 - 8);
        v21 = re::StringID::operator=(v19, v20);
        *(v21 + 1) = *(v20 + 16);
        v19 = v21 + 5;
        v22 = v20 + 32;
        v20 += 40;
      }

      while (v22 != v18);
      v17 = a1[4];
      v16 = a1[2];
      v15 = *(a2 + 32);
    }

    if (v16 != v4)
    {
      v23 = v15 + 40 * v4;
      v24 = 40 * v16 + 8;
      v25 = v15 + v24;
      v26 = (v17 + v24);
      do
      {
        *(v26 - 1) = *(v25 - 8);
        v27 = re::StringID::StringID(v26, v25);
        *(v27 + 1) = *(v25 + 16);
        v28 = v25 + 32;
        v25 += 40;
        v26 = (v27 + 40);
      }

      while (v28 != v23);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = v7 + 40 * v4;
      v9 = (v6 + 8);
      v10 = v7 + 8;
      do
      {
        *(v9 - 1) = *(v10 - 8);
        v11 = re::StringID::operator=(v9, v10);
        *(v11 + 1) = *(v10 + 16);
        v9 = v11 + 5;
        v12 = v10 + 32;
        v10 += 40;
      }

      while (v12 != v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v13 = 40 * v5 - 40 * v4;
      v14 = (v6 + 40 * v4 + 8);
      do
      {
        re::StringID::destroyString(v14);
        v14 = (v14 + 40);
        v13 -= 40;
      }

      while (v13);
    }
  }

  a1[2] = v4;
}

void re::DynamicArray<re::GeomDeformer::Attribute>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = 40 * v2;
    v4 = (*(a1 + 32) + 8);
    do
    {
      re::StringID::destroyString(v4);
      v4 = (v4 + 40);
      v3 -= 40;
    }

    while (v3);
  }

  ++*(a1 + 24);
}

void *re::DynamicArray<re::GeomDeformer::Attribute>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::GeomDeformer::Attribute>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = v8[1];
          v12 = v8 + 1;
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[1] = *v12 & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[2] = v12[1];
          *v12 = 0;
          v12[1] = &str_67;
          *(v11 + 3) = *(v12 + 1);
          re::StringID::destroyString(v12);
          v11 += 5;
          v8 = v12 + 4;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::GeomDeformer::Affector>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::GeomDeformer::Affector>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 40 * v12;
      do
      {
        result = re::DynamicArray<re::GeomDeformer::Attribute>::operator=(v13, v11);
        v11 += 5;
        v13 += 40;
        v14 -= 40;
      }

      while (v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 5 * v12;
      v16 = &v11[v15];
      result = (v13 + 8 * v15);
      v17 = 40 * v4 - 8 * v15;
      do
      {
        v18 = re::DynamicArray<re::GeomDeformer::Attribute>::DynamicArray(result, v16);
        v16 += 5;
        result = (v18 + 40);
        v17 -= 40;
      }

      while (v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 40 * v4;
      do
      {
        result = re::DynamicArray<re::GeomDeformer::Attribute>::operator=(v6, v7);
        v7 += 5;
        v6 += 40;
        v8 -= 40;
      }

      while (v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = v6 + 40 * v4;
      v10 = 40 * v5 - 40 * v4;
      do
      {
        result = re::DynamicArray<re::GeomDeformer::Attribute>::deinit(v9);
        v9 += 40;
        v10 -= 40;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::GeomDeformer::Affector>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 40 * v2;
    do
    {
      result = re::DynamicArray<re::GeomDeformer::Attribute>::deinit(v3);
      v3 += 40;
      v4 -= 40;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

void *re::DynamicArray<re::GeomDeformer::Affector>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::GeomDeformer::Affector>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
        v10 = v8 + 40 * v9;
        v11 = v7 + 4;
        do
        {
          *v11 = 0;
          *(v11 - 3) = 0;
          *(v11 - 2) = 0;
          *(v11 - 4) = 0;
          *(v11 - 2) = 0;
          v12 = *(v8 + 8);
          *(v11 - 4) = *v8;
          *(v11 - 3) = v12;
          *v8 = 0;
          *(v8 + 8) = 0;
          v13 = *(v11 - 2);
          *(v11 - 2) = *(v8 + 16);
          *(v8 + 16) = v13;
          v14 = *v11;
          *v11 = *(v8 + 32);
          *(v8 + 32) = v14;
          ++*(v8 + 24);
          ++*(v11 - 2);
          re::DynamicArray<re::GeomDeformer::Attribute>::deinit(v8);
          v8 += 40;
          v11 += 5;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::GeomDeformer::Attribute>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::GeomDeformer::Attribute>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::GeomDeformer::Attribute>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::BucketArray<re::FixedArray<int>,8ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::BucketArray<re::FixedArray<int>,8ul>::copy(a1, a2);
        ++*(a1 + 48);
      }

      else
      {
        re::BucketArray<re::FixedArray<int>,8ul>::clear(a1);
      }
    }

    else if (v4)
    {
      re::BucketArray<re::FixedArray<int>,8ul>::init(a1, v4, *(a2 + 8));
      re::BucketArray<re::FixedArray<int>,8ul>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::BucketArray<re::FixedArray<float>,8ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::BucketArray<re::FixedArray<float>,8ul>::copy(a1, a2);
        ++*(a1 + 48);
      }

      else
      {
        re::BucketArray<re::FixedArray<int>,8ul>::clear(a1);
      }
    }

    else if (v4)
    {
      re::BucketArray<re::FixedArray<float>,8ul>::init(a1, v4, *(a2 + 8));
      re::BucketArray<re::FixedArray<float>,8ul>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::copy(a1, a2);
        ++*(a1 + 48);
      }

      else
      {
        re::BucketArray<re::FixedArray<int>,8ul>::clear(a1);
      }
    }

    else if (v4)
    {
      re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::init(a1, v4, *(a2 + 8));
      re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::copy(a1, a2);
        ++*(a1 + 48);
      }

      else
      {
        re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::clear(a1);
      }
    }

    else if (v4)
    {
      re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::init(a1, v4, *(a2 + 8));
      re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::BucketArray<re::StringID,8ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::BucketArray<re::StringID,8ul>::copy(a1, a2);
        ++*(a1 + 48);
      }

      else
      {
        re::BucketArray<re::StringID,8ul>::clear(a1);
      }
    }

    else if (v4)
    {
      re::BucketArray<re::StringID,8ul>::init(a1, v4, *(a2 + 8));
      re::BucketArray<re::StringID,8ul>::copy(a1, a2);
    }
  }

  return a1;
}

unint64_t re::BucketArray<re::Matrix4x4<float>,8ul>::operator=(unint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::BucketArray<re::Matrix4x4<float>,8ul>::copy(a1, a2);
        ++*(a1 + 48);
      }

      else
      {
        re::BucketArray<re::Matrix4x4<float>,8ul>::clear(a1);
      }
    }

    else if (v4)
    {
      re::BucketArray<re::Matrix4x4<float>,8ul>::init(a1, v4, *(a2 + 8));
      re::BucketArray<re::Matrix4x4<float>,8ul>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t *re::BucketArray<re::FixedArray<int>,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::FixedArray<int>,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void re::BucketArray<re::FixedArray<int>,8ul>::copy(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40);
  if (v4 >= *(a1 + 40))
  {
    re::BucketArray<re::FixedArray<int>,8ul>::setBucketsCapacity(a1, (v4 + 7) >> 3);
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::FixedArray<int>,8ul>::BucketArrayIterator<re::FixedArray<int>,re::FixedArray<int> const&,re::BucketArray<re::FixedArray<int>,8ul> const&,true>,re::BucketArray<re::FixedArray<int>,8ul>::BucketArrayIterator<re::FixedArray<int>,re::FixedArray<int> const&,re::BucketArray<re::FixedArray<int>,8ul> const&,true>,re::BucketArray<re::FixedArray<int>,8ul>::BucketArrayIterator<re::FixedArray<int>,re::FixedArray<int>&,re::BucketArray<re::FixedArray<int>,8ul>&,true>>(a2, 0, a2, *(a1 + 40), a1, 0, v14);
    v7 = *(a1 + 40);
    v8 = v4 - v7;
    if (v4 != v7)
    {
      v9 = 0;
      do
      {
        v10 = v9 + *(a1 + 40);
        if (*(a1 + 8) <= v10 >> 3)
        {
          memset(v14, 0, sizeof(v14));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v11 = a1 + 24;
        if ((*(a1 + 16) & 1) == 0)
        {
          v11 = *(a1 + 32);
        }

        v12 = (*(v11 + 8 * (v10 >> 3)) + 24 * (v10 & 7));
        v13 = re::BucketArray<re::FixedArray<int>,8ul>::operator[](a2, v10);
        re::FixedArray<int>::FixedArray(v12, v13);
        ++v9;
      }

      while (v8 != v9);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::FixedArray<int>,8ul>::BucketArrayIterator<re::FixedArray<int>,re::FixedArray<int> const&,re::BucketArray<re::FixedArray<int>,8ul> const&,true>,re::BucketArray<re::FixedArray<int>,8ul>::BucketArrayIterator<re::FixedArray<int>,re::FixedArray<int> const&,re::BucketArray<re::FixedArray<int>,8ul> const&,true>,re::BucketArray<re::FixedArray<int>,8ul>::BucketArrayIterator<re::FixedArray<int>,re::FixedArray<int>&,re::BucketArray<re::FixedArray<int>,8ul>&,true>>(a2, 0, a2, *(a2 + 40), a1, 0, v14);
    if (v4 != *(a1 + 40))
    {
      v5 = v4;
      do
      {
        v6 = re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a1, v5);
        re::FixedArray<CoreIKTransform>::deinit(v6);
        ++v5;
      }

      while (v5 != *(a1 + 40));
    }
  }

  *(a1 + 40) = v4;
}

uint64_t re::BucketArray<re::FixedArray<int>,8ul>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](v1, i);
      result = re::FixedArray<CoreIKTransform>::deinit(v4);
    }
  }

  *(v1 + 40) = 0;
  ++*(v1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::FixedArray<int>,8ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 192, 0);
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

uint64_t re::BucketArray<re::FixedArray<int>,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
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

  return *(v3 + 8 * (a2 >> 3)) + 24 * (a2 & 7);
}

void std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::FixedArray<int>,8ul>::BucketArrayIterator<re::FixedArray<int>,re::FixedArray<int> const&,re::BucketArray<re::FixedArray<int>,8ul> const&,true>,re::BucketArray<re::FixedArray<int>,8ul>::BucketArrayIterator<re::FixedArray<int>,re::FixedArray<int> const&,re::BucketArray<re::FixedArray<int>,8ul> const&,true>,re::BucketArray<re::FixedArray<int>,8ul>::BucketArrayIterator<re::FixedArray<int>,re::FixedArray<int>&,re::BucketArray<re::FixedArray<int>,8ul>&,true>>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (a1 != a3 || a2 != a4)
  {
    v13 = a4 - 1;
    do
    {
      do
      {
        v14 = a2;
        v15 = re::BucketArray<re::FixedArray<int>,8ul>::operator[](a1, a2);
        v16 = re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a5, a6);
        re::FixedArray<int>::operator=(v16, v15);
        a2 = v14 + 1;
        ++a6;
      }

      while (a1 != a3);
    }

    while (v13 != v14);
    a2 = a4;
  }

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a5;
  a7[3] = a6;
}

uint64_t *re::BucketArray<re::FixedArray<float>,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::FixedArray<float>,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void re::BucketArray<re::FixedArray<float>,8ul>::copy(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40);
  if (v4 >= *(a1 + 40))
  {
    re::BucketArray<re::FixedArray<float>,8ul>::setBucketsCapacity(a1, (v4 + 7) >> 3);
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::FixedArray<float>,8ul>::BucketArrayIterator<re::FixedArray<float>,re::FixedArray<float> const&,re::BucketArray<re::FixedArray<float>,8ul> const&,true>,re::BucketArray<re::FixedArray<float>,8ul>::BucketArrayIterator<re::FixedArray<float>,re::FixedArray<float> const&,re::BucketArray<re::FixedArray<float>,8ul> const&,true>,re::BucketArray<re::FixedArray<float>,8ul>::BucketArrayIterator<re::FixedArray<float>,re::FixedArray<float>&,re::BucketArray<re::FixedArray<float>,8ul>&,true>>(a2, 0, a2, *(a1 + 40), a1, 0, v14);
    v7 = *(a1 + 40);
    v8 = v4 - v7;
    if (v4 != v7)
    {
      v9 = 0;
      do
      {
        v10 = v9 + *(a1 + 40);
        if (*(a1 + 8) <= v10 >> 3)
        {
          memset(v14, 0, sizeof(v14));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v11 = a1 + 24;
        if ((*(a1 + 16) & 1) == 0)
        {
          v11 = *(a1 + 32);
        }

        v12 = (*(v11 + 8 * (v10 >> 3)) + 24 * (v10 & 7));
        v13 = re::BucketArray<re::FixedArray<int>,8ul>::operator[](a2, v10);
        re::FixedArray<float>::FixedArray(v12, v13);
        ++v9;
      }

      while (v8 != v9);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::FixedArray<float>,8ul>::BucketArrayIterator<re::FixedArray<float>,re::FixedArray<float> const&,re::BucketArray<re::FixedArray<float>,8ul> const&,true>,re::BucketArray<re::FixedArray<float>,8ul>::BucketArrayIterator<re::FixedArray<float>,re::FixedArray<float> const&,re::BucketArray<re::FixedArray<float>,8ul> const&,true>,re::BucketArray<re::FixedArray<float>,8ul>::BucketArrayIterator<re::FixedArray<float>,re::FixedArray<float>&,re::BucketArray<re::FixedArray<float>,8ul>&,true>>(a2, 0, a2, *(a2 + 40), a1, 0, v14);
    if (v4 != *(a1 + 40))
    {
      v5 = v4;
      do
      {
        v6 = re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a1, v5);
        re::FixedArray<CoreIKTransform>::deinit(v6);
        ++v5;
      }

      while (v5 != *(a1 + 40));
    }
  }

  *(a1 + 40) = v4;
}

uint64_t *re::BucketArray<re::FixedArray<float>,8ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 192, 0);
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

void std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::FixedArray<float>,8ul>::BucketArrayIterator<re::FixedArray<float>,re::FixedArray<float> const&,re::BucketArray<re::FixedArray<float>,8ul> const&,true>,re::BucketArray<re::FixedArray<float>,8ul>::BucketArrayIterator<re::FixedArray<float>,re::FixedArray<float> const&,re::BucketArray<re::FixedArray<float>,8ul> const&,true>,re::BucketArray<re::FixedArray<float>,8ul>::BucketArrayIterator<re::FixedArray<float>,re::FixedArray<float>&,re::BucketArray<re::FixedArray<float>,8ul>&,true>>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (a1 != a3 || a2 != a4)
  {
    v13 = a4 - 1;
    do
    {
      do
      {
        v14 = a2;
        v15 = re::BucketArray<re::FixedArray<int>,8ul>::operator[](a1, a2);
        v16 = re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a5, a6);
        re::FixedArray<float>::operator=(v16, v15);
        a2 = v14 + 1;
        ++a6;
      }

      while (a1 != a3);
    }

    while (v13 != v14);
    a2 = a4;
  }

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a5;
  a7[3] = a6;
}

uint64_t *re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::copy(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40);
  if (v4 >= *(a1 + 40))
  {
    re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::setBucketsCapacity(a1, (v4 + 7) >> 3);
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArrayIterator<re::FixedArray<re::PackedFloat3>,re::FixedArray<re::PackedFloat3> const&,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul> const&,true>,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArrayIterator<re::FixedArray<re::PackedFloat3>,re::FixedArray<re::PackedFloat3> const&,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul> const&,true>,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArrayIterator<re::FixedArray<re::PackedFloat3>,re::FixedArray<re::PackedFloat3>&,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>&,true>>(a2, 0, a2, *(a1 + 40), a1, 0, v14);
    v7 = *(a1 + 40);
    v8 = v4 - v7;
    if (v4 != v7)
    {
      v9 = 0;
      do
      {
        v10 = v9 + *(a1 + 40);
        if (*(a1 + 8) <= v10 >> 3)
        {
          memset(v14, 0, sizeof(v14));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v11 = a1 + 24;
        if ((*(a1 + 16) & 1) == 0)
        {
          v11 = *(a1 + 32);
        }

        v12 = (*(v11 + 8 * (v10 >> 3)) + 24 * (v10 & 7));
        v13 = re::BucketArray<re::FixedArray<int>,8ul>::operator[](a2, v10);
        re::FixedArray<re::PackedFloat3>::FixedArray(v12, v13);
        ++v9;
      }

      while (v8 != v9);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArrayIterator<re::FixedArray<re::PackedFloat3>,re::FixedArray<re::PackedFloat3> const&,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul> const&,true>,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArrayIterator<re::FixedArray<re::PackedFloat3>,re::FixedArray<re::PackedFloat3> const&,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul> const&,true>,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArrayIterator<re::FixedArray<re::PackedFloat3>,re::FixedArray<re::PackedFloat3>&,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>&,true>>(a2, 0, a2, *(a2 + 40), a1, 0, v14);
    if (v4 != *(a1 + 40))
    {
      v5 = v4;
      do
      {
        v6 = re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a1, v5);
        re::FixedArray<CoreIKTransform>::deinit(v6);
        ++v5;
      }

      while (v5 != *(a1 + 40));
    }
  }

  *(a1 + 40) = v4;
}

uint64_t *re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 192, 0);
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

void std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArrayIterator<re::FixedArray<re::PackedFloat3>,re::FixedArray<re::PackedFloat3> const&,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul> const&,true>,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArrayIterator<re::FixedArray<re::PackedFloat3>,re::FixedArray<re::PackedFloat3> const&,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul> const&,true>,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArrayIterator<re::FixedArray<re::PackedFloat3>,re::FixedArray<re::PackedFloat3>&,re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>&,true>>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (a1 != a3 || a2 != a4)
  {
    v13 = a4 - 1;
    do
    {
      do
      {
        v14 = a2;
        v15 = re::BucketArray<re::FixedArray<int>,8ul>::operator[](a1, a2);
        v16 = re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a5, a6);
        re::FixedArray<re::PackedFloat3>::operator=(v16, v15);
        a2 = v14 + 1;
        ++a6;
      }

      while (a1 != a3);
    }

    while (v13 != v14);
    a2 = a4;
  }

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a5;
  a7[3] = a6;
}

uint64_t *re::FixedArray<re::PackedFloat3>::operator=(uint64_t *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<re::PackedFloat3>::init<>(a1, v4, *(a2 + 8));
LABEL_7:
      re::FixedArray<re::PackedFloat3>::copy(a1, a2);
    }
  }

  return a1;
}

void re::FixedArray<re::PackedFloat3>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0x1555555555555556)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 12, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 12 * a3;
  v6 = (*(*a2 + 32))(a2, 12 * a3, 4);
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
    bzero(v6, v5 - 12);
    v8 += v5 - 12;
  }

  *v8 = 0;
  *(v8 + 2) = 0;
}

void *re::FixedArray<re::PackedFloat3>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 12 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t *re::FixedArray<re::PackedFloat3>::FixedArray(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::PackedFloat3>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<re::PackedFloat3>::copy(a1, a2);
  }

  return a1;
}

uint64_t *re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::copy(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40);
  if (v4 >= *(a1 + 40))
  {
    re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::setBucketsCapacity(a1, (v4 + 7) >> 3);
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArrayIterator<re::GeomDeformer::MeshTarget,re::GeomDeformer::MeshTarget const&,re::BucketArray<re::GeomDeformer::MeshTarget,8ul> const&,true>,re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArrayIterator<re::GeomDeformer::MeshTarget,re::GeomDeformer::MeshTarget const&,re::BucketArray<re::GeomDeformer::MeshTarget,8ul> const&,true>,re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArrayIterator<re::GeomDeformer::MeshTarget,re::GeomDeformer::MeshTarget&,re::BucketArray<re::GeomDeformer::MeshTarget,8ul>&,true>>(a2, 0, a2, *(a1 + 40), a1, 0, v14);
    v7 = *(a1 + 40);
    v8 = v4 - v7;
    if (v4 != v7)
    {
      v9 = 0;
      do
      {
        v10 = v9 + *(a1 + 40);
        if (*(a1 + 8) <= v10 >> 3)
        {
          memset(v14, 0, sizeof(v14));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v11 = a1 + 24;
        if ((*(a1 + 16) & 1) == 0)
        {
          v11 = *(a1 + 32);
        }

        v12 = *(v11 + 8 * (v10 >> 3)) + 32 * (v10 & 7);
        v13 = re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::operator[](a2, v10);
        re::StringID::StringID(v12, v13);
        re::StringID::StringID((v12 + 16), v13 + 1);
        ++v9;
      }

      while (v8 != v9);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArrayIterator<re::GeomDeformer::MeshTarget,re::GeomDeformer::MeshTarget const&,re::BucketArray<re::GeomDeformer::MeshTarget,8ul> const&,true>,re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArrayIterator<re::GeomDeformer::MeshTarget,re::GeomDeformer::MeshTarget const&,re::BucketArray<re::GeomDeformer::MeshTarget,8ul> const&,true>,re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArrayIterator<re::GeomDeformer::MeshTarget,re::GeomDeformer::MeshTarget&,re::BucketArray<re::GeomDeformer::MeshTarget,8ul>&,true>>(a2, 0, a2, *(a2 + 40), a1, 0, v14);
    if (v4 != *(a1 + 40))
    {
      v5 = v4;
      do
      {
        v6 = re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::operator[](a1, v5);
        re::StringID::destroyString((v6 + 16));
        re::StringID::destroyString(v6);
        ++v5;
      }

      while (v5 != *(a1 + 40));
    }
  }

  *(a1 + 40) = v4;
}

void re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::clear(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::operator[](a1, i);
      re::StringID::destroyString((v4 + 16));
      re::StringID::destroyString(v4);
    }
  }

  *(a1 + 40) = 0;
  ++*(a1 + 48);
}

uint64_t *re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 256, 0);
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

uint64_t re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
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

  return *(v3 + 8 * (a2 >> 3)) + 32 * (a2 & 7);
}

void std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArrayIterator<re::GeomDeformer::MeshTarget,re::GeomDeformer::MeshTarget const&,re::BucketArray<re::GeomDeformer::MeshTarget,8ul> const&,true>,re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArrayIterator<re::GeomDeformer::MeshTarget,re::GeomDeformer::MeshTarget const&,re::BucketArray<re::GeomDeformer::MeshTarget,8ul> const&,true>,re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArrayIterator<re::GeomDeformer::MeshTarget,re::GeomDeformer::MeshTarget&,re::BucketArray<re::GeomDeformer::MeshTarget,8ul>&,true>>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (a1 != a3 || a2 != a4)
  {
    v13 = a4 - 1;
    do
    {
      do
      {
        v14 = a2;
        v15 = re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::operator[](a1, a2);
        v16 = re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::operator[](a5, a6);
        v17 = re::StringID::operator=(v16, v15);
        re::StringID::operator=(v17 + 2, v15 + 2);
        a2 = v14 + 1;
        ++a6;
      }

      while (a1 != a3);
    }

    while (v13 != v14);
    a2 = a4;
  }

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a5;
  a7[3] = a6;
}

uint64_t *re::BucketArray<re::StringID,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::StringID,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void re::BucketArray<re::StringID,8ul>::copy(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40);
  if (v4 >= *(a1 + 40))
  {
    re::BucketArray<re::StringID,8ul>::setBucketsCapacity(a1, (v4 + 7) >> 3);
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::StringID,8ul>::BucketArrayIterator<re::StringID,re::StringID const&,re::BucketArray<re::StringID,8ul> const&,true>,re::BucketArray<re::StringID,8ul>::BucketArrayIterator<re::StringID,re::StringID const&,re::BucketArray<re::StringID,8ul> const&,true>,re::BucketArray<re::StringID,8ul>::BucketArrayIterator<re::StringID,re::StringID&,re::BucketArray<re::StringID,8ul>&,true>>(a2, 0, a2, *(a1 + 40), a1, 0, v14);
    v7 = *(a1 + 40);
    v8 = v4 - v7;
    if (v4 != v7)
    {
      v9 = 0;
      do
      {
        v10 = v9 + *(a1 + 40);
        if (*(a1 + 8) <= v10 >> 3)
        {
          memset(v14, 0, sizeof(v14));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v11 = a1 + 24;
        if ((*(a1 + 16) & 1) == 0)
        {
          v11 = *(a1 + 32);
        }

        v12 = (*(v11 + 8 * (v10 >> 3)) + 16 * (v10 & 7));
        v13 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](a2, v10);
        re::StringID::StringID(v12, v13);
        ++v9;
      }

      while (v8 != v9);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::StringID,8ul>::BucketArrayIterator<re::StringID,re::StringID const&,re::BucketArray<re::StringID,8ul> const&,true>,re::BucketArray<re::StringID,8ul>::BucketArrayIterator<re::StringID,re::StringID const&,re::BucketArray<re::StringID,8ul> const&,true>,re::BucketArray<re::StringID,8ul>::BucketArrayIterator<re::StringID,re::StringID&,re::BucketArray<re::StringID,8ul>&,true>>(a2, 0, a2, *(a2 + 40), a1, 0, v14);
    if (v4 != *(a1 + 40))
    {
      v5 = v4;
      do
      {
        v6 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](a1, v5);
        re::StringID::destroyString(v6);
        ++v5;
      }

      while (v5 != *(a1 + 40));
    }
  }

  *(a1 + 40) = v4;
}

void re::BucketArray<re::StringID,8ul>::clear(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](a1, i);
      re::StringID::destroyString(v4);
    }
  }

  *(a1 + 40) = 0;
  ++*(a1 + 48);
}

uint64_t *re::BucketArray<re::StringID,8ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 128, 0);
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

void std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::StringID,8ul>::BucketArrayIterator<re::StringID,re::StringID const&,re::BucketArray<re::StringID,8ul> const&,true>,re::BucketArray<re::StringID,8ul>::BucketArrayIterator<re::StringID,re::StringID const&,re::BucketArray<re::StringID,8ul> const&,true>,re::BucketArray<re::StringID,8ul>::BucketArrayIterator<re::StringID,re::StringID&,re::BucketArray<re::StringID,8ul>&,true>>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (a1 != a3 || a2 != a4)
  {
    v13 = a4 - 1;
    do
    {
      do
      {
        v14 = a2;
        v15 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](a1, a2);
        v16 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](a5, a6);
        re::StringID::operator=(v16, v15);
        a2 = v14 + 1;
        ++a6;
      }

      while (a1 != a3);
    }

    while (v13 != v14);
    a2 = a4;
  }

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a5;
  a7[3] = a6;
}

uint64_t *re::BucketArray<re::Matrix4x4<float>,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::Matrix4x4<float>,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void re::BucketArray<re::Matrix4x4<float>,8ul>::copy(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40);
  if (v4 >= *(a1 + 40))
  {
    re::BucketArray<re::Matrix4x4<float>,8ul>::setBucketsCapacity(a1, (v4 + 7) >> 3);
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArrayIterator<re::Matrix4x4<float>,re::Matrix4x4<float> const&,re::BucketArray<re::Matrix4x4<float>,8ul> const&,true>,re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArrayIterator<re::Matrix4x4<float>,re::Matrix4x4<float> const&,re::BucketArray<re::Matrix4x4<float>,8ul> const&,true>,re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArrayIterator<re::Matrix4x4<float>,re::Matrix4x4<float>&,re::BucketArray<re::Matrix4x4<float>,8ul>&,true>>(a2, 0, a2, *(a1 + 40), a1, 0, v16);
    v6 = *(a1 + 40);
    v7 = v4 - v6;
    if (v4 != v6)
    {
      v8 = 0;
      do
      {
        v9 = v8 + *(a1 + 40);
        if (*(a1 + 8) <= v9 >> 3)
        {
          memset(v16, 0, sizeof(v16));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v10 = a1 + 24;
        if ((*(a1 + 16) & 1) == 0)
        {
          v10 = *(a1 + 32);
        }

        v11 = (*(v10 + 8 * (v9 >> 3)) + ((v9 & 7) << 6));
        v12 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a2, v9);
        v13 = v12[3];
        v15 = *v12;
        v14 = v12[1];
        v11[2] = v12[2];
        v11[3] = v13;
        *v11 = v15;
        v11[1] = v14;
        ++v8;
      }

      while (v7 != v8);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArrayIterator<re::Matrix4x4<float>,re::Matrix4x4<float> const&,re::BucketArray<re::Matrix4x4<float>,8ul> const&,true>,re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArrayIterator<re::Matrix4x4<float>,re::Matrix4x4<float> const&,re::BucketArray<re::Matrix4x4<float>,8ul> const&,true>,re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArrayIterator<re::Matrix4x4<float>,re::Matrix4x4<float>&,re::BucketArray<re::Matrix4x4<float>,8ul>&,true>>(a2, 0, a2, *(a2 + 40), a1, 0, v16);
    if (v4 != *(a1 + 40))
    {
      v5 = v4;
      do
      {
        re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1, v5++);
      }

      while (v5 != *(a1 + 40));
    }
  }

  *(a1 + 40) = v4;
}

unint64_t re::BucketArray<re::Matrix4x4<float>,8ul>::clear(unint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      result = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v1, i);
    }
  }

  *(v1 + 40) = 0;
  ++*(v1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::Matrix4x4<float>,8ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

void std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArrayIterator<re::Matrix4x4<float>,re::Matrix4x4<float> const&,re::BucketArray<re::Matrix4x4<float>,8ul> const&,true>,re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArrayIterator<re::Matrix4x4<float>,re::Matrix4x4<float> const&,re::BucketArray<re::Matrix4x4<float>,8ul> const&,true>,re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArrayIterator<re::Matrix4x4<float>,re::Matrix4x4<float>&,re::BucketArray<re::Matrix4x4<float>,8ul>&,true>>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (a1 != a3 || a2 != a4)
  {
    v13 = a4 - 1;
    do
    {
      do
      {
        v14 = a2;
        v15 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1, a2);
        v16 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a5, a6);
        v17 = v15[3];
        v19 = *v15;
        v18 = v15[1];
        v16[2] = v15[2];
        v16[3] = v17;
        *v16 = v19;
        v16[1] = v18;
        a2 = v14 + 1;
        ++a6;
      }

      while (a1 != a3);
    }

    while (v13 != v14);
    a2 = a4;
  }

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a5;
  a7[3] = a6;
}

uint64_t re::DynamicArray<re::GeomDeformer::Affector>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::GeomDeformer::Affector>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::GeomDeformer::Affector>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::BucketArray<re::FixedArray<int>,8ul>::BucketArray(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v4 = *a2;
  if (v4)
  {
    re::BucketArray<re::FixedArray<int>,8ul>::init(a1, v4, *(a2 + 8));
    re::BucketArray<re::FixedArray<int>,8ul>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::BucketArray<re::FixedArray<float>,8ul>::BucketArray(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v4 = *a2;
  if (v4)
  {
    re::BucketArray<re::FixedArray<float>,8ul>::init(a1, v4, *(a2 + 8));
    re::BucketArray<re::FixedArray<float>,8ul>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::BucketArray(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v4 = *a2;
  if (v4)
  {
    re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::init(a1, v4, *(a2 + 8));
    re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::BucketArray(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v4 = *a2;
  if (v4)
  {
    re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::init(a1, v4, *(a2 + 8));
    re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::BucketArray<re::StringID,8ul>::BucketArray(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v4 = *a2;
  if (v4)
  {
    re::BucketArray<re::StringID,8ul>::init(a1, v4, *(a2 + 8));
    re::BucketArray<re::StringID,8ul>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::BucketArray<re::Matrix4x4<float>,8ul>::BucketArray(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v4 = *a2;
  if (v4)
  {
    re::BucketArray<re::Matrix4x4<float>,8ul>::init(a1, v4, *(a2 + 8));
    re::BucketArray<re::Matrix4x4<float>,8ul>::copy(a1, a2);
  }

  return a1;
}

re::DynamicString *re::make::shared::object<re::ShareableInternal<re::GeomModelDescriptor>,re::GeomModelDescriptor>(re *a1, uint64_t a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 240, 8);
  ArcSharedObject::ArcSharedObject(v5, 0);
  *v5 = &unk_1F5CD00F8;
  *(v5 + 24) = *a2;
  *(v5 + 25) = *(a2 + 1);
  *(v5 + 28) = *(a2 + 4);
  v6 = *(a2 + 16);
  *(v5 + 32) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v5 + 40) = v6;
  v7 = *(a2 + 32);
  *(v5 + 48) = *(a2 + 24);
  *(v5 + 56) = v7;
  *(a2 + 32) = 0;
  *(v5 + 64) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0;
  *(v8 + 72) = 0u;
  *(v5 + 108) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v8 + 72), (a2 + 48));
  *(v5 + 152) = 0;
  *(v5 + 144) = 0;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 120) = 0;
  v9 = *(a2 + 104);
  *(v5 + 120) = *(a2 + 96);
  *(v5 + 128) = v9;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v10 = *(v5 + 136);
  *(v5 + 136) = *(a2 + 112);
  *(a2 + 112) = v10;
  v11 = *(v5 + 152);
  *(v5 + 152) = *(a2 + 128);
  *(a2 + 128) = v11;
  ++*(a2 + 120);
  ++*(v5 + 144);
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0;
  *(v5 + 160) = 0u;
  *(v5 + 196) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v5 + 160), (a2 + 136));
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 232) = *(a2 + 208);
  v12 = *(a2 + 192);
  *(v5 + 208) = *(a2 + 184);
  *(a2 + 184) = 0;
  v13 = *(a2 + 200);
  *(a2 + 208) = 0;
  v15 = *(v5 + 216);
  v14 = *(v5 + 224);
  *(v5 + 216) = v12;
  *(v5 + 224) = v13;
  *(a2 + 192) = v15;
  *(a2 + 200) = v14;
  result = re::GeomModelDescriptor::reset(a2);
  *a1 = v5;
  return result;
}

uint64_t *re::ShareableInternal<re::GeomModelDescriptor>::~ShareableInternal(uint64_t *a1)
{
  *a1 = &unk_1F5CD00F8;
  re::DynamicString::deinit((a1 + 26));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 20);
  re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit((a1 + 15));
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 9);
  v2 = a1[8];
  if (v2)
  {

    a1[8] = 0;
  }

  v3 = a1[7];
  if (v3)
  {

    a1[7] = 0;
  }

  v4 = a1[4];
  if (v4)
  {

    a1[4] = 0;
  }

  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::ShareableInternal<re::GeomModelDescriptor>::~ShareableInternal(uint64_t *a1)
{
  *a1 = &unk_1F5CD00F8;
  re::DynamicString::deinit((a1 + 26));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 20);
  re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit((a1 + 15));
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 9);
  v2 = a1[8];
  if (v2)
  {

    a1[8] = 0;
  }

  v3 = a1[7];
  if (v3)
  {

    a1[7] = 0;
  }

  v4 = a1[4];
  if (v4)
  {

    a1[4] = 0;
  }

  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

re::DynamicString *re::GeomModelDescriptor::reset(re::GeomModelDescriptor *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 1) = 0;
  v2 = *(this + 1);
  if (v2)
  {

    *(this + 1) = 0;
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  v3 = *(this + 4);
  if (v3)
  {

    *(this + 4) = 0;
  }

  v4 = *(this + 5);
  if (v4)
  {

    *(this + 5) = 0;
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(this + 48);
  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5)
  {
    v6 = *(this + 16);
    v7 = 56 * v5;
    do
    {
      v8 = *(v6 + 6);
      if (v8)
      {

        *(v6 + 6) = 0;
      }

      v9 = *(v6 + 5);
      if (v9)
      {

        *(v6 + 5) = 0;
      }

      re::DynamicString::deinit(v6);
      v6 = (v6 + 56);
      v7 -= 56;
    }

    while (v7);
  }

  ++*(this + 30);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(this + 136);
  v11[0] = "";
  v11[1] = 0;
  return re::DynamicString::operator=((this + 184), v11);
}

uint64_t re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit(uint64_t a1)
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
        v5 = 56 * v4;
        do
        {
          v6 = *(v3 + 6);
          if (v6)
          {

            *(v3 + 6) = 0;
          }

          v7 = *(v3 + 5);
          if (v7)
          {

            *(v3 + 5) = 0;
          }

          re::DynamicString::deinit(v3);
          v3 = (v3 + 56);
          v5 -= 56;
        }

        while (v5);
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

uint64_t re::BucketArray<unsigned long,4ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<unsigned long,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
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

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 8 * (v2 & 3);
}

uint64_t *re::BucketArray<unsigned long,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
        v5 = (*(**v3 + 32))(*v3, 32, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<unsigned long,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::BucketArray<unsigned long,32ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 32 * v3)
  {
    re::BucketArray<unsigned long,32ul>::setBucketsCapacity(a1, (v2 + 32) >> 5);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 5)
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

  v5 = *(v4 + 8 * (v2 >> 5));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 8 * (v2 & 0x1F);
}

void *re::BucketArray<re::USDImportContextBlendShapeData,8ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 1216, 0);
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
    result = re::BucketArray<re::USDImportContextBlendShapeData,8ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::BucketArray<re::USDImportContextSkeletonData,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 1696, 0);
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
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
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

LABEL_24:
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
  }

  return result;
}

void *re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 2240, 0);
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
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
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

LABEL_24:
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
  }

  return result;
}

uint64_t re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 3)
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

  v5 = *(v4 + 8 * (v2 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 80 * (v2 & 7);
}

void *re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 640, 0);
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
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
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

LABEL_24:
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
  }

  return result;
}

uint64_t re::BucketArray<re::USDImportContextPhysicsRigidBodyData,8ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::USDImportContextPhysicsRigidBodyData,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 3)
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

  v5 = *(v4 + 8 * (v2 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 80 * (v2 & 7);
}

void *re::BucketArray<re::USDImportContextPhysicsRigidBodyData,8ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 640, 0);
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
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
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

LABEL_24:
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
  }

  return result;
}

void *re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::MeshCompileOptions const&>(uint64_t a1, uint64_t a2, const char **a3, void *a4)
{
  v7 = re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  v9 = *(a4 + 7);
  v7[5] = *a4;
  v7 += 5;
  *(v7 + 7) = v9;
  re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable((v7 + 2), (a4 + 2));
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>@<X0>(uint64_t result@<X0>, const char **a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_17;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_17:
    v8 = 0x7FFFFFFF;
    goto LABEL_18;
  }

  v9 = *(result + 16);
  v10 = *a2;
  v11 = v9 + 112 * v8;
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v14 = (v11 + 17);
  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  result = strcmp(v15, *a2);
  if (!result)
  {
    v6 = v8;
    goto LABEL_17;
  }

  v16 = *(v9 + 112 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v16 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v17 = v16;
      v18 = v9 + 112 * v16;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = v18 + 17;
      v22 = ((v19 & 1) != 0 ? v20 : v21);
      result = strcmp(v22, v10);
      if (!result)
      {
        break;
      }

      v16 = *(v9 + 112 * v17) & 0x7FFFFFFF;
      v8 = v17;
      if (v16 == 0x7FFFFFFF)
      {
        v8 = v17;
        goto LABEL_18;
      }
    }

    v6 = v17;
  }

LABEL_18:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v34, 0, 36);
          *&v34[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v34, v9, v8);
          v11 = *v34;
          *v34 = *a1;
          *a1 = v11;
          v12 = *&v34[16];
          v13 = *(a1 + 16);
          *&v34[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v34[24];
          *&v34[24] = *(a1 + 24);
          v14 = *&v34[32];
          *(a1 + 24) = v15;
          ++*&v34[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = (v13 + v17);
                v20 = re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v19[13] % *(a1 + 24));
                *(v20 + 24) = 0u;
                *(v20 + 8) = 0u;
                *(v20 + 32) = v19[4];
                v21 = v19[2];
                *(v20 + 8) = v19[1];
                v19[1] = 0;
                v22 = v19[3];
                v19[4] = 0;
                v24 = *(v20 + 16);
                v23 = *(v20 + 24);
                *(v20 + 16) = v21;
                *(v20 + 24) = v22;
                v19[2] = v24;
                v19[3] = v23;
                v13 = *&v34[16];
                v25 = *&v34[16] + v17;
                v26 = *(*&v34[16] + v17 + 40);
                v27 = *(*&v34[16] + v17 + 47);
                *(v20 + 56) = 0u;
                v20 += 56;
                *(v20 - 9) = v27;
                *(v20 - 16) = v26;
                *(v20 + 32) = 0;
                *(v20 + 16) = 0u;
                *(v20 + 36) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v20, (v25 + 56));
              }

              ++v18;
              v17 += 112;
            }

            while (v18 < v16);
          }

          re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v34);
        }
      }

      else
      {
        if (v8)
        {
          v30 = 2 * v7;
        }

        else
        {
          v30 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v28 = *(a1 + 16);
    v29 = *(v28 + 112 * v5);
  }

  else
  {
    v28 = *(a1 + 16);
    v29 = *(v28 + 112 * v5);
    *(a1 + 36) = v29 & 0x7FFFFFFF;
  }

  v31 = v28 + 112 * v5;
  *v31 = v29 | 0x80000000;
  v32 = *(a1 + 8);
  *v31 = *(v32 + 4 * a2) | 0x80000000;
  *(v32 + 4 * a2) = v5;
  *(v31 + 104) = a3;
  ++*(a1 + 28);
  return v28 + 112 * v5;
}

void re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 112 * v10, 16);
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

uint64_t re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v4, v5);
    re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
  }

  return a1;
}

BOOL re::importModelBlendShapes(unsigned __int16 *a1)
{
  v1 = a1;
  v71 = *MEMORY[0x1E69E9840];
  v2 = a1[104];
  re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(v1 + 14, v2);
  v48 = (v1 + 14);
  ++*(v1 + 34);
  if (v2)
  {
    v3 = 0;
    v49 = v1;
    while (1)
    {
      v4 = v1[26];
      if (v4 <= v3)
      {
        goto LABEL_59;
      }

      v5 = v1[28] + (v3 << 8);
      v54 = 0;
      v51 = 0;
      v52 = 0;
      v50 = 0;
      v53 = 0;
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        v9 = *(v5 + 32);
        v10 = 80 * v6;
        do
        {
          if (*(v9 + 8))
          {
            v11 = *(v9 + 16);
          }

          else
          {
            v11 = (v9 + 9);
          }

          v12 = strlen(v11);
          if (v12 >= 0x16)
          {
            v13 = strcmp(&v11[v12 - 21], "|blendTargetPosDeltas");
            if (!v13)
            {
              v14 = *(v5 + 48);
              if (v8 >= v51)
              {
                v15 = v8 + 1;
                if (v51 < v15)
                {
                  if (v50)
                  {
                    v16 = 8;
                    if (v51)
                    {
                      v16 = 2 * v51;
                    }

                    if (v16 <= v15)
                    {
                      v17 = v15;
                    }

                    else
                    {
                      v17 = v16;
                    }

                    re::DynamicArray<re::BaseBlendShapeChannelData>::setCapacity(&v50, v17);
                  }

                  else
                  {
                    re::DynamicArray<re::BaseBlendShapeChannelData>::setCapacity(&v50, v15);
                    ++v53;
                  }
                }

                v8 = v52;
                v7 = v54;
              }

              v18 = v7 + 56 * v8;
              *v18 = 0u;
              *(v18 + 16) = 0u;
              *(v18 + 32) = v9;
              *(v18 + 40) = v14;
              v19 = WORD2(v66);
              *(v18 + 42) = v66;
              *(v18 + 46) = v19;
              *(v18 + 48) = 16;
              v8 = ++v52;
              ++v53;
            }
          }

          v9 += 80;
          v10 -= 80;
        }

        while (v10);
        if (v8 && *(v5 + 48))
        {
          break;
        }
      }

LABEL_50:
      if (v50 && v54)
      {
        (*(*v50 + 40))();
      }

      ++v3;
      v1 = v49;
      if (v3 == v2)
      {
        return v1[16] != 0;
      }
    }

    v20 = re::StringID::StringID(&v56, v49);
    memset(&v57[12], 0, 24);
    v4 = 0;
    v58 = 2;
    v59 = *(v5 + 48);
    v60 = v3;
    v21 = v54;
    while (1)
    {
      v22 = *&v57[20];
      if (*&v57[20] <= v4)
      {
        goto LABEL_58;
      }

      v23 = *(v21 + 56 * v4 + 32);
      if (*(v23 + 8))
      {
        v24 = *(v23 + 16);
      }

      else
      {
        v24 = (v23 + 9);
      }

      v25 = (*&v57[28] + 136 * v4);
      v26 = strlen(v24);
      v27 = v26 - 21;
      if (BYTE8(v66))
      {
        v29 = v67;
      }

      else
      {
        v29 = &v66 + 9;
      }

      *v61 = 0;
      *&v61[8] = &str_67;
      v30 = re::StringID::operator=(v25, v61);
      if (v61[0])
      {
        if (v61[0])
        {
        }
      }

      *v61 = 0;
      *&v61[8] = &str_67;
      v31 = v66;
      if (v66 && (BYTE8(v66) & 1) != 0)
      {
        v31 = (*(*v66 + 40))();
      }

      v25[3] = 0;
      v25[9] = 0;
      v25[12] = 0;
      v25[15] = 0;
      v35 = v21 + 56 * v4;
      v36 = *(v35 + 32);
      v37 = *(v35 + 40);
      v38 = 3 * v37;
      if (v37)
      {
        break;
      }

LABEL_46:
      v4 = (v4 + 1);
      if (v4 == v8)
      {
        re::DynamicArray<re::MeshAssetBlendShapeData>::add(v48, &v56);
        v46 = re::FixedArray<re::BlendShapeDefinition>::deinit(&v57[12]);
        if (v56)
        {
          if (v56)
          {
          }
        }

        goto LABEL_50;
      }
    }

    v22 = 0;
    v40 = *(v36 + 64);
    v41 = v25[6];
    v42 = (v40 + 4);
    v43 = (v25[7] + 8);
    while (v41 > v22)
    {
      v45 = *v42;
      v44 = v42[1];
      *(v43 - 2) = *(v42 - 1);
      v25 = (v22 + 1);
      if (v41 <= v22 + 1)
      {
        goto LABEL_56;
      }

      *(v43 - 1) = v45;
      v25 = (v22 + 2);
      if (v41 <= v22 + 2)
      {
        goto LABEL_57;
      }

      *v43 = v44;
      v43 += 3;
      v22 += 3;
      v42 += 3;
      if (v38 == v22)
      {
        goto LABEL_46;
      }
    }

    v55 = 0;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v61 = 136315906;
    *&v61[4] = "operator[]";
    *&v61[12] = 1024;
    *&v61[14] = 468;
    v62 = 2048;
    v63 = v22;
    v64 = 2048;
    v65 = v41;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v55 = 0;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v61 = 136315906;
    *&v61[4] = "operator[]";
    *&v61[12] = 1024;
    *&v61[14] = 468;
    v62 = 2048;
    v63 = v25;
    v64 = 2048;
    v65 = v41;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_57:
    v55 = 0;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v61 = 136315906;
    *&v61[4] = "operator[]";
    *&v61[12] = 1024;
    *&v61[14] = 468;
    v62 = 2048;
    v63 = v25;
    v64 = 2048;
    v65 = v41;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_58:
    v55 = 0;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v61 = 136315906;
    *&v61[4] = "operator[]";
    *&v61[12] = 1024;
    *&v61[14] = 468;
    v62 = 2048;
    v63 = v4;
    v64 = 2048;
    v65 = v22;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_59:
    v50 = 0;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v56 = 136315906;
    *v57 = "operator[]";
    *&v57[8] = 1024;
    *&v57[10] = 789;
    *&v57[14] = 2048;
    *&v57[16] = v3;
    *&v57[24] = 2048;
    *&v57[26] = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return v1[16] != 0;
}