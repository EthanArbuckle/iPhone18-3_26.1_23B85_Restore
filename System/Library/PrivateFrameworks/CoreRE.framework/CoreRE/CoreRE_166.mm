uint64_t re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, uint64_t *a2, _WORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 8) = *(v7 + 8) & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *(v7 + 8) = *a2 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  *(v7 + 16) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v7 + 24) = *a3;
  result = v7 + 24;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 8) = *(v7 + 8) & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *(v7 + 8) = *a2 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  *(v7 + 16) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v7 + 24) = *a3;
  result = v7 + 24;
  ++*(a1 + 40);
  return result;
}

BOOL re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(re::MaterialTechniqueDefinition const*,int)::$_0::operator()(uint64_t **a1, char *__s, const char *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = **a1;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, &v16);
    v8 = (v17 + (v16 << 6) + (v16 >> 2) - 0x61C8864680B583E9) ^ v16;
  }

  else
  {
    v8 = 0;
  }

  if (v6 != v8)
  {
    return 0;
  }

  v9 = *a1[1];
  v10 = strlen(a3);
  if (v10)
  {
    MurmurHash3_x64_128(a3, v10, 0, &v16);
    v11 = (v17 + (v16 << 6) + (v16 >> 2) - 0x61C8864680B583E9) ^ v16;
  }

  else
  {
    v11 = 0;
  }

  if (!*(v9 + 136))
  {
    return 0;
  }

  v12 = *(*(v9 + 144) + 4 * (v11 % *(v9 + 160)));
  if (v12 == 0x7FFFFFFF)
  {
    return 0;
  }

  v14 = *(v9 + 152);
  do
  {
    v15 = *(v14 + 48 * v12 + 8);
    result = v15 == v11;
    if (v15 == v11)
    {
      break;
    }

    v12 = *(v14 + 48 * v12) & 0x7FFFFFFF;
  }

  while (v12 != 0x7FFFFFFF);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::TechniqueFunctionConstant>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<re::TechniqueFunctionConstant>::copy(this, 0, *a2, v4);
      re::DynamicArray<re::TechniqueFunctionConstant>::resize(this, *(a2 + 8));
    }

    else
    {
      re::DynamicArray<re::TechniqueFunctionConstant>::clear(this);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<re::TechniqueFunctionConstant>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

uint64_t re::MaterialBuilder::addFunctionsToReflectionCache(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  if (*(a1 + 2448))
  {
    v8 = *(a1 + 2456);
  }

  else
  {
    v8 = (a1 + 2449);
  }

  v9 = re::FunctionReflectionCache::hashFunction(v6, v7, (a1 + 2504), v8, *(a1 + 2424));
  v15 = 0;
  v16 = 0;
  v18 = 0;
  v17 = 0;
  *v19 = 0;
  memset(&v19[16], 0, 24);
  re::DynamicString::setCapacity(&v19[8], 0);
  re::DynamicArray<re::TechniqueFunctionConstant>::operator=(&v15, a2);
  re::DynamicString::operator=(&v19[8], (a1 + 2440));
  v20 = *(a1 + 2424);
  v21 = v9;
  re::FunctionReflectionCache::addTask(a3, &v15);
  if (*&v19[8])
  {
    if (v19[16])
    {
      (*(**&v19[8] + 40))();
    }

    memset(&v19[8], 0, 32);
  }

  result = re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v15);
  v11 = *(a1 + 2480);
  v12 = v11 >> 1;
  if ((v11 & 1) == 0)
  {
    v12 = v11 >> 1;
  }

  if (v12)
  {
    if (v11)
    {
      v13 = *(a1 + 2488);
    }

    else
    {
      v13 = (a1 + 2481);
    }

    v14 = re::FunctionReflectionCache::hashFunction(*a2, a2[1], (a1 + 2568), v13, *(a1 + 2432));
    v15 = 0;
    v16 = 0;
    v18 = 0;
    v17 = 0;
    memset(v19, 0, sizeof(v19));
    re::DynamicString::setCapacity(&v19[8], 0);
    re::DynamicArray<re::TechniqueFunctionConstant>::operator=(&v15, a2);
    re::DynamicString::operator=(&v19[8], (a1 + 2472));
    v20 = *(a1 + 2432);
    v21 = v14;
    re::FunctionReflectionCache::addTask(a3, &v15);
    if (*&v19[8])
    {
      if (v19[16])
      {
        (*(**&v19[8] + 40))();
      }

      memset(&v19[8], 0, 32);
    }

    return re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v15);
  }

  return result;
}

uint64_t re::DynamicArray<re::TechniqueFunctionConstant>::operator=(uint64_t result, uint64_t a2)
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

void re::MaterialBuilder::overlayBlurTechniquesAndTextures(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1B8778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8778))
  {
    qword_1EE1B8770 = re::hashString("SFBPassthroughDownsample2D", v26);
    __cxa_guard_release(&qword_1EE1B8778);
  }

  if ((atomic_load_explicit(&qword_1EE1B8788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8788))
  {
    qword_1EE1B8780 = re::hashString("SFBCopyTextureBilinear", v27);
    __cxa_guard_release(&qword_1EE1B8788);
  }

  if ((atomic_load_explicit(&qword_1EE1B8798, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8798))
  {
    qword_1EE1B8790 = re::hashString("PlattersOnly", v28);
    __cxa_guard_release(&qword_1EE1B8798);
  }

  if ((atomic_load_explicit(&qword_1EE1B87A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B87A8))
  {
    qword_1EE1B87A0 = re::hashString("OnlyPlattersVS", v29);
    __cxa_guard_release(&qword_1EE1B87A8);
  }

  if ((atomic_load_explicit(&qword_1EE1B87B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B87B8))
  {
    qword_1EE1B87B0 = re::hashString("OnlyPlattersBreakthrough", v30);
    __cxa_guard_release(&qword_1EE1B87B8);
  }

  if ((atomic_load_explicit(&qword_1EE1B87C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B87C8))
  {
    qword_1EE1B87C0 = re::hashString("PlatterContentsOnly", v31);
    __cxa_guard_release(&qword_1EE1B87C8);
  }

  if ((atomic_load_explicit(&qword_1EE1B87D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B87D8))
  {
    qword_1EE1B87D0 = re::hashString("StenciledRenderNoPlatter", v32);
    __cxa_guard_release(&qword_1EE1B87D8);
  }

  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  *&v43 = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
  v6 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a2 + 1032, &v43);
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  *&v43 = re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash;
  v7 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a2 + 1032, &v43);
  v8 = v7;
  v9 = *a3;
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  if (*(v9 + 64) && (v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash ^ (re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash >> 30))) ^ ((0xBF58476D1CE4E5B9 * (re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash ^ (re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash >> 30))) >> 27)), v11 = *(*(v9 + 72) + 4 * ((v10 ^ (v10 >> 31)) % *(v9 + 88))), v11 != 0x7FFFFFFF))
  {
    v13 = *(v9 + 80);
    v14 = 0x7FFFFFFFLL;
    while (*(v13 + 72 * v11 + 8) != re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash)
    {
      v11 = *(v13 + 72 * v11) & 0x7FFFFFFF;
      if (v11 == 0x7FFFFFFF)
      {
        goto LABEL_22;
      }
    }

    v14 = v11;
LABEL_22:
    v12 = v14 == 0x7FFFFFFF;
  }

  else
  {
    v12 = 1;
  }

  if (*(a1 + 22) == 1 && (*(a1 + 23) & 1) != 0 || *(a1 + 24) == 1 && *(a1 + 25) == 1)
  {
    if (!v6)
    {
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      v37 = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
      v15 = *(*(a1 + 32) + 64);
      v43 = 0u;
      v44 = 0u;
      *v45 = 0;
      *&v45[4] = 0x7FFFFFFFLL;
      re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(&v43, v15, 3);
      v6 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a2 + 1032, &v37, &v43);
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(&v43);
    }

    if (v8)
    {
      v16 = 1;
    }

    else
    {
      v16 = v12;
    }

    if ((v16 & 1) == 0)
    {
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      v37 = re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash;
      v17 = *(*(a1 + 32) + 64);
      v43 = 0u;
      v44 = 0u;
      *v45 = 0;
      *&v45[4] = 0x7FFFFFFFLL;
      re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(&v43, v17, 2);
      v8 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a2 + 1032, &v37, &v43);
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(&v43);
    }
  }

  if (*(a1 + 22) == 1 && *(a1 + 23) == 1)
  {
    v43 = 0u;
    v44 = 0u;
    re::DynamicString::setCapacity(&v43, 0);
    memset(v47, 0, sizeof(v47));
    v46 = 0u;
    *&v45[8] = 0u;
    *v45 = 0x1002D0035;
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 40, "EnablePassthroughBlurPlane", &v43);
    v37 = 0;
    v18 = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v6, &qword_1EE1B8770, &v37);
    if (!*(a2 + 608))
    {
    }

    v19 = re::StringID::invalid(&v33);
    if (v33)
    {
      if (v33)
      {
      }
    }

    v20 = re::StringID::invalid(&v33);
    if (v33)
    {
      if (v33)
      {
      }
    }

    LODWORD(v37) = 1;
    v39 = 9;
    v40 = 0x23D59F1355F7D636;
    v38 = 0x7F03C6932F573C08;
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace((a2 + 552), &v38, &v37);
    v7 = v43;
    if (v43 && (BYTE8(v43) & 1) != 0)
    {
      v7 = (*(*v43 + 40))();
    }
  }

  if (*(a1 + 24) == 1 && *(a1 + 25) == 1)
  {
    *(&v43 + 1) = 0;
    v44 = 0uLL;
    re::DynamicString::setCapacity(&v43, 0);
    memset(v47, 0, sizeof(v47));
    v46 = 0u;
    *&v45[8] = 0u;
    *v45 = 0x100430035;
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 40, "EnableVCABlurPlane", &v43);
    v37 = 0;
    re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v6, &qword_1EE1B8780, &v37);
    re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v6, &qword_1EE1B8790, &qword_1EE1B87A0);
    v21 = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v6, &qword_1EE1B87C0, &qword_1EE1B87D0);
    if (v8)
    {
      re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v8, &qword_1EE1B8790, &qword_1EE1B87B0);
      v21 = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v8, &qword_1EE1B87C0, &qword_1EE1B87D0);
    }

    if (!*(a2 + 608))
    {
    }

    v22 = re::StringID::invalid(&v33);
    if (v33)
    {
      if (v33)
      {
      }
    }

    v23 = re::StringID::invalid(&v33);
    if (v33)
    {
      if (v33)
      {
      }
    }

    LODWORD(v37) = 1;
    v39 = 9;
    v40 = 0x60DF09E0AF8AD07;
    v38 = 0x2AC55919B0708E48;
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace((a2 + 552), &v38, &v37);
    v24 = re::StringID::invalid(&v41);
    if (v41)
    {
      if (v41)
      {
      }
    }

    v25 = re::StringID::invalid(&v41);
    if (v41)
    {
      if (v41)
      {
      }
    }

    v33 = 1;
    v35 = 9;
    v36 = 0x2B6EE9216B5DB7CCLL;
    v34 = 0x165DA6A7F4273B43;
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace((a2 + 552), &v34, &v33);
    if (v43)
    {
      if (BYTE8(v43))
      {
        (*(*v43 + 40))();
      }
    }
  }
}

__n128 re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(uint64_t a1, char *a2, uint64_t a3)
{
  v13 = 0;
  v14 = a2;
  v11 = 0;
  v12 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v15, a2);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v14, v5, &v11);
  v6 = HIDWORD(v12);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::TechniqueFunctionConstant const&>(a1, &v11, &v14, a3);
  }

  else
  {
    ++*(a1 + 40);
    v8 = *(a1 + 16) + 152 * v6;
    re::DynamicString::operator=((v8 + 40), a3);
    *(v8 + 72) = *(a3 + 32);
    result = *(a3 + 48);
    v9 = *(a3 + 64);
    v10 = *(a3 + 80);
    *(v8 + 136) = *(a3 + 96);
    *(v8 + 120) = v10;
    *(v8 + 104) = v9;
    *(v8 + 88) = result;
  }

  return result;
}

void re::MaterialBuilder::result(re::MaterialBuilder *this@<X0>, re::RenderManager *a2@<X1>, uint64_t a3@<X8>)
{
  v99 = *MEMORY[0x1E69E9840];
  v5 = *(this + 4);
  if (*(v5 + 120))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (*(*(*(v5 + 128) + 8 * v6) + 2848) == 1 && *(this + 1336) == 1 && *(this + 157))
      {
        v8 = *(this + 158);
        if (v8 <= v6)
        {
LABEL_112:
          *v76 = 0;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v83 = 0u;
          v55 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *&buf[4] = "operator[]";
          *&buf[12] = 1024;
          *&buf[14] = 468;
          *&buf[18] = 2048;
          *&buf[20] = v6;
          *&buf[28] = 2048;
          *&buf[30] = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_113;
        }

        v9 = *(this + 159) + 40 * v6;
        if (*(v9 + 16))
        {
          v10 = (v9 + 24);
        }

        else
        {
          v10 = *(v9 + 32);
        }

        v11 = *(v9 + 8);
        if (v11)
        {
          v12 = 8 * v11;
          while (1)
          {
            v13 = *v10;
            if (*v10)
            {
              v14 = (v13 + 8);
              v15 = atomic_load((v13 + 208));
              if (v15 == 2)
              {
                re::DynamicString::format("Shaders not precompiled", &v83);
                v21 = v83;
                v22 = v84;
                *a3 = 0;
                *(a3 + 8) = v21;
                *(a3 + 24) = v22;

                return;
              }
            }

            ++v10;
            v12 -= 8;
            if (!v12)
            {
              v5 = *(this + 4);
              break;
            }
          }
        }
      }

      v6 = ++v7;
    }

    while (*(v5 + 120) > v7);
  }

  v16 = *(a2 + 3);
  v17 = re::globalAllocators(this);
  a2 = (*(*v17[2] + 32))(v17[2], 1472, 8);
  v18 = re::MaterialInstance::MaterialInstance(a2, v16);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v18 + 2, *(this + 4));
  re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=(a2 + 31, this + 144);
  re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=(a2 + 34, this + 147);
  re::fillTablesWithLinkedFunctionParameterDefaults(a2 + 248, this + 18, this + 84);
  re::fillTablesWithLinkedFunctionParameterDefaults(a2 + 272, this + 18, this + 84);
  *(a2 + 179) = *this;
  *this = 0;
  re::MaterialParameterTable::MaterialParameterTable(&v83, this + 18, this + 84);
  v19 = *(this + 4);
  v71 = v19;
  if (v19)
  {
    v20 = (v19 + 8);
    re::MaterialBuilder::overlayBlurTechniquesAndTextures(this, &v83, &v71);

    v71 = 0;
  }

  else
  {
    re::MaterialBuilder::overlayBlurTechniquesAndTextures(this, &v83, &v71);
  }

  re::MaterialParameterTable::operator=(a2 + 304, &v83);
  v23 = re::MaterialRenderFlags::flattenToOverrideFlags((this + 8));
  *(a2 + 37) = v23;
  v24 = *(*(this + 4) + 120);
  if (v24 >= 0xFFFFFFFF)
  {
    v25 = *re::graphicsLogObjects(v23);
    v23 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      *buf = 134217984;
      *&buf[4] = v24;
      _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "Reached max supported material definitions (%zu)", buf, 0xCu);
    }

    v24 = 4294967294;
  }

  v66 = a2;
  if (v24)
  {
    v8 = 0;
    v6 = &v76[8];
    v26 = 16;
    v65 = v24;
    while (1)
    {
      v27 = *(this + 4);
      v28 = *(v27 + 120);
      if (v28 <= v8)
      {
        *&v73 = 0;
        v97 = 0u;
        v98 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v76 = 136315906;
        *&v76[4] = "operator[]";
        v77 = 1024;
        v78 = 468;
        v79 = 2048;
        v80 = v8;
        v81 = 2048;
        v82 = v28;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_109:
        v72 = 0;
        v97 = 0u;
        v98 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v88 = 136315906;
        v89 = "operator[]";
        v90 = 1024;
        v91 = 468;
        v92 = 2048;
        v93 = v8;
        v94 = 2048;
        v95 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_110:
        v72 = 0;
        v97 = 0u;
        v98 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v88 = 136315906;
        v89 = "operator[]";
        v90 = 1024;
        v91 = 468;
        v92 = 2048;
        v93 = v8;
        v94 = 2048;
        v95 = a2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_111:
        v72 = 0;
        v97 = 0u;
        v98 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v88 = 136315906;
        v89 = "operator[]";
        v90 = 1024;
        v91 = 468;
        v92 = 2048;
        v93 = v8;
        v94 = 2048;
        v95 = a2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_112;
      }

      v29 = *(*(v27 + 128) + 8 * v8);
      re::MaterialBuilder::addOrReplaceFunctionConstants(*(v29 + 64), *(v29 + 56), this + 40, v68);
      re::MaterialBuilder::addOrReplaceFunctionConstants(v70, v69, this + 88, buf);
      re::DynamicArray<re::TechniqueFunctionConstant>::operator=(v68, buf);
      re::DynamicArray<re::TechniqueFunctionConstant>::deinit(buf);
      v30 = (v29 + 8);
      v31 = re::FunctionConstantsEnumerator::overrideEnumerator((v29 + 8), this + 40, v76);
      if (*(this + 1288) == 1)
      {
        if (v76[0])
        {
          v32 = &v76[8];
        }

        else
        {
          v32 = (v29 + 8);
        }

        re::FunctionConstantsEnumerator::appendEnumerator(v32, (this + 1296), &v73);
        buf[0] = 1;
        *&buf[8] = v73;
        v33 = v74;
        v74 = 0;
        v73 = 0uLL;
        *&buf[24] = v33;
        *&buf[32] = v75;
        re::Optional<re::FunctionConstantsEnumerator>::operator=(v76, buf);
        if (buf[0] == 1)
        {
          re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(&buf[8]);
        }

        v31 = re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(&v73);
      }

      if (v76[0])
      {
        v30 = &v76[8];
      }

      v34 = v70;
      v35 = v69;
      if (*(this + 154))
      {
        v6 = *(this + 155);
        if (v6 <= v8)
        {
          goto LABEL_109;
        }

        v6 = *(*(this + 156) + 8 * v8);
        v67 = v6;
        if (v6)
        {
          v31 = (v6 + 8);
        }
      }

      else
      {
        v6 = 0;
        v67 = 0;
      }

      v36 = *(this + 157);
      if (v36)
      {
        a2 = *(this + 158);
        if (a2 <= v8)
        {
          goto LABEL_110;
        }

        v37 = *(this + 159);
        v38 = (*(v37 + v26) & 1) != 0 ? (v37 + v26 + 8) : *(v37 + v26 + 16);
        a2 = v66;
        v36 = *(v37 + v26 - 8);
      }

      else
      {
        v38 = 0;
      }

      re::MaterialBuilder::generateTechnique(v31, v29, a2, v34, v35, v30, &v73, &v67, v38, v36);
      if (v6)
      {

        v67 = 0;
      }

      v39 = v73;
      if (v73)
      {
        v6 = a2;
        a2 = *(a2 + 10);
        if (a2 <= v8)
        {
          goto LABEL_111;
        }

        std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::operator=[abi:nn200100]((*(v6 + 88) + v26 - 16), &v73 + 1);
        a2 = v6;
      }

      else
      {
        v40 = &v74 + 1;
        if (v74)
        {
          v40 = v75;
        }

        re::DynamicString::format("[%s] %s", buf, *v29, v40);
        v41 = *buf;
        v42 = *&buf[16];
        *a3 = 0;
        *(a3 + 8) = v41;
        *(a3 + 24) = v42;
      }

      v6 = &v76[8];
      if (v73 == 1)
      {
        std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::~unique_ptr[abi:nn200100](&v73 + 1);
      }

      else if (*(&v73 + 1) && (v74 & 1) != 0)
      {
        (*(**(&v73 + 1) + 40))();
      }

      if (v76[0] == 1)
      {
        re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(&v76[8]);
      }

      re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v68);
      if ((v39 & 1) == 0)
      {
        break;
      }

      ++v8;
      v26 += 40;
      if (v65 == v8)
      {
        goto LABEL_69;
      }
    }

    re::MaterialParameterTable::~MaterialParameterTable(&v83);
    if (a2)
    {
      goto LABEL_107;
    }
  }

  else
  {
LABEL_69:
    v43 = *(this + 4);
    v44 = (v43 + 136);
    v45 = (a2 + 24);
    if ((a2 + 24) != (v43 + 136))
    {
      if (*v45)
      {
        if (*(a2 + 13))
        {
          v46 = *(a2 + 12);
          if (v46)
          {
            memset_pattern16(*(a2 + 4), &memset_pattern_211, 4 * v46);
          }

          v47 = *(a2 + 14);
          if (v47)
          {
            v48 = 0;
            for (i = 0; i < v47; ++i)
            {
              v50 = *(v66 + 5);
              v51 = *(v50 + v48);
              if (v51 < 0)
              {
                *(v50 + v48) = v51 & 0x7FFFFFFF;
                re::FixedArray<CoreIKTransform>::deinit((v50 + v48 + 16));
                v47 = *(v66 + 14);
              }

              v48 += 48;
            }
          }

          a2 = v66;
          *(v66 + 13) = 0;
          *(v66 + 14) = 0;
          v52 = *(v66 + 16) + 1;
          *(v66 + 15) = 0x7FFFFFFF;
          *(v66 + 16) = v52;
        }

        if (*v44)
        {
          v53 = *(v43 + 164);
          if (*(a2 + 12) < v53)
          {
            re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(v45, v53);
          }

          re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::copy(v45, v43 + 136);
          ++*(a2 + 16);
        }
      }

      else if (*v44)
      {
        if (*(v43 + 164) <= 3u)
        {
          v54 = 3;
        }

        else
        {
          v54 = *(v43 + 164);
        }

        re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(a2 + 24, *v44, v54);
        re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::copy(a2 + 3, v43 + 136);
      }
    }

    v55 = *(this + 4);
    if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
    {
LABEL_113:
      dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
    }

    re::MaterialParameterTable::appendPassTechniqueMappingsFrom((a2 + 304), v55 + 16, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
    v56 = *(this + 4);
    v57 = *(v56 + 96);
    if (v57)
    {
      v58 = 0;
      v59 = *(v56 + 80);
      while (1)
      {
        v60 = *v59;
        v59 += 18;
        if (v60 < 0)
        {
          break;
        }

        if (v57 == ++v58)
        {
          LODWORD(v58) = *(v56 + 96);
          break;
        }
      }
    }

    else
    {
      LODWORD(v58) = 0;
    }

    while (v58 != v57)
    {
      v61 = *(v56 + 80) + 72 * v58;
      re::MaterialParameterTable::appendPassTechniqueMappingsFrom((a2 + 304), v61 + 16, *(v61 + 8));
      v62 = *(v56 + 96);
      if (v62 <= v58 + 1)
      {
        v62 = v58 + 1;
      }

      while (v62 - 1 != v58)
      {
        LODWORD(v58) = v58 + 1;
        if ((*(*(v56 + 80) + 72 * v58) & 0x80000000) != 0)
        {
          goto LABEL_105;
        }
      }

      LODWORD(v58) = v62;
LABEL_105:
      ;
    }

    *(a2 + 180) = *(this + 160);
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a2 + 200, this + 88);
    *(a2 + 192) = *(this + 136);
    v63 = a2 + 8;
    *a3 = 1;
    *(a3 + 8) = a2;
    re::MaterialParameterTable::~MaterialParameterTable(&v83);
LABEL_107:
  }
}

