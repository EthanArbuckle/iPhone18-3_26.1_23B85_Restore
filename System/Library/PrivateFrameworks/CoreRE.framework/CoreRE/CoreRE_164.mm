uint64_t re::mesh_traversal::traverseVFXScene(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!(*(*a1 + 24))(a1))
  {
    return 0;
  }

  memset(v11, 0, 24);
  v11[3] = a2 + 128;
  v11[4] = a2 + 80;
  v11[5] = 0;
  v11[6] = 0;
  v11[7] = a2 + 504;
  v11[8] = 0;
  v11[9] = 0;
  v12 = *(a2 + 440);
  v13 = *(a2 + 448);
  v8 = *(a2 + 912);
  v14 = 0;
  v15 = v8;
  v16 = *(a2 + 688);
  v9 = (*(*a1 + 8))(a1, v11);
  if (v9)
  {
    re::addVFXSceneDrawsToTechniqueBuckets(a2, a3, a1, a4);
  }

  return v9;
}

re::CustomDeformers *re::CustomDeformers::CustomDeformers(re::CustomDeformers *this, re::Allocator *a2)
{
  *this = &unk_1F5D03830;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 60) = 0x1FFFFFFFFLL;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 72) = 0u;
  v4 = this + 72;
  *(this + 108) = 0x7FFFFFFFLL;
  *(this + 20) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  *(this + 1) = a2;
  v5 = (this + 8);
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 1, 0);
  ++*(this + 8);
  *(this + 13) = 8;
  re::DataArray<re::CustomDeformers::CustomDeformerData>::allocBlock(v5);
  re::HashTable<re::StringID,re::DataArrayHandle<re::CustomDeformers::CustomDeformerData>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v4, a2, 32);
  return this;
}

void re::HashTable<re::StringID,re::DataArrayHandle<re::CustomDeformers::CustomDeformerData>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_15, 4 * v10);
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

uint64_t re::CustomDeformers::registerCustomDeformer@<X0>(uint64_t a1@<X0>, StringID *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a5 && a6)
  {
    v16 = "Custom deformers only current support either CPU or GPU mode.";
LABEL_8:
    goto LABEL_9;
  }

  if (!(a5 | a6))
  {
    v16 = "Custom deformers must specify either CPU or GPU functions.";
    goto LABEL_8;
  }

  var1 = a2->var1;
  if (strlen(var1) >= 0x40)
  {
    result = re::DynamicString::format("Invalid deformer name, exceeded maximum length (%zu): %s.", &v39, 64, var1);
LABEL_9:
    v19 = v39;
    v20 = v40;
    *a8 = 0;
    *(a8 + 8) = 1001;
    *(a8 + 16) = &re::GraphicsErrorCategory(void)::instance;
    *(a8 + 24) = v19;
    *(a8 + 40) = v20;
    return result;
  }

  v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 72, a2, v21 ^ (v21 >> 31), &v39);
  if (HIDWORD(v39) != 0x7FFFFFFF)
  {
    result = re::DynamicString::format("Cannot register duplicate custom deformer name: %s.", &v39, a2->var1);
    goto LABEL_9;
  }

  v23 = *(a1 + 144);
  if (v23)
  {
    v24 = *(*(a1 + 160) + 8 * v23 - 8);
    *(a1 + 144) = v23 - 1;
    ++*(a1 + 152);
  }

  else
  {
    v24 = *(a1 + 120);
    *(a1 + 120) = v24 + 1;
  }

  v25 = *(a1 + 64);
  if ((v25 + 1) >> 24)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25 + 1;
  }

  *(a1 + 64) = v26;
  v27 = *(a1 + 60);
  v28 = *(a1 + 62);
  if (v27 != 0xFFFF || v28 != 0xFFFF)
  {
    if (*(a1 + 24) > v28)
    {
      v38 = *(a1 + 62);
      v33 = (*(a1 + 40) + 16 * v28);
      *(v33[1] + 4 * v27) = v26;
      v32 = *v33 + 48 * v27;
      *(a1 + 60) = *v32;
      v37 = *(a1 + 64);
      goto LABEL_29;
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_33;
  }

  if (*(a1 + 56) >= *(a1 + 52))
  {
    v29 = v24;
    re::DataArray<re::CustomDeformers::CustomDeformerData>::allocBlock((a1 + 8));
    v24 = v29;
  }

  v30 = *(a1 + 24);
  if (!v30)
  {
LABEL_33:
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_34:
    re::internal::assertLog(5, v22, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v27);
    _os_crash();
    __break(1u);
  }

  v27 = *(a1 + 56);
  if (v27 >= 0x10000)
  {
    goto LABEL_34;
  }

  v38 = (v30 - 1);
  v31 = (*(a1 + 40) + 16 * v38);
  *(a1 + 56) = v27 + 1;
  v37 = *(a1 + 64);
  *(v31[1] + 4 * v27) = v37;
  v32 = *v31 + 48 * v27;
LABEL_29:
  ++*(a1 + 48);
  v34 = v24;
  *v32 = v24;
  *(v32 + 8) = a3;
  *(v32 + 16) = a4;
  *(v32 + 24) = a5;
  *(v32 + 32) = a6;
  *(v32 + 40) = a7;
  v39 = 0uLL;
  *&v40 = 0;
  v35 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 72, a2, (0x94D049BB133111EBLL * (v35 ^ (v35 >> 27))) ^ ((0x94D049BB133111EBLL * (v35 ^ (v35 >> 27))) >> 31), &v39);
  if (HIDWORD(v39) == 0x7FFFFFFF)
  {
    v36 = re::HashTable<re::StringID,re::DataArrayHandle<re::CustomDeformers::CustomDeformerData>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1 + 72, DWORD2(v39), v39);
    result = re::StringID::StringID((v36 + 8), a2);
    *(v36 + 24) = v27 + (v38 << 16) + ((v37 & 0xFFFFFF) << 32);
    ++*(a1 + 112);
  }

  *a8 = 1;
  *(a8 + 8) = v34;
  return result;
}

uint64_t re::CustomDeformers::unregisterCustomDeformer@<X0>(re::CustomDeformers *this@<X0>, const re::StringID *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 72, a2, v6 ^ (v6 >> 31), &v15);
  if (HIDWORD(v15) == 0x7FFFFFFF)
  {
    result = re::DynamicString::format("Cannot unregister unknown deformer: %s.", &v15, *(a2 + 1));
    v8 = 0;
    v9 = v15;
    v10 = v16;
    v11 = v17;
    *(a3 + 8) = 1001;
    *(a3 + 16) = &re::GraphicsErrorCategory(void)::instance;
    *(a3 + 24) = v9;
    *(a3 + 40) = v10;
    *(a3 + 48) = v11;
  }

  else
  {
    v12 = *(this + 11) + 32 * HIDWORD(v15);
    v13 = re::DataArray<re::CustomDeformers::CustomDeformerData>::get(this + 8, *(v12 + 24));
    re::DynamicArray<unsigned long>::add(this + 16, v13);
    re::DataArray<re::CustomDeformers::CustomDeformerData>::destroy(this + 8, *(v12 + 24));
    v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 72, a2, v14 ^ (v14 >> 31), &v15);
    result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 72, &v15);
    v8 = 1;
  }

  *a3 = v8;
  return result;
}

uint64_t re::DataArray<re::CustomDeformers::CustomDeformerData>::get(uint64_t a1, int a2)
{
  if (*(a1 + 16) <= HIWORD(a2))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 48 * a2;
}

_DWORD *re::DataArray<re::CustomDeformers::CustomDeformerData>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  result = re::DataArray<re::CustomDeformers::CustomDeformerData>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *result = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  return result;
}

uint64_t re::CustomDeformers::customDeformerID(re::CustomDeformers *this, const re::StringID *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 72, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return -1;
  }

  else
  {
    return *re::DataArray<re::CustomDeformers::CustomDeformerData>::get(this + 8, *(*(this + 11) + 32 * v6 + 24));
  }
}

void re::CustomDeformers::addDeformationInstance(uint64_t a1@<X0>, char *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = a2[1];
      if (v8)
      {
        v9 = (a2 + 2);
        do
        {
          v7 = 31 * v7 + v8;
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v19[0] = 2 * v7;
  v19[1] = a2;
  v11 = 0xBF58476D1CE4E5B9 * (v7 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v7) >> 31));
  v12 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 72, v19, (0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) ^ ((0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) >> 31), v20);
  if (v21 == 0x7FFFFFFF)
  {
    if (v19[0])
    {
      if (v19[0])
      {
      }
    }

    *(a4 + 24) = 0;
    *a4 = -1;
    *(a4 + 12) = 0;
    *(a4 + 4) = 0;
    LOBYTE(v13) = -1;
    *(a4 + 20) = 0;
  }

  else
  {
    v14 = *(a1 + 88) + 32 * v21;
    if (v19[0])
    {
      if (v19[0])
      {
      }
    }

    v15 = re::DataArray<re::CustomDeformers::CustomDeformerData>::get(a1 + 8, *(v14 + 24));
    v16 = (*(v15 + 8))(*v15, *(v15 + 40));
    *a4 = *(v14 + 24);
    *(a4 + 8) = v16;
    *(a4 + 16) = v17;
    LODWORD(v13) = *a3;
    if (v13 == 255)
    {
      v13 = *(a3 + 2);
      if (v13)
      {
        if (*(v13 + 208))
        {
          v18 = *(v15 + 24) == 0;
        }

        else
        {
          v18 = 1;
        }

        LOBYTE(v13) = !v18;
      }
    }
  }

  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 24) = v13;
  *(a4 + 32) = -1;
  *(a4 + 40) = 0;
}

uint64_t re::CustomDeformers::allocateBuffers(unsigned int *a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = *MEMORY[0x1E69E9840];
  v13 = (*(*a2 + 32))(a2, 64, 8);
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  v40 = a1;
  v14 = a1[12];
  *v13 = a2;
  re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(v13, v14);
  ++*(v13 + 24);
  v15 = *(*a5 + 48);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if (!v15)
  {
    goto LABEL_30;
  }

  for (i = 0; i != v15; ++i)
  {
    v17 = v43;
    if (v43 <= i)
    {
      goto LABEL_40;
    }

    if (*(v44 + i))
    {
      continue;
    }

    v17 = re::CustomDeformers::resolveCustomDeformerHandle(a5, i);
    memset(&v46[8], 0, 20);
    *&v48[2] = 0;
    *v46 = a2;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v46, v15);
    ++*&v46[24];
    v8 = v43;
    if (v43 <= i)
    {
      goto LABEL_43;
    }

    *(v44 + i) = 1;
    v41 = i;
    v18 = i;
    do
    {
      v19 = re::CustomDeformers::resolveCustomDeformerHandle(a5, v18);
      if (v19 == v17 && ((v19 ^ v17) & 0xFFFFFF00000000) == 0)
      {
        v8 = v41;
        v9 = v43;
        if (v43 <= v41)
        {
          v45 = 0;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v56 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v49 = 136315906;
          *&v49[4] = "operator[]";
          v50 = 1024;
          v51 = 468;
          v52 = 2048;
          v53 = v8;
          v54 = 2048;
          v55 = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_40:
          *v49 = 0;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v56 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v46 = 136315906;
          *&v46[4] = "operator[]";
          *&v46[12] = 1024;
          *&v46[14] = 468;
          *&v46[18] = 2048;
          *&v46[20] = i;
          v47 = 2048;
          *v48 = v17;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_41;
        }

        *(v44 + v41) = 1;
        re::DynamicArray<unsigned long>::add(v46, &v41);
      }

      v18 = v41 + 1;
      v41 = v18;
    }

    while (v18 < v15);
    v20 = re::DataArray<re::CustomDeformers::CustomDeformerData>::tryGet((v40 + 2), v17);
    if (v20)
    {
      v9 = *v46;
      v21 = *&v46[8];
      memset(v46, 0, 24);
      v22 = *&v48[2];
      *&v48[2] = 0;
      ++*&v46[24];
      v23 = *(v13 + 8);
      v24 = *(v13 + 16);
      if (v24 >= v23)
      {
        v8 = v24 + 1;
        if (v23 < v24 + 1)
        {
          v37 = v21;
          if (*v13)
          {
            v25 = 2 * v23;
            v26 = v23 == 0;
            v27 = 8;
            if (!v26)
            {
              v27 = v25;
            }

            if (v27 <= v8)
            {
              v28 = v8;
            }

            else
            {
              v28 = v27;
            }

            re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(v13, v28);
          }

          else
          {
            re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(v13, v8);
            ++*(v13 + 24);
          }

          v21 = v37;
        }

        v24 = *(v13 + 16);
      }

      v29 = *(v13 + 32) + 48 * v24;
      *v29 = v17;
      *(v29 + 8) = v9;
      *(v29 + 16) = v21;
      *(v29 + 40) = v22;
      *(v29 + 32) = 1;
      ++*(v13 + 16);
      ++*(v13 + 24);
    }

    if (*v46 && *&v48[2])
    {
      (*(**v46 + 40))();
    }
  }

LABEL_30:
  v30 = *(v13 + 16);
  re::FixedArray<unsigned long>::init<>((v13 + 40), a2, v30);
  i = a6;
  if (v30)
  {
    v8 = 0;
    v17 = 0;
    while (1)
    {
      v9 = *(v13 + 16);
      if (v9 <= v17)
      {
        break;
      }

      v31 = re::DataArray<re::CustomDeformers::CustomDeformerData>::get((v40 + 2), *(*(v13 + 32) + v8));
      v32 = (*(v31 + 16))(a2, a3, a4, a5, a6, a7, a8);
      v9 = *(v13 + 48);
      if (v9 <= v17)
      {
        goto LABEL_42;
      }

      *(*(v13 + 56) + 8 * v17++) = v32;
      v8 += 48;
      if (v30 == v17)
      {
        goto LABEL_35;
      }
    }

LABEL_41:
    *v49 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v46 = 136315906;
    *&v46[4] = "operator[]";
    *&v46[12] = 1024;
    *&v46[14] = 789;
    *&v46[18] = 2048;
    *&v46[20] = v17;
    v47 = 2048;
    *v48 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_42:
    *v49 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v46 = 136315906;
    *&v46[4] = "operator[]";
    *&v46[12] = 1024;
    *&v46[14] = 468;
    *&v46[18] = 2048;
    *&v46[20] = v17;
    v47 = 2048;
    *v48 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_43:
    v45 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v49 = 136315906;
    *&v49[4] = "operator[]";
    v50 = 1024;
    v51 = 468;
    v52 = 2048;
    v53 = i;
    v54 = 2048;
    v55 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_35:
  if (v42 && v43)
  {
    (*(*v42 + 40))();
  }

  return v13;
}

uint64_t re::CustomDeformers::resolveCustomDeformerHandle(void *a1, unint64_t a2)
{
  v3 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](*a1 + 8, a2);
  v4 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a1[1], *(v3 + 8));
  v6 = *(v3 + 16);
  v7 = *(v4 + 336);
  if (v7 > v6)
  {
    return *(*(v4 + 328) + (v6 << 6));
  }

  re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v3 + 16), v7);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::DataArray<re::CustomDeformers::CustomDeformerData>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 48 * a2;
  }

  else
  {
    return 0;
  }
}

uint64_t re::CustomDeformers::deformGPU(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[2];
  if (v4)
  {
    v8 = result;
    v9 = 0;
    for (i = 0; i != v4; ++i)
    {
      if (a2[2] <= i)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_8:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v11 = a2[4];
      v12 = re::DataArray<re::CustomDeformers::CustomDeformerData>::get(v8 + 8, *(v11 + v9));
      if (a2[6] <= i)
      {
        goto LABEL_8;
      }

      result = (*(v12 + 24))(*(a2[7] + 8 * i), a3, a4, *(v11 + v9 + 40), *(v11 + v9 + 24), *v12, *(v12 + 40));
      v9 += 48;
    }
  }

  return result;
}

uint64_t re::CustomDeformers::deformCPU(uint64_t result, void *a2, uint64_t a3)
{
  v3 = a2[2];
  if (v3)
  {
    v6 = result;
    v7 = 0;
    for (i = 0; i != v3; ++i)
    {
      if (a2[2] <= i)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_8:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = a2[4];
      v10 = re::DataArray<re::CustomDeformers::CustomDeformerData>::get(v6 + 8, *(v9 + v7));
      if (a2[6] <= i)
      {
        goto LABEL_8;
      }

      result = (*(v10 + 32))(*(a2[7] + 8 * i), a3, *(v9 + v7 + 40), *(v9 + v7 + 24), *v10, *(v10 + 40));
      v7 += 48;
    }
  }

  return result;
}

uint64_t re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v3 + 8 * (a2 >> 6)) + 24 * (a2 & 0x3F);
}

void re::CustomDeformers::~CustomDeformers(re::CustomDeformers *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 128);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 9);
  re::DataArray<re::CustomDeformers::CustomDeformerData>::deinit(this + 8);
  re::DynamicArray<unsigned long>::deinit(this + 8);
}

{
  re::DynamicArray<unsigned long>::deinit(this + 128);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 9);
  re::DataArray<re::CustomDeformers::CustomDeformerData>::deinit(this + 8);
  re::DynamicArray<unsigned long>::deinit(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::DataArray<re::CustomDeformers::CustomDeformerData>::deinit(uint64_t result)
{
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::CustomDeformers::CustomDeformerData>::clear(result);
    if (!v1[2])
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

double re::DataArray<re::CustomDeformers::CustomDeformerData>::clear(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v11, a1, 0);
  if (*&v11[0] != a1 || DWORD2(v11[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v11);
      re::DataArray<re::CustomDeformers::CustomDeformerData>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v11);
    }

    while (*&v11[0] != a1 || WORD4(v11[0]) != 0xFFFF || WORD5(v11[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      if (a1[2] <= v7)
      {
        memset(v11, 0, sizeof(v11));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v9 - 16));
      (*(**a1 + 40))(*a1, *(v9 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

_anonymous_namespace_ *re::DataArray<re::CustomDeformers::CustomDeformerData>::allocBlock(void *a1)
{
  v3 = 48 * *(a1 + 11);
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

uint64_t re::HashTable<re::StringID,re::DataArrayHandle<re::CustomDeformers::CustomDeformerData>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::StringID,re::DataArrayHandle<re::CustomDeformers::CustomDeformerData>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v29, v9, v8);
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
                v19 = 0xBF58476D1CE4E5B9 * ((*(v13 + v17 + 8) >> 31) ^ (*(v13 + v17 + 8) >> 1));
                v20 = re::HashTable<re::StringID,re::DataArrayHandle<re::CustomDeformers::CustomDeformerData>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31)) % *(a1 + 24));
                v21 = *&v29[16] + v17;
                v22 = *(*&v29[16] + v17 + 8);
                v20[1] = v20[1] & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                v20[1] = *(v21 + 8) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                v20[2] = *(v21 + 16);
                *(v21 + 8) = 0;
                *(v21 + 16) = &str_67;
                v13 = *&v29[16];
                v20[3] = *(*&v29[16] + v17 + 24);
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

void re::LightContext::createLightConstantBuffer(uint32x2_t *a1, uint64_t *a2, float32x4_t *a3, uint64_t a4, char a5)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = (*a2 + v8);
  *(v9 + 6) = 0;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *v9 = 0u;
  isEmpty = re::LightContext::isEmpty(a1);
  if (!isEmpty)
  {
    for (i = 0; i != 2048; i += 256)
    {
      *(v8 + v7 + 240 + i) = 0;
    }

    for (j = 0; j != 2048; j += 256)
    {
      *(v8 + v7 + 2288 + j) = 0;
    }

    v13 = (v8 + v7 + 4776);
    v14 = 8;
    do
    {
      *(v13 - 5) = 0x3F80000000000000;
      *(v13 - 2) = 1008981770;
      *(v13 - 4) = 0;
      *v13 = 0x40000000;
      v13 += 156;
      --v14;
    }

    while (v14);
    *(v9 + 1216) = 0x3F80000000000000;
    v9[2440] = 1008981770;
    *(v9 + 9764) = 0;
    v9[2442] = 0x40000000;
    v15 = (v8 + v7 + 10056);
    v16 = 8;
    do
    {
      *(v15 - 5) = 0x3F80000000000000;
      *(v15 - 2) = 1008981770;
      *(v15 - 4) = 0;
      *v15 = 0x40000000;
      v15 += 72;
      --v16;
    }

    while (v16);
    v17 = (v8 + v7 + 12360);
    v18 = 8;
    do
    {
      *(v17 - 5) = 0x3F80000000000000;
      *(v17 - 2) = 1008981770;
      *(v17 - 4) = 0;
      *v17 = 0x40000000;
      v17 += 72;
      --v18;
    }

    while (v18);
    for (k = 0; k != 768; k += 96)
    {
      *(v8 + v7 + 14592 + k) = 0;
    }

    v9[3864] = 0;
    v20 = (v8 + v7 + 15816);
    v21 = 8;
    do
    {
      *(v20 - 5) = 0x3F80000000000000;
      *(v20 - 2) = 1008981770;
      *(v20 - 4) = 0;
      *v20 = 0x40000000;
      v20 += 72;
      --v21;
    }

    while (v21);
    v22 = (v8 + v7 + 18120);
    v23 = 8;
    do
    {
      *(v22 - 5) = 0x3F80000000000000;
      *(v22 - 2) = 1008981770;
      *(v22 - 4) = 0;
      *v22 = 0x40000000;
      v22 += 72;
      --v23;
    }

    while (v23);
    v24 = (v8 + v7 + 4776);
    v25 = 8;
    do
    {
      *(v24 - 5) = 0x3F80000000000000;
      *(v24 - 2) = 1008981770;
      *(v24 - 4) = 0;
      *v24 = 0x40000000;
      v24 += 156;
      --v25;
    }

    while (v25);
    *(v9 + 1216) = 0x3F80000000000000;
    *(v9 + 9764) = 0;
    v9[2440] = 1008981770;
    v9[2442] = 0x40000000;
    *(v9 + 3252) = 0;
    v26 = vnegq_f32(*a3);
    v26.i32[3] = 1.0;
    v253 = v26;
    PointLightFaceLookatOrientations = re::getPointLightFaceLookatOrientations(isEmpty);
    v31 = v27;
    v32 = a1[1];
    if (v32)
    {
      v33 = a1[2];
      v34 = *&v33 + 208 * *&v32;
      v30 = xmmword_1E3047670;
      v35 = xmmword_1E3047680;
      v36 = xmmword_1E30476A0;
      v244 = vdupq_n_s32(0x3ABFE803u);
      do
      {
        v37 = vmulq_n_f32(*(*&v33 + 64), *(*&v33 + 192));
        if (fmaxf(fmaxf(v37.f32[0], v37.f32[2]), v37.f32[1]) > 0.0)
        {
          if (*(*&v33 + 204) != 1 || (a5 & 1) != 0)
          {
            v40 = *v9;
            if (v40 < 8)
            {
              *v9 = v40 + 1;
              v42 = v9 + 16;
              goto LABEL_35;
            }

            v41 = 6504;
LABEL_33:
            ++v9[v41];
            goto LABEL_54;
          }

          if (*(*&v33 + 205) != 1)
          {
            v40 = v9[1];
            if (v40 < 8)
            {
              v9[1] = v40 + 1;
              v42 = v9 + 528;
LABEL_35:
              v39 = &v42[64 * v40];
LABEL_36:
              v43 = 0;
              v44 = *(*&v33 + 32);
              v45 = *(*&v33 + 48);
              v46 = vmulq_f32(v44, v44);
              *&v47 = v46.f32[2] + vaddv_f32(*v46.f32);
              *v46.f32 = vrsqrte_f32(v47);
              *v46.f32 = vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32)));
              v48 = *(*&v33 + 16);
              v254.columns[0] = **&v33;
              v254.columns[1] = v48;
              LODWORD(v49) = vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32))).u32[0];
              v254.columns[2] = v44;
              v254.columns[3] = v45;
              do
              {
                v255.columns[v43] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*&v254.columns[v43])), v35, *v254.columns[v43].f32, 1), v36, v254.columns[v43], 2), v253, v254.columns[v43], 3);
                ++v43;
              }

              while (v43 != 4);
              v248 = vmulq_n_f32(v44, v49);
              v256 = __invert_f4(v255);
              v30 = xmmword_1E3047670;
              v36 = xmmword_1E30476A0;
              v35 = xmmword_1E3047680;
              v29.i32[3] = v248.i32[3];
              *v39 = vmulq_f32(vmulq_n_f32(*(*&v33 + 64), *(*&v33 + 192)), v244);
              *(v39 + 1) = v248;
              *(v39 + 8) = v256;
              if (*(*&v33 + 204) == 1 && (a5 & 1) == 0)
              {
                v39[44] = *(*&v33 + 196);
                if (*(*&v33 + 180) == -1)
                {
                  ++v9[6505];
                  *v256.columns[0].f32 = vcvt_f32_u32(a1[19]);
                  v256.columns[1] = 0uLL;
                }

                else
                {
                  v256.columns[1].i64[0] = *(*&v33 + 172);
                  *v256.columns[0].f32 = vcvt_f32_u32(a1[19]);
                  v256.columns[2].i64[0] = v256.columns[0].i64[0];
                  v256.columns[2].i64[1] = v256.columns[0].i64[0];
                  v256.columns[1].i64[1] = *(*&v33 + 160);
                  v256.columns[3].i32[0] = *(*&v33 + 200);
                  v256.columns[3].i32[1] = 2 * v256.columns[3].i32[0];
                  v256.columns[3] = vzip1q_s32(v256.columns[3], v256.columns[3]);
                  v50.i64[0] = vaddq_s32(v256.columns[1], v256.columns[3]).u64[0];
                  v50.i64[1] = vsubq_s32(*(&v256 + 16), *(&v256 + 48)).i64[1];
                  v256.columns[1] = vdivq_f32(vcvtq_f32_u32(v50), v256.columns[2]);
                }

                v51 = 0;
                v256.columns[2] = *(*&v33 + 80);
                v256.columns[2].i32[3] = *(*&v33 + 60);
                v249 = v256.columns[1];
                *v256.columns[0].f32 = vmul_f32(*v256.columns[0].f32, *&vextq_s8(v256.columns[1], v256.columns[1], 8uLL));
                v52 = *(*&v33 + 96);
                v53 = *(*&v33 + 16);
                v54 = *(*&v33 + 32);
                v254.columns[0] = **&v33;
                v254.columns[1] = v53;
                v254.columns[2] = v54;
                v254.columns[3] = v256.columns[2];
                do
                {
                  v255.columns[v51] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(*&v254.columns[v51])), xmmword_1E3047680, *v254.columns[v51].f32, 1), xmmword_1E30476A0, v254.columns[v51], 2), v253, v254.columns[v51], 3);
                  ++v51;
                }

                while (v51 != 4);
                if (v256.columns[0].f32[0] >= v256.columns[0].f32[1])
                {
                  v55 = v256.columns[0].f32[0];
                }

                else
                {
                  v55 = v256.columns[0].f32[1];
                }

                v257 = __invert_f4(v255);
                v56 = v257.columns[1];
                if ((atomic_load_explicit(&_MergedGlobals_431, memory_order_acquire) & 1) == 0)
                {
                  v238 = v257.columns[3];
                  v239 = v257.columns[2];
                  v236 = v257.columns[1];
                  v237 = v257.columns[0];
                  v74 = __cxa_guard_acquire(&_MergedGlobals_431);
                  v56 = v236;
                  v257.columns[0] = v237;
                  v257.columns[3] = v238;
                  v257.columns[2] = v239;
                  if (v74)
                  {
                    xmmword_1EE1B8270 = xmmword_1E30714F0;
                    unk_1EE1B8280 = xmmword_1E30A1A00;
                    xmmword_1EE1B8290 = xmmword_1E30476A0;
                    unk_1EE1B82A0 = xmmword_1E30A1180;
                    __cxa_guard_release(&_MergedGlobals_431);
                    v56 = v236;
                    v257.columns[0] = v237;
                    v257.columns[3] = v238;
                    v257.columns[2] = v239;
                  }
                }

                v57 = 0;
                v58 = *(*&v33 + 96);
                v59 = *(*&v33 + 112);
                v61 = *(*&v33 + 128);
                v60 = *(*&v33 + 144);
                v254.columns[0] = v257.columns[0];
                v254.columns[1] = v56;
                v254.columns[2] = v257.columns[2];
                v254.columns[3] = v257.columns[3];
                do
                {
                  v255.columns[v57] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(*&v254.columns[v57])), v59, *v254.columns[v57].f32, 1), v61, v254.columns[v57], 2), v60, v254.columns[v57], 3);
                  ++v57;
                }

                while (v57 != 4);
                v62 = 0;
                v63 = xmmword_1EE1B8270;
                v64 = unk_1EE1B8280;
                v65 = xmmword_1EE1B8290;
                v66 = unk_1EE1B82A0;
                v254 = v255;
                do
                {
                  v255.columns[v62] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, COERCE_FLOAT(*&v254.columns[v62])), v64, *v254.columns[v62].f32, 1), v65, v254.columns[v62], 2), v66, v254.columns[v62], 3);
                  ++v62;
                }

                while (v62 != 4);
                v67 = v255.columns[0];
                v68 = v255.columns[1];
                v69 = v255.columns[2];
                v70 = v255.columns[3];
                *(v39 + 10) = v249;
                v29 = *(*&v33 + 96);
                v71 = *(*&v33 + 112);
                v72 = *(*&v33 + 128);
                v73 = *(*&v33 + 144);
                *(v39 + 6) = v29;
                *(v39 + 7) = v71;
                *(v39 + 8) = v72;
                *(v39 + 9) = v73;
                *(v39 + 45) = (2.0 / v52) * (1.0 / v55);
                *(v39 + 12) = v67;
                *(v39 + 13) = v68;
                *(v39 + 14) = v69;
                *(v39 + 15) = v70;
                v35 = xmmword_1E3047680;
                v30 = xmmword_1E3047670;
                v36 = xmmword_1E30476A0;
              }

              goto LABEL_54;
            }

            v41 = 6505;
            goto LABEL_33;
          }

          v38 = v9[13];
          if (v38 <= 0)
          {
            v9[13] = v38 + 1;
            v39 = v9 + 6440;
            goto LABEL_36;
          }
        }

