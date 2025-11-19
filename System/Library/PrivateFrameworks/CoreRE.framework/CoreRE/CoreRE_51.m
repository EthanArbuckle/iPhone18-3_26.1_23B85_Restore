uint64_t re::MaterialAsset::makeMaterialMemoryAssetWithFunctionConstants(re::MaterialAsset *a1, _anonymous_namespace_ *a2, re::AssetHandle *a3, uint64_t *a4, unsigned __int8 *a5, const char *a6, uint64_t a7)
{
  v13 = re::AssetHandle::AssetHandle(v17, a3);
  MaterialAssetWithFunctionConstants = re::MaterialAsset::makeMaterialAssetWithFunctionConstants(v13, a2, v17, a4, a5, a6);
  re::AssetHandle::~AssetHandle(v17);
  if (a6 && *a6)
  {
    return re::AssetService::createNamedMemoryAsset<re::MaterialAsset>(a1, MaterialAssetWithFunctionConstants, a6, a7);
  }

  re::MaterialAsset::assetType(v15);
  return (*(*a1 + 424))(a1, MaterialAssetWithFunctionConstants, &re::MaterialAsset::assetType(void)::type, 0, a7, 0);
}

void re::MaterialAsset::makeMutableMaterialMemoryAsset(re::MaterialAsset *a1, _anonymous_namespace_ *a2, re::AssetHandle *a3, const char *a4, uint64_t a5)
{
  v12[0] = 0;
  v12[2] = 0;
  v12[4] = 0;
  v12[6] = 0;
  v12[8] = 0;
  v12[10] = 0;
  v12[12] = 0;
  v12[14] = 0;
  v12[16] = 0;
  v12[18] = 0;
  re::AssetHandle::AssetHandle(v11, a3);
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  DWORD1(v10) = 0x7FFFFFFF;
  re::MaterialAsset::makeMutableMaterialMemoryAssetWithFunctionConstants(a1, a2, v11, v9, v12, a4, a5);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
  re::AssetHandle::~AssetHandle(v11);
}

uint64_t re::MaterialAsset::makeMutableMaterialMemoryAssetWithFunctionConstants(re::MaterialAsset *a1, _anonymous_namespace_ *a2, re::AssetHandle *a3, uint64_t *a4, unsigned __int8 *a5, const char *a6, uint64_t a7)
{
  v13 = re::AssetHandle::AssetHandle(v17, a3);
  MaterialAssetWithFunctionConstants = re::MaterialAsset::makeMaterialAssetWithFunctionConstants(v13, a2, v17, a4, a5, a6);
  re::AssetHandle::~AssetHandle(v17);
  if (a6 && *a6)
  {
    return re::AssetService::createMutableNamedMemoryAsset<re::MaterialAsset>(a1, MaterialAssetWithFunctionConstants, a6, a7);
  }

  re::MaterialAsset::assetType(v15);
  return (*(*a1 + 424))(a1, MaterialAssetWithFunctionConstants, &re::MaterialAsset::assetType(void)::type, 1, a7, 0);
}

uint64_t *re::MaterialAsset::makeMaterialAssetWithFunctionConstants(re *a1, _anonymous_namespace_ *a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5, const char *a6)
{
  v11 = re::globalAllocators(a1);
  v12 = (*(*v11[2] + 32))(v11[2], 1992, 8);
  bzero(v12, 0x7C8uLL);
  re::MaterialAsset::MaterialAsset(v12);
  v79[0] = re::AssetHandle::operator=((v12 + 5), a3);
  re::DynamicArray<re::TransitionCondition *>::add(v12 + 241, v79);
  v13 = *(re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(a3) + 744);
  v78 = v13;
  if (v13)
  {
    v14 = (v13 + 8);
  }

  bzero(v47, 0x210uLL);
  v47[16] = &unk_1F5CC38C8;
  memset(&v47[17], 0, 24);
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  v65 = 0;
  v63 = 0;
  v64 = 0;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v48 = 0;
  v59 = 0;
  v66 = 1;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v75 = 0u;
  v76 = 0u;
  v77 = 0;
  v28[0] = *a5;
  if (v28[0] == 1)
  {
    v28[1] = a5[1];
  }

  v29 = a5[2];
  if (v29 == 1)
  {
    v30 = a5[3];
  }

  v31 = a5[4];
  if (v31 == 1)
  {
    v32 = a5[5];
  }

  v33 = a5[6];
  if (v33 == 1)
  {
    v34 = a5[7];
  }

  v35 = a5[8];
  if (v35 == 1)
  {
    v36 = a5[9];
  }

  v37 = a5[10];
  if (v37 == 1)
  {
    v38 = a5[11];
  }

  v39 = a5[12];
  if (v39 == 1)
  {
    v40 = a5[13];
  }

  v41 = a5[14];
  if (v41 == 1)
  {
    v42 = a5[15];
  }

  v43 = a5[16];
  if (v43 == 1)
  {
    v44 = a5[17];
  }

  v45 = a5[18];
  if (v45 == 1)
  {
    v46 = a5[19];
  }

  memset(v27, 0, sizeof(v27));
  if (!a6)
  {
    a6 = "";
  }

  re::MaterialBuilder::MaterialBuilder(v79, &v78, v47, a4, v28, v27, &v25, 0, 0);
  if (v25 && (v26 & 1) != 0)
  {
    (*(*v25 + 40))();
  }

  re::FixedArray<re::LinkedFunction>::deinit(&v27[3]);
  re::FixedArray<re::LinkedFunction>::deinit(v27);
  re::ShaderParameterTable::~ShaderParameterTable(v47);
  if (v13)
  {
  }

  v80 = 7;
  v16 = *(a2 + 3);
  re::MaterialBuilder::MaterialBuilder(v24, v79);
  re::MaterialManager::createMaterial(v16, v24, v27);
  re::MaterialBuilder::~MaterialBuilder(v24);
  v47[0] = a2;
  re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(v47, &v25);
  v17 = v27[0];
  v23 = v27[0];
  if (v27[0])
  {
    v18 = (v27[0] + 8);
    re::MaterialAsset::setInstance(v12, a2, &v23);
  }

  else
  {
    re::MaterialAsset::setInstance(v12, a2, &v23);
  }

  v19 = v25;
  if (v25)
  {
    v20 = v25 + 8;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v12 + 223, v19);
  }

  else
  {
    v21 = v12[223];
    if (v21)
    {

      v12[223] = 0;
    }
  }

  if (v25)
  {
  }

  if (v27[0])
  {
  }

  re::MaterialBuilder::~MaterialBuilder(v79);
  return v12;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(re::MaterialDefinitionAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::MaterialDefinitionAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = re::AssetHandle::assetInfo(a1);
      if (v6[17])
      {
        v7 = v6[18];
      }

      else
      {
        v7 = v6 + 137;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v8, 0xCu);
    }
  }

  return v3;
}

uint64_t re::AssetService::createNamedMemoryAsset<re::MaterialAsset>(re::MaterialAsset *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = re::MaterialAsset::assetType(a1);
  (*(*a1 + 432))(a1, a2, &re::MaterialAsset::assetType(void)::type, &v10, 0, a4, 0);
  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

uint64_t re::AssetService::createMutableNamedMemoryAsset<re::MaterialAsset>(re::MaterialAsset *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = re::MaterialAsset::assetType(a1);
  (*(*a1 + 432))(a1, a2, &re::MaterialAsset::assetType(void)::type, &v10, 1, a4, 0);
  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

uint64_t re::MaterialAssetLoader::preloadAssets(re::MaterialAssetLoader *this)
{
  (*(**(this + 2) + 8))(v20);
  v2 = *(this + 2);
  *(this + 2) = *v20;
  *v20 = v2;
  v3 = *(this + 6);
  *(this + 6) = *&v20[16];
  *&v20[16] = v3;
  re::AssetHandle::~AssetHandle(v20);
  (*(**(this + 2) + 8))(v20);
  v4 = *(this + 56);
  *(this + 56) = *v20;
  *v20 = v4;
  v5 = *(this + 9);
  *(this + 9) = *&v20[16];
  *&v20[16] = v5;
  re::AssetHandle::~AssetHandle(v20);
  if ((*(**(this + 2) + 360))())
  {
    re::AssetHandle::loadAsync((this + 32));
    re::AssetHandle::loadAsync((this + 56));
  }

  re::Bundle::application(v19);
  re::Bundle::ID(v19, v20);

  if (v20[8])
  {
    v8 = *&v20[16];
    if (strcmp(*&v20[16], "com.disney.whatif"))
    {
      goto LABEL_13;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  if (*&v20[9] == 0x6E7369642E6D6F63 && *&v20[17] == 0x69746168772E7965 && v21 == 102)
  {
    goto LABEL_14;
  }

  v8 = &v20[9];
LABEL_13:
  v9 = strcmp(v8, "com.lucasfilm.phantom") != 0;
LABEL_15:
  v10 = *(this + 2);
  if (v10 && *(this + 3) != 0 && !v9)
  {
    (*(*v10 + 8))(v19);
    v11 = *(this + 2);
    v12 = *(this + 3);
    re::AssetHandle::AssetHandle(v16, v19);
    re::MaterialAsset::makeMaterialMemoryAsset(v11, v12, v16, 0, 0);
    v13 = *(this + 5);
    *(this + 5) = v17;
    v17 = v13;
    v14 = *(this + 12);
    *(this + 12) = v18;
    v18 = v14;
    re::AssetHandle::~AssetHandle(&v17);
    re::AssetHandle::~AssetHandle(v16);
    re::AssetHandle::~AssetHandle(v19);
  }

  re::ShaderGraphLoadHelper::init(this + 128, *(this + 1));
  *(this + 80) = re::ServiceLocator::serviceOrNull<re::AssetService>(*(this + 1));
  result = *v20;
  if (*v20)
  {
    if (v20[8])
    {
      return (*(**v20 + 40))();
    }
  }

  return result;
}

uint64_t re::MaterialAssetLoader::introspectionType(re::MaterialAssetLoader *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::MaterialAsset>(BOOL)::info = re::internal::getOrCreateInfo("MaterialAsset", re::allocInfo_MaterialAsset, re::initInfo_MaterialAsset, &re::internal::introspectionInfoStorage<re::MaterialAsset>, 0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[229];
}

uint64_t re::MaterialAssetLoader::allocateSampleAsset(re::MaterialAssetLoader *this)
{
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 1992, 8);
  bzero(v3, 0x7C8uLL);
  re::MaterialAsset::MaterialAsset(v3);
  (*(**(this + 2) + 8))(&v7);
  v4 = *(v3 + 40);
  *(v3 + 40) = v7;
  v7 = v4;
  v5 = *(v3 + 56);
  *(v3 + 56) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  *&v7 = v3 + 40;
  re::DynamicArray<re::TransitionCondition *>::add((v3 + 1928), &v7);
  return v3;
}

uint64_t re::MaterialAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a4, "client");
    if (v5)
    {
      if (*(v5 + 32) == 2)
      {
        *(a2 + 1984) = *v5;
      }
    }
  }

  return 1;
}

uint64_t re::MaterialAssetLoader::registerAsset(re::MaterialAssetLoader *this, uint64_t a2, const re::ExistingAssetInformation *a3)
{
  v3 = *(this + 3);
  if (!v3 || !*(v3 + 208) || ((*(**(this + 2) + 416))(*(this + 2)) & 1) != 0)
  {
    return 0;
  }

  if (*(a3 + 10) == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a3 + 10);
  }

  re::AssetManager::fromPeerID(*(this + 2), v9, v33);
  v10 = *(this + 2);
  if (*(a3 + 10) == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a3 + 10);
  }

  os_unfair_lock_lock((v10 + 128));
  re::AssetManager::lookupExistingAsset_assetTablesLocked(v10, v11, v30);
  os_unfair_lock_unlock((v10 + 128));
  v25[0] = 0;
  if ((v30[0] & 1) == 0)
  {
    v13 = 0;
    if (v33[0])
    {
      v14 = v34;
    }

    else
    {
      v14 = 0;
    }

    v17[0] = 0;
LABEL_30:
    v15 = 1;
    goto LABEL_31;
  }

  if (v32 && (v12 = *(v32 + 24)) != 0)
  {
    re::AssetManager::deviceAssetPath(v12, &v31, 0, 15, v22);
  }

  else
  {
    v22[0] = 0;
  }

  re::Optional<re::DynamicString>::operator=(v25, v22);
  if (v22[0] == 1 && v23 && (v24 & 1) != 0)
  {
    (*(*v23 + 40))();
  }

  if (v33[0])
  {
    v14 = v34;
  }

  else
  {
    v14 = 0;
  }

  v13 = v25[0];
  v17[0] = v25[0];
  if ((v25[0] & 1) == 0)
  {
    goto LABEL_30;
  }

  v10 = v28;
  v20 = v28;
  v21 = v29;
  v11 = v26;
  v18 = v26;
  v19 = v27;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v15 = (v19 & 1) == 0;
  v13 = 1;
LABEL_31:
  if (*(a3 + 17))
  {
    v16 = *(a3 + 18);
  }

  else
  {
    v16 = a3 + 137;
  }

  v7 = re::MaterialAssetLoader::doRegisterAsset(this, a2, v14, v17, v16);
  if ((v13 & 1) != 0 && v11 && !v15)
  {
    (*(*v11 + 40))(v11, v10);
  }

  if (v25[0] == 1 && v26 && (v27 & 1) != 0)
  {
    (*(*v26 + 40))();
  }

  if (v30[0] == 1)
  {
    re::AssetHandle::~AssetHandle(&v31);
  }

  return v7;
}

uint64_t re::MaterialAssetLoader::doRegisterAsset(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v92 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 1776);
  if (v6)
  {
    v7 = 0;
    *(v6 + 1440) = a3;
    return v7;
  }

  v11 = a1;
  v12 = a1[2];
  v13 = a1[3];
  v14 = *(a2 + 1944);
  if (v14)
  {
    goto LABEL_9;
  }

  (*(*a1 + 176))(v81, a1, a2);
  a1 = v81[0];
  if (v81[0])
  {
    if (v83)
    {
      a1 = (*(*v81[0] + 40))();
    }

    v83 = 0;
    memset(v81, 0, sizeof(v81));
    ++v82;
  }

  v14 = *(a2 + 1944);
  if (v14)
  {
LABEL_9:
    v15 = *(a2 + 1960);
    v16 = v15;
    do
    {
      if (!*(*v16 + 1))
      {
        return 2;
      }

      ++v16;
    }

    while (v16 != &v15[v14]);
    log = a5;
    v68 = v12;
    v17 = v13;
    v18 = 0;
    v19 = 0;
    v20 = 8 * v14;
    do
    {
      v21 = *v15;
      v22 = *(*v15 + 1);
      if (v22)
      {
        v23 = atomic_load((v22 + 896));
        if (v23 != 2)
        {
          if (v23 == 3)
          {
            return 2;
          }

          re::AssetHandle::loadAsync(*v15);
          v25 = *(v21 + 1);
          if (v25)
          {
            v26 = *(v25 + 280);
          }

          else
          {
            v26 = 0;
          }

          a1 = re::TextureAsset::assetType(v24);
          if (v26 == a1)
          {
            v19 = 1;
          }

          else
          {
            v18 = 1;
          }
        }
      }

      ++v15;
      v20 -= 8;
    }

    while (v20);
    v27 = v19 == 0;
    if (v18)
    {
      return 1;
    }

    v13 = v17;
    a5 = log;
  }

  else
  {
    v68 = v12;
    v27 = 1;
  }

  if (*(a2 + 1976))
  {
    goto LABEL_44;
  }

  v28 = v27;
  v29 = *(a2 + 392);
  if (!v29)
  {
    goto LABEL_39;
  }

  v30 = *(a2 + 408) + 184;
  v31 = 272 * v29;
  while (1)
  {
    v32 = *(v30 - 104);
    if (!v32)
    {
      a1 = re::ShaderGraphAsset::assetType(a1);
      goto LABEL_33;
    }

    v33 = *(v32 + 280);
    a1 = re::ShaderGraphAsset::assetType(a1);
    if (v33 == a1)
    {
      break;
    }

LABEL_33:
    v30 += 272;
    v31 -= 272;
    if (!v31)
    {
      goto LABEL_39;
    }
  }

  v34 = re::ShaderGraphAsset::assetType(a1);
  v35 = re::AssetHandle::assetWithType((v30 - 112), v34, 0);
  v36 = v35;
  if (!v35)
  {
    loga = *re::assetsLogObjects(0);
    if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
    {
      v64 = re::AssetHandle::assetInfo((v30 - 112));
      if (v64[17])
      {
        v65 = v64[18];
      }

      else
      {
        v65 = v64 + 137;
      }

      *v87 = 136315138;
      *&v87[4] = v65;
      _os_log_error_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", v87, 0xCu);
    }
  }

  re::ShaderGraphLoadHelper::decodeAndSpecializeShaderGraph((v11 + 16), v36, v30, (v30 + 48), *(a2 + 1984), a3, v87);
  if (v87[0] != 1)
  {
    re::Result<re::SharedPtr<re::sg::CachedCompilationMaterial>,re::DetailedError>::~Result(v87);
    return 2;
  }

  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a2 + 1968), *&v87[8]);
  re::Result<re::SharedPtr<re::sg::CachedCompilationMaterial>,re::DetailedError>::~Result(v87);
LABEL_39:
  v37 = *(a2 + 1968);
  v27 = v28;
  if (v37)
  {
    re::sg::CachedCompilationMaterial::getMaterialDefinitionPath(v37);
    (*(*v68 + 8))(v87);
    v38 = *(a2 + 40);
    *(a2 + 40) = *v87;
    *v87 = v38;
    v39 = *(a2 + 56);
    *(a2 + 56) = *&v87[16];
    *&v87[16] = v39;
    re::AssetHandle::~AssetHandle(v87);
    HasBackgroundBlur = re::sg::CachedCompilationMaterial::getHasBackgroundBlur(*(a2 + 1968));
    if ((*(a2 + 368) & 1) == 0)
    {
      *(a2 + 368) = 1;
    }

    *(a2 + 369) = HasBackgroundBlur;
  }

  *(a2 + 1976) = 1;