unint64_t re::MaterialRenderFlags::flattenToOverrideFlags(re::MaterialRenderFlags *this)
{
  if (*this == 1)
  {
    v1 = *(this + 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
    v1 = 0;
  }

  if (*(this + 6) == 1)
  {
    if (*(this + 7))
    {
      v3 = 2048;
    }

    else
    {
      v3 = 0;
    }

    v1 |= v3;
    v2 = v2 | 0x800;
  }

  if (*(this + 8) == 1)
  {
    if (*(this + 9))
    {
      v4 = 4096;
    }

    else
    {
      v4 = 0;
    }

    v1 |= v4;
    v2 = v2 | 0x1000;
  }

  if (*(this + 2) == 1)
  {
    v1 = v1 & 0xFFFFFF9F | (32 * (*(this + 3) == 1)) | ((*(this + 3) == 0) << 6);
    v2 = v2 | 0x60;
  }

  if (*(this + 4) == 1)
  {
    v1 = v1 & 0xFFCFFFFF | ((*(this + 5) == 0) << 20) | ((*(this + 5) == 1) << 21);
    v2 = v2 | 0x300000;
  }

  if (*(this + 10) == 1)
  {
    if (*(this + 11))
    {
      v5 = 0x800000;
    }

    else
    {
      v5 = 0;
    }

    v1 = v5 | v1 & 0xFF7FFFFF;
    v2 = v2 | 0x800000;
  }

  if (*(this + 12) == 1)
  {
    if (*(this + 13))
    {
      v6 = 0x1000000;
    }

    else
    {
      v6 = 0;
    }

    v1 = v6 | v1 & 0xFEFFFFFF;
    v2 = v2 | 0x1000000;
  }

  if (*(this + 14) == 1)
  {
    if (*(this + 15))
    {
      v7 = 0x2000000;
    }

    else
    {
      v7 = 0;
    }

    v1 = v7 | v1 & 0xFDFFFFFF;
    v2 = v2 | 0x2000000;
  }

  if (*(this + 16) == 1)
  {
    if (*(this + 17))
    {
      v8 = 0x4000000;
    }

    else
    {
      v8 = 0;
    }

    v1 = v8 | v1 & 0xFBFFFFFF;
    v2 = v2 | 0x4000000;
  }

  if (*(this + 18) == 1)
  {
    if (*(this + 19))
    {
      v9 = 0x10000000;
    }

    else
    {
      v9 = 0;
    }

    v1 = v9 | v1 & 0xEFFFFFFF;
    v2 = v2 | 0x10000000;
  }

  return v1 | (v2 << 32);
}

uint64_t *re::MaterialBuilder::generateTechnique@<X0>(re *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, re::DynamicString *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t *a8, uint64_t *a9, uint64_t a10)
{
  v66 = *MEMORY[0x1E69E9840];
  v16 = re::globalAllocators(a1);
  v17 = (*(*v16[2] + 32))(v16[2], 136, 8);
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 64) = 0u;
  *(v17 + 80) = 0u;
  *(v17 + 96) = 0u;
  *(v17 + 112) = 0u;
  *(v17 + 128) = 0;
  *(v17 + 124) = 0x7FFFFFFF;
  *&v61 = &unk_1F5D03D10;
  *(&v62 + 1) = &v61;
  v52 = v51;
  v50 = v17;
  v51[0] = &unk_1F5D03D10;
  std::__function::__value_func<void ()(re::MaterialTechnique *)>::~__value_func[abi:nn200100](&v61);
  v18 = v50;
  *v50 = a2;
  *(v18 + 1) = a3;
  Permutation = re::FunctionConstantsEnumerator::createPermutation(a6, 0, a4, a5, v46);
  v20 = v47;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = v20 & 0x7FFFFFFF;
    v23 = 32;
    do
    {
      v24 = v47;
      if (v47 <= v21)
      {
        v49 = 0;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = 136315906;
        v54 = "operator[]";
        v55 = 1024;
        v56 = 789;
        v57 = 2048;
        v58 = v21;
        v59 = 2048;
        v60 = v24;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_28:
        v49 = 0;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = 136315906;
        v54 = "operator[]";
        v55 = 1024;
        v56 = 468;
        v57 = 2048;
        v58 = v21;
        v59 = 2048;
        v60 = v24;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v24 = v44;
      if (v44 <= v21)
      {
        goto LABEL_28;
      }

      v25 = v48 + v23;
      v26 = v45 + v23;
      re::DynamicString::operator=((v45 + v23 - 32), (v48 + v23 - 32));
      *v26 = *v25;
      v27 = *(v25 + 16);
      v28 = *(v25 + 32);
      v29 = *(v25 + 48);
      *(v26 + 64) = *(v25 + 64);
      *(v26 + 32) = v28;
      *(v26 + 48) = v29;
      *(v26 + 16) = v27;
      ++v21;
      v23 += 104;
    }

    while (v22 != v21);
  }

  re::FixedArray<float>::operator=(v50 + 2, &v43);
  re::FixedArray<re::TechniqueFunctionConstant>::deinit(&v43);
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v46);
  LOBYTE(v61) = 1;
  re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::FixedArray(&v61 + 1, a6);
  v63 = *(a6 + 24);
  re::Optional<re::FunctionConstantsEnumerator>::operator=(v50 + 40, &v61);
  if (v61 == 1)
  {
    re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(&v61 + 1);
  }

  if (*(a2 + 2845))
  {
    TechniqueVariant = re::MaterialTechnique::getOrCreateTechniqueVariant(v50, *(a6 + 32), 1);
    if (*a8)
    {
      v31 = TechniqueVariant;
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((TechniqueVariant + 8), *a8);
      atomic_store(1u, (v31 + 17));
      if (a10)
      {
        v34 = 8 * a10;
        do
        {
          v35 = *a9;
          if (*a9)
          {
            v36 = (v35 + 8);
            v42 = v35;
            v37 = (v35 + 8);
            re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::addNew(v31 + 24, (v35 + 24), &v42);
            if (v42)
            {

              v42 = 0;
            }
          }

          ++a9;
          v34 -= 8;
        }

        while (v34);
      }
    }
  }

  v38 = v50;
  v39 = v52;
  v50 = 0;
  *&v61 = v38;
  if (!v52)
  {
    *a7 = 1;
    *&v63 = 0;
    *&v61 = 0;
    *(a7 + 8) = v38;
    goto LABEL_21;
  }

  if (v52 != v51)
  {
    v52 = 0;
    *a7 = 1;
    *&v63 = v39;
    *&v61 = 0;
    *(a7 + 8) = v38;
    goto LABEL_23;
  }

  *&v63 = &v61 + 8;
  (*(*v52 + 24))();
  v40 = v61;
  v39 = v63;
  *a7 = 1;
  *&v61 = 0;
  *(a7 + 8) = v40;
  if (!v39)
  {
LABEL_21:
    *(a7 + 40) = 0;
    goto LABEL_26;
  }

LABEL_23:
  if (v39 == (&v61 + 8))
  {
    *(a7 + 40) = a7 + 16;
    (*(*v39 + 24))(v39);
  }

  else
  {
    *(a7 + 40) = v39;
    *&v63 = 0;
  }

LABEL_26:
  std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::~unique_ptr[abi:nn200100](&v61);
  return std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::~unique_ptr[abi:nn200100](&v50);
}

uint64_t re::MaterialTechnique::getOrCreateTechniqueVariant(re::MaterialTechnique *this, unint64_t a2, char a3)
{
  v4 = this + 88;
  if (!*(this + 11) || (v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27)), v6 = *(*(this + 12) + 4 * ((v5 ^ (v5 >> 31)) % *(this + 28))), v6 == 0x7FFFFFFF))
  {
LABEL_6:
    re::MaterialTechnique::createNewTechniqueVariant(this, a2, a3);
    v10 = a2;
    v11 = v8;
    re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(v4, &v10, &v11);
  }

  else
  {
    v7 = *(this + 13);
    while (*(v7 + 32 * v6 + 8) != a2)
    {
      v6 = *(v7 + 32 * v6) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }
  }

  v11 = a2;
  return *re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator[](v4, &v11);
}

void *re::DynamicArray<unsigned char>::resizeUninitialized(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else if (result[1] < a2)
  {
    result = re::DynamicArray<BOOL>::setCapacity(result, a2);
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(void *a1, void *a2, _BYTE *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 16 * v6 + 8;
  }

  return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::internalAdd(a1, a2, a3);
}

id re::validateArgumentMatchesStandardResource(id *a1)
{
  v2 = [*a1 index];
  result = 0;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        result = *a1;
        if (*a1)
        {
          if (![result type] && objc_msgSend(*a1, sel_bufferDataType) == 1)
          {
            v4 = 64;
            return ([*a1 bufferDataSize] == v4);
          }

          return 0;
        }
      }

      return result;
    }

    result = *a1;
    if (!*a1)
    {
      return result;
    }

    if (![result type] && objc_msgSend(*a1, sel_bufferDataType) == 1)
    {
      v4 = 1024;
      return ([*a1 bufferDataSize] == v4);
    }

    return 0;
  }

  if (v2 == 1)
  {
    result = *a1;
    if (!*a1)
    {
      return result;
    }

    if (![result type] && objc_msgSend(*a1, sel_bufferDataType) == 1)
    {
      v4 = 256;
      return ([*a1 bufferDataSize] == v4);
    }

    return 0;
  }

  if (v2 == 2)
  {
    result = *a1;
    if (*a1)
    {
      if (![result type] && objc_msgSend(*a1, sel_bufferDataType) == 1)
      {
        v4 = 160;
        return ([*a1 bufferDataSize] == v4);
      }

      return 0;
    }
  }

  return result;
}

unint64_t re::MetalTypeInfo::resolutionHash(re::MetalTypeInfo *this)
{
  v1 = 0xBF58476D1CE4E5B9 * ((*(this + 2) >> 31) ^ (*(this + 2) >> 1));
  v2 = (0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) ^ ((0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) >> 31);
  v3 = (*(this + 1) | (*this << 32)) ^ ((*(this + 1) | (*this << 32)) >> 30);
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v3) ^ ((0xBF58476D1CE4E5B9 * v3) >> 27));
  v5 = ((v2 << 6) + (v2 >> 2) + (v4 ^ (v4 >> 31)) - 0x61C8864680B583E9) ^ v2;
  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(this + 7);
    v8 = 80 * v6;
    do
    {
      v5 ^= (v5 << 6) - 0x61C8864680B583E9 + (v5 >> 2) + re::MetalTypeInfo::resolutionHash(v7);
      v7 = (v7 + 80);
      v8 -= 80;
    }

    while (v8);
  }

  return v5;
}

uint64_t re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::copy(a1, a2);
        ++*(a1 + 40);
      }

      else
      {
        re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::clear(a1);
      }
    }

    else if (v4)
    {
      if (*(a2 + 28) <= 3u)
      {
        v5 = 3;
      }

      else
      {
        v5 = *(a2 + 28);
      }

      re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::init(a1, v4, v5);
      re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::FixedArray(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::copy(a1, a2);
  }

  return a1;
}

void *re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x2E8BA2E8BA2E8BBLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 88, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = (*(*a2 + 32))(a2, 88 * a3, 8);
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
    *(v7 + 4) = 0;
    *(v7 + 10) = 0;
    *(v7 + 3) = 0u;
    *(v7 + 4) = 0u;
    *(v7 + 80) = 0;
    v7 = (v7 + 88);
  }

  *v7 = 0u;
  *(v7 + 1) = 0u;
  result = re::DynamicString::setCapacity(v7, 0);
  *(v7 + 4) = 0;
  *(v7 + 10) = 0;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 80) = 0;
  return result;
}

uint64_t re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::copy(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == *(a2 + 8))
  {
    return std::__copy_impl::operator()[abi:nn200100]<re::FunctionConstantsEnumerator::PermutationLayer *,re::FunctionConstantsEnumerator::PermutationLayer *,re::FunctionConstantsEnumerator::PermutationLayer *>(&v4, *(a2 + 16), *(a2 + 16) + 88 * v2, *(a1 + 16));
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::FunctionConstantsEnumerator::PermutationLayer *,re::FunctionConstantsEnumerator::PermutationLayer *,re::FunctionConstantsEnumerator::PermutationLayer *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  v5 = a4 + 48;
  v6 = a2 + 48;
  do
  {
    re::DynamicString::operator=((v5 - 48), (v6 - 48));
    v7 = *(v6 - 16);
    *(v5 - 8) = *(v6 - 8);
    *(v5 - 16) = v7;
    re::FixedArray<re::Optional<unsigned long long>>::operator=(v5, v6);
    v8 = *(v6 + 32);
    *(v5 + 24) = *(v6 + 24);
    *(v5 + 32) = v8;
    v5 += 88;
    v9 = v6 + 40;
    v6 += 88;
  }

  while (v9 != v4);
  return v4;
}

void *re::FixedArray<re::Optional<unsigned long long>>::operator=(void *a1, uint64_t a2)
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
      re::FixedArray<re::Optional<unsigned long long>>::init<>(a1, v4, *(a2 + 8));
LABEL_7:
      re::FixedArray<re::Optional<unsigned long long>>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::FixedArray<re::Optional<unsigned long long>>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 16 * a3, 8);
  v4[2] = result;
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
      result += 2;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  return result;
}

uint64_t re::FixedArray<re::Optional<unsigned long long>>::copy(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 == *(a2 + 8))
  {
    if (v2)
    {
      v3 = *(result + 16);
      v4 = 16 * v2;
      v5 = (*(a2 + 16) + 8);
      do
      {
        if (*v3)
        {
          if (*(v5 - 1))
          {
            goto LABEL_9;
          }

          *v3 = 0;
        }

        else if (*(v5 - 1))
        {
          *v3 = 1;
LABEL_9:
          *(v3 + 8) = *v5;
        }

        v3 += 16;
        v5 += 2;
        v4 -= 16;
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

double re::MaterialTechnique::createNewTechniqueVariant(re::MaterialTechnique *this, unint64_t a2, char a3)
{
  v5 = re::globalAllocators(this);
  v6 = (*(*v5[2] + 32))(v5[2], 408, 8);
  result = 0.0;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 360) = 0u;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 18) = 1;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0x7FFFFFFF00000000;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0x7FFFFFFF00000000;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0x7FFFFFFF00000000;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0x7FFFFFFF00000000;
  *(v6 + 232) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 248) = 0x7FFFFFFF00000000;
  *(v6 + 296) = 0;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 300) = 0x7FFFFFFF;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0x7FFFFFFF00000000;
  *(v6 + 360) = 0u;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0x7FFFFFFF00000000;
  *v6 = this;
  *(v6 + 16) = a3;
  return result;
}

uint64_t re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(uint64_t a1, uint64_t *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  *(result - 8) = v8;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 32 * v6 + 16;
}

uint64_t re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(a1, v9);
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

uint64_t re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24));
        v8 = *(a2 + 16) + v5;
        v10 = *(v8 + 8);
        v9 = *(v8 + 16);
        *(result + 8) = v10;
        *(result + 16) = v9;
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

void re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_211, 4 * v10);
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

void *re::FixedArray<re::AttributeArgument>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 24 * v2;
      do
      {
        re::StringID::destroyString(v4);
        v4 = (v4 + 24);
        v5 -= 24;
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

uint64_t re::Bitset<256>::toWordIndex(unint64_t a1, uint64_t a2)
{
  if (a1 < 0x100)
  {
    return a1 >> 6;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %d.", "b < kBitCount", "toWordIndex", 345, a1, 256, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::ConstantLocation,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::DynamicString,re::ConstantLocation,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v31, v9, v8);
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
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = (v13 + v17);
                v20 = re::HashTable<re::DynamicString,re::ConstantLocation,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + v17 + 48) % *(a1 + 24));
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
                v13 = *&v31[16];
                *(v20 + 40) = *(*&v31[16] + v17 + 40);
              }

              ++v18;
              v17 += 56;
            }

            while (v18 < v16);
          }

          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v31);
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
    v26 = *(v25 + 56 * v5);
  }

  else
  {
    v25 = *(a1 + 16);
    v26 = *(v25 + 56 * v5);
    *(a1 + 36) = v26 & 0x7FFFFFFF;
  }

  v28 = v25 + 56 * v5;
  *v28 = v26 | 0x80000000;
  v29 = *(a1 + 8);
  *v28 = *(v29 + 4 * a2) | 0x80000000;
  *(v29 + 4 * a2) = v5;
  *(v28 + 48) = a3;
  ++*(a1 + 28);
  return v25 + 56 * v5;
}

void re::HashTable<re::DynamicString,re::ConstantLocation,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_211, 4 * v10);
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

uint64_t re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 56 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 48) = a3;
  ++*(a1 + 28);
  return v7 + 56 * v5;
}

void re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24));
        v8 = (*(a2 + 16) + v5);
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = v8[4];
        v9 = v8[2];
        *(result + 8) = v8[1];
        v8[1] = 0;
        v10 = v8[3];
        v8[4] = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        v8[2] = v12;
        v8[3] = v11;
        v7 = *(a2 + 16);
        *(result + 40) = *(v7 + v5 + 40);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 56;
    }

    while (v6 < v2);
  }

  return result;
}

void re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_187, 4 * v10);
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

void *re::DynamicArray<re::BufferSlice>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::BufferSlice>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::BufferSlice>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::BufferSlice>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::BufferSlice>::setCapacity(v5, a2);
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
              goto LABEL_18;
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
        v10 = 40 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          *(v11 + 24) = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v11, v8);
          *(v11 + 32) = *(v8 + 32);
          v12 = *(v8 + 24);
          if (v12 != -1)
          {
            (off_1F5D03C10[v12])(&v13, v8);
          }

          *(v8 + 24) = -1;
          v8 += 40;
          v11 += 40;
          v10 -= 40;
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

uint64_t re::HashTable<re::DynamicString,re::WeakStringID,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::DynamicString,re::ConstantLocation,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v31, v9, v8);
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
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = (v13 + v17);
                v20 = re::HashTable<re::DynamicString,re::WeakStringID,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + v17 + 48) % *(a1 + 24));
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
                v13 = *&v31[16];
                *(v20 + 40) = *(*&v31[16] + v17 + 40);
              }

              ++v18;
              v17 += 56;
            }

            while (v18 < v16);
          }

          re::HashTable<re::DynamicString,re::WeakStringID,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v31);
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
    v26 = *(v25 + 56 * v5);
  }

  else
  {
    v25 = *(a1 + 16);
    v26 = *(v25 + 56 * v5);
    *(a1 + 36) = v26 & 0x7FFFFFFF;
  }

  v28 = v25 + 56 * v5;
  *v28 = v26 | 0x80000000;
  v29 = *(a1 + 8);
  *v28 = *(v29 + 4 * a2) | 0x80000000;
  *(v29 + 4 * a2) = v5;
  *(v28 + 48) = a3;
  ++*(a1 + 28);
  return v25 + 56 * v5;
}

uint64_t re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::updateKvpsHash(uint64_t result, uint64_t a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = *(a2 + 11);
  v5 = *(a2 + 8) | (v4 << 24) | (*(a2 + 10) << 16);
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v4 >> 6))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v4 >> 6))) >> 27));
  *(result + 48) ^= v3 ^ ((v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9 + (v6 ^ (v6 >> 31)));
  return result;
}

uint64_t re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(uint64_t result, uint64_t a2)
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
        v8 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v4, *(v7 + v5 + 64) % *(v4 + 24), *(v7 + v5 + 64));
        v9 = *(a2 + 16) + v5;
        *(v8 + 8) = *(v9 + 8);
        result = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::HashTable(v8 + 16, v9 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 72;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::MetalTypeInfo>::deinit(uint64_t a1)
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
        v6 = (v3 + 40);
        do
        {
          re::FixedArray<re::MetalTypeInfo>::deinit(v6);
          re::StringID::destroyString((v6 - 3));
          v6 += 10;
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

void re::TechniqueStage::~TechniqueStage(re::TechniqueStage *this)
{
  re::TechniqueStage::deinit(this);
  re::FixedArray<re::AttributeArgument>::deinit(this + 33);
  re::FixedArray<re::AttributeArgument>::deinit(this + 29);
  re::FixedArray<re::AttributeArgument>::deinit(this + 25);
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 18);
  re::FixedArray<re::TextureArgument>::deinit(this + 14);
  re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(this + 10);
  re::FixedArray<re::TypedArgument>::deinit(this + 7);
  re::FixedArray<re::TypedArgument>::deinit(this + 3);
}

void *re::FixedArray<re::TextureArgument>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 32 * v2;
      do
      {
        re::StringID::destroyString(v4);
        v4 = (v4 + 32);
        v5 -= 32;
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

void *re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 8 * v2;
      do
      {
        if (*v4)
        {

          *v4 = 0;
        }

        ++v4;
        v5 -= 8;
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

void *re::FixedArray<re::BufferArgument>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 24 * a3, 8);
  v4[2] = result;
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
      result[1] = &str_67;
      result[2] = 0;
      result += 3;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  result[1] = &str_67;
  result[2] = 0;
  return result;
}

void re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
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

uint64_t re::FixedArray<re::TextureArgument>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 32 * a3, 8);
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
      *(result + 24) = 0;
      *(result + 16) = 0;
      *(result + 19) = 0;
      result += 32;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  *(result + 8) = &str_67;
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(result + 19) = 0;
  return result;
}

uint64_t re::FixedArray<re::SamplerArgument>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 24 * a3, 8);
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
      *(result + 18) = 0;
      result += 24;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  *(result + 8) = &str_67;
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

uint64_t re::FixedArray<re::AttributeArgument>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 24 * a3, 8);
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
      result += 24;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  *(result + 8) = &str_67;
  *(result + 16) = 0;
  return result;
}

void *re::DynamicArray<re::AttributeArgument>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::BlendParameterInputNode>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

__n128 std::__function::__func<re::TechniqueDefinitionBuilder::buildPipelineData(re::Slice<re::TechniqueFunctionConstant>,re::MaterialTechniqueDefinition const*,re::StageLinkedFunctions const&,re::RenderManager &,re::FunctionReflectionCache &,BOOL)::$_0,std::allocator<re::TechniqueDefinitionBuilder::buildPipelineData(re::Slice<re::TechniqueFunctionConstant>,re::MaterialTechniqueDefinition const*,re::StageLinkedFunctions const&,re::RenderManager &,re::FunctionReflectionCache &,BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D03C30;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::TechniqueDefinitionBuilder::buildPipelineData(re::Slice<re::TechniqueFunctionConstant>,re::MaterialTechniqueDefinition const*,re::StageLinkedFunctions const&,re::RenderManager &,re::FunctionReflectionCache &,BOOL)::$_0,std::allocator<re::TechniqueDefinitionBuilder::buildPipelineData(re::Slice<re::TechniqueFunctionConstant>,re::MaterialTechniqueDefinition const*,re::StageLinkedFunctions const&,re::RenderManager &,re::FunctionReflectionCache &,BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 192, 8);
  ArcSharedObject::ArcSharedObject(v3, 0);
  *v4 = &unk_1F5D09270;
  *(v4 + 16) = 0u;
  v5 = (v4 + 16);
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 32) = 0u;
  v6 = (v4 + 32);
  *(v4 + 144) = 0;
  *(v4 + 128) = 0u;
  v80 = v3;
  re::FixedArray<re::TechniqueFunctionConstant>::operator=((v4 + 128), *(a1 + 8));
  *(v3 + 168) = re::TechniqueDefinitionBuilder::hashFunctionConstants(*(v3 + 144), *(v3 + 136), 1);
  v7 = *(a1 + 16);
  re::FixedArray<re::LinkedFunction>::operator=(v6, v7);
  re::FixedArray<re::LinkedFunction>::operator=((v3 + 56), v7 + 3);
  v78 = 0;
  v79 = 0;
  v8 = **(a1 + 24);
  if (*(v8 + 2448))
  {
    v9 = *(v8 + 2456);
  }

  else
  {
    v9 = (v8 + 2449);
  }

  v10 = re::FunctionReflectionCache::hashFunction(*(v3 + 144), *(v3 + 136), (v8 + 2504), v9, *(v8 + 2424));
  CachedFunction = re::FunctionReflectionCache::tryGetCachedFunction(*(a1 + 32), v10);
  if (CachedFunction)
  {
    v12 = CachedFunction;
    v13 = NS::SharedPtr<MTL::Buffer>::operator=(&v79, CachedFunction);
    v14 = **(a1 + 24);
    v15 = v14[310];
    v16 = v15 >> 1;
    if ((v15 & 1) == 0)
    {
      v16 = v15 >> 1;
    }

    if (!v16)
    {
      v20 = 0;
LABEL_16:
      v77 = 0;
      memset(v75, 0, sizeof(v75));
      v76 = 0;
      if (**(a1 + 48) == 1 && *(**(a1 + 24) + 2849) == 1)
      {
        v24 = *(*(a1 + 56) + 32);
        v25 = *(v24 + 160);
        if (v25)
        {
          v26 = *(v24 + 168);
          re::DynamicArray<re::BlendParameterInputNode>::setCapacity(v75, v25);
          ++v76;
          re::DynamicArray<re::AttributeArgument>::copy(v75, v26, v25);
        }
      }

      else
      {
        re::makeAttributeArguments(&v79, &v81);
        re::DynamicArray<re::TechniqueFunctionConstant>::operator=(v75, &v81);
        re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v81);
      }

      v27 = **(a1 + 24);
      if (*(v27 + 2448))
      {
        v28 = *(v27 + 2456);
      }

      else
      {
        v28 = (v27 + 2449);
      }

      re::makeStage(1, &v79, v28, *(v27 + 2424), *(v27 + 2849), *(v27 + 2850), *(*(a1 + 56) + 373), (v12 + 1), v73, *(a1 + 16), v69, v75);
      if (v73[0] == 1)
      {
        v29 = v74;
        *v5 = v74;
        v30 = **(a1 + 24);
        v31 = *(v30 + 2480);
        v32 = v31 >> 1;
        if ((v31 & 1) == 0)
        {
          v32 = v31 >> 1;
        }

        if (!v32)
        {
          goto LABEL_38;
        }

        if (v31)
        {
          v33 = *(v30 + 2488);
        }

        else
        {
          v33 = (v30 + 2481);
        }

        v37 = *(v30 + 2432);
        v38 = *(v30 + 2852);
        v39 = *(*(a1 + 56) + 373);
        v40 = (*(a1 + 16) + 24);
        v85 = 0;
        v82 = 0;
        v83 = 0;
        v81 = 0;
        v84 = 0;
        re::makeStage(2, &v78, v33, v37, 0, v38, v39, v20, &v71, v40, v70, &v81);
        re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v81);
        if (v71)
        {
          *(v3 + 24) = v72;
          v29 = *(v3 + 16);
LABEL_38:
          if (*(v29 + 332) && (v41 = *(v3 + 24)) != 0 && *(v41 + 332) && (*(v29 + 332) != *(v41 + 332) || *(v29 + 165) != *(v41 + 330)))
          {
            v62 = **(a1 + 24);
            if (*(v62 + 2448))
            {
              v63 = *(v62 + 2456);
            }

            else
            {
              v63 = v62 + 2449;
            }

            if (*(v62 + 2480))
            {
              v64 = *(v62 + 2488);
            }

            else
            {
              v64 = v62 + 2481;
            }

            re::DynamicString::format("Vertex shader function %s and fragment shader function %s do not have matching dynamicSamplers arrays.", &v81, v63, v64);
            if (v82)
            {
              v65 = v83;
            }

            else
            {
              v65 = &v82 + 1;
            }

            re::WrappedError::make(@"REMaterialBuilderErrorDomain", 0x46, v65, &v71);
            v66 = *(a1 + 40);
            if (v66 != &v71)
            {
              v67 = v71;
              v71 = 0;
              v68 = *v66;
              *v66 = v67;
            }

            if (v81 && (v82 & 1) != 0)
            {
              (*(*v81 + 40))();
            }
          }

          else
          {
            v42 = *(**(a1 + 24) + 2480);
            if (v42)
            {
              v43 = v42 >> 1;
            }

            else
            {
              v43 = v42 >> 1;
            }

            v44 = v29[6];
            v45 = (v44 << 6) + (v44 >> 2) - 0x61C8864680B583E9;
            if (v43)
            {
              v46 = *(v3 + 24);
              v47 = v46[6];
              v48 = (v47 + v45) ^ v44;
              v49 = ((((v29[32] + v45) ^ v44) << 6) - 0x61C8864680B583E9 + (((v29[32] + v45) ^ v44) >> 2) + (((v47 << 6) - 0x61C8864680B583E9 + (v47 >> 2) + v46[32]) ^ v47)) ^ (v29[32] + v45) ^ v44;
              v50 = (v46[17] - 0x61C8864680B583E9 + (v29[17] << 6) + (v29[17] >> 2)) ^ v29[17];
              v51 = (v46[24] - 0x61C8864680B583E9 + (v29[24] << 6) + (v29[24] >> 2)) ^ v29[24];
              v52 = (v46[28] - 0x61C8864680B583E9 + (v29[28] << 6) + (v29[28] >> 2)) ^ v29[28];
              v53 = (v46[13] - 0x61C8864680B583E9 + (v29[13] << 6) + (v29[13] >> 2)) ^ v29[13];
            }

            else
            {
              v49 = (v29[32] + v45) ^ v44;
              v50 = v29[17];
              v51 = v29[24];
              v52 = v29[28];
              v53 = v29[13];
              v48 = v44;
            }

            *(v3 + 80) = v48;
            *(v3 + 88) = v50;
            *(v3 + 96) = v51;
            *(v3 + 104) = v49;
            *(v3 + 112) = v52;
            *(v3 + 120) = v53;
            *(v3 + 184) = [v79 patchType];
            if ([v79 patchControlPointCount] == -1)
            {
              v58 = 0;
            }

            else
            {
              v58 = [v79 patchControlPointCount];
            }

            *(v3 + 176) = v58;
            re::MaterialPipelineData::generatePipelineStateKey(v3);
            re::MaterialManager::tryGetMaterialPipelineData(*(*(a1 + 56) + 24), *(v3 + 152), &v81);
            v59 = *(a1 + 64);
            v60 = *v59;
            *v59 = v81;
            if (v60)
            {
            }

            v61 = *(a1 + 64);
            if (!*v61)
            {
              re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v61, v3);
              re::MaterialManager::installMaterialPipelineData(*(*(a1 + 56) + 24), &v80);
            }
          }

          goto LABEL_68;
        }

        re::ObjCObject::operator=(*(a1 + 40), &v72);
        v34 = v72;
      }

      else
      {
        re::ObjCObject::operator=(*(a1 + 40), &v74);
        v34 = v74;
      }