LABEL_54:
        *&v33 += 208;
      }

      while (*&v33 != v34);
    }

    v75 = a1[4];
    v76 = a3;
    if (v75)
    {
      v77 = a1[5];
      v78 = *&v77 + 352 * *&v75;
      v79 = vdupq_n_s32(0x3ABFE803u);
      __asm { FMOV            V1.4S, #0.25 }

      v85 = vdupq_n_s32(0x3EA2F983u);
      v30 = 0uLL;
      do
      {
        v86 = *(*&v77 + 144);
        v87 = vmulq_n_f32(*(*&v77 + 128), v86);
        if (fmaxf(fmaxf(v87.f32[0], v87.f32[2]), v87.f32[1]) > 0.0)
        {
          if (*(*&v77 + 341) != 1 || (a5 & 1) != 0)
          {
            if (*(*&v77 + 342))
            {
              v90 = v9[11];
              if (v90 < 8)
              {
                v9[11] = v90 + 1;
                v89 = &v9[156 * v90 + 5036];
                goto LABEL_75;
              }
            }

            else
            {
              v91 = v9[2];
              if (v91 < 8)
              {
                v9[2] = v91 + 1;
                v89 = &v9[156 * v91 + 1040];
                goto LABEL_75;
              }
            }

            ++v9[6504];
          }

          else
          {
            if (*(*&v77 + 342))
            {
              v88 = v9[12];
              if (v88 < 1)
              {
                v9[12] = v88 + 1;
                v89 = &v9[156 * v88 + 6284];
                goto LABEL_75;
              }
            }

            else
            {
              v92 = v9[3];
              if (v92 < 1)
              {
                v9[3] = v92 + 1;
                v89 = &v9[156 * v92 + 2288];
LABEL_75:
                v93 = 0;
                v94 = vsubq_f32(*(*&v77 + 48), *a3);
                *v89 = vmulq_f32(vmulq_f32(vmulq_f32(vmulq_n_f32(*(*&v77 + 128), v86), v79), _Q1), v85);
                *(v89 + 608) = *(*&v77 + 148);
                *(v89 + 612) = *(*&v77 + 340);
                *(v89 + 16) = v94;
                *(v89 + 580) = 1.0 / (*(*&v77 + 152) * *(*&v77 + 152));
                v95 = *(*&v77 + 156) * 0.5;
                if (v95 < 0.0)
                {
                  v95 = 0.0;
                }

                *(v89 + 616) = v95;
                v96 = vnegq_f32(v94);
                v97 = vextq_s8(vuzp1q_s32(v96, v96), v96, 0xCuLL);
                v98 = (v89 + 48);
                do
                {
                  if (v31 == v93)
                  {
                    re::internal::assertLog(6, v27, 26020, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v31, v31);
                    _os_crash();
                    __break(1u);
                    return;
                  }

                  v99 = PointLightFaceLookatOrientations[v93];
                  v100 = vnegq_f32(v99);
                  v101 = vextq_s8(vuzp1q_s32(v100, v100), v100, 0xCuLL);
                  v102 = vmlaq_f32(vmulq_f32(v97, v99), v96, v101);
                  v103 = vaddq_f32(v102, v102);
                  v104 = vextq_s8(vuzp1q_s32(v103, v103), v103, 0xCuLL);
                  v105 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v104, v104), v104, 0xCuLL), v99), v104, v101);
                  v106 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v104, v99, 3), v94), vextq_s8(vuzp1q_s32(v105, v105), v105, 0xCuLL));
                  v104.f32[0] = v100.f32[0] + v100.f32[0];
                  v107 = (v100.f32[0] + v100.f32[0]) * v100.f32[0];
                  v108 = vmuls_lane_f32(v100.f32[1] + v100.f32[1], *v100.f32, 1);
                  v109 = vmuls_lane_f32(v100.f32[2] + v100.f32[2], v100, 2);
                  v110 = vmuls_lane_f32(v100.f32[0] + v100.f32[0], *v100.f32, 1);
                  v111 = vmuls_lane_f32(v100.f32[0] + v100.f32[0], v100, 2);
                  v100.f32[0] = vmuls_lane_f32(v100.f32[1] + v100.f32[1], v100, 2);
                  v104.f32[0] = vmuls_lane_f32(v104.f32[0], v99, 3);
                  v112 = vmuls_lane_f32(v100.f32[1] + v100.f32[1], v99, 3);
                  v99.f32[0] = vmuls_lane_f32(v100.f32[2] + v100.f32[2], v99, 3);
                  HIDWORD(v113) = 0;
                  *&v113 = 1.0 - (v108 + v109);
                  *(&v113 + 1) = v110 + v99.f32[0];
                  *(&v113 + 2) = v111 - v112;
                  HIDWORD(v114) = 0;
                  *&v114 = v110 - v99.f32[0];
                  *(&v114 + 1) = 1.0 - (v107 + v109);
                  *(&v114 + 2) = v100.f32[0] + v104.f32[0];
                  HIDWORD(v115) = 0;
                  *&v115 = v111 + v112;
                  *(&v115 + 1) = v100.f32[0] - v104.f32[0];
                  *(&v115 + 2) = 1.0 - (v107 + v108);
                  v106.i32[3] = 1.0;
                  *(v98 - 1) = v113;
                  *v98 = v114;
                  v98[1] = v115;
                  v98[2] = v106;
                  ++v93;
                  v98 += 4;
                }

                while (v93 != 6);
                v116 = *(*&v77 + 80);
                v117 = *(*&v77 + 96);
                v118 = *(*&v77 + 112);
                *(v89 + 416) = *(*&v77 + 64);
                *(v89 + 432) = v116;
                *(v89 + 448) = v117;
                *(v89 + 464) = v118;
                if (*(*&v77 + 341) != 1 || (a5 & 1) != 0)
                {
                  *(v89 + 576) = 0;
                  *(v89 + 544) = 0uLL;
                  *(v89 + 560) = 0uLL;
                  *(v89 + 512) = 0uLL;
                  *(v89 + 528) = 0uLL;
                  *(v89 + 480) = 0uLL;
                  *(v89 + 496) = 0uLL;
                }

                else
                {
                  v119 = 0;
                  *(v89 + 576) = *(*&v77 + 160);
                  v120 = (v89 + 480);
                  do
                  {
                    v121 = *&v77 + v119;
                    if (*(*&v77 + v119 + 192) == -1)
                    {
                      ++v9[6505];
                      v126 = 0uLL;
                    }

                    else
                    {
                      v122 = *(*&v77 + 164);
                      v123.i64[0] = *(v121 + 184);
                      v27 = (2 * v122);
                      *v124.f32 = vcvt_f32_u32(a1[19]);
                      v124.i64[1] = v124.i64[0];
                      v123.i64[1] = *(v121 + 172);
                      v116.i32[0] = v122;
                      v116.i32[1] = 2 * v122;
                      v116 = vzip1q_s32(v116, v116);
                      v125.i64[0] = vaddq_s32(v123, v116).u64[0];
                      v125.i64[1] = vsubq_s32(v123, v116).i64[1];
                      v126 = vdivq_f32(vcvtq_f32_u32(v125), v124);
                    }

                    *v120++ = v126;
                    v119 += 24;
                  }

                  while (v119 != 144);
                }

                if (*(*&v77 + 342) == 1)
                {
                  if (*(*&v77 + 336) == -1)
                  {
                    ++v9[6505];
                    v131 = 0uLL;
                  }

                  else
                  {
                    v127.i64[0] = *(*&v77 + 328);
                    *v128.f32 = vcvt_f32_u32(a1[18]);
                    v128.i64[1] = v128.i64[0];
                    v127.i64[1] = *(*&v77 + 316);
                    v116.i32[0] = *(*&v77 + 168);
                    v116.i32[1] = 2 * v116.i32[0];
                    v129 = vzip1q_s32(v116, v116);
                    v130.i64[0] = vaddq_s32(v127, v129).u64[0];
                    v130.i64[1] = vsubq_s32(v127, v129).i64[1];
                    v131 = vdivq_f32(vcvtq_f32_u32(v130), v128);
                  }

                  *(v89 + 592) = v131;
                }

                else
                {
                  *(v89 + 592) = 0uLL;
                }

                goto LABEL_95;
              }
            }

            ++v9[6505];
          }
        }

LABEL_95:
        *&v77 += 352;
      }

      while (*&v77 != v78);
    }

    v132 = a1[7];
    if (!*&v132)
    {
LABEL_132:
      v172 = a1[10];
      if (v172)
      {
        v173 = 32 * *&v172;
        v174 = (*&a1[11] + 16);
        v175 = vdupq_n_s32(0x3ABFE803u);
        do
        {
          v176 = vmulq_n_f32(*(v174 - 4), *v174);
          if (fmaxf(fmaxf(v176.f32[0], v176.f32[2]), v176.f32[1]) > 0.0)
          {
            v177 = v9[6];
            if (v177 <= 7)
            {
              v9[6] = v177 + 1;
              *&v9[4 * v177 + 3596] = vmulq_f32(v176, v175);
            }
          }

          v174 += 8;
          v173 -= 32;
        }

        while (v173);
      }

      v178 = a1[13];
      if (v178)
      {
        v179 = 0;
        v180 = a1[14];
        v181 = 112 * *&v178;
        v182 = vdupq_n_s32(0x3ABFE803u);
        do
        {
          v183 = vmulq_n_f32(*(*&v180 + v179 + 64), *(*&v180 + v179 + 80));
          if (fmaxf(fmaxf(v183.f32[0], v183.f32[2]), v183.f32[1]) > 0.0)
          {
            v184 = v9[7];
            if (v184 > 7)
            {
              break;
            }

            v29.i64[0] = *(*&v180 + v179);
            v29.i32[2] = *(*&v180 + v179 + 8);
            v30.i64[0] = *(*&v180 + v179 + 16);
            v30.i32[2] = *(*&v180 + v179 + 24);
            v185 = vsubq_f32(*(*&v180 + v179 + 48), *v76);
            v186 = vmulq_n_f32(vnegq_f32(v29), *(*&v180 + v179 + 88) * 0.5);
            v187 = vmulq_n_f32(v30, *(*&v180 + v179 + 92) * 0.5);
            v30 = vsubq_f32(v185, v186);
            v188 = vsubq_f32(v30, v187);
            v189 = vaddq_f32(v185, v186);
            v190 = vsubq_f32(v189, v187);
            v191 = vaddq_f32(v187, v189);
            v29 = vaddq_f32(v187, v30);
            v9[7] = v184 + 1;
            v192 = &v9[24 * v184 + 3628];
            *v192 = vmulq_f32(v183, v182);
            *(v192 + 16) = v188;
            *(v192 + 32) = v190;
            *(v192 + 48) = v191;
            *(v192 + 64) = v29;
            *(v192 + 80) = *(*&v180 + v179 + 96);
          }

          v179 += 112;
        }

        while (v181 != v179);
      }

      v193 = a1[16];
      if (!*&v193)
      {
        return;
      }

      v194 = a1[17];
      v195 = *&v194 + 192 * *&v193;
      v196 = xmmword_1E3047670;
      v197 = xmmword_1E3047680;
      v198 = xmmword_1E30476A0;
      v246 = vdupq_n_s32(0x3ABFE803u);
      while (1)
      {
        v199 = vmulq_n_f32(*(*&v194 + 128), *(*&v194 + 144));
        if (fmaxf(fmaxf(v199.f32[0], v199.f32[2]), v199.f32[1]) > 0.0)
        {
          v200 = v9[8];
          if (v200 > 0)
          {
            ++v9[6505];
            return;
          }

          v201 = 0;
          v9[8] = v200 + 1;
          v202 = *(*&v194 + 32);
          v203 = *(*&v194 + 48);
          v204 = vmulq_f32(v202, v202);
          *&v205 = v204.f32[2] + vaddv_f32(*v204.f32);
          *v204.f32 = vrsqrte_f32(v205);
          *v204.f32 = vmul_f32(*v204.f32, vrsqrts_f32(v205, vmul_f32(*v204.f32, *v204.f32)));
          v206 = *(*&v194 + 16);
          v254.columns[0] = **&v194;
          v254.columns[1] = v206;
          LODWORD(v207) = vmul_f32(*v204.f32, vrsqrts_f32(v205, vmul_f32(*v204.f32, *v204.f32))).u32[0];
          v254.columns[2] = v202;
          v254.columns[3] = v203;
          do
          {
            v255.columns[v201] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v196, COERCE_FLOAT(*&v254.columns[v201])), v197, *v254.columns[v201].f32, 1), v198, v254.columns[v201], 2), v253, v254.columns[v201], 3);
            ++v201;
          }

          while (v201 != 4);
          v208 = &v9[64 * v200 + 3820];
          v251 = vmulq_n_f32(v202, v207);
          v259 = __invert_f4(v255);
          *v208 = vmulq_f32(vmulq_n_f32(*(*&v194 + 128), *(*&v194 + 144)), v246);
          *(v208 + 16) = v251;
          *(v208 + 32) = v259;
          v211 = *(*&v194 + 64);
          v212 = *(*&v194 + 80);
          v213 = *(*&v194 + 96);
          v214 = *(*&v194 + 112);
          if (*(*&v194 + 176) == -1)
          {
            ++v9[6505];
            v215 = vcvt_f32_u32(a1[19]);
            v220 = 0uLL;
          }

          else
          {
            v215 = vcvt_f32_u32(a1[19]);
            *v216.f32 = v215;
            *&v216.u32[2] = v215;
            v209.i64[0] = *(*&v194 + 152);
            v210.i32[0] = *(*&v194 + 168);
            v217 = vextq_s8(vextq_s8(v210, v210, 4uLL), v209, 0xCuLL);
            v218 = v217;
            v218.i32[3] = *(*&v194 + 160);
            v209.i32[1] = *(*&v194 + 172);
            v219.i64[0] = vaddq_s32(v217, v209).u64[0];
            v219.i64[1] = vsubq_s32(v218, vdupq_n_s32(2 * *(*&v194 + 152))).i64[1];
            v220 = vdivq_f32(vcvtq_f32_u32(v219), v216);
          }

          v221 = 0;
          v222 = vmul_f32(v215, *&vextq_s8(v220, v220, 8uLL));
          if (v222.f32[0] < v222.f32[1])
          {
            v222.f32[0] = v222.f32[1];
          }

          *(v208 + 96) = v211;
          *(v208 + 112) = v212;
          *(v208 + 128) = v213;
          *(v208 + 144) = v214;
          *(v208 + 160) = v220;
          *(v208 + 176) = *(*&v194 + 148);
          *(v208 + 180) = (2.0 / v211.f32[0]) * (1.0 / v222.f32[0]);
          v254 = v259;
          do
          {
            v255.columns[v221] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v211, COERCE_FLOAT(*&v254.columns[v221])), v212, *v254.columns[v221].f32, 1), v213, v254.columns[v221], 2), v214, v254.columns[v221], 3);
            ++v221;
          }

          while (v221 != 4);
          v223 = v255.columns[0];
          v224 = v255.columns[1];
          v225 = v255.columns[2];
          v226 = v255.columns[3];
          v198 = xmmword_1E30476A0;
          if ((atomic_load_explicit(&qword_1EE1B8268, memory_order_acquire) & 1) == 0)
          {
            v252 = v223;
            v241 = v225;
            v242 = v224;
            v240 = v226;
            v235 = __cxa_guard_acquire(&qword_1EE1B8268);
            v226 = v240;
            v225 = v241;
            v224 = v242;
            v198 = xmmword_1E30476A0;
            v223 = v252;
            if (v235)
            {
              xmmword_1EE1B82B0 = xmmword_1E30714F0;
              unk_1EE1B82C0 = xmmword_1E30A1A00;
              xmmword_1EE1B82D0 = xmmword_1E30476A0;
              unk_1EE1B82E0 = xmmword_1E30A1180;
              __cxa_guard_release(&qword_1EE1B8268);
              v226 = v240;
              v225 = v241;
              v224 = v242;
              v198 = xmmword_1E30476A0;
              v223 = v252;
            }
          }

          v227 = 0;
          v228 = xmmword_1EE1B82B0;
          v229 = unk_1EE1B82C0;
          v230 = xmmword_1EE1B82D0;
          v231 = unk_1EE1B82E0;
          v254.columns[0] = v223;
          v254.columns[1] = v224;
          v254.columns[2] = v225;
          v254.columns[3] = v226;
          v197 = xmmword_1E3047680;
          v196 = xmmword_1E3047670;
          do
          {
            v255.columns[v227] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v228, COERCE_FLOAT(*&v254.columns[v227])), v229, *v254.columns[v227].f32, 1), v230, v254.columns[v227], 2), v231, v254.columns[v227], 3);
            ++v227;
          }

          while (v227 != 4);
          v232 = v255.columns[1];
          v233 = v255.columns[2];
          v234 = v255.columns[3];
          *(v208 + 192) = v255.columns[0];
          *(v208 + 208) = v232;
          *(v208 + 224) = v233;
          *(v208 + 240) = v234;
        }

        *&v194 += 192;
        if (*&v194 == v195)
        {
          return;
        }
      }
    }

    v133 = a1[8];
    v134 = *&v133 + 240 * *&v132;
    v29 = xmmword_1E3047670;
    v30 = xmmword_1E3047680;
    v135 = xmmword_1E30476A0;
    v243 = vdupq_n_s32(0x3EA2F983u);
    v245 = vdupq_n_s32(0x3ABFE803u);
    while (1)
    {
      v136 = vmulq_n_f32(*(*&v133 + 128), *(*&v133 + 144));
      if (fmaxf(fmaxf(v136.f32[0], v136.f32[2]), v136.f32[1]) > 0.0)
      {
        if (*(*&v133 + 229) != 1 || (a5 & 1) != 0)
        {
          if (*(*&v133 + 230))
          {
            v138 = v9[9];
            v137 = v9 + 9;
            v139 = v9 + 3884;
          }

          else
          {
            v138 = v9[4];
            v137 = v9 + 4;
            v139 = v9 + 2444;
          }

          if (v138 < 8)
          {
LABEL_112:
            v141 = 0;
            *v137 = v138 + 1;
            v142 = *v76;
            v143 = *(*&v133 + 16);
            v145 = *(*&v133 + 32);
            v144 = *(*&v133 + 48);
            v254.columns[0] = **&v133;
            v254.columns[1] = v143;
            v254.columns[2] = v145;
            v254.columns[3] = v144;
            do
            {
              v255.columns[v141] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*&v254.columns[v141])), v30, *v254.columns[v141].f32, 1), v135, v254.columns[v141], 2), v253, v254.columns[v141], 3);
              ++v141;
            }

            while (v141 != 4);
            v146 = &v139[72 * v138];
            v250 = vsubq_f32(v144, v142);
            v258 = __invert_f4(v255);
            v147 = 0;
            *v146 = vmulq_f32(vmulq_f32(vmulq_n_f32(*(*&v133 + 128), *(*&v133 + 144)), v245), v243);
            v146[68] = *(*&v133 + 148);
            *(v146 + 276) = *(*&v133 + 228);
            *(v146 + 1) = v250;
            *(v146 + 8) = v258;
            v148 = *(*&v133 + 80);
            v149 = *(*&v133 + 96);
            v150 = *(*&v133 + 112);
            *(v146 + 6) = *(*&v133 + 64);
            *(v146 + 7) = v148;
            *(v146 + 8) = v149;
            *(v146 + 9) = v150;
            v151 = *(*&v133 + 64);
            v152 = *(*&v133 + 80);
            v153 = *(*&v133 + 96);
            v154 = *(*&v133 + 112);
            v254 = v258;
            do
            {
              v255.columns[v147] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v151, COERCE_FLOAT(*&v254.columns[v147])), v152, *v254.columns[v147].f32, 1), v153, v254.columns[v147], 2), v154, v254.columns[v147], 3);
              ++v147;
            }

            while (v147 != 4);
            v155 = v255.columns[1];
            v156 = v255.columns[2];
            v157 = v255.columns[3];
            *(v146 + 10) = v255.columns[0];
            *(v146 + 11) = v155;
            *(v146 + 12) = v156;
            *(v146 + 13) = v157;
            *(v146 + 61) = 1.0 / (*(*&v133 + 152) * *(*&v133 + 152));
            v158 = *(*&v133 + 156) * 0.5;
            if (v158 < 0.0)
            {
              v158 = 0.0;
            }

            *(v146 + 70) = v158;
            v159 = cosf(*(*&v133 + 160) * 0.5);
            v160 = 1.0 / fmaxf(cosf(*(*&v133 + 164) * 0.5) - v159, 0.00000011921);
            *(v146 + 62) = v160;
            *(v146 + 63) = -(v159 * v160);
            if (*(*&v133 + 229) != 1 || (a5 & 1) != 0)
            {
              *(v146 + 28) = 0;
              *(v146 + 29) = 0;
              v146[60] = 0;
              v76 = a3;
              v30 = xmmword_1E3047680;
              v29 = xmmword_1E3047670;
              v135 = xmmword_1E30476A0;
            }

            else
            {
              v146[60] = *(*&v133 + 168);
              v76 = a3;
              v30 = xmmword_1E3047680;
              v29 = xmmword_1E3047670;
              v135 = xmmword_1E30476A0;
              if (*(*&v133 + 200) == -1)
              {
                ++v9[6505];
                v166 = 0uLL;
              }

              else
              {
                *v162.f32 = vcvt_f32_u32(a1[19]);
                v162.i64[1] = v162.i64[0];
                v163.i32[0] = *(*&v133 + 192);
                v163.i32[1] = *(*&v133 + 172);
                v164.i32[0] = v163.i32[1];
                v164.i32[1] = *(*&v133 + 196);
                *v165.i8 = vadd_s32(v163, v164);
                v165.u64[1] = vsub_s32(*(*&v133 + 180), *&vdupq_n_s32(2 * *(*&v133 + 172)));
                v161 = vcvtq_f32_u32(v165);
                v166 = vdivq_f32(v161, v162);
              }

              *(v146 + 14) = v166;
            }

            if (*(*&v133 + 230) == 1)
            {
              if (*(*&v133 + 224) == -1)
              {
                ++v9[6505];
                v171 = 0uLL;
              }

              else
              {
                v167.i64[0] = *(*&v133 + 216);
                *v168.f32 = vcvt_f32_u32(a1[18]);
                v168.i64[1] = v168.i64[0];
                v167.i64[1] = *(*&v133 + 204);
                v161.i32[0] = *(*&v133 + 176);
                v161.i32[1] = 2 * v161.i32[0];
                v169 = vzip1q_s32(v161, v161);
                v170.i64[0] = vaddq_s32(v167, v169).u64[0];
                v170.i64[1] = vsubq_s32(v167, v169).i64[1];
                v171 = vdivq_f32(vcvtq_f32_u32(v170), v168);
              }

              *(v146 + 16) = v171;
            }

            else
            {
              *(v146 + 32) = 0;
              *(v146 + 33) = 0;
            }

            goto LABEL_131;
          }

          v140 = 6504;
        }

        else
        {
          if (*(*&v133 + 230))
          {
            v137 = v9 + 10;
            v138 = v9[10];
            v139 = v9 + 4460;
          }

          else
          {
            v137 = v9 + 5;
            v138 = v9[5];
            v139 = v9 + 3020;
          }

          if (v138 < 8)
          {
            goto LABEL_112;
          }

          v140 = 6505;
        }

        ++v9[v140];
      }

