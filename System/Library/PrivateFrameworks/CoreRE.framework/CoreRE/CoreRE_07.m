uint64_t re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::RigDataTypeClass>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 88 * HIDWORD(v9) + 24;
  }
}

_BYTE *re::RigEnvironment::lookupRigDataType@<X0>(re::RigEnvironment *this@<X0>, const char **a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(this + 5);
  if (v6)
  {
    v7 = 0;
    v8 = -1;
    while (1)
    {
      v9 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v6 + v8);
      v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
      re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v9 + 128, a2, v10 ^ (v10 >> 31), v15);
      if (v16 != 0x7FFFFFFF)
      {
        break;
      }

      ++v7;
      v6 = *(this + 5);
      --v8;
      if (v7 == v6)
      {
        goto LABEL_5;
      }
    }

    v13 = *(v9 + 144) + 88 * v16;
    *a3 = 1;
    a3[8] = *(v13 + 24);
    re::StringID::StringID((a3 + 16), (v13 + 32));
    return re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray((a3 + 32), (v13 + 48));
  }

  else
  {
LABEL_5:
    v11 = *this;
    v14[0] = a2[1];
    v14[1] = strlen(v14[0]);
    re::RigDataTypeClass::rigDataTypeParser(v11, v14, v15);
    if (v15[0] == 1)
    {
      *a3 = v15[0];
      a3[8] = v15[8];
      re::StringID::StringID((a3 + 16), &v17);
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray((a3 + 32), v18);
    }

    else
    {
      *a3 = 0;
    }

    return re::Result<re::RigDataTypeClass,re::DetailedError>::~Result(v15);
  }
}

__n128 re::RigEnvironment::validateNewRigNode@<Q0>(re::RigEnvironment *this@<X0>, const re::StringID *a2@<X1>, uint64_t a3@<X8>)
{
  if (re::RigEnvironment::lookupRigGraphNode(this, a2))
  {
    v6 = re::DynamicString::format("Node (%s) already exists.", &v14, *(a2 + 1));
    v7 = v15 & 1;
    if (v15)
    {
      v8 = *&v16[7];
    }

    else
    {
      v8 = v16;
    }

    result = v17;
    v17 = 0uLL;
    v10 = v18;
    v11 = v19;
    v18 = 0;
    v19 = 0;
    *a3 = 0;
    *(a3 + 8) = 5001;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = result;
    *(a3 + 40) = v10;
    *(a3 + 48) = v11;
    if (v14)
    {
      if (v7)
      {
        (*(*v14 + 40))();
      }
    }
  }

  else if (!strcmp(*(a2 + 1), "this"))
  {
    re::DynamicString::format("Node name cannot be reserved keyword 'this'.", &v17);
    result = v17;
    v12 = v18;
    v13 = v19;
    *a3 = 0;
    *(a3 + 8) = 5001;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = result;
    *(a3 + 40) = v12;
    *(a3 + 48) = v13;
  }

  else
  {
    *a3 = 1;
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphNode>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphNode>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

void re::RigEnvironment::insertRigGraphNode(re::RigEnvironment *this@<X0>, const re::StringID *a2@<X1>, const re::RigGraphNode *a3@<X2>, uint64_t a4@<X8>)
{
  *&v9 = re::RigEnvironment::validateNewRigNode(this, a2, v13).n128_u64[0];
  if (v13[0] == 1)
  {
    v10 = *(this + 5);
    if (v10)
    {
      v11 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v10 - 1);
      v12 = re::DataArray<re::RigGraphNode>::create<re::RigGraphNode const&>(v11, a3);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphNode>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v11 + 176, a2, &v12);
      *a4 = 1;
    }

    else
    {
      re::internal::assertLog(4, v8, v9, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
      _os_crash();
      __break(1u);
    }
  }

  else
  {
    *a4 = v13[0];
    *(a4 + 8) = v14;
    *(a4 + 24) = v15;
    *(a4 + 48) = v17;
    *(a4 + 32) = v16;
  }
}

unint64_t re::DataArray<re::RigGraphNode>::create<re::RigGraphNode const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if ((v4 + 1) >> 24)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 + 1;
  }

  *(a1 + 56) = v5;
  v6 = *(a1 + 52);
  v7 = *(a1 + 54);
  if (v6 != 0xFFFF || v7 != 0xFFFF)
  {
    if (*(a1 + 16) > v7)
    {
      v9 = (*(a1 + 32) + 16 * v7);
      *(v9[1] + 4 * v6) = v5;
      v10 = *v9 + 200 * v6;
      *(a1 + 52) = *v10;
      goto LABEL_15;
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_49;
  }

  if (*(a1 + 48) >= *(a1 + 44))
  {
    re::DataArray<re::RigGraphNode>::allocBlock(a1);
  }

  v11 = *(a1 + 16);
  v7 = (v11 - 1);
  if (!v11)
  {
LABEL_49:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_50:
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v6);
    _os_crash();
    __break(1u);
  }

  v6 = *(a1 + 48);
  if (v6 >= 0x10000)
  {
    goto LABEL_50;
  }

  v12 = (*(a1 + 32) + 16 * v7);
  *(a1 + 48) = v6 + 1;
  *(v12[1] + 4 * v6) = *(a1 + 56);
  v10 = *v12 + 200 * v6;
LABEL_15:
  ++*(a1 + 40);
  re::DynamicArray<re::RigGraphNodeParameter>::DynamicArray(v10, a2);
  re::DynamicArray<re::RigGraphNodeParameter>::DynamicArray(v10 + 40, (a2 + 40));
  *(v10 + 80) = 0;
  *(v10 + 112) = 0;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  v13 = *(a2 + 80);
  if (v13)
  {
    v55 = v7;
    v14 = *(a2 + 96);
    *(v10 + 80) = v13;
    re::DynamicArray<re::RigGraphNodeChild>::setCapacity((v10 + 80), v14);
    ++*(v10 + 104);
    v15 = *(a2 + 96);
    v56 = v15;
    if (v15 >= *(v10 + 96))
    {
      re::DynamicArray<re::RigGraphNodeChild>::setCapacity((v10 + 80), v15);
      std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeChild *,re::RigGraphNodeChild *,re::RigGraphNodeChild *>(*(a2 + 112), (*(a2 + 112) + 96 * *(v10 + 96)), *(v10 + 112));
      v19 = *(v10 + 96);
      if (v19 != v15)
      {
        v20 = *(a2 + 112);
        v21 = *(v10 + 112);
        v22 = 96 * v19;
        v23 = 96 * v15;
        do
        {
          v24 = v21 + v22;
          v25 = v20 + v22;
          re::StringID::StringID((v21 + v22), (v20 + v22));
          *(v24 + 16) = 0;
          *(v24 + 24) = 0;
          *(v24 + 32) = 0;
          *(v24 + 40) = 0;
          v26 = *(v20 + v22 + 16);
          *(v24 + 48) = 0;
          if (v26)
          {
            v27 = *(v25 + 32);
            *(v21 + v22 + 16) = v26;
            re::DynamicArray<re::RigGraphNodeParameter>::setCapacity((v24 + 16), v27);
            ++*(v24 + 40);
            re::DynamicArray<re::RigGraphNodeInputParameter>::copy((v24 + 16), v25 + 16);
          }

          *(v24 + 56) = 0;
          v28 = v24 + 56;
          *(v28 + 8) = 0;
          *(v28 + 16) = 0;
          *(v28 + 24) = 0;
          v31 = *(v25 + 56);
          v30 = v25 + 56;
          v29 = v31;
          *(v28 + 32) = 0;
          if (v31)
          {
            v32 = *(v20 + v22 + 72);
            *v28 = v29;
            re::DynamicArray<re::RigGraphNodeOutputParameter>::setCapacity(v28, v32);
            ++*(v21 + v22 + 80);
            re::DynamicArray<re::RigGraphNodeOutputParameter>::copy(v28, v30);
          }

          v23 -= 96;
          v20 += 96;
          v21 += 96;
        }

        while (v22 != v23);
      }
    }

    else
    {
      std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeChild *,re::RigGraphNodeChild *,re::RigGraphNodeChild *>(*(a2 + 112), (*(a2 + 112) + 96 * v15), *(v10 + 112));
      v16 = *(v10 + 96);
      if (v15 != v16)
      {
        v17 = (*(v10 + 112) + 96 * v15);
        v18 = 96 * v16 - 96 * v15;
        do
        {
          re::DynamicArray<re::RigGraphNodeOutputParameter>::deinit(v17 + 56);
          re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(v17 + 16);
          re::StringID::destroyString(v17);
          v17 = (v17 + 96);
          v18 -= 96;
        }

        while (v18);
      }
    }

    v7 = v55;
    *(v10 + 96) = v56;
  }

  re::DynamicArray<re::StringID>::DynamicArray(v10 + 120, (a2 + 120));
  *(v10 + 160) = 0;
  *(v10 + 192) = 0;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 184) = 0;
  v33 = *(a2 + 160);
  if (v33)
  {
    v34 = *(a2 + 176);
    *(v10 + 160) = v33;
    re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity((v10 + 160), v34);
    ++*(v10 + 184);
    v35 = *(a2 + 176);
    v36 = *(v10 + 176);
    if (v35 >= v36)
    {
      re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity((v10 + 160), *(a2 + 176));
      v43 = *(a2 + 192);
      v44 = *(v10 + 176);
      v45 = *(v10 + 192);
      if (v44)
      {
        v46 = (v45 + 8);
        v47 = 24 * v44;
        v48 = (v43 + 8);
        do
        {
          *(v46 - 1) = *(v48 - 1);
          v46 = re::StringID::operator=(v46, v48) + 3;
          v48 += 3;
          v47 -= 24;
        }

        while (v47);
        v45 = *(v10 + 192);
        v44 = *(v10 + 176);
        v43 = *(a2 + 192);
      }

      if (v44 != v35)
      {
        v49 = 24 * v35 - 24 * v44;
        v50 = 24 * v44 + 8;
        v51 = (v43 + v50);
        v52 = (v45 + v50);
        do
        {
          *(v52 - 1) = v51[-1].var1;
          v53 = re::StringID::StringID(v52, v51);
          v51 = (v51 + 24);
          v52 = (v53 + 24);
          v49 -= 24;
        }

        while (v49);
      }
    }

    else
    {
      v37 = *(v10 + 192);
      if (v35)
      {
        v38 = (v37 + 8);
        v39 = 24 * v35;
        v40 = (*(a2 + 192) + 8);
        do
        {
          *(v38 - 1) = *(v40 - 1);
          v38 = re::StringID::operator=(v38, v40) + 3;
          v40 += 3;
          v39 -= 24;
        }

        while (v39);
        v37 = *(v10 + 192);
        v36 = *(v10 + 176);
      }

      if (v35 != v36)
      {
        v41 = 24 * v36 - 24 * v35;
        v42 = (v37 + 24 * v35 + 8);
        do
        {
          re::StringID::destroyString(v42);
          v42 = (v42 + 24);
          v41 -= 24;
        }

        while (v41);
      }
    }

    *(v10 + 176) = v35;
  }

  return ((v7 << 16) | ((*(a1 + 56) & 0xFFFFFF) << 32)) + v6;
}

uint64_t re::RigEnvironment::lookupRigGraphNode(re::RigEnvironment *this, const re::StringID *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  for (i = -1; ; --i)
  {
    v7 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v2 + i);
    v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v7 + 176, a2, v8 ^ (v8 >> 31), v12);
    if (HIDWORD(v12[0]) != 0x7FFFFFFF)
    {
      break;
    }

    ++v5;
    v2 = *(this + 5);
    if (v5 == v2)
    {
      return 0;
    }
  }

  v10 = *(v7 + 192) + 32 * HIDWORD(v12[0]);
  v11 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, *(this + 5) + i);
  if (*(v11 + 16) <= WORD1(*(v10 + 24)))
  {
    memset(v12, 0, sizeof(v12));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v11 + 32) + 16 * WORD1(*(v10 + 24))) + 200 * *(v10 + 24);
}

uint64_t re::RigEnvironment::validateNewRigOperator@<X0>(re::RigEnvironment *a1@<X0>, const re::StringID *a2@<X1>, uint64_t a3@<X8>)
{
  result = re::RigEnvironment::lookupRigGraphOperator(a1, a2);
  if (result)
  {
    v6 = re::DynamicString::format("Node (%s) already exists.", &v12, *(a2 + 1));
    v7 = v13 & 1;
    if (v13)
    {
      v8 = *&v14[7];
    }

    else
    {
      v8 = v14;
    }

    v9 = v15;
    v15 = 0uLL;
    v10 = v16;
    v11 = v17;
    v16 = 0;
    v17 = 0;
    *a3 = 0;
    *(a3 + 8) = 5001;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v9;
    *(a3 + 40) = v10;
    *(a3 + 48) = v11;
    result = v12;
    if (v12)
    {
      if (v7)
      {
        return (*(*v12 + 40))();
      }
    }
  }

  else
  {
    *a3 = 1;
  }

  return result;
}

uint64_t re::RigEnvironment::insertRigGraphOperator@<X0>(re::RigEnvironment *a1@<X0>, const re::StringID *a2@<X1>, StringID *a3@<X2>, uint64_t a4@<X8>)
{
  result = re::RigEnvironment::validateNewRigOperator(a1, a2, v13);
  if (v13[0] == 1)
  {
    v10 = *(a1 + 5);
    if (v10)
    {
      v11 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](a1, v10 - 1);
      v12 = re::DataArray<re::RigGraphOperatorDefinition>::create<re::RigGraphOperatorDefinition const&>(v11 + 64, a3);
      result = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphNode>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v11 + 224, a2, &v12);
      *a4 = 1;
    }

    else
    {
      re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
      result = _os_crash();
      __break(1u);
    }
  }

  else
  {
    *a4 = v13[0];
    *(a4 + 8) = v14;
    *(a4 + 24) = v15;
    *(a4 + 48) = v17;
    *(a4 + 32) = v16;
  }

  return result;
}

unint64_t re::DataArray<re::RigGraphOperatorDefinition>::create<re::RigGraphOperatorDefinition const&>(uint64_t a1, StringID *a2)
{
  v4 = *(a1 + 56);
  if ((v4 + 1) >> 24)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 + 1;
  }

  *(a1 + 56) = v5;
  v6 = *(a1 + 52);
  v7 = *(a1 + 54);
  if (v6 == 0xFFFF && v7 == 0xFFFF)
  {
    if (*(a1 + 48) >= *(a1 + 44))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::allocBlock(a1);
    }

    v11 = *(a1 + 16);
    v7 = (v11 - 1);
    if (v11)
    {
      v6 = *(a1 + 48);
      if (v6 < 0x10000)
      {
        v12 = (*(a1 + 32) + 16 * v7);
        *(a1 + 48) = v6 + 1;
        *(v12[1] + 4 * v6) = *(a1 + 56);
        v10 = (*v12 + 72 * v6);
        goto LABEL_15;
      }

LABEL_18:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v6, v14, v15);
      _os_crash();
      __break(1u);
    }

LABEL_17:
    v14 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v15) = 136315906;
    *(&v15 + 4) = "operator[]";
    WORD6(v15) = 1024;
    HIWORD(v15) = 789;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  if (*(a1 + 16) <= v7)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = (*(a1 + 32) + 16 * v7);
  *(v9[1] + 4 * v6) = v5;
  v10 = (*v9 + 72 * v6);
  *(a1 + 52) = *v10;
LABEL_15:
  ++*(a1 + 40);
  re::StringID::StringID(v10, a2);
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::FixedArray(v10 + 2, &a2[1]);
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::FixedArray(v10 + 5, &a2[2].var1);
  *(v10 + 8) = *&a2[4].var0;
  return ((v7 << 16) | ((*(a1 + 56) & 0xFFFFFF) << 32)) + v6;
}

uint64_t re::RigEnvironment::lookupRigGraphOperator(re::RigEnvironment *this, const re::StringID *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  for (i = -1; ; --i)
  {
    v7 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v2 + i);
    v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v7 + 224, a2, v8 ^ (v8 >> 31), v12);
    if (HIDWORD(v12[0]) != 0x7FFFFFFF)
    {
      break;
    }

    ++v5;
    v2 = *(this + 5);
    if (v5 == v2)
    {
      return 0;
    }
  }

  v10 = *(v7 + 240) + 32 * HIDWORD(v12[0]);
  v11 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, *(this + 5) + i);
  if (*(v11 + 80) <= WORD1(*(v10 + 24)))
  {
    memset(v12, 0, sizeof(v12));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v11 + 96) + 16 * WORD1(*(v10 + 24))) + 72 * *(v10 + 24);
}

unint64_t re::RigDataTypeClass::attributeType(re::RigDataTypeClass *this, uint64_t a2, unint64_t a3)
{
  if (this <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 32 * a3 + 16;
}

void *re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 2176, 0);
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

_BYTE *re::Result<re::RigDataTypeClass,re::DetailedError>::~Result(_BYTE *a1)
{
  if (*a1 == 1)
  {
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 32));
    re::StringID::destroyString((a1 + 16));
  }

  else
  {
    re::DynamicString::deinit((a1 + 24));
  }

  return a1;
}

uint64_t re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(uint64_t result, uint64_t a2)
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

_anonymous_namespace_ *re::DataArray<re::RigGraphNode>::allocBlock(void *a1)
{
  v3 = 200 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

_anonymous_namespace_ *re::DataArray<re::RigGraphOperatorDefinition>::allocBlock(void *a1)
{
  v3 = 72 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

uint64_t re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::RigDataTypeClass>(uint64_t a1, uint64_t a2, const StringID *a3, uint64_t a4)
{
  v7 = re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::StringID::StringID((v7 + 8), a3);
  *(v7 + 24) = *a4;
  v7 += 24;
  re::StringID::StringID((v7 + 8), (a4 + 8));
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(v7 + 24, (a4 + 24));
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  result = re::StringID::operator==((v10 + 88 * v8 + 8), a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 88 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::StringID::operator==((v10 + 88 * v11 + 8), a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 88 * v12) & 0x7FFFFFFF;
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

uint64_t re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v30, v9, v8);
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
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = v13 + v17;
                v20 = 0xBF58476D1CE4E5B9 * ((*(v19 + 8) >> 31) ^ (*(v19 + 8) >> 1));
                v21 = re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31)) % *(a1 + 24));
                v22 = *(v19 + 8);
                *(v21 + 8) = *(v21 + 8) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                *(v21 + 8) = *(v19 + 8) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                *(v21 + 16) = *(v19 + 16);
                *(v19 + 8) = 0;
                *(v19 + 16) = &str_67;
                v13 = *&v30[16];
                v23 = *&v30[16] + v17;
                *(v21 + 24) = *(*&v30[16] + v17 + 24);
                re::StringID::StringID((v21 + 32), (v23 + 32));
                re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(v21 + 48, (v23 + 48));
                v16 = *&v30[32];
              }

              ++v18;
              v17 += 88;
            }

            while (v18 < v16);
          }

          re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v30);
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
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 88 * v4);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 88 * v4);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = 88 * v4;
  *(v24 + v27) = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *(v24 + v27) = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v24 + 88 * v4;
}

uint64_t re::RigGraphNode::RigGraphNode(uint64_t result, uint64_t a2)
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
  return result;
}

uint64_t re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphNode>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v29, v9, v8);
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
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = v13 + v17;
                v20 = 0xBF58476D1CE4E5B9 * ((*(v13 + v17 + 8) >> 31) ^ (*(v13 + v17 + 8) >> 1));
                v21 = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphNode>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31)) % *(a1 + 24));
                v22 = *(v19 + 8);
                v21[1] = v21[1] & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                v21[1] = *(v19 + 8) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                v21[2] = *(v19 + 16);
                *(v19 + 8) = 0;
                *(v19 + 16) = &str_67;
                v13 = *&v29[16];
                v21[3] = *(*&v29[16] + v17 + 24);
                v16 = *&v29[32];
              }

              ++v18;
              v17 += 32;
            }

            while (v18 < v16);
          }

          re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v29);
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
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + 32 * v4);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 32 * v4);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = 32 * v4;
  *(v23 + v26) = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *(v23 + v26) = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v23 + 32 * v4;
}

uint64_t re::DynamicArray<re::RigGraphNodeParameter>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::RigGraphNodeParameter>::setCapacity(a1, v5);
    ++*(a1 + 24);
    v6 = a2[2];
    if (v6 >= *(a1 + 16))
    {
      re::DynamicArray<re::RigGraphNodeParameter>::setCapacity(a1, a2[2]);
      std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeParameter *,re::RigGraphNodeParameter *,re::RigGraphNodeParameter *>(a2[4], (a2[4] + 40 * *(a1 + 16)), *(a1 + 32));
      v10 = *(a1 + 16);
      if (v10 != v6)
      {
        v11 = a2[4];
        v12 = *(a1 + 32);
        v13 = 40 * v10;
        v14 = 40 * v6;
        do
        {
          v15 = re::StringID::StringID((v12 + v13), (v11 + v13));
          *(v15 + 2) = *(v11 + v13 + 16);
          re::StringID::StringID((v15 + 24), (v11 + v13 + 24));
          v14 -= 40;
          v11 += 40;
          v12 += 40;
        }

        while (v13 != v14);
      }
    }

    else
    {
      std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeParameter *,re::RigGraphNodeParameter *,re::RigGraphNodeParameter *>(a2[4], (a2[4] + 40 * v6), *(a1 + 32));
      v7 = *(a1 + 16);
      if (v6 != v7)
      {
        v8 = *(a1 + 32) + 40 * v6;
        v9 = 40 * v7 - 40 * v6;
        do
        {
          re::StringID::destroyString((v8 + 24));
          re::StringID::destroyString(v8);
          v8 += 40;
          v9 -= 40;
        }

        while (v9);
      }
    }

    *(a1 + 16) = v6;
  }

  return a1;
}

unint64_t *std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeParameter *,re::RigGraphNodeParameter *,re::RigGraphNodeParameter *>(unint64_t *result, unint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (a3 + 24);
    v5 = (result + 3);
    do
    {
      re::StringID::operator=(v4 - 3, v5 - 3);
      *(v4 - 1) = *(v5 - 1);
      result = re::StringID::operator=(v4, v5);
      v4 += 5;
      v6 = v5 + 2;
      v5 += 5;
    }

    while (v6 != a2);
  }

  return result;
}

