re::DynamicString *re::SceneCompiler::getCurrentCompiledAssetInfo@<X0>(re::SceneCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::SceneAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::SceneCompiler::assetIntrospectionType(re::SceneCompiler *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::SceneAsset>(BOOL)::info = re::introspect_SceneAsset(0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[244];
}

void *re::SceneCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, re::SceneCompiler::getSupportedExtensions(void)const::supportedExtensions);
}

re *re::SceneCompiler::compile@<X0>(re::SceneCompiler *this@<X0>, re::AssetUtilities *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = re::globalAllocators(this);
  v9 = (*(*v8[2] + 32))(v8[2], 40, 8);
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  {
    re::introspect<re::ecs2::SceneAssetData>(BOOL)::info = re::ecs2::introspect_SceneAssetData(0);
  }

  result = re::AssetUtilities::readSourceJson(a2, v9, re::introspect<re::ecs2::SceneAssetData>(BOOL)::info, a3, v19);
  if (v19[0] == 1)
  {
    *a4 = v19[0];
    *(a4 + 8) = v9;
  }

  else
  {
    v11 = re::globalAllocators(result)[2];
    re::DynamicArray<re::ecs2::EntityAssetData>::deinit(v9);
    (*(*v11 + 40))(v11, v9);
    *&v15 = 100;
    *(&v15 + 1) = re::AssetErrorCategory(void)::instance;
    result = re::DynamicString::DynamicString(&v16, &v20);
    v12 = v16;
    *(a4 + 8) = v15;
    v13 = v17;
    v14 = v18;
    *a4 = 0;
    *(a4 + 24) = v12;
    *(a4 + 40) = v13;
    *(a4 + 48) = v14;
    if ((v19[0] & 1) == 0)
    {
      result = v20;
      if (v20)
      {
        if (v21)
        {
          return (*(*v20 + 40))();
        }
      }
    }
  }

  return result;
}

re::DynamicString *re::RigCompiler::getCurrentCompiledAssetInfo@<X0>(re::RigCompiler *this@<X0>, void *a2@<X8>)
{
  *a2 = 0x100000001;
  v2 = (a2 + 1);
  v3 = re::RigAsset::assetType(this);
  v4 = *v3;
}

uint64_t re::RigCompiler::assetIntrospectionType(re::RigCompiler *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::RigAsset>(BOOL)::info = re::introspect_RigAsset(0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 350);
}

uint64_t re::RigCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v4 = "rerig";
  v3[0] = &v4;
  v3[1] = 1;
  return re::DynamicArray<char const*>::DynamicArray(a1, v3);
}

uint64_t re::RigCompiler::compile@<X0>(re::RigCompiler *this@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, re::AssetSerializationScheme *a4@<X3>, uint64_t a5@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v10 = re::globalAllocators(this);
  v11 = (*(*v10[2] + 32))(v10[2], 120, 8);
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0;
  *&v51 = &unk_1F5CD1C08;
  *(&v52 + 1) = &v51;
  v43 = v42;
  v41 = v11;
  v42[0] = &unk_1F5CD1C08;
  std::__function::__value_func<void ()(re::RigAsset *)>::~__value_func[abi:nn200100](&v51);
  v12 = strrchr(a2, 46);
  if (strcasecmp(v12 + 1, "rerig"))
  {
    re::DynamicString::format("Invalid Asset Path: %s.", &v51, a2);
    v13 = v51;
    v15 = *(&v52 + 1);
    v14 = v52;
    *a5 = 0;
    v16 = 200;
    goto LABEL_3;
  }

  v19 = v41;
  v5 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    goto LABEL_42;
  }

  while (1)
  {
    v20 = *(v5 + 350);
    v5 = &v36;
    SourceJson = re::AssetUtilities::readSourceJson(a2, v19, v20, a4, &v36);
    if ((v36 & 1) == 0)
    {
      *&v51 = 100;
      *(&v51 + 1) = re::AssetErrorCategory(void)::instance;
      re::DynamicString::DynamicString(&v52, &v37[4]);
      v27 = v52;
      *(a5 + 8) = v51;
      v28 = v53;
      *a5 = 0;
      *(a5 + 24) = v27;
      *(a5 + 40) = v28;
      if (v36)
      {
        goto LABEL_4;
      }

      v29 = *&v37[4];
      if (!*&v37[4] || (v37[12] & 1) == 0)
      {
        goto LABEL_4;
      }

      v30 = *&v39[4];
      goto LABEL_27;
    }

    if (a3 && (*a3 & 1) == 0)
    {
      v22 = v41;
LABEL_29:
      *a5 = 1;
      *(a5 + 8) = v22;
      v41 = 0;
      return std::__function::__value_func<void ()(re::RigAsset *)>::~__value_func[abi:nn200100](v42);
    }

    v22 = v41;
    a2 = *(v41 + 2);
    if (!a2)
    {
      goto LABEL_18;
    }

    v23 = 0;
    a4 = 0;
    do
    {
      v5 = *(v41 + 2);
      if (v5 <= a4)
      {
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v51 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v44 = 136315906;
        *&v44[4] = "operator[]";
        v45 = 1024;
        v46 = 789;
        v47 = 2048;
        v48 = a4;
        v49 = 2048;
        v50 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_40:
        *v44 = 0;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v51 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v36 = 136315906;
        *v37 = "operator[]";
        *&v37[8] = 1024;
        *&v37[10] = 789;
        v38 = 2048;
        *v39 = a3;
        *&v39[8] = 2048;
        *&v39[10] = a4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if ((v36 & 1) == 0)
      {
        if (v39[12])
        {
          v31 = v40;
        }

        else
        {
          v31 = &v39[13];
        }

        re::DynamicString::format("Rig %zu Validation Failed: %s.", &v51, a4, v31);
        v32 = v51;
        v33 = v52;
        *a5 = 0;
        *(a5 + 8) = 100;
        *(a5 + 16) = re::AssetErrorCategory(void)::instance;
        *(a5 + 24) = v32;
        *(a5 + 40) = v33;
        if (v36)
        {
          goto LABEL_4;
        }

        v29 = *&v39[4];
        if (!*&v39[4] || (v39[12] & 1) == 0)
        {
          goto LABEL_4;
        }

        v30 = v40;
LABEL_27:
        (*(*v29 + 40))(v29, v30);
        goto LABEL_4;
      }

      a4 = (a4 + 1);
      v23 += 1144;
    }

    while (a2 != a4);
    v22 = v41;
LABEL_18:
    a4 = *(v22 + 12);
    if (!a4)
    {
      goto LABEL_29;
    }

    a3 = 0;
    v24 = (*(v22 + 14) + 56);
    while (1)
    {
      v26 = *v24;
      v24 += 16;
      v25 = v26;
      if (a2 <= v26)
      {
        break;
      }

      a3 = (a3 + 1);
      if (a4 == a3)
      {
        goto LABEL_29;
      }
    }

    if (a4 <= a3)
    {
      goto LABEL_40;
    }

    re::DynamicString::format("Mesh Rig %zu uses an invalid rig: %u.", &v51, a3, v25);
    v13 = v51;
    v15 = *(&v52 + 1);
    v14 = v52;
    *a5 = 0;
    v16 = 100;
LABEL_3:
    *(a5 + 8) = v16;
    *(a5 + 16) = re::AssetErrorCategory(void)::instance;
    *(a5 + 24) = v13;
    *(a5 + 40) = v14;
    *(a5 + 48) = v15;
LABEL_4:
    v17 = v41;
    v41 = 0;
    if (!v17)
    {
      return std::__function::__value_func<void ()(re::RigAsset *)>::~__value_func[abi:nn200100](v42);
    }

    *&v51 = v17;
    if (v43)
    {
      (*(*v43 + 48))(v43, &v51);
      return std::__function::__value_func<void ()(re::RigAsset *)>::~__value_func[abi:nn200100](v42);
    }

    std::__throw_bad_function_call[abi:nn200100]();
LABEL_42:
    v34 = v19;
    v19 = v34;
    if (v35)
    {
      *(v5 + 350) = re::introspect_RigAsset(0);
      v19 = v34;
    }
  }
}

uint64_t std::__function::__func<re::RigCompiler::compile(char const*,void *,re::AssetSerializationScheme &)::$_0,std::allocator<re::RigCompiler::compile(char const*,void *,re::AssetSerializationScheme &)::$_0>,void ()(re::RigAsset *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::RigAsset *)>::~__value_func[abi:nn200100](uint64_t a1)
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

re::DynamicString *re::LUTTextureCompiler::getCurrentCompiledAssetInfo@<X0>(re::LUTTextureCompiler *this@<X0>, uint64_t a2@<X8>)
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

uint64_t re::LUTTextureCompiler::assetIntrospectionType(re::LUTTextureCompiler *this)
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

void *re::LUTTextureCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, re::LUTTextureCompiler::getSupportedExtensions(void)const::supportedExtensions);
}

void re::LUTTextureCompiler::compile(id *this@<X0>, const re::mtl::Device *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    memset(buf, 0, sizeof(buf));
    *v34 = 1;
    *&v34[24] = 0;
    v34[28] = 0;
    *&v34[32] = 0;
    v34[36] = 0;
    memset(&v34[4], 0, 17);
    *&v34[40] = 6;
    v36 = 0uLL;
    v35 = 0;
    v37 = -65536;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    if (a3)
    {
      v9 = *(a3 + 1);
      *buf = *a3;
      *v34 = v9;
      *&v34[16] = *(a3 + 2);
      *&v34[28] = *(a3 + 44);
      re::ObjCObject::operator=(&v35, a3 + 8);
      v36 = *(a3 + 72);
      v37 = *(a3 + 22);
      re::FixedArray<short>::operator=(&v38, a3 + 12);
      v41 = a3[120];
      v10 = v35;
    }

    else
    {
      v10 = 0;
    }

    v26 = *&v34[8];
    v27 = *&v34[40];
    v28 = v10;
    re::FixedArray<short>::FixedArray(&v29, &v38);
    v32 = v41;
    re::load3DTextureFromLutDataFile(this + 1, a2, v15, &v42);
    if (v43)
    {
      v24 = std::__throw_bad_variant_access[abi:nn200100]();
      re::LUTTextureCompiler::deleteAsset(v24, v25);
    }

    else
    {
      v16 = v42;
      v17 = v16;
      v18 = off_1F5CD1CF0;
      if (v43 != -1)
      {
        v16 = (off_1F5CD1CF0[v43])(&v49, &v42);
      }

      if (v17)
      {
        v19 = v17;
        v48 = 0;
        *&v49 = v19;
        DWORD2(v49) = 0;
        LOWORD(v42) = 0;
        v43 = 0uLL;
        *&v45[8] = 0u;
        memset(v46, 0, 28);
        v44 = 0;
        v47 = 0;
        TextureAsset = re::TextureAsset::makeTextureAsset(&v49, &v42, v27, v26);
        if (v46[0])
        {
          if (v47)
          {
            (*(*v46[0] + 40))(v46[0]);
          }

          v47 = 0;
          memset(v46, 0, 24);
          ++LODWORD(v46[3]);
        }

        if (*&v45[8])
        {
        }

        if (DWORD2(v49) != -1)
        {
          (off_1F5CD1CF0[DWORD2(v49)])(&v42, &v49);
        }

        v21 = 1;
        LOBYTE(v42) = 1;
        *&v43 = TextureAsset;
      }

      else
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        re::DynamicString::setCapacity(&v53, 0);
        re::DynamicString::assignf(&v53, "failed to load texture %s", a2);
        *&v49 = 100;
        *(&v49 + 1) = re::AssetErrorCategory(void)::instance;
        re::DynamicString::DynamicString(&v50, &v53);
        TextureAsset = *(&v51 + 1);
        v18 = v50;
        v22 = v51;
        LOBYTE(v42) = 0;
        v43 = v49;
        *&v45[16] = v52;
        v44 = v50;
        *v45 = v51;
        if (v53 && (v54 & 1) != 0)
        {
          (*(*v53 + 40))(v53, v55);
        }

        v21 = (v22 & 1) == 0;
      }

      if (v29)
      {
        if (v30)
        {
          (*(*v29 + 40))();
          v30 = 0;
          v31 = 0;
        }

        v29 = 0;
      }

      if (v17)
      {
        v23 = v43;
        *a4 = 1;
        *(a4 + 8) = v23;
      }

      else
      {
        v49 = v43;
        re::DynamicString::DynamicString(&v50, &v44);
        *a4 = 0;
        *(a4 + 8) = v49;
        *(a4 + 24) = v50;
        *(a4 + 48) = v52;
        *(a4 + 32) = v51;
        if (v18 != 0 && !v21)
        {
          (*(*v18 + 5))(v18, TextureAsset);
        }
      }

      if (v38)
      {
        if (v39)
        {
          (*(*v38 + 40))();
          v39 = 0;
          v40 = 0;
        }

        v38 = 0;
      }
    }
  }

  else
  {
    v11 = *re::pipelineLogObjects(this);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "TextureAssetCompiler: sourceFilePath is null.", buf, 2u);
    }

    v13 = *buf;
    v14 = *v34;
    *a4 = 0;
    *(a4 + 8) = 100;
    *(a4 + 16) = re::AssetErrorCategory(void)::instance;
    *(a4 + 24) = v13;
    *(a4 + 40) = v14;
  }
}

void re::LUTTextureCompiler::~LUTTextureCompiler(id *this)
{
}

{

  JUMPOUT(0x1E6906520);
}

void re::getLibraryHash(re *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  memset(v9, 0, sizeof(v9));
  if (!a5[1])
  {
    if (*(a4 + 72))
    {
      a5 = (a4 + 64);
    }

    else
    {
      if (!*(a3 + 104))
      {
        v7 = *(*(a2 + 48) + 368);
        *a1 = 1;
        *(a1 + 1) = v7;
        goto LABEL_7;
      }

      a5 = (a3 + 96);
    }
  }

  re::AssetHandle::operator=(v9, a5);
  re::AssetHandle::AssetHandle(v8, v9);
  re::getLibraryHash(a1, a2, v8);
  re::AssetHandle::~AssetHandle(v8);
LABEL_7:
  re::AssetHandle::~AssetHandle(v9);
}

void re::getLibraryHash(re *a1, uint64_t a2, const re::AssetHandle *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 1);
  if (v5 && (v6 = atomic_load((v5 + 896)), v6 == 2))
  {
    re::AssetHandle::AssetHandle(v25, a3);
    re::validateAssetType(v25, "Attempting to get library hash");
    re::AssetHandle::~AssetHandle(v25);
    v9 = *(a3 + 1);
    if (v9)
    {
      v10 = *(v9 + 280);
      v11 = re::ShaderLibraryAsset::assetType(v8);
      if (v10 == v11)
      {
        v12 = re::AssetHandle::loadedAsset<re::ShaderLibraryAsset>(a3);
        v13 = *(v12 + 48);
        v14 = v13 >> 1;
        if ((v13 & 1) == 0)
        {
          v14 = v13 >> 1;
        }

        v15 = *(a2 + 48);
        if (v14)
        {
          if (v13)
          {
            v16 = *(v12 + 56);
          }

          else
          {
            v16 = (v12 + 49);
          }

          *buf = re::ShaderManager::getLibraryHash(*(a2 + 48), v16);
          if (re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v15 + 376, buf))
          {
            v17 = *buf;
            if (*buf)
            {
              goto LABEL_15;
            }
          }

          v15 = *(a2 + 48);
        }

        v17 = *(v15 + 368);
LABEL_15:
        *a1 = 1;
        *(a1 + 1) = v17;
        return;
      }
    }

    else
    {
      v11 = re::ShaderLibraryAsset::assetType(v8);
    }

    v21 = *(a3 + 1);
    if (v21)
    {
      v22 = *(v21 + 280);
      v23 = re::ShaderGraphAsset::assetType(v11);
      if (v22 == v23)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v23 = re::ShaderGraphAsset::assetType(v11);
    }

    v18 = *re::assetsLogObjects(v23);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v24 = **(*(a3 + 1) + 280);
      *buf = 136315138;
      *&buf[4] = v24;
      v20 = "Encountered asset with unexpected type %s in MaterialCompiler.cpp";
      goto LABEL_25;
    }
  }

  else
  {
    v18 = *re::assetsLogObjects(a1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = **(*(a3 + 1) + 280);
      *buf = 136315138;
      *&buf[4] = v19;
      v20 = "Can't get hash for not loaded %s";
LABEL_25:
      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
    }
  }

LABEL_26:
  *a1 = 0;
}

BOOL re::materialTextureParamIsAsset(re *this, const char *a2)
{
  v2 = strrchr(this, 46);
  result = 0;
  if (v2)
  {
    v4 = v2;
    if (re::canLoadTextureFileWithExtension((v2 + 1), v3) || !strcmp(v4, ".compiledtexture"))
    {
      return 1;
    }
  }

  return result;
}

void re::tryLoadTexture(re *this, re::RenderManager *a2, AssetService *a3, re::MaterialTextureParam *a4)
{
  if (LODWORD(a3[4].var0) != 1 || (v5 = a4, (v7 = re::AssetHandle::loadedAsset<re::TextureAsset>(a3)) == 0))
  {
LABEL_19:
    *this = 0;
    return;
  }

  v8 = v7;
  if (!v5 || !re::TextureAsset::isLegacyLinearFormatWithSRGBData(v7) || (!*(v8 + 13) || !*(v8 + 12)) && ((re::TextureAsset::addLegacyLinearFormatWithSRGBDataTexture(v8, a2), !*(v8 + 13)) || !*(v8 + 12)))
  {
    isValid = re::TextureData::isValid((v8 + 112));
    if (isValid)
    {
      if (*(v8 + 30))
      {
        v10 = *re::pipelineLogObjects(isValid);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *v11 = 0;
          _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Cannot render a texture asset that is not backed by a MTLAsset.", v11, 2u);
        }
      }
    }

    if (*(v8 + 2) && *(v8 + 1))
    {
      *this = 1;
      re::TextureHandle::TextureHandle((this + 8), (v8 + 8));
      return;
    }

    goto LABEL_19;
  }

  *this = 1;

  re::TextureHandle::TextureHandle((this + 8), (v8 + 96));
}

uint64_t re::makeFlattenedMaterialFile(re *this, const re::MaterialDefinitionFile *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v32 = 0;
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v29 = 0x7FFFFFFFLL;
  re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v26, this);
  v21 = this;
  re::DynamicArray<re::RigDataValue *>::add(v30, &v21);
  re::AssetHandle::AssetHandle(v25, (this + 120));
  if (*(re::AssetHandle::assetInfo(v25) + 22))
  {
    while (1)
    {
      v3 = re::AssetHandle::loadedAsset<re::MaterialDefinitionAsset>(v25);
      if (!v3)
      {
        v7 = 0;
        goto LABEL_41;
      }

      v4 = v3;
      v5 = (v3 + 8);
      v6 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::contains(&v26, v3 + 8);
      if (v6)
      {
        break;
      }

      re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v26, v5);
      v21 = v5;
      re::DynamicArray<re::RigDataValue *>::add(v30, &v21);
      re::AssetHandle::operator=(v25, (v4 + 128));
      if (!*(re::AssetHandle::assetInfo(v25) + 22))
      {
        goto LABEL_40;
      }
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v8 = re::DynamicString::setCapacity(&v21, 0);
    v9 = v28;
    if (v28)
    {
      v10 = 0;
      v11 = (v27 + 8);
      while (1)
      {
        v12 = *v11;
        v11 += 12;
        if (v12 < 0)
        {
          break;
        }

        if (v28 == ++v10)
        {
          LODWORD(v10) = v28;
          break;
        }
      }
    }

    else
    {
      LODWORD(v10) = 0;
    }

    if (v10 != v28)
    {
      v13 = v27;
      do
      {
        re::DynamicString::DynamicString(buf, (v13 + 48 * v10 + 16));
        if (buf[8])
        {
          v14 = *&v35[2];
        }

        else
        {
          v14 = &buf[9];
        }

        re::DynamicString::appendf(&v21, "-> %s", v14);
        v8 = *buf;
        if (*buf && (buf[8] & 1) != 0)
        {
          v8 = (*(**buf + 40))();
        }

        v13 = v27;
        if (v28 <= v10 + 1)
        {
          v15 = v10 + 1;
        }

        else
        {
          v15 = v28;
        }

        while (v15 - 1 != v10)
        {
          LODWORD(v10) = v10 + 1;
          if ((*(v27 + 48 * v10 + 8) & 0x80000000) != 0)
          {
            goto LABEL_28;
          }
        }

        LODWORD(v10) = v15;
LABEL_28:
        ;
      }

      while (v10 != v9);
    }

    v16 = *re::pipelineLogObjects(v8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 1))
      {
        v17 = *(this + 2);
      }

      else
      {
        v17 = this + 9;
      }

      if (v22)
      {
        v18 = v23;
      }

      else
      {
        v18 = &v22 + 1;
      }

      *buf = 136315394;
      *&buf[4] = v17;
      v34 = 2080;
      *v35 = v18;
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Found circular dependency in material %s: {%s}", buf, 0x16u);
    }

    if (v21 && (v22 & 1) != 0)
    {
      (*(*v21 + 40))();
    }
  }

LABEL_40:
  v7 = re::resolveOverrideMaterials(this, v30);
LABEL_41:
  re::AssetHandle::~AssetHandle(v25);
  v19 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v26);
  if (v30[0] && v32)
  {
    (*(*v30[0] + 40))(v19);
  }

  return v7;
}

uint64_t re::resolveOverrideMaterials(re *a1, uint64_t a2)
{
  v274 = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 736, 8);
  re::MaterialDefinitionFile::MaterialDefinitionFile(v5);
  v263 = 0;
  v261 = 0u;
  v262 = 0u;
  v264 = 0x7FFFFFFFLL;
  v259 = 0;
  v257 = 0u;
  v258 = 0u;
  v260 = 0x7FFFFFFFLL;
  v255 = 0;
  v253 = 0u;
  v254 = 0u;
  v256 = 0x7FFFFFFFLL;
  v251 = 0;
  v249 = 0u;
  v250 = 0u;
  v252 = 0x7FFFFFFFLL;
  v247 = 0;
  v246 = 0u;
  *__b = 0u;
  v248 = 0x7FFFFFFFLL;
  v243 = 0;
  v241 = 0u;
  v242 = 0u;
  v244 = 0x7FFFFFFFLL;
  v6 = *(a2 + 16);
  if (!v6)
  {
    goto LABEL_357;
  }

  v235 = v5;
  v7 = *(a2 + 32) + 8 * v6;
  v224 = a1 + 9;
  v5 = 88;
  v225 = a1;
  v226 = a2;
  do
  {
    if (HIDWORD(v246))
    {
      if (DWORD2(v246))
      {
        memset_pattern16(__b[1], &memset_pattern_178, 4 * DWORD2(v246));
      }

      v8 = v247;
      if (v247)
      {
        v9 = v246;
        do
        {
          re::HashTable<re::DynamicString,re::DynamicArray<unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(v9);
          v9 += 22;
          --v8;
        }

        while (v8);
      }

      v247 = 0;
      HIDWORD(v246) = 0;
      LODWORD(v248) = 0x7FFFFFFF;
      ++HIDWORD(v248);
    }

    re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(&v241);
    v10 = *(v7 - 8);
    v7 -= 8;
    re::DynamicString::operator=(v235, v10);
    v11 = *(v235 + 40);
    if (v11)
    {
      v12 = v11 >> 1;
    }

    else
    {
      v12 = v11 >> 1;
    }

    if (!v12)
    {
      re::DynamicString::operator=((v235 + 32), (*v7 + 32));
    }

    v13 = re::AssetHandle::operator=(v235 + 96, (*v7 + 96));
    v14 = *v7;
    v15 = *(*v7 + 72);
    if (v15)
    {
      v16 = v15 >> 1;
    }

    else
    {
      v16 = v15 >> 1;
    }

    if (v16)
    {
      v17 = *re::pipelineLogObjects(v13);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      v14 = *v7;
      if (v18)
      {
        if (*(v14 + 72))
        {
          v19 = *(v14 + 80);
        }

        else
        {
          v19 = v14 + 73;
        }

        *buf = 136315138;
        *&buf[4] = v19;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        v14 = *v7;
      }
    }

    re::append<re::DynamicString,re::DynamicString>((v235 + 192), v14 + 192);
    v20 = *v7;
    v21 = *(*v7 + 272);
    if (v21)
    {
      v22 = 0;
      v23 = *(v20 + 256);
      while (1)
      {
        v24 = *v23;
        v23 += 22;
        if (v24 < 0)
        {
          break;
        }

        if (v21 == ++v22)
        {
          LODWORD(v22) = *(*v7 + 272);
          break;
        }
      }
    }

    else
    {
      LODWORD(v22) = 0;
    }

    if (v22 != v21)
    {
      v25 = *(v20 + 256);
      do
      {
        v26 = v25 + 88 * v22;
        memset(buf, 0, 24);
        v27 = re::Hash<re::DynamicString>::operator()(v269, v26 + 8);
        re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v235 + 240, v26 + 8, v27, buf);
        v28 = *&buf[12];
        if (*&buf[12] == 0x7FFFFFFF)
        {
          re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::MaterialTextureParam const&>(v235 + 240, buf, (v26 + 8), v26 + 40);
        }

        else
        {
          ++*(v235 + 280);
          std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1> const&>(*(v235 + 256) + 88 * v28 + 40, v26 + 40);
        }

        if (*(v20 + 272) <= (v22 + 1))
        {
          v29 = v22 + 1;
        }

        else
        {
          v29 = *(v20 + 272);
        }

        v25 = *(v20 + 256);
        while (v29 - 1 != v22)
        {
          LODWORD(v22) = v22 + 1;
          if ((*(v25 + 88 * v22) & 0x80000000) != 0)
          {
            goto LABEL_43;
          }
        }

        LODWORD(v22) = v29;
LABEL_43:
        ;
      }

      while (v22 != v21);
      v20 = *v7;
    }

    v30 = re::append<re::DynamicString,re::DynamicString>((v235 + 144), v20 + 144);
    v31 = *v7;
    v32 = *(*v7 + 368);
    if (v32)
    {
      v33 = 0;
      v34 = *(v31 + 352);
      while (1)
      {
        v35 = *v34;
        v34 += 38;
        if (v35 < 0)
        {
          break;
        }

        if (v32 == ++v33)
        {
          LODWORD(v33) = *(*v7 + 368);
          break;
        }
      }
    }

    else
    {
      LODWORD(v33) = 0;
    }

    if (v33 != v32)
    {
      v36 = *(v31 + 352);
      do
      {
        v37 = v36 + 152 * v33;
        memset(buf, 0, 24);
        v38 = re::Hash<re::DynamicString>::operator()(v269, v37 + 8);
        re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v235 + 336, v37 + 8, v38, buf);
        v39 = *&buf[12];
        if (*&buf[12] == 0x7FFFFFFF)
        {
          v30 = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::OptionalMaterialSamplerData const&>(v235 + 336, buf, (v37 + 8), v37 + 40);
        }

        else
        {
          ++*(v235 + 376);
          v30 = re::OptionalMaterialSamplerData::operator=(*(v235 + 352) + 152 * v39 + 40, v37 + 40);
        }

        if (*(v31 + 368) <= (v33 + 1))
        {
          v40 = v33 + 1;
        }

        else
        {
          v40 = *(v31 + 368);
        }

        v36 = *(v31 + 352);
        while (v40 - 1 != v33)
        {
          LODWORD(v33) = v33 + 1;
          if ((*(v36 + 152 * v33) & 0x80000000) != 0)
          {
            goto LABEL_64;
          }
        }

        LODWORD(v33) = v40;
LABEL_64:
        ;
      }

      while (v33 != v32);
      v31 = *v7;
    }

    v228 = *(v31 + 320);
    if (v228)
    {
      v41 = 0;
      v42 = *(v31 + 304);
      while (1)
      {
        v43 = *v42;
        v42 += 40;
        if (v43 < 0)
        {
          break;
        }

        if (v228 == ++v41)
        {
          LODWORD(v41) = *(v31 + 320);
          break;
        }
      }
    }

    else
    {
      LODWORD(v41) = 0;
    }

    if (v41 != v228)
    {
      do
      {
        v44 = *(v31 + 304) + 160 * v41;
        v45 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(v235 + 288, v44 + 8);
        if (v45)
        {
          v47 = v45;
          if (*re::MaterialTextureParam::serializationString((v44 + 40), v46))
          {
            std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1> const&>(v47, v44 + 40);
          }

          v30 = re::replaceIfValid<re::DynamicString>((v47 + 40), (v44 + 80));
          if (*(v44 + 144) == 1)
          {
            if ((*(v47 + 104) & 1) == 0)
            {
              *(v47 + 104) = 1;
            }

            *(v47 + 108) = *(v44 + 148);
          }

          v48 = *(v44 + 120);
          v49 = v48 >> 1;
          if ((v48 & 1) == 0)
          {
            v49 = v48 >> 1;
          }

          if (v49)
          {
            v50 = (v48 & 1) != 0 ? *(v44 + 128) : (v44 + 121);
            v30 = strcmp("dynamicSamplers", v50);
            if (v30)
            {
              v52 = *re::pipelineLogObjects(v30);
              v30 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
              if (v30)
              {
                v53 = *v7;
                if (*(*v7 + 8))
                {
                  v54 = *(v53 + 16);
                }

                else
                {
                  v54 = v53 + 9;
                }

                if (*(v44 + 120))
                {
                  v55 = *(v44 + 128);
                }

                else
                {
                  v55 = v44 + 121;
                }

                *buf = 136315650;
                *&buf[4] = v54;
                *&buf[12] = 2080;
                *&buf[14] = v55;
                *&buf[22] = 2080;
                *&buf[24] = "dynamicSamplers";
                _os_log_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_DEFAULT, "Material '%s' uses custom dynamic sampler array %s, but custom array names are no longer supported. Please ensure the array name in the shader is %s and remove SamplerArray from your material file.", buf, 0x20u);
              }
            }
          }
        }

        else
        {
          memset(buf, 0, 24);
          v51 = re::Hash<re::DynamicString>::operator()(v269, v44 + 8);
          v30 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v235 + 288, v44 + 8, v51, buf);
          if (*&buf[12] == 0x7FFFFFFF)
          {
            v30 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::MaterialTextureBlockData const&>(v235 + 288, buf, (v44 + 8), v44 + 40);
          }
        }

        v56 = *(v31 + 320);
        if (v56 <= v41 + 1)
        {
          v56 = v41 + 1;
        }

        while (v56 - 1 != v41)
        {
          LODWORD(v41) = v41 + 1;
          if ((*(*(v31 + 304) + 160 * v41) & 0x80000000) != 0)
          {
            goto LABEL_104;
          }
        }

        LODWORD(v41) = v56;