LABEL_131:
      *&v133 += 240;
      if (*&v133 == v134)
      {
        goto LABEL_132;
      }
    }
  }
}

__int128 *re::getPointLightFaceLookatOrientations(re *this)
{
  {
    v40 = v1;
    v41 = v2;
    {
      v37 = 0uLL;
      v36 = 0x3F800000uLL;
      v35 = 0x3F80000000000000uLL;
      re::makeLookAtPose<float>(&v37, &v36, &v35, 1u, &v38, v4, v5);
      re::getPointLightFaceLookatOrientations(void)::orientations = v39;
      v32 = 0uLL;
      v31 = 0xBF800000uLL;
      v30 = 0x3F80000000000000uLL;
      re::makeLookAtPose<float>(&v32, &v31, &v30, 1u, &v33, v39, v6);
      xmmword_1EE186110 = v34;
      v27 = 0uLL;
      v26 = 0x3F80000000000000uLL;
      v25.i64[0] = 0;
      v25.i64[1] = 3212836864;
      re::makeLookAtPose<float>(&v27, &v26, &v25, 1u, &v28, v34, v7);
      xmmword_1EE186120 = v29;
      v22 = 0uLL;
      v21 = 0xBF80000000000000;
      v20.i64[0] = 0;
      v20.i64[1] = 3212836864;
      re::makeLookAtPose<float>(&v22, &v21, &v20, 1u, &v23, v29, v8);
      xmmword_1EE186130 = v24;
      v17 = 0uLL;
      v16.i64[0] = 0;
      v16.i64[1] = 1065353216;
      v15 = 0x3F80000000000000uLL;
      re::makeLookAtPose<float>(&v17, &v16, &v15, 1u, &v18, v24, v9);
      xmmword_1EE186140 = v19;
      v13 = 0uLL;
      v12.i64[0] = 0;
      v12.i64[1] = 3212836864;
      v11 = 0x3F80000000000000uLL;
      re::makeLookAtPose<float>(&v13, &v12, &v11, 1u, v14, v19, v10);
      xmmword_1EE186150 = v14[1];
    }
  }

  return &re::getPointLightFaceLookatOrientations(void)::orientations;
}

void re::LightContext::createConstantBuffer(uint32x2_t *a1, uint64_t a2, float32x4_t *a3, re::BufferTable *a4)
{
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((a2 + 16), 0x65C0uLL, 0x10uLL, &v12);
  v9 = v12;
  v10 = v13;
  v11 = v14;
  v12 = v14;
  v8 = 0x144ABD64D310CF6;
  LODWORD(v13) = 0;
  v14 = __PAIR64__(HIDWORD(v13), v10);
  re::BufferTable::setBuffer(a4, &v8, &v12);
  re::LightContext::createLightConstantBuffer(a1, &v9, a3, v7, 0);
}

uint64_t re::BufferTable::setBuffer(re::BufferTable *this, const re::WeakStringID *a2, const re::BufferView *a3)
{
  v5 = re::BufferTable::getOrAddKey(this, a2);
  re::BufferTable::clearBufferRef(this, v5);
  v7 = *a3;
  v8 = *(a3 + 2);
  re::BufferTable::setBufferView(this, v5, &v7);
  return re::BufferTable::setBufferIndirectResources(this, v5, 0, 0);
}

void re::LightContexts::createConstantBuffer(uint64_t a1, uint64_t a2, float32x4_t *a3, re::BufferTable *a4)
{
  v8 = *(a1 + 40);
  if (v8)
  {
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((a2 + 16), 26048 * v8, 0x10uLL, &v18);
    v9 = v18;
    v11 = v19;
    v10 = v20;
    v12 = v21;
    *(a2 + 232) += v20;
    v17 = 0x144ABD64D310CF6;
    v18 = v12;
    v19 = 0;
    v21 = __PAIR64__(v10, v11);
    re::BufferTable::setBufferViewArray(a4, &v17, &v18, 26048);
    if (v8 >= 1)
    {
      v13 = 0;
      do
      {
        v14 = re::BucketArray<re::LightContext,16ul>::operator[](a1, v13);
        v18 = v9;
        v19 = v11;
        v20 = 26048;
        v21 = v12;
        re::LightContext::createLightConstantBuffer(v14, &v18, a3, v15, 0);
        ++v13;
        v11 += 26048;
      }

      while ((v8 & 0x7FFFFFFF) != v13);
    }
  }

  else
  {
    v16 = (a1 + 104);

    re::LightContext::createConstantBuffer(v16, a2, a3, a4);
  }
}

void re::BufferTable::setBufferViewArray(re::BufferTable *this, const re::WeakStringID *a2, const re::BufferView *a3, int a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = re::BufferTable::getOrAddKey(this, a2);
  re::BufferTable::clearBufferRef(this, v7);
  v9 = *a3;
  *&v10 = *(a3 + 2);
  re::BufferTable::setBufferView(this, v7, &v9);
  re::BufferTable::setBufferIndirectResources(this, v7, 0, 0);
  v8 = *(this + 15);
  if (v8 <= v7)
  {
    re::DynamicArray<float>::resize(this + 104, (v7 + 1));
    v8 = *(this + 15);
  }

  if (v8 <= v7)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(this + 17) + 4 * v7) = a4;
}

uint64_t re::BucketArray<re::LightContext,16ul>::operator[](uint64_t a1, unint64_t a2)
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

  if (*(a1 + 8) <= a2 >> 4)
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

  return *(v3 + 8 * (a2 >> 4)) + 168 * (a2 & 0xF);
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

  if (*(a1 + 8) <= a2 >> 4)
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

  return *(v3 + 8 * (a2 >> 4)) + 168 * (a2 & 0xF);
}

BOOL re::LightContexts::isEmpty(re::LightContexts *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return 1;
  }

  v3 = 0;
  v4 = v1 - 1;
  do
  {
    v5 = re::BucketArray<re::LightContext,16ul>::operator[](this, v3);
    result = re::LightContext::isEmpty(v5);
    if (!result)
    {
      break;
    }
  }

  while (v4 != v3++);
  return result;
}

int8x16_t *re::makeLookAtPose<float>@<X0>(int8x16_t *result@<X0>, int8x16_t *a2@<X1>, float32x4_t *a3@<X2>, unsigned __int32 a4@<W3>, int8x16_t *a5@<X8>, int32x4_t a6@<Q0>, int32x4_t a7@<Q1>)
{
  a6.i32[0] = 0;
  a7.i32[0] = a4;
  v7 = vdupq_lane_s32(*&vceqq_s32(a7, a6), 0);
  v8 = vsubq_f32(vbslq_s8(v7, *a2, *result), vbslq_s8(v7, *result, *a2));
  v9 = vmulq_f32(v8, v8);
  v10.i32[1] = 0;
  *&v11 = v9.f32[2] + vaddv_f32(*v9.f32);
  *v9.f32 = vrsqrte_f32(v11);
  *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v11, vmul_f32(*v9.f32, *v9.f32)));
  v12 = vmulq_n_f32(v8, vmul_f32(*v9.f32, vrsqrts_f32(v11, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
  v13 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v14 = vmlaq_f32(vmulq_f32(v13, vnegq_f32(*a3)), v12, vextq_s8(vuzp1q_s32(*a3, *a3), *a3, 0xCuLL));
  v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
  v16 = vmulq_f32(v14, v14);
  *&v17 = v16.f32[1] + (v16.f32[2] + v16.f32[0]);
  *v16.f32 = vrsqrte_f32(v17);
  *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
  v18 = vmulq_n_f32(v15, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]);
  v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), vnegq_f32(v12)), v18, v13);
  v20 = v19.f32[1];
  v21 = v12.f32[2] + vaddq_f32(v18, v19).f32[0];
  if (v21 >= 0.0)
  {
    v19.f32[0] = sqrtf(v21 + 1.0);
    v27 = v19.f32[0] + v19.f32[0];
    *v10.i32 = v19.f32[0] + v19.f32[0];
    *v19.f32 = vrecpe_f32(*v10.i8);
    *v19.f32 = vmul_f32(*v19.f32, vrecps_f32(*v10.i8, *v19.f32));
    v18.f32[0] = vmul_f32(*v19.f32, vrecps_f32(*v10.i8, *v19.f32)).f32[0];
    *v10.i32 = (v20 - v12.f32[1]) * v18.f32[0];
    v19.f32[0] = (v12.f32[0] - v18.f32[2]) * v18.f32[0];
    v12.f32[0] = (v18.f32[1] - v19.f32[2]) * v18.f32[0];
    v26 = v27 * 0.25;
  }

  else if (v18.f32[0] < v12.f32[2] || (vmovn_s32(vmvnq_s8(vcgeq_f32(v18, v19))).u8[0] & 1) != 0)
  {
    v28 = 1.0 - v18.f32[0];
    v29 = v19.f32[0] < v12.f32[2];
    v18.f32[0] = sqrtf(v12.f32[2] + ((1.0 - v18.f32[0]) - v19.f32[0]));
    v18.f32[0] = v18.f32[0] + v18.f32[0];
    v30 = vrecpe_f32(v18.u32[0]);
    v31 = vmul_f32(v30, vrecps_f32(v18.u32[0], v30));
    v32 = vmul_f32(v31, vrecps_f32(v18.u32[0], v31)).f32[0];
    v33 = (v12.f32[0] + v18.f32[2]) * v32;
    v34 = v12.f32[1] + v19.f32[1];
    v35 = (v12.f32[1] + v19.f32[1]) * v32;
    v18.f32[0] = v18.f32[0] * 0.25;
    v36 = (v18.f32[1] - v19.f32[2]) * v32;
    v37 = sqrtf((v28 - v12.f32[2]) + v19.f32[0]);
    *&v38 = v37 + v37;
    v39 = vrecpe_f32(v38);
    *v19.f32 = vmul_f32(v39, vrecps_f32(v38, v39));
    v19.f32[0] = vmul_f32(*v19.f32, vrecps_f32(v38, *v19.f32)).f32[0];
    v40 = *&v38 * 0.25;
    v41 = v34 * v19.f32[0];
    v26 = (v12.f32[0] - v18.f32[2]) * v19.f32[0];
    if (v29)
    {
      *v10.i32 = v33;
    }

    else
    {
      *v10.i32 = (v18.f32[1] + v19.f32[2]) * v19.f32[0];
    }

    if (v29)
    {
      v19.f32[0] = v35;
    }

    else
    {
      v19.f32[0] = v40;
    }

    if (v29)
    {
      v12.f32[0] = v18.f32[0];
    }

    else
    {
      v12.f32[0] = v41;
    }

    if (v29)
    {
      v26 = v36;
    }
  }

  else
  {
    v22 = sqrtf(v18.f32[0] + ((1.0 - v19.f32[0]) - v12.f32[2]));
    *&v23 = v22 + v22;
    v24 = vrecpe_f32(v23);
    v25 = vmul_f32(v24, vrecps_f32(v23, v24));
    v25.f32[0] = vmul_f32(v25, vrecps_f32(v23, v25)).f32[0];
    *v10.i32 = *&v23 * 0.25;
    v19.f32[0] = (v18.f32[1] + v19.f32[2]) * v25.f32[0];
    v12.f32[0] = (v12.f32[0] + v18.f32[2]) * v25.f32[0];
    v26 = (v19.f32[1] - v12.f32[1]) * v25.f32[0];
  }

  v10.i32[1] = v19.i32[0];
  v10.i64[1] = __PAIR64__(LODWORD(v26), v12.u32[0]);
  *a5 = *result;
  a5[1] = v10;
  return result;
}

uint64_t re::BufferTable::clearBufferRef(re::BufferTable *this, unsigned int a2)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  result = re::BufferTable::setBufferRef(this, a2, &v3);
  if (DWORD2(v4) != -1)
  {
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_0[DWORD2(v4)])(&v6, &v3);
  }

  return result;
}

IMP re::mtl::RenderEncoderImpCache::build(re::mtl::RenderEncoderImpCache *this, id a2)
{
  *this = a2;
  Class = object_getClass(a2);
  *(this + 1) = class_getMethodImplementation(Class, sel_setVertexBytes_length_atIndex_);
  *(this + 2) = class_getMethodImplementation(Class, sel_setVertexBuffer_offset_atIndex_);
  *(this + 3) = class_getMethodImplementation(Class, sel_setVertexBufferOffset_atIndex_);
  *(this + 4) = class_getMethodImplementation(Class, sel_setVertexBuffer_offset_attributeStride_atIndex_);
  *(this + 5) = class_getMethodImplementation(Class, sel_setVertexBufferOffset_attributeStride_atIndex_);
  *(this + 6) = class_getMethodImplementation(Class, sel_setVertexTexture_atIndex_);
  *(this + 7) = class_getMethodImplementation(Class, sel_setRenderPipelineState_);
  *(this + 8) = class_getMethodImplementation(Class, sel_setCullMode_);
  *(this + 9) = class_getMethodImplementation(Class, sel_setDepthBias_slopeScale_clamp_);
  *(this + 10) = class_getMethodImplementation(Class, sel_setFragmentBytes_length_atIndex_);
  *(this + 11) = class_getMethodImplementation(Class, sel_setFragmentBuffer_offset_atIndex_);
  *(this + 12) = class_getMethodImplementation(Class, sel_setFragmentBufferOffset_atIndex_);
  *(this + 13) = class_getMethodImplementation(Class, sel_setFragmentTexture_atIndex_);
  *(this + 14) = class_getMethodImplementation(Class, sel_setDepthStencilState_);
  *(this + 15) = class_getMethodImplementation(Class, sel_setStencilReferenceValue_);
  *(this + 16) = class_getMethodImplementation(Class, sel_setStencilFrontReferenceValue_backReferenceValue_);
  *(this + 17) = class_getMethodImplementation(Class, sel_setFrontFacingWinding_);
  *(this + 18) = class_getMethodImplementation(Class, sel_setVertexAmplificationCount_viewMappings_);
  *(this + 19) = class_getMethodImplementation(Class, sel_insertDebugSignpost_);
  *(this + 20) = class_getMethodImplementation(Class, sel_pushDebugGroup_);
  *(this + 21) = class_getMethodImplementation(Class, sel_popDebugGroup);
  *(this + 22) = class_getMethodImplementation(Class, sel_setTriangleFillMode_);
  *(this + 23) = class_getMethodImplementation(Class, sel_setTessellationFactorBuffer_offset_instanceStride_);
  *(this + 24) = class_getMethodImplementation(Class, sel_setVisibilityResultMode_offset_);
  *(this + 25) = class_getMethodImplementation(Class, sel_drawPrimitives_vertexStart_vertexCount_instanceCount_);
  *(this + 26) = class_getMethodImplementation(Class, sel_drawPrimitives_vertexStart_vertexCount_);
  *(this + 27) = class_getMethodImplementation(Class, sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_);
  *(this + 28) = class_getMethodImplementation(Class, sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_);
  *(this + 29) = class_getMethodImplementation(Class, sel_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance_);
  *(this + 30) = class_getMethodImplementation(Class, sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance_);
  *(this + 31) = class_getMethodImplementation(Class, sel_drawIndexedPrimitives_indexType_indexBuffer_indexBufferOffset_indirectBuffer_indirectBufferOffset_);
  *(this + 32) = class_getMethodImplementation(Class, sel_setLabel_);
  result = class_getMethodImplementation(Class, sel_endEncoding);
  *(this + 33) = result;
  return result;
}

uint64_t re::RenderStat::activatePerfSampling(uint64_t a1, id *a2, int a3)
{
  v6 = re::ObjCObject::operator=((a1 + 32), a2);
  if (a3 == 1 && !*(a1 + 520))
  {
    re::DynamicArray<re::PerfMTLCounterSampler>::setCapacity((a1 + 520), 2uLL);
    ++*(a1 + 544);
    v7 = 1;
    do
    {
      v8 = v7;
      v16 = 0u;
      v17 = 0u;
      v14 = 0;
      v13[0] = 3uLL;
      v11 = 0u;
      v12 = 0u;
      v13[1] = 0uLL;
      DWORD2(v17) = 0;
      LODWORD(v16) = 0;
      memset(v15, 0, sizeof(v15));
      v18 = 0;
      v19 = 0;
      v20 = 0;
      re::mtl::CommandQueue::device(a2, &v10);
      re::PerfMTLCounterSampler::init(&v11, &v10);

      re::DynamicArray<re::PerfMTLCounterSampler>::add((a1 + 520), &v11);
      re::SampleBufferObjectPool::~SampleBufferObjectPool(&v15[1]);
      re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::deinit(v13 + 8);

      v7 = 0;
    }

    while ((v8 & 1) != 0);
  }

  atomic_store(1u, (a1 + 40));
  return re::RenderStat::setPerfSamplingMode(a1, a3);
}

id re::DynamicArray<re::PerfMTLCounterSampler>::add(_anonymous_namespace_ *this, __int128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PerfMTLCounterSampler>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 200 * v4;
  v6 = *a2;
  *(v5 + 16) = *(a2 + 2);
  *v5 = v6;
  *(v5 + 24) = *(a2 + 3);
  v7 = *(a2 + 36);
  *(v5 + 32) = *(a2 + 8);
  *(v5 + 36) = v7;
  re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::DynamicArray(v5 + 40, a2 + 5);
  re::DynamicArray<char const*>::DynamicArray(v5 + 80, a2 + 10);
  re::DynamicArray<char const*>::DynamicArray(v5 + 120, a2 + 15);
  v8 = *(a2 + 20);
  *(v5 + 168) = *(a2 + 42);
  *(v5 + 160) = v8;
  *(v5 + 176) = *(a2 + 22);
  result = *(a2 + 23);
  v10 = *(a2 + 24);
  *(v5 + 184) = result;
  *(v5 + 192) = v10;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RenderStat::setPerfSamplingMode(re::RenderStat *this, int a2)
{
  if (*(this + 6) != a2)
  {
    if (*(this + 40))
    {
      re::RenderStat::deinitializeCurrentMode(this);
      *(this + 6) = a2;
      if (a2 == 1)
      {
        v4 = *(this + 67);
        if (v4)
        {
          v5 = 0;
          v6 = 200 * v4 - 200;
          v7 = *(this + 69);
          v8 = vdupq_n_s64(v6 / 0xC8);
          v9 = (v6 / 0xC8 + 16) & 0x3FFFFFFFFFFFFF0;
          do
          {
            v10 = vdupq_n_s64(v5);
            v11 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1E3049620)));
            if (vuzp1_s8(vuzp1_s16(v11, *v8.i8), *v8.i8).u8[0])
            {
              v7[36] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(v11, *&v8), *&v8).i8[1])
            {
              v7[236] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1E3049640)))), *&v8).i8[2])
            {
              v7[436] = 1;
              v7[636] = 1;
            }

            v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1E3049660)));
            if (vuzp1_s8(*&v8, vuzp1_s16(v12, *&v8)).i32[1])
            {
              v7[836] = 1;
            }

            if (vuzp1_s8(*&v8, vuzp1_s16(v12, *&v8)).i8[5])
            {
              v7[1036] = 1;
            }

            if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1E305F210))))).i8[6])
            {
              v7[1236] = 1;
              v7[1436] = 1;
            }

            v13 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1E30903F0)));
            if (vuzp1_s8(vuzp1_s16(v13, *v8.i8), *v8.i8).u8[0])
            {
              v7[1636] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(v13, *&v8), *&v8).i8[1])
            {
              v7[1836] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1E30903E0)))), *&v8).i8[2])
            {
              v7[2036] = 1;
              v7[2236] = 1;
            }

            v14 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1E30903D0)));
            if (vuzp1_s8(*&v8, vuzp1_s16(v14, *&v8)).i32[1])
            {
              v7[2436] = 1;
            }

            if (vuzp1_s8(*&v8, vuzp1_s16(v14, *&v8)).i8[5])
            {
              v7[2636] = 1;
            }

            if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1E30903C0))))).i8[6])
            {
              v7[2836] = 1;
              v7[3036] = 1;
            }

            v5 += 16;
            v7 += 3200;
          }

          while (v9 != v5);
        }
      }

      ++*(this + 13);
    }

    else
    {
      *(this + 6) = a2;
    }
  }

  return 1;
}

void re::RenderStat::deinitializeCurrentMode(re::RenderStat *this)
{
  if (*(this + 6) == 1 && *(this + 67))
  {
    v2 = *(this + 69);
    do
    {
      *(v2 + 36) = 0;
      re::SampleBufferObjectPool::release(v2 + 80, *(v2 + 16));
      *(v2 + 32) = 0;
      v2 += 200;
    }

    while (v2 != *(this + 69) + 200 * *(this + 67));
  }

  *(this + 6) = 2;
}

uint64_t re::RenderStat::samplerIndexForType(re *a1, unsigned int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2 < 3)
  {
    return qword_1E30A1B20[a2];
  }

  v4 = *re::graphicsLogObjects(a1);
  v3 = 2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    v3 = 2;
    _os_log_debug_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEBUG, "Unexpected CommandBufferSampleType for RenderStat: %u", v6, 8u);
  }

  return v3;
}

unint64_t re::RenderStat::addMTLCounterHandler(unint64_t result, uint64_t a2, unsigned int a3)
{
  if (*(result + 24) == 1)
  {
    v4 = result;
    result = re::RenderStat::samplerIndexForType(result, a3);
    if (result < *(v4 + 536))
    {
      v5 = (*(v4 + 552) + 200 * result + 40);

      return re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::add(v5, a2);
    }
  }

  return result;
}

uint64_t (***re::RenderStat::clearMTLCounterHandlers(uint64_t (***this)(void)))(void)
{
  if (*(this + 6) == 1)
  {
    v1 = this;
    if (this[67])
    {
      v2 = this[69];
      do
      {
        this = re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::clear(v2 + 5);
        v2 += 25;
      }

      while (v2 != &v1[69][25 * v1[67]]);
    }
  }

  return this;
}

void re::RenderStat::sampleRenderEncoderMTLCounterBegin(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) == 1)
  {
    v5 = re::RenderStat::samplerIndexForType(a1, a3);
    if (v5 >= *(a1 + 536))
    {
      v6 = *re::graphicsLogObjects(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7[0] = 67109120;
        v7[1] = a3;
        _os_log_debug_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEBUG, "sampleRenderEncoderMTLCounterBegin skipped, no PerfMTLCounterSampler for sample type %u", v7, 8u);
      }
    }
  }
}

void re::RenderStat::sampleRenderEncoderMTLCounterEnd(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) == 1)
  {
    v5 = re::RenderStat::samplerIndexForType(a1, a3);
    if (v5 >= *(a1 + 536))
    {
      v6 = *re::graphicsLogObjects(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7[0] = 67109120;
        v7[1] = a3;
        _os_log_debug_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEBUG, "sampleRenderEncoderMTLCounterEnd skipped, no PerfMTLCounterSampler for sample type %u", v7, 8u);
      }
    }
  }
}

void re::RenderStat::sampleComputeEncoderMTLCounterBegin(uint64_t a1, id *a2, unsigned int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) == 1)
  {
    v6 = re::RenderStat::samplerIndexForType(a1, a3);
    if (v6 >= *(a1 + 536))
    {
      v8 = *re::graphicsLogObjects(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9[0] = 67109120;
        v9[1] = a3;
        _os_log_debug_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEBUG, "sampleComputeEncoderMTLCounterBegin skipped, no PerfMTLCounterSampler for sample type %u", v9, 8u);
      }
    }

    else
    {
      v7 = *a2;
    }
  }
}

void re::RenderStat::sampleComputeEncoderMTLCounterEnd(uint64_t a1, id *a2, unsigned int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) == 1)
  {
    v6 = re::RenderStat::samplerIndexForType(a1, a3);
    if (v6 >= *(a1 + 536))
    {
      v8 = *re::graphicsLogObjects(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9[0] = 67109120;
        v9[1] = a3;
        _os_log_debug_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEBUG, "sampleComputeEncoderMTLCounterEnd skipped, no PerfMTLCounterSampler for sample type %u", v9, 8u);
      }
    }

    else
    {
      v7 = *a2;
    }
  }
}