void std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeChild *,re::RigGraphNodeChild *,re::RigGraphNodeChild *>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      re::StringID::operator=(a3, v5);
      if (a3 != v5)
      {
        v6 = v5[2];
        if (*(a3 + 16))
        {
          if (v6)
          {
            re::DynamicArray<re::RigGraphNodeInputParameter>::copy((a3 + 16), (v5 + 2));
          }

          else
          {
            v8 = *(a3 + 32);
            *(a3 + 32) = 0;
            if (v8)
            {
              v9 = *(a3 + 48);
              v10 = 40 * v8;
              do
              {
                re::StringID::destroyString((v9 + 24));
                re::StringID::destroyString(v9);
                v9 += 40;
                v10 -= 40;
              }

              while (v10);
            }
          }

          ++*(a3 + 40);
        }

        else if (v6)
        {
          v7 = v5[4];
          *(a3 + 16) = v6;
          re::DynamicArray<re::RigGraphNodeParameter>::setCapacity((a3 + 16), v7);
          ++*(a3 + 40);
          re::DynamicArray<re::RigGraphNodeInputParameter>::copy((a3 + 16), (v5 + 2));
        }

        v11 = v5[7];
        if (*(a3 + 56))
        {
          if (v11)
          {
            re::DynamicArray<re::RigGraphNodeOutputParameter>::copy((a3 + 56), (v5 + 7));
          }

          else
          {
            v13 = *(a3 + 72);
            *(a3 + 72) = 0;
            if (v13)
            {
              v14 = *(a3 + 88);
              v15 = v13 << 6;
              do
              {
                re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(v14 + 24);
                re::StringID::destroyString(v14);
                v14 = (v14 + 64);
                v15 -= 64;
              }

              while (v15);
            }
          }

          ++*(a3 + 80);
        }

        else if (v11)
        {
          v12 = v5[9];
          *(a3 + 56) = v11;
          re::DynamicArray<re::RigGraphNodeOutputParameter>::setCapacity((a3 + 56), v12);
          ++*(a3 + 80);
          re::DynamicArray<re::RigGraphNodeOutputParameter>::copy((a3 + 56), (v5 + 7));
        }
      }

      v5 += 12;
      a3 += 96;
    }

    while (v5 != a2);
  }
}

void re::DynamicArray<re::RigGraphNodeInputParameter>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigGraphNodeParameter>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeParameter *,re::RigGraphNodeParameter *,re::RigGraphNodeParameter *>(*(a2 + 32), (*(a2 + 32) + 40 * a1[2]), a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 40 * v8;
      v12 = 40 * v4;
      do
      {
        v13 = re::StringID::StringID((v10 + v11), (v9 + v11));
        *(v13 + 2) = *(v9 + v11 + 16);
        re::StringID::StringID((v13 + 24), (v9 + v11 + 24));
        v9 += 40;
        v12 -= 40;
        v10 += 40;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeParameter *,re::RigGraphNodeParameter *,re::RigGraphNodeParameter *>(*(a2 + 32), (*(a2 + 32) + 40 * v4), a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4] + 40 * v4;
      v7 = 40 * v5 - 40 * v4;
      do
      {
        re::StringID::destroyString((v6 + 24));
        re::StringID::destroyString(v6);
        v6 += 40;
        v7 -= 40;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

void re::DynamicArray<re::RigGraphNodeOutputParameter>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigGraphNodeOutputParameter>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeOutputParameter *,re::RigGraphNodeOutputParameter *,re::RigGraphNodeOutputParameter *>(*(a2 + 32), (*(a2 + 32) + (a1[2] << 6)), a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = v8 << 6;
      v12 = v4 << 6;
      do
      {
        v13 = v9 + v11;
        v14 = v10 + v11;
        re::StringID::StringID((v10 + v11), (v9 + v11));
        v15 = *(v9 + v11 + 16);
        *(v14 + 24) = 0;
        *(v14 + 16) = v15;
        *(v14 + 32) = 0;
        *(v14 + 40) = 0;
        *(v14 + 48) = 0;
        v16 = *(v9 + v11 + 24);
        *(v14 + 56) = 0;
        if (v16)
        {
          v17 = *(v13 + 40);
          *(v10 + v11 + 24) = v16;
          re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::setCapacity((v14 + 24), v17);
          ++*(v14 + 48);
          re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::copy((v14 + 24), v13 + 24);
        }

        v9 += 64;
        v12 -= 64;
        v10 += 64;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeOutputParameter *,re::RigGraphNodeOutputParameter *,re::RigGraphNodeOutputParameter *>(*(a2 + 32), (*(a2 + 32) + (v4 << 6)), a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = (a1[4] + (v4 << 6));
      v7 = (v5 << 6) - (v4 << 6);
      do
      {
        re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(v6 + 24);
        re::StringID::destroyString(v6);
        v6 = (v6 + 64);
        v7 -= 64;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

void std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeOutputParameter *,re::RigGraphNodeOutputParameter *,re::RigGraphNodeOutputParameter *>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      re::StringID::operator=(a3, v5);
      *(a3 + 16) = v5[2];
      if (a3 != v5)
      {
        v6 = v5[3];
        if (*(a3 + 24))
        {
          if (v6)
          {
            re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::copy((a3 + 24), (v5 + 3));
          }

          else
          {
            v8 = *(a3 + 40);
            *(a3 + 40) = 0;
            if (v8)
            {
              v9 = *(a3 + 56);
              v10 = 56 * v8;
              do
              {
                re::StringID::destroyString((v9 + 40));
                re::StringID::destroyString((v9 + 16));
                re::StringID::destroyString(v9);
                v9 += 56;
                v10 -= 56;
              }

              while (v10);
            }
          }

          ++*(a3 + 48);
        }

        else if (v6)
        {
          v7 = v5[5];
          *(a3 + 24) = v6;
          re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::setCapacity((a3 + 24), v7);
          ++*(a3 + 48);
          re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::copy((a3 + 24), (v5 + 3));
        }
      }

      v5 += 8;
      a3 += 64;
    }

    while (v5 != a2);
  }
}

void re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true> *,re::Pair<re::StringID,re::RigGraphNodeInputParameter,true> *,re::Pair<re::StringID,re::RigGraphNodeInputParameter,true> *>(*(a2 + 32), (*(a2 + 32) + 56 * a1[2]), a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 56 * v8;
      v12 = 56 * v4;
      do
      {
        re::StringID::StringID((v10 + v11), (v9 + v11));
        re::StringID::StringID((v10 + v11 + 16), (v9 + v11 + 16));
        *(v10 + v11 + 32) = *(v9 + v11 + 32);
        re::StringID::StringID((v10 + v11 + 40), (v9 + v11 + 40));
        v9 += 56;
        v12 -= 56;
        v10 += 56;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true> *,re::Pair<re::StringID,re::RigGraphNodeInputParameter,true> *,re::Pair<re::StringID,re::RigGraphNodeInputParameter,true> *>(*(a2 + 32), (*(a2 + 32) + 56 * v4), a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4] + 56 * v4;
      v7 = -56 * v4 + 56 * v5;
      do
      {
        re::StringID::destroyString((v6 + 40));
        re::StringID::destroyString((v6 + 16));
        re::StringID::destroyString(v6);
        v6 += 56;
        v7 -= 56;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

unint64_t *std::__copy_impl::operator()[abi:nn200100]<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true> *,re::Pair<re::StringID,re::RigGraphNodeInputParameter,true> *,re::Pair<re::StringID,re::RigGraphNodeInputParameter,true> *>(unint64_t *result, unint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      re::StringID::operator=((a3 + v6 * 8), &v5[v6]);
      re::StringID::operator=((a3 + v6 * 8 + 16), &v5[v6 + 2]);
      *(a3 + v6 * 8 + 32) = v5[v6 + 4];
      result = re::StringID::operator=((a3 + v6 * 8 + 40), &v5[v6 + 5]);
      v6 += 7;
    }

    while (&v5[v6] != a2);
  }

  return result;
}

uint64_t re::FixedArray<re::RigGraphOperatorParameterDefinition>::FixedArray(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (!v4)
  {
    return a1;
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::init<>(a1, v4, a2[1]);
  v6 = a2[1];
  if (a1[1] == v6)
  {
    if (v6)
    {
      v7 = a2[2];
      v8 = a1[2];
      v9 = 32 * v6;
      do
      {
        re::StringID::operator=(v8, v7);
        re::StringID::operator=(v8 + 2, v7 + 2);
        v7 += 4;
        v8 += 4;
        v9 -= 32;
      }

      while (v9);
    }

    return a1;
  }

  re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash();
  __break(1u);
  return result;
}

void *re::FixedArray<re::RigGraphOperatorParameterDefinition>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
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
  v5 = (*(*a2 + 32))(a2, 32 * a3, 8);
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
    re::StringID::invalid(v7);
    *(v7 + 2) = 0;
    *(v7 + 3) = &str_67;
    v7 = (v7 + 32);
  }

  result = re::StringID::invalid(v7);
  *(v7 + 2) = 0;
  *(v7 + 3) = &str_67;
  return result;
}

void re::AnimationErrorCategoryImpl::~AnimationErrorCategoryImpl(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E6906520);
}

_BYTE *re::AnimationErrorCategoryImpl::message@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1 > 1999)
  {
    if (a1 > 3999)
    {
      if (a1 <= 5004)
      {
        if (a1 > 5001)
        {
          if (a1 == 5002)
          {
            v4 = "Invalid rig data value";
          }

          else if (a1 == 5003)
          {
            v4 = "Invalid rig data attribute";
          }

          else
          {
            v4 = "Invalid rig graph node type";
          }

          return std::string::basic_string[abi:nn200100]<0>(a2, v4);
        }

        switch(a1)
        {
          case 4000:
            v4 = "Circular dependency detected in evaluation tree.";
            return std::string::basic_string[abi:nn200100]<0>(a2, v4);
          case 5000:
            v4 = "Invalid rig data type";
            return std::string::basic_string[abi:nn200100]<0>(a2, v4);
          case 5001:
            v4 = "Error with the rig environment";
            return std::string::basic_string[abi:nn200100]<0>(a2, v4);
        }
      }

      else if (a1 <= 5999)
      {
        switch(a1)
        {
          case 5005:
            v4 = "Rig graph node not found";
            return std::string::basic_string[abi:nn200100]<0>(a2, v4);
          case 5006:
            v4 = "Rig graph node parameter not found";
            return std::string::basic_string[abi:nn200100]<0>(a2, v4);
          case 5007:
            v4 = "Rig value parsing error";
            return std::string::basic_string[abi:nn200100]<0>(a2, v4);
        }
      }

      else
      {
        if (a1 <= 6001)
        {
          if (a1 == 6000)
          {
            v4 = "Invalid joint attribute";
          }

          else
          {
            v4 = "Invalid joint attribute index";
          }

          return std::string::basic_string[abi:nn200100]<0>(a2, v4);
        }

        if (a1 == 6002)
        {
          v4 = "Invalid rig hierarchy component";
          return std::string::basic_string[abi:nn200100]<0>(a2, v4);
        }

        if (a1 == 6003)
        {
          v4 = "Invalid joint state";
          return std::string::basic_string[abi:nn200100]<0>(a2, v4);
        }
      }
    }

    else
    {
      if (a1 <= 2005)
      {
        if (a1 > 2002)
        {
          if (a1 == 2003)
          {
            v4 = "Transform not animated";
          }

          else if (a1 == 2004)
          {
            v4 = "Invalid minimum time";
          }

          else
          {
            v4 = "Invalid start time";
          }
        }

        else if (a1 == 2000)
        {
          v4 = "Check hasTransformAnimation() before calling importSRTSampledAnimation()";
        }

        else if (a1 == 2001)
        {
          v4 = "Invalid sample rate";
        }

        else
        {
          v4 = "Missing transform component on node";
        }

        return std::string::basic_string[abi:nn200100]<0>(a2, v4);
      }

      if (a1 <= 2999)
      {
        switch(a1)
        {
          case 2006:
            v4 = "Invalid end time";
            return std::string::basic_string[abi:nn200100]<0>(a2, v4);
          case 2007:
            v4 = "Mismatched animation transform count";
            return std::string::basic_string[abi:nn200100]<0>(a2, v4);
          case 2008:
            v4 = "Mismatched animation sample count";
            return std::string::basic_string[abi:nn200100]<0>(a2, v4);
        }
      }

      else
      {
        if (a1 <= 3001)
        {
          if (a1 == 3000)
          {
            v4 = "Invalid rig definition data.";
          }

          else
          {
            v4 = "Invalid rig node has been specified.";
          }

          return std::string::basic_string[abi:nn200100]<0>(a2, v4);
        }

        if (a1 == 3002)
        {
          v4 = "Invalid rig path has been specified.";
          return std::string::basic_string[abi:nn200100]<0>(a2, v4);
        }

        if (a1 == 3004)
        {
          v4 = "Invalid rig compilation state.";
          return std::string::basic_string[abi:nn200100]<0>(a2, v4);
        }
      }
    }

LABEL_93:
    v4 = "Unknown REAnimation error";
    return std::string::basic_string[abi:nn200100]<0>(a2, v4);
  }

  v3 = a1 - 1000;
  v4 = "Joint not in skeleton";
  switch(v3)
  {
    case 0:
      return std::string::basic_string[abi:nn200100]<0>(a2, v4);
    case 1:
      v4 = "Missing animation bind component";
      break;
    case 2:
      v4 = "Missing skeleton";
      break;
    case 3:
      v4 = "Missing joint paths";
      break;
    case 4:
      v4 = "Missing bind transforms";
      break;
    case 5:
      v4 = "Mismatched bind transforms";
      break;
    case 6:
      v4 = "Missing influence weights vertex attribute";
      break;
    case 7:
      v4 = "Bad format for influence weights";
      break;
    case 8:
      v4 = "Missing influence indexes";
      break;
    case 9:
      v4 = "Missing influence joint indexes data for vertex attribute";
      break;
    case 10:
      v4 = "No influences found for vertex";
      break;
    case 11:
      v4 = "Bad format for influence indexes";
      break;
    case 12:
      v4 = "Invalid object being processed for animation data";
      break;
    case 13:
      v4 = "No animation data found";
      break;
    case 14:
      v4 = "Invalid number of animation frames";
      break;
    case 15:
      v4 = "Destination weights array should be empty";
      break;
    case 16:
      v4 = "Destination joint indices array should be empty";
      break;
    case 17:
      v4 = "Destination influence end indices array should be empty";
      break;
    case 18:
      v4 = "Malformed animation file";
      break;
    case 19:
      v4 = "Vertex has no influences";
      break;
    case 20:
      v4 = "Expected influenceEndIndices to match vertexCount";
      break;
    case 21:
      v4 = "Missing influence weights data for vertex attribute";
      break;
    case 22:
      v4 = "Skeleton cannot be NULL when processing mesh data";
      break;
    case 23:
      v4 = "SkinningData cannot be NULL when processing mesh data";
      break;
    case 24:
      v4 = "Node must not be null when processing animation data";
      break;
    case 25:
      v4 = "Mismatched animation data sizes";
      break;
    case 26:
      v4 = "Could not find source skeleton for animation";
      break;
    case 27:
      v4 = "Invalid animation transform data";
      break;
    case 28:
      v4 = "Missing rest transforms";
      break;
    case 29:
      v4 = "MismatchedRestTransforms";
      break;
    case 30:
      v4 = "DuplicateJointName";
      break;
    case 31:
      v4 = "Invalid joint order.";
      break;
    case 32:
      v4 = "Invalid skeleton.";
      break;
    case 33:
      v4 = "Invalid topological change.";
      break;
    default:
      goto LABEL_93;
  }

  return std::string::basic_string[abi:nn200100]<0>(a2, v4);
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void re::introspect_EasingFunctionType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE18E598, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE18E5A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E5A0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE18E7C8, "EasingFunctionType", 4, 4, 1, 1);
      qword_1EE18E7C8 = &unk_1F5D0C658;
      qword_1EE18E808 = &re::introspect_EasingFunctionType(BOOL)::enumTable;
      dword_1EE18E7D8 = 9;
      __cxa_guard_release(&qword_1EE18E5A0);
    }

    if (_MergedGlobals_12)
    {
      break;
    }

    _MergedGlobals_12 = 1;
    re::IntrospectionRegistry::add(&qword_1EE18E7C8, a2);
    v49 = 0xA62999CF78DB603ALL;
    v50 = "EasingFunctionType";
    v53 = 208862;
    v54 = "int";
    v4 = v52[0];
    v5 = v52[1];
    if (v53)
    {
      if (v53)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE18E808;
      v53 = v4;
      v54 = v5;
      re::TypeBuilder::beginEnumType(v52, &v49, 1, 1, &v53);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v51.var0 = 2 * v11;
            v51.var1 = v10;
            re::TypeBuilder::addEnumConstant(v52, v15, &v51);
            if (*&v51.var0)
            {
              if (*&v51.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v51.var0 = 2 * v20;
              v51.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v52, v24, &v51);
              if (*&v51.var0)
              {
                if (*&v51.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v52, v26);
      xmmword_1EE18E7E8 = v51;
      if (v49)
      {
        if (v49)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v50);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE18E598);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Back";
      qword_1EE18E858 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Bounce";
      qword_1EE18E860 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Circle";
      qword_1EE18E868 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "Elastic";
      qword_1EE18E870 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "Exponential";
      qword_1EE18E878 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 5;
      *(v40 + 2) = "Hermite";
      qword_1EE18E880 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 6;
      *(v42 + 2) = "Logarithmic";
      qword_1EE18E888 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 7;
      *(v44 + 2) = "Power";
      qword_1EE18E890 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 8;
      *(v46 + 2) = "Sine";
      qword_1EE18E898 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 8) = 9;
      *(v48 + 16) = "CubicBezier";
      qword_1EE18E8A0 = v48;
      __cxa_guard_release(&qword_1EE18E598);
    }
  }
}

void re::introspect_EasingMode(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE18E5A8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE18E5B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E5B0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE18E810, "EasingMode", 4, 4, 1, 1);
      qword_1EE18E810 = &unk_1F5D0C658;
      qword_1EE18E850 = &re::introspect_EasingMode(BOOL)::enumTable;
      dword_1EE18E820 = 9;
      __cxa_guard_release(&qword_1EE18E5B0);
    }

    if (byte_1EE18E591)
    {
      break;
    }

    byte_1EE18E591 = 1;
    re::IntrospectionRegistry::add(&qword_1EE18E810, a2);
    v35 = 0xD92DC47A8731CLL;
    v36 = "EasingMode";
    v39 = 208862;
    v40 = "int";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE18E850;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE18E830 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE18E5A8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "In";
      qword_1EE18E768 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Out";
      qword_1EE18E770 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "InOut";
      qword_1EE18E778 = v34;
      __cxa_guard_release(&qword_1EE18E5A8);
    }
  }
}

void re::introspectionTable_EasingFunction(re *this)
{
  if ((byte_1EE18E592 & 1) == 0)
  {
    byte_1EE18E592 = 1;
    if ((atomic_load_explicit(&qword_1EE18E5B8, memory_order_acquire) & 1) == 0)
    {
      inited = __cxa_guard_acquire(&qword_1EE18E5B8);
      if (inited)
      {
        qword_1EE18EF68 = "BackEase";
        v2 = qword_1EE18E600;
        if (!qword_1EE18E600)
        {
          v2 = re::allocInfo_BackEase(inited);
          qword_1EE18E600 = v2;
          re::initInfo_BackEase(v2, v3);
        }

        qword_1EE18EF70 = v2;
        qword_1EE18EF80 = 0;
        qword_1EE18EF78 = 0;
        dword_1EE18EF88 = 0;
        qword_1EE18EF90 = "BounceEase";
        v4 = qword_1EE18E618;
        if (!qword_1EE18E618)
        {
          v4 = re::allocInfo_BounceEase(inited);
          qword_1EE18E618 = v4;
          re::initInfo_BounceEase(v4, v5);
        }

        qword_1EE18EF98 = v4;
        qword_1EE18EFA0 = 0;
        qword_1EE18EFA8 = 1;
        dword_1EE18EFB0 = 0;
        qword_1EE18EFB8 = "CircleEase";
        v6 = qword_1EE18E638;
        if (!qword_1EE18E638)
        {
          v6 = re::allocInfo_CircleEase(inited);
          qword_1EE18E638 = v6;
          re::initInfo_CircleEase(v6, v7);
        }

        qword_1EE18EFC0 = v6;
        qword_1EE18EFC8 = 0;
        qword_1EE18EFD0 = 2;
        dword_1EE18EFD8 = 0;
        qword_1EE18EFE0 = "ElasticEase";
        v8 = qword_1EE18E650;
        if (!qword_1EE18E650)
        {
          v8 = re::allocInfo_ElasticEase(inited);
          qword_1EE18E650 = v8;
          re::initInfo_ElasticEase(v8, v9);
        }

        qword_1EE18EFE8 = v8;
        qword_1EE18EFF0 = 0;
        qword_1EE18EFF8 = 3;
        dword_1EE18F000 = 0;
        qword_1EE18F008 = "ExponentialEase";
        v10 = qword_1EE18E668;
        if (!qword_1EE18E668)
        {
          v10 = re::allocInfo_ExponentialEase(inited);
          qword_1EE18E668 = v10;
          re::initInfo_ExponentialEase(v10, v11);
        }

        qword_1EE18F010 = v10;
        qword_1EE18F018 = 0;
        qword_1EE18F020 = 4;
        dword_1EE18F028 = 0;
        qword_1EE18F030 = "HermiteEase";
        v12 = qword_1EE18E688;
        if (!qword_1EE18E688)
        {
          v12 = re::allocInfo_HermiteEase(inited);
          qword_1EE18E688 = v12;
          inited = re::initInfo_HermiteEase(v12, v13);
        }

        qword_1EE18F038 = v12;
        qword_1EE18F040 = 0;
        qword_1EE18F048 = 5;
        dword_1EE18F050 = 0;
        qword_1EE18F058 = "LogarithmicEase";
        v14 = qword_1EE18E6A0;
        if (!qword_1EE18E6A0)
        {
          v14 = re::allocInfo_LogarithmicEase(inited);
          qword_1EE18E6A0 = v14;
          re::initInfo_LogarithmicEase(v14, v15);
        }

        qword_1EE18F060 = v14;
        qword_1EE18F068 = 0;
        qword_1EE18F070 = 6;
        dword_1EE18F078 = 0;
        qword_1EE18F080 = "PowerEase";
        v16 = qword_1EE18E6B8;
        if (!qword_1EE18E6B8)
        {
          v16 = re::allocInfo_PowerEase(inited);
          qword_1EE18E6B8 = v16;
          re::initInfo_PowerEase(v16, v17);
        }

        qword_1EE18F088 = v16;
        qword_1EE18F090 = 0;
        qword_1EE18F098 = 7;
        dword_1EE18F0A0 = 0;
        qword_1EE18F0A8 = "SineEase";
        v18 = qword_1EE18E6D8;
        if (!qword_1EE18E6D8)
        {
          v18 = re::allocInfo_SineEase(inited);
          qword_1EE18E6D8 = v18;
          re::initInfo_SineEase(v18, v19);
        }

        qword_1EE18F0B0 = v18;
        qword_1EE18F0B8 = 0;
        qword_1EE18F0C0 = 8;
        dword_1EE18F0C8 = 0;
        qword_1EE18F0D0 = "CubicBezierEase";
        v20 = qword_1EE18E6F0;
        if (!qword_1EE18E6F0)
        {
          v20 = re::allocInfo_CubicBezierEase(inited);
          qword_1EE18E6F0 = v20;
          re::initInfo_CubicBezierEase(v20, v21);
        }

        qword_1EE18F0D8 = v20;
        qword_1EE18F0E0 = 0;
        qword_1EE18F0E8 = 9;
        dword_1EE18F0F0 = 0;
        __cxa_guard_release(&qword_1EE18E5B8);
      }
    }

    dword_1EE18E6F8 = 10;
    qword_1EE18E700 = &qword_1EE18EF68;
  }
}

