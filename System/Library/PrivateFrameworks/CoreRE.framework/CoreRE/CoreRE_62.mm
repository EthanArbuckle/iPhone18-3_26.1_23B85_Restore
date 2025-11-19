uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + (v5 << 6);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigGraphBoundInputParameterData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigGraphBoundInputParameterData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigGraphBoundInputParameterData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigGraphBoundInputParameterData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigGraphBoundInputParameterData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RigGraphBoundInputParameterData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RigGraphBoundInputParameterData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigGraphBoundInputParameterData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  re::StringID::invalid(&v11);
  re::StringID::invalid(&v12);
  LODWORD(v13) = 0;
  v8 = re::DynamicArray<re::RigGraphBoundInputParameterData>::add(a4, &v11);
  if (v12)
  {
    if (v12)
    {
    }
  }

  *&v12 = 0;
  *(&v12 + 1) = &str_67;
  if (v11)
  {
    if (v11)
    {
    }
  }

  v9 = (*(a4 + 4) + 40 * *(a4 + 2) - 40);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::RigGraphBoundInputParameterData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

void re::DynamicArray<re::RigGraphBoundInputParameterData>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 40 * a2;
    v9 = a2;
    do
    {
      v10 = *(a1 + 32) + v8;
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 40;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 40 * v4;
      do
      {
        v7 = (*(a1 + 32) + v6);
        re::StringID::invalid(v7);
        re::StringID::invalid((v7 + 4));
        v7[8] = 0;
        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 40 * v8;
      do
      {
        re::StringID::destroyString((v9 + 16));
        re::StringID::destroyString(v9);
        v9 += 40;
        v10 -= 40;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RigGraphBoundInputParameterData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RigGraphBoundInputParameterData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 40 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 40;
        v14 -= 40;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 40 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::MaterialDefinitionAsset::~MaterialDefinitionAsset(re::MaterialDefinitionAsset *this)
{
  *this = &unk_1F5CC8128;
  v2 = *(this + 278);
  if (v2)
  {
    v3 = re::globalAllocators(this)[2];
    re::MaterialDefinitionFile::~MaterialDefinitionFile(v2);
    (*(*v3 + 40))(v3, v2);
  }

  re::FixedArray<re::DynamicString>::deinit(this + 309);
  re::FixedArray<re::DynamicString>::deinit(this + 306);
  re::FixedArray<re::DynamicString>::deinit(this + 303);
  re::FixedArray<re::DynamicString>::deinit(this + 300);
  re::FixedArray<re::DynamicString>::deinit(this + 297);
  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 291);
  re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(this + 285);
  re::DynamicArray<unsigned long>::deinit(this + 2232);
  re::MaterialDefinitionBuilder::~MaterialDefinitionBuilder((this + 776));
  re::AssetHandle::~AssetHandle((this + 752));
  v4 = *(this + 93);
  if (v4)
  {

    *(this + 93) = 0;
  }

  re::MaterialDefinitionFile::~MaterialDefinitionFile((this + 8));
}

{
  re::MaterialDefinitionAsset::~MaterialDefinitionAsset(this);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::MaterialDefinitionAsset::assetType(re::MaterialDefinitionAsset *this)
{
  {
    re::MaterialDefinitionAsset::assetType(void)::type = "MaterialDefinition";
    qword_1EE1C67E0 = 0;
    re::AssetType::generateCompiledExtension(&re::MaterialDefinitionAsset::assetType(void)::type);
  }

  return &re::MaterialDefinitionAsset::assetType(void)::type;
}

void *re::MaterialDefinitionAsset::setMergedFile(void *this, re::MaterialDefinitionFile *a2)
{
  v2 = this[278];
  if (v2 != a2)
  {
    v4 = this;
    if (v2)
    {
      v5 = re::globalAllocators(this)[2];
      re::MaterialDefinitionFile::~MaterialDefinitionFile(v2);
      this = (*(*v5 + 40))(v5, v2);
    }

    v4[278] = a2;
  }

  return this;
}

uint64_t re::MaterialDefinitionAsset::getOriginalConstantParameterType(re::MaterialDefinitionAsset *this, const char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      v3 = a2[1];
      if (v3)
      {
        v4 = a2 + 2;
        do
        {
          v2 = 31 * v2 + v3;
          v5 = *v4++;
          v3 = v5;
        }

        while (v5);
      }

      v2 &= ~0x8000000000000000;
    }
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v2;
  result = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 2280, &v7);
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

uint64_t *re::MaterialDefinitionAsset::tryGetOriginalColorGamut3FParameterValue@<X0>(re::MaterialDefinitionAsset *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = v4;
  result = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 2280, &v12);
  if (result && *(result + 20) == 20)
  {
    v9 = *result;
    v10 = *(result + 2);
    v11 = *(result + 16);
    *a3 = 1;
    *(a3 + 4) = v9;
    *(a3 + 16) = v11;
    *(a3 + 12) = v10;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t re::MaterialDefinitionAsset::tryGetOriginalColorGamut4FParameterValue@<X0>(re::MaterialDefinitionAsset *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v4;
  result = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 2280, &v9);
  if (result && *(result + 20) == 21)
  {
    *a3 = 1;
    *(a3 + 4) = *result;
    *(a3 + 20) = *(result + 16);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t re::MaterialDefinitionAsset::initializeParameterBindings(re::MaterialDefinitionAsset *this, re::AssetManager *a2, re::RenderManager *a3, const char *a4)
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = *(this + 624);
  if (v4 > 2)
  {
    return 0;
  }

  v6 = a4;
  v7 = a3;
  v9 = *(this + 281);
  if (!v9)
  {
    v5 = 0;
LABEL_34:
    if (v4 <= 0)
    {
      FlattenedMaterialFile = re::makeFlattenedMaterialFile((this + 8), a2);
      if (!FlattenedMaterialFile)
      {
        return 1;
      }

      re::MaterialDefinitionAsset::setMergedFile(this, FlattenedMaterialFile);
      *(this + 624) = 1;
    }

    else if (v4 != 1)
    {
      goto LABEL_50;
    }

    re::parseShaderParameterData(v7, v6, *(this + 278) + 144, &v74);
    re::makeMaterialDefinitionBuilder(v7);
    v25 = v66;
    if (v66)
    {
      re::MaterialDefinitionBuilder::operator=((this + 776), &v67);
      re::AssetHandle::operator=(this + 752, (*(this + 278) + 120));
      re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(this + 2280, v79);
      if (v80[0])
      {
        re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(this + 2328, v80);
      }

      *(this + 624) = 2;
    }

    else
    {
      v26 = *re::assetTypesLogObjects(v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        if (v68)
        {
          v61 = *&v69[7];
        }

        else
        {
          v61 = v69;
        }

        *buf = 136315394;
        v82 = v6;
        v83 = 2080;
        *v84 = v61;
        _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "Failed to prepare material definition builder '%s': %s.", buf, 0x16u);
      }
    }

    if (v66 == 1)
    {
      re::MaterialDefinitionBuilder::~MaterialDefinitionBuilder(&v67);
    }

    else if (v67 && (v68 & 1) != 0)
    {
      (*(*v67 + 40))();
    }

    re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v80);
    re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v79);
    re::ShaderParameterTable::~ShaderParameterTable(&v74);
    if (v25)
    {
LABEL_50:
      if (v5)
      {
        return v5;
      }

      if (*(this + 624) > 2)
      {
        return 0;
      }

      re::parseTextureParameterData(v7, *(this + 278) + 144, &v66);
      v27 = *(this + 278);
      buildKeySetFromParameters<re::DynamicString>(&v74, v27 + 144);
      re::FixedArray<float>::operator=(this + 297, &v74);
      re::FixedArray<re::DynamicString>::deinit(&v74);
      buildKeySetFromParameters<re::DynamicString>(&v74, v27 + 192);
      re::FixedArray<float>::operator=(this + 300, &v74);
      v28 = re::FixedArray<re::DynamicString>::deinit(&v74);
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v29 = *(v27 + 268);
      v30 = *(v27 + 272);
      if (v30)
      {
        v31 = 0;
        v32 = *(v27 + 256);
        while (1)
        {
          v33 = *v32;
          v32 += 22;
          if (v33 < 0)
          {
            break;
          }

          if (v30 == ++v31)
          {
            LODWORD(v31) = *(v27 + 272);
            break;
          }
        }
      }

      else
      {
        LODWORD(v31) = 0;
      }

      if (v31 == v30)
      {
LABEL_70:
        re::FixedArray<float>::operator=(this + 303, &v63);
        v39 = re::FixedArray<re::DynamicString>::deinit(&v63);
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v40 = *(v27 + 316);
        v41 = *(v27 + 320);
        if (v41)
        {
          v42 = 0;
          v43 = *(v27 + 304);
          while (1)
          {
            v44 = *v43;
            v43 += 40;
            if (v44 < 0)
            {
              break;
            }

            if (v41 == ++v42)
            {
              LODWORD(v42) = *(v27 + 320);
              break;
            }
          }
        }

        else
        {
          LODWORD(v42) = 0;
        }

        if (v42 == v41)
        {
LABEL_86:
          re::FixedArray<float>::operator=(this + 306, &v63);
          v47 = re::FixedArray<re::DynamicString>::deinit(&v63);
          v63 = 0;
          v64 = 0;
          v65 = 0;
          v48 = *(v27 + 364);
          v49 = *(v27 + 368);
          if (v49)
          {
            v50 = 0;
            v51 = *(v27 + 352);
            while (1)
            {
              v52 = *v51;
              v51 += 38;
              if (v52 < 0)
              {
                break;
              }

              if (v49 == ++v50)
              {
                LODWORD(v50) = *(v27 + 368);
                break;
              }
            }
          }

          else
          {
            LODWORD(v50) = 0;
          }

          if (v50 == v49)
          {
LABEL_102:
            re::FixedArray<float>::operator=(this + 309, &v63);
            re::FixedArray<re::DynamicString>::deinit(&v63);
            re::MaterialDefinitionAsset::setMergedFile(this, 0);
            re::TextureParameterTable::operator=(this + 1368, &v66);
            v55 = v72;
            if (v72)
            {
              v56 = 0;
              v57 = v71;
              while (1)
              {
                v58 = *v57;
                v57 += 22;
                if (v58 < 0)
                {
                  break;
                }

                if (v72 == ++v56)
                {
                  LODWORD(v56) = v72;
                  break;
                }
              }
            }

            else
            {
              LODWORD(v56) = 0;
            }

            if (v56 != v72)
            {
              v59 = v71;
              do
              {
                re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(this + 2328, &v59[22 * v56 + 2], &v59[22 * v56 + 10]);
                if (v72 <= v56 + 1)
                {
                  v60 = v56 + 1;
                }

                else
                {
                  v60 = v72;
                }

                v59 = v71;
                while (v60 - 1 != v56)
                {
                  LODWORD(v56) = v56 + 1;
                  if (v71[22 * v56] < 0)
                  {
                    goto LABEL_118;
                  }
                }

                LODWORD(v56) = v60;
LABEL_118:
                ;
              }

              while (v56 != v55);
            }

            *(this + 624) = 3;
            re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v70);
            re::TextureParameterTable::~TextureParameterTable(&v66);
            return 0;
          }

          v53 = 0;
          while (1)
          {
            v36 = v53;
            v37 = v64;
            if (v64 <= v53)
            {
              break;
            }

            re::DynamicString::operator=((v65 + 32 * v53), (*(v27 + 352) + 152 * v50 + 8));
            v53 = v36 + 1;
            v54 = *(v27 + 368);
            if (v54 <= v50 + 1)
            {
              v54 = v50 + 1;
            }

            while (v54 - 1 != v50)
            {
              LODWORD(v50) = v50 + 1;
              if ((*(*(v27 + 352) + 152 * v50) & 0x80000000) != 0)
              {
                goto LABEL_101;
              }
            }

            LODWORD(v50) = v54;
LABEL_101:
            if (v50 == v49)
            {
              goto LABEL_102;
            }
          }

LABEL_126:
          v73 = 0;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v74 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          v82 = "operator[]";
          v83 = 1024;
          *v84 = 468;
          *&v84[4] = 2048;
          *&v84[6] = v36;
          v85 = 2048;
          v86 = v37;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v45 = 0;
        while (1)
        {
          v36 = v45;
          v37 = v64;
          if (v64 <= v45)
          {
            break;
          }

          re::DynamicString::operator=((v65 + 32 * v45), (*(v27 + 304) + 160 * v42 + 8));
          v45 = v36 + 1;
          v46 = *(v27 + 320);
          if (v46 <= v42 + 1)
          {
            v46 = v42 + 1;
          }

          while (v46 - 1 != v42)
          {
            LODWORD(v42) = v42 + 1;
            if ((*(*(v27 + 304) + 160 * v42) & 0x80000000) != 0)
            {
              goto LABEL_85;
            }
          }

          LODWORD(v42) = v46;
LABEL_85:
          if (v42 == v41)
          {
            goto LABEL_86;
          }
        }
      }

      else
      {
        v35 = 0;
        while (1)
        {
          v36 = v35;
          v37 = v64;
          if (v64 <= v35)
          {
            break;
          }

          re::DynamicString::operator=((v65 + 32 * v35), (*(v27 + 256) + 88 * v31 + 8));
          v35 = v36 + 1;
          v38 = *(v27 + 272);
          if (v38 <= v31 + 1)
          {
            v38 = v31 + 1;
          }

          while (v38 - 1 != v31)
          {
            LODWORD(v31) = v31 + 1;
            if ((*(*(v27 + 256) + 88 * v31) & 0x80000000) != 0)
            {
              goto LABEL_69;
            }
          }

          LODWORD(v31) = v38;
LABEL_69:
          if (v31 == v30)
          {
            goto LABEL_70;
          }
        }

        v73 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *buf = 136315906;
        v82 = "operator[]";
        v83 = 1024;
        *v84 = 468;
        *&v84[4] = 2048;
        *&v84[6] = v36;
        v85 = 2048;
        v86 = v37;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v73 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      v82 = "operator[]";
      v83 = 1024;
      *v84 = 468;
      *&v84[4] = 2048;
      *&v84[6] = v36;
      v85 = 2048;
      v86 = v37;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_126;
    }

    return 1;
  }

  v5 = 0;
  v11 = 0;
  v12 = *(this + 283);
  v13 = 8 * v9;
  do
  {
    v14 = *v12;
    v15 = *(*v12 + 1);
    if (v15)
    {
      goto LABEL_6;
    }

    re::AssetHandle::serializationString(*v12, &v66);
    v17 = v66;
    if (v67)
    {
      v18 = v67 >> 1;
    }

    else
    {
      v18 = v67 >> 1;
    }

    if (v66)
    {
      v19 = (v67 & 1) == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v17 = (*(*v66 + 40))();
    }

    if (!v18)
    {
      v15 = *(v14 + 1);
      if (!v15)
      {
        goto LABEL_27;
      }

LABEL_6:
      v16 = atomic_load((v15 + 896));
      if (v16 == 2)
      {
        goto LABEL_27;
      }

      if (v16 == 3)
      {
        return 1;
      }

      re::AssetHandle::loadAsync(v14);
    }

    v20 = *(v14 + 1);
    if (v20)
    {
      v21 = *(v20 + 280);
    }

    else
    {
      v21 = 0;
    }

    v22 = re::TextureAsset::assetType(v17);
    if (v21 == v22)
    {
      v11 = 2;
    }

    else
    {
      v11 = v11;
    }

    if (v21 == v22)
    {
      v5 = v5;
    }

    else
    {
      v5 = 2;
    }

LABEL_27:
    ++v12;
    v13 -= 8;
  }

  while (v13);
  v6 = a4;
  v7 = a3;
  if (!v5)
  {
    v4 = *(this + 624);
    v5 = v11;
    goto LABEL_34;
  }

  return v5;
}

void *buildKeySetFromParameters<re::DynamicString>(_anonymous_namespace_ *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v4 = *(a2 + 28);
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = 0;
    v8 = *(a2 + 16);
    while (1)
    {
      v9 = *v8;
      v8 += 20;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 != v6)
  {
    v10 = 0;
    do
    {
      v11 = v10;
      if (*(a1 + 1) <= v10)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      result = re::DynamicString::operator=((*(a1 + 2) + 32 * v10), (*(a2 + 16) + 80 * v7 + 8));
      v10 = v11 + 1;
      v12 = *(a2 + 32);
      if (v12 <= v7 + 1)
      {
        v12 = v7 + 1;
      }

      while (v12 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(*(a2 + 16) + 80 * v7) & 0x80000000) != 0)
        {
          goto LABEL_16;
        }
      }

      LODWORD(v7) = v12;
LABEL_16:
      ;
    }

    while (v7 != v6);
  }

  return result;
}

void re::MaterialDefinitionLoader::preloadAssets(re::MaterialDefinitionLoader *this)
{
  (*(**(this + 2) + 8))(&v4);
  v2 = *(this + 2);
  *(this + 2) = v4;
  v4 = v2;
  v3 = *(this + 6);
  *(this + 6) = v5;
  v5 = v3;
  re::AssetHandle::~AssetHandle(&v4);
  if ((*(**(this + 2) + 360))())
  {
    re::AssetHandle::loadAsync((this + 32));
  }
}

uint64_t re::MaterialDefinitionLoader::introspectionType(re::MaterialDefinitionLoader *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::MaterialDefinitionAsset>(BOOL)::info = re::internal::getOrCreateInfo("MaterialDefinitionAsset", re::allocInfo_MaterialDefinitionAsset, re::initInfo_MaterialDefinitionAsset, &re::internal::introspectionInfoStorage<re::MaterialDefinitionAsset>, 0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[189];
}

BOOL re::MaterialDefinitionLoader::createRuntimeData(re::AssetLoader *this, const re::IntrospectionBase **a2)
{
  v2 = *(this + 3);
  if (!v2 || !*(v2 + 26))
  {
    return 1;
  }

  v5 = *(this + 2);
  if ((a2[284] & 1) == 0)
  {
    re::AssetLoader::internalFindAssetHandleFields(this, a2, v8);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a2 + 279), v8);
    if (v8[0] && v8[4])
    {
      (*(*v8[0] + 40))();
    }

    *(a2 + 2272) = 1;
    v2 = *(this + 3);
  }

  if (a2[2])
  {
    v6 = a2[3];
  }

  else
  {
    v6 = a2 + 17;
  }

  return re::MaterialDefinitionAsset::initializeParameterBindings(a2, v5, v2, v6) != 1;
}

uint64_t re::MaterialDefinitionLoader::registerAsset(re::MaterialDefinitionLoader *this, re::MaterialDefinitionAsset *a2, const re::ExistingAssetInformation *a3)
{
  v4 = this;
  v31 = *MEMORY[0x1E69E9840];
  v26 = a2;
  v5 = *(this + 2);
  if ((*(a2 + 2216) & 1) == 0)
  {
    if (*(a3 + 10) == -1)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a3 + 10);
    }

    os_unfair_lock_lock((v5 + 128));
    re::AssetManager::lookupExistingAsset_assetTablesLocked(v5, v7, &v27);
    os_unfair_lock_unlock((v5 + 128));
    if (v27 == 1)
    {
      v8 = re::globalAllocators(this)[2];
      v29[0] = &unk_1F5CC80D0;
      v29[1] = a3;
      v29[2] = &v26;
      v29[3] = v8;
      v29[4] = v29;
      re::AssetManager::readLoadDescriptorsForAsset(v5, v28, v29);
      this = re::FunctionBase<24ul,void ()(re::DynamicArray<re::AssetLoadDescriptor> const&)>::destroyCallable(v29);
      v9 = v27;
      *(v26 + 2216) = 1;
      if (v9)
      {
        re::AssetHandle::~AssetHandle(v28);
      }
    }

    else
    {
      *(a2 + 2216) = 1;
    }
  }

  v10 = *(v4 + 3);
  if (!v10 || !*(v10 + 208))
  {
    return 0;
  }

  {
    v12 = *(v26 + 51);
    if (v12)
    {
      v13 = 664 * v12;
      v14 = (*(v26 + 53) + 112);
      do
      {
        if (*(v14 + 1))
        {
          v15 = *(v14 + 2);
        }

        else
        {
          v15 = v14 + 9;
        }

        if (!strcmp(v15, "vsRealityPbrOpenSubdiv"))
        {
          v27 = "vsRealityPbr";
          v28[0] = 12;
          re::DynamicString::operator=(v14, &v27);
        }

        v14 += 664;
        v13 -= 664;
      }

      while (v13);
    }
  }

  if (*(a3 + 17))
  {
    v16 = *(a3 + 18);
  }

  else
  {
    v16 = a3 + 137;
  }

  v17 = re::MaterialDefinitionAsset::initializeParameterBindings(v26, v5, *(v4 + 3), v16);
  if (v17 != 1)
  {
    if (v17 == 2)
    {
      return 1;
    }

    v19 = v26;
    v20 = *(v4 + 3);
    if (*(a3 + 17))
    {
      v21 = *(a3 + 18);
    }

    else
    {
      v21 = a3 + 137;
    }

    v22 = *(v20 + 24);
    re::MaterialDefinitionBuilder::MaterialDefinitionBuilder(&v27, v26 + 97);
    re::MaterialManager::createMaterialDefinition(v22, &v27, buf);
    v23 = *(v19 + 93);
    *(v19 + 93) = *buf;
    *buf = v23;
    if (v23)
    {

      *buf = 0;
    }

    re::MaterialDefinitionBuilder::~MaterialDefinitionBuilder(&v27);
    if (*(v19 + 93))
    {
      return 0;
    }

    v25 = *re::assetTypesLogObjects(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = v21;
      _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "Failed to prepare material definition '%s'", buf, 0xCu);
    }
  }

  return 2;
}

