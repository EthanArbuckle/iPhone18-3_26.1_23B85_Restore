__n128 re::DynamicArray<re::TechniqueFunctionConstant>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::TechniqueFunctionConstant>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = re::DynamicString::DynamicString((*(this + 4) + 104 * v4), a2);
  *(v5 + 2) = *(a2 + 2);
  result = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 4) = v7;
  *(v5 + 5) = v8;
  *(v5 + 3) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v15, a2);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::TechniqueFunctionConstant const&>(a1, &v12, a2, a3);
  }

  else
  {
    ++*(a1 + 40);
    v9 = *(a1 + 16) + 152 * v7;
    re::DynamicString::operator=((v9 + 40), a3);
    *(v9 + 72) = *(a3 + 32);
    result = *(a3 + 48);
    v10 = *(a3 + 64);
    v11 = *(a3 + 80);
    *(v9 + 136) = *(a3 + 96);
    *(v9 + 120) = v11;
    *(v9 + 104) = v10;
    *(v9 + 88) = result;
  }

  return result;
}

{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v15, a2);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::TechniqueFunctionConstant>(a1, &v12, a2, a3);
  }

  else
  {
    ++*(a1 + 40);
    v9 = *(a1 + 16) + 152 * v7;
    re::DynamicString::operator=((v9 + 40), a3);
    *(v9 + 72) = *(a3 + 32);
    result = *(a3 + 48);
    v10 = *(a3 + 64);
    v11 = *(a3 + 80);
    *(v9 + 136) = *(a3 + 96);
    *(v9 + 120) = v11;
    *(v9 + 104) = v10;
    *(v9 + 88) = result;
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 24) < v4)
        {
          re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
        ++*(a1 + 40);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v5, v6);
        re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

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
      re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

unsigned __int8 *re::Result<re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::DynamicString>::~Result(unsigned __int8 *a1)
{
  v3 = *a1;
  v2 = (a1 + 8);
  if (v3 == 1)
  {
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v2);
  }

  else
  {
    re::DynamicString::deinit(v2);
  }

  return a1;
}