void *re::allocInfo_EasingFunction(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E5C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E5C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18E8A8, "EasingFunction");
    __cxa_guard_release(&qword_1EE18E5C8);
  }

  return &unk_1EE18E8A8;
}

void re::initInfo_EasingFunction(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x4714B64F78910C86;
  v12[1] = "EasingFunction";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE18E5C0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18E5C0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_EasingFunctionType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 32, 8);
      *v8 = 3;
      *(v8 + 8) = &qword_1EE18E7C8;
      *(v8 + 16) = 0;
      *(v8 + 24) = 8;
      qword_1EE18E708 = v8;
      v9 = re::introspectionAllocator(v8);
      re::introspectionTable_EasingFunction(v9);
      v10 = (*(*v9 + 32))(v9, 16, 8);
      *v10 = 2;
      *(v10 + 8) = &dword_1EE18E6F8;
      qword_1EE18E710 = v10;
      __cxa_guard_release(&qword_1EE18E5C0);
    }
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000010;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18E708;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

void *re::allocInfo_EasingFunctionBase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E5D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E5D8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18E938, "EasingFunctionBase");
    __cxa_guard_release(&qword_1EE18E5D8);
  }

  return &unk_1EE18E938;
}

void re::initInfo_EasingFunctionBase(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xA62999CF78CA4F68;
  v15[1] = "EasingFunctionBase";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE18E5E0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18E5E0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE18E5D0;
      if (!qword_1EE18E5D0)
      {
        v8 = re::allocInfo_EasingFunction(v6);
        qword_1EE18E5D0 = v8;
        re::initInfo_EasingFunction(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "EasingFunction";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18E718 = v10;
      v11 = re::introspectionAllocator(v10);
      re::introspect_EasingMode(v11, v12);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "mode";
      *(v13 + 16) = &qword_1EE18E810;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0xC00000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18E720 = v13;
      __cxa_guard_release(&qword_1EE18E5E0);
    }
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000010;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18E718;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::allocInfo_BackEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E5F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E5F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18E9C8, "BackEase");
    __cxa_guard_release(&qword_1EE18E5F0);
  }

  return &unk_1EE18E9C8;
}

void re::initInfo_BackEase(re *this, re::IntrospectionBase *a2)
{
  v16[0] = 0x377047CEB2ALL;
  v16[1] = "BackEase";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE18E5F8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18E5F8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE18E5E8;
      if (!qword_1EE18E5E8)
      {
        v8 = re::allocInfo_EasingFunctionBase(v6);
        qword_1EE18E5E8 = v8;
        re::initInfo_EasingFunctionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "EasingFunctionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18E728 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_float(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "amplitude";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x1000000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE18E730 = v14;
      __cxa_guard_release(&qword_1EE18E5F8);
    }
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000018;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18E728;
  *(this + 9) = re::internal::defaultConstruct<re::BackEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BackEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::BackEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::BackEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v15 = v17;
}

void re::internal::defaultConstruct<re::BackEase>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5CAE400;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1065353216;
}

uint64_t re::internal::defaultConstructV2<re::BackEase>(uint64_t result)
{
  *result = &unk_1F5CAE400;
  *(result + 8) = 0;
  *(result + 16) = 1065353216;
  return result;
}

void *re::allocInfo_BounceEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E608, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E608))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18EA58, "BounceEase");
    __cxa_guard_release(&qword_1EE18E608);
  }

  return &unk_1EE18EA58;
}

void re::initInfo_BounceEase(re *this, re::IntrospectionBase *a2)
{
  v20[0] = 0xD186850244D6CLL;
  v20[1] = "BounceEase";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE18E610, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18E610);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE18E5E8;
      if (!qword_1EE18E5E8)
      {
        v8 = re::allocInfo_EasingFunctionBase(v6);
        qword_1EE18E5E8 = v8;
        re::initInfo_EasingFunctionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "EasingFunctionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18E780 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_uint32_t(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "bounces";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x1000000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE18E788 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_float(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "bounciness";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x1400000002;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE18E790 = v18;
      __cxa_guard_release(&qword_1EE18E610);
    }
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000018;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE18E780;
  *(this + 9) = re::internal::defaultConstruct<re::BounceEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BounceEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::BounceEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::BounceEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v19 = v21;
}

double re::internal::defaultConstruct<re::BounceEase>(uint64_t a1, uint64_t a2, void *a3)
{
  *&result = 1;
  a3[1] = 1;
  *a3 = &unk_1F5CAE458;
  a3[2] = 0x4000000000000003;
  return result;
}

double re::internal::defaultConstructV2<re::BounceEase>(void *a1)
{
  *&result = 1;
  a1[1] = 1;
  *a1 = &unk_1F5CAE458;
  a1[2] = 0x4000000000000003;
  return result;
}

void *re::allocInfo_CircleEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E620, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E620))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18EAE8, "CircleEase");
    __cxa_guard_release(&qword_1EE18E620);
  }

  return &unk_1EE18EAE8;
}

void re::initInfo_CircleEase(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0xD3F06692911FCLL;
  v12[1] = "CircleEase";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE18E630, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18E630);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE18E5E8;
      if (!qword_1EE18E5E8)
      {
        v8 = re::allocInfo_EasingFunctionBase(v6);
        qword_1EE18E5E8 = v8;
        re::initInfo_EasingFunctionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "EasingFunctionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18E628 = v10;
      __cxa_guard_release(&qword_1EE18E630);
    }
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000010;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE18E628;
  *(this + 9) = re::internal::defaultConstruct<re::CircleEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CircleEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::CircleEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::CircleEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

double re::internal::defaultConstruct<re::CircleEase>(uint64_t a1, uint64_t a2, void *a3)
{
  *&result = 2;
  a3[1] = 2;
  *a3 = &unk_1F5CAE4B0;
  return result;
}

double re::internal::defaultConstructV2<re::CircleEase>(void *a1)
{
  *&result = 2;
  a1[1] = 2;
  *a1 = &unk_1F5CAE4B0;
  return result;
}

void *re::allocInfo_ElasticEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E640))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18EB78, "ElasticEase");
    __cxa_guard_release(&qword_1EE18E640);
  }

  return &unk_1EE18EB78;
}

void re::initInfo_ElasticEase(re *this, re::IntrospectionBase *a2)
{
  v20[0] = 0x1A6BE4973918086;
  v20[1] = "ElasticEase";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE18E648, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18E648);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE18E5E8;
      if (!qword_1EE18E5E8)
      {
        v8 = re::allocInfo_EasingFunctionBase(v6);
        qword_1EE18E5E8 = v8;
        re::initInfo_EasingFunctionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "EasingFunctionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18E798 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_uint32_t(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "oscillations";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x1000000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE18E7A0 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_float(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "springiness";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x1400000002;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE18E7A8 = v18;
      __cxa_guard_release(&qword_1EE18E648);
    }
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000018;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE18E798;
  *(this + 9) = re::internal::defaultConstruct<re::ElasticEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ElasticEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::ElasticEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::ElasticEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v19 = v21;
}

double re::internal::defaultConstruct<re::ElasticEase>(uint64_t a1, uint64_t a2, void *a3)
{
  *&result = 3;
  a3[1] = 3;
  *a3 = &unk_1F5CAE508;
  a3[2] = 0x4040000000000003;
  return result;
}

double re::internal::defaultConstructV2<re::ElasticEase>(void *a1)
{
  *&result = 3;
  a1[1] = 3;
  *a1 = &unk_1F5CAE508;
  a1[2] = 0x4040000000000003;
  return result;
}

void *re::allocInfo_ExponentialEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E658, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E658))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18EC08, "ExponentialEase");
    __cxa_guard_release(&qword_1EE18E658);
  }

  return &unk_1EE18EC08;
}

void re::initInfo_ExponentialEase(re *this, re::IntrospectionBase *a2)
{
  v16[0] = 0x41C8769A90529D66;
  v16[1] = "ExponentialEase";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE18E660, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18E660);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE18E5E8;
      if (!qword_1EE18E5E8)
      {
        v8 = re::allocInfo_EasingFunctionBase(v6);
        qword_1EE18E5E8 = v8;
        re::initInfo_EasingFunctionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "EasingFunctionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18E738 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_float(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "exponent";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x1000000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE18E740 = v14;
      __cxa_guard_release(&qword_1EE18E660);
    }
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000018;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18E738;
  *(this + 9) = re::internal::defaultConstruct<re::ExponentialEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ExponentialEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::ExponentialEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::ExponentialEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v15 = v17;
}

double re::internal::defaultConstruct<re::ExponentialEase>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 4;
  *(a3 + 8) = 4;
  *a3 = &unk_1F5CAE560;
  *(a3 + 16) = 0x40000000;
  return result;
}

double re::internal::defaultConstructV2<re::ExponentialEase>(uint64_t a1)
{
  *&result = 4;
  *(a1 + 8) = 4;
  *a1 = &unk_1F5CAE560;
  *(a1 + 16) = 0x40000000;
  return result;
}

void *re::allocInfo_HermiteEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E670, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E670))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18EC98, "HermiteEase");
    __cxa_guard_release(&qword_1EE18E670);
  }

  return &unk_1EE18EC98;
}

void re::initInfo_HermiteEase(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x1B70060016C0920;
  v12[1] = "HermiteEase";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE18E680, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18E680);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE18E5E8;
      if (!qword_1EE18E5E8)
      {
        v8 = re::allocInfo_EasingFunctionBase(v6);
        qword_1EE18E5E8 = v8;
        re::initInfo_EasingFunctionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "EasingFunctionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18E678 = v10;
      __cxa_guard_release(&qword_1EE18E680);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE18E678;
  *(this + 9) = re::internal::defaultConstruct<re::HermiteEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::HermiteEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::HermiteEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::HermiteEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

double re::internal::defaultConstruct<re::HermiteEase>(uint64_t a1, uint64_t a2, void *a3)
{
  *&result = 5;
  a3[1] = 5;
  *a3 = &unk_1F5CADE60;
  return result;
}

double re::internal::defaultConstructV2<re::HermiteEase>(void *a1)
{
  *&result = 5;
  a1[1] = 5;
  *a1 = &unk_1F5CADE60;
  return result;
}

void *re::allocInfo_LogarithmicEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E690))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18ED28, "LogarithmicEase");
    __cxa_guard_release(&qword_1EE18E690);
  }

  return &unk_1EE18ED28;
}

void re::initInfo_LogarithmicEase(re *this, re::IntrospectionBase *a2)
{
  v16[0] = 0x19A3FD633D218F5ALL;
  v16[1] = "LogarithmicEase";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE18E698, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18E698);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE18E5E8;
      if (!qword_1EE18E5E8)
      {
        v8 = re::allocInfo_EasingFunctionBase(v6);
        qword_1EE18E5E8 = v8;
        re::initInfo_EasingFunctionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "EasingFunctionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18E748 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_float(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "base";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x1000000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE18E750 = v14;
      __cxa_guard_release(&qword_1EE18E698);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18E748;
  *(this + 9) = re::internal::defaultConstruct<re::LogarithmicEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::LogarithmicEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::LogarithmicEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::LogarithmicEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v15 = v17;
}

double re::internal::defaultConstruct<re::LogarithmicEase>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 6;
  *(a3 + 8) = 6;
  *a3 = &unk_1F5CAE5B8;
  *(a3 + 16) = 0x40000000;
  return result;
}

double re::internal::defaultConstructV2<re::LogarithmicEase>(uint64_t a1)
{
  *&result = 6;
  *(a1 + 8) = 6;
  *a1 = &unk_1F5CAE5B8;
  *(a1 + 16) = 0x40000000;
  return result;
}

void *re::allocInfo_PowerEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E6A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E6A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18EDB8, "PowerEase");
    __cxa_guard_release(&qword_1EE18E6A8);
  }

  return &unk_1EE18EDB8;
}

void re::initInfo_PowerEase(re *this, re::IntrospectionBase *a2)
{
  v16[0] = 0x81DD5396ECE6;
  v16[1] = "PowerEase";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE18E6B0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18E6B0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE18E5E8;
      if (!qword_1EE18E5E8)
      {
        v8 = re::allocInfo_EasingFunctionBase(v6);
        qword_1EE18E5E8 = v8;
        re::initInfo_EasingFunctionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "EasingFunctionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18E758 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_float(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "power";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x1000000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE18E760 = v14;
      __cxa_guard_release(&qword_1EE18E6B0);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18E758;
  *(this + 9) = re::internal::defaultConstruct<re::PowerEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::PowerEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::PowerEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::PowerEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v15 = v17;
}

double re::internal::defaultConstruct<re::PowerEase>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 7;
  *(a3 + 8) = 7;
  *a3 = &unk_1F5CAE610;
  *(a3 + 16) = 0x40000000;
  return result;
}

double re::internal::defaultConstructV2<re::PowerEase>(uint64_t a1)
{
  *&result = 7;
  *(a1 + 8) = 7;
  *a1 = &unk_1F5CAE610;
  *(a1 + 16) = 0x40000000;
  return result;
}

void *re::allocInfo_SineEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E6C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E6C0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18EE48, "SineEase");
    __cxa_guard_release(&qword_1EE18E6C0);
  }

  return &unk_1EE18EE48;
}

void re::initInfo_SineEase(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x45443AA1876;
  v12[1] = "SineEase";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE18E6D0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18E6D0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE18E5E8;
      if (!qword_1EE18E5E8)
      {
        v8 = re::allocInfo_EasingFunctionBase(v6);
        qword_1EE18E5E8 = v8;
        re::initInfo_EasingFunctionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "EasingFunctionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18E6C8 = v10;
      __cxa_guard_release(&qword_1EE18E6D0);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE18E6C8;
  *(this + 9) = re::internal::defaultConstruct<re::SineEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SineEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::SineEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::SineEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

double re::internal::defaultConstruct<re::SineEase>(uint64_t a1, uint64_t a2, void *a3)
{
  *&result = 8;
  a3[1] = 8;
  *a3 = &unk_1F5CAE668;
  return result;
}

double re::internal::defaultConstructV2<re::SineEase>(void *a1)
{
  *&result = 8;
  a1[1] = 8;
  *a1 = &unk_1F5CAE668;
  return result;
}

void *re::allocInfo_CubicBezierEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E6E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E6E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18EED8, "CubicBezierEase");
    __cxa_guard_release(&qword_1EE18E6E0);
  }

  return &unk_1EE18EED8;
}

void re::initInfo_CubicBezierEase(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0xF7356B4E535BA46ELL;
  v18[1] = "CubicBezierEase";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE18E6E8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18E6E8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE18E5D0;
      if (!qword_1EE18E5D0)
      {
        v8 = re::allocInfo_EasingFunction(v6);
        qword_1EE18E5D0 = v8;
        re::initInfo_EasingFunction(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "EasingFunction";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18E7B0 = v10;
      v11 = re::introspectionAllocator(v10);
      v12 = re::introspect_Vector2F(1);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "controlPoint1";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18E7B8 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = re::introspect_Vector2F(1);
      v16 = (*(*v14 + 32))(v14, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "controlPoint2";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1800000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE18E7C0 = v16;
      __cxa_guard_release(&qword_1EE18E6E8);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE18E7B0;
  *(this + 9) = re::internal::defaultConstruct<re::CubicBezierEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CubicBezierEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::CubicBezierEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::CubicBezierEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

double re::internal::defaultConstruct<re::CubicBezierEase>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 9;
  *a3 = &unk_1F5CAE6C0;
  result = 5.23869071e-11;
  *(a3 + 16) = 0x3DCCCCCD3E800000;
  *(a3 + 24) = 0x3F8000003E800000;
  return result;
}

double re::internal::defaultConstructV2<re::CubicBezierEase>(uint64_t a1)
{
  *(a1 + 8) = 9;
  *a1 = &unk_1F5CAE6C0;
  result = 5.23869071e-11;
  *(a1 + 16) = 0x3DCCCCCD3E800000;
  *(a1 + 24) = 0x3F8000003E800000;
  return result;
}

float re::BackEase::clone(re::BackEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *(v4 + 8) = *(this + 1);
  *v4 = &unk_1F5CAE400;
  result = *(this + 4);
  *(v4 + 16) = result;
  return result;
}

float re::BackEase::easeIn(re::BackEase *this, float a2)
{
  v3 = *(this + 4);
  v4 = a2 * a2;
  v5 = sinf(a2 * -3.1416);
  v6 = 0.0;
  if (v3 > 0.0)
  {
    v6 = v3;
  }

  return (v5 * (v6 * a2)) + (v4 * a2);
}

float re::BounceEase::clone(re::BounceEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *(v4 + 8) = *(this + 1);
  *v4 = &unk_1F5CAE458;
  *(v4 + 16) = *(this + 4);
  result = *(this + 5);
  *(v4 + 20) = result;
  return result;
}

double re::CircleEase::clone(re::CircleEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 16, 8);
  result = *(this + 1);
  *(v4 + 8) = result;
  *v4 = &unk_1F5CAE4B0;
  return result;
}

float re::CircleEase::easeIn(re::CircleEase *this, float a2)
{
  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  if (a2 < -1.0)
  {
    a2 = -1.0;
  }

  return 1.0 - sqrtf(1.0 - (a2 * a2));
}

float re::ElasticEase::clone(re::ElasticEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *(v4 + 8) = *(this + 1);
  *v4 = &unk_1F5CAE508;
  *(v4 + 16) = *(this + 4);
  result = *(this + 5);
  *(v4 + 20) = result;
  return result;
}

float re::ElasticEase::easeIn(re::ElasticEase *this, float a2)
{
  v3 = *(this + 4);
  v4 = fmaxf(*(this + 5), 0.0);
  v5 = a2;
  if (v4 >= 0.00001)
  {
    v6 = 1.0 - expf(v4 * a2);
    v5 = v6 / (1.0 - expf(v4));
  }

  return sinf(((fmaxf(v3, 0.0) + 0.25) * 6.2832) * a2) * v5;
}

float re::ExponentialEase::clone(re::ExponentialEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *(v4 + 8) = *(this + 1);
  *v4 = &unk_1F5CAE560;
  result = *(this + 4);
  *(v4 + 16) = result;
  return result;
}

void re::ExponentialEase::easeIn(re::ExponentialEase *this, float a2)
{
  v2 = *(this + 4);
  if (fabsf(v2) >= 0.00001)
  {
    expf(v2 * a2);
    expf(v2);
  }
}

float re::LogarithmicEase::clone(re::LogarithmicEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *(v4 + 8) = *(this + 1);
  *v4 = &unk_1F5CAE5B8;
  result = *(this + 4);
  *(v4 + 16) = result;
  return result;
}

float re::LogarithmicEase::easeIn(re::LogarithmicEase *this, float a2)
{
  v2 = 0.0;
  if (a2 >= 0.0)
  {
    v3 = *(this + 4);
    v4 = logf(((v3 + -1.0) * a2) + 1.0);
    return v4 / logf(v3);
  }

  return v2;
}

float re::PowerEase::clone(re::PowerEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *(v4 + 8) = *(this + 1);
  *v4 = &unk_1F5CAE610;
  result = *(this + 4);
  *(v4 + 16) = result;
  return result;
}

double re::SineEase::clone(re::SineEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 16, 8);
  result = *(this + 1);
  *(v4 + 8) = result;
  *v4 = &unk_1F5CAE668;
  return result;
}

uint64_t re::CubicBezierEase::clone(re::CubicBezierEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  result = (*(*v3[2] + 32))(v3[2], 32, 8);
  *(result + 8) = 9;
  *result = &unk_1F5CAE6C0;
  *(result + 16) = *(this + 2);
  *(result + 24) = *(this + 3);
  return result;
}

re::RigDataValue *re::RigDataValue::RigDataValue(re::RigDataValue *this, const re::RigDataValue *a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 32) = *(a2 + 32);
  re::StringID::StringID((this + 40), (a2 + 40));
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(this + 56, a2 + 7);
  *(this + 96) = *(a2 + 96);
  v4 = *(a2 + 7);
  v5 = *(a2 + 8);
  v6 = *(a2 + 10);
  *(this + 9) = *(a2 + 9);
  *(this + 10) = v6;
  *(this + 7) = v4;
  *(this + 8) = v5;
  *(this + 22) = *(a2 + 22);
  *(this + 23) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 29) = &str_67;
  re::DynamicArray<re::RigDataValue>::DynamicArray(this + 240, a2 + 30);
  re::StringID::copy((this + 224), (a2 + 224), *this);
  v7 = *(a2 + 23);
  if (v7)
  {
    v8 = (*(**this + 32))(*this, 360, 8);
    v9 = *(v7 + 16);
    *v8 = *v7;
    *(v8 + 16) = v9;
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v8 + 24, v7 + 24);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v8 + 72, v7 + 72);
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(v8 + 120, (v7 + 120));
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(v8 + 160, (v7 + 160));
    re::DynamicArray<re::StringID>::DynamicArray(v8 + 200, (v7 + 200));
    re::DynamicArray<unsigned long>::DynamicArray(v8 + 240, (v7 + 240));
    re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(v8 + 280, (v7 + 280));
    re::DynamicArray<unsigned long>::DynamicArray(v8 + 320, (v7 + 320));
    v11[0] = &unk_1F5CAE710;
    v11[1] = this;
    v11[3] = v11;
    v12 = v8;
    v13[3] = v13;
    v13[0] = &unk_1F5CAE710;
    v13[1] = this;
    std::unique_ptr<re::RigHierarchy,std::function<void ()(re::RigHierarchy*)>>::operator=[abi:nn200100](this + 23, &v12);
    std::unique_ptr<re::RigHierarchy,std::function<void ()(re::RigHierarchy*)>>::~unique_ptr[abi:nn200100](&v12);
    std::__function::__value_func<void ()(re::RigHierarchy *)>::~__value_func[abi:nn200100](v11);
  }

  return this;
}

uint64_t *std::unique_ptr<re::RigHierarchy,std::function<void ()(re::RigHierarchy*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(re::RigHierarchy *)>::operator()((a1 + 1), v5);
  }

  v6 = a1[4];
  a1[4] = 0;
  if (v6 == a1 + 1)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v7 = a2[4];
  if (v7)
  {
    if (v7 == a2 + 1)
    {
      a1[4] = (a1 + 1);
      (*(*a2[4] + 24))(a2[4], a1 + 1);
    }

    else
    {
      a1[4] = v7;
      a2[4] = 0;
    }
  }

  else
  {
    a1[4] = 0;
  }

  return a1;
}