void re::MaterialDefinitionLoader::unregisterAsset(re::MaterialDefinitionLoader *this, char *a2, const re::ExistingAssetInformation *a3)
{
  v4 = *(a2 + 93);
  if (v4)
  {

    v5 = *(a2 + 47);
    v6 = *(a2 + 96);
    *(a2 + 760) = 0u;
    *(a2 + 744) = 0u;
    v7 = v5;
    v8 = v6;
    re::AssetHandle::~AssetHandle(&v7);
  }

  re::MaterialDefinitionBuilder::destroy((a2 + 776));
  a2[2272] = 0;
  *(a2 + 281) = 0;
  ++*(a2 + 564);
}

re *re::internal::destroyPersistent<re::MaterialDefinitionAsset>(re *result, uint64_t a2, void (***a3)(void))
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

void *re::MaterialDefinitionLoader::findDependencies@<X0>(re::MaterialDefinitionLoader *this@<X0>, const re::IntrospectionBase **a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2[284] & 1) == 0)
  {
    re::AssetLoader::internalFindAssetHandleFields(this, a2, v11);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a2 + 279), v11);
    this = v11[0];
    if (v11[0] && v11[4])
    {
      this = (*(*v11[0] + 40))();
    }

    *(a2 + 2272) = 1;
  }

  v5 = a2[281];
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  result = re::DynamicArray<re::AssetHandle>::setCapacity(a3, v5);
  ++*(a3 + 24);
  v7 = a2[281];
  if (v7)
  {
    v8 = a2[283];
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

void *re::allocInfo_MaterialDefinitionAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_91, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_91))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1995E8, "MaterialDefinitionAsset");
    __cxa_guard_release(&_MergedGlobals_91);
  }

  return &unk_1EE1995E8;
}

void re::initInfo_MaterialDefinitionAsset(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0xD03B453A4494F22CLL;
  v12[1] = "MaterialDefinitionAsset";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1995D0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1995D0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_MaterialDefinitionFile(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "definitionFile";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0x800000001;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1995D8 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = (*(*v9 + 32))(v9, 64, 8);
      *v10 = 6;
      *(v10 + 8) = 1;
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 1;
      *(v10 + 48) = downgradeMaterialDefinitionAssetFromFall2023;
      *(v10 + 56) = 2;
      qword_1EE1995E0 = v10;
      __cxa_guard_release(&qword_1EE1995D0);
    }
  }

  *(this + 2) = 0x9C800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1995D8;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialDefinitionAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialDefinitionAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialDefinitionAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialDefinitionAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

void re::MaterialDefinitionLoader::~MaterialDefinitionLoader(re::MaterialDefinitionLoader *this)
{
  *this = &unk_1F5CC7F58;
  re::AssetHandle::~AssetHandle((this + 32));
}

{
  *this = &unk_1F5CC7F58;
  re::AssetHandle::~AssetHandle((this + 32));

  JUMPOUT(0x1E6906520);
}

void re::MaterialDefinitionFile::~MaterialDefinitionFile(re::MaterialDefinitionFile *this)
{
  re::MaterialDefinitionFile::deinit(this);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 86);
  re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::deinit(this + 648);
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 75);
  re::DynamicArray<re::DebugMapping>::deinit(this + 560);
  re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 64);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 58);
  re::DynamicArray<re::MaterialTechniqueGroupData>::deinit(this + 424);
  re::DynamicArray<re::MaterialTechniqueData>::deinit(this + 384);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 42);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 36);
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 30);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 24);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 18);
  re::AssetHandle::~AssetHandle((this + 120));
  re::AssetHandle::~AssetHandle((this + 96));
  re::DynamicString::deinit((this + 64));
  re::DynamicString::deinit((this + 32));
  re::DynamicString::deinit(this);
}

uint64_t re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::deinit(uint64_t a1)
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
        v5 = 104 * v4;
        do
        {
          re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(v3);
          v3 += 13;
          v5 -= 104;
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

void re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(const re::DynamicString **this)
{
  re::MaterialTechniqueQualityLevelSetData::deinit(this);
  re::DynamicArray<re::DynamicString>::deinit((this + 8));
  re::DynamicString::deinit((this + 4));
  re::DynamicString::deinit(this);
}

double re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::Optional<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 96;
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

uint64_t re::DynamicArray<re::DebugMapping>::deinit(uint64_t a1)
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
        v5 = 80 * v4;
        do
        {
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v3 + 4);
          re::DynamicString::deinit(v3);
          v3 += 10;
          v5 -= 80;
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

double re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 96;
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

double re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 10);
    re::DynamicString::deinit((a1 + 2));

    return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v2);
  }

  return result;
}

uint64_t re::DynamicArray<re::MaterialTechniqueGroupData>::deinit(uint64_t a1)
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
        v5 = &v3[9 * v4];
        do
        {
          re::MaterialTechniqueGroupData::deinit(v3);
          re::DynamicArray<re::DynamicString>::deinit((v3 + 4));
          re::DynamicString::deinit(v3);
          v3 += 9;
        }

        while (v3 != v5);
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

uint64_t re::DynamicArray<re::MaterialTechniqueData>::deinit(uint64_t a1)
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
        v5 = 664 * v4;
        do
        {
          re::MaterialTechniqueData::~MaterialTechniqueData(v3);
          v3 = (v3 + 664);
          v5 -= 664;
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

void re::MaterialTechniqueData::~MaterialTechniqueData(re::MaterialTechniqueData *this)
{
  re::DynamicString::deinit(this);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 76);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 70);
  re::DynamicArray<re::DynamicString>::deinit(this + 512);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 58);
  re::DynamicArray<re::DynamicString>::deinit(this + 424);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 47);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 41);
  re::DynamicString::deinit((this + 296));
  re::DynamicArray<unsigned long>::deinit(this + 256);
  if (*(this + 21))
  {
    re::DynamicString::deinit((this + 168));
  }

  re::DynamicString::deinit((this + 168));
  re::AssetHandle::~AssetHandle((this + 144));
  if (*(this + 14))
  {
    re::DynamicString::deinit((this + 112));
  }

  re::DynamicString::deinit((this + 112));
  re::AssetHandle::~AssetHandle((this + 88));
  re::AssetHandle::~AssetHandle((this + 64));
  re::DynamicString::deinit((this + 32));
  re::DynamicString::deinit(this);
}

void re::internal::Callable<re::MaterialDefinitionLoader::registerAsset(void *,re::ExistingAssetInformation const&)::$_0,void ()(re::DynamicArray<re::AssetLoadDescriptor> const&)>::operator()(re *a1, uint64_t a2)
{
  v2 = a1;
  v22[5] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(a2 + 32);
    v5 = 144 * v3;
    while (1)
    {
      re::DynamicString::DynamicString(v13, v4);
      re::DynamicArray<BOOL>::DynamicArray(v16, v4 + 4);
      re::DynamicArray<BOOL>::DynamicArray(v19, v4 + 9);
      re::DynamicString::DynamicString(v22, (v4 + 14));
      isEngineAssetDescriptor = re::FrameworkAssetProvider::isEngineAssetDescriptor(v13, v6);
      if (v22[0])
      {
        if (v22[1])
        {
          (*(*v22[0] + 40))();
        }

        memset(v22, 0, 32);
      }

      if (v19[0])
      {
        if (v21)
        {
          (*(*v19[0] + 40))();
        }

        v21 = 0;
        memset(v19, 0, sizeof(v19));
        ++v20;
      }

      if (v16[0])
      {
        if (v18)
        {
          (*(*v16[0] + 40))();
        }

        v18 = 0;
        memset(v16, 0, sizeof(v16));
        ++v17;
      }

      a1 = *v13;
      if (*v13 && (v13[8] & 1) != 0)
      {
        a1 = (*(**v13 + 40))();
      }

      if (isEngineAssetDescriptor)
      {
        break;
      }

      v4 += 18;
      v5 -= 144;
      if (!v5)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    v8 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v2 + 1);
      if (*(v9 + 136))
      {
        v10 = *(v9 + 144);
      }

      else
      {
        v10 = v9 + 137;
      }

      v11 = **(v2 + 2);
      if (*(v11 + 16))
      {
        v12 = *(v11 + 24);
      }

      else
      {
        v12 = v11 + 17;
      }

      *v13 = 136315394;
      *&v13[4] = v10;
      v14 = 2080;
      v15 = v12;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "[%s] [%s] Loading of non-engine MaterialDefinitions is deprecated. Please move to using our public material APIs, such as CustomMaterial or ShaderGraphMaterial.", v13, 0x16u);
    }
  }
}

uint64_t re::internal::Callable<re::MaterialDefinitionLoader::registerAsset(void *,re::ExistingAssetInformation const&)::$_0,void ()(re::DynamicArray<re::AssetLoadDescriptor> const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC80D0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::MaterialDefinitionLoader::registerAsset(void *,re::ExistingAssetInformation const&)::$_0,void ()(re::DynamicArray<re::AssetLoadDescriptor> const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC80D0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

re::MaterialDefinitionAsset *re::MaterialDefinitionAsset::MaterialDefinitionAsset(re::MaterialDefinitionAsset *this)
{
  *this = &unk_1F5CC8128;
  re::MaterialDefinitionFile::MaterialDefinitionFile((this + 8));
  *(this + 744) = 0u;
  *(this + 760) = 0u;
  re::MaterialDefinitionBuilder::MaterialDefinitionBuilder((this + 776));
  *(this + 2216) = 0;
  *(this + 283) = 0;
  *(this + 2272) = 0;
  *(this + 2280) = 0u;
  *(this + 2296) = 0u;
  *(this + 578) = 0;
  *(this + 139) = 0u;
  *(this + 140) = 0u;
  *(this + 564) = 0;
  *(this + 2316) = 0x7FFFFFFFLL;
  *(this + 2328) = 0u;
  *(this + 2344) = 0u;
  *(this + 590) = 0;
  *(this + 2364) = 0x7FFFFFFFLL;
  *(this + 2376) = 0u;
  *(this + 2392) = 0u;
  *(this + 2408) = 0u;
  *(this + 2424) = 0u;
  *(this + 2440) = 0u;
  *(this + 2456) = 0u;
  *(this + 2472) = 0u;
  *(this + 2484) = 0u;
  return this;
}

re::MaterialDefinitionFile *re::MaterialDefinitionFile::MaterialDefinitionFile(re::MaterialDefinitionFile *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  v2 = re::DynamicString::setCapacity(this, 0);
  *(this + 3) = 0u;
  *(this + 2) = 0u;
  v3 = re::DynamicString::setCapacity(this + 4, 0);
  *(this + 5) = 0u;
  *(this + 4) = 0u;
  re::DynamicString::setCapacity(this + 8, 0);
  *(this + 44) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 6) = 0u;
  *(this + 180) = 0x7FFFFFFFLL;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 56) = 0;
  *(this + 228) = 0x7FFFFFFFLL;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 68) = 0;
  *(this + 276) = 0x7FFFFFFFLL;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 80) = 0;
  *(this + 324) = 0x7FFFFFFFLL;
  *(this + 92) = 0;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 372) = 0x7FFFFFFFLL;
  *(this + 24) = 0u;
  *(this + 102) = 0;
  *(this + 50) = 0;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 112) = 0;
  *(this + 484) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 500) = 0x7FFFFFFFLL;
  *(this + 136) = 0;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 548) = 0x7FFFFFFFLL;
  *(this + 146) = 0;
  *(this + 72) = 0;
  *(this + 35) = 0u;
  *(this + 620) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 636) = 0x7FFFFFFFLL;
  *(this + 168) = 0;
  *(this + 83) = 0;
  *(this + 648) = 0u;
  *(this + 708) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 724) = 0x7FFFFFFFLL;
  return this;
}

re::MaterialDefinitionBuilder *re::MaterialDefinitionBuilder::MaterialDefinitionBuilder(re::MaterialDefinitionBuilder *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  v2 = re::DynamicString::setCapacity(this, 0);
  *(this + 3) = 0u;
  *(this + 2) = 0u;
  re::DynamicString::setCapacity(this + 4, 0);
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = &unk_1F5CC38C8;
  *(this + 25) = 0;
  *(this + 13) = 0u;
  *(this + 56) = 0;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 108) = 0;
  *(this + 55) = 0;
  *(this + 28) = 0u;
  *(this + 98) = 0;
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 116) = 1;
  *(this + 472) = 0u;
  *(this + 124) = 0;
  *(this + 61) = 0;
  *(this + 65) = 0;
  *(this + 132) = 0;
  *(this + 504) = 0u;
  *(this + 72) = 0;
  *(this + 146) = 0;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 142) = 0;
  *(this + 103) = 0;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 760) = 0u;
  *(this + 776) = 0u;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 90) = &unk_1F5CC8148;
  *(this + 908) = 0u;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 52) = 0u;
  *(this + 276) = 0;
  *(this + 68) = 0u;
  *(this + 67) = 0u;
  *(this + 66) = 0u;
  *(this + 65) = 0u;
  *(this + 63) = 0u;
  *(this + 64) = 0u;
  *(this + 61) = 0u;
  *(this + 62) = 0u;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 58) = 0u;
  *(this + 1108) = 0x7FFFFFFFLL;
  *(this + 288) = 0;
  *(this + 71) = 0u;
  *(this + 70) = 0u;
  *(this + 1156) = 0x7FFFFFFFLL;
  *(this + 300) = 0;
  *(this + 74) = 0u;
  *(this + 73) = 0u;
  *(this + 1204) = 0x7FFFFFFFLL;
  *(this + 312) = 0;
  *(this + 77) = 0u;
  *(this + 76) = 0u;
  *(this + 1252) = 0x7FFFFFFFLL;
  *(this + 324) = 0;
  *(this + 80) = 0u;
  *(this + 79) = 0u;
  *(this + 1300) = 0x7FFFFFFFLL;
  *(this + 352) = 0;
  *(this + 87) = 0u;
  *(this + 86) = 0u;
  *(this + 85) = 0u;
  *(this + 84) = 0u;
  *(this + 83) = 0u;
  *(this + 82) = 0u;
  *(this + 1412) = 0x7FFFFFFFLL;
  *(this + 89) = 0u;
  return this;
}

void re::TextureHandleTable::textureAt(re::TextureHandleTable *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *(this + 11);
  if (v5 <= a2)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *v16 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v9 = 136315906;
    *&v9[4] = "operator[]";
    v10 = 1024;
    v11 = 789;
    v12 = 2048;
    v13 = a2;
    v14 = 2048;
    v15 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(this + 13) + 40 * a2;
  if (*(v6 + 32))
  {
    if ((*(v6 + 16) & 1) == 0)
    {
      re::TextureHandle::metalTexture(v6, v9);
      v7 = *v9;
      v8 = [v7 newTextureViewWithPixelFormat:objc_msgSend(v7 textureType:sel_pixelFormat) levels:objc_msgSend(v7 slices:sel_textureType) swizzle:0, objc_msgSend(*v9, sel_mipmapLevelCount), 0, objc_msgSend(v7, sel_arrayLength), *(v6 + 33)];
      LOBYTE(v16[0]) = 1;
      v16[1] = v8;
      re::Optional<NS::SharedPtr<MTL::Texture>>::operator=(v6 + 16, v16);
      if (LOBYTE(v16[0]) == 1 && v16[1])
      {
      }

      if (v7)
      {
      }
    }

    *a3 = *(v6 + 24);
  }

  else
  {

    re::TextureHandle::metalTexture(v6, a3);
  }
}

uint64_t re::Optional<NS::SharedPtr<MTL::Texture>>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      NS::SharedPtr<MTL::Texture>::operator=((a1 + 8), (a2 + 8));
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3)
      {

        *(a1 + 8) = 0;
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
  }

  return a1;
}

uint64_t *re::CollisionShapeAsset::assetType(re::CollisionShapeAsset *this)
{
  {
    re::CollisionShapeAsset::assetType(void)::type = "CollisionShape";
    qword_1EE1C6C20 = 0;
    re::AssetType::generateCompiledExtension(&re::CollisionShapeAsset::assetType(void)::type);
  }

  return &re::CollisionShapeAsset::assetType(void)::type;
}

uint64_t *re::PhysicsMaterialAsset::assetType(re::PhysicsMaterialAsset *this)
{
  {
    re::PhysicsMaterialAsset::assetType(void)::type = "PhysicsMaterial";
    qword_1EE1C69C8 = 0;
    re::AssetType::generateCompiledExtension(&re::PhysicsMaterialAsset::assetType(void)::type);
  }

  return &re::PhysicsMaterialAsset::assetType(void)::type;
}

uint64_t *re::IndexedTriangleMeshAsset::assetType(re::IndexedTriangleMeshAsset *this)
{
  {
    re::IndexedTriangleMeshAsset::assetType(void)::type = "IndexedTriangleMesh";
    qword_1EE1C6650 = 0;
    re::AssetType::generateCompiledExtension(&re::IndexedTriangleMeshAsset::assetType(void)::type);
  }

  return &re::IndexedTriangleMeshAsset::assetType(void)::type;
}

void re::IntrospectionInfo<re::CollisionShapeData *>::get()
{
  if ((atomic_load_explicit(&qword_1EE1996D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1996D8))
  {
    re::IntrospectionPointer::IntrospectionPointer(&qword_1EE199730);
    __cxa_guard_release(&qword_1EE1996D8);
  }

  if ((_MergedGlobals_92 & 1) == 0)
  {
    _MergedGlobals_92 = 1;
    v0 = re::introspect_CollisionShapeData(1);
    ArcSharedObject::ArcSharedObject(&qword_1EE199730, 0);
    qword_1EE199740 = 0x800000001;
    dword_1EE199748 = 8;
    word_1EE19974C = 0;
    *&xmmword_1EE199750 = 0;
    *(&xmmword_1EE199750 + 1) = 0xFFFFFFFFLL;
    qword_1EE199730 = &unk_1F5CBD2C0;
    qword_1EE199760 = v0;
    unk_1EE199768 = 0;
    re::IntrospectionRegistry::add(v1, v2);
    re::getPrettyTypeName(&qword_1EE199730, &v7);
    if (BYTE8(v7))
    {
      v3 = v8;
    }

    else
    {
      v3 = &v7 + 9;
    }

    if (v7 && (BYTE8(v7) & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    if (v9 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      v5 = v7;
    }

    else
    {
      v7 = *(v0 + 32);
      v5 = v6;
    }

    xmmword_1EE199750 = v5;
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

void *re::allocInfo_CollisionShapeAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199690))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1997F0, "CollisionShapeAsset");
    __cxa_guard_release(&qword_1EE199690);
  }

  return &unk_1EE1997F0;
}

void re::initInfo_CollisionShapeAsset(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0x601D4512AD02B902;
  v9[1] = "CollisionShapeAsset";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE199688, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE199688);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::CollisionShapeData *>::get();
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "m_data";
      *(v7 + 16) = &qword_1EE199730;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE199680 = v7;
      __cxa_guard_release(&qword_1EE199688);
    }
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000010;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE199680;
  *(this + 9) = re::internal::defaultConstruct<re::CollisionShapeAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CollisionShapeAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::CollisionShapeAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::CollisionShapeAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