LABEL_44:
  if (*(a2 + 1968))
  {
    v41 = *(a2 + 48);
    if (v41)
    {
      v42 = atomic_load((v41 + 896));
      if (v42 == 1)
      {
        return 1;
      }
    }
  }

  if (re::PbrEmulationLoadHelper::isWaitingForAssetDependencies((v11 + 80), a2 + 8))
  {
    return 1;
  }

  v43 = (a2 + 1968);
  if (*(a2 + 1624) == 8)
  {
    re::parseShaderParameterData(v13, a5, a2 + 64, &v75);
    v73[0] = *a4;
    if (v73[0] == 1)
    {
      re::DynamicString::DynamicString(v74, (a4 + 8));
    }

    re::makeMaterialBuilder(v13, v68, a2 + 8, (a2 + 1968), v73, a3, &v75, v87, (a2 + 1840));
    if (v73[0] == 1)
    {
      v44 = v74[0];
      if (v74[0])
      {
        if (v74[1])
        {
          v44 = (*(*v74[0] + 40))();
        }

        memset(v74, 0, sizeof(v74));
      }
    }

    v45 = v87[0];
    if (v87[0])
    {
      re::MaterialBuilder::operator=((a2 + 424), &v87[8]);
      re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(a2 + 1792, v79);
      re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a2 + 1880, v80);
      v46 = *(a2 + 1968);
      if (v46)
      {
        re::sg::CachedCompilationMaterial::createDynamicFunctionConstantEnumerator(v46, buf);
        re::MaterialBuilder::setShaderGraphDynamicFunctionConstantEnumerator(a2 + 424, buf);
        re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(buf);
      }
    }

    else
    {
      v47 = *re::assetTypesLogObjects(v44);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        if (v87[16])
        {
          v63 = v88;
        }

        else
        {
          v63 = &v87[17];
        }

        *buf = 136315394;
        *&buf[4] = a5;
        v85 = 2080;
        v86 = v63;
        _os_log_error_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_ERROR, "Failed to prepare material builder '%s': %s.", buf, 0x16u);
      }
    }

    if (v87[0] == 1)
    {
      re::MaterialBuilder::~MaterialBuilder(&v87[8]);
    }

    else if (*&v87[8] && (v87[16] & 1) != 0)
    {
      (*(**&v87[8] + 40))();
    }

    re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v80);
    re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v79);
    re::ShaderParameterTable::~ShaderParameterTable(&v75);
    if (!v45)
    {
      return 2;
    }
  }

  re::MaterialBuilder::tickBuilder((a2 + 424), v13, &v75);
  if (v75 == 1)
  {
    if (v76 != 0 && v27)
    {
      re::parseTextureParameterData(v13, a2 + 64, v87);
      re::TextureParameterTable::operator=(a2 + 1096, v87);
      v49 = *(v13 + 24);
      re::MaterialBuilder::MaterialBuilder(v71, a2 + 424);
      re::MaterialManager::createMaterial(v49, v71, &v72);
      re::MaterialBuilder::~MaterialBuilder(v71);
      if (v72)
      {
        v51 = v91;
        if (v91)
        {
          v52 = 0;
          v53 = v90;
          while (1)
          {
            v54 = *v53;
            v53 += 22;
            if (v54 < 0)
            {
              break;
            }

            if (v91 == ++v52)
            {
              LODWORD(v52) = v91;
              break;
            }
          }
        }

        else
        {
          LODWORD(v52) = 0;
        }

        if (v52 != v91)
        {
          v58 = v90;
          do
          {
            re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a2 + 1880, &v58[22 * v52 + 2], &v58[22 * v52 + 10]);
            if (v91 <= v52 + 1)
            {
              v59 = v52 + 1;
            }

            else
            {
              v59 = v91;
            }

            v58 = v90;
            while (v59 - 1 != v52)
            {
              LODWORD(v52) = v52 + 1;
              if (v90[22 * v52] < 0)
              {
                goto LABEL_95;
              }
            }

            LODWORD(v52) = v59;
LABEL_95:
            ;
          }

          while (v52 != v51);
        }

        if (*v43)
        {
          re::sg::CachedCompilationMaterial::getDynamicFunctionConstants(*v43, buf);
          re::FixedArray<float>::operator=(v72 + 21, buf);
          re::FixedArray<re::sg::ShaderGraphDynamicFunctionConstant>::deinit(buf);
        }

        v60 = v72;
        v70 = v72;
        if (v72)
        {
          v61 = v72 + 1;
          re::MaterialAsset::setInstance(a2, v13, &v70);
        }

        else
        {
          re::MaterialAsset::setInstance(a2, v13, &v70);
        }

        *buf = v13;
        re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(buf, &v69);
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a2 + 1784), v69);
        if (v69)
        {

          v69 = 0;
        }

        if (*(a2 + 1842) == 6)
        {
          re::copyCustomParamFlattenedNames(v72 + 31, (a2 + 1848), (a2 + 1856), (a2 + 1864), (a2 + 1872));
        }

        v7 = 0;
      }

      else
      {
        v57 = *re::assetTypesLogObjects(v50);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = a5;
          _os_log_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_DEFAULT, "failed to create material '%s'.", buf, 0xCu);
        }

        v7 = 2;
      }

      if (v72)
      {
      }

      re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v89);
      re::TextureParameterTable::~TextureParameterTable(v87);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v55 = *re::graphicsLogObjects(v48);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      if (v77)
      {
        v62 = *&v78[7];
      }

      else
      {
        v62 = v78;
      }

      *v87 = 136315394;
      *&v87[4] = a5;
      *&v87[12] = 2080;
      *&v87[14] = v62;
      _os_log_error_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_ERROR, "Failed to create material '%s': %s", v87, 0x16u);
    }

    v7 = 2;
  }

  if (v75 & 1) == 0 && v76 && (v77)
  {
    (*(*v76 + 40))();
  }

  return v7;
}

uint64_t re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

void *re::MaterialBuilder::setShaderGraphDynamicFunctionConstantEnumerator(uint64_t a1, __int128 *a2)
{
  v4[0] = 1;
  v5 = *a2;
  v2 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v6 = v2;
  v7 = *(a2 + 24);
  result = re::Optional<re::FunctionConstantsEnumerator>::operator=(a1 + 1288, v4);
  if (v4[0] == 1)
  {
    return re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(&v5);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::ParameterBinding const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 88 * HIDWORD(v9) + 40;
  }
}

void re::MaterialAssetLoader::unregisterAsset(re::MaterialAssetLoader *this, void *a2, const re::ExistingAssetInformation *a3)
{
  if (a2[222])
  {
    v4 = *(this + 3);
    v5 = 0;
    re::MaterialAsset::setInstance(a2, v4, &v5);
  }

  re::MaterialBuilder::destroy((a2 + 53));
  a2[243] = 0;
  ++*(a2 + 488);
}

re *re::internal::destroyPersistent<re::MaterialAsset>(re *result, uint64_t a2, void (***a3)(void))
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

void *re::MaterialAssetLoader::findDependencies@<X0>(re::MaterialAssetLoader *this@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2[243])
  {
    (*(*this + 176))(v11);
    this = v11[0];
    if (v11[0])
    {
      if (v13)
      {
        this = (*(*v11[0] + 40))();
      }

      v13 = 0;
      memset(v11, 0, sizeof(v11));
      ++v12;
    }
  }

  v5 = a2[243];
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  result = re::DynamicArray<re::AssetHandle>::setCapacity(a3, v5);
  ++*(a3 + 24);
  v7 = a2[243];
  if (v7)
  {
    v8 = a2[245];
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      result = re::DynamicArray<re::AssetHandle>::add(a3, v10);
      v9 -= 8;
    }

    while (v9);
  }

  return result;
}

void *re::MaterialAssetLoader::internalFindAssetHandleFields@<X0>(re::MaterialAssetLoader *this@<X0>, const re::IntrospectionBase **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[243];
  if (!v5)
  {
    re::AssetLoader::internalFindAssetHandleFields(this, a2, v9);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a2 + 241), v9);
    this = v9[0];
    if (v9[0] && v9[4])
    {
      this = (*(*v9[0] + 40))();
    }

    v5 = a2[243];
  }

  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  result = re::DynamicArray<float *>::setCapacity(a3, v5);
  ++*(a3 + 24);
  if (a2[243])
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = re::DynamicArray<re::TransitionCondition *>::add(a3, (a2[245] + v7));
      ++v8;
      v7 += 8;
    }

    while (a2[243] > v8);
  }

  return result;
}

void re::MaterialAssetHelper::extractMaterialDataFromMaterialParameterBlocks(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  re::FixedArray<unsigned long>::init<>(a4, a1, a2[1]);
  re::FixedArray<unsigned long>::init<>(a5, a1, a2[1]);
  if (a2[1])
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = (*a2 + 24 * v10);
      v13 = *(v12 + 1);
      if (v13)
      {
        v14 = atomic_load((v13 + 896));
        if (v14 == 2)
        {
          v15 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v12);
          if (a4[1] <= v10)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_18:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          *(a4[2] + 8 * v10) = *(v15 + 1776);
          if (a3[1] > v10 && (v16 = *(*a3 + 8 * v10)) != 0 && !re::MaterialParameterBlock::isEmpty(*(*a3 + 8 * v10)))
          {
            v17 = re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(v16, a1);
            if (a5[1] <= v10)
            {
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              return;
            }
          }

          else
          {
            if (a5[1] <= v10)
            {
              goto LABEL_18;
            }

            v17 = 0;
          }

          *(a5[2] + 8 * v10) = v17;
        }
      }

      v10 = v11;
    }

    while (a2[1] > v11++);
  }
}

uint64_t re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(re::MaterialAsset *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  re::MaterialAsset::assetType(a1);
  v2 = re::AssetHandle::assetWithType(a1, &re::MaterialAsset::assetType(void)::type, 0);
  if (!v2)
  {
    v3 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = re::AssetHandle::assetInfo(a1);
      if (v5[17])
      {
        v6 = v5[18];
      }

      else
      {
        v6 = v5 + 137;
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v7, 0xCu);
    }
  }

  return v2;
}

void re::MaterialAssetHelper::extractMaterialDataFromMaterialParameterBlocks(_anonymous_namespace_ *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 1);
  v11 = *(a1 + 1);
  if (*(a1 + 1))
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = (*a1 + 24 * v13);
      v16 = *(v15 + 1);
      if (v16)
      {
        v17 = atomic_load((v16 + 896));
        if (v17 == 2)
        {
          v18 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v15);
          v19 = a3[1];
          if (v19 <= v13)
          {
            v24 = 0;
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v33 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v25 = 136315906;
            v26 = "operator[]";
            v27 = 1024;
            v28 = 468;
            v29 = 2048;
            v30 = v13;
            v31 = 2048;
            v32 = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_17:
            v24 = 0;
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v33 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v25 = 136315906;
            v26 = "operator[]";
            v27 = 1024;
            v28 = 468;
            v29 = 2048;
            v30 = v13;
            v31 = 2048;
            v32 = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_18:
            v24 = 0;
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v33 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v25 = 136315906;
            v26 = "operator[]";
            v27 = 1024;
            v28 = 468;
            v29 = 2048;
            v30 = v13;
            v31 = 2048;
            v32 = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          *(a3[2] + 8 * v13) = *(v18 + 1776);
          if (a2[1] > v13 && (v20 = *(*a2 + 8 * v13)) != 0 && !re::MaterialParameterBlock::isEmpty(*(*a2 + 8 * v13)))
          {
            re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(v20, &v23);
            v19 = a4[1];
            if (v19 <= v13)
            {
              goto LABEL_18;
            }

            v22 = v23;
            *(a4[2] + 8 * v13) = v23;
            *re::BucketArray<re::SharedPtr<re::MaterialParameterTable>,8ul>::addUninitialized(a5) = v22;
          }

          else
          {
            v19 = a4[1];
            if (v19 <= v13)
            {
              goto LABEL_17;
            }

            *(a4[2] + 8 * v13) = 0;
          }
        }
      }

      v13 = v14;
    }

    while (*(a1 + 1) > v14++);
  }
}

void re::MaterialAssetHelper::extractMaterialDataFromMaterialAssetHandles(void *a1, void *a2, char a3, uint64_t *a4, uint64_t *a5)
{
  if (!*a4)
  {
    re::FixedArray<unsigned long>::init<>(a4, a1, a2[1]);
  }

  if (!*a5)
  {
    re::FixedArray<unsigned long>::init<>(a5, a1, a2[1]);
  }

  if (a2[1])
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = (*a2 + 24 * v10);
      v13 = *(v12 + 1);
      if (v13)
      {
        v14 = atomic_load((v13 + 896));
        if (v14 == 2)
        {
          v15 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v12);
          if (a4[1] <= v10)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_19:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_20:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          *(a4[2] + 8 * v10) = *(v15 + 1776);
          if ((a3 & 1) != 0 || (v16 = *(v15 + 1784), re::MaterialParameterBlock::isEmpty(v16)))
          {
            if (a5[1] <= v10)
            {
              goto LABEL_19;
            }

            v17 = 0;
          }

          else
          {
            v17 = re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(v16, a1);
            if (a5[1] <= v10)
            {
              goto LABEL_20;
            }
          }

          *(a5[2] + 8 * v10) = v17;
        }
      }

      v10 = v11;
    }

    while (a2[1] > v11++);
  }
}

void re::MaterialAssetHelper::extractMaterialDataFromMaterialAssetHandles(_anonymous_namespace_ *a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!*a3)
  {
    v10 = *(a1 + 1);
  }

  if (!*a4)
  {
    v11 = *(a1 + 1);
  }

  if (*(a1 + 1))
  {
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = (*a1 + 24 * v12);
      v15 = *(v14 + 1);
      if (v15)
      {
        v16 = atomic_load((v15 + 896));
        if (v16 == 2)
        {
          v17 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v14);
          v18 = a3[1];
          if (v18 <= v12)
          {
            v23 = 0;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v32 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v24 = 136315906;
            v25 = "operator[]";
            v26 = 1024;
            v27 = 468;
            v28 = 2048;
            v29 = v12;
            v30 = 2048;
            v31 = v18;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_19:
            v23 = 0;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v32 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v24 = 136315906;
            v25 = "operator[]";
            v26 = 1024;
            v27 = 468;
            v28 = 2048;
            v29 = v12;
            v30 = 2048;
            v31 = v18;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_20:
            v23 = 0;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v32 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v24 = 136315906;
            v25 = "operator[]";
            v26 = 1024;
            v27 = 468;
            v28 = 2048;
            v29 = v12;
            v30 = 2048;
            v31 = v18;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          *(a3[2] + 8 * v12) = *(v17 + 1776);
          if ((a2 & 1) != 0 || (v19 = *(v17 + 1784), re::MaterialParameterBlock::isEmpty(v19)))
          {
            v18 = a4[1];
            if (v18 <= v12)
            {
              goto LABEL_19;
            }

            *(a4[2] + 8 * v12) = 0;
          }

          else
          {
            re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(v19, &v22);
            v18 = a4[1];
            if (v18 <= v12)
            {
              goto LABEL_20;
            }

            v20 = v22;
            *(a4[2] + 8 * v12) = v22;
            *re::BucketArray<re::SharedPtr<re::MaterialParameterTable>,8ul>::addUninitialized(a5) = v20;
          }
        }
      }

      v12 = v13;
    }

    while (*(a1 + 1) > v13++);
  }
}

void re::MaterialAssetHelper::extractMaterialDataFromMeshInstanceParameterBlocks(_anonymous_namespace_ *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 1);
  v9 = *(a1 + 1);
  if (v9)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      if (a2[1] > v10 && (v12 = *(*a2 + 8 * v10)) != 0 && !re::MaterialParameterBlock::isEmpty(*(*a2 + 8 * v10)))
      {
        re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(v12, &v16);
        v13 = a3[1];
        if (v13 <= v10)
        {
          goto LABEL_14;
        }

        v15 = v16;
        *(a3[2] + 8 * v10) = v16;
        *re::BucketArray<re::SharedPtr<re::MaterialParameterTable>,8ul>::addUninitialized(a4) = v15;
        v9 = *(a1 + 1);
      }

      else
      {
        v13 = a3[1];
        if (v13 <= v10)
        {
          v17 = 0;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v26 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v18 = 136315906;
          v19 = "operator[]";
          v20 = 1024;
          v21 = 468;
          v22 = 2048;
          v23 = v10;
          v24 = 2048;
          v25 = v13;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_14:
          v17 = 0;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v26 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v18 = 136315906;
          v19 = "operator[]";
          v20 = 1024;
          v21 = 468;
          v22 = 2048;
          v23 = v10;
          v24 = 2048;
          v25 = v13;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        *(a3[2] + 8 * v10) = 0;
      }

      v10 = v11;
    }

    while (v9 > v11++);
  }
}

void *re::allocInfo_MaterialAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE195C38, "MaterialAsset");
    __cxa_guard_release(&_MergedGlobals_70);
  }

  return &unk_1EE195C38;
}

void re::initInfo_MaterialAsset(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0xDA7FDB21D2F3CBD2;
  v12[1] = "MaterialAsset";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE195C20, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE195C20);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_MaterialFile(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "materialFile";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0x800000001;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE195C28 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = (*(*v9 + 32))(v9, 64, 8);
      *v10 = 6;
      *(v10 + 8) = 1;
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 1;
      *(v10 + 48) = re::downgradeMaterialAssetFromFall2023;
      *(v10 + 56) = 2;
      qword_1EE195C30 = v10;
      __cxa_guard_release(&qword_1EE195C20);
    }
  }

  *(this + 2) = 0x7C800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE195C28;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

void re::MaterialAssetLoader::~MaterialAssetLoader(re::MaterialAssetLoader *this)
{
  *this = &unk_1F5CC3648;
  v2 = (this + 32);
  re::DynamicArray<re::AssetHandle>::deinit(this + 776);
  re::DynamicArray<re::AssetHandle>::deinit(this + 392);
  std::recursive_mutex::~recursive_mutex((this + 184));
  re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 17);
  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle((this + 56));
  re::AssetHandle::~AssetHandle(v2);
}

{
  *this = &unk_1F5CC3648;
  v2 = (this + 32);
  re::DynamicArray<re::AssetHandle>::deinit(this + 776);
  re::DynamicArray<re::AssetHandle>::deinit(this + 392);
  std::recursive_mutex::~recursive_mutex((this + 184));
  re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 17);
  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle((this + 56));
  re::AssetHandle::~AssetHandle(v2);

  JUMPOUT(0x1E6906510);
}

void *re::internal::MoveOnlyCallable<re::MaterialAsset::setInstance(re::RenderManager *,re::SharedPtr<re::MaterialInstance>)::$_0,void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5CC37C0;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  return a1;
}

void re::internal::MoveOnlyCallable<re::MaterialAsset::setInstance(re::RenderManager *,re::SharedPtr<re::MaterialInstance>)::$_0,void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5CC37C0;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  JUMPOUT(0x1E6906520);
}

void *re::internal::MoveOnlyCallable<re::MaterialAsset::setInstance(re::RenderManager *,re::SharedPtr<re::MaterialInstance>)::$_0,void ()(void)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CC37C0;
  a2[1] = v2;
  *(a1 + 8) = 0;
  return a2;
}

uint64_t (***re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

re::MaterialAsset *re::MaterialAsset::MaterialAsset(re::MaterialAsset *this)
{
  *this = &unk_1F5CC3820;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v2 = (this + 8);
  re::DynamicString::setCapacity(v2, 0);
  *(this + 84) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 100) = 0x7FFFFFFFLL;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 148) = 0x7FFFFFFFLL;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 196) = 0x7FFFFFFFLL;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 60) = 0;
  *(this + 244) = 0x7FFFFFFFLL;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 72) = 0;
  *(this + 292) = 0x7FFFFFFFLL;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 84) = 0;
  *(this + 340) = 0x7FFFFFFFLL;
  *(this + 352) = 0;
  *(this + 354) = 0;
  *(this + 356) = 0;
  *(this + 358) = 0;
  *(this + 360) = 0;
  *(this + 362) = 0;
  *(this + 364) = 0;
  *(this + 366) = 0;
  *(this + 368) = 0;
  *(this + 370) = 0;
  *(this + 51) = 0;
  *(this + 49) = 0;
  *(this + 100) = 0;
  *(this + 376) = 0u;
  *(this + 416) = 0;
  re::MaterialBuilder::MaterialBuilder((this + 424));
  *(this + 1768) = 0;
  *(this + 111) = 0u;
  *(this + 112) = 0u;
  *(this + 113) = 0u;
  *(this + 456) = 0;
  *(this + 1828) = 0x7FFFFFFFLL;
  *(this + 1848) = 0u;
  *(this + 1864) = 0u;
  *(this + 1880) = 0u;
  *(this + 1896) = 0u;
  *(this + 478) = 0;
  *(this + 1916) = 0x7FFFFFFFLL;
  *(this + 241) = 0;
  *(this + 121) = 0u;
  *(this + 488) = 0;
  *(this + 248) = 0;
  *(this + 1960) = 0u;
  *(this + 1976) = 0;
  return this;
}

void re::MaterialAsset::~MaterialAsset(re::MaterialAsset *this)
{
  re::MaterialAsset::~MaterialAsset(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CC3820;
  v2 = *(this + 246);
  if (v2)
  {

    *(this + 246) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 1928);
  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 235);
  v3 = *(this + 234);
  if (v3)
  {

    *(this + 234) = 0;
  }

  v4 = *(this + 233);
  if (v4)
  {

    *(this + 233) = 0;
  }

  v5 = *(this + 232);
  if (v5)
  {

    *(this + 232) = 0;
  }

  v6 = *(this + 231);
  if (v6)
  {

    *(this + 231) = 0;
  }

  re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(this + 224);
  v7 = *(this + 223);
  if (v7)
  {

    *(this + 223) = 0;
  }

  v8 = *(this + 222);
  if (v8)
  {

    *(this + 222) = 0;
  }

  re::MaterialBuilder::~MaterialBuilder((this + 424));
  re::DynamicArray<re::FunctionLink>::deinit(this + 376);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 38);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 32);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 26);
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 20);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 14);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 8);
  re::AssetHandle::~AssetHandle((this + 40));
  re::DynamicString::deinit((this + 8));
}