void re::RigDataValue::init(re::RigDataValue *this, re::Allocator *a2, const re::RigEnvironment *a3, const re::RigDataTypeClass *a4, re::EvaluationTree *a5)
{
  v53 = *MEMORY[0x1E69E9840];
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a5;
  *(this + 3) = 0;
  v9 = (a4 + 24);
  *(this + 32) = *a4;
  re::StringID::operator=(this + 5, a4 + 1);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::operator=(this + 56, v9);
  *(this + 96) = 1;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = -1;
  v11 = *(this + 32);
  if ((v11 - 1) >= 9 && (v11 - 11) >= 3)
  {
    if (v11 != 10)
    {
      re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Cannot initialize a rig data value with an invalid rig data type.", "!Unreachable code", "init", 262, a5);
      _os_crash();
      __break(1u);
      return;
    }

    v12 = (*(*a2 + 32))(a2, 360, 8);
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0u;
    *(v12 + 160) = 0u;
    *(v12 + 176) = 0u;
    *(v12 + 192) = 0u;
    *(v12 + 208) = 0u;
    *(v12 + 224) = 0u;
    *(v12 + 240) = 0u;
    *(v12 + 256) = 0u;
    *(v12 + 272) = 0u;
    *(v12 + 288) = 0u;
    *(v12 + 320) = 0u;
    *(v12 + 336) = 0u;
    *(v12 + 60) = 0x7FFFFFFF;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0x7FFFFFFF00000000;
    *(v12 + 120) = 0;
    *(v12 + 128) = 0;
    *(v12 + 136) = 0;
    *(v12 + 144) = 0;
    *(v12 + 352) = 0;
    *(v12 + 152) = 0u;
    *(v12 + 168) = 0u;
    *(v12 + 184) = 0;
    *(v12 + 192) = 0u;
    *(v12 + 208) = 0u;
    *(v12 + 224) = 0;
    *(v12 + 232) = 0u;
    *(v12 + 248) = 0u;
    *(v12 + 264) = 0;
    *(v12 + 288) = 0u;
    *(v12 + 304) = 0u;
    *(v12 + 304) = 0;
    *(v12 + 272) = 0u;
    *(v12 + 344) = 0;
    *(v12 + 312) = 0u;
    *(v12 + 328) = 0u;
    v41 = &unk_1F5CAE820;
    v42 = this;
    v44 = &v41;
    *&v21 = &v19 + 8;
    *&v19 = v12;
    *(&v19 + 1) = &unk_1F5CAE820;
    *&v20 = this;
    std::unique_ptr<re::RigHierarchy,std::function<void ()(re::RigHierarchy*)>>::operator=[abi:nn200100](this + 23, &v19);
    std::unique_ptr<re::RigHierarchy,std::function<void ()(re::RigHierarchy*)>>::~unique_ptr[abi:nn200100](&v19);
    std::__function::__value_func<void ()(re::RigHierarchy *)>::~__value_func[abi:nn200100](&v41);
    re::RigHierarchy::init(*(this + 23), a3, a2, a5, 0, 0);
  }

  *(this + 30) = a2;
  re::DynamicArray<re::RigDataValue>::setCapacity(this + 30, *(a4 + 5));
  ++*(this + 66);
  v13 = *(a4 + 5);
  if (v13)
  {
    v14 = 0;
    v15 = 16;
    do
    {
      if (v13 <= v14)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v45[10] = 136315906;
        v46 = "operator[]";
        v47 = 1024;
        v48 = 797;
        v49 = 2048;
        v50 = v14;
        v51 = 2048;
        v52 = v13;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      re::RigEnvironment::lookupRigDataType(*(this + 1), (*(a4 + 7) + v15), &v41);
      v16 = *(this + 1);
      v19 = 0u;
      v20 = 0u;
      LOBYTE(v21) = 0;
      *(&v21 + 1) = 0;
      *&v22 = &str_67;
      v25 = 0;
      *(&v22 + 1) = 0;
      v23 = 0uLL;
      v24 = 0;
      v26 = 0;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = -1;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = &str_67;
      v40 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v36 = 0;
      re::RigDataValue::init(&v19, a2, v16, &v42, a5);
      re::DynamicArray<re::RigDataValue>::add(this + 240, &v19);
      re::RigDataValue::~RigDataValue(&v19);
      if (v41 == 1)
      {
        v17 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v45);
        if (v43)
        {
          if (v43)
          {
          }
        }
      }

      ++v14;
      v13 = *(a4 + 5);
      v15 += 32;
    }

    while (v14 < v13);
  }
}

void *re::RigDataValue::operator=(void *a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  re::RigDataValue::deinit(a1);
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  re::StringID::operator=(a1 + 5, (a2 + 40));
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::operator=((a1 + 7), (a2 + 56));
  *(a1 + 96) = *(a2 + 96);
  v4 = *(a2 + 112);
  v5 = *(a2 + 128);
  v6 = *(a2 + 160);
  *(a1 + 9) = *(a2 + 144);
  *(a1 + 10) = v6;
  *(a1 + 7) = v4;
  *(a1 + 8) = v5;
  a1[22] = *(a2 + 176);
  re::DynamicArray<re::RigDataValue>::operator=(a1 + 30, a2 + 240);
  re::StringID::copy((a1 + 28), (a2 + 224), *a1);
  v7 = *(a2 + 184);
  if (v7)
  {
    v8 = (*(**a1 + 32))(*a1, 360, 8);
    v9 = *(v7 + 16);
    *v8 = *v7;
    *(v8 + 16) = v9;
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v8 + 24, v7 + 24);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v8 + 72, v7 + 72);
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(v8 + 120, (v7 + 120));
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(v8 + 160, v7 + 160);
    re::DynamicArray<re::StringID>::DynamicArray(v8 + 200, (v7 + 200));
    re::DynamicArray<unsigned long>::DynamicArray(v8 + 240, (v7 + 240));
    re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(v8 + 280, (v7 + 280));
    re::DynamicArray<unsigned long>::DynamicArray(v8 + 320, (v7 + 320));
    v11[0] = &unk_1F5CAE7A0;
    v11[1] = a1;
    v11[3] = v11;
    v12 = v8;
    v13[3] = v13;
    v13[0] = &unk_1F5CAE7A0;
    v13[1] = a1;
    std::unique_ptr<re::RigHierarchy,std::function<void ()(re::RigHierarchy*)>>::operator=[abi:nn200100](a1 + 23, &v12);
    std::unique_ptr<re::RigHierarchy,std::function<void ()(re::RigHierarchy*)>>::~unique_ptr[abi:nn200100](&v12);
    std::__function::__value_func<void ()(re::RigHierarchy *)>::~__value_func[abi:nn200100](v11);
  }

  return a1;
}

double re::RigDataValue::deinit(re::RigDataValue *this)
{
  v2 = *(this + 23);
  *(this + 23) = 0;
  if (v2)
  {
    std::function<void ()(re::RigHierarchy *)>::operator()(this + 192, v2);
  }

  if (*(this + 56))
  {
    (*(**this + 40))(*this, *(this + 29));
  }

  *(this + 28) = 0;
  *(this + 29) = &str_67;
  re::DynamicArray<re::RigDataValue>::deinit(this + 240);
  result = 0.0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 22) = -1;
  *(this + 3) = 0;
  *(this + 96) = 0;
  *this = 0;
  return result;
}

void re::RigDataValue::resolveRuntimeInputValues(re::RigDataValue *this, re::EvaluationContextManager *a2)
{
  v4 = *(this + 32);
  if (!v4)
  {
    if (*(this + 96) != 2)
    {
      return;
    }

    v7 = *(this + 32);
    if (v7 > 4)
    {
      if (*(this + 32) > 6u)
      {
        if (v7 == 7)
        {
          v16 = *(this + 22);
          v21 = 0;
          *&v17 = v16;
          re::DynamicArray<unsigned long>::add(a2 + 31, &v17);
          re::DynamicArray<unsigned long>::add(a2 + 76, &v21);
          v9 = *(a2 + 33);
          goto LABEL_25;
        }

        if (v7 == 8)
        {
          v12 = *(this + 22);
          v17 = 0u;
          v21 = v12;
          re::DynamicArray<unsigned long>::add(a2 + 36, &v21);
          re::DynamicArray<re::Vector3<float>>::add((a2 + 648), &v17);
          v9 = *(a2 + 38);
          goto LABEL_25;
        }
      }

      else
      {
        if (v7 == 5)
        {
          v14 = *(this + 22);
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          v21 = v14;
          re::DynamicArray<unsigned long>::add(a2 + 21, &v21);
          re::DynamicArray<re::Matrix4x4<float>>::add((a2 + 528), &v17);
          v9 = *(a2 + 23);
          goto LABEL_25;
        }

        if (v7 == 6)
        {
          v10 = *(this + 22);
          v17 = xmmword_1E30474D0;
          v21 = v10;
          re::DynamicArray<unsigned long>::add(a2 + 26, &v21);
          re::DynamicArray<re::Vector3<float>>::add((a2 + 568), &v17);
          v9 = *(a2 + 28);
          goto LABEL_25;
        }
      }
    }

    else if (*(this + 32) > 2u)
    {
      if (v7 == 3)
      {
        v15 = *(this + 22);
        LODWORD(v21) = 0;
        *&v17 = v15;
        re::DynamicArray<unsigned long>::add(a2 + 11, &v17);
        re::DynamicArray<float>::add((a2 + 448), &v21);
        v9 = *(a2 + 13);
        goto LABEL_25;
      }

      if (v7 == 4)
      {
        v11 = *(this + 22);
        v18 = 0u;
        v19 = 0u;
        v17 = 0u;
        v21 = v11;
        re::DynamicArray<unsigned long>::add(a2 + 16, &v21);
        re::DynamicArray<re::Matrix3x3<float>>::add((a2 + 488), &v17);
        v9 = *(a2 + 18);
        goto LABEL_25;
      }
    }

    else
    {
      if (v7 == 1)
      {
        v13 = *(this + 22);
        LODWORD(v21) = 0;
        *&v17 = v13;
        re::DynamicArray<unsigned long>::add(a2 + 1, &v17);
        re::DynamicArray<int>::add(a2 + 46, &v21);
        v9 = *(a2 + 3);
        goto LABEL_25;
      }

      if (v7 == 2)
      {
        v8 = *(this + 22);
        LODWORD(v21) = 0;
        *&v17 = v8;
        re::DynamicArray<unsigned long>::add(a2 + 6, &v17);
        re::DynamicArray<int>::add(a2 + 51, &v21);
        v9 = *(a2 + 8);
LABEL_25:
        *(this + 22) = v9 - 1;
        *(this + 96) = 3;
        return;
      }
    }

    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Cannot resolve invalid compile time type: %u", "!Unreachable code", "resolveRuntimeInputValues", 377, *(this + 32));
    _os_crash();
    __break(1u);
    return;
  }

  v5 = *(this + 34);
  v6 = 288 * v4;
  do
  {
    re::RigDataValue::resolveRuntimeInputValues(v5, a2);
    v5 = (v5 + 288);
    v6 -= 288;
  }

  while (v6);
}