void *re::internal::defaultConstructV2<re::CollisionShapeAsset>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void re::IntrospectionInfo<re::PhysicsMaterial *>::get()
{
  if ((atomic_load_explicit(&qword_1EE1996E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1996E0))
  {
    re::IntrospectionPointer::IntrospectionPointer(qword_1EE199770);
    __cxa_guard_release(&qword_1EE1996E0);
  }

  if ((byte_1EE199679 & 1) == 0)
  {
    byte_1EE199679 = 1;
    v0 = re::introspect_PhysicsMaterial(1);
    ArcSharedObject::ArcSharedObject(qword_1EE199770, 0);
    qword_1EE199780 = 0x800000001;
    dword_1EE199788 = 8;
    word_1EE19978C = 0;
    *&xmmword_1EE199790 = 0;
    *(&xmmword_1EE199790 + 1) = 0xFFFFFFFFLL;
    qword_1EE199770[0] = &unk_1F5CBD2C0;
    qword_1EE1997A0 = v0;
    unk_1EE1997A8 = 0;
    re::IntrospectionRegistry::add(v1, v2);
    re::getPrettyTypeName(qword_1EE199770, &v7);
    if (BYTE8(v7))
    {
      v3 = v8;
    }

    else
    {
      v3 = &v7 + 9;
    }

    if (v7 && (BYTE8(v7) & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    if (v9 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      v5 = v7;
    }

    else
    {
      v7 = *(v0 + 32);
      v5 = v6;
    }

    xmmword_1EE199790 = v5;
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

void *re::allocInfo_PhysicsMaterialAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1996A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1996A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199880, "PhysicsMaterialAsset");
    __cxa_guard_release(&qword_1EE1996A8);
  }

  return &unk_1EE199880;
}

void re::initInfo_PhysicsMaterialAsset(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0xD183AEF73ADBE44;
  v11[1] = "PhysicsMaterialAsset";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1996A0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1996A0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::PhysicsMaterial *>::get();
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "m_data";
      *(v7 + 16) = qword_1EE199770;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE199720 = v7;
      v8 = re::introspectionAllocator(v7);
      v9 = (*(*v8 + 32))(v8, 24, 8);
      *v9 = 5;
      *(v9 + 8) = "m_material";
      *(v9 + 16) = "m_data";
      qword_1EE199728 = v9;
      __cxa_guard_release(&qword_1EE1996A0);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE199720;
  *(this + 9) = re::internal::defaultConstruct<re::PhysicsMaterialAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::PhysicsMaterialAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::PhysicsMaterialAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::PhysicsMaterialAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void *re::internal::defaultConstructV2<re::PhysicsMaterialAsset>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void re::IntrospectionInfo<re::IndexedTriangleMeshData *>::get()
{
  if ((atomic_load_explicit(&qword_1EE1996E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1996E8))
  {
    re::IntrospectionPointer::IntrospectionPointer(&qword_1EE1997B0);
    __cxa_guard_release(&qword_1EE1996E8);
  }

  if ((byte_1EE19967A & 1) == 0)
  {
    byte_1EE19967A = 1;
    v0 = re::introspect_IndexedTriangleMeshData(1);
    ArcSharedObject::ArcSharedObject(&qword_1EE1997B0, 0);
    qword_1EE1997C0 = 0x800000001;
    dword_1EE1997C8 = 8;
    word_1EE1997CC = 0;
    *&xmmword_1EE1997D0 = 0;
    *(&xmmword_1EE1997D0 + 1) = 0xFFFFFFFFLL;
    qword_1EE1997B0 = &unk_1F5CBD2C0;
    qword_1EE1997E0 = v0;
    unk_1EE1997E8 = 0;
    re::IntrospectionRegistry::add(v1, v2);
    re::getPrettyTypeName(&qword_1EE1997B0, &v7);
    if (BYTE8(v7))
    {
      v3 = v8;
    }

    else
    {
      v3 = &v7 + 9;
    }

    if (v7 && (BYTE8(v7) & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    if (v9 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      v5 = v7;
    }

    else
    {
      v7 = *(v0 + 32);
      v5 = v6;
    }

    xmmword_1EE1997D0 = v5;
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

void *re::allocInfo_IndexedTriangleMeshAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1996C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1996C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199910, "IndexedTriangleMeshAsset");
    __cxa_guard_release(&qword_1EE1996C8);
  }

  return &unk_1EE199910;
}

void re::initInfo_IndexedTriangleMeshAsset(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0xA2432DB9E2F0D614;
  v9[1] = "IndexedTriangleMeshAsset";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE1996C0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1996C0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::IndexedTriangleMeshData *>::get();
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "m_data";
      *(v7 + 16) = &qword_1EE1997B0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE1996B8 = v7;
      __cxa_guard_release(&qword_1EE1996C0);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1996B8;
  *(this + 9) = re::internal::defaultConstruct<re::IndexedTriangleMeshAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IndexedTriangleMeshAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::IndexedTriangleMeshAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::IndexedTriangleMeshAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

void *re::internal::defaultConstructV2<re::IndexedTriangleMeshAsset>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t re::CollisionShapeAssetLoader::introspectionType(re::CollisionShapeAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE1996F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1996F8))
  {
    qword_1EE1996F0 = re::internal::getOrCreateInfo("CollisionShapeAsset", re::allocInfo_CollisionShapeAsset, re::initInfo_CollisionShapeAsset, &unk_1EE199698, 0);
    __cxa_guard_release(&qword_1EE1996F8);
  }

  return qword_1EE1996F0;
}

void re::CollisionShapeAssetLoader::findDependencies(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v4 = *a1;
  v5 = *(*a1 + 8);
  if (v5 == 7)
  {
    v6 = v4[3];
    if (v6)
    {
      v7 = 80 * v6;
      v8 = (v4[4] + 48);
      do
      {
        re::DynamicArray<re::AssetHandle>::add(a2, v8);
        v8 = (v8 + 80);
        v7 -= 80;
      }

      while (v7);
    }
  }

  else if (v5 == 12)
  {

    re::DynamicArray<re::AssetHandle>::add(a2, (v4 + 2));
  }
}

void *re::CollisionShapeAssetLoader::internalFindAssetHandleFields@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v4 = *a1;
  v5 = *(*a1 + 8);
  if (v5 == 7)
  {
    v7 = *(v4 + 24);
    if (v7)
    {
      v8 = 80 * v7;
      v9 = *(v4 + 32) + 48;
      do
      {
        v10 = v9;
        result = re::DynamicArray<re::TransitionCondition *>::add(a2, &v10);
        v9 += 80;
        v8 -= 80;
      }

      while (v8);
    }
  }

  else if (v5 == 12)
  {
    v10 = v4 + 16;
    return re::DynamicArray<re::TransitionCondition *>::add(a2, &v10);
  }

  return result;
}

uint64_t re::CollisionShapeAssetLoader::registerAsset(re::CollisionShapeAssetLoader *this, char *a2, const re::ExistingAssetInformation *a3)
{
  v4 = *a2;
  v5 = *(*a2 + 8);
  if (v5 > 0xC)
  {
    goto LABEL_4;
  }

  if (((1 << v5) & 0x1B7E) != 0)
  {
    this = re::AssetLoader::registerAsset(this, a2, a3);
    v7 = this;
    if (!this)
    {
      goto LABEL_4;
    }

    return v7;
  }

  if (v5 != 7)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected collision shape type.", "!Unreachable code", "registerAsset", 173);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v10 = *(v4 + 24);
  if (!v10)
  {
    goto LABEL_4;
  }

  v7 = 0;
  v11 = (*(v4 + 32) + 48);
  v12 = 80 * v10;
  do
  {
    v13 = *(v11 + 1);
    if (!v13)
    {
      goto LABEL_16;
    }

    v14 = atomic_load((v13 + 896));
    if (v14 == 3)
    {
      v7 = 2;
      goto LABEL_18;
    }

    v15 = *(v11 + 1);
    if (!v15 || (v16 = atomic_load((v15 + 896)), v16 != 2))
    {
LABEL_16:
      re::AssetHandle::loadAsync(v11);
      if (!v7)
      {
        v7 = 1;
      }
    }

LABEL_18:
    v11 = (v11 + 80);
    v12 -= 80;
  }

  while (v12);
  if (!v7)
  {
    if (*(v4 + 24))
    {
      v17 = re::FixedArray<re::GeometricObjectData>::operator[](v4 + 16);
      v18 = *(*(v17 + 56) + 24);
      if (*(a3 + 13))
      {
        v19 = *(a3 + 14);
      }

      else
      {
        v19 = a3 + 105;
      }

      (*(*v18 + 8))(v23, *(*(v17 + 56) + 24), v19);
      v20 = *(v4 + 24);
      if (v20)
      {
        v21 = 80 * v20;
        v22 = *(v4 + 32) + 48;
        do
        {
          (*(*v18 + 296))(v18, v23, v22);
          v22 += 80;
          v21 -= 80;
        }

        while (v21);
      }

      re::AssetHandle::~AssetHandle(v23);
    }

LABEL_4:
    if (*(a2 + 1))
    {
      return 0;
    }

    else
    {
      v8 = re::globalAllocators(this);
      return re::convertFromSerializable(*a2, (a2 + 8), v8[2], v8[2], 0);
    }
  }

  return v7;
}

uint64_t re::FixedArray<re::GeometricObjectData>::operator[](uint64_t a1)
{
  if (!*(a1 + 8))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16);
}

uint64_t *re::CollisionShapeAssetLoader::unregisterAsset(re::CollisionShapeAssetLoader *this, void *a2, const re::ExistingAssetInformation *a3)
{
  result = re::globalAllocators(this);
  v5 = a2[1];
  if (v5)
  {
    v6 = result[2];
    (**v5)(a2[1]);
    result = (*(*v6 + 40))(v6, v5);
    a2[1] = 0;
  }

  return result;
}

uint64_t re::CollisionShapeAssetLoader::unloadAsset(re::CollisionShapeAssetLoader *this, void *a2)
{
  v3 = re::globalAllocators(this);
  v4 = *a2;
  if (*a2)
  {
    v5 = v3[2];
    (**v4)(*a2);
    v3 = (*(*v5 + 40))(v5, v4);
    *a2 = 0;
  }

  v6 = *(*re::globalAllocators(v3)[2] + 40);

  return v6();
}

uint64_t re::PhysicsMaterialAssetLoader::introspectionType(re::PhysicsMaterialAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE199708, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199708))
  {
    qword_1EE199700 = re::internal::getOrCreateInfo("PhysicsMaterialAsset", re::allocInfo_PhysicsMaterialAsset, re::initInfo_PhysicsMaterialAsset, &unk_1EE1996B0, 0);
    __cxa_guard_release(&qword_1EE199708);
  }

  return qword_1EE199700;
}

void *re::PhysicsMaterialAssetLoader::allocateSampleAsset(re::PhysicsMaterialAssetLoader *this, re::CollisionFactory *a2)
{
  v2 = re::PhysicsFactory::defaultFactory(this, a2);
  v3 = (*(*v2 + 16))(v2, re::PhysicsFactory::m_defaultAllocator, 0.1, 0.5, 0.5);
  v4 = re::globalAllocators(v3);
  v5 = v4[2];
  v6 = re::globalAllocators(v4);
  v7 = (*(*v6[2] + 32))(v6[2], 16, 8);
  re::PhysicsMaterial::createGenericMaterial(v3, v5);
  *v7 = v8;
  v7[1] = v3;
  return v7;
}

uint64_t re::PhysicsMaterialAssetLoader::unloadAsset(re::PhysicsMaterialAssetLoader *this, void *a2)
{
  v3 = re::globalAllocators(this);
  v4 = v3[2];
  v5 = *a2;
  if (*a2)
  {
    (**v5)(*a2);
    v3 = (*(*v4 + 40))(v4, v5);
    *a2 = 0;
  }

  v6 = a2[1];
  if (v6)
  {
    (**v6)(a2[1]);
    v3 = (*(*v4 + 40))(v4, v6);
    a2[1] = 0;
  }

  v7 = *(*re::globalAllocators(v3)[2] + 40);

  return v7();
}

uint64_t re::PhysicsMaterialAssetLoader::registerAsset(re::PhysicsMaterialAssetLoader *this, float **a2, const re::ExistingAssetInformation *a3)
{
  if (!a2[1])
  {
    v4 = re::globalAllocators(this);
    v5 = v4[2];
    v6 = *a2;
    v8 = re::PhysicsFactory::defaultFactory(v4, v7);
    a2[1] = (*(*v8 + 16))(v8, v5, v6[2], v6[3], v6[4]);
  }

  return 0;
}

uint64_t re::IndexedTriangleMeshAssetLoader::introspectionType(re::IndexedTriangleMeshAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE199718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199718))
  {
    qword_1EE199710 = re::internal::getOrCreateInfo("IndexedTriangleMeshAsset", re::allocInfo_IndexedTriangleMeshAsset, re::initInfo_IndexedTriangleMeshAsset, &unk_1EE1996D0, 0);
    __cxa_guard_release(&qword_1EE199718);
  }

  return qword_1EE199710;
}

uint64_t re::IndexedTriangleMeshAssetLoader::unloadAsset(re::IndexedTriangleMeshAssetLoader *this, uint64_t **a2)
{
  v3 = re::globalAllocators(this);
  v4 = v3[2];
  v5 = *a2;
  if (*a2)
  {
    re::FixedArray<CoreIKTransform>::deinit(v5 + 6);
    re::FixedArray<CoreIKTransform>::deinit(v5 + 3);
    re::FixedArray<CoreIKTransform>::deinit(v5);
    v3 = (*(*v4 + 40))(v4, v5);
    *a2 = 0;
  }

  v6 = a2[1];
  if (v6)
  {
    (**v6)(a2[1]);
    v3 = (*(*v4 + 40))(v4, v6);
    a2[1] = 0;
  }

  v7 = *(*re::globalAllocators(v3)[2] + 40);

  return v7();
}

uint64_t re::IndexedTriangleMeshAssetLoader::createRuntimeData(re *a1, uint64_t *a2)
{
  if (!a2[1])
  {
    v3 = re::globalAllocators(a1);
    a2[1] = re::convertFromSerializable(*a2, v3[2]);
  }

  return 1;
}

uint64_t *re::IndexedTriangleMeshAssetLoader::allocateSampleAsset(re::IndexedTriangleMeshAssetLoader *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v10[0] = xmmword_1E3062430;
  v10[1] = unk_1E3062440;
  v10[2] = xmmword_1E3062450;
  v10[3] = unk_1E3062460;
  v8 = 0x3000300010000;
  v9 = 131073;
  v7 = 1;
  v1 = re::globalAllocators(this)[2];
  {
    re::initCollision(0);
  }

  v3 = (*(*v2 + 152))(v2, v1, v10, 4, 16, &v8, 6, 1, &v7, 2, 1);
  v5 = re::convertToSerializable(v3, v1, v4);
  result = (*(*v1 + 32))(v1, 16, 8);
  *result = v5;
  result[1] = v3;
  return result;
}

void re::IndexedTriangleMeshAssetLoader::findDependencies(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
}

void re::IndexedTriangleMeshAssetLoader::internalFindAssetHandleFields(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
}

uint64_t re::Drawable::Drawable(uint64_t a1, id a2, uint64_t *a3, uint64_t a4, void *a5, int a6)
{
  *a1 = a4;
  *(a1 + 8) = a6;
  *(a1 + 16) = a2;
  v9 = *a3;
  *(a1 + 56) = 0;
  v10 = (a1 + 56);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v9;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  if (*a5)
  {
    v11 = (a1 + 64);
    re::IOSurfaceWrapper::SharedEvent::createSharedEvent(&v17);
    if (v10 != &v17)
    {
      v12 = v17;
      v17 = 0;
      v13 = *v10;
      *v10 = v12;
    }

    re::IOSurfaceWrapper::SharedEventListener::createSharedEventListenerWithQueue(a5, &v17);
    if (v11 != &v17)
    {
      v14 = v17;
      v17 = 0;
      v15 = *v11;
      *v11 = v14;
    }
  }

  return a1;
}

void re::Drawable::~Drawable(re::Drawable *this)
{
  v2 = *(this + 7);
  *(this + 7) = 0;

  v3 = *(this + 8);
  *(this + 8) = 0;

  v4 = *(this + 2);
  if (v4)
  {

    *(this + 2) = 0;
  }
}

void re::DrawableQueue::present(re::DrawableQueue *this, re::Drawable *a2, int a3)
{
  re::LocklessRingBuffer::writerReleaseBuffer(*(this + 54), *(a2 + 2), a3);
  if (*(this + 46) == 1)
  {
    if (a3 && (v6 = *(this + 50)) != 0)
    {
      *(v6 + 7) = *(a2 + 2);
      v7 = *(this + 51);

      re::ecs2::NetworkComponent::markDirty(v7, v6);
    }

    else
    {
      atomic_load((*(*(this + 54) + 32) + 16 * *(a2 + 2) + 40));
      if (re::internal::enableSignposts(0, 0))
      {

        kdebug_trace();
      }
    }
  }
}

void re::DrawableQueue::checkAndGenerateMipmapsSynchronous(re::DrawableQueue *this, re::Drawable *a2)
{
  if (*(this + 45) == 1)
  {
    v3 = *(this + 7);
    v2 = (this + 56);
    if (v3)
    {
      re::mtl::CommandQueue::makeCommandBuffer(v2, &v15);
      re::DynamicString::format("DrawableQueue MipmapGenCommandBuffer-%p", buf, a2);
      if (v12)
      {
        v5 = *&v13[7];
      }

      else
      {
        v5 = v13;
      }

      re::ns::String::String(&v14, v5);
      [v15 setLabel:v14];

      if (*buf && (v12 & 1) != 0)
      {
        (*(**buf + 40))();
      }

      v6 = v15;
      v10 = v6;
      re::DrawableQueue::encodeMipmapsGenerationJob(v6, &v10, a2);

      [v15 commit];
      [v15 waitUntilCompleted];
      re::mtl::CommandBuffer::error(&v15, buf);
      v7 = *buf;

      if (v7)
      {
        v9 = *re::graphicsLogObjects(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to generate mip-maps for the drawable texture!", buf, 2u);
        }
      }
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) CommandQueue is not initialized!", "m_sharedCommandQueue.isValid()", "checkAndGenerateMipmapsSynchronous", 558);
      _os_crash();
      __break(1u);
    }
  }
}

void re::Drawable::reclaimFromClient(re::Drawable *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 432);
  v2 = *(this + 2);
  v3 = atomic_load((*(v1 + 32) + 16 * v2 + 32));
  if (v3 == 1)
  {
    v4 = (*(v1 + 32) + 16 * v2 + 32);
    v5 = 1;
    atomic_compare_exchange_strong(v4, &v5, 0);
    if (v5 == 1)
    {
      v7 = *re::graphicsLogObjects(this);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(this + 2);
        v9[0] = 67109120;
        v9[1] = v8;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Reclaimed drawable with idx: %d which was in writing state. This is unsafe. Make sure to present the acquired drawable before it goes out of scope", v9, 8u);
      }
    }
  }
}

uint64_t re::DrawableQueue::DrawableQueue(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v8 + 16) = a4;
  *v8 = &unk_1F5CC8608;
  v9 = *a2;
  *(v8 + 40) = *(a2 + 2);
  *(v8 + 24) = v9;
  objc_initWeak((v8 + 48), 0);
  v10 = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a3;
  do
  {
    v11 = a1 + v10;
    *(v11 + 72) = 0;
    *(v11 + 80) = -1;
    *(v11 + 88) = 0;
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
    *(v11 + 120) = 0;
    v10 += 72;
    *(v11 + 128) = 0;
    *(v11 + 136) = 0;
  }

  while (v10 != 216);
  *(a1 + 292) = 256;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = -1;
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0xFFFFFFFFLL;
  *(a1 + 384) = 0;
  *(a1 + 392) = -1;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 425) = 0u;
  v12 = *(a3 + 208);
  v59[0] = v12;
  if (*(a2 + 22) == 1 && ([v12 supportsSharedTextureHandles] & 1) == 0)
  {
LABEL_48:
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) ", "!descriptor.shareable || device.supportsSharedTextureHandles()", "DrawableQueue", 97);
    _os_crash();
    __break(1u);