LABEL_104:
        ;
      }

      while (v41 != v228);
      v31 = *v7;
    }

    v240 = &v261;
    v269[0] = 0;
    if (*(v31 + 400))
    {
      v57 = 0;
      do
      {
        v58 = (*(v31 + 416) + 664 * v57);
        v59 = v58[5];
        if (v59)
        {
          v60 = v59 >> 1;
        }

        else
        {
          v60 = v59 >> 1;
        }

        if (v60)
        {
          memset(buf, 0, 24);
          v61 = re::Hash<re::DynamicString>::operator()(&v238, (v58 + 4));
          re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, __b, (v58 + 4), v61);
          if (*&buf[12] == 0x7FFFFFFF)
          {
            v62 = re::HashTable<re::DynamicString,re::DynamicArray<unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(__b, *&buf[8], *buf);
            re::DynamicString::DynamicString((v62 + 8), (v58 + 4));
            *(v62 + 40) = 0;
            v63 = v62 + 40;
            *(v63 + 32) = 0;
            *(v63 + 8) = 0;
            *(v63 + 16) = 0;
            *(v63 + 24) = 1;
            ++HIDWORD(v248);
          }

          else
          {
            v63 = v246 + 88 * *&buf[12] + 40;
          }

          v30 = re::DynamicArray<unsigned long>::add(v63, v269);
        }

        else
        {
          re::resolveOverrideMaterials(re::MaterialDefinitionFile const&,re::DynamicArray<re::MaterialDefinitionFile const*> const&)::$_0::operator()(&v240, v58, v58);
        }

        v57 = v269[0] + 1;
        v269[0] = v57;
        v31 = *v7;
      }

      while (v57 < *(*v7 + 400));
    }

    v64 = HIDWORD(v246);
    do
    {
      v65 = v247;
      v229 = v64;
      if (v247)
      {
        v66 = 0;
        v67 = v246;
        while (1)
        {
          v68 = *v67;
          v67 += 22;
          if (v68 < 0)
          {
            break;
          }

          if (v247 == ++v66)
          {
            LODWORD(v66) = v247;
            break;
          }
        }
      }

      else
      {
        LODWORD(v66) = 0;
      }

      if (v66 != v247)
      {
        v69 = v246;
        while (1)
        {
          v70 = v69 + 88 * v66;
          v71 = re::Hash<re::DynamicString>::operator()(buf, v70 + 8);
          v30 = re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, &v261, v70 + 8, v71);
          if (*&buf[12] != 0x7FFFFFFF)
          {
            v72 = v69 + 88 * v66;
            v30 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v241, (v70 + 8));
            v73 = *(v72 + 56);
            if (v73)
            {
              break;
            }
          }

LABEL_132:
          if (v247 <= v66 + 1)
          {
            v80 = v66 + 1;
          }

          else
          {
            v80 = v247;
          }

          v69 = v246;
          while (v80 - 1 != v66)
          {
            LODWORD(v66) = v66 + 1;
            if ((*(v246 + 88 * v66) & 0x80000000) != 0)
            {
              goto LABEL_140;
            }
          }

          LODWORD(v66) = v80;
LABEL_140:
          if (v66 == v65)
          {
            goto LABEL_141;
          }
        }

        v74 = *(v72 + 72);
        v75 = 8 * v73;
        while (1)
        {
          v76 = *v74;
          v77 = *(*v7 + 400);
          if (v77 <= *v74)
          {
            break;
          }

          v78 = (*(*v7 + 416) + 664 * v76);
          v79 = re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](&v261, v78 + 32);
          re::resolveOverrideMaterials(re::MaterialDefinitionFile const&,re::DynamicArray<re::MaterialDefinitionFile const*> const&)::$_0::operator()(&v240, v78, v79);
          re::resolveOverrideMaterials(re::MaterialDefinitionFile const&,re::DynamicArray<re::MaterialDefinitionFile const*> const&)::$_0::operator()(&v240, v78, v78);
          ++v74;
          v75 -= 8;
          if (!v75)
          {
            goto LABEL_132;
          }
        }

        v238 = 0;
        v272 = 0u;
        v273 = 0u;
        v271 = 0u;
        memset(buf, 0, sizeof(buf));
        v195 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v269[0]) = 136315906;
        *(v269 + 4) = "operator[]";
        WORD2(v269[1]) = 1024;
        *(&v269[1] + 6) = 797;
        WORD1(v269[2]) = 2048;
        *(&v269[2] + 4) = v76;
        WORD2(v269[3]) = 2048;
        *(&v269[3] + 6) = v77;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_365:
        LODWORD(v196) = 0;
        goto LABEL_366;
      }

LABEL_141:
      v81 = v243;
      if (v243)
      {
        v82 = 0;
        v83 = (v242 + 8);
        while (1)
        {
          v84 = *v83;
          v83 += 12;
          if (v84 < 0)
          {
            break;
          }

          if (v243 == ++v82)
          {
            LODWORD(v82) = v243;
            break;
          }
        }
      }

      else
      {
        LODWORD(v82) = 0;
      }

      if (v82 != v243)
      {
        v85 = v242;
        do
        {
          v86 = v85 + 48 * v82;
          v87 = re::Hash<re::DynamicString>::operator()(buf, v86 + 16);
          v30 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, __b, v86 + 16, v87);
          v88 = *&buf[12];
          if (*&buf[12] != 0x7FFFFFFF)
          {
            v89 = (v246 + 88 * *&buf[12]);
            v90 = *v89 & 0x7FFFFFFF;
            if (*&buf[16] == 0x7FFFFFFF)
            {
              *(__b[1] + *&buf[8]) = v90;
            }

            else
            {
              *(v246 + 88 * *&buf[16]) = *(v246 + 88 * *&buf[16]) & 0x80000000 | v90;
            }

            v30 = re::HashTable<re::DynamicString,re::DynamicArray<unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(v89);
            v91 = HIDWORD(v246);
            *v89 = *v89 & 0x80000000 | v248;
            HIDWORD(v246) = v91 - 1;
            v248 = __PAIR64__(HIDWORD(v248), v88) + 0x100000000;
          }

          v85 = v242;
          if (v243 <= v82 + 1)
          {
            v92 = v82 + 1;
          }

          else
          {
            v92 = v243;
          }

          while (v92 - 1 != v82)
          {
            LODWORD(v82) = v82 + 1;
            if ((*(v242 + 48 * v82 + 8) & 0x80000000) != 0)
            {
              goto LABEL_161;
            }
          }

          LODWORD(v82) = v92;
LABEL_161:
          ;
        }

        while (v82 != v81);
      }

      v64 = HIDWORD(v246);
    }

    while (v229 > HIDWORD(v246));
    if (v247)
    {
      v93 = 0;
      v94 = v246;
      while (1)
      {
        v95 = *v94;
        v94 += 22;
        if (v95 < 0)
        {
          break;
        }

        if (v247 == ++v93)
        {
          LODWORD(v93) = v247;
          break;
        }
      }
    }

    else
    {
      LODWORD(v93) = 0;
    }

    if (v93 != v247)
    {
      v96 = v246;
      v227 = v247;
      do
      {
        v97 = v96 + 88 * v93;
        v98 = *(v97 + 56);
        if (v98)
        {
          v99 = *(v97 + 72);
          v230 = v96 + 88 * v93;
          v100 = 8 * v98;
          do
          {
            v101 = *v99;
            v102 = *(*v7 + 400);
            if (v102 <= *v99)
            {
              v238 = 0;
              v272 = 0u;
              v273 = 0u;
              v271 = 0u;
              memset(buf, 0, sizeof(buf));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v269[0]) = 136315906;
              *(v269 + 4) = "operator[]";
              WORD2(v269[1]) = 1024;
              *(&v269[1] + 6) = 797;
              WORD1(v269[2]) = 2048;
              *(&v269[2] + 4) = v101;
              WORD2(v269[3]) = 2048;
              *(&v269[3] + 6) = v102;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            v103 = *(*v7 + 416);
            v104 = *re::assetsLogObjects(v30);
            v30 = os_log_type_enabled(v104, OS_LOG_TYPE_ERROR);
            if (v30)
            {
              v105 = *v7;
              if (*(*v7 + 8))
              {
                v106 = *(v105 + 16);
              }

              else
              {
                v106 = v105 + 9;
              }

              v107 = v103 + 664 * v101;
              if (*(v107 + 8))
              {
                v108 = *(v107 + 16);
              }

              else
              {
                v108 = v107 + 9;
              }

              v109 = v230 + 17;
              if (*(v230 + 16))
              {
                v109 = *(v230 + 24);
              }

              *buf = 136315650;
              *&buf[4] = v106;
              *&buf[12] = 2080;
              *&buf[14] = v108;
              *&buf[22] = 2080;
              *&buf[24] = v109;
              _os_log_error_impl(&dword_1E1C61000, v104, OS_LOG_TYPE_ERROR, "Material definition '%s' contains technique '%s' which inherits from non-existent technique '%s', or forms a dependency cycle, so it will be skipped.", buf, 0x20u);
            }

            ++v99;
            v100 -= 8;
          }

          while (v100);
        }

        if (v227 <= v93 + 1)
        {
          v110 = v93 + 1;
        }

        else
        {
          v110 = v227;
        }

        while (v110 - 1 != v93)
        {
          LODWORD(v93) = v93 + 1;
          if ((*(v96 + 88 * v93) & 0x80000000) != 0)
          {
            goto LABEL_193;
          }
        }

        LODWORD(v93) = v110;
LABEL_193:
        ;
      }

      while (v93 != v227);
    }

    v111 = *v7;
    v112 = *(*v7 + 440);
    if (v112)
    {
      v113 = *(v111 + 456);
      v114 = &v113[9 * v112];
      v231 = v114;
      do
      {
        re::DynamicString::DynamicString(buf, v113);
        re::DynamicArray<re::DynamicString>::DynamicArray(&v271, v113 + 4);
        v115 = re::Hash<re::DynamicString>::operator()(v269, buf);
        v116 = v115;
        if (v257)
        {
          v117 = v115 % DWORD2(v258);
          v118 = *(*(&v257 + 1) + 4 * v117);
          if (v118 != 0x7FFFFFFF)
          {
            v119 = v258;
            for (i = v258 + 120 * v118 + 8; ; i = v119 + 120 * v118 + 8)
            {
              if (re::DynamicString::operator==(i, buf))
              {
                ++HIDWORD(v260);
                v122 = v119 + 120 * v118;
                re::DynamicString::operator=((v122 + 40), buf);
                re::DynamicArray<re::DynamicString>::operator=(v122 + 72, &v271);
                v114 = v231;
                goto LABEL_205;
              }

              LODWORD(v118) = *(v119 + 120 * v118) & 0x7FFFFFFF;
              if (v118 == 0x7FFFFFFF)
              {
                break;
              }
            }

            v114 = v231;
          }
        }

        else
        {
          LODWORD(v117) = 0;
        }

        v121 = re::HashTable<re::DynamicString,re::MaterialTechniqueGroupData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(&v257, v117, v116);
        re::DynamicString::DynamicString((v121 + 8), buf);
        re::DynamicString::DynamicString((v121 + 40), buf);
        re::DynamicArray<re::DynamicString>::DynamicArray(v121 + 72, &v271);
        ++HIDWORD(v260);
LABEL_205:
        re::MaterialTechniqueGroupData::deinit(buf);
        re::DynamicArray<re::DynamicString>::deinit(&v271);
        if (*buf && (buf[8] & 1) != 0)
        {
          (*(**buf + 40))();
        }

        v113 += 9;
      }

      while (v113 != v114);
      v111 = *v7;
    }

    v123 = *(v111 + 576);
    if (v123)
    {
      v124 = *(v111 + 592);
      v125 = (v124 + 80 * v123);
      do
      {
        re::DynamicString::DynamicString(buf, v124);
        re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(&v271, v124 + 32);
        v126 = re::Hash<re::DynamicString>::operator()(v269, buf);
        re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v269, &v253, buf, v126);
        if (HIDWORD(v269[1]) == 0x7FFFFFFF)
        {
          memset(v269, 0, 24);
          v127 = re::Hash<re::DynamicString>::operator()(&v238, buf);
          re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v269, &v253, buf, v127);
          if (HIDWORD(v269[1]) == 0x7FFFFFFF)
          {
            v128 = re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(&v253, v269[1], v269[0]);
            re::DynamicString::DynamicString((v128 + 8), buf);
            re::DynamicString::DynamicString((v128 + 40), buf);
            re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v128 + 72, &v271);
            ++HIDWORD(v256);
          }
        }

        else
        {
          v129 = re::Hash<re::DynamicString>::operator()(v269, buf);
          re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v269, &v253, buf, v129);
          v130 = v273;
          if (v273)
          {
            v131 = 0;
            v132 = v272;
            while (1)
            {
              v133 = *v132;
              v132 += 14;
              if (v133 < 0)
              {
                break;
              }

              if (v273 == ++v131)
              {
                LODWORD(v131) = v273;
                break;
              }
            }
          }

          else
          {
            LODWORD(v131) = 0;
          }

          if (v131 != v273)
          {
            v134 = v254 + (HIDWORD(v269[1]) << 7);
            v135 = v272;
            do
            {
              re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v134 + 72, (v135 + 56 * v131 + 8), (v135 + 56 * v131 + 40));
              if (v273 <= v131 + 1)
              {
                v136 = v131 + 1;
              }

              else
              {
                v136 = v273;
              }

              v135 = v272;
              while (v136 - 1 != v131)
              {
                LODWORD(v131) = v131 + 1;
                if ((*(v272 + 56 * v131) & 0x80000000) != 0)
                {
                  goto LABEL_232;
                }
              }

              LODWORD(v131) = v136;
LABEL_232:
              ;
            }

            while (v131 != v130);
          }
        }

        v137 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v271);
        if (*buf && (buf[8] & 1) != 0)
        {
          (*(**buf + 40))(v137);
        }

        v124 = (v124 + 80);
      }

      while (v124 != v125);
      v111 = *v7;
    }

    v138 = *(v111 + 664);
    if (!v138)
    {
      goto LABEL_251;
    }

    v139 = *(v111 + 680);
    v140 = (v139 + 104 * v138);
    v232 = v140;
    while (2)
    {
      re::MaterialTechniqueQualityLevelSetData::MaterialTechniqueQualityLevelSetData(buf, v139);
      v141 = re::Hash<re::DynamicString>::operator()(v269, buf);
      v142 = v141;
      if (!v249)
      {
        LODWORD(v143) = 0;
LABEL_247:
        v147 = re::HashTable<re::DynamicString,re::MaterialTechniqueQualityLevelSetData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(&v249, v143, v142);
        re::DynamicString::DynamicString((v147 + 8), buf);
        re::MaterialTechniqueQualityLevelSetData::MaterialTechniqueQualityLevelSetData((v147 + 40), buf);
        ++HIDWORD(v252);
        goto LABEL_249;
      }

      v143 = v141 % DWORD2(v250);
      v144 = *(*(&v249 + 1) + 4 * v143);
      if (v144 == 0x7FFFFFFF)
      {
        goto LABEL_247;
      }

      v145 = v250;
      while (!re::DynamicString::operator==(v145 + 152 * v144 + 8, buf))
      {
        v146 = *(v145 + 152 * v144);
        v144 = v146 & 0x7FFFFFFF;
        if ((v146 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          v140 = v232;
          goto LABEL_247;
        }
      }

      ++HIDWORD(v252);
      re::MaterialTechniqueQualityLevelSetData::operator=((v145 + 152 * v144 + 40), buf);
      v140 = v232;
LABEL_249:
      re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(buf);
      v139 = (v139 + 104);
      if (v139 != v140)
      {
        continue;
      }

      break;
    }

    v111 = *v7;
LABEL_251:
    v148 = *(v111 + 720);
    if (v148)
    {
      v149 = 0;
      v150 = *(v111 + 704);
      while (1)
      {
        v151 = *v150;
        v150 += 14;
        if (v151 < 0)
        {
          break;
        }

        if (v148 == ++v149)
        {
          LODWORD(v149) = *(v111 + 720);
          break;
        }
      }
    }

    else
    {
      LODWORD(v149) = 0;
    }

    if (v149 != v148)
    {
      do
      {
        v152 = *(v111 + 704) + 56 * v149;
        re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v235 + 688, (v152 + 8), (v152 + 40));
        v153 = *(v111 + 720);
        if (v153 <= v149 + 1)
        {
          v153 = v149 + 1;
        }

        while (v153 - 1 != v149)
        {
          LODWORD(v149) = v149 + 1;
          if ((*(*(v111 + 704) + 56 * v149) & 0x80000000) != 0)
          {
            goto LABEL_264;
          }
        }

        LODWORD(v149) = v153;
LABEL_264:
        ;
      }

      while (v149 != v148);
      v111 = *v7;
    }

    v154 = *(v111 + 632);
    if (v154)
    {
      v155 = 0;
      v156 = *(v111 + 616);
      while (1)
      {
        v157 = *v156;
        v156 += 24;
        if (v157 < 0)
        {
          break;
        }

        if (v154 == ++v155)
        {
          LODWORD(v155) = *(v111 + 632);
          break;
        }
      }
    }

    else
    {
      LODWORD(v155) = 0;
    }

    v233 = *(v111 + 632);
    if (v155 == v154)
    {
      goto LABEL_311;
    }

    while (2)
    {
      v158 = *(v111 + 616) + 96 * v155;
      v159 = v158 + 8;
      v160 = re::Hash<re::DynamicString>::operator()(buf, v158 + 8);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v235 + 192, v158 + 8, v160, buf);
      if (*&buf[12] == 0x7FFFFFFF)
      {
        v161 = re::Hash<re::DynamicString>::operator()(buf, v158 + 8);
        re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v235 + 240, v158 + 8, v161, buf);
        if (*&buf[12] == 0x7FFFFFFF)
        {
          v162 = re::Hash<re::DynamicString>::operator()(buf, v158 + 8);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v235 + 144, v158 + 8, v162, buf);
          if (*&buf[12] == 0x7FFFFFFF)
          {
            v163 = re::Hash<re::DynamicString>::operator()(buf, v158 + 8);
            v164 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v235 + 288, v158 + 8, v163, buf);
            if (*&buf[12] == 0x7FFFFFFF)
            {
              v165 = *re::pipelineLogObjects(v164);
              if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
              {
                if (*(v159 + 8))
                {
                  v166 = *(v159 + 16);
                }

                else
                {
                  v166 = v159 + 9;
                }

                v177 = v224;
                if (*(v225 + 1))
                {
                  v177 = *(v225 + 2);
                }

                *buf = 136315394;
                *&buf[4] = v166;
                *&buf[12] = 2080;
                *&buf[14] = v177;
                _os_log_impl(&dword_1E1C61000, v165, OS_LOG_TYPE_DEFAULT, "Ignoring property for unknown parameter (%s) in material (%s)", buf, 0x16u);
              }

              goto LABEL_303;
            }
          }
        }
      }

      v167 = (v158 + 40);
      v168 = re::Hash<re::DynamicString>::operator()(buf, v159);
      re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v235 + 600, v159, v168, buf);
      if (*&buf[12] != 0x7FFFFFFF)
      {
        v174 = re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v235 + 600, v159);
        if (*v167 == 1)
        {
          re::Optional<re::DynamicString>::operator=(v174, v167);
        }

        v175 = re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v235 + 600, v159);
        if (v167[40] == 1)
        {
          if ((*(v175 + 40) & 1) == 0)
          {
            *(v175 + 40) = 1;
          }

          *(v175 + 41) = v167[41];
        }

        goto LABEL_303;
      }

      memset(buf, 0, 24);
      v169 = re::Hash<re::DynamicString>::operator()(v269, v159);
      re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v235 + 600, v159, v169, buf);
      v170 = *&buf[12];
      if (*&buf[12] == 0x7FFFFFFF)
      {
        v171 = re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v235 + 600, *&buf[8], *buf);
        re::DynamicString::DynamicString((v171 + 8), v159);
        v172 = *v167;
        v171[40] = v172;
        if (v172 == 1)
        {
          re::DynamicString::DynamicString((v171 + 48), (v167 + 8));
        }

        v173 = v167[40];
        v171[80] = v173;
        if (v173 == 1)
        {
          v171[81] = v167[41];
        }

        LODWORD(v154) = v233;
        ++*(v235 + 640);
        goto LABEL_303;
      }

      ++*(v235 + 640);
      v176 = (*(v235 + 616) + 96 * v170);
      re::Optional<re::DynamicString>::operator=(v176 + 40, v167);
      if (v176[80])
      {
        if ((v167[40] & 1) == 0)
        {
          v176[80] = 0;
          goto LABEL_303;
        }

LABEL_298:
        v176[81] = v167[41];
      }

      else if (v167[40])
      {
        v176[80] = 1;
        goto LABEL_298;
      }

LABEL_303:
      v178 = *(v111 + 632);
      if (v178 <= v155 + 1)
      {
        v178 = v155 + 1;
      }

      while (v178 - 1 != v155)
      {
        LODWORD(v155) = v155 + 1;
        if ((*(*(v111 + 616) + 96 * v155) & 0x80000000) != 0)
        {
          goto LABEL_309;
        }
      }

      LODWORD(v155) = v178;
LABEL_309:
      if (v155 != v154)
      {
        continue;
      }

      break;
    }

    v111 = *v7;
LABEL_311:
    re::appendOrDelete<re::DynamicString,re::DynamicString>(v235 + 464, v111 + 464);
    re::StackScratchAllocator::StackScratchAllocator(buf);
    re::DynamicString::DynamicString(&v238, "Transparent", buf);
    re::DynamicString::DynamicString(&v236, "FadeOpaque", buf);
    v179 = *v7;
    if (*(*v7 + 540))
    {
      v234 = *(v179 + 544);
      if (v234)
      {
        v180 = 0;
        v181 = *(v179 + 528);
        while (1)
        {
          v182 = *v181;
          v181 += 24;
          if (v182 < 0)
          {
            break;
          }

          if (v234 == ++v180)
          {
            LODWORD(v180) = *(v179 + 544);
            break;
          }
        }
      }

      else
      {
        LODWORD(v180) = 0;
      }

LABEL_334:
      while (v180 != v234)
      {
        v183 = (*(v179 + 528) + 96 * v180);
        memset(v269, 0, sizeof(v269));
        HIDWORD(v269[4]) = 0x7FFFFFFF;
        v266 = 0;
        v265 = 0;
        v267 = 0;
        v184 = re::Hash<re::DynamicString>::operator()(&v268, (v183 + 1));
        re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v235 + 512, (v183 + 1), v184, &v265);
        if (HIDWORD(v266) == 0x7FFFFFFF)
        {
          v185 = re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>(v235 + 512, &v265, (v183 + 1), v269);
        }

        else
        {
          v185 = (*(v235 + 528) + 96 * HIDWORD(v266) + 40);
        }

        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v269);
        if (v183[2])
        {
          v186 = v183[3];
        }

        else
        {
          v186 = v183 + 17;
        }

        if (!strcmp(v186, "Fade"))
        {
          v187 = re::Hash<re::DynamicString>::operator()(v269, &v238);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>((v183 + 5), &v238, v187, v269);
          if (HIDWORD(v269[1]) != 0x7FFFFFFF)
          {
            v188 = re::Hash<re::DynamicString>::operator()(v269, &v236);
            re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v185, &v236, v188, v269);
            if (HIDWORD(v269[1]) != 0x7FFFFFFF)
            {
              re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(v185, &v236);
            }
          }
        }

        re::append<re::DynamicString,re::DynamicString>(v185, (v183 + 5));
        v189 = *(v179 + 544);
        if (v189 <= v180 + 1)
        {
          v189 = v180 + 1;
        }

        while (v189 - 1 != v180)
        {
          LODWORD(v180) = v180 + 1;
          if ((*(*(v179 + 528) + 96 * v180) & 0x80000000) != 0)
          {
            goto LABEL_334;
          }
        }

        LODWORD(v180) = v189;
      }
    }

    if (v236 && (v237 & 1) != 0)
    {
      (*(*v236 + 40))();
    }

    if (v238 && (v239 & 1) != 0)
    {
      (*(*v238 + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(buf);
  }

  while (v7 != *(v226 + 32));
  v190 = v263;
  v5 = v235;
  if (v263)
  {
    v191 = 0;
    v192 = v262;
    v193 = v262;
    while ((*v193 & 0x80000000) == 0)
    {
      v193 += 178;
      if (v263 == ++v191)
      {
        LODWORD(v191) = v263;
        break;
      }
    }

    if (v263 != v191)
    {
      do
      {
        re::DynamicArray<re::MaterialTechniqueData>::add((v235 + 384), v192 + 712 * v191 + 40);
        if (v263 <= v191 + 1)
        {
          v194 = v191 + 1;
        }

        else
        {
          v194 = v263;
        }

        v192 = v262;
        while (v194 - 1 != v191)
        {
          LODWORD(v191) = v191 + 1;
          if ((*(v262 + 712 * v191) & 0x80000000) != 0)
          {
            goto LABEL_356;
          }
        }

        LODWORD(v191) = v194;
LABEL_356:
        ;
      }

      while (v191 != v190);
    }
  }

LABEL_357:
  re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v261);
  if (*(v5 + 432) < HIDWORD(v258))
  {
    re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity((v5 + 424), HIDWORD(v258));
  }

  v195 = v259;
  if (!v259)
  {
    goto LABEL_365;
  }

  v196 = 0;
  v197 = v258;
  while (1)
  {
    v198 = *v197;
    v197 += 30;
    if (v198 < 0)
    {
      break;
    }

    if (v259 == ++v196)
    {
      LODWORD(v196) = v259;
      break;
    }
  }

LABEL_366:
  if (v196 != v195)
  {
    v199 = v258;
    do
    {
      v200 = v199 + 120 * v196 + 8;
      v201 = re::Hash<re::DynamicString>::operator()(buf, v200);
      v202 = re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, &v261, v200, v201);
      if (*&buf[12] == 0x7FFFFFFF)
      {
        re::DynamicArray<re::MaterialTechniqueGroupData>::add((v5 + 424), v199 + 120 * v196 + 40);
      }

      else
      {
        v203 = *re::pipelineLogObjects(v202);
        if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v200 + 8))
          {
            v204 = *(v200 + 16);
          }

          else
          {
            v204 = v200 + 9;
          }

          *buf = 136315138;
          *&buf[4] = v204;
          _os_log_impl(&dword_1E1C61000, v203, OS_LOG_TYPE_DEFAULT, "Technique group %s has the same name as a technique. Skipping the group.", buf, 0xCu);
        }
      }

      if (v259 <= v196 + 1)
      {
        v205 = v196 + 1;
      }

      else
      {
        v205 = v259;
      }

      v199 = v258;
      while (v205 - 1 != v196)
      {
        LODWORD(v196) = v196 + 1;
        if ((*(v258 + 120 * v196) & 0x80000000) != 0)
        {
          goto LABEL_383;
        }
      }

      LODWORD(v196) = v205;