void *re::DynamicArray<re::WeakStringID>::add(void *this, void *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  *(v3[4] + 8 * v4) = *a2;
  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

size_t re::hashString(re *this, const char *a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  result = strlen(this);
  if (result)
  {
    MurmurHash3_x64_128(this, result, 0, v4);
    return (v4[1] + (v4[0] << 6) + (v4[0] >> 2) - 0x61C8864680B583E9) ^ v4[0];
  }

  return result;
}

void re::makeMaterialBuilder(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X4>, _BYTE *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X7>, uint64_t a8@<X8>, _DWORD *a9)
{
  v286 = *MEMORY[0x1E69E9840];
  if (!*(a3 + 40))
  {
    v21 = *v262;
    v22 = *&v262[16];
    *a8 = 0;
    *(a8 + 8) = v21;
    *(a8 + 24) = v22;
    return;
  }

  v200 = re::AssetHandle::loadedAsset<re::MaterialDefinitionAsset>((a3 + 32));
  v16 = *(v200 + 744);
  v246 = v16;
  if (v16)
  {
    v17 = v16 + 1;
  }

  if ((atomic_load_explicit(&qword_1EE19DA98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19DA98))
  {
    if (re::GraphicsFeatureFlags::enablePbrToSurfaceShaderConversion(void)::onceToken != -1)
    {
      dispatch_once(&re::GraphicsFeatureFlags::enablePbrToSurfaceShaderConversion(void)::onceToken, &__block_literal_global_14_1);
    }

    _MergedGlobals_137 = re::GraphicsFeatureFlags::enablePbrToSurfaceShaderConversion(void)::sEnablePbrToSurfaceShaderConversion;
    __cxa_guard_release(&qword_1EE19DA98);
  }

  if ((atomic_load_explicit(&qword_1EE19DAA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19DAA8))
  {
    qword_1EE19DAA0 = re::hashStringCaseInsensitive("Pbr", v15);
    __cxa_guard_release(&qword_1EE19DAA8);
  }

  if ((atomic_load_explicit(&qword_1EE19DAB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19DAB8))
  {
    qword_1EE19DAB0 = re::hashStringCaseInsensitive("TransparentPbr", v15);
    __cxa_guard_release(&qword_1EE19DAB8);
  }

  v18 = re::hashStringCaseInsensitive(v246[178], v15);
  v199 = v18;
  if (_MergedGlobals_137 == 1 && (v18 == qword_1EE19DAA0 || v18 == qword_1EE19DAB0))
  {
    memset(v262, 0, 24);
    if (v18 == qword_1EE19DAB0)
    {
      (*(*a2 + 8))(v251, a2, "engine:surfaceShaderTransparent.rematerialdefinition");
    }

    else
    {
      (*(*a2 + 8))(v251, a2, "engine:surfaceShader.rematerialdefinition");
    }

    v23 = *v262;
    *v262 = v251[0];
    v251[0] = v23;
    v24 = *&v262[16];
    *&v262[16] = *&v251[1];
    *&v251[1] = v24;
    re::AssetHandle::~AssetHandle(v251);
    v25 = re::AssetHandle::loadedAsset<re::MaterialDefinitionAsset>(v262);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v246, *(v25 + 744));
    re::AssetHandle::~AssetHandle(v262);
    re::parseFunctionConstants(v270, a1, v246, a3 + 296);
    if (v270[0])
    {
      memset(v262, 0, 32);
      re::DynamicString::setCapacity(v262, 0);
      memset(&v262[36], 0, 64);
      *&v251[0] = "EnableSurfaceShaderColorDithering";
      *(&v251[0] + 1) = 33;
      re::DynamicString::operator=(v262, v251);
      memset(&v262[36], 0, 64);
      *&v262[32] = 7340085;
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(&v271, "EnableSurfaceShaderColorDithering", v262);
      if (*v262 && (v262[8] & 1) != 0)
      {
        (*(**v262 + 40))(*v262, *&v262[16]);
      }

      v193 = a6;
      v20 = 1;
      goto LABEL_24;
    }

LABEL_37:
    re::DynamicString::DynamicString(v262, &v271);
    *a8 = 0;
    *(a8 + 8) = *v262;
    *(a8 + 32) = *&v262[24];
    *(a8 + 16) = *&v262[8];
    goto LABEL_377;
  }

  re::parseFunctionConstants(v270, a1, v246, a3 + 296);
  if ((v270[0] & 1) == 0)
  {
    goto LABEL_37;
  }

  v193 = a6;
  v20 = 0;
LABEL_24:
  v192 = a7;
  v27 = re::parseMaterialAssetMetadata(a3, v246, &v271, a5);
  *a9 = v27;
  if ((atomic_load_explicit(&qword_1EE19DAC8, memory_order_acquire) & 1) == 0)
  {
    v27 = __cxa_guard_acquire(&qword_1EE19DAC8);
    if (v27)
    {
      qword_1EE19DAC0 = re::hashString("OpaqueAR", v187);
      __cxa_guard_release(&qword_1EE19DAC8);
    }
  }

  v28 = a3;
  if (!v246[2] || (v29 = *(v246[3] + 4 * (qword_1EE19DAC0 % *(v246 + 10))), v29 == 0x7FFFFFFF))
  {
LABEL_30:
    if ((atomic_load_explicit(&qword_1EE19DAD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19DAD8))
    {
      qword_1EE19DAD0 = re::hashString("Opaque", v189);
      __cxa_guard_release(&qword_1EE19DAD8);
    }

    v27 = (v246 + 2);
    if (v246[2])
    {
      v31 = *(v246[3] + 4 * (qword_1EE19DAD0 % *(v246 + 10)));
      if (v31 != 0x7FFFFFFF)
      {
        v32 = v246[4];
        while (*(v32 + 24 * v31 + 8) != qword_1EE19DAD0)
        {
          v31 = *(v32 + 24 * v31) & 0x7FFFFFFF;
          if (v31 == 0x7FFFFFFF)
          {
            goto LABEL_39;
          }
        }

        *v262 = qword_1EE19DAC0;
        *&v251[0] = qword_1EE19DAD0;
        v27 = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v27, v262, v251);
      }
    }
  }

  else
  {
    v30 = v246[4];
    while (*(v30 + 24 * v29 + 8) != qword_1EE19DAC0)
    {
      v29 = *(v30 + 24 * v29) & 0x7FFFFFFF;
      if (v29 == 0x7FFFFFFF)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_39:
  if ((atomic_load_explicit(&qword_1EE19DAE8, memory_order_acquire) & 1) == 0)
  {
    v27 = __cxa_guard_acquire(&qword_1EE19DAE8);
    if (v27)
    {
      qword_1EE19DAE0 = re::hashString("TransparentAR", v188);
      __cxa_guard_release(&qword_1EE19DAE8);
    }
  }

  if (!v246[2] || (v33 = *(v246[3] + 4 * (qword_1EE19DAE0 % *(v246 + 10))), v33 == 0x7FFFFFFF))
  {
LABEL_45:
    if ((atomic_load_explicit(&qword_1EE19DAF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19DAF8))
    {
      qword_1EE19DAF0 = re::hashString("Transparent", v190);
      __cxa_guard_release(&qword_1EE19DAF8);
    }

    v27 = (v246 + 2);
    if (v246[2])
    {
      v35 = *(v246[3] + 4 * (qword_1EE19DAF0 % *(v246 + 10)));
      if (v35 != 0x7FFFFFFF)
      {
        v36 = v246[4];
        while (*(v36 + 24 * v35 + 8) != qword_1EE19DAF0)
        {
          v35 = *(v36 + 24 * v35) & 0x7FFFFFFF;
          if (v35 == 0x7FFFFFFF)
          {
            goto LABEL_53;
          }
        }

        *v262 = qword_1EE19DAE0;
        *&v251[0] = qword_1EE19DAF0;
        v27 = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v27, v262, v251);
      }
    }
  }

  else
  {
    v34 = v246[4];
    while (*(v34 + 24 * v33 + 8) != qword_1EE19DAE0)
    {
      v33 = *(v34 + 24 * v33) & 0x7FFFFFFF;
      if (v33 == 0x7FFFFFFF)
      {
        goto LABEL_45;
      }
    }
  }

LABEL_53:
  v245 = 0;
  v242[1] = 0;
  v243 = 0;
  v244 = 0;
  v241 = 0;
  v242[0] = 0;
  v238[1] = 0;
  v239 = 0;
  v238[0] = 0;
  v240 = 0;
  v196 = a8;
  if (!v20)
  {
    goto LABEL_170;
  }

  *&v262[8] = 0;
  *&v262[16] = &str_67;
  *&v262[24] = 0;
  *&v262[32] = &str_67;
  v269 = 0;
  memset(&v262[40], 0, 20);
  memset(&v262[64], 0, 48);
  v263 = 0u;
  v264 = 0u;
  v265 = 0;
  v266 = 0u;
  v267 = 0u;
  v268 = 0;
  *(&v251[0] + 1) = 0;
  *&v251[1] = &str_67;
  *(&v251[1] + 1) = 0;
  *&v251[2] = &str_67;
  v261 = 0;
  *(&v251[2] + 1) = 0;
  *&v252 = 0;
  memset(v253, 0, sizeof(v253));
  v254 = 0u;
  v255 = 0u;
  v256 = 0u;
  DWORD2(v252) = 0;
  v257 = 0;
  v258 = 0u;
  v259 = 0u;
  v260 = 0;
  (*(*a2 + 8))(&v228, a2, "engine:default.metallib");
  re::AssetHandle::AssetHandle(v237, &v228);
  re::getLibraryHash(&v273, a1, v237);
  if (v273)
  {
    v37 = *(&v273 + 1);
  }

  else
  {
    v37 = 0;
  }

  re::AssetHandle::~AssetHandle(v237);
  v262[0] = 3;
  if (v262[8])
  {
    if (v262[8])
    {
    }
  }

  *&v262[8] = 0;
  *&v262[16] = &str_67;
  v39 = re::internal::compileTimeHornerHash<15ul>(31, "geometryModifier", 0, 0, 16);
  *&v262[8] = 2 * v39;
  *&v262[16] = "geometryModifier";
  if (v262[24])
  {
    if (v262[24])
    {
    }
  }

  v40 = re::internal::compileTimeHornerHash<29ul>(0, 0, 28);
  *&v262[24] = 2 * v40;
  *&v262[32] = "pbrEmulationGeometryModifier";
  *&v262[56] = 4;
  *&v262[40] = v37;
  LOBYTE(v251[0]) = 4;
  if (BYTE8(v251[0]))
  {
    if (BYTE8(v251[0]))
    {
    }
  }

  *(&v251[0] + 1) = 0;
  *&v251[1] = &str_67;
  v41 = re::internal::compileTimeHornerHash<15ul>(31, "surfaceShader", 0, 0, 13);
  *(&v251[0] + 1) = 2 * v41;
  *&v251[1] = "surfaceShader";
  if (BYTE8(v251[1]))
  {
    if (BYTE8(v251[1]))
    {
    }
  }

  v42 = re::internal::compileTimeHornerHash<26ul>(0, 0, 25);
  *(&v251[1] + 1) = 2 * v42;
  *&v251[2] = "pbrEmulationSurfaceShader";
  DWORD2(v252) = 3;
  *(&v251[2] + 1) = v37;
  v197 = qword_1EE19DAB0;
  *v249 = 0;
  v248 = 0u;
  v247 = 0u;
  *&v249[4] = 0x7FFFFFFFLL;
  for (i = 0; i != 28; i += 2)
  {
    v44 = (&off_1E871BE90)[i];
    v45 = (&off_1E871BE90)[i + 1];
    v46 = *(&off_1E871BE90 + 8 * i + 10);
    v47 = re::Hash<re::DynamicString>::operator()(&v273, v44);
    v48 = v47;
    if (!v247)
    {
      LODWORD(v49) = 0;
LABEL_80:
      v58 = re::HashTable<re::DynamicString,re::BuildPropagatedFunctionConstantsForPbrEmulation(re::SharedPtr<re::MaterialDefinition> const&,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::PropagatedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(&v247, v49, v48);
      *(v58 + 40) = v44;
      *(v58 + 48) = v45;
      *(v58 + 50) = v46;
      ++*&v249[8];
      continue;
    }

    v49 = v47 % DWORD2(v248);
    v50 = *(*(&v247 + 1) + 4 * v49);
    if (v50 == 0x7FFFFFFF)
    {
      goto LABEL_80;
    }

    v51 = v248;
    while (1)
    {
      v52 = v51 + (v50 << 6);
      v53 = *(v52 + 16);
      v54 = *(v52 + 24);
      v55 = v52 + 17;
      v56 = ((v53 & 1) != 0 ? v54 : v55);
      v57 = strcmp(v56, v44);
      if (!v57)
      {
        break;
      }

      v50 = *(v51 + (v50 << 6)) & 0x7FFFFFFF;
      if (v50 == 0x7FFFFFFF)
      {
        goto LABEL_80;
      }
    }
  }

  if (v199 == v197)
  {
    v59 = "Transparent";
  }

  else
  {
    v59 = "Opaque";
  }

  v60 = *(v200 + 744);
  v61 = *(v60 + 120);
  if (v61)
  {
    v62 = *(v60 + 128);
    v63 = 8 * v61;
    while (1)
    {
      v64 = *v62;
      v57 = strcmp(v59, **v62);
      if (!v57)
      {
        break;
      }

      ++v62;
      v63 -= 8;
      if (!v63)
      {
        goto LABEL_95;
      }
    }

    v65 = v64[7];
    if (v65)
    {
      v66 = v64[8];
      v67 = 104 * v65;
      do
      {
        v57 = re::HashTable<re::DynamicString,re::BuildPropagatedFunctionConstantsForPbrEmulation(re::SharedPtr<re::MaterialDefinition> const&,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::PropagatedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(&v247, v66);
        if (v57)
        {
          *(v57 + 10) = *(v66 + 36) != 0;
        }

        v66 += 104;
        v67 -= 104;
      }

      while (v67);
    }
  }

LABEL_95:
  v68 = *(a3 + 328);
  if (v68)
  {
    v69 = 0;
    v70 = *(a3 + 312);
    while (1)
    {
      v71 = *v70;
      v70 += 20;
      if (v71 < 0)
      {
        break;
      }

      if (v68 == ++v69)
      {
        LODWORD(v69) = *(a3 + 328);
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
    v72 = *(a3 + 312);
    do
    {
      v57 = re::HashTable<re::DynamicString,re::BuildPropagatedFunctionConstantsForPbrEmulation(re::SharedPtr<re::MaterialDefinition> const&,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::PropagatedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(&v247, v72 + 80 * v69 + 8);
      if (v57)
      {
        v73 = v57;
        v74 = v72 + 80 * v69;
        v75 = *(v74 + 48);
        v76 = *(v74 + 56);
        v77 = (v74 + 49);
        if (v75)
        {
          v78 = v76;
        }

        else
        {
          v78 = v77;
        }

        v57 = strcmp(v78, "true");
        *(v73 + 10) = v57 == 0;
      }

      v79 = *(a3 + 328);
      if (v79 <= v69 + 1)
      {
        v79 = v69 + 1;
      }

      v72 = *(a3 + 312);
      while (v79 - 1 != v69)
      {
        LODWORD(v69) = v69 + 1;
        if ((*(v72 + 80 * v69) & 0x80000000) != 0)
        {
          goto LABEL_115;
        }
      }

      LODWORD(v69) = v79;
LABEL_115:
      ;
    }

    while (v69 != v68);
  }

  v234 = 0;
  v235 = 0;
  v236 = 0;
  v80 = HIDWORD(v248);
  v82 = *v249;
  if (*v249)
  {
    v83 = 0;
    v84 = v248;
    while (1)
    {
      v85 = *v84;
      v84 += 16;
      if (v85 < 0)
      {
        break;
      }

      if (*v249 == ++v83)
      {
        LODWORD(v83) = *v249;
        break;
      }
    }
  }

  else
  {
    LODWORD(v83) = 0;
  }

  if (v83 != *v249)
  {
    v86 = 0;
    v87 = v248;
    do
    {
      v88 = v87 + (v83 << 6);
      v274 = 0u;
      v273 = 0u;
      re::DynamicString::setCapacity(&v273, 0);
      memset(v275 + 4, 0, 64);
      re::DynamicString::operator=(&v273, (v88 + 8));
      v89 = 0uLL;
      memset(v275 + 4, 0, 64);
      BYTE4(v275[0]) = *(v88 + 50);
      strcpy(v275, "5");
      WORD1(v275[0]) = *(v88 + 48);
      v90 = v235;
      if (v235 <= v86)
      {
        goto LABEL_387;
      }

      v91 = re::DynamicString::operator=((v236 + 104 * v86), &v273);
      *(v91 + 2) = v275[0];
      v92 = v275[1];
      v93 = v275[2];
      v94 = v275[3];
      *(v91 + 24) = v275[4];
      *(v91 + 4) = v93;
      *(v91 + 5) = v94;
      *(v91 + 3) = v92;
      v81 = v273;
      if (v273 && (BYTE8(v273) & 1) != 0)
      {
        v81 = (*(*v273 + 40))();
      }

      ++v86;
      if (*v249 <= (v83 + 1))
      {
        v95 = v83 + 1;
      }

      else
      {
        v95 = *v249;
      }

      v87 = v248;
      while (v95 - 1 != v83)
      {
        LODWORD(v83) = v83 + 1;
        if ((*(v248 + (v83 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_137;
        }
      }

      LODWORD(v83) = v95;
LABEL_137:
      ;
    }

    while (v83 != v82);
  }

  re::HashTable<re::DynamicString,re::BuildPropagatedFunctionConstantsForPbrEmulation(re::SharedPtr<re::MaterialDefinition> const&,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::PropagatedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~HashTable(&v247);
  re::FixedArray<float>::operator=(v253, &v234);
  re::FixedArray<re::TechniqueFunctionConstant>::deinit(&v234);
  re::DynamicArray<re::LinkedFunction>::add(v242, v262);
  re::DynamicArray<re::LinkedFunction>::add(v238, v251);
  re::AssetHandle::~AssetHandle(&v228);
  if (*(&v258 + 1))
  {
    if (v261)
    {
      (*(**(&v258 + 1) + 40))();
    }

    v261 = 0;
    v259 = 0uLL;
    *(&v258 + 1) = 0;
    ++v260;
  }

  if (*(&v255 + 1))
  {
    if (v258)
    {
      (*(**(&v255 + 1) + 40))();
    }

    *&v258 = 0;
    v256 = 0uLL;
    *(&v255 + 1) = 0;
    ++v257;
  }

  re::FixedArray<re::TypedArgument>::deinit(&v254);
  v96 = re::FixedArray<re::TechniqueFunctionConstant>::deinit(v253);
  if (v252)
  {

    *&v252 = 0;
  }

  v28 = a3;
  if (BYTE8(v251[1]))
  {
    if (BYTE8(v251[1]))
    {
    }
  }

  *(&v251[1] + 1) = 0;
  *&v251[2] = &str_67;
  if (BYTE8(v251[0]))
  {
    if (BYTE8(v251[0]))
    {
    }
  }

  if (*(&v266 + 1))
  {
    if (v269)
    {
      (*(**(&v266 + 1) + 40))();
    }

    v269 = 0;
    v267 = 0uLL;
    *(&v266 + 1) = 0;
    ++v268;
  }

  if (*(&v263 + 1))
  {
    if (v266)
    {
      (*(**(&v263 + 1) + 40))();
    }

    *&v266 = 0;
    v264 = 0uLL;
    *(&v263 + 1) = 0;
    ++v265;
  }

  re::FixedArray<re::TypedArgument>::deinit(&v262[96]);
  v27 = re::FixedArray<re::TechniqueFunctionConstant>::deinit(&v262[64]);
  if (*&v262[48])
  {

    *&v262[48] = 0;
  }

  if (v262[24])
  {
    if (v262[24])
    {
    }
  }

  *&v262[24] = 0;
  *&v262[32] = &str_67;
  if (v262[8])
  {
    if (v262[8])
    {
    }
  }

LABEL_170:
  v97 = *(v28 + 384);
  if (!v97)
  {
LABEL_314:
    v275[0] = 0u;
    v274 = 0u;
    v273 = 0u;
    v166 = v243;
    v168 = v239;
    if (v166)
    {
      v169 = v245;
      v170 = v274;
      v171 = 200 * v166;
      do
      {
        re::ObjectHelper::move<re::LinkedFunction>(v169, v170);
        v169 += 200;
        v170 += 200;
        v171 -= 200;
      }

      while (v171);
    }

    if (v168)
    {
      v172 = v241;
      v173 = *(&v275[0] + 1);
      v174 = 200 * v168;
      do
      {
        re::ObjectHelper::move<re::LinkedFunction>(v172, v173);
        v172 += 200;
        v173 += 200;
        v174 -= 200;
      }

      while (v174);
    }

    v175 = v246;
    v221 = v246;
    if (v246)
    {
      v176 = v246 + 1;
    }

    v202[0] = *(v28 + 344);
    if (v202[0] == 1)
    {
      v202[1] = *(v28 + 345);
    }

    v203 = *(v28 + 346);
    if (v203 == 1)
    {
      v204 = *(v28 + 347);
    }

    v205 = *(v28 + 348);
    if (v205 == 1)
    {
      v206 = *(v28 + 349);
    }

    v207 = *(v28 + 350);
    if (v207 == 1)
    {
      v208 = *(v28 + 351);
    }

    v209 = *(v28 + 352);
    if (v209 == 1)
    {
      v210 = *(v28 + 353);
    }

    v211 = *(v28 + 354);
    if (v211 == 1)
    {
      v212 = *(v28 + 355);
    }

    v213 = *(v28 + 356);
    if (v213 == 1)
    {
      v214 = *(v28 + 357);
    }

    v215 = *(v28 + 358);
    if (v215 == 1)
    {
      v216 = *(v28 + 359);
    }

    v217 = *(v28 + 360);
    if (v217 == 1)
    {
      v218 = *(v28 + 361);
    }

    v219 = *(v28 + 362);
    if (v219 == 1)
    {
      v220 = *(v28 + 363);
    }

    re::MaterialBuilder::MaterialBuilder(v262, &v221, v192, &v271, v202, &v273, v28, v193, *(v28 + 408));
    if (v175)
    {
    }

    re::MaterialBuilder::MaterialBuilder(v251, v262);
    *v196 = 1;
    re::MaterialBuilder::MaterialBuilder(v196 + 8, v251);
    re::MaterialBuilder::~MaterialBuilder(v251);
    re::MaterialBuilder::~MaterialBuilder(v262);
    re::FixedArray<re::LinkedFunction>::deinit(&v274 + 1);
    re::FixedArray<re::LinkedFunction>::deinit(&v273);
    goto LABEL_376;
  }

  v98 = *(v28 + 400);
  v195 = &v98[272 * v97];
  v198 = v28 + 9;
  while (2)
  {
    *&v262[8] = 0;
    *&v262[16] = &str_67;
    *&v262[24] = 0;
    *&v262[32] = &str_67;
    v269 = 0;
    memset(&v262[40], 0, 20);
    v265 = 0;
    v263 = 0u;
    v264 = 0u;
    memset(&v262[64], 0, 48);
    v266 = 0u;
    v267 = 0u;
    v268 = 0;
    v99 = *(v98 + 10);
    if (v99)
    {
      v100 = atomic_load((v99 + 896));
      if (v100 == 3)
      {
        v180 = re::AssetHandle::assetInfo((v98 + 72));
        if (v180[17])
        {
          v181 = v180[18];
        }

        else
        {
          v181 = v180 + 137;
        }

        re::DynamicString::format("Found invalid linkedFunctionLibrary asset (%s) in FunctionLink. loadFailed() returned true.", v251, v181, v191);
        goto LABEL_360;
      }
    }

    re::AssetHandle::AssetHandle(v233, (v98 + 72));
    v101 = re::AssetHandle::assetInfo((v98 + 72));
    if (v101[17])
    {
      v102 = v101[18];
    }

    else
    {
      v102 = v101 + 137;
    }

    re::DynamicString::format("Searching for linkedFunctionLibrary asset '%s'", v251, v102);
    if (BYTE8(v251[0]))
    {
      v103 = *&v251[1];
    }

    else
    {
      v103 = v251 + 9;
    }

    re::validateAssetType(v233, v103);
    if (*&v251[0] && (BYTE8(v251[0]) & 1) != 0)
    {
      (*(**&v251[0] + 40))();
    }

    re::AssetHandle::~AssetHandle(v233);
    v105 = *(v98 + 10);
    if (v105)
    {
      v106 = *(v105 + 280);
      v107 = re::ShaderGraphAsset::assetType(v104);
      if (v106 == v107)
      {
        if (!*a4)
        {
          v177 = "ShaderGraphMaterial in FunctionLink was not loaded.";
          goto LABEL_359;
        }

        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v262[48], *a4);
        goto LABEL_190;
      }
    }

    else
    {
      re::ShaderGraphAsset::assetType(v104);
    }

    re::AssetHandle::AssetHandle(v232, (v98 + 72));
    re::getLibraryHash(&v273, a1, v232);
    re::AssetHandle::~AssetHandle(v232);
    if (v273)
    {
      *&v262[40] = *(&v273 + 1);
      if (!*(&v273 + 1))
      {
        v178 = re::AssetHandle::assetInfo((v98 + 72));
        if (v178[17])
        {
          v179 = v178[18];
        }

        else
        {
          v179 = v178 + 137;
        }

        re::DynamicString::format("Could not find hash for linkedFunctionLibrary asset (%s) in FunctionLink.", v251, v179, v191);
        goto LABEL_360;
      }

LABEL_190:
      v262[0] = *v98;
      v109 = *(v98 + 6);
      if (v109)
      {
        v110 = v109 >> 1;
      }

      else
      {
        v110 = v109 >> 1;
      }

      if (!v110)
      {
        v177 = "Found empty linkedFunctionName in FunctionLink.";
LABEL_359:
        goto LABEL_360;
      }

      v111 = re::StringID::StringID(v251, (v98 + 40));
      v112 = v251[0];
      *&v251[0] = 0;
      *(&v251[0] + 1) = &str_67;
      v113 = v262[24];
      *&v262[24] = v112;
      if (v113)
      {
        if (v251[0])
        {
          if (v251[0])
          {
          }
        }
      }

      if (*v98 - 1 <= 1)
      {
        v114 = *(v98 + 2);
        if (v114)
        {
          v115 = v114 >> 1;
        }

        else
        {
          v115 = v114 >> 1;
        }

        if (!v115)
        {
          v177 = "Found empty shaderFunctionName in FunctionLink.";
          goto LABEL_359;
        }

        v111 = re::StringID::StringID(v251, (v98 + 8));
        v116 = v251[0];
        *&v251[0] = 0;
        *(&v251[0] + 1) = &str_67;
        v117 = v262[8];
        *&v262[8] = v116;
        if (v117)
        {
          if (v251[0])
          {
            if (v251[0])
            {
            }
          }
        }
      }

      v118 = *(v98 + 14);
      if (v118)
      {
        v119 = 0;
        v120 = *(v98 + 16);
        v121 = 4 * v118;
        do
        {
          v122 = *v120++;
          v119 |= v122;
          v121 -= 4;
        }

        while (v121);
      }

      else
      {
        v119 = 0;
      }

      *&v262[56] = v119;
      memset(v276, 0, 36);
      *&v276[36] = 0x7FFFFFFFLL;
      v123 = *(v98 + 10);
      if (v123)
      {
        v124 = *(v123 + 280);
        v125 = re::ShaderLibraryAsset::assetType(v111);
        if (v124 == v125)
        {
          v126 = re::AssetHandle::loadedAsset<re::ShaderLibraryAsset>((v98 + 72));
          if (!v126)
          {
            v185 = v251[0];
            v186 = v251[1];
            *v196 = 0;
            *(v196 + 8) = v185;
            *(v196 + 24) = v186;
            re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v276);
            re::LinkedFunction::~LinkedFunction(v262);
            goto LABEL_376;
          }

          re::ShaderManager::makeFunction(a1[6], *(v126 + 72), *&v262[32], 0, v279);
          v127 = [*v279 functionConstantsDictionary];
          memset(v251, 0, 36);
          *(&v251[2] + 4) = 0x7FFFFFFFLL;
          v128 = [v127 keyEnumerator];
          v129 = [v128 nextObject];
          if (v129)
          {
            v130 = v129;
            do
            {
              *&v273 = [v130 UTF8String];
              *&v247 = [v127 objectForKey_];
              re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(v251, &v273, &v247);
              if (v247)
              {
              }

              v130 = [v128 nextObject];
            }

            while (v130);
          }

          v131 = *v276;
          v132 = *&v251[0];
          if (!*v276 || *v276 == *&v251[0])
          {
            *v276 = *&v251[0];
            *&v251[0] = v131;
            v164 = *&v276[8];
            *&v276[8] = *(v251 + 8);
            *(v251 + 8) = v164;
            v165 = *&v276[24];
            *&v276[24] = *(&v251[1] + 8);
            *(&v251[1] + 8) = v165;
            v28 = a3;
            goto LABEL_311;
          }

          v28 = a3;
          if (*&v276[28])
          {
            if (*&v276[24])
            {
              memset_pattern16(*&v276[8], &memset_pattern_178, 4 * *&v276[24]);
            }

            v133 = *&v276[32];
            if (*&v276[32])
            {
              v134 = 0;
              v135 = 0;
              do
              {
                v136 = *&v276[16];
                v137 = *(*&v276[16] + v134);
                if (v137 < 0)
                {
                  v138 = *&v276[16] + v134;
                  *(*&v276[16] + v134) = v137 & 0x7FFFFFFF;
                  v139 = *(v136 + v134 + 16);
                  if (v139)
                  {

                    *(v138 + 16) = 0;
                    v133 = *&v276[32];
                  }
                }

                ++v135;
                v134 += 32;
              }

              while (v135 < v133);
            }

            *&v276[28] = 0;
            *&v276[36] = 0x7FFFFFFF;
            ++*&v276[40];
            v132 = *&v251[0];
          }

          if (v132)
          {
            if (*&v276[24] < HIDWORD(v251[1]))
            {
              re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::setCapacity(v276, HIDWORD(v251[1]));
            }

            re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::move(v276, v251);
LABEL_311:
            ++*&v276[40];
          }

          re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v251);
          if (*v279)
          {
          }

LABEL_238:
          v140 = v198;
          if (*(v28 + 8))
          {
            v140 = *(v28 + 16);
          }

          re::DynamicString::format("%s [LinkedFunction %s]", &v228, v140, *&v262[32]);
          *v249 = 0;
          *&v248 = 0;
          v247 = 0uLL;
          DWORD2(v248) = 0;
          if (v229)
          {
            v141 = v231;
          }

          else
          {
            v141 = v230;
          }

          v226[0] = 1;
          re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v227, (v98 + 184));
          v222[0] = 1;
          re::DynamicArray<BOOL>::DynamicArray(v223, v98 + 29);
          v143 = re::parseFunctionConstants(v141, v276, (v98 + 136), v226, v222, 0, 1, 0, &v273);
          if (v222[0] == 1)
          {
            v142 = v223[0];
            if (v223[0])
            {
              if (v225)
              {
                v142 = (*(*v223[0] + 40))(v143);
              }

              v225 = 0;
              memset(v223, 0, sizeof(v223));
              ++v224;
            }
          }

          if (v226[0] == 1)
          {
            re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v227);
          }

          if (v273)
          {
            v144 = DWORD1(v275[0]);
            v145 = DWORD2(v275[0]);
            if (DWORD2(v275[0]))
            {
              v86 = 0;
              v146 = *(&v274 + 1);
              while (1)
              {
                v147 = *v146;
                v146 += 38;
                if (v147 < 0)
                {
                  break;
                }

                if (DWORD2(v275[0]) == ++v86)
                {
                  v86 = DWORD2(v275[0]);
                  break;
                }
              }
            }

            else
            {
              v86 = 0;
            }

            if (v86 != DWORD2(v275[0]))
            {
              v153 = 0;
              while (1)
              {
                v90 = *&v262[72];
                if (*&v262[72] <= v153)
                {
                  break;
                }

                v154 = *(&v274 + 1) + 152 * v86;
                v155 = re::DynamicString::operator=((*&v262[80] + 104 * v153), (v154 + 40));
                *(v155 + 2) = *(v154 + 72);
                v156 = *(v154 + 120);
                v157 = *(v154 + 136);
                v158 = *(v154 + 104);
                *(v155 + 3) = *(v154 + 88);
                *(v155 + 4) = v158;
                *(v155 + 24) = v157;
                *(v155 + 5) = v156;
                ++v153;
                if (DWORD2(v275[0]) <= (v86 + 1))
                {
                  v159 = (v86 + 1);
                }

                else
                {
                  v159 = DWORD2(v275[0]);
                }

                while (v159 - 1 != v86)
                {
                  v86 = (v86 + 1);
                  if ((*(*(&v274 + 1) + 152 * v86) & 0x80000000) != 0)
                  {
                    goto LABEL_273;
                  }
                }

                v86 = v159;
LABEL_273:
                if (v86 == v145)
                {
                  goto LABEL_274;
                }
              }

              v234 = 0;
              v252 = 0u;
              v253[0] = 0u;
              memset(v251, 0, sizeof(v251));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v279 = 136315906;
              *&v279[4] = "operator[]";
              v280 = 1024;
              v281 = 468;
              v282 = 2048;
              v283 = v153;
              v284 = 2048;
              v285 = v90;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_387:
              v250 = 0;
              v278 = v89;
              v277 = v89;
              *&v276[32] = v89;
              *&v276[16] = v89;
              *v276 = v89;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v279 = 136315906;
              *&v279[4] = "operator[]";
              v280 = 1024;
              v281 = 468;
              v282 = 2048;
              v283 = v86;
              v284 = 2048;
              v285 = v90;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

LABEL_274:
            v160 = re::TechniqueDefinitionBuilder::hashFunctionConstants(*&v262[80], *&v262[72], 1);
            *&v262[88] = v160;
            v161 = *v98;
            if (v161 <= 2)
            {
              v28 = a3;
              if (v161 != 1)
              {
                if (v161 != 2)
                {
                  goto LABEL_277;
                }

LABEL_280:
                v162 = v238;
LABEL_282:
                re::DynamicArray<re::LinkedFunction>::add(v162, v262);
                v150 = 1;
LABEL_283:
                if (v273 == 1)
                {
                  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v273 + 1);
                }

                else if (*(&v273 + 1) && (v274 & 1) != 0)
                {
                  (*(**(&v273 + 1) + 40))();
                }

                re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v247);
                if (v228 && (v229 & 1) != 0)
                {
                  (*(*v228 + 40))();
                }

                v163.n128_f64[0] = re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v276);
                if (*(&v266 + 1))
                {
                  if (v269)
                  {
                    (*(**(&v266 + 1) + 40))(v163.n128_f64[0]);
                  }

                  v269 = 0;
                  v267 = 0uLL;
                  *(&v266 + 1) = 0;
                  ++v268;
                }

                if (*(&v263 + 1))
                {
                  if (v266)
                  {
                    (*(**(&v263 + 1) + 40))(v163);
                  }

                  *&v266 = 0;
                  v264 = 0uLL;
                  *(&v263 + 1) = 0;
                  ++v265;
                }

                re::FixedArray<re::TypedArgument>::deinit(&v262[96]);
                v27 = re::FixedArray<re::TechniqueFunctionConstant>::deinit(&v262[64]);
                if (*&v262[48])
                {

                  *&v262[48] = 0;
                }

                if (v262[24])
                {
                  if (v262[24])
                  {
                  }
                }

                *&v262[24] = 0;
                *&v262[32] = &str_67;
                if (v262[8])
                {
                  if (v262[8])
                  {
                  }
                }

                if ((v150 & 1) == 0)
                {
                  goto LABEL_376;
                }

                v98 += 272;
                if (v98 == v195)
                {
                  goto LABEL_314;
                }

                continue;
              }

LABEL_281:
              v162 = v242;
              goto LABEL_282;
            }

            v28 = a3;
            if (v161 == 3)
            {
              goto LABEL_281;
            }

            if (v161 == 4)
            {
              goto LABEL_280;
            }

LABEL_277:
          }

          else
          {
            v148 = v230;
            if (v229)
            {
              v148 = v231;
            }

            v149 = &v274 + 1;
            if (v274)
            {
              v149 = *(&v274 + 1);
            }

            re::DynamicString::format("Failed to parse %s function constants: %s", v251, v148, v149);
          }

          v150 = 0;
          v151 = v251[0];
          v152 = v251[1];
          *v196 = 0;
          *(v196 + 8) = v151;
          *(v196 + 24) = v152;
          goto LABEL_283;
        }
      }

      else
      {
        v125 = re::ShaderLibraryAsset::assetType(v111);
      }

      re::ShaderGraphAsset::assetType(v125);
      goto LABEL_238;
    }

    break;
  }

  if (*(v28 + 8))
  {
    v198 = *(v28 + 16);
  }

  re::DynamicString::format("[%s] - unable to get linked function (%s) library hash", v251, v198, *&v262[32]);
LABEL_360:
  v182 = v251[0];
  v183 = v251[1];
  *v196 = 0;
  *(v196 + 8) = v182;
  *(v196 + 24) = v183;
  if (*(&v266 + 1))
  {
    if (v269)
    {
      (*(**(&v266 + 1) + 40))();
    }

    v269 = 0;
    v267 = 0uLL;
    *(&v266 + 1) = 0;
    ++v268;
  }

  if (*(&v263 + 1))
  {
    if (v266)
    {
      (*(**(&v263 + 1) + 40))();
    }

    *&v266 = 0;
    v264 = 0uLL;
    *(&v263 + 1) = 0;
    ++v265;
  }

  re::FixedArray<re::TypedArgument>::deinit(&v262[96]);
  v184 = re::FixedArray<re::TechniqueFunctionConstant>::deinit(&v262[64]);
  if (*&v262[48])
  {

    *&v262[48] = 0;
  }

  if (v262[24])
  {
    if (v262[24])
    {
    }
  }

  *&v262[24] = 0;
  *&v262[32] = &str_67;
  if (v262[8])
  {
    if (v262[8])
    {
    }
  }

LABEL_376:
  re::DynamicArray<re::LinkedFunction>::deinit(v238);
  re::DynamicArray<re::LinkedFunction>::deinit(v242);
LABEL_377:
  if (v270[0] == 1)
  {
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v271);
  }

  else if (v271 && (v272 & 1) != 0)
  {
    (*(*v271 + 40))();
  }

  if (v246)
  {
  }
}

uint64_t re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(uint64_t a1, unint64_t *a2, void *a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  result = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v8, v7);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::DynamicArray<re::LinkedFunction>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::LinkedFunction>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 200 * v4;
  *v5 = *a2;
  re::StringID::StringID((v5 + 8), (a2 + 8));
  re::StringID::StringID((v5 + 24), (a2 + 24));
  v6 = *(a2 + 48);
  *(v5 + 40) = *(a2 + 40);
  *(v5 + 48) = v6;
  if (v6)
  {
    v7 = (v6 + 8);
  }

  *(v5 + 56) = *(a2 + 56);
  result = re::FixedArray<re::TechniqueFunctionConstant>::FixedArray((v5 + 64), a2 + 64);
  v9 = *(a2 + 88);
  *(v5 + 96) = 0;
  *(v5 + 88) = v9;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  v10 = *(a2 + 96);
  if (v10)
  {
    re::FixedArray<re::TypedArgument>::init<>(v5 + 96, v10, *(a2 + 104));
    result = re::FixedArray<re::TypedArgument>::copy(v5 + 96, a2 + 96);
  }

  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  v11 = *(a2 + 120);
  *(v5 + 152) = 0;
  if (v11)
  {
    v12 = *(a2 + 136);
    *(v5 + 120) = v11;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((v5 + 120), v12);
    ++*(v5 + 144);
    result = re::DynamicArray<re::RigNodeChannel>::copy((v5 + 120), a2 + 120);
  }

  *(v5 + 160) = 0;
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;
  *(v5 + 184) = 0;
  v13 = *(a2 + 160);
  *(v5 + 192) = 0;
  if (v13)
  {
    v14 = *(a2 + 176);
    *(v5 + 160) = v13;
    re::DynamicArray<float *>::setCapacity((v5 + 160), v14);
    ++*(v5 + 184);
    result = re::DynamicArray<char const*>::copy((v5 + 160), a2 + 160);
  }

  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::validateAssetType(const re::AssetHandle *a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = re::AssetHandle::AssetHandle(v21, a1);
  *&__src = re::ShaderLibraryAsset::assetType(v4);
  *(&__src + 1) = re::ShaderGraphAsset::assetType(__src);
  __dst = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v5 = re::DynamicArray<re::AssetType const*>::setCapacity(&v23, 2uLL);
  ++v26;
  v6 = v25;
  if (v25 == -1)
  {
    v28 = 0;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "copy";
    v32 = 1024;
    v33 = 643;
    v34 = 2048;
    v35 = 0;
    v36 = 2048;
    v37 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v25 > 1)
  {
    v8 = __dst;
    *__dst = __src;
  }

  else
  {
    if (v24 <= 1)
    {
      if (v23)
      {
        if (v24)
        {
          v7 = 2;
        }

        else
        {
          v7 = 8;
        }
      }

      else
      {
        v7 = 2;
      }

      re::DynamicArray<re::AssetType const*>::setCapacity(&v23, v7);
    }

    v9 = v25;
    v8 = __dst;
    v10 = 8 * v25;
    v11 = &__src + 8 * v25;
    if (v25)
    {
      memcpy(__dst, &__src, 8 * v25);
    }

    memcpy(&v8[8 * v9], v11, 16 - v10);
    v6 = 2;
  }

  v12 = 0;
  v13 = 8 * v6 - 8;
  do
  {
    if (v22)
    {
      v14 = *(v22 + 280);
    }

    else
    {
      v14 = 0;
    }

    v15 = *&v8[v12];
    v16 = v14 == v15 || v13 == v12;
    v12 += 8;
  }

  while (!v16);
  if (v23)
  {
    v17 = v8 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    (*(*v23 + 40))();
  }

  re::AssetHandle::~AssetHandle(v21);
  if (v14 != v15)
  {
    v19 = *re::assetsLogObjects(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = **(*(a1 + 1) + 280);
      *buf = 136315394;
      *&buf[4] = v20;
      *&buf[12] = 2080;
      *&buf[14] = a2;
      _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "MaterialCompiler: validateAssetType failed for asset type %s. Caller: %s", buf, 0x16u);
    }
  }
}

uint64_t re::AssetHandle::loadedAsset<re::ShaderLibraryAsset>(re::ShaderLibraryAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::ShaderLibraryAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

void *re::DynamicArray<re::LinkedFunction>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::LinkedFunction>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 200 * v4;
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
  v8 = *(a2 + 40);
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = &str_67;
  v9 = *(a2 + 48);
  *(v5 + 40) = v8;
  *(v5 + 48) = v9;
  *(a2 + 48) = 0;
  *(v5 + 56) = *(a2 + 56);
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 64) = 0;
  v10 = *(a2 + 72);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 72) = v10;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v11 = *(v5 + 80);
  v12 = *(a2 + 88);
  *(v5 + 80) = *(a2 + 80);
  *(a2 + 80) = v11;
  *(v5 + 88) = v12;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  v13 = *(a2 + 104);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 104) = v13;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v14 = *(v5 + 112);
  *(v5 + 112) = *(a2 + 112);
  *(a2 + 112) = v14;
  *(v5 + 152) = 0;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 120) = 0;
  *(v5 + 144) = 0;
  v15 = *(a2 + 128);
  *(v5 + 120) = *(a2 + 120);
  *(v5 + 128) = v15;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v16 = *(v5 + 136);
  *(v5 + 136) = *(a2 + 136);
  *(a2 + 136) = v16;
  v17 = *(v5 + 152);
  *(v5 + 152) = *(a2 + 152);
  *(a2 + 152) = v17;
  ++*(a2 + 144);
  ++*(v5 + 144);
  *(v5 + 192) = 0;
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;
  *(v5 + 160) = 0;
  *(v5 + 184) = 0;
  v18 = *(a2 + 168);
  *(v5 + 160) = *(a2 + 160);
  *(v5 + 168) = v18;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v19 = *(v5 + 176);
  *(v5 + 176) = *(a2 + 176);
  *(a2 + 176) = v19;
  v20 = *(v5 + 192);
  *(v5 + 192) = *(a2 + 192);
  *(a2 + 192) = v20;
  ++*(a2 + 184);
  ++*(v5 + 184);
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

re::DynamicString *re::MaterialCompiler::getCurrentCompiledAssetInfo@<X0>(re::MaterialCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::MaterialAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::MaterialCompiler::assetIntrospectionType(re::MaterialCompiler *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::MaterialAsset>(BOOL)::info = re::introspect_MaterialAsset(0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[229];
}

void *re::MaterialCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, re::MaterialCompiler::getSupportedExtensions(void)const::supportedExtensions);
}

FILE *re::MaterialCompiler::compile@<X0>(re::MaterialCompiler *this@<X0>, re *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = re::globalAllocators(this);
  v9 = (*(*v8[2] + 32))(v8[2], 1992, 8);
  bzero(v9, 0x7C8uLL);
  re::MaterialAsset::MaterialAsset(v9);
  result = re::compileMaterialFile(v9 + 8, a2, a3, v19);
  if (v19[0] == 1)
  {
    *a4 = v19[0];
    *(a4 + 8) = v9;
  }

  else
  {
    v11 = re::globalAllocators(result)[2];
    (**v9)(v9);
    (*(*v11 + 40))(v11, v9);
    *&v15 = 100;
    *(&v15 + 1) = re::AssetErrorCategory(void)::instance;
    re::DynamicString::DynamicString(&v16, &v20);
    v12 = v16;
    *(a4 + 8) = v15;
    v13 = v17;
    v14 = v18;
    *a4 = 0;
    *(a4 + 24) = v12;
    *(a4 + 40) = v13;
    *(a4 + 48) = v14;
    result = v20;
    if (v20)
    {
      if (v21)
      {
        return (*(v20->_p + 5))();
      }
    }
  }

  return result;
}

re::DynamicString *re::MaterialDefinitionCompiler::getCurrentCompiledAssetInfo@<X0>(re::MaterialDefinitionCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::MaterialDefinitionAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::MaterialDefinitionCompiler::assetIntrospectionType(re::MaterialDefinitionCompiler *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::MaterialDefinitionAsset>(BOOL)::info = re::introspect_MaterialDefinitionAsset(0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[189];
}

void *re::MaterialDefinitionCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions);
}

FILE *re::MaterialDefinitionCompiler::compile@<X0>(re::MaterialDefinitionCompiler *this@<X0>, re::MaterialDefinitionFile *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = re::globalAllocators(this);
  v9 = (*(*v8[2] + 32))(v8[2], 2504, 8);
  bzero(v9, 0x9C8uLL);
  re::MaterialDefinitionAsset::MaterialDefinitionAsset(v9);
  result = re::compileMaterialDefinitionFile((v9 + 1), a2, a3, v19);
  if (v19[0] == 1)
  {
    *a4 = v19[0];
    *(a4 + 8) = v9;
  }

  else
  {
    v11 = re::globalAllocators(result)[2];
    (**v9)(v9);
    (*(*v11 + 40))(v11, v9);
    *&v15 = 100;
    *(&v15 + 1) = re::AssetErrorCategory(void)::instance;
    re::DynamicString::DynamicString(&v16, &v20);
    v12 = v16;
    *(a4 + 8) = v15;
    v13 = v17;
    v14 = v18;
    *a4 = 0;
    *(a4 + 24) = v12;
    *(a4 + 40) = v13;
    *(a4 + 48) = v14;
    result = v20;
    if (v20)
    {
      if (v21)
      {
        return (*(v20->_p + 5))();
      }
    }
  }

  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 32);
  v4 = *(a2 + 32);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (off_1F5CD1DD0[v3])(&v6, result, a2);
    *(v2 + 32) = -1;
    return result;
  }

  v5 = result;
  return (off_1F5CD1DE0[v4])(&v5, result, a2);
}