void re::RenderStat::enableMTLCounterSamplingOnRenderPassDescriptor(uint64_t a1, id *a2, unsigned int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) == 1)
  {
    v6 = re::RenderStat::samplerIndexForType(a1, a3);
    if (v6 >= *(a1 + 536))
    {
      v9 = *re::graphicsLogObjects(v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v12 = a3;
        _os_log_debug_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEBUG, "enableMTLCounterSamplingOnRenderPassDescriptor skipped, no PerfMTLCounterSampler for sample type %u", buf, 8u);
      }
    }

    else
    {
      v7 = (*(a1 + 552) + 200 * v6);
      v8 = *a2;
      v10 = v8;
      re::PerfMTLCounterSampler::enableSamplingOnRenderPassDescriptor(v7, &v10);
      if (v8)
      {
      }
    }
  }
}

void re::RenderStat::makeComputeCommandEncoderWithMTLCounterSampling(uint64_t a1@<X0>, id *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) == 1)
  {
    v10 = re::RenderStat::samplerIndexForType(a1, a3);
    if (v10 < *(a1 + 536))
    {
      v11 = *(a1 + 552) + 200 * v10;
      v14 = *a2;
      re::PerfMTLCounterSampler::makeComputeCommandEncoderWithSampling(v11, &v14, a4, a5);

      return;
    }

    v12 = *re::graphicsLogObjects(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v16 = a3;
      _os_log_debug_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEBUG, "makeComputeCommandEncoderWithMTLCounterSampling skipped, no PerfMTLCounterSampler for sample type %u", buf, 8u);
    }
  }

  v13 = [objc_msgSend(MEMORY[0x1E6974028] alloc)];
  [v13 setDispatchType_];
  re::mtl::CommandBuffer::makeComputeCommandEncoder(a2, v13, a5);
  if (v13)
  {
  }
}

uint64_t re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::add(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::findEntry<unsigned short>(a1, a2, v6 ^ (v6 >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::addInternal<unsigned short,re::Function<void ()(re::GpuTimingData const&)> const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 56 * HIDWORD(v9) + 8;
  }
}

BOOL re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::remove(uint64_t a1, unsigned __int16 *a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::findEntry<unsigned short>(a1, a2, v3 ^ (v3 >> 31), v5);
  return re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::removeInternal(a1, v5);
}

uint64_t re::RenderStat::beginRecordPassStat(uint64_t a1, void **a2, unsigned int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) <= 1u)
  {
    v6 = *(a1 + 116);
    v7 = *(a1 + 104);
    v8 = re::globalAllocators(a1)[2];
    v18 = v8;
    v9 = (*(*v8 + 32))(v8, 32, 0);
    *v9 = &unk_1F5D038D8;
    *(v9 + 8) = a1;
    *(v9 + 16) = v6;
    *(v9 + 24) = v7;
    v19 = v9;
    v15 = v8;
    v16 = 0;
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v14, v17);
    re::mtl::CommandBuffer::addCompletionHandler(a2, v14);
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v14);
    v10 = re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v17);
    if (*(a1 + 24) == 1)
    {
      v11 = re::RenderStat::samplerIndexForType(v10, a3);
      v12 = v11;
      if (v11 < *(a1 + 536))
      {
        re::PerfMTLCounterSampler::createSampleBuffer((*(a1 + 552) + 200 * v11));
      }

      *(a1 + 560) = v12;
    }
  }

  return 0;
}

uint64_t (***re::RenderStat::finishMTLCounterSampling(uint64_t (***result)(void), uint64_t a2, id *a3))(void)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(result + 6) == 1)
  {
    if (a2 >= 0x20)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 32);
      _os_crash();
      __break(1u);
    }

    else
    {
      v5 = result;
      v4 = *(result + a2 + 280);
      if (result[67] <= v4)
      {
        return result;
      }

      v7 = &result[69][25 * *(result + a2 + 280)];
      v8[0] = *a3;
      re::PerfMTLCounterSampler::freezeAndReadSamples(v7, v8);

      v3 = v5[67];
      if (v3 > v4)
      {
        return re::PerfMTLCounterSampler::finishSampling(&v5[69][25 * v4], a3);
      }
    }

    v8[1] = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    v12 = 789;
    v13 = 2048;
    v14 = v4;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void re::RenderStat::finishFrame(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = a1;
  v21 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 116);
  v6 = (v5 + 1) & 3;
  if (v6 == atomic_load_explicit((a1 + 112), memory_order_acquire))
  {
    v7 = *re::graphicsLogObjects(a1);
    a1 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (a1)
    {
      *buf = 67109120;
      v18 = 4;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "There is a significant delay between requesting perf counters and receiving samples (at least %u frames)", buf, 8u);
    }
  }

  if (*(v4 + 24) <= 1u)
  {
    if (v5 >= 4)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v5, 4);
      _os_crash();
      __break(1u);
    }

    *(v4 + 16 * v5 + 192) = xmmword_1E30A1A10;
    v8 = *(v4 + 104);
    v9 = re::profilerThreadContext(a1);
    v10 = *(v9 + 10);
    if (*(v9 + 9) == v10)
    {
      v11 = -1;
    }

    else
    {
      v11 = *(v10 - 56);
    }

    v12 = re::globalAllocators(v9)[2];
    v19 = v12;
    v13 = (*(*v12 + 32))(v12, 40, 0);
    *v13 = &unk_1F5D03930;
    *(v13 + 8) = v4;
    *(v13 + 16) = v5;
    *(v13 + 24) = v8;
    *(v13 + 32) = v11;
    v20 = v13;
    v15 = v12;
    v16 = 0;
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v14, buf);
    re::mtl::CommandBuffer::addCompletionHandler(a3, v14);
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v14);
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(buf);
  }

  atomic_store(v6, (v4 + 116));
}

uint64_t re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::deinit(uint64_t a1)
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
          re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(v3);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 32) = 0;
  result = re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::operator=<24ul>(v5, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::setCapacity(v5, a2);
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
          re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::operator=<24ul>(v11, v8);
          re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(v8);
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

uint64_t re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(a1);
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
        re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(a2);
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
    re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(a1);
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

uint64_t (***re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::clear(uint64_t (***result)(void)))(void)
{
  v1 = result;
  v2 = result[2];
  result[2] = 0;
  if (v2)
  {
    v3 = result[4];
    v4 = 40 * v2;
    do
    {
      result = re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(v3);
      v3 += 40;
      v4 -= 40;
    }

    while (v4);
  }

  ++*(v1 + 6);
  return result;
}

void re::internal::Callable<re::RenderStat::beginRecordPassStat(re::mtl::CommandBuffer,re::RenderStat::CommandBufferSampleType)::$_0,void ()(re::mtl::CommandBuffer const&)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  if (*(v4 + 104) == *(a1 + 24))
  {
    v18 = v3;
    [v3 GPUEndTime];
    v3 = v18;
    if (v6 > 0.0)
    {
      v7 = *(a1 + 16);
      if (v7 >= 4)
      {
        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, *(a1 + 16), 4);
        _os_crash();
        __break(1u);
      }

      else
      {
        [v18 GPUStartTime];
        v10 = *(a1 + 16);
        if (v10 < 4)
        {
          v11 = v4 + 192;
          v12 = v9 * 1000.0;
          if (*(v11 + 16 * v7) <= v12)
          {
            v12 = *(v11 + 16 * v7);
          }

          v13 = (v11 + 16 * v10);
          *v13 = v12;
          [v18 GPUEndTime];
          v16 = *(a1 + 16);
          if (v16 < 4)
          {
            v17 = v15 * 1000.0;
            if (v13[1] >= v17)
            {
              v17 = v13[1];
            }

            *(v11 + 16 * v16 + 8) = v17;
            v3 = v18;
            goto LABEL_11;
          }

LABEL_16:
          re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v16, 4);
          _os_crash();
          __break(1u);
          return;
        }
      }

      re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v10, 4);
      _os_crash();
      __break(1u);
      goto LABEL_16;
    }
  }

LABEL_11:
}

uint64_t re::internal::Callable<re::RenderStat::beginRecordPassStat(re::mtl::CommandBuffer,re::RenderStat::CommandBufferSampleType)::$_0,void ()(re::mtl::CommandBuffer const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D038D8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::RenderStat::beginRecordPassStat(re::mtl::CommandBuffer,re::RenderStat::CommandBufferSampleType)::$_0,void ()(re::mtl::CommandBuffer const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D038D8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

void re::internal::Callable<re::RenderStat::finishFrame(unsigned int,re::mtl::CommandBuffer)::$_0,void ()(re::mtl::CommandBuffer const&)>::operator()(uint64_t a1, id *a2)
{
  v4 = *a2;
  v5 = *(a1 + 8);
  if ((atomic_load_explicit((v5 + 40), memory_order_acquire) & 1) == 0 || *(v5 + 104) != *(a1 + 24))
  {
LABEL_24:

    return;
  }

  v6 = *(a1 + 16);
  if (v6 < 4)
  {
    v7 = (v5 + 192 + 16 * v6);
    v8 = *(v5 + 192 + 16 * ((v6 - 1) & 3) + 8);
    v9 = v7[1];
    if (v8 < *v7 || v8 > v9)
    {
      v8 = *v7;
    }

    v17[0] = *(a1 + 32);
    *&v17[1] = v9 - v8;
    v11 = *(v5 + 80);
    if (v11)
    {
      v12 = 0;
      v13 = *(v5 + 64);
      while (1)
      {
        v14 = *v13;
        v13 += 14;
        if (v14 < 0)
        {
          break;
        }

        if (v11 == ++v12)
        {
          LODWORD(v12) = *(v5 + 80);
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
      v15 = *(*(v5 + 64) + 56 * v12 + 40);
      (*(*v15 + 16))(v15, v17);
      v16 = *(v5 + 80);
      if (v16 <= v12 + 1)
      {
        v16 = v12 + 1;
      }

      while (v16 - 1 != v12)
      {
        LODWORD(v12) = v12 + 1;
        if ((*(*(v5 + 64) + 56 * v12) & 0x80000000) != 0)
        {
          goto LABEL_22;
        }
      }

      LODWORD(v12) = v16;
LABEL_22:
      ;
    }

    atomic_store((atomic_load_explicit((v5 + 112), memory_order_acquire) + 1) & 3, (v5 + 112));
    goto LABEL_24;
  }

  re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, *(a1 + 16), 4);
  _os_crash();
  __break(1u);
}

uint64_t re::internal::Callable<re::RenderStat::finishFrame(unsigned int,re::mtl::CommandBuffer)::$_0,void ()(re::mtl::CommandBuffer const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D03930;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::RenderStat::finishFrame(unsigned int,re::mtl::CommandBuffer)::$_0,void ()(re::mtl::CommandBuffer const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D03930;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

void *re::DynamicArray<re::PerfMTLCounterSampler>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PerfMTLCounterSampler>::setCapacity(v5, a2);
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
        v10 = 0;
        v11 = v8 + 200 * v9;
        do
        {
          v12 = &v7[v10 / 8];
          v13 = v8 + v10;
          v14 = *(v8 + v10);
          v12[2] = *(v8 + v10 + 16);
          *v12 = v14;
          v12[3] = *(v8 + v10 + 24);
          v15 = *(v8 + v10 + 36);
          *(v12 + 8) = *(v8 + v10 + 32);
          *(v12 + 36) = v15;
          re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::DynamicArray(&v7[v10 / 8 + 5], (v8 + v10 + 40));
          re::DynamicArray<char const*>::DynamicArray(&v7[v10 / 8 + 10], (v8 + v10 + 80));
          re::DynamicArray<char const*>::DynamicArray(&v7[v10 / 8 + 15], (v8 + v10 + 120));
          v16 = *(v8 + v10 + 160);
          *(v12 + 42) = *(v8 + v10 + 168);
          v12[20] = v16;
          v12[22] = *(v8 + v10 + 176);
          v17 = *(v8 + v10 + 184);
          v18 = *(v8 + v10 + 192);
          v12[23] = v17;
          v12[24] = v18;
          re::SampleBufferObjectPool::~SampleBufferObjectPool((v8 + v10 + 80));
          re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::deinit(v8 + v10 + 40);

          v10 += 200;
        }

        while (v13 + 200 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 40 * v12;
      do
      {
        result = re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::operator=<24ul>(v13, v11);
        v11 += 40;
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
      v16 = v11 + 8 * v15;
      v17 = v13 + 8 * v15;
      v18 = 40 * v4 - 8 * v15;
      do
      {
        *(v17 + 24) = *(v16 + 24);
        *(v17 + 32) = 0;
        result = re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::operator=<24ul>(v17, v16);
        v16 += 40;
        v17 += 40;
        v18 -= 40;
      }

      while (v18);
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
        result = re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::operator=<24ul>(v6, v7);
        v7 += 40;
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
        result = re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(v9);
        v9 += 40;
        v10 -= 40;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<re::PerfMTLCounterSampler>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::PerfMTLCounterSampler>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PerfMTLCounterSampler>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::addInternal<unsigned short,re::Function<void ()(re::GpuTimingData const&)> const&>(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4)
{
  v7 = re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 4) = *a3;
  *(v7 + 32) = *(a4 + 24);
  *(v7 + 40) = 0;
  re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::operator=<24ul>(v7 + 8, a4);
  ++*(a1 + 40);
  return v7 + 8;
}

uint64_t re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::findEntry<unsigned short>@<X0>(uint64_t result@<X0>, unsigned __int16 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  v8 = *a2;
  if (*(v7 + 56 * v6 + 4) == v8)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v9 = *(v7 + 56 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v9 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v10 = v9;
      if (*(v7 + 56 * v9 + 4) == v8)
      {
        break;
      }

      v9 = *(v7 + 56 * v9) & 0x7FFFFFFF;
      v6 = v10;
      if (v9 == 0x7FFFFFFF)
      {
        v6 = v10;
        goto LABEL_6;
      }
    }

    v5 = v9;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v33, 0, 36);
          *&v33[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::init(v33, v9, v8);
          v11 = *v33;
          *v33 = *a1;
          *a1 = v11;
          v12 = *&v33[16];
          v13 = *(a1 + 16);
          *&v33[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v33[24];
          *&v33[24] = *(a1 + 24);
          v14 = *&v33[32];
          *(a1 + 24) = v15;
          ++*&v33[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 32);
            do
            {
              if ((*(v18 - 4) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::allocEntry(a1, v18[2] % *(a1 + 24));
                *(v19 + 4) = *(v18 - 14);
                v20 = v19 + 8;
                *(v19 + 32) = *v18;
                *(v19 + 40) = 0;
                if (v18 - 3 != (v19 + 8))
                {
                  v21 = v19;
                  re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::destroyCallable(v19 + 8);
                  v22 = v18[1];
                  if (*(v21 + 32) != *v18 || v18 - 3 == v22)
                  {
                    if (v22)
                    {
                      v24 = (*(*v22 + 40))(v22);
                      if (v24 >= 0x19)
                      {
                        v25 = v24;
                        v26 = *(v21 + 32);
                        if (v26)
                        {
                          v20 = (*(*v26 + 32))(v26, v25, 0);
                        }

                        else
                        {
                          v20 = 0;
                        }
                      }

                      *(v21 + 40) = v20;
                      (*(*v18[1] + 32))(v18[1], v20);
                      re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::destroyCallable((v18 - 3));
                    }
                  }

                  else
                  {
                    *(v21 + 40) = v22;
                    v18[1] = 0;
                  }
                }
              }

              ++v17;
              v18 += 7;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(v33);
        }
      }

      else
      {
        if (v8)
        {
          v29 = 2 * v7;
        }

        else
        {
          v29 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v27 = *(a1 + 16);
    v28 = *(v27 + 56 * v5);
  }

  else
  {
    v27 = *(a1 + 16);
    v28 = *(v27 + 56 * v5);
    *(a1 + 36) = v28 & 0x7FFFFFFF;
  }

  v30 = v27 + 56 * v5;
  *v30 = v28 | 0x80000000;
  v31 = *(a1 + 8);
  *v30 = *(v31 + 4 * a2) | 0x80000000;
  *(v31 + 4 * a2) = v5;
  *(v30 + 48) = a3;
  ++*(a1 + 28);
  return v27 + 56 * v5;
}

void re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_23, 4 * v10);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::destroyCallable(uint64_t a1))(void)
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

double re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(uint64_t *a1)
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
          re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::destroyCallable(v6 + v4 + 8);
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

uint64_t re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::destroyCallable(a1);
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

BOOL re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 56 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = v8;
    }

    else
    {
      *(v6 + 56 * v5) = *(v6 + 56 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 56 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::destroyCallable((v10 + 2));
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 56 * v12);
      v9 = v12;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 56 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

void re::PerfMTLCounterSampler::init(uint64_t a1, id *a2)
{
  if (*(a1 + 32) == 3)
  {
    v3 = re::ObjCObject::operator=((a1 + 24), a2);
    *(a1 + 16) = 0;
    re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::setCapacity((a1 + 40), 1uLL);
    v4 = 0;
    ++*(a1 + 64);
    *(a1 + 32) = 0;
    do
    {
      v5 = re::allSamplePoints(void)::samplePoints[v4];
      if ([*(a1 + 24) supportsCounterSampling:v5])
      {
        *(a1 + 192) |= 1 << v5;
      }

      ++v4;
    }

    while (v4 != 5);
  }

  else
  {
    v6 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_debug_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEBUG, "PerfMTLCounterSampler already initialized", v7, 2u);
    }
  }
}

void re::PerfMTLCounterSampler::createSampleBuffer(id *this)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(this + 36) == 1)
  {
    if (*(this + 8))
    {
      v2 = *re::graphicsLogObjects(this);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = *(this + 8);
        *buf = 67109120;
        *&buf[4] = v3;
        _os_log_error_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_ERROR, "PerfMTLCounterSampler: Could not create sample buffer, wrong state: %i", buf, 8u);
      }
    }

    else
    {
      v4 = 4 * *this;
      v5 = 2 * *(this + 1);
      if (this[20])
      {
        v6 = *(this + 42);
        if (v4 > *(this + 41))
        {
          *(this + 41) = v4;
          v7 = this[12];
          if (v7)
          {
            v8 = this[14];
            v9 = 8 * v7;
            do
            {
              v10 = *v8++;
              re::SampleBufferObjectPool::initializeCounterSampleBuffer((this + 10), v4, v10, 1);
              v9 -= 8;
            }

            while (v9);
          }
        }

        if (v5 > v6)
        {
          *(this + 42) = v5;
          v11 = this[12];
          if (v11)
          {
            v12 = this[14];
            v13 = 8 * v11;
            do
            {
              v14 = *v12++;
              re::SampleBufferObjectPool::initializeCounterSampleBuffer((this + 10), v5, v14, 2);
              v13 -= 8;
            }

            while (v13);
          }
        }
      }

      else
      {
        v15 = this[3];
        v29 = v15;
        if ((this[20] & 1) == 0)
        {
          v16 = re::DynamicArray<float *>::setCapacity(this + 10, 2uLL);
          ++*(this + 26);
          re::DynamicArray<float *>::setCapacity(this + 15, 2uLL);
          ++*(this + 36);
          re::ObjCObject::operator=(this + 22, &v29);
          *(this + 41) = v4;
          re::mtl::Device::getCounterSet(this + 22, 1, buf);
          v17 = this[23];
          v18 = *buf;
          if (v17 == *buf)
          {
          }

          else
          {
            if (v17)
            {
            }

            this[23] = v18;
          }

          v19 = 2;
          do
          {
            v20 = re::globalAllocators(v17);
            v21 = (*(*v20[2] + 32))(v20[2], 32, 8);
            *v21 = 0u;
            v21[1] = 0u;
            *buf = v21;
            re::SampleBufferObjectPool::initializeCounterSampleBuffer((this + 10), v4, v21, 1);
            v17 = re::DynamicArray<re::RigDataValue *>::add((this + 10), buf);
            --v19;
          }

          while (v19);
          *(this + 160) = 1;
          v15 = v29;
        }

        *(this + 42) = v5;
        v22 = this[12];
        if (v22)
        {
          v23 = this[14];
          v24 = 8 * v22;
          do
          {
            v25 = *v23++;
            re::SampleBufferObjectPool::initializeCounterSampleBuffer((this + 10), v5, v25, 2);
            v24 -= 8;
          }

          while (v24);
        }
      }

      *this = 0;
      v26 = this[12];
      if (v26)
      {
        v27 = *(this[14] + v26 - 1);
        *buf = v27;
        this[12] = v26 - 1;
        ++*(this + 26);
        re::DynamicArray<re::RigDataValue *>::add((this + 15), buf);
      }

      else
      {
        v28 = *re::graphicsLogObjects(this);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "PerfMTLCounterSampler: Error could not acquire SampleBufferObject", buf, 2u);
        }

        v27 = 0;
      }

      this[1] = 0;
      this[2] = v27;
      *(this + 8) = 1;
    }
  }
}

void re::PerfMTLCounterSampler::freezeAndReadSamples(uint64_t a1, void **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 36) == 1)
  {
    *(a1 + 32) = 2;
    v3 = *(a1 + 16);
    if (v3)
    {
      v5 = *(a1 + 8);
      v6 = re::profilerThreadContext(a1);
      v7 = *(v6 + 80);
      if (*(v6 + 72) == v7)
      {
        v8 = -1;
      }

      else
      {
        v8 = *(v7 - 56);
      }

      *&v12 = v3;
      *(&v12 + 1) = v5;
      v10 = re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::DynamicArray(&v13, (a1 + 40));
      v18 = v8;
      v20 = re::globalAllocators(v10)[2];
      v11 = (*(*v20 + 32))(v20, 72, 0);
      *v11 = &unk_1F5D03988;
      *(v11 + 8) = v12;
      *(v11 + 48) = 0;
      *(v11 + 24) = v13;
      *(v11 + 32) = v14;
      *(v11 + 40) = 0;
      *(v11 + 40) = v15;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      *(v11 + 56) = v17;
      v17 = 0;
      ++v16;
      *(v11 + 48) = 1;
      *(v11 + 64) = v18;
      v21 = v11;
      re::mtl::CommandBuffer::addCompletionHandler(a2, v19);
      re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v19);
      re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::deinit(&v13);
    }

    else
    {
      v9 = *re::graphicsLogObjects(a1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "PerfMTLCounterSampler: Could not read samples, currentSampleBufferObject null", &v12, 2u);
      }
    }
  }
}

_DWORD *re::PerfMTLCounterSampler::enableSamplingOnRenderPassDescriptor(_DWORD *result, id *a2)
{
  if (*(result + 36) == 1)
  {
    v2 = result;
    ++*result;
    if (result[8] == 1 && (result[2] + 4) <= result[41] && *(result + 2))
    {
      v3 = [objc_msgSend(*a2 sampleBufferAttachments)];
      [v3 setSampleBuffer_];
      ++v2[2];
      [v3 setStartOfVertexSampleIndex_];
      ++v2[2];
      [v3 setEndOfVertexSampleIndex_];
      ++v2[2];
      [v3 setStartOfFragmentSampleIndex_];
      ++v2[2];

      return [v3 setEndOfFragmentSampleIndex_];
    }
  }

  return result;
}

void re::PerfMTLCounterSampler::makeComputeCommandEncoderWithSampling(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  ++*(a1 + 4);
  if (*(a1 + 36) == 1 && *(a1 + 32) == 1 && (*(a1 + 12) + 2) <= *(a1 + 168) && *(a1 + 16))
  {
    v8 = [objc_msgSend(MEMORY[0x1E6974028] alloc)];
    [v8 setDispatchType_];
    v9 = [objc_msgSend(v8 sampleBufferAttachments)];
    [v9 setSampleBuffer_];
    ++*(a1 + 12);
    [v9 setStartOfEncoderSampleIndex_];
    v10 = *(a1 + 12);
    *(a1 + 12) = v10 + 1;
    [v9 setEndOfEncoderSampleIndex_];
  }

  else
  {
    v8 = [objc_msgSend(MEMORY[0x1E6974028] alloc)];
    [v8 setDispatchType_];
  }

  re::mtl::CommandBuffer::makeComputeCommandEncoder(a2, v8, a4);
  if (v8)
  {
  }
}

uint64_t (***re::PerfMTLCounterSampler::finishSampling(uint64_t (***this)(void), void **a2))(void)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (*(this + 36) == 1)
  {
    v3 = this;
    v4 = this[2];
    v5 = re::globalAllocators(this)[2];
    v6[2] = v4;
    v6[3] = v5;
    v6[0] = &unk_1F5D039E0;
    v6[1] = v3;
    v6[4] = v6;
    re::mtl::CommandBuffer::addCompletionHandler(a2, v6);
    this = re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v6);
    v3[2] = 0;
    *(v3 + 8) = 0;
  }

  return this;
}

void re::SampleBufferObjectPool::initializeCounterSampleBuffer(uint64_t a1, unsigned int a2, uint64_t a3, char a4)
{
  if (a2 && *(a1 + 104))
  {
    v8 = [objc_msgSend(MEMORY[0x1E6974048] alloc)];
    [v8 setStorageMode_];
    [v8 setSampleCount_];
    [v8 setCounterSet_];
    if (a4)
    {
      *(a3 + 20) = a2;
      [v8 setLabel_];
      v10 = v8;
      re::mtl::Device::newCounterSampleBufferWithDescriptor((a1 + 96), &v10, &v11);
      NS::SharedPtr<MTL::Texture>::operator=(a3, &v11);
      if (v11)
      {

        v11 = 0;
      }

      if (v10)
      {

        v10 = 0;
      }
    }

    if ((a4 & 2) != 0)
    {
      *(a3 + 24) = a2;
      [v8 setLabel_];
      v9 = v8;
      re::mtl::Device::newCounterSampleBufferWithDescriptor((a1 + 96), &v9, &v11);
      NS::SharedPtr<MTL::Texture>::operator=((a3 + 8), &v11);
      if (v11)
      {

        v11 = 0;
      }

      if (v9)
      {

        v9 = 0;
      }
    }

    *(a3 + 16) |= 1u;
    if (v8)
    {
    }
  }
}