uint64_t re::RigDataValue::resolveRuntimeOutputValues(uint64_t this, re::EvaluationContextManager *a2)
{
  v3 = this;
  v4 = *(this + 256);
  if (v4)
  {
    v5 = *(this + 272);
    v6 = 288 * v4;
    do
    {
      this = re::RigDataValue::resolveRuntimeOutputValues(v5, a2);
      v5 = (v5 + 288);
      v6 -= 288;
    }

    while (v6);
    return this;
  }

  v7 = *(this + 96);
  if (v7 == 2)
  {
    v8 = *(this + 176);
  }

  else
  {
    v8 = -1;
  }

  v9 = *(this + 32);
  if (v9 > 4)
  {
    if (*(this + 32) > 6u)
    {
      if (v9 == 7)
      {
        v11 = v8;
        this = re::DynamicArray<unsigned long>::add(a2 + 211, &v11);
        v10 = *(a2 + 213);
        goto LABEL_27;
      }

      if (v9 == 8)
      {
        v11 = v8;
        this = re::DynamicArray<unsigned long>::add(a2 + 216, &v11);
        v10 = *(a2 + 218);
        goto LABEL_27;
      }
    }

    else
    {
      if (v9 == 5)
      {
        v11 = v8;
        this = re::DynamicArray<unsigned long>::add(a2 + 201, &v11);
        v10 = *(a2 + 203);
        goto LABEL_27;
      }

      if (v9 == 6)
      {
        v11 = v8;
        this = re::DynamicArray<unsigned long>::add(a2 + 206, &v11);
        v10 = *(a2 + 208);
        goto LABEL_27;
      }
    }
  }

  else if (*(this + 32) > 2u)
  {
    if (v9 == 3)
    {
      v11 = v8;
      this = re::DynamicArray<unsigned long>::add(a2 + 191, &v11);
      v10 = *(a2 + 193);
      goto LABEL_27;
    }

    if (v9 == 4)
    {
      v11 = v8;
      this = re::DynamicArray<unsigned long>::add(a2 + 196, &v11);
      v10 = *(a2 + 198);
      goto LABEL_27;
    }
  }

  else
  {
    if (v9 == 1)
    {
      v11 = v8;
      this = re::DynamicArray<unsigned long>::add(a2 + 181, &v11);
      v10 = *(a2 + 183);
      goto LABEL_27;
    }

    if (v9 == 2)
    {
      v11 = v8;
      this = re::DynamicArray<unsigned long>::add(a2 + 186, &v11);
      v10 = *(a2 + 188);
LABEL_27:
      *(v3 + 176) = v10 - 1;
      *(v3 + 96) = 4;
      return this;
    }
  }

  if (v7 != 1)
  {
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Cannot resolve invalid compile time type: %u", "!Unreachable code", "resolveRuntimeOutputValues", 443, *(this + 32));
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::RigDataValue::setRuntimeContext(uint64_t this, re::EvaluationContext *a2)
{
  if (*(this + 96) != 1)
  {
    *(this + 24) = a2;
  }

  v3 = *(this + 256);
  if (v3)
  {
    v4 = *(this + 272);
    v5 = 288 * v3;
    do
    {
      this = re::RigDataValue::setRuntimeContext(v4, a2);
      v4 = (v4 + 288);
      v5 -= 288;
    }

    while (v5);
  }

  return this;
}

uint64_t re::RigDataValue::attributeValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = (*a2 + v6);
  v9 = memchr(*a2, 46, v6);
  v10 = v9 - v7;
  v11 = v9 != 0 && v9 != v8;
  if (v11)
  {
    v12 = v9 - v7;
  }

  else
  {
    v12 = v6;
  }

  v13 = *(a1 + 256);
  if (!v13)
  {
    goto LABEL_10;
  }

  v26 = v11;
  v14 = 0;
  for (i = 0; i != v13; ++i)
  {
    v16 = *(re::RigDataTypeClass::attributeName((a1 + 32), i) + 8);
    if (v12 == strlen(v16))
    {
      result = memcmp(v7, v16, v12);
      if (!result)
      {
        if (v26)
        {
          v23 = *a2 + *(a2 + 8) - (*a2 + v10 + 1);
          v27[0] = *a2 + v10 + 1;
          v27[1] = v23;
          v24 = *(a1 + 256);
          if (v24 > i)
          {
            return re::RigDataValue::attributeValue(*(a1 + 272) - v14, v27);
          }

          v27[2] = 0;
          v33 = 0u;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v28 = 136315906;
          *&v28[4] = "operator[]";
          *&v28[12] = 1024;
          *&v28[14] = 797;
          *&v28[18] = 2048;
          *&v28[20] = i;
          *&v28[28] = 2048;
          *&v28[30] = v24;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        else
        {
          v24 = *(a1 + 256);
          if (v24 > i)
          {
            v25 = *(a1 + 272) - v14;
            *a3 = 1;
            *(a3 + 8) = v25;
            return result;
          }
        }

        v27[0] = 0;
        v33 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v28 = 136315906;
        *&v28[4] = "operator[]";
        *&v28[12] = 1024;
        *&v28[14] = 797;
        *&v28[18] = 2048;
        *&v28[20] = i;
        *&v28[28] = 2048;
        *&v28[30] = v24;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    v14 -= 288;
  }

  v6 = *(a2 + 8);
LABEL_10:
  v18 = *a1;
  *&v28[16] = 0;
  *&v28[24] = 0;
  if (v6)
  {
    v19 = v6 + 1;
  }

  else
  {
    v19 = 0;
  }

  *v28 = v18;
  *&v28[8] = 0;
  re::DynamicString::setCapacity(v28, v19);
  re::DynamicString::operator=(v28, a2);
  if (v28[8])
  {
    v20 = *&v28[16];
  }

  else
  {
    v20 = &v28[9];
  }

  re::DynamicString::format(v18, "Attribute name could not be resolved: %s", &v29, v20);
  v21 = v29;
  v22 = v30;
  *a3 = 0;
  *(a3 + 8) = 5003;
  *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a3 + 24) = v21;
  *(a3 + 40) = v22;
  result = *v28;
  if (*v28)
  {
    if (v28[8])
    {
      return (*(**v28 + 40))();
    }
  }

  return result;
}

{
  v34 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = (*a2 + v6);
  v9 = memchr(*a2, 46, v6);
  v10 = v9 - v7;
  v11 = v9 != 0 && v9 != v8;
  if (v11)
  {
    v12 = v9 - v7;
  }

  else
  {
    v12 = v6;
  }

  v13 = *(a1 + 256);
  if (!v13)
  {
    goto LABEL_10;
  }

  v26 = v11;
  v14 = 0;
  for (i = 0; i != v13; ++i)
  {
    v16 = *(re::RigDataTypeClass::attributeName((a1 + 32), i) + 8);
    if (v12 == strlen(v16))
    {
      result = memcmp(v7, v16, v12);
      if (!result)
      {
        if (v26)
        {
          v23 = *a2 + *(a2 + 8) - (*a2 + v10 + 1);
          v27[0] = *a2 + v10 + 1;
          v27[1] = v23;
          v24 = *(a1 + 256);
          if (v24 > i)
          {
            return re::RigDataValue::attributeValue(*(a1 + 272) - v14, v27);
          }

          v27[2] = 0;
          v33 = 0u;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v28 = 136315906;
          *&v28[4] = "operator[]";
          *&v28[12] = 1024;
          *&v28[14] = 789;
          *&v28[18] = 2048;
          *&v28[20] = i;
          *&v28[28] = 2048;
          *&v28[30] = v24;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        else
        {
          v24 = *(a1 + 256);
          if (v24 > i)
          {
            v25 = *(a1 + 272) - v14;
            *a3 = 1;
            *(a3 + 8) = v25;
            return result;
          }
        }

        v27[0] = 0;
        v33 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v28 = 136315906;
        *&v28[4] = "operator[]";
        *&v28[12] = 1024;
        *&v28[14] = 789;
        *&v28[18] = 2048;
        *&v28[20] = i;
        *&v28[28] = 2048;
        *&v28[30] = v24;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    v14 -= 288;
  }

  v6 = *(a2 + 8);
LABEL_10:
  v18 = *a1;
  *&v28[16] = 0;
  *&v28[24] = 0;
  if (v6)
  {
    v19 = v6 + 1;
  }

  else
  {
    v19 = 0;
  }

  *v28 = v18;
  *&v28[8] = 0;
  re::DynamicString::setCapacity(v28, v19);
  re::DynamicString::operator=(v28, a2);
  if (v28[8])
  {
    v20 = *&v28[16];
  }

  else
  {
    v20 = &v28[9];
  }

  re::DynamicString::format(v18, "Attribute name could not be resolved: %s", &v29, v20);
  v21 = v29;
  v22 = v30;
  *a3 = 0;
  *(a3 + 8) = 5003;
  *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a3 + 24) = v21;
  *(a3 + 40) = v22;
  result = *v28;
  if (*v28)
  {
    if (v28[8])
    {
      return (*(**v28 + 40))();
    }
  }

  return result;
}

unint64_t re::RigDataTypeClass::attributeName(re::RigDataTypeClass *this, unint64_t a2)
{
  if (*(this + 5) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 7) + 32 * a2;
}

void re::RigDataValue::setRigDataValue(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = a1;
  v348 = *MEMORY[0x1E69E9840];
  v10 = (a1 + 32);
  v9 = *(a1 + 32);
  if (*(a1 + 32) > 6u)
  {
    if (*(a1 + 32) > 9u)
    {
      if ((v9 - 11) < 3)
      {
        if (v9 != 12 || *(a1 + 256) || *(a1 + 96) - 1 > 1)
        {
          goto LABEL_189;
        }

        v11 = re::RigDataParser::parseWhitespace(a2);
        v13 = &v11[v12];
        for (i = &v11[v12] < *a2 + *(a2 + 8); ; i = &v17[v18] < v16)
        {
          v15 = i;
          if (!strncmp(v13, ".", v15))
          {
            break;
          }

          if (!v15)
          {
            goto LABEL_189;
          }

LABEL_13:
          v16 = *a2 + *(a2 + 8);
          *&v329[0] = &v13[v15];
          *(&v329[0] + 1) = v16 - &v13[v15];
          v17 = re::RigDataParser::parseWhitespace(v329);
          v13 = &v17[v18];
        }

        if (v15 && asc_1E3139C80[v15])
        {
          goto LABEL_13;
        }

        v174 = 0;
LABEL_144:
        if (asc_1E3139C80[v15])
        {
          goto LABEL_168;
        }

        v175 = *a2 + *(a2 + 8) - &v13[v15];
        *&v329[0] = &v13[v15];
        *(&v329[0] + 1) = v175;
        v176 = re::RigDataParser::parseTypeName(v329);
        *v306 = v176;
        *&v306[8] = v177;
        if (v177)
        {
          re::RigDataParser::extractArrayIndex(v306, v329);
          if (LOBYTE(v329[0]) == 1)
          {
            v178 = *&v329[1];
            if (*&v329[1])
            {
              v179 = 0;
              v180 = *(&v329[0] + 1);
              do
              {
                v181 = *v180++;
                v179 = v181 + 10 * v179 - 48;
                --v178;
              }

              while (v178);
              if (v179 + 1 > v174)
              {
                v174 = v179 + 1;
              }
            }

            else if (v174 <= 1)
            {
              v174 = 1;
            }
          }

          else if (*(&v329[1] + 1) && (v329[2] & 1) != 0)
          {
            (*(**(&v329[1] + 1) + 40))();
          }

          v182 = *&v306[8];
          v176 = *v306;
        }

        else
        {
          v182 = 0;
        }

        for (j = &v176[v182]; ; j = &v13[v15])
        {
          v184 = *a2 + *(a2 + 8);
          *&v329[0] = j;
          *(&v329[0] + 1) = v184 - j;
          v185 = re::RigDataParser::parseWhitespace(v329);
          v13 = &v185[v186];
          v15 = &v185[v186] < v184;
          if (!strncmp(&v185[v186], ".", v15))
          {
            if (!v15 || !asc_1E3139C80[v15])
            {
LABEL_167:
              if (strncmp(v13, ".", v15))
              {
LABEL_168:
                if (v174)
                {
                  v187 = *v7;
                  v188 = v7[1];
                  re::RigEnvironment::lookupRigDataType(v188, v7 + 5, v306);
                  v189 = v7[2];
                  memset(v329, 0, 33);
                  *(&v329[2] + 1) = 0;
                  *&v329[3] = &str_67;
                  v332 = 0;
                  *(&v329[3] + 1) = 0;
                  v330 = 0uLL;
                  v331 = 0;
                  v333 = 0;
                  v334 = 0u;
                  v335 = 0u;
                  v336 = 0u;
                  v337 = 0u;
                  v338 = -1;
                  v339 = 0;
                  v341 = 0;
                  v340 = 0;
                  v347 = 0;
                  v346 = 0;
                  v342 = &str_67;
                  v343 = 0;
                  v345 = 0;
                  v344 = 0;
                  re::RigDataValue::init(v329, v187, v188, &v306[8], v189);
                  v190 = v7[32];
                  if (v190 >= v174)
                  {
                    if (v190 > v174)
                    {
                      v198 = 288 * v174;
                      v192 = v7;
                      v199 = v174;
                      do
                      {
                        re::RigDataValue::~RigDataValue((v192[34] + v198));
                        ++v199;
                        v198 += 288;
                      }

                      while (v199 < v192[32]);
                      goto LABEL_184;
                    }
                  }

                  else
                  {
                    if (v7[31] < v174)
                    {
                      re::DynamicArray<re::RigDataValue>::setCapacity(v7 + 30, v174);
                      v190 = v7[32];
                    }

                    v191 = v174 - v190;
                    v192 = v7;
                    if (v174 > v190)
                    {
                      v193 = 288 * v190;
                      do
                      {
                        re::RigDataValue::RigDataValue((v192[34] + v193), v329);
                        v193 += 288;
                        --v191;
                      }

                      while (v191);
                    }

LABEL_184:
                    v192[32] = v174;
                    ++*(v192 + 66);
                    v7 = v192;
                  }

                  re::RigDataValue::~RigDataValue(v329);
                  if (v306[0] == 1)
                  {
                    v200 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v306[32]);
                    if (v306[16])
                    {
                      if (v306[16])
                      {
                      }
                    }
                  }
                }

LABEL_189:
                v201 = re::RigDataParser::parseWhitespace(a2);
                v203 = &v201[v202];
                v204 = *a2;
                v205 = *(a2 + 8);
                v206 = &v201[v202] < *a2 + v205;
                if (strncmp(&v201[v202], "{", v206) || asc_1E3139C82[v206])
                {
                  v207 = *v7;
                  re::DynamicString::DynamicString(v306, v204, v205, *v7);
                  if (v306[8])
                  {
                    v208 = *&v306[16];
                  }

                  else
                  {
                    v208 = &v306[9];
                  }

                  re::DynamicString::format(v207, "Could not find initial '{' for attributes: %s", v329, v208);
                  goto LABEL_195;
                }

                v213 = v7[32];
                v296 = 0;
                v293[1] = 0;
                v294 = 0;
                v295 = 0;
                v293[0] = *v7;
                v279 = v213;
                re::DynamicArray<re::Pair<unsigned long,re::RigDataValue,true>>::setCapacity(v293, v213);
                ++v295;
                v214 = *a2 + *(a2 + 8);
                *&v329[0] = &v203[v206];
                *(&v329[0] + 1) = v214 - &v203[v206];
                v215 = re::RigDataParser::parseWhitespace(v329);
                v217 = &v215[v216];
                v218 = &v215[v216] < v214;
                do
                {
                  if (strncmp(v217, ".", v218) || asc_1E3139C80[v218])
                  {
                    goto LABEL_254;
                  }

                  v280 = v218;
                  v282 = v217;
                  v219 = &v217[v218];
                  v220 = *a2 + *(a2 + 8) - v219;
                  *&v329[0] = v219;
                  *(&v329[0] + 1) = v220;
                  v221 = re::RigDataParser::parseTypeName(v329);
                  v291 = v221;
                  v292 = v222;
                  if (!v222)
                  {
                    v261 = *v7;
                    if (*a2 + *(a2 + 8) - v219 >= 0xAuLL)
                    {
                      v262 = 10;
                    }

                    else
                    {
                      v262 = *a2 + *(a2 + 8) - v219;
                    }

                    re::DynamicString::DynamicString(v306, v219, v262, *v7);
                    if (v306[8])
                    {
                      v263 = *&v306[16];
                    }

                    else
                    {
                      v263 = &v306[9];
                    }

                    re::DynamicString::format(v261, "Expected attribute name: %s", v329, v263);
                    goto LABEL_284;
                  }

                  v223 = *v10;
                  if ((v223 - 11) >= 2)
                  {
                    if (v223 != 13)
                    {
                      goto LABEL_302;
                    }

                    if (!v279)
                    {
                      v232 = v221;
                      v231 = v222;
LABEL_280:
                      v269 = *v7;
                      re::DynamicString::DynamicString(v306, v232, v231, *v7);
                      if (v306[8])
                      {
                        v270 = *&v306[16];
                      }

                      else
                      {
                        v270 = &v306[9];
                      }

                      re::DynamicString::format(v269, "Unknown attribute name: %s", v329, v270);
LABEL_284:
                      v271 = v329[0];
                      v272 = v329[1];
                      *&v329[0] = 0;
                      *&v329[1] = 0;
                      *a4 = 0;
                      *(a4 + 8) = 5002;
                      *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
                      *(a4 + 24) = v271;
                      *(a4 + 40) = v272;
                      if (*v306 && (v306[8] & 1) != 0)
                      {
                        (*(**v306 + 40))();
                      }

                      goto LABEL_287;
                    }

                    v229 = 0;
                    while (1)
                    {
                      v230 = *(re::RigDataTypeClass::attributeName(v10, v229) + 8);
                      v232 = v291;
                      v231 = v292;
                      if (!strncmp(v291, v230, v292) && !v230[v231])
                      {
                        break;
                      }

                      if (v279 == ++v229)
                      {
                        goto LABEL_280;
                      }
                    }

                    memset(v306, 0, 33);
                    v307 = 0;
                    v308 = &str_67;
                    v313 = 0;
                    v309 = 0;
                    v310 = 0;
                    v311 = 0;
                    v312 = 0;
                    v314 = 0;
                    v315 = 0u;
                    v316 = 0u;
                    v317 = 0u;
                    v318 = 0u;
                    v319 = -1;
                    v320 = 0;
                    v321 = 0;
                    v322 = 0;
                    v323 = &str_67;
                    v328 = 0;
                    v325 = 0;
                    v326 = 0;
                    v327 = 0;
                    v324 = 0;
                    *&v329[0] = v229;
                    re::RigDataValue::RigDataValue(&v329[1], v306);
                    re::DynamicArray<re::Pair<unsigned long,re::RigDataValue,true>>::add(v293, v329);
                    re::RigDataValue::~RigDataValue(&v329[1]);
                    re::RigDataValue::~RigDataValue(v306);
                  }

                  else
                  {
                    re::RigDataParser::extractArrayIndex(&v291, &v287);
                    v224 = v287;
                    if (v287)
                    {
                      v225 = *(&v288 + 1);
                      if (*(&v288 + 1))
                      {
                        v226 = 0;
                        v227 = v288;
                        do
                        {
                          v228 = *v227++;
                          v226 = v228 + 10 * v226 - 48;
                          --v225;
                        }

                        while (v225);
                      }

                      else
                      {
                        v226 = 0;
                      }

                      if (v226 >= v7[32])
                      {
                        v233 = 0;
                      }

                      else
                      {
                        memset(v306, 0, 33);
                        v307 = 0;
                        v308 = &str_67;
                        v313 = 0;
                        v309 = 0;
                        v310 = 0;
                        v311 = 0;
                        v312 = 0;
                        v314 = 0;
                        v315 = 0u;
                        v316 = 0u;
                        v317 = 0u;
                        v318 = 0u;
                        v319 = -1;
                        v320 = 0;
                        v321 = 0;
                        v322 = 0;
                        v323 = &str_67;
                        v328 = 0;
                        v325 = 0;
                        v326 = 0;
                        v327 = 0;
                        v324 = 0;
                        *&v329[0] = v226;
                        re::RigDataValue::RigDataValue(&v329[1], v306);
                        re::DynamicArray<re::Pair<unsigned long,re::RigDataValue,true>>::add(v293, v329);
                        re::RigDataValue::~RigDataValue(&v329[1]);
                        re::RigDataValue::~RigDataValue(v306);
                        v233 = 1;
                      }
                    }

                    else
                    {
                      v329[0] = v288;
                      re::DynamicString::DynamicString(&v329[1], &v289);
                      v233 = 0;
                      *a4 = 0;
                      *(a4 + 8) = v329[0];
                      v234 = *(&v329[2] + 1);
                      *(a4 + 24) = *&v329[1];
                      *(a4 + 48) = v234;
                      *(a4 + 32) = *(&v329[1] + 8);
                    }

                    if (v287 & 1) == 0 && v289 && (v290)
                    {
                      (*(*v289 + 40))();
                    }

                    if ((v224 & 1) == 0)
                    {
                      goto LABEL_287;
                    }

                    if ((v233 & 1) == 0)
                    {
                      v232 = v291;
                      v231 = v292;
                      goto LABEL_280;
                    }
                  }

                  v235 = *a2 + *(a2 + 8);
                  *&v329[0] = &v291[v292];
                  *(&v329[0] + 1) = v235 - &v291[v292];
                  v236 = re::RigDataParser::parseWhitespace(v329);
                  v238 = &v236[v237];
                  v239 = &v236[v237] < v235;
                  if (strncmp(&v236[v237], "=", v239) || asc_1E3139DA0[v239])
                  {
                    v255 = *v7;
                    if (*a2 + *(a2 + 8) - &v291[v292] >= 0xAuLL)
                    {
                      v256 = 10;
                    }

                    else
                    {
                      v256 = *a2 + *(a2 + 8) - &v291[v292];
                    }

                    re::DynamicString::DynamicString(v306, &v291[v292], v256, *v7);
                    if (v306[8])
                    {
                      v257 = *&v306[16];
                    }

                    else
                    {
                      v257 = &v306[9];
                    }

                    re::DynamicString::format(v255, "Expected attribute equals operator '=': %s", v329, v257);
                    goto LABEL_284;
                  }

                  v240 = v296 + 304 * v294;
                  k = *(v240 - 304);
                  v241 = v7;
                  v7 = v7[32];
                  if (v7 <= k)
                  {
                    goto LABEL_299;
                  }

                  v242 = re::RigDataValue::operator=((v240 - 288), v241[34] + 288 * k);
                  v243 = *a2 + *(a2 + 8) - &v238[v239];
                  *v306 = &v238[v239];
                  *&v306[8] = v243;
                  re::RigDataValue::setRigDataValue(v329, v242, v306, 0);
                  v7 = v241;
                  if (v329[0])
                  {
                    v244 = *a2 + *(a2 + 8);
                    *v306 = *(&v329[0] + 1);
                    *&v306[8] = v244 - *(&v329[0] + 1);
                    v245 = re::RigDataParser::parseWhitespace(v306);
                    v217 = &v245[v246];
                    v218 = &v245[v246] < v244;
                    if (!strncmp(&v245[v246], ",", v218) && !asc_1E3139DCD[v218])
                    {
                      v251 = *a2 + *(a2 + 8);
                      *v306 = &v217[v218];
                      *&v306[8] = v251 - &v217[v218];
                      v252 = re::RigDataParser::parseWhitespace(v306);
                      v247 = 0;
                      v217 = &v252[v253];
                      v254 = &v252[v253] >= v251;
                      v7 = v241;
                      v218 = !v254;
                    }

                    else
                    {
                      v247 = 3;
                    }
                  }

                  else
                  {
                    *(a4 + 8) = *(v329 + 8);
                    v248 = *(&v329[1] + 8);
                    memset(&v329[1] + 8, 0, 32);
                    v249 = *(&v329[2] + 1);
                    v250 = *&v329[3];
                    *a4 = 0;
                    *(a4 + 24) = v248;
                    v247 = 1;
                    *(a4 + 40) = v249;
                    *(a4 + 48) = v250;
                    v218 = v280;
                    v217 = v282;
                  }

                  if (v329[0] & 1) == 0 && *(&v329[1] + 1) && (v329[2])
                  {
                    (*(**(&v329[1] + 1) + 40))();
                  }
                }

                while (!v247);
                if (v247 == 3)
                {
LABEL_254:
                  if (strncmp(v217, "}", v218) || asc_1E3139DCF[v218])
                  {
                    v258 = *v7;
                    re::DynamicString::DynamicString(v306, *a2, *(a2 + 8), *v7);
                    if (v306[8])
                    {
                      v259 = *&v306[16];
                    }

                    else
                    {
                      v259 = &v306[9];
                    }

                    re::DynamicString::format(v258, "Could not find final '}' for attributes: %s", v329, v259);
                    goto LABEL_284;
                  }

                  if (a3)
                  {
                    v264 = (*a2 + *(a2 + 8));
                    *&v329[0] = &v217[v218];
                    *(&v329[0] + 1) = v264 - &v217[v218];
                    v265 = re::RigDataParser::parseWhitespace(v329);
                    if (&v265[v266] != v264)
                    {
                      v267 = *v7;
                      re::DynamicString::DynamicString(v306, *a2, *(a2 + 8), *v7);
                      if (v306[8])
                      {
                        v268 = *&v306[16];
                      }

                      else
                      {
                        v268 = &v306[9];
                      }

                      re::DynamicString::format(v267, "Could not parse attribute values: %s", v329, v268);
                      goto LABEL_284;
                    }
                  }

                  if (v294)
                  {
                    v276 = v7;
                    v277 = 304 * v294;
                    v278 = v296 + 16;
                    do
                    {
                      k = *(v278 - 16);
                      v10 = v276[32];
                      if (v10 <= k)
                      {
                        goto LABEL_300;
                      }

                      re::RigDataValue::operator=((v276[34] + 288 * k), v278);
                      v278 += 304;
                      v277 -= 304;
                    }

                    while (v277);
                  }

                  *a4 = 1;
                  *(a4 + 8) = &v217[v218];
                }

LABEL_287:
                v211 = v293[0];
                if (v293[0])
                {
                  v212 = v296;
                  if (v296)
                  {
                    if (v294)
                    {
                      v273 = 304 * v294;
                      v274 = (v296 + 16);
                      do
                      {
                        re::RigDataValue::~RigDataValue(v274);
                        v274 = (v275 + 304);
                        v273 -= 304;
                      }

                      while (v273);
                      v211 = v293[0];
                      v212 = v296;
                    }

LABEL_198:
                    (*(*v211 + 40))(v211, v212);
                  }
                }

                return;
              }

              goto LABEL_144;
            }
          }

          else if (!v15)
          {
            goto LABEL_167;
          }
        }
      }

      if (v9 == 10)
      {
        v57 = v329[0];
        v58 = v329[1];
        *a4 = 0;
        *(a4 + 8) = 5002;
        *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(a4 + 24) = v57;
        *(a4 + 40) = v58;
        return;
      }

LABEL_301:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unknown Rig Data Type: %u", "!Unreachable code", "setRigDataValue", 848, v9);
      _os_crash();
      __break(1u);
LABEL_302:
      re::internal::assertLog(5, v222, "assertion failure: '%s' (%s:line %i) Unknown Attribute for Rig Data Type: %u", "!Unreachable code", "setAttributeValuesHelper", 973, v223);
      _os_crash();
      __break(1u);
      return;
    }

    v286 = a1;
    if (v9 != 7)
    {
      if (v9 != 8)
      {
        if (v9 == 9)
        {
          v46 = re::RigDataParser::parseWhitespace(a2);
          v48 = v47;
          v281 = v46;
          v49 = &v46[v47];
          v7 = *a2;
          v50 = *(a2 + 8);
          k = *a2 + v50;
          v51 = &v46[v47] < k;
          if (strncmp(&v46[v47], "", v51))
          {
            goto LABEL_176;
          }

          v52 = &v49[v51];
          if (asc_1E3139E22[v51] || k == v52)
          {
            goto LABEL_176;
          }

          v54 = 0;
          v55 = 0;
          while (1)
          {
            if (v55)
            {
              v55 = 0;
            }

            else
            {
              v56 = v52[v54];
              if (v56 == 34)
              {
                if (!a3 || (*&v329[0] = &v52[v54 + 1], *(&v329[0] + 1) = v7 + v50 + ~v48 - v281 - v51 - v54, v260 = re::RigDataParser::parseWhitespace(v329), &v260[v24] == k))
                {
                  v170 = &v52[v54 + 1];
                  if (*(v286 + 56))
                  {
                    (*(**v286 + 40))(*v286, *(v286 + 29));
                  }

                  *(v286 + 28) = 0;
                  *(v286 + 29) = &str_67;
                  re::StringID::init((v286 + 224), *v286, v52, v54);
                  goto LABEL_133;
                }

                goto LABEL_176;
              }

              v55 = v56 == 92;
            }

            if (&v52[++v54] == k)
            {
              goto LABEL_176;
            }
          }
        }

        goto LABEL_301;
      }

      v90 = re::RigDataParser::parseWhitespace(a2);
      v92 = &v90[v91];
      v93 = &v90[v91] < *a2 + *(a2 + 8);
      if (strncmp(&v90[v91], "[", v93) || asc_1E3139E79[v93])
      {
        goto LABEL_176;
      }

      v7 = 0;
      v94 = &v92[v93];
      v329[0] = 0u;
      k = v329;
      do
      {
        v95 = *a2 + *(a2 + 8) - v94;
        v287 = v94;
        *&v288 = v95;
        v96 = re::RigDataParser::parseFloat(&v287);
        v98 = v97;
        *v306 = v96;
        *&v306[8] = v97;
        v99 = *a2 + *(a2 + 8);
        v287 = &v96[v97];
        *&v288 = v99 - &v96[v97];
        v100 = re::RigDataParser::parseWhitespace(&v287);
        v102 = &v100[v101];
        v103 = &v100[v101] < v99;
        if (strncmp(&v100[v101], ",", v103) || asc_1E3139DCD[v103])
        {
          if (v7 != 8)
          {
            goto LABEL_176;
          }

          v103 = v98;
          v102 = v96;
        }

        v94 = &v102[v103];
        *(v329 + v7) = re::RigDataParser::stringToFloat(v306);
        v7 = (v7 + 4);
      }

      while (v7 != 12);
      k = *a2 + *(a2 + 8);
      *v306 = &v102[v103];
      *&v306[8] = k - v94;
      v104 = re::RigDataParser::parseWhitespace(v306);
      v106 = &v104[v105];
      v107 = &v104[v105] < k;
      if (strncmp(&v104[v105], "]", v107))
      {
        goto LABEL_176;
      }

      if (asc_1E3139E7B[v107])
      {
        goto LABEL_176;
      }

      if (a3)
      {
        k = *a2 + *(a2 + 8);
        *v306 = &v106[v107];
        *&v306[8] = k - &v106[v107];
        v108 = re::RigDataParser::parseWhitespace(v306);
        if (&v108[v24] != k)
        {
          goto LABEL_176;
        }
      }

      v44 = &v106[v107];
      v45 = v329[0];
      v305 = v329[0];
      goto LABEL_89;
    }

    v144 = re::RigDataParser::parseWhitespace(a2);
    v146 = &v144[v145];
    v147 = &v144[v145] < *a2 + *(a2 + 8);
    if (!strncmp(&v144[v145], "[", v147) && !asc_1E3139E79[v147])
    {
      k = 0;
      v148 = &v146[v147];
      v287 = 0;
      v7 = &v287;
      v149 = 1;
      do
      {
        v150 = v149;
        v151 = *a2 + *(a2 + 8) - v148;
        *v306 = v148;
        *&v306[8] = v151;
        v152 = re::RigDataParser::parseFloat(v306);
        v154 = v153;
        *&v329[0] = v152;
        *(&v329[0] + 1) = v153;
        v155 = *a2 + *(a2 + 8);
        *v306 = &v152[v153];
        *&v306[8] = v155 - &v152[v153];
        v156 = re::RigDataParser::parseWhitespace(v306);
        v158 = &v156[v157];
        v159 = &v156[v157] < v155;
        v160 = !strncmp(&v156[v157], ",", v159) && asc_1E3139DCD[v159] == 0;
        if (((k | v160) & 1) == 0)
        {
          goto LABEL_176;
        }

        v161 = !v160;
        if (v160)
        {
          v162 = v158;
        }

        else
        {
          v162 = v152;
        }

        if (v161)
        {
          v163 = v154;
        }

        else
        {
          v163 = v159;
        }

        v148 = &v162[v163];
        v164 = re::RigDataParser::stringToFloat(v329);
        v149 = 0;
        *v7 = v164;
        k = 1;
        v7 = (&v287 + 4);
      }

      while ((v150 & 1) != 0);
      k = *a2 + *(a2 + 8);
      *&v329[0] = v148;
      *(&v329[0] + 1) = k - v148;
      v165 = re::RigDataParser::parseWhitespace(v329);
      v167 = &v165[v166];
      v168 = &v165[v166] < k;
      if (!strncmp(&v165[v166], "]", v168) && !asc_1E3139E7B[v168])
      {
        if (!a3 || (k = *a2 + *(a2 + 8), *&v329[0] = &v167[v168], *(&v329[0] + 1) = k - &v167[v168], v169 = re::RigDataParser::parseWhitespace(v329), &v169[v24] == k))
        {
          v44 = &v167[v168];
          *(v286 + 14) = v287;
          goto LABEL_142;
        }
      }
    }

    goto LABEL_176;
  }

  v286 = a1;
  if (*(a1 + 32) <= 3u)
  {
    switch(v9)
    {
      case 1:
        v109 = re::RigDataParser::parseWhitespace(a2);
        k = &v109[v110];
        v111 = &v109[v110 + 1];
        if (v109[v110] != 45)
        {
          v111 = &v109[v110];
        }

        v112 = *a2 + *(a2 + 8) - v111;
        *&v329[0] = v111;
        *(&v329[0] + 1) = v112;
        v113 = re::RigDataParser::parseNumeric(v329);
        v115 = v113;
        v116 = v114;
        if (a3)
        {
          v7 = (*a2 + *(a2 + 8));
          *&v329[0] = &v113[v114];
          *(&v329[0] + 1) = v7 - &v113[v114];
          v117 = re::RigDataParser::parseWhitespace(v329);
          if (&v117[v24] != v7)
          {
            goto LABEL_176;
          }
        }

        v44 = &v115[v116];
        v118 = *k;
        v119 = v118 == 45;
        if (&v115[v116 - k] == v119)
        {
          v120 = 0;
          v121 = v286;
        }

        else
        {
          v120 = 0;
          v171 = (k + v119);
          v121 = v286;
          do
          {
            v172 = *v171++;
            v120 = v172 + 10 * v120 - 48;
          }

          while (v171 != v44);
        }

        if (v118 == 45)
        {
          v173 = -v120;
        }

        else
        {
          v173 = v120;
        }

        *(v121 + 28) = v173;
        break;
      case 2:
        v59 = re::RigDataParser::parseNumeric(a2);
        v61 = v59;
        v62 = v60;
        if (a3)
        {
          k = *a2 + *(a2 + 8);
          *&v329[0] = &v59[v60];
          *(&v329[0] + 1) = k - &v59[v60];
          v63 = re::RigDataParser::parseWhitespace(v329);
          if (&v63[v24] != k)
          {
            goto LABEL_176;
          }
        }

        v44 = &v61[v62];
        v64 = 0;
        if (v62)
        {
          v65 = v286;
          do
          {
            v66 = *v61++;
            v64 = v66 + 10 * v64 - 48;
            --v62;
          }

          while (v62);
        }

        else
        {
          v65 = v286;
        }

        *(v65 + 28) = v64;
        break;
      case 3:
        v19 = re::RigDataParser::parseFloat(a2);
        v21 = v19;
        v22 = v20;
        *&v329[0] = v19;
        *(&v329[0] + 1) = v20;
        if (a3)
        {
          k = *a2 + *(a2 + 8);
          *v306 = &v19[v20];
          *&v306[8] = k - &v19[v20];
          v23 = re::RigDataParser::parseWhitespace(v306);
          v7 = v286;
          if (&v23[v24] != k)
          {
            goto LABEL_176;
          }
        }

        else
        {
          v7 = v286;
        }

        v170 = &v21[v22];
        *(v7 + 28) = re::RigDataParser::stringToFloat(v329);
LABEL_133:
        *a4 = 1;
        *(a4 + 8) = v170;
        return;
      default:
        goto LABEL_301;
    }

LABEL_142:
    *a4 = 1;
    *(a4 + 8) = v44;
    return;
  }

  if (v9 == 4)
  {
    v122 = re::RigDataParser::parseWhitespace(a2);
    v124 = &v122[v123];
    v125 = &v122[v123] < *a2 + *(a2 + 8);
    if (strncmp(&v122[v123], "[", v125) || asc_1E3139E79[v125])
    {
      goto LABEL_176;
    }

    v7 = 0;
    v126 = &v124[v125];
    memset(v329, 0, 48);
    v127 = v329;
    do
    {
      for (k = 0; k != 12; k += 4)
      {
        v128 = *a2 + *(a2 + 8) - v126;
        v287 = v126;
        *&v288 = v128;
        v129 = re::RigDataParser::parseFloat(&v287);
        v131 = v130;
        *v306 = v129;
        *&v306[8] = v130;
        v132 = *a2 + *(a2 + 8);
        v287 = &v129[v130];
        *&v288 = v132 - &v129[v130];
        v133 = re::RigDataParser::parseWhitespace(&v287);
        v135 = &v133[v134];
        v136 = &v133[v134] < v132;
        if (strncmp(&v133[v134], ",", v136) || asc_1E3139DCD[v136])
        {
          if (v7 != 2 || k != 8)
          {
            goto LABEL_176;
          }

          v136 = v131;
          v135 = v129;
        }

        v126 = &v135[v136];
        *(v127 + k) = re::RigDataParser::stringToFloat(v306);
      }

      v7 = (v7 + 1);
      ++v127;
    }

    while (v7 != 3);
    k = *a2 + *(a2 + 8);
    *v306 = &v135[v136];
    *&v306[8] = k - v126;
    v137 = re::RigDataParser::parseWhitespace(v306);
    v139 = &v137[v138];
    v140 = &v137[v138] < k;
    if (!strncmp(&v137[v138], "]", v140) && !asc_1E3139E7B[v140])
    {
      if (!a3 || (k = *a2 + *(a2 + 8), *v306 = &v139[v140], *&v306[8] = k - &v139[v140], v141 = re::RigDataParser::parseWhitespace(v306), &v141[v24] == k))
      {
        v44 = &v139[v140];
        v142 = v329[1];
        v297 = v329[0];
        v298 = v329[1];
        v143 = v329[2];
        v299 = v329[2];
        *(v286 + 7) = v329[0];
        *(v286 + 8) = v142;
        *(v286 + 9) = v143;
        goto LABEL_142;
      }
    }

    goto LABEL_176;
  }

  if (v9 != 5)
  {
    if (v9 != 6)
    {
      goto LABEL_301;
    }

    v25 = re::RigDataParser::parseWhitespace(a2);
    v27 = &v25[v26];
    v28 = &v25[v26] < *a2 + *(a2 + 8);
    if (strncmp(&v25[v26], "[", v28) || asc_1E3139E79[v28])
    {
      goto LABEL_176;
    }

    v7 = 0;
    v29 = &v27[v28];
    v329[0] = xmmword_1E30474D0;
    k = v329;
    do
    {
      v30 = *a2 + *(a2 + 8) - v29;
      v287 = v29;
      *&v288 = v30;
      v31 = re::RigDataParser::parseFloat(&v287);
      v33 = v32;
      *v306 = v31;
      *&v306[8] = v32;
      v34 = *a2 + *(a2 + 8);
      v287 = &v31[v32];
      *&v288 = v34 - &v31[v32];
      v35 = re::RigDataParser::parseWhitespace(&v287);
      v37 = &v35[v36];
      v38 = &v35[v36] < v34;
      if (strncmp(&v35[v36], ",", v38) || asc_1E3139DCD[v38])
      {
        if (v7 != 12)
        {
          goto LABEL_176;
        }

        v38 = v33;
        v37 = v31;
      }

      v29 = &v37[v38];
      *(v329 + v7) = re::RigDataParser::stringToFloat(v306);
      v7 = (v7 + 4);
    }

    while (v7 != 16);
    k = *a2 + *(a2 + 8);
    *v306 = &v37[v38];
    *&v306[8] = k - v29;
    v39 = re::RigDataParser::parseWhitespace(v306);
    v41 = &v39[v40];
    v42 = &v39[v40] < k;
    if (strncmp(&v39[v40], "]", v42))
    {
      goto LABEL_176;
    }

    if (asc_1E3139E7B[v42])
    {
      goto LABEL_176;
    }

    if (a3)
    {
      k = *a2 + *(a2 + 8);
      *v306 = &v41[v42];
      *&v306[8] = k - &v41[v42];
      v43 = re::RigDataParser::parseWhitespace(v306);
      if (&v43[v24] != k)
      {
        goto LABEL_176;
      }
    }

    v44 = &v41[v42];
    v45 = v329[0];
    v304 = v329[0];
LABEL_89:
    *(v286 + 7) = v45;
    goto LABEL_142;
  }

  v67 = re::RigDataParser::parseWhitespace(a2);
  v69 = &v67[v68];
  v70 = &v67[v68] < *a2 + *(a2 + 8);
  if (strncmp(&v67[v68], "[", v70) || asc_1E3139E79[v70])
  {
    goto LABEL_176;
  }

  v7 = 0;
  v71 = &v69[v70];
  memset(v329, 0, sizeof(v329));
  v72 = v329;
  do
  {
    for (k = 0; k != 16; k += 4)
    {
      v73 = *a2 + *(a2 + 8) - v71;
      v287 = v71;
      *&v288 = v73;
      v74 = re::RigDataParser::parseFloat(&v287);
      v76 = v75;
      *v306 = v74;
      *&v306[8] = v75;
      v77 = *a2 + *(a2 + 8);
      v287 = &v74[v75];
      *&v288 = v77 - &v74[v75];
      v78 = re::RigDataParser::parseWhitespace(&v287);
      v80 = &v78[v79];
      v81 = &v78[v79] < v77;
      if (strncmp(&v78[v79], ",", v81) || asc_1E3139DCD[v81])
      {
        if (v7 != 3 || k != 12)
        {
          goto LABEL_176;
        }

        v81 = v76;
        v80 = v74;
      }

      v71 = &v80[v81];
      *(v72 + k) = re::RigDataParser::stringToFloat(v306);
    }

    v7 = (v7 + 1);
    ++v72;
  }

  while (v7 != 4);
  k = *a2 + *(a2 + 8);
  *v306 = &v80[v81];
  *&v306[8] = k - v71;
  v82 = re::RigDataParser::parseWhitespace(v306);
  v84 = &v82[v83];
  v85 = &v82[v83] < k;
  if (!strncmp(&v82[v83], "]", v85) && !asc_1E3139E7B[v85])
  {
    if (!a3 || (k = *a2 + *(a2 + 8), *v306 = &v84[v85], *&v306[8] = k - &v84[v85], v86 = re::RigDataParser::parseWhitespace(v306), &v86[v24] == k))
    {
      v44 = &v84[v85];
      v87 = v329[1];
      v300 = v329[0];
      v301 = v329[1];
      v88 = v329[2];
      v89 = v329[3];
      v302 = v329[2];
      v303 = v329[3];
      *(v286 + 7) = v329[0];
      *(v286 + 8) = v87;
      *(v286 + 9) = v88;
      *(v286 + 10) = v89;
      goto LABEL_142;
    }
  }

LABEL_176:
  v194 = *v10;
  if (v194 >= 0xE)
  {
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *v10, 14);
    _os_crash();
    __break(1u);
LABEL_299:
    v287 = 0;
    v330 = 0u;
    memset(v329, 0, sizeof(v329));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v306 = 136315906;
    *&v306[4] = "operator[]";
    *&v306[12] = 1024;
    *&v306[14] = 789;
    *&v306[18] = 2048;
    *&v306[20] = k;
    *&v306[28] = 2048;
    *&v306[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_300:
    v287 = 0;
    v330 = 0u;
    memset(v329, 0, sizeof(v329));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v306 = 136315906;
    *&v306[4] = "operator[]";
    *&v306[12] = 1024;
    *&v306[14] = 789;
    *&v306[18] = 2048;
    *&v306[20] = k;
    *&v306[28] = 2048;
    *&v306[30] = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v195 = *v286;
  v196 = (&re::kRigDataTypeDescriptions)[2 * v194];
  re::DynamicString::DynamicString(v306, *a2, *(a2 + 8), *v286);
  if (v306[8])
  {
    v197 = *&v306[16];
  }

  else
  {
    v197 = &v306[9];
  }

  re::DynamicString::format(v195, "Could not parse valid %s value: %s", v329, v196, v197);
LABEL_195:
  v209 = v329[0];
  v210 = v329[1];
  *a4 = 0;
  *(a4 + 8) = 5002;
  *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a4 + 24) = v209;
  *(a4 + 40) = v210;
  v211 = *v306;
  if (*v306 && (v306[8] & 1) != 0)
  {
    v212 = *&v306[16];
    goto LABEL_198;
  }
}

uint64_t re::RigDataValue::setCompilationValueFromCallbackOutput(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  v6 = *(result + 256);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    while (*(v5 + 256) > v8)
    {
      if (a2[32] <= v8)
      {
        goto LABEL_37;
      }

      result = re::RigDataValue::setCompilationValueFromCallbackOutput(*(v5 + 272) + v7, a2[34] + v7, a3);
      ++v8;
      v7 += 288;
      if (v6 == v8)
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_37:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_38;
  }

  v9 = a2[22];
  v10 = *(result + 32);
  if (v10 > 4)
  {
    if (*(result + 32) > 6u)
    {
      if (v10 == 7)
      {
        v19 = a3[31];
        if (v19 <= v9)
        {
          goto LABEL_45;
        }

        v12 = a3[30];
      }

      else
      {
        if (v10 != 8)
        {
          goto LABEL_46;
        }

        v15 = a3[33];
        if (v15 <= v9)
        {
LABEL_41:
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v9, v15);
          _os_crash();
          __break(1u);
          goto LABEL_42;
        }

        v12 = a3[32];
      }
    }

    else if (v10 == 5)
    {
      v17 = a3[27];
      if (v17 <= v9)
      {
LABEL_43:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v9, v17);
        _os_crash();
        __break(1u);
        goto LABEL_44;
      }

      v12 = a3[26];
    }

    else
    {
      if (v10 != 6)
      {
        goto LABEL_46;
      }

      v13 = a3[29];
      if (v13 <= v9)
      {
LABEL_39:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v9, v13);
        _os_crash();
        __break(1u);
        goto LABEL_40;
      }

      v12 = a3[28];
    }
  }

  else if (*(result + 32) > 2u)
  {
    if (v10 == 3)
    {
      v18 = a3[23];
      if (v18 <= v9)
      {
LABEL_44:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v9, v18);
        _os_crash();
        __break(1u);
LABEL_45:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v9, v19);
        _os_crash();
        __break(1u);
      }

      v12 = a3[22];
    }

    else
    {
      if (v10 != 4)
      {
        goto LABEL_46;
      }

      v14 = a3[25];
      if (v14 <= v9)
      {
LABEL_40:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v9, v14);
        _os_crash();
        __break(1u);
        goto LABEL_41;
      }

      v12 = a3[24];
    }
  }

  else
  {
    if (v10 != 1)
    {
      if (v10 == 2)
      {
        v11 = a3[21];
        if (v11 <= v9)
        {
LABEL_38:
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v9, v11);
          _os_crash();
          __break(1u);
          goto LABEL_39;
        }

        v12 = a3[20];
        goto LABEL_34;
      }

LABEL_46:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Cannot resolve invalid compile time type: %u", "!Unreachable code", "setCompilationValueFromCallbackOutput", 625, *(result + 32));
      result = _os_crash();
      __break(1u);
      return result;
    }

    v16 = a3[19];
    if (v16 <= v9)
    {
LABEL_42:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v9, v16);
      _os_crash();
      __break(1u);
      goto LABEL_43;
    }

    v12 = a3[18];
  }