double re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 88;
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

void re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(uint64_t a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    re::DynamicString::deinit((a1 + 8));
    re::StringID::destroyString((a1 + 64));
    *(a1 + 48) = 0;
  }
}

double re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
          *(v4 + 8) = 0;
        }

        v4 += 40;
        --v3;
      }

      while (v3);
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

uint64_t re::DynamicArray<re::FunctionLink>::deinit(uint64_t a1)
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
        v5 = 0;
        v6 = 272 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + v5 + 232);
          re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v3 + v5 + 184));
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v3 + v5 + 136));
          re::DynamicArray<unsigned long>::deinit(v3 + v5 + 96);
          re::AssetHandle::~AssetHandle((v3 + v5 + 72));
          re::DynamicString::deinit((v3 + v5 + 40));
          re::DynamicString::deinit((v3 + v5 + 8));
          v5 += 272;
        }

        while (v6 != v5);
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

double re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicString::deinit((v6 + v4 + 8));
          v3 = *(a1 + 8);
        }

        v4 += 64;
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

double re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicString::deinit((v6 + v4 + 8));
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

double re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 160;
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

void re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(int *a1)
{
  v3 = *a1;
  if (*a1 < 0)
  {
    v8 = v1;
    v9 = v2;
    *a1 = v3 & 0x7FFFFFFF;
    re::DynamicString::deinit((a1 + 2));
    re::DynamicString::deinit((a1 + 28));
    v5 = re::DynamicString::deinit((a1 + 20));
    v6 = a1[18];
    if (v6 != -1)
    {
      (off_1F5CC3800[v6])(&v7, a1 + 10, v5);
    }

    a1[18] = -1;
  }
}

double re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 88;
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

void re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(int *a1)
{
  v3 = *a1;
  if (*a1 < 0)
  {
    v8 = v1;
    v9 = v2;
    *a1 = v3 & 0x7FFFFFFF;
    v5 = re::DynamicString::deinit((a1 + 2));
    v6 = a1[18];
    if (v6 != -1)
    {
      (off_1F5CC3800[v6])(&v7, a1 + 10, v5);
    }

    a1[18] = -1;
  }
}

uint64_t re::ConstantTable::lookup(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 48), a2);
  if (v3 == -1)
  {
    return 0;
  }

  else
  {
    return *(a1 + 56) + 16 * v3 + 8;
  }
}

void *re::FixedArray<re::LinkedFunction>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 0;
      v5 = result[2];
      v6 = 200 * v2;
      do
      {
        v7 = (v5 + v4);
        re::DynamicArray<unsigned long>::deinit(v5 + v4 + 160);
        re::DynamicArray<unsigned long>::deinit(v5 + v4 + 120);
        re::FixedArray<re::TypedArgument>::deinit((v5 + v4 + 96));
        re::FixedArray<re::TechniqueFunctionConstant>::deinit((v5 + v4 + 64));
        v8 = *(v5 + v4 + 48);
        if (v8)
        {

          v7[6] = 0;
        }

        re::StringID::destroyString((v7 + 3));
        re::StringID::destroyString((v7 + 1));
        v4 += 200;
      }

      while (v6 != v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::TypedArgument>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 112 * v2;
      do
      {
        re::FixedArray<re::MetalTypeInfo>::deinit(v4 + 8);
        re::StringID::destroyString((v4 + 5));
        re::StringID::destroyString(v4);
        v4 += 14;
        v5 -= 112;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::MetalTypeInfo>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 80 * v2;
      v5 = result[2] + 40;
      do
      {
        re::FixedArray<re::MetalTypeInfo>::deinit(v5);
        re::StringID::destroyString((v5 - 24));
        v5 += 80;
        v4 -= 80;
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

void *re::FixedArray<re::TechniqueFunctionConstant>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 104 * v2;
      do
      {
        v6 = re::DynamicString::deinit(v4);
        v4 = (v4 + 104);
        v5 -= 104;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2], v6);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::ShaderParameterTable::~ShaderParameterTable(re::ShaderParameterTable *this)
{
  re::ShaderParameterTable::deinit(this);
  re::BufferTable::~BufferTable((this + 240));
  re::ConstantTable::~ConstantTable((this + 128));
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 64);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this);
}

void re::ConstantTable::~ConstantTable(re::ConstantTable *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 8);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 48);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 48);
  re::DynamicArray<unsigned long>::deinit(this + 8);
}

double re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v11[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v11[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v12 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            v9 = (*(a1 + 8) + 40 * v8);
            v9[4] = 0;
            v9[2] = 0;
            *v9 = 0;
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v11);
            v8 = v12;
          }

          while (v12 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

void re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
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
          *(v4 + 8) = 0;
        }

        v4 += 40;
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

void re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(a1, v9);
      re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * (*(v7 + v5 + 8) ^ (*(v7 + v5 + 8) >> 30));
        result = re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 24));
        v9 = *(a2 + 16) + v5;
        *(result + 8) = *(v9 + 8);
        v10 = *(v9 + 16);
        *(result + 32) = *(v9 + 32);
        *(result + 16) = v10;
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

uint64_t re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 40 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 40 * v4;
}

uint64_t re::Optional<re::FunctionConstantsEnumerator>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = (a1 + 8);
    if ((*a2 & 1) == 0)
    {
      re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(v4);
      *a1 = 0;
      return a1;
    }

    re::FixedArray<float>::operator=(v4, (a2 + 8));
    goto LABEL_6;
  }

  if (*a2)
  {
    *a1 = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v5 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v5;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = v6;
LABEL_6:
    *(a1 + 32) = *(a2 + 32);
  }

  return a1;
}

void *re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 88 * v2;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v4 + 6);
        v6 = re::DynamicString::deinit(v4);
        v4 += 11;
        v5 -= 88;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2], v6);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::TextureParameterTable::~TextureParameterTable(re::TextureParameterTable *this)
{
  re::TextureParameterTable::deinit(this);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 416);
  re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::deinit(this + 352);
  re::SamplerTable::~SamplerTable((this + 240));
  re::TextureTableImpl<re::TextureHandle>::~TextureTableImpl(this + 16);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 64);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this);
}

double re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v11[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v11[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v12 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            v9 = (*(a1 + 8) + 16 * v8);
            *v9 = 0;
            v9[1] = 0;
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v11);
            v8 = v12;
          }

          while (v12 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void re::SamplerTable::~SamplerTable(re::SamplerTable *this)
{
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 64);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this);
  *(this + 13) = 0;
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 64);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this);
}

uint64_t re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(uint64_t a1)
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
        v5 = 8 * v4;
        do
        {
          if (*v3)
          {

            *v3 = 0;
          }

          ++v3;
          v5 -= 8;
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

void *re::TextureTableImpl<re::TextureHandle>::~TextureTableImpl(void *a1)
{
  *a1 = &unk_1F5CC3888;
  v2 = (a1 + 1);
  re::DynamicArray<re::TextureViews<re::TextureHandle>>::deinit((a1 + 9));
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v2);
  re::DynamicArray<re::TextureViews<re::TextureHandle>>::deinit((a1 + 9));
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v2);
  return a1;
}

uint64_t re::TextureTableImpl<re::TextureHandle>::lookup@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 8), a2);
  if (result == -1)
  {
    v6 = 0;
  }

  else
  {
    *(a3 + 1) = *(*(a1 + 16) + 16 * result + 8);
    v6 = 1;
  }

  *a3 = v6;
  return result;
}

void *re::TextureSource::lookupIndex@<X0>(void *(***a1)(uint64_t *__return_ptr)@<X0>, char *a2@<X8>)
{
  result = (**a1)(&v5);
  if (v5 == 1)
  {
    a2[1] = BYTE2(v5);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void *re::TextureSource::lookupProtectionOptions@<X0>(void *(***a1)(uint64_t *__return_ptr)@<X0>, char *a2@<X8>)
{
  result = (**a1)(&v5);
  if (v5 == 1)
  {
    a2[1] = BYTE1(v5);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t re::DynamicArray<re::TextureViews<re::TextureHandle>>::deinit(uint64_t a1)
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
          if (*(v3 + 16) == 1)
          {
            v6 = *(v3 + 24);
            if (v6)
            {

              *(v3 + 24) = 0;
            }
          }

          re::TextureHandle::invalidate(v3);
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

double re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          *v8 = v7 & 0x7FFFFFFF;

          v3 = *(a1 + 8);
        }

        v4 += 32;
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

double re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 152;
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

uint64_t re::Result<re::SharedPtr<re::sg::CachedCompilationMaterial>,re::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {

      *(a1 + 8) = 0;
    }
  }

  else
  {
    re::DynamicString::deinit((a1 + 24));
  }

  return a1;
}

void re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(*(a1 + 16) + v3);
        ++v4;
        v3 += 88;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

void re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 40;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 40) & 0x80000000) != 0)
      {
        result = re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + 40) % *(v4 + 24));
        v8 = *(a2 + 16) + v6;
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = *(v8 - 8);
        v9 = *(v8 - 24);
        *(result + 8) = *(v8 - 32);
        *(v8 - 32) = 0;
        v10 = *(v8 - 16);
        *(v8 - 8) = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        *(v8 - 24) = v12;
        *(v8 - 16) = v11;
        v13 = *(a2 + 16) + v6;
        *(result + 40) = *v13;
        *(result + 48) = *(v13 + 8);
        *(result + 56) = *(v13 + 16);
        v14 = *(v13 + 24);
        *(result + 64) = *(result + 64) & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
        *(result + 64) = *(v13 + 24) & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
        *(result + 72) = *(v13 + 32);
        *(v13 + 24) = 0;
        *(v13 + 32) = &str_67;
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 88;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 88 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 88 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 88 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 80) = a3;
  ++*(a1 + 28);
  return v7 + 88 * v5;
}

uint64_t re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::ParameterBinding const&>(uint64_t a1, uint64_t a2, const re::DynamicString *a3, uint64_t a4)
{
  v7 = re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::DynamicString::DynamicString((v7 + 8), a3);
  *(v7 + 40) = *a4;
  v7 += 40;
  *(v7 + 8) = *(a4 + 8);
  *(v7 + 16) = *(a4 + 16);
  re::StringID::StringID((v7 + 24), (a4 + 24));
  ++*(a1 + 40);
  return v7;
}

void *re::FixedArray<re::sg::ShaderGraphDynamicFunctionConstant>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 40 * v2;
      do
      {
        v6 = re::DynamicString::deinit(v4);
        v4 = (v4 + 40);
        v5 -= 40;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2], v6);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::BucketArray<re::SharedPtr<re::MaterialParameterTable>,8ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::SharedPtr<re::MaterialParameterTable>,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
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
  return v5 + 8 * (v2 & 7);
}

uint64_t *re::BucketArray<re::SharedPtr<re::MaterialParameterTable>,8ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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
        v5 = (*(**v3 + 32))(*v3, 64, 0);
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

uint64_t re::BucketArray<re::SharedPtr<re::MaterialParameterTable>,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::SharedPtr<re::MaterialParameterTable>,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BlendShapeWeightsDefinitionAsset::assetType(re::BlendShapeWeightsDefinitionAsset *this)
{
  {
    re::BlendShapeWeightsDefinitionAsset::assetType(void)::type = "BlendFactor";
    qword_1EE1C63F8 = 0;
    re::AssetType::generateCompiledExtension(&re::BlendShapeWeightsDefinitionAsset::assetType(void)::type);
  }

  return &re::BlendShapeWeightsDefinitionAsset::assetType(void)::type;
}

void *re::BlendShapeWeightsDefinitionAsset::init(re::BlendShapeWeightsDefinitionAsset *this, re::Allocator *a2)
{
  v2 = a2;
  if (!a2)
  {
  }

  *this = v2;
  re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(this, 0);
  *(this + 5) = v2;
  v4 = this + 40;
  ++*(v4 - 4);
  result = re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(v4, 0);
  ++*(v4 + 6);
  return result;
}

void re::BlendShapeWeightsDefinitionAsset::init(_anonymous_namespace_ *a1, void *a2, void *a3, uint64_t *a4)
{
  v5 = a4;
  v152 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
  }

  v102 = a2[79];
  if (v102)
  {
    v98 = a1;
    v9 = a2[76];
    if (v9)
    {
      v10 = (2 * v9);
    }

    else
    {
      v10 = 1;
    }

    v116 = 0;
    v114 = 0u;
    v115 = 0u;
    v117 = 0x7FFFFFFFLL;
    if (v9)
    {
      LODWORD(v12) = 0;
      v13 = 0;
      v10 = 0x7FFFFFFFLL;
      do
      {
        v14 = a2[76];
        if (v14 <= v13)
        {
          goto LABEL_173;
        }

        v15 = *(a2[78] + 8 * v13);
        v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
        v17 = v16 ^ (v16 >> 31);
        if (v114)
        {
          v11 = v17 % DWORD2(v115);
          v18 = *(*(&v114 + 1) + 4 * v11);
          if (v18 != 0x7FFFFFFF)
          {
            while (*(v115 + 32 * v18 + 8) != v15)
            {
              v18 = *(v115 + 32 * v18) & 0x7FFFFFFF;
              if (v18 == 0x7FFFFFFF)
              {
                goto LABEL_16;
              }
            }

            goto LABEL_17;
          }
        }

        else
        {
          LODWORD(v11) = 0;
        }

LABEL_16:
        v19 = re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v114, v11, v17);
        *(v19 + 8) = v15;
        *(v19 + 16) = v12;
        ++HIDWORD(v117);
LABEL_17:
        v12 = (v12 + 1);
        v13 = v12;
      }

      while (v9 > v12);
    }

    v13 = a3[1];
    v97 = v13;
    if (v13)
    {
      v14 = 0;
      v20 = 0;
      v21 = v98;
      while (1)
      {
        v22 = a3[1];
        if (v22 <= v20)
        {
          goto LABEL_174;
        }

        v10 = v102;
        v23 = re::DataArray<re::MeshInstance>::get(v102 + 72, *(*a3 + 8 * v20));
        v24 = *(re::DataArray<re::MeshModel>::get(v102 + 8, *(v23 + 16)) + 144);
        if (v24)
        {
          LODWORD(v24) = *(v24 + 64);
        }

        v14 = (v24 + v14);
        if (v13 == ++v20)
        {
          goto LABEL_26;
        }
      }
    }

    v14 = 0;
    v21 = v98;
LABEL_26:
    *v21 = v5;
    re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(v21, v14);
    ++*(v21 + 6);
    *(v21 + 5) = v5;
    v100 = (v21 + 40);
    re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(v21 + 5, v14);
    *(v21 + 10) = v5;
    v25 = v21 + 80;
    ++*(v25 - 4);
    re::DynamicArray<re::StringID>::setCapacity(v25, v14);
    ++*(v25 + 6);
    v13 = 0xBF58476D1CE4E5B9;
    if (v97)
    {
      v27 = 0;
      v95 = a2;
      v96 = a3;
      while (1)
      {
        v28 = a3[1];
        if (v28 <= v27)
        {
          goto LABEL_181;
        }

        v29 = re::DataArray<re::MeshInstance>::get(v102 + 72, *(*a3 + 8 * v27));
        if (!v114)
        {
          goto LABEL_186;
        }

        v31 = *(v29 + 16);
        v32 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) >> 27));
        v33 = *(*(&v114 + 1) + 4 * ((v32 ^ (v32 >> 31)) % DWORD2(v115)));
        if (v33 == 0x7FFFFFFF)
        {
          goto LABEL_186;
        }

        while (*(v115 + 32 * v33 + 8) != v31)
        {
          v33 = *(v115 + 32 * v33) & 0x7FFFFFFF;
          if (v33 == 0x7FFFFFFF)
          {
            goto LABEL_186;
          }
        }

        v34 = a3[1];
        if (v34 <= v27)
        {
          goto LABEL_182;
        }

        v4 = *(v115 + 32 * v33 + 16);
        v99 = v27;
        v107 = a2[79];
        v101 = re::DataArray<re::MeshInstance>::get(v107 + 72, *(*a3 + 8 * v27));
        v10 = a2[76];
        v130 = 0;
        v131 = 0;
        v132 = 0;
        if (v10)
        {
          break;
        }

        v36 = 0;
        v13 = v131;