void re::SampleBufferObjectPool::~SampleBufferObjectPool(re::SampleBufferObjectPool *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 4);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      re::internal::destroyPersistent<re::SampleBufferObject>("~SampleBufferObjectPool", 323, v5);
      v4 -= 8;
    }

    while (v4);
  }

  v6 = *(this + 7);
  if (v6)
  {
    v7 = *(this + 9);
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      re::internal::destroyPersistent<re::SampleBufferObject>("~SampleBufferObjectPool", 326, v9);
      v8 -= 8;
    }

    while (v8);
  }

  v10 = *(this + 13);
  if (v10)
  {

    *(this + 13) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::DynamicArray<unsigned long>::deinit(this);
}

re *re::internal::destroyPersistent<re::SampleBufferObject>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    v5 = *(a3 + 8);
    if (v5)
    {

      *(a3 + 8) = 0;
    }

    if (*a3)
    {

      *a3 = 0;
    }

    v6 = *(*v4 + 40);

    return v6(v4, a3);
  }

  return result;
}

void re::SampleBufferObjectPool::release(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v15[0] = a2;
  v4 = *(a1 + 72);
  v5 = *(a1 + 56);
  v6 = v4;
  if (v5)
  {
    v7 = 8 * v5;
    v6 = *(a1 + 72);
    while (*v6 != a2)
    {
      v6 += 8;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_15;
      }
    }
  }

  v8 = &v4[8 * v5];
  if (v6 == v8)
  {
LABEL_15:
    v14 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "PerfMTLCounterSampler: Error could not release SampleBufferObject", buf, 2u);
    }
  }

  else
  {
    v9 = v6 - v4;
    v10 = v9 >> 3;
    if (v5 <= v9 >> 3)
    {
      v15[1] = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v16 = 136315906;
      v17 = "removeAt";
      v18 = 1024;
      v19 = 931;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v5 - 1 > v10)
    {
      *&v4[v9] = *(v8 - 1);
    }

    *(a1 + 56) = v5 - 1;
    ++*(a1 + 64);
    v11 = *(a2 + 20);
    v12 = *(a1 + 84);
    if (v11 != v12)
    {
      re::SampleBufferObjectPool::initializeCounterSampleBuffer(a1, v12, a2, 1);
    }

    v13 = *(a1 + 88);
    if (*(a2 + 24) != v13)
    {
      re::SampleBufferObjectPool::initializeCounterSampleBuffer(a1, v13, a2, 2);
    }

    re::DynamicArray<re::RigDataValue *>::add(a1, v15);
  }
}

void *re::internal::Callable<re::PerfMTLCounterSampler::freezeAndReadSamples(re::mtl::CommandBuffer)::$_0,void ()(re::mtl::CommandBuffer const&)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03988;
  re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::deinit((a1 + 3));
  return a1;
}

void re::internal::Callable<re::PerfMTLCounterSampler::freezeAndReadSamples(re::mtl::CommandBuffer)::$_0,void ()(re::mtl::CommandBuffer const&)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03988;
  re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::deinit((a1 + 3));

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::PerfMTLCounterSampler::freezeAndReadSamples(re::mtl::CommandBuffer)::$_0,void ()(re::mtl::CommandBuffer const&)>::operator()(uint64_t a1, id *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = **(a1 + 8);
  if (v4)
  {
    v5 = [objc_msgSend(v4 resolveCounterRange_];
    v7 = *(a1 + 16);
    if (v7 >= 4)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v5 + 16);
      while (v8 < v7)
      {
        v12 = v8 + 1;
        if (v12 >= v7)
        {
          goto LABEL_24;
        }

        v13 = v12 + 1;
        if (v13 >= v7)
        {
          goto LABEL_25;
        }

        v14 = v13 + 1;
        if (v14 >= v7)
        {
          goto LABEL_26;
        }

        v9 = v9 - *(v11 - 2) + *(v11 - 1);
        v15 = *v11;
        v16 = v11[1];
        v11 += 4;
        v10 = v10 - v15 + v16;
        v8 = v14 + 1;
        if (v7 - 3 <= v8)
        {
          goto LABEL_11;
        }
      }

LABEL_23:
      re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, (v7 + 3) & 0xFFFFFFFC, v7);
      _os_crash();
      __break(1u);
LABEL_24:
      re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, (v7 + 2) & 0xFFFFFFFC | 1, v7);
      _os_crash();
      __break(1u);
LABEL_25:
      re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, (v7 + 1) & 0xFFFFFFFC | 2, v7);
      _os_crash();
      __break(1u);
LABEL_26:
      re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7 | 3, v7);
      _os_crash();
      __break(1u);
    }
  }

  v10 = 0;
  v9 = 0;
LABEL_11:
  v17 = *(*(a1 + 8) + 8);
  if (v17)
  {
    v18 = [objc_msgSend(v17 resolveCounterRange_];
    v20 = *(a1 + 20);
    if (v20 >= 1)
    {
      v21 = 0;
      v22 = v18 + 8;
      v23 = 1;
      while (v23 < v20)
      {
        v21 = v21 - *(v22 - 1) + *v22;
        v23 += 2;
        v22 += 2;
        if (v20 <= v23 - 1)
        {
          goto LABEL_18;
        }
      }

      re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v20 | 1, v20);
      _os_crash();
      __break(1u);
      goto LABEL_23;
    }
  }

  v21 = 0;
LABEL_18:
  v24 = *(a1 + 40);
  if (v24)
  {
    v27 = a1 + 56;
    v25 = *(a1 + 56);
    v26 = *(v27 + 8);
    v28 = 40 * v24;
    do
    {
      v31 = *(v25 + 24);
      v32 = 0;
      re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::operator=<24ul>(v30, v25);
      v29[0] = v9;
      v29[1] = v10;
      v29[2] = v21;
      v29[3] = v26;
      (*(*v32 + 16))(v32, v29);
      re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(v30);
      v25 += 40;
      v28 -= 40;
    }

    while (v28);
  }
}

uint64_t re::internal::Callable<re::PerfMTLCounterSampler::freezeAndReadSamples(re::mtl::CommandBuffer)::$_0,void ()(re::mtl::CommandBuffer const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D03988;
  *(a2 + 8) = *(a1 + 8);
  re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::DynamicArray(a2 + 24, (a1 + 24));
  *(a2 + 64) = *(a1 + 64);
  return a2;
}

uint64_t re::internal::Callable<re::PerfMTLCounterSampler::freezeAndReadSamples(re::mtl::CommandBuffer)::$_0,void ()(re::mtl::CommandBuffer const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D03988;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  v2 = *(a1 + 32);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *(a2 + 40);
  *(a2 + 40) = *(a1 + 40);
  *(a1 + 40) = v3;
  v4 = *(a2 + 56);
  v5 = *(a1 + 64);
  *(a2 + 56) = *(a1 + 56);
  *(a1 + 56) = v4;
  ++*(a1 + 48);
  ++*(a2 + 48);
  *(a2 + 64) = v5;
  return a2;
}

void re::internal::Callable<re::PerfMTLCounterSampler::finishSampling(re::mtl::CommandBuffer const&)::$_0,void ()(re::mtl::CommandBuffer const&)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  re::SampleBufferObjectPool::release(*(a1 + 8) + 80, *(a1 + 16));
}

uint64_t re::internal::Callable<re::PerfMTLCounterSampler::finishSampling(re::mtl::CommandBuffer const&)::$_0,void ()(re::mtl::CommandBuffer const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D039E0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::PerfMTLCounterSampler::finishSampling(re::mtl::CommandBuffer const&)::$_0,void ()(re::mtl::CommandBuffer const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D039E0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::ColorHelpers::getColorGamutFromCGColorSpaceName(const void *a1, char *a2)
{
  if (CFEqual(a1, *MEMORY[0x1E695F1B0]) || CFEqual(a1, *MEMORY[0x1E695F108]) || CFEqual(a1, *MEMORY[0x1E695F110]) || CFEqual(a1, *MEMORY[0x1E695F1C0]))
  {
    v4 = 0;
LABEL_6:
    *a2 = v4;
    return 1;
  }

  if (CFEqual(a1, *MEMORY[0x1E695F0B8]) || CFEqual(a1, *MEMORY[0x1E695F198]) || CFEqual(a1, *MEMORY[0x1E695F0D8]) || CFEqual(a1, *MEMORY[0x1E695F0F0]) || CFEqual(a1, *MEMORY[0x1E695F0C8]))
  {
    v4 = 1;
    goto LABEL_6;
  }

  if (CFEqual(a1, *MEMORY[0x1E695F098]))
  {
    v4 = 2;
    goto LABEL_6;
  }

  if (CFEqual(a1, *MEMORY[0x1E695F150]) || CFEqual(a1, *MEMORY[0x1E695F0E8]) || (result = CFEqual(a1, *MEMORY[0x1E695F100]), result))
  {
    v4 = 3;
    goto LABEL_6;
  }

  return result;
}

uint64_t re::ColorHelpers::getColorGamutFromCGStandardLinearColorSpace(CGColorSpace *a1, char *a2)
{
  Name = CGColorSpaceGetName(a1);
  if (CFEqual(Name, *MEMORY[0x1E695F1B0]) || CFEqual(Name, *MEMORY[0x1E695F108]))
  {
    v4 = 0;
LABEL_4:
    *a2 = v4;
    return 1;
  }

  if (CFEqual(Name, *MEMORY[0x1E695F0F0]))
  {
    v4 = 1;
    goto LABEL_4;
  }

  if (CFEqual(Name, *MEMORY[0x1E695F098]))
  {
    v4 = 2;
    goto LABEL_4;
  }

  result = CFEqual(Name, *MEMORY[0x1E695F100]);
  if (result)
  {
    v4 = 3;
    goto LABEL_4;
  }

  return result;
}

uint64_t re::ColorHelpers::getCGColorSpaceNameForGamut(unint64_t a1, int a2, int a3, int a4)
{
  if (a1 > 2)
  {
    if (a4 == 3)
    {
      if (a3)
      {
        v4 = MEMORY[0x1E695F100];
      }

      else if (a2)
      {
        v4 = MEMORY[0x1E695F168];
      }

      else
      {
        v4 = MEMORY[0x1E695F1A8];
      }

      return *v4;
    }

    if (a4 == 2)
    {
      v4 = MEMORY[0x1E695F098];
      return *v4;
    }

    if (a4 != 1)
    {
      if (a2)
      {
        v4 = MEMORY[0x1E695F1C0];
      }

      else if (a3)
      {
        v4 = MEMORY[0x1E695F108];
      }

      else
      {
        v4 = MEMORY[0x1E695F1B0];
      }

      return *v4;
    }

    if ((a2 & 1) == 0 && (a3 & 1) == 0)
    {
      v4 = MEMORY[0x1E695F198];
      return *v4;
    }

    v4 = MEMORY[0x1E695F0D8];
    if (!a3)
    {
      v4 = MEMORY[0x1E695F0B8];
    }

    v5 = MEMORY[0x1E695F0F0];
    v6 = a2 == 0;
  }

  else
  {
    if (a2)
    {
      v4 = MEMORY[0x1E695F0E0];
      v5 = MEMORY[0x1E695F128];
    }

    else
    {
      v4 = MEMORY[0x1E695F0F8];
      v5 = MEMORY[0x1E695F1A0];
    }

    v6 = a3 == 0;
  }

  if (v6)
  {
    v4 = v5;
  }

  return *v4;
}

uint64_t re::ColorHelpers::getCGColorSpaceNameForPixelFormat(int a1, int a2)
{
  MTLPixelFormatGetInfoForDevice();
  isHDR = re::isHDR(a1);
  return re::ColorHelpers::getCGColorSpaceNameForGamut(0, 0, isHDR, a2);
}

uint64_t re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(int a1)
{
  {
    v3 = a1;
    a1 = v3;
    if (v2)
    {
      re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(re::ColorGamut)::g_supportedColorSpaces[0] = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
      qword_1EE1C71A8 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0F0]);
      qword_1EE1C71B0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F098]);
      qword_1EE1C71B8 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F100]);
      a1 = v3;
    }
  }

  return re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(re::ColorGamut)::g_supportedColorSpaces[a1];
}

uint64_t re::ColorHelpers::getCGColorSpaceForLDRFromColorGamut(int a1, int a2)
{
  if (!a2)
  {
    {
      v2 = &re::ColorHelpers::getCGColorSpaceForLDRFromColorGamut(re::ColorGamut,BOOL)::g_supportedLDRColorSpaces;
      return v2[a1];
    }

    v10 = a1;
    v2 = &re::ColorHelpers::getCGColorSpaceForLDRFromColorGamut(re::ColorGamut,BOOL)::g_supportedLDRColorSpaces;
    v9 = &re::ColorHelpers::getCGColorSpaceForLDRFromColorGamut(re::ColorGamut,BOOL)::g_supportedLDRColorSpaces;
    if (v7)
    {
      re::ColorHelpers::getCGColorSpaceForLDRFromColorGamut(re::ColorGamut,BOOL)::g_supportedLDRColorSpaces = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
      v8 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F198]);
      qword_1ECF1C6D0 = 0;
      unk_1ECF1C6D8 = 0;
      qword_1ECF1C6C8 = v8;
      goto LABEL_11;
    }

LABEL_12:
    a1 = v10;
    return v2[a1];
  }

  {
    v10 = a1;
    v2 = &re::ColorHelpers::getCGColorSpaceForLDRFromColorGamut(re::ColorGamut,BOOL)::g_supportedLDRColorSpaces;
    v9 = &re::ColorHelpers::getCGColorSpaceForLDRFromColorGamut(re::ColorGamut,BOOL)::g_supportedLDRColorSpaces;
    if (v4)
    {
      re::ColorHelpers::getCGColorSpaceForLDRFromColorGamut(re::ColorGamut,BOOL)::g_supportedLDRColorSpaces = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
      v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
      qword_1ECF1C6A8 = 0;
      unk_1ECF1C6B0 = 0;
      qword_1ECF1C6A0 = v5;
LABEL_11:
      __cxa_guard_release(v6);
      a1 = v10;
      v2 = v9;
      return v2[a1];
    }

    goto LABEL_12;
  }

  v2 = &re::ColorHelpers::getCGColorSpaceForLDRFromColorGamut(re::ColorGamut,BOOL)::g_supportedLDRColorSpaces;
  return v2[a1];
}

uint64_t ___ZN2re12ColorHelpers26getCGColorTransformToGamutENS_10ColorGamutE_block_invoke()
{
  CGColorSpaceFromWorkingColorGamut = re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(0);
  re::ColorHelpers::getCGColorTransformToGamut(re::ColorGamut)::transforms = MEMORY[0x1E6902490](CGColorSpaceFromWorkingColorGamut, 0);
  v1 = re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(3);
  qword_1EE1C7500 = MEMORY[0x1E6902490](v1, 0);
  v2 = re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(1);
  qword_1EE1C74F0 = MEMORY[0x1E6902490](v2, 0);
  v3 = re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(2);
  result = MEMORY[0x1E6902490](v3, 0);
  qword_1EE1C74F8 = result;
  return result;
}

__n128 re::ColorHelpers::computeGamutTransformMatrix@<Q0>(int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  {
    bzero(re::ColorHelpers::computeGamutTransformMatrix(re::ColorGamut,re::ColorGamut)::transforms, 0x300uLL);
  }

  if (re::ColorHelpers::computeGamutTransformMatrix(re::ColorGamut,re::ColorGamut)::onceToken != -1)
  {
    dispatch_once(&re::ColorHelpers::computeGamutTransformMatrix(re::ColorGamut,re::ColorGamut)::onceToken, &__block_literal_global_27);
  }

  v6 = &re::ColorHelpers::computeGamutTransformMatrix(re::ColorGamut,re::ColorGamut)::transforms[12 * a1 + 3 * a2];
  v7 = v6[1];
  *a3 = *v6;
  *(a3 + 16) = v7;
  result = v6[2];
  *(a3 + 32) = result;
  return result;
}

double ___ZN2re12ColorHelpers27computeGamutTransformMatrixENS_10ColorGamutES1__block_invoke()
{
  *&result = 1065353216;
  re::ColorHelpers::computeGamutTransformMatrix(re::ColorGamut,re::ColorGamut)::transforms = xmmword_1E3047670;
  unk_1EE1C71E0 = xmmword_1E3047680;
  xmmword_1EE1C71F0 = xmmword_1E30476A0;
  unk_1EE1C7200 = xmmword_1E30A1C40;
  xmmword_1EE1C7210 = xmmword_1E30A1C50;
  unk_1EE1C7220 = xmmword_1E30A1C60;
  xmmword_1EE1C7230 = xmmword_1E30A1C70;
  unk_1EE1C7240 = xmmword_1E30A1C80;
  xmmword_1EE1C7250 = xmmword_1E30A1C90;
  unk_1EE1C7260 = xmmword_1E30A1CA0;
  xmmword_1EE1C7270 = xmmword_1E30A1CB0;
  unk_1EE1C7280 = xmmword_1E30A1CC0;
  xmmword_1EE1C7290 = xmmword_1E30A1CD0;
  unk_1EE1C72A0 = xmmword_1E30A1CE0;
  xmmword_1EE1C72B0 = xmmword_1E30A1CF0;
  unk_1EE1C72C0 = xmmword_1E3047670;
  xmmword_1EE1C72D0 = xmmword_1E3047680;
  unk_1EE1C72E0 = xmmword_1E30476A0;
  xmmword_1EE1C72F0 = xmmword_1E30A1D00;
  unk_1EE1C7300 = xmmword_1E30A1D10;
  xmmword_1EE1C7310 = xmmword_1E30A1D20;
  unk_1EE1C7320 = xmmword_1E30A1D30;
  xmmword_1EE1C7330 = xmmword_1E30A1D40;
  unk_1EE1C7340 = xmmword_1E30A1D50;
  xmmword_1EE1C7350 = xmmword_1E30A1D60;
  unk_1EE1C7360 = xmmword_1E30A1D70;
  xmmword_1EE1C7370 = xmmword_1E30A1D80;
  unk_1EE1C7380 = xmmword_1E30A1D90;
  xmmword_1EE1C7390 = xmmword_1E30A1DA0;
  unk_1EE1C73A0 = xmmword_1E30A1DB0;
  xmmword_1EE1C73B0 = xmmword_1E3047670;
  unk_1EE1C73C0 = xmmword_1E3047680;
  xmmword_1EE1C73D0 = xmmword_1E30476A0;
  unk_1EE1C73E0 = xmmword_1E30A1DC0;
  xmmword_1EE1C73F0 = xmmword_1E30A1DD0;
  unk_1EE1C7400 = xmmword_1E30A1DE0;
  xmmword_1EE1C7410 = xmmword_1E30A1DF0;
  unk_1EE1C7420 = xmmword_1E30A1E00;
  xmmword_1EE1C7430 = xmmword_1E30A1E10;
  unk_1EE1C7440 = xmmword_1E30A1E20;
  xmmword_1EE1C7450 = xmmword_1E30A1E30;
  unk_1EE1C7460 = xmmword_1E30A1E40;
  xmmword_1EE1C7470 = xmmword_1E30A1E50;
  unk_1EE1C7480 = xmmword_1E30A1E60;
  xmmword_1EE1C7490 = xmmword_1E30A1E70;
  unk_1EE1C74A0 = xmmword_1E3047670;
  xmmword_1EE1C74B0 = xmmword_1E3047680;
  unk_1EE1C74C0 = xmmword_1E30476A0;
  return result;
}

uint64_t re::ColorHelpers::getColorGamutFromSerializationLiteral@<X0>(re::ColorHelpers *this@<X0>, _BYTE *a2@<X8>)
{
  result = strcmp(this, "srgb");
  if (result)
  {
    result = strcmp(this, "displayp3");
    if (result)
    {
      result = strcmp(this, "acescg");
      if (result)
      {
        result = strcmp(this, "itur2020");
        if (result)
        {
          *a2 = 0;
          return result;
        }

        v6 = 769;
      }

      else
      {
        v6 = 513;
      }
    }

    else
    {
      v6 = 257;
    }
  }

  else
  {
    v6 = 1;
  }

  *a2 = v6;
  return result;
}

void re::introspect_BlendShapeStorageMode(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B82F8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B8300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8300))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B83E0, "BlendShapeStorageMode", 1, 1, 1, 1);
      qword_1EE1B83E0 = &unk_1F5D0C658;
      qword_1EE1B8420 = &re::introspect_BlendShapeStorageMode(BOOL)::enumTable;
      dword_1EE1B83F0 = 9;
      __cxa_guard_release(&qword_1EE1B8300);
    }

    if (_MergedGlobals_432)
    {
      break;
    }

    _MergedGlobals_432 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B83E0, a2);
    v35 = 0xB693A90FE7D74D5CLL;
    v36 = "BlendShapeStorageMode";
    v39 = 0x31CD534126;
    v40 = "uint8_t";
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
      v6 = qword_1EE1B8420;
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
      xmmword_1EE1B8400 = v37;
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
    v28 = __cxa_guard_acquire(&qword_1EE1B82F8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Invalid";
      qword_1EE1B8338 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Sparse";
      qword_1EE1B8340 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "Complete";
      qword_1EE1B8348 = v34;
      __cxa_guard_release(&qword_1EE1B82F8);
    }
  }
}

void *re::allocInfo_BlendShapeDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8308))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B8428, "BlendShapeDefinition");
    __cxa_guard_release(&qword_1EE1B8308);
  }

  return &unk_1EE1B8428;
}

void re::initInfo_BlendShapeDefinition(re *this, re::IntrospectionBase *a2)
{
  v31[0] = 0xE22E282D2A316C6;
  v31[1] = "BlendShapeDefinition";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE1B8310, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B8310);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B8370 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "indices";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B8378 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::FixedArray<float>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "positionData";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x2800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B8380 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::IntrospectionInfo<re::FixedArray<float>>::get(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "normalData";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x4000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B8388 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::IntrospectionInfo<re::FixedArray<float>>::get(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "tangentData";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x5800000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1B8390 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::IntrospectionInfo<re::FixedArray<float>>::get(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "bitangentData";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x7000000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1B8398 = v29;
      __cxa_guard_release(&qword_1EE1B8310);
    }
  }

  *(this + 2) = 0x8800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1B8370;
  *(this + 9) = re::internal::defaultConstruct<re::BlendShapeDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendShapeDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendShapeDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendShapeDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v30 = v32;
}

double re::internal::defaultConstruct<re::BlendShapeDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  return result;
}

void re::internal::defaultDestruct<re::BlendShapeDefinition>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::FixedArray<CoreIKTransform>::deinit(a3 + 14);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 11);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 8);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 2);

  re::StringID::destroyString(a3);
}

double re::internal::defaultConstructV2<re::BlendShapeDefinition>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::BlendShapeDefinition>(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1 + 14);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 8);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 2);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_BlendShapeGroupDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8320, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8320))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B84B8, "BlendShapeGroupDefinition");
    __cxa_guard_release(&qword_1EE1B8320);
  }

  return &unk_1EE1B84B8;
}

void re::initInfo_BlendShapeGroupDefinition(re *this, re::IntrospectionBase *a2)
{
  v20[0] = 0x6979C06139805244;
  v20[1] = "BlendShapeGroupDefinition";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1B8328, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B8328);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "blendShapeGroupName";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B8350 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::FixedArray<re::BlendShapeDefinition>>::get(v10);
      v11 = (*(*v10 + 32))(v10, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "blendShapeDefinitions";
      *(v11 + 16) = &qword_1EE1B83A0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1000000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1B8358 = v11;
      v12 = re::introspectionAllocator(v11);
      re::introspect_BlendShapeStorageMode(v12, v13);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "storageMode";
      *(v14 + 16) = &qword_1EE1B83E0;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x2800000003;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1B8360 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_uint32_t(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "verticesPerBlendShape";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x2C00000004;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1B8368 = v18;
      __cxa_guard_release(&qword_1EE1B8328);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B8350;
  *(this + 9) = re::internal::defaultConstruct<re::BlendShapeGroupDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendShapeGroupDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendShapeGroupDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendShapeGroupDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v19 = v21;
}

void re::IntrospectionInfo<re::FixedArray<re::BlendShapeDefinition>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B8330, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B8330);
    if (a1)
    {
      re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&qword_1EE1B83A0);
      qword_1EE1B83A0 = &unk_1F5D03A78;
      __cxa_guard_release(&qword_1EE1B8330);
    }
  }

  if ((byte_1EE1B82F1 & 1) == 0)
  {
    v1 = qword_1EE1B8318;
    if (qword_1EE1B8318 || (v1 = re::allocInfo_BlendShapeDefinition(a1), qword_1EE1B8318 = v1, re::initInfo_BlendShapeDefinition(v1, v2), (byte_1EE1B82F1 & 1) == 0))
    {
      byte_1EE1B82F1 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B83A0, 0);
      *&algn_1EE1B83A8[8] = 0x1800000004;
      *&algn_1EE1B83A8[16] = v3;
      *&algn_1EE1B83A8[20] = 0;
      *&xmmword_1EE1B83C0 = 0;
      *(&xmmword_1EE1B83C0 + 1) = 0xFFFFFFFFLL;
      *algn_1EE1B83D0 = v1;
      *&algn_1EE1B83D0[8] = 0;
      qword_1EE1B83A0 = &unk_1F5D03A78;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1B83A0, &v13);
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
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x18uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1B83C0 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::BlendShapeGroupDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 44) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
}

void re::internal::defaultDestruct<re::BlendShapeGroupDefinition>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  re::FixedArray<re::BlendShapeDefinition>::deinit(a3 + 2);

  re::StringID::destroyString(a3);
}