re::DynamicString *std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__assign_alt[abi:nn200100]<0ul,re::DynamicString,re::DynamicString const&>(re::DynamicString *a1, re::DynamicString *this, re::DynamicString *a3)
{
  if (*(a1 + 8))
  {
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__emplace[abi:nn200100]<0ul,re::DynamicString const&>(a1, a3);
  }

  else
  {
    return re::DynamicString::operator=(this, a3);
  }
}

re::DynamicString *std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__emplace[abi:nn200100]<0ul,re::DynamicString const&>(re::DynamicString *this, re::DynamicString *a2)
{
  v4 = *(this + 8);
  if (v4 != -1)
  {
    off_1F5CD1DD0[v4](&v6, this);
  }

  *(this + 8) = -1;
  result = re::DynamicString::DynamicString(this, a2);
  *(this + 8) = 0;
  return result;
}

re::AssetHandle *std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__assign_alt[abi:nn200100]<1ul,re::AssetHandle,re::AssetHandle const&>(re::AssetHandle *a1, re::AssetHandle *this, re::AssetHandle *a3)
{
  if (*(a1 + 8) == 1)
  {
    return re::AssetHandle::operator=(this, a3);
  }

  else
  {
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__emplace[abi:nn200100]<1ul,re::AssetHandle const&>(a1, a3);
  }
}