LABEL_383:
      ;
    }

    while (v196 != v195);
  }

  re::HashTable<re::DynamicString,re::MaterialTechniqueGroupData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v257);
  v206 = v255;
  if (v255)
  {
    v207 = 0;
    v208 = v254;
    while (1)
    {
      v209 = *v208;
      v208 += 32;
      if (v209 < 0)
      {
        break;
      }

      if (v255 == ++v207)
      {
        LODWORD(v207) = v255;
        break;
      }
    }
  }

  else
  {
    LODWORD(v207) = 0;
  }

  if (v207 != v255)
  {
    v210 = v254;
    do
    {
      re::DynamicArray<re::DebugMapping>::add((v5 + 560), (v210 + (v207 << 7) + 40));
      if (v255 <= v207 + 1)
      {
        v211 = v207 + 1;
      }

      else
      {
        v211 = v255;
      }

      v210 = v254;
      while (v211 - 1 != v207)
      {
        LODWORD(v207) = v207 + 1;
        if ((*(v254 + (v207 << 7)) & 0x80000000) != 0)
        {
          goto LABEL_401;
        }
      }

      LODWORD(v207) = v211;
LABEL_401:
      ;
    }

    while (v207 != v206);
  }

  re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v253);
  if (*(v5 + 656) < HIDWORD(v250))
  {
    re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity((v5 + 648), HIDWORD(v250));
  }

  v212 = v251;
  if (v251)
  {
    v213 = 0;
    v214 = v250;
    while (1)
    {
      v215 = *v214;
      v214 += 38;
      if (v215 < 0)
      {
        break;
      }

      if (v251 == ++v213)
      {
        LODWORD(v213) = v251;
        break;
      }
    }
  }

  else
  {
    LODWORD(v213) = 0;
  }

  if (v213 != v251)
  {
    v216 = v250;
    do
    {
      v217 = v216 + 152 * v213 + 8;
      v218 = re::Hash<re::DynamicString>::operator()(buf, v217);
      v219 = re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, &v261, v217, v218);
      if (*&buf[12] == 0x7FFFFFFF)
      {
        re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::add((v5 + 648), v216 + 152 * v213 + 40);
      }

      else
      {
        v220 = *re::pipelineLogObjects(v219);
        if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v217 + 8))
          {
            v221 = *(v217 + 16);
          }

          else
          {
            v221 = v217 + 9;
          }

          *buf = 136315138;
          *&buf[4] = v221;
          _os_log_impl(&dword_1E1C61000, v220, OS_LOG_TYPE_DEFAULT, "Technique group %s has the same name as a technique. Skipping the group.", buf, 0xCu);
        }
      }

      if (v251 <= v213 + 1)
      {
        v222 = v213 + 1;
      }

      else
      {
        v222 = v251;
      }

      v216 = v250;
      while (v222 - 1 != v213)
      {
        LODWORD(v213) = v213 + 1;
        if ((*(v250 + 152 * v213) & 0x80000000) != 0)
        {
          goto LABEL_427;
        }
      }

      LODWORD(v213) = v222;
LABEL_427:
      ;
    }

    while (v213 != v212);
  }

  re::HashTable<re::DynamicString,re::MaterialTechniqueQualityLevelSetData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v249);
  re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v241);
  re::HashTable<re::DynamicString,re::DynamicArray<unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(__b);
  re::HashTable<re::DynamicString,re::MaterialTechniqueQualityLevelSetData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v249);
  re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v253);
  re::HashTable<re::DynamicString,re::MaterialTechniqueGroupData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v257);
  re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v261);
  return v5;
}

uint64_t re::makeFlattenedMaterialFile(uint64_t a1, char *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v37 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v34 = 0x7FFFFFFFLL;
  re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v31, a2);
  v28 = a2;
  re::DynamicArray<re::RigDataValue *>::add(v35, &v28);
  re::AssetHandle::AssetHandle(v30, (a2 + 120));
  while (1)
  {
    re::AssetHandle::serializationString(v30, &v28);
    if (v29[0])
    {
      v4 = v29[0] >> 1;
    }

    else
    {
      v4 = LOBYTE(v29[0]) >> 1;
    }

    if (v28)
    {
      v5 = (v29[0] & 1) == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*(*v28 + 40))();
    }

    if (!v4)
    {
      break;
    }

    re::AssetHandle::serializationString(v30, v27);
    re::makeTruncatedAssetPath(v27, &v28);
    if (*&v27[0])
    {
      if (BYTE8(v27[0]))
      {
        (*(**&v27[0] + 40))();
      }

      memset(v27, 0, sizeof(v27));
    }

    v6 = re::Hash<re::DynamicString>::operator()(&buf, &v28);
    v7 = re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, &v28, v6, &buf);
    if (HIDWORD(buf) == 0x7FFFFFFF)
    {
      v11 = *re::pipelineLogObjects(v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        if (v29[0])
        {
          v12 = v29[1];
        }

        else
        {
          v12 = v29 + 1;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v12;
        _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Cannot find asset path %s in overrideMaterials.", &buf, 0xCu);
      }

LABEL_58:
      if (v28 && (v29[0] & 1) != 0)
      {
        (*(*v28 + 40))();
      }

      break;
    }

    v8 = re::Hash<re::DynamicString>::operator()(&buf, &v28);
    re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, &v28, v8, &buf);
    v9 = (*(a1 + 16) + 784 * HIDWORD(buf) + 40);
    v10 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::contains(&v31, v9);
    if (v10)
    {
      *(&buf + 1) = 0;
      v42 = 0;
      v43 = 0;
      v13 = re::DynamicString::setCapacity(&buf, 0);
      v14 = v33;
      if (v33)
      {
        v15 = 0;
        v16 = (v32 + 8);
        while (1)
        {
          v17 = *v16;
          v16 += 12;
          if (v17 < 0)
          {
            break;
          }

          if (v33 == ++v15)
          {
            LODWORD(v15) = v33;
            break;
          }
        }
      }

      else
      {
        LODWORD(v15) = 0;
      }

      if (v15 != v33)
      {
        v18 = v32;
        do
        {
          re::DynamicString::DynamicString(v38, (v18 + 48 * v15 + 16));
          if (v38[8])
          {
            v19 = *&v40[2];
          }

          else
          {
            v19 = &v38[9];
          }

          re::DynamicString::appendf(&buf, "-> %s", v19);
          v13 = *v38;
          if (*v38 && (v38[8] & 1) != 0)
          {
            v13 = (*(**v38 + 40))();
          }

          v18 = v32;
          if (v33 <= v15 + 1)
          {
            v20 = v15 + 1;
          }

          else
          {
            v20 = v33;
          }

          while (v20 - 1 != v15)
          {
            LODWORD(v15) = v15 + 1;
            if ((*(v32 + 48 * v15 + 8) & 0x80000000) != 0)
            {
              goto LABEL_46;
            }
          }

          LODWORD(v15) = v20;
LABEL_46:
          ;
        }

        while (v15 != v14);
      }

      v21 = *re::pipelineLogObjects(v13);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 1))
        {
          v22 = *(a2 + 2);
        }

        else
        {
          v22 = a2 + 9;
        }

        if (BYTE8(buf))
        {
          v23 = v42;
        }

        else
        {
          v23 = &buf + 9;
        }

        *v38 = 136315394;
        *&v38[4] = v22;
        v39 = 2080;
        *v40 = v23;
        _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Found circular dependency in material %s: {%s}", v38, 0x16u);
      }

      if (buf && (BYTE8(buf) & 1) != 0)
      {
        (*(*buf + 40))();
      }

      goto LABEL_58;
    }

    re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v31, v9);
    *&buf = v9;
    re::DynamicArray<re::RigDataValue *>::add(v35, &buf);
    re::AssetHandle::operator=(v30, v9 + 15);
    if (v28)
    {
      if (v29[0])
      {
        (*(*v28 + 40))();
      }
    }
  }

  v24 = re::resolveOverrideMaterials(a2, v35);
  re::AssetHandle::~AssetHandle(v30);
  v25 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v31);
  if (v35[0] && v37)
  {
    (*(*v35[0] + 40))(v25);
  }

  return v24;
}

void re::makeTruncatedAssetPath(void *a1@<X0>, re::DynamicString *a2@<X8>)
{
  LOBYTE(v18) = 58;
  re::DynamicString::find(a1, &v18, 1, 0, v22);
  if (v22[0] == 1)
  {
    v4 = a1[1];
    if (v4)
    {
      v5 = v4 >> 1;
    }

    else
    {
      v5 = v4 >> 1;
    }

    re::DynamicString::substr(a1, v23 + 1, v5, &v18);
    if (v19)
    {
      v6 = v21;
    }

    else
    {
      v6 = v20;
    }

    memset(&v16, 0, sizeof(v16));
    v7 = (v6 - 1);
    do
    {
      v8 = v7->__r_.__value_.__s.__data_[1];
      v7 = (v7 + 1);
    }

    while (v8);
    std::string::append[abi:nn200100]<char const*,0>(&v16, v6, v7);
    p_p = &__p;
    std::__fs::filesystem::path::filename[abi:nn200100](&v16, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (v18)
    {
      if (v19)
      {
        (*(*v18 + 40))();
      }
    }
  }

  else
  {
    if (a1[1])
    {
      v11 = a1[2];
    }

    else
    {
      v11 = (a1 + 9);
    }

    memset(&__p, 0, sizeof(__p));
    v12 = (v11 - 1);
    do
    {
      v13 = v12->__r_.__value_.__s.__data_[1];
      v12 = (v12 + 1);
    }

    while (v13);
    std::string::append[abi:nn200100]<char const*,0>(&__p, v11, v12);
    v14 = &v18;
    std::__fs::filesystem::path::filename[abi:nn200100](&__p, &v18);
    if (SHIBYTE(v21) < 0)
    {
      v14 = v18;
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

double std::__fs::filesystem::path::filename[abi:nn200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__filename(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

re::DynamicString *re::append<re::DynamicString,re::DynamicString>(re::DynamicString *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 20;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(a2 + 16);
    do
    {
      result = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v3, (v8 + 80 * v5 + 8), (v8 + 80 * v5 + 40));
      if (*(a2 + 32) <= (v5 + 1))
      {
        v9 = v5 + 1;
      }

      else
      {
        v9 = *(a2 + 32);
      }

      v8 = *(a2 + 16);
      while (v9 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 80 * v5) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v5) = v9;
LABEL_17:
      ;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 160 * v7 + 40;
  }
}

re::DynamicString *re::replaceIfValid<re::DynamicString>(re::DynamicString *this, re::DynamicString *a2)
{
  if (*a2)
  {
    v2 = *(a2 + 1);
    if (v2)
    {
      v3 = v2 >> 1;
    }

    else
    {
      v3 = v2 >> 1;
    }

    if (v3)
    {
      return re::DynamicString::operator=(this, a2);
    }
  }

  return this;
}

void re::resolveOverrideMaterials(re::MaterialDefinitionFile const&,re::DynamicArray<re::MaterialDefinitionFile const*> const&)::$_0::operator()(uint64_t *a1, re::DynamicString *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = re::Hash<re::DynamicString>::operator()(v22, a2);
  re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v22, v6, a2, v7);
  if (v23 == 0x7FFFFFFF)
  {
    re::MaterialTechniqueData::MaterialTechniqueData(v22, a3);
    re::DynamicString::operator=(v22, a2);
    v8 = *a1;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v9 = re::Hash<re::DynamicString>::operator()(&v27, a2);
    re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v24, v8, a2, v9);
    if (HIDWORD(v25) == 0x7FFFFFFF)
    {
      v10 = re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v8, v25, v24);
      re::DynamicString::DynamicString((v10 + 8), a2);
      re::MaterialTechniqueData::MaterialTechniqueData(v10 + 40, v22);
      ++*(v8 + 40);
    }

    re::MaterialTechniqueData::~MaterialTechniqueData(v22);
    return;
  }

  v11 = re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a1, a2);
  v12 = v11;
  if (*(a3 + 72) && !*(v11 + 72))
  {
    re::AssetHandle::operator=(v11 + 64, (a3 + 64));
  }

  if ((*(a3 + 552) & 1) == 0)
  {
    v13 = *(a3 + 200);
    v14 = *(a3 + 216);
    v15 = *(a3 + 232);
    *(v12 + 248) = *(a3 + 248);
    *(v12 + 232) = v15;
    *(v12 + 216) = v14;
    *(v12 + 200) = v13;
    if (*(v12 + 252))
    {
      if ((*(a3 + 252) & 1) == 0)
      {
        *(v12 + 252) = 0;
LABEL_15:
        re::DynamicArray<re::RenderAttachmentState>::operator=(v12 + 256, (a3 + 256));
        goto LABEL_16;
      }
    }

    else
    {
      if ((*(a3 + 252) & 1) == 0)
      {
        goto LABEL_15;
      }

      *(v12 + 252) = 1;
    }

    *(v12 + 253) = *(a3 + 253);
    goto LABEL_15;
  }

LABEL_16:
  if (*(a3 + 96) && !*(v12 + 96))
  {
    re::AssetHandle::operator=(v12 + 88, (a3 + 88));
  }

  re::replaceIfValid<re::DynamicString>((v12 + 112), (a3 + 112));
  if (*(a3 + 152) && !*(v12 + 152))
  {
    re::AssetHandle::operator=(v12 + 144, (a3 + 144));
  }

  re::replaceIfValid<re::DynamicString>((v12 + 168), (a3 + 168));
  re::append<re::DynamicString,re::DynamicString>((v12 + 328), a3 + 328);
  re::append<re::DynamicString,re::DynamicString>((v12 + 560), a3 + 560);
  re::append<re::DynamicString,re::DynamicArray<re::DynamicString>>(v12 + 608, a3 + 608);
  if (*(a3 + 553) == 1)
  {
    *(v12 + 553) = 1;
  }

  if (*(a3 + 656) == 1)
  {
    *(v12 + 656) = 1;
  }

  if (*(a3 + 657) == 1)
  {
    if ((*(v12 + 657) & 1) == 0)
    {
      *(v12 + 657) = 1;
    }

    *(v12 + 658) = *(a3 + 658);
  }

  if (*(a3 + 659) == 1)
  {
    if ((*(v12 + 659) & 1) == 0)
    {
      *(v12 + 659) = 1;
    }

    *(v12 + 660) = *(a3 + 660);
  }

  re::replaceIfValid<re::DynamicString>((v12 + 296), (a3 + 296));
  re::appendOrDelete<re::DynamicString,re::DynamicString>(v12 + 464, a3 + 464);
  v16 = *(a3 + 440);
  if (v16)
  {
    v17 = *(a3 + 456);
    v18 = (v17 + 32 * v16);
    do
    {
      v19 = *(v12 + 440);
      if (v19)
      {
        v20 = *(v12 + 456);
        v21 = 32 * v19;
        while (!re::DynamicString::operator==(v17, v20))
        {
          v20 += 32;
          v21 -= 32;
          if (!v21)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
LABEL_40:
        re::DynamicArray<re::DynamicString>::add((v12 + 424), v17);
      }

      v17 = (v17 + 32);
    }

    while (v17 != v18);
  }

  re::append<re::DynamicString,re::DynamicArray<re::DynamicString>>(v12 + 376, a3 + 376);
  if (*(a3 + 512) && *(a3 + 528))
  {
    re::DynamicArray<re::DynamicString>::operator=(v12 + 512, (a3 + 512));
  }
}

uint64_t re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v6, a1, a2, v4);
  return *(a1 + 16) + 712 * v7 + 40;
}

uint64_t re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v10);
  v8 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v9 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
    result = re::DynamicString::DynamicString((v9 + 8), a2);
    *(v9 + 40) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 56 * v8 + 40) = *a3;
  }

  return result;
}

{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v15, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v13, v12);
    re::DynamicString::DynamicString((v8 + 8), a2);
    *(v8 + 40) = *a3;
    v9 = v8 + 40;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 56 * v7;
    *(v10 + 40) = *a3;
    return v10 + 40;
  }

  return v9;
}

uint64_t re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  return *(a1 + 16) + 96 * v7 + 40;
}

uint64_t re::appendOrDelete<re::DynamicString,re::DynamicString>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 20;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(a2 + 16);
    do
    {
      v9 = (v8 + 80 * v5);
      v10 = v9[6];
      if (v10)
      {
        v11 = v10 >> 1;
      }

      else
      {
        v11 = v10 >> 1;
      }

      if (v11)
      {
        result = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v3, (v9 + 1), (v9 + 5));
      }

      else
      {
        v12 = re::Hash<re::DynamicString>::operator()(v14, (v9 + 1));
        result = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v3, (v9 + 1), v12, v14);
        if (v15 != 0x7FFFFFFF)
        {
          result = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(v3, (v9 + 1));
        }
      }

      if (*(a2 + 32) <= (v5 + 1))
      {
        v13 = v5 + 1;
      }

      else
      {
        v13 = *(a2 + 32);
      }

      v8 = *(a2 + 16);
      while (v13 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 80 * v5) & 0x80000000) != 0)
        {
          goto LABEL_24;
        }
      }

      LODWORD(v5) = v13;
LABEL_24:
      ;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t re::DynamicArray<re::MaterialTechniqueData>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MaterialTechniqueData>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::MaterialTechniqueData::MaterialTechniqueData(*(this + 4) + 664 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

double re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
          v8 = (v6 + v4);
          *v8 = v7 & 0x7FFFFFFF;
          v9 = (v8 + 10);
          re::DynamicString::deinit((v8 + 2));
          re::MaterialTechniqueData::~MaterialTechniqueData(v9);
          v3 = *(a1 + 8);
        }

        v4 += 712;
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

void re::DynamicArray<re::MaterialTechniqueGroupData>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MaterialTechniqueGroupData>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  re::MaterialTechniqueGroupData::MaterialTechniqueGroupData(*(this + 4) + 72 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
}

double re::HashTable<re::DynamicString,re::MaterialTechniqueGroupData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = v6 + v4 + 72;
          re::DynamicString::deinit((v6 + v4 + 8));
          re::MaterialTechniqueGroupData::deinit((v8 + 40));
          re::DynamicArray<re::DynamicString>::deinit(v9);
          re::DynamicString::deinit((v8 + 40));
          v3 = *(a1 + 8);
        }

        v4 += 120;
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

uint64_t *re::DynamicArray<re::DebugMapping>::add(_anonymous_namespace_ *this, void *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::DebugMapping>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 80 * v4;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = a2[3];
  v6 = a2[1];
  *v5 = *a2;
  *a2 = 0;
  v7 = a2[2];
  a2[3] = 0;
  v9 = *(v5 + 8);
  v8 = *(v5 + 16);
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  a2[1] = v9;
  a2[2] = v8;
  *(v5 + 32) = 0u;
  v5 += 32;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 36) = 0x7FFFFFFFLL;
  result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v5, a2 + 4);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

double re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = (v6 + v4 + 72);
          re::DynamicString::deinit((v6 + v4 + 8));
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
          re::DynamicString::deinit((v8 + 40));
          v3 = *(a1 + 8);
        }

        v4 += 128;
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

void re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  re::MaterialTechniqueQualityLevelSetData::MaterialTechniqueQualityLevelSetData(*(this + 4) + 104 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
}

double re::HashTable<re::DynamicString,re::MaterialTechniqueQualityLevelSetData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
          v8 = (v6 + v4);
          *v8 = v7 & 0x7FFFFFFF;
          v9 = (v8 + 10);
          re::DynamicString::deinit((v8 + 2));
          re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(v9);
          v3 = *(a1 + 8);
        }

        v4 += 152;
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

FILE *re::readJsonInCompatibilityMode@<X0>(re *this@<X0>, const char *a2@<X1>, _OWORD *a3@<X2>, const re::IntrospectionBase *a4@<X3>, uint64_t a5@<X8>)
{
  re::FileStreamReader::open(this, v32);
  if (v32[0])
  {
    v31 = 0u;
    v30 = 0u;
    v29 = a4;
    v21 = a3[2];
    if (v24 == 1)
    {
      *a5 = v24;
    }

    else
    {
      if (v27)
      {
        v17 = *&v28[7];
      }

      else
      {
        v17 = v28;
      }

      re::DynamicString::format("Failed to read JSON source asset %s: %s", &v21, this, v17);
      v18 = v21;
      v19 = v22;
      v20 = v23;
      *a5 = 0;
      *(a5 + 8) = v18;
      *(a5 + 24) = v19;
      *(a5 + 32) = v20;
      if (v24 & 1) == 0 && v26 && (v27)
      {
        (*(*v26 + 40))();
      }
    }
  }

  else
  {
    re::formattedErrorMessage<re::DetailedError>(&v33, &v24);
    v13 = v24;
    v14 = v25;
    v15 = v26;
    *a5 = 0;
    *(a5 + 8) = v13;
    *(a5 + 24) = v14;
    *(a5 + 32) = v15;
  }

  if (v32[0] == 1)
  {
    result = v34;
    if (v34)
    {
      if (v36 == 1)
      {
        return fclose(v34);
      }
    }
  }

  else
  {
    result = v35;
    if (v35 && (v36 & 1) != 0)
    {
      return (*(*v35 + 40))();
    }
  }

  return result;
}

FILE *re::compileMaterialFile@<X0>(char *a1@<X0>, re *this@<X1>, re::IntrospectionBase *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3;
  v7 = a1;
  v8 = &unk_1EE187000;
  {
    v13 = this;
    v12 = a4;
    v8 = &unk_1EE187000;
    a4 = v12;
    this = v13;
    v7 = a1;
    v5 = a3;
    if (v11)
    {
      re::introspect<re::MaterialFile>(BOOL)::info = re::introspect_MaterialFile(0);
      v8 = &unk_1EE187000;
      a4 = v12;
      this = v13;
      v7 = a1;
      v5 = a3;
    }
  }

  v9 = v8[237];

  return re::readJsonInCompatibilityMode(this, v7, v9, v5, a4);
}

FILE *re::compileMaterialDefinitionFile@<X0>(re *this@<X0>, re::MaterialDefinitionFile *a2@<X1>, re::IntrospectionBase *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a3;
  v8 = this;
  v9 = &unk_1EE187000;
  {
    v14 = a2;
    v13 = a4;
    v9 = &unk_1EE187000;
    a4 = v13;
    a2 = v14;
    v8 = this;
    v6 = a3;
    if (v12)
    {
      re::introspect<re::MaterialDefinitionFile>(BOOL)::info = re::introspect_MaterialDefinitionFile(0);
      v9 = &unk_1EE187000;
      a4 = v13;
      a2 = v14;
      v8 = this;
      v6 = a3;
    }
  }

  v10 = v9[194];

  return re::readJsonInCompatibilityMode(a2, v8, v10, v6, a4);
}