LABEL_49:
    __error();
    v44 = __error();
    re::internal::assertLog(5, v45, "assertion failure: '%s' (%s:line %i) Failed to mmap for DrawableQueue: %{errno}d", "region != ((void *)-1)", "DrawableQueue", 152, *v44);
    _os_crash();
    __break(1u);
    goto LABEL_50;
  }

  *(a1 + 293) = re::mtl::Device::isPhysicalHardware(v59);
  v14 = a2[3];
  v15 = a2[2];
  v57 = v15;
  v58 = v14;
  v56 = 0;
  v48 = 2;
  TextureCompressionType = re::mtl::getTextureCompressionType(v59, &v56, &v57, &v58, &v48);
  v17 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  if (([v17 respondsToSelector_] & 1) != 0 || objc_msgSend(v17, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v17 setCompressionType_];
  }

  [v17 setWidth_];
  [v17 setHeight_];
  [v17 setPixelFormat_];
  if (*(a2 + 20) == 1)
  {
    v18 = 32 - __clz(*a2);
    v19 = 32 - __clz(a2[1]);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }
  }

  else
  {
    v20 = 1;
  }

  [v17 setMipmapLevelCount_];
  [v17 setUsage_];
  [v17 setStorageMode_];
  v21 = a2[4];
  if (v21 == 0xFFFF)
  {
    v21 = 0;
  }

  [v17 setResourceOptions_];
  v22 = 0;
  for (i = 0; i != 3; ++i)
  {
    v54 = 0;
    v55 = 0;
    if (*(a2 + 22) != 1)
    {
      re::mtl::Device::makeTexture(v17, v59, &v48);
      NS::SharedPtr<MTL::Texture>::operator=(&v55, &v48);
      v26 = v48;
      if (!v48)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    re::mtl::Device::makeSharedTexture(v17, v59, &v48);
    NS::SharedPtr<MTL::Texture>::operator=(&v55, &v48);
    if (v48)
    {
    }

    v24 = [v55 newSharedTextureHandle];
    v54 = [v24 ioSurface];
    if (v24)
    {
      v26 = v24;
LABEL_22:
    }

LABEL_23:
    v27 = v55;
    if (!v55)
    {
      re::internal::assertLog(4, v25, "assertion failure: '%s' (%s:line %i) ", "texture.isValid()", "DrawableQueue", 142);
      _os_crash();
      __break(1u);
      goto LABEL_48;
    }

    re::DynamicString::format("DrawableQueueTexture-%p-%d", &v48, a1, i);
    if (v49)
    {
      v28 = v50;
    }

    else
    {
      v28 = &v49 + 1;
    }

    [v27 setLabel_];
    if (v48 && (v49 & 1) != 0)
    {
      (*(*v48 + 40))();
    }

    v47 = 0;
    re::Drawable::Drawable(&v48, v55, &v54, a1, &v47, i);
    v29 = a1 + v22;
    *(v29 + 72) = v48;
    *(v29 + 80) = v49;
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + v22 + 88), &v50);
    *(v29 + 96) = v51[0];
    *(v29 + 105) = *(v51 + 9);
    re::ObjCObject::operator=((a1 + v22 + 128), &v52);
    re::ObjCObject::operator=((a1 + v22 + 136), &v53);
    re::Drawable::~Drawable(&v48);

    v30 = v55;
    if (v55)
    {
    }

    v22 += 72;
  }

  v31 = re::globalAllocators(v30);
  v32 = (*(*v31[2] + 32))(v31[2], 40, 8);
  v33 = re::LocklessRingBuffer::LocklessRingBuffer(v32);
  v34 = *(a1 + 432);
  *(a1 + 432) = v33;
  if (v34)
  {
  }

  if (*(a2 + 22))
  {
    v35 = mmap(0, 0x150uLL, 3, 4097, -1, 0);
    if (v35 == -1)
    {
      goto LABEL_49;
    }

    v36 = v35;
    *(a1 + 416) = v35;
    v37 = *(a1 + 432);
LABEL_41:
    re::LocklessRingBuffer::initializeIntoBuffer(v37, v36);
    atomic_store(1u, (*(*(a1 + 432) + 32) + 8));
    *(a1 + 294) = 1;
    if (dyld_program_sdk_at_least())
    {
      *(a1 + 296) = 0;
      if (!v17)
      {
        goto LABEL_46;
      }

LABEL_45:
    }

    else
    {
      *(a1 + 296) = 1;
      v42 = *(a3 + 56);
      v55 = 0;
      v46 = 0;
      re::Drawable::Drawable(&v48, *(v42 + 56), &v55, a1, &v46, 4);
      *(a1 + 304) = v48;
      *(a1 + 312) = v49;
      NS::SharedPtr<MTL::Buffer>::operator=((a1 + 320), &v50);
      *(a1 + 328) = v51[0];
      *(a1 + 337) = *(v51 + 9);
      re::ObjCObject::operator=((a1 + 360), &v52);
      re::ObjCObject::operator=((a1 + 368), &v53);
      re::Drawable::~Drawable(&v48);

      if (v17)
      {
        goto LABEL_45;
      }
    }

LABEL_46:

    return a1;
  }

  v38 = re::globalAllocators(v33);
  v39 = (*(*v38[2] + 32))(v38[2], 368, 16);
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0u;
  *(v39 + 48) = 0u;
  *(v39 + 64) = 0u;
  *(v39 + 80) = 0u;
  *(v39 + 96) = 0u;
  *(v39 + 112) = 0u;
  *(v39 + 128) = 0u;
  *(v39 + 144) = 0u;
  *(v39 + 160) = 0u;
  *(v39 + 176) = 0u;
  *(v39 + 192) = 0u;
  *(v39 + 208) = 0u;
  *(v39 + 224) = 0u;
  *(v39 + 240) = 0u;
  *(v39 + 256) = 0u;
  *(v39 + 272) = 0u;
  *(v39 + 288) = 0u;
  *(v39 + 304) = 0u;
  *(v39 + 320) = 0u;
  *(v39 + 336) = 0u;
  *(v39 + 352) = 0u;
  ArcSharedObject::ArcSharedObject(v39, 0);
  *v39 = &unk_1F5CC86B8;
  *(v39 + 44) = 0;
  v40 = *(a1 + 424);
  *(a1 + 424) = v39;
  if (!v40 || ((v40 + 8), (v39 = *(a1 + 424)) != 0))
  {
    v37 = *(a1 + 432);
    v36 = (v39 + 32);
    goto LABEL_41;
  }

LABEL_50:
  re::internal::assertLog(4, v41, "assertion failure: '%s' (%s:line %i) Failed to allocate memory for ring buffer", "m_localMem != nullptr", "DrawableQueue", 157);
  result = _os_crash();
  __break(1u);
  return result;
}

re::DrawableQueue *re::DrawableQueue::DrawableQueue(re::DrawableQueue *this, id *a2, id *a3, re::Allocator *a4)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  v8[2] = a4;
  *v8 = &unk_1F5CC8608;
  *(this + 6) = [*a2 width];
  *(this + 7) = [*a2 height];
  *(this + 8) = [*a2 pixelFormat];
  *(this + 36) = 0xFFFF00000000;
  *(this + 11) = 0x10000;
  objc_initWeak(this + 6, 0);
  v9 = 0;
  *(this + 7) = 0;
  *(this + 8) = a3;
  do
  {
    v10 = this + v9;
    *(v10 + 9) = 0;
    *(v10 + 20) = -1;
    *(v10 + 11) = 0;
    *(v10 + 13) = 0;
    *(v10 + 14) = 0;
    v10[120] = 0;
    v9 += 72;
    *(v10 + 16) = 0;
    *(v10 + 17) = 0;
  }

  while (v9 != 216);
  *(this + 73) = 256;
  *(this + 72) = 0;
  *(this + 296) = 0;
  *(this + 38) = 0;
  *(this + 78) = -1;
  *(this + 40) = 0;
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 352) = 0;
  *(this + 360) = 0u;
  *(this + 47) = 0xFFFFFFFFLL;
  *(this + 48) = 0;
  *(this + 98) = -1;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 425) = 0u;
  *(this + 293) = re::mtl::Device::isPhysicalHardware((a3 + 26));
  if (([a3[26] supportsSharedTextureHandles] & 1) == 0)
  {
LABEL_27:
    re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) ", "device.supportsSharedTextureHandles()", "DrawableQueue", 191);
    _os_crash();
    __break(1u);
LABEL_28:
    re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) ", "payload.drawableCount() == kQueueLength", "DrawableQueue", 192);
    _os_crash();
    __break(1u);
LABEL_29:
    re::internal::assertLog(4, v21, "assertion failure: '%s' (%s:line %i) ", "sharedSemaphore != 0", "DrawableQueue", 212);
    _os_crash();
    __break(1u);
LABEL_30:
    re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) Failed to map xpc_shmem for DrawableQueue", "m_sharedMem", "DrawableQueue", 215);
    _os_crash();
    __break(1u);
LABEL_31:
    v28 = __cxa_guard_acquire(&qword_1EE1999A8);
    if (v28)
    {
      re::Defaults::BOOLValue("allowSharingEyeTransformsViaDrawableQueue", v31, &v36);
      if (v36)
      {
        v32 = BYTE1(v36);
      }

      else
      {
        v32 = 0;
      }

      _MergedGlobals_93 = v32;
      __cxa_guard_release(&qword_1EE1999A8);
    }

    goto LABEL_22;
  }

  if (re::DrawableQueuePayload::drawableCount(a2) != 3)
  {
    goto LABEL_28;
  }

  v13 = 0;
  for (i = 0; i != 3; ++i)
  {
    v42[0] = 0;
    v36 = [a3[26] newSharedTextureWithHandle_];
    NS::SharedPtr<MTL::Texture>::operator=(v42, &v36);
    if (v36)
    {
    }

    if (!v42[0])
    {
      re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) ", "texture.isValid()", "DrawableQueue", 200);
      _os_crash();
      __break(1u);
LABEL_24:
      re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "texture->width() == m_descriptor.width", "DrawableQueue", 201);
      _os_crash();
      __break(1u);
LABEL_25:
      re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) ", "texture->height() == m_descriptor.height", "DrawableQueue", 202);
      _os_crash();
      __break(1u);
LABEL_26:
      re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) ", "texture->pixelFormat() == (MTL::PixelFormat)m_descriptor.pixelFormat", "DrawableQueue", 203);
      _os_crash();
      __break(1u);
      goto LABEL_27;
    }

    if ([v42[0] width] != *(this + 6))
    {
      goto LABEL_24;
    }

    if ([v42[0] height] != *(this + 7))
    {
      goto LABEL_25;
    }

    if ([v42[0] pixelFormat] != *(this + 8))
    {
      goto LABEL_26;
    }

    v34 = 0;
    v35 = 0;
    re::Drawable::Drawable(&v36, v42[0], &v35, this, &v34, i);
    v19 = this + v13;
    *(v19 + 9) = v36;
    *(v19 + 20) = v37;
    NS::SharedPtr<MTL::Buffer>::operator=((this + v13 + 88), &v38);
    *(v19 + 6) = v39[0];
    *(v19 + 105) = *(v39 + 9);
    re::ObjCObject::operator=((this + v13 + 128), &v40);
    re::ObjCObject::operator=((this + v13 + 136), &v41);
    re::Drawable::~Drawable(&v36);

    if (v42[0])
    {
    }

    v13 += 72;
  }

  v20 = [*a2 machSemaphore];
  if (!v20)
  {
    goto LABEL_29;
  }

  v22 = v20;
  v23 = re::DrawableQueuePayload::mapQueueStateShmem(a2);
  *(this + 52) = v23;
  if (!v23)
  {
    goto LABEL_30;
  }

  v25 = re::globalAllocators(v23);
  v26 = (*(*v25[2] + 32))(v25[2], 40, 8);
  ArcSharedObject::ArcSharedObject(v26, 0);
  *v26 = &unk_1F5CC67B0;
  *(v26 + 24) = v22;
  *(v26 + 32) = 0;
  v27 = *(this + 54);
  *(this + 54) = v26;
  if (v27)
  {

    v26 = *(this + 54);
  }

  *(v26 + 32) = *(this + 52);
  *(this + 295) = 1;
  v28 = [*a2 allowPixelFormatConversion];
  *(this + 296) = v28;
  if (v28)
  {
    v29 = a3[7];
    v42[0] = 0;
    v33 = 0;
    re::Drawable::Drawable(&v36, v29[7], v42, this, &v33, 4);
    *(this + 38) = v36;
    *(this + 78) = v37;
    NS::SharedPtr<MTL::Buffer>::operator=(this + 40, &v38);
    *(this + 328) = v39[0];
    *(this + 337) = *(v39 + 9);
    re::ObjCObject::operator=(this + 45, &v40);
    re::ObjCObject::operator=(this + 46, &v41);
    re::Drawable::~Drawable(&v36);
  }

  if ((atomic_load_explicit(&qword_1EE1999A8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_22:
  *(this + 440) = (*re::AppleBuild::get(v28) == 1) & _MergedGlobals_93;
  return this;
}

int *re::AppleBuild::get(re::AppleBuild *this)
{
  {
    re::AppleBuild::get(void)::build = 0;
    re::AppleBuild::determineBuildType(&re::AppleBuild::get(void)::build);
  }

  return &re::AppleBuild::get(void)::build;
}

void re::DrawableQueue::~DrawableQueue(re::DrawableQueue *this)
{
  v13 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CC8608;
  if (*(this + 294) == 1)
  {
    atomic_store(0, (*(*(this + 54) + 32) + 8));
    *(this + 294) = 0;
  }

  v2 = *(this + 54);
  if (v2)
  {

    *(this + 54) = 0;
  }

  v3 = *(this + 53);
  if (v3)
  {

    *(this + 53) = 0;
  }

  v4 = *(this + 52);
  if (v4)
  {
    v5 = munmap(v4, 0x150uLL);
    if (v5)
    {
      v6 = *re::graphicsLogObjects(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v11 = *__error();
        v12[0] = 67109120;
        v12[1] = v11;
        _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Failed to munmap shmem for DrawableQueue: %{errno}d", v12, 8u);
      }
    }

    *(this + 52) = 0;
  }

  v7 = *(this + 54);
  if (v7)
  {

    *(this + 54) = 0;
  }

  v8 = *(this + 53);
  if (v8)
  {

    *(this + 53) = 0;
  }

  v9 = *(this + 51);
  if (v9)
  {

    *(this + 51) = 0;
  }

  re::Drawable::~Drawable((this + 304));
  v10 = 216;
  do
  {
    re::Drawable::~Drawable((this + v10));
    v10 -= 72;
  }

  while (v10);

  objc_destroyWeak(this + 6);
  *(this + 6) = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::DrawableQueue::~DrawableQueue(this);

  JUMPOUT(0x1E6906520);
}

void re::DrawableQueue::setActiveRealityRendererScene(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  *(a1 + 376) = a2;
  v4 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134218240;
    v6 = a2;
    v7 = 2048;
    v8 = a1;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "DrawableQueue::setActiveRealityRendererScene %llu for drawableQueue instance %p", &v5, 0x16u);
  }

  if ((*(a1 + 294) & 1) == 0)
  {
    atomic_store(1u, (*(*(a1 + 432) + 32) + 8));
    *(a1 + 294) = 1;
  }
}

BOOL re::DrawableQueue::shouldPerformUpdate(uint64_t a1, uint64_t a2, int a3)
{
  if (((*(a1 + 295) & 1) != 0 || (*(a1 + 46) == 1 ? (v3 = a3 == 0) : (v3 = 0), !v3)) && *(a1 + 294) == 1 && *(a1 + 376) == a2 && *(a1 + 378) == WORD1(a2))
  {
    return ((*(a1 + 380) ^ HIDWORD(a2)) & 0xFFFFFF) == 0;
  }

  else
  {
    return 0;
  }
}

void re::DrawableQueue::afterFrameUpdate(re::DrawableQueue *this)
{
  v2 = *(re::RenderFrameBox::get((*(*(this + 8) + 112) + 328), 0xFFFFFFFFFFFFFFFuLL) + 384) & 0xFFFFFFFFFFFFFFFLL;
  os_unfair_lock_lock(this + 72);
  v3 = 0;
  v4 = this + 120;
  do
  {
    if (*v4 != 1)
    {
      goto LABEL_7;
    }

    if (*(v4 - 1))
    {
      if ((v2 - *(v4 - 2)) < 2)
      {
        goto LABEL_7;
      }

      *(v4 - 1) = 0;
    }

    *v4 = 0;
    re::LocklessRingBuffer::readerReleaseBuffer(*(this + 54), v3);
LABEL_7:
    ++v3;
    v4 += 72;
  }

  while (v3 != 3);
  os_unfair_lock_unlock(this + 72);
  if (*(this + 440))
  {
    WeakRetained = objc_loadWeakRetained(this + 6);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v7 = WeakRetained - 8;
      v8 = atomic_load((*(*(this + 54) + 32) + 12));
      v9 = v8 ^ 1;
      re::ecs2::CustomMatrixCameraComponent::localEyePoseMatrix(WeakRetained - 8, 1, &v18);
      v10 = v19;
      v11 = v20;
      v12 = v21;
      v13 = (*(*(this + 54) + 32) + (v9 << 7));
      v13[5] = v18;
      v13[6] = v10;
      v13[7] = v11;
      v13[8] = v12;
      re::ecs2::CustomMatrixCameraComponent::localEyePoseMatrix(v7, 2, &v18);
      v14 = v19;
      v15 = v20;
      v16 = v21;
      v17 = (*(*(this + 54) + 32) + (v9 << 7));
      v17[9] = v18;
      v17[10] = v14;
      v17[11] = v15;
      v17[12] = v16;
      atomic_store(v9, (*(*(this + 54) + 32) + 12));
    }
  }
}

uint64_t re::DrawableQueue::latestPresentableDrawable(re::DrawableQueue *this, re::RenderFrame *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(this + 295);
  v5 = *(this + 54);
  if (v4 == 1)
  {
    v6 = re::LocklessRingBuffer::readerAcquireBuffer(v5);
  }

  else
  {
    v6 = re::LocklessRingBuffer::readerAcquireAnyWrittenBuffer(v5);
  }

  v7 = v6;
  v8 = *(re::RenderFrameBox::get((*(*(this + 8) + 112) + 328), 0xFFFFFFFFFFFFFFFuLL) + 384) & 0xFFFFFFFFFFFFFFFLL;
  if (v7 > 2)
  {
    if ((*(this + 98) & 0x80000000) == 0)
    {
      os_unfair_lock_lock(this + 72);
      v7 = *(this + 98);
      v10 = this + 72 * v7;
      v11 = *(v10 + 14) + 1;
      *(v10 + 13) = v8;
      *(v10 + 14) = v11;
      os_unfair_lock_unlock(this + 72);
    }
  }

  else
  {
    os_unfair_lock_lock(this + 72);
    v9 = this + 72 * v7;
    v9[120] = 1;
    *(v9 + 13) = v8;
    *(v9 + 14) = 1;
    *(this + 98) = v7;
    os_unfair_lock_unlock(this + 72);
    re::LocklessRingBuffer::readerReleaseAnyWrittenBuffer(*(this + 54));
  }

  if (*(this + 98) == -1)
  {
    if (*(this + 296) == 1 && (*(this + 292) & 1) == 0)
    {
      *(this + 292) = 1;
      return this + 304;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v12 = atomic_load((*(*(this + 54) + 32) + 16 * v7 + 40));
    if (re::internal::enableSignposts(0, 0))
    {
      kdebug_trace();
    }

    if (v12 == *(this + 48))
    {
      v13 = 0;
    }

    else
    {
      *(this + 48) = v12;
      v13 = 1;
    }

    *(this + 292) = v13;
    v17 = re::globalAllocators(this + 8)[2];
    v15 = (*(*v17 + 32))(v17, 32, 0);
    *v15 = &unk_1F5CC8650;
    *(v15 + 8) = this;
    *(v15 + 16) = v8;
    *(v15 + 24) = v7;
    v18 = v15;
    re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::add((a2 + 4096), v16);
    re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v16);
    return this + 72 * *(this + 98) + 72;
  }
}

uint64_t re::DrawableQueue::nextDrawable(uint64_t a1, uint64_t a2)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (*a2 == 1)
  {
    v4 = *(a2 + 4);
    v5 = 1;
  }

  else
  {
    v4 = 0.0;
    v5 = 0;
  }

  v6 = re::LocklessRingBuffer::writerAcquireBuffer(*(a1 + 432), *&v4, v5);
  v7 = re::internal::enableSignposts(0, 0);
  if (v6 < 3)
  {
    if (v7)
    {
      kdebug_trace();
    }

    return a1 + 72 * v6 + 72;
  }

  else
  {
    if (v7)
    {
      kdebug_trace();
    }

    return 0;
  }
}

void re::DrawableQueue::makeSharedResourcePayload(re::DrawableQueue *this@<X0>, REDrawableQueuePayload **a2@<X8>)
{
  v10[3] = *MEMORY[0x1E69E9840];
  if (([*(*(this + 8) + 208) supportsSharedTextureHandles] & 1) == 0)
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "m_renderManager.renderDevice().supportsSharedTextureHandles()", "makeSharedResourcePayload", 532);
    _os_crash();
    __break(1u);
  }

  v5 = 0;
  memset(v10, 0, 24);
  v6 = (this + 88);
  do
  {
    v9 = [*v6 newSharedTextureHandle];
    NS::SharedPtr<MTL::Texture>::operator=(&v10[v5], &v9);
    if (v9)
    {
    }

    ++v5;
    v6 += 9;
  }

  while (v5 != 3);
  re::DrawableQueuePayload::make(*(this + 6), *(this + 7), *(this + 8), v10, 3, *(this + 296), *(*(this + 54) + 24), *(this + 52), a2);
  for (i = 2; i != -1; --i)
  {
    v8 = v10[i];
    if (v8)
    {

      v10[i] = 0;
    }
  }
}

void re::DrawableQueue::encodeMipmapsGenerationJob(uint64_t a1, id *a2, uint64_t a3)
{
  re::mtl::CommandBuffer::makeBlitCommandEncoder(a2, &v9);
  re::DynamicString::format("DrawableQueue MipmapGenEncoder-%p", &v5, a3);
  if (v6)
  {
    v4 = *&v7[7];
  }

  else
  {
    v4 = v7;
  }

  re::ns::String::String(&v8, v4);
  [v9 setLabel:v8];

  if (v5 && (v6 & 1) != 0)
  {
    (*(*v5 + 40))();
  }

  re::mtl::BlitCommandEncoder::generateMipmaps(&v9, *(a3 + 16));
  [v9 endEncoding];
}