LABEL_44:
        if (v13 <= v10)
        {
          goto LABEL_183;
        }

        *(v132 + 4 * v10) = v36;
        v126[1] = 0;
        v127 = 0;
        v128 = 0;
        v129 = 0;
        v40 = re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(v126, v36);
        ++v128;
        v122 = 0;
        v123 = 0;
        v124 = 0;
        v125 = 0;
        v41 = re::DynamicArray<re::HashSet<re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::setCapacity(&v121, v36);
        v13 = ++v124;
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v10 = a2[76];
        if (v10 <= v4)
        {
          goto LABEL_184;
        }

        v105 = v13;
        v42 = re::DataArray<re::MeshModel>::get(v107 + 8, *(a2[78] + 8 * v4));
        v44 = (v42 + 18);
        v43 = v42[18];
        if (v43)
        {
          v104 = *(v43 + 64);
          if (v104)
          {
            v45 = 0;
            v112 = (v42 + 18);
            v103 = v4;
            while (1)
            {
              v46 = re::BlendShapeModelUtil::blendShapeTargetCountForGroup(v44, v45);
              memset(v138, 0, 36);
              *&v138[36] = 0x7FFFFFFFLL;
              v113 = v45;
              v106 = v46;
              if (v46)
              {
                break;
              }

LABEL_66:
              v58 = v123;
              v109 = v123;
              if (v123)
              {
                v14 = 0;
                v111 = v125;
                v110 = *&v138[28];
                v4 = *&v138[32];
                v10 = *&v138[16];
                v108 = v123;
                do
                {
                  if (v14 == v58)
                  {
                    goto LABEL_168;
                  }

                  v59 = v111 + 48 * v14;
                  if (*(v59 + 28) == v110)
                  {
                    if (!v4)
                    {
LABEL_92:
                      v4 = v103;
                      v44 = v112;
                      LODWORD(v45) = v113;
                      goto LABEL_104;
                    }

                    v60 = 0;
                    while (1)
                    {
                      if ((*(v10 + 24 * v60) & 0x80000000) != 0)
                      {
                        v61 = *(v59 + 24);
                        if (!v61)
                        {
                          break;
                        }

                        v13 = v10 + 24 * v60;
                        v62 = 0xBF58476D1CE4E5B9 * ((*(v13 + 8) >> 31) ^ (*(v13 + 8) >> 1));
                        v63 = *(*(v59 + 8) + 4 * (((0x94D049BB133111EBLL * (v62 ^ (v62 >> 27))) ^ ((0x94D049BB133111EBLL * (v62 ^ (v62 >> 27))) >> 31)) % v61));
                        if (v63 == 0x7FFFFFFF)
                        {
                          break;
                        }

                        v64 = *(v59 + 16);
                        while (1)
                        {
                          v65 = v64 + 24 * v63;
                          v47 = re::StringID::operator==((v65 + 8), (v13 + 8));
                          if (v47)
                          {
                            break;
                          }

                          v63 = *(v64 + 24 * v63) & 0x7FFFFFFF;
                          if (v63 == 0x7FFFFFFF)
                          {
                            goto LABEL_82;
                          }
                        }

                        v47 = re::StringID::operator==((v65 + 8), (v13 + 8));
                        if (!v47)
                        {
                          break;
                        }
                      }

                      if (++v60 == v4)
                      {
                        goto LABEL_92;
                      }
                    }
                  }

LABEL_82:
                  ++v14;
                  v58 = v108;
                  v44 = v112;
                  v45 = v113;
                }

                while (v14 != v109);
              }

              v134 = 0;
              v135 = 0;
              v136 = 0;
              if (v106)
              {
                v10 = 0;
                v14 = 0;
                while (1)
                {
                  re::BlendShapeModelUtil::blendShapeTargetName(v44, v45, v14, &v133);
                  v13 = v135;
                  if (v135 <= v14)
                  {
                    break;
                  }

                  v66 = re::StringID::operator=((v136 + v10), &v133);
                  if (v133)
                  {
                    if (v133)
                    {
                    }
                  }

                  ++v14;
                  v10 += 16;
                  if (v106 == v14)
                  {
                    goto LABEL_90;
                  }
                }

                v137 = 0;
                v150 = 0u;
                v151 = 0u;
                v148 = 0u;
                v149 = 0u;
                v147 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v140 = 136315906;
                *&v140[4] = "operator[]";
                v141 = 1024;
                v142 = 468;
                v143 = 2048;
                v144 = v14;
                v145 = 2048;
                v146 = v13;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_168:
                v134 = 0;
                v150 = 0u;
                v151 = 0u;
                v148 = 0u;
                v149 = 0u;
                v147 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v140 = 136315906;
                *&v140[4] = "operator[]";
                v141 = 1024;
                v142 = 789;
                v143 = 2048;
                v144 = v58;
                v145 = 2048;
                v146 = v58;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_169:
                v126[0] = 0;
                v150 = 0u;
                v151 = 0u;
                v148 = 0u;
                v149 = 0u;
                v147 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v138 = 136315906;
                *&v138[4] = "operator[]";
                *&v138[12] = 1024;
                *&v138[14] = 797;
                *&v138[18] = 2048;
                *&v138[20] = v14;
                *&v138[28] = 2048;
                *&v138[30] = v13;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_170;
              }

LABEL_90:
              v67 = re::DynamicArray<re::FixedArray<re::StringID>>::add(v126, &v134);
              if (v58 >= v122)
              {
                v4 = v103;
                v68 = v105;
                if (v122 < v58 + 1)
                {
                  if (v121)
                  {
                    v69 = 8;
                    if (v122)
                    {
                      v69 = 2 * v122;
                    }

                    if (v69 <= v58 + 1)
                    {
                      v70 = v58 + 1;
                    }

                    else
                    {
                      v70 = v69;
                    }

                    re::DynamicArray<re::HashSet<re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::setCapacity(&v121, v70);
                    v68 = v124;
                  }

                  else
                  {
                    re::DynamicArray<re::HashSet<re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::setCapacity(&v121, v58 + 1);
                    v68 = v124 + 1;
                  }
                }

                v58 = v123;
              }

              else
              {
                v4 = v103;
                v68 = v105;
              }

              v71 = v125 + 48 * v58;
              *v71 = 0u;
              *(v71 + 16) = 0u;
              *(v71 + 32) = 0;
              *(v71 + 36) = 0x7FFFFFFFLL;
              *v71 = *v138;
              *v138 = 0;
              v72 = *(v71 + 8);
              *(v71 + 8) = *&v138[8];
              *&v138[8] = v72;
              v73 = *(v71 + 16);
              *(v71 + 16) = *&v138[16];
              *&v138[16] = v73;
              LODWORD(v73) = *(v71 + 24);
              *(v71 + 24) = *&v138[24];
              *&v138[24] = v73;
              LODWORD(v73) = *(v71 + 28);
              *(v71 + 28) = *&v138[28];
              *&v138[28] = v73;
              LODWORD(v73) = *(v71 + 32);
              *(v71 + 32) = *&v138[32];
              *&v138[32] = v73;
              LODWORD(v73) = *(v71 + 36);
              *(v71 + 36) = *&v138[36];
              *&v138[36] = v73;
              v123 = v58 + 1;
              v105 = v68 + 1;
              v124 = v68 + 1;
              v14 = (v127 - 1);
              re::FixedArray<re::StringID>::deinit(&v134);
LABEL_104:
              v10 = v131;
              if (v131 <= v4)
              {
                goto LABEL_171;
              }

              v10 = (*(v132 + 4 * v4) + v45);
              v13 = v119;
              if (v119 <= v10)
              {
                goto LABEL_172;
              }

              *(v120 + 4 * v10) = v14;
              re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v138);
              v45 = (v45 + 1);
              if (v104 <= v45)
              {
                goto LABEL_107;
              }
            }

            v48 = 0;
            v13 = v46;
            while (2)
            {
              re::BlendShapeModelUtil::blendShapeTargetName(v44, v45, v48, &v147);
              v4 = v147;
              v49 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v4 >> 31) ^ (v4 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v4 >> 31) ^ (v4 >> 1))) >> 27));
              v50 = v49 ^ (v49 >> 31);
              if (*&v138[24])
              {
                v51 = v50 % *&v138[24];
                v52 = *(*&v138[8] + 4 * v51);
                if (v52 != 0x7FFFFFFF)
                {
                  v53 = *&v138[16];
                  v54 = *(&v147 + 1);
                  while (1)
                  {
                    v55 = v53 + 24 * v52;
                    v57 = *(v55 + 8);
                    v56 = v55 + 8;
                    if ((v57 ^ v4) <= 1)
                    {
                      v47 = *(v56 + 8);
                      if (v47 == v54)
                      {
                        break;
                      }

                      v47 = strcmp(v47, v54);
                      if (!v47)
                      {
                        break;
                      }
                    }

                    v52 = *(v53 + 24 * v52) & 0x7FFFFFFF;
                    if (v52 == 0x7FFFFFFF)
                    {
                      v44 = v112;
                      goto LABEL_59;
                    }
                  }

                  v44 = v112;
                  v45 = v113;
                  if ((v4 & 1) == 0)
                  {
LABEL_65:
                    if (++v48 == v106)
                    {
                      goto LABEL_66;
                    }

                    continue;
                  }

LABEL_62:
                  if (v147)
                  {
                  }

                  goto LABEL_65;
                }

LABEL_59:
                v45 = v113;
              }

              else
              {
                LODWORD(v51) = 0;
              }

              break;
            }

            v47 = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addAsMove(v138, v51, v50, &v147, &v147);
            ++*&v138[40];
            v4 = v147;
            if ((v147 & 1) == 0)
            {
              goto LABEL_65;
            }

            goto LABEL_62;
          }
        }

LABEL_107:
        v135 = 0;
        v136 = 0;
        v134 = 0;
        v10 = v131;
        if (v131 <= v4)
        {
          goto LABEL_185;
        }

        v74 = *(v132 + 4 * v4);
        v75 = re::DataArray<re::MeshModel>::get(v107 + 8, *&v101[1].var0);
        v76 = *(v75 + 56);
        if (v76)
        {
          v77 = v75;
          v14 = 0;
          v4 = 488;
          do
          {
            v78 = v77[18];
            if (v78)
            {
              if (*(v78 + 40) > v14)
              {
                v79 = *(*(v78 + 48) + 4 * v14);
                if (v79 != -1)
                {
                  v10 = v79 + v74;
                  v13 = v119;
                  if (v119 <= v79 + v74)
                  {
                    goto LABEL_175;
                  }

                  v10 = *(v120 + 4 * v10);
                  v13 = v135;
                  if (v135 <= v10)
                  {
                    goto LABEL_176;
                  }

                  v80 = *(v136 + 4 * v10);
                  if (v80 == -1)
                  {
                    v13 = v127;
                    if (v127 <= v10)
                    {
                      goto LABEL_179;
                    }

                    v81 = v129;
                    v82 = *(v98 + 2);
                    if (v82 >= *(v98 + 1))
                    {
                      re::DynamicArray<re::FixedArray<re::StringID>>::growCapacity(v98, v82 + 1);
                      v82 = *(v98 + 2);
                    }

                    re::FixedArray<re::StringID>::FixedArray((*(v98 + 4) + 24 * v82), v81 + 24 * v10);
                    v83 = *(v98 + 2) + 1;
                    *(v98 + 2) = v83;
                    ++*(v98 + 6);
                    v13 = v135;
                    if (v135 <= v10)
                    {
                      goto LABEL_180;
                    }

                    v80 = v83 - 1;
                    *(v136 + 4 * v10) = v83 - 1;
                  }

                  v138[0] = 1;
                  v13 = v138;
                  re::StringID::StringID(&v138[8], v101);
                  v10 = v77[7];
                  if (v10 <= v14)
                  {
                    goto LABEL_177;
                  }

                  re::StringID::StringID(&v138[24], (v77[8] + v4));
                  *&v138[40] = v80;
                  v139 = 0;
                  v84 = re::DynamicArray<re::BlendShapeWeightsMeshMap>::add(v100, v138);
                  if (v138[24])
                  {
                    if (v138[24])
                    {
                    }
                  }

                  *&v138[24] = 0;
                  *&v138[32] = &str_67;
                  if (v138[8])
                  {
                    if (v138[8])
                    {
                    }
                  }

                  v10 = v77[7];
                  if (v10 <= v14)
                  {
                    goto LABEL_178;
                  }

                  v85 = (v77[8] + v4);
                  v86 = v85[1];
                  if (*v85 <= 1uLL && v86 && !*v86)
                  {
                    v87 = re::DynamicString::format("%s/%lu", &v147, v77[1], v14, v94);
                  }

                  else
                  {
                    v87 = re::DynamicString::format("%s/%s-%lu", &v147, v77[1], v86, v14);
                  }

                  if (BYTE8(v147))
                  {
                    v10 = v148;
                  }

                  else
                  {
                    v10 = &v147 + 9;
                  }

                  *v138 = 0;
                  *&v138[8] = &str_67;
                  v88 = re::DynamicArray<re::StringID>::add(v25, v138);
                  if (v138[0])
                  {
                    if (v138[0])
                    {
                    }
                  }

                  if (v147 && (BYTE8(v147) & 1) != 0)
                  {
                    (*(*v147 + 40))();
                  }
                }
              }
            }

            ++v14;
            v4 += 544;
          }

          while (v76 != v14);
        }

        if (v134)
        {
          v89 = v135 == 0;
        }

        else
        {
          v89 = 1;
        }

        if (!v89)
        {
          (*(*v134 + 40))();
        }

        v13 = 0xBF58476D1CE4E5B9;
        if (v118 && v119)
        {
          (*(*v118 + 40))();
        }

        v90 = v121;
        a2 = v95;
        if (v121)
        {
          v91 = v125;
          if (v125)
          {
            if (v123)
            {
              v92 = 48 * v123;
              v10 = v125;
              do
              {
                re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v10);
                v10 += 48;
                v92 -= 48;
              }

              while (v92);
            }

            (*(*v90 + 40))(v90, v91);
          }
        }

        re::DynamicArray<re::FixedArray<re::StringID>>::deinit(v126);
        if (v130)
        {
          v93 = v131 == 0;
        }

        else
        {
          v93 = 1;
        }

        if (!v93)
        {
          (*(*v130 + 40))();
        }

        v27 = v99 + 1;
        a3 = v96;
        if (v99 + 1 == v97)
        {
          goto LABEL_165;
        }
      }

      v14 = 0;
      v36 = 0;
      v37 = 1;
      while (1)
      {
        v13 = a2[76];
        if (v13 <= v14)
        {
          goto LABEL_169;
        }

        v35 = re::DataArray<re::MeshModel>::get(v107 + 8, *(a2[78] + 8 * v14));
        v13 = v131;
        if (v131 <= v14)
        {
          break;
        }

        *(v132 + 4 * v14) = v36;
        v38 = *(v35 + 18);
        if (v38)
        {
          LODWORD(v38) = *(v38 + 64);
        }

        v36 += v38;
        v14 = v37;
        if (v10 <= v37++)
        {
          goto LABEL_44;
        }
      }

LABEL_170:
      v126[0] = 0;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v147 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v138 = 136315906;
      *&v138[4] = "operator[]";
      *&v138[12] = 1024;
      *&v138[14] = 468;
      *&v138[18] = 2048;
      *&v138[20] = v14;
      *&v138[28] = 2048;
      *&v138[30] = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_171:
      v134 = 0;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v147 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v140 = 136315906;
      *&v140[4] = "operator[]";
      v141 = 1024;
      v142 = 468;
      v143 = 2048;
      v144 = v4;
      v145 = 2048;
      v146 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_172:
      v134 = 0;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v147 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v140 = 136315906;
      *&v140[4] = "operator[]";
      v141 = 1024;
      v142 = 468;
      v143 = 2048;
      v144 = v10;
      v145 = 2048;
      v146 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_173:
      v126[0] = 0;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v147 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v138 = 136315906;
      *&v138[4] = "operator[]";
      *&v138[12] = 1024;
      *&v138[14] = 797;
      *&v138[18] = 2048;
      *&v138[20] = v13;
      *&v138[28] = 2048;
      *&v138[30] = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_174:
      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v20, v22);
      _os_crash();
      __break(1u);
LABEL_175:
      *v140 = 0;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v147 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v138 = 136315906;
      *&v138[4] = "operator[]";
      *&v138[12] = 1024;
      *&v138[14] = 476;
      *&v138[18] = 2048;
      *&v138[20] = v10;
      *&v138[28] = 2048;
      *&v138[30] = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_176:
      *v140 = 0;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v147 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v138 = 136315906;
      *&v138[4] = "operator[]";
      *&v138[12] = 1024;
      *&v138[14] = 468;
      *&v138[18] = 2048;
      *&v138[20] = v10;
      *&v138[28] = 2048;
      *&v138[30] = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_177:
      v133 = 0;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v147 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v140 = 136315906;
      *&v140[4] = "operator[]";
      v141 = 1024;
      v142 = 476;
      v143 = 2048;
      v144 = v14;
      v145 = 2048;
      v146 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_178:
      *v140 = 0;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v147 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v138 = 136315906;
      *&v138[4] = "operator[]";
      *&v138[12] = 1024;
      *&v138[14] = 476;
      *&v138[18] = 2048;
      *&v138[20] = v14;
      *&v138[28] = 2048;
      *&v138[30] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_179:
      *v140 = 0;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v147 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v138 = 136315906;
      *&v138[4] = "operator[]";
      *&v138[12] = 1024;
      *&v138[14] = 797;
      *&v138[18] = 2048;
      *&v138[20] = v10;
      *&v138[28] = 2048;
      *&v138[30] = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_180:
      *v140 = 0;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v147 = 0u;
      v27 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v138 = 136315906;
      *&v138[4] = "operator[]";
      *&v138[12] = 1024;
      *&v138[14] = 468;
      *&v138[18] = 2048;
      *&v138[20] = v10;
      *&v138[28] = 2048;
      *&v138[30] = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_181:
      re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v27, v28);
      _os_crash();
      __break(1u);
LABEL_182:
      re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v27, v34);
      _os_crash();
      __break(1u);
LABEL_183:
      v126[0] = 0;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v147 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v138 = 136315906;
      *&v138[4] = "operator[]";
      *&v138[12] = 1024;
      *&v138[14] = 468;
      *&v138[18] = 2048;
      *&v138[20] = v10;
      *&v138[28] = 2048;
      *&v138[30] = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_184:
      *v140 = 0;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v147 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v138 = 136315906;
      *&v138[4] = "operator[]";
      *&v138[12] = 1024;
      *&v138[14] = 797;
      *&v138[18] = 2048;
      *&v138[20] = v4;
      *&v138[28] = 2048;
      *&v138[30] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_185:
      *v140 = 0;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v147 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v138 = 136315906;
      *&v138[4] = "operator[]";
      *&v138[12] = 1024;
      *&v138[14] = 468;
      *&v138[18] = 2048;
      *&v138[20] = v4;
      *&v138[28] = 2048;
      *&v138[30] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_186:
      re::internal::assertLog(4, v30, "assertion failure: '%s' (%s:line %i) ", "modelIndex != nullptr", "init", 231);
      _os_crash();
      __break(1u);
    }

LABEL_165:
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v114);
  }
}

uint64_t re::DynamicArray<re::FixedArray<re::StringID>>::deinit(uint64_t a1)
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
        v5 = 24 * v4;
        do
        {
          re::FixedArray<re::StringID>::deinit(v3);
          v3 += 3;
          v5 -= 24;
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

void *re::DynamicArray<re::DynamicArray<float>>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 40 * a2;
    v9 = a2;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v3[4] + v8);
      ++v9;
      v8 += 40;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 40 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 32) = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(v7 + 24) = 0;
        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void re::BlendShapeWeightsDefinitionAsset::constructBlendShapeWeights(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 16);
  v6 = *(a1 + 16);
  if (v5 != v6)
  {
    goto LABEL_8;
  }

  if (v5)
  {
    v7 = (*(a1 + 32) + 8);
    v8 = (*(a3 + 32) + 8);
    while (1)
    {
      v10 = *v8;
      v8 += 4;
      v9 = v10;
      v11 = *v7;
      v7 += 3;
      if (v9 != v11)
      {
        break;
      }

      if (!--v5)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    re::DynamicArray<re::BlendShapeWeights>::resize(a3, v6);
    v12 = 1;
    if (v6)
    {
      goto LABEL_9;
    }

    return;
  }

LABEL_6:
  v12 = 0;
  if (v6)
  {
LABEL_9:
    v13 = 0;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *(a1 + 16);
      if (v16 <= v15)
      {
        break;
      }

      re::make::shared::object<re::BlendShapeWeightsDefinition,re::FixedArray<re::StringID> const&>((*(a1 + 32) + v13), &v18);
      v16 = *(a3 + 16);
      if (v12)
      {
        if (v16 <= v15)
        {
          goto LABEL_23;
        }

        re::FixedArray<CoreIKTransform>::deinit((*(a3 + 32) + v14));
        v16 = *(a3 + 16);
        if (v16 <= v15)
        {
          goto LABEL_25;
        }

        re::BlendShapeWeights::init((*(a3 + 32) + v14), &v18);
      }

      else
      {
        if (v16 <= v15)
        {
          goto LABEL_24;
        }

        v17 = (*(a3 + 32) + v14);
        if (!v17[3])
        {
          re::BlendShapeWeights::reset(v17, &v18);
        }
      }

      if (v18)
      {
      }

      ++v15;
      v14 += 32;
      v13 += 24;
      if (v6 == v15)
      {
        return;
      }
    }

    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    v23 = 797;
    v24 = 2048;
    v25 = v15;
    v26 = 2048;
    v27 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    v23 = 789;
    v24 = 2048;
    v25 = v15;
    v26 = 2048;
    v27 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_24:
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    v23 = 789;
    v24 = 2048;
    v25 = v15;
    v26 = 2048;
    v27 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_25:
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    v23 = 789;
    v24 = 2048;
    v25 = v15;
    v26 = 2048;
    v27 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }
}

void re::DynamicArray<re::BlendShapeWeights>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 32 * a2;
    v9 = a2;
    do
    {
      re::BlendShapeWeights::~BlendShapeWeights((*(a1 + 32) + v8));
      ++v9;
      v8 += 32;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::BlendShapeWeights>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 32 * v4;
      do
      {
        v7 = (*(a1 + 32) + v6);
        *v7 = 0uLL;
        v7[1] = 0uLL;
        v6 += 32;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

re *re::BlendShapeWeightsDefinitionAssetLoader::unloadAsset(re *this, uint64_t a2)
{
  if (a2)
  {
    v3 = re::globalAllocators(this)[2];
    re::DynamicArray<re::StringID>::deinit(a2 + 80);
    re::DynamicArray<re::MeshDeformationIndex>::deinit(a2 + 40);
    re::DynamicArray<re::FixedArray<re::StringID>>::deinit(a2);
    v4 = *(*v3 + 40);

    return v4(v3, a2);
  }

  return this;
}

uint64_t re::BlendShapeWeightsDefinitionAssetLoader::introspectionType(re::BlendShapeWeightsDefinitionAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE195D08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195D08))
  {
    qword_1EE195D00 = re::internal::getOrCreateInfo("BlendShapeWeightsDefinitionAsset", re::allocInfo_BlendShapeWeightsDefinitionAsset, re::initInfo_BlendShapeWeightsDefinitionAsset, &unk_1EE195CF8, 0);
    __cxa_guard_release(&qword_1EE195D08);
  }

  return qword_1EE195D00;
}

void *re::allocInfo_BlendShapeWeightsMeshMap(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195CD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195CD0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE195D80, "BlendShapeWeightsMeshMap");
    __cxa_guard_release(&qword_1EE195CD0);
  }

  return &unk_1EE195D80;
}