LABEL_34:
  *(result + 176) = *(v12 + 8 * v9);
  *(result + 96) = 2;
  return result;
}

re::RigDataValue *re::DynamicArray<re::Pair<unsigned long,re::RigDataValue,true>>::add(uint64_t a1, re::RigDataValue *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::Pair<unsigned long,re::RigDataValue,true>>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::Pair<unsigned long,re::RigDataValue,true>>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = (*(a1 + 32) + 304 * v5);
  *v11 = *a2;
  result = re::RigDataValue::RigDataValue((v11 + 2), (a2 + 16));
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t std::__function::__func<re::RigDataValue::RigDataValue(re::RigDataValue const&)::$_0,std::allocator<re::RigDataValue::RigDataValue(re::RigDataValue const&)::$_0>,void ()(re::RigHierarchy *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CAE710;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::RigDataValue::RigDataValue(re::RigDataValue const&)::$_0,std::allocator<re::RigDataValue::RigDataValue(re::RigDataValue const&)::$_0>,void ()(re::RigHierarchy *)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = **(result + 8);
    re::DynamicArray<unsigned long>::deinit(v2 + 320);
    re::DynamicArray<unsigned long>::deinit(v2 + 280);
    re::DynamicArray<unsigned long>::deinit(v2 + 240);
    re::DynamicArray<re::StringID>::deinit(v2 + 200);
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v2 + 160);
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v2 + 120);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v2 + 72));
    v4.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v2 + 24));
    v5 = *(*v3 + 40);

    return v5(v3, v2, v4);
  }

  return result;
}

uint64_t std::__function::__func<re::RigDataValue::RigDataValue(re::RigDataValue const&)::$_0,std::allocator<re::RigDataValue::RigDataValue(re::RigDataValue const&)::$_0>,void ()(re::RigHierarchy *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<re::RigDataValue::operator=(re::RigDataValue const&)::$_0,std::allocator<re::RigDataValue::operator=(re::RigDataValue const&)::$_0>,void ()(re::RigHierarchy *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CAE7A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::RigDataValue::operator=(re::RigDataValue const&)::$_0,std::allocator<re::RigDataValue::operator=(re::RigDataValue const&)::$_0>,void ()(re::RigHierarchy *)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = **(result + 8);
    re::DynamicArray<unsigned long>::deinit(v2 + 320);
    re::DynamicArray<unsigned long>::deinit(v2 + 280);
    re::DynamicArray<unsigned long>::deinit(v2 + 240);
    re::DynamicArray<re::StringID>::deinit(v2 + 200);
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v2 + 160);
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v2 + 120);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v2 + 72));
    v4.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v2 + 24));
    v5 = *(*v3 + 40);

    return v5(v3, v2, v4);
  }

  return result;
}

uint64_t std::__function::__func<re::RigDataValue::operator=(re::RigDataValue const&)::$_0,std::allocator<re::RigDataValue::operator=(re::RigDataValue const&)::$_0>,void ()(re::RigHierarchy *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<re::RigDataValue::init(re::Allocator *,re::RigEnvironment const*,re::RigDataTypeClass const&,re::EvaluationTree *)::$_0,std::allocator<re::RigDataValue::init(re::Allocator *,re::RigEnvironment const*,re::RigDataTypeClass const&,re::EvaluationTree *)::$_0>,void ()(re::RigHierarchy *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CAE820;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::RigDataValue::init(re::Allocator *,re::RigEnvironment const*,re::RigDataTypeClass const&,re::EvaluationTree *)::$_0,std::allocator<re::RigDataValue::init(re::Allocator *,re::RigEnvironment const*,re::RigDataTypeClass const&,re::EvaluationTree *)::$_0>,void ()(re::RigHierarchy *)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = **(result + 8);
    re::DynamicArray<unsigned long>::deinit(v2 + 320);
    re::DynamicArray<unsigned long>::deinit(v2 + 280);
    re::DynamicArray<unsigned long>::deinit(v2 + 240);
    re::DynamicArray<re::StringID>::deinit(v2 + 200);
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v2 + 160);
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v2 + 120);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v2 + 72));
    v4.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v2 + 24));
    v5 = *(*v3 + 40);

    return v5(v3, v2, v4);
  }

  return result;
}

uint64_t std::__function::__func<re::RigDataValue::init(re::Allocator *,re::RigEnvironment const*,re::RigDataTypeClass const&,re::EvaluationTree *)::$_0,std::allocator<re::RigDataValue::init(re::Allocator *,re::RigEnvironment const*,re::RigDataTypeClass const&,re::EvaluationTree *)::$_0>,void ()(re::RigHierarchy *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::DynamicArray<re::Pair<unsigned long,re::RigDataValue,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<unsigned long,re::RigDataValue,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x130uLL))
        {
          v2 = 304 * a2;
          result = (*(*result + 32))(result, 304 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 304, a2);
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
        v10 = (v7 + 2);
        v11 = 304 * v9;
        v12 = (v8 + 16);
        do
        {
          *(v10 - 2) = *(v12 - 2);
          re::RigDataValue::RigDataValue(v10, v12);
          re::RigDataValue::~RigDataValue(v12);
          v10 = (v10 + 304);
          v12 = (v12 + 304);
          v11 -= 304;
        }

        while (v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

_OWORD *re::internal::translationFilterCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    re::RigDataValue::getRuntimeValue<re::Vector3<float>>(a3, a2);
    CoreIKDoubleExponentialPositionFilterDoFilter();
    if (a8)
    {
      v13 = v11;
      result = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(a7, v10);
      *result = v13;
      return result;
    }
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::translationFilterCompile(re::Allocator **a1, const re::RigDataValue **a2, unint64_t a3, re::RigDataValue **a4, uint64_t a5)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v22 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  re::RigGraphCallbackBuilder::init(v18, *a1);
  *&v23.var0 = 0x3F8FE4A467F9494ELL;
  v23.var1 = "InputTranslation";
  if (!a3)
  {
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
  }

  re::RigGraphCallbackBuilder::addInputParam(v18, &v23, *a2);
  if (*&v23.var0)
  {
    if (*&v23.var0)
    {
    }
  }

  *&v23.var0 = 0xA3F9AE02669A47F4;
  v23.var1 = "FilteredTranslation";
  if (!a5)
  {
    goto LABEL_13;
  }

  re::RigGraphCallbackBuilder::addOutputParam(v18, &v23, *a4);
  if (*&v23.var0)
  {
    if (*&v23.var0)
    {
    }
  }

  if (a3 == 1)
  {
    goto LABEL_14;
  }

  if (a3 <= 2)
  {
    goto LABEL_15;
  }

  v15 = *a1;
  v16 = (*(**a1 + 32))(*a1, 16, 8);
  *v16 = CoreIKDoubleExponentialPositionFilterCreate();
  v16[1] = v15;
  v26[0] = &unk_1F5CAE8A0;
  v26[1] = v15;
  v26[3] = v26;
  p_var1 = &v23.var1;
  *&v23.var0 = v16;
  v23.var1 = &unk_1F5CAE8A0;
  v24 = v15;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v26);
  re::RigGraphCallbackBuilder::buildCallbackData(v18, a1, re::internal::translationFilterCallback, &v23);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v23);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v20 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v18 + 8);
  return 1;
}

_OWORD *re::internal::translationAndRotationFilterCallback(int a1, uint64_t a2, re::internal *this, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a4)
  {
    re::internal::getSRTFromRDV(this, &v18);
    CoreIKDoubleExponentialTransformFilterDoFilter();
    *&v15 = 0x3F8000003F800000;
    *(&v15 + 1) = 1065353216;
    v16 = v13;
    v17 = v12;
    if (a8)
    {
      return re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(a7, &v15);
    }
  }

  else
  {
    re::internal::assertLog(6, a2, this, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0, v15, v16, v17);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::translationAndRotationFilterCompile(re::Allocator **a1, const re::RigDataValue **a2, unint64_t a3, re::RigDataValue **a4, uint64_t a5)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v22 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  re::RigGraphCallbackBuilder::init(v18, *a1);
  *&v23.var0 = 0xF857424D6C8245C4;
  v23.var1 = "InputTransform";
  if (!a3)
  {
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
  }

  re::RigGraphCallbackBuilder::addInputParam(v18, &v23, *a2);
  if (*&v23.var0)
  {
    if (*&v23.var0)
    {
    }
  }

  *&v23.var0 = 0xEA53A3BE787EB5EALL;
  v23.var1 = "FilteredTransform";
  if (!a5)
  {
    goto LABEL_13;
  }

  re::RigGraphCallbackBuilder::addOutputParam(v18, &v23, *a4);
  if (*&v23.var0)
  {
    if (*&v23.var0)
    {
    }
  }

  if (a3 == 1)
  {
    goto LABEL_14;
  }

  if (a3 <= 2)
  {
    goto LABEL_15;
  }

  v15 = *a1;
  v16 = (*(**a1 + 32))(*a1, 16, 8);
  *v16 = CoreIKDoubleExponentialTransformFilterCreate();
  v16[1] = v15;
  v26[0] = &unk_1F5CAE920;
  v26[1] = v15;
  v26[3] = v26;
  p_var1 = &v23.var1;
  *&v23.var0 = v16;
  v23.var1 = &unk_1F5CAE920;
  v24 = v15;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v26);
  re::RigGraphCallbackBuilder::buildCallbackData(v18, a1, re::internal::translationAndRotationFilterCallback, &v23);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v23);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v20 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v18 + 8);
  return 1;
}