re::AssetHandle *std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__emplace[abi:nn200100]<1ul,re::AssetHandle const&>(re::AssetHandle *this, re::AssetHandle *a2)
{
  v4 = *(this + 8);
  if (v4 != -1)
  {
    off_1F5CD1DD0[v4](&v6, this);
  }

  *(this + 8) = -1;
  result = re::AssetHandle::AssetHandle(this, a2);
  *(this + 8) = 1;
  return result;
}

uint64_t re::append<re::DynamicString,re::DynamicArray<re::DynamicString>>(uint64_t result, uint64_t a2)
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
      v6 += 22;
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
      v9 = v8 + 88 * v5;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v10 = re::Hash<re::DynamicString>::operator()(&v16, v9 + 8);
      re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v3, v9 + 8, v10, &v13);
      v11 = HIDWORD(v14);
      if (HIDWORD(v14) == 0x7FFFFFFF)
      {
        result = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::DynamicArray<re::DynamicString> const&>(v3, v13, v14, (v9 + 8), (v9 + 40));
      }

      else
      {
        ++*(v3 + 40);
        result = re::DynamicArray<re::DynamicString>::operator=(*(v3 + 16) + 88 * v11 + 40, (v9 + 40));
      }

      if (*(a2 + 32) <= (v5 + 1))
      {
        v12 = v5 + 1;
      }

      else
      {
        v12 = *(a2 + 32);
      }

      v8 = *(a2 + 16);
      while (v12 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 88 * v5) & 0x80000000) != 0)
        {
          goto LABEL_20;
        }
      }

      LODWORD(v5) = v12;
LABEL_20:
      ;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t re::DynamicArray<re::DynamicString>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::DynamicString>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::DynamicString>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::DynamicString>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::DynamicString>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::DynamicArray<re::DynamicString> const&>(uint64_t a1, unint64_t a2, unsigned int a3, const re::DynamicString *a4, uint64_t *a5)
{
  v8 = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, a3, a2);
  re::DynamicString::DynamicString((v8 + 8), a4);
  result = re::DynamicArray<re::DynamicString>::DynamicArray(v8 + 40, a5);
  ++*(a1 + 40);
  return result;
}

re::MaterialTechniqueData *re::MaterialTechniqueData::MaterialTechniqueData(re::MaterialTechniqueData *this, const re::MaterialTechniqueData *a2)
{
  v4 = re::DynamicString::DynamicString(this, a2);
  re::DynamicString::DynamicString((v4 + 32), (a2 + 32));
  re::AssetHandle::AssetHandle((this + 64), (a2 + 64));
  re::AssetHandle::AssetHandle((this + 88), (a2 + 88));
  re::DynamicString::DynamicString((this + 112), (a2 + 112));
  re::AssetHandle::AssetHandle((this + 144), (a2 + 144));
  re::DynamicString::DynamicString((this + 168), (a2 + 168));
  v5 = *(a2 + 200);
  v6 = *(a2 + 216);
  v7 = *(a2 + 232);
  *(this + 62) = *(a2 + 62);
  *(this + 232) = v7;
  *(this + 216) = v6;
  *(this + 200) = v5;
  v8 = *(a2 + 252);
  *(this + 252) = v8;
  if (v8 == 1)
  {
    *(this + 253) = *(a2 + 253);
  }

  re::DynamicArray<re::RenderAttachmentState>::DynamicArray(this + 256, a2 + 32);
  re::DynamicString::DynamicString((this + 296), (a2 + 296));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(this + 328, a2 + 328);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(this + 376, a2 + 376);
  re::DynamicArray<re::DynamicString>::DynamicArray(this + 424, a2 + 53);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(this + 464, a2 + 464);
  re::DynamicArray<re::DynamicString>::DynamicArray(this + 512, a2 + 64);
  *(this + 276) = *(a2 + 276);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(this + 560, a2 + 560);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(this + 608, a2 + 608);
  *(this + 656) = *(a2 + 656);
  v9 = *(a2 + 657);
  *(this + 657) = v9;
  if (v9 == 1)
  {
    *(this + 658) = *(a2 + 658);
  }

  v10 = *(a2 + 659);
  *(this + 659) = v10;
  if (v10 == 1)
  {
    *(this + 660) = *(a2 + 660);
  }

  return this;
}

uint64_t re::DynamicArray<re::RenderAttachmentState>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::RenderAttachmentState>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::RenderAttachmentState>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<re::RenderAttachmentState>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::RenderAttachmentState>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 32 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 32 * v5, (*(a2 + 32) + 32 * v5), 32 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 32 * v4);
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<re::RenderAttachmentState>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 4);
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
            memcpy(v7, v5[4], 32 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::RenderAttachmentState>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(uint64_t a1, uint64_t a2)
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

    re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v4, v5);
    re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(uint64_t result, uint64_t a2)
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
        v8 = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 80) % *(v4 + 24), *(v7 + v5 + 80));
        re::DynamicString::DynamicString((v8 + 8), (*(a2 + 16) + v5 + 8));
        result = re::DynamicArray<re::DynamicString>::DynamicArray(v8 + 40, (*(a2 + 16) + v5 + 40));
        v2 = *(a2 + 32);
      }

      v5 += 88;
    }
  }

  return result;
}

BOOL re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(a2 + 16);
  result = re::DynamicString::operator==(v10 + 712 * v8 + 8, a3);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 712 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 712 * v11 + 8, a3);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 712 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *v5 = a4;
  *(v5 + 8) = v7;
  *(v5 + 12) = v6;
  *(v5 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = *(a1 + 16);
          *&v30[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v14 = *&v30[32];
          *(a1 + 24) = v15;
          ++*&v30[40];
          if (v14)
          {
            v16 = 0;
            v17 = 712 * v14;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = (v13 + v16);
                v19 = re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + v16 + 704) % *(a1 + 24));
                *(v19 + 24) = 0u;
                *(v19 + 8) = 0u;
                *(v19 + 32) = *(v13 + v16 + 32);
                v20 = *(v13 + v16 + 16);
                *(v19 + 8) = *(v13 + v16 + 8);
                v18[1] = 0;
                v21 = *(v13 + v16 + 24);
                v18[4] = 0;
                v23 = *(v19 + 16);
                v22 = *(v19 + 24);
                *(v19 + 16) = v20;
                *(v19 + 24) = v21;
                v18[2] = v23;
                v18[3] = v22;
                re::MaterialTechniqueData::MaterialTechniqueData(v19 + 40, v13 + v16 + 40);
              }

              v16 += 712;
            }

            while (v17 != v16);
          }

          re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 712 * v5);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 712 * v5);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + 712 * v5;
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v5;
  *(v27 + 704) = a3;
  ++*(a1 + 28);
  return v24 + 712 * v5;
}

void re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 712 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_178, 4 * v10);
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

uint64_t re::MaterialTechniqueData::MaterialTechniqueData(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 8);
  *a1 = *a2;
  *a2 = 0;
  v5 = *(a2 + 16);
  *(a2 + 24) = 0;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v6;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 56) = *(a2 + 56);
  v8 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  v9 = *(a2 + 48);
  *(a2 + 56) = 0;
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a2 + 40) = v11;
  *(a2 + 48) = v10;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  v12 = *(a1 + 64);
  *(a1 + 64) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v12;
  v13 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v13;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = 0;
  v14 = *(a1 + 88);
  *(a1 + 88) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v14;
  v15 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v15;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 136) = *(a2 + 136);
  v16 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  v17 = *(a2 + 128);
  *(a2 + 136) = 0;
  v19 = *(a1 + 120);
  v18 = *(a1 + 128);
  *(a1 + 120) = v16;
  *(a1 + 128) = v17;
  *(a2 + 120) = v19;
  *(a2 + 128) = v18;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  v20 = *(a1 + 144);
  *(a1 + 144) = 0;
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = v20;
  v21 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = v21;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 192) = *(a2 + 192);
  v22 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 168) = 0;
  v23 = *(a2 + 184);
  *(a2 + 192) = 0;
  v25 = *(a1 + 176);
  v24 = *(a1 + 184);
  *(a1 + 176) = v22;
  *(a1 + 184) = v23;
  *(a2 + 176) = v25;
  *(a2 + 184) = v24;
  v26 = *(a2 + 200);
  v27 = *(a2 + 216);
  v28 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v28;
  *(a1 + 216) = v27;
  *(a1 + 200) = v26;
  LODWORD(v23) = *(a2 + 252);
  *(a1 + 252) = v23;
  if (v23 == 1)
  {
    *(a1 + 253) = *(a2 + 253);
  }

  *(a1 + 288) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  v29 = *(a2 + 264);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v29;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  v30 = *(a1 + 272);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 272) = v30;
  v31 = *(a1 + 288);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 288) = v31;
  ++*(a2 + 280);
  ++*(a1 + 280);
  *(a1 + 296) = 0uLL;
  *(a1 + 312) = 0uLL;
  *(a1 + 320) = *(a2 + 320);
  v32 = *(a2 + 304);
  *(a1 + 296) = *(a2 + 296);
  *(a2 + 296) = 0;
  v33 = *(a2 + 312);
  *(a2 + 320) = 0;
  v35 = *(a1 + 304);
  v34 = *(a1 + 312);
  *(a1 + 304) = v32;
  *(a1 + 312) = v33;
  *(a2 + 304) = v35;
  *(a2 + 312) = v34;
  *(a1 + 360) = 0;
  *(a1 + 328) = 0uLL;
  *(a1 + 344) = 0uLL;
  *(a1 + 364) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 328), (a2 + 328));
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0x7FFFFFFF00000000;
  *(a1 + 416) = 0;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 376), (a2 + 376));
  *(a1 + 456) = 0;
  *(a1 + 448) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 424) = 0;
  v36 = *(a2 + 432);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = v36;
  *(a2 + 424) = 0;
  *(a2 + 432) = 0;
  v37 = *(a1 + 440);
  *(a1 + 440) = *(a2 + 440);
  *(a2 + 440) = v37;
  v38 = *(a1 + 456);
  *(a1 + 456) = *(a2 + 456);
  *(a2 + 456) = v38;
  ++*(a2 + 448);
  ++*(a1 + 448);
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 500) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 464), (a2 + 464));
  *(a1 + 544) = 0;
  *(a1 + 512) = 0;
  *(a1 + 536) = 0;
  *(a1 + 528) = 0;
  *(a1 + 520) = 0;
  *(a1 + 512) = *(a2 + 512);
  *(a2 + 512) = 0;
  *(a1 + 520) = *(a2 + 520);
  *(a2 + 520) = 0;
  v39 = *(a1 + 528);
  *(a1 + 528) = *(a2 + 528);
  *(a2 + 528) = v39;
  v40 = *(a1 + 544);
  *(a1 + 544) = *(a2 + 544);
  *(a2 + 544) = v40;
  ++*(a2 + 536);
  ++*(a1 + 536);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 596) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 560), (a2 + 560));
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0x7FFFFFFF00000000;
  *(a1 + 648) = 0;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 608), (a2 + 608));
  *(a1 + 656) = *(a2 + 656);
  v41 = *(a2 + 657);
  *(a1 + 657) = v41;
  if (v41 == 1)
  {
    *(a1 + 658) = *(a2 + 658);
  }

  v42 = *(a2 + 659);
  *(a1 + 659) = v42;
  if (v42 == 1)
  {
    *(a1 + 660) = *(a2 + 660);
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(uint64_t a1, uint64_t a2)
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

    re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v4, v5);
    re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
  }

  return a1;
}

re::DynamicString *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(re::DynamicString *result, uint64_t a2)
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
        v8 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24), *(v7 + v5 + 48));
        result = re::DynamicString::DynamicString((v8 + 8), (*(a2 + 16) + v5 + 8));
        v7 = *(a2 + 16);
        *(v8 + 40) = *(v7 + v5 + 40);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 56;
    }

    while (v6 < v2);
  }

  return result;
}

re::MaterialTechniqueQualityLevelSetData *re::MaterialTechniqueQualityLevelSetData::MaterialTechniqueQualityLevelSetData(re::MaterialTechniqueQualityLevelSetData *this, const re::MaterialTechniqueQualityLevelSetData *a2)
{
  v4 = re::DynamicString::DynamicString(this, a2);
  re::DynamicString::DynamicString((v4 + 32), (a2 + 32));
  re::DynamicArray<re::DynamicString>::DynamicArray(this + 64, a2 + 8);
  return this;
}

uint64_t re::TokenizedMember::deinit(uint64_t **this)
{
  v1 = this;
  v2 = this[3];
  if (v2)
  {
    v3 = this[5];
    v4 = 8 * v2;
    do
    {
      v5 = *v3;
      if (*v3)
      {
        v6 = re::globalAllocators(this);
        this = (*(*v6[2] + 40))(v6[2], v5);
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  *(v1 + 3) = 0;
  ++*(v1 + 8);

  return re::DynamicArray<unsigned long>::deinit(v1 + 8);
}

void re::validateParsedType(re *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    if (*a1 != a4)
    {
      v8 = *re::graphicsLogObjects(a1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315650;
        v10 = a2;
        v11 = 2080;
        v12 = a3;
        v13 = 2080;
        v14 = a5;
        _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "parameter %s, token %s is being parsed as %s, but previous tokens were parsed differently.", &v9, 0x20u);
      }
    }
  }

  else
  {
    *a1 = a4;
  }
}

double re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 16 * v3;
      do
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *v8 = v7 & 0x7FFFFFFF;
          *(v8 + 8) = 0;
        }

        v4 += 16;
      }

      while (v5 != v4);
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

uint64_t re::DynamicArray<re::BufferSlice>::deinit(uint64_t a1)
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
          v6 = *(v3 + 24);
          if (v6 != -1)
          {
            (off_1F5CD1DF0[v6])(&v7, v3);
          }

          *(v3 + 24) = -1;
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

double re::HashTable<re::DynamicString,re::WeakStringID,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicString::deinit((v6 + v4 + 8));
          *(v8 + 40) = 0;
          v3 = *(a1 + 8);
        }

        v4 += 56;
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

uint64_t re::Bitset<128>::toWordIndex(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x80)
  {
    return a2 >> 6;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %d.", "b < kBitCount", "toWordIndex", 345, a2, 128, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    if (!*a1 || *a1 == *a2)
    {
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(a1, a2);
    }

    else if (*a2)
    {
      re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::copy(a1, a2);
      ++*(a1 + 40);
    }

    else
    {
      re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::clear(a1);
    }
  }

  return a1;
}

void re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_178, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = *(a1 + 16);
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 16;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v7 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v7;
  }
}

void re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::setCapacity(a1, v4);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16) + v6;
      if ((*(v8 + 8) & 0x80000000) != 0)
      {
        re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::addAsCopy(a1, *v8 % *(a1 + 24), *v8, v8 + 12, (v8 + 12));
        v5 = *(a2 + 32);
      }

      v6 += 16;
    }
  }
}