void re::generateShaderParameterTableBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v126 = a1;
  v163 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = *(a2 + 160);
    if (v5)
    {
      LODWORD(v5) = *v5;
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  v122 = v5;
  v6 = *(a4 + 32);
  if (v6)
  {
    v7 = 0;
    v8 = *(a4 + 16);
    while (1)
    {
      v9 = *v8;
      v8 += 20;
      if (v9 < 0)
      {
        break;
      }

      v7 = (v7 + 1);
      if (v6 == v7)
      {
        LODWORD(v7) = *(a4 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 == v6)
  {
    goto LABEL_12;
  }

  v14 = *(a4 + 16);
  v123 = *(a4 + 32);
  do
  {
    v15 = v14 + 80 * v7;
    v17 = *(v15 + 40);
    v16 = v15 + 40;
    v128 = v16 - 32;
    if (!v17)
    {
      v23 = *re::pipelineLogObjects(a1);
      a1 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        if (*(v128 + 8))
        {
          v24 = *(v128 + 16);
        }

        else
        {
          v24 = v128 + 9;
        }

        v159[0].i32[0] = 136315394;
        *(v159[0].i64 + 4) = a3;
        v159[0].i16[6] = 2080;
        *(&v159[0].i64[1] + 6) = v24;
        _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "%s: skipping constant: %s, Parsed parameters contained invalid types. All floats/arrays must be string data.", v159, 0x16u);
      }

      goto LABEL_206;
    }

    v127 = v16;
    v148 = 3;
    v18 = re::StringID::invalid(v159);
    v149 = v159[0].i64[0] >> 1;
    if (v159[0].i8[0])
    {
      if (v159[0].i8[0])
      {
      }
    }

    v150 = 0;
    re::StringID::invalid(&v151);
    v19 = *(v128 + 8);
    if ((v19 & 1) == 0)
    {
      v20 = v19 >> 8;
      v21 = (v128 + 9);
      v22 = v127;
      goto LABEL_29;
    }

    v21 = *(v128 + 16);
    v22 = v127;
    if (v21)
    {
      LOBYTE(v20) = *v21;
LABEL_29:
      if (v20)
      {
        v20 = v20;
        v25 = v21[1];
        if (v25)
        {
          v26 = v21 + 2;
          do
          {
            v20 = 31 * v20 + v25;
            v27 = *v26++;
            v25 = v27;
          }

          while (v27);
        }

        v28 = v20 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = 0;
      }

      goto LABEL_36;
    }

    v28 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_36:
    v149 = v28;
    v159[0].i8[0] = 46;
    v160.i64[1] = 0;
    memset(&v159[0].u32[2], 0, 24);
    v160.i32[0] = 0;
    if (*(v22 + 8))
    {
      v29 = *(v22 + 16);
    }

    else
    {
      v29 = (v22 + 9);
    }

    re::TokenizedMember::tokenize(v159, v29);
    if (v159[1].i64[1] == 2)
    {
      v30 = re::TokenizedMember::operator[](2uLL, v160.i64[1], 0);
      if (re::MaterialManager::isEngineDefinedConstantBufferTable(v30, v31))
      {
        v148 = 1;
        v32 = re::TokenizedMember::operator[](v159[1].u64[1], v160.i64[1], 0);
        v33 = 0;
        while (strcmp(re::s_materialTableIDMappings[v33], v32))
        {
          if (++v33 == 168)
          {
            LOBYTE(v33) = 0;
            break;
          }
        }

        v150 = v33;
        v34 = re::TokenizedMember::operator[](v159[1].u64[1], v160.i64[1], 1u);
        *v155 = 0;
        *&v155[8] = &str_67;
        v36 = *v155;
        v37 = *&v155[8];
        *v155 = 0;
        *&v155[8] = &str_67;
        var0 = v151.var0;
        *&v151.var0 = v36;
        v151.var1 = v37;
        if (var0)
        {
          if (v155[0])
          {
            if (v155[0])
            {
            }
          }
        }
      }
    }

    re::TokenizedMember::deinit(v159);
    v40 = v159[0].i64[1];
    if (v159[0].i64[1] && v160.i64[1])
    {
      v40 = (*(*v159[0].i64[1] + 40))(v159[0].i64[1]);
    }

    v41 = v148;
    if (v148 != 3)
    {
      goto LABEL_199;
    }

    v42 = *(v127 + 8);
    if (v42)
    {
      v44 = *(v127 + 16);
      v43 = *v44;
    }

    else
    {
      v43 = BYTE1(v42);
      v44 = (v127 + 9);
    }

    v157 = 0;
    memset(v155, 0, sizeof(v155));
    v156 = 0;
    if (v43)
    {
LABEL_57:
      memset(v159, 0, sizeof(v159));
      re::DynamicString::setCapacity(v159, 0);
      --v44;
      do
      {
        v47 = *++v44;
        v46 = v47;
      }

      while (v47 == 32);
      while ((v46 - 32) <= 0x3B && ((1 << (v46 - 32)) & 0x800000000001001) != 0)
      {
        v48 = *++v44;
        v46 = v48;
      }

      while (1)
      {
        if (v46 != 32)
        {
          if (!v46 || v46 == 93)
          {
            if (v46 == 93)
            {
              ++v44;
            }

            if (v159[0].i8[8])
            {
              v50 = v159[0].i64[1] >> 1;
            }

            else
            {
              v50 = v159[0].i8[8] >> 1;
            }

            if (v50)
            {
              v45.n128_f64[0] = re::DynamicArray<re::DynamicString>::add(v155, v159);
            }

            v40 = v159[0].i64[0];
            if (v159[0].i64[0] && (v159[0].i8[8] & 1) != 0)
            {
              v40 = (*(*v159[0].i64[0] + 40))(v45);
            }

            if (!*v44)
            {
              break;
            }

            goto LABEL_57;
          }

          __src[0] = v46;
          re::DynamicString::append(v159, __src, 1uLL);
        }

        v49 = *++v44;
        v46 = v49;
      }
    }

    v124 = v7;
    v147 = 0;
    v51 = v128;
    if (*(v128 + 8))
    {
      v52 = *(v128 + 16);
    }

    else
    {
      v52 = v128 + 9;
    }

    if (*(v127 + 8))
    {
      v53 = *(v127 + 16);
    }

    else
    {
      v53 = v127 + 9;
    }

    v131 = v53;
    v54 = *&v155[16];
    v146 = 0;
    v143 = 0;
    v144 = 0;
    *__src = 0;
    v145 = 0;
    if (!*&v155[16])
    {
      v4 = a4;
      LODWORD(v6) = v123;
      goto LABEL_192;
    }

    v55 = 0;
    v56 = 0;
    v57 = v157;
    v129 = v157 + 32 * *&v155[16];
    v130 = *&v155[16];
    do
    {
      v160.i64[1] = 0;
      memset(&v159[0].u32[2], 0, 24);
      v160.i32[0] = 0;
      v159[0].i8[0] = 44;
      if (*(v57 + 8))
      {
        v58 = *(v57 + 16);
      }

      else
      {
        v58 = (v57 + 9);
      }

      v59 = re::TokenizedMember::tokenize(v159, v58);
      if (v54 >= 2)
      {
        if (v55)
        {
          if (v159[1].i64[1] != v55)
          {
            v60 = *re::graphicsLogObjects(v59);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = v52;
              *&buf[12] = 2080;
              *&buf[14] = v131;
              _os_log_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_DEFAULT, "Inconsistent parameter constant vector size for key '%s' with value '%s'", buf, 0x16u);
            }
          }
        }

        else
        {
          v55 = v159[1].i64[1];
        }
      }

      v132 = v55;
      v153 = 0;
      v152 = 0.0;
      if (v159[1].i64[1])
      {
        v61 = 0;
        while (1)
        {
          v62 = *(v160.i64[1] + 8 * v61);
          if (strcasecmp(v62, "true"))
          {
            break;
          }

          re::validateParsedType(&v147, v52, v62, 2, "BOOL");
          buf[0] = 1;
LABEL_148:
          re::DynamicArray<unsigned char>::add(__src, buf);
LABEL_149:
          if (v159[1].i64[1] <= ++v61)
          {
            goto LABEL_152;
          }
        }

        if (!strcasecmp(v62, "false"))
        {
          re::validateParsedType(&v147, v52, v62, 2, "BOOL");
LABEL_147:
          buf[0] = 0;
          goto LABEL_148;
        }

        v63 = strlen(v62);
        if (!v63)
        {
          re::internal::assertLog(4, v64, "assertion failure: '%s' (%s:line %i) ", "tokenLen > 0", "makeConstantBytes", 902);
          _os_crash();
          __break(1u);
LABEL_281:
          __endptr = 0;
          v161 = 0u;
          v162 = 0u;
          v160 = 0u;
          memset(v159, 0, sizeof(v159));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *&buf[4] = "operator[]";
          *&buf[12] = 1024;
          *&buf[14] = 789;
          *&buf[18] = 2048;
          *&buf[20] = v62;
          *&buf[28] = 2048;
          *&buf[30] = v57;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v65 = v63;
        while ((v144 & 3) != 0)
        {
          buf[0] = 0;
          re::DynamicArray<unsigned char>::add(__src, buf);
        }

        if ((v61 - 3) <= 1)
        {
          v66 = v159[1].i64[1];
          if (v159[1].i64[1] - 1 == v61)
          {
            v67 = *v62;
            if (v67 < 0 || v67 != 45 && (*(MEMORY[0x1E69E9830] + 4 * v67 + 60) & 0x400) == 0)
            {
              re::ColorHelpers::getColorGamutFromSerializationLiteral(v62, buf);
              if (buf[0] == 1)
              {
                v68 = v147;
                if (v147 == 1)
                {
                  v68 = 0;
                }

                v147 = v68;
                if (v61 == 3)
                {
                  v69 = "color3";
                }

                else
                {
                  v69 = "color4";
                }

                if (v61 == 3)
                {
                  v70 = 20;
                }

                else
                {
                  v70 = 21;
                }

                re::validateParsedType(&v147, v52, v62, v70, v69);
                if (v61 == 3)
                {
                  LOBYTE(__endptr) = 0;
                  re::DynamicArray<unsigned char>::add(__src, &__endptr);
                  LOBYTE(__endptr) = 0;
                  re::DynamicArray<unsigned char>::add(__src, &__endptr);
                  LOBYTE(__endptr) = 0;
                  re::DynamicArray<unsigned char>::add(__src, &__endptr);
                  LOBYTE(__endptr) = 0;
                  re::DynamicArray<unsigned char>::add(__src, &__endptr);
                }

                LODWORD(v153) = buf[1];
                v71 = &v153;
LABEL_141:
                re::DynamicArray<unsigned char>::add(__src, v71);
                re::DynamicArray<unsigned char>::add(__src, v71 + 1);
                re::DynamicArray<unsigned char>::add(__src, v71 + 2);
                re::DynamicArray<unsigned char>::add(__src, v71 + 3);
                ++v56;
                if (v159[1].i64[1] == 3)
                {
                  if ((-1431655765 * v61 - 1431655766) > 0x55555554)
                  {
                    goto LABEL_149;
                  }
                }

                else if ((-1431655765 * v61 - 1431655766) > 0x55555554 || v159[1].i64[1] != 9)
                {
                  goto LABEL_149;
                }

                buf[0] = 0;
                re::DynamicArray<unsigned char>::add(__src, buf);
                buf[0] = 0;
                re::DynamicArray<unsigned char>::add(__src, buf);
                buf[0] = 0;
                re::DynamicArray<unsigned char>::add(__src, buf);
                goto LABEL_147;
              }
            }
          }

          if (v61 == 4 && v66 == 5)
          {
            v72 = *v62;
            if ((v72 < 0 || v72 != 45 && (*(MEMORY[0x1E69E9830] + 4 * v72 + 60) & 0x400) == 0) && !strcmp(v62, "matrix"))
            {
              v147 = 48;
              goto LABEL_149;
            }
          }
        }

        v73 = &v62[v65];
        v75 = &v62[v65 - 1];
        v74 = *v75;
        __endptr = 0;
        switch(v74)
        {
          case 'f':
            v73 = &v62[v65 - 1];
            break;
          case 'u':
            re::validateParsedType(&v147, v52, v62, 7, "uint");
            v76 = strtoul(v62, &__endptr, 10);
            LODWORD(v153) = v76;
            v71 = &v153;
            goto LABEL_137;
          case 'i':
            re::validateParsedType(&v147, v52, v62, 3, "int");
            v76 = strtol(v62, &__endptr, 10);
            HIDWORD(v153) = v76;
            v71 = &v153 + 1;
            goto LABEL_137;
        }

        re::validateParsedType(&v147, v52, v62, 1, "float");
        v152 = strtof(v62, &__endptr);
        v71 = &v152;
        v75 = v73;
LABEL_137:
        if (__endptr != v75 || __endptr == v62)
        {
          v77 = *re::graphicsLogObjects(v76);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v52;
            *&buf[12] = 2080;
            *&buf[14] = v131;
            *&buf[22] = 2080;
            *&buf[24] = v62;
            _os_log_impl(&dword_1E1C61000, v77, OS_LOG_TYPE_DEFAULT, "Invalid token found while parsing key '%s' with value '%s': %s", buf, 0x20u);
          }
        }

        goto LABEL_141;
      }

LABEL_152:
      re::TokenizedMember::deinit(v159);
      v55 = v132;
      if (v159[0].i64[1] && v160.i64[1])
      {
        (*(*v159[0].i64[1] + 40))();
      }

      v57 += 32;
      v54 = v130;
    }

    while (v57 != v129);
    LOBYTE(v54) = v147;
    if (v147 == 1)
    {
      v78 = v56;
      LODWORD(v6) = v123;
      LODWORD(v7) = v124;
      v51 = v128;
      if (v56 <= 3u)
      {
        v4 = a4;
        if (v78 == 2)
        {
          LOBYTE(v54) = 32;
        }

        else
        {
          if (v78 != 3)
          {
            goto LABEL_192;
          }

          LOBYTE(v54) = 33;
        }
      }

      else
      {
        v4 = a4;
        switch(v78)
        {
          case 4:
            LOBYTE(v54) = 34;
            break;
          case 9:
            LOBYTE(v54) = 49;
            break;
          case 16:
            LOBYTE(v54) = 50;
            break;
          default:
            goto LABEL_192;
        }
      }

      goto LABEL_180;
    }

    LODWORD(v6) = v123;
    LODWORD(v7) = v124;
    v51 = v128;
    if (v147 == 3)
    {
      if ((v56 - 2) >= 3u)
      {
        LOBYTE(v54) = 3;
        goto LABEL_171;
      }

      LOBYTE(v54) = v56 + 2;
LABEL_180:
      v147 = v54;
LABEL_181:
      v4 = a4;
      if ((v54 & 0xFE) == 0x14)
      {
        v57 = v144;
        v62 = (v144 - 4);
        if (v144 <= 3)
        {
          goto LABEL_281;
        }

        v7 = v146;
        v79 = v62[v146];
        v80 = *v146;
        v81 = HIDWORD(*&v146[1]);
        *&buf[4] = vzip1_s32((*v146->i8 >> 32), v146[1]);
        *buf = v80.i32[0];
        *&buf[12] = v81;
        buf[16] = v79;
        re::ShaderParameterTableBuilder::addOriginalColorConstant(v126, v51, buf, v54);
        v82 = v122;
        if (v79 != v122)
        {
          if (buf[16] == v122)
          {
            v83.i64[0] = *buf;
            v84 = *&buf[8];
            v85 = *&buf[12];
          }

          else
          {
            re::ColorHelpers::computeGamutTransformMatrix(buf[16], v122, v159);
            v82 = v122;
            v85 = *&buf[12];
            v86 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v159[0], *buf), v159[1], *&buf[4]), v160, *&buf[8]);
            v86.i32[3] = 0;
            v83 = vmaxnmq_f32(v86, 0);
            v84 = v83.i32[2];
          }

          *buf = v83.i64[0];
          *&buf[8] = v84;
          *&buf[12] = v85;
          buf[16] = v82;
        }

        if (v54 == 20)
        {
          LOBYTE(v54) = 33;
        }

        else
        {
          LOBYTE(v54) = 34;
        }

        v147 = v54;
        *v7->i8 = *buf;
        re::DynamicArray<BOOL>::resize(__src, v62);
        LODWORD(v6) = v123;
        LODWORD(v7) = v124;
        v51 = v128;
      }

      goto LABEL_192;
    }

    if (v147 != 7)
    {
      goto LABEL_181;
    }

    if ((v56 - 2) < 3u)
    {
      LOBYTE(v54) = v56 + 6;
      goto LABEL_180;
    }

    LOBYTE(v54) = 7;
LABEL_171:
    v4 = a4;
LABEL_192:
    v148 = 0;
    v159[0].i64[0] = v146;
    v159[0].i64[1] = v144;
    re::ShaderParameterTableBuilder::addConstant(v126, v51, v159, v54);
    if (*__src && v146)
    {
      (*(**__src + 40))();
    }

    v87 = re::DynamicArray<re::DynamicString>::deinit(v155);
    v41 = v148;
    if (v148 == 3)
    {
      v88 = *re::pipelineLogObjects(v87);
      a1 = os_log_type_enabled(v88, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        if (*(v128 + 8))
        {
          v89 = *(v128 + 16);
        }

        else
        {
          v89 = v128 + 9;
        }

        if (*(v127 + 8))
        {
          v91 = *(v127 + 16);
        }

        else
        {
          v91 = v127 + 9;
        }

        v159[0].i32[0] = 136315394;
        *(v159[0].i64 + 4) = v89;
        v159[0].i16[6] = 2080;
        *(&v159[0].i64[1] + 6) = v91;
        _os_log_error_impl(&dword_1E1C61000, v88, OS_LOG_TYPE_ERROR, "Invalid constant %s: %s", v159, 0x16u);
      }

      goto LABEL_203;
    }

LABEL_199:
    v138 = v41;
    v139 = v149;
    v140 = v150;
    re::StringID::StringID(v141, &v151);
    a1 = re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v126, v128, &v138);
    if (v141[0])
    {
      if (v141[0])
      {
      }
    }

    v141[0] = 0;
    v141[1] = &str_67;
    v139 = 0;
LABEL_203:
    if (*&v151.var0)
    {
      if (*&v151.var0)
      {
      }
    }

LABEL_206:
    if (*(v4 + 32) <= (v7 + 1))
    {
      v90 = v7 + 1;
    }

    else
    {
      v90 = *(v4 + 32);
    }

    v14 = *(v4 + 16);
    while (v90 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(v14 + 80 * v7) & 0x80000000) != 0)
      {
        goto LABEL_214;
      }
    }

    LODWORD(v7) = v90;
LABEL_214:
    ;
  }

  while (v7 != v6);
LABEL_12:
  v10 = *(v4 + 80);
  if (v10)
  {
    v11 = 0;
    v12 = *(v4 + 64);
    while (1)
    {
      v13 = *v12;
      v12 += 20;
      if (v13 < 0)
      {
        break;
      }

      if (v10 == ++v11)
      {
        LODWORD(v11) = *(v4 + 80);
        break;
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v11 != v10)
  {
    v92 = *(v4 + 64);
    while (1)
    {
      v148 = 3;
      v93 = re::StringID::invalid(v159);
      v149 = v159[0].i64[0] >> 1;
      if (v159[0].i8[0])
      {
        if (v159[0].i8[0])
        {
        }
      }

      v94 = v92 + 80 * v11;
      v95 = v94 + 8;
      v150 = 0;
      re::StringID::invalid(&v151);
      v96 = *(v94 + 16);
      if ((v96 & 1) == 0)
      {
        break;
      }

      v98 = *(v94 + 24);
      if (v98)
      {
        LOBYTE(v97) = *v98;
LABEL_231:
        if (v97)
        {
          v97 = v97;
          v99 = v98[1];
          if (v99)
          {
            v100 = v98 + 2;
            do
            {
              v97 = 31 * v97 + v99;
              v101 = *v100++;
              v99 = v101;
            }

            while (v101);
          }

          v102 = v97 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v102 = 0;
        }

        goto LABEL_238;
      }

      v102 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_238:
      v103 = v94 + 40;
      v149 = v102;
      v159[0].i8[0] = 46;
      v160.i64[1] = 0;
      memset(&v159[0].u32[2], 0, 24);
      v160.i32[0] = 0;
      if (*(v94 + 48))
      {
        v104 = *(v94 + 56);
      }

      else
      {
        v104 = (v94 + 49);
      }

      isEngineDefinedBufferTable = re::TokenizedMember::tokenize(v159, v104);
      if (v159[1].i64[1] == 2)
      {
        v106 = re::TokenizedMember::operator[](2uLL, v160.i64[1], 0);
        isEngineDefinedBufferTable = re::MaterialManager::isEngineDefinedBufferTable(v106, v107);
        if (isEngineDefinedBufferTable)
        {
          v148 = 1;
          v108 = re::TokenizedMember::operator[](v159[1].u64[1], v160.i64[1], 0);
          v109 = 0;
          while (strcmp(re::s_materialTableIDMappings[v109], v108))
          {
            if (++v109 == 168)
            {
              LOBYTE(v109) = 0;
              break;
            }
          }

          v150 = v109;
          v110 = re::TokenizedMember::operator[](v159[1].u64[1], v160.i64[1], 1u);
          *v155 = 0;
          *&v155[8] = &str_67;
          v111 = *v155;
          v112 = *&v155[8];
          *v155 = 0;
          *&v155[8] = &str_67;
          v113 = v151.var0;
          var1 = v151.var1;
          *&v151.var0 = v111;
          v151.var1 = v112;
          if (v113)
          {
            if (v155[0])
            {
              if (v155[0])
              {
              }
            }
          }

          v4 = a4;
        }
      }

      if (v148 == 3)
      {
        v115 = *re::pipelineLogObjects(isEngineDefinedBufferTable);
        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          if (*(v95 + 8))
          {
            v116 = *(v95 + 16);
          }

          else
          {
            v116 = v95 + 9;
          }

          if (*(v103 + 8))
          {
            v120 = *(v103 + 16);
          }

          else
          {
            v120 = v103 + 9;
          }

          *v155 = 136315394;
          *&v155[4] = v116;
          *&v155[12] = 2080;
          *&v155[14] = v120;
          _os_log_error_impl(&dword_1E1C61000, v115, OS_LOG_TYPE_ERROR, "Invalid buffer binding %s: %s", v155, 0x16u);
        }
      }

      else
      {
        v133 = v148;
        v134 = v149;
        v135 = v150;
        re::StringID::StringID(&v136, &v151);
        v117 = re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v126 + 48, v95, &v133);
        if (v136)
        {
          if (v136)
          {
          }
        }

        v136 = 0;
        v137 = &str_67;
        v134 = 0;
      }

      re::TokenizedMember::deinit(v159);
      v118 = v159[0].i64[1];
      if (v159[0].i64[1] && v160.i64[1])
      {
        v118 = (*(*v159[0].i64[1] + 40))();
      }

      if (*&v151.var0)
      {
        if (*&v151.var0)
        {
        }
      }

      v119 = *(v4 + 80);
      if (v119 <= v11 + 1)
      {
        v119 = v11 + 1;
      }

      v92 = *(v4 + 64);
      while (v119 - 1 != v11)
      {
        LODWORD(v11) = v11 + 1;
        if ((*(v92 + 80 * v11) & 0x80000000) != 0)
        {
          goto LABEL_273;
        }
      }

      LODWORD(v11) = v119;
LABEL_273:
      if (v11 == v10)
      {
        return;
      }
    }

    v97 = v96 >> 8;
    v98 = (v94 + 17);
    goto LABEL_231;
  }
}

re *re::TokenizedMember::tokenize(re *this, const char *a2)
{
  if (*a2)
  {
    v2 = a2;
    v3 = this;
    v4 = a2;
    do
    {
      v5 = 0;
      do
      {
        v6 = v2[++v5];
        if (v6)
        {
          v7 = v6 == *v3;
        }

        else
        {
          v7 = 1;
        }
      }

      while (!v7);
      if (v2 - v4 + v5)
      {
        v8 = v2 - v4 + v5;
        v9 = re::globalAllocators(this);
        v10 = (*(*v9[2] + 32))(v9[2], v8 + 1, 0);
        memcpy(v10, v4, v8);
        *(v10 + v8) = 0;
        this = re::DynamicArray<re::TransitionCondition *>::add(v3 + 1, &v10);
        v6 = v2[v5];
      }

      v2 += v5;
      v4 = v2 + 1;
    }

    while (v6);
  }

  return this;
}

uint64_t re::TokenizedMember::operator[](unint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= a1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 8 * a3);
}

__n128 re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v14, a2);
  re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v11, a1, a2, v6);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v12, v11);
    re::DynamicString::DynamicString((v8 + 8), a2);
    result = *a3;
    v9 = *(a3 + 16);
    v10 = *(a3 + 32);
    *(v8 + 88) = *(a3 + 48);
    *(v8 + 72) = v10;
    *(v8 + 56) = v9;
    *(v8 + 40) = result;
    ++*(a1 + 40);
  }

  return result;
}

BOOL re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v5 = *(*(a1 + 8) + 4 * (((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) % v2));
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  if (*(v7 + 16 * v5 + 8) == v3)
  {
    return 1;
  }

  do
  {
    v5 = *(v7 + 16 * v5) & 0x7FFFFFFF;
    result = v5 != 0x7FFFFFFF;
  }

  while (v5 != 0x7FFFFFFF && *(v7 + 16 * v5 + 8) != v3);
  return result;
}

double re::parseShaderParameterData@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v26 = 0x7FFFFFFFLL;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v30 = 0x7FFFFFFFLL;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v34 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  memset(v37, 0, sizeof(v37));
  v38 = 0x7FFFFFFFLL;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v41 = 0x7FFFFFFFLL;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v45 = 0x7FFFFFFFLL;
  re::generateShaderParameterTableBuilder(v24, a1, a2, a3);
  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(&v21, v24);
  v5 = v29;
  if (v29)
  {
    v6 = 0;
    v7 = v28;
    while (1)
    {
      v8 = *v7;
      v7 += 22;
      if (v8 < 0)
      {
        break;
      }

      if (v29 == ++v6)
      {
        LODWORD(v6) = v29;
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 != v29)
  {
    v9 = v28;
    do
    {
      re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v21, (v9 + 88 * v6 + 8), v9 + 88 * v6 + 40);
      if (v29 <= v6 + 1)
      {
        v10 = v6 + 1;
      }

      else
      {
        v10 = v29;
      }

      v9 = v28;
      while (v10 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(v28 + 88 * v6) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v6) = v10;
LABEL_17:
      ;
    }

    while (v6 != v5);
  }

  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = &unk_1F5CC38C8;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  *(a4 + 160) = 0;
  *(a4 + 336) = 0u;
  *(a4 + 352) = 0u;
  *(a4 + 368) = 0;
  *(a4 + 384) = 0;
  *(a4 + 392) = 0;
  *(a4 + 376) = 0;
  *(a4 + 328) = 0;
  *(a4 + 248) = 0u;
  *(a4 + 232) = 0u;
  *(a4 + 216) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 296) = 0u;
  *(a4 + 312) = 0u;
  *(a4 + 264) = 0u;
  *(a4 + 280) = 0u;
  *(a4 + 400) = 1;
  *(a4 + 408) = 0;
  *(a4 + 416) = 0;
  *(a4 + 432) = 0;
  *(a4 + 424) = 0;
  *(a4 + 440) = 0;
  *(a4 + 448) = 0;
  *(a4 + 464) = 0;
  *(a4 + 456) = 0;
  *(a4 + 512) = 0;
  *(a4 + 520) = 0;
  *(a4 + 504) = 0;
  *(a4 + 472) = 0u;
  *(a4 + 488) = 0u;
  re::ShaderParameterTableBuilder::build(v24, a4);
  *(a4 + 528) = 0u;
  *(a4 + 544) = 0u;
  *(a4 + 560) = 0x7FFFFFFF00000000;
  *(a4 + 568) = 0;
  if (v42)
  {
    v11 = HIDWORD(v43) <= 3 ? 3 : HIDWORD(v43);
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a4 + 528, v42, v11);
    v12 = v44;
    if (v44)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        if ((*(v43 + v13) & 0x80000000) != 0)
        {
          v15 = 0xBF58476D1CE4E5B9 * (*(v43 + v13 + 8) ^ (*(v43 + v13 + 8) >> 30));
          v16 = (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31);
          v17 = re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a4 + 528, v16 % *(a4 + 552), v16);
          v18 = v43 + v13;
          *(v17 + 8) = *(v43 + v13 + 8);
          v19 = *(v18 + 16);
          *(v17 + 32) = *(v18 + 32);
          *(v17 + 16) = v19;
          v12 = v44;
        }

        ++v14;
        v13 += 40;
      }

      while (v14 < v12);
    }
  }

  *(a4 + 576) = v21;
  v21 = 0uLL;
  *(a4 + 592) = v22;
  v22 = 0;
  *(a4 + 600) = v23;
  v23 = xmmword_1E3058120;
  *(a4 + 616) = 1;
  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v21);
  re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(&v42);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v39);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v37[8]);
  re::DynamicArray<re::BufferSlice>::deinit(v35 + 8);
  if (v31)
  {
    if (*&v35[0])
    {
      (*(*v31 + 40))();
    }

    *&v35[0] = 0;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    ++v34;
  }

  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v27);
  return re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v24);
}

double re::downgradeShaderParameterDataFromSpring2023@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v32 = 0x7FFFFFFFLL;
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  v35 = 0x7FFFFFFFLL;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  memset(v40, 0, sizeof(v40));
  v39 = 0;
  v41 = 0;
  memset(v42, 0, sizeof(v42));
  v43 = 0x7FFFFFFFLL;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v46 = 0x7FFFFFFFLL;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v49 = 0x7FFFFFFFLL;
  re::generateShaderParameterTableBuilder(v30, 0, "<downgrade version>", a1);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 20;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(a1 + 16);
    do
    {
      v9 = v8 + 80 * v5;
      v10 = v9 + 8;
      v11 = *(v9 + 16);
      if (v11)
      {
        v13 = *(v10 + 16);
        if (!v13)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_20;
        }

        LOBYTE(v10) = *v13;
      }

      else
      {
        v12 = v11 >> 8;
        v13 = (v10 + 9);
        LOBYTE(v10) = v12;
      }

      if (v10)
      {
        v10 = v10;
        v14 = v13[1];
        if (v14)
        {
          v15 = v13 + 2;
          do
          {
            v10 = 31 * v10 + v14;
            v16 = *v15++;
            v14 = v16;
          }

          while (v16);
        }

        v17 = v10 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = 0;
      }

LABEL_20:
      v24 = v17;
      v18 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v47, &v24);
      if (v18)
      {
        v19 = v18;
        re::ColorGamut4F::as(v18, 0, 3, &v26);
        if (*(v19 + 20) == 20)
        {
          re::DynamicString::format("[%f, %f, %f]", &v24, v26, v27, v28, v23);
        }

        else
        {
          re::DynamicString::format("[%f, %f, %f, %f]", &v24, v26, v27, v28, v29);
        }

        re::DynamicString::operator=((*(a1 + 16) + 80 * v5 + 40), &v24);
        if (v24)
        {
          if (v25)
          {
            (*(*v24 + 40))();
          }
        }
      }

      v20 = *(a1 + 32);
      if (v20 <= v5 + 1)
      {
        v21 = v5 + 1;
      }

      else
      {
        v21 = *(a1 + 32);
      }

      v8 = *(a1 + 16);
      while (v21 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 80 * v5) & 0x80000000) != 0)
        {
          goto LABEL_35;
        }
      }

      LODWORD(v5) = v21;