id re::DrawableQueue::getLatestReadableUnSynchronizedMetalTexture@<X0>(re::LocklessRingBuffer **this@<X0>, uint64_t a2@<X8>)
{
  result = re::LocklessRingBuffer::getLatestReadableBufferIndex(this[54]);
  if (result <= 3)
  {
    result = this[9 * result + 11];
    *(a2 + 8) = result;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void re::AppleBuild::determineBuildType(re::AppleBuild *this)
{
  memset(&__p, 0, sizeof(__p));
  if (os_variant_has_internal_diagnostics())
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  std::string::append[abi:nn200100]<char const*,0>(&__p, "/AppleInternal", "");
  std::__fs::filesystem::__status(&__p, 0);
  if (v5)
  {
    v3 = v5 == 255;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    ++v2;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v2 >= 2)
  {
    *this = 1;
  }
}

std::string *std::string::append[abi:nn200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = HIBYTE(v10);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v7 = 22;
    LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    v9 = this;
  }

  if (v9 > __src || (&v9->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v7 - size < v6)
    {
      std::string::__grow_by(this, v7, size + v6 - v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v13 = this;
    if ((v8 & 0x80) != 0)
    {
      v13 = this->__r_.__value_.__r.__words[0];
    }

    v14 = v13 + size;
    memmove(v13 + size, __src, v6);
    v14[v6] = 0;
    v15 = size + v6;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:nn200100]<char const*,char const*>(__p, __src, a3, v6);
    if ((v18 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v12 = v18;
    }

    else
    {
      v12 = __p[1];
    }

    std::string::append(this, v11, v12);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

_BYTE *std::string::__init_with_size[abi:nn200100]<char const*,char const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

uint64_t re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 32) = 0;
  result = re::FunctionBase<24ul,void ()(re::FrameCount const&)>::operator=<24ul>(v5, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::setCapacity(v5, a2);
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
        v10 = 40 * v9;
        v11 = v7;
        do
        {
          *(v11 + 24) = *(v8 + 24);
          *(v11 + 32) = 0;
          re::FunctionBase<24ul,void ()(re::FrameCount const&)>::operator=<24ul>(v11, v8);
          re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v8);
          v8 += 40;
          v11 += 40;
          v10 -= 40;
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

uint64_t re::FunctionBase<24ul,void ()(re::FrameCount const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        v7 = a1;
        if (v6 >= 0x19)
        {
          v8 = v6;
          v9 = *(a1 + 24);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 32) = v7;
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 32) = v4;
      *(a2 + 32) = 0;
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(uint64_t a1))(void)
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

void re::internal::Callable<re::DrawableQueue::latestPresentableDrawable(re::RenderFrame *)::$_0,void ()(re::FrameCount const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  os_unfair_lock_lock((v2 + 288));
  v3 = *(a1 + 24);
  v4 = v2 + 72 + 72 * v3;
  v5 = *(v4 + 40) - 1;
  *(v4 + 40) = v5;
  if (!v5 && *(v2 + 392) != v3)
  {
    *(v2 + 72 + 72 * v3 + 48) = 0;
    re::LocklessRingBuffer::readerReleaseBuffer(*(v2 + 432), v3);
  }

  os_unfair_lock_unlock((v2 + 288));
  atomic_load((*(*(v2 + 432) + 32) + 16 * *(a1 + 24) + 40));
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }
}

uint64_t re::internal::Callable<re::DrawableQueue::latestPresentableDrawable(re::RenderFrame *)::$_0,void ()(re::FrameCount const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC8650;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::DrawableQueue::latestPresentableDrawable(re::RenderFrame *)::$_0,void ()(re::FrameCount const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC8650;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

void re::DrawableQueue::LocalRingBuffer::~LocalRingBuffer(re::DrawableQueue::LocalRingBuffer *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SMAssetStateCommand::getIntParameter(re::SMAssetStateCommand *this, const re::StringID *a2, uint64_t *a3)
{
  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  for (i = *(this + 4); !re::StringID::operator==(i, a2) || v7 >= *(this + 7); i += 2)
  {
    if (v3 == ++v7)
    {
      return 0;
    }
  }

  *a3 = *(*(this + 9) + 8 * v7);
  return 1;
}

uint64_t re::SMAssetStateCommand::getFloatParameter(re::SMAssetStateCommand *this, const re::StringID *a2, float *a3)
{
  v3 = *(this + 12);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  for (i = *(this + 14); !re::StringID::operator==(i, a2) || v7 >= *(this + 17); i += 2)
  {
    if (v3 == ++v7)
    {
      return 0;
    }
  }

  *a3 = *(*(this + 19) + 4 * v7);
  return 1;
}

uint64_t re::SMAssetStateCommand::getDoubleParameter(re::SMAssetStateCommand *this, const re::StringID *a2, double *a3)
{
  v3 = *(this + 22);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  for (i = *(this + 24); !re::StringID::operator==(i, a2) || v7 >= *(this + 27); i += 2)
  {
    if (v3 == ++v7)
    {
      return 0;
    }
  }

  *a3 = *(*(this + 29) + 8 * v7);
  return 1;
}

uint64_t re::SMAssetStateCommand::getBoolParameter(re::SMAssetStateCommand *this, const re::StringID *a2, BOOL *a3)
{
  v3 = *(this + 32);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  for (i = *(this + 34); !re::StringID::operator==(i, a2) || v7 >= *(this + 37); i += 2)
  {
    if (v3 == ++v7)
    {
      return 0;
    }
  }

  *a3 = *(*(this + 39) + v7);
  return 1;
}

uint64_t re::SMAssetStateCommand::getStringParameter(re::SMAssetStateCommand *this, const re::StringID *a2)
{
  v2 = *(this + 42);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  for (i = *(this + 44); !re::StringID::operator==(i, a2); i += 2)
  {
    ++v6;
    v5 -= 16;
    if (v2 == v6)
    {
      return 0;
    }
  }

  if (v6 < *(this + 47))
  {
    return *(this + 49) - v5;
  }

  else
  {
    return 0;
  }
}

uint64_t *re::StateMachineAsset::assetType(re::StateMachineAsset *this)
{
  {
    re::StateMachineAsset::assetType(void)::type = "StateMachine";
    qword_1EE1C6E10 = 0;
    re::AssetType::generateCompiledExtension(&re::StateMachineAsset::assetType(void)::type);
  }

  return &re::StateMachineAsset::assetType(void)::type;
}

re *re::StateMachineAsset::initWithInitData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a2[2];
  re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a1, v6);
  ++*(a1 + 24);
  v7 = re::DynamicArray<re::StateMachineInitializationData>::operator=(a1, a2);
  v8 = *(a3 + 8);
  v10 = *(a3 + 8);
  if (v10)
  {
    v11 = *(a3 + 16);
    v12 = v11 + 40 * v10;
    do
    {
      v13 = *(v11 + 16);
      if (v13)
      {
        v14 = *(v11 + 32);
        v15 = 8 * v13;
        do
        {
          if (!*(a1 + 88))
          {
            memset(v23, 0, sizeof(v23));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v16 = *v14++;
          v17 = *(a1 + 96);
          v18 = re::globalAllocators(result);
          v19 = (*(*v18[2] + 32))(v18[2], 72, 8);
          *v19 = &unk_1F5CC8878;
          v20 = *(v16 + 8);
          *(v19 + 8) = *(v19 + 8) & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
          *(v19 + 8) = *(v16 + 8) & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
          *(v19 + 16) = *(v16 + 16);
          *(v16 + 8) = 0;
          *(v16 + 16) = &str_67;
          *(v19 + 56) = 0;
          *(v19 + 48) = 0;
          *(v19 + 32) = 0;
          *(v19 + 40) = 0;
          *(v19 + 24) = 0;
          *(v19 + 24) = *(v16 + 24);
          *(v16 + 24) = 0;
          *(v19 + 32) = *(v16 + 32);
          *(v16 + 32) = 0;
          v21 = *(v19 + 40);
          *(v19 + 40) = *(v16 + 40);
          *(v16 + 40) = v21;
          v22 = *(v19 + 56);
          *(v19 + 56) = *(v16 + 56);
          *(v16 + 56) = v22;
          ++*(v16 + 48);
          ++*(v19 + 48);
          *(v19 + 64) = *(v16 + 64);
          *&v23[0] = v19;
          result = re::DynamicArray<re::TransitionCondition *>::add(v17, v23);
          v15 -= 8;
        }

        while (v15);
      }

      v11 += 40;
    }

    while (v11 != v12);
  }

  return result;
}

uint64_t re::DynamicArray<re::StateMachineInitializationData>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::StateMachineInitializationData>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::StateMachineInitializationData>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::StateMachineInitializationData>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::StateMachineAsset::initWithInitData(_anonymous_namespace_ *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a2[2];
  re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a1, v6);
  ++*(a1 + 6);
  re::DynamicArray<re::StateMachineInitializationData>::operator=(a1, a2);
  re::DynamicArray<re::SMAssetStateGraphGroup>::operator=(a1 + 40, a3);

  return re::StateMachineAsset::createRuntimeData(a1);
}

uint64_t re::DynamicArray<re::SMAssetStateGraphGroup>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::SMAssetStateGraphGroup>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::SMAssetStateGraphGroup>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::SMAssetStateGraphGroup>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::SMAssetStateGraphGroup>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::StateMachineAsset::createRuntimeData(void *this)
{
  v2 = this;
  v44 = *MEMORY[0x1E69E9840];
  if (!this[2] || !this[11])
  {
    v3 = this[7];
    if (v2[7])
    {
      v4 = 0;
      do
      {
        v5 = v2[9] + 40 * v4;
        v6 = *(v5 + 16);
        if (v6)
        {
          v7 = *(v5 + 32);
          v28 = v2[9] + 40 * v4;
          v29 = v7 + 168 * v6;
          do
          {
            v8 = re::globalAllocators(this);
            v9 = (*(*v8[2] + 32))(v8[2], 72, 8);
            *v9 = &unk_1F5CC8878;
            this = re::StringID::StringID((v9 + 8), (v7 + 40));
            *(v9 + 24) = 0;
            *(v9 + 48) = 0;
            *(v9 + 32) = 0;
            *(v9 + 40) = 0;
            *(v9 + 56) = 0;
            *(v9 + 64) = 0;
            if (*(v7 + 56) == 1)
            {
              v10 = re::globalAllocators(this);
              v1 = (*(*v10[2] + 32))(v10[2], 112, 8);
              *v1 = &unk_1F5CC88A8;
              *(v1 + 8) = 0;
              *(v1 + 16) = 0;
              *(v1 + 24) = 0;
              *(v1 + 32) = 0;
              *(v1 + 80) = 0;
              *(v1 + 40) = 0u;
              *(v1 + 56) = 0u;
              *(v1 + 72) = 0;
              re::StringID::StringID((v1 + 88), (v7 + 144));
              *(v1 + 104) = 0;
              v11 = *(v7 + 160);
              if (v11 >= 0.0)
              {
                *(v1 + 104) = v11;
              }

              this = re::StateGraph::addAnyState(v9, v1);
            }

            v12 = *(v7 + 16);
            if (v12)
            {
              v1 = *(v7 + 32);
              v13 = v1 + 104 * v12;
              do
              {
                re::DynamicArray<re::SMAssetStateTransition>::DynamicArray(&v30, v1);
                re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(&v32 + 8, (v1 + 40));
                v14 = re::StringID::StringID(&v35, (v1 + 80));
                v36 = *(v1 + 96);
                v15 = re::globalAllocators(v14);
                v16 = (*(*v15[2] + 32))(v15[2], 112, 8);
                *v16 = &unk_1F5CC88A8;
                *(v16 + 8) = 0;
                *(v16 + 16) = 0;
                *(v16 + 24) = 0;
                *(v16 + 32) = 0;
                *(v16 + 80) = 0;
                *(v16 + 40) = 0u;
                *(v16 + 56) = 0u;
                *(v16 + 72) = 0;
                re::StringID::StringID((v16 + 88), &v35);
                *(v16 + 104) = 0;
                if (v36 >= 0.0)
                {
                  *(v16 + 104) = v36;
                }

                *v37 = v16;
                v17 = re::DynamicArray<re::TransitionCondition *>::add((v9 + 24), v37);
                if (*&v35.var0)
                {
                  if (*&v35.var0)
                  {
                  }
                }

                *&v35.var0 = 0;
                v35.var1 = &str_67;
                re::DynamicArray<re::SMAssetStateCommand>::deinit(&v32 + 1);
                this = re::DynamicArray<re::SMAssetStateTransition>::deinit(&v30);
                v1 += 104;
              }

              while (v1 != v13);
            }

            v18 = v2[11];
            if (v18 <= v4)
            {
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v30 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v37 = 136315906;
              *&v37[4] = "operator[]";
              v38 = 1024;
              v39 = 468;
              v40 = 2048;
              v41 = v4;
              v42 = 2048;
              v43 = v18;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_39;
            }

            v19 = v2[12] + 40 * v4;
            v20 = *(v19 + 16);
            if (v20 >= *(v19 + 8))
            {
              this = re::DynamicArray<float *>::growCapacity((v2[12] + 40 * v4), v20 + 1);
              v20 = *(v19 + 16);
            }

            *(*(v19 + 32) + 8 * v20) = v9;
            *(v19 + 16) = v20 + 1;
            ++*(v19 + 24);
            v7 += 168;
          }

          while (v7 != v29);
          if (*(v28 + 16))
          {
            v1 = 0;
            while (1)
            {
              v18 = v2[11];
              if (v18 <= v4)
              {
                break;
              }

              v21 = v2[12] + 40 * v4;
              v18 = *(v21 + 16);
              if (v18 <= v1)
              {
                goto LABEL_40;
              }

              v22 = *(v28 + 32) + 168 * v1;
              v23 = *(*(v21 + 32) + 8 * v1);
              if (*(v22 + 56) == 1)
              {
                this = re::StateMachineAsset::createStateTransitionsFromAssetData(v2, (v22 + 64), v23, v4);
              }

              v24 = *(v22 + 16);
              if (v24)
              {
                v25 = *(v22 + 32);
                v26 = v25 + 104 * v24;
                do
                {
                  re::DynamicArray<re::SMAssetStateTransition>::DynamicArray(&v30, v25);
                  re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(&v32 + 8, (v25 + 40));
                  re::StringID::StringID(&v35, (v25 + 80));
                  v36 = *(v25 + 96);
                  v27 = re::StateMachineAsset::createStateTransitionsFromAssetData(v2, &v30, v23, v4);
                  if (*&v35.var0)
                  {
                    if (*&v35.var0)
                    {
                    }
                  }

                  *&v35.var0 = 0;
                  v35.var1 = &str_67;
                  re::DynamicArray<re::SMAssetStateCommand>::deinit(&v32 + 1);
                  this = re::DynamicArray<re::SMAssetStateTransition>::deinit(&v30);
                  v25 += 104;
                }

                while (v25 != v26);
              }

              if (++v1 >= *(v28 + 16))
              {
                goto LABEL_36;
              }
            }

LABEL_39:
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v30 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v37 = 136315906;
            *&v37[4] = "operator[]";
            v38 = 1024;
            v39 = 468;
            v40 = 2048;
            v41 = v4;
            v42 = 2048;
            v43 = v18;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_40:
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v30 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v37 = 136315906;
            *&v37[4] = "operator[]";
            v38 = 1024;
            v39 = 789;
            v40 = 2048;
            v41 = v1;
            v42 = 2048;
            v43 = v18;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }
        }

LABEL_36:
        ++v4;
      }

      while (v4 < v2[7]);
    }
  }

  return this;
}

uint64_t re::StateMachineAsset::createStateTransitionsFromAssetData(uint64_t result, void *a2, re::StateGraph *a3, unint64_t a4)
{
  v4 = a2[2];
  if (v4)
  {
    v8 = result;
    v9 = a2[4];
    v10 = v9 + 96 * v4;
    do
    {
      if (*(v8 + 88) <= a4)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      result = re::StateGraph::createStateTransition(a3, *(v8 + 96) + 40 * a4, (a2 + 10), (v9 + 56), (v9 + 72), (v9 + 40), *(v9 + 92), *(v9 + 88));
      v11 = *(v9 + 16);
      if (v11)
      {
        v12 = *(v9 + 32);
        v13 = 40 * v11;
        do
        {
          v14 = *(v12 + 16);
          if (v14 > 2)
          {
            if (v14 == 3)
            {
              result = re::StateGraph::addBoolTransitionCondition(a3, (a2 + 10), (v9 + 40), v12, *(v12 + 37), *(v12 + 36));
            }

            else if (v14 == 4)
            {
              result = re::StateGraph::addTriggerTransitionCondition(a3, (a2 + 10), (v9 + 40), v12);
            }
          }

          else if (v14 == 1)
          {
            result = re::StateGraph::addIntTransitionCondition(a3, (a2 + 10), (v9 + 40), v12, *(v12 + 37), *(v12 + 24));
          }

          else if (v14 == 2)
          {
            result = re::StateGraph::addFloatTransitionCondition(a3, (a2 + 10), (v9 + 40), v12, *(v12 + 37), *(v12 + 32));
          }

          v12 += 40;
          v13 -= 40;
        }

        while (v13);
      }

      v9 += 96;
    }

    while (v9 != v10);
  }

  return result;
}

void *re::StateMachineAsset::getAllGraphs@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v3 = this[7];
  if (v3)
  {
    v4 = this;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    for (i = 0; i < v3; ++i)
    {
      v9 = v4[9] + 40 * i;
      v12 = *(v9 + 16);
      v11 = (v9 + 16);
      v10 = v12;
      if (v12)
      {
        v13 = 0;
        do
        {
          if (v4[11] <= i)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_23:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v14 = v4[12] + 40 * i;
          if (*(v14 + 16) <= v13)
          {
            goto LABEL_23;
          }

          v15 = *(*(v14 + 32) + 8 * v13);
          v16 = *(a2 + 8);
          if (v7 >= v16)
          {
            v17 = v7 + 1;
            if (v16 < v7 + 1)
            {
              if (*a2)
              {
                v18 = 2 * v16;
                if (!v16)
                {
                  v18 = 8;
                }

                if (v18 <= v17)
                {
                  v19 = v7 + 1;
                }

                else
                {
                  v19 = v18;
                }

                this = re::DynamicArray<float *>::setCapacity(a2, v19);
                v5 = *(a2 + 24);
              }

              else
              {
                this = re::DynamicArray<float *>::setCapacity(a2, v17);
                v5 = *(a2 + 24) + 1;
              }
            }

            v7 = *(a2 + 16);
            v6 = *(a2 + 32);
            v10 = *v11;
          }

          *(v6 + 8 * v7++) = v15;
          *(a2 + 16) = v7;
          *(a2 + 24) = ++v5;
          ++v13;
        }

        while (v13 < v10);
        v3 = v4[7];
      }
    }
  }

  return this;
}

uint64_t re::StateMachineAsset::deinit(re::StateMachineAsset *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = v3 + 40 * v2;
    do
    {
      v5 = *(v3 + 16);
      if (v5)
      {
        v6 = *(v3 + 32);
        v7 = 8 * v5;
        do
        {
          v8 = *v6++;
          re::internal::destroyPersistent<re::StateGraph>("deinit", 312, v8);
          v7 -= 8;
        }

        while (v7);
      }

      v3 += 40;
    }

    while (v3 != v4);
  }

  re::FixedArray<re::DynamicArray<re::RigHierarchyJointDescription>>::deinit(this + 10);
  re::DynamicArray<re::RenderGraphOutputData>::deinit(this);

  return re::DynamicArray<re::SMAssetStateGraphGroup>::deinit(this + 40);
}

re *re::internal::destroyPersistent<re::StateGraph>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::StateGraph::deinit(a3);
    re::DynamicArray<unsigned long>::deinit(a3 + 24);
    re::StringID::destroyString((a3 + 8));
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

re *re::internal::destroyPersistent<re::StateMachineAsset>(re *result, uint64_t a2, re::StateMachineAsset *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::StateMachineAsset::~StateMachineAsset(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::StateMachineAssetLoader::introspectionType(re::StateMachineAssetLoader *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::StateMachineAsset>(BOOL)::info = re::internal::getOrCreateInfo("StateMachineAsset", re::allocInfo_StateMachineAsset, re::initInfo_StateMachineAsset, &re::internal::introspectionInfoStorage<re::StateMachineAsset>, 0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 326);
}

void *re::allocInfo_StateMachineInitializationData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1999B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1999B8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199E00, "StateMachineInitializationData");
    __cxa_guard_release(&qword_1EE1999B8);
  }

  return &unk_1EE199E00;
}

void re::initInfo_StateMachineInitializationData(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x8634B6D7058CB40;
  v19[1] = "StateMachineInitializationData";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1999C0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1999C0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "layerName";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE199AE8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::StringID>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "stateGraphName";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE199AF0 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::StringID>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "initialStateName";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x2000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE199AF8 = v17;
      __cxa_guard_release(&qword_1EE1999C0);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE199AE8;
  *(this + 9) = re::internal::defaultConstruct<re::StateMachineInitializationData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::StateMachineInitializationData>;
  *(this + 13) = re::internal::defaultConstructV2<re::StateMachineInitializationData>;
  *(this + 14) = re::internal::defaultDestructV2<re::StateMachineInitializationData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

void re::internal::defaultConstruct<re::StateMachineInitializationData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[2] = 0;
  a3[3] = &str_67;
  a3[4] = 0;
  a3[5] = &str_67;
}

void re::internal::defaultDestruct<re::StateMachineInitializationData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 32));
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::StateMachineInitializationData>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[2] = 0;
  result[3] = &str_67;
  result[4] = 0;
  result[5] = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::StateMachineInitializationData>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 32));
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_SMAssetTransitionCondition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1999D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1999D8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199E90, "SMAssetTransitionCondition");
    __cxa_guard_release(&qword_1EE1999D8);
  }

  return &unk_1EE199E90;
}

void re::initInfo_SMAssetTransitionCondition(re *this, re::IntrospectionBase *a2)
{
  v31[0] = 0xC3FB3DEF23D84D60;
  v31[1] = "SMAssetTransitionCondition";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE1999D0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1999D0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_TransitionConditionType(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "m_type";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x1000000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE199B40 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::StringID>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "m_parameterName";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 2;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE199B48 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_int64_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "m_intTestValue";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x1800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE199B50 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "m_floatTestValue";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x2000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE199B58 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_BOOL(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "m_BOOLTestValue";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x2400000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE199B60 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_StateTransitionConditionOperator(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "m_operator";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x2500000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE199B68 = v29;
      __cxa_guard_release(&qword_1EE1999D0);
    }
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000028;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE199B40;
  *(this + 9) = re::internal::defaultConstruct<re::SMAssetTransitionCondition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SMAssetTransitionCondition>;
  *(this + 13) = re::internal::defaultConstructV2<re::SMAssetTransitionCondition>;
  *(this + 14) = re::internal::defaultDestructV2<re::SMAssetTransitionCondition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v30 = v32;
}

void re::internal::defaultConstruct<re::SMAssetTransitionCondition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 30) = 0;
}

uint64_t re::internal::defaultConstructV2<re::SMAssetTransitionCondition>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 30) = 0;
  return result;
}