uint64_t re::internal::defaultConstructV2<re::BlendShapeGroupDefinition>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 44) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::BlendShapeGroupDefinition>(re::StringID *a1)
{
  re::FixedArray<re::BlendShapeDefinition>::deinit(a1 + 2);

  re::StringID::destroyString(a1);
}

void *re::IntrospectionFixedArray<re::BlendShapeDefinition>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::BlendShapeDefinition>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::BlendShapeDefinition>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t re::IntrospectionFixedArray<re::BlendShapeDefinition>::init(uint64_t a1, uint64_t a2, re *a3, int a4, unint64_t a5)
{
  result = re::FixedArray<re::BlendShapeDefinition>::init<>(a2, a3, a5);
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
      v11 += 136;
    }

    while (a5 != v12);
  }

  return result;
}

uint64_t re::IntrospectionFixedArray<re::BlendShapeDefinition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 136 * a3;
}

{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 136 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

void *re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(void *a1)
{
  re::FixedArray<re::BlendShapeDefinition>::deinit(a1);

  return re::FixedArray<re::BlendShapeDefinition>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(void *a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<re::BlendShapeDefinition>::deinit(a1);
  v8 = re::FixedArray<re::BlendShapeDefinition>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 136 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 136;
        v11 -= 136;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 136 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
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
    return *(v2 + 16) + 136 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::fetchAllResources(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = 0;
  v29[1] = 0;
  v30 = 0;
  v28 = a1;
  v29[0] = 0;
  v31 = 0;
  v5 = re::DynamicArray<re::RigDataValue *>::add(v29, &v28);
  v6 = v30;
  if (v30)
  {
    while (1)
    {
      v7 = *(v32 + 8 * v6-- - 8);
      v30 = v6;
      ++v31;
      v8 = *(v7 + 18);
      if (v8 == 60)
      {
        if (!a3)
        {
          goto LABEL_34;
        }

        v19 = *v7;
        v20 = *(a3 + 8);
        v21 = *(a3 + 16);
        if (v21 >= v20)
        {
          v22 = v21 + 1;
          if (v20 < v21 + 1)
          {
            if (*a3)
            {
              if (v20)
              {
                v23 = 2 * v20;
              }

              else
              {
                v23 = 8;
              }

              if (v23 <= v22)
              {
                v24 = v21 + 1;
              }

              else
              {
                v24 = v23;
              }

              v5 = re::DynamicArray<float *>::setCapacity(a3, v24);
            }

            else
            {
              v5 = re::DynamicArray<float *>::setCapacity(a3, v22);
              ++*(a3 + 24);
            }
          }

          v21 = *(a3 + 16);
        }

        *(*(a3 + 32) + 8 * v21) = v19;
        ++*(a3 + 16);
        ++*(a3 + 24);
        if (!v6)
        {
          break;
        }
      }

      else
      {
        if (v8 == 58)
        {
          v12 = v7[16];
          v13 = *v7;
          v14 = *(a2 + 8);
          v15 = *(a2 + 16);
          if (v15 >= v14)
          {
            v16 = v15 + 1;
            if (v14 < v15 + 1)
            {
              if (*a2)
              {
                if (v14)
                {
                  v17 = 2 * v14;
                }

                else
                {
                  v17 = 8;
                }

                if (v17 <= v16)
                {
                  v18 = v15 + 1;
                }

                else
                {
                  v18 = v17;
                }

                v5 = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a2, v18);
              }

              else
              {
                v5 = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a2, v16);
                ++*(a2 + 24);
              }
            }

            v15 = *(a2 + 16);
          }

          v25 = *(a2 + 32) + 16 * v15;
          *v25 = v12;
          *(v25 + 8) = v13;
          ++*(a2 + 16);
          ++*(a2 + 24);
          goto LABEL_34;
        }

        if (v8 == 1 && (v9 = *(v7 + 6)) != 0)
        {
          v10 = *(v7 + 7);
          v11 = 80 * v9;
          do
          {
            v28 = v10;
            v5 = re::DynamicArray<re::RigDataValue *>::add(v29, &v28);
            v10 += 80;
            v11 -= 80;
          }

          while (v11);
          v6 = v30;
          if (!v30)
          {
            break;
          }
        }

        else
        {
LABEL_34:
          if (!v6)
          {
            break;
          }
        }
      }
    }
  }

  result = v29[0];
  if (v29[0] && v32)
  {
    v27 = *(*v29[0] + 40);

    return v27();
  }

  return result;
}

_anonymous_namespace_ *re::fillLinkedArgumentsWithReflection@<X0>(_anonymous_namespace_ *result@<X0>, os_unfair_lock_s *a2@<X1>, uint64_t a3@<X8>)
{
  v83 = *MEMORY[0x1E69E9840];
  v4 = *(result + 1);
  if (!v4)
  {
    goto LABEL_74;
  }

  v5 = *(result + 2);
  v62 = v5 + 200 * v4;
  while (1)
  {
    v67 = 0;
    v64[1] = 0;
    v65 = 0;
    v64[0] = 0;
    v66 = 0;
    if (*(v5 + 48))
    {
      v6 = 0uLL;
      *&v69.var0 = 0;
      v70 = 0u;
      v71 = 0u;
      *(&v72 + 1) = 0;
      memset(&v73[16], 0, 32);
      v69.var1 = &str_67;
      DWORD2(v70) = 0;
      LODWORD(v71) = 1;
      *&v72 = &str_67;
      *&v73[36] = 256;
      memset(v73, 0, 29);
      if (!*(v5 + 104))
      {
        goto LABEL_82;
      }

      v7 = *(v5 + 112);
      re::StringID::operator=(v7, &v69);
      *(v7 + 16) = v70;
      v8 = *(&v70 + 1);
      *(v7 + 32) = v71;
      *(v7 + 24) = v8;
      re::StringID::operator=((v7 + 40), &v71 + 1);
      v9 = DWORD2(v72);
      *(v7 + 60) = WORD6(v72);
      *(v7 + 56) = v9;
      re::FixedArray<re::MetalTypeInfo>::operator=((v7 + 64), v73);
      v10 = *&v73[24];
      *(v7 + 94) = *&v73[30];
      *(v7 + 88) = v10;
      *(v7 + 104) = v73[40];
      v11 = re::FixedArray<re::MetalTypeInfo>::deinit(v73);
      if (BYTE8(v71))
      {
        if (BYTE8(v71))
        {
        }
      }

      *(&v71 + 1) = 0;
      *&v72 = &str_67;
      if (*&v69.var0)
      {
        if (*&v69.var0)
        {
        }
      }

      CustomUniformsArgument = re::sg::CachedCompilationMaterial::getCustomUniformsArgument(*(v5 + 48));
      v3 = *(v5 + 104);
      if (v3 > 1)
      {
        v13 = CustomUniformsArgument;
        v3 = *(v5 + 112);
        re::StringID::operator=((v3 + 112), CustomUniformsArgument);
        *(v3 + 128) = *(v13 + 8);
        v14 = v13[3];
        *(v3 + 144) = *(v13 + 8);
        *(v3 + 136) = v14;
        re::StringID::operator=((v3 + 152), v13 + 5);
        v15 = *(v13 + 14);
        *(v3 + 172) = *(v13 + 30);
        *(v3 + 168) = v15;
        re::FixedArray<re::MetalTypeInfo>::operator=((v3 + 176), (v13 + 8));
        v16 = v13[11];
        *(v3 + 206) = *(v13 + 94);
        *(v3 + 200) = v16;
        *(v3 + 216) = *(v13 + 104);
        goto LABEL_73;
      }

      goto LABEL_83;
    }

    CachedFunction = re::FunctionReflectionCache::tryGetCachedFunction(a2, (((*(v5 + 40) << 6) - 0x61C8864680B583E9 + (*(v5 + 40) >> 2) + (*(v5 + 24) >> 1)) ^ *(v5 + 40)) - 0x61C8864680B583E9);
    if (!CachedFunction)
    {
      re::DynamicString::format("Unable to build provided material function (%s)", &v69, *(v5 + 32));
      v58 = 80;
      goto LABEL_77;
    }

    v18 = CachedFunction;
    v19 = [*CachedFunction functionType];
    if (v19 != 5)
    {
      break;
    }

    if (v18[3])
    {
      v3 = 0;
      do
      {
        v21 = v18[5];
        *&v69.var0 = 0;
        v69.var1 = &str_67;
        LOWORD(v70) = 0;
        *(&v70 + 1) = 0;
        LODWORD(v71) = 1;
        *(&v71 + 1) = 0;
        *&v72 = &str_67;
        DWORD2(v72) = 0;
        WORD6(v72) = 0;
        *&v73[32] = 0;
        *&v73[36] = 256;
        memset(v73, 0, 29);
        v73[40] = 0;
        v22 = [objc_msgSend(v21[v3] name)];
        *v81 = 0;
        *&v81[8] = &str_67;
        v24 = *v81;
        v25 = *&v81[8];
        *v81 = 0;
        *&v81[8] = &str_67;
        var0 = v69.var0;
        var1 = v69.var1;
        *&v69.var0 = v24;
        v69.var1 = v25;
        if (var0)
        {
          if (v81[0])
          {
            if (v81[0])
            {
            }
          }
        }

        LOWORD(v70) = v3;
        if ([v21[v3] type] == 28)
        {
          v29 = v21[v3];
          v63 = v29;
          MetalTypeInfoForPointer = re::makeMetalTypeInfoForPointer(&v63, v81);
          *(&v70 + 1) = *v81;
          LODWORD(v71) = *&v81[8];
          v31 = *&v81[16];
          v32 = *&v81[24];
          *&v81[16] = 0;
          *&v81[24] = &str_67;
          v33 = BYTE8(v71);
          v34 = v72;
          *(&v71 + 1) = v31;
          *&v72 = v32;
          if (v33)
          {
          }

          DWORD2(v72) = *&v81[32];
          WORD6(v72) = *&v81[36];
          re::FixedArray<re::MetalTypeInfo>::operator=(v73, &v81[40]);
          *&v73[24] = *&v82[16];
          *&v73[30] = *&v82[22];
          v35 = re::FixedArray<re::MetalTypeInfo>::deinit(&v81[40]);
          if (v81[16])
          {
            if (v81[16])
            {
            }
          }

          *&v81[16] = 0;
          *&v81[24] = &str_67;
          if (v29)
          {

            v63 = 0;
          }

          v73[40] = 1;
        }

        else if ([v21[v3] type] == 29)
        {
          v36 = [objc_msgSend(objc_msgSend(v21[v3] dataTypeDescription)];
          *v81 = 0;
          *&v81[8] = 1;
          *&v81[16] = 0;
          *&v81[24] = &str_67;
          *&v81[32] = 0;
          *&v81[36] = 0;
          *&v82[24] = 0;
          *&v82[28] = 256;
          *v82 = 0;
          *&v82[8] = 0;
          *&v81[40] = 0;
          *&v82[13] = 0;
          *(&v70 + 1) = *v81;
          LODWORD(v71) = *&v81[8];
          v38 = *&v81[16];
          v39 = *&v81[24];
          *&v81[16] = 0;
          *&v81[24] = &str_67;
          v40 = BYTE8(v71);
          v41 = v72;
          *(&v71 + 1) = v38;
          *&v72 = v39;
          if (v40)
          {
          }

          DWORD2(v72) = *&v81[32];
          WORD6(v72) = *&v81[36];
          re::FixedArray<re::MetalTypeInfo>::operator=(v73, &v81[40]);
          *&v73[24] = *&v82[16];
          *&v73[30] = *&v82[22];
          v42 = re::FixedArray<re::MetalTypeInfo>::deinit(&v81[40]);
          if (v81[16])
          {
            if (v81[16])
            {
            }
          }

          WORD6(v72) = 1;
        }

        re::DynamicArray<re::TypedArgument>::add(v64, &v69);
        v19 = re::FixedArray<re::MetalTypeInfo>::deinit(v73);
        if (BYTE8(v71))
        {
          if (BYTE8(v71))
          {
          }
        }

        *(&v71 + 1) = 0;
        *&v72 = &str_67;
        if (*&v69.var0)
        {
          if (*&v69.var0)
          {
          }
        }

        ++v3;
      }

      while (v3 < v18[3]);
    }

    v43 = v65;
    v45 = xmmword_1E3049620;
    v44 = xmmword_1E3049640;
    if (!v65)
    {
      if (!*(v5 + 96))
      {
        goto LABEL_73;
      }

      v56 = 0;
      v57 = v67;
LABEL_71:
      if (*(v5 + 104) == v56)
      {
        std::__copy_impl::operator()[abi:nn200100]<re::TypedArgument const*,re::TypedArgument const*,re::TypedArgument*>(v57, &v57[14 * v56], *(v5 + 112));
        goto LABEL_73;
      }

LABEL_84:
      re::internal::assertLog(4, v20, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
      _os_crash();
      __break(1u);
    }

    v3 = 0;
    do
    {
      v46 = v65;
      if (v65 <= v3)
      {
        *v74 = 0;
        v72 = 0u;
        *v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v69 = 0;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v81 = 136315906;
        *&v81[4] = "operator[]";
        *&v81[12] = 1024;
        *&v81[14] = 789;
        *&v81[18] = 2048;
        *&v81[20] = v3;
        *&v81[28] = 2048;
        *&v81[30] = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_82:
        v68 = 0;
        *v82 = v6;
        *&v82[16] = v6;
        *&v81[16] = v6;
        *&v81[32] = v6;
        *v81 = v6;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v74 = 136315906;
        *&v74[4] = "operator[]";
        v75 = 1024;
        v76 = 468;
        v77 = 2048;
        v78 = 0;
        v79 = 2048;
        v80 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_83:
        *v74 = 0;
        v72 = 0u;
        *v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v69 = 0;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v81 = 136315906;
        *&v81[4] = "operator[]";
        *&v81[12] = 1024;
        *&v81[14] = 468;
        *&v81[18] = 2048;
        *&v81[20] = 1;
        *&v81[28] = 2048;
        *&v81[30] = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_84;
      }

      v47 = &v67[14 * v3];
      if (*(v47 + 100) == 1)
      {
        v48 = v47[9];
        if (v48)
        {
          v49 = 0;
          v50 = (80 * v48 - 80) / 0x50uLL;
          v51 = vdupq_n_s64(v50);
          v52 = (v47[10] + 232);
          do
          {
            v53 = vdupq_n_s64(v49);
            v54 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v53, v45)));
            if (vuzp1_s16(v54, *v51.i8).u8[0])
            {
              *(v52 - 40) = v49;
            }

            if (vuzp1_s16(v54, *&v51).i8[2])
            {
              *(v52 - 20) = v49 + 1;
            }

            if (vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v51, vorrq_s8(v53, v44)))).i32[1])
            {
              *v52 = v49 + 2;
              v52[20] = v49 + 3;
            }

            v49 += 4;
            v52 += 80;
          }

          while (((v50 + 4) & 0x7FFFFFFFFFFFFFCLL) != v49);
        }
      }

      if (!*v47[1])
      {
        re::DynamicString::format("$%hu", &v69, *(v47 + 8));
        re::StringID::StringID(v81, &v69);
        v55 = re::StringID::operator=(v47, v81);
        if (v81[0])
        {
          if (v81[0])
          {
          }
        }

        *v81 = 0;
        *&v81[8] = &str_67;
        v19 = *&v69.var0;
        v45 = xmmword_1E3049620;
        v44 = xmmword_1E3049640;
        if (*&v69.var0 && (v69.var1 & 1) != 0)
        {
          v19 = (*(**&v69.var0 + 40))();
          v45 = xmmword_1E3049620;
          v44 = xmmword_1E3049640;
        }
      }

      ++v3;
    }

    while (v3 != v43);
    v56 = v65;
    v57 = v67;
    if (*(v5 + 96))
    {
      goto LABEL_71;
    }

    if (v65)
    {
      goto LABEL_71;
    }

LABEL_73:
    result = re::DynamicArray<re::TypedArgument>::deinit(v64);
    v5 += 200;
    if (v5 == v62)
    {
LABEL_74:
      *a3 = 0;
      return result;
    }
  }

  re::DynamicString::format("Provided material function (%s) is NOT a visible or stitchable function", &v69, *(v5 + 32));
  v58 = 60;
LABEL_77:
  re::makeMaterialBuilderErr(v58, &v69, v81);
  *a3 = 1;
  v59 = *v81;
  *v81 = 0;
  *(a3 + 8) = v59;
  if (*&v69.var0 && (v69.var1 & 1) != 0)
  {
    (*(**&v69.var0 + 40))();
  }

  return re::DynamicArray<re::TypedArgument>::deinit(v64);
}

void *re::DynamicArray<re::TypedArgument>::add(_anonymous_namespace_ *this, StringID *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::TypedArgument>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 112 * v4;
  re::StringID::StringID(v5, a2);
  *(v5 + 16) = a2[1].var0;
  var1 = a2[1].var1;
  *(v5 + 32) = a2[2].var0;
  *(v5 + 24) = var1;
  re::StringID::StringID((v5 + 40), (a2 + 40));
  v7 = a2[3].var1;
  *(v5 + 60) = WORD2(a2[3].var1);
  *(v5 + 56) = v7;
  result = re::FixedArray<re::MetalTypeInfo>::FixedArray((v5 + 64), &a2[4]);
  v9 = a2[5].var1;
  *(v5 + 94) = *(&a2[5].var1 + 6);
  *(v5 + 88) = v9;
  *(v5 + 104) = a2[6].var1;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::collectLinkedArgumentReflection(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = *(result + 1);
  if (v4)
  {
    v5 = a4;
    v6 = *(result + 2);
    v43 = &v6[25 * v4];
    do
    {
      v7 = v6[13];
      v8 = v6[14];
      v45[1] = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      if (v7)
      {
        re::DynamicArray<re::TypedArgument>::setCapacity(v45, v7);
        ++v47;
        if (v46 == -1)
        {
          v49 = 0;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v50 = 0;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v57 = 136315906;
          *&v57[4] = "copy";
          *&v57[12] = 1024;
          *&v57[14] = 643;
          *&v57[18] = 2048;
          *&v57[20] = 0;
          *&v57[28] = 2048;
          *&v57[30] = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        if (v46 >= v7)
        {
          std::__copy_impl::operator()[abi:nn200100]<re::TypedArgument const*,re::TypedArgument const*,re::TypedArgument*>(v8, &v8[14 * v7], v48);
        }

        else
        {
          re::DynamicArray<re::TypedArgument>::growCapacity(v45, v7);
          v9 = v46;
          v10 = &v8[14 * v46];
          std::__copy_impl::operator()[abi:nn200100]<re::TypedArgument const*,re::TypedArgument const*,re::TypedArgument*>(v8, v10, v48);
          if (v9 != v7)
          {
            v11 = 0;
            v12 = v48 + 112 * v46;
            v13 = 112 * v7 - 112 * v9;
            do
            {
              v14 = v12 + v11;
              re::StringID::StringID((v12 + v11), &v10[v11 / 8]);
              *(v14 + 16) = v10[v11 / 8 + 2];
              v15 = v10[v11 / 8 + 3];
              *(v14 + 32) = v10[v11 / 8 + 4];
              *(v14 + 24) = v15;
              re::StringID::StringID((v12 + v11 + 40), &v10[v11 / 8 + 5]);
              v16 = v10[v11 / 8 + 7];
              *(v14 + 60) = WORD2(v10[v11 / 8 + 7]);
              *(v14 + 56) = v16;
              re::FixedArray<re::MetalTypeInfo>::FixedArray((v12 + v11 + 64), &v10[v11 / 8 + 8]);
              v17 = v10[v11 / 8 + 11];
              *(v14 + 94) = *(&v10[v11 / 8 + 11] + 6);
              *(v14 + 88) = v17;
              *(v14 + 104) = v10[v11 / 8 + 13];
              v11 += 112;
            }

            while (v13 != v11);
          }

          v46 = v7;
          v5 = a4;
        }
      }

      else
      {
        re::DynamicArray<re::TypedArgument>::setCapacity(v45, 0);
      }

      ++v47;
      if (v6[5] == a3 && re::StringID::operator==(v6 + 3, v6 + 1))
      {
        v18 = *(a2 + 16);
        if (v18)
        {
          v19 = *(a2 + 32);
          v20 = 32 * v18;
          do
          {
            if (re::StringID::operator==(v19, v6 + 1))
            {
              *v57 = 0;
              *&v57[16] = 0;
              *&v57[24] = &str_67;
              *&v57[32] = 0;
              *&v59[16] = 0;
              *&v59[20] = 256;
              v58[1] = 0;
              *v59 = 0;
              v58[0] = 0;
              *&v59[5] = 0;
              *&v57[8] = 16;
              *&v57[36] = 1;
              *&v50.var0 = 0;
              v50.var1 = &str_67;
              LOWORD(v51) = 0;
              *(&v51 + 1) = 0;
              LODWORD(v52) = 1;
              *(&v52 + 1) = 0;
              *&v53 = &str_67;
              DWORD2(v53) = 0;
              WORD6(v53) = 0;
              *&v55[16] = 0;
              *&v55[20] = 256;
              *v55 = 0;
              v54 = 0uLL;
              *&v55[5] = 0;
              v56 = 0;
              re::StringID::operator=(&v50, v19);
              LOWORD(v51) = v19[2];
              *(&v51 + 1) = *v57;
              LODWORD(v52) = *&v57[8];
              re::StringID::operator=(&v52 + 1, &v57[16]);
              DWORD2(v53) = *&v57[32];
              WORD6(v53) = *&v57[36];
              re::FixedArray<re::MetalTypeInfo>::operator=(&v54, v58);
              *&v55[8] = *&v59[8];
              *&v55[14] = *&v59[14];
              re::DynamicArray<re::TypedArgument>::add(v45, &v50);
              v21 = re::FixedArray<re::MetalTypeInfo>::deinit(&v54);
              if (BYTE8(v52))
              {
                if (BYTE8(v52))
                {
                }
              }

              *(&v52 + 1) = 0;
              *&v53 = &str_67;
              if (*&v50.var0)
              {
                if (*&v50.var0)
                {
                }
              }

              v22 = re::FixedArray<re::MetalTypeInfo>::deinit(v58);
              if (v57[16])
              {
                if (v57[16])
                {
                }
              }
            }

            v19 += 4;
            v20 -= 32;
          }

          while (v20);
        }
      }

      re::StringID::StringID(v57, (v6 + 1));
      *&v50.var0 = 0;
      v50.var1 = 0;
      *&v51 = 0;
      v23 = re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v50, v5, v57);
      if (HIDWORD(v50.var1) == 0x7FFFFFFF)
      {
        v23 = re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v5, v50.var1, *&v50.var0);
        *(v23 + 8) = *v57;
        *(v23 + 16) = *&v57[8];
        *(v23 + 24) = 0;
        v24 = (v23 + 24);
        *v57 = 0;
        *&v57[8] = &str_67;
        *(v23 + 56) = 0;
        *(v23 + 32) = 0;
        *(v23 + 40) = 0;
        *(v23 + 48) = 0;
        if (v45[0])
        {
          v25 = v23;
          v26 = v46;
          *(v23 + 24) = v45[0];
          re::DynamicArray<re::TypedArgument>::setCapacity((v23 + 24), v26);
          ++*(v25 + 48);
          v27 = v46;
          v42 = v46;
          if (v46 >= *(v25 + 40))
          {
            re::DynamicArray<re::TypedArgument>::setCapacity(v24, v46);
            v23 = std::__copy_impl::operator()[abi:nn200100]<re::TypedArgument *,re::TypedArgument *,re::TypedArgument *>(&v49, v48, v48 + 112 * *(v25 + 40), *(v25 + 56));
            v31 = *(v25 + 40);
            if (v31 != v27)
            {
              v32 = v48;
              v33 = *(v25 + 56);
              v34 = 112 * v31;
              v35 = 112 * v42;
              do
              {
                v36 = v33 + v34;
                re::StringID::StringID((v33 + v34), (v32 + v34));
                *(v36 + 16) = *(v32 + v34 + 16);
                v37 = *(v32 + v34 + 24);
                *(v36 + 32) = *(v32 + v34 + 32);
                *(v36 + 24) = v37;
                re::StringID::StringID((v33 + v34 + 40), (v32 + v34 + 40));
                v38 = *(v32 + v34 + 56);
                *(v36 + 60) = *(v32 + v34 + 60);
                *(v36 + 56) = v38;
                v23 = re::FixedArray<re::MetalTypeInfo>::FixedArray((v33 + v34 + 64), v32 + v34 + 64);
                v39 = *(v32 + v34 + 88);
                *(v36 + 94) = *(v32 + v34 + 94);
                *(v36 + 88) = v39;
                *(v36 + 104) = *(v32 + v34 + 104);
                v35 -= 112;
                v32 += 112;
                v33 += 112;
              }

              while (v34 != v35);
            }
          }

          else
          {
            v23 = std::__copy_impl::operator()[abi:nn200100]<re::TypedArgument *,re::TypedArgument *,re::TypedArgument *>(&v49, v48, v48 + 112 * v46, *(v25 + 56));
            v28 = *(v25 + 40);
            if (v27 != v28)
            {
              v29 = (*(v25 + 56) + 112 * v42);
              v30 = -112 * v42 + 112 * v28;
              do
              {
                re::FixedArray<re::MetalTypeInfo>::deinit(v29 + 8);
                re::StringID::destroyString((v29 + 5));
                re::StringID::destroyString(v29);
                v29 += 14;
                v30 -= 112;
              }

              while (v30);
            }
          }

          v5 = a4;
          *(v25 + 40) = v42;
        }

        ++*(v5 + 40);
      }

      if (v57[0])
      {
        if (v57[0])
        {
        }
      }

      result = re::DynamicArray<re::TypedArgument>::deinit(v45);
      v6 += 25;
    }

    while (v6 != v43);
  }

  return result;
}