void re::initInfo_BlendShapeWeightsMeshMap(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xF3E33F2C32AF1988;
  v14[1] = "BlendShapeWeightsMeshMap";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE195CD8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE195CD8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_MeshIdentifierAsset(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "meshIdentifier";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE195D18 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint32_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "blendShapeWeightsIndex";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE195D20 = v12;
      __cxa_guard_release(&qword_1EE195CD8);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE195D18;
  *(this + 9) = re::internal::defaultConstruct<re::BlendShapeWeightsMeshMap>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendShapeWeightsMeshMap>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendShapeWeightsMeshMap>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendShapeWeightsMeshMap>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::BlendShapeWeightsMeshMap>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = &str_67;
  *(a3 + 24) = 0;
  *(a3 + 32) = &str_67;
  *(a3 + 40) = 0;
}

void re::internal::defaultDestruct<re::BlendShapeWeightsMeshMap>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 24));

  re::StringID::destroyString((a3 + 8));
}

uint64_t re::internal::defaultConstructV2<re::BlendShapeWeightsMeshMap>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = &str_67;
  *(result + 24) = 0;
  *(result + 32) = &str_67;
  *(result + 40) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::BlendShapeWeightsMeshMap>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 24));

  re::StringID::destroyString((a1 + 8));
}

void *re::allocInfo_BlendShapeWeightsDefinitionAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195CE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195CE8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE195E10, "BlendShapeWeightsDefinitionAsset");
    __cxa_guard_release(&qword_1EE195CE8);
  }

  return &unk_1EE195E10;
}

void re::initInfo_BlendShapeWeightsDefinitionAsset(re *this, re::IntrospectionBase *a2)
{
  v17[0] = 0x4D45F6BDEA9529E4;
  v17[1] = "BlendShapeWeightsDefinitionAsset";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE195CF0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE195CF0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "blendShapeWeightNames";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE195D28 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::DynamicArray<re::BlendShapeWeightsMeshMap>>::get(v10);
      v11 = (*(*v10 + 32))(v10, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "blendShapeWeightsMeshMapping";
      *(v11 + 16) = &qword_1EE195D40;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2800000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE195D30 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "blendShapeNames";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x5000000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE195D38 = v15;
      __cxa_guard_release(&qword_1EE195CF0);
    }
  }

  *(this + 2) = 0x8800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE195D28;
  *(this + 9) = re::internal::defaultConstruct<re::BlendShapeWeightsDefinitionAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendShapeWeightsDefinitionAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendShapeWeightsDefinitionAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendShapeWeightsDefinitionAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v16 = v18;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::info) = &unk_1F5CC3A90;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(1, a2);
  if ((re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::info, 0);
    qword_1ECEF5878 = 0x2800000003;
    dword_1ECEF5880 = v8;
    word_1ECEF5884 = 0;
    *&xmmword_1ECEF5888 = 0;
    *(&xmmword_1ECEF5888 + 1) = 0xFFFFFFFFLL;
    qword_1ECEF5898 = v7;
    unk_1ECEF58A0 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::info = &unk_1F5CC3A90;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::info, &v15);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1ECEF5888 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::info;
}

void re::IntrospectionInfo<re::DynamicArray<re::BlendShapeWeightsMeshMap>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE195D10, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE195D10);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE195D40);
      qword_1EE195D40 = &unk_1F5CC3B28;
      __cxa_guard_release(&qword_1EE195D10);
    }
  }

  if ((_MergedGlobals_71 & 1) == 0)
  {
    v1 = qword_1EE195CE0;
    if (qword_1EE195CE0 || (v1 = re::allocInfo_BlendShapeWeightsMeshMap(a1), qword_1EE195CE0 = v1, re::initInfo_BlendShapeWeightsMeshMap(v1, v2), (_MergedGlobals_71 & 1) == 0))
    {
      _MergedGlobals_71 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE195D40, 0);
      qword_1EE195D50 = 0x2800000003;
      dword_1EE195D58 = v3;
      word_1EE195D5C = 0;
      *&xmmword_1EE195D60 = 0;
      *(&xmmword_1EE195D60 + 1) = 0xFFFFFFFFLL;
      qword_1EE195D70 = v1;
      unk_1EE195D78 = 0;
      qword_1EE195D40 = &unk_1F5CC3B28;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE195D40, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE195D60 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::BlendShapeWeightsDefinitionAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = a3;
  *(a3 + 128) = a3 + 40;
  return result;
}

uint64_t re::internal::defaultDestruct<re::BlendShapeWeightsDefinitionAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::StringID>::deinit(a3 + 80);
  re::DynamicArray<re::MeshDeformationIndex>::deinit(a3 + 40);

  return re::DynamicArray<re::FixedArray<re::StringID>>::deinit(a3);
}

double re::internal::defaultConstructV2<re::BlendShapeWeightsDefinitionAsset>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1;
  *(a1 + 128) = a1 + 40;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::BlendShapeWeightsDefinitionAsset>(uint64_t a1)
{
  re::DynamicArray<re::StringID>::deinit(a1 + 80);
  re::DynamicArray<re::MeshDeformationIndex>::deinit(a1 + 40);

  return re::DynamicArray<re::FixedArray<re::StringID>>::deinit(a1);
}

void *re::DynamicArray<re::FixedArray<re::StringID>>::add(void *this, void *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::FixedArray<re::StringID>>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = (v3[4] + 24 * v4);
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v6 = a2[1];
  *v5 = *a2;
  v5[1] = v6;
  *a2 = 0;
  a2[1] = 0;
  v7 = v5[2];
  v5[2] = a2[2];
  a2[2] = v7;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_5, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v7);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v7);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  v12 = 24 * v7;
  *(v10 + v12) = v11 | 0x80000000;
  *(*(a1 + 16) + v12) = *(*(a1 + 16) + 24 * v7) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  v13 = *(a1 + 16) + 24 * v7;
  v14 = *a5;
  *(v13 + 8) = *(v13 + 8) & 0xFFFFFFFFFFFFFFFELL | *a5 & 1;
  *(v13 + 8) = *a5 & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  *(v13 + 16) = a5[1];
  *a5 = 0;
  a5[1] = &str_67;
  *(*(a1 + 8) + 4 * a2) = v7;
  ++*(a1 + 28);
  return v7;
}

void re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v15, 0, 36);
      *&v15[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v15, v4, a2);
      v5 = *v15;
      *v15 = *a1;
      *a1 = v5;
      v6 = *&v15[16];
      *&v15[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v15[24];
      *&v15[24] = *(a1 + 24);
      v7 = *&v15[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v15[16] + v10) & 0x80000000) != 0)
          {
            v12 = 0xBF58476D1CE4E5B9 * ((*(*&v15[16] + v10 + 8) >> 31) ^ (*(*&v15[16] + v10 + 8) >> 1));
            v13 = (0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) ^ ((0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) >> 31);
            re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addAsMove(a1, v13 % *(a1 + 24), v13, *&v15[16] + v10 + 8, *&v15[16] + v10 + 8);
            v9 = *&v15[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v15);
    }
  }

  else
  {
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = 3;
    }
  }
}

double re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
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
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 8);
        }

        v4 += 24;
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

void *re::DynamicArray<re::FixedArray<re::StringID>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
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
        v10 = &v8[3 * v9];
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
          v12 = v8[1];
          *v11 = *v8;
          v11[1] = v12;
          *v8 = 0;
          v8[1] = 0;
          v13 = v11[2];
          v11[2] = v8[2];
          v8[2] = v13;
          re::FixedArray<re::StringID>::deinit(v8);
          v8 += 3;
          v11 += 3;
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

void *re::DynamicArray<re::HashSet<re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::HashSet<re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::setCapacity(v5, a2);
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
        v10 = 48 * v9;
        v11 = v7;
        do
        {
          *(v11 + 8) = 0;
          *v11 = 0u;
          *(v11 + 1) = 0u;
          *(v11 + 36) = 0x7FFFFFFFLL;
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v11, v8);
          re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v8);
          v8 += 6;
          v11 += 6;
          v10 -= 48;
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

void *re::DynamicArray<re::BlendShapeWeightsMeshMap>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::BlendShapeWeightsMeshMap>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 48 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = *(v5 + 8) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = &str_67;
  v7 = *(a2 + 24);
  *(v5 + 24) = *(v5 + 24) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 24) = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = &str_67;
  *(v5 + 40) = *(a2 + 40);
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<re::BlendShapeWeightsMeshMap>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(v5, a2);
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
        v10 = &v8[6 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = (v8 + 1);
          v12 = v8[1];
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | v8[1] & 1;
          v11[1] = v8[1] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[2] = v8[2];
          v8[2] = &str_67;
          v8[1] = 0;
          v15 = v8[3];
          v14 = (v8 + 3);
          v11[3] = v11[3] & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          v11[3] = *v14 & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          v11[4] = *(v14 + 1);
          *v14 = 0;
          *(v14 + 1) = &str_67;
          v11[5] = *(v14 + 2);
          re::StringID::destroyString(v14);
          re::StringID::destroyString(v13);
          v11 += 6;
          v8 = (v14 + 24);
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

void *re::FixedArray<unsigned int>::init<unsigned int const&>(void *result, uint64_t a2, unint64_t a3, int *a4)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 62)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 4, a3);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  result = (*(*a2 + 32))(a2, 4 * a3, 4);
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
      result = (result + 4);
      --v8;
    }

    while (v8);
  }

  *result = *a4;
  return result;
}

void re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_5, 4 * v10);
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

uint64_t re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

void re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24));
        v7 = *(a2 + 16);
        *(result + 8) = *(v7 + v5 + 8);
        *(result + 16) = *(v7 + v5 + 16);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

void *re::DynamicArray<re::BlendShapeWeights>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::BlendShapeWeights>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 32 * v9;
        v11 = v7;
        do
        {
          re::FixedArray<float>::FixedArray(v11, v8);
          v12 = *(v8 + 3);
          v11[3] = v12;
          if (v12)
          {
            v13 = (v12 + 8);
          }

          re::BlendShapeWeights::~BlendShapeWeights(v8);
          v8 = (v8 + 32);
          v11 += 4;
          v10 -= 32;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

ArcSharedObject *re::make::shared::object<re::BlendShapeWeightsDefinition,re::FixedArray<re::StringID> const&>@<X0>(const StringID **a1@<X0>, _anonymous_namespace_ **a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 104, 8);
  v6 = a1[1];
  v8[0] = a1[2];
  v8[1] = v6;
  *a2 = v5;
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v12);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<re::FixedArray<re::StringID>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::FixedArray<re::StringID>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::FixedArray<re::StringID>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::FixedArray<re::StringID>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::FixedArray<re::StringID>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::FixedArray<re::StringID>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::FixedArray<re::StringID>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  memset(v10, 0, sizeof(v10));
  re::DynamicArray<re::FixedArray<re::StringID>>::add(this, v10);
  re::FixedArray<re::StringID>::deinit(v10);
  v8 = (*(this + 4) + 24 * *(this + 2) - 24);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::FixedArray<re::StringID>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

void *re::DynamicArray<re::FixedArray<re::StringID>>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 24 * a2;
    v9 = a2;
    do
    {
      result = re::FixedArray<re::StringID>::deinit((v3[4] + v8));
      ++v9;
      v8 += 24;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 24 * v4;
      do
      {
        v7 = (v3[4] + v6);
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        v6 += 24;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3, re::Allocator *a4, unint64_t a5)
{
  if (*a2 == a4)
  {
    re::DynamicArray<re::FixedArray<re::StringID>>::clear(a2);
  }

  else
  {
    re::DynamicArray<re::FixedArray<re::StringID>>::deinit(a2);
    *a2 = a4;
    re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(a2, a5);
    ++*(a2 + 24);
  }

  v9 = re::DynamicArray<re::FixedArray<re::StringID>>::resize(a2, a5);
  {
    re::TypeRegistry::typeInfo(*a3, *(*(a3 + 16) + 80), v14);
    re::TypeInfo::TypeInfo(v13, &v15);
    v10 = *(a2 + 16);
    if (v10)
    {
      v11 = *(a2 + 32);
      v12 = 24 * v10;
      do
      {
        re::TypeInfo::destruct(v13, v11, a4, 0);
        re::TypeInfo::construct(v13, v11, a4, 0);
        v11 += 24;
        v12 -= 24;
      }

      while (v12);
    }
  }
}

void *re::DynamicArray<re::FixedArray<re::StringID>>::clear(void *result)
{
  v1 = result;
  v2 = result[2];
  result[2] = 0;
  if (v2)
  {
    v3 = result[4];
    v4 = 24 * v2;
    do
    {
      result = re::FixedArray<re::StringID>::deinit(v3);
      v3 += 3;
      v4 -= 24;
    }

    while (v4);
  }

  ++*(v1 + 6);
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 24 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 24 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::StringID>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::BlendShapeWeightsMeshMap>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BlendShapeWeightsMeshMap>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BlendShapeWeightsMeshMap>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BlendShapeWeightsMeshMap>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshDeformationIndex>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::BlendShapeWeightsMeshMap>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::BlendShapeWeightsMeshMap>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BlendShapeWeightsMeshMap>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v12 = &str_67;
  v13 = 0;
  v11 = 0u;
  v14 = &str_67;
  v15 = 0;
  v8 = re::DynamicArray<re::BlendShapeWeightsMeshMap>::add(this, &v11);
  if (v13)
  {
    if (v13)
    {
    }
  }

  v13 = 0;
  v14 = &str_67;
  if (BYTE8(v11))
  {
    if (BYTE8(v11))
    {
    }
  }

  v9 = (*(this + 4) + 48 * *(this + 2) - 48);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::BlendShapeWeightsMeshMap>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

void re::DynamicArray<re::BlendShapeWeightsMeshMap>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 48 * a2 + 24;
    v9 = a2;
    do
    {
      v10 = (*(a1 + 32) + v8);
      re::StringID::destroyString(v10);
      re::StringID::destroyString((v10 - 16));
      ++v9;
      v8 += 48;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 48 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = &str_67;
        *(v7 + 24) = 0;
        *(v7 + 32) = &str_67;
        *(v7 + 40) = 0;
        v6 += 48;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 48 * v8;
      v10 = (*(a1 + 32) + 24);
      do
      {
        re::StringID::destroyString(v10);
        re::StringID::destroyString((v10 - 16));
        v10 = (v10 + 48);
        v9 -= 48;
      }

      while (v9);
    }
  }

  else
  {
    re::DynamicArray<re::MeshDeformationIndex>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::BlendShapeWeightsMeshMap>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 48 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 48;
        v14 -= 48;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 48 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t *re::TextureAsset::assetType(re::TextureAsset *this)
{
  {
    re::TextureAsset::assetType(void)::type = "Texture";
    qword_1EE1C7198 = 0;
    re::AssetType::generateCompiledExtension(&re::TextureAsset::assetType(void)::type);
  }

  return &re::TextureAsset::assetType(void)::type;
}

uint64_t re::TextureAsset::makeTextureAsset(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = 0u;
  v7 = 0u;
  LOWORD(v7) = 257;
  BYTE2(v7) = 1;
  BYTE5(v7) = 1;
  TextureAsset = re::TextureAsset::makeTextureAsset(&v6, a1, a2, a3, a4);

  return TextureAsset;
}

uint64_t re::TextureAsset::makeTextureAsset(re *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v17 = a5;
  v18 = a4;
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 408, 8);
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 144) = 0u;
  *(v9 + 160) = 0u;
  *(v9 + 192) = 0u;
  *(v9 + 208) = 0u;
  *(v9 + 224) = 0u;
  *(v9 + 240) = 0u;
  *(v9 + 256) = 0u;
  *(v9 + 272) = 0u;
  *(v9 + 288) = 0u;
  *(v9 + 304) = 0u;
  *(v9 + 320) = 0u;
  *(v9 + 336) = 0u;
  *(v9 + 352) = 0u;
  *(v9 + 368) = 0u;
  *(v9 + 384) = 0u;
  *(v9 + 400) = 0;
  *(v9 + 176) = 0u;
  v10 = re::TextureAsset::TextureAsset(v9);
  *(v10 + 64) = *a3;
  v11 = *(a3 + 8);
  *(v10 + 148) = *(a3 + 20);
  *(v10 + 136) = v11;
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v10 + 21, *(a3 + 40));
  re::ObjCObject::operator=((v9 + 176), (a3 + 48));
  re::DynamicArray<short>::operator=(v9 + 184, (a3 + 56));
  *(v9 + 224) = *(a3 + 96);
  v12 = *(a3 + 48);
  v13 = v12;
  v14 = *(a3 + 72);
  v16[0] = *(a3 + 88);
  v16[1] = v14;
  re::TextureAsset::setTexture(v9, a1, a2, &v18, &v17, v12, v16);
  return v9;
}

void re::TextureAsset::setTexture(uint64_t a1, const re::ImportGraphicsContext *a2, uint64_t a3, _DWORD *a4, _DWORD *a5, __CFString *a6, uint64_t a7)
{
  os_unfair_lock_lock((a1 + 400));
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(a1 + 112, a3);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(a1 + 232, a3);
  *(a1 + 356) = *a4;
  *(a1 + 360) = *a5 == 1;
  *(a1 + 248) = re::TextureData::width((a1 + 112));
  *(a1 + 252) = re::TextureData::height((a1 + 112));
  *(a1 + 256) = re::TextureData::depth((a1 + 112));
  *(a1 + 260) = re::TextureData::arrayLength((a1 + 112));
  *(a1 + 344) = re::TextureData::pixelFormat((a1 + 112));
  *(a1 + 348) = re::TextureData::textureType((a1 + 112));
  v14 = *(a1 + 72);
  *(a1 + 72) = 0;

  if (*(a1 + 120) || (v20 = [*(a1 + 112) device]) == 0 || (v21 = v20, v22 = objc_msgSend(v20, "supportsTextureSwizzle"), v21, v22))
  {
    *(a1 + 352) = re::TextureData::swizzle((a1 + 112));
  }

  else
  {
    *(a1 + 352) = 84148994;
  }

  if ((*(a1 + 356) - 3) <= 1)
  {
    re::TextureAsset::updateColorSpaceFromTexture(a1, a2, 0);
  }

  re::DynamicArray<short>::operator=((a1 + 304), a7);
  LoadedMipmapRange = re::TextureAsset::getLoadedMipmapRange(a1);
  *(a1 + 264) = LoadedMipmapRange;
  *(a1 + 272) = v16;
  v17 = *(a1 + 280);
  if (!v17)
  {
  }

  v18 = *(a1 + 336);
  v19 = *(a1 + 320);
  v25 = 0;
  v26 = 0;
  v24 = 0;
  re::FixedArray<short>::init<>(&v24, v17, v19);
  re::FixedArray<short>::copy(&v24, v18, v19);
  re::FixedArray<short>::operator=((a1 + 280), &v24);
  if (v24 && v25)
  {
    (*(*v24 + 40))();
  }

  re::TextureAsset::setColorSpace(a1, a6);
  if (!*(a1 + 16) || !*(a1 + 8))
  {
    goto LABEL_14;
  }

  if (!*(a3 + 8))
  {
    re::TextureHandle::setMetalTexture((a1 + 8), a3);
    re::TextureAsset::updateLegacyLinearFormatWithSRGBDataTexture(a1, a2);
LABEL_14:
    os_unfair_lock_unlock((a1 + 400));
    return;
  }

  v23 = std::__throw_bad_variant_access[abi:nn200100]();
  re::TextureAsset::makeTextureAssetWithIOSurface(v23);
}

uint64_t re::TextureAsset::makeTextureAssetWithIOSurface(id *a1, id *a2, uint64_t a3, uint64_t a4)
{
  v17 = 0u;
  v18 = 0u;
  LOWORD(v18) = 257;
  BYTE2(v18) = 1;
  BYTE5(v18) = 1;
  re::mtl::Device::makeTextureWithIOSurface(*a2, a1, a3, a4, &v14);
  v15 = v14;
  v16 = 0;
  v6 = 0;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v10 = 0u;
  memset(v11, 0, 28);
  v12 = 0;
  v13 = 0;
  TextureAsset = re::TextureAsset::makeTextureAsset(&v17, &v15, &v6, 6, 0);
  if (*&v11[0])
  {
    if (v12)
    {
      (*(**&v11[0] + 40))();
    }

    v12 = 0;
    memset(v11, 0, 24);
    ++DWORD2(v11[1]);
  }

  if (v10)
  {
  }

  if (v16 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v16])(&v6, &v15);
  }

  v16 = -1;
  if (v14)
  {
  }

  return TextureAsset;
}