LABEL_35:
      ;
    }

    while (v5 != v20);
  }

  *a2 = 1;
  re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v47);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v44);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v42[8]);
  re::DynamicArray<re::BufferSlice>::deinit(&v40[1]);
  if (v36)
  {
    if (v40[0])
    {
      (*(*v36 + 40))();
    }

    v40[0] = 0;
    v37 = 0;
    v38 = 0;
    v36 = 0;
    ++v39;
  }

  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v33);
  return re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v30);
}

void re::parseTextureParameterData(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v135 = a1;
  v201 = *MEMORY[0x1E69E9840];
  v137 = 0;
  memset(v136, 0, sizeof(v136));
  v138 = 0x7FFFFFFFLL;
  v139 = 0u;
  v140 = 0u;
  v141 = 0;
  v142 = 0x7FFFFFFFLL;
  v143[1] = 0;
  v144 = 0;
  v143[0] = 0;
  v145 = 0;
  v146 = 0u;
  v147 = 0u;
  v148 = 0;
  memset(v149, 0, sizeof(v149));
  v150 = 0x7FFFFFFFLL;
  v152 = 0;
  memset(v151, 0, sizeof(v151));
  v153 = 0x7FFFFFFFLL;
  v155 = 0;
  memset(v154, 0, sizeof(v154));
  v156 = 0x7FFFFFFFLL;
  v158 = 0;
  memset(v157, 0, sizeof(v157));
  v159 = 0x7FFFFFFFLL;
  v195 = 0;
  v193 = 0u;
  v194 = 0u;
  v196 = 0x7FFFFFFFLL;
  v191 = 0;
  v189 = 0u;
  v190 = 0u;
  v192 = 0x7FFFFFFFLL;
  v4 = *(a2 + 224);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 208);
    while (1)
    {
      v7 = *v6;
      v6 += 38;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 224);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(a2 + 208);
    do
    {
      v9 = v8 + 152 * v5;
      re::OptionalMaterialSamplerData::makeSamplerData((v9 + 40), v188);
      v10 = re::MaterialSamplerData::hash(v188);
      v11 = v10;
      v12 = v10 ^ (v10 >> 30);
      if (v189)
      {
        v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v12) ^ ((0xBF58476D1CE4E5B9 * v12) >> 27));
        v14 = *(*(&v189 + 1) + 4 * ((v13 ^ (v13 >> 31)) % DWORD2(v190)));
        if (v14 != 0x7FFFFFFF)
        {
          v15 = v14;
          while (*(v190 + 32 * v15 + 8) != v10)
          {
            v15 = *(v190 + 32 * v15) & 0x7FFFFFFF;
            if (v15 == 0x7FFFFFFF)
            {
              goto LABEL_14;
            }
          }

          while (*(v190 + 32 * v14 + 8) != v10)
          {
            v14 = *(v190 + 32 * v14) & 0x7FFFFFFF;
            if (v14 == 0x7FFFFFFF)
            {
              v14 = 0x7FFFFFFFLL;
              break;
            }
          }

          v187 = *(v190 + 32 * v14 + 16);
          *buf = BYTE8(v147);
          re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v151, (v9 + 8), buf);
          re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((&v146 + 8), &v187);
          if (v187)
          {

            v187 = 0;
          }

          re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew(&v193, (v9 + 8), v188);
          goto LABEL_33;
        }
      }

LABEL_14:
      v16 = *(v135 + 5);
      re::MaterialSamplerData::makeDescriptor(v188, &v186);
      v17 = [*v16 newSamplerStateWithDescriptor_];
      if (v186)
      {

        v186 = 0;
      }

      re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew(&v193, (v9 + 8), v188);
      v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v12) ^ ((0xBF58476D1CE4E5B9 * v12) >> 27));
      v19 = v18 ^ (v18 >> 31);
      if (v189)
      {
        v20 = v19 % DWORD2(v190);
        v21 = *(*(&v189 + 1) + 4 * v20);
        if (v21 != 0x7FFFFFFF)
        {
          while (*(v190 + 32 * v21 + 8) != v11)
          {
            v21 = *(v190 + 32 * v21) & 0x7FFFFFFF;
            if (v21 == 0x7FFFFFFF)
            {
              goto LABEL_28;
            }
          }

          goto LABEL_29;
        }
      }

      else
      {
        LODWORD(v20) = 0;
      }

LABEL_28:
      v22 = re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v189, v20, v19);
      *(v22 + 8) = v11;
      *(v22 + 16) = v17;
      ++HIDWORD(v192);
LABEL_29:
      v185 = v17;
      *buf = BYTE8(v147);
      re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v151, (v9 + 8), buf);
      re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((&v146 + 8), &v185);
      a1 = v185;
      if (v185)
      {

        v185 = 0;
      }

      if (v17)
      {
      }

LABEL_33:
      if (*(a2 + 224) <= (v5 + 1))
      {
        v23 = v5 + 1;
      }

      else
      {
        v23 = *(a2 + 224);
      }

      v8 = *(a2 + 208);
      while (v23 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 152 * v5) & 0x80000000) != 0)
        {
          goto LABEL_41;
        }
      }

      LODWORD(v5) = v23;
LABEL_41:
      ;
    }

    while (v5 != v4);
  }

  memset(v188, 0, 36);
  *&v188[36] = 0x7FFFFFFFLL;
  v134 = *(a2 + 176);
  if (v134)
  {
    v24 = 0;
    v25 = *(a2 + 160);
    while (1)
    {
      v26 = *v25;
      v25 += 40;
      if (v26 < 0)
      {
        break;
      }

      if (v134 == ++v24)
      {
        LODWORD(v24) = *(a2 + 176);
        break;
      }
    }
  }

  else
  {
    LODWORD(v24) = 0;
  }

  if (v24 != v134)
  {
    v32 = *(a2 + 160);
    do
    {
      v33 = v32 + 160 * v24;
      v34 = v33 + 8;
      v35 = *(v33 + 16);
      if (v35)
      {
        v37 = *(v33 + 24);
        if (!v37)
        {
          v41 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_66;
        }

        LOBYTE(v36) = *v37;
      }

      else
      {
        v36 = v35 >> 8;
        v37 = (v33 + 17);
      }

      if (v36)
      {
        v36 = v36;
        v38 = v37[1];
        if (v38)
        {
          v39 = v37 + 2;
          do
          {
            v36 = 31 * v36 + v38;
            v40 = *v39++;
            v38 = v40;
          }

          while (v40);
        }

        v41 = v36 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v41 = 0;
      }

LABEL_66:
      *buf = v41;
      v42 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) >> 27));
      v43 = v42 ^ (v42 >> 31);
      if (*&v188[24])
      {
        v44 = v43 % *&v188[24];
        v45 = *(*&v188[8] + 4 * v44);
        if (v45 != 0x7FFFFFFF)
        {
          while (*(*&v188[16] + 16 * v45 + 8) != v41)
          {
            v45 = *(*&v188[16] + 16 * v45) & 0x7FFFFFFF;
            if (v45 == 0x7FFFFFFF)
            {
              goto LABEL_72;
            }
          }

          goto LABEL_73;
        }
      }

      else
      {
        LODWORD(v44) = 0;
      }

LABEL_72:
      re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addAsMove(v188, v44, v43, buf, buf);
      ++*&v188[40];
LABEL_73:
      v181 = 3;
      v46 = re::StringID::invalid(buf);
      v182 = *buf >> 1;
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v183 = 0;
      v47 = re::StringID::invalid(&v184);
      if (*(v33 + 16))
      {
        v48 = *(v33 + 24);
      }

      else
      {
        v48 = (v33 + 17);
      }

      v49 = v33 + 40;
      v172 = 0;
      v173 = &str_67;
      v182 = v172 >> 1;
      v51 = re::MaterialTextureParam::serializationString(v49, v50);
      isColorTextureParameter = re::MaterialAsset::isColorTextureParameter(&v172, v52);
      re::tryLoadTexture(&v160, v135, v49, isColorTextureParameter);
      if (v160 == 1)
      {
        re::TextureHandle::TextureHandle(v180, &v161);
        *buf = v144;
        re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v149[8], v34, buf);
        re::DynamicArray<re::TextureHandle>::add(v143, v180);
        re::TextureHandle::invalidate(v180);
        v181 = 2;
        *buf = 0;
        *&buf[8] = &str_67;
        v56 = *buf;
        v57 = *&buf[8];
        *buf = 0;
        *&buf[8] = &str_67;
        var0 = v184.var0;
        var1 = v184.var1;
        v184.var1 = v57;
        *&v184.var0 = v56;
        if (var0)
        {
          if (buf[0])
          {
            if (buf[0])
            {
            }
          }
        }

        v183 = 0;
      }

      else
      {
        buf[0] = 46;
        v200 = 0;
        *&buf[16] = 0;
        v198 = 0;
        *&buf[8] = 0;
        v199 = 0;
        re::TokenizedMember::tokenize(buf, v51);
        if (v198 == 2)
        {
          v62 = v200;
          if (re::MaterialManager::isEngineDefinedTextureTable(*v200, v61))
          {
            v181 = 1;
            v63 = re::TokenizedMember::operator[](2uLL, v62, 0);
            v64 = 0;
            while (strcmp(re::s_materialTableIDMappings[v64], v63))
            {
              if (++v64 == 168)
              {
                LOBYTE(v64) = 0;
                break;
              }
            }

            v183 = v64;
            v65 = re::TokenizedMember::operator[](v198, v200, 1u);
            v168 = 0;
            v169[0] = &str_67;
            v67 = v168;
            v68 = v169[0];
            v169[0] = &str_67;
            v168 = 0;
            v69 = v184.var0;
            v70 = v184.var1;
            v184.var1 = v68;
            *&v184.var0 = v67;
            if (v69)
            {
              if (v168)
              {
                if (v168)
                {
                }
              }
            }
          }
        }

        re::TokenizedMember::deinit(buf);
        if (*&buf[8] && v200)
        {
          (*(**&buf[8] + 40))(*&buf[8]);
        }
      }

      v72 = re::Hash<re::DynamicString>::operator()(buf, v49 + 40);
      v73 = re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, &v193, v49 + 40, v72);
      if (*&buf[12] == 0x7FFFFFFF)
      {
        v74 = *(v49 + 48);
        if (v74)
        {
          v75 = v74 >> 1;
        }

        else
        {
          v75 = v74 >> 1;
        }

        if (v75)
        {
          v76 = *re::pipelineLogObjects(v73);
          v73 = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);
          if (v73)
          {
            if (*(v34 + 8))
            {
              v77 = *(v34 + 16);
            }

            else
            {
              v77 = v34 + 9;
            }

            if (*(v49 + 48))
            {
              v84 = *(v49 + 56);
            }

            else
            {
              v84 = v49 + 49;
            }

            *buf = 136315394;
            *&buf[4] = v77;
            *&buf[12] = 2080;
            *&buf[14] = v84;
            _os_log_error_impl(&dword_1E1C61000, v76, OS_LOG_TYPE_ERROR, "Invalid sampler binding on texture block %s: %s", buf, 0x16u);
          }
        }
      }

      else
      {
        v78 = re::MaterialSamplerData::hash((v194 + 104 * *&buf[12] + 40));
        v73 = re::TextureParameterTableBuilder::bindTextureToSampler(v136, v34, (v49 + 40), v78);
      }

      if (*(v49 + 104) == 1)
      {
        if (*(v49 + 108) >= 2u)
        {
          v79 = *re::pipelineLogObjects(v73);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v34 + 8))
            {
              v80 = *(v34 + 16);
            }

            else
            {
              v80 = v34 + 9;
            }

            *buf = 136315138;
            *&buf[4] = v80;
            _os_log_impl(&dword_1E1C61000, v79, OS_LOG_TYPE_DEFAULT, "Texture block %s has uv index > 1; this will be clamped to 1 in RE Pbr materials", buf, 0xCu);
          }
        }

        *buf = *(v49 + 108);
        v73 = re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v157, v34, buf);
      }

      if (v181 == 3)
      {
        v81 = *re::pipelineLogObjects(v73);
        a1 = os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);
        if (a1)
        {
          if (*(v34 + 8))
          {
            v82 = *(v34 + 16);
          }

          else
          {
            v82 = v34 + 9;
          }

          *buf = 136315394;
          *&buf[4] = v82;
          *&buf[12] = 2080;
          *&buf[14] = v51;
          _os_log_error_impl(&dword_1E1C61000, v81, OS_LOG_TYPE_ERROR, "Invalid texture binding %s: %s", buf, 0x16u);
        }
      }

      else
      {
        v176 = v181;
        v177 = v182;
        v178 = v183;
        v179 = v184;
        v184.var1 = &str_67;
        *&v184.var0 = 0;
        a1 = re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v136, v34, &v176);
        if (*&v179.var0)
        {
          if (*&v179.var0)
          {
          }
        }

        v179.var1 = &str_67;
        *&v179.var0 = 0;
        v177 = 0;
      }

      if (v160 == 1)
      {
        re::TextureHandle::invalidate(&v161);
      }

      if (v172)
      {
        if (v172)
        {
        }
      }

      if (*&v184.var0)
      {
        if (*&v184.var0)
        {
        }
      }

      if (*(a2 + 176) <= (v24 + 1))
      {
        v83 = v24 + 1;
      }

      else
      {
        v83 = *(a2 + 176);
      }

      v32 = *(a2 + 160);
      while (v83 - 1 != v24)
      {
        LODWORD(v24) = v24 + 1;
        if ((*(v32 + 160 * v24) & 0x80000000) != 0)
        {
          goto LABEL_139;
        }
      }

      LODWORD(v24) = v83;
LABEL_139:
      ;
    }

    while (v24 != v134);
  }

  v174 = 0;
  v173 = 0;
  v175 = 0;
  v27 = re::DynamicString::setCapacity(&v172, 0);
  v28 = *(a2 + 128);
  if (v28)
  {
    v29 = 0;
    v30 = *(a2 + 112);
    while (1)
    {
      v31 = *v30;
      v30 += 22;
      if (v31 < 0)
      {
        break;
      }

      if (v28 == ++v29)
      {
        LODWORD(v29) = *(a2 + 128);
        break;
      }
    }
  }

  else
  {
    LODWORD(v29) = 0;
  }

  if (v29 != v28)
  {
    v92 = *(a2 + 112);
    while (1)
    {
      v93 = (v92 + 88 * v29);
      v94 = (v93 + 1);
      v95 = v93[2];
      if ((v95 & 1) == 0)
      {
        break;
      }

      v97 = v93[3];
      if (v97)
      {
        LOBYTE(v96) = *v97;
LABEL_167:
        if (v96)
        {
          v96 = v96;
          v98 = v97[1];
          if (v98)
          {
            v99 = v97 + 2;
            do
            {
              v96 = 31 * v96 + v98;
              v100 = *v99++;
              v98 = v100;
            }

            while (v100);
          }

          v101 = v96 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v101 = 0;
        }

        goto LABEL_174;
      }

      v101 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_174:
      *buf = v101;
      if (re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(v188, buf))
      {
        if (v93[2])
        {
          v102 = v93[3];
        }

        else
        {
          v102 = v93 + 17;
        }

        v27 = re::DynamicString::appendf(&v172, "%s, ", v102);
      }

      else
      {
        v181 = 3;
        v103 = re::StringID::invalid(buf);
        v182 = *buf >> 1;
        if (buf[0])
        {
          if (buf[0])
          {
          }
        }

        v183 = 0;
        v104 = re::StringID::invalid(&v184);
        if (v93[2])
        {
          v105 = v93[3];
        }

        else
        {
          v105 = v93 + 17;
        }

        v170 = 0;
        v171 = &str_67;
        v182 = v170 >> 1;
        v107 = re::MaterialTextureParam::serializationString((v93 + 5), v106);
        v108 = strcmp(v107, "null");
        if (v108)
        {
          v110 = re::MaterialAsset::isColorTextureParameter(&v170, v109);
          re::tryLoadTexture(&v168, v135, v93 + 5, v110);
          if (v168 == 1)
          {
            re::TextureHandle::TextureHandle(v167, v169);
            *buf = v144;
            re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v149[8], (v93 + 1), buf);
            re::DynamicArray<re::TextureHandle>::add(v143, v167);
            re::TextureHandle::invalidate(v167);
            v181 = 2;
            *buf = 0;
            *&buf[8] = &str_67;
            v112 = *buf;
            v113 = *&buf[8];
            *buf = 0;
            *&buf[8] = &str_67;
            v114 = v184.var0;
            v115 = v184.var1;
            v184.var1 = v113;
            *&v184.var0 = v112;
            if (v114)
            {
              if (buf[0])
              {
                if (buf[0])
                {
                }
              }
            }

            v183 = 0;
          }

          else
          {
            buf[0] = 46;
            v200 = 0;
            *&buf[16] = 0;
            v198 = 0;
            *&buf[8] = 0;
            v199 = 0;
            re::TokenizedMember::tokenize(buf, v107);
            if (v198 == 2)
            {
              v117 = v200;
              if (re::MaterialManager::isEngineDefinedTextureTable(*v200, v116))
              {
                v181 = 1;
                v118 = re::TokenizedMember::operator[](2uLL, v117, 0);
                v119 = 0;
                while (strcmp(re::s_materialTableIDMappings[v119], v118))
                {
                  if (++v119 == 168)
                  {
                    LOBYTE(v119) = 0;
                    break;
                  }
                }

                v183 = v119;
                v120 = re::TokenizedMember::operator[](v198, v200, 1u);
                v165 = 0;
                v166 = &str_67;
                v122 = v165;
                v123 = v166;
                v166 = &str_67;
                v165 = 0;
                v124 = v184.var0;
                v125 = v184.var1;
                v184.var1 = v123;
                *&v184.var0 = v122;
                if (v124)
                {
                  if (v165)
                  {
                    if (v165)
                    {
                    }
                  }
                }
              }
            }

            re::TokenizedMember::deinit(buf);
            v108 = *&buf[8];
            if (*&buf[8] && v200)
            {
              v108 = (*(**&buf[8] + 40))();
            }
          }

          if (v168 == 1)
          {
            re::TextureHandle::invalidate(v169);
          }
        }

        else
        {
          v181 = 1;
          v183 = 0;
          if (*&v184.var0)
          {
            if (*&v184.var0)
            {
            }
          }

          v184.var1 = "null";
          *&v184.var0 = 6785806;
        }

        if (v181 == 3)
        {
          v127 = *re::pipelineLogObjects(v108);
          v27 = os_log_type_enabled(v127, OS_LOG_TYPE_ERROR);
          if (v27)
          {
            if (*(v94 + 8))
            {
              v128 = *(v94 + 2);
            }

            else
            {
              v128 = v94 + 9;
            }

            *buf = 136315394;
            *&buf[4] = v128;
            *&buf[12] = 2080;
            *&buf[14] = v107;
            _os_log_error_impl(&dword_1E1C61000, v127, OS_LOG_TYPE_ERROR, "Invalid texture binding %s: %s", buf, 0x16u);
          }
        }

        else
        {
          v160 = v181;
          v161 = v182;
          v162 = v183;
          re::StringID::StringID(&v163, &v184);
          v27 = re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v136, v94, &v160);
          if (v163)
          {
            if (v163)
            {
            }
          }

          v163 = 0;
          v164 = &str_67;
          v161 = 0;
        }

        if (v170)
        {
          if (v170)
          {
          }
        }

        if (*&v184.var0)
        {
          if (*&v184.var0)
          {
          }
        }
      }

      if (*(a2 + 128) <= (v29 + 1))
      {
        v129 = v29 + 1;
      }

      else
      {
        v129 = *(a2 + 128);
      }

      v92 = *(a2 + 112);
      while (v129 - 1 != v29)
      {
        LODWORD(v29) = v29 + 1;
        if ((*(v92 + 88 * v29) & 0x80000000) != 0)
        {
          goto LABEL_233;
        }
      }

      LODWORD(v29) = v129;
LABEL_233:
      if (v29 == v28)
      {
        goto LABEL_150;
      }
    }

    v96 = v95 >> 8;
    v97 = v93 + 17;
    goto LABEL_167;
  }

LABEL_150:
  v85 = v173;
  v86 = v173 >> 1;
  if ((v173 & 1) == 0)
  {
    v86 = v173 >> 1;
  }

  if (v86)
  {
    v87 = *re::pipelineLogObjects(v27);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
    {
      v132 = v174;
      if ((v85 & 1) == 0)
      {
        v132 = &v173 + 1;
      }

      *buf = 136315138;
      *&buf[4] = v132;
      _os_log_debug_impl(&dword_1E1C61000, v87, OS_LOG_TYPE_DEBUG, "Duplicate texture keys found: %s using TextureBlock entries", buf, 0xCu);
    }
  }

  if (v172 && (v173 & 1) != 0)
  {
    (*(*v172 + 40))();
  }

  re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v188);
  re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v189);
  re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v193);
  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v188, v136);
  v88 = v141;
  if (v141)
  {
    v89 = 0;
    v90 = v140;
    while (1)
    {
      v91 = *v90;
      v90 += 22;
      if (v91 < 0)
      {
        break;
      }

      if (v141 == ++v89)
      {
        LODWORD(v89) = v141;
        break;
      }
    }
  }

  else
  {
    LODWORD(v89) = 0;
  }

  if (v89 != v141)
  {
    v130 = v140;
    do
    {
      re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v188, (v130 + 88 * v89 + 8), v130 + 88 * v89 + 40);
      if (v141 <= v89 + 1)
      {
        v131 = v89 + 1;
      }

      else
      {
        v131 = v141;
      }

      v130 = v140;
      while (v131 - 1 != v89)
      {
        LODWORD(v89) = v89 + 1;
        if ((*(v140 + 88 * v89) & 0x80000000) != 0)
        {
          goto LABEL_248;
        }
      }

      LODWORD(v89) = v131;
LABEL_248:
      ;
    }

    while (v89 != v88);
  }

  *(a3 + 232) = 0;
  *(a3 + 216) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 136) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = &unk_1F5CC8148;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 316) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 336) = 0u;
  re::TextureParameterTableBuilder::build(v136, a3);
  *(a3 + 480) = *v188;
  *v188 = 0uLL;
  *(a3 + 496) = *&v188[16];
  *&v188[16] = 0;
  *(a3 + 504) = *&v188[24];
  *&v188[24] = xmmword_1E3058120;
  *(a3 + 520) = 1;
  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v188);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v157);
  re::HashTable<re::DynamicString,re::WeakStringID,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v154);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v151);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v149[8]);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(&v146 + 8);
  re::DynamicArray<re::TextureHandle>::deinit(v143);
  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v139);
  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v136);
}