LABEL_68:
      re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v75);
      goto LABEL_69;
    }

    if (v15)
    {
      v17 = v14[311];
    }

    else
    {
      v17 = v14 + 2481;
    }

    v21 = re::FunctionReflectionCache::hashFunction(*(v3 + 144), *(v3 + 136), (v14 + 321), v17, v14[304]);
    v22 = re::FunctionReflectionCache::tryGetCachedFunction(*(a1 + 32), v21);
    if (v22)
    {
      v23 = v22;
      v13 = NS::SharedPtr<MTL::Buffer>::operator=(&v78, v22);
      v20 = (v23 + 1);
      goto LABEL_16;
    }

    v35 = **(a1 + 24);
    if (*(v35 + 2480))
    {
      v36 = *(v35 + 2488);
    }

    else
    {
      v36 = v35 + 2481;
    }

    re::DynamicString::format("makeFunction failed for fragment shader function %s.", &v81, v36);
  }

  else
  {
    v18 = **(a1 + 24);
    if (*(v18 + 2448))
    {
      v19 = *(v18 + 2456);
    }

    else
    {
      v19 = v18 + 2449;
    }

    re::DynamicString::format("makeFunction failed for vertex shader function %s.", &v81, v19);
  }

  if (v82)
  {
    v54 = v83;
  }

  else
  {
    v54 = &v82 + 1;
  }

  re::WrappedError::make(@"REMaterialBuilderErrorDomain", 0x3C, v54, v75);
  v55 = *(a1 + 40);
  if (v55 != v75)
  {
    v56 = v75[0];
    v75[0] = 0;
    v57 = *v55;
    *v55 = v56;
  }

  if (v81 && (v82 & 1) != 0)
  {
    (*(*v81 + 40))();
  }

LABEL_69:
  if (v78)
  {
  }

  if (v79)
  {
  }

  if (v80)
  {
  }
}

uint64_t std::__function::__func<re::TechniqueDefinitionBuilder::buildPipelineData(re::Slice<re::TechniqueFunctionConstant>,re::MaterialTechniqueDefinition const*,re::StageLinkedFunctions const&,re::RenderManager &,re::FunctionReflectionCache &,BOOL)::$_0,std::allocator<re::TechniqueDefinitionBuilder::buildPipelineData(re::Slice<re::TechniqueFunctionConstant>,re::MaterialTechniqueDefinition const*,re::StageLinkedFunctions const&,re::RenderManager &,re::FunctionReflectionCache &,BOOL)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::FixedArray<re::LinkedFunction>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return a1;
    }
  }

  else
  {
    if (!v4)
    {
      return a1;
    }

    re::FixedArray<re::LinkedFunction>::init<>(a1, v4, a2[1]);
  }

  v5 = a2[1];
  if (a1[1] == v5)
  {
    if (v5)
    {
      v6 = 0;
      v7 = a2[2];
      v8 = v7 + 200 * v5;
      v9 = a1[2];
      while (1)
      {
        v10 = v7 + v6;
        v11 = v9 + v6;
        *(v9 + v6) = *(v7 + v6);
        re::StringID::operator=((v9 + v6 + 8), (v7 + v6 + 8));
        re::StringID::operator=((v9 + v6 + 24), (v7 + v6 + 24));
        v12 = *(v7 + v6 + 48);
        *(v11 + 40) = *(v7 + v6 + 40);
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v9 + v6 + 48), v12);
        *(v11 + 56) = *(v7 + v6 + 56);
        if (v9 != v7)
        {
          break;
        }

        *(v11 + 88) = *(v10 + 88);
        re::FixedArray<re::TypedArgument>::operator=((v11 + 96), v10 + 96);
LABEL_32:
        v6 += 200;
        if (v10 + 200 == v8)
        {
          return a1;
        }
      }

      v13 = *(v10 + 64);
      if (*(v11 + 64))
      {
        if (!v13)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (!v13)
        {
LABEL_18:
          *(v9 + v6 + 88) = *(v7 + v6 + 88);
          re::FixedArray<re::TypedArgument>::operator=((v9 + v6 + 96), v7 + v6 + 96);
          v14 = (v9 + v6 + 120);
          v16 = (v7 + v6 + 120);
          v15 = *v16;
          if (*v14)
          {
            if (v15)
            {
              re::DynamicArray<re::RigNodeChannel>::copy(v14, v16);
              v17 = v9 + v6;
            }

            else
            {
              v17 = v9 + v6;
              *(v9 + v6 + 136) = 0;
            }

            ++*(v17 + 144);
          }

          else if (v15)
          {
            v18 = *(v7 + v6 + 136);
            *v14 = v15;
            re::DynamicArray<re::RigNodeConstraint>::setCapacity(v14, v18);
            ++*(v9 + v6 + 144);
            re::DynamicArray<re::RigNodeChannel>::copy(v14, v16);
          }

          v19 = *(v7 + v6 + 160);
          if (*(v9 + v6 + 160))
          {
            if (v19)
            {
              re::DynamicArray<char const*>::copy((v9 + v6 + 160), v7 + v6 + 160);
              v20 = v9 + v6;
            }

            else
            {
              v20 = v9 + v6;
              *(v9 + v6 + 176) = 0;
            }

            ++*(v20 + 184);
          }

          else if (v19)
          {
            v21 = *(v7 + v6 + 176);
            *(v9 + v6 + 160) = v19;
            re::DynamicArray<float *>::setCapacity((v9 + v6 + 160), v21);
            ++*(v9 + v6 + 184);
            re::DynamicArray<char const*>::copy((v9 + v6 + 160), v7 + v6 + 160);
          }

          goto LABEL_32;
        }

        re::FixedArray<re::TechniqueFunctionConstant>::init<>((v11 + 64), v13, *(v7 + v6 + 72));
      }

      re::FixedArray<re::TechniqueFunctionConstant>::copy((v11 + 64), v10 + 64);
      goto LABEL_18;
    }

    return a1;
  }

  re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash();
  __break(1u);
  return result;
}

void *re::FixedArray<re::TypedArgument>::operator=(void *a1, uint64_t a2)
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
      re::FixedArray<re::TypedArgument>::init<>(a1, v4, *(a2 + 8));
LABEL_7:
      re::FixedArray<re::TypedArgument>::copy(a1, a2);
    }
  }

  return a1;
}

unint64_t *re::DynamicArray<re::AttributeArgument>::copy(unint64_t *this, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = this;
    v4 = this[2];
    if (v4 == -1)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v4 >= a3)
    {
      this = this[4];
      v12 = 24 * a3;
      do
      {
        v13 = re::StringID::operator=(this, a2);
        *(v13 + 4) = *(a2 + 16);
        a2 += 24;
        this = v13 + 3;
        v12 -= 24;
      }

      while (v12);
    }

    else
    {
      re::DynamicArray<re::AttributeArgument>::growCapacity(this, a3);
      v7 = v3[2];
      this = v3[4];
      if (v7)
      {
        v8 = 24 * v7;
        v9 = a2;
        do
        {
          v10 = re::StringID::operator=(this, v9);
          *(v10 + 4) = *(v9 + 16);
          v9 += 24;
          this = v10 + 3;
          v8 -= 24;
        }

        while (v8);
        this = v3[4];
        v11 = v3[2];
      }

      else
      {
        v11 = 0;
      }

      if (v7 != a3)
      {
        v14 = a2 + 24 * v7;
        this += 3 * v11;
        v15 = 24 * a3 - 24 * v7;
        do
        {
          v16 = re::StringID::StringID(this, v14);
          *(v16 + 4) = *(v14 + 16);
          v14 += 24;
          this = (v16 + 24);
          v15 -= 24;
        }

        while (v15);
      }

      v3[2] = a3;
    }

    ++*(v3 + 6);
  }

  return this;
}

void re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_199, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 152;
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

void re::MaterialDefinition::~MaterialDefinition(re::MaterialDefinition *this)
{
  re::MaterialDefinition::~MaterialDefinition(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D03CB0;
  v2 = (this + 16);
  re::MaterialDefinition::deinit(this);
  re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(this + 172);
  re::MaterialParameterTable::~MaterialParameterTable((this + 248));
  re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(this + 184);
  re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 17);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 8);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

re::DynamicString *re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::copy(re::DynamicString *result, uint64_t a2)
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
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        v10 = re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v11 = *(a2 + 16) + v5;
        *(v10 + 8) = *(v11 + 8);
        result = re::DynamicString::DynamicString((v10 + 16), (v11 + 16));
        v2 = *(a2 + 32);
      }

      v5 += 48;
    }
  }

  return result;
}

void re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_211, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *v8 = v7 & 0x7FFFFFFF;
          *(v8 + 8) = 0;
          re::DynamicString::deinit((v8 + 16));
          v3 = *(a1 + 32);
        }

        v4 += 48;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v9 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v9;
  }
}

uint64_t re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(a1, (2 * *(a1 + 28)));
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

void re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v17, 0, 36);
      *&v17[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v17, v4, a2);
      v5 = *v17;
      *v17 = *a1;
      *a1 = v5;
      v6 = *&v17[16];
      v7 = *(a1 + 16);
      *&v17[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v17[24];
      *&v17[24] = *(a1 + 24);
      v8 = *&v17[32];
      *(a1 + 24) = v9;
      ++*&v17[40];
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = (v7 + 24);
        do
        {
          if ((*(v12 - 3) & 0x80000000) != 0)
          {
            v13 = re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *(v12 - 2) % *(a1 + 24), *(v12 - 2));
            *(v13 + 8) = *(v12 - 2);
            *(v13 + 16) = 0;
            *(v13 + 24) = 0;
            *(v13 + 32) = 0;
            v14 = *v12;
            *(v13 + 16) = *(v12 - 1);
            *(v13 + 24) = v14;
            *(v12 - 1) = 0;
            *v12 = 0;
            v15 = *(v13 + 32);
            *(v13 + 32) = v12[1];
            v12[1] = v15;
            *(v13 + 40) = *(v12 + 16);
          }

          ++v11;
          v12 += 6;
        }

        while (v11 < v10);
      }

      re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v17);
    }
  }

  else
  {
    if (a2)
    {
      v16 = a2;
    }

    else
    {
      v16 = 3;
    }
  }
}

void re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_211, 4 * v10);
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

uint64_t re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(uint64_t a1, uint64_t a2)
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

    re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v4, v5);
    re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(uint64_t result, uint64_t a2)
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
        v8 = re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 88) % *(v4 + 24), *(v7 + v5 + 88));
        re::DynamicString::DynamicString((v8 + 8), (*(a2 + 16) + v5 + 8));
        result = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v8 + 40, *(a2 + 16) + v5 + 40);
        v2 = *(a2 + 32);
      }

      v5 += 96;
    }
  }

  return result;
}

double re::make::shared::object<re::FunctionReflectionCache>@<D0>(re *a1@<X0>, void *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v5 = &unk_1F5D033E8;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 44) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(v5 + 60) = 0x7FFFFFFFLL;
  *(v5 + 104) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 72) = 0;
  *(v5 + 96) = 0;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *a2 = v5;
  return result;
}

void re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::ConstantLocation,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24), *(v7 + v5 + 48));
        v8 = (*(a2 + 16) + v5);
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = v8[4];
        v9 = v8[2];
        *(result + 8) = v8[1];
        v8[1] = 0;
        v10 = v8[3];
        v8[4] = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        v8[2] = v12;
        v8[3] = v11;
        *(result + 40) = *(*(a2 + 16) + v5 + 40);
        v2 = *(a2 + 32);
      }

      v5 += 56;
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 56 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 48) = a3;
  ++*(a1 + 28);
  return v7 + 56 * v5;
}

void re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_210, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 96;
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

void re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_211, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 120;
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

void re::TechniqueDefinitionBuilder::~TechniqueDefinitionBuilder(re::TechniqueDefinitionBuilder *this)
{
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 79);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 73);
  re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(this + 67);
  if (*(this + 520) == 1)
  {
    *(this + 66) = 0;
  }

  re::DynamicArray<re::WeakStringID>::deinit(this + 480);
  re::DynamicArray<unsigned long>::deinit(this + 440);
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(this + 376);
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(this + 336);
  re::DynamicArray<unsigned long>::deinit(this + 296);
  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(this + 24);
  re::DynamicString::deinit((this + 144));
  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(this + 11);
  re::DynamicString::deinit((this + 40));
  re::DynamicString::deinit(this);
}

uint64_t re::DynamicArray<re::WeakStringID>::deinit(uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v3 = *(result + 32);
    if (v3)
    {
      v4 = *(result + 16);
      if (v4)
      {
        bzero(*(result + 32), 8 * v4);
      }

      result = (*(*v1 + 40))(v1, v3);
    }

    *(v2 + 32) = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 0;
    ++*(v2 + 24);
  }

  return result;
}

void *re::FixedArray<re::DynamicOverflowArray<re::SharedPtr<re::CachedPipelineState>,1ul>>::deinit(void *result)
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
        re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::deinit(v4);
        v4 += 5;
        v5 -= 40;
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

void re::FixedArray<re::DynamicOverflowArray<re::SharedPtr<re::CachedPipelineState>,1ul>>::init<decltype(nullptr)>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  v3 = a3;
  if (a3 >= 0x666666666666667)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, a3);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
  }

  v5 = (*(*a2 + 32))(a2, 40 * a3, 8);
  a1[2] = v5;
  if (!v5)
  {
    goto LABEL_13;
  }

  for (i = v5; --v3; i += 40)
  {
    v8[0] = 0;
    re::DynamicOverflowArray<re::SharedPtr<re::CachedPipelineState>,1ul>::DynamicOverflowArray(i, v8, 1uLL);
    if (v8[0])
    {
    }
  }

  v8[0] = 0;
  re::DynamicOverflowArray<re::SharedPtr<re::CachedPipelineState>,1ul>::DynamicOverflowArray(i, v8, 1uLL);
  if (v8[0])
  {
  }
}

uint64_t re::DynamicOverflowArray<re::SharedPtr<re::CachedPipelineState>,1ul>::DynamicOverflowArray(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  v4 = (a1 + 24);
  *(a1 + 32) = 0;
  if (a3)
  {
    re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(a1, a3);
    v7 = *(a1 + 16);
    *(a1 + 16) = v7 + 2;
    v8 = *(a1 + 8);
    if (v8 == -1)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v8 >= a3)
    {
      if ((v7 & 1) == 0)
      {
        v4 = *(a1 + 32);
      }

      v20 = 8 * a3;
      do
      {
        v21 = *a2++;
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v4++, v21);
        v20 -= 8;
      }

      while (v20);
    }

    else
    {
      re::DynamicOverflowArray<re::SharedPtr<re::CachedPipelineState>,1ul>::growCapacity(a1, a3);
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      v11 = v4;
      if ((v10 & 1) == 0)
      {
        v11 = *(a1 + 32);
      }

      if (v9)
      {
        v12 = 8 * v9;
        v13 = a2;
        do
        {
          v14 = *v13++;
          re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v11++, v14);
          v12 -= 8;
        }

        while (v12);
        v10 = *(a1 + 16);
      }

      if ((v10 & 1) == 0)
      {
        v4 = *(a1 + 32);
      }

      if (v9 != a3)
      {
        v15 = &a2[v9];
        v16 = &v4[*(a1 + 8)];
        v17 = 8 * a3 - 8 * v9;
        do
        {
          v18 = *v15;
          *v16 = *v15;
          if (v18)
          {
            v19 = (v18 + 8);
          }

          ++v15;
          ++v16;
          v17 -= 8;
        }

        while (v17);
      }

      *(a1 + 8) = a3;
    }

    *(a1 + 16) += 2;
  }

  return a1;
}

uint64_t re::DynamicOverflowArray<re::SharedPtr<re::CachedPipelineState>,1ul>::growCapacity(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(v3, v2);
    *(v3 + 16) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 1)
    {
      return result;
    }

    v5 = 2;
  }

  else
  {
    v4 = *(result + 24);
    if (v4 >= a2)
    {
      return result;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  return re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(result, a2);
}

unint64_t *re::FixedArray<re::AttributeArgument>::FixedArray(unint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::AttributeArgument>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<re::AttributeArgument>::copy(a1, a2);
  }

  return a1;
}

unint64_t *re::FixedArray<re::AttributeArgument>::copy(unint64_t *result, uint64_t a2)
{
  v2 = result[1];
  if (v2 == *(a2 + 8))
  {
    if (v2)
    {
      v3 = *(a2 + 16);
      result = result[2];
      v4 = 24 * v2;
      do
      {
        v5 = re::StringID::operator=(result, v3);
        *(v5 + 4) = *(v3 + 16);
        v3 += 24;
        result = v5 + 3;
        v4 -= 24;
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

double re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(uint64_t a1)
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
            re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(*(a1 + 8) + 72 * v8 + 8);
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

uint64_t re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        result = re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 24));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 8) = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 16) = *(v9 + 16);
        *(v9 + 8) = 0;
        *(v9 + 16) = &str_67;
        v7 = *(a2 + 16);
        *(result + 24) = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        result = re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 24));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 8) = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 16) = *(v9 + 16);
        *(v9 + 8) = 0;
        *(v9 + 16) = &str_67;
        v7 = *(a2 + 16);
        *(result + 24) = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(uint64_t a1, uint64_t a2)
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

    re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(a1, v4, v5);
    re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
  }

  return a1;
}

re::StringID *re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(re::StringID *result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        v10 = re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        result = re::StringID::StringID((v10 + 8), (*(a2 + 16) + v5 + 8));
        v7 = *(a2 + 16);
        *(v10 + 24) = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(uint64_t a1, uint64_t a2)
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

    re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(a1, v4, v5);
    re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
  }

  return a1;
}

re::StringID *re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(re::StringID *result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        v10 = re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        result = re::StringID::StringID((v10 + 8), (*(a2 + 16) + v5 + 8));
        v7 = *(a2 + 16);
        *(v10 + 24) = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

void re::DynamicArray<re::TechniqueFunctionConstant>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 104 * v2;
    do
    {
      re::DynamicString::deinit(v3);
      v3 = (v3 + 104);
      v4 -= 104;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void re::DynamicArray<re::TechniqueFunctionConstant>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 104 * a2;
    v9 = a2;
    do
    {
      re::DynamicString::deinit((*(v3 + 4) + v8));
      ++v9;
      v8 += 104;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 104 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 84) = 0u;
        *(v7 + 68) = 0u;
        *(v7 + 52) = 0u;
        v6 += 104;
        *(v7 + 36) = 0u;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

void *re::DynamicArray<re::TechniqueFunctionConstant>::copy(void *this, unint64_t a2, re::DynamicString *a3, uint64_t a4)
{
  if (!a4)
  {
    return this;
  }

  v6 = this;
  v7 = this[2];
  if (v7 + 1 <= a2)
  {
    v31 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v32) = 136315906;
    *(&v32 + 4) = "copy";
    WORD6(v32) = 1024;
    HIWORD(v32) = 643;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_18:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, a2, v4, v31, v32);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_18;
  }

  if (v7 >= v8)
  {
    this = (this[4] + 104 * a2);
    v26 = 104 * a4;
    do
    {
      v27 = re::DynamicString::operator=(this, a3);
      *(v27 + 2) = *(a3 + 2);
      v28 = *(a3 + 3);
      v29 = *(a3 + 4);
      v30 = *(a3 + 5);
      *(v27 + 24) = *(a3 + 24);
      *(v27 + 4) = v29;
      *(v27 + 5) = v30;
      *(v27 + 3) = v28;
      a3 = (a3 + 104);
      this = (v27 + 104);
      v26 -= 104;
    }

    while (v26);
  }

  else
  {
    this = re::DynamicArray<re::TechniqueFunctionConstant>::growCapacity(this, a2 + a4);
    v10 = v6[2];
    v11 = v6[4];
    v12 = a2;
    v13 = v10 - a2;
    if (v10 != a2)
    {
      this = (v11 + 104 * a2);
      v14 = -104 * a2 + 104 * v10;
      v15 = a3;
      do
      {
        v16 = re::DynamicString::operator=(this, v15);
        *(v16 + 2) = *(v15 + 2);
        v17 = *(v15 + 3);
        v18 = *(v15 + 4);
        v19 = *(v15 + 5);
        *(v16 + 24) = *(v15 + 24);
        *(v16 + 4) = v18;
        *(v16 + 5) = v19;
        *(v16 + 3) = v17;
        v15 = (v15 + 104);
        this = (v16 + 104);
        v14 -= 104;
      }

      while (v14);
      v11 = v6[4];
      v12 = v6[2];
    }

    if (v13 != v4)
    {
      v20 = (a3 + 104 * v13);
      this = (v11 + 104 * v12);
      v21 = 104 * a2 + 104 * v4 - 104 * v10;
      do
      {
        v22 = re::DynamicString::DynamicString(this, v20);
        *(v22 + 2) = *(v20 + 2);
        v23 = *(v20 + 3);
        v24 = *(v20 + 4);
        v25 = *(v20 + 5);
        *(v22 + 24) = *(v20 + 24);
        *(v22 + 4) = v24;
        *(v22 + 5) = v25;
        *(v22 + 3) = v23;
        v20 = (v20 + 104);
        this = (v22 + 104);
        v21 -= 104;
      }

      while (v21);
    }

    v6[2] = v8;
  }

  ++*(v6 + 6);
  return this;
}