uint64_t re::validateMaterialFunctionReflection@<X0>(id *this@<X1>, uint64_t a2@<X0>, int a3@<W2>, const char *a4@<X3>, const char *a5@<X4>, const char *a6@<X5>, uint64_t a7@<X8>)
{
  result = re::mtl::Device::needsArgumentBufferTextureEmulation(this);
  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = result;
    v15 = *(a2 + 16);
    v16 = 200 * v13;
    while (1)
    {
      if (*v15 == a3 && !v15[6])
      {
        v17 = v15[13];
        if (!v17)
        {
          goto LABEL_20;
        }

        if (v17 >= 3)
        {
          re::DynamicString::format("Provided material function (%s) has too many arguments", &v23, v15[4]);
          goto LABEL_25;
        }

        v18 = v15[14];
        v19 = *(v18 + 48);
        if (*(v18 + 60) != 1 || (result = strcmp(*(v18 + 48), a4), result) && (result = strcmp(v19, a5), result) && (result = strcmp(v19, a6), result))
        {
          re::DynamicString::format("Provided material function (%s) has invalid first argument type: %s. Should be %s.", &v23, v15[4], v19, a4);
          goto LABEL_25;
        }

        if (v17 != 1)
        {
          if (!*(v18 + 216) || *(v18 + 172) != 1)
          {
            re::DynamicString::format("Provided material function (%s) has invalid second argument type: %s. The custom uniforms argument should be a pointer to a user defined constant or argument buffer structure.", &v23, v15[4], v19);
            goto LABEL_25;
          }

          if (v14)
          {
            v27 = 0;
            v24 = 0;
            v25 = 0;
            v23 = 0;
            v26 = 0;
            re::fetchAllResources(v18 + 136, &v23, 0);
            v20 = v25;
            result = v23;
            if (v23 && v27)
            {
              result = (*(*v23 + 40))();
            }

            if (v20)
            {
              break;
            }
          }
        }
      }

      v15 += 25;
      v16 -= 200;
      if (!v16)
      {
        goto LABEL_20;
      }
    }

    re::DynamicString::format("Provided material function (%s) contains textures in its second argument. This feature requires support for tier 2 argument buffers, which the current device does not have.", &v23, v15[4]);
LABEL_25:
    re::makeMaterialBuilderErr(0x50, &v23, &v28);
    result = v23;
    *a7 = 1;
    v21 = v28;
    v28 = 0;
    *(a7 + 8) = v21;
    if (result)
    {
      if (v24)
      {
        return (*(*result + 40))(result, v25);
      }
    }
  }

  else
  {
LABEL_20:
    *a7 = 0;
  }

  return result;
}

void re::forwardLinkedArguments(id *this@<X6>, uint64_t a2@<X0>, uint64_t a3@<X1>, _anonymous_namespace_ *a4@<X2>, _anonymous_namespace_ *a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, unsigned int a8@<W7>, uint64_t a9@<X8>)
{
  v89 = *MEMORY[0x1E69E9840];
  v12 = re::mtl::Device::needsArgumentBufferTextureEmulation(this);
  v47 = *(a3 + 16);
  if (!v47)
  {
    goto LABEL_63;
  }

  v13 = a3;
  v14 = v12;
  v15 = 0;
  v48 = a2;
  while (1)
  {
    v16 = *(v13 + 16);
    if (v16 <= v15)
    {
      v68[0] = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v82 = 136315906;
      *&v82[4] = "operator[]";
      v83 = 1024;
      v84 = 789;
      v85 = 2048;
      v86 = v15;
      v87 = 2048;
      v88 = v16;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v17 = *(v13 + 32) + 32 * v15;
    re::StringID::StringID(&v70, v17);
    v18 = *(v17 + 16);
    v73 = *(v17 + 24);
    v72 = v18;
    v19 = re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v74, v48, &v70);
    if (HIDWORD(v74.var1) == 0x7FFFFFFF)
    {
      break;
    }

    v20 = *(v48 + 16) + (HIDWORD(v74.var1) << 6);
    v21 = *(v20 + 40);
    if (!v21)
    {
      goto LABEL_64;
    }

    v49 = v15;
    v56 = 0;
    v22 = *(v20 + 56);
    v23 = v22 + 112 * v21;
    v57 = v23;
    do
    {
      if (v72 != *(v22 + 16))
      {
        goto LABEL_57;
      }

      re::StringID::StringID(&v74, v22);
      LOWORD(v75) = *(v22 + 16);
      v24 = *(v22 + 32);
      *(&v75 + 1) = *(v22 + 24);
      LODWORD(v76) = v24;
      re::StringID::StringID((&v76 + 8), (v22 + 40));
      v25 = *(v22 + 56);
      WORD6(v77) = *(v22 + 60);
      DWORD2(v77) = v25;
      re::FixedArray<re::MetalTypeInfo>::FixedArray(&v78, v22 + 64);
      v26 = *(v22 + 88);
      *&v80[6] = *(v22 + 94);
      *v80 = v26;
      v81 = *(v22 + 104);
      LOWORD(v75) = v73;
      if (*(&v78 + 1))
      {
        v27 = (v79 + 32);
        v28 = 80 * *(&v78 + 1);
        do
        {
          v29 = strlen(v74.var1);
          v63[0] = v74.var1;
          v63[1] = v29;
          v65 = 0;
          v66 = 0;
          v67 = 0;
          if (v29)
          {
            v30 = v29 + 1;
          }

          else
          {
            v30 = 0;
          }

          re::DynamicString::setCapacity(&v64, v30);
          re::DynamicString::operator=(&v64, v63);
          re::DynamicString::operator+(&v64, ".", v68);
          v31 = strlen(*(v27 - 1));
          v58[0] = *(v27 - 1);
          v58[1] = v31;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          if (v31)
          {
            v32 = v31 + 1;
          }

          else
          {
            v32 = 0;
          }

          re::DynamicString::setCapacity(&v59, v32);
          re::DynamicString::operator=(&v59, v58);
          re::DynamicString::operator+(v68, &v59, v82);
          if (v59 && (v60 & 1) != 0)
          {
            (*(*v59 + 40))();
          }

          if (v68[0])
          {
            if (v68[1])
            {
              (*(*v68[0] + 40))();
            }

            *v68 = 0u;
            v69 = 0u;
          }

          if (v64 && (v65 & 1) != 0)
          {
            (*(*v64 + 40))();
          }

          re::StringID::StringID(v68, v82);
          v33 = re::StringID::operator=((v27 - 4), v68);
          if (v68[0])
          {
            if (v68[0])
            {
            }
          }

          if (v14 && *(v27 + 2) == 58)
          {
            v34 = *(a7 + 16);
            if (v34 >= *(a7 + 8))
            {
              re::DynamicArray<re::MetalTypeInfo>::growCapacity(a7, v34 + 1);
              v34 = *(a7 + 16);
            }

            v35 = *(a7 + 32) + 80 * v34;
            v36 = *(v27 - 4);
            *(v35 + 8) = *(v27 - 6);
            *v35 = v36;
            re::StringID::StringID((v35 + 16), v27 - 1);
            v37 = *v27;
            *(v35 + 36) = *(v27 + 2);
            *(v35 + 32) = v37;
            re::FixedArray<re::MetalTypeInfo>::FixedArray((v35 + 40), (v27 + 2));
            v38 = *(v27 + 4);
            *(v35 + 70) = *(v27 + 38);
            *(v35 + 64) = v38;
            ++*(a7 + 16);
            ++*(a7 + 24);
          }

          if (*v82 && (v82[8] & 1) != 0)
          {
            (*(**v82 + 40))();
          }

          v27 += 20;
          v28 -= 80;
        }

        while (v28);
      }

      if ((v80[12] & 1) == 0)
      {
        re::DynamicArray<re::TypedArgument>::add(a4, &v74);
LABEL_45:
        v56 = 1;
        v43 = 1;
        goto LABEL_50;
      }

      re::DynamicArray<re::TypedArgument>::add(a5, &v74);
      ArgumentEncoderForBindlessArgument = re::createArgumentEncoderForBindlessArgument(&v74, this, a8, v68);
      if (LOBYTE(v68[0]) == 1)
      {
        v40 = *(a6 + 16);
        if (v40 >= *(a6 + 8))
        {
          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity(a6, v40 + 1);
          v40 = *(a6 + 16);
        }

        v41 = *(a6 + 32);
        v42 = v68[1];
        *(v41 + 8 * v40) = v68[1];
        ++*(a6 + 16);
        ++*(a6 + 24);
        if (v42)
        {
        }

        goto LABEL_45;
      }

      re::makeMaterialBuilderErr(0xA, v82, &v64);
      *a9 = 1;
      v44 = v64;
      v64 = 0;
      *(a9 + 8) = v44;
      if (*v82 && (v82[8] & 1) != 0)
      {
        (*(**v82 + 40))();
      }

      v43 = 0;
LABEL_50:
      v23 = v57;
      v19 = re::FixedArray<re::MetalTypeInfo>::deinit(&v78);
      if (BYTE8(v76))
      {
        if (BYTE8(v76))
        {
        }
      }

      *(&v76 + 1) = 0;
      *&v77 = &str_67;
      if (*&v74.var0)
      {
        if (*&v74.var0)
        {
        }
      }

      if (!v43)
      {
        goto LABEL_69;
      }

LABEL_57:
      v22 += 112;
    }

    while (v22 != v23);
    if ((v56 & 1) == 0)
    {
LABEL_64:
      re::DynamicString::format("Failed to resolve forwarded buffer at binding index %u. Unable to find argument at index %zu of type source function %s", &v74, v73, v72, v71);
      v45 = 30;
      goto LABEL_66;
    }

    if (v70)
    {
      if (v70)
      {
      }
    }

    v15 = v49 + 1;
    v13 = a3;
    if (v49 + 1 == v47)
    {
LABEL_63:
      *a9 = 0;
      return;
    }
  }

  re::DynamicString::format("Failed to resolve forwarded buffer at binding index %u. Unable to find type source function %s", &v74, v73, v71);
  v45 = 20;
LABEL_66:
  re::makeMaterialBuilderErr(v45, &v74, v82);
  *a9 = 1;
  v46 = *v82;
  *v82 = 0;
  *(a9 + 8) = v46;
  v19 = *&v74.var0;
  if (*&v74.var0 && (v74.var1 & 1) != 0)
  {
    v19 = (*(**&v74.var0 + 40))();
  }

LABEL_69:
  if (v70)
  {
    if (v70)
    {
    }
  }
}

uint64_t re::completeLinkedFunctions(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v4 = result;
  v52 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  v5 = *(result + 8);
  if (v5)
  {
    v6 = *(result + 16);
    v7 = v6 + 200 * v5;
    v8 = v6 + 160;
    do
    {
      v10 = v8 - 160;
      v9 = *(v8 - 160);
      result = *(v8 - 112);
      v12 = v9 == 1 || v9 == 3;
      if (!result)
      {
        v12 = 0;
      }

      if (v9 == 3 || v12)
      {
        if ((*(v8 - 104) & 0x10) != 0)
        {
          re::StringID::destroyString((v8 - 152));
          result = re::internal::compileTimeHornerHash<15ul>(31, "geometryModifierUIWithCustomParams", 0, 0, 34);
          *(v8 - 152) = 2 * result;
          *(v8 - 144) = "geometryModifierUIWithCustomParams";
        }

        else
        {
          if (v12)
          {
            re::sg::CachedCompilationMaterial::getMaterial(result, &v36);
            v14 = [v36 hasGeometryModifierUniforms];
          }

          else
          {
            v14 = *(v8 - 56) == 2;
          }

          v36 = 0u;
          v37 = 0u;
          re::DynamicString::setCapacity(&v36, 0);
          *(&v38[6] + 4) = 0u;
          *(&v38[4] + 4) = 0u;
          *(&v38[2] + 4) = 0u;
          *(v38 + 4) = 0u;
          *&v47 = "EnableGeometryModifierWithCustomParams";
          *(&v47 + 1) = 38;
          re::DynamicString::operator=(&v36, &v47);
          *(&v38[6] + 4) = 0u;
          *(&v38[4] + 4) = 0u;
          *(&v38[2] + 4) = 0u;
          *(v38 + 4) = 0u;
          BYTE4(v38[0]) = v14;
          LODWORD(v38[0]) = 5177397;
          re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a2, &v36, &v36);
          re::StringID::destroyString((v8 - 152));
          if (v14)
          {
            *(v8 - 152) = 2 * re::internal::compileTimeHornerHash<15ul>(31, "geometryModifierWithCustomParams", 0, 0, 32);
            *(v8 - 144) = "geometryModifierWithCustomParams";
            v15 = *(v8 - 56);
            if (v15 <= 1)
            {
              goto LABEL_64;
            }

            re::fetchAllResources(*(v8 - 48) + 136, v8 - 40, v8);
          }

          else
          {
            *(v8 - 152) = 2 * re::internal::compileTimeHornerHash<15ul>(31, "geometryModifier", 0, 0, 16);
            *(v8 - 144) = "geometryModifier";
          }

          result = v36;
          if (v36 && (BYTE8(v36) & 1) != 0)
          {
            result = (*(*v36 + 40))();
          }
        }
      }

      v8 += 200;
    }

    while (v10 + 200 != v7);
  }

  v16 = *(v4 + 32);
  if (v16)
  {
    v17 = 0;
    v15 = &v36;
    v18 = 200 * v16;
    v19 = *(v4 + 40);
    do
    {
      v20 = v19 + v17;
      v21 = *(v19 + v17);
      result = *(v19 + v17 + 48);
      if (result)
      {
        if (v21 != 4 && v21 != 2)
        {
          goto LABEL_61;
        }

        re::sg::CachedCompilationMaterial::getMaterial(result, &v36);
        v23 = [v36 hasConnectedLightSpillNodes];

        if (v23)
        {
          v36 = 0u;
          v37 = 0u;
          re::DynamicString::setCapacity(&v36, 0);
          *(&v38[6] + 4) = 0u;
          *(&v38[4] + 4) = 0u;
          *(&v38[2] + 4) = 0u;
          *(v38 + 4) = 0u;
          *&v47 = "EnableSurfaceShaderVideo";
          *(&v47 + 1) = 24;
          re::DynamicString::operator=(&v36, &v47);
          memset(&v38[1], 0, 60);
          v38[0] = 0x100750035;
          v25 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a2, &v36, &v36);
          if (v36)
          {
            if (BYTE8(v36))
            {
              (*(*v36 + 40))(v25);
            }
          }
        }

        re::sg::CachedCompilationMaterial::getMaterial(*(v20 + 48), &v36);
        v26 = [v36 hasPremultipliedAlpha];

        if (v26)
        {
          v36 = 0u;
          v37 = 0u;
          re::DynamicString::setCapacity(&v36, 0);
          *(&v38[6] + 4) = 0u;
          *(&v38[4] + 4) = 0u;
          *(&v38[2] + 4) = 0u;
          *(v38 + 4) = 0u;
          *&v47 = "EnableSurfaceShaderPremultipliedOutput";
          *(&v47 + 1) = 38;
          re::DynamicString::operator=(&v36, &v47);
          memset(&v38[1], 0, 60);
          v38[0] = 0x100540035;
          v28 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a2, &v36, &v36);
          if (v36)
          {
            if (BYTE8(v36))
            {
              (*(*v36 + 40))(v28);
            }
          }
        }

        re::sg::CachedCompilationMaterial::getMaterial(*(v20 + 48), &v36);
        v29 = [v36 matchUnlitColor];

        if (v29)
        {
          v36 = 0u;
          v37 = 0u;
          re::DynamicString::setCapacity(&v36, 0);
          *(&v38[6] + 4) = 0u;
          *(&v38[4] + 4) = 0u;
          *(&v38[2] + 4) = 0u;
          *(v38 + 4) = 0u;
          *&v47 = "MatchUnlitColor";
          *(&v47 + 1) = 15;
          re::DynamicString::operator=(&v36, &v47);
          memset(&v38[1], 0, 60);
          v38[0] = 0x1006C0035;
          v31 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a2, &v36, &v36);
          if (v36)
          {
            if (BYTE8(v36))
            {
              (*(*v36 + 40))(v31);
            }
          }
        }

        if ((*(v19 + v17 + 56) & 0x20) != 0)
        {
LABEL_56:
          v35 = v19 + v17;
          re::StringID::destroyString((v19 + v17 + 8));
          result = re::internal::compileTimeHornerHash<15ul>(31, "surfaceShaderUIWithCustomParams", 0, 0, 31);
          *(v35 + 8) = 2 * result;
          *(v35 + 16) = "surfaceShaderUIWithCustomParams";
          goto LABEL_61;
        }

        re::sg::CachedCompilationMaterial::getMaterial(*(v20 + 48), &v36);
        v32 = [v36 hasSurfaceShaderUniforms];
      }

      else
      {
        if (v21 != 4)
        {
          goto LABEL_61;
        }

        if ((*(v19 + v17 + 56) & 0x20) != 0)
        {
          goto LABEL_56;
        }

        v32 = *(v19 + v17 + 104) == 2;
      }

      v36 = 0u;
      v37 = 0u;
      re::DynamicString::setCapacity(&v36, 0);
      *(&v38[6] + 4) = 0u;
      *(&v38[4] + 4) = 0u;
      *(&v38[2] + 4) = 0u;
      *(v38 + 4) = 0u;
      *&v47 = "EnableSurfaceShaderWithCustomParams";
      *(&v47 + 1) = 35;
      re::DynamicString::operator=(&v36, &v47);
      *(&v38[6] + 4) = 0u;
      *(&v38[4] + 4) = 0u;
      *(&v38[2] + 4) = 0u;
      *(v38 + 4) = 0u;
      BYTE4(v38[0]) = v32;
      LODWORD(v38[0]) = 5111861;
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a2, &v36, &v36);
      v33 = (v19 + v17);
      re::StringID::destroyString((v19 + v17 + 8));
      if (v32)
      {
        v33[1] = 2 * re::internal::compileTimeHornerHash<15ul>(31, "surfaceShaderWithCustomParams", 0, 0, 29);
        v33[2] = "surfaceShaderWithCustomParams";
        v34 = v33[13];
        if (v34 <= 1)
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v39 = 136315906;
          v40 = "operator[]";
          v41 = 1024;
          v42 = 468;
          v43 = 2048;
          v44 = 1;
          v45 = 2048;
          v46 = v34;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_64:
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v39 = 136315906;
          v40 = "operator[]";
          v41 = 1024;
          v42 = 468;
          v43 = 2048;
          v44 = 1;
          v45 = 2048;
          v46 = v15;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        re::fetchAllResources(*(v19 + v17 + 112) + 136, v19 + v17 + 120, v19 + v17 + 160);
      }

      else
      {
        v33[1] = 2 * re::internal::compileTimeHornerHash<15ul>(31, "surfaceShader", 0, 0, 13);
        v33[2] = "surfaceShader";
      }

      result = v36;
      if (v36)
      {
        if (BYTE8(v36))
        {
          result = (*(*v36 + 40))();
        }
      }

LABEL_61:
      v17 += 200;
    }

    while (v18 != v17);
  }

  return result;
}

uint64_t re::fillTablesWithLinkedFunctionParameterDefaults(uint64_t result, void *a2, void *a3)
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = *(result + 8);
  if (v3)
  {
    v4 = a3;
    v6 = *(result + 16);
    v7 = &v6[200 * v3];
    do
    {
      if (*v6 - 3 <= 1 && *(v6 + 13) >= 2uLL)
      {
        v8 = *(v6 + 14);
        v9 = v8[23];
        if (v9)
        {
          v10 = v8[24];
          v11 = v10 + 80 * v9;
          do
          {
            if (*(v10 + 77) == 1)
            {
              re::DynamicString::format("%s.%s", &v69, v8[15], *(v10 + 24));
              if (v70)
              {
                v12 = v72;
              }

              else
              {
                v12 = v71;
              }

              if (v12)
              {
                v13 = *v12;
                if (v13)
                {
                  if (v70)
                  {
                    v14 = v72 + 1;
                  }

                  else
                  {
                    v14 = &v71[1];
                  }

                  v15 = *v14;
                  if (*v14)
                  {
                    v16 = v14 + 1;
                    do
                    {
                      v13 = 31 * v13 + v15;
                      v17 = *v16++;
                      v15 = v17;
                    }

                    while (v17);
                  }

                  v13 &= ~0x8000000000000000;
                }
              }

              else
              {
                v13 = 0x7FFFFFFFFFFFFFFFLL;
              }

              v68 = v13;
              v18 = *(v10 + 36);
              if (v18 > 0x34)
              {
                switch(v18)
                {
                  case '5':
                    v54 = v13;
                    LOBYTE(v73) = 0;
                    *buf = v13;
                    v43 = re::ShaderParameterTable::containsConstantKey(a2, buf);
                    *buf = 0;
                    if (!v43)
                    {
                      *&v55 = &v73;
                      *(&v55 + 1) = 1;
                      re::ConstantTable::setConstant(a2 + 16, &v54, &v55, 2);
                    }

                    v54 = 0;
                    break;
                  case '<':
                    v66 = v13;
                    v40 = re::ShaderParameterTable::containsBufferKey(a2, &v66);
                    v66 = 0;
                    if (!v40)
                    {
                      v41 = re::StringID::invalid(&v55);
                      if (v55)
                      {
                        if (v55)
                        {
                        }
                      }

                      v42 = re::StringID::invalid(&v55);
                      if (v55)
                      {
                        if (v55)
                        {
                        }
                      }
                    }

                    break;
                  case ':':
                    v67 = v13;
                    v20 = re::TextureParameterTable::containsTextureKey(v4, &v67);
                    v67 = 0;
                    if (!v20)
                    {
                      v21 = *(v10 + 64);
                      v22 = v68;
                      v23 = re::StringID::invalid(buf);
                      if (buf[0])
                      {
                        if (buf[0])
                        {
                        }
                      }

                      v24 = re::StringID::invalid(buf);
                      if (buf[0])
                      {
                        if (buf[0])
                        {
                        }
                      }

                      if (v21 < 0xA && ((0x2EFu >> v21) & 1) != 0)
                      {
                        v25 = qword_1E30A1EC0[v21];
                        LOBYTE(v55) = 1;
                        DWORD2(v55) = 1;
                        *&v56 = v22;
                        BYTE8(v56) = 0;
                        *&v57 = v25;
                        if (re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a3, &v68) == -1)
                        {
                          re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::internalAdd(a3, &v68, &v55 + 8);
                        }
                      }

                      else
                      {
                        v44 = *re::graphicsLogObjects(v24);
                        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 67109120;
                          *&buf[4] = v21;
                          _os_log_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_DEFAULT, "Texture type %u not supported", buf, 8u);
                        }
                      }

                      v4 = a3;
                    }

                    break;
                }
              }

              else
              {
                switch(*(v10 + 36))
                {
                  case 3:
                    v65 = v13;
                    LODWORD(v73) = 0;
                    *buf = v13;
                    v19 = re::ShaderParameterTable::containsConstantKey(a2, buf);
                    *buf = 0;
                    if (!v19)
                    {
                      *&v55 = &v73;
                      *(&v55 + 1) = 4;
                      re::ConstantTable::setConstant(a2 + 16, &v65, &v55, 1);
                    }

                    v65 = 0;
                    break;
                  case 4:
                    v64 = v13;
                    v73 = v13;
                    *buf = 0;
                    v35 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v35)
                    {
                      *&v55 = buf;
                      *(&v55 + 1) = 8;
                      re::ConstantTable::setConstant(a2 + 16, &v64, &v55, 32);
                    }

                    v64 = 0;
                    break;
                  case 5:
                    v63 = v13;
                    v55 = 0uLL;
                    v73 = v13;
                    v33 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v33)
                    {
                      *buf = &v55;
                      v75 = 16;
                      re::ConstantTable::setConstant(a2 + 16, &v63, buf, 33);
                    }

                    v63 = 0;
                    break;
                  case 6:
                    v62 = v13;
                    v55 = 0uLL;
                    v73 = v13;
                    v37 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v37)
                    {
                      *buf = &v55;
                      v75 = 16;
                      re::ConstantTable::setConstant(a2 + 16, &v62, buf, 34);
                    }

                    v62 = 0;
                    break;
                  case 7:
                    v61 = v13;
                    v55 = xmmword_1E3060D30;
                    v73 = v13;
                    v34 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v34)
                    {
                      *buf = &v55;
                      v75 = 16;
                      re::ConstantTable::setConstant(a2 + 16, &v61, buf, 48);
                    }

                    v61 = 0;
                    break;
                  case 0xB:
                    v60 = v13;
                    v55 = xmmword_1E3047670;
                    v56 = xmmword_1E3047680;
                    v57 = xmmword_1E30476A0;
                    v73 = v13;
                    v32 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v32)
                    {
                      *buf = &v55;
                      v75 = 48;
                      re::ConstantTable::setConstant(a2 + 16, &v60, buf, 49);
                    }

                    v60 = 0;
                    break;
                  case 0xF:
                    v59 = v13;
                    v55 = xmmword_1E3047670;
                    v56 = xmmword_1E3047680;
                    v57 = xmmword_1E30476A0;
                    v58 = xmmword_1E30474D0;
                    v73 = v13;
                    v30 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v30)
                    {
                      *buf = &v55;
                      v75 = 64;
                      re::ConstantTable::setConstant(a2 + 16, &v59, buf, 50);
                    }

                    v59 = 0;
                    break;
                  case 0x1D:
                    v53 = v13;
                    LODWORD(v73) = 0;
                    *buf = v13;
                    v31 = re::ShaderParameterTable::containsConstantKey(a2, buf);
                    *buf = 0;
                    if (!v31)
                    {
                      *&v55 = &v73;
                      *(&v55 + 1) = 4;
                      re::ConstantTable::setConstant(a2 + 16, &v53, &v55, 3);
                    }

                    v53 = 0;
                    break;
                  case 0x1E:
                    v52 = v13;
                    v73 = v13;
                    *buf = 0;
                    v29 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v29)
                    {
                      *&v55 = buf;
                      *(&v55 + 1) = 8;
                      re::ConstantTable::setConstant(a2 + 16, &v52, &v55, 4);
                    }

                    v52 = 0;
                    break;
                  case 0x1F:
                    v51 = v13;
                    v55 = 0uLL;
                    v73 = v13;
                    v26 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v26)
                    {
                      *buf = &v55;
                      v75 = 16;
                      re::ConstantTable::setConstant(a2 + 16, &v51, buf, 5);
                    }

                    v51 = 0;
                    break;
                  case 0x20:
                    v50 = v13;
                    v55 = 0uLL;
                    v73 = v13;
                    v39 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v39)
                    {
                      *buf = &v55;
                      v75 = 16;
                      re::ConstantTable::setConstant(a2 + 16, &v50, buf, 6);
                    }

                    v50 = 0;
                    break;
                  case 0x21:
                    v49 = v13;
                    LODWORD(v73) = 0;
                    *buf = v13;
                    v28 = re::ShaderParameterTable::containsConstantKey(a2, buf);
                    *buf = 0;
                    if (!v28)
                    {
                      *&v55 = &v73;
                      *(&v55 + 1) = 4;
                      re::ConstantTable::setConstant(a2 + 16, &v49, &v55, 7);
                    }

                    v49 = 0;
                    break;
                  case 0x22:
                    v48 = v13;
                    v73 = v13;
                    *buf = 0;
                    v38 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v38)
                    {
                      *&v55 = buf;
                      *(&v55 + 1) = 8;
                      re::ConstantTable::setConstant(a2 + 16, &v48, &v55, 8);
                    }

                    v48 = 0;
                    break;
                  case 0x23:
                    v47 = v13;
                    v55 = 0uLL;
                    v73 = v13;
                    v27 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v27)
                    {
                      *buf = &v55;
                      v75 = 16;
                      re::ConstantTable::setConstant(a2 + 16, &v47, buf, 9);
                    }

                    v47 = 0;
                    break;
                  case 0x24:
                    v46 = v13;
                    v55 = 0uLL;
                    v73 = v13;
                    v36 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v36)
                    {
                      *buf = &v55;
                      v75 = 16;
                      re::ConstantTable::setConstant(a2 + 16, &v46, buf, 10);
                    }

                    v46 = 0;
                    break;
                  default:
                    break;
                }
              }

              result = v69;
              if (v69)
              {
                if (v70)
                {
                  result = (*(*v69 + 40))();
                }
              }
            }

            v10 += 80;
          }

          while (v10 != v11);
        }
      }

      v6 += 200;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t *re::FixedArray<re::MetalTypeInfo>::operator=(uint64_t *result, uint64_t *a2)
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