uint64_t re::parseConstant(uint64_t a1, uint64_t a2, const char *a3, int a4, __int16 a5, uint64_t a6)
{
  v80 = *MEMORY[0x1E69E9840];
  *(&v77 + 1) = 0;
  v78 = 0uLL;
  re::DynamicString::setCapacity(&v77, 0);
  memset(&v79[4], 0, 64);
  *&v72 = a3;
  *(&v72 + 1) = strlen(a3);
  v12 = re::DynamicString::operator=(&v77, &v72);
  *v79 = a4;
  *&v79[2] = a5;
  if (a4 == 53)
  {
    if (*(a6 + 8))
    {
      v13 = *(a6 + 16);
    }

    else
    {
      v13 = (a6 + 9);
    }

    re::stringToLowerCase(v13, &v72);
    re::DynamicString::find(&v72, "true", 4, 0, v66);
    v15 = BYTE8(v72);
    v16 = *(&v72 + 1) >> 1;
    if ((BYTE8(v72) & 1) == 0)
    {
      v16 = BYTE8(v72) >> 1;
    }

    if (v66[0] != 1 || *&v66[8] == v16)
    {
      v17 = 1;
      re::DynamicString::find(&v72, "1", 1, 0, &v70);
      v15 = BYTE8(v72);
      v18 = *(&v72 + 1) >> 1;
      if ((BYTE8(v72) & 1) == 0)
      {
        v18 = BYTE8(v72) >> 1;
      }

      if (v70 != 1 || *(&v70 + 1) == v18)
      {
        re::DynamicString::find(&v72, "false", 5, 0, v66);
        v15 = BYTE8(v72);
        v19 = *(&v72 + 1) >> 1;
        if ((BYTE8(v72) & 1) == 0)
        {
          v19 = BYTE8(v72) >> 1;
        }

        if (v66[0] != 1 || *&v66[8] == v19)
        {
          re::DynamicString::find(&v72, "0", 1, 0, &v70);
          v15 = BYTE8(v72);
          v20 = *(&v72 + 1) >> 1;
          if ((BYTE8(v72) & 1) == 0)
          {
            v20 = BYTE8(v72) >> 1;
          }

          if (v70 != 1 || *(&v70 + 1) == v20)
          {
            re::DynamicString::format("Type mismatch between function constant and material: %s[%s], %s", v66, a3, "BOOL", a2);
            v51 = *v66;
            v52 = v67;
            v53 = v68;
            *a1 = 0;
            *(a1 + 8) = v51;
            *(a1 + 24) = v52;
            *(a1 + 32) = v53;
            v54 = v72;
            if (v72 && (BYTE8(v72) & 1) != 0)
            {
              v55 = v73;
              goto LABEL_125;
            }

            goto LABEL_106;
          }
        }

        v17 = 0;
      }
    }

    else
    {
      v17 = 1;
    }

    memset(&v79[4], 0, 64);
    v79[4] = v17;
    v21 = v72;
    if (!v72 || (v15 & 1) == 0)
    {
LABEL_105:
      v46 = v77;
      v47 = v78;
      v77 = 0u;
      v78 = 0u;
      *(a1 + 8) = v46;
      v48 = *v79;
      *(a1 + 56) = *&v79[16];
      v49 = *&v79[48];
      *(a1 + 72) = *&v79[32];
      *a1 = 1;
      *(a1 + 24) = v47;
      *(a1 + 88) = v49;
      *(a1 + 104) = *&v79[64];
      *(a1 + 40) = v48;
      goto LABEL_106;
    }

    v22 = v73;
LABEL_29:
    (*(*v21 + 40))(v21, v22);
    goto LABEL_105;
  }

  if ((a4 - 3) > 3)
  {
    if (a4 == 33)
    {
      if (*(a6 + 8))
      {
        v39 = *(a6 + 16);
      }

      else
      {
        v39 = (a6 + 9);
      }

      v45 = strtoul(v39, 0, 0);
      memset(&v79[8], 0, 60);
      *&v79[4] = v45;
    }

    else
    {
      if (a4 != 29)
      {
        re::DynamicString::format("Unsupported type provided data for function constant in material: %s, %s", &v72, a3, a2);
        v40 = v72;
        v41 = v73;
        v42 = v74;
        *a1 = 0;
        *(a1 + 8) = v40;
        *(a1 + 24) = v41;
        *(a1 + 32) = v42;
        goto LABEL_106;
      }

      if (*(a6 + 8))
      {
        v23 = *(a6 + 16);
      }

      else
      {
        v23 = (a6 + 9);
      }

      v44 = atoi(v23);
      memset(&v79[8], 0, 60);
      *&v79[4] = v44;
    }

    goto LABEL_105;
  }

  v76 = 0;
  v73 = 0;
  v74 = 0;
  *(&v72 + 1) = 0;
  v75 = 0;
  LOBYTE(v72) = 44;
  v70 = 0u;
  v71 = 0u;
  re::DynamicString::setCapacity(&v70, 0);
  if (*(a6 + 8))
  {
    v14 = *(a6 + 16);
  }

  else
  {
    v14 = (a6 + 9);
  }

  do
  {
    v25 = *v14++;
    v24 = v25;
  }

  while (v25 == 32);
  if (v24 == 91)
  {
    v26 = 0;
  }

  else
  {
    v26 = -1;
  }

  while (1)
  {
    v27 = v14[v26];
    if (v27 == 32)
    {
      goto LABEL_43;
    }

    if (!v14[v26] || v27 == 93)
    {
      break;
    }

    v66[0] = v14[v26];
    re::DynamicString::append(&v70, v66, 1uLL);
LABEL_43:
    ++v26;
  }

  if (BYTE8(v70))
  {
    v28 = v71;
  }

  else
  {
    v28 = (&v70 | 9);
  }

  re::TokenizedMember::tokenize(&v72, v28);
  __src = 0;
  v67 = 0;
  memset(v66, 0, sizeof(v66));
  LODWORD(v68) = 0;
  v29 = v74;
  if (!v74)
  {
    v36 = 0;
    v37 = 0;
    goto LABEL_74;
  }

  v60 = a2;
  v61 = a3;
  for (i = 0; i < v74; ++i)
  {
    v31 = *(v76 + 8 * i);
    if (!strcasecmp(v31, "true"))
    {
      LOBYTE(v62) = 1;
LABEL_59:
      v32 = &v62;
LABEL_66:
      re::DynamicArray<unsigned char>::add(v66, v32);
      continue;
    }

    if (!strcasecmp(v31, "false"))
    {
      LOBYTE(v62) = 0;
      goto LABEL_59;
    }

    LODWORD(v62) = strtof(v31, 0);
    while ((v67 & 3) != 0)
    {
      v65 = 0;
      re::DynamicArray<unsigned char>::add(v66, &v65);
    }

    re::DynamicArray<unsigned char>::add(v66, &v62);
    re::DynamicArray<unsigned char>::add(v66, &v62 + 1);
    re::DynamicArray<unsigned char>::add(v66, &v62 + 2);
    re::DynamicArray<unsigned char>::add(v66, &v62 + 3);
    if (v74 == 3)
    {
      if ((-1431655766 - 1431655765 * i) <= 0x55555554)
      {
        goto LABEL_65;
      }
    }

    else if ((-1431655766 - 1431655765 * i) <= 0x55555554 && v74 == 9)
    {
LABEL_65:
      v65 = 0;
      re::DynamicArray<unsigned char>::add(v66, &v65);
      v65 = 0;
      re::DynamicArray<unsigned char>::add(v66, &v65);
      v65 = 0;
      re::DynamicArray<unsigned char>::add(v66, &v65);
      v65 = 0;
      v32 = &v65;
      goto LABEL_66;
    }
  }

  if (v74 != 1)
  {
    v35 = v60;
    v34 = v61;
    if (v74 == 2 && *v79 != 4 || v74 == 3 && *v79 != 5 || v74 == 4 && *v79 != 6)
    {
      if (*v79 == 3)
      {
        v43 = 1;
        goto LABEL_114;
      }

      if (*v79 != 4)
      {
        goto LABEL_98;
      }

LABEL_97:
      v43 = 2;
      goto LABEL_114;
    }

LABEL_72:
    v36 = __src;
    v37 = *v66;
    v29 = v67;
LABEL_74:
    memset(&v79[4], 0, 64);
    if (v29 >= 0x40)
    {
      v38 = 64;
    }

    else
    {
      v38 = v29;
    }

    memcpy(&v79[4], v36, v38);
    if (v37 && v36)
    {
      (*(*v37 + 40))(v37, v36);
    }

    if (v70 && (BYTE8(v70) & 1) != 0)
    {
      (*(*v70 + 40))();
    }

    re::TokenizedMember::deinit(&v72);
    v21 = *(&v72 + 1);
    if (!*(&v72 + 1))
    {
      goto LABEL_105;
    }

    v22 = v76;
    if (!v76)
    {
      goto LABEL_105;
    }

    goto LABEL_29;
  }

  v35 = v60;
  v34 = v61;
  switch(*v79)
  {
    case 3u:
      goto LABEL_72;
    case 4u:
      goto LABEL_97;
    case 0x35u:
      goto LABEL_72;
  }

LABEL_98:
  if (*v79 == 5)
  {
    v43 = 3;
  }

  else
  {
    v43 = 4;
  }

LABEL_114:
  if (*(a6 + 8))
  {
    v56 = *(a6 + 16);
  }

  else
  {
    v56 = a6 + 9;
  }

  re::DynamicString::format("Incorrect data for float type function constant: %s[%s%u], %s[%s]", &v62, v34, "float", v43, v35, v56);
  v57 = v62;
  v58 = v63;
  v59 = v64;
  *a1 = 0;
  *(a1 + 8) = v57;
  *(a1 + 24) = v58;
  *(a1 + 32) = v59;
  if (*v66 && __src)
  {
    (*(**v66 + 40))();
  }

  if (v70 && (BYTE8(v70) & 1) != 0)
  {
    (*(*v70 + 40))();
  }

  re::TokenizedMember::deinit(&v72);
  v54 = *(&v72 + 1);
  if (*(&v72 + 1))
  {
    v55 = v76;
    if (v76)
    {
LABEL_125:
      (*(*v54 + 40))(v54, v55);
    }
  }

LABEL_106:
  result = v77;
  if (v77)
  {
    if (BYTE8(v77))
    {
      return (*(*v77 + 40))();
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(uint64_t a1, char *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(&v19, a2);
  if (!*a1)
  {
    return 0;
  }

  v5 = *(*(a1 + 8) + 4 * (v4 % *(a1 + 24)));
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v8 = v7 + (v5 << 6);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  v11 = (v8 + 17);
  if (v9)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (strcmp(v12, a2))
  {
    while (1)
    {
      v13 = *(v7 + (v5 << 6));
      v5 = v13 & 0x7FFFFFFF;
      if ((v13 & 0x7FFFFFFF) == 0x7FFFFFFF)
      {
        break;
      }

      v14 = v7 + (v5 << 6);
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      v17 = (v14 + 17);
      if (v15)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      if (!strcmp(v18, a2))
      {
        return v7 + (v5 << 6) + 40;
      }
    }

    return 0;
  }

  return v7 + (v5 << 6) + 40;
}

double re::parseFunctionConstants@<D0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v88 = *MEMORY[0x1E69E9840];
  memset(v80, 0, 36);
  v65 = 0u;
  *&v80[36] = 0x7FFFFFFFLL;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  re::DynamicString::setCapacity(&v76, 0);
  v10 = *(a2 + 32);
  if (v10)
  {
    v11 = 0;
    v12 = *(a2 + 16);
    while (1)
    {
      v13 = *v12;
      v12 += 8;
      if (v13 < 0)
      {
        break;
      }

      if (v10 == ++v11)
      {
        LODWORD(v11) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  v14 = xmmword_1E3058120;
  if (v11 != v10)
  {
    v66 = 0;
    v17 = *(a2 + 16);
    while (1)
    {
      v18 = v17 + 32 * v11;
      v20 = *(v18 + 8);
      v19 = (v18 + 8);
      v21 = (v19 + 1);
      v22 = [v19[1] index];
      v23 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a3, v20);
      v24 = v23;
      if (v22 < 0x10001 && v23 == 0)
      {
        snprintf(__str, 6uLL, "%lu", v22);
        v24 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a3, __str);
      }

      if (v24)
      {
        re::parseConstant(__str, a1, *v19, [*v21 type], objc_msgSend(*v21, sel_index), v24);
        if (__str[0] != 1)
        {
          re::DynamicString::DynamicString(buf, &__str[8]);
          *a9 = 0;
          *(a9 + 8) = *buf;
          *(a9 + 32) = v82;
          *(a9 + 16) = *&buf[8];
          if (*&__str[8] && (__str[16] & 1) != 0)
          {
            (*(**&__str[8] + 40))(*&__str[8], *&__str[24]);
          }

          goto LABEL_106;
        }

        v26 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v80, *v19, &__str[8]);
        v27 = *&__str[8];
        if (!*&__str[8] || (__str[16] & 1) == 0)
        {
          goto LABEL_58;
        }

        v28 = *&__str[24];
        goto LABEL_22;
      }

      v29 = *v19;
      v30 = [*v21 index];
      if (*a4 == 1 && *a5 == 1)
      {
        v31 = v30;
        v32 = re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>((a4 + 8), v29);
        if (v31 < 0x10001 && v32 == 0)
        {
          snprintf(__str, 6uLL, "%lu", v31);
          v32 = re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>((a4 + 8), __str);
        }

        if (v32)
        {
          v34 = *(a5 + 40);
          if (v34)
          {
            v35 = *v32;
            v36 = *(v32 + 8);
            __n = re::mtl::getTypeSize(v36);
            v37 = [*v21 index];
            v38 = v37;
            memset(__str, 0, 32);
            re::DynamicString::setCapacity(__str, 0);
            v87 = 0u;
            v86 = 0u;
            v85 = 0u;
            *&__str[36] = 0u;
            v39 = strlen(*v19);
            *buf = *v19;
            *&buf[8] = v39;
            re::DynamicString::operator=(__str, buf);
            v87 = 0u;
            v86 = 0u;
            v85 = 0u;
            *&__str[36] = 0u;
            memcpy(&__str[36], (v34 + v35), __n);
            *&__str[32] = v36;
            *&__str[34] = v38;
            v26 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v80, *v19, __str);
LABEL_91:
            v27 = *__str;
            if (!*__str || (__str[8] & 1) == 0)
            {
              goto LABEL_58;
            }

            v28 = *&__str[16];
LABEL_22:
            (*(*v27 + 40))(v27, v28, v26);
            goto LABEL_58;
          }
        }
      }

      if (a6 && (v40 = *(a6 + 8)) != 0)
      {
        v41 = *v19;
        v42 = 104 * v40 - 104;
        v43 = (*(a6 + 16) + 16);
        do
        {
          if (*(v43 - 1))
          {
            v44 = *v43;
          }

          else
          {
            v44 = v43 - 7;
          }

          v45 = strcmp(v44, v41);
          v46 = v45 != 0;
          if (v45)
          {
            v47 = v42 == 0;
          }

          else
          {
            v47 = 1;
          }

          v42 -= 104;
          v43 += 13;
        }

        while (!v47);
      }

      else
      {
        v46 = 1;
      }

      if ((a8 & 1) == 0)
      {
        v48 = [*v21 required];
        if ((v46 & v48) == 1)
        {
          if (!a7)
          {
            v51 = *re::pipelineLogObjects(v48);
            v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
            if (v52)
            {
              v53 = *v19;
              *__str = 136315138;
              *&__str[4] = v53;
              _os_log_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_DEFAULT, "Material requires function constant %s but it was not provided by the material. Providing 0s as a fallback.", __str, 0xCu);
            }

            memset(__str, 0, 32);
            re::DynamicString::setCapacity(__str, 0);
            v87 = 0u;
            v86 = 0u;
            v85 = 0u;
            *&__str[36] = 0u;
            v54 = strlen(*v19);
            *buf = *v19;
            *&buf[8] = v54;
            re::DynamicString::operator=(__str, buf);
            v55 = [*v21 type];
            v56 = [*v21 index];
            *&__str[32] = v55;
            *&__str[34] = v56;
            if ([*v21 type] == 53)
            {
LABEL_71:
              v87 = 0u;
              v86 = 0u;
              v85 = 0u;
              *&__str[36] = 0u;
              goto LABEL_90;
            }

            if ([*v21 &selRef_setStiffness_] != 3 && objc_msgSend(*v21, &selRef_setStiffness_) != 4 && objc_msgSend(*v21, &selRef_setStiffness_) != 5 && objc_msgSend(*v21, &selRef_setStiffness_) != 6)
            {
              if ([*v21 &selRef_setStiffness_] == 29)
              {
                goto LABEL_71;
              }

              v59 = [*v21 &selRef_setStiffness_];
              if (v59 == 33)
              {
                v87 = 0u;
                v86 = 0u;
                v85 = 0u;
                *&__str[36] = 0u;
              }

              else
              {
                v60 = *re::pipelineLogObjects(v59);
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  v61 = *v19;
                  v62 = [*v21 type];
                  *buf = 136315394;
                  *&buf[4] = v61;
                  *&buf[12] = 1024;
                  *&buf[14] = v62;
                  _os_log_error_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_ERROR, "Required function constant %s is required but not provided and of an unsupported type %i.", buf, 0x12u);
                }
              }

LABEL_90:
              re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v80, *v19, __str);
              goto LABEL_91;
            }

            __src = 0;
            memset(buf, 0, sizeof(buf));
            LODWORD(v82) = 0;
            if ([*v21 &selRef_setStiffness_] == 3)
            {
              v75 = 0;
              re::DynamicArray<float>::add(buf, &v75);
              goto LABEL_84;
            }

            if ([*v21 &selRef_setStiffness_] == 4)
            {
              goto LABEL_83;
            }

            if ([*v21 &selRef_setStiffness_] == 5)
            {
              goto LABEL_82;
            }

            if ([*v21 &selRef_setStiffness_] == 6)
            {
              v75 = 0;
              re::DynamicArray<float>::add(buf, &v75);
LABEL_82:
              v75 = 0;
              re::DynamicArray<float>::add(buf, &v75);
LABEL_83:
              v75 = 0;
              re::DynamicArray<float>::add(buf, &v75);
              v75 = 0;
              re::DynamicArray<float>::add(buf, &v75);
            }

LABEL_84:
            v57 = __src;
            *&__str[36] = 0u;
            v85 = 0u;
            v86 = 0u;
            v87 = 0u;
            if (*&buf[16] >= 0x40uLL)
            {
              v58 = 64;
            }

            else
            {
              v58 = *&buf[16];
            }

            memcpy(&__str[36], __src, v58);
            if (*buf && v57)
            {
              (*(**buf + 40))();
            }

            goto LABEL_90;
          }

          if (v77)
          {
            v49 = v77 >> 1;
          }

          else
          {
            v49 = v77 >> 1;
          }

          if (!v49)
          {
            re::DynamicString::append(&v76, "Missing required function constants: ", 0x25uLL);
          }

          if (v66)
          {
            re::DynamicString::append(&v76, ", ", 2uLL);
          }

          re::DynamicString::appendf(&v76, "%s", *v19);
          v66 = 1;
        }
      }

LABEL_58:
      v14 = xmmword_1E3058120;
      if (*(a2 + 32) <= (v11 + 1))
      {
        v50 = v11 + 1;
      }

      else
      {
        v50 = *(a2 + 32);
      }

      v17 = *(a2 + 16);
      while (v50 - 1 != v11)
      {
        LODWORD(v11) = v11 + 1;
        if ((*(v17 + 32 * v11) & 0x80000000) != 0)
        {
          goto LABEL_66;
        }
      }

      LODWORD(v11) = v50;
LABEL_66:
      if (v11 == v10)
      {
        if (v66)
        {
          re::DynamicString::DynamicString(__str, &v76);
          *a9 = 0;
          *(a9 + 8) = *__str;
          *(a9 + 32) = *&__str[24];
          *(a9 + 16) = *&__str[8];
          goto LABEL_106;
        }

        v65 = *v80;
        v15 = *&v80[16];
        v16 = *&v80[24];
        goto LABEL_105;
      }
    }
  }

  v15 = 0;
  v16 = xmmword_1E3058120;
LABEL_105:
  memset(v80, 0, 32);
  *&v80[32] = 0x7FFFFFFF00000000;
  *&__str[40] = 1;
  *a9 = 1;
  *(a9 + 8) = v65;
  *__str = 0;
  *&__str[8] = 0;
  *(a9 + 24) = v15;
  *&__str[16] = 0;
  *(a9 + 32) = v16;
  *&__str[24] = v14;
  *(a9 + 48) = 1;
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(__str);
LABEL_106:
  if (v76 && (v77 & 1) != 0)
  {
    (*(*v76 + 40))();
  }

  return re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v80);
}

__n128 re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(uint64_t a1, char *a2, uint64_t a3)
{
  v18 = 0;
  v19 = a2;
  v16 = 0;
  v17 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v20, a2);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v19, v5, &v16);
  if (HIDWORD(v17) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v17, v16);
    v8 = v19;
    *(v7 + 56) = 0u;
    *(v7 + 40) = 0u;
    *(v7 + 64) = *(a3 + 24);
    v9 = *(a3 + 8);
    *(v7 + 40) = *a3;
    *a3 = 0;
    v10 = *(a3 + 16);
    *(a3 + 24) = 0;
    v12 = *(v7 + 48);
    v11 = *(v7 + 56);
    *(v7 + 48) = v9;
    *(v7 + 56) = v10;
    *(a3 + 8) = v12;
    *(a3 + 16) = v11;
    v13 = *(a3 + 48);
    v14 = *(a3 + 64);
    v15 = *(a3 + 80);
    *(v7 + 136) = *(a3 + 96);
    *(v7 + 120) = v15;
    *(v7 + 104) = v14;
    *(v7 + 88) = v13;
    result = *(a3 + 32);
    *(v7 + 72) = result;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(uint64_t a1, char *a2, uint64_t a3)
{
  v9 = 0;
  v10 = a2;
  v7 = 0;
  v8 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  result = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v10, v5, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::TechniqueFunctionConstant const&>(a1, &v7, &v10, a3);
  }

  return result;
}

void re::parseFunctionConstants(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v98 = *MEMORY[0x1E69E9840];
  v93 = 0;
  v91 = 0u;
  v92 = 0u;
  v94 = 0x7FFFFFFFLL;
  v7 = a3[15];
  if (v7)
  {
    v8 = a3[16];
    v9 = v8 + 8 * v7;
    do
    {
      v10 = *(*v8 + 56);
      if (v10)
      {
        v11 = *(*v8 + 64);
        for (i = 104 * v10; i; i -= 104)
        {
          if (*(v11 + 8))
          {
            v13 = *(v11 + 16);
          }

          else
          {
            v13 = (v11 + 9);
          }

          *&v88[0] = v13;
          v14 = re::Hash<re::DynamicString>::operator()(v97, v13);
          re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(&v91, v88, v14, v97);
          if (*&v97[12] == 0x7FFFFFFF)
          {
            v15 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a4, v11);
            if (v15)
            {
              if (*(v11 + 8))
              {
                v16 = *(v11 + 16);
              }

              else
              {
                v16 = (v11 + 9);
              }

              re::parseConstant(v97, a3[178], v16, *(v11 + 32), *(v11 + 34), v15);
              if (v97[0] != 1)
              {
                re::DynamicString::DynamicString(v88, &v97[8]);
                *a1 = 0;
                v22 = *(&v88[1] + 1);
                *(a1 + 8) = *&v88[0];
                *(a1 + 32) = v22;
                *(a1 + 16) = *(v88 + 8);
                if (*&v97[8] && (v97[16] & 1) != 0)
                {
                  (*(**&v97[8] + 40))();
                }

                goto LABEL_143;
              }

              if (*(v11 + 8))
              {
                v17 = *(v11 + 16);
              }

              else
              {
                v17 = (v11 + 9);
              }

              re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(&v91, v17, &v97[8]);
              if (*&v97[8] && (v97[16] & 1) != 0)
              {
                (*(**&v97[8] + 40))();
              }
            }
          }

          v11 += 104;
        }
      }

      v8 += 8;
    }

    while (v8 != v9);
    LODWORD(v7) = HIDWORD(v92);
  }

  if (v7 >= *(a4 + 28))
  {
LABEL_136:
    v68 = 0uLL;
    memset(v97, 0, 36);
    *&v97[36] = 0x7FFFFFFFLL;
    v69 = xmmword_1E3058120;
    if (v91)
    {
      if (HIDWORD(v92) <= 3)
      {
        v70 = 3;
      }

      else
      {
        v70 = HIDWORD(v92);
      }

      re::HashTable<re::DynamicString,re::MaterialTechniqueQualityLevelSetData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v97, v91, v70);
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(v97, &v91);
      v69 = xmmword_1E3058120;
      v68 = *v97;
      v71 = *&v97[16];
      v72 = *&v97[24];
    }

    else
    {
      v71 = 0;
      v72 = xmmword_1E3058120;
    }

    *a1 = 1;
    *(a1 + 8) = v68;
    *v97 = 0uLL;
    *(a1 + 24) = v71;
    *&v97[16] = 0;
    *(a1 + 32) = v72;
    *&v97[24] = v69;
    *(a1 + 48) = 1;
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v97);
    goto LABEL_143;
  }

  v89 = 0;
  memset(v88, 0, sizeof(v88));
  v90 = 0x7FFFFFFFLL;
  v18 = *(a4 + 32);
  if (v18)
  {
    v19 = 0;
    v20 = *(a4 + 16);
    while (1)
    {
      v21 = *v20;
      v20 += 20;
      if (v21 < 0)
      {
        break;
      }

      if (v18 == ++v19)
      {
        LODWORD(v19) = *(a4 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v19) = 0;
  }

  if (v19 != v18)
  {
    v23 = *(a4 + 16);
    do
    {
      v24 = v23 + 80 * v19;
      v25 = re::Hash<re::DynamicString>::operator()(v97, v24 + 8);
      re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v91, v24 + 8, v25, v97);
      if (*&v97[12] == 0x7FFFFFFF)
      {
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v88, (v24 + 8), (v23 + 80 * v19 + 40));
      }

      v26 = *(a4 + 32);
      if (v26 <= v19 + 1)
      {
        v26 = v19 + 1;
      }

      v23 = *(a4 + 16);
      while (v26 - 1 != v19)
      {
        LODWORD(v19) = v19 + 1;
        if ((*(v23 + 80 * v19) & 0x80000000) != 0)
        {
          goto LABEL_44;
        }
      }

      LODWORD(v19) = v26;
LABEL_44:
      ;
    }

    while (v19 != v18);
  }

  v27 = a3[15];
  if (!v27)
  {
LABEL_135:
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v88);
    goto LABEL_136;
  }

  v28 = a3[16];
  v73 = &v28[v27];
  v74 = *(a2 + 48);
  while (1)
  {
    v75 = *v28;
    v76 = v28;
    *v97 = *(*v28 + 2424);
    v29 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v74 + 376, v97);
    if (v29)
    {
      v30 = (v29 + 8);
    }

    else
    {
      v30 = 0;
    }

    v31 = *v28;
    if (*(*v28 + 2448))
    {
      v32 = *(v31 + 2456);
    }

    else
    {
      v32 = (v31 + 2449);
    }

    re::mtl::Library::makeFunction(v30, v32, &v87);
    v33 = a3[178];
    v34 = [v87 functionConstantsDictionary];
    memset(v84, 0, sizeof(v84));
    v85 = 0;
    v86 = 0x7FFFFFFFLL;
    v35 = [v34 keyEnumerator];
    v36 = [v35 nextObject];
    if (v36)
    {
      v37 = v36;
      do
      {
        v96 = [v37 UTF8String];
        v95 = [v34 objectForKey_];
        re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(v84, &v96, &v95);
        if (v95)
        {
        }

        v37 = [v35 nextObject];
      }

      while (v37);
    }

    v82[0] = 0;
    v81[0] = 0;
    re::parseFunctionConstants(v33, v84, v88, v82, v81, v75 + 48, 0, 0, v97);
    if (v82[0] == 1)
    {
      re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v83);
    }

    re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v84);
    v38 = v97[0];
    if (v97[0])
    {
      v39 = *&v97[40];
      if (*&v97[40])
      {
        v40 = 0;
        v41 = *&v97[24];
        while (1)
        {
          v42 = *v41;
          v41 += 38;
          if (v42 < 0)
          {
            break;
          }

          if (*&v97[40] == ++v40)
          {
            LODWORD(v40) = *&v97[40];
            break;
          }
        }
      }

      else
      {
        LODWORD(v40) = 0;
      }

      if (v40 != *&v97[40])
      {
        v44 = *&v97[24];
        do
        {
          re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v91, (v44 + 152 * v40 + 8), v44 + 152 * v40 + 40);
          if (*&v97[40] <= (v40 + 1))
          {
            v45 = v40 + 1;
          }

          else
          {
            v45 = *&v97[40];
          }

          v44 = *&v97[24];
          while (v45 - 1 != v40)
          {
            LODWORD(v40) = v40 + 1;
            if ((*(*&v97[24] + 152 * v40) & 0x80000000) != 0)
            {
              goto LABEL_78;
            }
          }

          LODWORD(v40) = v45;
LABEL_78:
          ;
        }

        while (v40 != v39);
      }
    }

    else
    {
      re::DynamicString::DynamicString(v84, &v97[8]);
      *a1 = 0;
      v43 = *(&v84[1] + 1);
      *(a1 + 8) = *&v84[0];
      *(a1 + 32) = v43;
      *(a1 + 16) = *(v84 + 8);
    }

    if (v97[0] == 1)
    {
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v97[8]);
      v46 = v76;
    }

    else
    {
      v46 = v76;
      if (*&v97[8] && (v97[16] & 1) != 0)
      {
        (*(**&v97[8] + 40))();
      }
    }

    if (v87)
    {
    }

    if (!v38)
    {
      break;
    }

    v47 = HIDWORD(v92);
    v48 = *(a4 + 28);
    if (HIDWORD(v92) >= v48)
    {
      goto LABEL_135;
    }

    v49 = *(*v46 + 2480);
    if (v49)
    {
      v50 = v49 >> 1;
    }

    else
    {
      v50 = v49 >> 1;
    }

    if (v50)
    {
      *v97 = *(*v46 + 2432);
      v51 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v74 + 376, v97);
      if (v51)
      {
        v52 = (v51 + 8);
      }

      else
      {
        v52 = 0;
      }

      v53 = *v46;
      if (*(*v46 + 2480))
      {
        v54 = *(v53 + 2488);
      }

      else
      {
        v54 = (v53 + 2481);
      }

      re::mtl::Library::makeFunction(v52, v54, &v87);
      v55 = a3[178];
      v56 = [v87 functionConstantsDictionary];
      memset(v84, 0, sizeof(v84));
      v85 = 0;
      v86 = 0x7FFFFFFFLL;
      v57 = [v56 keyEnumerator];
      v58 = [v57 nextObject];
      if (v58)
      {
        v59 = v58;
        do
        {
          v96 = [v59 UTF8String];
          v95 = [v56 objectForKey_];
          re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(v84, &v96, &v95);
          if (v95)
          {
          }

          v59 = [v57 nextObject];
        }

        while (v59);
      }

      v79[0] = 0;
      v78[0] = 0;
      re::parseFunctionConstants(v55, v84, v88, v79, v78, v75 + 48, 0, 0, v97);
      if (v79[0] == 1)
      {
        re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v80);
      }

      re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v84);
      v60 = v97[0];
      if (v97[0])
      {
        v61 = *&v97[40];
        if (*&v97[40])
        {
          v62 = 0;
          v63 = *&v97[24];
          while (1)
          {
            v64 = *v63;
            v63 += 38;
            if (v64 < 0)
            {
              break;
            }

            if (*&v97[40] == ++v62)
            {
              LODWORD(v62) = *&v97[40];
              break;
            }
          }
        }

        else
        {
          LODWORD(v62) = 0;
        }

        if (v62 != *&v97[40])
        {
          v66 = *&v97[24];
          do
          {
            re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v91, (v66 + 152 * v62 + 8), v66 + 152 * v62 + 40);
            if (*&v97[40] <= (v62 + 1))
            {
              v67 = v62 + 1;
            }

            else
            {
              v67 = *&v97[40];
            }

            v66 = *&v97[24];
            while (v67 - 1 != v62)
            {
              LODWORD(v62) = v62 + 1;
              if ((*(*&v97[24] + 152 * v62) & 0x80000000) != 0)
              {
                goto LABEL_123;
              }
            }

            LODWORD(v62) = v67;
LABEL_123:
            ;
          }

          while (v62 != v61);
        }
      }

      else
      {
        re::DynamicString::DynamicString(v84, &v97[8]);
        *a1 = 0;
        v65 = *(&v84[1] + 1);
        *(a1 + 8) = *&v84[0];
        *(a1 + 32) = v65;
        *(a1 + 16) = *(v84 + 8);
      }

      if (v97[0] == 1)
      {
        re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v97[8]);
        v46 = v76;
      }

      else
      {
        v46 = v76;
        if (*&v97[8] && (v97[16] & 1) != 0)
        {
          (*(**&v97[8] + 40))();
        }
      }

      if (v87)
      {
      }

      if (!v60)
      {
        break;
      }

      v47 = HIDWORD(v92);
      v48 = *(a4 + 28);
    }

    if (v47 < v48)
    {
      v28 = v46 + 1;
      if (v28 != v73)
      {
        continue;
      }
    }

    goto LABEL_135;
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v88);
LABEL_143:
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v91);
}