void re::IntrospectionInfo<re::DynamicArray<re::SMAssetTransitionCondition>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE199A98, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE199A98);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199BA0);
      qword_1EE199BA0 = &unk_1F5CC8900;
      __cxa_guard_release(&qword_1EE199A98);
    }
  }

  if ((_MergedGlobals_94 & 1) == 0)
  {
    v1 = qword_1EE1999E0;
    if (qword_1EE1999E0 || (v1 = re::allocInfo_SMAssetTransitionCondition(a1), qword_1EE1999E0 = v1, re::initInfo_SMAssetTransitionCondition(v1, v2), (_MergedGlobals_94 & 1) == 0))
    {
      _MergedGlobals_94 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE199BA0, 0);
      qword_1EE199BB0 = 0x2800000003;
      dword_1EE199BB8 = v3;
      word_1EE199BBC = 0;
      *&xmmword_1EE199BC0 = 0;
      *(&xmmword_1EE199BC0 + 1) = 0xFFFFFFFFLL;
      qword_1EE199BD0 = v1;
      qword_1EE199BD8 = 0;
      qword_1EE199BA0 = &unk_1F5CC8900;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE199BA0, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE199BC0 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::allocInfo_SMAssetStateTransition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1999F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1999F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199F20, "SMAssetStateTransition");
    __cxa_guard_release(&qword_1EE1999F0);
  }

  return &unk_1EE199F20;
}

void re::initInfo_SMAssetStateTransition(re *this, re::IntrospectionBase *a2)
{
  v29[0] = 0xEE3C36B22D66D260;
  v29[1] = "SMAssetStateTransition";
  if (v29[0])
  {
    if (v29[0])
    {
    }
  }

  *(this + 2) = v30;
  if ((atomic_load_explicit(&qword_1EE1999E8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1999E8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "m_name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x2800000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE199B70 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::StringID>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "m_toGraphName";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE199B78 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::StringID>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "m_toStateName";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x4800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE199B80 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "m_transitionTime";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x5800000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE199B88 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_StateTransitionInterruptionType(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "m_interruptionType";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x5C00000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE199B90 = v25;
      v26 = re::introspectionAllocator(v25);
      re::IntrospectionInfo<re::DynamicArray<re::SMAssetTransitionCondition>>::get(v26);
      v27 = (*(*v26 + 32))(v26, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "m_conditions";
      *(v27 + 16) = &qword_1EE199BA0;
      *(v27 + 24) = 0;
      *(v27 + 32) = 6;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE199B98 = v27;
      __cxa_guard_release(&qword_1EE1999E8);
    }
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE199B70;
  *(this + 9) = re::internal::defaultConstruct<re::SMAssetStateTransition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SMAssetStateTransition>;
  *(this + 13) = re::internal::defaultConstructV2<re::SMAssetStateTransition>;
  *(this + 14) = re::internal::defaultDestructV2<re::SMAssetStateTransition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v28 = v30;
}

void re::internal::defaultConstruct<re::SMAssetStateTransition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = &str_67;
  *(a3 + 56) = 0;
  *(a3 + 64) = &str_67;
  *(a3 + 72) = 0;
  *(a3 + 80) = &str_67;
  *(a3 + 88) = 0;
  *(a3 + 92) = 0;
}

uint64_t re::internal::defaultDestruct<re::SMAssetStateTransition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 72));
  re::StringID::destroyString((a3 + 56));
  re::StringID::destroyString((a3 + 40));

  return re::DynamicArray<re::SMAssetTransitionCondition>::deinit(a3);
}

uint64_t re::internal::defaultConstructV2<re::SMAssetStateTransition>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &str_67;
  *(result + 56) = 0;
  *(result + 64) = &str_67;
  *(result + 72) = 0;
  *(result + 80) = &str_67;
  *(result + 88) = 0;
  *(result + 92) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::SMAssetStateTransition>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 72));
  re::StringID::destroyString((a1 + 56));
  re::StringID::destroyString((a1 + 40));

  return re::DynamicArray<re::SMAssetTransitionCondition>::deinit(a1);
}

void re::IntrospectionInfo<re::DynamicArray<long long>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE199AA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199AA0))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199BE0);
    qword_1EE199BE0 = &unk_1F5CC8998;
    __cxa_guard_release(&qword_1EE199AA0);
  }

  if ((byte_1EE1999B1 & 1) == 0)
  {
    v2 = re::introspect_int64_t(1, a2);
    if ((byte_1EE1999B1 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1999B1 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE199BE0, 0);
      qword_1EE199BF0 = 0x2800000003;
      dword_1EE199BF8 = v4;
      word_1EE199BFC = 0;
      *&xmmword_1EE199C00 = 0;
      *(&xmmword_1EE199C00 + 1) = 0xFFFFFFFFLL;
      qword_1EE199C10 = v3;
      qword_1EE199C18 = 0;
      qword_1EE199BE0 = &unk_1F5CC8998;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE199BE0, &v14);
      if (v15)
      {
        v7 = *&v16[7];
      }

      else
      {
        v7 = v16;
      }

      if (v14 && (v15 & 1) != 0)
      {
        (*(*v14 + 40))();
      }

      v11 = *(v3 + 32);
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v17);
        re::TypeBuilder::TypeBuilder(&v14, v17);
        v13 = v11;
        re::TypeBuilder::beginListType(&v14, &v12, 1, 0x28uLL, 8uLL, &v13);
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE199C00 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void *re::allocInfo_SMAssetStateCommand(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199A08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199A08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199FB0, "SMAssetStateCommand");
    __cxa_guard_release(&qword_1EE199A08);
  }

  return &unk_1EE199FB0;
}

void re::initInfo_SMAssetStateCommand(re *this, re::IntrospectionBase *a2)
{
  v54[0] = 0x2258AF08EFF7D2A0;
  v54[1] = "SMAssetStateCommand";
  if (v54[0])
  {
    if (v54[0])
    {
    }
  }

  *(this + 2) = v55;
  if ((atomic_load_explicit(&qword_1EE199A00, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE199A00);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "m_entityName";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x19800000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE199DA0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_REStateCommandID(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "m_commandType";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x19000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE199DA8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "m_intParameterNames";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 3;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE199DB0 = v17;
      v18 = re::introspectionAllocator(v17);
      re::IntrospectionInfo<re::DynamicArray<long long>>::get(v18, v19);
      v20 = (*(*v18 + 32))(v18, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "m_intParameters";
      *(v20 + 16) = &qword_1EE199BE0;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2800000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE199DB8 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "m_floatParameterNames";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x5000000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE199DC0 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "m_floatParameters";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x7800000006;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE199DC8 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "m_doubleParameterNames";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0xA000000007;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE199DD0 = v32;
      v33 = re::introspectionAllocator(v32);
      v35 = re::IntrospectionInfo<re::DynamicArray<double>>::get(1, v34);
      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "m_doubleParameters";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0xC800000008;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE199DD8 = v36;
      v37 = re::introspectionAllocator(v36);
      v39 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v38);
      v40 = (*(*v37 + 32))(v37, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "m_BOOLParameterNames";
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0xF000000009;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE199DE0 = v40;
      v41 = re::introspectionAllocator(v40);
      v43 = re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(1, v42);
      v44 = (*(*v41 + 32))(v41, 72, 8);
      *v44 = 1;
      *(v44 + 8) = "m_BOOLParameters";
      *(v44 + 16) = v43;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0x1180000000ALL;
      *(v44 + 40) = 0;
      *(v44 + 48) = 0;
      *(v44 + 56) = 0;
      *(v44 + 64) = 0;
      qword_1EE199DE8 = v44;
      v45 = re::introspectionAllocator(v44);
      v47 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v46);
      v48 = (*(*v45 + 32))(v45, 72, 8);
      *v48 = 1;
      *(v48 + 8) = "m_stringParameterNames";
      *(v48 + 16) = v47;
      *(v48 + 24) = 0;
      *(v48 + 32) = 0x1400000000BLL;
      *(v48 + 40) = 0;
      *(v48 + 48) = 0;
      *(v48 + 56) = 0;
      *(v48 + 64) = 0;
      qword_1EE199DF0 = v48;
      v49 = re::introspectionAllocator(v48);
      v51 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v50);
      v52 = (*(*v49 + 32))(v49, 72, 8);
      *v52 = 1;
      *(v52 + 8) = "m_stringParameters";
      *(v52 + 16) = v51;
      *(v52 + 24) = 0;
      *(v52 + 32) = 0x1680000000CLL;
      *(v52 + 40) = 0;
      *(v52 + 48) = 0;
      *(v52 + 56) = 0;
      *(v52 + 64) = 0;
      qword_1EE199DF8 = v52;
      __cxa_guard_release(&qword_1EE199A00);
    }
  }

  *(this + 2) = 0x1A800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 12;
  *(this + 8) = &qword_1EE199DA0;
  *(this + 9) = re::internal::defaultConstruct<re::SMAssetStateCommand>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SMAssetStateCommand>;
  *(this + 13) = re::internal::defaultConstructV2<re::SMAssetStateCommand>;
  *(this + 14) = re::internal::defaultDestructV2<re::SMAssetStateCommand>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v53 = v55;
}

double re::internal::defaultConstruct<re::SMAssetStateCommand>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 392) = 0;
  *(a3 + 400) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0;
  *(a3 + 224) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 0u;
  *(a3 + 264) = 0;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0;
  *(a3 + 312) = 0u;
  *(a3 + 328) = 0u;
  *(a3 + 344) = 0;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0;
  *(a3 + 408) = 0;
  *(a3 + 416) = &str_67;
  return result;
}

uint64_t re::internal::defaultDestruct<re::SMAssetStateCommand>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 408));
  re::DynamicArray<re::StringID>::deinit(a3 + 360);
  re::DynamicArray<re::StringID>::deinit(a3 + 320);
  re::DynamicArray<unsigned long>::deinit(a3 + 280);
  re::DynamicArray<re::StringID>::deinit(a3 + 240);
  re::DynamicArray<unsigned long>::deinit(a3 + 200);
  re::DynamicArray<re::StringID>::deinit(a3 + 160);
  re::DynamicArray<unsigned long>::deinit(a3 + 120);
  re::DynamicArray<re::StringID>::deinit(a3 + 80);
  re::DynamicArray<unsigned long>::deinit(a3 + 40);

  return re::DynamicArray<re::StringID>::deinit(a3);
}

double re::internal::defaultConstructV2<re::SMAssetStateCommand>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 224) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = &str_67;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::SMAssetStateCommand>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 408));
  re::DynamicArray<re::StringID>::deinit(a1 + 360);
  re::DynamicArray<re::StringID>::deinit(a1 + 320);
  re::DynamicArray<unsigned long>::deinit(a1 + 280);
  re::DynamicArray<re::StringID>::deinit(a1 + 240);
  re::DynamicArray<unsigned long>::deinit(a1 + 200);
  re::DynamicArray<re::StringID>::deinit(a1 + 160);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  re::DynamicArray<re::StringID>::deinit(a1 + 80);
  re::DynamicArray<unsigned long>::deinit(a1 + 40);

  return re::DynamicArray<re::StringID>::deinit(a1);
}

void re::IntrospectionInfo<re::DynamicArray<re::SMAssetStateTransition>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE199AA8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE199AA8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199C20);
      qword_1EE199C20 = &unk_1F5CC8A30;
      __cxa_guard_release(&qword_1EE199AA8);
    }
  }

  if ((byte_1EE1999B2 & 1) == 0)
  {
    v1 = qword_1EE1999F8;
    if (qword_1EE1999F8 || (v1 = re::allocInfo_SMAssetStateTransition(a1), qword_1EE1999F8 = v1, re::initInfo_SMAssetStateTransition(v1, v2), (byte_1EE1999B2 & 1) == 0))
    {
      byte_1EE1999B2 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE199C20, 0);
      qword_1EE199C30 = 0x2800000003;
      dword_1EE199C38 = v3;
      word_1EE199C3C = 0;
      *&xmmword_1EE199C40 = 0;
      *(&xmmword_1EE199C40 + 1) = 0xFFFFFFFFLL;
      qword_1EE199C50 = v1;
      qword_1EE199C58 = 0;
      qword_1EE199C20 = &unk_1F5CC8A30;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE199C20, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE199C40 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::SMAssetStateCommand>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE199AB0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE199AB0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199C60);
      qword_1EE199C60 = &unk_1F5CC8AC8;
      __cxa_guard_release(&qword_1EE199AB0);
    }
  }

  if ((byte_1EE1999B3 & 1) == 0)
  {
    v1 = qword_1EE199A10;
    if (qword_1EE199A10 || (v1 = re::allocInfo_SMAssetStateCommand(a1), qword_1EE199A10 = v1, re::initInfo_SMAssetStateCommand(v1, v2), (byte_1EE1999B3 & 1) == 0))
    {
      byte_1EE1999B3 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE199C60, 0);
      qword_1EE199C70 = 0x2800000003;
      dword_1EE199C78 = v3;
      word_1EE199C7C = 0;
      *&xmmword_1EE199C80 = 0;
      *(&xmmword_1EE199C80 + 1) = 0xFFFFFFFFLL;
      qword_1EE199C90 = v1;
      qword_1EE199C98 = 0;
      qword_1EE199C60 = &unk_1F5CC8AC8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE199C60, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE199C80 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::allocInfo_SMAssetState(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199A20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19A040, "SMAssetState");
    __cxa_guard_release(&qword_1EE199A20);
  }

  return &unk_1EE19A040;
}

void re::initInfo_SMAssetState(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x3C56069A78F8FAF6;
  v19[1] = "SMAssetState";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE199A18, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE199A18);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "m_name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x5000000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE199B00 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "m_totalExitTime";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x6000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE199B08 = v13;
      v14 = re::introspectionAllocator(v13);
      re::IntrospectionInfo<re::DynamicArray<re::SMAssetStateTransition>>::get(v14);
      v15 = (*(*v14 + 32))(v14, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "m_transitions";
      *(v15 + 16) = &qword_1EE199C20;
      *(v15 + 24) = 0;
      *(v15 + 32) = 3;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE199B10 = v15;
      v16 = re::introspectionAllocator(v15);
      re::IntrospectionInfo<re::DynamicArray<re::SMAssetStateCommand>>::get(v16);
      v17 = (*(*v16 + 32))(v16, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "m_commands";
      *(v17 + 16) = &qword_1EE199C60;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x2800000004;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE199B18 = v17;
      __cxa_guard_release(&qword_1EE199A18);
    }
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE199B00;
  *(this + 9) = re::internal::defaultConstruct<re::SMAssetState>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SMAssetState>;
  *(this + 13) = re::internal::defaultConstructV2<re::SMAssetState>;
  *(this + 14) = re::internal::defaultDestructV2<re::SMAssetState>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

double re::internal::defaultConstruct<re::SMAssetState>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = &str_67;
  *(a3 + 96) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::SMAssetState>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 80));
  re::DynamicArray<re::SMAssetStateCommand>::deinit((a3 + 40));

  return re::DynamicArray<re::SMAssetStateTransition>::deinit(a3);
}

double re::internal::defaultConstructV2<re::SMAssetState>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = &str_67;
  *(a1 + 96) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::SMAssetState>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 80));
  re::DynamicArray<re::SMAssetStateCommand>::deinit((a1 + 40));

  return re::DynamicArray<re::SMAssetStateTransition>::deinit(a1);
}

void re::IntrospectionInfo<re::DynamicArray<re::SMAssetState>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE199AB8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE199AB8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199CA0);
      qword_1EE199CA0 = &unk_1F5CC8B60;
      __cxa_guard_release(&qword_1EE199AB8);
    }
  }

  if ((byte_1EE1999B4 & 1) == 0)
  {
    v1 = qword_1EE199A28;
    if (qword_1EE199A28 || (v1 = re::allocInfo_SMAssetState(a1), qword_1EE199A28 = v1, re::initInfo_SMAssetState(v1, v2), (byte_1EE1999B4 & 1) == 0))
    {
      byte_1EE1999B4 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE199CA0, 0);
      qword_1EE199CB0 = 0x2800000003;
      dword_1EE199CB8 = v3;
      word_1EE199CBC = 0;
      *&xmmword_1EE199CC0 = 0;
      *(&xmmword_1EE199CC0 + 1) = 0xFFFFFFFFLL;
      qword_1EE199CD0 = v1;
      qword_1EE199CD8 = 0;
      qword_1EE199CA0 = &unk_1F5CC8B60;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE199CA0, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE199CC0 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::allocInfo_SMAssetStateGraph(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199A38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199A38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19A0D0, "SMAssetStateGraph");
    __cxa_guard_release(&qword_1EE199A38);
  }

  return &unk_1EE19A0D0;
}

void re::initInfo_SMAssetStateGraph(re *this, re::IntrospectionBase *a2)
{
  v22[0] = 0x4E16780EA9971126;
  v22[1] = "SMAssetStateGraph";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE199A30, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE199A30);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "m_name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x2800000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE199B20 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_BOOL(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "m_hasAnyState";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE199B28 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = v14;
      v16 = qword_1EE199A28;
      if (!qword_1EE199A28)
      {
        v16 = re::allocInfo_SMAssetState(v14);
        qword_1EE199A28 = v16;
        re::initInfo_SMAssetState(v16, v17);
      }

      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "m_anyState";
      *(v18 + 16) = v16;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x4000000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE199B30 = v18;
      v19 = re::introspectionAllocator(v18);
      re::IntrospectionInfo<re::DynamicArray<re::SMAssetState>>::get(v19);
      v20 = (*(*v19 + 32))(v19, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "m_states";
      *(v20 + 16) = &qword_1EE199CA0;
      *(v20 + 24) = 0;
      *(v20 + 32) = 4;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE199B38 = v20;
      __cxa_guard_release(&qword_1EE199A30);
    }
  }

  *(this + 2) = 0xA800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE199B20;
  *(this + 9) = re::internal::defaultConstruct<re::SMAssetStateGraph>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SMAssetStateGraph>;
  *(this + 13) = re::internal::defaultConstructV2<re::SMAssetStateGraph>;
  *(this + 14) = re::internal::defaultDestructV2<re::SMAssetStateGraph>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

double re::internal::defaultConstruct<re::SMAssetStateGraph>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = &str_67;
  *(a3 + 56) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 64) = 0;
  *(a3 + 88) = 0;
  result = 0.0;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 152) = &str_67;
  *(a3 + 160) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::SMAssetStateGraph>(uint64_t a1, uint64_t a2, void *a3)
{
  re::StringID::destroyString((a3 + 18));
  re::DynamicArray<re::SMAssetStateCommand>::deinit(a3 + 13);
  re::DynamicArray<re::SMAssetStateTransition>::deinit((a3 + 8));
  re::StringID::destroyString((a3 + 5));

  return re::DynamicArray<re::SMAssetState>::deinit(a3);
}

double re::internal::defaultConstructV2<re::SMAssetStateGraph>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = &str_67;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = &str_67;
  *(a1 + 160) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::SMAssetStateGraph>(void *a1)
{
  re::StringID::destroyString((a1 + 18));
  re::DynamicArray<re::SMAssetStateCommand>::deinit(a1 + 13);
  re::DynamicArray<re::SMAssetStateTransition>::deinit((a1 + 8));
  re::StringID::destroyString((a1 + 5));

  return re::DynamicArray<re::SMAssetState>::deinit(a1);
}

void *re::allocInfo_SMAssetStateGraphGroup(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199A48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199A48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19A160, "SMAssetStateGraphGroup");
    __cxa_guard_release(&qword_1EE199A48);
  }

  return &unk_1EE19A160;
}

void re::initInfo_SMAssetStateGraphGroup(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0xEE39C57C083FC358;
  v9[1] = "SMAssetStateGraphGroup";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE199A58, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE199A58);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::SMAssetStateGraph>>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "stateGraphs";
      *(v7 + 16) = &qword_1EE199CE0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE199A50 = v7;
      __cxa_guard_release(&qword_1EE199A58);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE199A50;
  *(this + 9) = re::internal::defaultConstruct<re::SMAssetStateGraphGroup>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SMAssetStateGraphGroup>;
  *(this + 13) = re::internal::defaultConstructV2<re::SMAssetStateGraphGroup>;
  *(this + 14) = re::internal::defaultDestructV2<re::SMAssetStateGraphGroup>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

void re::IntrospectionInfo<re::DynamicArray<re::SMAssetStateGraph>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE199AC0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE199AC0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199CE0);
      qword_1EE199CE0 = &unk_1F5CC8BF8;
      __cxa_guard_release(&qword_1EE199AC0);
    }
  }

  if ((byte_1EE1999B5 & 1) == 0)
  {
    v1 = qword_1EE199A40;
    if (qword_1EE199A40 || (v1 = re::allocInfo_SMAssetStateGraph(a1), qword_1EE199A40 = v1, re::initInfo_SMAssetStateGraph(v1, v2), (byte_1EE1999B5 & 1) == 0))
    {
      byte_1EE1999B5 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE199CE0, 0);
      qword_1EE199CF0 = 0x2800000003;
      dword_1EE199CF8 = v3;
      word_1EE199CFC = 0;
      *&xmmword_1EE199D00 = 0;
      *(&xmmword_1EE199D00 + 1) = 0xFFFFFFFFLL;
      qword_1EE199D10 = v1;
      qword_1EE199D18 = 0;
      qword_1EE199CE0 = &unk_1F5CC8BF8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE199CE0, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE199D00 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::SMAssetStateGraphGroup>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::SMAssetStateGraphGroup>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

void *re::allocInfo_SMAssetStateGraphGroupCollection(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199A68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199A68))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19A1F0, "SMAssetStateGraphGroupCollection");
    __cxa_guard_release(&qword_1EE199A68);
  }

  return &unk_1EE19A1F0;
}