void re::internal::registerTranslationFilter(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8717EE8;
  v11[1] = *&off_1E8717EF8;
  v11[2] = xmmword_1E8717F08;
  v11[3] = *&off_1E8717F18;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 3uLL, 1uLL, re::internal::translationFilterCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

void re::internal::registerTranslationAndRotationFilter(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8717F28;
  v11[1] = *&off_1E8717F38;
  v11[2] = xmmword_1E8717F48;
  v11[3] = *&off_1E8717F58;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 3uLL, 1uLL, re::internal::translationAndRotationFilterCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_47CoreIKDoubleExponentialPositionFilterNodeHelperENS2_9AllocatorEJffEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISD_EEFvSC_EE7__cloneEPNS0_6__baseISG_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CAE8A0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_47CoreIKDoubleExponentialPositionFilterNodeHelperENS2_9AllocatorEJffEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISD_EEFvSC_EEclEOSC_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    CoreIKDoubleExponentialPositionFilterDestroy();
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_47CoreIKDoubleExponentialPositionFilterNodeHelperENS2_9AllocatorEJffEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISD_EEFvSC_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_47CoreIKDoubleExponentialPositionFilterNodeHelperENS_9AllocatorEJffEEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_48CoreIKDoubleExponentialTransformFilterNodeHelperENS2_9AllocatorEJffEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISD_EEFvSC_EE7__cloneEPNS0_6__baseISG_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CAE920;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_48CoreIKDoubleExponentialTransformFilterNodeHelperENS2_9AllocatorEJffEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISD_EEFvSC_EEclEOSC_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    CoreIKDoubleExponentialTransformFilterDestroy();
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_48CoreIKDoubleExponentialTransformFilterNodeHelperENS2_9AllocatorEJffEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISD_EEFvSC_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_48CoreIKDoubleExponentialTransformFilterNodeHelperENS_9AllocatorEJffEEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_DWORD *re::internal::getRuntimeValue<re::internal::IKLookAtTaskSettings>@<X0>(re::RigDataValue *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = re::RigDataValue::attributeValue(a1, 0);
  *a2 = *re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v4, v5);
  v6 = re::RigDataValue::attributeValue(a1, 1uLL);
  *(a2 + 16) = *re::RigDataValue::getRuntimeValue<float>(v6, v7);
  v8 = re::RigDataValue::attributeValue(a1, 2uLL);
  result = re::RigDataValue::getRuntimeValue<int>(v8, v9);
  *(a2 + 20) = *result;
  return result;
}

uint64_t re::internal::CoreIKGenericSolverNodeHelper::updateInteralRestPose(uint64_t this, const re::RigDataValue *a2)
{
  if (*(this + 40) == 1)
  {
    v11 = v2;
    v12 = v3;
    v5 = this;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v6 = *(this + 8);
    JointCount = CoreIKGenericSolverGetJointCount();
    re::FixedArray<CoreIKTransform>::init<>(&v8, v6, JointCount);
    re::internal::transferPose(a2, &v8);
    CoreIKGenericSolverSetRestPose();
    *(v5 + 40) = 0;
    this = v8;
    if (v8)
    {
      if (v9)
      {
        return (*(*v8 + 40))();
      }
    }
  }

  return this;
}

void *re::internal::CoreIKGenericSolverNodeHelper::updateStandardTasks(void *this, const re::RigDataValue *a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = this;
    for (i = 0; i != v2; ++i)
    {
      v6 = re::RigDataValue::attributeValue(a2, i);
      v7 = re::RigDataValue::attributeValue(v6, 0);
      v8 = re::RigDataValue::attributeValue(v7, 0);
      re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v8, v9);
      v10 = re::RigDataValue::attributeValue(v6, 0);
      v11 = re::RigDataValue::attributeValue(v10, 1uLL);
      re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v11, v12);
      v13 = re::RigDataValue::attributeValue(v6, 0);
      v14 = re::RigDataValue::attributeValue(v13, 2uLL);
      re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v14, v15);
      v16 = re::RigDataValue::attributeValue(v6, 1uLL);
      re::RigDataValue::getRuntimeValue<re::Vector2<float>>(v16, v17);
      v18 = re::RigDataValue::attributeValue(v6, 2uLL);
      Runtime = re::RigDataValue::getRuntimeValue<int>(v18, v19);
      MEMORY[0x1E6903A00](*v4, *Runtime);
      this = CoreIKGenericConstraintSetTargetParameters();
    }
  }

  return this;
}

unint64_t re::RigDataValue::attributeValue(re::RigDataValue *this, unint64_t a2)
{
  if (*(this + 32) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 34) + 288 * a2;
}

{
  if (*(this + 32) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 34) + 288 * a2;
}

void *re::internal::CoreIKGenericSolverNodeHelper::updateLookAtTasks(void *this, const re::RigDataValue *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = this;
    for (i = 0; i != v2; ++i)
    {
      v6 = re::RigDataValue::attributeValue(a2, i);
      re::internal::getRuntimeValue<re::internal::IKLookAtTaskSettings>(v6, &v7);
      MEMORY[0x1E6903A00](*v4, v8);
      this = CoreIKGenericConstraintSetLookAtParameters();
    }
  }

  return this;
}

uint64_t re::internal::CoreIKGenericSolverNodeHelper::solveAndUpdate(re::internal::CoreIKGenericSolverNodeHelper *this, const re::RigDataValue *a2, re::RigDataValue *a3)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v6 = CoreIKGenericSolverSolve();
  if (re::internal::enableSignposts(0, 0))
  {
    CoreIKGenericSolverGetConstraintCount();
    CoreIKGenericSolverGetJointCount();
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::internal::updateOutputBasedOnSolveResult(v6, a2, this + 1, a3);
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t re::internal::genericSolverCallback(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, re::internal::CoreIKGenericSolverNodeHelper *a9)
{
  if (!a4)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  if (a4 == 1)
  {
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  if (a4 <= 2)
  {
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, a4);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if (a4 == 3)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  if (!a8)
  {
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::internal::CoreIKGenericSolverNodeHelper::updateInteralRestPose(a9, (a3 + 864));
  re::internal::CoreIKGenericSolverNodeHelper::updateStandardTasks(a9, a3);
  re::internal::CoreIKGenericSolverNodeHelper::updateLookAtTasks(a9, (a3 + 288));
  re::internal::transferPose((a3 + 576), a9 + 16);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  return re::internal::CoreIKGenericSolverNodeHelper::solveAndUpdate(a9, (a3 + 576), a7);
}

uint64_t re::internal::genericSolverCompile(re::Allocator **a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v58[37] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_39;
  }

  if (a3 == 1)
  {
LABEL_39:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_40;
  }

  if (a3 <= 2)
  {
LABEL_40:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
    goto LABEL_41;
  }

  v10 = a2[1];
  v11 = *(*a2 + 184);
  v12 = a2[2];
  v35[0] = 0x51C691EF1C9C00D8;
  v35[1] = "IKLookAtTaskSettings[0]";
  re::internal::makeRigDataValue(a1, v35, v58);
  if (v35[0])
  {
    if (v35[0])
    {
    }
  }

  if (a3 == 4)
  {
    re::RigDataValue::operator=(v58, a2[3]);
  }

  if (!a5)
  {
LABEL_41:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  v15 = *a4;
  v16 = strlen(*(v10 + 232));
  v17 = MEMORY[0x1E6903780](*(v10 + 232), v16);
  re::internal::makePoseFromRig(a1, v11, v17, v57);
  re::RigHierarchy::getBindPoseHierarchy(v11, v18, v35);
  re::internal::makePoseFromRig(a1, v35, v17, v56);
  if (v51)
  {
    if (v55)
    {
      (*(*v51 + 40))();
    }

    v55 = 0;
    v52 = 0;
    v53 = 0;
    v51 = 0;
    ++v54;
  }

  if (v46)
  {
    if (v50)
    {
      (*(*v46 + 40))();
    }

    v50 = 0;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    ++v49;
  }

  if (v41)
  {
    if (v45)
    {
      (*(*v41 + 40))();
    }

    v45 = 0;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    ++v44;
  }

  re::DynamicArray<re::StringID>::deinit(&v40);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v39);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(&v38);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v37);
  v19 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v36);
  v20 = MEMORY[0x1E6903C40](v17, v19);
  re::internal::makePose(a1, v20, v35);
  v33 = 0;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  v21 = *a1;
  re::RigGraphCallbackBuilder::init(v29, *a1);
  *&v34[0].var0 = 0x3D8860E9FFCEA9D0;
  v34[0].var1 = "TaskSettings";
  re::RigGraphCallbackBuilder::addInputParam(v29, v34, v12);
  if (*&v34[0].var0)
  {
    if (*&v34[0].var0)
    {
    }
  }

  *&v34[0].var0 = 0x80FA33623D02F274;
  v34[0].var1 = "LookAtTaskSettings";
  re::RigGraphCallbackBuilder::addInputParam(v29, v34, v58);
  if (*&v34[0].var0)
  {
    if (*&v34[0].var0)
    {
    }
  }

  *&v34[0].var0 = 0x76F1BA5D1EB6;
  v34[0].var1 = "InputPose";
  re::RigGraphCallbackBuilder::addInputParam(v29, v34, v57);
  if (*&v34[0].var0)
  {
    if (*&v34[0].var0)
    {
    }
  }

  *&v34[0].var0 = 0x8C23D7EF0C569870;
  v34[0].var1 = "InputBindPose";
  re::RigGraphCallbackBuilder::addInputParam(v29, v34, v56);
  if (*&v34[0].var0)
  {
    if (*&v34[0].var0)
    {
    }
  }

  *&v34[0].var0 = 0x10498EC9357CACLL;
  v34[0].var1 = "SolvedPose";
  re::RigGraphCallbackBuilder::addOutputParam(v29, v34, v35);
  if (*&v34[0].var0)
  {
    if (*&v34[0].var0)
    {
    }
  }

  re::internal::makeNodeUnique<re::internal::CoreIKGenericSolverNodeHelper,re::Allocator,CoreIKRig *>(v34, v21);
  re::RigGraphCallbackBuilder::buildCallbackData(v29, a1, re::internal::genericSolverCallback, v34);
  v27 = re::internal::bindCallbackOutputToNodeOutputPose(v11, v35, v17, a1, v15);
  MEMORY[0x1E69037D0](v17, v27);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v34);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v31 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v29 + 8);
  re::RigDataValue::~RigDataValue(v35);
  re::RigDataValue::~RigDataValue(v56);
  re::RigDataValue::~RigDataValue(v57);
  re::RigDataValue::~RigDataValue(v58);
  return 1;
}

uint64_t re::internal::makeNodeUnique<re::internal::CoreIKGenericSolverNodeHelper,re::Allocator,CoreIKRig *>(uint64_t *a1, uint64_t a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 32))(a2, 48, 8);
  *v4 = CoreIKGenericSolverCreate();
  *(v4 + 8) = a2;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  *(v4 + 40) = 1;
  JointCount = CoreIKGenericSolverGetJointCount();
  re::FixedArray<CoreIKTransform>::init<>((v4 + 16), a2, JointCount);
  v7[0] = &unk_1F5CAE9A0;
  v7[1] = a2;
  v7[3] = v7;
  a1[4] = (a1 + 1);
  *a1 = v4;
  a1[1] = &unk_1F5CAE9A0;
  a1[2] = a2;
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v7);
}

uint64_t re::internal::genericSolverDebugCallback(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, uint64_t *a9)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (!a4)
  {
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  re::internal::CoreIKGenericSolverNodeHelper::updateStandardTasks(a9, a3);
  if (a4 == 1)
  {
LABEL_16:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  re::internal::CoreIKGenericSolverNodeHelper::updateLookAtTasks(a9, (a3 + 288));
  if (a4 <= 2)
  {
LABEL_17:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  v16 = *a9;
  re::internal::GameRigSettingsUpdateHelper::updateRigJointSettings((a3 + 576));
  if (a4 == 3)
  {
LABEL_18:
    re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  re::internal::GameRigSettingsUpdateHelper::updateRigTaskSettings((a3 + 864), v16);
  if (a4 <= 4)
  {
LABEL_19:
    re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  re::internal::GameRigSettingsUpdateHelper::updateRigSolverSettings((a3 + 1152), v16);
  if (a4 <= 6)
  {
LABEL_20:
    re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 6, a4);
    _os_crash();
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  re::internal::CoreIKGenericSolverNodeHelper::updateInteralRestPose(a9, (a3 + 1728));
  re::internal::transferPose((a3 + 1440), (a9 + 2));
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (!a8)
  {
    goto LABEL_21;
  }

  return re::internal::CoreIKGenericSolverNodeHelper::solveAndUpdate(a9, (a3 + 1440), a7);
}

uint64_t re::internal::genericSolverDebugCompile(re::Allocator **a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_47;
  }

  if (a3 == 1)
  {
LABEL_47:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
LABEL_48:
    re::internal::assertLog(6, v15, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_49;
  }

  v10 = *(*a2 + 184);
  v11 = *(*(a2 + 8) + 232);
  v12 = strlen(v11);
  v13 = MEMORY[0x1E6903780](v11, v12);
  re::internal::makePoseFromRig(a1, v10, v13, v63);
  re::RigHierarchy::getBindPoseHierarchy(v10, v14, v41);
  re::internal::makePoseFromRig(a1, v41, v13, v62);
  if (v57)
  {
    if (v61)
    {
      (*(*v57 + 40))();
    }

    v61 = 0;
    v58 = 0;
    v59 = 0;
    v57 = 0;
    ++v60;
  }

  if (v52)
  {
    if (v56)
    {
      (*(*v52 + 40))();
    }

    v56 = 0;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    ++v55;
  }

  if (v47)
  {
    if (v51)
    {
      (*(*v47 + 40))();
    }

    v51 = 0;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    ++v50;
  }

  re::DynamicArray<re::StringID>::deinit(&v46);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v45);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(&v44);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v43);
  v16 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v42);
  if (!a5)
  {
    goto LABEL_48;
  }

  v17 = *a4;
  v18 = MEMORY[0x1E6903C40](v13, v16);
  re::internal::makePose(a1, v18, v41);
  v39 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  v19 = *a1;
  re::RigGraphCallbackBuilder::init(v35, *a1);
  *&v40[0].var0 = 0x3D8860E9FFCEA9D0;
  v40[0].var1 = "TaskSettings";
  if (a3 <= 2)
  {
LABEL_49:
    re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
LABEL_50:
    re::internal::assertLog(6, v22, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash();
    __break(1u);
LABEL_51:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash();
    __break(1u);
LABEL_52:
    re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 5, 5);
    _os_crash();
    __break(1u);
    goto LABEL_53;
  }

  re::RigGraphCallbackBuilder::addInputParam(v35, v40, *(a2 + 16));
  if (*&v40[0].var0)
  {
    if (*&v40[0].var0)
    {
    }
  }

  *&v40[0].var0 = 0x80FA33623D02F274;
  v40[0].var1 = "LookAtTaskSettings";
  if (a3 == 3)
  {
    goto LABEL_50;
  }

  re::RigGraphCallbackBuilder::addInputParam(v35, v40, *(a2 + 24));
  if (*&v40[0].var0)
  {
    if (*&v40[0].var0)
    {
    }
  }

  *&v40[0].var0 = 0x608B8AAFAB2B677ALL;
  v40[0].var1 = "RigJointSettings";
  if (a3 <= 4)
  {
    goto LABEL_51;
  }

  re::RigGraphCallbackBuilder::addInputParam(v35, v40, *(a2 + 32));
  if (*&v40[0].var0)
  {
    if (*&v40[0].var0)
    {
    }
  }

  *&v40[0].var0 = 0x963E12F0C5BD5BB0;
  v40[0].var1 = "RigTaskSettings";
  if (a3 == 5)
  {
    goto LABEL_52;
  }

  re::RigGraphCallbackBuilder::addInputParam(v35, v40, *(a2 + 40));
  if (*&v40[0].var0)
  {
    if (*&v40[0].var0)
    {
    }
  }

  *&v40[0].var0 = 0x86B1473B92D2CCCCLL;
  v40[0].var1 = "RigSolverSettings";
  if (a3 <= 6)
  {
LABEL_53:
    re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 6, 6);
    _os_crash();
    __break(1u);
  }

  re::RigGraphCallbackBuilder::addInputParam(v35, v40, *(a2 + 48));
  if (*&v40[0].var0)
  {
    if (*&v40[0].var0)
    {
    }
  }

  *&v40[0].var0 = 0x76F1BA5D1EB6;
  v40[0].var1 = "InputPose";
  re::RigGraphCallbackBuilder::addInputParam(v35, v40, v63);
  if (*&v40[0].var0)
  {
    if (*&v40[0].var0)
    {
    }
  }

  *&v40[0].var0 = 0x8C23D7EF0C569870;
  v40[0].var1 = "InputBindPose";
  re::RigGraphCallbackBuilder::addInputParam(v35, v40, v62);
  if (*&v40[0].var0)
  {
    if (*&v40[0].var0)
    {
    }
  }

  *&v40[0].var0 = 0x10498EC9357CACLL;
  v40[0].var1 = "SolvedPose";
  re::RigGraphCallbackBuilder::addOutputParam(v35, v40, v41);
  if (*&v40[0].var0)
  {
    if (*&v40[0].var0)
    {
    }
  }

  re::internal::makeNodeUnique<re::internal::CoreIKGenericSolverNodeHelper,re::Allocator,CoreIKRig *>(v40, v19);
  re::RigGraphCallbackBuilder::buildCallbackData(v35, a1, re::internal::genericSolverDebugCallback, v40);
  v33 = re::internal::bindCallbackOutputToNodeOutputPose(v10, v41, v13, a1, v17);
  MEMORY[0x1E69037D0](v13, v33);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v40);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v37 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v35 + 8);
  re::RigDataValue::~RigDataValue(v41);
  re::RigDataValue::~RigDataValue(v62);
  re::RigDataValue::~RigDataValue(v63);
  return 1;
}

void re::internal::registerGenericSolverNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E8717F88;
  v11[3] = *&off_1E8717F98;
  v11[4] = xmmword_1E8717FA8;
  v11[0] = xmmword_1E8717F68;
  v11[1] = *&off_1E8717F78;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 4uLL, 1uLL, re::internal::genericSolverCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

void re::internal::registerGenericSolverNoLookAtNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8717FB8;
  v11[1] = *&off_1E8717FC8;
  v11[2] = xmmword_1E8717FD8;
  v11[3] = *&off_1E8717FE8;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 3uLL, 1uLL, re::internal::genericSolverCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

void re::internal::registerGenericSolverWithRigSettingsDebug(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[4] = xmmword_1E8718038;
  v11[5] = *&off_1E8718048;
  v11[6] = xmmword_1E8718058;
  v11[7] = *&off_1E8718068;
  v11[0] = xmmword_1E8717FF8;
  v11[1] = *&off_1E8718008;
  v11[2] = xmmword_1E8718018;
  v11[3] = *&off_1E8718028;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 7uLL, 1uLL, re::internal::genericSolverDebugCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t re::internal::ikParametersNodeCallback(uint64_t a1, uint64_t a2, re::RigDataValue *a3, uint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, re::BindNode **a9)
{
  if (result)
  {
    if (a4)
    {
      if (a8)
      {
        if (a4 != 1)
        {
          v15 = result;
          v29.i64[0] = 0x3F8000003F800000;
          v29.i64[1] = 1065353216;
          v30.i64[0] = 0;
          v30.i64[1] = 0x3F80000000000000;
          v31 = 0uLL;
          re::RigDataValue::getRuntimeValue<re::GenericSRT<float>>(a3 + 288, &v29);
          __asm { FMOV            V0.4S, #1.0 }

          v21 = v30;
          v22 = vnegq_f32(v30);
          v23 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
          v22.i32[3] = v30.i32[3];
          v29 = vdivq_f32(_Q0, v29);
          v30 = v22;
          v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL), v21), v31, v23);
          v25 = vaddq_f32(v24, v24);
          v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
          v27 = vaddq_f32(v31, vmulq_laneq_f32(v26, v21, 3));
          v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v21), v26, v23);
          v31 = vmulq_f32(vaddq_f32(v27, vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL)), vnegq_f32(v29));
          return re::FullBodyIKSolver::solve(v15, a3, a7);
        }

LABEL_9:
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
        result = _os_crash();
        __break(1u);
        return result;
      }
    }

    else
    {
      re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t anonymous namespace::IKComponentSolverWrapper::getSolver(re::BindNode **this)
{
  if (*this == -1)
  {
    return 0;
  }

  if (*(Solvers + 8) <= *this)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(Solvers + 16) + (*this << 7);
}

_OWORD *re::RigDataValue::getRuntimeValue<re::GenericSRT<float>>(uint64_t a1, _OWORD *a2)
{
  v8 = "scale";
  v9 = 5;
  re::RigDataValue::attributeValue(a1, &v8, v10);
  *a2 = *re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v11, v4);
  if (v10[0] & 1) == 0 && v12 && (v13)
  {
    (*(*v12 + 40))();
  }

  v8 = "rotation";
  v9 = 8;
  re::RigDataValue::attributeValue(a1, &v8, v10);
  a2[1] = *re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v11, v5);
  if (v10[0] & 1) == 0 && v12 && (v13)
  {
    (*(*v12 + 40))();
  }

  v8 = "translation";
  v9 = 11;
  re::RigDataValue::attributeValue(a1, &v8, v10);
  result = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v11, v6);
  a2[2] = *result;
  if ((v10[0] & 1) == 0)
  {
    result = v12;
    if (v12)
    {
      if (v13)
      {
        return (*(*v12 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::internal::ikParameterSolverNodeCompile(re::Allocator **a1, _BYTE *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v218 = *MEMORY[0x1E69E9840];
  v10 = a1[2];
  memset(v217, 0, sizeof(v217));
  re::BindNode::copy(v217, (v10 + 64));
  if (a3 <= 1)
  {
LABEL_112:
    re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
LABEL_113:
    re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
LABEL_114:
    re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_115;
  }

  v87 = a4;
  v88 = a5;
  v12 = *v9;
  v13 = *(a2 + 1);
  v14 = (*(**v9 + 32))(*v9, 40, 8);
  v128 = 0u;
  v129 = 0u;
  re::BindNode::copy(&v128, v217);
  *v14 = -1;
  *(v14 + 24) = 0u;
  *(v14 + 8) = 0u;
  re::BindNode::move((v14 + 8), &v128);
  if (Solvers)
  {
    v16 = *(Solvers + 8);
    if (v16)
    {
      v17 = 0;
      v18 = *(Solvers + 16);
      do
      {
        if (re::StringID::operator==(v18, (v13 + 224)))
        {
          *v14 = v17;
        }

        ++v17;
        v18 += 16;
      }

      while (v16 != v17);
    }
  }

  re::BindNode::deinit(&v128);
  *&v128 = &unk_1F5CAEAB8;
  *(&v128 + 1) = v12;
  *(&v129 + 1) = &v128;
  v216[3] = v216;
  v215 = v14;
  v216[0] = &unk_1F5CAEAB8;
  v216[1] = v12;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](&v128);
  v19 = v215;
  {
    if (v88)
    {
      v50 = *(*a2 + 184);
      v51 = *(*v87 + 184);
      v52 = *v50;
      *(v51 + 16) = *(v50 + 2);
      *v51 = v52;
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v51 + 24), v50 + 24);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v51 + 72), v50 + 72);
      re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v51 + 120, v50 + 15);
      re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v51 + 160, v50 + 20);
      re::DynamicArray<re::StringID>::operator=(v51 + 200, v50 + 25);
      re::DynamicArray<unsigned long>::operator=(v51 + 240, v50 + 30);
      re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v51 + 280, v50 + 35);
      re::DynamicArray<unsigned long>::operator=(v51 + 320, v50 + 40);
      goto LABEL_107;
    }