uint64_t re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  result = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::TechniqueFunctionConstant const&>(a1, &v8, a2, a3);
  }

  return result;
}

double re::parseVariationTable@<D0>(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = [*a2 functionConstantsDictionary];
  v50 = 0u;
  v51 = 0u;
  v52 = 0;
  v53 = 0x7FFFFFFFLL;
  v7 = [v6 keyEnumerator];
  v8 = [v7 nextObject];
  if (!v8)
  {
    v48 = 0u;
    v49 = 0u;
    *v46 = 0u;
    v47 = 0u;
LABEL_45:
    v30 = re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::HashBrown(&v54, v46);
    *a4 = 1;
    v31 = v55;
    *(a4 + 8) = v54;
    v32 = *(&v56[1] + 1);
    *(a4 + 7) = *&v56[1];
    *(a4 + 8) = v32;
    *(a4 + 24) = v31;
    v54 = 0u;
    v55 = 0u;
    *(a4 + 40) = v56[0];
    memset(v56, 0, sizeof(v56));
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v30);
    goto LABEL_46;
  }

  v9 = v8;
  do
  {
    *&v54 = [v9 UTF8String];
    v46[0] = [v6 objectForKey_];
    re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(&v50, &v54, v46);
    if (v46[0])
    {
    }

    v9 = [v7 nextObject];
  }

  while (v9);
  v10 = v52;
  v48 = 0u;
  v49 = 0u;
  *v46 = 0u;
  v47 = 0u;
  if (!v52)
  {
    goto LABEL_45;
  }

  v11 = 0;
  v12 = v51;
  v13 = v51;
  while (1)
  {
    v14 = *v13;
    v13 += 8;
    if (v14 < 0)
    {
      break;
    }

    if (v52 == ++v11)
    {
      LODWORD(v11) = v52;
      break;
    }
  }

  if (v52 == v11)
  {
    goto LABEL_45;
  }

  v37 = *a4;
  v40 = *(a4 + 3);
  v41 = *(a4 + 4);
  v38 = *(a4 + 1);
  v39 = *(a4 + 2);
  v36 = a3;
  while (1)
  {
    v15 = v12 + 32 * v11;
    v17 = *(v15 + 16);
    v16 = (v15 + 16);
    v18 = [v17 name];
    v44 = [v18 UTF8String];
    v19 = re::Hash<re::DynamicString>::operator()(&v54, v44);
    re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a3, &v44, v19, &v54);
    v20 = HIDWORD(v54);
    if (HIDWORD(v54) != 0x7FFFFFFF)
    {
      v21 = *(a3 + 16);
      if (re::mtl::getTypeSize([*v16 type]) > 8)
      {
        *(a4 + 3) = v40;
        *(a4 + 4) = v41;
        *(a4 + 1) = v38;
        *(a4 + 2) = v39;
        re::DynamicString::format("Function constant variation %s has underlying type larger than 64 bits, which is not supported.", &v54, [objc_msgSend(*v16 name)]);
        v34 = v54;
        v35 = v55;
        *a4 = 0;
        *(a4 + 8) = v34;
        *(a4 + 24) = v35;
        goto LABEL_46;
      }

      v22 = [v18 UTF8String];
      LOWORD(v54) = [*v16 type];
      WORD1(v54) = [*v16 index];
      v55 = 0uLL;
      *(&v54 + 1) = 0;
      LODWORD(v56[0]) = 0;
      memset(v56 + 8, 0, 18);
      v23 = re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v46, &v44, &v54);
      if (*(&v54 + 1) && *(&v56[0] + 1))
      {
        (*(**(&v54 + 1) + 40))(*(&v54 + 1));
      }

      if (v44 && (v45 & 1) != 0)
      {
        (*(*v44 + 40))();
      }

      v24 = v21 + 88 * v20;
      v25 = *(v24 + 56);
      if (v25)
      {
        break;
      }
    }

LABEL_34:
    if (v52 <= v11 + 1)
    {
      v29 = v11 + 1;
    }

    else
    {
      v29 = v52;
    }

    v12 = v51;
    a3 = v36;
    while (v29 - 1 != v11)
    {
      LODWORD(v11) = v11 + 1;
      if ((*(v51 + 32 * v11) & 0x80000000) != 0)
      {
        goto LABEL_42;
      }
    }

    LODWORD(v11) = v29;
LABEL_42:
    if (v11 == v10)
    {
      *(a4 + 3) = v40;
      *(a4 + 4) = v41;
      *(a4 + 1) = v38;
      *(a4 + 2) = v39;
      *a4 = v37;
      goto LABEL_45;
    }
  }

  v26 = *(v24 + 72);
  v27 = 32 * v25;
  while (1)
  {
    re::DynamicString::DynamicString(&v44, v26);
    re::parseConstant(&v54, a1, [objc_msgSend(*v16 name)], objc_msgSend(*v16, sel_type), objc_msgSend(*v16, sel_index), &v44);
    v28 = v54;
    if (v54)
    {
      v43[0] = *(v56 + 12);
      re::DynamicArray<re::TransitionCondition *>::add((v23 + 8), v43);
    }

    else
    {
      re::DynamicString::DynamicString(v43, (&v54 + 8));
      v37 = 0;
      v40 = v43[2];
      v41 = v43[3];
      v38 = v43[0];
      v39 = v43[1];
    }

    if (*(&v54 + 1) && (v55 & 1) != 0)
    {
      (*(**(&v54 + 1) + 40))(*(&v54 + 1), *(&v55 + 1));
    }

    if (v44 && (v45 & 1) != 0)
    {
      (*(*v44 + 40))();
    }

    if ((v28 & 1) == 0)
    {
      break;
    }

    v26 = (v26 + 32);
    v27 -= 32;
    if (!v27)
    {
      goto LABEL_34;
    }
  }

  *(a4 + 3) = v40;
  *(a4 + 4) = v41;
  *(a4 + 1) = v38;
  *(a4 + 2) = v39;
  *a4 = v37;
LABEL_46:
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v46);
  return re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v50);
}

uint64_t re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(uint64_t *a1, const re::DynamicString *a2, uint64_t a3)
{
  v6 = re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 96 * v6 + 32;
  }

  return re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::internalAdd(a1, a2, a3);
}

{
  v6 = re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 96 * v6 + 32;
  }

  return re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::internalAdd(a1, a2, a3);
}

uint64_t re::parseUsedConstantsMask(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 48) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *(result + 52) = 0x7FFFFFFFLL;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 8;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(a2 + 16);
    do
    {
      result = [*(v8 + 32 * v5 + 16) index];
      v17 = result;
      if (result > 0x7Fu)
      {
        v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * result) ^ ((0xBF58476D1CE4E5B9 * result) >> 27));
        v11 = v10 ^ (v10 >> 31);
        v12 = *(v3 + 40);
        if (v12)
        {
          v13 = v11 % v12;
          v14 = *(*(v3 + 24) + 4 * (v11 % v12));
          if (v14 != 0x7FFFFFFF)
          {
            v15 = *(v3 + 32);
            while (*(v15 + 16 * v14 + 12) != result)
            {
              v14 = *(v15 + 16 * v14 + 8) & 0x7FFFFFFF;
              if (v14 == 0x7FFFFFFF)
              {
                goto LABEL_19;
              }
            }

            goto LABEL_20;
          }
        }

        else
        {
          LODWORD(v13) = 0;
        }

LABEL_19:
        result = re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::addAsCopy(v3 + 16, v13, v11, &v17, &v17);
        ++*(v3 + 56);
      }

      else
      {
        v9 = 1 << result;
        result = re::Bitset<128>::toWordIndex(v3, result & 0x7F);
        *(v3 + 8 * result) |= v9;
      }

LABEL_20:
      if (*(a2 + 32) <= (v5 + 1))
      {
        v16 = v5 + 1;
      }

      else
      {
        v16 = *(a2 + 32);
      }

      v8 = *(a2 + 16);
      while (v16 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 32 * v5) & 0x80000000) != 0)
        {
          goto LABEL_28;
        }
      }

      LODWORD(v5) = v16;
LABEL_28:
      ;
    }

    while (v5 != v4);
  }

  return result;
}

void re::makeMaterialDefinitionBuilder(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v287 = v3;
  v4 = v2;
  v5 = v1;
  v285 = v6;
  v355 = *MEMORY[0x1E69E9840];
  memset(v342, 0, 64);
  v7 = *(v2 + 576);
  if (v7)
  {
    v8 = *(v2 + 592);
    v9 = v8 + 80 * v7;
    while (1)
    {
      memset(v329, 0, sizeof(v329));
      memset(v328, 0, sizeof(v328));
      v10 = *(v8 + 64);
      if (v10)
      {
        v11 = 0;
        v12 = *(v8 + 48);
        while (1)
        {
          v13 = *v12;
          v12 += 14;
          if (v13 < 0)
          {
            break;
          }

          if (v10 == ++v11)
          {
            LODWORD(v11) = *(v8 + 64);
            break;
          }
        }
      }

      else
      {
        LODWORD(v11) = 0;
      }

LABEL_18:
      while (v11 != v10)
      {
        v14 = *(v8 + 48) + 56 * v11;
        *__src = re::Hash<re::DynamicString>::operator()(__src, v14 + 8);
        LOWORD(v350) = *(v14 + 40);
        v15 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v328, __src);
        if (v15 == -1)
        {
          re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(v328, __src, &v350);
        }

        else
        {
          *(v328[1] + 8 * v15 + 4) = v350;
        }

        v16 = *(v8 + 64);
        if (v16 <= v11 + 1)
        {
          v16 = v11 + 1;
        }

        while (v16 - 1 != v11)
        {
          LODWORD(v11) = v11 + 1;
          if ((*(*(v8 + 48) + 56 * v11) & 0x80000000) != 0)
          {
            goto LABEL_18;
          }
        }

        LODWORD(v11) = v16;
      }

      v17 = *(v8 + 8);
      if ((v17 & 1) == 0)
      {
        break;
      }

      v19 = *(v8 + 16);
      if (v19)
      {
        LOBYTE(v18) = *v19;
LABEL_23:
        if (v18)
        {
          v18 = v18;
          v20 = v19[1];
          if (v20)
          {
            v21 = v19 + 2;
            do
            {
              v18 = 31 * v18 + v20;
              v22 = *v21++;
              v20 = v22;
            }

            while (v22);
          }

          v23 = v18 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = 0;
        }

        goto LABEL_30;
      }

      v23 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_30:
      *__src = v23;
      if (re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find(v342, __src) == -1)
      {
        re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(v342, __src, v328);
      }

      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v328);
      v8 += 80;
      if (v8 == v9)
      {
        goto LABEL_33;
      }
    }

    v18 = v17 >> 8;
    v19 = (v8 + 9);
    goto LABEL_23;
  }

LABEL_33:
  v24 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(v4 + 464, v328);
  v25 = v328[0];
  if (v328[0] && (v328[1] & 1) != 0)
  {
    v25 = (*(*v328[0] + 40))();
  }

  if (v24)
  {
    v26 = re::Hash<re::DynamicString>::operator()(__src, v328);
    v27 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v4 + 464, v328, v26, __src);
    if (*&__src[12] == 0x7FFFFFFF)
    {
      v28 = re::Hash<re::DynamicString>::operator()(&v350, __src);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v4 + 464, __src, v28, &v350);
      HIDWORD(v281) = HIDWORD(v351) != 0x7FFFFFFF;
      if (*__src && (__src[8] & 1) != 0)
      {
        (*(**__src + 40))();
      }
    }

    else
    {
      HIDWORD(v281) = 1;
    }

    v29 = v328[0];
    if (v328[0] && (v328[1] & 1) != 0)
    {
      v29 = (*(*v328[0] + 40))();
    }

    v30 = re::Hash<re::DynamicString>::operator()(__src, v328);
    v31 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v4 + 464, v328, v30, __src);
    if (*&__src[12] == 0x7FFFFFFF)
    {
      v32 = re::Hash<re::DynamicString>::operator()(&v350, __src);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v4 + 464, __src, v32, &v350);
      LOBYTE(v281) = HIDWORD(v351) != 0x7FFFFFFF;
      if (*__src && (__src[8] & 1) != 0)
      {
        (*(**__src + 40))();
      }
    }

    else
    {
      LOBYTE(v281) = 1;
    }

    v25 = v328[0];
    if (v328[0] && (v328[1] & 1) != 0)
    {
      v25 = (*(*v328[0] + 40))();
    }
  }

  else
  {
    v281 = 0;
  }

  v33 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(v4 + 464, v328);
  v34 = v328[0];
  if (v328[0] && (v328[1] & 1) != 0)
  {
    v34 = (*(*v328[0] + 40))();
  }

  if (v33)
  {
    v35 = re::Hash<re::DynamicString>::operator()(__src, v328);
    v36 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v4 + 464, v328, v35, __src);
    if (*&__src[12] == 0x7FFFFFFF)
    {
      v37 = re::Hash<re::DynamicString>::operator()(&v350, __src);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v4 + 464, __src, v37, &v350);
      HIDWORD(v280) = HIDWORD(v351) != 0x7FFFFFFF;
      if (*__src && (__src[8] & 1) != 0)
      {
        (*(**__src + 40))();
      }
    }

    else
    {
      HIDWORD(v280) = 1;
    }

    v38 = v328[0];
    if (v328[0] && (v328[1] & 1) != 0)
    {
      v38 = (*(*v328[0] + 40))();
    }

    v39 = re::Hash<re::DynamicString>::operator()(__src, v328);
    v40 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v4 + 464, v328, v39, __src);
    if (*&__src[12] == 0x7FFFFFFF)
    {
      v41 = re::Hash<re::DynamicString>::operator()(&v350, __src);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v4 + 464, __src, v41, &v350);
      LOBYTE(v280) = HIDWORD(v351) != 0x7FFFFFFF;
      if (*__src && (__src[8] & 1) != 0)
      {
        (*(**__src + 40))();
      }
    }

    else
    {
      LOBYTE(v280) = 1;
    }

    v34 = v328[0];
    if (v328[0] && (v328[1] & 1) != 0)
    {
      v34 = (*(*v328[0] + 40))();
    }
  }

  else
  {
    v280 = 0;
  }

  v282 = v24;
  v283 = v33;
  v42 = *(v4 + 400);
  v291 = v4;
  v289 = v5;
  if (v42)
  {
    v290 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 664 * v42;
    v47 = (*(v4 + 416) + 16);
    do
    {
      if (*(v47 - 1))
      {
        v48 = *v47;
      }

      else
      {
        v48 = v47 - 7;
      }

      v34 = strcmp(v48, "Transparent");
      if (v34)
      {
        v34 = strcmp(v48, "TransparentAR");
        if (v34)
        {
          v34 = strcmp(v48, "TransparentDynamicLighting");
          if (v34)
          {
            v34 = strcmp(v48, "TransparentARDynamicLighting");
            v45 |= v34 == 0;
          }

          else
          {
            v44 = 1;
          }
        }

        else
        {
          v43 = 1;
        }
      }

      else
      {
        v290 = 1;
      }

      v47 += 83;
      v46 -= 664;
    }

    while (v46);
    HIDWORD(v279) = v43 | v45;
    LOBYTE(v279) = v44 | v45;
  }

  else
  {
    v279 = 0;
    v290 = 0;
  }

  v340 = 0;
  memset(v339, 0, sizeof(v339));
  v341 = 0x7FFFFFFFLL;
  v49 = *(v4 + 440);
  if (v49)
  {
    v50 = *(v4 + 456);
    v51 = 72 * v49;
    do
    {
      re::DynamicString::DynamicString(v328, v50);
      re::DynamicArray<re::DynamicString>::DynamicArray(v329, v50 + 4);
      memset(__src, 0, sizeof(__src));
      v52 = re::Hash<re::DynamicString>::operator()(&v350, v328);
      re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v339, v328, v52, __src);
      if (*&__src[12] == 0x7FFFFFFF)
      {
        re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::DynamicArray<re::DynamicString> const&>(v339, *__src, *&__src[8], v328, v329);
      }

      re::MaterialTechniqueGroupData::deinit(v328);
      re::DynamicArray<re::DynamicString>::deinit(v329);
      v34 = v328[0];
      if (v328[0] && (v328[1] & 1) != 0)
      {
        v34 = (*(*v328[0] + 40))();
      }

      v50 += 9;
      v51 -= 72;
    }

    while (v51);
  }

  v337 = 0;
  v335 = 0u;
  v336 = 0u;
  v338 = 0x7FFFFFFFLL;
  v53 = *(v4 + 664);
  if (v53)
  {
    v54 = *(v4 + 680);
    v55 = (v54 + 104 * v53);
    do
    {
      re::MaterialTechniqueQualityLevelSetData::MaterialTechniqueQualityLevelSetData(v328, v54);
      re::DynamicArray<re::DynamicString>::DynamicArray(__src, v330);
      re::DynamicString::DynamicString((v345 + 8), v329);
      v56 = re::Hash<re::DynamicString>::operator()(&v350, v328);
      v57 = v56;
      if (v335)
      {
        v58 = v56 % DWORD2(v336);
        v59 = *(*(&v335 + 1) + 4 * v58);
        if (v59 != 0x7FFFFFFF)
        {
          v60 = v336;
          while (!re::DynamicString::operator==(v60 + 120 * v59 + 8, v328))
          {
            v61 = *(v60 + 120 * v59);
            v59 = v61 & 0x7FFFFFFF;
            if ((v61 & 0x7FFFFFFF) == 0x7FFFFFFF)
            {
              goto LABEL_107;
            }
          }

          goto LABEL_108;
        }
      }

      else
      {
        LODWORD(v58) = 0;
      }

LABEL_107:
      v62 = re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(&v335, v58, v57);
      re::DynamicString::DynamicString((v62 + 8), v328);
      *(v62 + 40) = *__src;
      *__src = 0;
      *(v62 + 48) = *&__src[8];
      *&__src[8] = 0u;
      LODWORD(v344) = v344 + 1;
      *(v62 + 64) = 1;
      *(v62 + 72) = v345[0];
      v63 = *&v345[2];
      v64 = *(&v345[1] + 1);
      v65 = *&v345[1];
      memset(v345, 0, 40);
      *(v62 + 96) = v64;
      *(v62 + 104) = v63;
      *(v62 + 88) = v65;
      ++HIDWORD(v338);
LABEL_108:
      v4 = v291;
      if (*(&v345[0] + 1))
      {
        if (v345[1])
        {
          (*(**(&v345[0] + 1) + 40))();
        }

        memset(v345 + 8, 0, 32);
      }

      re::DynamicArray<re::DynamicString>::deinit(__src);
      re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(v328);
      v54 = (v54 + 104);
    }

    while (v54 != v55);
  }

  v333 = 0;
  v332 = 0u;
  v331 = 0u;
  v334 = 0x7FFFFFFFLL;
  v66 = *(v4 + 628);
  if (v66)
  {
    v68 = *(v4 + 632);
    if (v68)
    {
      v69 = 0;
      v70 = *(v4 + 616);
      while (1)
      {
        v71 = *v70;
        v70 += 24;
        if (v71 < 0)
        {
          break;
        }

        if (v68 == ++v69)
        {
          LODWORD(v69) = *(v4 + 632);
          break;
        }
      }
    }

    else
    {
      LODWORD(v69) = 0;
    }

    if (v69 != v68)
    {
      v72 = MEMORY[0x1E69E9830];
      v73 = *(v4 + 632);
      while (1)
      {
        v74 = *(v4 + 616) + 96 * v69;
        if (*(v74 + 80) == 1 && (*(v74 + 81) & 1) != 0)
        {
          goto LABEL_166;
        }

        v75 = v74 + 8;
        if (*(v74 + 40) == 1)
        {
          v76 = (v74 + 48);
LABEL_143:
          re::DynamicString::DynamicString(v328, v76);
          v80 = *(v75 + 8);
          goto LABEL_144;
        }

        v77 = *(v74 + 16);
        if (v77)
        {
          v78 = v77 >> 1;
        }

        else
        {
          v78 = v77 >> 1;
        }

        v76 = (v74 + 8);
        if (!v78)
        {
          goto LABEL_143;
        }

        memset(&v328[1], 0, 24);
        re::DynamicString::setCapacity(v328, v78);
        v79 = re::DynamicString::operator[](v75, 0);
        __src[0] = __toupper(*v79);
        re::DynamicString::append(v328, __src, 1uLL);
        v80 = *(v75 + 8);
        v81 = v80 >> 1;
        if ((v80 & 1) == 0)
        {
          v81 = (v80 >> 1) & 0x7E;
        }

        if (v81 >= 2)
        {
          break;
        }

LABEL_144:
        if (v80)
        {
          v86 = *(v75 + 16);
          if (!v86)
          {
            v90 = 0x7FFFFFFFFFFFFFFFLL;
            v4 = v291;
            goto LABEL_155;
          }

          LOBYTE(v85) = *v86;
        }

        else
        {
          v85 = v80 >> 8;
          v86 = (v75 + 9);
        }

        v4 = v291;
        if (v85)
        {
          v85 = v85;
          v87 = v86[1];
          if (v87)
          {
            v88 = v86 + 2;
            do
            {
              v85 = 31 * v85 + v87;
              v89 = *v88++;
              v87 = v89;
            }

            while (v89);
          }

          v90 = v85 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v90 = 0;
        }

LABEL_155:
        v91 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v90 ^ (v90 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v90 ^ (v90 >> 30))) >> 27));
        v92 = v91 ^ (v91 >> 31);
        if (v331)
        {
          v93 = v92 % DWORD2(v332);
          v94 = *(*(&v331 + 1) + 4 * v93);
          if (v94 != 0x7FFFFFFF)
          {
            while (*(v332 + 48 * v94 + 8) != v90)
            {
              LODWORD(v94) = *(v332 + 48 * v94) & 0x7FFFFFFF;
              if (v94 == 0x7FFFFFFF)
              {
                goto LABEL_161;
              }
            }

            goto LABEL_162;
          }
        }

        else
        {
          LODWORD(v93) = 0;
        }

LABEL_161:
        v95 = re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(&v331, v93, v92);
        v96 = v328[0];
        *(v95 + 8) = v90;
        *(v95 + 16) = v96;
        *(v95 + 40) = v328[3];
        v328[3] = 0;
        *(v95 + 24) = *&v328[1];
        memset(v328, 0, 24);
        ++HIDWORD(v334);
LABEL_162:
        v67 = v328[0];
        if (v328[0] && (v328[1] & 1) != 0)
        {
          v67 = (*(*v328[0] + 40))();
        }

        v73 = *(v4 + 632);
LABEL_166:
        if (v73 <= v69 + 1)
        {
          v97 = v69 + 1;
        }

        else
        {
          v97 = v73;
        }

        while (v97 - 1 != v69)
        {
          LODWORD(v69) = v69 + 1;
          if ((*(*(v4 + 616) + 96 * v69) & 0x80000000) != 0)
          {
            goto LABEL_173;
          }
        }

        LODWORD(v69) = v97;
LABEL_173:
        if (v69 == v68)
        {
          goto LABEL_174;
        }
      }

      v82 = 1;
      while (1)
      {
        v83 = *re::DynamicString::operator[](v75, v82);
        if ((v83 & 0x80000000) != 0)
        {
          break;
        }

        if ((*(v72 + 4 * v83 + 60) & 0x8000) != 0)
        {
          goto LABEL_136;
        }

LABEL_137:
        __src[0] = *re::DynamicString::operator[](v75, v82);
        re::DynamicString::append(v328, __src, 1uLL);
        ++v82;
        v80 = *(v75 + 8);
        v84 = v80 >> 1;
        if ((v80 & 1) == 0)
        {
          v84 = v80 >> 1;
        }

        if (v84 <= v82)
        {
          goto LABEL_144;
        }
      }

      if (!__maskrune(v83, 0x8000uLL))
      {
        goto LABEL_137;
      }

LABEL_136:
      __src[0] = 32;
      re::DynamicString::append(v328, __src, 1uLL);
      goto LABEL_137;
    }
  }