uint64_t re::TextureAsset::makeTextureAssetWithDirectTexture(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 408, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0u;
  *(v3 + 368) = 0u;
  *(v3 + 384) = 0u;
  *(v3 + 400) = 0;
  re::TextureAsset::TextureAsset(v3);
  re::DirectTexturePayload::make(a1, &v8);
  v4 = (v3 + 72);
  if ((v3 + 72) != &v8)
  {
    v5 = v8;
    v8 = 0;
    v6 = *v4;
    *v4 = v5;
  }

  return v3;
}

id re::TextureData::width(re::TextureData *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    if (v2 != 1)
    {
      v5 = std::__throw_bad_variant_access[abi:nn200100]();
      return re::TextureData::height(v5);
    }

    this = (*this + 24);
  }

  v3 = *this;

  return [v3 width];
}

id re::TextureData::height(re::TextureData *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    if (v2 != 1)
    {
      v5 = std::__throw_bad_variant_access[abi:nn200100]();
      return re::TextureData::depth(v5);
    }

    this = (*this + 24);
  }

  v3 = *this;

  return [v3 height];
}

id re::TextureData::depth(re::TextureData *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    if (v2 != 1)
    {
      v5 = std::__throw_bad_variant_access[abi:nn200100]();
      return re::TextureData::arrayLength(v5);
    }

    this = (*this + 24);
  }

  v3 = *this;

  return [v3 depth];
}

id re::TextureData::arrayLength(re::TextureData *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    if (v2 != 1)
    {
      v5 = std::__throw_bad_variant_access[abi:nn200100]();
      return re::TextureData::mipmapLevelCount(v5);
    }

    this = (*this + 24);
  }

  v3 = *this;

  return [v3 arrayLength];
}

id re::TextureData::mipmapLevelCount(re::TextureData *this)
{
  v2 = *(this + 2);
  if (v2 == 1)
  {
    return *(*this + 48);
  }

  if (v2)
  {
    v5 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::TextureAsset::updateMips(v5, v6, v7);
  }

  else
  {
    v3 = *this;

    return [v3 mipmapLevelCount];
  }
}

void re::TextureAsset::updateMips(uint64_t a1, const re::ImportGraphicsContext *a2, id a3)
{
  v5 = a3;
  if (*(a1 + 240))
  {
    v11 = std::__throw_bad_variant_access[abi:nn200100]();
    re::FixedArray<short>::operator=(v11, v12);
  }

  else
  {
    v6 = v5;
    v7 = *(a1 + 232);
    v20 = v6;
    v19 = v7;
    re::copyTextureMips(a2, &v20, &v19, (a1 + 80));
    if (v19)
    {

      v19 = 0;
    }

    if (v20)
    {

      v20 = 0;
    }

    v17 = v7;
    re::makeLoadedTextureView(&v17, (a1 + 80), &v18);
    if (v17)
    {

      v17 = 0;
    }

    if (v18)
    {
      v15 = v18;
      v16 = 0;
      v14 = *(a1 + 360);
      v8 = *(a1 + 176);
      v9 = v8;
      v10 = *(a1 + 200);
      v13[0] = *(a1 + 216);
      v13[1] = v10;
      re::TextureAsset::setTexture(a1, a2, &v15, (a1 + 356), &v14, v8, v13);
      if (v16 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v16])(v13, &v15);
      }

      if (v18)
      {
      }
    }

    if (v7)
    {
    }

    if (v6)
    {
    }
  }
}

uint64_t *re::FixedArray<short>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *result = v5;
      *a2 = v4;
      v7 = result[1];
      v8 = result[2];
      v9 = a2[2];
      result[1] = a2[1];
      result[2] = v9;
      a2[1] = v7;
      a2[2] = v8;
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::TextureAsset::getLoadedMipmapRange(re::TextureAsset *this)
{
  v2 = *(this + 78);
  v3 = re::TextureData::width((this + 112));
  v4 = re::TextureData::height((this + 112));
  if (v3 <= v4)
  {
    v3 = v4;
  }

  v5 = re::TextureData::depth((this + 112));
  if (v3 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  v7 = 64 - __clz((v6 + 1));
  v8 = v7 - 1;
  v9 = __CFADD__(v6, 1);
  v10 = (v6 + 1);
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = ~(-1 << (v7 - 1));
  }

  if (v9)
  {
    v8 = 0;
  }

  if ((v11 & v10) != 0)
  {
    v12 = v7;
  }

  else
  {
    v12 = v8;
  }

  v9 = v2 >= v12;
  v13 = v2 - v12;
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  re::TextureData::mipmapLevelCount((this + 112));
  return v14;
}

uint64_t re::TextureAsset::getMemoryInfo@<X0>(id *this@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, char *a4@<X3>, void *a5@<X8>)
{
  if (*(a2 + 82))
  {
    v10 = 232;
  }

  else
  {
    v10 = 112;
  }

  result = re::estimateTextureMemorySize(this, (a2 + v10), 1);
  v12 = result;
  *a5 = result;
  if (*a3)
  {
    v13 = *a4;
    v15 = *(a3 + 8);
    v14 = *(a3 + 16);
    v33[0] = 1;
    v34 = v15;
    v35 = v14;
    if ((v13 & 1) == 0)
    {
      v28 = this;
      LoadedMipmapRange = re::TextureAsset::getLoadedMipmapRange(a2);
LABEL_10:
      v30[0] = 1;
      v31 = LoadedMipmapRange;
      v32 = v17;
      v20 = *(a2 + 156);
      v21 = *(a2 + 136);
      v22 = *(a2 + 140);
      v23 = *(a2 + 144);
      v24 = *(a2 + 148);
      v25 = re::TextureData::textureType((a2 + v10));
      v29 = re::TextureData::pixelFormat((a2 + v10));
      re::TextureData::compressionType((a2 + v10));
      LODWORD(v27) = v26;
      result = re::estimateTextureMemorySize(v28, v20, v21, v22, v23, v24, v25, &v29, v27, v33, v30);
      a5[1] = v12 + 2 * result;
      a5[2] = result;
      return result;
    }

LABEL_9:
    v28 = this;
    LoadedMipmapRange = *(a4 + 1);
    v17 = *(a4 + 2);
    goto LABEL_10;
  }

  if (*a4)
  {
    v18 = *(a2 + 320);
    v19 = *(a2 + 336);
    v33[0] = 1;
    v34 = v19;
    v35 = v18;
    goto LABEL_9;
  }

  a5[1] = 0;
  a5[2] = 0;
  return result;
}

id re::TextureData::textureType(re::TextureData *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return [*this textureType];
  }

  if (v1 == 1)
  {
    this = (*this + 24);
    return [*this textureType];
  }

  v3 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::TextureData::pixelFormat(v3);
}

id re::TextureData::pixelFormat(re::TextureData *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return [*this pixelFormat];
  }

  if (v1 == 1)
  {
    this = (*this + 24);
    return [*this pixelFormat];
  }

  v3 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::TextureData::compressionType(v3);
}

void re::TextureData::compressionType(re::TextureData *this)
{
  v1 = *(this + 2);
  if (v1 == 1)
  {
    v2 = *this;

    re::CPUTexture::compressionType(v2);
  }

  else if (v1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    re::TextureAssetData::~TextureAssetData(v3);
  }

  else
  {
    [*this compressionType];
  }
}

void re::TextureAssetData::~TextureAssetData(re::TextureAssetData *this)
{
  *this = &unk_1F5CC40A0;
  v2 = *(this + 18);
  if (v2)
  {

    *(this + 18) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 96);

  v3 = *(this + 10);
  if (v3)
  {

    *(this + 10) = 0;
  }

  v4 = *(this + 8);
  if (v4 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v4])(&v5, this + 24);
  }

  *(this + 8) = -1;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CC40A0;
  v2 = *(this + 18);
  if (v2)
  {

    *(this + 18) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 96);

  v3 = *(this + 10);
  if (v3)
  {

    *(this + 10) = 0;
  }

  v4 = *(this + 8);
  if (v4 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v4])(&v5, this + 24);
  }

  *(this + 8) = -1;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
  MEMORY[0x1E6906520](this, 0x10F3C40B1BD834BLL);
}

id re::TextureData::label(re::TextureData *this)
{
  v1 = *(this + 2);
  if (v1 == 1)
  {
    v3 = *this;
    if (*(*this + 80))
    {
      return *(v3 + 88);
    }

    else
    {
      return (v3 + 81);
    }
  }

  else if (v1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::TextureData::isValid(v4);
  }

  else
  {
    result = [objc_msgSend(*this label)];
    if (!result)
    {
      return re::TextureData::label(void)const::emptyString;
    }
  }

  return result;
}

uint64_t re::TextureData::isValid(re::TextureData *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return *this != 0;
  }

  if (v1 == 1)
  {
    if (*(*this + 48))
    {
      this = (*this + 24);
      return *this != 0;
    }

    return 0;
  }

  else
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::FixedArray<short>::operator[](v3);
  }
}

uint64_t re::FixedArray<short>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 2 * a3;
}

uint64_t re::FixedArray<re::Pair<unsigned short,unsigned short,true>>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 4 * a3;
}

uint64_t re::DynamicArray<short>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<short>::copy(a1, a2);
      }

      else
      {
        *(a1 + 16) = 0;
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<short>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<short>::copy(a1, a2);
    }
  }

  return a1;
}

void re::TextureAsset::createTextureAssetData(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v254 = *MEMORY[0x1E69E9840];
  if (a6 && (v16 = atomic_load((a6 + 24)), (v16 & 1) != 0) || a7 && (v17 = atomic_load((a7 + 24)), (v17 & 1) != 0))
  {
    v18 = "TextureAsset update was cancelled";
LABEL_34:
    v44 = buf;
    v45 = v240;
    *a8 = 0;
    *(a8 + 8) = v44;
    *(a8 + 24) = v45;
    return;
  }

  v19 = os_unfair_lock_trylock((a1 + 400));
  if (!v19)
  {
    v18 = "TextureAsset is blocked by another update";
    goto LABEL_34;
  }

  v174 = a2;
  v181 = a4;
  v20 = a1 + 128;
  v206 = *(a1 + 128);
  *v207 = *(a1 + 136);
  *&v207[12] = *(a1 + 148);
  v21 = *(a1 + 168);
  v208 = v21;
  if (v21)
  {
    v22 = (v21 + 8);
  }

  v209 = *(a1 + 176);
  re::DynamicArray<short>::DynamicArray(v210, (a1 + 184));
  v213 = *(a1 + 224);
  if (v208)
  {
    v179 = a8;
    v180 = a3;
    v23 = *&v207[20];
    LoadedMipmapRange = re::TextureAsset::getLoadedMipmapRange(a1);
    v26 = v25;
    v27 = *a5;
    v28 = *(a5 + 1);
    v176 = a5;
    if (*(a5 + 2) < *&v207[20])
    {
      v23 = *(a5 + 2);
    }

    v29 = a1;
    re::DynamicArray<short>::DynamicArray(&v203, (a1 + 304));
    v30 = *(v181 + 16);
    if (!*v181)
    {
      v30 = v204;
    }

    v172 = v26;
    v173 = LoadedMipmapRange;
    if (v28 == LoadedMipmapRange && v23 == v26)
    {
      v32 = 0;
    }

    else
    {
      v32 = v27;
    }

    v33 = v30;
    if (v30 == v204)
    {
      v34 = *v181 ? *(v181 + 8) : __s2;
      v35 = memcmp(v34, __s2, 2 * v204);
      v36 = v35 ? 1 : v32;
      if ((v36 & 1) == 0)
      {
        v49 = v230;
        v51 = v180[1];
        v50 = v180[2];
        v52 = *v180;
        *(v230 + 76) = *(v180 + 44);
        *(v49 + 3) = v51;
        *(v49 + 4) = v50;
        *(v49 + 2) = v52;
        re::ObjCObject::operator=(v49 + 12, v180 + 8);
        v53 = *(v180 + 72);
        *(v49 + 30) = *(v180 + 22);
        *(v49 + 104) = v53;
        re::FixedArray<short>::operator=(v49 + 16, v180 + 12);
        v49[152] = *(v180 + 120);
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v49 + 3, *(v29 + 168));
        *(v49 + 20) = *(v29 + 224);
        v202 = v49;
        v54 = v49 + 8;
        re::TextureAssetData::createShared(v29 + 112, v20, &v202, v220);
        re::TextureAssetData::TextureAssetData(&buf, v220);
        *v179 = 1;
        re::TextureAssetData::TextureAssetData(v179 + 8, &buf);
        *&buf = &unk_1F5CC40A0;
        if (v246)
        {

          v246 = 0;
        }

        if (*&v241[64])
        {
          if (v244)
          {
            (*(**&v241[64] + 40))();
          }

          v244 = 0;
          v242 = 0;
          *&v243 = 0;
          *&v241[64] = 0;
          ++DWORD2(v243);
        }

        if (*&v241[48])
        {

          *&v241[48] = 0;
        }

        if (*v241 != -1)
        {
          (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[*v241])(&v200, &v240 + 8);
        }

        *v241 = -1;
        *&buf = &unk_1F5CCF868;
        objc_destructInstance(&buf + 8);
        v220[0] = &unk_1F5CC40A0;
        if (*&v228[0])
        {

          *&v228[0] = 0;
        }

        if (*v226)
        {
          if (v227)
          {
            (*(**v226 + 40))();
          }

          *&v227 = 0;
          memset(v226, 0, 24);
          ++*&v226[24];
        }

        if (v224)
        {

          v224 = 0;
        }

        if (LODWORD(v220[4]) != -1)
        {
          (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[LODWORD(v220[4])])(&v200, &v220[3]);
        }

        LODWORD(v220[4]) = -1;
        v220[0] = &unk_1F5CCF868;
        objc_destructInstance(&v220[1]);

        os_unfair_lock_unlock((v29 + 400));
        v55 = v49 + 8;
        goto LABEL_274;
      }
    }

    v168 = v32;
    v170 = *(v29 + 344);
    v37 = v208;
    if (v208)
    {
      v38 = (v208 + 8);
    }

    v175 = *&v207[20];
    v39 = v29;
    v40 = re::TextureData::label((v29 + 112));
    v200 = 0u;
    v201 = 0u;
    re::DynamicString::setCapacity(&v200, 0);
    v41 = a6;
    if (v40)
    {
      v42 = strlen(v40);
      *&buf = v40;
      *(&buf + 1) = v42;
      re::DynamicString::operator=(&v200, &buf);
      if (BYTE8(v200))
      {
        v43 = v201;
      }

      else
      {
        v43 = &v200 | 9;
      }

      v169 = v43;
    }

    else
    {
      v169 = 0;
    }

    LOBYTE(v198) = 0;
    v199 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(&v198, v39 + 112);
    os_unfair_lock_unlock((v39 + 400));
    LODWORD(buf) = -1;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v57 = v180[1];
    v185 = *v180;
    v186 = v57;
    v187[0] = v180[2];
    *(v187 + 12) = *(v180 + 44);
    v188 = *(v180 + 8);
    v189 = *(v180 + 72);
    v190 = *(v180 + 22);
    v58 = re::FixedArray<short>::FixedArray(&v191, v180 + 12);
    v194 = *(v180 + 120);
    if (v37)
    {
      v58 = (v37 + 8);
    }

    v219 = a6;
    v218 = a7;
    v171 = v33;
    if (a6 && (v59 = atomic_load((a6 + 24)), (v59 & 1) != 0) || a7 && (v60 = atomic_load((a7 + 24)), (v60 & 1) != 0))
    {
      v61 = 0;
      v175 = 0;
      v177 = 0;
      LOWORD(v225) = v225 & 0xFC00;
      v62 = 0uLL;
      memset(v220, 0, sizeof(v220));
      v221 = 0u;
      v227 = 0u;
      v228[0] = 0u;
      v223 = 0;
      LODWORD(v224) = 0;
      v222 = 0;
      *v226 = 0;
      *&v226[8] = 0;
LABEL_79:
      *(v228 + 12) = v62;
      *&v226[16] = 0;
      v229 = 0uLL;
      goto LABEL_80;
    }

    if (*v176 == 1)
    {
      v63 = v181;
      v64 = *(v176 + 1) != v173 || *(v176 + 2) != v26;
    }

    else
    {
      v64 = 0;
      v63 = v181;
    }

    if (*v63 == 1)
    {
      if (*(v63 + 16) != v204)
      {
        v65 = 1;
        goto LABEL_143;
      }

      v58 = memcmp(*(v63 + 8), __s2, 2 * v204);
      v65 = v58 != 0;
    }

    else
    {
      v65 = 0;
    }

    if (!v64 && !v65)
    {
      v61 = 0;
      v175 = 0;
      v177 = 0;
      LOWORD(v225) = v225 & 0xFC00;
      v223 = 0;
      LODWORD(v224) = 0;
      v62 = 0uLL;
      memset(v220, 0, sizeof(v220));
      v221 = 0u;
      v222 = 0;
      *v226 = 0;
      *&v226[8] = 0;
      v227 = 0u;
      v228[0] = 0u;
      goto LABEL_79;
    }

LABEL_143:
    v216 = 0;
    v215 = 0;
    v217 = 0;
    if (v64)
    {
      v89 = *(v176 + 1);
      v88 = *(v176 + 2);
      v90 = v172;
      v91 = v173;
      v92 = v173 == v89 && v172 == v88;
      v93 = !v92;
      if (v92)
      {
        v89 = 0;
        v88 = 0;
      }

      else
      {
        v94 = 0;
        if (v89 > v172 || v88 < v173)
        {
          v175 = 0;
          goto LABEL_162;
        }

        if (v89 < v173 && v88 > v172)
        {
          v94 = 0;
          v175 = 0;
LABEL_162:
          v61 = 1;
          goto LABEL_163;
        }

        if (v89 < v173)
        {
          if (v88 <= v173)
          {
            v61 = 0;
            v94 = 0;
            v175 = 0;
            goto LABEL_286;
          }

          if (v88 == v175)
          {
            v61 = 0;
            v94 = v173;
LABEL_286:
            v88 = v173;
            goto LABEL_163;
          }
        }
      }

      v94 = 0;
      v175 = 0;
      v61 = v93;
    }

    else
    {
      v61 = 0;
      v94 = 0;
      v175 = 0;
      v89 = 0;
      v88 = 0;
      v90 = v172;
      v91 = v173;
    }

LABEL_163:
    v167 = v37;
    if (v65)
    {
      if (v88 > v89)
      {
        v97 = 1;
      }

      else
      {
        v97 = v61;
      }

      if (v97 == 1)
      {
        v98 = v181;
        re::FixedArray<short>::operator=(&v215, v181 + 8);
        v89 = *(v176 + 1);
        v88 = *(v176 + 2);
        v61 = 1;
        v90 = v172;
      }

      else
      {
        v166 = v88;
        v99 = v196;
        LODWORD(v220[0]) = -1;
        *&v240 = 0;
        buf = 0uLL;
        re::FixedArray<short>::operator=(&v215, &buf);
        v100 = buf;
        if (buf && *(&buf + 1))
        {
          v100 = (*(*buf + 40))();
        }

        v101 = __s2;
        v102 = v204;
        v103 = *(v181 + 16);
        LODWORD(v220[0]) = -1;
        *&v240 = 0;
        buf = 0uLL;
        re::FixedArray<short>::operator=(&v215, &buf);
        if (buf && *(&buf + 1))
        {
          (*(*buf + 40))();
        }

        v98 = v181;
        v104 = *(v181 + 16);
        if (!v104)
        {
          goto LABEL_193;
        }

        v105 = 0;
        v106 = 0;
        v107 = *(v181 + 8);
        v108 = v217;
        v109 = v216;
        v111 = v196;
        v110 = v197;
        do
        {
          v112 = *(v107 + 2 * v106);
          if ((v112 & 0x80000000) == 0)
          {
            if (v102)
            {
              v113 = 0;
              while (v101[v113] != v112)
              {
                if (v102 == ++v113)
                {
                  goto LABEL_186;
                }
              }

              if (v111 <= v106)
              {
                goto LABEL_316;
              }

              *(v110 + 2 * v106) = v113;
              ++v105;
            }

LABEL_186:
            if (v111 <= v106)
            {
              v230 = 0;
              memset(v241, 0, 48);
              v240 = 0u;
              buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v220[0]) = 136315906;
              *(v220 + 4) = "operator[]";
              WORD2(v220[1]) = 1024;
              *(&v220[1] + 6) = 468;
              WORD1(v220[2]) = 2048;
              *(&v220[2] + 4) = v106;
              WORD2(v220[3]) = 2048;
              *(&v220[3] + 6) = v111;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_315:
              v230 = 0;
              memset(v241, 0, 48);
              v240 = 0u;
              buf = 0u;
              v163 = v109;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v220[0]) = 136315906;
              *(v220 + 4) = "operator[]";
              WORD2(v220[1]) = 1024;
              *(&v220[1] + 6) = 468;
              WORD1(v220[2]) = 2048;
              *(&v220[2] + 4) = v106;
              WORD2(v220[3]) = 2048;
              *(&v220[3] + 6) = v163;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_316:
              v230 = 0;
              memset(v241, 0, 48);
              v240 = 0u;
              buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v220[0]) = 136315906;
              *(v220 + 4) = "operator[]";
              WORD2(v220[1]) = 1024;
              *(&v220[1] + 6) = 468;
              WORD1(v220[2]) = 2048;
              *(&v220[2] + 4) = v106;
              WORD2(v220[3]) = 2048;
              *(&v220[3] + 6) = v111;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            if (*(v110 + 2 * v106) == -1)
            {
              if (v109 <= v106)
              {
                goto LABEL_315;
              }

              *(v108 + 2 * v106) = *(v107 + 2 * v106);
            }
          }

          ++v106;
        }

        while (v106 != v104);
        v98 = v181;
        if (v105)
        {
          v61 = 0;
        }

        else
        {
LABEL_193:
          v114 = re::FixedArray<short>::operator=(&v215, (v98 + 8));
          *&v240 = 0;
          *(&buf + 1) = 0;
          re::FixedArray<short>::operator=(&v195, &buf);
          if (buf && *(&buf + 1))
          {
            (*(*buf + 40))();
          }

          v61 = 1;
        }

        v90 = v172;
        v91 = v173;
        v88 = v166;
      }
    }

    else
    {
      v98 = v181;
    }

    if ((v216 == 0) | *v176 & 1)
    {
      v115 = v89;
    }

    else
    {
      v115 = v91;
    }

    if ((v216 == 0) | *v176 & 1)
    {
      v116 = v88;
    }

    else
    {
      v116 = v90;
    }

    if (v116 > v115 && (*v98 & 1) == 0)
    {
      *&buf = __s2;
      *(&buf + 1) = v204;
      re::FixedArray<short>::operator=(&v215, &buf);
    }

    if (v215)
    {
      re::FixedArray<short>::FixedArray(&buf, &v215);
    }

    else
    {
      *&v240 = 0;
      *(&buf + 1) = 0;
    }

    re::FixedArray<short>::operator=(&v191, &buf);
    if (buf && *(&buf + 1))
    {
      (*(*buf + 40))();
    }

    LOWORD(v190) = v115;
    HIWORD(v190) = v116;
    v177 = v94;
    if (v94 == v116 && v175 > v94)
    {
      v118 = 1;
    }

    else
    {
      v118 = 2;
    }

    DWORD1(v186) = v118;
    isHDR = re::isHDR(v170);
    if (isHDR)
    {
      v120 = 1;
    }

    else
    {
      v120 = 2;
    }

    if (v219 && (v121 = atomic_load((v219 + 24)), (v121 & 1) != 0) || v218 && (v122 = atomic_load((v218 + 24)), (v122 & 1) != 0))
    {
      v223 = 0;
      LODWORD(v224) = 0;
      memset(v220, 0, sizeof(v220));
      v221 = 0u;
      v222 = 0;
      LOWORD(v225) = v225 & 0xFC00;
      memset(v226, 0, 24);
      v227 = 0u;
      memset(v228, 0, 28);
      v229 = 0uLL;
      v37 = v167;
    }

    else
    {
      v123 = *v174;
      v37 = v167;
      if (*v174)
      {
        v223 = 0;
        LODWORD(v224) = 0;
        memset(v220, 0, sizeof(v220));
        v221 = 0u;
        v222 = 0;
        LOWORD(v225) = v225 & 0xFC00;
        memset(v226, 0, 24);
        v227 = 0u;
        memset(v228, 0, 28);
        v229 = 0uLL;
        *&buf = v123;
        *(&buf + 1) = *(v174 + 8);
        LODWORD(v240) = *(v174 + 16);
        if (BYTE3(v240) == 1)
        {
          BYTE4(v240) = *(v174 + 20);
        }

        *(&v240 + 5) = *(v174 + 21);
        HIDWORD(v240) = *(v174 + 28);
        *v241 = v169;
        *&v241[8] = v185;
        *&v241[24] = v186;
        *&v241[40] = v187[0];
        *&v241[52] = *(v187 + 12);
        v242 = v188;
        v243 = v189;
        LODWORD(v244) = v190;
        v124 = re::FixedArray<short>::FixedArray(&v245, &v191);
        v248 = v194;
        v250 = v120;
        v251 = v220;
        v252 = &v219;
        v253 = &v218;
        v125 = re::globalAllocators(v124)[2];
        *v233 = v125;
        if (v125)
        {
          v125 = (*(*v125 + 32))(v125, 216, 0);
        }

        (*(*v167 + 48))(v214, v167, &v230);
        re::FunctionBase<24ul,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::destroyCallable(&v230);
        if (v245)
        {
          if (v246)
          {
            (*(*v245 + 40))();
            v246 = 0;
            v247 = 0;
          }

          v245 = 0;
        }

        if ((v214[0] & 1) == 0)
        {
        }
      }

      else
      {
        v126 = *re::assetsLogObjects(isHDR);
        if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1E1C61000, v126, OS_LOG_TYPE_DEFAULT, "ImportGraphicsContext has an invalid device!", &buf, 2u);
        }

        v223 = 0;
        LODWORD(v224) = 0;
        memset(v220, 0, sizeof(v220));
        v221 = 0u;
        v222 = 0;
        LOWORD(v225) = v225 & 0xFC00;
        memset(v226, 0, 24);
        v227 = 0u;
        memset(v228, 0, 28);
        v229 = 0uLL;
      }
    }

    if (v215 && v216)
    {
      (*(*v215 + 40))();
    }