uint64_t re::DynamicArray<re::TypedArgument>::deinit(uint64_t a1)
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
        v5 = 112 * v4;
        do
        {
          re::FixedArray<re::MetalTypeInfo>::deinit(v3 + 8);
          re::StringID::destroyString((v3 + 5));
          re::StringID::destroyString(v3);
          v3 += 14;
          v5 -= 112;
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

void *re::DynamicArray<re::TypedArgument>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::TypedArgument>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::TypedArgument>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::TypedArgument>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::TypedArgument>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
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
        v10 = &v8[14 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          *(v11 + 8) = *(v8 + 8);
          LODWORD(v12) = *(v8 + 8);
          v11[3] = v8[3];
          *(v11 + 8) = v12;
          LOBYTE(v12) = v8[5];
          v11[5] = v11[5] & 0xFFFFFFFFFFFFFFFELL | v8[5] & 1;
          v11[5] = v8[5] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[6] = v8[6];
          v8[6] = &str_67;
          v8[5] = 0;
          LODWORD(v12) = *(v8 + 14);
          *(v11 + 30) = *(v8 + 30);
          *(v11 + 14) = v12;
          v11[9] = 0;
          v11[10] = 0;
          v11[8] = 0;
          v11[8] = v8[8];
          v8[8] = 0;
          v13 = v11[10];
          v14 = v8[10];
          v11[9] = v8[9];
          v11[10] = v14;
          v8[9] = 0;
          v8[10] = v13;
          v15 = v8[11];
          *(v11 + 94) = *(v8 + 94);
          v11[11] = v15;
          *(v11 + 104) = *(v8 + 104);
          re::FixedArray<re::MetalTypeInfo>::deinit(v8 + 8);
          re::StringID::destroyString((v8 + 5));
          re::StringID::destroyString(v8);
          v11 += 14;
          v8 += 14;
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

void *std::__copy_impl::operator()[abi:nn200100]<re::TypedArgument const*,re::TypedArgument const*,re::TypedArgument*>(void *result, void *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = a3 + v6 * 8;
      re::StringID::operator=((a3 + v6 * 8), &v5[v6]);
      *(v7 + 16) = v5[v6 + 2];
      v8 = v5[v6 + 3];
      *(v7 + 32) = v5[v6 + 4];
      *(v7 + 24) = v8;
      re::StringID::operator=((a3 + v6 * 8 + 40), &v5[v6 + 5]);
      v9 = v5[v6 + 7];
      *(v7 + 60) = WORD2(v5[v6 + 7]);
      *(v7 + 56) = v9;
      result = re::FixedArray<re::MetalTypeInfo>::operator=((a3 + v6 * 8 + 64), &v5[v6 + 8]);
      v10 = v5[v6 + 11];
      *(v7 + 94) = *(&v5[v6 + 11] + 6);
      *(v7 + 88) = v10;
      *(v7 + 104) = v5[v6 + 13];
      v6 += 14;
    }

    while (&v5[v6] != a2);
  }

  return result;
}

BOOL re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(_BOOL8 result, uint64_t a2, void *a3)
{
  v3 = result;
  v4 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v7 = v5 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 16);
  result = re::StringID::operator==((v10 + (v8 << 6) + 8), a3);
  if (result)
  {
    LODWORD(v6) = v8;
LABEL_5:
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v11 = *(v10 + (v8 << 6));
  v6 = v11 & 0x7FFFFFFF;
  if ((v11 & 0x7FFFFFFF) == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else
  {
    result = re::StringID::operator==((v10 + (v6 << 6) + 8), a3);
    if (!result)
    {
      LODWORD(v12) = v6;
      while (1)
      {
        LODWORD(v8) = v12;
        v13 = *(v10 + (v6 << 6));
        v12 = v13 & 0x7FFFFFFF;
        LODWORD(v6) = 0x7FFFFFFF;
        if ((v13 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          break;
        }

        result = re::StringID::operator==((v10 + (v12 << 6) + 8), a3);
        v6 = v12;
        if (result)
        {
          LODWORD(v6) = v12;
          break;
        }
      }
    }
  }

LABEL_7:
  *v3 = v5;
  *(v3 + 8) = v7;
  *(v3 + 12) = v6;
  *(v3 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v33, 0, 36);
          *&v33[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v33, v9, v8);
          v11 = *v33;
          *v33 = *a1;
          *a1 = v11;
          v12 = *&v33[16];
          v13 = *(a1 + 16);
          *&v33[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v33[24];
          *&v33[24] = *(a1 + 24);
          v14 = *&v33[32];
          *(a1 + 24) = v15;
          ++*&v33[40];
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
                v21 = re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31)) % *(a1 + 24));
                v22 = *(v19 + 8);
                *(v21 + 8) = *(v21 + 8) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                *(v21 + 8) = *(v19 + 8) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                *(v21 + 16) = *(v19 + 16);
                *(v19 + 8) = 0;
                *(v19 + 16) = &str_67;
                v13 = *&v33[16];
                v23 = *&v33[16] + v17;
                *(v21 + 56) = 0;
                *(v21 + 48) = 0;
                *(v21 + 32) = 0;
                *(v21 + 40) = 0;
                *(v21 + 24) = 0;
                v24 = *(v23 + 32);
                *(v21 + 24) = *(v23 + 24);
                *(v21 + 32) = v24;
                *(v23 + 24) = 0;
                *(v23 + 32) = 0;
                v25 = *(v21 + 40);
                *(v21 + 40) = *(v23 + 40);
                *(v23 + 40) = v25;
                v26 = *(v21 + 56);
                *(v21 + 56) = *(v23 + 56);
                *(v23 + 56) = v26;
                ++*(v23 + 48);
                ++*(v21 + 48);
                v16 = *&v33[32];
              }

              ++v18;
              v17 += 64;
            }

            while (v18 < v16);
          }

          re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v33);
        }
      }

      else
      {
        if (v8)
        {
          v29 = 2 * v7;
        }

        else
        {
          v29 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v27 = *(a1 + 16);
    v28 = *(v27 + (v4 << 6));
  }

  else
  {
    v27 = *(a1 + 16);
    v28 = *(v27 + (v4 << 6));
    *(a1 + 36) = v28 & 0x7FFFFFFF;
  }

  v30 = v4 << 6;
  *(v27 + v30) = v28 | 0x80000000;
  v31 = *(a1 + 8);
  *(v27 + v30) = *(v31 + 4 * a2) | 0x80000000;
  *(v31 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v27 + (v4 << 6);
}

double re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 64;
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

_DWORD *re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(_DWORD *result)
{
  if ((*result & 0x80000000) != 0)
  {
    *result &= ~0x80000000;
    v2 = (result + 6);
    re::StringID::destroyString((result + 2));

    return re::DynamicArray<re::TypedArgument>::deinit(v2);
  }

  return result;
}

void *re::DynamicArray<re::MetalTypeInfo>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MetalTypeInfo>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MetalTypeInfo>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::MetalTypeInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MetalTypeInfo>::setCapacity(v5, a2);
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
          v12 = *v8;
          *(v11 + 2) = *(v8 + 2);
          *v11 = v12;
          v13 = (v8 + 2);
          LOBYTE(v12) = v8[2];
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v8[2] & 1;
          v11[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          LODWORD(v12) = *(v8 + 8);
          *(v11 + 18) = *(v8 + 18);
          *(v11 + 8) = v12;
          v11[6] = 0;
          v11[7] = 0;
          v11[5] = 0;
          v15 = v8[5];
          v14 = v8 + 5;
          v11[5] = v15;
          *v14 = 0;
          v16 = v11[7];
          v17 = v14[2];
          v11[6] = v14[1];
          v11[7] = v17;
          v14[1] = 0;
          v14[2] = v16;
          v18 = v14[3];
          *(v11 + 70) = *(v14 + 30);
          v11[8] = v18;
          re::FixedArray<re::MetalTypeInfo>::deinit(v14);
          re::StringID::destroyString(v13);
          v11 += 10;
          v8 = v14 + 5;
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

unint64_t makeValidInternal(uint64_t a1, id *a2, uint64_t a3, double a4)
{
  result = *a2;
  if (!*a2 || (*a1 | 2) != 2)
  {
    return result;
  }

  if (!*(a1 + 4))
  {
    *(a1 + 4) = [result pixelFormat];
  }

  if (*(a1 + 12) == -1)
  {
    *&a4 = fmaxf(*(a1 + 44) * [*a2 width], 0.0);
    v8 = *(a1 + 52);
    if (v8 == 2)
    {
      *&a4 = ceilf(*&a4);
    }

    else if (v8 == 1)
    {
      *&a4 = roundf(*&a4);
    }

    else
    {
      if (v8)
      {
        goto LABEL_13;
      }

      *&a4 = floorf(*&a4);
    }

    *(a1 + 12) = *&a4;
  }

LABEL_13:
  if (*(a1 + 16) != -1)
  {
    goto LABEL_21;
  }

  *&a4 = fmaxf(*(a1 + 48) * [*a2 height], 0.0);
  v9 = *(a1 + 56);
  if (v9 == 2)
  {
    *&a4 = ceilf(*&a4);
  }

  else if (v9 == 1)
  {
    *&a4 = roundf(*&a4);
  }

  else
  {
    if (v9)
    {
      goto LABEL_21;
    }

    *&a4 = floorf(*&a4);
  }

  *(a1 + 16) = *&a4;
LABEL_21:
  result = *(a1 + 20);
  if (result == -1)
  {
    result = [*a2 sampleCount];
    *(a1 + 20) = result;
  }

  if (*(a1 + 24) == -1)
  {
    v11 = [*a2 arrayLength];
    *(a1 + 24) = v11;
    result = *(a1 + 20);
    v10 = v11 == -1;
  }

  else
  {
    v10 = 0;
  }

  if (result < 2)
  {
    v14 = *(a1 + 12) == -1 || *(a1 + 16) == -1;
    if (!v14 && !v10)
    {
      result = [*a2 textureType];
      *(a1 + 8) = result;
    }

    v15 = *(a1 + 28);
    if (v15 == -2)
    {
      v12 = 32 - __clz(*(a1 + 12));
      v17 = 32 - __clz(*(a1 + 16));
      if (v12 <= v17)
      {
        v12 = v17;
      }
    }

    else
    {
      if (v15 != -1)
      {
        goto LABEL_45;
      }

      result = [*a2 mipmapLevelCount];
      *(a1 + 28) = result;
      v12 = 32 - __clz(*(a1 + 12));
      v16 = 32 - __clz(*(a1 + 16));
      if (v12 <= v16)
      {
        v12 = v16;
      }

      if (v12 >= result)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  *(a1 + 28) = v12;
LABEL_45:
  if (*(a1 + 32) == -1)
  {
    *(a1 + 32) = 0;
  }

  if (*(a1 + 88) == -1)
  {
    result = [*a2 protectionOptions];
    *(a1 + 88) = result & a3;
  }

  return result;
}

void re::RenderGraphTargetDescription::makeValid(uint64_t a1, id *a2, uint64_t a3)
{
  v5 = *a2;
  v7 = v5;
  makeValidInternal(a1, &v7, a3, v6);
  if (v5)
  {
  }
}

uint64_t re::RenderGraphTargetDescription::copySetProperties(uint64_t result, uint64_t a2)
{
  if (!*(result + 4))
  {
    *(result + 4) = *(a2 + 4);
  }

  v2 = *(result + 12);
  if (v2 == -1)
  {
    v2 = *(a2 + 12);
    *(result + 12) = v2;
  }

  v3 = *(result + 16);
  if (v3 == -1)
  {
    v3 = *(a2 + 16);
    *(result + 16) = v3;
  }

  v4 = *(result + 20);
  if (v4 == -1)
  {
    v4 = *(a2 + 20);
    *(result + 20) = v4;
  }

  v5 = *(result + 24);
  if (v5 == -1)
  {
    v5 = *(a2 + 24);
    *(result + 24) = v5;
  }

  if (v2 != -1 && v3 != -1 && v4 != -1 && v5 != -1)
  {
    if (v4 >= 2 && v5 > 1)
    {
      v6 = 8;
LABEL_29:
      *(result + 8) = v6;
      goto LABEL_30;
    }

    if (v5 < 2)
    {
      if (v5 == 1)
      {
        if (v4 > 1)
        {
          v6 = 4;
          goto LABEL_29;
        }

        if (v3 >= 2 && v2 >= 2 && v4 == 1)
        {
          v6 = 2;
          goto LABEL_29;
        }
      }
    }

    else if (v4 == 1)
    {
      v6 = 3;
      goto LABEL_29;
    }

    v6 = *(a2 + 8);
    goto LABEL_29;
  }

LABEL_30:
  v7 = *(result + 28);
  if (v7 == -1)
  {
    v7 = *(a2 + 28);
    *(result + 28) = v7;
  }

  if (*(result + 32) == -1)
  {
    *(result + 32) = *(a2 + 32);
  }

  if (*(result + 88) == -1)
  {
    *(result + 88) = *(a2 + 88);
  }

  if (v2 != -1 && v7 == -2 && v3 != -1)
  {
    v8 = 32 - __clz(v2);
    v9 = 32 - __clz(v3);
    if (v8 <= v9)
    {
      v8 = v9;
    }

    *(result + 28) = v8;
  }

  return result;
}

void *re::RenderGraphTargetDescription::valuesToString@<X0>(re::RenderGraphTargetDescription *this@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  v4 = a2 + 1;
  a2[2] = 0;
  a2[3] = 0;
  re::DynamicString::setCapacity(a2, 0);
  if (*v4)
  {
    *v4 = 1;
    v5 = a2[2];
  }

  else
  {
    *v4 = 0;
    v5 = a2 + 9;
  }

  *v5 = 0;
  re::DynamicString::setCapacity(a2, 0x400uLL);
  re::DynamicString::format("type: %d format: %d textureType: %d width: %u height: %u sampleCount: %u arrayLength: %u mipLevelCount: %u tonemapInPlace: %u widthMultiplier: %f heightMultiplier: %f widthRoundingMode: %d heightRoundingMode: %d initialUsageFlags: %d initialOptions: %d protectionOptions: %llu isMemoryless: %d", &v7, *this, *(this + 1), *(this + 2), *(this + 3), *(this + 4), *(this + 5), *(this + 6), *(this + 7), *(this + 8), *(this + 11), *(this + 12), *(this + 13), *(this + 14), *(this + 17), *(this + 18), *(this + 11), (*(this + 18) & 0x70) == 48);
  re::DynamicString::operator=(a2, &v7);
  if (v7 && (v8 & 1) != 0)
  {
    (*(*v7 + 40))();
  }

  return re::DynamicString::trimExcess(a2);
}

uint64_t re::RenderGraphTargetHandle::introspectionSerialize(uint64_t a1, uint64_t a2, void *a3, re::DynamicString *a4)
{
  re::DynamicString::format("%llu", &v6, *a3);
  re::DynamicString::operator=(a4, &v6);
  if (v6 && (v7 & 1) != 0)
  {
    (*(*v6 + 40))();
  }

  return 1;
}

uint64_t re::RenderGraphTargetHandle::introspectionDeserialize(int a1, int a2, int a3, void *a4, char *__str)
{
  v5 = __str;
  do
  {
    v7 = *v5++;
    v6 = v7;
    if (!v7)
    {
      __endptr = 0;
      *a4 = strtoull(__str, &__endptr, 10);
      return 1;
    }
  }

  while ((v6 & 0x80) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) != 0);
  v8 = *__str;
  if (*__str)
  {
    v9 = __str[1];
    if (v9)
    {
      v10 = __str + 2;
      do
      {
        v8 = 31 * v8 + v9;
        v11 = *v10++;
        v9 = v11;
      }

      while (v11);
    }

    v8 &= ~0x8000000000000000;
  }

  *a4 = v8;
  return 1;
}

void *re::introspect_RenderGraphTargetDimensionRoundingMode(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Floor";
      re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "Round";
      qword_1EE1C5D08 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 8) = 2;
      *(v15 + 16) = "Ceil";
      qword_1EE1C5D10 = v15;
    }
  }

  {
    v16 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::info, "RenderGraphTargetDimensionRoundingMode", 4, 4, 1, 1);
    *v16 = &unk_1F5D0C658;
    *(v16 + 8) = &re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::enumTable;
    *(v16 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::isInitialized)
    {
      return &re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v18);
    v3 = re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v18);
    if (v3)
    {
      return &re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::info;
    }
  }

  re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::info, a2);
  v17[0] = 0xE1B9E1AD2F7284E8;
  v17[1] = "RenderGraphTargetDimensionRoundingMode";
  xmmword_1EE1C5CD8 = v18;
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::info;
}

uint64_t *re::introspect_RenderGraphTargetHandle(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1B8550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8550))
  {
    re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B8558, "RenderGraphTargetHandle", 16, 8, 0, 0);
    qword_1EE1B8558 = &unk_1F5D0C698;
    qword_1EE1B8598 = re::internal::defaultConstruct<re::RenderGraphTargetHandle>;
    qword_1EE1B85A0 = re::RenderGraphTargetHandle::introspectionSerialize;
    qword_1EE1B85A8 = re::RenderGraphTargetHandle::introspectionDeserialize;
    qword_1EE1B85B8 = 0;
    unk_1EE1B85C0 = 0;
    qword_1EE1B85B0 = re::RenderGraphTargetHandle::introspectionDeepCopy;
    dword_1EE1B8568 = 11;
    __cxa_guard_release(&qword_1EE1B8550);
  }

  if (v2)
  {
    if (_MergedGlobals_433)
    {
      return &qword_1EE1B8558;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v10);
    v3 = _MergedGlobals_433;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v10);
    if (v3)
    {
      return &qword_1EE1B8558;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (_MergedGlobals_433)
    {
LABEL_11:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &qword_1EE1B8558;
    }
  }

  _MergedGlobals_433 = 1;
  re::IntrospectionRegistry::add(&qword_1EE1B8558, a2);
  v9[0] = 0xAF79EE31A5FB40E2;
  v9[1] = "RenderGraphTargetHandle";
  xmmword_1EE1B8578 = v10;
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &qword_1EE1B8558;
}

double re::internal::defaultConstruct<re::RenderGraphTargetHandle>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  result = NAN;
  a3[1] = -1;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphTargetHandle>(void *a1)
{
  *a1 = 0;
  result = NAN;
  a1[1] = -1;
  return result;
}

void textureDescFromTargetDesc(uint64_t a1@<X0>, void *a2@<X8>)
{
  re::mtl::makeDefaultDevice(&v15);
  v4 = *(a1 + 68);
  v6 = *(a1 + 4);
  v5 = *(a1 + 8);
  v13 = v6;
  v14 = v4;
  v7 = *(a1 + 36);
  v11 = v7;
  v12 = v5;
  TextureCompressionType = re::mtl::getTextureCompressionType(&v15, &v11, &v13, &v14, &v12);
  v9 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  *a2 = v9;
  if (([v9 respondsToSelector_] & 1) != 0 || objc_msgSend(v9, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v9 setCompressionType_];
  }

  [v9 setStorageMode_];
  [v9 setPixelFormat_];
  [v9 setWidth_];
  [v9 setHeight_];
  [v9 setTextureType_];
  if (*(a1 + 20) >= 2u)
  {
    [v9 setSampleCount_];
  }

  if (*(a1 + 24) != -1 && *(a1 + 8) <= 9u)
  {
    [v9 setArrayLength_];
  }

  if (*(a1 + 28) != -1)
  {
    [v9 setMipmapLevelCount_];
  }

  [v9 setUsage_];
  v10 = *(a1 + 72);
  if (v10 == 0xFFFF)
  {
    v10 = 0;
  }

  [v9 setResourceOptions_];
  [v9 setProtectionOptions_];
}

void re::RenderGraphCachingErrorCategoryImpl::~RenderGraphCachingErrorCategoryImpl(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E6906520);
}

_BYTE *re::RenderGraphCachingErrorCategoryImpl::message@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1 <= 2999)
  {
    if (a1 > 2000)
    {
      switch(a1)
      {
        case 2001:
          v3 = "Created a target outside of a provide() callback";
          return std::string::basic_string[abi:nn200100]<0>(a2, v3);
        case 2002:
          v3 = "Registered an external texture inside of a provide() callback";
          return std::string::basic_string[abi:nn200100]<0>(a2, v3);
        case 2003:
          v3 = "Accessed an input target outside of a provide() callback";
          return std::string::basic_string[abi:nn200100]<0>(a2, v3);
      }
    }

    else
    {
      switch(a1)
      {
        case 1000:
          v3 = "Used an incompatible graph feature";
          return std::string::basic_string[abi:nn200100]<0>(a2, v3);
        case 1001:
          v3 = "Created a graph outside of a provide() callback";
          return std::string::basic_string[abi:nn200100]<0>(a2, v3);
        case 2000:
          v3 = "Used an incompatible target feature";
          return std::string::basic_string[abi:nn200100]<0>(a2, v3);
      }
    }

LABEL_28:
    v3 = "Unknown RERenderGraph error";
    return std::string::basic_string[abi:nn200100]<0>(a2, v3);
  }

  if (a1 > 3002)
  {
    switch(a1)
    {
      case 3003:
        v3 = "Accessed an input buffer outside of a provide() callback";
        return std::string::basic_string[abi:nn200100]<0>(a2, v3);
      case 4000:
        v3 = "Created an unsupported node";
        return std::string::basic_string[abi:nn200100]<0>(a2, v3);
      case 4001:
        v3 = "Called an unsupported node function";
        return std::string::basic_string[abi:nn200100]<0>(a2, v3);
    }

    goto LABEL_28;
  }

  if (a1 == 3000)
  {
    v3 = "Used an incompatible buffer feature";
  }

  else if (a1 == 3001)
  {
    v3 = "Created a buffer outside of a provide() callback";
  }

  else
  {
    v3 = "Registered an external buffer inside of a provide() callback";
  }

  return std::string::basic_string[abi:nn200100]<0>(a2, v3);
}

Class re::getVFXSceneClass(re *this)
{
  result = qword_1EE1B85D0;
  if (!qword_1EE1B85D0)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFX.VFXScene");
      if (result)
      {
        qword_1EE1B85D0 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFX.VFXScene", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXMemorySerializationClass(re *this)
{
  result = qword_1EE1B85D8;
  if (!qword_1EE1B85D8)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXMemorySerialization");
      if (result)
      {
        qword_1EE1B85D8 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXMemorySerialization", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXSceneLoadOptionsClass(re *this)
{
  result = qword_1EE1B85E0;
  if (!qword_1EE1B85E0)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXSceneLoadOptions");
      if (result)
      {
        qword_1EE1B85E0 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXSceneLoadOptions", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXWorldClass(re *this)
{
  result = qword_1EE1B85E8;
  if (!qword_1EE1B85E8)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXWorld");
      if (result)
      {
        qword_1EE1B85E8 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXWorld", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXNodeClass(re *this)
{
  result = qword_1EE1B85F0;
  if (!qword_1EE1B85F0)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXNode");
      if (result)
      {
        qword_1EE1B85F0 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXNode", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXAssetNodeClass(re *this)
{
  result = qword_1EE1B85F8;
  if (!qword_1EE1B85F8)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXAssetNode");
      if (result)
      {
        qword_1EE1B85F8 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXAssetNode", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}