uint64_t *re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::copy(uint64_t *result, uint64_t a2)
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
        v8 = re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v4, *(v7 + v5 + 8) % *(v4 + 24), *(v7 + v5 + 8));
        v9 = *(a2 + 16) + v5;
        *(v8 + 8) = *(v9 + 8);
        result = re::FixedArray<unsigned int>::FixedArray((v8 + 16), v9 + 16);
        *(v8 + 40) = *(v9 + 40);
        v2 = *(a2 + 32);
      }

      v5 += 48;
    }
  }

  return result;
}

re *_ZNSt3__110__function6__funcIZN2re20makeDefaultUniquePtrINS2_17MaterialTechniqueEJEEENS_10unique_ptrIT_NS_8functionIFvPS6_EEEEEDpOT0_EUlPS4_E_NS_9allocatorISG_EEFvSF_EEclEOSF_(re *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result);
    v4 = *(v2 + 120);
    if (v4)
    {
      v5 = 0;
      v6 = *(v2 + 104);
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
          LODWORD(v5) = *(v2 + 120);
          break;
        }
      }
    }

    else
    {
      LODWORD(v5) = 0;
    }

    v8 = v3[2];
LABEL_11:
    while (v5 != v4)
    {
      v9 = *(v2 + 104) + 32 * v5;
      v12 = *(v9 + 16);
      v11 = (v9 + 16);
      v10 = v12;
      v13 = v12[1];
      if (!v13 || ((v13 + 8), v10[1] = 0, (v10 = *v11) != 0))
      {
        v14 = re::globalAllocators(v3)[2];
        v15 = v10[1];
        if (v15)
        {

          v10[1] = 0;
        }

        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v10 + 45);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v10 + 39);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v10 + 33);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v10 + 27);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v10 + 21);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v10 + 15);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v10 + 9);
        v16.n128_f64[0] = re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::deinit((v10 + 3));
        v17 = v10[1];
        if (v17)
        {

          v10[1] = 0;
        }

        v3 = (*(*v14 + 40))(v14, v10, v16);
      }

      v18 = *(v2 + 120);
      if (v18 <= v5 + 1)
      {
        v18 = v5 + 1;
      }

      while (v18 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(v2 + 104) + 32 * v5) & 0x80000000) != 0)
        {
          goto LABEL_11;
        }
      }

      LODWORD(v5) = v18;
    }

    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v2 + 88));
    if (*(v2 + 40) == 1)
    {
      re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit((v2 + 48));
    }

    re::FixedArray<re::TechniqueFunctionConstant>::deinit((v2 + 16));
    v19 = *(*v8 + 40);

    return v19(v8, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20makeDefaultUniquePtrINS2_17MaterialTechniqueEJEEENS_10unique_ptrIT_NS_8functionIFvPS6_EEEEEDpOT0_EUlPS4_E_NS_9allocatorISG_EEFvSF_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, *(a1 + 8));
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 96 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = *(v2 + 80);
    if (v3)
    {

      *(v2 + 80) = 0;
    }
  }
}

uint64_t MetalEmulation::generateCubeMap(uint64_t a1, double a2)
{
  v3 = a1 + 224;
  v5 = *(a1 + 392);

  return v5(v3, LODWORD(a2), WORD2(a2), v4);
}

double MetalEmulation::anonymous namespace::computeCubeMapTexel(uint64_t a1, unsigned int a2, unsigned int a3, int a4, double a5)
{
  v8 = WORD1(a5);
  v9 = WORD2(a5);
  v10 = a2;
  v44 = LOWORD(a5);
  *v11.f32 = MetalEmulation::getCubeDir(LOWORD(a5), WORD1(a5), WORD2(a5), a2);
  v39 = v11;
  if (a3 == 1)
  {
    v12 = v11.f32[2];
    v13 = -v11.f32[2];
    if (a4)
    {
      v13 = v11.f32[2];
    }

    v14 = atan2f(v11.f32[0], v13);
    v15 = vdiv_f32(__PAIR64__(COERCE_UNSIGNED_INT(atan2f(v39.f32[1], sqrtf(vmuls_lane_f32(v12, v39, 2) + (v39.f32[0] * v39.f32[0])))), LODWORD(v14)), 0x40490FDB40C90FDBLL);
    v16.n128_u32[0] = vadd_f32(v15, 0x3F0000003F000000).u32[0];
    v16.n128_u32[1] = vsub_f32(0x3F0000003F000000, v15).u32[1];
    (*(a1 + 160))(a1, v16);
  }

  else
  {
    v18 = v44;
    *v19.f32 = MetalEmulation::getCubeDir((v44 + 1), v8, v9, v10);
    v45 = v19;
    *v20.f32 = MetalEmulation::getCubeDir(v18, (v8 + 1), v9, v10);
    if (a3)
    {
      v21 = 0;
      v22 = vsubq_f32(v20, v39);
      v38 = vsubq_f32(v45, v39);
      v23.i64[0] = 0xBF000000BF000000;
      v23.i64[1] = 0xBF000000BF000000;
      v24 = vmlaq_f32(v39, v23, vaddq_f32(v38, v22));
      v25 = 1.0 / a3;
      v26 = v25 * 0.5;
      v27 = 0uLL;
      v40 = v24;
      v41 = v22;
      do
      {
        v28 = 0;
        v42 = vmlaq_n_f32(v24, v38, v26 + (v21 * v25));
        do
        {
          v46 = v27;
          v29 = vmlaq_n_f32(v42, v22, v26 + (v28 * v25));
          v43 = v29;
          v30 = v29.f32[2];
          v31 = -v29.f32[2];
          if (a4)
          {
            v31 = v29.f32[2];
          }

          v32 = atan2f(v29.f32[0], v31);
          v33 = vdiv_f32(__PAIR64__(COERCE_UNSIGNED_INT(atan2f(v43.f32[1], sqrtf(vmuls_lane_f32(v30, v43, 2) + (v43.f32[0] * v43.f32[0])))), LODWORD(v32)), 0x40490FDB40C90FDBLL);
          v34.n128_u32[0] = vadd_f32(v33, 0x3F0000003F000000).u32[0];
          v34.n128_u32[1] = vsub_f32(0x3F0000003F000000, v33).u32[1];
          *v20.i64 = (*(a1 + 160))(a1, v34);
          v22 = v41;
          v27 = vaddq_f32(v46, v20);
          ++v28;
        }

        while (a3 != v28);
        ++v21;
        v24 = v40;
      }

      while (v21 != a3);
    }

    else
    {
      v27 = 0uLL;
    }

    v20.f32[0] = (a3 * a3);
    v17 = vdivq_f32(v27, vdupq_lane_s32(*v20.f32, 0));
  }

  v35 = vdupq_n_s32(0xC77FE000);
  v36 = vminnmq_f32(vmaxnmq_f32(v17, v35), vdupq_n_s32(0x477FE000u));
  *&result = vbslq_s8(vceqq_f32(v36, v36), v36, v35).u64[0];
  return result;
}

uint64_t MetalEmulation::generateCubeMapWithLinearToSRGB(uint64_t a1, double a2)
{
  v3 = a1 + 224;
  v11 = v4;
  v4.i32[3] = 0;
  v5 = vmulq_f32(_simd_log_f4(v4), vdupq_n_s32(0x3ED55555u));
  v5.i32[3] = 0;
  v6 = _simd_exp_f4(v5);
  v7 = vcgeq_f32(vdupq_n_s32(0x3B4739A2u), v11);
  v7.i32[3] = 0;
  v8 = vbslq_s8(vcltzq_s32(v7), vmulq_f32(v11, vdupq_n_s32(0x414EC57Au)), vmlaq_f32(vdupq_n_s32(0xBD6147AE), vdupq_n_s32(0x3F870A3Du), v6));
  v8.n128_u32[3] = v11.u32[3];
  v9 = *(a1 + 392);

  return v9(v3, LODWORD(a2), WORD2(a2), v8);
}

uint64_t re::PrimitiveRenderingContext::addShape<unsigned long>(uint64_t a1, unint64_t a2, _OWORD *a3, _OWORD *a4)
{
  v7 = a1;
  v37 = *MEMORY[0x1E69E9840];
  v8 = re::PrimitiveRenderingDynamicGeometry::numShapes<unsigned long>(a1, a2);
  v9 = 0;
  v20 = 50462976;
  v22 = 0u;
  v23 = 0u;
  do
  {
    v10 = *(&v20 + v9);
    *(&v22 + v9) = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(v7, a2, v10);
    v19[v9++] = re::PrimitiveRenderingDynamicGeometry::isAttributeVarying<unsigned long>(v7, a2, v10);
  }

  while (v9 != 4);
  re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(v7, a2, 0);
  v11 = *(v7 + 1032);
  if (v11 <= a2)
  {
    v21 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    v27 = 789;
    v28 = 2048;
    v29 = a2;
    v30 = 2048;
    v31 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  v12 = re::PrimitiveRenderingDynamicGeometry::append<re::PrimitiveRenderingShapeAttribute>(&v20, &v22, v19, *(*(v7 + 1048) + 8 * a2), *(v7 + 1192));
  v9 = *(v7 + 1032);
  if (v9 <= a2)
  {
LABEL_13:
    v21 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    v27 = 789;
    v28 = 2048;
    v29 = a2;
    v30 = 2048;
    v31 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_14:
    v21 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    v27 = 789;
    v28 = 2048;
    v29 = a2;
    v30 = 2048;
    v31 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = v12;
  *(*(v7 + 1048) + 8 * a2) = v12;
  v7 = *(v7 + 1032);
  if (v7 <= a2)
  {
    goto LABEL_14;
  }

  if (v12 == 1)
  {
    if (v19[2] == 1)
    {
      re::fill<re::Vector3<float>,re::PrimitiveRenderingShapeAttribute>(*(v23 + 32) + 32 * *(v23 + 16) - 32, 2);
    }

    if (v19[3] == 1)
    {
      re::fill<re::Vector4<float>,re::PrimitiveRenderingShapeAttribute>(*(*(&v23 + 1) + 32) + 32 * *(*(&v23 + 1) + 16) - 32, 3);
    }
  }

  v14 = *(v22 + 32) + 32 * *(v22 + 16);
  v15 = [**(v14 - 8) contents] + *(v14 - 24);
  v16 = 16 * v13 - 16;
  *&v15[v16] = *a3;
  v17 = *(*(&v22 + 1) + 32) + 32 * *(*(&v22 + 1) + 16);
  *([**(v17 - 8) contents] + *(v17 - 24) + v16) = *a4;
  return v8;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::numShapes<unsigned long>(uint64_t a1, unint64_t a2)
{
  v4 = *(re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, a2, 0) + 16);
  if (!v4)
  {
    return 0;
  }

  if (*(a1 + 1032) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 1048) + 8 * a2) + (v4 << 7) - 128;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a1 + 40 * a3;
  if (*(v3 + 552) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(v3 + 568) + 40 * a2;
}

{
  v3 = a1 + 40 * a3;
  if (*(v3 + 552) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(v3 + 568) + 40 * a2;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::isAttributeVarying<unsigned long>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a1 + 40 * a3;
  if (*(v3 + 872) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v3 + 888) + a2);
}

uint64_t re::PrimitiveRenderingDynamicGeometry::append<re::PrimitiveRenderingShapeAttribute>(uint64_t a1, uint64_t a2, uint64_t a3, char a4, re *a5)
{
  v9 = 0;
  v10 = a4 & 0x7F;
  do
  {
    if (!v10 && (*(a3 + v9) & 1) != 0)
    {
      v11 = *(a2 + 8 * v9);
      re::attributeInfo(*(a1 + v9), a2);
      re::allocate(a5, 0x10, 0x10uLL, v13);
      re::DynamicArray<re::EvaluationRegister>::add(v11, v13);
    }

    ++v9;
  }

  while (v9 != 4);
  return v10 + 1;
}

double re::fill<re::Vector3<float>,re::PrimitiveRenderingShapeAttribute>(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  re::PrimitiveRenderingDynamicGeometry::attributeDefaultValue(&v7, a2);
  if (v8 != 2)
  {
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  v3 = [**(a1 + 24) contents];
  v4 = 0;
  v5 = &v3[*(a1 + 8)];
  do
  {
    result = *&v7;
    *&v5[v4] = v7;
    v4 += 16;
  }

  while (v4 != 2048);
  return result;
}

char *re::fill<re::Vector4<float>,re::PrimitiveRenderingShapeAttribute>(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  re::PrimitiveRenderingDynamicGeometry::attributeDefaultValue(&v7, a2);
  if (v8 != 3)
  {
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  v6 = v7;
  result = [**(a1 + 24) contents];
  v4 = 0;
  v5 = &result[*(a1 + 8)];
  do
  {
    *&v5[v4] = v6;
    v4 += 16;
  }

  while (v4 != 2048);
  return result;
}

uint64_t re::PrimitiveRenderingContext::addShape<re::PrimitiveRenderingShape>(uint64_t a1, unsigned int a2, _OWORD *a3, _OWORD *a4)
{
  v7 = a1;
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<re::PrimitiveRenderingShape>(a1, a2, 0) + 16);
  if (v8)
  {
    v9 = a2;
    v10 = *(v7 + 1032);
    if (v10 <= a2)
    {
      goto LABEL_19;
    }

    v9 = *(*(v7 + 1048) + 8 * a2) + (v8 << 7) - 128;
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
  v22 = 50462976;
  v24 = 0u;
  v25 = 0u;
  do
  {
    v12 = *(&v22 + v11);
    *(&v24 + v11) = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<re::PrimitiveRenderingShape>(v7, a2, v12);
    v21[v11++] = re::PrimitiveRenderingDynamicGeometry::isAttributeVarying<re::PrimitiveRenderingShape>(v7, a2, v12);
  }

  while (v11 != 4);
  re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<re::PrimitiveRenderingShape>(v7, a2, 0);
  v10 = a2;
  v13 = *(v7 + 1032);
  if (v13 <= a2)
  {
    v23 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    v29 = 789;
    v30 = 2048;
    v31 = a2;
    v32 = 2048;
    v33 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v14 = re::PrimitiveRenderingDynamicGeometry::append<re::PrimitiveRenderingShapeAttribute>(&v22, &v24, v21, *(*(v7 + 1048) + 8 * a2), *(v7 + 1192));
  v13 = *(v7 + 1032);
  if (v13 <= a2)
  {
LABEL_17:
    v23 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    v29 = 789;
    v30 = 2048;
    v31 = a2;
    v32 = 2048;
    v33 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  *(*(v7 + 1048) + 8 * v10) = v14;
  v7 = *(v7 + 1032);
  if (v7 <= v10)
  {
LABEL_18:
    v23 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    v29 = 789;
    v30 = 2048;
    v31 = v10;
    v32 = 2048;
    v33 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_19:
    *&v24 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    v29 = 797;
    v30 = 2048;
    v31 = v9;
    v32 = 2048;
    v33 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v14 == 1)
  {
    if (v21[2] == 1)
    {
      re::fill<re::Vector3<float>,re::PrimitiveRenderingShapeAttribute>(*(v25 + 32) + 32 * *(v25 + 16) - 32, 2);
    }

    if (v21[3] == 1)
    {
      re::fill<re::Vector4<float>,re::PrimitiveRenderingShapeAttribute>(*(*(&v25 + 1) + 32) + 32 * *(*(&v25 + 1) + 16) - 32, 3);
    }
  }

  v16 = *(v24 + 32) + 32 * *(v24 + 16);
  v17 = [**(v16 - 8) contents] + *(v16 - 24);
  v18 = 16 * v15 - 16;
  *&v17[v18] = *a3;
  v19 = *(*(&v24 + 1) + 32) + 32 * *(*(&v24 + 1) + 16);
  *([**(v19 - 8) contents] + *(v19 - 24) + v18) = *a4;
  return v9;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<re::PrimitiveRenderingShape>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = a1 + 40 * a3;
  if (*(v3 + 552) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(v3 + 568) + 40 * a2;
}

{
  v3 = a1 + 40 * a3;
  if (*(v3 + 552) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(v3 + 568) + 40 * a2;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::isAttributeVarying<re::PrimitiveRenderingShape>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = a1 + 40 * a3;
  if (*(v3 + 872) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v3 + 888) + a2);
}

float re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(uint64_t a1, unint64_t a2, float *a3, _anonymous_namespace_ *a4, _BYTE *a5, uint64_t a6, uint64_t a7, re *a8)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*a5 & 1) == 0)
  {
    v15 = re::attributeInfo(a1, a2);
    if (a6)
    {
      v17 = v15;
      v18 = v16;
      do
      {
        re::allocate(a8, v17, v18, v22);
        re::fill<float,re::PrimitiveRenderingAttribute>(v22, a1);
        re::DynamicArray<re::EvaluationRegister>::add(a4, v22);
        --a6;
      }

      while (a6);
    }

    *a5 = 1;
  }

  if (*(a4 + 2) <= a2 >> 7)
  {
    memset(v22, 0, sizeof(v22));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v19 = *(a4 + 4) + 32 * (a2 >> 7);
  v20 = [**(v19 + 24) contents];
  result = *a3;
  *&v20[4 * (a2 & 0x7F) + *(v19 + 8)] = *a3;
  return result;
}

__n128 re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(uint64_t a1, unint64_t a2, __n128 *a3, _anonymous_namespace_ *a4, _BYTE *a5, uint64_t a6, uint64_t a7, re *a8)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*a5 & 1) == 0)
  {
    v15 = re::attributeInfo(a1, a2);
    if (a6)
    {
      v17 = v15;
      v18 = v16;
      do
      {
        re::allocate(a8, v17, v18, v22);
        re::fill<re::Vector4<float>,re::PrimitiveRenderingAttribute>(v22, a1);
        re::DynamicArray<re::EvaluationRegister>::add(a4, v22);
        --a6;
      }

      while (a6);
    }

    *a5 = 1;
  }

  if (*(a4 + 2) <= a2 >> 7)
  {
    memset(v22, 0, sizeof(v22));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v19 = *(a4 + 4) + 32 * (a2 >> 7);
  v20 = [**(v19 + 24) contents];
  result = *a3;
  *&v20[16 * (a2 & 0x7F) + *(v19 + 8)] = *a3;
  return result;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::varyingAttributeSize<re::PrimitiveRenderingShape>(uint64_t a1, unsigned int a2)
{
  v4 = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<re::PrimitiveRenderingShape>(a1, a2, 0);
  if (*(a1 + 1032) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(v4 + 16);
}

uint64_t re::PrimitiveRenderingDynamicGeometry::getAttributeVarying<re::PrimitiveRenderingShape>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = a1 + 40 * a3;
  if (*(v3 + 872) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(v3 + 888) + a2;
}

double re::PrimitiveRenderingContext::setAttribute<re::Vector4<float>,re::PrimitiveRenderingShape>(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, __n128 *a5)
{
  v10 = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<re::PrimitiveRenderingShape>(a1, a3, a4);
  v11 = re::PrimitiveRenderingDynamicGeometry::varyingAttributeSize<re::PrimitiveRenderingShape>(a1, a3);
  v13 = v12;
  v14 = re::PrimitiveRenderingDynamicGeometry::getAttributeVarying<re::PrimitiveRenderingShape>(a1, a3, a4);
  v15 = *(a1 + 1192);

  *&result = re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingShapeAttribute>(a4, a2, a5, v10, v14, v11, v13, v15).n128_u64[0];
  return result;
}

__n128 re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingShapeAttribute>(uint64_t a1, unint64_t a2, __n128 *a3, _anonymous_namespace_ *a4, _BYTE *a5, uint64_t a6, uint64_t a7, re *a8)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((*a5 & 1) == 0)
  {
    re::attributeInfo(a1, a2);
    for (; a6; --a6)
    {
      re::allocate(a8, 0x10, 0x10uLL, v18);
      re::fill<re::Vector4<float>,re::PrimitiveRenderingShapeAttribute>(v18, a1);
      re::DynamicArray<re::EvaluationRegister>::add(a4, v18);
    }

    *a5 = 1;
  }

  if (*(a4 + 2) <= a2 >> 7)
  {
    memset(v18, 0, sizeof(v18));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v15 = *(a4 + 4) + 32 * (a2 >> 7);
  v16 = [**(v15 + 24) contents];
  result = *a3;
  *&v16[16 * (a2 & 0x7F) + *(v15 + 8)] = *a3;
  return result;
}

double re::PrimitiveRenderingContext::setAttribute<re::Vector3<float>,re::PrimitiveRenderingShape>(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, __n128 *a5)
{
  v10 = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<re::PrimitiveRenderingShape>(a1, a3, a4);
  v11 = re::PrimitiveRenderingDynamicGeometry::varyingAttributeSize<re::PrimitiveRenderingShape>(a1, a3);
  v13 = v12;
  v14 = re::PrimitiveRenderingDynamicGeometry::getAttributeVarying<re::PrimitiveRenderingShape>(a1, a3, a4);
  v15 = *(a1 + 1192);

  *&result = re::PrimitiveRenderingDynamicGeometry::set<re::Vector3<float>,re::PrimitiveRenderingShapeAttribute>(a4, a2, a5, v10, v14, v11, v13, v15).n128_u64[0];
  return result;
}

__n128 re::PrimitiveRenderingDynamicGeometry::set<re::Vector3<float>,re::PrimitiveRenderingShapeAttribute>(uint64_t a1, unint64_t a2, __n128 *a3, _anonymous_namespace_ *a4, _BYTE *a5, uint64_t a6, uint64_t a7, re *a8)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((*a5 & 1) == 0)
  {
    re::attributeInfo(a1, a2);
    for (; a6; --a6)
    {
      re::allocate(a8, 0x10, 0x10uLL, v18);
      re::fill<re::Vector3<float>,re::PrimitiveRenderingShapeAttribute>(v18, a1);
      re::DynamicArray<re::EvaluationRegister>::add(a4, v18);
    }

    *a5 = 1;
  }

  if (*(a4 + 2) <= a2 >> 7)
  {
    memset(v18, 0, sizeof(v18));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v15 = *(a4 + 4) + 32 * (a2 >> 7);
  v16 = [**(v15 + 24) contents];
  result = *a3;
  *&v16[16 * (a2 & 0x7F) + *(v15 + 8)] = *a3;
  return result;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::varyingAttributeSize<unsigned long>(uint64_t a1, unint64_t a2)
{
  Attribute = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, a2, 0);
  if (*(a1 + 1032) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(Attribute + 16);
}

unint64_t re::PrimitiveRenderingDynamicGeometry::getAttributeVarying<unsigned long>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a1 + 40 * a3;
  if (*(v3 + 872) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(v3 + 888) + a2;
}

double re::PrimitiveRenderingContext::setAttribute<re::Vector4<float>,unsigned long>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, __n128 *a5)
{
  Attribute = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, a3, a4);
  v11 = re::PrimitiveRenderingDynamicGeometry::varyingAttributeSize<unsigned long>(a1, a3);
  v13 = v12;
  v14 = re::PrimitiveRenderingDynamicGeometry::getAttributeVarying<unsigned long>(a1, a3, a4);
  v15 = *(a1 + 1192);

  *&result = re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingShapeAttribute>(a4, a2, a5, Attribute, v14, v11, v13, v15).n128_u64[0];
  return result;
}

double re::PrimitiveRenderingContext::setAttribute<re::Vector3<float>,unsigned long>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, __n128 *a5)
{
  Attribute = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, a3, a4);
  v11 = re::PrimitiveRenderingDynamicGeometry::varyingAttributeSize<unsigned long>(a1, a3);
  v13 = v12;
  v14 = re::PrimitiveRenderingDynamicGeometry::getAttributeVarying<unsigned long>(a1, a3, a4);
  v15 = *(a1 + 1192);

  *&result = re::PrimitiveRenderingDynamicGeometry::set<re::Vector3<float>,re::PrimitiveRenderingShapeAttribute>(a4, a2, a5, Attribute, v14, v11, v13, v15).n128_u64[0];
  return result;
}

__n128 re::PrimitiveRenderingDynamicGeometry::setUniform<re::Vector4<float>,re::PrimitiveRenderingShape>(uint64_t a1, unsigned int a2, unsigned int a3, __n128 *a4)
{
  v4 = a2;
  v5 = a1 + 40 * a3;
  if (*(v5 + 872) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  v9 = v5 + 856;
  if (*(*(v5 + 888) + a2) == 1)
  {
    v10 = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<re::PrimitiveRenderingShape>(a1, a2, a3);
    *(v10 + 16) = 0;
    ++*(v10 + 24);
    if (*(v9 + 16) <= v4)
    {
      goto LABEL_12;
    }

    *(*(v9 + 32) + v4) = 0;
  }

  v11 = a1 + 40 * a3;
  if (*(v11 + 712) <= v4)
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(v11 + 728) + 32 * v4;
  if (*(v12 + 16) == 3)
  {
    result = *a4;
    *v12 = *a4;
  }

  else
  {
    *(v12 + 16) = -1;
    result = *a4;
    *v12 = *a4;
    *(v12 + 16) = 3;
  }

  return result;
}

__n128 re::PrimitiveRenderingDynamicGeometry::setUniform<re::Vector3<float>,re::PrimitiveRenderingShape>(uint64_t a1, unsigned int a2, unsigned int a3, __n128 *a4)
{
  v4 = a2;
  v5 = a1 + 40 * a3;
  if (*(v5 + 872) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  v9 = v5 + 856;
  if (*(*(v5 + 888) + a2) == 1)
  {
    v10 = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<re::PrimitiveRenderingShape>(a1, a2, a3);
    *(v10 + 16) = 0;
    ++*(v10 + 24);
    if (*(v9 + 16) <= v4)
    {
      goto LABEL_12;
    }

    *(*(v9 + 32) + v4) = 0;
  }

  v11 = a1 + 40 * a3;
  if (*(v11 + 712) <= v4)
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(v11 + 728) + 32 * v4;
  if (*(v12 + 16) == 2)
  {
    result = *a4;
    *v12 = *a4;
  }

  else
  {
    *(v12 + 16) = -1;
    result = *a4;
    *v12 = *a4;
    *(v12 + 16) = 2;
  }

  return result;
}

__n128 re::PrimitiveRenderingDynamicGeometry::setUniform<re::Vector4<float>,unsigned long>(uint64_t a1, unint64_t a2, unsigned int a3, __n128 *a4)
{
  v5 = a1 + 40 * a3;
  if (*(v5 + 872) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  v9 = v5 + 856;
  if (*(*(v5 + 888) + a2) == 1)
  {
    Attribute = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, a2, a3);
    *(Attribute + 16) = 0;
    ++*(Attribute + 24);
    if (*(v9 + 16) <= a2)
    {
      goto LABEL_12;
    }

    *(*(v9 + 32) + a2) = 0;
  }

  v11 = a1 + 40 * a3;
  if (*(v11 + 712) <= a2)
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(v11 + 728) + 32 * a2;
  if (*(v12 + 16) == 3)
  {
    result = *a4;
    *v12 = *a4;
  }

  else
  {
    *(v12 + 16) = -1;
    result = *a4;
    *v12 = *a4;
    *(v12 + 16) = 3;
  }

  return result;
}

__n128 re::PrimitiveRenderingDynamicGeometry::setUniform<re::Vector3<float>,unsigned long>(uint64_t a1, unint64_t a2, unsigned int a3, __n128 *a4)
{
  v5 = a1 + 40 * a3;
  if (*(v5 + 872) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  v9 = v5 + 856;
  if (*(*(v5 + 888) + a2) == 1)
  {
    Attribute = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, a2, a3);
    *(Attribute + 16) = 0;
    ++*(Attribute + 24);
    if (*(v9 + 16) <= a2)
    {
      goto LABEL_12;
    }

    *(*(v9 + 32) + a2) = 0;
  }

  v11 = a1 + 40 * a3;
  if (*(v11 + 712) <= a2)
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(v11 + 728) + 32 * a2;
  if (*(v12 + 16) == 2)
  {
    result = *a4;
    *v12 = *a4;
  }

  else
  {
    *(v12 + 16) = -1;
    result = *a4;
    *v12 = *a4;
    *(v12 + 16) = 2;
  }

  return result;
}

void re::PrimitiveRenderingContext::buildMeshScene(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, re::Allocator *a8, uint64_t a9, uint64_t a10)
{
  v103 = *MEMORY[0x1E69E9840];
  re::globalAllocators(a1);
  v13 = (*(*a3 + 32))(a3, 24, 8);
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  v14 = re::FixedArray<re::MeshPart>::init<>(v13, a3, a5);
  *(&v86 + 1) = re::globalAllocators(v14)[2];
  *&v85 = &unk_1F5D03DD0;
  *&v87 = &v85;
  v15 = (*(*a3 + 16))(a3, v13, &v85);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v85);
  v16 = (*(*a3 + 32))(a3, 32, 16);
  v17.i64[0] = 0x7F0000007FLL;
  v17.i64[1] = 0x7F0000007FLL;
  v65 = vnegq_f32(v17);
  *v16 = v65;
  *(v16 + 16) = v17;
  v58 = v16;
  v18 = (*(*a3 + 32))(a3, 24, 8);
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *v18 = 0;
  re::FixedArray<unsigned long>::init<>(v18, a3, a5);
  v19 = (*(*a3 + 32))(a3, 24, 8);
  v19[1] = 0;
  v19[2] = 0;
  *v19 = 0;
  v68 = a3;
  re::FixedArray<unsigned long>::init<>(v19, a3, a5);
  re::StackScratchAllocator::StackScratchAllocator(v81);
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v20 = re::FixedArray<re::AABB>::init<>(&v78, v81, a5);
  v69 = v15;
  if (a5)
  {
    v21 = 0;
    v22 = 0;
    v62 = a5 - 1;
    v23 = 520;
    v60 = a5;
    v61 = v19;
    v59 = v18;
    do
    {
      if (v62 == v22)
      {
        v24 = a6;
      }

      else
      {
        v24 = 128;
      }

      v25 = 1;
      if (*(a7 + 16))
      {
        v25 = 2;
      }

      v18 = *(a7 + 80);
      v76 = 0;
      v77 = 0;
      if (v18)
      {
        v26 = v25 + 1;
      }

      else
      {
        v26 = v25;
      }

      v75 = 0;
      LOWORD(v87) = 287;
      *(&v87 + 1) = *(a7 + 64);
      *v89 = 0;
      *&v89[8] = 0;
      *&v89[12] = [*(a7 + 64) length];
      *&v89[16] = 0xFFFFFFFF00000000;
      v29 = v76;
      if (!v76)
      {
        goto LABEL_62;
      }

      v30 = v77;
      re::DynamicString::operator=(v77, &v85);
      *(v30 + 16) = v87;
      v27 = &v85;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v30 + 40, &v87 + 8);
      *(v30 + 9) = *&v89[8];
      *(v30 + 10) = *&v89[16];
      if (*v89 != -1)
      {
        (off_1F5D03DA0[*v89])(v100, &v87 + 8);
      }

      *v89 = -1;
      v31 = v85;
      if (v85 && (BYTE8(v85) & 1) != 0)
      {
        v31 = (*(*v85 + 40))();
      }

      if (*(a7 + 16))
      {
        LOWORD(v87) = 49;
        *(&v87 + 1) = *(a7 + 72);
        *v89 = 0;
        *&v89[8] = 0;
        *&v89[12] = [*(a7 + 72) length];
        *&v89[16] = 0xFFFFFFFF00000000;
        if (v29 == 1)
        {
          goto LABEL_68;
        }

        re::DynamicString::operator=((v30 + 88), &v85);
        *(v30 + 60) = v87;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v30 + 128, &v87 + 8);
        *(v30 + 10) = *&v89[8];
        if (*v89 != -1)
        {
          (off_1F5D03DA0[*v89])(v100, &v87 + 8);
        }

        v19 = &v85;
        *v89 = -1;
        v31 = v85;
        if (v85 && (BYTE8(v85) & 1) != 0)
        {
          v31 = (*(*v85 + 40))();
        }

        v27 = 2;
        if (!v18)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v19 = &v85;
        v27 = 1;
        if (!v18)
        {
          goto LABEL_33;
        }
      }

      LOWORD(v87) = 287;
      *(&v87 + 1) = *(a7 + 80);
      *v89 = 0;
      *&v89[8] = 0;
      *&v89[12] = [*(a7 + 80) length];
      *&v89[16] = 0xFFFFFFFF00000000;
      if (v29 <= v27)
      {
        goto LABEL_69;
      }

      v18 = v30 + 88 * v27;
      re::DynamicString::operator=(v18, &v85);
      *(v18 + 32) = v87;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v18 + 40, &v87 + 8);
      *(v18 + 72) = *&v89[8];
      *(v18 + 80) = *&v89[16];
      if (*v89 != -1)
      {
        (off_1F5D03DA0[*v89])(v100, &v87 + 8);
      }

      v19 = &v85;
      *v89 = -1;
      if (v85 && (BYTE8(v85) & 1) != 0)
      {
        (*(*v85 + 40))();
      }

LABEL_33:
      *&v32 = 0x7F0000007FLL;
      *(&v32 + 1) = 0x7F0000007FLL;
      v74[0] = v65;
      v74[1] = v32;
      *&v85 = v22;
      v100[0] = v24;
      (*(**(a10 + 32) + 16))(v83);
      v27 = v79;
      if (v79 <= v22)
      {
        goto LABEL_63;
      }

      v33 = (v80 + v21);
      v34 = *&v83[16];
      *v33 = *v83;
      v33[1] = v34;
      if (*(a2 + 1184) == 1)
      {
        v35 = *v58;
        v36 = v58[1];
        v35.i32[3] = 0;
        v37 = *v33;
        v37.i32[3] = 0;
        *v58 = vminnmq_f32(v35, v37);
        v38 = v33[1];
        v36.i32[3] = 0;
        v38.i32[3] = 0;
        v58[1] = vmaxnmq_f32(v36, v38);
      }

      v72 = 0xD2E811B7E678E9E0;
      v73 = "PrimitiveRendering Instance";
      v39 = *(a7 + 16);
      v40 = *(a7 + 8);
      *v83 = xmmword_1E3047670;
      *&v83[16] = xmmword_1E3047680;
      *&v83[32] = xmmword_1E30476A0;
      v84 = xmmword_1E30474D0;
      v71 = 0;
      v70 = 0;
      re::MeshPart::MeshPart(&v85, &v72, v22, v30, v29, v39, v40, v24, v74, v22, v83, &v70, -1, 0);
      v15 = v69;
      v27 = *(v69 + 8);
      if (v27 <= v22)
      {
        goto LABEL_64;
      }

      v41 = re::MeshPart::operator=(*(v69 + 16) + v23 - 520, &v85);
      if (v91)
      {
        if (v91)
        {
        }
      }

      v92 = &str_67;
      v91 = 0;
      re::FixedArray<re::StringID>::deinit(v90);
      re::AttributeTable::~AttributeTable(&v85);
      v18 = v59;
      a5 = v60;
      if (v72)
      {
        if (v72)
        {
        }
      }

      v72 = 0;
      v73 = &str_67;
      v27 = *(v69 + 8);
      v19 = v61;
      if (v27 <= v22)
      {
        goto LABEL_65;
      }

      *(*(v69 + 16) + v23) = *a7;
      *&v85 = v22;
      (*(**(a9 + 32) + 16))(*(a9 + 32), &v85);
      v43 = re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(a8, v68);
      v27 = *(v59 + 8);
      if (v27 <= v22)
      {
        goto LABEL_66;
      }

      *(*(v59 + 16) + 8 * v22) = v43;
      v27 = v61[1];
      if (v27 <= v22)
      {
        goto LABEL_67;
      }

      *(v61[2] + 8 * v22) = a4;
      v20 = re::FixedArray<re::NamedVertexBuffer>::deinit(&v75);
      v23 += 544;
      v21 += 32;
      ++v22;
    }

    while (v60 != v22);
  }

  v29 = (*(*v68 + 32))(v68, 24, 8);
  v29[1] = 0;
  v29[2] = 0;
  *v29 = 0;
  re::FixedArray<re::MeshPart const*>::init<>(v29, v68, a5);
  if (a5)
  {
    v44 = 0;
    v22 = 0;
    v27 = *(v15 + 8);
    while (v27 != v22)
    {
      v15 = v29[1];
      if (v15 <= v22)
      {
        goto LABEL_61;
      }

      *(v29[2] + 8 * v22++) = *(v69 + 16) + v44;
      v44 += 544;
      if (a5 == v22)
      {
        goto LABEL_52;
      }
    }

    *v83 = 0;
    v88 = 0u;
    *v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v100[0]) = 136315906;
    *(v100 + 4) = "operator[]";
    WORD2(v100[1]) = 1024;
    *(&v100[1] + 6) = 468;
    WORD1(v100[2]) = 2048;
    *(&v100[2] + 4) = v27;
    WORD2(v100[3]) = 2048;
    *(&v100[3] + 6) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_61:
    *v83 = 0;
    v88 = 0u;
    *v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v100[0]) = 136315906;
    *(v100 + 4) = "operator[]";
    WORD2(v100[1]) = 1024;
    *(&v100[1] + 6) = 468;
    WORD1(v100[2]) = 2048;
    *(&v100[2] + 4) = v22;
    WORD2(v100[3]) = 2048;
    *(&v100[3] + 6) = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_62:
    *v93 = 0;
    v101 = 0u;
    v102 = 0u;
    memset(v100, 0, sizeof(v100));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v83 = 136315906;
    *&v83[4] = "operator[]";
    *&v83[12] = 1024;
    *&v83[14] = 468;
    *&v83[18] = 2048;
    *&v83[20] = 0;
    *&v83[28] = 2048;
    *&v83[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_63:
    *v93 = 0;
    v88 = 0u;
    *v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v100[0]) = 136315906;
    *(v100 + 4) = "operator[]";
    WORD2(v100[1]) = 1024;
    *(&v100[1] + 6) = 468;
    WORD1(v100[2]) = 2048;
    *(&v100[2] + 4) = v22;
    WORD2(v100[3]) = 2048;
    *(&v100[3] + 6) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_64:
    v82 = 0;
    v101 = 0u;
    v102 = 0u;
    memset(v100, 0, sizeof(v100));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v93 = 136315906;
    *&v93[4] = "operator[]";
    v94 = 1024;
    v95 = 468;
    v96 = 2048;
    v97 = v22;
    v98 = 2048;
    v99 = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_65:
    *v83 = 0;
    v88 = 0u;
    *v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v100[0]) = 136315906;
    *(v100 + 4) = "operator[]";
    WORD2(v100[1]) = 1024;
    *(&v100[1] + 6) = 468;
    WORD1(v100[2]) = 2048;
    *(&v100[2] + 4) = v22;
    WORD2(v100[3]) = 2048;
    *(&v100[3] + 6) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_66:
    *v83 = 0;
    v88 = 0u;
    *v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v100[0]) = 136315906;
    *(v100 + 4) = "operator[]";
    WORD2(v100[1]) = 1024;
    *(&v100[1] + 6) = 468;
    WORD1(v100[2]) = 2048;
    *(&v100[2] + 4) = v22;
    WORD2(v100[3]) = 2048;
    *(&v100[3] + 6) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_67:
    *v83 = 0;
    v88 = 0u;
    *v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v100[0]) = 136315906;
    *(v100 + 4) = "operator[]";
    WORD2(v100[1]) = 1024;
    *(&v100[1] + 6) = 468;
    WORD1(v100[2]) = 2048;
    *(&v100[2] + 4) = v22;
    WORD2(v100[3]) = 2048;
    *(&v100[3] + 6) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_68:
    *v93 = 0;
    v101 = 0u;
    v102 = 0u;
    memset(v100, 0, sizeof(v100));
    v29 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v83 = 136315906;
    *&v83[4] = "operator[]";
    *&v83[12] = 1024;
    *&v83[14] = 468;
    *&v83[18] = 2048;
    *&v83[20] = 1;
    *&v83[28] = 2048;
    *&v83[30] = 1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_69:
    *v93 = 0;
    v101 = 0u;
    v102 = 0u;
    memset(v100, 0, sizeof(v100));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v83 = 136315906;
    *&v83[4] = "operator[]";
    *&v83[12] = 1024;
    *&v83[14] = 468;
    *&v83[18] = 2048;
    *&v83[20] = v27;
    *&v83[28] = 2048;
    *&v83[30] = v29;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  else
  {
LABEL_52:
    v27 = a1;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 424) = 0;
    *(a1 + 440) = 0;
    *(a1 + 448) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0;
    *(a1 + 296) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 404) = 0u;
    if (re::MaterialParameterTable::kDefaultNameHash(void)::once == -1)
    {
      goto LABEL_53;
    }
  }

  dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