LABEL_80:
    LOBYTE(v230) = 0;
    v231 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v230, &v223);
    v232 = v225;
    *v233 = *v226;
    *&v233[12] = *&v226[12];
    v66 = v227;
    v227 = 0u;
    v234 = v66;
    v235 = *&v228[0];
    memset(v228, 0, 24);
    v236 = *(v228 + 8);
    ++DWORD2(v228[1]);
    v237 = 1;
    v67 = v229;
    *&v229 = 0;
    v238 = v67;
    if (v224 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v224])(&buf, &v223);
    }

    LODWORD(v224) = -1;
    if (v37)
    {
    }

    if (v191)
    {
      if (v192)
      {
        (*(*v191 + 40))();
        v192 = 0;
        v193 = 0;
      }

      v191 = 0;
    }

    if (v231)
    {
      if (v231 != 1)
      {
        goto LABEL_317;
      }

      if (!*(v230 + 6))
      {
        goto LABEL_98;
      }

      v69 = (v230 + 24);
    }

    else
    {
      v69 = &v230;
    }

    if (*v69)
    {
      if (v196)
      {
        v70 = 0;
        v71 = 0;
        v72 = v197;
        do
        {
          v73 = *v72++;
          v70 += (v73 >> 15) ^ 1;
          ++v71;
        }

        while (v196 > v71);
      }

      else
      {
        v70 = 0;
      }

      v76 = (v70 == 0) & ~v61;
      if (v171 == v204)
      {
        v76 = 0;
      }

      if ((v61 | v76))
      {
        goto LABEL_103;
      }

      if (v199)
      {
        if (v199 != 1)
        {
          goto LABEL_317;
        }

        if (!*(v198 + 48))
        {
          goto LABEL_141;
        }

        v77 = (v198 + 24);
      }

      else
      {
        v77 = &v198;
      }

      if (*v77)
      {
        v85 = os_unfair_lock_trylock((v39 + 400));
        if (v85)
        {
          if (!*(v39 + 120) && !v199)
          {
            if (*(v39 + 112) != v198)
            {
LABEL_255:
              v145 = buf;
              v146 = v240;
              *v179 = 0;
              *(v179 + 8) = v145;
              *(v179 + 24) = v146;
              os_unfair_lock_unlock((v39 + 400));
              goto LABEL_256;
            }

            v127 = re::TextureData::pixelFormat(&v230);
            v128 = re::TextureData::pixelFormat((v39 + 112));
            if (v127 != v128)
            {
              re::DynamicString::format("TextureAsset data has mismatched pixel formats and cannot be copied, existing [%d] != loaded [%d].", &buf, v128, v127);
              goto LABEL_255;
            }

            if (v168)
            {
              v129 = v175 - v177;
              if (v175 <= v177)
              {
                v144 = 0;
              }

              else
              {
                v130 = vdupq_n_s64(v177);
                v131 = vaddq_s64(v130, xmmword_1E305F210);
                v132 = vaddq_s64(v130, xmmword_1E3049660);
                v133 = vaddq_s64(v130, xmmword_1E3049640);
                v134 = vaddq_s64(v130, xmmword_1E3049620);
                v135 = vdupq_n_s64(v129 - 1);
                v136 = vdupq_n_s64(v173);
                v137 = 0uLL;
                v138 = vdupq_n_s64(1uLL);
                v139 = 8;
                do
                {
                  v140 = v137;
                  v137 = vorrq_s8(v137, vuzp1q_s16(vuzp1q_s32(vshlq_u64(v138, vsubq_s64(v134, v136)), vshlq_u64(v138, vsubq_s64(v133, v136))), vuzp1q_s32(vshlq_u64(v138, vsubq_s64(v132, v136)), vshlq_u64(v138, vsubq_s64(v131, v136)))));
                  v141 = vdupq_n_s64(8uLL);
                  v132 = vaddq_s64(v132, v141);
                  v133 = vaddq_s64(v133, v141);
                  v134 = vaddq_s64(v134, v141);
                  v131 = vaddq_s64(v131, v141);
                  v139 -= 8;
                }

                while (((v129 + 7) & 0xFFFFFFFFFFFFFFF8) + v139 != 8);
                v142 = vdupq_n_s64(-v139);
                v143 = vbslq_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_u64(vorrq_s8(v142, xmmword_1E3049620), v135), vcgtq_u64(vorrq_s8(v142, xmmword_1E3049640), v135)), vuzp1q_s32(vcgtq_u64(vorrq_s8(v142, xmmword_1E3049660), v135), vcgtq_u64(vorrq_s8(v142, xmmword_1E305F210), v135))), v140, v137);
                *v143.i8 = vorr_s8(*v143.i8, *&vextq_s8(v143, v143, 8uLL));
                v144 = v143.i16[0] | v143.i16[2] | ((v143.i32[0] | v143.i32[1]) >> 16);
              }
            }

            else
            {
              v144 = -1;
            }

            memset(v220, 0, 24);
            v147 = v196;
            if (v196)
            {
              v148 = 0;
              v149 = 0;
              v150 = 0;
              v178 = v220[1];
              v151 = v220[2];
              do
              {
                if ((v197[v148] & 0x80000000) == 0)
                {
                  v152 = *re::FixedArray<short>::operator[](v147, v197, v148);
                  *re::FixedArray<re::Pair<unsigned short,unsigned short,true>>::operator[](v178, v151, v149) = v152 | (v150 << 16);
                  v147 = v196;
                  ++v149;
                }

                v148 = ++v150;
              }

              while (v147 > v150);
            }

            if (v41 && (v153 = atomic_load((v41 + 24)), (v153 & 1) != 0) || a7 && (v154 = atomic_load((a7 + 24)), (v154 & 1) != 0))
            {
              v155 = buf;
              v156 = v240;
              *v179 = 0;
              *(v179 + 8) = v155;
              *(v179 + 24) = v156;
              v157 = v220[1];
              goto LABEL_310;
            }

            if (!*(v39 + 120))
            {
              v158 = v37;
              v184 = *(v39 + 112);
              if (!v231)
              {
                v183 = v230;
                v157 = v220[1];
                *&buf = v220[2];
                *(&buf + 1) = v220[1];
                v159 = re::copyTextureMipsAndSlices(v174, &v184, &v183, v144, &buf);
                if (v183)
                {

                  v183 = 0;
                }

                v160 = v184;
                if (v184)
                {

                  v184 = 0;
                }

                if (v159)
                {
                  if (v220[0] && v157)
                  {
                    (*(*v220[0] + 40))();
                  }

                  os_unfair_lock_unlock((v39 + 400));
                  v37 = v158;
LABEL_103:
                  if (*v181 == 1)
                  {
                    re::DynamicArray<short>::DynamicArray(&buf, v181 + 8);
                  }

                  else
                  {
                    re::DynamicArray<short>::DynamicArray(&buf, (v39 + 304));
                  }

                  re::DynamicArray<short>::operator=(&v235, &buf);
                  v78 = buf;
                  if (buf && *v241)
                  {
                    v78 = (*(*buf + 40))();
                  }

                  v79 = v215;
                  v81 = v180[1];
                  v80 = v180[2];
                  v82 = *v180;
                  *(v215 + 76) = *(v180 + 44);
                  *(v79 + 48) = v81;
                  *(v79 + 64) = v80;
                  *(v79 + 32) = v82;
                  re::ObjCObject::operator=((v79 + 96), v180 + 8);
                  v83 = *(v180 + 72);
                  *(v79 + 120) = *(v180 + 22);
                  *(v79 + 104) = v83;
                  re::FixedArray<short>::operator=((v79 + 128), v180 + 12);
                  *(v79 + 152) = *(v180 + 120);
                  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v79 + 24), v37);
                  *(v79 + 160) = *(v39 + 224);
                  v182 = v79;
                  v84 = (v79 + 8);
                  re::TextureAssetData::TextureAssetData(v220, &v230, &v232, &v182);
                  re::TextureAssetData::TextureAssetData(&buf, v220);
                  *v179 = 1;
                  re::TextureAssetData::TextureAssetData(v179 + 8, &buf);
                  *&buf = &unk_1F5CC40A0;
                  if (v246)
                  {

                    v246 = 0;
                  }

                  if (*&v241[64])
                  {
                    if (v244)
                    {
                      (*(**&v241[64] + 40))();
                    }

                    v244 = 0;
                    v242 = 0;
                    *&v243 = 0;
                    *&v241[64] = 0;
                    ++DWORD2(v243);
                  }

                  if (*&v241[48])
                  {

                    *&v241[48] = 0;
                  }

                  if (*v241 != -1)
                  {
                    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[*v241])(v214, &v240 + 8);
                  }

                  *v241 = -1;
                  *&buf = &unk_1F5CCF868;
                  objc_destructInstance(&buf + 8);
                  v220[0] = &unk_1F5CC40A0;
                  if (*&v228[0])
                  {

                    *&v228[0] = 0;
                  }

                  if (*v226)
                  {
                    if (v227)
                    {
                      (*(**v226 + 40))();
                    }

                    *&v227 = 0;
                    memset(v226, 0, 24);
                    ++*&v226[24];
                  }

                  if (v224)
                  {

                    v224 = 0;
                  }

                  if (LODWORD(v220[4]) != -1)
                  {
                    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[LODWORD(v220[4])])(v214, &v220[3]);
                  }

                  LODWORD(v220[4]) = -1;
                  v220[0] = &unk_1F5CCF868;
                  objc_destructInstance(&v220[1]);

                  goto LABEL_256;
                }

                v161 = buf;
                v162 = v240;
                *v179 = 0;
                *(v179 + 8) = v161;
                *(v179 + 24) = v162;
                v37 = v158;
LABEL_310:
                if (v220[0] && v157)
                {
                  (*(*v220[0] + 40))();
                }

                os_unfair_lock_unlock((v39 + 400));
                goto LABEL_256;
              }
            }
          }

LABEL_317:
          v164 = std::__throw_bad_variant_access[abi:nn200100]();
          re::TextureAsset::setColorSpace(v164, v165);
          return;
        }

        v86 = "TextureAsset is blocked by another update";
        goto LABEL_160;
      }

LABEL_141:
      v86 = "TextureAsset has invalid data, so it cannot be copied";
LABEL_160:
      v95 = buf;
      v96 = v240;
      *v179 = 0;
      *(v179 + 8) = v95;
      *(v179 + 24) = v96;
      goto LABEL_256;
    }

LABEL_98:
    v74 = buf;
    v75 = v240;
    *v179 = 0;
    *(v179 + 8) = v74;
    *(v179 + 24) = v75;
LABEL_256:
    if (v235)
    {
      if (v238)
      {
        (*(*v235 + 40))();
      }

      *&v238 = 0;
      v236 = 0uLL;
      v235 = 0;
      ++v237;
    }

    if (v234)
    {

      *&v234 = 0;
    }

    if (v231 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v231])(&buf, &v230);
    }

    if (v195 && v196)
    {
      (*(*v195 + 40))();
    }

    if (v199 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v199])(&buf, &v198);
    }

    if (v200 && (BYTE8(v200) & 1) != 0)
    {
      (*(*v200 + 40))();
    }

    if (!v37)
    {
      goto LABEL_275;
    }

    v55 = (v37 + 8);
LABEL_274:

LABEL_275:
    if (v203 && __s2)
    {
      (*(*v203 + 40))();
    }

    goto LABEL_278;
  }

  os_unfair_lock_unlock((a1 + 400));
  v47 = buf;
  v48 = v240;
  *a8 = 0;
  *(a8 + 8) = v47;
  *(a8 + 24) = v48;
LABEL_278:
  if (v210[0])
  {
    if (v212)
    {
      (*(*v210[0] + 40))();
    }

    v212 = 0;
    memset(v210, 0, sizeof(v210));
    ++v211;
  }

  if (v208)
  {
  }
}

re::DynamicString *re::TextureAsset::setColorSpace(id *this, __CFString *a2)
{
  re::TextureImportData::ImportReport::setColorSpace(this + 16, a2);
  if (a2)
  {
    CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
    re::DynamicString::operator=((this + 46), &v6);
    result = v6;
    if (v6)
    {
      if (v7)
      {
        return (*(*v6 + 40))();
      }
    }
  }

  else
  {
    v6 = "";
    v7 = 0;
    return re::DynamicString::operator=((this + 46), &v6);
  }

  return result;
}

void re::TextureImportData::ImportReport::setColorSpace(id *this, __CFString *a2)
{
  objc_storeStrong(this + 6, a2);
}

BOOL re::TextureAsset::isLegacyLinearFormatWithSRGBData(re::TextureAsset *this)
{
  v2 = *(this + 7);
  if (v2 && *(v2 + 296) != 1)
  {
    return 0;
  }

  v3 = *(this + 89);
  if (v3 != 6 && v3 != 0)
  {
    return 0;
  }

  MTLPixelFormatGetInfoForDevice();
  v5 = *(this + 86);
  return v5 != re::translateLinearPixelFormatToSRGB(v5);
}