uint64_t re::DynamicArray<re::RenderAttachmentState>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::RenderAttachmentState>::copy(a1, a2);
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
      re::DynamicArray<re::RenderAttachmentState>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::RenderAttachmentState>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::BuildPropagatedFunctionConstantsForPbrEmulation(re::SharedPtr<re::MaterialDefinition> const&,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::PropagatedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(&v9, a2);
  if (!*a1)
  {
    return 0;
  }

  v5 = *(*(a1 + 8) + 4 * (v4 % *(a1 + 24)));
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  while (1)
  {
    v7 = v6 + (v5 << 6);
    if (re::DynamicString::operator==(v7 + 8, a2))
    {
      break;
    }

    v5 = *(v6 + (v5 << 6)) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return v7 + 40;
}

uint64_t *re::HashTable<re::DynamicString,re::BuildPropagatedFunctionConstantsForPbrEmulation(re::SharedPtr<re::MaterialDefinition> const&,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::PropagatedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~HashTable(uint64_t *a1)
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
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

void re::HashTable<re::DynamicString,re::BuildPropagatedFunctionConstantsForPbrEmulation(re::SharedPtr<re::MaterialDefinition> const&,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::PropagatedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + (v10 << 6), 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_178, 4 * v10);
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

uint64_t re::HashTable<re::DynamicString,re::BuildPropagatedFunctionConstantsForPbrEmulation(re::SharedPtr<re::MaterialDefinition> const&,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::PropagatedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,re::BuildPropagatedFunctionConstantsForPbrEmulation(re::SharedPtr<re::MaterialDefinition> const&,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::PropagatedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::DynamicString,re::BuildPropagatedFunctionConstantsForPbrEmulation(re::SharedPtr<re::MaterialDefinition> const&,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::PropagatedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v17 + 24) % *(a1 + 24));
                *(v18 + 24) = 0u;
                *(v18 + 8) = 0u;
                *(v18 + 32) = *v17;
                v19 = *(v17 - 16);
                *(v18 + 8) = *(v17 - 24);
                *(v17 - 24) = 0;
                v20 = *(v17 - 8);
                *v17 = 0;
                v22 = *(v18 + 16);
                v21 = *(v18 + 24);
                *(v18 + 16) = v19;
                *(v18 + 24) = v20;
                *(v17 - 16) = v22;
                *(v17 - 8) = v21;
                *(v18 + 40) = *(v17 + 8);
              }

              v17 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::DynamicString,re::BuildPropagatedFunctionConstantsForPbrEmulation(re::SharedPtr<re::MaterialDefinition> const&,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::PropagatedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~HashTable(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + (v5 << 6);
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v26 + 56) = a3;
  *(v27 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v23 + (v5 << 6);
}

void re::LinkedFunction::~LinkedFunction(re::LinkedFunction *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 160);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::FixedArray<re::TypedArgument>::deinit(this + 12);
  re::FixedArray<re::TechniqueFunctionConstant>::deinit(this + 8);
  v2 = *(this + 6);
  if (v2)
  {

    *(this + 6) = 0;
  }

  re::StringID::destroyString((this + 24));
  re::StringID::destroyString((this + 8));
}

void *re::DynamicArray<re::AssetType const*>::setCapacity(void *result, unint64_t a2)
{
  if (result[1] == a2)
  {
    return result;
  }

  v4 = result;
  if (result[2] > a2)
  {
    return result;
  }

  v5 = *result;
  if (!*v4)
  {
    result = re::DynamicArray<re::AssetType const*>::setCapacity(v4, a2);
    ++*(v4 + 6);
    return result;
  }

  if (a2 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v2 = 8 * a2;
  result = (*(*v5 + 32))(v5, 8 * a2, 8);
  if (!result)
  {
LABEL_12:
    re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v4 + 8));
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = result;
  if (v4[1])
  {
    memcpy(result, v4[4], 8 * v4[2]);
    result = (*(**v4 + 40))(*v4, v4[4]);
  }

  v4[4] = v7;
  v4[1] = a2;
  return result;
}

double re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v10[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v10[1] = v6 ^ 0xFFFFLL;
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
        v11 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(*(a1 + 8) + 72 * v8 + 8);
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v10);
            v8 = v11;
          }

          while (v11 != -1);
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

double re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(uint64_t *a1)
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
          *(v8 + 8) = 0;
          re::DynamicString::deinit((v8 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 48;
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

void *re::FixedArray<re::TechniqueFunctionConstant>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x276276276276277)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 104, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = (*(*a2 + 32))(a2, 104 * a3, 8);
  v4[2] = v5;
  if (!v5)
  {
LABEL_9:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = v5;
  for (i = a3 - 1; i; --i)
  {
    *v7 = 0u;
    *(v7 + 1) = 0u;
    v5 = re::DynamicString::setCapacity(v7, 0);
    *(v7 + 84) = 0u;
    *(v7 + 68) = 0u;
    *(v7 + 52) = 0u;
    *(v7 + 36) = 0u;
    v7 = (v7 + 104);
  }

  *v7 = 0u;
  *(v7 + 1) = 0u;
  result = re::DynamicString::setCapacity(v7, 0);
  *(v7 + 84) = 0u;
  *(v7 + 68) = 0u;
  *(v7 + 52) = 0u;
  *(v7 + 36) = 0u;
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::DynamicString::operator==(v10 + 784 * v8 + 8, a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 784 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 784 * v11 + 8, a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 784 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
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

double re::HashTable<re::DynamicString,re::DynamicArray<unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::DynamicArray<unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
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

_DWORD *re::HashTable<re::DynamicString,re::DynamicArray<unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(_DWORD *result)
{
  if ((*result & 0x80000000) != 0)
  {
    *result &= ~0x80000000;
    v2 = (result + 10);
    re::DynamicString::deinit((result + 2));

    return re::DynamicArray<unsigned long>::deinit(v2);
  }

  return result;
}

uint64_t re::OptionalMaterialSamplerData::operator=(uint64_t result, uint64_t a2)
{
  *result = *a2;
  if (*(result + 1))
  {
    if ((*(a2 + 1) & 1) == 0)
    {
      *(result + 1) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a2 + 1) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(result + 1) = 1;
  }

  *(result + 2) = *(a2 + 2);
LABEL_7:
  if (*(result + 3))
  {
    if ((*(a2 + 3) & 1) == 0)
    {
      *(result + 3) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a2 + 3) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(result + 3) = 1;
  }

  *(result + 4) = *(a2 + 4);
LABEL_13:
  if (*(result + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      *(result + 8) = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(result + 8) = 1;
  }

  *(result + 12) = *(a2 + 12);
LABEL_19:
  if (*(result + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      *(result + 16) = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      goto LABEL_25;
    }

    *(result + 16) = 1;
  }

  *(result + 20) = *(a2 + 20);
LABEL_25:
  if (*(result + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      *(result + 24) = 0;
      goto LABEL_31;
    }
  }

  else
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      goto LABEL_31;
    }

    *(result + 24) = 1;
  }

  *(result + 28) = *(a2 + 28);
LABEL_31:
  if (*(result + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      *(result + 32) = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      goto LABEL_37;
    }

    *(result + 32) = 1;
  }

  *(result + 36) = *(a2 + 36);
LABEL_37:
  if (*(result + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      *(result + 40) = 0;
      goto LABEL_43;
    }
  }

  else
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      goto LABEL_43;
    }

    *(result + 40) = 1;
  }

  *(result + 44) = *(a2 + 44);
LABEL_43:
  if (*(result + 48))
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      *(result + 48) = 0;
      goto LABEL_49;
    }
  }

  else
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      goto LABEL_49;
    }

    *(result + 48) = 1;
  }

  *(result + 52) = *(a2 + 52);
LABEL_49:
  if (*(result + 56))
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      *(result + 56) = 0;
      goto LABEL_55;
    }
  }

  else
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      goto LABEL_55;
    }

    *(result + 56) = 1;
  }

  *(result + 60) = *(a2 + 60);
LABEL_55:
  if (*(result + 64))
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      *(result + 64) = 0;
      goto LABEL_61;
    }
  }

  else
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      goto LABEL_61;
    }

    *(result + 64) = 1;
  }

  *(result + 68) = *(a2 + 68);
LABEL_61:
  if (*(result + 72))
  {
    if ((*(a2 + 72) & 1) == 0)
    {
      *(result + 72) = 0;
      goto LABEL_67;
    }
  }

  else
  {
    if ((*(a2 + 72) & 1) == 0)
    {
      goto LABEL_67;
    }

    *(result + 72) = 1;
  }

  *(result + 76) = *(a2 + 76);
LABEL_67:
  if (*(result + 80))
  {
    if ((*(a2 + 80) & 1) == 0)
    {
      *(result + 80) = 0;
      goto LABEL_73;
    }
  }

  else
  {
    if ((*(a2 + 80) & 1) == 0)
    {
      goto LABEL_73;
    }

    *(result + 80) = 1;
  }

  *(result + 84) = *(a2 + 84);
LABEL_73:
  if (*(result + 88))
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      *(result + 88) = 0;
      return result;
    }

LABEL_79:
    *(result + 96) = *(a2 + 96);
    return result;
  }

  if (*(a2 + 88))
  {
    *(result + 88) = 1;
    goto LABEL_79;
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v32, 0, 36);
          *&v32[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,re::DynamicArray<unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v32, v9, v8);
          v11 = *v32;
          *v32 = *a1;
          *a1 = v11;
          v12 = *&v32[16];
          v13 = *(a1 + 16);
          *&v32[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v32[24];
          *&v32[24] = *(a1 + 24);
          v14 = *&v32[32];
          *(a1 + 24) = v15;
          ++*&v32[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 40;
            do
            {
              if ((*(v17 - 40) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::DynamicString,re::DynamicArray<unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v17 + 40) % *(a1 + 24));
                *(v18 + 24) = 0u;
                *(v18 + 8) = 0u;
                *(v18 + 32) = *(v17 - 8);
                v19 = *(v17 - 24);
                *(v18 + 8) = *(v17 - 32);
                *(v17 - 32) = 0;
                v20 = *(v17 - 16);
                *(v17 - 8) = 0;
                v22 = *(v18 + 16);
                v21 = *(v18 + 24);
                *(v18 + 16) = v19;
                *(v18 + 24) = v20;
                *(v17 - 24) = v22;
                *(v17 - 16) = v21;
                *(v18 + 72) = 0;
                *(v18 + 64) = 0;
                *(v18 + 48) = 0;
                *(v18 + 56) = 0;
                *(v18 + 40) = 0;
                v23 = *(v17 + 8);
                *(v18 + 40) = *v17;
                *(v18 + 48) = v23;
                *v17 = 0;
                *(v17 + 8) = 0;
                v24 = *(v18 + 56);
                *(v18 + 56) = *(v17 + 16);
                *(v17 + 16) = v24;
                v25 = *(v18 + 72);
                *(v18 + 72) = *(v17 + 32);
                *(v17 + 32) = v25;
                ++*(v17 + 24);
                ++*(v18 + 64);
              }

              v17 += 88;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::DynamicString,re::DynamicArray<unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v32);
        }
      }

      else
      {
        if (v8)
        {
          v28 = 2 * v7;
        }

        else
        {
          v28 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v26 = *(a1 + 16);
    v27 = *(v26 + 88 * v5);
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + 88 * v5);
    *(a1 + 36) = v27 & 0x7FFFFFFF;
  }

  v29 = v26 + 88 * v5;
  *v29 = v27 | 0x80000000;
  v30 = *(a1 + 8);
  *v29 = *(v30 + 4 * a2) | 0x80000000;
  *(v30 + 4 * a2) = v5;
  *(v29 + 80) = a3;
  ++*(a1 + 28);
  return v26 + 88 * v5;
}

void re::HashTable<re::DynamicString,re::DynamicArray<unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 88 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_178, 4 * v10);
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

uint64_t re::HashTable<re::DynamicString,re::MaterialTechniqueGroupData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,re::MaterialTechniqueGroupData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<re::DynamicString,re::MaterialTechniqueGroupData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + 112) % *(a1 + 24));
                *(v17 + 24) = 0u;
                *(v17 + 8) = 0u;
                *(v17 + 32) = *(v13 + 32);
                v18 = *(v13 + 16);
                *(v17 + 8) = *(v13 + 8);
                *(v13 + 8) = 0;
                v19 = *(v13 + 24);
                *(v13 + 32) = 0;
                v21 = *(v17 + 16);
                v20 = *(v17 + 24);
                *(v17 + 16) = v18;
                *(v17 + 24) = v19;
                *(v13 + 16) = v21;
                *(v13 + 24) = v20;
                re::MaterialTechniqueGroupData::MaterialTechniqueGroupData(v17 + 40, v13 + 40);
              }

              v13 += 120;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::DynamicString,re::MaterialTechniqueGroupData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 120 * v5);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 120 * v5);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 120 * v5;
  *v25 = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 112) = a3;
  ++*(a1 + 28);
  return v22 + 120 * v5;
}

void re::HashTable<re::DynamicString,re::MaterialTechniqueGroupData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 120 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_178, 4 * v10);
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

double re::MaterialTechniqueGroupData::MaterialTechniqueGroupData(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 8);
  *a1 = *a2;
  *a2 = 0;
  v4 = *(a2 + 16);
  *(a2 + 24) = 0;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v8 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v8;
  v9 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v9;
  ++*(a2 + 56);
  ++*(a1 + 56);
  return result;
}

BOOL re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(a2 + 16);
  result = re::DynamicString::operator==(v10 + (v8 << 7) + 8, a3);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + (v8 << 7)) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + (v11 << 7) + 8, a3);
      if (result)
      {
        break;
      }

      v11 = *(v10 + (v12 << 7)) & 0x7FFFFFFF;
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
  *v5 = a4;
  *(v5 + 8) = v7;
  *(v5 + 12) = v6;
  *(v5 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v34, v9, v8);
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
          if (v14)
          {
            v16 = 0;
            v17 = v14 << 7;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = (v13 + v16);
                v19 = re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + v16 + 120) % *(a1 + 24));
                *(v19 + 24) = 0u;
                *(v19 + 8) = 0u;
                *(v19 + 32) = *(v13 + v16 + 32);
                v20 = *(v13 + v16 + 16);
                *(v19 + 8) = *(v13 + v16 + 8);
                v18[1] = 0;
                v21 = *(v13 + v16 + 24);
                v18[4] = 0;
                v23 = *(v19 + 16);
                v22 = *(v19 + 24);
                *(v19 + 16) = v20;
                *(v19 + 24) = v21;
                v18[2] = v23;
                v18[3] = v22;
                *(v19 + 40) = 0u;
                *(v19 + 56) = 0u;
                *(v19 + 64) = *(v13 + v16 + 64);
                v24 = *(v13 + v16 + 48);
                *(v19 + 40) = *(v13 + v16 + 40);
                v18[5] = 0;
                v25 = *(v13 + v16 + 56);
                v18[8] = 0;
                v27 = *(v19 + 48);
                v26 = *(v19 + 56);
                *(v19 + 48) = v24;
                *(v19 + 56) = v25;
                v18[6] = v27;
                v18[7] = v26;
                *(v19 + 72) = 0u;
                v19 += 72;
                *(v19 + 32) = 0;
                *(v19 + 16) = 0u;
                *(v19 + 36) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v19, (v13 + v16 + 72));
              }

              v16 += 128;
            }

            while (v17 != v16);
          }

          re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v34);
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
    v29 = *(v28 + (v5 << 7));
  }

  else
  {
    v28 = *(a1 + 16);
    v29 = *(v28 + (v5 << 7));
    *(a1 + 36) = v29 & 0x7FFFFFFF;
  }

  v31 = v28 + (v5 << 7);
  *v31 = v29 | 0x80000000;
  v32 = *(a1 + 8);
  *v31 = *(v32 + 4 * a2) | 0x80000000;
  *(v31 + 120) = a3;
  *(v32 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v28 + (v5 << 7);
}

void re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + (v10 << 7), 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_178, 4 * v10);
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

re::DynamicString *re::MaterialTechniqueQualityLevelSetData::operator=(re::DynamicString *a1, uint64_t *a2)
{
  v4 = re::DynamicString::operator=(a1, a2);
  re::DynamicString::operator=((v4 + 32), (a2 + 4));
  re::DynamicArray<re::DynamicString>::operator=(a1 + 64, a2 + 8);
  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::MaterialTechniqueQualityLevelSetData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,re::MaterialTechniqueQualityLevelSetData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<re::DynamicString,re::MaterialTechniqueQualityLevelSetData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + 144) % *(a1 + 24));
                *(v17 + 24) = 0u;
                *(v17 + 8) = 0u;
                *(v17 + 32) = *(v13 + 32);
                v18 = *(v13 + 16);
                *(v17 + 8) = *(v13 + 8);
                *(v13 + 8) = 0;
                v19 = *(v13 + 24);
                *(v13 + 32) = 0;
                v21 = *(v17 + 16);
                v20 = *(v17 + 24);
                *(v17 + 16) = v18;
                *(v17 + 24) = v19;
                *(v13 + 16) = v21;
                *(v13 + 24) = v20;
                re::MaterialTechniqueQualityLevelSetData::MaterialTechniqueQualityLevelSetData(v17 + 40, v13 + 40);
              }

              v13 += 152;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::DynamicString,re::MaterialTechniqueQualityLevelSetData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 152 * v5);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 152 * v5);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 152 * v5;
  *v25 = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 144) = a3;
  ++*(a1 + 28);
  return v22 + 152 * v5;
}