LABEL_53:
  *(v27 + 464) = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
  __asm { FMOV            V0.2S, #1.0 }

  *(v27 + 472) = _D0;
  *(v27 + 480) = 1065353216;
  *(v27 + 488) = 0u;
  *(v27 + 504) = 0u;
  *(v27 + 519) = 0;
  *(v27 + 524) = 0xFFFFFFFF00000001;
  *(v27 + 532) = 0;
  *(v27 + 544) = 0;
  *(v27 + 592) = 0;
  *(v27 + 608) = 0;
  *(v27 + 688) = 65537;
  *(v27 + 692) = 1;
  *(v27 + 696) = xmmword_1E3060D60;
  *(v27 + 712) = 16788070;
  *(v27 + 720) = 0;
  v50 = v29[1];
  *v27 = v29[2];
  *(v27 + 8) = v50;
  *&v85 = v58;
  *(&v85 + 1) = 1;
  v51 = (*(*v68 + 32))(v68, 72, 8);
  *(v27 + 112) = re::MeshBoundingBoxes::MeshBoundingBoxes(v51, v68, &v85, 1);
  *&v85 = v80;
  *(&v85 + 1) = v79;
  v52 = (*(*v68 + 32))(v68, 72, 8);
  *(v27 + 120) = re::MeshBoundingBoxes::MeshBoundingBoxes(v52, v68, &v85, 1);
  v53 = v58[1];
  *(v27 + 80) = *v58;
  *(v27 + 96) = v53;
  *(v27 + 128) = xmmword_1E3047670;
  *(v27 + 144) = xmmword_1E3047680;
  *(v27 + 160) = xmmword_1E30476A0;
  *(v27 + 176) = xmmword_1E30474D0;
  v54 = *(v18 + 8);
  *(v27 + 280) = *(v18 + 16);
  *(v27 + 288) = v54;
  v55 = v19[1];
  *(v27 + 192) = v19[2];
  *(v27 + 200) = v55;
  if (*(a2 + 1184))
  {
    v56 = 8;
  }

  else
  {
    v56 = 0;
  }

  *(v27 + 504) = *(v27 + 504) & 0xFFFFFFF7 | v56;
  *(v27 + 508) |= 8u;
  if (v78 && v79)
  {
    (*(*v78 + 40))(v78, v80);
  }

  re::StackScratchAllocator::~StackScratchAllocator(v81);
}

unint64_t *re::PrimitiveMeshAttribute::uniformCustomAttribute<float>@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0;
  result = re::StringID::operator=(a3, a1);
  *(result + 8) = 256;
  *(result + 18) = 28;
  v5 = *a2;
  if (*(result + 12))
  {
    *(result + 12) = 0;
  }

  *(result + 8) = v5;
  return result;
}

unint64_t *re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector2<float>>@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0;
  result = re::StringID::operator=(a3, a1);
  *(result + 8) = 256;
  *(result + 18) = 29;
  v5 = *a2;
  if (*(result + 12) != 1)
  {
    *(result + 12) = 1;
  }

  result[4] = v5;
  return result;
}

unint64_t *re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector3<float>>@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0;
  result = re::StringID::operator=(a3, a1);
  *(result + 8) = 256;
  *(result + 18) = 30;
  v5 = *(result + 12);
  *(result + 2) = *a2;
  if (v5 != 2)
  {
    *(result + 12) = 2;
  }

  return result;
}

unint64_t *re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector4<float>>@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0;
  result = re::StringID::operator=(a3, a1);
  *(result + 8) = 256;
  *(result + 18) = 31;
  v5 = *(result + 12);
  *(result + 2) = *a2;
  if (v5 != 3)
  {
    *(result + 12) = 3;
  }

  return result;
}

void re::PrimitiveRenderer::~PrimitiveRenderer(re::PrimitiveRenderer *this)
{
  *this = 0;
  re::DynamicArray<re::PrimitiveRenderingContext>::deinit(this + 256);
  re::DynamicArray<re::PrimitiveShapeGeometry>::deinit(this + 208);
  v2 = *(this + 24);
  if (v2)
  {

    *(this + 24) = 0;
  }

  v3 = *(this + 23);
  if (v3)
  {

    *(this + 23) = 0;
  }

  v4 = *(this + 22);
  if (v4)
  {

    *(this + 22) = 0;
  }

  v5 = *(this + 12);
  if (v5)
  {

    *(this + 12) = 0;
  }

  v6 = *(this + 11);
  if (v6)
  {

    *(this + 11) = 0;
  }

  v7 = *(this + 10);
  if (v7)
  {

    *(this + 10) = 0;
  }
}

uint64_t re::PrimitiveRenderer::init(re::PrimitiveRenderer *this, id *a2)
{
  *(this + 31) = a2;
  re::createCube(this + 16, a2 + 26);
  re::createCylinder(4uLL, this + 112, (*(this + 31) + 208));
  re::PrimitiveRenderer::createUnitBox(this);
  re::PrimitiveRenderer::createRectangle(this);
  re::PrimitiveRenderer::createCylinder(this, 0x10uLL);
  re::PrimitiveRenderer::createUVSphere(this, 0x10uLL);
  re::PrimitiveRenderer::createCone(this, 0x10uLL);
  re::PrimitiveRenderer::createCapsule(this, 0x10uLL);
  re::PrimitiveRenderer::createBoneBipyramid(this);
  result = re::PrimitiveRenderer::createHemisphere(this, 0x10uLL);
  *this = 1;
  return result;
}

void re::PrimitiveRenderer::createUnitBox(re::PrimitiveRenderer *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(this + 31);
  v3.i64[0] = 0x7F0000007FLL;
  v3.i64[1] = 0x7F0000007FLL;
  v5 = vnegq_f32(v3);
  v6 = v3;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  re::createCube(v4, (v2 + 208));
  re::DynamicArray<re::PrimitiveShapeGeometry>::add((this + 208), v4);
  if (v9)
  {

    v9 = 0;
  }

  if (v8)
  {

    v8 = 0;
  }

  if (v7)
  {
  }
}

void re::PrimitiveRenderer::createRectangle(re::PrimitiveRenderer *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(this + 31);
  v3.i64[0] = 0x7F0000007FLL;
  v3.i64[1] = 0x7F0000007FLL;
  v9 = vnegq_f32(v3);
  v10 = v3;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v17[0] = xmmword_1E30A2490;
  v17[1] = unk_1E30A24A0;
  v17[2] = xmmword_1E30A24B0;
  v17[3] = unk_1E30A24C0;
  v16[0] = xmmword_1E30A24D0;
  v16[1] = unk_1E30A24E0;
  v16[2] = xmmword_1E30A24F0;
  v16[3] = unk_1E30A2500;
  v15 = 3;
  v14 = 0x2000200010000;
  v7[0] = xmmword_1E30A23F0;
  v7[1] = xmmword_1E3060D60;
  v6[0] = v17;
  v6[1] = 4;
  v5[0] = &v14;
  v5[1] = 6;
  v4[0] = v16;
  v4[1] = 4;
  re::setShape(v6, v5, v4, v8, (v2 + 208), v7);
  re::DynamicArray<re::PrimitiveShapeGeometry>::add((this + 208), v8);
  if (v13)
  {

    v13 = 0;
  }

  if (v12)
  {

    v12 = 0;
  }

  if (v11)
  {
  }
}

void re::PrimitiveRenderer::createCylinder(re::PrimitiveRenderer *this, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(this + 31);
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  v6 = vnegq_f32(v4);
  v7 = v4;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  re::createCylinder(a2, v5, (v3 + 208));
  re::DynamicArray<re::PrimitiveShapeGeometry>::add((this + 208), v5);
  if (v10)
  {

    v10 = 0;
  }

  if (v9)
  {

    v9 = 0;
  }

  if (v8)
  {
  }
}

void re::PrimitiveRenderer::createUVSphere(re::PrimitiveRenderer *this, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(this + 31);
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  v6 = vnegq_f32(v4);
  v7 = v4;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  re::createUVSphere(a2, v5, (v3 + 208), 0.0);
  re::DynamicArray<re::PrimitiveShapeGeometry>::add((this + 208), v5);
  if (v10)
  {

    v10 = 0;
  }

  if (v9)
  {

    v9 = 0;
  }

  if (v8)
  {
  }
}