void re::TextureAsset::createTextureSRGBAdaptor(id *a1@<X0>, id *a2@<X1>, char a3@<W2>, void **a4@<X8>)
{
  v8 = re::translateLinearPixelFormatToSRGB([*a2 pixelFormat]);
  if ([*a2 pixelFormat] == v8)
  {
    *a4 = 0;
    return;
  }

  if (a1)
  {
    if (a3)
    {
LABEL_5:
      *a4 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    [*a2 device];
    if (a3)
    {
      goto LABEL_5;
    }
  }

  [*a2 textureType];
  isSupportedPixelFormat = re::isSupportedPixelFormat();
  *a4 = 0;
  if (isSupportedPixelFormat)
  {
    v20 = [*a2 newTextureViewWithPixelFormat_];
    NS::SharedPtr<MTL::Texture>::operator=(a4, &v20);
    goto LABEL_31;
  }

LABEL_9:
  if (!a1)
  {
    return;
  }

  re::createDescriptorFromTexture(a1, a2, &v20);
  [v20 setUsage_];
  [v20 setSwizzle_];
  v10 = v20;
  if (([v20 respondsToSelector_] & 1) != 0 || objc_msgSend(v10, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v10 setCompressionType_];
  }

  if (v8 == 11)
  {
    [v20 setPixelFormat_];
    if ([*a2 isShareable])
    {
      re::mtl::Device::makeSharedTexture(v20, a1, &v19);
    }

    else
    {
      re::mtl::Device::makeTexture(v20, a1, &v19);
    }

    NS::SharedPtr<MTL::Texture>::operator=(a4, &v19);
    if (v19)
    {
    }

    if (!*a4)
    {
      goto LABEL_31;
    }

    re::copyTexture(a1, a2, a4, 0x5040302uLL, 1);
    if ([*a2 swizzle] == 84148994)
    {
      goto LABEL_31;
    }

    v12 = *a4;
    v13 = [*a4 pixelFormat];
    v14 = [*a4 textureType];
    v15 = [*a4 mipmapLevelCount];
    v16 = *a4;
    v17 = [*a4 arrayLength];
    if ([v16 textureType] - 5 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 6 * v17;
    }

    v11 = [v12 newTextureViewWithPixelFormat:v13 textureType:v14 levels:0 slices:v15 swizzle:0, v18, objc_msgSend(*a2, sel_swizzle)];
  }

  else
  {
    [v20 setPixelFormat_];
    re::mtl::Device::makeTexture(v20, a1, &v19);
    NS::SharedPtr<MTL::Texture>::operator=(a4, &v19);
    if (v19)
    {
    }

    if (!*a4)
    {
      goto LABEL_31;
    }

    re::copyTexture(a1, a2, a4, 0x5040302uLL, 0);
    v11 = [*a4 newTextureViewWithPixelFormat_];
  }

  v19 = v11;
  NS::SharedPtr<MTL::Texture>::operator=(a4, &v19);
  if (v19)
  {
  }

LABEL_31:
  if (v20)
  {
  }
}

void re::TextureAsset::addLegacyLinearFormatWithSRGBDataTexture(os_unfair_lock_s **this, const re::RenderManager *a2)
{
  re::ImportGraphicsContext::createFromRenderManager(a2, v6);
  re::TextureHandle::unsynchronizedMetalTexture(this + 1, v4);
  re::TextureAsset::createTextureSRGBAdaptor(v6, v4, 0, &v5);
  if (v4[0])
  {
  }

  if (v5)
  {
    re::TextureManager::registerTexture(*(a2 + 7), &v5, v4);
    re::TextureHandle::operator=((this + 12), v4);
    re::TextureHandle::invalidate(v4);
    if (v5)
    {
    }
  }
}

void re::TextureAsset::updateLegacyLinearFormatWithSRGBDataTexture(re::TextureAsset *this, id *a2)
{
  if (*(this + 13) && *(this + 12))
  {
    if (*(this + 30))
    {
      v5 = std::__throw_bad_variant_access[abi:nn200100]();
      re::TextureData::swizzle(v5);
      return;
    }

    v4 = [*(this + 14) pixelFormat];
    if (v4 == re::translateLinearPixelFormatToSRGB(v4))
    {
      re::TextureHandle::unsynchronizedMetalTexture(this + 1, &v7);
    }

    else
    {
      if (!*a2)
      {
        a2 = 0;
      }

      re::TextureHandle::unsynchronizedMetalTexture(this + 1, &v6);
      re::TextureAsset::createTextureSRGBAdaptor(a2, &v6, 0, &v7);
      if (v6)
      {
      }

      if (!v7)
      {
        re::TextureHandle::unsynchronizedMetalTexture(this + 1, &v6);
        re::TextureHandle::setMetalTexture((this + 96), &v6);
        if (v6)
        {
        }

        goto LABEL_12;
      }
    }

    re::TextureHandle::setMetalTexture((this + 96), &v7);
LABEL_12:
    if (v7)
    {
    }
  }
}

id re::TextureData::swizzle(re::TextureData *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    if (v2 != 1)
    {
      v5 = std::__throw_bad_variant_access[abi:nn200100]();
      return re::TextureAsset::updateColorSpaceFromTexture(v5, v6, v7);
    }

    this = (*this + 24);
  }

  v3 = *this;

  return [v3 swizzle];
}

re::DynamicString *re::TextureAsset::updateColorSpaceFromTexture(re::TextureAsset *this, const re::ImportGraphicsContext *a2, __CFString *a3)
{
  v3 = a3;
  if (a3 || (v3 = *(this + 22), result = v3, v3) || *(a2 + 19) == 1 && (result = re::ColorHelpers::getCGColorSpaceNameForPixelFormat(*(this + 86), *(a2 + 20)), (v3 = result) != 0))
  {

    return re::TextureAsset::setColorSpace(this, v3);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<short>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<short>::copy(this, 0, *a2, v4);
      re::DynamicArray<short>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<short>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<short>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

void re::TextureAsset::setTexture(re::TextureAsset *this, const re::ImportGraphicsContext *a2, re::AssetHandle *a3, const re::TextureAssetData *a4)
{
  re::AssetHandle::loadNow(*(a2 + 1), 0);
  v7 = *(a2 + 1);
  if (v7)
  {
    v8 = atomic_load((v7 + 896));
    if (v8 == 2)
    {
      re::AssetHandle::mutateAssetCommon(a2);
      ++*(*(a2 + 1) + 276);
      v9 = re::AssetHandle::loadedAsset<re::TextureAsset>(a2);
      if (v9)
      {
        v10 = v9;
        re::TextureAssetLoader::getOrCreateImportOptions(v21, a3);
        v12 = v10 + 168;
        v11 = *(v10 + 168);
        if (v11)
        {
          v13 = (v11 + 8);
        }

        *(v10 + 128) = *(a3 + 20);
        v14 = *(a3 + 3);
        *(v10 + 148) = *(a3 + 60);
        *(v10 + 136) = v14;
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v10 + 168), *(a3 + 10));
        re::ObjCObject::operator=((v10 + 176), a3 + 11);
        re::DynamicArray<short>::operator=(v10 + 184, a3 + 12);
        *(v10 + 224) = *(a3 + 17);
        if (!v11 || *v12 && (v15 = (*(*v11 + 56))(v11), v15 != (*(**v12 + 56))()))
        {
          if (*v12)
          {

            *v12 = 0;
          }
        }

        v16 = *(a3 + 11);
        v17 = v16;
        v18 = *(a3 + 14);
        v20[0] = *(a3 + 16);
        v20[1] = v18;
        re::TextureAsset::setTexture(v10, this, a3 + 24, &v23, v22, v16, v20);
        if (v11)
        {
        }

        if (v25)
        {
          if (v26)
          {
            (*(*v25 + 40))();
            v26 = 0;
            v27 = 0;
          }

          v25 = 0;
        }

        v19 = *(a2 + 1);
        *(v19 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v19);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(*(a2 + 1));
      }
    }
  }

  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((*(a2 + 1) + 264), *(a3 + 18));
  re::AssetManager::assetPayloadDidChange(*(*(a2 + 1) + 24), *(a2 + 1));
}

uint64_t re::TextureAsset::setTexture_makeMutable(re::TextureAsset *this, const re::ImportGraphicsContext *a2, re::AssetHandle *a3, const re::TextureAssetData *a4)
{
  re::AssetHandle::loadNow(*(a2 + 1), 0);
  re::TextureAssetLoader::getOrCreateImportOptions(&v24, a3);
  v7 = *(a2 + 1);
  if (v7 && (v8 = *(v7 + 24)) != 0 && re::AssetManager::convertToMutable(v8, a2))
  {
    v9 = *(a2 + 1);
    if (v9)
    {
      v10 = atomic_load((v9 + 896));
      if (v10 == 2)
      {
        re::AssetHandle::mutateAssetCommon(a2);
        ++*(*(a2 + 1) + 276);
        v11 = re::AssetHandle::loadedAsset<re::TextureAsset>(a2);
        if (v11)
        {
          v12 = v11;
          v14 = (v11 + 168);
          v13 = *(v11 + 168);
          if (v13)
          {
            v15 = (v13 + 8);
          }

          *(v12 + 128) = *(a3 + 20);
          v16 = *(a3 + 3);
          *(v12 + 148) = *(a3 + 60);
          *(v12 + 136) = v16;
          re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v14, *(a3 + 10));
          re::ObjCObject::operator=((v12 + 176), a3 + 11);
          re::DynamicArray<short>::operator=(v12 + 184, a3 + 12);
          *(v12 + 224) = *(a3 + 17);
          if (!v13 || *v14 && (v17 = (*(*v13 + 56))(v13), v17 != (*(**v14 + 56))()))
          {
            if (*v14)
            {

              *v14 = 0;
            }
          }

          v18 = *(a3 + 11);
          v19 = v18;
          v20 = *(a3 + 14);
          v31[0] = *(a3 + 16);
          v31[1] = v20;
          re::TextureAsset::setTexture(v12, this, a3 + 24, &v26, v25, v18, v31);
          if (v13)
          {
          }

          v21 = *(a2 + 1);
          *(v21 + 256) = 1;
          re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v21);
          re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(*(a2 + 1));
        }
      }
    }

    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((*(a2 + 1) + 264), *(a3 + 18));
    re::AssetManager::assetPayloadDidChange(*(*(a2 + 1) + 24), *(a2 + 1));
    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  if (v28)
  {
    if (v29)
    {
      (*(*v28 + 40))();
      v29 = 0;
      v30 = 0;
    }

    v28 = 0;
  }

  return v22;
}

uint64_t *re::TextureAssetLoader::getOrCreateImportOptions(re::TextureAssetLoader *this, const re::TextureAssetData *a2)
{
  v3 = *(a2 + 18);
  if (v3)
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 48);
    v6 = *(v3 + 64);
    *(this + 44) = *(v3 + 76);
    *(this + 1) = v5;
    *(this + 2) = v6;
    *this = v4;
    *(this + 8) = *(v3 + 96);
    v7 = *(v3 + 120);
    *(this + 72) = *(v3 + 104);
    *(this + 22) = v7;
    result = re::FixedArray<short>::FixedArray(this + 12, (v3 + 128));
    *(this + 120) = *(v3 + 152);
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 4) = 1;
    *(this + 10) = 0;
    *(this + 44) = 0;
    *(this + 12) = 0;
    *(this + 3) = 0;
    *(this + 29) = 0;
    *(this + 14) = 6;
    *(this + 9) = 0;
    *(this + 10) = 0;
    *(this + 8) = 0;
    *(this + 22) = -65536;
    *(this + 13) = 0;
    *(this + 14) = 0;
    *(this + 12) = 0;
    *(this + 120) = 0;
    v10 = re::TextureData::mipmapLevelCount((a2 + 24));
    result = 0;
    v11 = *(a2 + 8);
    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }

    if (v10 <= 1)
    {
      v13 = 2;
    }

    else
    {
      v13 = v12;
    }

    *(this + 5) = v13;
    if (!v11)
    {
      result = [*(a2 + 3) isShareable];
    }

    *(this + 52) = result;
  }

  return result;
}

void re::TextureAsset::setMetalTexture_fromDrawableQueue(uint64_t a1, re::ImportGraphicsContext *a2, void **a3, int a4)
{
  re::TextureHandle::setMetalTexture((a1 + 8), a3);
  if (a4)
  {
    re::ImportGraphicsContext::createFromRenderManager(a2, v7);
    re::TextureAsset::updateLegacyLinearFormatWithSRGBDataTexture(a1, v7);
  }
}

BOOL re::TextureAsset::isCompletelyLoadedTexture(re::TextureAsset *this)
{
  if (*(this + 7))
  {
    return 1;
  }

  if (*(this + 9) || !*(this + 21) || !*(this + 39))
  {
    return 1;
  }

  LoadedMipmapRange = re::TextureAsset::getLoadedMipmapRange(this);
  result = 0;
  if (LoadedMipmapRange || v3 != *(this + 39))
  {
    return result;
  }

  v5 = *(this + 40);
  if (!v5)
  {
    return 1;
  }

  if (v5 != *(this + 37))
  {
    return 0;
  }

  v6 = 0;
  v7 = v5 - 1;
  do
  {
    v8 = *(*(this + 42) + 2 * v6);
    result = v6 == v8;
    v9 = v6 != v8 || v7 == v6;
    ++v6;
  }

  while (!v9);
  return result;
}

uint64_t re::Optional<re::StringID>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::StringID::operator=(v3, (a2 + 8));
    }

    else
    {
      re::StringID::destroyString(v3);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    v4 = *(a2 + 8);
    *(a1 + 8) = *(a1 + 8) & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
    *(a1 + 8) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = &str_67;
  }

  return a1;
}

void re::TextureAssetLoader::init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  re::ObjCObject::operator=((a1 + 40), a4);
  re::ObjCObject::operator=((a1 + 48), (a4 + 8));
  v16 = *(a4 + 16);
  *(a1 + 58) = *(a4 + 18);
  *(a1 + 56) = v16;
  if (*(a1 + 59))
  {
    if ((*(a4 + 19) & 1) == 0)
    {
      *(a1 + 59) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a4 + 19) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 59) = 1;
  }

  *(a1 + 60) = *(a4 + 20);
LABEL_7:
  v17 = *(a4 + 21);
  *(a1 + 68) = *(a4 + 28);
  *(a1 + 61) = v17;
  *(a1 + 72) = a6;
  *(a1 + 24) = a5;
  *(a1 + 32) = a7;
  *(a1 + 88) = a8;
  re::Defaults::BOOLValue("preloadEngineTextureAssets", v15, &v23);
  if (v23)
  {
    v18 = BYTE1(v23);
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 89) = v18;
  if (a9)
  {
    v23 = a1;
    re::make::shared::object<re::TextureAssetRealityFileProviderCallbacks,re::TextureAssetLoader *>(&v23, &v21);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 80), v21);
    v20 = *(*(a1 + 8) + 1960);
    if (v20)
    {
      re::TextureAsset::assetType(v19);
      v22 = v21;
      v23 = &re::TextureAsset::assetType(void)::type;
      re::HashTable<re::AssetType const*,re::SharedPtr<re::RealityFileAssetProvider::PerTypeLoadCallbacks>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::emplace<re::RealityFileAssetProvider::PerTypeLoadCallbacks*&>(v20 + 232, &v23, &v22);
    }

    if (v21)
    {
    }
  }
}

__n128 re::TextureAssetLoader::initSpecializedTemporaryLoader(re::TextureAssetLoader *this, const re::TextureAssetLoader *a2)
{
  *(this + 8) = *(a2 + 8);
  re::ObjCObject::operator=(this + 5, a2 + 5);
  re::ObjCObject::operator=(this + 6, a2 + 6);
  v4 = *(a2 + 28);
  *(this + 58) = *(a2 + 58);
  *(this + 28) = v4;
  if ((*(this + 59) & 1) == 0)
  {
    if ((*(a2 + 59) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(this + 59) = 1;
LABEL_6:
    *(this + 60) = *(a2 + 60);
    goto LABEL_7;
  }

  if (*(a2 + 59))
  {
    goto LABEL_6;
  }

  *(this + 59) = 0;
LABEL_7:
  v5 = *(a2 + 61);
  *(this + 17) = *(a2 + 17);
  *(this + 61) = v5;
  *(this + 9) = *(a2 + 9);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(this + 44) = *(a2 + 44);
  return result;
}

void re::TextureAssetLoader::~TextureAssetLoader(re::TextureAssetLoader *this)
{
  *this = &unk_1F5CC3BC0;
  v2 = *(this + 10);
  if (v2)
  {
    *(v2 + 24) = 0;
  }

  re::DynamicArray<re::AssetHandle>::deinit(this + 96);
  v3 = *(this + 10);
  if (v3)
  {

    *(this + 10) = 0;
  }
}

{
  re::TextureAssetLoader::~TextureAssetLoader(this);

  JUMPOUT(0x1E6906520);
}

void re::TextureAssetLoader::preloadAssets(uint64_t a1, uint64_t a2)
{
  if (re::ServiceLocator::serviceOrNull<re::RenderManager>(a2))
  {
    v4 = re::ServiceLocator::service<re::AssetService>(a2);
    ProviderForScheme = re::AssetProviderRegistry::tryGetProviderForScheme(*(v4 + 1904), "BuiltinTexture");
    if (ProviderForScheme)
    {
      re::BuiltinTextureAssetProvider::buildFallbackTextureDescriptors(ProviderForScheme, v6, v10);
      if (v11)
      {
        v7 = v12;
        v8 = 144 * v11;
        do
        {
          os_unfair_lock_lock((v4 + 128));
          re::AssetManager::assetHandle_assetTablesLocked(v9, v4, v7);
          os_unfair_lock_unlock((v4 + 128));
          if ((*(**(a1 + 8) + 360))())
          {
            re::AssetHandle::loadAsync(v9);
          }

          re::DynamicArray<re::AssetHandle>::add((a1 + 96), v9);
          re::AssetHandle::~AssetHandle(v9);
          v7 = (v7 + 144);
          v8 -= 144;
        }

        while (v8);
      }

      re::DynamicArray<re::AssetLoadDescriptor>::deinit(v10);
    }

    re::AssetManager::assetHandle(v4, "engine:blueNoise64RGBA8.ktx", v10);
    if ((*(a1 + 89) & 1) != 0 || (*(**(a1 + 8) + 360))(*(a1 + 8)))
    {
      re::AssetHandle::loadAsync(v10);
    }

    re::DynamicArray<re::AssetHandle>::add((a1 + 96), v10);
    re::AssetHandle::~AssetHandle(v10);
  }
}

uint64_t re::TextureAssetLoader::defaultAssetCompileOptions(re::TextureAssetLoader *this, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = re::globalAllocators(this);
  result = (*(*v2[2] + 32))(v2[2], 128, 8);
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 16) = 1;
  *(result + 52) = 0;
  *(result + 20) = 0;
  *(result + 28) = 0;
  *(result + 36) = 0;
  *(result + 56) = 6;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 88) = 0;
  *(result + 80) = 0;
  *(result + 90) = -1;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 112) = 0;
  *(result + 24) = 1;
  return result;
}

void re::reinterpretAsLinear(re *this, const re::TextureData *a2)
{
  v4 = re::TextureData::pixelFormat(a2);
  v5 = re::translateSRGBPixelFormatToLinear(v4);
  if (v5 == re::TextureData::pixelFormat(a2))
  {
    *this = 0;
    *(this + 2) = -1;

    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(this, a2);
  }

  else
  {
    v6 = *(a2 + 2);
    if (v6)
    {
      if (v6 != 1 || (v7 = [*(*a2 + 24) copy], v18 = v7, v8 = objc_msgSend(v7, sel_setPixelFormat_, v5), *(a2 + 2) != 1))
      {
        v15 = std::__throw_bad_variant_access[abi:nn200100]();
        re::TextureAssetLoader::serializeAssetBlob(v15, v16, v17);
        return;
      }

      v9 = *a2;
      v10 = re::globalAllocators(v8);
      v11 = (*(*v10[2] + 32))(v10[2], 104, 8);
      v12 = re::CPUTexture::CPUTexture(v11, &v18, (v9 + 32));
      *this = v12;
      if (v12)
      {
        v13 = (v11 + 8);
        *(this + 2) = 1;

        if (!v7)
        {
          return;
        }
      }

      else
      {
        *(this + 2) = 1;
        if (!v7)
        {
          return;
        }
      }
    }

    else
    {
      v14 = [*a2 newTextureViewWithPixelFormat_];
      *this = v14;
      *(this + 2) = 0;
      if (v14)
      {
      }
    }
  }
}