void re::initInfo_SMAssetStateGraphGroupCollection(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0x9807B33386548AD4;
  v9[1] = "SMAssetStateGraphGroupCollection";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE199A78, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE199A78);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::SMAssetStateGraphGroup>>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "stateGraphGroups";
      *(v7 + 16) = &qword_1EE199D20;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE199A70 = v7;
      __cxa_guard_release(&qword_1EE199A78);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE199A70;
  *(this + 9) = re::internal::defaultConstruct<re::SMAssetStateGraphGroupCollection>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SMAssetStateGraphGroupCollection>;
  *(this + 13) = re::internal::defaultConstructV2<re::SMAssetStateGraphGroupCollection>;
  *(this + 14) = re::internal::defaultDestructV2<re::SMAssetStateGraphGroupCollection>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

void re::IntrospectionInfo<re::DynamicArray<re::SMAssetStateGraphGroup>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE199AC8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE199AC8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199D20);
      qword_1EE199D20 = &unk_1F5CC8C90;
      __cxa_guard_release(&qword_1EE199AC8);
    }
  }

  if ((byte_1EE1999B6 & 1) == 0)
  {
    v1 = qword_1EE199A60;
    if (qword_1EE199A60 || (v1 = re::allocInfo_SMAssetStateGraphGroup(a1), qword_1EE199A60 = v1, re::initInfo_SMAssetStateGraphGroup(v1, v2), (byte_1EE1999B6 & 1) == 0))
    {
      byte_1EE1999B6 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE199D20, 0);
      qword_1EE199D30 = 0x2800000003;
      dword_1EE199D38 = v3;
      word_1EE199D3C = 0;
      *&xmmword_1EE199D40 = 0;
      *(&xmmword_1EE199D40 + 1) = 0xFFFFFFFFLL;
      qword_1EE199D50 = v1;
      qword_1EE199D58 = 0;
      qword_1EE199D20 = &unk_1F5CC8C90;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE199D20, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE199D40 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::SMAssetStateGraphGroupCollection>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::SMAssetStateGraphGroupCollection>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

void *re::allocInfo_StateMachineAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199A88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199A88))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19A280, "StateMachineAsset");
    __cxa_guard_release(&qword_1EE199A88);
  }

  return &unk_1EE19A280;
}

void re::initInfo_StateMachineAsset(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x1BF3F5A4A26CA3F4;
  v14[1] = "StateMachineAsset";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE199A90, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE199A90);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::StateMachineInitializationData>>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "stateMachineInitializationData";
      *(v7 + 16) = &qword_1EE199D60;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE199AD8 = v7;
      v8 = re::introspectionAllocator(v7);
      v9 = v8;
      v10 = qword_1EE199A80;
      if (!qword_1EE199A80)
      {
        v10 = re::allocInfo_SMAssetStateGraphGroupCollection(v8);
        qword_1EE199A80 = v10;
        re::initInfo_SMAssetStateGraphGroupCollection(v10, v11);
      }

      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "assetStateGraphs";
      *(v12 + 16) = v10;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE199AE0 = v12;
      __cxa_guard_release(&qword_1EE199A90);
    }
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE199AD8;
  *(this + 9) = re::internal::defaultConstruct<re::StateMachineAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::StateMachineAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::StateMachineAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::StateMachineAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::IntrospectionInfo<re::DynamicArray<re::StateMachineInitializationData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE199AD0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE199AD0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199D60);
      qword_1EE199D60 = &unk_1F5CC8D28;
      __cxa_guard_release(&qword_1EE199AD0);
    }
  }

  if ((byte_1EE1999B7 & 1) == 0)
  {
    v1 = qword_1EE1999C8;
    if (qword_1EE1999C8 || (v1 = re::allocInfo_StateMachineInitializationData(a1), qword_1EE1999C8 = v1, re::initInfo_StateMachineInitializationData(v1, v2), (byte_1EE1999B7 & 1) == 0))
    {
      byte_1EE1999B7 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE199D60, 0);
      qword_1EE199D70 = 0x2800000003;
      dword_1EE199D78 = v3;
      word_1EE199D7C = 0;
      *&xmmword_1EE199D80 = 0;
      *(&xmmword_1EE199D80 + 1) = 0xFFFFFFFFLL;
      qword_1EE199D90 = v1;
      qword_1EE199D98 = 0;
      qword_1EE199D60 = &unk_1F5CC8D28;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE199D60, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE199D80 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::StateMachineAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
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
  return result;
}

double re::internal::defaultConstructV2<re::StateMachineAsset>(uint64_t a1)
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
  return result;
}

void re::StateGraph::~StateGraph(re::StateGraph *this)
{
  re::StateGraph::deinit(this);
  re::DynamicArray<unsigned long>::deinit(this + 24);
  re::StringID::destroyString((this + 8));
}

{
  re::StateGraph::deinit(this);
  re::DynamicArray<unsigned long>::deinit(this + 24);
  re::StringID::destroyString((this + 8));

  JUMPOUT(0x1E6906520);
}

void re::StateMachineState::~StateMachineState(re::StateMachineState *this)
{
  re::StateMachineState::~StateMachineState(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CC88A8;
  v2 = this + 8;
  re::StateMachineState::deinit(this);
  re::StringID::destroyString((this + 88));
  re::DynamicArray<unsigned long>::deinit(this + 48);
  re::DynamicArray<unsigned long>::deinit(v2);
}

uint64_t re::DynamicArray<re::SMAssetStateTransition>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::SMAssetStateTransition>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::SMAssetStateTransition>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::SMAssetStateTransition>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::SMAssetStateTransition>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::SMAssetStateTransition *,re::SMAssetStateTransition *,re::SMAssetStateTransition *>(&v17, *(a2 + 32), *(a2 + 32) + 96 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = a1[4];
      v12 = 96 * v9;
      v13 = 96 * v4;
      do
      {
        v14 = v11 + v12;
        re::DynamicArray<re::SMAssetTransitionCondition>::DynamicArray(v11 + v12, (v10 + v12));
        re::StringID::StringID((v11 + v12 + 40), (v10 + v12 + 40));
        re::StringID::StringID((v11 + v12 + 56), (v10 + v12 + 56));
        result = re::StringID::StringID((v11 + v12 + 72), (v10 + v12 + 72));
        v15 = *(v10 + v12 + 88);
        *(v14 + 92) = *(v10 + v12 + 92);
        *(v14 + 88) = v15;
        v13 -= 96;
        v10 += 96;
        v11 += 96;
      }

      while (v12 != v13);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::SMAssetStateTransition *,re::SMAssetStateTransition *,re::SMAssetStateTransition *>(&v16, *(a2 + 32), *(a2 + 32) + 96 * v4, a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = a1[4] + 96 * v4;
      v8 = 96 * v6 - 96 * v4;
      do
      {
        re::StringID::destroyString((v7 + 72));
        re::StringID::destroyString((v7 + 56));
        re::StringID::destroyString((v7 + 40));
        result = re::DynamicArray<re::SMAssetTransitionCondition>::deinit(v7);
        v7 += 96;
        v8 -= 96;
      }

      while (v8);
    }
  }

  a1[2] = v4;
  return result;
}

void *re::DynamicArray<re::SMAssetStateTransition>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SMAssetStateTransition>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
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
        v10 = 0;
        v11 = v8 + 96 * v9;
        do
        {
          v12 = v8 + v10;
          v13 = &v7[v10 / 8];
          v13[4] = 0;
          v13[1] = 0;
          v13[2] = 0;
          *v13 = 0;
          *(v13 + 6) = 0;
          v14 = *(v8 + v10 + 8);
          *v13 = *(v8 + v10);
          v13[1] = v14;
          *v12 = 0;
          *(v12 + 8) = 0;
          v15 = v7[v10 / 8 + 2];
          v13[2] = *(v8 + v10 + 16);
          *(v12 + 16) = v15;
          v16 = v7[v10 / 8 + 4];
          v13[4] = *(v8 + v10 + 32);
          *(v12 + 32) = v16;
          *(v12 + 24) = *(v8 + v10 + 24) + 1;
          *(v13 + 6) = LODWORD(v7[v10 / 8 + 3]) + 1;
          v17 = (v8 + v10 + 40);
          LOBYTE(v16) = *v17;
          v13[5] = v7[v10 / 8 + 5] & 0xFFFFFFFFFFFFFFFELL | *v17 & 1;
          v13[5] = *v17 & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
          v13[6] = *(v8 + v10 + 48);
          *(v12 + 48) = &str_67;
          *v17 = 0;
          v18 = (v8 + v10 + 56);
          LOBYTE(v16) = *v18;
          v13[7] = v7[v10 / 8 + 7] & 0xFFFFFFFFFFFFFFFELL | *v18 & 1;
          v13[7] = *v18 & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
          v13[8] = *(v8 + v10 + 64);
          *(v12 + 64) = &str_67;
          *v18 = 0;
          v19 = (v8 + v10 + 72);
          LOBYTE(v16) = *v19;
          v13[9] = v7[v10 / 8 + 9] & 0xFFFFFFFFFFFFFFFELL | *v19 & 1;
          v13[9] = *v19 & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
          v13[10] = *(v8 + v10 + 80);
          *(v12 + 80) = &str_67;
          *v19 = 0;
          LODWORD(v16) = *(v8 + v10 + 88);
          *(v13 + 92) = *(v8 + v10 + 92);
          *(v13 + 22) = v16;
          re::StringID::destroyString(v19);
          re::StringID::destroyString(v18);
          re::StringID::destroyString(v17);
          re::DynamicArray<re::SMAssetTransitionCondition>::deinit(v8 + v10);
          v10 += 96;
        }

        while (v12 + 96 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::SMAssetTransitionCondition>::deinit(uint64_t a1)
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
          re::StringID::destroyString(v3);
          v3 = (v3 + 40);
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

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::SMAssetStateTransition *,re::SMAssetStateTransition *,re::SMAssetStateTransition *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    v9 = a2 + v7;
    re::DynamicArray<re::SMAssetTransitionCondition>::operator=(a4 + v7, (a2 + v7));
    re::StringID::operator=((a4 + v7 + 40), (a2 + v7 + 40));
    re::StringID::operator=((a4 + v7 + 56), (a2 + v7 + 56));
    re::StringID::operator=((a4 + v7 + 72), (a2 + v7 + 72));
    v10 = *(a2 + v7 + 88);
    *(v8 + 92) = *(a2 + v7 + 92);
    *(v8 + 88) = v10;
    v7 += 96;
  }

  while (v9 + 96 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::SMAssetTransitionCondition>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::SMAssetTransitionCondition>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::SMAssetTransitionCondition>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::SMAssetTransitionCondition>::copy(a1, a2);
    }
  }

  return a1;
}

void re::DynamicArray<re::SMAssetTransitionCondition>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(a1, *(a2 + 16));
    v13 = *(a2 + 32);
    v14 = a1[2];
    v15 = a1[4];
    if (v14)
    {
      v16 = 40 * v14;
      do
      {
        v17 = re::StringID::operator=(v15, v13);
        v18 = *(v13 + 16);
        *(v17 + 30) = *(v13 + 30);
        *(v17 + 1) = v18;
        v13 += 40;
        v15 = v17 + 5;
        v16 -= 40;
      }

      while (v16);
      v15 = a1[4];
      v14 = a1[2];
      v13 = *(a2 + 32);
    }

    if (v14 != v4)
    {
      v19 = 5 * v14;
      v20 = v13 + 8 * v19;
      v21 = &v15[v19];
      v22 = 40 * v4 - 8 * v19;
      do
      {
        v23 = re::StringID::StringID(v21, v20);
        v24 = *(v20 + 16);
        *(v23 + 30) = *(v20 + 30);
        *(v23 + 1) = v24;
        v20 += 40;
        v21 = (v23 + 40);
        v22 -= 40;
      }

      while (v22);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 40 * v4;
      do
      {
        v9 = re::StringID::operator=(v6, v7);
        v10 = *(v7 + 16);
        *(v9 + 30) = *(v7 + 30);
        *(v9 + 1) = v10;
        v7 += 40;
        v6 = v9 + 5;
        v8 -= 40;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v11 = &v6[5 * v4];
      v12 = 40 * v5 - 40 * v4;
      do
      {
        re::StringID::destroyString(v11);
        v11 = (v11 + 40);
        v12 -= 40;
      }

      while (v12);
    }
  }

  a1[2] = v4;
}

void re::DynamicArray<re::SMAssetTransitionCondition>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 40 * v2;
    do
    {
      re::StringID::destroyString(v3);
      v3 = (v3 + 40);
      v4 -= 40;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void *re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(v5, a2);
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
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v13 = *(v8 + 1);
          *(v11 + 30) = *(v8 + 30);
          *(v11 + 1) = v13;
          re::StringID::destroyString(v8);
          v8 += 5;
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

uint64_t re::DynamicArray<re::SMAssetTransitionCondition>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::SMAssetTransitionCondition>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::SMAssetStateCommand>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::SMAssetStateCommand>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::SMAssetStateCommand>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::SMAssetStateCommand>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::SMAssetStateCommand *,re::SMAssetStateCommand *,re::SMAssetStateCommand *>(&v12, *(a2 + 32), *(a2 + 32) + 424 * a1[2], a1[4]);
    v6 = a1[2];
    if (v6 != v4)
    {
      v7 = *(a2 + 32);
      v8 = a1[4];
      v9 = 424 * v6;
      v10 = 424 * v4;
      do
      {
        re::DynamicArray<re::StringID>::DynamicArray(v8 + v9, (v7 + v9));
        re::DynamicArray<char const*>::DynamicArray(v8 + v9 + 40, (v7 + v9 + 40));
        re::DynamicArray<re::StringID>::DynamicArray(v8 + v9 + 80, (v7 + v9 + 80));
        re::DynamicArray<float>::DynamicArray(v8 + v9 + 120, (v7 + v9 + 120));
        re::DynamicArray<re::StringID>::DynamicArray(v8 + v9 + 160, (v7 + v9 + 160));
        re::DynamicArray<char const*>::DynamicArray(v8 + v9 + 200, (v7 + v9 + 200));
        re::DynamicArray<re::StringID>::DynamicArray(v8 + v9 + 240, (v7 + v9 + 240));
        re::DynamicArray<BOOL>::DynamicArray(v8 + v9 + 280, (v7 + v9 + 280));
        re::DynamicArray<re::StringID>::DynamicArray(v8 + v9 + 320, (v7 + v9 + 320));
        re::DynamicArray<re::StringID>::DynamicArray(v8 + v9 + 360, (v7 + v9 + 360));
        *(v8 + v9 + 400) = *(v7 + v9 + 400);
        result = re::StringID::StringID((v8 + v9 + 408), (v7 + v9 + 408));
        v10 -= 424;
        v7 += 424;
        v8 += 424;
      }

      while (v9 != v10);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::SMAssetStateCommand *,re::SMAssetStateCommand *,re::SMAssetStateCommand *>(&v11, *(a2 + 32), *(a2 + 32) + 424 * v4, a1[4]);
    result = re::ObjectHelper::destroy<re::SMAssetStateCommand>(a1[4] + 424 * v4, a1[4] + 424 * a1[2]);
  }

  a1[2] = v4;
  return result;
}

void *re::DynamicArray<re::SMAssetStateCommand>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SMAssetStateCommand>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x1A8uLL))
        {
          v2 = 424 * a2;
          result = (*(*result + 32))(result, 424 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 424, a2);
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
        v10 = 0;
        v11 = 424 * v9;
        do
        {
          re::SMAssetStateCommand::SMAssetStateCommand(&v7[v10 / 8], v8 + v10);
          re::StringID::destroyString((v8 + v10 + 408));
          re::DynamicArray<re::StringID>::deinit(v8 + v10 + 360);
          re::DynamicArray<re::StringID>::deinit(v8 + v10 + 320);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 280);
          re::DynamicArray<re::StringID>::deinit(v8 + v10 + 240);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 200);
          re::DynamicArray<re::StringID>::deinit(v8 + v10 + 160);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 120);
          re::DynamicArray<re::StringID>::deinit(v8 + v10 + 80);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 40);
          re::DynamicArray<re::StringID>::deinit(v8 + v10);
          v10 += 424;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::SMAssetStateCommand::SMAssetStateCommand(uint64_t result, uint64_t a2)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  v2 = *(a2 + 8);
  *result = *a2;
  *(result + 8) = v2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  ++*(a2 + 24);
  ++*(result + 24);
  *(result + 72) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 64) = 0;
  v5 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v6 = *(result + 56);
  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = v6;
  v7 = *(result + 72);
  *(result + 72) = *(a2 + 72);
  *(a2 + 72) = v7;
  ++*(a2 + 64);
  ++*(result + 64);
  *(result + 112) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  v8 = *(a2 + 88);
  *(result + 80) = *(a2 + 80);
  *(result + 88) = v8;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v9 = *(result + 96);
  *(result + 96) = *(a2 + 96);
  *(a2 + 96) = v9;
  v10 = *(result + 112);
  *(result + 112) = *(a2 + 112);
  *(a2 + 112) = v10;
  ++*(a2 + 104);
  ++*(result + 104);
  *(result + 152) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 120) = 0;
  *(result + 144) = 0;
  v11 = *(a2 + 128);
  *(result + 120) = *(a2 + 120);
  *(result + 128) = v11;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v12 = *(result + 136);
  *(result + 136) = *(a2 + 136);
  *(a2 + 136) = v12;
  v13 = *(result + 152);
  *(result + 152) = *(a2 + 152);
  *(a2 + 152) = v13;
  ++*(a2 + 144);
  ++*(result + 144);
  *(result + 192) = 0;
  *(result + 168) = 0;
  *(result + 176) = 0;
  *(result + 160) = 0;
  *(result + 184) = 0;
  v14 = *(a2 + 168);
  *(result + 160) = *(a2 + 160);
  *(result + 168) = v14;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v15 = *(result + 176);
  *(result + 176) = *(a2 + 176);
  *(a2 + 176) = v15;
  v16 = *(result + 192);
  *(result + 192) = *(a2 + 192);
  *(a2 + 192) = v16;
  ++*(a2 + 184);
  ++*(result + 184);
  *(result + 232) = 0;
  *(result + 208) = 0;
  *(result + 216) = 0;
  *(result + 200) = 0;
  *(result + 224) = 0;
  v17 = *(a2 + 208);
  *(result + 200) = *(a2 + 200);
  *(result + 208) = v17;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  v18 = *(result + 216);
  *(result + 216) = *(a2 + 216);
  *(a2 + 216) = v18;
  v19 = *(result + 232);
  *(result + 232) = *(a2 + 232);
  *(a2 + 232) = v19;
  ++*(a2 + 224);
  ++*(result + 224);
  *(result + 272) = 0;
  *(result + 248) = 0;
  *(result + 256) = 0;
  *(result + 240) = 0;
  *(result + 264) = 0;
  v20 = *(a2 + 248);
  *(result + 240) = *(a2 + 240);
  *(result + 248) = v20;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  v21 = *(result + 256);
  *(result + 256) = *(a2 + 256);
  *(a2 + 256) = v21;
  v22 = *(result + 272);
  *(result + 272) = *(a2 + 272);
  *(a2 + 272) = v22;
  ++*(a2 + 264);
  ++*(result + 264);
  *(result + 312) = 0;
  *(result + 288) = 0;
  *(result + 296) = 0;
  *(result + 280) = 0;
  *(result + 304) = 0;
  v23 = *(a2 + 288);
  *(result + 280) = *(a2 + 280);
  *(result + 288) = v23;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  v24 = *(result + 296);
  *(result + 296) = *(a2 + 296);
  *(a2 + 296) = v24;
  v25 = *(result + 312);
  *(result + 312) = *(a2 + 312);
  *(a2 + 312) = v25;
  ++*(a2 + 304);
  ++*(result + 304);
  *(result + 352) = 0;
  *(result + 328) = 0;
  *(result + 336) = 0;
  *(result + 320) = 0;
  *(result + 344) = 0;
  v26 = *(a2 + 328);
  *(result + 320) = *(a2 + 320);
  *(result + 328) = v26;
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  v27 = *(result + 336);
  *(result + 336) = *(a2 + 336);
  *(a2 + 336) = v27;
  v28 = *(result + 352);
  *(result + 352) = *(a2 + 352);
  *(a2 + 352) = v28;
  ++*(a2 + 344);
  ++*(result + 344);
  *(result + 392) = 0;
  *(result + 368) = 0;
  *(result + 376) = 0;
  *(result + 360) = 0;
  *(result + 384) = 0;
  v29 = *(a2 + 368);
  *(result + 360) = *(a2 + 360);
  *(result + 368) = v29;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  v30 = *(result + 376);
  *(result + 376) = *(a2 + 376);
  *(a2 + 376) = v30;
  v31 = *(result + 392);
  *(result + 392) = *(a2 + 392);
  *(a2 + 392) = v31;
  ++*(a2 + 384);
  ++*(result + 384);
  *(result + 400) = *(a2 + 400);
  v32 = *(a2 + 408);
  *(result + 408) = *(result + 408) & 0xFFFFFFFFFFFFFFFELL | v32 & 1;
  *(result + 408) = *(a2 + 408) & 0xFFFFFFFFFFFFFFFELL | v32 & 1;
  *(result + 416) = *(a2 + 416);
  *(a2 + 408) = 0;
  *(a2 + 416) = &str_67;
  return result;
}