uint64_t re::PrimitiveRenderer::createCone(re::PrimitiveRenderer *this, unint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v33[1] = 0;
  v34 = 0;
  v32 = 0;
  v33[0] = 0;
  v35 = 0;
  v29[1] = 0;
  v30 = 0;
  v29[0] = 0;
  v31 = 0;
  v28 = xmmword_1E3047690;
  if (a2)
  {
    v4 = 0;
    v5 = 6.2832 / a2;
    do
    {
      v6 = __sincosf_stret(v5 * v4++);
      v7 = __sincosf_stret(v5 * v4);
      v8.n128_u32[0] = 0;
      v8.n128_u32[1] = LODWORD(v6.__cosval);
      v8.n128_u64[1] = LODWORD(v6.__sinval);
      v37[0] = v8;
      v8.n128_u32[0] = 0;
      v8.n128_u32[1] = LODWORD(v7.__cosval);
      v8.n128_u64[1] = LODWORD(v7.__sinval);
      v23 = v8;
      v27 = xmmword_1E3047670;
      re::DynamicArray<re::Vector3<float>>::add(v33, &v27);
      re::DynamicArray<re::Vector3<float>>::add(v33, v37);
      re::DynamicArray<re::Vector3<float>>::add(v33, &v23);
      v9 = vaddq_f32(v37[0], xmmword_1E30661F0);
      v10 = vaddq_f32(v23, xmmword_1E30661F0);
      v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vnegq_f32(v9)), v10, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
      v12 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
      v13 = vmulq_f32(v11, v11);
      *&v14 = v13.f32[1] + (v13.f32[2] + v13.f32[0]);
      *v13.f32 = vrsqrte_f32(v14);
      *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
      v27 = vmulq_n_f32(v12, vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]);
      re::DynamicArray<re::Vector3<float>>::add(v29, &v27);
      re::DynamicArray<re::Vector3<float>>::add(v29, &v27);
      re::DynamicArray<re::Vector3<float>>::add(v29, &v27);
      v26 = 0uLL;
      re::DynamicArray<re::Vector3<float>>::add(v33, &v26);
      re::DynamicArray<re::Vector3<float>>::add(v33, &v23);
      re::DynamicArray<re::Vector3<float>>::add(v33, v37);
      re::DynamicArray<re::Vector3<float>>::add(v29, &v28);
      re::DynamicArray<re::Vector3<float>>::add(v29, &v28);
      re::DynamicArray<re::Vector3<float>>::add(v29, &v28);
    }

    while (a2 != v4);
    v15 = v36;
    v16 = v34;
    v17 = v32;
    v18 = v30;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
  }

  v19 = *(this + 31);
  v20.i64[0] = 0x7F0000007FLL;
  v20.i64[1] = 0x7F0000007FLL;
  v37[2] = vnegq_f32(v20);
  v37[3] = v20;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v23 = xmmword_1E30A2400;
  v24 = 0x3F8000003F800000;
  v25 = 1065353216;
  v27.i64[0] = v15;
  v27.i64[1] = v16;
  v26 = 0uLL;
  v22[0] = v17;
  v22[1] = v18;
  re::setShape(&v27, &v26, v22, v37, (v19 + 208), &v23);
  re::DynamicArray<re::PrimitiveShapeGeometry>::add((this + 208), v37);
  if (v40)
  {

    v40 = 0;
  }

  if (v39)
  {

    v39 = 0;
  }

  if (v38)
  {
  }

  if (v29[0] && v32)
  {
    (*(*v29[0] + 40))();
  }

  result = v33[0];
  if (v33[0])
  {
    if (v36)
    {
      return (*(*v33[0] + 40))();
    }
  }

  return result;
}

void re::PrimitiveRenderer::createCapsule(re::PrimitiveRenderer *this, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(this + 31);
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  v6 = vnegq_f32(v4);
  v7 = v4;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  re::createUVSphere(a2, v5, (v3 + 208), 2.0);
  re::DynamicArray<re::PrimitiveShapeGeometry>::add((this + 208), v5);
  if (v10)
  {

    v10 = 0;
  }

  if (v9)
  {

    v9 = 0;
  }

  if (v8)
  {
  }
}

uint64_t re::PrimitiveRenderer::createBoneBipyramid(re::PrimitiveRenderer *this)
{
  v2 = 0;
  v39 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v31[1] = 0;
  v32 = 0;
  v30 = 0;
  v31[0] = 0;
  v33 = 0;
  v27[1] = 0;
  v28 = 0;
  v27[0] = 0;
  v3 = xmmword_1E3047670;
  v26 = xmmword_1E3047670;
  LODWORD(v3) = 1036831949;
  v19 = v3;
  v29 = 0;
  do
  {
    v4 = v2 + 1;
    v5 = v19;
    v6 = v19;
    v6.f32[1] = flt_1E30A2410[v2] * *&v19;
    v6.f32[2] = flt_1E30A2410[(v2 + 1) & 3] * *&v19;
    v35[0] = v6;
    v5.i32[1] = v6.i32[2];
    v5.f32[2] = flt_1E30A2410[v2 ^ 2] * *&v19;
    v20 = v5;
    v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), vnegq_f32(v5)), v6, vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL));
    v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
    v9 = vmulq_f32(v7, v7);
    *&v10 = v9.f32[1] + (v9.f32[2] + v9.f32[0]);
    *v9.f32 = vrsqrte_f32(v10);
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
    v25 = vmulq_n_f32(v8, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
    v11 = vsubq_f32(v6, v26);
    v12 = vsubq_f32(v5, v26);
    v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), vnegq_f32(v11)), v12, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
    v14 = vmulq_f32(v13, v13);
    v5.f32[0] = v14.f32[1] + (v14.f32[2] + v14.f32[0]);
    v15 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
    *v13.f32 = vrsqrte_f32(v5.u32[0]);
    *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v5.u32[0], vmul_f32(*v13.f32, *v13.f32)));
    v24 = vmulq_n_f32(v15, vmul_f32(*v13.f32, vrsqrts_f32(v5.u32[0], vmul_f32(*v13.f32, *v13.f32))).f32[0]);
    v23 = 0uLL;
    re::DynamicArray<re::Vector3<float>>::add(v31, &v23);
    re::DynamicArray<re::Vector3<float>>::add(v31, &v20);
    re::DynamicArray<re::Vector3<float>>::add(v31, v35);
    re::DynamicArray<re::Vector3<float>>::add(v27, &v25);
    re::DynamicArray<re::Vector3<float>>::add(v27, &v25);
    re::DynamicArray<re::Vector3<float>>::add(v27, &v25);
    re::DynamicArray<re::Vector3<float>>::add(v31, &v26);
    re::DynamicArray<re::Vector3<float>>::add(v31, v35);
    re::DynamicArray<re::Vector3<float>>::add(v31, &v20);
    re::DynamicArray<re::Vector3<float>>::add(v27, &v24);
    re::DynamicArray<re::Vector3<float>>::add(v27, &v24);
    re::DynamicArray<re::Vector3<float>>::add(v27, &v24);
    v2 = v4;
  }

  while (v4 != 4);
  v16 = *(this + 31);
  v17.i64[0] = 0x7F0000007FLL;
  v17.i64[1] = 0x7F0000007FLL;
  v35[2] = vnegq_f32(v17);
  v35[3] = v17;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v20.n128_u64[0] = 0xBF800000BF800000;
  v20.n128_u64[1] = 3212836864;
  v21 = 0x3F8000003F800000;
  v22 = 1065353216;
  v25.i64[0] = v34;
  v25.i64[1] = v32;
  v24 = 0uLL;
  v23.n128_u64[0] = v30;
  v23.n128_u64[1] = v28;
  re::setShape(&v25, &v24, &v23, v35, (v16 + 208), &v20);
  re::DynamicArray<re::PrimitiveShapeGeometry>::add((this + 208), v35);
  if (v38)
  {

    v38 = 0;
  }

  if (v37)
  {

    v37 = 0;
  }

  if (v36)
  {
  }

  if (v27[0] && v30)
  {
    (*(*v27[0] + 40))();
  }

  result = v31[0];
  if (v31[0])
  {
    if (v34)
    {
      return (*(*v31[0] + 40))();
    }
  }

  return result;
}

uint64_t re::PrimitiveRenderer::createHemisphere(re::PrimitiveRenderer *this, unint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v44[1] = 0;
  v45 = 0;
  v44[0] = 0;
  v46 = 0;
  v43 = 0;
  v40[1] = 0;
  v41 = 0;
  v40[0] = 0;
  v42 = 0;
  v39 = xmmword_1E3047670;
  if (a2)
  {
    v4 = 6.2832 / a2;
    v5 = 3.1416 / (a2 >> 1);
    v7 = __sincosf_stret(v5);
    *&v6 = v7.__cosval;
    v30 = v6;
    v8 = 0;
    do
    {
      v9 = __sincosf_stret(v4 * v8++);
      v10 = __sincosf_stret(v4 * v8);
      v11 = v30;
      v12 = v30;
      v12.n128_f32[1] = v7.__sinval * v9.__cosval;
      v12.n128_f32[2] = v7.__sinval * v9.__sinval;
      v48[0] = v12;
      *(&v11 + 1) = v7.__sinval * v10.__cosval;
      *(&v11 + 2) = v7.__sinval * v10.__sinval;
      v32 = v11;
      re::DynamicArray<re::Vector3<float>>::add(v44, &v39);
      re::DynamicArray<re::Vector3<float>>::add(v44, v48);
      re::DynamicArray<re::Vector3<float>>::add(v44, &v32);
      re::DynamicArray<re::Vector3<float>>::add(v40, &v39);
      re::DynamicArray<re::Vector3<float>>::add(v40, v48);
      re::DynamicArray<re::Vector3<float>>::add(v40, &v32);
      if (a2 >= 8)
      {
        v13 = 1;
        do
        {
          v15 = __sincosf_stret(v5 * v13);
          v14.f32[0] = v15.__cosval;
          v31 = v14;
          v17 = __sincosf_stret(v5 * ++v13);
          v16.n128_f32[0] = v17.__cosval;
          v18 = v31;
          v18.f32[1] = v9.__cosval * v15.__sinval;
          v18.f32[2] = v9.__sinval * v15.__sinval;
          v19 = v16;
          v19.n128_f32[1] = v9.__cosval * v17.__sinval;
          v19.n128_f32[2] = v9.__sinval * v17.__sinval;
          v37 = v19;
          v38 = v18;
          v16.n128_f32[1] = v10.__cosval * v17.__sinval;
          v16.n128_f32[2] = v10.__sinval * v17.__sinval;
          v36 = v16;
          v20 = v31;
          v20.n128_f32[1] = v10.__cosval * v15.__sinval;
          v20.n128_f32[2] = v10.__sinval * v15.__sinval;
          v35 = v20;
          re::DynamicArray<re::Vector3<float>>::add(v44, &v38);
          re::DynamicArray<re::Vector3<float>>::add(v44, &v37);
          re::DynamicArray<re::Vector3<float>>::add(v44, &v36);
          re::DynamicArray<re::Vector3<float>>::add(v40, &v38);
          re::DynamicArray<re::Vector3<float>>::add(v40, &v37);
          re::DynamicArray<re::Vector3<float>>::add(v40, &v36);
          re::DynamicArray<re::Vector3<float>>::add(v44, &v38);
          re::DynamicArray<re::Vector3<float>>::add(v44, &v36);
          re::DynamicArray<re::Vector3<float>>::add(v44, &v35);
          re::DynamicArray<re::Vector3<float>>::add(v40, &v38);
          re::DynamicArray<re::Vector3<float>>::add(v40, &v36);
          re::DynamicArray<re::Vector3<float>>::add(v40, &v35);
        }

        while (a2 >> 2 != v13);
      }

      v21.n128_u32[0] = 0;
      v21.n128_u32[1] = LODWORD(v9.__cosval);
      v21.n128_u64[1] = LODWORD(v9.__sinval);
      LODWORD(v22) = 0;
      DWORD1(v22) = LODWORD(v10.__cosval);
      v48[0] = v21;
      *(&v22 + 1) = LODWORD(v10.__sinval);
      v32 = v22;
      v38 = 0uLL;
      re::DynamicArray<re::Vector3<float>>::add(v44, &v38);
      re::DynamicArray<re::Vector3<float>>::add(v44, &v32);
      re::DynamicArray<re::Vector3<float>>::add(v44, v48);
      v38 = vnegq_f32(v39);
      re::DynamicArray<re::Vector3<float>>::add(v40, &v38);
      v38 = vnegq_f32(v39);
      re::DynamicArray<re::Vector3<float>>::add(v40, &v38);
      v38 = vnegq_f32(v39);
      re::DynamicArray<re::Vector3<float>>::add(v40, &v38);
    }

    while (v8 != a2);
    v23 = v47;
    v24 = v45;
    v25 = v43;
    v26 = v41;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
  }

  v27 = *(this + 31);
  v28.i64[0] = 0x7F0000007FLL;
  v28.i64[1] = 0x7F0000007FLL;
  v48[2] = vnegq_f32(v28);
  v48[3] = v28;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v32 = xmmword_1E30A2400;
  v33 = 0x3F8000003F800000;
  v34 = 1065353216;
  v38.i64[0] = v23;
  v38.i64[1] = v24;
  v37 = 0uLL;
  v36.n128_u64[0] = v25;
  v36.n128_u64[1] = v26;
  re::setShape(&v38, &v37, &v36, v48, (v27 + 208), &v32);
  re::DynamicArray<re::PrimitiveShapeGeometry>::add((this + 208), v48);
  if (v51)
  {

    v51 = 0;
  }

  if (v50)
  {

    v50 = 0;
  }

  if (v49)
  {
  }

  if (v40[0] && v43)
  {
    (*(*v40[0] + 40))();
  }

  result = v44[0];
  if (v44[0])
  {
    if (v47)
    {
      return (*(*v44[0] + 40))(v44[0]);
    }
  }

  return result;
}

uint64_t re::createCylinder(unint64_t a1, uint64_t a2, id *a3)
{
  v34 = 0;
  v31[1] = 0;
  v32 = 0;
  v31[0] = 0;
  v33 = 0;
  v30 = 0;
  v27[1] = 0;
  v28 = 0;
  v27[0] = 0;
  v29 = 0;
  v26 = 0uLL;
  v25 = xmmword_1E3047670;
  if (a1)
  {
    v6 = 6.2832 / a1;
    for (i = 1; i <= a1; ++i)
    {
      v8 = __sincosf_stret(v6 * (i - 1));
      v9 = __sincosf_stret(v6 * i);
      v10.n128_u32[0] = 0;
      v10.n128_u32[1] = LODWORD(v8.__cosval);
      v10.n128_u64[1] = LODWORD(v8.__sinval);
      v22[0] = v10;
      v10.n128_u32[0] = 0;
      v10.n128_u32[1] = LODWORD(v9.__cosval);
      v10.n128_u64[1] = LODWORD(v9.__sinval);
      v24 = v10;
      re::DynamicArray<re::Vector3<float>>::add(v31, &v26);
      re::DynamicArray<re::Vector3<float>>::add(v31, &v24);
      re::DynamicArray<re::Vector3<float>>::add(v31, v22);
      v23 = vnegq_f32(v25);
      re::DynamicArray<re::Vector3<float>>::add(v27, &v23);
      v23 = vnegq_f32(v25);
      re::DynamicArray<re::Vector3<float>>::add(v27, &v23);
      v23 = vnegq_f32(v25);
      re::DynamicArray<re::Vector3<float>>::add(v27, &v23);
      re::DynamicArray<re::Vector3<float>>::add(v31, &v25);
      v23 = vaddq_f32(v22[0], v25);
      re::DynamicArray<re::Vector3<float>>::add(v31, &v23);
      v23 = vaddq_f32(v24, v25);
      re::DynamicArray<re::Vector3<float>>::add(v31, &v23);
      re::DynamicArray<re::Vector3<float>>::add(v27, &v25);
      re::DynamicArray<re::Vector3<float>>::add(v27, &v25);
      re::DynamicArray<re::Vector3<float>>::add(v27, &v25);
      re::DynamicArray<re::Vector3<float>>::add(v31, v22);
      re::DynamicArray<re::Vector3<float>>::add(v31, &v24);
      v23 = vaddq_f32(v22[0], v25);
      re::DynamicArray<re::Vector3<float>>::add(v31, &v23);
      re::DynamicArray<re::Vector3<float>>::add(v27, v22);
      re::DynamicArray<re::Vector3<float>>::add(v27, &v24);
      re::DynamicArray<re::Vector3<float>>::add(v27, v22);
      v23 = vaddq_f32(v24, v25);
      re::DynamicArray<re::Vector3<float>>::add(v31, &v23);
      v23 = vaddq_f32(v22[0], v25);
      re::DynamicArray<re::Vector3<float>>::add(v31, &v23);
      re::DynamicArray<re::Vector3<float>>::add(v31, &v24);
      re::DynamicArray<re::Vector3<float>>::add(v27, &v24);
      re::DynamicArray<re::Vector3<float>>::add(v27, v22);
      re::DynamicArray<re::Vector3<float>>::add(v27, &v24);
    }

    v11 = v34;
    v12 = v32;
    v13 = v30;
    v14 = v28;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
  }

  __asm { FMOV            V1.4S, #1.0 }

  v22[0] = xmmword_1E30A2400;
  v22[1] = _Q1;
  v24.i64[0] = v11;
  v24.i64[1] = v12;
  v23 = 0uLL;
  v21[0] = v13;
  v21[1] = v14;
  re::setShape(&v24, &v23, v21, a2, a3, v22);
  if (v27[0] && v30)
  {
    (*(*v27[0] + 40))();
  }

  result = v31[0];
  if (v31[0])
  {
    if (v34)
    {
      return (*(*v31[0] + 40))(v31[0]);
    }
  }

  return result;
}

id re::DynamicArray<re::PrimitiveShapeGeometry>::add(_anonymous_namespace_ *this, id *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PrimitiveShapeGeometry>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 96 * v4;
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 3);
  *(v5 + 32) = *(a2 + 2);
  *(v5 + 48) = v8;
  *v5 = v6;
  *(v5 + 16) = v7;
  *(v5 + 64) = a2[8];
  *(v5 + 72) = a2[9];
  result = a2[10];
  *(v5 + 80) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::createCube(uint64_t a1, id *a2)
{
  v35[72] = *MEMORY[0x1E69E9840];
  v4 = v33;
  bzero(v33, 0x240uLL);
  bzero(v32, 0x240uLL);
  v5 = 0;
  v6 = 0;
  v7 = &v34;
  v8 = v35;
  v9 = 1;
  v10 = 2;
  v11 = v32;
  do
  {
    v12 = -1;
    v13 = v10;
    v14 = v8;
    v15 = v9;
    v16 = v7;
    do
    {
      v17 = 0;
      v18 = v12;
      v19 = v12;
      v20 = &v11[v6];
      v21 = v16 + 16 * v6 - 12 * (v15 / 3);
      v22 = v14 + 16 * v6 - 12 * (v13 / 3);
      v23 = &v4[16 * v6];
      v24 = 5u;
      do
      {
        *&v23[1 * v17] = v19;
        *(v22 + 1 * v17) = dword_1E30A2474[v17];
        *(v21 + 1 * v17) = dword_1E30A2474[v24];
        v25 = &v32[v6];
        *v25 = 0;
        v25[1] = 0;
        *&v20[v17] = v19;
        ++v6;
        ++v17;
        --v24;
      }

      while (v17 != 6);
      v12 = v18 + 2;
      v16 += 4;
      v15 += 4;
      ++v14;
      v13 += 2;
    }

    while (v18 < 0);
    ++v5;
    v11 = (v11 + 4);
    ++v7;
    ++v9;
    v8 = (v8 + 4);
    ++v10;
    v4 += 4;
  }

  while (v5 != 3);
  v29.i64[0] = 0xBF800000BF800000;
  v29.i64[1] = 3212836864;
  v30 = 0x3F8000003F800000;
  v31 = 1065353216;
  v28[0] = v33;
  v28[1] = 36;
  v27[0] = 0;
  v27[1] = 0;
  v26[0] = v32;
  v26[1] = 36;
  re::setShape(v28, v27, v26, a1, a2, &v29);
}

uint64_t re::createUVSphere(unint64_t a1, uint64_t a2, id *a3, float a4)
{
  v37 = a4 * 0.5;
  v53 = 0;
  v50[1] = 0;
  v51 = 0;
  v50[0] = 0;
  v52 = 0;
  v49 = 0;
  v46[1] = 0;
  v47 = 0;
  v46[0] = 0;
  v48 = 0;
  v42 = COERCE_UNSIGNED_INT(-1.0 - (a4 * 0.5));
  re::DynamicArray<re::Vector3<float>>::add(v50, &v42);
  v42 = xmmword_1E3047690;
  re::DynamicArray<re::Vector3<float>>::add(v46, &v42);
  v42 = COERCE_UNSIGNED_INT(v37 + 1.0);
  re::DynamicArray<re::Vector3<float>>::add(v50, &v42);
  v42 = xmmword_1E3047670;
  re::DynamicArray<re::Vector3<float>>::add(v46, &v42);
  v8 = 2 * a1;
  if (2 * a1)
  {
    v9 = 0;
    v10 = 3.1416 / a1;
    v11 = a1 >> 1;
    do
    {
      if (a1 >= 2)
      {
        v12 = __sincosf_stret(v10 * v9);
        v13 = 1;
        do
        {
          v14 = __sincosf_stret((v10 * v13) + -1.5708);
          v15.f32[0] = v14.__sinval;
          v15.f32[1] = v14.__cosval * -v12.__sinval;
          v15.f32[2] = v12.__cosval * v14.__cosval;
          v42 = v15;
          if (v13 <= v11)
          {
            v16 = vsubq_f32(v15, LODWORD(v37));
          }

          else
          {
            v16 = vaddq_f32(LODWORD(v37), v15);
          }

          v41[0] = v16;
          re::DynamicArray<re::Vector3<float>>::add(v50, v41);
          re::DynamicArray<re::Vector3<float>>::add(v46, &v42);
          if (a4 != 0.0 && v11 == v13)
          {
            v41[0] = vaddq_f32(LODWORD(v37), v42);
            re::DynamicArray<re::Vector3<float>>::add(v50, v41);
            re::DynamicArray<re::Vector3<float>>::add(v46, &v42);
          }

          ++v13;
        }

        while (a1 != v13);
      }

      ++v9;
    }

    while (v9 != v8);
    v36 = a3;
    v17 = 0;
    v45 = 0;
    if (a4 != 0.0)
    {
      ++a1;
    }

    v18 = a1 - 1;
    v43 = 0;
    v42 = 0uLL;
    v44 = 0;
    v19 = 2;
    do
    {
      v20 = v17++;
      if (v17 == v8)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20 + 1;
      }

      v41[0].n128_u16[0] = 0;
      re::DynamicArray<unsigned short>::add(&v42, v41);
      v22 = v21 * v18;
      v23 = v22 + 2;
      v41[0].n128_u16[0] = v22 + 2;
      re::DynamicArray<unsigned short>::add(&v42, v41);
      v24 = v20 * v18;
      v41[0].n128_u16[0] = v24 + 2;
      re::DynamicArray<unsigned short>::add(&v42, v41);
      v41[0].n128_u16[0] = 1;
      re::DynamicArray<unsigned short>::add(&v42, v41);
      v41[0].n128_u16[0] = v24 + a1;
      re::DynamicArray<unsigned short>::add(&v42, v41);
      v41[0].n128_u16[0] = v22 + a1;
      re::DynamicArray<unsigned short>::add(&v42, v41);
      if (v18 >= 2)
      {
        v25 = v19;
        v26 = a1 - 2;
        do
        {
          v41[0].n128_u16[0] = v25;
          re::DynamicArray<unsigned short>::add(&v42, v41);
          v41[0].n128_u16[0] = v23;
          re::DynamicArray<unsigned short>::add(&v42, v41);
          v41[0].n128_u16[0] = v25 + 1;
          re::DynamicArray<unsigned short>::add(&v42, v41);
          v41[0].n128_u16[0] = v23 + 1;
          re::DynamicArray<unsigned short>::add(&v42, v41);
          v41[0].n128_u16[0] = v25 + 1;
          re::DynamicArray<unsigned short>::add(&v42, v41);
          v41[0].n128_u16[0] = v23;
          re::DynamicArray<unsigned short>::add(&v42, v41);
          ++v23;
          ++v25;
          --v26;
        }

        while (v26);
      }

      v19 += v18;
    }

    while (v17 != v8);
    v27 = v45;
    v28 = v43;
    a3 = v36;
  }

  else
  {
    v28 = 0;
    v27 = 0;
    v45 = 0;
    v43 = 0;
    v42 = 0uLL;
    v44 = 0;
  }

  __asm { FMOV            V2.4S, #-1.0 }

  _Q2.n128_f32[0] = -1.0 - (a4 * 0.5);
  __asm { FMOV            V1.4S, #1.0 }

  _Q1.n128_f32[0] = (a4 * 0.5) + 1.0;
  v41[0] = _Q2;
  v41[1] = _Q1;
  v40[0] = v53;
  v40[1] = v51;
  v39[0] = v27;
  v39[1] = v28;
  v38[0] = v49;
  v38[1] = v47;
  re::setShape(v40, v39, v38, a2, a3, v41);
  if (v42.i64[0])
  {
    if (v45)
    {
      (*(*v42.i64[0] + 40))();
    }

    v45 = 0;
  }

  if (v46[0] && v49)
  {
    (*(*v46[0] + 40))();
  }

  result = v50[0];
  if (v50[0])
  {
    if (v53)
    {
      return (*(*v50[0] + 40))(v50[0]);
    }
  }

  return result;
}

void re::setShape(float32x4_t **a1, void *a2, void *a3, uint64_t a4, id *a5, float32x4_t *a6)
{
  if (a6)
  {
    v11 = *a6;
    v10 = a6[1];
    v12 = a1[1];
  }

  else
  {
    v12 = a1[1];
    if (v12)
    {
      v13 = *a1;
      v10.i64[0] = 0x7F0000007FLL;
      v10.i64[1] = 0x7F0000007FLL;
      v11 = vnegq_f32(v10);
      v14 = 16 * v12;
      do
      {
        v15 = *v13++;
        v16 = v15;
        v11.i32[3] = 0;
        v16.i32[3] = 0;
        v11 = vminnmq_f32(v11, v16);
        v10.i32[3] = 0;
        v10 = vmaxnmq_f32(v10, v16);
        v14 -= 16;
      }

      while (v14);
    }

    else
    {
      v10.i64[0] = 0x7F0000007FLL;
      v10.i64[1] = 0x7F0000007FLL;
      v11 = vnegq_f32(v10);
    }
  }

  *a4 = 3;
  *(a4 + 8) = v12;
  *(a4 + 16) = a2[1];
  *(a4 + 32) = v11;
  *(a4 + 48) = v10;
  v21 = [*a5 newBufferWithBytes:*a1 length:16 * a1[1] options:0];
  NS::SharedPtr<MTL::Texture>::operator=((a4 + 64), &v21);
  if (v21)
  {
  }

  *(a4 + 72) = 0;
  v17 = a2[1];
  if (v17)
  {
    v21 = [*a5 newBufferWithBytes:*a2 length:2 * v17 options:0];
    NS::SharedPtr<MTL::Texture>::operator=((a4 + 72), &v21);
    if (v21)
    {
    }
  }

  v19 = *(a4 + 80);
  v18 = (a4 + 80);

  *v18 = 0;
  v20 = a3[1];
  if (v20)
  {
    v21 = [*a5 newBufferWithBytes:*a3 length:16 * v20 options:0];
    NS::SharedPtr<MTL::Texture>::operator=(v18, &v21);
    if (v21)
    {
    }
  }
}

uint64_t re::PrimitiveRenderer::addCustomShape(void *a1, float32x4_t **a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a1[31];
  v6.i64[0] = 0x7F0000007FLL;
  v6.i64[1] = 0x7F0000007FLL;
  v10 = vnegq_f32(v6);
  v11 = v6;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  re::setShape(a2, a3, a4, v9, (v5 + 208), 0);
  v7 = a1[28];
  re::DynamicArray<re::PrimitiveShapeGeometry>::add((a1 + 26), v9);
  if (v14)
  {

    v14 = 0;
  }

  if (v13)
  {

    v13 = 0;
  }

  if (v12)
  {
  }

  return v7;
}

uint64_t re::PrimitiveRenderer::submitContext(uint64_t a1, unint64_t *a2)
{
  re::DynamicArray<re::PrimitiveRenderingContext>::add((a1 + 256), a2);
  re::PrimitiveRenderingDynamicGeometry::init(a2, a2[147]);

  return re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::clear((a2 + 132));
}

__n128 re::DynamicArray<re::PrimitiveRenderingContext>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PrimitiveRenderingContext>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = re::PrimitiveRenderingDynamicGeometry::PrimitiveRenderingDynamicGeometry(*(this + 4) + 1200 * v4, a2);
  *(v5 + 1088) = 0;
  *(v5 + 1080) = 0;
  *(v5 + 1072) = 0;
  *(v5 + 1064) = 0;
  *(v5 + 1056) = 0;
  *(v5 + 1056) = *(a2 + 1056);
  *(a2 + 1056) = 0;
  *(v5 + 1064) = *(a2 + 1064);
  *(a2 + 1064) = 0;
  v6 = *(v5 + 1072);
  *(v5 + 1072) = *(a2 + 1072);
  *(a2 + 1072) = v6;
  v7 = *(v5 + 1088);
  *(v5 + 1088) = *(a2 + 1088);
  *(a2 + 1088) = v7;
  ++*(a2 + 1080);
  ++*(v5 + 1080);
  v8 = *(a2 + 1096);
  v9 = *(a2 + 1112);
  *(v5 + 1128) = *(a2 + 1128);
  *(v5 + 1096) = v8;
  *(v5 + 1112) = v9;
  *(v5 + 1168) = 0;
  *(v5 + 1136) = 0;
  *(v5 + 1152) = 0;
  *(v5 + 1144) = 0;
  *(v5 + 1160) = 0;
  *(v5 + 1136) = *(a2 + 1136);
  *(a2 + 1136) = 0;
  *(v5 + 1144) = *(a2 + 1144);
  *(a2 + 1144) = 0;
  v10 = *(v5 + 1152);
  *(v5 + 1152) = *(a2 + 1152);
  *(a2 + 1152) = v10;
  v11 = *(v5 + 1168);
  *(v5 + 1168) = *(a2 + 1168);
  *(a2 + 1168) = v11;
  ++*(a2 + 1160);
  ++*(v5 + 1160);
  result = *(a2 + 1176);
  *(v5 + 1192) = *(a2 + 1192);
  *(v5 + 1176) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::attributeDefaultValue@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result <= 2)
  {
    goto LABEL_6;
  }

  if ((result - 3) < 2)
  {
LABEL_10:
    *a3 = 0;
    *(a3 + 8) = 0;
    v5 = 2;
    goto LABEL_12;
  }

  if (result == 5)
  {
LABEL_11:
    *a3 = 0x3F8000003F800000;
    *(a3 + 8) = 0x3F8000003F800000;
    v5 = 3;
    goto LABEL_12;
  }

  if (result != 6)
  {
    do
    {
      v6 = v3;
      v3 = &v6;
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) incorrect attribute", "!Unreachable code", "attributeDefaultValue", 562, v6, v4);
      result = _os_crash();
      __break(1u);
LABEL_6:
      if (!result)
      {
        goto LABEL_10;
      }

      if (result == 1)
      {
        goto LABEL_11;
      }
    }

    while (result != 2);
  }

  v5 = 0;
  *a3 = 1065353216;