void re::HashTable<re::DynamicString,re::MaterialTechniqueQualityLevelSetData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 152 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_178, 4 * v10);
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

double re::MaterialTechniqueQualityLevelSetData::MaterialTechniqueQualityLevelSetData(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 8);
  *a1 = *a2;
  *a2 = 0;
  v4 = *(a2 + 16);
  *(a2 + 24) = 0;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  v8 = *(a2 + 48);
  *(a2 + 56) = 0;
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a2 + 40) = v10;
  *(a2 + 48) = v9;
  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  v11 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v11;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v12 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v12;
  v13 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v13;
  ++*(a2 + 88);
  ++*(a1 + 88);
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::DynamicString::operator==(v10 + 96 * v8 + 8, a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 96 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 96 * v11 + 8, a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 96 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
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

uint64_t re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 96 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 96 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 96 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 88) = a3;
  ++*(a1 + 28);
  return v7 + 96 * v5;
}

void re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v3 = result;
    v4 = 0;
    v5 = 48;
    do
    {
      v6 = *(a2 + 16) + v5;
      if ((*(v6 - 48) & 0x80000000) != 0)
      {
        result = re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v3, *(v6 + 40) % *(v3 + 24));
        v7 = *(a2 + 16) + v5;
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = *(v7 - 16);
        v8 = *(v7 - 32);
        *(result + 8) = *(v7 - 40);
        *(v7 - 40) = 0;
        v9 = *(v7 - 24);
        *(v7 - 16) = 0;
        v11 = *(result + 16);
        v10 = *(result + 24);
        *(result + 16) = v8;
        *(result + 24) = v9;
        *(v7 - 32) = v11;
        *(v7 - 24) = v10;
        v12 = *(a2 + 16);
        v13 = v12 + v5;
        LODWORD(v8) = *(v12 + v5 - 8);
        *(result + 40) = v8;
        if (v8 == 1)
        {
          *(result + 48) = 0uLL;
          *(result + 64) = 0uLL;
          *(result + 72) = *(v13 + 24);
          v14 = *(v13 + 8);
          *(result + 48) = *v13;
          *v13 = 0;
          v15 = *(v13 + 16);
          *(v13 + 24) = 0;
          v17 = *(result + 56);
          v16 = *(result + 64);
          *(result + 56) = v14;
          *(result + 64) = v15;
          *(v13 + 8) = v17;
          *(v13 + 16) = v16;
        }

        v18 = *(v13 + 32);
        *(result + 80) = v18;
        if (v18 == 1)
        {
          *(result + 81) = *(v12 + v5 + 33);
        }
      }

      ++v4;
      v5 += 96;
    }

    while (v4 < *(a2 + 32));
  }

  return result;
}

void re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 96 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_178, 4 * v10);
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

uint64_t re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>(uint64_t a1, uint64_t a2, const re::DynamicString *a3, uint64_t *a4)
{
  v7 = re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::DynamicString::DynamicString((v7 + 8), a3);
  *(v7 + 40) = 0u;
  v7 += 40;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0u;
  *(v7 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v7, a4);
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 96 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 96 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 96 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 88) = a3;
  ++*(a1 + 28);
  return v7 + 96 * v5;
}

void re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t *re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t *result, uint64_t a2)
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
        v8 = re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 88) % *(v4 + 6));
        v9 = (*(a2 + 16) + v5);
        *(v8 + 24) = 0u;
        *(v8 + 8) = 0u;
        *(v8 + 32) = v9[4];
        v10 = v9[2];
        *(v8 + 8) = v9[1];
        v9[1] = 0;
        v11 = v9[3];
        v9[4] = 0;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        *(v8 + 16) = v10;
        *(v8 + 24) = v11;
        v9[2] = v13;
        v9[3] = v12;
        v14 = *(a2 + 16) + v5;
        *(v8 + 40) = 0u;
        v8 += 40;
        *(v8 + 32) = 0;
        *(v8 + 16) = 0u;
        *(v8 + 36) = 0x7FFFFFFFLL;
        result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v8, (v14 + 40));
        v2 = *(a2 + 32);
      }

      v5 += 96;
    }
  }

  return result;
}

void *re::DynamicArray<re::MaterialTechniqueData>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MaterialTechniqueData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MaterialTechniqueData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::MaterialTechniqueData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MaterialTechniqueData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x298uLL))
        {
          v2 = 664 * a2;
          result = (*(*result + 32))(result, 664 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 664, a2);
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
        v10 = 664 * v9;
        v11 = v7;
        do
        {
          re::MaterialTechniqueData::MaterialTechniqueData(v11, v8);
          re::MaterialTechniqueData::~MaterialTechniqueData(v8);
          v8 = (v8 + 664);
          v11 += 664;
          v10 -= 664;
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

void *re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x48uLL))
        {
          v2 = 72 * a2;
          result = (*(*result + 32))(result, 72 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 72, a2);
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
        v10 = &v8[9 * v9];
        v11 = v7;
        do
        {
          re::MaterialTechniqueGroupData::MaterialTechniqueGroupData(v11, v8);
          re::MaterialTechniqueGroupData::deinit(v8);
          re::DynamicArray<re::DynamicString>::deinit((v8 + 4));
          re::DynamicString::deinit(v8);
          v11 += 72;
          v8 += 9;
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

void *re::DynamicArray<re::MaterialTechniqueGroupData>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::DebugMapping>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::DebugMapping>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::DebugMapping>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::DebugMapping>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DebugMapping>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x50uLL))
        {
          v2 = 80 * a2;
          result = (*(*result + 32))(result, 80 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 80, a2);
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
        v10 = &v8[10 * v9];
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = v8[3];
          v12 = v8[1];
          *v11 = *v8;
          *v8 = 0;
          v13 = v8[2];
          v8[3] = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          v8[1] = v15;
          v8[2] = v14;
          *(v11 + 2) = 0u;
          v16 = v11 + 4;
          *(v16 + 8) = 0;
          *(v16 + 1) = 0u;
          *(v16 + 36) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v16, v8 + 4);
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v8 + 4);
          re::DynamicString::deinit(v8);
          v8 += 10;
          v11 = v16 + 6;
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

void *re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity(v5, a2);
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
        v10 = 104 * v9;
        v11 = v7;
        do
        {
          re::MaterialTechniqueQualityLevelSetData::MaterialTechniqueQualityLevelSetData(v11, v8);
          re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(v8);
          v8 += 13;
          v11 += 104;
          v10 -= 104;
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

void *re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

double re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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

        v4 += 104;
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

double re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          v9 = *(v6 + v4 + 16);
          if (v9)
          {

            *(v8 + 16) = 0;
            v3 = *(a1 + 8);
          }
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

BOOL re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(a2 + 16);
  result = re::DynamicString::operator==(v10 + 104 * v8 + 8, a3);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 104 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 104 * v11 + 8, a3);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 104 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *v5 = a4;
  *(v5 + 8) = v7;
  *(v5 + 12) = v6;
  *(v5 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v31, 0, 36);
          *&v31[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v31, v9, v8);
          v11 = *v31;
          *v31 = *a1;
          *a1 = v11;
          v12 = *&v31[16];
          v13 = *(a1 + 16);
          *&v31[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v31[24];
          *&v31[24] = *(a1 + 24);
          v14 = *&v31[32];
          *(a1 + 24) = v15;
          ++*&v31[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + 96) % *(a1 + 24));
                *(v17 + 24) = 0u;
                *(v17 + 8) = 0u;
                *(v17 + 32) = *(v13 + 32);
                v18 = *(v13 + 16);
                *(v17 + 8) = *(v13 + 8);
                *(v13 + 8) = 0;
                v19 = *(v13 + 24);
                *(v13 + 32) = 0;
                v21 = *(v17 + 16);
                v20 = *(v17 + 24);
                *(v17 + 16) = v18;
                *(v17 + 24) = v19;
                *(v13 + 16) = v21;
                *(v13 + 24) = v20;
                v22 = *(v13 + 88);
                v23 = *(v13 + 72);
                v24 = *(v13 + 56);
                *(v17 + 40) = *(v13 + 40);
                *(v17 + 56) = v24;
                *(v17 + 72) = v23;
                *(v17 + 88) = v22;
              }

              v13 += 104;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v31);
        }
      }

      else
      {
        if (v8)
        {
          v27 = 2 * v7;
        }

        else
        {
          v27 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v25 = *(a1 + 16);
    v26 = *(v25 + 104 * v5);
  }

  else
  {
    v25 = *(a1 + 16);
    v26 = *(v25 + 104 * v5);
    *(a1 + 36) = v26 & 0x7FFFFFFF;
  }

  v28 = v25 + 104 * v5;
  *v28 = v26 | 0x80000000;
  v29 = *(a1 + 8);
  *v28 = *(v29 + 4 * a2) | 0x80000000;
  *(v29 + 4 * a2) = v5;
  *(v28 + 96) = a3;
  ++*(a1 + 28);
  return v25 + 104 * v5;
}

void re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 104 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_178, 4 * v10);
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

uint64_t re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v26, v9, v8);
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
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
                v19 = *v17;
                *(v18 + 8) = *(v17 - 1);
                *(v18 + 16) = v19;
                *v17 = 0;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
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

void re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_178, 4 * v10);
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

uint64_t re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 16 * v7);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 16 * v7);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  v12 = 16 * v7;
  *(v10 + v12) = v11 | 0x80000000;
  v13 = *(a1 + 8);
  *(*(a1 + 16) + v12) = *(*(a1 + 16) + 16 * v7) & 0x80000000 | *(v13 + 4 * a2);
  *(*(a1 + 16) + 16 * v7 + 8) = *a5;
  *(v13 + 4 * a2) = v7;
  ++*(a1 + 28);
  return v7;
}

void re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v15, 0, 36);
      *&v15[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v15, v4, a2);
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
            v12 = 0xBF58476D1CE4E5B9 * (*(*&v15[16] + v10 + 8) ^ (*(*&v15[16] + v10 + 8) >> 30));
            v13 = (0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) ^ ((0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) >> 31);
            re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addAsMove(a1, v13 % *(a1 + 24), v13, *&v15[16] + v10 + 8, *&v15[16] + v10 + 8);
            v9 = *&v15[32];
          }

          ++v11;
          v10 += 16;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v15);
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

void re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 16 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_178, 4 * v10);
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

uint64_t re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    v5 = *(a2 + 28) <= 3u ? 3 : *(a2 + 28);
    re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v4, v5);
    v6 = *(a2 + 32);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i < v6; ++i)
      {
        v9 = *(a2 + 16);
        if ((*(v9 + v7) & 0x80000000) != 0)
        {
          v10 = re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v9 + v7 + 80) % *(a1 + 24), *(v9 + v7 + 80));
          re::DynamicString::DynamicString((v10 + 8), (*(a2 + 16) + v7 + 8));
          v11 = *(a2 + 16) + v7;
          *(v10 + 40) = *(v11 + 40);
          *(v10 + 48) = *(v11 + 48);
          *(v10 + 56) = *(v11 + 56);
          re::StringID::StringID((v10 + 64), (v11 + 64));
          v6 = *(a2 + 32);
        }

        v7 += 88;
      }
    }
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>@<X0>(uint64_t result@<X0>, const char **a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  v11 = v9 + 152 * v8;
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

  v16 = *(v9 + 152 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v16 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v17 = v16;
      v18 = v9 + 152 * v16;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = v18 + 17;
      v22 = ((v19 & 1) != 0 ? v20 : v21);
      result = strcmp(v22, v10);
      if (!result)
      {
        break;
      }

      v16 = *(v9 + 152 * v17) & 0x7FFFFFFF;
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

uint64_t re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 152 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 152 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 152 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 144) = a3;
  ++*(a1 + 28);
  return v7 + 152 * v5;
}

void re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::MaterialTechniqueQualityLevelSetData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 72;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 72) & 0x80000000) != 0)
      {
        result = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + 72) % *(v4 + 24));
        v8 = *(a2 + 16) + v6;
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = *(v8 - 40);
        v9 = *(v8 - 56);
        *(result + 8) = *(v8 - 64);
        *(v8 - 64) = 0;
        v10 = *(v8 - 48);
        *(v8 - 40) = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        *(v8 - 56) = v12;
        *(v8 - 48) = v11;
        v13 = *(a2 + 16) + v6;
        *(result + 56) = 0u;
        *(result + 40) = 0u;
        *(result + 64) = *(v13 - 8);
        v14 = *(v13 - 24);
        *(result + 40) = *(v13 - 32);
        *(v13 - 32) = 0;
        v15 = *(v13 - 16);
        *(v13 - 8) = 0;
        v17 = *(result + 48);
        v16 = *(result + 56);
        *(result + 48) = v14;
        *(result + 56) = v15;
        *(v13 - 24) = v17;
        *(v13 - 16) = v16;
        v18 = *(v13 + 16);
        v19 = *(v13 + 32);
        v20 = *(v13 + 48);
        *(result + 136) = *(v13 + 64);
        *(result + 120) = v20;
        *(result + 104) = v19;
        *(result + 88) = v18;
        *(result + 72) = *v13;
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 152;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::TechniqueFunctionConstant const&>(uint64_t a1, uint64_t a2, const char **a3, uint64_t a4)
{
  v7 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  re::DynamicString::DynamicString((v7 + 40), a4);
  *(v7 + 72) = *(a4 + 32);
  v9 = *(a4 + 48);
  v10 = *(a4 + 64);
  v11 = *(a4 + 80);
  *(v7 + 136) = *(a4 + 96);
  *(v7 + 120) = v11;
  *(v7 + 104) = v10;
  *(v7 + 88) = v9;
  ++*(a1 + 40);
  return v7 + 40;
}

uint64_t re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(uint64_t a1, const char **a2, void *a3)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = *a2;
  v7 = strlen(*a2);
  if (v7)
  {
    MurmurHash3_x64_128(v6, v7, 0, v14);
    v8 = (v14[1] + (v14[0] << 6) + (v14[0] >> 2) - 0x61C8864680B583E9) ^ v14[0];
  }

  else
  {
    v8 = 0;
  }

  re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::findEntry<char const*>(a1, a2, v8, &v11);
  if (HIDWORD(v12) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v12) + 16;
  }

  v9 = re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::allocEntry(a1, v12, v11);
  *(v9 + 8) = *a2;
  *(v9 + 16) = *a3;
  result = v9 + 16;
  *a3 = 0;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

uint64_t re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        v7 = *(a2 + 16);
        *(result + 16) = *(v7 + v5 + 16);
        *(v7 + v5 + 16) = 0;
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::TechniqueFunctionConstant const&>(uint64_t a1, uint64_t a2, const re::DynamicString *a3, uint64_t a4)
{
  v7 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::DynamicString::DynamicString((v7 + 8), a3);
  re::DynamicString::DynamicString((v7 + 40), a4);
  *(v7 + 72) = *(a4 + 32);
  v8 = *(a4 + 48);
  v9 = *(a4 + 64);
  v10 = *(a4 + 80);
  *(v7 + 136) = *(a4 + 96);
  *(v7 + 120) = v10;
  *(v7 + 104) = v9;
  *(v7 + 88) = v8;
  ++*(a1 + 40);
  return v7 + 40;
}

re::DynamicString *re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(re::DynamicString *result, uint64_t a2)
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
        v8 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 144) % *(v4 + 24), *(v7 + v5 + 144));
        re::DynamicString::DynamicString((v8 + 8), (*(a2 + 16) + v5 + 8));
        v9 = *(a2 + 16) + v5;
        result = re::DynamicString::DynamicString((v8 + 40), (v9 + 40));
        *(v8 + 72) = *(v9 + 72);
        v10 = *(v9 + 88);
        v11 = *(v9 + 104);
        v12 = *(v9 + 120);
        *(v8 + 136) = *(v9 + 136);
        *(v8 + 120) = v12;
        *(v8 + 104) = v11;
        *(v8 + 88) = v10;
        v2 = *(a2 + 32);
      }

      v5 += 152;
    }
  }

  return result;
}

double re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(uint64_t a1)
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
            v9 = (*(a1 + 8) + 96 * v8);
            re::DynamicArray<unsigned long>::deinit(v9 + 40);
            re::DynamicString::deinit(v9);
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