LABEL_115:
    re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  v127 = 0;
  memset(v123, 0, sizeof(v123));
  memset(v125, 0, sizeof(v125));
  v124 = 0;
  v126 = 0;
  re::RigGraphCallbackBuilder::init(v123, v12);
  v21 = v9[2];
  *&v128 = 158357486;
  *(&v128 + 1) = "SRT[]";
  v22 = re::RigEnvironment::lookupRigDataType(v21, &v128, v118);
  if (v128)
  {
    if (v128)
    {
    }
  }

  v23 = v9[2];
  *&v128 = 164778;
  *(&v128 + 1) = "SRT";
  v24 = re::RigEnvironment::lookupRigDataType(v23, &v128, v113);
  if (v128)
  {
    if (v128)
    {
    }
  }

  v26 = v9[1];
  v25 = v9[2];
  v27 = *v9;
  memset(v193, 0, sizeof(v193));
  v194 = 0;
  v28 = &str_67;
  v195 = 0;
  v196 = &str_67;
  v201 = 0;
  v199 = 0;
  v197 = 0;
  v198 = 0;
  v200 = 0;
  v202 = 0;
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v206 = 0u;
  v207 = -1;
  v208 = 0;
  v210 = 0;
  v209 = 0;
  v214 = 0;
  v213 = 0;
  v211 = &str_67;
  memset(v212, 0, sizeof(v212));
  re::RigDataValue::init(v193, v27, v25, &v119, v26);
  v30 = v9[1];
  v29 = v9[2];
  v31 = *v9;
  memset(v171, 0, sizeof(v171));
  v172 = 0;
  v173 = 0;
  v174 = &str_67;
  v179 = 0;
  v177 = 0;
  v175 = 0;
  v176 = 0;
  v178 = 0;
  v180 = 0;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = -1;
  v186 = 0;
  v188 = 0;
  v187 = 0;
  v192 = 0;
  v191 = 0;
  v189 = &str_67;
  memset(v190, 0, sizeof(v190));
  re::RigDataValue::init(v171, v31, v29, &v119, v30);
  v110 = 0;
  v111 = 0;
  v112 = 0;
  JointCount = CoreIKGenericSolverGetJointCount();
  v91 = JointCount;
  if (!JointCount)
  {
    v37 = *(*a2 + 184);
    goto LABEL_33;
  }

  v86 = a3;
  v33 = 0;
  a3 = 0;
  do
  {
    CoreIKGenericSolverGetJoint();
    Name = CoreIKJointGetName();
    *v170 = 0;
    *&v170[8] = &str_67;
    v35 = v111;
    if (v111 <= a3)
    {
      v99 = 0;
      v129 = 0u;
      memset(v130, 0, 48);
      v128 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v150[0]) = 136315906;
      *(v150 + 4) = "operator[]";
      WORD6(v150[0]) = 1024;
      *(v150 + 14) = 468;
      WORD1(v150[1]) = 2048;
      *(&v150[1] + 4) = a3;
      WORD6(v150[1]) = 2048;
      *(&v150[1] + 14) = v35;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_109:
      *v170 = 0;
      v129 = 0u;
      memset(v130, 0, 48);
      v128 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v150[0]) = 136315906;
      *(v150 + 4) = "operator[]";
      WORD6(v150[0]) = 1024;
      *(v150 + 14) = 468;
      WORD1(v150[1]) = 2048;
      *(&v150[1] + 4) = Name;
      WORD6(v150[1]) = 2048;
      *(&v150[1] + 14) = a3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_110:
      v99 = 0;
      v152 = 0u;
      v151 = 0u;
      memset(v150, 0, sizeof(v150));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v170 = 136315906;
      *(a2 + 4) = "operator[]";
      *&v170[12] = 1024;
      *(a2 + 14) = 797;
      *&v170[18] = 2048;
      *(a2 + 20) = v35;
      *&v170[28] = 2048;
      *(a2 + 30) = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_111:
      v106[0] = 0;
      v152 = 0u;
      v151 = 0u;
      memset(v150, 0, sizeof(v150));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v170 = 136315906;
      *&v170[4] = "operator[]";
      *&v170[12] = 1024;
      *&v170[14] = 468;
      *&v170[18] = 2048;
      *&v170[20] = v9;
      *&v170[28] = 2048;
      *&v170[30] = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_112;
    }

    v36 = re::StringID::operator=((v112 + v33), v170);
    if (v170[0])
    {
      if (v170[0])
      {
      }
    }

    ++a3;
    v33 += 16;
  }

  while (v91 != a3);
  Name = 0;
  v85 = a2;
  v37 = *(*a2 + 184);
  v28 = &v128;
  v38 = 8;
  v89 = v37;
  v90 = v9;
  do
  {
    a3 = v111;
    if (v111 <= Name)
    {
      goto LABEL_109;
    }

    v39 = strlen(*(v112 + v38));
    *&v128 = *(v112 + v38);
    *(&v128 + 1) = v39;
    re::RigHierarchy::getLocalSpaceJointSRT(v37, &v128, v170);
    v35 = *&v170[8];
    v9 = *&v170[16];
    v40 = *&v170[24];
    v42 = v90[1];
    v41 = v90[2];
    v43 = *v90;
    v128 = 0u;
    v129 = 0u;
    v130[0] = 0;
    *&v130[8] = 0;
    a2 = &str_67;
    *&v130[16] = &str_67;
    *&v131 = 0;
    memset(&v130[24], 0, 28);
    BYTE8(v131) = 0;
    *&v133[4] = 0u;
    v134 = 0u;
    memset(v135, 0, 32);
    *&v135[32] = -1;
    v136 = 0;
    *(&v138 + 1) = 0;
    v139 = 0;
    *&v140 = &str_67;
    *&v143 = 0;
    v141 = 0uLL;
    v142 = 0;
    *(&v140 + 1) = 0;
    re::RigDataValue::init(&v128, v43, v41, &v114, v42);
    v44 = re::RigDataValue::attributeValue(&v128, 0);
    *(v44 + 96) = 2;
    *(v44 + 176) = v35;
    v45 = re::RigDataValue::attributeValue(&v128, 1uLL);
    *(v45 + 96) = 2;
    *(v45 + 176) = v9;
    v46 = re::RigDataValue::attributeValue(&v128, 2uLL);
    *(v46 + 96) = 2;
    *(v46 + 176) = v40;
    re::DynamicArray<re::RigDataValue>::add(v212, &v128);
    v48 = v90[1];
    v47 = v90[2];
    v49 = *v90;
    memset(v150, 0, 33);
    *(&v150[2] + 1) = 0;
    *&v151 = &str_67;
    v154 = 0;
    v152 = 0uLL;
    *(&v151 + 1) = 0;
    v153 = 0;
    v155 = 0;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = -1;
    v161 = 0;
    v162 = 0;
    v163 = 0;
    v164 = &str_67;
    v169 = 0;
    v166 = 0;
    v167 = 0;
    v168 = 0;
    v165 = 0;
    re::RigDataValue::init(v150, v49, v47, &v114, v48);
    re::DynamicArray<re::RigDataValue>::add(v190, v150);
    re::RigDataValue::~RigDataValue(v150);
    re::RigDataValue::~RigDataValue(&v128);
    if (v170[0] & 1) == 0 && *&v170[24] && (v170[32])
    {
      (*(**&v170[24] + 40))();
    }

    Name = (Name + 1);
    v38 += 16;
    v37 = v89;
  }

  while (v91 != Name);
  v9 = v90;
  a2 = v85;
  a3 = v86;
LABEL_33:
  *&v128 = 0x76F1BA5D1EB6;
  *(&v128 + 1) = "InputPose";
  re::RigGraphCallbackBuilder::addInputParam(v123, &v128, v193);
  if (v128)
  {
    if (v128)
    {
    }
  }

  *&v128 = 0x34787D46CC9BED34;
  *(&v128 + 1) = "SolverRootModelSpaceTransform";
  if (a3 == 2)
  {
    goto LABEL_113;
  }

  re::RigGraphCallbackBuilder::addInputParam(v123, &v128, *(a2 + 2));
  if (v128)
  {
    if (v128)
    {
    }
  }

  *&v128 = 0x10498EC9357CACLL;
  *(&v128 + 1) = "SolvedPose";
  re::RigGraphCallbackBuilder::addOutputParam(v123, &v128, v171);
  if (v128)
  {
    if (v128)
    {
    }
  }

  a2 = v170;
  re::RigGraphCallbackBuilder::buildCallbackData(v123, v9, re::internal::ikParametersNodeCallback, &v215);
  v129 = 0u;
  memset(v130, 0, 28);
  v128 = 0u;
  *&v130[28] = 0x7FFFFFFFLL;
  *&v130[40] = 0u;
  v131 = 0u;
  v132 = 0;
  *v133 = 0x7FFFFFFFLL;
  *&v133[12] = 0;
  v134 = 0uLL;
  v149 = 0;
  memset(&v135[8], 0, 32);
  *v135 = 0;
  LODWORD(v136) = 0;
  v137 = 0u;
  v138 = 0u;
  LODWORD(v139) = 0;
  v142 = 0;
  v141 = 0u;
  v140 = 0u;
  v145 = 0;
  v143 = 0u;
  v144 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0;
  re::RigHierarchy::jointDescription(v37, v57, &v107);
  re::RigHierarchy::init(&v128, v9[2], *v9, v9[1], v109, v108);
  v28 = *(v37 + 27);
  if (v28)
  {
    v35 = 0;
    v59 = 8;
    while (v28 > v35)
    {
      v60 = *(v37 + 29);
      v61 = strlen(*(v60 + v59));
      v105[0] = *(v60 + v59);
      v105[1] = v61;
      re::RigHierarchy::getLocalSpaceJointScale(v37, v105, v150);
      v106[0] = *(&v150[0] + 1);
      v62 = strlen(*(v60 + v59));
      v104[0] = *(v60 + v59);
      v104[1] = v62;
      re::RigHierarchy::getLocalSpaceJointRotation(v37, v104, v170);
      v106[1] = *&v170[8];
      v63 = strlen(*(v60 + v59));
      v98[0] = *(v60 + v59);
      v98[1] = v63;
      re::RigHierarchy::getLocalSpaceJointTranslation(v37, v98, &v99);
      v106[2] = v100;
      if (v99 & 1) == 0 && v102 && (v103)
      {
        (*(*v102 + 40))();
      }

      if (v170[0] & 1) == 0 && *&v170[24] && (v170[32])
      {
        (*(**&v170[24] + 40))();
      }

      if (v150[0] & 1) == 0 && *(&v150[1] + 1) && (v150[2])
      {
        (*(**(&v150[1] + 1) + 40))();
      }

      v9 = *(v60 + v59);
      v64 = strlen(v9);
      *&v150[0] = v9;
      *(&v150[0] + 1) = v64;
      re::RigHierarchy::setLocalSpaceJointTransform(&v128, v150, v106, v95);
      if ((v95[0] & 1) == 0 && v96)
      {
        if (BYTE8(v96))
        {
          (*(*v96 + 40))();
        }

        v97 = 0u;
        v96 = 0u;
      }

      ++v35;
      v28 = *(v37 + 27);
      v59 += 16;
      if (v35 >= v28)
      {
        goto LABEL_64;
      }
    }

    goto LABEL_110;
  }

LABEL_64:
  if (v91)
  {
    v9 = 0;
    v65 = 8;
    a3 = 5;
    do
    {
      v66 = re::RigDataValue::attributeValue(v171, v9);
      v67 = re::RigDataValue::attributeValue(v66, 0);
      v68 = v67;
      if (*(v67 + 96) == 1)
      {
        v69 = *(v67 + 16);
        LODWORD(v150[0]) = 7;
        memset(v150 + 8, 0, 24);
        re::DynamicArray<re::EvaluationRegister>::add((v69 + 243), v150);
        *&v150[0] = v69[245] - 1;
        re::DynamicArray<unsigned long>::add(v69 + 36, v150);
        re::DynamicArray<re::Vector3<float>>::add((v69 + 76), v68 + 7);
        v70 = (v69[40] + 8 * v69[38] - 8);
      }

      else
      {
        v70 = (v67 + 176);
      }

      v99 = *v70;
      v71 = re::RigDataValue::attributeValue(v66, 1uLL);
      v72 = v71;
      if (*(v71 + 96) == 1)
      {
        v73 = *(v71 + 16);
        LODWORD(v150[0]) = 5;
        memset(v150 + 8, 0, 24);
        re::DynamicArray<re::EvaluationRegister>::add((v73 + 233), v150);
        *&v150[0] = v73[235] - 1;
        re::DynamicArray<unsigned long>::add(v73 + 26, v150);
        re::DynamicArray<re::Vector3<float>>::add((v73 + 66), v72 + 7);
        v74 = (v73[30] + 8 * v73[28] - 8);
      }

      else
      {
        v74 = (v71 + 176);
      }

      v100 = *v74;
      v75 = re::RigDataValue::attributeValue(v66, 2uLL);
      v76 = v75;
      if (*(v75 + 96) == 1)
      {
        v77 = *(v75 + 16);
        LODWORD(v150[0]) = 7;
        memset(v150 + 8, 0, 24);
        re::DynamicArray<re::EvaluationRegister>::add((v77 + 243), v150);
        *&v150[0] = v77[245] - 1;
        re::DynamicArray<unsigned long>::add(v77 + 36, v150);
        re::DynamicArray<re::Vector3<float>>::add((v77 + 76), v76 + 7);
        v78 = (v77[40] + 8 * v77[38] - 8);
      }

      else
      {
        v78 = (v75 + 176);
      }

      v101 = *v78;
      v28 = v111;
      if (v111 <= v9)
      {
        goto LABEL_111;
      }

      v79 = strlen(*(v112 + v65));
      *&v150[0] = *(v112 + v65);
      *(&v150[0] + 1) = v79;
      re::RigHierarchy::setLocalSpaceJointTransform(&v128, v150, &v99, v92);
      if ((v92[0] & 1) == 0 && v93)
      {
        if (BYTE8(v93))
        {
          (*(*v93 + 40))();
        }

        v94 = 0u;
        v93 = 0u;
      }

      v9 = (v9 + 1);
      v65 += 16;
    }

    while (v91 != v9);
  }

  if (!v88)
  {
    goto LABEL_114;
  }

  v80 = *(*v87 + 184);
  v81 = v128;
  *(v80 + 16) = v129;
  *v80 = v81;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v80 + 24), &v129 + 8);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v80 + 72), &v130[40]);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v80 + 120, &v133[12]);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v80 + 160, &v135[16]);
  re::DynamicArray<re::StringID>::operator=(v80 + 200, &v137 + 1);
  re::DynamicArray<unsigned long>::operator=(v80 + 240, &v140 + 1);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v80 + 280, &v143 + 1);
  re::DynamicArray<unsigned long>::operator=(v80 + 320, &v146 + 1);
  if (v107 && v108)
  {
    (*(*v107 + 40))();
  }

  if (*(&v146 + 1))
  {
    if (v149)
    {
      (*(**(&v146 + 1) + 40))();
    }

    v149 = 0;
    v147 = 0uLL;
    *(&v146 + 1) = 0;
    ++v148;
  }

  if (*(&v143 + 1))
  {
    if (v146)
    {
      (*(**(&v143 + 1) + 40))();
    }

    *&v146 = 0;
    v144 = 0uLL;
    *(&v143 + 1) = 0;
    ++v145;
  }

  if (*(&v140 + 1))
  {
    if (v143)
    {
      (*(**(&v140 + 1) + 40))();
    }

    *&v143 = 0;
    v141 = 0uLL;
    *(&v140 + 1) = 0;
    ++v142;
  }

  re::DynamicArray<re::StringID>::deinit(&v137 + 8);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v135[16]);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(&v133[12]);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v130[40]);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v129 + 1);
  re::FixedArray<re::StringID>::deinit(&v110);
  re::RigDataValue::~RigDataValue(v171);
  re::RigDataValue::~RigDataValue(v193);
  if (v113[0] == 1)
  {
    v82 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v117);
    if (v115)
    {
      if (v115)
      {
      }
    }
  }

  if (v118[0] == 1)
  {
    v83 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v122);
    if (v120)
    {
      if (v120)
      {
      }
    }
  }

  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v125[8]);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v123 + 8);
LABEL_107:
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v215);
  re::BindNode::deinit(v217);
  return 1;
}

void re::internal::registerIKParametersComponentNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8718078;
  v11[1] = *&off_1E8718088;
  v11[2] = xmmword_1E8718098;
  v11[3] = *off_1E87180A8;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 3uLL, 1uLL, re::internal::ikParameterSolverNodeCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_29CoreIKGenericSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CAE9A0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_29CoreIKGenericSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EEclEOSE_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    CoreIKGenericSolverDestroy();
    re::FixedArray<CoreIKTransform>::deinit((v2 + 16));
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_29CoreIKGenericSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_29CoreIKGenericSolverNodeHelperENS_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::IKComponentSolverWrapper::getSolvers(re::BindNode **this)
{
  v5[0] = "solvers";
  v5[1] = 7;
  if ((atomic_load_explicit(&qword_1EE18F100, memory_order_acquire) & 1) == 0)
  {
    v3 = this;
    v4 = __cxa_guard_acquire(&qword_1EE18F100);
    this = v3;
    if (v4)
    {
      _MergedGlobals_13 = re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(0);
      __cxa_guard_release(&qword_1EE18F100);
      this = v3;
    }
  }

  re::BindNode::bindPoint(this + 1, _MergedGlobals_13, v5, v6);
  if (v7[2] && re::BindPoint::isAlive(v6))
  {
    v1 = re::BindPoint::valueUntyped(v6);
  }

  else
  {
    v1 = 0;
  }

  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v7);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v7);
  return v1;
}

uint64_t *re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(int a1)
{
  {
    re::IntrospectionFixedArray<re::FullBodyIKSolver>::IntrospectionFixedArray(&re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v2 = re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v2)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::info;
    }

    v4 = re::introspectionSharedMutex(v3);
    std::__shared_mutex_base::lock(v4);
  }

  v5 = re::introspect_FullBodyIKSolver(1);
  if ((re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v6 = v5;
    re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::isInitialized = 1;
    v7 = *(v5 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::info, 0);
    qword_1EE186EA8 = 0x1800000004;
    dword_1EE186EB0 = v7;
    word_1EE186EB4 = 0;
    *&xmmword_1EE186EB8 = 0;
    *(&xmmword_1EE186EB8 + 1) = 0xFFFFFFFFLL;
    qword_1EE186EC8 = v6;
    unk_1EE186ED0 = 0;
    re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::info = &unk_1F5CAEA20;
    re::IntrospectionRegistry::add(v8, v9);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::info, &v14);
    if (BYTE8(v14))
    {
      v10 = v15;
    }

    else
    {
      v10 = &v14 + 9;
    }

    if (v14 && (BYTE8(v14) & 1) != 0)
    {
      (*(*v14 + 40))();
    }

    v14 = *(v6 + 32);
    xmmword_1EE186EB8 = v13;
    if (v16)
    {
      if (v16)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v11 = re::introspectionSharedMutex(v5);
    std::__shared_mutex_base::unlock(v11);
  }

  return &re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::info;
}

void re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::beginListType(v10, a2, 1, 0x18uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

ArcSharedObject *re::IntrospectionFixedArray<re::FullBodyIKSolver>::IntrospectionFixedArray(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CAE268;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *a1 = &unk_1F5CAEA20;
  return a1;
}

void *re::IntrospectionFixedArray<re::FullBodyIKSolver>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::FullBodyIKSolver>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::FullBodyIKSolver>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t re::IntrospectionFixedArray<re::FullBodyIKSolver>::init(uint64_t a1, uint64_t a2, re *a3, int a4, unint64_t a5)
{
  result = re::FixedArray<re::FullBodyIKSolver>::init<>(a2, a3, a5);
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (*(a2 + 8) <= v12)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      result = re::introspectionInitElement(a3, a4, *(a1 + 48), (*(a2 + 16) + v11));
      ++v12;
      v11 += 128;
    }

    while (a5 != v12);
  }

  return result;
}

uint64_t re::IntrospectionFixedArray<re::FullBodyIKSolver>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + (a3 << 7);
}

{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + (a3 << 7);
}

void *re::FixedArray<re::FullBodyIKSolver>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = v2 << 7;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v4 + 13);
        re::FixedArray<CoreIKTransform>::deinit(v4 + 10);
        re::FixedArray<CoreIKTransform>::deinit(v4 + 7);
        std::unique_ptr<CoreIKGenericSolver,std::function<void ()(CoreIKGenericSolver*)>>::~unique_ptr[abi:nn200100](v4 + 2);
        re::StringID::destroyString(v4);
        v4 += 16;
        v5 -= 128;
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

uint64_t *std::unique_ptr<CoreIKGenericSolver,std::function<void ()(CoreIKGenericSolver*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(CoreIKGenericSolver *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(CoreIKGenericSolver *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(CoreIKGenericSolver *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(CoreIKGenericSolver *)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__value_func<void ()(CoreIKGenericSolver *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t re::FixedArray<re::FullBodyIKSolver>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 57)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 128, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, a3 << 7, 8);
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
      *result = 0uLL;
      *(result + 16) = 0uLL;
      *(result + 8) = &str_67;
      *(result + 32) = 0uLL;
      *(result + 48) = 0uLL;
      *(result + 64) = 0uLL;
      *(result + 80) = 0uLL;
      *(result + 96) = 0uLL;
      *(result + 112) = 0uLL;
      result += 128;
      --v6;
    }

    while (v6);
  }

  *result = 0u;
  *(result + 16) = 0u;
  *(result + 8) = &str_67;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  return result;
}

void *re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

void *re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(void *a1)
{
  re::FixedArray<re::FullBodyIKSolver>::deinit(a1);

  return re::FixedArray<re::FullBodyIKSolver>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(void *a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<re::FullBodyIKSolver>::deinit(a1);
  v8 = re::FixedArray<re::FullBodyIKSolver>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = v9 << 7;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 128;
        v11 -= 128;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + (a2 << 7);
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v1 < v3)
  {
    a1[2] = ++v1;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16) + (v1 << 7);
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t std::__function::__func<re::internal::ikParameterSolverNodeCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0,std::allocator<re::internal::ikParameterSolverNodeCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CAEAB8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::internal::ikParameterSolverNodeCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0,std::allocator<re::internal::ikParameterSolverNodeCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0>,void ()(void *)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    v4.n128_f64[0] = re::BindNode::deinit((v2 + 8));
    v5 = *(*v3 + 40);

    return v5(v3, v2, v4);
  }

  return result;
}

uint64_t std::__function::__func<re::internal::ikParameterSolverNodeCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0,std::allocator<re::internal::ikParameterSolverNodeCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::DynamicString *re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(re::DynamicString *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 6) < v4)
        {
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
        ++*(a1 + 10);
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

        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v5, v6);
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        if (v6)
        {
          v7 = *(a1 + 32);
          v8 = 96 * v6;
          do
          {
            re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v7 + 56);
            re::StringID::destroyString((v7 + 40));
            re::DynamicString::deinit(v7);
            v7 += 96;
            v8 -= 96;
          }

          while (v8);
        }
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::DynamicArray<re::RigDataValue>>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::DynamicArray<re::RigDataValue>>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::DynamicArray<re::RigDataValue>>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::DynamicArray<re::RigDataValue>>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::StringID>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::StringID>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::StringID>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::StringID>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::StringID>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<unsigned long>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<unsigned long>::copy(a1, a2);
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
      re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<unsigned long>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::RigHierarchyJointTransform>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::RigHierarchyJointTransform>::copy(a1, a2);
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
      re::DynamicArray<re::RigHierarchyJointTransform>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::RigHierarchyJointTransform>::copy(a1, a2);
    }
  }

  return a1;
}

void re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_95, 4 * v2);
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
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicString::deinit((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 56;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}