LABEL_12:
  *(a3 + 16) = v5;
  return result;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::attributeDefaultValue(uint64_t result, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v4 = 0x3F8000003F800000;
      v6 = 2;
      v5 = 1065353216;
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      v4 = 0x3F8000003F800000;
      v6 = 3;
      v5 = 0x3F8000003F800000;
      goto LABEL_10;
    }
  }

  else
  {
    if (!a2)
    {
      v4 = 0;
      v5 = 0;
      v6 = 2;
      goto LABEL_10;
    }

    if (a2 == 1)
    {
      v4 = 0;
      v5 = 0x3F80000000000000;
      v6 = 4;
LABEL_10:
      *result = v4;
      *(result + 8) = v5;
      *(result + 16) = v6;
      return result;
    }
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) incorrect attribute", "!Unreachable code", "attributeDefaultValue", 581, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::PrimitiveRenderingDynamicGeometry::init(re::PrimitiveRenderingDynamicGeometry *this, unint64_t a2)
{
  v4 = 0;
  v27 = *MEMORY[0x1E69E9840];
  *(this + 517) = 0;
  *(this + 513) = 0;
  do
  {
    v5 = this + v4;
    *(v5 + 2) = 0;
    *(v5 + 6) = *(this + v4 + 24) + 1;
    v4 += 40;
  }

  while (v4 != 280);
  *(this + 512) = 1;
  *(this + 515) = 257;
  if (*(this + 84) != 3)
  {
    *(this + 84) = 3;
  }

  *(this + 40) = 0x3F8000003F800000;
  *(this + 41) = 0x3F8000003F800000;
  if (*(this + 92))
  {
    *(this + 92) = 0;
  }

  *(this + 88) = 1065353216;
  if (*(this + 116) != 3)
  {
    *(this + 116) = 3;
  }

  *(this + 56) = 0x3F8000003F800000;
  *(this + 57) = 0x3F8000003F800000;
  if (*(this + 124))
  {
    *(this + 124) = 0;
  }

  *(this + 120) = 1065353216;
  *(this + 520) = 0u;
  re::DynamicArray<unsigned long>::resize(this + 1016, a2);
  for (i = 0; i != 4; ++i)
  {
    v7 = this + 40 * i + 536;
    v8 = *(v7 + 2);
    if (v8 >= a2)
    {
      if (v8 <= a2)
      {
        goto LABEL_23;
      }

      v12 = 40 * a2;
      v13 = a2;
      do
      {
        re::DynamicArray<unsigned long>::deinit(*(v7 + 4) + v12);
        ++v13;
        v12 += 40;
      }

      while (v13 < *(v7 + 2));
    }

    else
    {
      if (*(v7 + 1) < a2)
      {
        re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(this + 5 * i + 67, a2);
        v8 = *(v7 + 2);
      }

      v9 = a2 - v8;
      if (a2 > v8)
      {
        v10 = 40 * v8;
        do
        {
          v11 = *(v7 + 4) + v10;
          *(v11 + 32) = 0;
          *(v11 + 8) = 0;
          *(v11 + 16) = 0;
          *v11 = 0;
          *(v11 + 24) = 0;
          v10 += 40;
          --v9;
        }

        while (v9);
      }
    }

    *(v7 + 2) = a2;
    ++*(v7 + 6);
LABEL_23:
    v14 = this + 40 * i + 696;
    v15 = *(v14 + 2);
    if (v15 >= a2)
    {
      if (v15 <= a2)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (*(v14 + 1) < a2)
      {
        re::DynamicArray<re::AABB>::setCapacity(this + 5 * i + 87, a2);
        v15 = *(v14 + 2);
      }

      if (a2 > v15 && (a2 - v15) >= 1)
      {
        v16 = (*(v14 + 4) + 32 * v15);
        v17 = a2 + 1 - v15;
        do
        {
          *v16 = 0;
          v16[4] = 0;
          v16 += 8;
          --v17;
        }

        while (v17 > 1);
      }
    }

    *(v14 + 2) = a2;
    ++*(v14 + 6);
LABEL_33:
    re::DynamicArray<BOOL>::resize(this + 40 * i + 856, a2);
  }

  if (!a2)
  {
    return;
  }

  v18 = 0;
  do
  {
    if (*(this + 129) <= v18)
    {
      goto LABEL_47;
    }

    v19 = 0;
    *(*(this + 131) + 8 * v18) = 0;
    do
    {
      v20 = this + v19;
      if (*(this + v19 + 552) <= v18)
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_46:
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_47:
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_48:
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_49:
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v21 = *(v20 + 71) + 40 * v18;
      *(v21 + 16) = 0;
      ++*(v21 + 24);
      if (*(v20 + 109) <= v18)
      {
        goto LABEL_46;
      }

      *(*(this + v19 + 888) + v18) = 0;
      v19 += 40;
    }

    while (v19 != 160);
    if (*(this + 109) <= v18)
    {
      goto LABEL_48;
    }

    *(*(this + 111) + v18) = 1;
    if (*(this + 114) <= v18)
    {
      goto LABEL_49;
    }

    *(*(this + 116) + v18) = 1;
    v22.n128_u64[0] = 0x3F8000003F800000;
    v22.n128_u64[1] = 1065353216;
    LODWORD(v23) = 2;
    re::PrimitiveRenderingDynamicGeometry::setUniform<re::Vector3<float>,unsigned long>(this, v18, 2u, &v22);
    v22.n128_u64[0] = 0x3F8000003F800000;
    v22.n128_u64[1] = 0x3F8000003F800000;
    LODWORD(v23) = 3;
    re::PrimitiveRenderingDynamicGeometry::setUniform<re::Vector4<float>,unsigned long>(this, v18++, 3u, &v22);
  }

  while (v18 != a2);
}

re::PrimitiveRenderingContext *re::PrimitiveRenderingContext::PrimitiveRenderingContext(re::PrimitiveRenderingContext *this, unint64_t a2, re::RenderManager *a3)
{
  for (i = 0; i != 280; i += 40)
  {
    v7 = this + i;
    *(v7 + 4) = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *v7 = 0;
    *(v7 + 6) = 0;
  }

  for (j = 0; j != 224; j += 32)
  {
    v9 = this + j;
    *(v9 + 72) = 0;
    *(v9 + 76) = 0;
  }

  for (k = 0; k != 160; k += 40)
  {
    v11 = this + k;
    *(v11 + 71) = 0;
    *(v11 + 67) = 0;
    *(v11 + 69) = 0;
    *(v11 + 68) = 0;
    *(v11 + 140) = 0;
  }

  for (m = 0; m != 160; m += 40)
  {
    v13 = this + m;
    *(v13 + 91) = 0;
    *(v13 + 87) = 0;
    *(v13 + 89) = 0;
    *(v13 + 88) = 0;
    *(v13 + 180) = 0;
  }

  for (n = 0; n != 160; n += 40)
  {
    v15 = this + n;
    *(v15 + 111) = 0;
    *(v15 + 107) = 0;
    *(v15 + 109) = 0;
    *(v15 + 108) = 0;
    *(v15 + 220) = 0;
  }

  *(this + 260) = 0;
  *(this + 129) = 0;
  *(this + 1016) = 0u;
  *(this + 270) = 0;
  *(this + 1048) = 0u;
  *(this + 1064) = 0u;
  *(this + 68) = 0u;
  *(this + 69) = 0u;
  *(this + 140) = 0;
  *(this + 282) = 16843009;
  *(this + 146) = 0;
  *(this + 142) = 0;
  *(this + 290) = 0;
  *(this + 1144) = 0u;
  *(this + 1184) = 1;
  re::PrimitiveRenderingDynamicGeometry::init(this, a2);
  *(this + 147) = a2;
  *(this + 149) = a3;
  return this;
}

uint64_t re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::clear(uint64_t result)
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
      result = re::DynamicArray<re::PrimitiveMeshAttribute>::deinit(v3);
      v3 += 96;
      v4 -= 96;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

BOOL re::PrimitiveRenderingContext::isEmpty(re::PrimitiveRenderingContext *this)
{
  v2 = *(this + 2);
  if (v2 && (v2 << 7) - 128 + *(this + 65))
  {
    return 0;
  }

  v3 = *(this + 17);
  if (v3)
  {
    if ((v3 << 7) - 128 + *(this + 66))
    {
      return 0;
    }
  }

  if (*(this + 134))
  {
    return 0;
  }

  if (!*(this + 147))
  {
    return 1;
  }

  v5 = 0;
  do
  {
    v6 = re::PrimitiveRenderingDynamicGeometry::numShapes<unsigned long>(this, v5);
    result = v6 == 0;
    if (v6)
    {
      break;
    }

    ++v5;
  }

  while (v5 < *(this + 147));
  return result;
}

uint64_t re::PrimitiveRenderingContext::addPoint(uint64_t a1, _OWORD *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 520) + (v4 << 7) - 128;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
  v13 = 2;
  v12 = 256;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  do
  {
    v7 = *(&v12 + v6);
    *(&v14 + v6) = a1 + 40 * v7;
    v11[v6++] = *(a1 + 512 + v7);
  }

  while (v6 != 3);
  v8 = re::PrimitiveRenderingDynamicGeometry::append<re::PrimitiveRenderingAttribute>(&v12, &v14, v11, 3, v4, *(a1 + 520), *(a1 + 1192));
  *(a1 + 520) = v8;
  if (v8 == 1)
  {
    if (v11[1] == 1)
    {
      re::fill<re::Vector4<float>,re::PrimitiveRenderingAttribute>(*(v15 + 32) + 32 * *(v15 + 16) - 32, HIBYTE(v12));
    }

    if (v11[2] == 1)
    {
      re::fill<float,re::PrimitiveRenderingAttribute>(*(v16 + 32) + 32 * *(v16 + 16) - 32, v13);
    }
  }

  v9 = *(v14 + 32) + 32 * *(v14 + 16);
  *([**(v9 - 8) contents] + 16 * *(a1 + 520) + *(v9 - 24) - 16) = *a2;
  return v5;
}

uint64_t re::PrimitiveRenderingDynamicGeometry::append<re::PrimitiveRenderingAttribute>(unsigned __int8 *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, char a6, re *a7)
{
  v7 = a6 & 0x7F;
  if (a4)
  {
    v9 = a4;
    v11 = a2;
    do
    {
      v14 = *a3++;
      v13 = v14;
      if (!v7 && (v13 & 1) != 0)
      {
        v15 = *v11;
        v16 = re::attributeInfo(*a1, a2);
        re::allocate(a7, v16, v17, v19);
        re::DynamicArray<re::EvaluationRegister>::add(v15, v19);
      }

      ++a1;
      ++v11;
      --v9;
    }

    while (v9);
  }

  return v7 + 1;
}

char *re::fill<re::Vector4<float>,re::PrimitiveRenderingAttribute>(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  re::PrimitiveRenderingDynamicGeometry::attributeDefaultValue(a2, a2, &v7);
  if (v8 != 3)
  {
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  v6 = v7;
  result = [**(a1 + 24) contents];
  v4 = 0;
  v5 = &result[*(a1 + 8)];
  do
  {
    *&v5[v4] = v6;
    v4 += 16;
  }

  while (v4 != 2048);
  return result;
}

char *re::fill<float,re::PrimitiveRenderingAttribute>(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  re::PrimitiveRenderingDynamicGeometry::attributeDefaultValue(a2, a2, &v8);
  if (v9)
  {
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  v7 = v8;
  result = [**(a1 + 24) contents];
  v4 = 0;
  v5 = &result[*(a1 + 8)];
  v6 = vdupq_lane_s32(v7, 0);
  do
  {
    *&v5[v4] = v6;
    v4 += 16;
  }

  while (v4 != 512);
  return result;
}

uint64_t re::PrimitiveRenderingContext::addLine(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 136);
  if (v6)
  {
    v7 = *(a1 + 528) + (v6 << 7) - 128;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
  v15 = 100992003;
  v16 = 0u;
  v17 = 0u;
  do
  {
    v9 = *(&v15 + v8);
    *(&v16 + v8) = a1 + 40 * v9;
    v14[v8++] = *(a1 + 512 + v9);
  }

  while (v8 != 4);
  v10 = re::PrimitiveRenderingDynamicGeometry::append<re::PrimitiveRenderingAttribute>(&v15, &v16, v14, 4, v6, *(a1 + 528), *(a1 + 1192));
  *(a1 + 528) = v10;
  if (v10 == 1)
  {
    if (v14[2] == 1)
    {
      re::fill<re::Vector4<float>,re::PrimitiveRenderingAttribute>(*(v17 + 32) + 32 * *(v17 + 16) - 32, BYTE2(v15));
    }

    if (v14[3] == 1)
    {
      re::fill<float,re::PrimitiveRenderingAttribute>(*(*(&v17 + 1) + 32) + 32 * *(*(&v17 + 1) + 16) - 32, HIBYTE(v15));
    }
  }

  v11 = *(v16 + 32) + 32 * *(v16 + 16);
  *([**(v11 - 8) contents] + 16 * *(a1 + 528) + *(v11 - 24) - 16) = *a2;
  v12 = *(*(&v16 + 1) + 32) + 32 * *(*(&v16 + 1) + 16);
  *([**(v12 - 8) contents] + 16 * *(a1 + 528) + *(v12 - 24) - 16) = *a3;
  return v7;
}

void re::PrimitiveRenderingContext::buildMeshSceneOfPoints(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v20[0] = a1[149];
  re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(v20, &v22);
  re::DynamicArray<re::GPUAllocation>::DynamicArray(v20, a1);
  *&v21 = v22;
  if (v22)
  {
    v8 = v22 + 8;
  }

  *(&v21 + 1) = a1;
  v9 = re::DynamicArray<re::GPUAllocation>::DynamicArray(v19, a1);
  v10 = *(a1[149] + 88);
  v11 = a1[2];
  v12 = a1[65];
  v13 = v22;
  v14 = re::globalAllocators(v9)[2];
  v27 = v14;
  v28 = 0;
  if (v14)
  {
    v15 = (*(*v14 + 32))(v14, 64, 0);
  }

  else
  {
    v15 = 0;
  }

  *v15 = &unk_1F5D03E28;
  v16 = re::DynamicArray<re::GPUAllocation>::DynamicArray(v15 + 8, v20);
  v17 = v21;
  *&v21 = 0;
  *(v15 + 48) = v17;
  v28 = v15;
  v24 = re::globalAllocators(v16)[2];
  v18 = (*(*v24 + 32))(v24, 48, 0);
  *v18 = &unk_1F5D03E80;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((v18 + 1), v19);
  v25 = v18;
  re::PrimitiveRenderingContext::buildMeshScene(a4, a1, a2, a3, v11, v12, v10 + 16, v13, v26, v23);
  re::FunctionBase<24ul,re::AABB ()(unsigned long,unsigned long)>::destroyCallable(v23);
  re::FunctionBase<24ul,void ()(unsigned long)>::destroyCallable(v26);
  if (v19[0] && v19[4])
  {
    (*(*v19[0] + 40))();
  }

  if (v21)
  {

    *&v21 = 0;
  }

  if (v20[0] && v20[4])
  {
    (*(*v20[0] + 40))();
  }

  if (v22)
  {
  }
}

void re::PrimitiveRenderingContext::buildMeshSceneOfLines(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v21[0] = a1[149];
  re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(v21, &v27);
  re::DynamicArray<re::GPUAllocation>::DynamicArray(v21, a1 + 15);
  v22 = v27;
  if (v27)
  {
    v8 = v27 + 8;
  }

  re::DynamicArray<re::GPUAllocation>::DynamicArray(v23, a1 + 20);
  v26 = a1;
  re::DynamicArray<re::GPUAllocation>::DynamicArray(v17, a1 + 15);
  v9 = re::DynamicArray<re::GPUAllocation>::DynamicArray(v18, a1 + 20);
  v10 = *(a1[149] + 88);
  v11 = a1[17];
  v12 = a1[66];
  v13 = v27;
  v14 = re::globalAllocators(v9)[2];
  v32 = v14;
  if (v14)
  {
    v14 = (*(*v14 + 32))(v14, 104, 0);
  }

  v33 = re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::Callable(v14, v21);
  v15 = re::globalAllocators(v33)[2];
  v29 = v15;
  v30 = 0;
  if (v15)
  {
    v16 = (*(*v15 + 32))(v15, 88, 0);
  }

  else
  {
    v16 = 0;
  }

  *v16 = &unk_1F5D03F30;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((v16 + 1), v17);
  re::DynamicArray<re::GPUAllocation>::DynamicArray((v16 + 6), v18);
  v30 = v16;
  re::PrimitiveRenderingContext::buildMeshScene(a4, a1, a2, a3, v11, v12, v10 + 112, v13, v31, v28);
  re::FunctionBase<24ul,re::AABB ()(unsigned long,unsigned long)>::destroyCallable(v28);
  re::FunctionBase<24ul,void ()(unsigned long)>::destroyCallable(v31);
  if (v18[0])
  {
    if (v20)
    {
      (*(*v18[0] + 40))();
    }

    v20 = 0;
    memset(v18, 0, sizeof(v18));
    ++v19;
  }

  if (v17[0] && v17[4])
  {
    (*(*v17[0] + 40))();
  }

  if (v23[0])
  {
    if (v25)
    {
      (*(*v23[0] + 40))();
    }

    v25 = 0;
    memset(v23, 0, sizeof(v23));
    ++v24;
  }

  if (v22)
  {

    v22 = 0;
  }

  if (v21[0] && v21[4])
  {
    (*(*v21[0] + 40))();
  }

  if (v27)
  {
  }
}

void re::PrimitiveRenderingContext::buildMeshSceneOfShapes(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v124 = *MEMORY[0x1E69E9840];
  if (a1[147])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (re::PrimitiveRenderingDynamicGeometry::numShapes<unsigned long>(a1, v7))
      {
        ++v6;
      }

      ++v7;
    }

    while (v7 < a1[147]);
  }

  else
  {
    v6 = 0;
  }

  *(a4 + 32) = 0;
  *(a4 + 8) = 0;
  v8 = (a4 + 8);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *a4 = a2;
  re::DynamicArray<re::MeshScene>::setCapacity(a4, 0);
  ++*(a4 + 24);
  v9 = __src;
  bzero(__src, 0x2E0uLL);
  v10.i64[0] = 0x7F0000007FLL;
  v10.i64[1] = 0x7F0000007FLL;
  *&__src[80] = vnegq_f32(v10);
  *&__src[96] = v10;
  memset(&__src[112], 0, 161);
  memset(&__src[280], 0, 80);
  v90 = 0u;
  v91 = 0u;
  memset(v92, 0, 28);
  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    *(&v96 + 1) = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
    __asm { FMOV            V0.2S, #1.0 }

    *&v97 = _D0;
    DWORD2(v97) = 1065353216;
    v98 = 0u;
    memset(v99, 0, 19);
    *&v99[20] = 0xFFFFFFFF00000001;
    v99[28] = 0;
    v100 = 0;
    v103 = 0;
    v104 = 0;
    *v109 = 65537;
    v109[4] = 1;
    *&v109[8] = xmmword_1E3060D60;
    *&v109[24] = 16788070;
    v110 = 0;
    v16 = *(a4 + 16);
    if (v16 >= v6)
    {
      if (v16 <= v6)
      {
        goto LABEL_26;
      }

      v37 = 736 * v6 + 352;
      v38 = v6;
      do
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(*(a4 + 32) + v37);
        ++v38;
        v37 += 736;
      }

      while (v38 < *(a4 + 16));
    }

    else
    {
      if (*v8 < v6)
      {
        re::DynamicArray<re::MeshScene>::setCapacity(a4, v6);
        v16 = *(a4 + 16);
      }

      v17 = v6 - v16;
      if (v6 > v16)
      {
        v18 = v9 + 440;
        v19 = 736 * v16;
        do
        {
          v20 = *(a4 + 32);
          v21 = v20 + v19;
          memcpy((v20 + v19), __src, 0x160uLL);
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::HashBrown(v20 + v19 + 352, &__src[352]);
          *(v21 + 416) = v92[3];
          v22 = v93;
          *(v21 + 424) = v93;
          if (v22 == 1)
          {
            *(v21 + 432) = v94;
          }

          v23 = v18[1];
          *(v21 + 440) = *v18;
          *(v21 + 456) = v23;
          v24 = v18[2];
          v25 = v18[3];
          v26 = v18[4];
          *(v21 + 517) = *(v18 + 77);
          *(v21 + 488) = v25;
          *(v21 + 504) = v26;
          *(v21 + 472) = v24;
          v27 = v100;
          *(v21 + 544) = v100;
          if (v27 == 1)
          {
            v28 = v20 + v19;
            v29 = v102;
            *(v28 + 560) = v101;
            *(v28 + 576) = v29;
          }

          v30 = v20 + v19;
          *(v30 + 592) = v103;
          v31 = v104;
          *(v30 + 608) = v104;
          if (v31 == 1)
          {
            v32 = v105;
            v33 = v106;
            v34 = v108;
            *(v30 + 656) = v107;
            *(v30 + 672) = v34;
            *(v30 + 624) = v32;
            *(v30 + 640) = v33;
          }

          v35 = *v109;
          v36 = *&v109[16];
          *(v30 + 720) = v110;
          *(v30 + 688) = v35;
          *(v30 + 704) = v36;
          v19 += 736;
          --v17;
        }

        while (v17);
      }
    }

    *(a4 + 16) = v6;
    ++*(a4 + 24);
LABEL_26:
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&__src[352]);
    if (!a1[147])
    {
      break;
    }

    v9 = 0;
    v6 = 0;
    v39 = 0;
    v8 = *(a1[149] + 88);
    v70 = v8;
    while (!re::PrimitiveRenderingDynamicGeometry::numShapes<unsigned long>(a1, v6))
    {
LABEL_71:
      ++v6;
      v9 += 96;
      if (v6 >= a1[147])
      {
        return;
      }
    }

    Attribute = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, v6, 0);
    v41 = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, v6, 1u);
    *__src = a1[149];
    re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(__src, &v81);
    re::DynamicArray<re::GPUAllocation>::DynamicArray(v74, Attribute);
    v75 = v81;
    if (v81)
    {
      v42 = v81 + 8;
    }

    re::DynamicArray<re::GPUAllocation>::DynamicArray(v76, v41);
    v79 = a1;
    v80 = v6;
    v43 = re::DynamicArray<re::GPUAllocation>::DynamicArray(v73, Attribute);
    v44 = a1[129];
    if (v44 > v6)
    {
      v44 = v8[28];
      if (v44 <= v6)
      {
        goto LABEL_74;
      }

      v45 = a4;
      v46 = Attribute[2];
      v47 = *(a1[131] + 8 * v6);
      a4 = v8[30];
      v48 = v81;
      v49 = re::globalAllocators(v43)[2];
      v87 = v49;
      v88 = 0;
      v8 = v39;
      if (v49)
      {
        v49 = (*(*v49 + 32))(v49, 112, 0);
      }

      v88 = re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::Callable(v49, v74);
      v84 = re::globalAllocators(v88)[2];
      v85 = 0;
      v50 = (*(*v84 + 32))(v84, 48, 0);
      *v50 = &unk_1F5D03FE0;
      re::DynamicArray<re::GPUAllocation>::DynamicArray((v50 + 1), v73);
      v85 = v50;
      re::PrimitiveRenderingContext::buildMeshScene(__src, a1, a2, a3, v46, v47, &v9[a4], v48, v86, v83);
      Attribute = *(v45 + 16);
      v39 = v8;
      if (Attribute <= v8)
      {
        goto LABEL_75;
      }

      a4 = v45;
      v51 = *(v45 + 32) + 736 * v8;
      memcpy(v51, __src, 0x160uLL);
      if (v51 != __src)
      {
        v52 = *(v51 + 408);
        *(v51 + 408) = v92[2];
        v92[2] = v52;
        v53 = *(v51 + 352);
        *(v51 + 352) = *&__src[352];
        *&__src[352] = v53;
        v54 = *(v51 + 360);
        *(v51 + 360) = v90;
        *&v90 = v54;
        v55 = *(v51 + 368);
        *(v51 + 368) = *(&v90 + 1);
        *(&v90 + 1) = v55;
        v56 = *(v51 + 392);
        *(v51 + 392) = v92[0];
        v92[0] = v56;
        v57 = *(v51 + 400);
        *(v51 + 400) = v92[1];
        v92[1] = v57;
        v58 = *(v51 + 376);
        *(v51 + 376) = v91;
        *&v91 = v58;
        v59 = *(v51 + 384);
        *(v51 + 384) = *(&v91 + 1);
        *(&v91 + 1) = v59;
      }

      *(v51 + 416) = v92[3];
      v8 = v70;
      if (*(v51 + 424))
      {
        if ((v93 & 1) == 0)
        {
          *(v51 + 424) = 0;
          goto LABEL_44;
        }

LABEL_43:
        *(v51 + 432) = v94;
      }

      else if (v93)
      {
        *(v51 + 424) = 1;
        goto LABEL_43;
      }

LABEL_44:
      v60 = v95;
      v61 = v96;
      v62 = v98;
      *(v51 + 472) = v97;
      *(v51 + 488) = v62;
      *(v51 + 440) = v60;
      *(v51 + 456) = v61;
      *(v51 + 504) = *v99;
      v63 = *&v99[8];
      *(v51 + 525) = *&v99[21];
      *(v51 + 512) = v63;
      if (*(v51 + 544))
      {
        if ((v100 & 1) == 0)
        {
          *(v51 + 544) = 0;
          goto LABEL_50;
        }

LABEL_49:
        v64 = v102;
        *(v51 + 560) = v101;
        *(v51 + 576) = v64;
      }

      else if (v100)
      {
        *(v51 + 544) = 1;
        goto LABEL_49;
      }

LABEL_50:
      *(v51 + 592) = v103;
      if (*(v51 + 608))
      {
        if ((v104 & 1) == 0)
        {
          *(v51 + 608) = 0;
          goto LABEL_56;
        }

LABEL_55:
        v65 = v105;
        v66 = v106;
        v67 = v108;
        *(v51 + 656) = v107;
        *(v51 + 672) = v67;
        *(v51 + 624) = v65;
        *(v51 + 640) = v66;
      }

      else if (v104)
      {
        *(v51 + 608) = 1;
        goto LABEL_55;
      }

LABEL_56:
      v68 = *v109;
      v69 = *&v109[16];
      *(v51 + 720) = v110;
      *(v51 + 688) = v68;
      *(v51 + 704) = v69;
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&__src[352]);
      re::FunctionBase<24ul,re::AABB ()(unsigned long,unsigned long)>::destroyCallable(v83);
      re::FunctionBase<24ul,void ()(unsigned long)>::destroyCallable(v86);
      if (v73[0] && v73[4])
      {
        (*(*v73[0] + 40))();
      }

      if (v76[0])
      {
        if (v78)
        {
          (*(*v76[0] + 40))();
        }

        v78 = 0;
        memset(v76, 0, sizeof(v76));
        ++v77;
      }

      if (v75)
      {

        v75 = 0;
      }

      if (v74[0] && v74[4])
      {
        (*(*v74[0] + 40))();
      }

      if (v81)
      {
      }

      v39 = (v39 + 1);
      goto LABEL_71;
    }

    v82 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v111 = 136315906;
    v112 = "operator[]";
    v113 = 1024;
    v114 = 797;
    v115 = 2048;
    v116 = v6;
    v117 = 2048;
    v118 = v44;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_74:
    v82 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v111 = 136315906;
    v112 = "operator[]";
    v113 = 1024;
    v114 = 797;
    v115 = 2048;
    v116 = v6;
    v117 = 2048;
    v118 = v44;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_75:
    v82 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v111 = 136315906;
    v112 = "operator[]";
    v113 = 1024;
    v114 = 789;
    v115 = 2048;
    v116 = v39;
    v117 = 2048;
    v118 = Attribute;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_76:
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }
}