uint64_t re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(uint64_t *a1, uint64_t a2)
{
  if (!a1[7] || a1[2] < 0x10 || !a1[3])
  {
    return -1;
  }

  v4 = re::Hash<re::DynamicString>::operator()(&v15, a2) % (a1[2] >> 4);
  while (1)
  {
    v5 = *a1;
    v6 = re::Hash<re::DynamicString>::operator()(&v16, a2);
    v14 = *(v5 + 16 * v4);
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(vdupq_n_s8(v6 & 0x7F), v14), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = __clz(__rbit64(v7));
    if (v8 <= 0x3F)
    {
      break;
    }

LABEL_10:
    v12.i64[0] = -1;
    v12.i64[1] = -1;
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v14, v12), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (++v4 == a1[2] >> 4)
    {
      v4 = 0;
    }

    v11 = -1;
    if (v4 == re::Hash<re::DynamicString>::operator()(&v17, a2) % (a1[2] >> 4))
    {
      return v11;
    }
  }

  v9 = 16 * v4;
  v10 = a1[1];
  while (1)
  {
    v11 = v8 + v9;
    if (re::DynamicString::operator==(a2, v10 + 96 * (v8 + v9)))
    {
      return v11;
    }

    if (v8 <= 0x3E)
    {
      v8 = __clz(__rbit64((-2 << v8) & v7));
      if (v8 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

uint64_t re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::internalAdd(uint64_t *a1, const re::DynamicString *a2, uint64_t a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || a1[2] > (8 * v6))
  {
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::resize(a1, 1);
  }

  v7 = re::Hash<re::DynamicString>::operator()(&v23, a2) % (a1[2] >> 4);
  v8 = *a1;
  v9 = re::Hash<re::DynamicString>::operator()(&v24, a2);
  v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v10 >= 0x40)
  {
    do
    {
      if (v7 + 1 == a1[2] >> 4)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      v8 = *a1;
      v9 = re::Hash<re::DynamicString>::operator()(&v24, a2);
      v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v10 > 0x3F);
  }

  v11 = v8 + 16 * v7;
  v12 = *(v11 + v10);
  *(v11 + v10) = v9 & 0x7F;
  v13 = v10 + 16 * v7;
  v14 = 3 * v13;
  re::DynamicString::DynamicString((a1[1] + 96 * v13), a2);
  v15 = a1[1] + 32 * v14;
  *(v15 + 32) = *a3;
  *(v15 + 72) = 0;
  *(v15 + 64) = 0;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  *(v15 + 40) = 0;
  v16 = *(a3 + 16);
  *(v15 + 40) = *(a3 + 8);
  *(v15 + 48) = v16;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v17 = *(v15 + 56);
  *(v15 + 56) = *(a3 + 24);
  *(a3 + 24) = v17;
  v18 = *(v15 + 72);
  *(v15 + 72) = *(a3 + 40);
  *(a3 + 40) = v18;
  ++*(a3 + 32);
  ++*(v15 + 64);
  v19 = *(a3 + 48);
  *(v15 + 88) = *(a3 + 56);
  *(v15 + 80) = v19;
  if (v12 == 255)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v21.i64[1] = v20;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v21);
  a1[5] ^= re::Hash<re::DynamicString>::operator()(&v25, a1[1] + 32 * v14);
  return a1[1] + 32 * v14 + 32;
}

double re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::doResize(a1, v3);
}

void *re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  v6 = v5 & 0x3FFFFFFFFFFFFF0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v7 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 97 * v6, 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v8 = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      do
      {
        *(*v3 + 16 * v8++) = v9;
      }

      while (v7 != v8);
      result = *v3;
    }

    v3[1] = &result[2 * v7];
    v6 = v3[2];
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v6;
  return result;
}

double re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::internalAdd(v21, (*(v19[0] + 8) + 96 * v11), *(v19[0] + 8) + 96 * v11 + 32);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v21);
}

uint64_t re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::HashBrown(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = *(a2 + 56);
  if (v4)
  {
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::init(a1, v4, *(a2 + 24));
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::copy(a1, a2);
  }

  return a1;
}

void *re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::copy(void *a1, uint64_t a2)
{
  result = re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::clear(a1);
  v22[0] = a2;
  v5 = *(a2 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a2;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v22[1] = v9 ^ 0xFFFF;
      if (v9 != 0xFFFF)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        return result;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFF));
    v11 = v10 - v6;
    v23 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        v12 = *(v22[0] + 8) + 96 * v11;
        re::DynamicString::DynamicString(&v14, v12);
        v16 = *(v12 + 32);
        re::DynamicArray<char const*>::DynamicArray(v17, (v12 + 40));
        v13 = *(v12 + 80);
        v21 = *(v12 + 88);
        v20 = v13;
        re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::internalAdd(a1, &v14, &v16);
        if (v17[0])
        {
          if (v19)
          {
            (*(*v17[0] + 40))();
          }

          v19 = 0;
          memset(v17, 0, sizeof(v17));
          ++v18;
        }

        if (v14)
        {
          if (v15)
          {
            (*(*v14 + 40))();
          }
        }

        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v22);
        v11 = v23;
      }

      while (v23 != -1);
    }
  }

  return result;
}

void *re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::clear(void *result)
{
  v1 = result;
  result[5] = 0;
  result[6] = 0;
  v2 = result[2];
  result[3] = 0;
  result[4] = v2;
  v12[0] = result;
  if (v2 >= 0x10)
  {
    v3 = 0;
    v4 = *result;
    v5 = v2 >> 4;
    while (1)
    {
      v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v12[1] = v6 ^ 0xFFFFLL;
      if (v6 != 0xFFFFLL)
      {
        break;
      }

      v3 -= 16;
      ++v4;
      if (!--v5)
      {
        goto LABEL_9;
      }
    }

    v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
    v8 = v7 - v3;
    v13 = v7 - v3;
    if (v7 + 1 != v3)
    {
      do
      {
        v9 = (v1[1] + 96 * v8);
        re::DynamicArray<unsigned long>::deinit(v9 + 40);
        re::DynamicString::deinit(v9);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v12);
        v8 = v13;
      }

      while (v13 != -1);
      v2 = v1[2];
    }
  }

LABEL_9:
  if (v2 >= 0x10)
  {
    v10 = 0;
    *&v11 = -1;
    *(&v11 + 1) = -1;
    do
    {
      *(*v1 + 16 * v10++) = v11;
    }

    while (v10 < v1[2] >> 4);
  }

  return result;
}

uint64_t re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::internalAdd(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || *(a1 + 16) > (8 * v6))
  {
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::resize(a1, 1);
  }

  v7 = re::Hash<re::DynamicString>::operator()(&v21, a2) % (*(a1 + 16) >> 4);
  while (1)
  {
    v8 = *a1;
    v9 = re::Hash<re::DynamicString>::operator()(&v22, a2);
    v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v10 < 0x40)
    {
      break;
    }

    if (++v7 == *(a1 + 16) >> 4)
    {
      v7 = 0;
    }

    if (v7 == re::Hash<re::DynamicString>::operator()(&v24, a2) % (*(a1 + 16) >> 4))
    {
      re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      result = _os_crash();
      __break(1u);
      return result;
    }
  }

  v12 = v8 + 16 * v7;
  v13 = *(v12 + v10);
  *(v12 + v10) = v9 & 0x7F;
  v14 = v10 + 16 * v7;
  v15 = 3 * v14;
  re::DynamicString::DynamicString((*(a1 + 8) + 96 * v14), a2);
  v16 = *(a1 + 8) + 32 * v15;
  *(v16 + 32) = *a3;
  re::DynamicArray<char const*>::DynamicArray(v16 + 40, (a3 + 8));
  v17 = *(a3 + 48);
  *(v16 + 88) = *(a3 + 56);
  *(v16 + 80) = v17;
  if (v13 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v19);
  *(a1 + 40) ^= re::Hash<re::DynamicString>::operator()(&v23, *(a1 + 8) + 32 * v15);
  return *(a1 + 8) + 32 * v15 + 32;
}

int64x2_t re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(uint64_t a1, void *a2, _WORD *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v11;
  v17 = *(a1 + 8);
  v18 = v17 + 16 * v16;
  v19 = 16 * v16;
  *(v17 + v19) = *a2;
  *(v18 + 8) = *a3;
  if (v15 == 255)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v21.i64[1] = v20;
  result = vaddq_s64(*(a1 + 24), v21);
  *(a1 + 24) = result;
  v23 = *(v17 + v19) ^ (*(v17 + v19) >> 30);
  v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v23) ^ ((0xBF58476D1CE4E5B9 * v23) >> 27));
  *(a1 + 40) ^= (v24 >> 31) ^ v24;
  return result;
}

{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9;
  v9 = 0x94D049BB133111EBLL;
  v10 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v11 = (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31);
  v12 = v7 >> 4;
  v13 = *a1;
  v14 = v11 % v12;
  while (1)
  {
    v15 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v13 + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v15 < 0x40)
    {
      break;
    }

    if (v14 + 1 == v12)
    {
      v14 = 0;
    }

    else
    {
      ++v14;
    }

    if (v14 == v11 % v12)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash();
      __break(1u);
      break;
    }
  }

  v16 = v13 + 16 * v14;
  v17 = *(v16 + v15);
  *(v16 + v15) = v11 & 0x7F;
  v18 = v15 + 16 * v14;
  v19 = *(a1 + 8);
  v20 = v19 + 16 * v18;
  v21 = 16 * v18;
  *(v19 + v21) = *a2;
  *(v20 + 8) = *a3;
  if (v17 == 255)
  {
    v22 = -1;
  }

  else
  {
    v22 = 0;
  }

  v23.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v23.i64[1] = v22;
  result = vaddq_s64(*(a1 + 24), v23);
  *(a1 + 24) = result;
  v25 = *(v19 + v21) ^ (*(v19 + v21) >> 30);
  v26 = ((v25 * v8) ^ ((v25 * v8) >> 27)) * v9;
  *(a1 + 40) ^= (v26 >> 31) ^ v26;
  return result;
}

double re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::doResize(a1, v3);
}

double re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v23, 0, sizeof(v23));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v23, v4, a2);
  v21[0] = a1;
  v6 = *(a1 + 16);
  if (v6 >= 0x10)
  {
    v7 = 0;
    v8 = *a1;
    v9 = v6 >> 4;
    v10 = xmmword_1E304FAD0;
    v5.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v21[1] = v11 ^ 0xFFFFLL;
      if (v11 != 0xFFFFLL)
      {
        break;
      }

      v7 -= 16;
      ++v8;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    v12 = __clz(__rbit64(v11 ^ 0xFFFFLL));
    v13 = v12 - v7;
    v22 = v12 - v7;
    if (v12 + 1 != v7)
    {
      do
      {
        re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(v23, *(v21[0] + 8) + 16 * v13, *(v21[0] + 8) + 16 * v13 + 8, v10, v5);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v21);
        v13 = v22;
      }

      while (v22 != -1);
      v6 = *(a1 + 16);
    }
  }

LABEL_9:
  v14 = *(&v23[3] + 1);
  *(&v23[3] + 1) = *(a1 + 56);
  v15 = v23[0];
  v16 = v23[1];
  v23[0] = *a1;
  *&v23[1] = v6;
  v17 = v23[2];
  v18 = *(a1 + 40);
  *(a1 + 48) = *&v23[3];
  *(a1 + 56) = v14;
  *(&v23[2] + 8) = v18;
  v19 = *(a1 + 24);
  *a1 = v15;
  *(a1 + 16) = v16;
  *(a1 + 32) = v17;
  *(&v23[1] + 8) = v19;
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v23);
}

uint64_t re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find(void *a1, uint64_t *a2)
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
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
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
    if (v4 == *(a1[1] + 72 * (v13 + v14)))
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

void *re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = *a1;
  v12 = v9 % v10;
  while (1)
  {
    v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v11 + 16 * v12)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v13 < 0x40)
    {
      break;
    }

    if (v12 + 1 == v10)
    {
      v12 = 0;
    }

    else
    {
      ++v12;
    }

    if (v12 == v9 % v10)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash();
      __break(1u);
      break;
    }
  }

  v14 = v11 + 16 * v12;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 9 * (v13 + 16 * v12);
  v17 = (*(a1 + 8) + 72 * (v13 + 16 * v12));
  *v17 = *a2;
  re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::HashBrown((v17 + 1), a3);
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v19);
  v20 = (*(a1 + 8) + 8 * v16);
  v22 = *v20;
  result = v20 + 1;
  v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) >> 27));
  *(a1 + 40) ^= (v23 >> 31) ^ v23;
  return result;
}

double re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::doResize(a1, v3);
}

void *re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  v6 = v5 & 0x3FFFFFFFFFFFFF0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v7 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 73 * v6, 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v8 = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      do
      {
        *(*v3 + 16 * v8++) = v9;
      }

      while (v7 != v8);
      result = *v3;
    }

    v3[1] = &result[2 * v7];
    v6 = v3[2];
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v6;
  return result;
}

double re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(v21, (*(v19[0] + 8) + 72 * v11), (*(v19[0] + 8) + 72 * v11 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(v21);
}

void *re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(uint64_t *a1, void *a2, uint64_t *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v11;
  v17 = 9 * v16;
  v18 = a1[1] + 72 * v16;
  *v18 = *a2;
  *(v18 + 24) = 0u;
  *(v18 + 40) = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 8) = 0u;
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((v18 + 8), a3);
  if (v15 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v20);
  v21 = (a1[1] + 8 * v17);
  v23 = *v21;
  result = v21 + 1;
  v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) >> 27));
  a1[5] ^= (v24 >> 31) ^ v24;
  return result;
}

uint64_t re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::HashBrown(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = *(a2 + 56);
  if (v4)
  {
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(a1, v4, *(a2 + 24));
    re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::copy(a1, a2);
  }

  return a1;
}

void *re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::copy(void *a1, uint64_t a2)
{
  result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::clear(a1);
  v13[0] = a2;
  v5 = *(a2 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a2;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v13[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        return result;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v14 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        v12 = *(*(v13[0] + 8) + 16 * v11);
        re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(a1, &v12, &v12 + 4);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v13);
        v11 = v14;
      }

      while (v14 != -1);
    }
  }

  return result;
}

double re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 120;
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

_DWORD *re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(_DWORD *result)
{
  if ((*result & 0x80000000) != 0)
  {
    v2 = result;
    *result &= ~0x80000000;
    v3 = (result + 20);
    re::DynamicString::deinit((result + 2));
    re::DynamicString::deinit(v3);

    return re::DynamicArray<re::DynamicString>::deinit((v2 + 10));
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 120 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 120 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 120 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 112) = a3;
  ++*(a1 + 28);
  return v7 + 120 * v5;
}

void re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::MaterialTechniqueGroupData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 56;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 56) & 0x80000000) != 0)
      {
        result = re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + 56) % *(v4 + 24));
        v8 = *(a2 + 16) + v6;
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = *(v8 - 24);
        v9 = *(v8 - 40);
        *(result + 8) = *(v8 - 48);
        *(v8 - 48) = 0;
        v10 = *(v8 - 32);
        *(v8 - 24) = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        *(v8 - 40) = v12;
        *(v8 - 32) = v11;
        v13 = *(a2 + 16) + v6;
        *(result + 72) = 0;
        *(result + 64) = 0;
        *(result + 48) = 0;
        *(result + 56) = 0;
        *(result + 40) = 0;
        v14 = *(v13 - 8);
        *(result + 40) = *(v13 - 16);
        *(result + 48) = v14;
        *(v13 - 16) = 0;
        *(v13 - 8) = 0;
        v15 = *(result + 56);
        *(result + 56) = *v13;
        *v13 = v15;
        v16 = *(result + 72);
        *(result + 72) = *(v13 + 16);
        *(v13 + 16) = v16;
        ++*(v13 + 8);
        ++*(result + 64);
        *(result + 80) = 0u;
        *(result + 96) = 0u;
        *(result + 104) = *(v13 + 48);
        v17 = *(v13 + 32);
        *(result + 80) = *(v13 + 24);
        *(v13 + 24) = 0;
        v18 = *(v13 + 40);
        *(v13 + 48) = 0;
        v20 = *(result + 88);
        v19 = *(result + 96);
        *(result + 88) = v17;
        *(result + 96) = v18;
        *(v13 + 32) = v20;
        *(v13 + 40) = v19;
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 120;
    }

    while (v5 < v2);
  }

  return result;
}

void re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 48 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_178, 4 * v10);
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

uint64_t re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 48 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 48 * v4;
}

void re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(a1, v9);
      re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 24));
        v9 = (*(a2 + 16) + v5);
        *(result + 8) = v9[1];
        *(result + 16) = 0u;
        *(result + 32) = 0u;
        *(result + 40) = v9[5];
        v10 = v9[3];
        *(result + 16) = v9[2];
        v9[2] = 0;
        v11 = v9[4];
        v9[5] = 0;
        v13 = *(result + 24);
        v12 = *(result + 32);
        *(result + 24) = v10;
        *(result + 32) = v11;
        v9[3] = v13;
        v9[4] = v12;
        v2 = *(a2 + 32);
      }

      v5 += 48;
    }
  }

  return result;
}