LABEL_174:
  re::MaterialDefinitionBuilder::MaterialDefinitionBuilder(v328, v4, (v4 + 32), v287, &v331, v4 + 464, v4 + 512, v339, v342, &v335);
  v98 = *(v4 + 400);
  v99 = v289;
  if (!v98)
  {
LABEL_535:
    re::MaterialDefinitionBuilder::MaterialDefinitionBuilder(__src, v328);
    *v285 = 1;
    re::MaterialDefinitionBuilder::MaterialDefinitionBuilder(v285 + 8, __src);
    re::MaterialDefinitionBuilder::~MaterialDefinitionBuilder(__src);
    goto LABEL_567;
  }

  v100 = *(v4 + 416);
  v288 = (v4 + 9);
  v284 = v100 + 664 * v98;
  v101 = &selRef_isLimitedRenderAsset;
  v102 = &selRef_iosurface;
  while (1)
  {
    re::MaterialDefinitionBuilder::addTechnique(v328, v100, v325);
    if ((v325[0] & 1) == 0)
    {
      re::DynamicString::DynamicString(__src, &v326);
      *v285 = 0;
      v266 = v344;
      *(v285 + 8) = *__src;
      *(v285 + 32) = v266;
      *(v285 + 16) = *&__src[8];
      goto LABEL_563;
    }

    v103 = *(v100 + 120);
    if (v103)
    {
      v104 = v103 >> 1;
    }

    else
    {
      v104 = v103 >> 1;
    }

    if (!v104)
    {
      if (*(v4 + 8))
      {
        v288 = *(v4 + 16);
      }

      if (*(v100 + 8))
      {
        v267 = *(v100 + 16);
      }

      else
      {
        v267 = v100 + 9;
      }

      re::DynamicString::format("[%s] - Failed to create builder because vertex shader for technique '%s' is empty.", __src, v288, v267);
      goto LABEL_562;
    }

    v105 = v326;
    re::getLibraryHash(v323, v99, v4, v100, (v100 + 88));
    if ((v323[0] & 1) == 0)
    {
      if (*(v4 + 8))
      {
        v288 = *(v4 + 16);
      }

      if (*(v100 + 8))
      {
        v268 = *(v100 + 16);
      }

      else
      {
        v268 = v100 + 9;
      }

      re::DynamicString::format("[%s] - unable to get vertex library hash for technique '%s'", __src, v288, v268);
LABEL_562:
      v272 = *__src;
      v273 = *&__src[16];
      v274 = v344;
      *v285 = 0;
      *(v285 + 8) = v272;
      *(v285 + 24) = v273;
      *(v285 + 32) = v274;
      goto LABEL_563;
    }

    v106 = v324;
    *(v105 + 32) = v324;
    v107 = *(v99 + 48);
    *__src = v106;
    v108 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v107 + 376, __src);
    if (!v108)
    {
      if (*(v4 + 8))
      {
        v288 = *(v4 + 16);
      }

      if (*(v100 + 120))
      {
        v269 = *(v100 + 128);
      }

      else
      {
        v269 = v100 + 121;
      }

      if (*(v100 + 8))
      {
        v271 = *(v100 + 16);
      }

      else
      {
        v271 = v100 + 9;
      }

      re::DynamicString::format("[%s] - makeLibrary failed for vertex shader function '%s' in technique '%s'.", __src, v288, v269, v271);
      goto LABEL_562;
    }

    v109 = v108;
    re::DynamicString::operator=((v105 + 40), (v100 + 112));
    v110 = (*(v105 + 48) & 1) != 0 ? *(v105 + 56) : (v105 + 49);
    re::mtl::Library::makeFunction((v109 + 8), v110, &v322);
    if (!v322)
    {
      break;
    }

    v111 = [v322 functionConstantsDictionary];
    memset(v319, 0, sizeof(v319));
    v320 = 0;
    v321 = 0x7FFFFFFFLL;
    v112 = [v111 keyEnumerator];
    v113 = [v112 v101[138]];
    if (v113)
    {
      v114 = v113;
      do
      {
        *__src = [v114 v102[319]];
        v350 = [v111 objectForKey_];
        re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(v319, __src, &v350);
        if (v350)
        {
        }

        v114 = [v112 v101[138]];
      }

      while (v114);
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v318, v100 + 328);
    v115 = [*(v99 + 208) supportsFamily:1003];
    v116 = *(v99 + 369);
    v117 = [*(v99 + 208) supportsFamily:1007];
    v118 = re::mtl::Device::needsArgumentBufferTextureEmulation((v99 + 208));
    v119 = re::mtl::Device::supportsPrimitiveIdentifier((v99 + 208));
    v120 = [*(v99 + 208) supportsShaderBarycentricCoordinates];
    v286 = v105;
    if (*(v99 + 371) == 1 && *v99 == 1)
    {
      v121 = v118;
      v122 = *(v100 + 272);
      v123 = v120;
      if (v122)
      {
        v124 = 32 * v122 - 32;
        v125 = (*(v100 + 288) + 1);
        do
        {
          v127 = *v125;
          v125 += 32;
          v126 = v127;
          if (v127)
          {
            break;
          }

          v128 = v124;
          v124 -= 32;
        }

        while (v128);
      }

      else
      {
        v126 = *(v100 + 201);
      }
    }

    else
    {
      v123 = v120;
      v121 = v118;
      v126 = 0;
    }

    re::DynamicString::find(v100, "Selection", 9, 0, __src);
    re::MaterialManager::addSupportConstantsToArray(v115, v116, v117, v126 & 1, v121, v119, v123, __src[0], v318);
    v129 = v288;
    v99 = v289;
    v130 = *(v289 + 299);
    v4 = v291;
    if (*(v291 + 8))
    {
      v129 = *(v291 + 16);
    }

    v316[0] = 0;
    v315[0] = 0;
    re::parseFunctionConstants(v129, v319, v318, v316, v315, 0, v130, 0, &v350);
    if (v316[0] == 1)
    {
      re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v317);
    }

    if ((v350 & 1) == 0)
    {
      re::DynamicString::DynamicString(__src, &v351);
      v135 = 0;
      *v285 = 0;
      v136 = v344;
      *(v285 + 8) = *__src;
      *(v285 + 32) = v136;
      *(v285 + 16) = *&__src[8];
LABEL_211:
      v101 = &selRef_isLimitedRenderAsset;
      v102 = &selRef_iosurface;
      goto LABEL_212;
    }

    v131 = v354;
    if (v354)
    {
      v132 = 0;
      v133 = v353;
      while (1)
      {
        v134 = *v133;
        v133 += 38;
        if (v134 < 0)
        {
          break;
        }

        if (v354 == ++v132)
        {
          LODWORD(v132) = v354;
          break;
        }
      }
    }

    else
    {
      LODWORD(v132) = 0;
    }

    if (v132 != v354)
    {
      v138 = v353;
      do
      {
        re::DynamicArray<re::TechniqueFunctionConstant>::add((v286 + 336), &v138[38 * v132 + 10]);
        if (v354 <= v132 + 1)
        {
          v139 = v132 + 1;
        }

        else
        {
          v139 = v354;
        }

        v138 = v353;
        while (v139 - 1 != v132)
        {
          LODWORD(v132) = v132 + 1;
          if (v353[38 * v132] < 0)
          {
            goto LABEL_237;
          }
        }

        LODWORD(v132) = v139;
LABEL_237:
        ;
      }

      while (v132 != v131);
    }

    v140 = *(v100 + 440);
    if (v140)
    {
      v141 = *(v100 + 456);
      v142 = 32 * v140;
      do
      {
        *__src = re::Hash<re::DynamicString>::operator()(__src, v141);
        re::DynamicArray<unsigned long>::add(v286 + 55, __src);
        v141 += 32;
        v142 -= 32;
      }

      while (v142);
    }

    v143 = *(v100 + 553);
    *(v286 + 685) = v143;
    if (v143)
    {
      re::MaterialManager::addDefaultVariationFallbackValues(*(v289 + 24), v286);
    }

    *(v286 + 684) = *(v100 + 656);
    re::parseUsedConstantsMask(__src, v319);
    *(v286 + 72) = *__src;
    re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::operator=(v286 + 88, &__src[16]);
    re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(&__src[16]);
    if (*(v286 + 686))
    {
      if (*(v100 + 657))
      {
        goto LABEL_248;
      }

      *(v286 + 686) = 0;
    }

    else if (*(v100 + 657))
    {
      *(v286 + 686) = 1;
LABEL_248:
      *(v286 + 687) = *(v100 + 658);
    }

    if (*(v100 + 659) == 1)
    {
      v144 = *(v100 + 660);
    }

    else
    {
      v144 = 0;
    }

    *(v286 + 688) = v144;
    *(v286 + 170) = 0;
    v145 = re::Hash<re::DynamicString>::operator()(__src, v100);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v291 + 688, v100, v145, __src);
    if (*&__src[12] != 0x7FFFFFFF)
    {
      *(v286 + 170) = *(*(v291 + 704) + 56 * *&__src[12] + 40);
    }

    if (*(v286 + 685) == 1)
    {
      v146 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(&v346, v100 + 560);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(&v346, "EnableRuntimeFunctionConstants", __src);
      if (*__src && (__src[8] & 1) != 0)
      {
        (*(**__src + 40))();
      }

      if (*(v286 + 48))
      {
        v147 = *(v286 + 7);
      }

      else
      {
        v147 = v286 + 49;
      }

      re::MaterialManager::getEngineShaderMetadata(*(v289 + 24), v147, &v299);
      if (v299 == 1 && BYTE1(v299) == 1)
      {
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(&v346, "EnableManualVertexFetch", __src);
        if (*__src)
        {
          if (__src[8])
          {
            (*(**__src + 40))();
          }
        }
      }

      v149 = v288;
      if (*(v291 + 8))
      {
        v149 = *(v291 + 16);
      }

      v313[0] = 0;
      v312[0] = 0;
      re::parseFunctionConstants(v149, v319, &v346, v313, v312, 0, v130, 1, __src);
      if (v313[0] == 1)
      {
        re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v314);
      }

      v135 = __src[0];
      if (__src[0])
      {
        v150 = DWORD2(v345[0]);
        if (DWORD2(v345[0]))
        {
          v151 = 0;
          v152 = v344;
          while (1)
          {
            v153 = *v152;
            v152 += 38;
            if (v153 < 0)
            {
              break;
            }

            if (DWORD2(v345[0]) == ++v151)
            {
              LODWORD(v151) = DWORD2(v345[0]);
              break;
            }
          }
        }

        else
        {
          LODWORD(v151) = 0;
        }

        if (v151 != DWORD2(v345[0]))
        {
          v155 = v344;
          do
          {
            re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v286 + 584, &v155[38 * v151 + 2], &v155[38 * v151 + 10]);
            if (DWORD2(v345[0]) <= (v151 + 1))
            {
              v156 = v151 + 1;
            }

            else
            {
              v156 = DWORD2(v345[0]);
            }

            v155 = v344;
            while (v156 - 1 != v151)
            {
              LODWORD(v151) = v151 + 1;
              if ((v344[38 * v151] & 0x80000000) != 0)
              {
                goto LABEL_289;
              }
            }

            LODWORD(v151) = v156;
LABEL_289:
            ;
          }

          while (v151 != v150);
        }
      }

      else
      {
        re::DynamicString::DynamicString(v305, &__src[8]);
        *v285 = 0;
        v154 = v305[3];
        *(v285 + 8) = v305[0];
        *(v285 + 32) = v154;
        *(v285 + 16) = *&v305[1];
      }

      if (__src[0] == 1)
      {
        re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&__src[8]);
      }

      else if (*&__src[8] && (__src[16] & 1) != 0)
      {
        (*(**&__src[8] + 40))();
      }

      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v346);
      if (!v135)
      {
        goto LABEL_211;
      }
    }

    re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v286 + 632, v100 + 608);
    v157 = *(v100 + 404);
    if (v157)
    {
      v158 = v288;
      if (*(v291 + 8))
      {
        v158 = *(v291 + 16);
      }

      v311 = v322;
      re::parseVariationTable(v158, &v311, v100 + 376, __src);
      if (v311)
      {

        v311 = 0;
      }

      v135 = __src[0];
      if (__src[0])
      {
        if (v286 + 376 != &__src[8])
        {
          re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::copy(v286 + 47, &__src[8]);
        }
      }

      else
      {
        v159 = v288;
        if (*(v291 + 8))
        {
          v159 = *(v291 + 16);
        }

        v160 = &__src[17];
        if (__src[16])
        {
          v160 = v344;
        }

        re::DynamicString::format("[%s] - Failed to parse vertex shader permuted function constants: %s.", &v346, v159, v160);
        v161 = v346;
        v162 = v347;
        v163 = v348;
        *v285 = 0;
        *(v285 + 8) = v161;
        *(v285 + 24) = v162;
        *(v285 + 32) = v163;
      }

      if (__src[0] == 1)
      {
        re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&__src[8]);
      }

      else if (*&__src[8] && (__src[16] & 1) != 0)
      {
        (*(**&__src[8] + 40))();
      }

      if (!v135)
      {
        v99 = v289;
        goto LABEL_211;
      }
    }

    v164 = *(v100 + 176);
    if (v164)
    {
      v165 = v164 >> 1;
    }

    else
    {
      v165 = v164 >> 1;
    }

    if (v165)
    {
      re::getLibraryHash(v309, v289, v291, v100, (v100 + 144));
      if (v309[0])
      {
        v166 = v310;
        *(v286 + 17) = v310;
        v167 = *(v289 + 48);
        *__src = v166;
        v168 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v167 + 376, __src);
        if (v168)
        {
          v169 = v168;
          re::DynamicString::operator=((v286 + 144), (v100 + 168));
          if (*(v286 + 152))
          {
            v170 = *(v286 + 20);
          }

          else
          {
            v170 = (v286 + 153);
          }

          re::mtl::Library::makeFunction((v169 + 8), v170, &v308);
          if (v308)
          {
            v175 = [v308 functionConstantsDictionary];
            memset(v305, 0, sizeof(v305));
            v306 = 0;
            v307 = 0x7FFFFFFFLL;
            v176 = [v175 keyEnumerator];
            v177 = [v176 nextObject];
            if (v177)
            {
              v178 = v177;
              do
              {
                *__src = [v178 UTF8String];
                *&v346 = [v175 objectForKey_];
                re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(v305, __src, &v346);
                if (v346)
                {
                }

                v178 = [v176 nextObject];
              }

              while (v178);
            }

            v179 = v288;
            if (*(v291 + 8))
            {
              v179 = *(v291 + 16);
            }

            v303[0] = 0;
            v302[0] = 0;
            re::parseFunctionConstants(v179, v305, v318, v303, v302, 0, v130, 0, &v346);
            if (v303[0] == 1)
            {
              re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v304);
            }

            if (v346)
            {
              v180 = v349;
              if (v349)
              {
                v181 = 0;
                v182 = v348;
                while (1)
                {
                  v183 = *v182;
                  v182 += 38;
                  if (v183 < 0)
                  {
                    break;
                  }

                  if (v349 == ++v181)
                  {
                    LODWORD(v181) = v349;
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v181) = 0;
              }

              if (v181 != v349)
              {
                v193 = v348;
                do
                {
                  v194 = &v193[38 * v181];
                  v195 = re::Hash<re::DynamicString>::operator()(__src, (v194 + 2));
                  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v351, (v194 + 2), v195, __src);
                  if (*&__src[12] == 0x7FFFFFFF)
                  {
                    re::DynamicArray<re::TechniqueFunctionConstant>::add((v286 + 336), &v193[38 * v181 + 10]);
                  }

                  if (v349 <= v181 + 1)
                  {
                    v196 = v181 + 1;
                  }

                  else
                  {
                    v196 = v349;
                  }

                  v193 = v348;
                  while (v196 - 1 != v181)
                  {
                    LODWORD(v181) = v181 + 1;
                    if ((v348[38 * v181] & 0x80000000) != 0)
                    {
                      goto LABEL_383;
                    }
                  }

                  LODWORD(v181) = v196;
LABEL_383:
                  ;
                }

                while (v181 != v180);
              }

              re::parseUsedConstantsMask(__src, v305);
              *(v286 + 11) = *__src;
              re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::operator=(v286 + 192, &__src[16]);
              v197.n128_f64[0] = re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(&__src[16]);
              if (*(v286 + 685))
              {
                v198 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(&v299, v100 + 560);
                re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(&v299, "EnableRuntimeFunctionConstants", __src);
                if (*__src && (__src[8] & 1) != 0)
                {
                  (*(**__src + 40))();
                }

                v199 = v288;
                if (*(v291 + 8))
                {
                  v199 = *(v291 + 16);
                }

                v297[0] = 0;
                v296[0] = 0;
                re::parseFunctionConstants(v199, v305, &v299, v297, v296, 0, v130, 1, __src);
                if (v297[0] == 1)
                {
                  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v298);
                }

                v200 = __src[0];
                if (__src[0])
                {
                  v201 = DWORD2(v345[0]);
                  if (DWORD2(v345[0]))
                  {
                    v202 = 0;
                    v203 = v344;
                    while (1)
                    {
                      v204 = *v203;
                      v203 += 38;
                      if (v204 < 0)
                      {
                        break;
                      }

                      if (DWORD2(v345[0]) == ++v202)
                      {
                        LODWORD(v202) = DWORD2(v345[0]);
                        break;
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v202) = 0;
                  }

                  if (v202 != DWORD2(v345[0]))
                  {
                    v205 = v344;
                    do
                    {
                      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v286 + 584, &v205[38 * v202 + 2], &v205[38 * v202 + 10]);
                      if (DWORD2(v345[0]) <= (v202 + 1))
                      {
                        v206 = v202 + 1;
                      }

                      else
                      {
                        v206 = DWORD2(v345[0]);
                      }

                      v205 = v344;
                      while (v206 - 1 != v202)
                      {
                        LODWORD(v202) = v202 + 1;
                        if ((v344[38 * v202] & 0x80000000) != 0)
                        {
                          goto LABEL_410;
                        }
                      }

                      LODWORD(v202) = v206;
LABEL_410:
                      ;
                    }

                    while (v202 != v201);
                  }
                }

                else
                {
                  re::DynamicString::DynamicString(&v293, &__src[8]);
                  *v285 = 0;
                  *(v285 + 8) = v293;
                  *(v285 + 32) = v295;
                  *(v285 + 16) = v294;
                }

                if (__src[0] == 1)
                {
                  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&__src[8]);
                }

                else if (*&__src[8] && (__src[16] & 1) != 0)
                {
                  (*(**&__src[8] + 40))();
                }

                v197.n128_f64[0] = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v299);
                if (!v200)
                {
                  goto LABEL_356;
                }
              }

              if (!v157)
              {
                goto LABEL_434;
              }

              v207 = v288;
              if (*(v291 + 8))
              {
                v207 = *(v291 + 16);
              }

              v292 = v308;
              re::parseVariationTable(v207, &v292, v100 + 376, __src);
              if (v292)
              {

                v292 = 0;
              }

              if (__src[0])
              {
                re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v299, &__src[8]);
                while (v300 != -1)
                {
                  v208 = (*(v299 + 8) + 96 * v300);
                  if (re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(v286 + 47, v208) == -1)
                  {
                    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v286 + 47, v208, v208 + 32);
                  }

                  re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v299);
                }

                re::Result<re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::DynamicString>::~Result(__src);
LABEL_434:
                if (v346 == 1)
                {
                  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v346 + 1);
                }

                else if (*(&v346 + 1) && (v347 & 1) != 0)
                {
                  (*(**(&v346 + 1) + 40))(v197);
                }

                re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v305);
                if (v308)
                {
                }

                goto LABEL_441;
              }

              v209 = v288;
              if (*(v291 + 8))
              {
                v209 = *(v291 + 16);
              }

              v210 = &__src[17];
              if (__src[16])
              {
                v210 = v344;
              }

              re::DynamicString::format("[%s] - Failed to parse fragment shader permuted function constants: %s.", &v299, v209, v210);
              v211 = v299;
              v212 = v300;
              v213 = v301;
              *v285 = 0;
              *(v285 + 8) = v211;
              *(v285 + 24) = v212;
              *(v285 + 32) = v213;
              re::Result<re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::DynamicString>::~Result(__src);
            }

            else
            {
              re::DynamicString::DynamicString(__src, (&v346 + 8));
              *v285 = 0;
              v186 = v344;
              *(v285 + 8) = *__src;
              *(v285 + 32) = v186;
              *(v285 + 16) = *&__src[8];
            }

LABEL_356:
            if (v346 == 1)
            {
              re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v346 + 1);
              v99 = v289;
              v101 = &selRef_isLimitedRenderAsset;
              v102 = &selRef_iosurface;
            }

            else
            {
              v99 = v289;
              v101 = &selRef_isLimitedRenderAsset;
              v102 = &selRef_iosurface;
              if (*(&v346 + 1) && (v347 & 1) != 0)
              {
                (*(**(&v346 + 1) + 40))();
              }
            }

            re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v305);
          }

          else
          {
            v184 = v288;
            if (*(v291 + 8))
            {
              v184 = *(v291 + 16);
            }

            v99 = v289;
            v101 = &selRef_isLimitedRenderAsset;
            v102 = &selRef_iosurface;
            if (*(v286 + 152))
            {
              v185 = *(v286 + 20);
            }

            else
            {
              v185 = v286 + 153;
            }

            re::DynamicString::format("[%s] - makeFunction failed for pixel shader function %s.", __src, v184, v185);
            v190 = *__src;
            v191 = *&__src[16];
            v192 = v344;
            *v285 = 0;
            *(v285 + 8) = v190;
            *(v285 + 24) = v191;
            *(v285 + 32) = v192;
          }

          if (v308)
          {
          }

LABEL_361:
          v135 = 0;
          goto LABEL_212;
        }

        v173 = v288;
        if (*(v291 + 8))
        {
          v173 = *(v291 + 16);
        }

        v99 = v289;
        v101 = &selRef_isLimitedRenderAsset;
        v102 = &selRef_iosurface;
        if (*(v100 + 176))
        {
          v174 = *(v100 + 184);
        }

        else
        {
          v174 = v100 + 177;
        }

        re::DynamicString::format("[%s] - makeLibrary failed for pixel shader function %s.", __src, v173, v174);
      }

      else
      {
        v171 = v288;
        if (*(v291 + 8))
        {
          v171 = *(v291 + 16);
        }

        v99 = v289;
        v101 = &selRef_isLimitedRenderAsset;
        v102 = &selRef_iosurface;
        if (*(v100 + 8))
        {
          v172 = *(v100 + 16);
        }

        else
        {
          v172 = v100 + 9;
        }

        re::DynamicString::format("[%s] - unable to get fragment library hash for technique '%s'", __src, v171, v172);
      }

      v187 = *__src;
      v188 = *&__src[16];
      v189 = v344;
      *v285 = 0;
      *(v285 + 8) = v187;
      *(v285 + 24) = v188;
      *(v285 + 32) = v189;
      goto LABEL_361;
    }

LABEL_441:
    v214 = *(v100 + 304);
    v215 = v214 >> 1;
    if ((v214 & 1) == 0)
    {
      v215 = v214 >> 1;
    }

    v99 = v289;
    v101 = &selRef_isLimitedRenderAsset;
    if (v215)
    {
      if (v214)
      {
        v217 = *(v100 + 312);
        if (!v217)
        {
          v221 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_455:
          if ((*(v286 + 520) & 1) == 0)
          {
            *(v286 + 520) = 1;
          }

          *(v286 + 66) = v221;
          goto LABEL_458;
        }

        LOBYTE(v216) = *v217;
      }

      else
      {
        v216 = v214 >> 8;
        v217 = (v100 + 305);
      }

      if (v216)
      {
        v216 = v216;
        v218 = v217[1];
        if (v218)
        {
          v219 = v217 + 2;
          do
          {
            v216 = 31 * v216 + v218;
            v220 = *v219++;
            v218 = v220;
          }

          while (v220);
        }

        v221 = v216 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v221 = 0;
      }

      goto LABEL_455;
    }

LABEL_458:
    v222 = *(v100 + 496);
    if (v222)
    {
      v223 = 0;
      v224 = *(v100 + 480);
      do
      {
        v225 = *v224;
        v224 += 20;
        if (v225 < 0)
        {
          goto LABEL_495;
        }

        ++v223;
      }

      while (v222 != v223);
      LODWORD(v223) = *(v100 + 496);
    }

    else
    {
      LODWORD(v223) = 0;
    }

LABEL_495:
    while (v223 != v222)
    {
      v226 = *(v100 + 480) + 80 * v223;
      v227 = *(v226 + 16);
      if (v227)
      {
        v229 = *(v226 + 24);
        if (!v229)
        {
          v234 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_475;
        }

        LOBYTE(v230) = *v229;
      }

      else
      {
        v228 = v227 >> 8;
        v229 = (v226 + 17);
        LOBYTE(v230) = v228;
      }

      if (v230)
      {
        v230 = v230;
        v231 = v229[1];
        if (v231)
        {
          v232 = v229 + 2;
          do
          {
            v230 = 31 * v230 + v231;
            v233 = *v232++;
            v231 = v233;
          }

          while (v233);
        }

        v234 = v230 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v234 = 0;
      }

LABEL_475:
      v235 = v226 + 40;
      *&v346 = v234;
      v236 = *(v235 + 8);
      if ((v236 & 1) == 0)
      {
        v237 = v236 >> 8;
        v238 = (v235 + 9);
        LOBYTE(v235) = v237;
        goto LABEL_479;
      }

      v238 = *(v235 + 16);
      if (v238)
      {
        LOBYTE(v235) = *v238;
LABEL_479:
        if (v235)
        {
          v235 = v235;
          v239 = v238[1];
          if (v239)
          {
            v240 = v238 + 2;
            do
            {
              v235 = 31 * v235 + v239;
              v241 = *v240++;
              v239 = v241;
            }

            while (v241);
          }

          v242 = v235 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v242 = 0;
        }

        goto LABEL_486;
      }

      v242 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_486:
      memset(__src, 0, sizeof(__src));
      v243 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v234 ^ (v234 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v234 ^ (v234 >> 30))) >> 27));
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v286 + 536, &v346, v243 ^ (v243 >> 31), __src);
      v244 = *&__src[12];
      if (*&__src[12] == 0x7FFFFFFF)
      {
        v245 = re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(v286 + 536, *&__src[8], *__src);
        *(v245 + 8) = v346;
        *(v245 + 16) = v242;
        ++*(v286 + 144);
      }

      else
      {
        ++*(v286 + 144);
        *(*(v286 + 69) + 24 * v244 + 16) = v242;
      }

      v246 = *(v100 + 496);
      if (v246 <= v223 + 1)
      {
        v246 = v223 + 1;
      }

      while (v246 - 1 != v223)
      {
        LODWORD(v223) = v223 + 1;
        if ((*(*(v100 + 480) + 80 * v223) & 0x80000000) != 0)
        {
          goto LABEL_495;
        }
      }

      LODWORD(v223) = v246;
    }

    v247 = *(v100 + 528);
    v102 = &selRef_iosurface;
    if (v247)
    {
      v248 = *(v100 + 544);
      v249 = v248 + 32 * v247;
      while (1)
      {
        v250 = *(v248 + 8);
        if ((v250 & 1) == 0)
        {
          break;
        }

        v252 = *(v248 + 16);
        if (v252)
        {
          LOBYTE(v251) = *v252;
LABEL_502:
          if (v251)
          {
            v251 = v251;
            v253 = v252[1];
            if (v253)
            {
              v254 = v252 + 2;
              do
              {
                v251 = 31 * v251 + v253;
                v255 = *v254++;
                v253 = v255;
              }

              while (v255);
            }

            v256 = v251 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v256 = 0;
          }

          goto LABEL_509;
        }

        v256 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_509:
        *__src = v256;
        re::DynamicArray<re::WeakStringID>::add(v286 + 60, __src);
        v248 += 32;
        if (v248 == v249)
        {
          goto LABEL_510;
        }
      }

      v251 = v250 >> 8;
      v252 = (v248 + 9);
      goto LABEL_502;
    }

LABEL_510:
    v257 = *(v100 + 200);
    v258 = *(v100 + 216);
    v259 = *(v100 + 232);
    *(v286 + 72) = *(v100 + 248);
    *(v286 + 16) = v258;
    *(v286 + 17) = v259;
    *(v286 + 15) = v257;
    if (*(v286 + 292))
    {
      v260 = v282;
      if ((*(v100 + 252) & 1) == 0)
      {
        *(v286 + 292) = 0;
        goto LABEL_516;
      }

LABEL_515:
      *(v286 + 293) = *(v100 + 253);
    }

    else
    {
      v260 = v282;
      if (*(v100 + 252))
      {
        *(v286 + 292) = 1;
        goto LABEL_515;
      }
    }

LABEL_516:
    re::DynamicArray<re::RenderAttachmentState>::operator=(v286 + 296, (v100 + 256));
    if (v260)
    {
      v261 = re::DynamicString::operator==(v260, v286);
      v262 = v261 & HIDWORD(v281);
      v263 = v261 & v281;
      if (!v283 || v261)
      {
        goto LABEL_523;
      }

LABEL_521:
      v264 = re::DynamicString::operator==(v283, v286);
      v262 = v264 & HIDWORD(v280);
      v263 = v264 & v280;
    }

    else
    {
      if (v283)
      {
        goto LABEL_521;
      }

      v262 = 0;
      v263 = 0;
    }

LABEL_523:
    if ((v290 & 1) != 0 && ((*(v286 + 1) & 1) != 0 ? (v265 = *(v286 + 2)) : (v265 = v286 + 9), !strcmp(v265, "Transparent")))
    {
      v263 |= v279;
      if (((HIDWORD(v279) | v262) & 1) == 0)
      {
        goto LABEL_532;
      }

LABEL_529:
      MurmurHash3_x64_128("ARBackwardsCompatibility", 0x18uLL, 0, __src);
      *__src ^= *&__src[8] - 0x61C8864680B583E9 + (*__src << 6) + (*__src >> 2);
      re::DynamicArray<unsigned long>::add(v286 + 55, __src);
      if (v263)
      {
LABEL_533:
        MurmurHash3_x64_128("DynamicLightingBackwardsCompatibility", 0x25uLL, 0, __src);
        *__src ^= *&__src[8] - 0x61C8864680B583E9 + (*__src << 6) + (*__src >> 2);
        re::DynamicArray<unsigned long>::add(v286 + 55, __src);
      }
    }

    else
    {
      if (v262)
      {
        goto LABEL_529;
      }

LABEL_532:
      if (v263)
      {
        goto LABEL_533;
      }
    }

    v135 = 1;
LABEL_212:
    if (v350 == 1)
    {
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v351);
    }

    else if (v351 && (v352 & 1) != 0)
    {
      (*(*v351 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v318);
    v137.n128_f64[0] = re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v319);
    if (v322)
    {
    }

    if (v325[0] & 1) == 0 && v326 && (v327)
    {
      (*(*v326 + 40))(v137);
    }

    if (!v135)
    {
      goto LABEL_567;
    }

    v100 += 664;
    if (v100 == v284)
    {
      goto LABEL_535;
    }
  }

  if (*(v4 + 8))
  {
    v288 = *(v4 + 16);
  }

  if (*(v105 + 48))
  {
    v270 = *(v105 + 56);
  }

  else
  {
    v270 = v105 + 49;
  }

  if (*(v100 + 8))
  {
    v275 = *(v100 + 16);
  }

  else
  {
    v275 = v100 + 9;
  }

  re::DynamicString::format("[%s] - makeFunction failed for vertex shader function '%s' in technique '%s'.", __src, v288, v270, v275);
  v276 = *__src;
  v277 = *&__src[16];
  v278 = v344;
  *v285 = 0;
  *(v285 + 8) = v276;
  *(v285 + 24) = v277;
  *(v285 + 32) = v278;
  if (v322)
  {
  }

LABEL_563:
  if (v325[0] & 1) == 0 && v326 && (v327)
  {
    (*(*v326 + 40))();
  }

LABEL_567:
  re::MaterialDefinitionBuilder::~MaterialDefinitionBuilder(v328);
  re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(&v331);
  re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v335);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v339);
  re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(v342);
}