void re::PrimitiveRenderingContext::buildMeshSceneOfMeshes(re *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v130 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 134);
  re::globalAllocators(a1);
  v8 = (*(*a2 + 32))(a2, 24, 8);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  v9 = re::FixedArray<re::MeshPart>::init<>(v8, a2, v7);
  v10 = re::globalAllocators(v9)[2];
  *&buf = &unk_1F5D04038;
  *(&v112 + 1) = v10;
  *&v113 = &buf;
  v94 = (*(*a2 + 16))(a2, v8, &buf);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&buf);
  v11 = (*(*a2 + 32))(a2, 32, 16);
  v12.i64[0] = 0x7F0000007FLL;
  v12.i64[1] = 0x7F0000007FLL;
  *v11 = vnegq_f32(v12);
  v11[1] = v12;
  v93 = v11;
  v13 = (*(*a2 + 32))(a2, 24, 8);
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  re::FixedArray<unsigned long>::init<>(v13, a2, v7);
  v14 = (*(*a2 + 32))(a2, 24, 8);
  v14[1] = 0;
  v14[2] = 0;
  *v14 = 0;
  v96 = a2;
  re::FixedArray<unsigned long>::init<>(v14, a2, v7);
  *&buf = *(a1 + 149);
  v15 = re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(&buf, &v105);
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v95 = a1;
  v17 = *(a1 + 144);
  if (v17)
  {
    v18 = *(a1 + 146);
    v19 = &v18[2 * v17];
    do
    {
      v20 = v105;
      v21 = *v18;
      v4 = v18[1];
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      v16 = re::MaterialParameterBlock::addPassTechniqueMapping(v20, v21, v4, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
      v18 += 2;
    }

    while (v18 != v19);
  }

  v22 = v95;
  if (v7)
  {
    v23 = 0;
    v90 = v14;
    v91 = v13;
    v89 = v7;
    while (1)
    {
      v4 = *(v22 + 134);
      if (v4 <= v23)
      {
        goto LABEL_75;
      }

      v24 = *(v22 + 136) + 96 * v23;
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = 0;
        v27 = v25 << 6;
        v28 = (*(v24 + 32) + 16);
        do
        {
          v29 = *v28;
          v28 += 64;
          v26 += v29;
          v27 -= 64;
        }

        while (v27);
      }

      else
      {
        v26 = 0;
      }

      v30 = v105;
      v99 = 0;
      v100 = 0;
      v101 = 0;
      v32 = *(v24 + 16);
      if (v32)
      {
        break;
      }

LABEL_45:
      v22 = v95;
      v4 = *(v95 + 134);
      if (v4 <= v23)
      {
        goto LABEL_76;
      }

      v4 = v103;
      if (v103 <= v23)
      {
        goto LABEL_77;
      }

      v61 = *(v95 + 136) + 96 * v23;
      v62 = (v104 + 32 * v23);
      v63 = *(v61 + 64);
      *v62 = *(v61 + 48);
      v62[1] = v63;
      v4 = *(v95 + 134);
      if (v4 <= v23)
      {
        goto LABEL_78;
      }

      v64 = *(v95 + 136) + 96 * v23;
      v65 = *(v64 + 48);
      v66 = *v93;
      v67 = v93[1];
      v66.i32[3] = 0;
      v65.i32[3] = 0;
      *v93 = vminnmq_f32(v66, v65);
      v68 = *(v64 + 64);
      v67.i32[3] = 0;
      v68.i32[3] = 0;
      v93[1] = vmaxnmq_f32(v67, v68);
      v97 = 0x4B61EB17F5807C1ALL;
      v98 = "PrimitiveRendering Mesh Instance";
      v4 = *(v95 + 134);
      if (v4 <= v23)
      {
        goto LABEL_79;
      }

      v69 = *(v95 + 136) + 96 * v23;
      v70 = *(v69 + 88);
      v71 = *(v69 + 80);
      *v109 = xmmword_1E3047670;
      *&v109[16] = xmmword_1E3047680;
      *&v109[32] = xmmword_1E30476A0;
      v110 = xmmword_1E30474D0;
      WORD2(v108) = 0;
      LODWORD(v108) = 0;
      re::MeshPart::MeshPart(&buf, &v97, v23, v101, v100, v70, v71, 1, (v69 + 48), v23, v109, &v108, -1, 0);
      v4 = *(v94 + 8);
      if (v4 <= v23)
      {
        goto LABEL_80;
      }

      v72 = re::MeshPart::operator=(*(v94 + 16) + 544 * v23, &buf);
      if (v118)
      {
        if (v118)
        {
        }
      }

      v119 = &str_67;
      v118 = 0;
      re::FixedArray<re::StringID>::deinit(v117);
      re::AttributeTable::~AttributeTable(&buf);
      v14 = v90;
      v13 = v91;
      v7 = v89;
      if (v97)
      {
        if (v97)
        {
        }
      }

      v97 = 0;
      v98 = &str_67;
      v4 = *(v94 + 8);
      if (v4 <= v23)
      {
        goto LABEL_81;
      }

      *(*(v94 + 16) + 544 * v23 + 520) = 3;
      v74 = re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(v105, v96);
      v4 = v91[1];
      if (v4 <= v23)
      {
        goto LABEL_82;
      }

      *(v91[2] + 8 * v23) = v74;
      v4 = v90[1];
      if (v4 <= v23)
      {
        goto LABEL_83;
      }

      *(v90[2] + 8 * v23) = a3;
      v16 = re::FixedArray<re::NamedVertexBuffer>::deinit(&v99);
      if (++v23 == v89)
      {
        goto LABEL_60;
      }
    }

    v33 = 0;
    v34 = 0;
    v14 = *(v24 + 32);
    v13 = (v32 << 6);
    while (1)
    {
      v35 = (v33 + v14);
      if (*(v33 + v14 + 16) == 1)
      {
        v36 = re::StringID::operator==((v33 + v14), re::MeshAttributeNames::kIndexTriangles);
        v37 = v36 ^ 1;
        v38 = v35[1];
        LOBYTE(v113) = *(v35 + 18);
        BYTE1(v113) = v37;
        *(&v113 + 1) = v35[3];
        LODWORD(v115) = 0;
        DWORD2(v115) = 0;
        HIDWORD(v115) = [v35[3] length];
        v116 = 0xFFFFFFFF00000000;
        v4 = v100;
        if (v100 <= v34)
        {
          v108 = 0;
          v23 = v120;
          v128 = 0u;
          v129 = 0u;
          memset(v127, 0, sizeof(v127));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v120 = 136315906;
          *&v120[4] = "operator[]";
          v121 = 1024;
          v122 = 468;
          v123 = 2048;
          v124 = v34;
          v125 = 2048;
          v126 = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_73;
        }

        v39 = v101 + 88 * v34;
        re::DynamicString::operator=(v39, &buf);
        *(v39 + 32) = v113;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v39 + 40, &v113 + 8);
        *(v39 + 72) = *(&v115 + 1);
        *(v39 + 80) = v116;
        if (v115 != -1)
        {
          (off_1F5D03DA0[v115])(v127, &v113 + 8);
        }

        LODWORD(v115) = -1;
        v31 = buf;
        if (buf && (BYTE8(buf) & 1) != 0)
        {
          v31 = (*(*buf + 40))();
        }

        ++v34;
      }

      else
      {
        if (*(v35 + 17) != 1)
        {
          v106 = *(v33 + v14) >> 1;
          *v109 = *(v33 + v14 + 24);
          *&v109[24] = 0;
          *&v109[32] = 0;
          *&v109[36] = [*(v33 + v14 + 24) length];
          v48 = re::MaterialParameterBlock::setBuffer(v30, &v106, v109, v107);
          v107[0] = 0;
          if (*&v109[24] != -1)
          {
            v31 = (off_1F5D03DA0[*&v109[24]])(&buf, v109, v48);
          }

          *&v109[24] = -1;
          v106 = 0;
          goto LABEL_44;
        }

        v40 = *(v33 + v14 + 18);
        if (v40 > 0x1D)
        {
          if (v40 == 30)
          {
            v57 = (v33 + v14);
            if (*(v33 + v14 + 48) != 2)
            {
LABEL_85:
              std::__throw_bad_variant_access[abi:nn200100]();
            }

            v58 = *v57 >> 1;
            v60 = v57[4];
            v59 = v57[5];
            v127[0] = v60;
            v127[1] = v59;
            *v120 = v58;
            v43 = v120;
            v44 = v127;
            v45 = v30;
            v46 = 16;
            v47 = 33;
          }

          else
          {
            if (v40 != 31)
            {
LABEL_37:
              v53 = *re::graphicsLogObjects(v31);
              v31 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
              if (v31)
              {
                v54 = *(v33 + v14 + 18);
                LODWORD(buf) = 67109120;
                DWORD1(buf) = v54;
                _os_log_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_DEFAULT, "Format %d is not supported in PrimitiveRenderer", &buf, 8u);
              }

              goto LABEL_44;
            }

            v49 = (v33 + v14);
            if (*(v33 + v14 + 48) != 3)
            {
              goto LABEL_85;
            }

            v50 = *v49 >> 1;
            v52 = v49[4];
            v51 = v49[5];
            v127[0] = v52;
            v127[1] = v51;
            *v120 = v50;
            v43 = v120;
            v44 = v127;
            v45 = v30;
            v46 = 16;
            v47 = 34;
          }
        }

        else if (v40 == 28)
        {
          v55 = (v33 + v14);
          if (*(v33 + v14 + 48))
          {
            goto LABEL_85;
          }

          v56 = *v55 >> 1;
          *v120 = *(v55 + 8);
          v127[0] = v56;
          v43 = v127;
          v44 = v120;
          v45 = v30;
          v46 = 4;
          v47 = 1;
        }

        else
        {
          if (v40 != 29)
          {
            goto LABEL_37;
          }

          v41 = (v33 + v14);
          if (*(v33 + v14 + 48) != 1)
          {
            goto LABEL_85;
          }

          v42 = *v41 >> 1;
          v127[0] = v41[4];
          *v120 = v42;
          v43 = v120;
          v44 = v127;
          v45 = v30;
          v46 = 8;
          v47 = 32;
        }

        re::MaterialParameterBlock::setConstant(v45, v43, v46, v44, v47, &buf);
      }

LABEL_44:
      v33 += 8;
      if (v13 == v33)
      {
        goto LABEL_45;
      }
    }
  }

LABEL_60:
  v75 = (*(*v96 + 32))(v96, 24, 8);
  v75[1] = 0;
  v75[2] = 0;
  *v75 = 0;
  re::FixedArray<re::MeshPart const*>::init<>(v75, v96, v7);
  if (v7)
  {
    v76 = 0;
    v37 = 0;
    v23 = *(v94 + 8);
    while (v23 != v37)
    {
      v4 = v75[1];
      if (v4 <= v37)
      {
        goto LABEL_74;
      }

      *(v75[2] + 8 * v37++) = *(v94 + 16) + v76;
      v76 += 544;
      if (v7 == v37)
      {
        goto LABEL_65;
      }
    }

LABEL_73:
    *v109 = 0;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v127[0]) = 136315906;
    *(v127 + 4) = "operator[]";
    WORD2(v127[1]) = 1024;
    *(&v127[1] + 6) = 468;
    WORD1(v127[2]) = 2048;
    *(&v127[2] + 4) = v23;
    WORD2(v127[3]) = 2048;
    *(&v127[3] + 6) = v23;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_74:
    *v109 = 0;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v127[0]) = 136315906;
    *(v127 + 4) = "operator[]";
    WORD2(v127[1]) = 1024;
    *(&v127[1] + 6) = 468;
    WORD1(v127[2]) = 2048;
    *(&v127[2] + 4) = v37;
    WORD2(v127[3]) = 2048;
    *(&v127[3] + 6) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_75:
    *v109 = 0;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v127[0]) = 136315906;
    *(v127 + 4) = "operator[]";
    WORD2(v127[1]) = 1024;
    *(&v127[1] + 6) = 797;
    WORD1(v127[2]) = 2048;
    *(&v127[2] + 4) = v23;
    WORD2(v127[3]) = 2048;
    *(&v127[3] + 6) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_76:
    *v109 = 0;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v127[0]) = 136315906;
    *(v127 + 4) = "operator[]";
    WORD2(v127[1]) = 1024;
    *(&v127[1] + 6) = 797;
    WORD1(v127[2]) = 2048;
    *(&v127[2] + 4) = v23;
    WORD2(v127[3]) = 2048;
    *(&v127[3] + 6) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_77:
    *v109 = 0;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v127[0]) = 136315906;
    *(v127 + 4) = "operator[]";
    WORD2(v127[1]) = 1024;
    *(&v127[1] + 6) = 468;
    WORD1(v127[2]) = 2048;
    *(&v127[2] + 4) = v23;
    WORD2(v127[3]) = 2048;
    *(&v127[3] + 6) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_78:
    *v109 = 0;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v127[0]) = 136315906;
    *(v127 + 4) = "operator[]";
    WORD2(v127[1]) = 1024;
    *(&v127[1] + 6) = 797;
    WORD1(v127[2]) = 2048;
    *(&v127[2] + 4) = v23;
    WORD2(v127[3]) = 2048;
    *(&v127[3] + 6) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_79:
    *v120 = 0;
    v128 = 0u;
    v129 = 0u;
    memset(v127, 0, sizeof(v127));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v109 = 136315906;
    *&v109[4] = "operator[]";
    *&v109[12] = 1024;
    *&v109[14] = 797;
    *&v109[18] = 2048;
    *&v109[20] = v23;
    *&v109[28] = 2048;
    *&v109[30] = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_80:
    v107[0] = 0;
    v128 = 0u;
    v129 = 0u;
    memset(v127, 0, sizeof(v127));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v120 = 136315906;
    *&v120[4] = "operator[]";
    v121 = 1024;
    v122 = 468;
    v123 = 2048;
    v124 = v23;
    v125 = 2048;
    v126 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_81:
    *v109 = 0;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v127[0]) = 136315906;
    *(v127 + 4) = "operator[]";
    WORD2(v127[1]) = 1024;
    *(&v127[1] + 6) = 468;
    WORD1(v127[2]) = 2048;
    *(&v127[2] + 4) = v23;
    WORD2(v127[3]) = 2048;
    *(&v127[3] + 6) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_82:
    *v109 = 0;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v127[0]) = 136315906;
    *(v127 + 4) = "operator[]";
    WORD2(v127[1]) = 1024;
    *(&v127[1] + 6) = 468;
    WORD1(v127[2]) = 2048;
    *(&v127[2] + 4) = v23;
    WORD2(v127[3]) = 2048;
    *(&v127[3] + 6) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_83:
    *v109 = 0;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    buf = 0u;
    v75 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v127[0]) = 136315906;
    *(v127 + 4) = "operator[]";
    WORD2(v127[1]) = 1024;
    *(&v127[1] + 6) = 468;
    WORD1(v127[2]) = 2048;
    *(&v127[2] + 4) = v23;
    WORD2(v127[3]) = 2048;
    *(&v127[3] + 6) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_84;
  }

LABEL_65:
  v23 = a4;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 424) = 0;
  *(a4 + 440) = 0;
  *(a4 + 448) = 0u;
  *(a4 + 208) = 0u;
  *(a4 + 224) = 0u;
  *(a4 + 240) = 0u;
  *(a4 + 256) = 0u;
  *(a4 + 272) = 0;
  *(a4 + 296) = 0u;
  *(a4 + 312) = 0u;
  *(a4 + 328) = 0u;
  *(a4 + 344) = 0u;
  *(a4 + 360) = 0u;
  *(a4 + 376) = 0u;
  *(a4 + 392) = 0u;
  *(a4 + 404) = 0u;
  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
LABEL_84:
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  *(v23 + 464) = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
  __asm { FMOV            V0.2S, #1.0 }

  *(v23 + 472) = _D0;
  *(v23 + 480) = 1065353216;
  *(v23 + 488) = 0u;
  *(v23 + 504) = 0u;
  *(v23 + 519) = 0;
  *(v23 + 524) = 0xFFFFFFFF00000001;
  *(v23 + 532) = 0;
  *(v23 + 544) = 0;
  *(v23 + 592) = 0;
  *(v23 + 608) = 0;
  *(v23 + 688) = 65537;
  *(v23 + 692) = 1;
  *(v23 + 696) = xmmword_1E3060D60;
  *(v23 + 712) = 16788070;
  *(v23 + 720) = 0;
  v82 = v75[1];
  *v23 = v75[2];
  *(v23 + 8) = v82;
  *&buf = v93;
  *(&buf + 1) = 1;
  v83 = (*(*v96 + 32))(v96, 72, 8);
  *(v23 + 112) = re::MeshBoundingBoxes::MeshBoundingBoxes(v83, v96, &buf, 1);
  *&buf = v104;
  *(&buf + 1) = v103;
  v84 = (*(*v96 + 32))(v96, 72, 8);
  *(v23 + 120) = re::MeshBoundingBoxes::MeshBoundingBoxes(v84, v96, &buf, 1);
  v85 = v93[1];
  *(v23 + 80) = *v93;
  *(v23 + 96) = v85;
  *(v23 + 128) = xmmword_1E3047670;
  *(v23 + 144) = xmmword_1E3047680;
  *(v23 + 160) = xmmword_1E30476A0;
  *(v23 + 176) = xmmword_1E30474D0;
  v86 = v13[1];
  *(v23 + 280) = v13[2];
  *(v23 + 288) = v86;
  v87 = v14[1];
  *(v23 + 192) = v14[2];
  *(v23 + 200) = v87;
  if (v102 && v103)
  {
    (*(*v102 + 40))(v102, v104);
  }

  if (v105)
  {
  }
}