uint64_t re::ObjectHelper::destroy<re::SMAssetStateCommand>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      re::StringID::destroyString((v3 + 408));
      re::DynamicArray<re::StringID>::deinit(v3 + 360);
      re::DynamicArray<re::StringID>::deinit(v3 + 320);
      re::DynamicArray<unsigned long>::deinit(v3 + 280);
      re::DynamicArray<re::StringID>::deinit(v3 + 240);
      re::DynamicArray<unsigned long>::deinit(v3 + 200);
      re::DynamicArray<re::StringID>::deinit(v3 + 160);
      re::DynamicArray<unsigned long>::deinit(v3 + 120);
      re::DynamicArray<re::StringID>::deinit(v3 + 80);
      re::DynamicArray<unsigned long>::deinit(v3 + 40);
      result = re::DynamicArray<re::StringID>::deinit(v3);
      v3 += 424;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::SMAssetStateCommand *,re::SMAssetStateCommand *,re::SMAssetStateCommand *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    re::DynamicArray<re::StringID>::operator=(a4, v5);
    re::DynamicArray<unsigned long long>::operator=(a4 + 40, (v5 + 40));
    re::DynamicArray<re::StringID>::operator=(a4 + 80, (v5 + 80));
    re::DynamicArray<float>::operator=(a4 + 120, (v5 + 120));
    re::DynamicArray<re::StringID>::operator=(a4 + 160, (v5 + 160));
    re::DynamicArray<unsigned long long>::operator=(a4 + 200, (v5 + 200));
    re::DynamicArray<re::StringID>::operator=(a4 + 240, (v5 + 240));
    re::DynamicArray<BOOL>::operator=(a4 + 280, (v5 + 280));
    re::DynamicArray<re::StringID>::operator=(a4 + 320, (v5 + 320));
    re::DynamicArray<re::StringID>::operator=(a4 + 360, (v5 + 360));
    *(a4 + 400) = *(v5 + 400);
    re::StringID::operator=((a4 + 408), (v5 + 408));
    a4 += 424;
    v5 += 424;
  }

  while (v5 != v6);
  return v6;
}

void *re::DynamicArray<re::SMAssetStateCommand>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    result = result[4];
    if (result)
    {
      re::ObjectHelper::destroy<re::SMAssetStateCommand>(result, &result[53 * v1[2]]);
      result = (*(**v1 + 40))(*v1, v1[4]);
    }

    v1[4] = 0;
    v1[1] = 0;
    v1[2] = 0;
    *v1 = 0;
    ++*(v1 + 6);
  }

  return result;
}

uint64_t re::DynamicArray<re::SMAssetStateTransition>::deinit(uint64_t a1)
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
        v5 = 96 * v4;
        do
        {
          re::StringID::destroyString((v3 + 72));
          re::StringID::destroyString((v3 + 56));
          re::StringID::destroyString((v3 + 40));
          re::DynamicArray<re::SMAssetTransitionCondition>::deinit(v3);
          v3 += 96;
          v5 -= 96;
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

uint64_t re::DynamicArray<re::SMAssetStateGraphGroup>::deinit(uint64_t a1)
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
          re::DynamicArray<re::SMAssetStateGraph>::deinit(v3);
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

uint64_t re::DynamicArray<re::SMAssetStateGraph>::deinit(uint64_t a1)
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
        v5 = 168 * v4;
        do
        {
          re::StringID::destroyString((v3 + 18));
          re::DynamicArray<re::SMAssetStateCommand>::deinit(v3 + 13);
          re::DynamicArray<re::SMAssetStateTransition>::deinit((v3 + 8));
          re::StringID::destroyString((v3 + 5));
          re::DynamicArray<re::SMAssetState>::deinit(v3);
          v3 += 21;
          v5 -= 168;
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

uint64_t re::DynamicArray<re::SMAssetState>::deinit(uint64_t a1)
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
        v5 = 104 * v4;
        do
        {
          re::StringID::destroyString((v3 + 80));
          re::DynamicArray<re::SMAssetStateCommand>::deinit((v3 + 40));
          re::DynamicArray<re::SMAssetStateTransition>::deinit(v3);
          v3 += 104;
          v5 -= 104;
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

void re::DynamicArray<re::StateMachineInitializationData>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::StateMachineInitializationData *,re::StateMachineInitializationData *,re::StateMachineInitializationData *>(*(a2 + 32), (*(a2 + 32) + 48 * *(a1 + 16)), *(a1 + 32));
    v8 = *(a1 + 16);
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = *(a1 + 32);
      v11 = 48 * v8;
      v12 = 48 * v4;
      do
      {
        re::StringID::StringID((v10 + v11), (v9 + v11));
        re::StringID::StringID((v10 + v11 + 16), (v9 + v11 + 16));
        re::StringID::StringID((v10 + v11 + 32), (v9 + v11 + 32));
        v9 += 48;
        v12 -= 48;
        v10 += 48;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::StateMachineInitializationData *,re::StateMachineInitializationData *,re::StateMachineInitializationData *>(*(a2 + 32), (*(a2 + 32) + 48 * v4), *(a1 + 32));
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      v6 = *(a1 + 32) + 48 * v4;
      v7 = 48 * v5 - 48 * v4;
      do
      {
        re::StringID::destroyString((v6 + 32));
        re::StringID::destroyString((v6 + 16));
        re::StringID::destroyString(v6);
        v6 += 48;
        v7 -= 48;
      }

      while (v7);
    }
  }

  *(a1 + 16) = v4;
}

void re::DynamicArray<re::StateMachineInitializationData>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 48 * v2;
    do
    {
      re::StringID::destroyString((v3 + 32));
      re::StringID::destroyString((v3 + 16));
      re::StringID::destroyString(v3);
      v3 += 48;
      v4 -= 48;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

unint64_t *std::__copy_impl::operator()[abi:nn200100]<re::StateMachineInitializationData *,re::StateMachineInitializationData *,re::StateMachineInitializationData *>(unint64_t *result, uint64_t *a2, unint64_t *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      re::StringID::operator=(a3, v5);
      re::StringID::operator=(a3 + 2, v5 + 2);
      result = re::StringID::operator=(a3 + 4, v5 + 4);
      v5 += 6;
      a3 += 6;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t re::FixedArray<re::DynamicArray<re::StateGraph *>>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x666666666666667)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 40 * a3, 8);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *(result + 32) = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 0;
      *(result + 24) = 0;
      result += 40;
      --v6;
    }

    while (v6);
  }

  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t re::DynamicArray<re::SMAssetStateGraphGroup>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::SMAssetStateGraphGroup>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    result = a1[4];
    if (v13)
    {
      v14 = 40 * v13;
      do
      {
        v15 = re::DynamicArray<re::SMAssetStateGraph>::operator=(result, v12);
        v12 += 5;
        result = v15 + 40;
        v14 -= 40;
      }

      while (v14);
      result = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v16 = 5 * v13;
      v17 = &v12[v16];
      result += 8 * v16;
      v18 = 40 * v4 - 8 * v16;
      do
      {
        v19 = re::DynamicArray<re::SMAssetStateGraph>::DynamicArray(result, v17);
        v17 += 5;
        result = v19 + 40;
        v18 -= 40;
      }

      while (v18);
    }
  }

  else
  {
    result = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 40 * v4;
      do
      {
        v9 = re::DynamicArray<re::SMAssetStateGraph>::operator=(result, v7);
        v7 += 5;
        result = v9 + 40;
        v8 -= 40;
      }

      while (v8);
      result = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = result + 40 * v4;
      v11 = 40 * v5 - 40 * v4;
      do
      {
        result = re::DynamicArray<re::SMAssetStateGraph>::deinit(v10);
        v10 += 40;
        v11 -= 40;
      }

      while (v11);
    }
  }

  a1[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::SMAssetStateGraphGroup>::clear(uint64_t result)
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
      result = re::DynamicArray<re::SMAssetStateGraph>::deinit(v3);
      v3 += 40;
      v4 -= 40;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

void *re::DynamicArray<re::SMAssetStateGraphGroup>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SMAssetStateGraphGroup>::setCapacity(v5, a2);
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
          re::DynamicArray<re::SMAssetStateGraph>::deinit(v8);
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

uint64_t re::DynamicArray<re::SMAssetStateGraph>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::SMAssetStateGraph>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::SMAssetStateGraph>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::SMAssetStateGraph>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::SMAssetStateGraph>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::SMAssetStateGraph>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::SMAssetStateGraph>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::SMAssetStateGraph *,re::SMAssetStateGraph *,re::SMAssetStateGraph *>(&v17, *(a2 + 32), *(a2 + 32) + 168 * a1[2], a1[4]);
    v10 = a1[2];
    if (v10 != v4)
    {
      v11 = *(a2 + 32);
      v12 = a1[4];
      v13 = 168 * v10;
      v14 = 168 * v4;
      do
      {
        v15 = v12 + v13;
        re::DynamicArray<re::SMAssetState>::DynamicArray(v12 + v13, (v11 + v13));
        re::StringID::StringID((v12 + v13 + 40), (v11 + v13 + 40));
        *(v15 + 56) = *(v11 + v13 + 56);
        re::DynamicArray<re::SMAssetStateTransition>::DynamicArray(v12 + v13 + 64, (v11 + v13 + 64));
        re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(v12 + v13 + 104, (v11 + v13 + 104));
        result = re::StringID::StringID((v12 + v13 + 144), (v11 + v13 + 144));
        *(v15 + 160) = *(v11 + v13 + 160);
        v14 -= 168;
        v11 += 168;
        v12 += 168;
      }

      while (v13 != v14);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::SMAssetStateGraph *,re::SMAssetStateGraph *,re::SMAssetStateGraph *>(&v16, *(a2 + 32), *(a2 + 32) + 168 * v4, a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = a1[4];
      v8 = 168 * v4;
      v9 = 168 * v6;
      do
      {
        re::StringID::destroyString((v7 + v8 + 144));
        re::DynamicArray<re::SMAssetStateCommand>::deinit((v7 + v8 + 104));
        re::DynamicArray<re::SMAssetStateTransition>::deinit(v7 + v8 + 64);
        re::StringID::destroyString((v7 + v8 + 40));
        result = re::DynamicArray<re::SMAssetState>::deinit(v7 + v8);
        v9 -= 168;
        v7 += 168;
      }

      while (v8 != v9);
    }
  }

  a1[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::SMAssetStateGraph>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 168 * v2;
    do
    {
      re::StringID::destroyString((v3 + 18));
      re::DynamicArray<re::SMAssetStateCommand>::deinit(v3 + 13);
      re::DynamicArray<re::SMAssetStateTransition>::deinit((v3 + 8));
      re::StringID::destroyString((v3 + 5));
      result = re::DynamicArray<re::SMAssetState>::deinit(v3);
      v3 += 21;
      v4 -= 168;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

void *re::DynamicArray<re::SMAssetStateGraph>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SMAssetStateGraph>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA8uLL))
        {
          v2 = 168 * a2;
          result = (*(*result + 32))(result, 168 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 168, a2);
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
        v10 = 168 * v9;
        v11 = v7;
        do
        {
          re::ObjectHelper::move<re::SMAssetStateGraph>(v8, v11);
          v8 += 168;
          v11 += 168;
          v10 -= 168;
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

uint64_t re::ObjectHelper::move<re::SMAssetStateGraph>(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *(a2 + 16);
  *(a2 + 16) = *(a1 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a2 + 32) = *(a1 + 32);
  ++*(a1 + 24);
  ++*(a2 + 24);
  v6 = (a1 + 40);
  LOBYTE(v3) = *(a1 + 40);
  *(a1 + 32) = v5;
  *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  *(a2 + 40) = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 48) = &str_67;
  *(a1 + 40) = 0;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 96) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  v7 = a1 + 64;
  v8 = *(a1 + 72);
  *(a2 + 64) = *(a1 + 64);
  *(a1 + 64) = 0;
  *(a2 + 72) = v8;
  *(a1 + 72) = 0;
  v9 = *(a2 + 80);
  *(a2 + 80) = *(a1 + 80);
  *(a1 + 80) = v9;
  v10 = *(a2 + 96);
  *(a2 + 96) = *(a1 + 96);
  *(a1 + 96) = v10;
  ++*(a1 + 88);
  ++*(a2 + 88);
  *(a2 + 136) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0;
  *(a2 + 128) = 0;
  v11 = (a1 + 104);
  v12 = *(a1 + 112);
  *(a2 + 104) = *(a1 + 104);
  *(a1 + 104) = 0;
  *(a2 + 112) = v12;
  *(a1 + 112) = 0;
  v13 = *(a2 + 120);
  *(a2 + 120) = *(a1 + 120);
  *(a1 + 120) = v13;
  v14 = *(a2 + 136);
  *(a2 + 136) = *(a1 + 136);
  *(a1 + 136) = v14;
  ++*(a1 + 128);
  ++*(a2 + 128);
  v16 = *(a1 + 144);
  v15 = (a1 + 144);
  *(a2 + 144) = *(a2 + 144) & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
  *(a2 + 144) = *v15 & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
  *(a2 + 152) = *(a1 + 152);
  *(a1 + 152) = &str_67;
  *v15 = 0;
  *(a2 + 160) = *(a1 + 160);
  re::StringID::destroyString(v15);
  re::DynamicArray<re::SMAssetStateCommand>::deinit(v11);
  re::DynamicArray<re::SMAssetStateTransition>::deinit(v7);
  re::StringID::destroyString(v6);

  return re::DynamicArray<re::SMAssetState>::deinit(a1);
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::SMAssetStateGraph *,re::SMAssetStateGraph *,re::SMAssetStateGraph *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    re::DynamicArray<re::SMAssetState>::operator=(a4, v5);
    re::StringID::operator=((a4 + 40), (v5 + 40));
    *(a4 + 56) = *(v5 + 56);
    re::DynamicArray<re::SMAssetStateTransition>::operator=(a4 + 64, (v5 + 64));
    re::DynamicArray<re::SMAssetStateCommand>::operator=(a4 + 104, (v5 + 104));
    re::StringID::operator=((a4 + 144), (v5 + 144));
    *(a4 + 160) = *(v5 + 160);
    a4 += 168;
    v5 += 168;
  }

  while (v5 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::SMAssetState>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::SMAssetState>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::SMAssetState>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::SMAssetState>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::SMAssetState>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::SMAssetState>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::SMAssetState>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::SMAssetState *,re::SMAssetState *,re::SMAssetState *>(&v15, *(a2 + 32), *(a2 + 32) + 104 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = a1[4];
      v12 = 104 * v9;
      v13 = 104 * v4;
      do
      {
        re::DynamicArray<re::SMAssetStateTransition>::DynamicArray(v11 + v12, (v10 + v12));
        re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(v11 + v12 + 40, (v10 + v12 + 40));
        result = re::StringID::StringID((v11 + v12 + 80), (v10 + v12 + 80));
        *(v11 + v12 + 96) = *(v10 + v12 + 96);
        v13 -= 104;
        v10 += 104;
        v11 += 104;
      }

      while (v12 != v13);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::SMAssetState *,re::SMAssetState *,re::SMAssetState *>(&v14, *(a2 + 32), *(a2 + 32) + 104 * v4, a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = a1[4] + 104 * v4;
      v8 = -104 * v4 + 104 * v6;
      do
      {
        re::StringID::destroyString((v7 + 80));
        re::DynamicArray<re::SMAssetStateCommand>::deinit((v7 + 40));
        result = re::DynamicArray<re::SMAssetStateTransition>::deinit(v7);
        v7 += 104;
        v8 -= 104;
      }

      while (v8);
    }
  }

  a1[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::SMAssetState>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 104 * v2;
    do
    {
      re::StringID::destroyString((v3 + 80));
      re::DynamicArray<re::SMAssetStateCommand>::deinit((v3 + 40));
      result = re::DynamicArray<re::SMAssetStateTransition>::deinit(v3);
      v3 += 104;
      v4 -= 104;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

void *re::DynamicArray<re::SMAssetState>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SMAssetState>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x68uLL))
        {
          v2 = 104 * a2;
          result = (*(*result + 32))(result, 104 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 104, a2);
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
        v10 = v8 + 104 * v9;
        v11 = v7 + 6;
        do
        {
          *(v11 - 2) = 0;
          *(v11 - 5) = 0;
          *(v11 - 4) = 0;
          *(v11 - 6) = 0;
          *(v11 - 6) = 0;
          v12 = *(v8 + 8);
          *(v11 - 6) = *v8;
          *(v11 - 5) = v12;
          *v8 = 0;
          *(v8 + 8) = 0;
          v13 = *(v11 - 4);
          *(v11 - 4) = *(v8 + 16);
          *(v8 + 16) = v13;
          v14 = *(v11 - 2);
          *(v11 - 2) = *(v8 + 32);
          *(v8 + 32) = v14;
          ++*(v8 + 24);
          ++*(v11 - 6);
          v11[3] = 0;
          *v11 = 0;
          v11[1] = 0;
          *(v11 - 1) = 0;
          *(v11 + 4) = 0;
          v15 = *(v8 + 48);
          *(v11 - 1) = *(v8 + 40);
          *(v8 + 40) = 0;
          *v11 = v15;
          *(v8 + 48) = 0;
          v16 = v11[1];
          v11[1] = *(v8 + 56);
          *(v8 + 56) = v16;
          v17 = v11[3];
          v11[3] = *(v8 + 72);
          *(v8 + 72) = v17;
          ++*(v8 + 64);
          ++*(v11 + 4);
          LOBYTE(v17) = *(v8 + 80);
          v11[4] = v11[4] & 0xFFFFFFFFFFFFFFFELL | *(v8 + 80) & 1;
          v11[4] = *(v8 + 80) & 0xFFFFFFFFFFFFFFFELL | v17 & 1;
          v11[5] = *(v8 + 88);
          *(v8 + 88) = &str_67;
          *(v8 + 80) = 0;
          *(v11 + 12) = *(v8 + 96);
          re::StringID::destroyString((v8 + 80));
          re::DynamicArray<re::SMAssetStateCommand>::deinit((v8 + 40));
          re::DynamicArray<re::SMAssetStateTransition>::deinit(v8);
          v11 += 13;
          v8 += 104;
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

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::SMAssetState *,re::SMAssetState *,re::SMAssetState *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    re::DynamicArray<re::SMAssetStateTransition>::operator=(a4, v5);
    re::DynamicArray<re::SMAssetStateCommand>::operator=(a4 + 40, (v5 + 40));
    re::StringID::operator=((a4 + 80), (v5 + 80));
    *(a4 + 96) = *(v5 + 96);
    a4 += 104;
    v5 += 104;
  }

  while (v5 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::SMAssetStateTransition>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::SMAssetStateTransition>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::SMAssetStateTransition>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::SMAssetStateTransition>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::SMAssetStateTransition>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::SMAssetStateCommand>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::SMAssetStateCommand>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        re::ObjectHelper::destroy<re::SMAssetStateCommand>(*(a1 + 32), *(a1 + 32) + 424 * v6);
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::SMAssetStateCommand>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::SMAssetStateCommand>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::SMAssetStateTransition>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 96 * v2;
    do
    {
      re::StringID::destroyString((v3 + 72));
      re::StringID::destroyString((v3 + 56));
      re::StringID::destroyString((v3 + 40));
      result = re::DynamicArray<re::SMAssetTransitionCondition>::deinit(v3);
      v3 += 96;
      v4 -= 96;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::DynamicArray<re::SMAssetState>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::SMAssetState>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::SMAssetState>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::SMAssetStateGraph>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::SMAssetStateGraph>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::SMAssetStateGraph>::copy(a1, a2);
  }

  return a1;
}

void re::StateMachineAsset::~StateMachineAsset(re::StateMachineAsset *this)
{
  re::StateMachineAsset::deinit(this);
  re::FixedArray<re::DynamicArray<re::RigHierarchyJointDescription>>::deinit(this + 10);
  re::DynamicArray<re::SMAssetStateGraphGroup>::deinit(this + 40);
  re::DynamicArray<re::RenderGraphOutputData>::deinit(this);
}

void *re::IntrospectionDynamicArray<re::SMAssetTransitionCondition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SMAssetTransitionCondition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SMAssetTransitionCondition>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SMAssetTransitionCondition>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::SMAssetTransitionCondition>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::SMAssetTransitionCondition>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::SMAssetTransitionCondition>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SMAssetTransitionCondition>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::SMAssetTransitionCondition>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = (*(this + 4) + 40 * v8);
  *v9 = 0;
  v9[1] = &str_67;
  v9[2] = 0;
  v9[3] = 0;
  *(v9 + 30) = 0;
  v10 = *(this + 2);
  *(this + 2) = v10 + 1;
  ++*(this + 6);
  v11 = (*(this + 4) + 40 * v10);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

uint64_t re::IntrospectionDynamicArray<re::SMAssetTransitionCondition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

void re::DynamicArray<re::SMAssetTransitionCondition>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 40 * a2;
    v9 = a2;
    do
    {
      re::StringID::destroyString((*(a1 + 32) + v8));
      ++v9;
      v8 += 40;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 40 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 8) = &str_67;
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 30) = 0;
        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::DynamicArray<re::SMAssetTransitionCondition>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}