void *re::DynamicArray<re::TechniqueFunctionConstant>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(v5, a2);
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
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v16 = *(v8 + 48);
          v17 = *(v8 + 64);
          v18 = *(v8 + 80);
          *(v11 + 24) = *(v8 + 96);
          *(v11 + 4) = v17;
          *(v11 + 5) = v18;
          *(v11 + 3) = v16;
          *(v11 + 2) = *(v8 + 32);
          re::DynamicString::deinit(v8);
          v8 += 104;
          v11 += 13;
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

uint64_t re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 24 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 24 * v4;
}

void re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(a1, v9);
      re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * (*(v7 + v5 + 8) ^ (*(v7 + v5 + 8) >> 30));
        result = re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 24));
        v7 = *(a2 + 16);
        *(result + 8) = *(v7 + v5 + 8);
        *(result + 16) = *(v7 + v5 + 16);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 24;
    }

    while (v6 < v2);
  }

  return result;
}

void re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_178, 4 * v10);
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

double re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(uint64_t *a1)
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
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
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

uint64_t re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 24 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 24 * v4;
}

void re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(a1, v9);
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v9);
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

uint64_t re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v4, *(v7 + v5 + 8) % *(v4 + 24), *(v7 + v5 + 8));
        v7 = *(a2 + 16);
        *(result + 8) = *(v7 + v5 + 8);
        *(result + 16) = *(v7 + v5 + 16);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 24;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::DynamicArray<re::LinkedFunction>::deinit(uint64_t a1)
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
        v6 = 200 * v4;
        do
        {
          v7 = (v3 + v5);
          re::DynamicArray<unsigned long>::deinit(v3 + v5 + 160);
          re::DynamicArray<unsigned long>::deinit(v3 + v5 + 120);
          re::FixedArray<re::TypedArgument>::deinit((v3 + v5 + 96));
          re::FixedArray<re::TechniqueFunctionConstant>::deinit((v3 + v5 + 64));
          v8 = *(v3 + v5 + 48);
          if (v8)
          {

            v7[6] = 0;
          }

          re::StringID::destroyString((v7 + 3));
          re::StringID::destroyString((v7 + 1));
          v5 += 200;
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

uint64_t re::internal::compileTimeHornerHash<29ul>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a3 - a2;
  if (a3 - a2 > 4)
  {
    if (v5 > 7)
    {
      switch(v5)
      {
        case 8:
          v6 = 0xC694446F01 * a1 + 0x667E12CDFLL * aPbremulationge[a2] + 887503681 * aPbremulationge[a2 + 1] + 28629151 * aPbremulationge[a2 + 2] + 923521 * aPbremulationge[a2 + 3] + 29791 * aPbremulationge[a2 + 4] + 961 * aPbremulationge[a2 + 5] - aPbremulationge[a2 + 6] + 32 * aPbremulationge[a2 + 6];
          v4 = a2 + 7;
          return v6 + aPbremulationge[v4];
        case 9:
          v6 = 0x180BF449711FLL * a1 + 0xC694446F01 * aPbremulationge[a2] + 0x667E12CDFLL * aPbremulationge[a2 + 1] + 887503681 * aPbremulationge[a2 + 2] + 28629151 * aPbremulationge[a2 + 3] + 923521 * aPbremulationge[a2 + 4] + 29791 * aPbremulationge[a2 + 5] + 961 * aPbremulationge[a2 + 6] - aPbremulationge[a2 + 7] + 32 * aPbremulationge[a2 + 7];
          v4 = a2 + 8;
          return v6 + aPbremulationge[v4];
        case 10:
          v6 = 0x2E97294E4B2C1 * a1 + 0x180BF449711FLL * aPbremulationge[a2] + 0xC694446F01 * aPbremulationge[a2 + 1] + 0x667E12CDFLL * aPbremulationge[a2 + 2] + 887503681 * aPbremulationge[a2 + 3] + 28629151 * aPbremulationge[a2 + 4] + 923521 * aPbremulationge[a2 + 5] + 29791 * aPbremulationge[a2 + 6] + 961 * aPbremulationge[a2 + 7] - aPbremulationge[a2 + 8] + 32 * aPbremulationge[a2 + 8];
          v4 = a2 + 9;
          return v6 + aPbremulationge[v4];
      }
    }

    else
    {
      switch(v5)
      {
        case 5:
          v6 = 28629151 * a1 + 923521 * aPbremulationge[a2] + 29791 * aPbremulationge[a2 + 1] + 961 * aPbremulationge[a2 + 2] - aPbremulationge[a2 + 3] + 32 * aPbremulationge[a2 + 3];
          v4 = a2 + 4;
          return v6 + aPbremulationge[v4];
        case 6:
          v6 = 887503681 * a1 + 28629151 * aPbremulationge[a2] + 923521 * aPbremulationge[a2 + 1] + 29791 * aPbremulationge[a2 + 2] + 961 * aPbremulationge[a2 + 3] - aPbremulationge[a2 + 4] + 32 * aPbremulationge[a2 + 4];
          v4 = a2 + 5;
          return v6 + aPbremulationge[v4];
        case 7:
          v6 = 0x667E12CDFLL * a1 + 887503681 * aPbremulationge[a2] + 28629151 * aPbremulationge[a2 + 1] + 923521 * aPbremulationge[a2 + 2] + 29791 * aPbremulationge[a2 + 3] + 961 * aPbremulationge[a2 + 4] - aPbremulationge[a2 + 5] + 32 * aPbremulationge[a2 + 5];
          v4 = a2 + 6;
          return v6 + aPbremulationge[v4];
      }
    }

    goto LABEL_18;
  }

  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v6 = 961 * a1 - aPbremulationge[a2] + 32 * aPbremulationge[a2];
        v4 = a2 + 1;
        return v6 + aPbremulationge[v4];
      case 3:
        v6 = 29791 * a1 + 961 * aPbremulationge[a2] - aPbremulationge[a2 + 1] + 32 * aPbremulationge[a2 + 1];
        v4 = a2 + 2;
        return v6 + aPbremulationge[v4];
      case 4:
        v6 = 923521 * a1 + 29791 * aPbremulationge[a2] + 961 * aPbremulationge[a2 + 1] - aPbremulationge[a2 + 2] + 32 * aPbremulationge[a2 + 2];
        v4 = a2 + 3;
        return v6 + aPbremulationge[v4];
    }

    goto LABEL_18;
  }

  if (v5)
  {
    if (v5 == 1)
    {
LABEL_19:
      v6 = 31 * a1;
      return v6 + aPbremulationge[v4];
    }

LABEL_18:
    v7 = a2 + (v5 >> 1);
    v8 = re::internal::compileTimeHornerHash<29ul>(a1, a2, v7 - 1);
    v4 = a3 - 1;
    a1 = re::internal::compileTimeHornerHash<29ul>(aPbremulationge[v7 - 1] - v8 + 32 * v8, v7, a3 - 1);
    goto LABEL_19;
  }

  return v5;
}

uint64_t re::internal::compileTimeHornerHash<26ul>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a3 - a2;
  if (a3 - a2 > 4)
  {
    if (v5 > 7)
    {
      switch(v5)
      {
        case 8:
          v6 = 0xC694446F01 * a1 + 0x667E12CDFLL * aPbremulationsu[a2] + 887503681 * aPbremulationsu[a2 + 1] + 28629151 * aPbremulationsu[a2 + 2] + 923521 * aPbremulationsu[a2 + 3] + 29791 * aPbremulationsu[a2 + 4] + 961 * aPbremulationsu[a2 + 5] - aPbremulationsu[a2 + 6] + 32 * aPbremulationsu[a2 + 6];
          v4 = a2 + 7;
          return v6 + aPbremulationsu[v4];
        case 9:
          v6 = 0x180BF449711FLL * a1 + 0xC694446F01 * aPbremulationsu[a2] + 0x667E12CDFLL * aPbremulationsu[a2 + 1] + 887503681 * aPbremulationsu[a2 + 2] + 28629151 * aPbremulationsu[a2 + 3] + 923521 * aPbremulationsu[a2 + 4] + 29791 * aPbremulationsu[a2 + 5] + 961 * aPbremulationsu[a2 + 6] - aPbremulationsu[a2 + 7] + 32 * aPbremulationsu[a2 + 7];
          v4 = a2 + 8;
          return v6 + aPbremulationsu[v4];
        case 10:
          v6 = 0x2E97294E4B2C1 * a1 + 0x180BF449711FLL * aPbremulationsu[a2] + 0xC694446F01 * aPbremulationsu[a2 + 1] + 0x667E12CDFLL * aPbremulationsu[a2 + 2] + 887503681 * aPbremulationsu[a2 + 3] + 28629151 * aPbremulationsu[a2 + 4] + 923521 * aPbremulationsu[a2 + 5] + 29791 * aPbremulationsu[a2 + 6] + 961 * aPbremulationsu[a2 + 7] - aPbremulationsu[a2 + 8] + 32 * aPbremulationsu[a2 + 8];
          v4 = a2 + 9;
          return v6 + aPbremulationsu[v4];
      }
    }

    else
    {
      switch(v5)
      {
        case 5:
          v6 = 28629151 * a1 + 923521 * aPbremulationsu[a2] + 29791 * aPbremulationsu[a2 + 1] + 961 * aPbremulationsu[a2 + 2] - aPbremulationsu[a2 + 3] + 32 * aPbremulationsu[a2 + 3];
          v4 = a2 + 4;
          return v6 + aPbremulationsu[v4];
        case 6:
          v6 = 887503681 * a1 + 28629151 * aPbremulationsu[a2] + 923521 * aPbremulationsu[a2 + 1] + 29791 * aPbremulationsu[a2 + 2] + 961 * aPbremulationsu[a2 + 3] - aPbremulationsu[a2 + 4] + 32 * aPbremulationsu[a2 + 4];
          v4 = a2 + 5;
          return v6 + aPbremulationsu[v4];
        case 7:
          v6 = 0x667E12CDFLL * a1 + 887503681 * aPbremulationsu[a2] + 28629151 * aPbremulationsu[a2 + 1] + 923521 * aPbremulationsu[a2 + 2] + 29791 * aPbremulationsu[a2 + 3] + 961 * aPbremulationsu[a2 + 4] - aPbremulationsu[a2 + 5] + 32 * aPbremulationsu[a2 + 5];
          v4 = a2 + 6;
          return v6 + aPbremulationsu[v4];
      }
    }

    goto LABEL_18;
  }

  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v6 = 961 * a1 - aPbremulationsu[a2] + 32 * aPbremulationsu[a2];
        v4 = a2 + 1;
        return v6 + aPbremulationsu[v4];
      case 3:
        v6 = 29791 * a1 + 961 * aPbremulationsu[a2] - aPbremulationsu[a2 + 1] + 32 * aPbremulationsu[a2 + 1];
        v4 = a2 + 2;
        return v6 + aPbremulationsu[v4];
      case 4:
        v6 = 923521 * a1 + 29791 * aPbremulationsu[a2] + 961 * aPbremulationsu[a2 + 1] - aPbremulationsu[a2 + 2] + 32 * aPbremulationsu[a2 + 2];
        v4 = a2 + 3;
        return v6 + aPbremulationsu[v4];
    }

    goto LABEL_18;
  }

  if (v5)
  {
    if (v5 == 1)
    {
LABEL_19:
      v6 = 31 * a1;
      return v6 + aPbremulationsu[v4];
    }

LABEL_18:
    v7 = a2 + (v5 >> 1);
    v8 = re::internal::compileTimeHornerHash<26ul>(a1, a2, v7 - 1);
    v4 = a3 - 1;
    a1 = re::internal::compileTimeHornerHash<26ul>(aPbremulationsu[v7 - 1] - v8 + 32 * v8, v7, a3 - 1);
    goto LABEL_19;
  }

  return v5;
}

void *re::DynamicArray<re::LinkedFunction>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::LinkedFunction>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::LinkedFunction>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::LinkedFunction>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::LinkedFunction>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xC8uLL))
        {
          v2 = 200 * a2;
          result = (*(*result + 32))(result, 200 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 200, a2);
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
        v10 = 200 * v9;
        v11 = v7;
        do
        {
          re::ObjectHelper::move<re::LinkedFunction>(v8, v11);
          v8 += 200;
          v11 += 200;
          v10 -= 200;
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

re::DynamicString *re::FixedArray<re::TechniqueFunctionConstant>::FixedArray(re::DynamicString *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::TechniqueFunctionConstant>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<re::TechniqueFunctionConstant>::copy(a1, a2);
  }

  return a1;
}

re::DynamicString *re::FixedArray<re::TechniqueFunctionConstant>::copy(re::DynamicString *result, uint64_t a2)
{
  v2 = *(result + 1);
  if (v2 == *(a2 + 8))
  {
    if (v2)
    {
      v3 = *(a2 + 16);
      result = *(result + 2);
      v4 = 104 * v2;
      do
      {
        v5 = re::DynamicString::operator=(result, v3);
        *(v5 + 2) = *(v3 + 32);
        v6 = *(v3 + 48);
        v7 = *(v3 + 64);
        v8 = *(v3 + 80);
        *(v5 + 24) = *(v3 + 96);
        *(v5 + 4) = v7;
        *(v5 + 5) = v8;
        *(v5 + 3) = v6;
        v3 += 104;
        result = (v5 + 104);
        v4 -= 104;
      }

      while (v4);
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

uint64_t re::FixedArray<re::TypedArgument>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x24924924924924ALL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 112, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 112 * a3, 8);
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
      *result = 0;
      *(result + 8) = &str_67;
      *(result + 16) = 0;
      *(result + 24) = 0uLL;
      *(result + 40) = 0uLL;
      *(result + 56) = 0uLL;
      *(result + 88) = 0uLL;
      *(result + 72) = 0uLL;
      *(result + 32) = 1;
      *(result + 48) = &str_67;
      *(result + 60) = 0;
      *(result + 100) = 256;
      *(result + 64) = 0;
      *(result + 72) = 0;
      *(result + 80) = 0;
      *(result + 85) = 0;
      *(result + 104) = 0;
      result += 112;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  *(result + 8) = &str_67;
  *(result + 16) = 0;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 88) = 0u;
  *(result + 72) = 0u;
  *(result + 32) = 1;
  *(result + 48) = &str_67;
  *(result + 60) = 0;
  *(result + 100) = 256;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 85) = 0;
  *(result + 104) = 0;
  return result;
}

uint64_t re::FixedArray<re::TypedArgument>::copy(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == *(a2 + 8))
  {
    return std::__copy_impl::operator()[abi:nn200100]<re::TypedArgument *,re::TypedArgument *,re::TypedArgument *>(&v4, *(a2 + 16), *(a2 + 16) + 112 * v2, *(a1 + 16));
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::TypedArgument *,re::TypedArgument *,re::TypedArgument *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    re::StringID::operator=((a4 + v7), (a2 + v7));
    *(v8 + 16) = *(a2 + v7 + 16);
    v9 = *(a2 + v7 + 24);
    *(v8 + 32) = *(a2 + v7 + 32);
    *(v8 + 24) = v9;
    re::StringID::operator=((a4 + v7 + 40), (a2 + v7 + 40));
    v10 = *(a2 + v7 + 56);
    *(v8 + 60) = *(a2 + v7 + 60);
    *(v8 + 56) = v10;
    re::FixedArray<re::MetalTypeInfo>::operator=((a4 + v7 + 64), a2 + v7 + 64);
    v11 = *(a2 + v7 + 88);
    *(v8 + 94) = *(a2 + v7 + 94);
    *(v8 + 88) = v11;
    *(v8 + 104) = *(a2 + v7 + 104);
    v7 += 112;
  }

  while (a2 + v7 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::TechniqueFunctionConstant>::deinit(uint64_t a1)
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
          re::DynamicString::deinit(v3);
          v3 = (v3 + 104);
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

uint64_t re::FixedArray<re::LinkedFunction>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x147AE147AE147AFLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 200, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 200 * a3, 8);
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = &str_67;
      *(result + 24) = 0;
      *(result + 32) = &str_67;
      *(result + 192) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0;
      *(result + 64) = 0uLL;
      *(result + 80) = 0uLL;
      *(result + 96) = 0uLL;
      *(result + 112) = 0uLL;
      *(result + 128) = 0uLL;
      *(result + 144) = 0;
      *(result + 152) = 0uLL;
      *(result + 168) = 0uLL;
      *(result + 184) = 0;
      result += 200;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = &str_67;
  *(result + 24) = 0;
  *(result + 32) = &str_67;
  *(result + 192) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0;
  *(result + 152) = 0u;
  *(result + 168) = 0u;
  *(result + 184) = 0;
  return result;
}