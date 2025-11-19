uint64_t re::internal::GeomConnectivityNonManifold::classifyFaces(re::internal::GeomConnectivityNonManifold *this)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = *(this + 26);
  v28 = 0;
  v25[1] = 0;
  v26 = 0;
  v25[0] = 0;
  v27 = 0;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = *(this + 8);
      if (v7 <= i)
      {
        goto LABEL_42;
      }

      if (*(*(this + 10) + i))
      {
        v7 = *(this + 18);
        if (i)
        {
          v1 = i - 1;
          if (v7 <= i - 1)
          {
            goto LABEL_44;
          }

          v8 = *(*(this + 20) + 4 * v1);
        }

        else
        {
          v8 = 0;
        }

        if (v7 <= i)
        {
          goto LABEL_43;
        }

        v1 = *(*(this + 20) + 4 * i);
        v7 = v1 - v8;
        re::DynamicArray<float>::resize(v25, v7);
        if (v1 > v8)
        {
          v9 = 0;
          v2 = v8;
          v1 = *(this + 28);
          v3 = v26;
          v10 = v28;
          v11 = v1 - v8;
          if (v1 < v8)
          {
            v11 = 0;
          }

          while (1)
          {
            if (v11 == v9)
            {
              goto LABEL_40;
            }

            if (v3 == v9)
            {
              break;
            }

            *(v10 + 4 * v9) = *(*(this + 30) + 4 * v2++);
            if (v7 == ++v9)
            {
              goto LABEL_16;
            }
          }

LABEL_41:
          *v30 = 0;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v31 = 136315906;
          v32 = "operator[]";
          v33 = 1024;
          v34 = 789;
          v35 = 2048;
          v36 = v3;
          v37 = 2048;
          v38 = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_42:
          *v30 = 0;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v31 = 136315906;
          v32 = "operator[]";
          v33 = 1024;
          v34 = 797;
          v35 = 2048;
          v36 = i;
          v37 = 2048;
          v38 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_43:
          *v30 = 0;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v31 = 136315906;
          v32 = "operator[]";
          v33 = 1024;
          v34 = 797;
          v35 = 2048;
          v36 = i;
          v37 = 2048;
          v38 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_44:
          *v30 = 0;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v31 = 136315906;
          v32 = "operator[]";
          v33 = 1024;
          v34 = 797;
          v35 = 2048;
          v36 = v1;
          v37 = 2048;
          v38 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_16:
        if (v26)
        {
          v12 = 0;
          v13 = 1;
          do
          {
            v7 = *(v28 + 4 * v12);
            v1 = *(this + 8);
            if (v1 <= v7)
            {
              goto LABEL_39;
            }

            *(*(this + 10) + v7) |= 0x10u;
            v12 = v13;
          }

          while (v26 > v13++);
        }
      }
    }
  }

  v15 = *(this + 48);
  if ((v15 & 0x3FFFFFFFCLL) != 0)
  {
    v7 = 0;
    i = (v15 >> 2);
    v1 = &v30[1];
    do
    {
      v16 = re::internal::GeomConnectivityNonManifold::faceVertices(this, v7, v30);
      v17 = 0;
      v18 = &v30[1];
      v19 = v16 - 1;
      do
      {
        v20 = v17 + 1;
        if (v17 + 1 < v16)
        {
          v2 = v30[v17];
          v21 = v18;
          for (j = v19; j; --j)
          {
            v23 = *v21++;
            if (v2 == v23)
            {
              v3 = *(this + 8);
              if (v3 <= v2)
              {
                v29 = 0;
                v42 = 0u;
                v43 = 0u;
                v40 = 0u;
                v41 = 0u;
                v39 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v31 = 136315906;
                v32 = "operator[]";
                v33 = 1024;
                v34 = 789;
                v35 = 2048;
                v36 = v2;
                v37 = 2048;
                v38 = v3;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_38:
                v29 = 0;
                v42 = 0u;
                v43 = 0u;
                v40 = 0u;
                v41 = 0u;
                v39 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v31 = 136315906;
                v32 = "operator[]";
                v33 = 1024;
                v34 = 789;
                v35 = 2048;
                v36 = v7;
                v37 = 2048;
                v38 = v3;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_39:
                *v30 = 0;
                v42 = 0u;
                v43 = 0u;
                v40 = 0u;
                v41 = 0u;
                v39 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v31 = 136315906;
                v32 = "operator[]";
                v33 = 1024;
                v34 = 789;
                v35 = 2048;
                v36 = v7;
                v37 = 2048;
                v38 = v1;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_40:
                *v30 = 0;
                v42 = 0u;
                v43 = 0u;
                v40 = 0u;
                v41 = 0u;
                v39 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v31 = 136315906;
                v32 = "operator[]";
                v33 = 1024;
                v34 = 797;
                v35 = 2048;
                v36 = v2;
                v37 = 2048;
                v38 = v1;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_41;
              }

              *(*(this + 10) + v2) |= 2u;
              v3 = *(this + 8);
              if (v3 <= v7)
              {
                goto LABEL_38;
              }

              *(*(this + 10) + v7) |= 0x20u;
            }
          }
        }

        --v19;
        ++v18;
        v17 = v20;
      }

      while (v20 != v16 - 1);
      ++v7;
    }

    while (v7 != i);
  }

  result = v25[0];
  if (v25[0])
  {
    if (v28)
    {
      return (*(*v25[0] + 40))();
    }
  }

  return result;
}

uint64_t re::internal::GeomConnectivityNonManifold::faceVertices(re::internal::GeomConnectivityNonManifold *this, int a2, unsigned int *a3)
{
  v3 = (4 * a2);
  v4 = *(this + 48);
  if (v4 <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(this + 50);
  *a3 = *(v5 + 4 * v3);
  v6 = v3 | 1;
  if (v4 <= v6)
  {
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  a3[1] = *(v5 + 4 * v6);
  v7 = v3 | 2;
  if (v4 <= v7)
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

  a3[2] = *(v5 + 4 * v7);
  v8 = v3 | 3;
  if (v4 <= v8)
  {
    goto LABEL_12;
  }

  v9 = *(v5 + 4 * v8);
  a3[3] = v9;
  if (v9 == -1)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t re::internal::GeomConnectivityNonManifold::build(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  re::DynamicArray<re::GeomCell4>::operator=(a2 + 8, (a1 + 8));
  if (!*(a2 + 16))
  {
    re::DynamicArray<re::BlendNode>::setCapacity((a2 + 8), 1uLL);
  }

  re::internal::GeomConnectivityNonManifold::computeIncidenceRelations(a2, a1);
  *(a2 + 64) = 0;
  ++*(a2 + 72);
  v4 = *(a2 + 264) >> 1;
  v5 = *(a2 + 104);
  if (v5 <= (*(a2 + 384) >> 2))
  {
    v5 = *(a2 + 384) >> 2;
  }

  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v8 = 0;
  re::DynamicArray<unsigned char>::resize((a2 + 48), v6, &v8);
  re::internal::GeomConnectivityNonManifold::classifyEdges(a2);
  re::internal::GeomConnectivityNonManifold::classifyVertices(a2);
  re::internal::GeomConnectivityNonManifold::classifyFaces(a2);
  return 1;
}

uint64_t re::HashBrown<re::internal::anonymous namespace::VertexPair,re::internal::anonymous namespace::EdgeData,re::internal::anonymous namespace::HashEdge,re::internal::anonymous namespace::HashEdge,void,false>::find(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  if (!a1[7])
  {
    return -1;
  }

  v4 = a1[2];
  if (v4 < 0x10 || !a1[3])
  {
    return -1;
  }

  v7 = v4 >> 4;
  v8 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v11 = v10 ^ (v10 >> 31);
  if (v9 == v11)
  {
    v11 = 0;
  }

  v12 = v11 ^ v9;
  v13 = v12 % v7;
  v14 = *a1;
  v15 = vdupq_n_s8(v12 & 0x7F);
  v16 = xmmword_1E304FAD0;
  v17.i64[0] = -1;
  for (v17.i64[1] = -1; ; v17.i64[1] = -1)
  {
    v18 = *(v14 + 16 * v13);
    v19 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v15, v18), v16)))), 0x3830282018100800);
    v20 = __clz(__rbit64(v19));
    if (v20 <= 0x3F)
    {
      break;
    }

LABEL_15:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v18, v17), v16)))), 0x3830282018100800))
    {
      return -1;
    }

    v28 = v16;
    v29 = v15;
    if (++v13 == v7)
    {
      v13 = 0;
    }

    result = -1;
    v16 = v28;
    v15 = v29;
    v17.i64[0] = -1;
    if (v13 == v27)
    {
      return result;
    }
  }

  v21 = 16 * v13;
  while (1)
  {
    result = v20 + v21;
    v23 = (a1[1] + 16 * (v20 + v21));
    v25 = *v23;
    v24 = v23[1];
    if (v25 == a2 && v24 == a3)
    {
      return result;
    }

    if (v20 <= 0x3E)
    {
      v20 = __clz(__rbit64((-2 << v20) & v19));
      if (v20 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_15;
  }
}

unsigned int *re::HashBrown<re::internal::anonymous namespace::VertexPair,re::internal::anonymous namespace::EdgeData,re::internal::anonymous namespace::HashEdge,re::internal::anonymous namespace::HashEdge,void,false>::internalAdd(uint64_t *a1, unsigned int *a2, void *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = 0xBF58476D1CE4E5B9 * (a2[1] ^ (a2[1] >> 30));
  v11 = (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31);
  if (v9 == v11)
  {
    v11 = 0;
  }

  v12 = v11 ^ v9;
  v13 = v7 >> 4;
  v14 = v12 % (v7 >> 4);
  v15 = *a1;
  v16 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v16 >= 0x40)
  {
    do
    {
      if (v14 + 1 == v13)
      {
        v14 = 0;
      }

      else
      {
        ++v14;
      }

      v16 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v15 + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v16 > 0x3F);
  }

  v17 = v15 + 16 * v14;
  v18 = *(v17 + v16);
  *(v17 + v16) = v12 & 0x7F;
  v19 = v16 + 16 * v14;
  *(a1[1] + 16 * v19) = *a2;
  *(a1[1] + 16 * v19 + 8) = *a3;
  if (v18 == 255)
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
  v22 = (a1[1] + 16 * v19);
  v23 = 0xBF58476D1CE4E5B9 * (*v22 ^ (*v22 >> 30));
  v24 = (0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31);
  v25 = v22[1] ^ (v22[1] >> 30);
  v26 = (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v25) ^ ((0xBF58476D1CE4E5B9 * v25) >> 27))) ^ ((0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v25) ^ ((0xBF58476D1CE4E5B9 * v25) >> 27))) >> 31);
  if (v24 == v26)
  {
    v26 = 0;
  }

  a1[5] ^= v24 ^ v26;
  return v22 + 2;
}

uint64_t re::HashBrown<re::internal::anonymous namespace::VertexPair,re::internal::anonymous namespace::EdgeData,re::internal::anonymous namespace::HashEdge,re::internal::anonymous namespace::HashEdge,void,false>::resize(__int128 *a1)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  v4 = (((151 * (v2 + 1)) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  v5 = ((3 * v3) >> 1) & 0x1FFFFFFFFFFFFFFLL;
  if (v4 > (192 * v3) >> 7)
  {
    v5 = (((151 * (v2 + 1)) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  }

  v6 = (v5 << 7) / 0x97;
  v7 = *(a1 + 7);
  v27 = 0u;
  *v28 = 0u;
  if (v4 <= v3)
  {
    v8 = v2 + 1;
  }

  else
  {
    v8 = v6;
  }

  memset(&v28[16], 0, 32);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(&v27, v7, v8);
  v25[0] = a1;
  v10 = *(a1 + 2);
  if (v10 >= 0x10)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v10 >> 4;
    v14 = xmmword_1E304FAD0;
    v9.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v12), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      if (v15 != 0xFFFFLL)
      {
        break;
      }

      v11 -= 16;
      ++v12;
      if (!--v13)
      {
        goto LABEL_14;
      }
    }

    v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
    v17 = v16 - v11;
    v25[1] = v15 ^ 0xFFFFLL;
    v26 = v16 - v11;
    if (v16 + 1 != v11)
    {
      do
      {
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v25);
        v17 = v26;
      }

      while (v26 != -1);
      v10 = *(a1 + 2);
    }
  }

LABEL_14:
  v18 = *&v28[40];
  *&v28[40] = *(a1 + 7);
  v19 = v27;
  v20 = *v28;
  v27 = *a1;
  *v28 = v10;
  v21 = *&v28[16];
  v22 = *(a1 + 40);
  *(a1 + 6) = *&v28[32];
  *(a1 + 7) = v18;
  *&v28[24] = v22;
  v23 = *(a1 + 24);
  *a1 = v19;
  a1[1] = v20;
  a1[2] = v21;
  *&v28[8] = v23;
}

re *re::GeomMesh::freeName(re *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = this;
    v3 = re::globalAllocators(this);
    this = (*(*v3[2] + 40))(v3[2], v1);
    *v2 = 0;
  }

  return this;
}

re *re::GeomMesh::setName(re *this, const char *a2)
{
  if (*this != a2)
  {
    v3 = this;
    this = re::GeomMesh::freeName(this);
    if (a2)
    {
      v4 = strlen(a2);
      v5 = re::globalAllocators(v4);
      v6 = (*(*v5[2] + 32))(v5[2], v4 + 1, 0);
      *v3 = v6;

      return strcpy(v6, a2);
    }

    else
    {
      *v3 = 0;
    }
  }

  return this;
}

re::GeomMesh *re::GeomMesh::GeomMesh(re::GeomMesh *this, const char *a2)
{
  *this = 0;
  *(this + 2) = 0;
  bzero(this + 16, 0x2C8uLL);
  re::internal::GeomBaseMesh::GeomBaseMesh((this + 16));
  re::GeomMesh::setName(this, a2);
  *(this + 91) = re::internal::GeomAttributeManager::addAttribute((this + 64), "vertexPosition", 1, 7);
  return this;
}

void re::GeomMesh::copy(uint64_t **this, uint64_t **a2)
{
  if (this != a2)
  {
    re::GeomMesh::clear(a2);
    re::GeomMesh::setName(a2, *this);
    *(a2 + 4) = *(this + 4);
    re::DynamicArray<re::GeomCell4>::operator=((a2 + 3), this + 3);
    if (!a2[4])
    {
      re::DynamicArray<re::BlendNode>::setCapacity(a2 + 3, 1uLL);
    }

    re::internal::GeomAttributeManager::copy((this + 8), (a2 + 8));
    *(a2 + 2) = *(this + 2);
    v4 = this[91];
    if (v4)
    {
      a2[91] = re::internal::GeomAttributeManager::attributeByName((a2 + 8), v4[1]);
    }
  }
}

uint64_t *re::GeomMesh::clear(uint64_t **this)
{
  re::GeomMesh::freeName(this);
  this[91] = 0;
  *(this + 4) = 0;
  this[5] = 0;
  ++*(this + 12);
  re::internal::GeomAttributeManager::clear(this + 8, v2);
  result = re::internal::GeomAttributeManager::addAttribute((this + 8), "vertexPosition", 1, 7);
  this[91] = result;
  return result;
}

void re::GeomMesh::~GeomMesh(uint64_t **this)
{
  re::GeomMesh::freeName(this);
  this[91] = 0;
  *(this + 4) = 0;
  this[5] = 0;
  ++*(this + 12);
  re::internal::GeomAttributeManager::clear(this + 8, v2);
  re::internal::GeomAttributeManager::~GeomAttributeManager((this + 8));
  re::DynamicArray<unsigned long>::deinit((this + 3));
}

uint64_t re::GeomMesh::addAttribute(uint64_t a1, char *a2, int a3, int a4)
{
  if (a3 == 3)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::addAttribute((a1 + 64), a2, a3, a4);
  if (v4 && !strcmp(a2, "vertexPosition"))
  {
    *(a1 + 728) = v4;
  }

  return v4;
}

uint64_t re::GeomMesh::addFaceVaryingAttribute(uint64_t a1, const char *a2, uint64_t a3, int a4, uint64_t *a5)
{
  v10 = a4;
  re::DynamicArray<re::GeomCell4>::DynamicArray(v11, a5);
  if (!v11[1])
  {
    re::DynamicArray<re::BlendNode>::setCapacity(v11, 1uLL);
  }

  v8 = re::internal::GeomBaseMesh::addFaceVaryingAttribute(a1 + 16, a2, a3, &v10);
  if (v11[0] && v11[4])
  {
    (*(*v11[0] + 40))(v11[0]);
  }

  return v8;
}

uint64_t re::GeomMesh::addFaceVaryingAttribute(uint64_t a1, const char *a2, uint64_t a3, int a4, uint64_t *a5, uint64_t *a6)
{
  v13 = a4;
  re::DynamicArray<re::GeomCell4>::DynamicArray(v14, a5);
  if (!v14[1])
  {
    re::DynamicArray<re::BlendNode>::setCapacity(v14, 1uLL);
  }

  re::DynamicArray<float>::DynamicArray(v12, a6);
  v10 = re::internal::GeomBaseMesh::addFaceVaryingAttribute((a1 + 16), a2, a3, &v13, v12);
  if (v12[0] && v12[4])
  {
    (*(*v12[0] + 40))();
  }

  if (v14[0] && v14[4])
  {
    (*(*v14[0] + 40))();
  }

  return v10;
}

re::GeomAttribute *re::internal::GeomBaseMesh::replaceVertexAttributeWithFaceVaryingAttribute(re::internal::GeomBaseMesh *this, char *a2)
{
  v45[11] = *MEMORY[0x1E69E9840];
  v4 = *(this + 6);
  v28 = *this;
  re::DynamicArray<re::GeomCell4>::DynamicArray(&v29, this + 1);
  if (!v30)
  {
    re::DynamicArray<re::BlendNode>::setCapacity(&v29, 1uLL);
  }

  v27 = 0;
  v24[1] = 0;
  v25 = 0;
  v23 = 0;
  v24[0] = 0;
  v26 = 0;
  v20[1] = 0;
  v21 = 0;
  v20[0] = 0;
  v22 = 0;
  re::DynamicArray<unsigned int>::resize(v24, v4, &re::kInvalidMeshIndex);
  re::DynamicArray<unsigned int>::resize(v20, v4, &re::kInvalidMeshIndex);
  if (v4)
  {
    v5 = 0;
    v6 = v21;
    v7 = v23;
    v8 = v25;
    v9 = v27;
    do
    {
      if (v6 == v5)
      {
        v16 = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v33 = 136315906;
        v34 = "operator[]";
        v35 = 1024;
        *v36 = 789;
        *&v36[4] = 2048;
        *&v36[6] = v6;
        v37 = 2048;
        v38 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_33:
        v16 = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v33 = 136315906;
        v34 = "operator[]";
        v35 = 1024;
        *v36 = 789;
        *&v36[4] = 2048;
        *&v36[6] = v8;
        v37 = 2048;
        v38 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(v7 + 4 * v5) = v5;
      if (v8 == v5)
      {
        goto LABEL_33;
      }

      *(v9 + 4 * v5) = v5;
      ++v5;
    }

    while (v4 != v5);
  }

  re::GeomIndexMap::GeomIndexMap(&v33, v24);
  re::GeomIndexMap::GeomIndexMap(&v16, v20);
  LODWORD(v40) = v28;
  *(&v40 + 1) = v29;
  v10 = v30;
  v29 = 0;
  v30 = 0uLL;
  v41 = v10;
  *(&v42 + 1) = v32;
  v32 = 0;
  LODWORD(v42) = 1;
  v28 = 0;
  v31 += 2;
  re::GeomIndexMap::GeomIndexMap(&v43, &v33);
  re::GeomIndexMap::GeomIndexMap(v45, &v16);
  if (v17)
  {
    if (v17 == 2)
    {
      v12.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v18);
    }

    else
    {
      if (v17 != 1)
      {
        re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
        _os_crash();
        __break(1u);
        goto LABEL_35;
      }

      if (v18[0])
      {
        v11 = v19;
        if (v19)
        {
          (*(*v18[0] + 40))();
        }
      }
    }
  }

  if (v35)
  {
    if (v35 != 2)
    {
      if (v35 == 1)
      {
        if (*&v36[2] && v39)
        {
          (*(**&v36[2] + 40))(v12);
        }

        goto LABEL_22;
      }

LABEL_35:
      re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      result = _os_crash();
      __break(1u);
      return result;
    }

    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v36[2]);
  }

LABEL_22:
  v13 = re::internal::GeomAttributeManager::replaceVertexWithFaceVaryingAttribute(this + 6, a2, &v40);
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v40, v14);
  if (v20[0] && v23)
  {
    (*(*v20[0] + 40))();
  }

  if (v24[0] && v27)
  {
    (*(*v24[0] + 40))();
  }

  if (v29)
  {
    if (v32)
    {
      (*(*v29 + 40))();
    }
  }

  return v13;
}

re::GeomAttribute *re::internal::GeomBaseMesh::replaceFaceAttributeWithFaceVaryingAttribute(re::internal::GeomBaseMesh *this, char *a2)
{
  v51[11] = *MEMORY[0x1E69E9840];
  v5 = *(this + 3);
  v6 = v5;
  v38 = 0;
  v36 = 0uLL;
  v37 = 0;
  re::DynamicArray<re::BlendNode>::setCapacity(&v35, 1uLL);
  v33 = 0;
  v30[1] = 0;
  v31 = 0;
  v29 = 0;
  v30[0] = 0;
  v32 = 0;
  v26[1] = 0;
  v27 = 0;
  v26[0] = 0;
  v28 = 0;
  ++v37;
  v34 = v5;
  re::DynamicArray<re::GeomCell4>::resize(&v35, v5);
  re::DynamicArray<unsigned int>::resize(v30, v5, &re::kInvalidMeshIndex);
  re::DynamicArray<unsigned int>::resize(v26, v5, &re::kInvalidMeshIndex);
  if (v5)
  {
    v7 = 0;
    v8 = v27;
    v9 = v29;
    v10 = v31;
    v11 = v33;
    v12 = 3;
    v13 = *(&v36 + 1);
    v14 = v38;
    do
    {
      if (v8 == v7)
      {
        v22 = 0;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v39 = 136315906;
        v40 = "operator[]";
        v41 = 1024;
        *v42 = 789;
        *&v42[4] = 2048;
        *&v42[6] = v8;
        v43 = 2048;
        v44 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_36:
        v22 = 0;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v39 = 136315906;
        v40 = "operator[]";
        v41 = 1024;
        *v42 = 789;
        *&v42[4] = 2048;
        *&v42[6] = v10;
        v43 = 2048;
        v44 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_37:
        v22 = 0;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v39 = 136315906;
        v40 = "operator[]";
        v41 = 1024;
        *v42 = 797;
        *&v42[4] = 2048;
        *&v42[6] = v7;
        v43 = 2048;
        v44 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_38:
        v22 = 0;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v39 = 136315906;
        v40 = "operator[]";
        v41 = 1024;
        *v42 = 789;
        *&v42[4] = 2048;
        *&v42[6] = v13;
        v43 = 2048;
        v44 = v13;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(v9 + 4 * v7) = v7;
      if (v10 == v7)
      {
        goto LABEL_36;
      }

      *(v11 + 4 * v7) = v7;
      v2 = *(this + 3);
      if (v2 <= v7)
      {
        goto LABEL_37;
      }

      if (v13 == v7)
      {
        goto LABEL_38;
      }

      if (*(*(this + 5) + 4 * v12) == -1)
      {
        v15 = -1;
      }

      else
      {
        v15 = v7;
      }

      *v14 = v7;
      v14[1] = v7;
      v14[2] = v7;
      v14[3] = v15;
      ++v7;
      v12 += 4;
      v14 += 4;
    }

    while (v6 != v7);
  }

  re::GeomIndexMap::GeomIndexMap(&v39, v30);
  re::GeomIndexMap::GeomIndexMap(&v22, v26);
  LODWORD(v46) = v34;
  *(&v46 + 1) = v35;
  v16 = v36;
  v35 = 0;
  v36 = 0uLL;
  v47 = v16;
  *(&v48 + 1) = v38;
  v38 = 0;
  LODWORD(v48) = 1;
  v34 = 0;
  v37 += 2;
  re::GeomIndexMap::GeomIndexMap(&v49, &v39);
  re::GeomIndexMap::GeomIndexMap(v51, &v22);
  if (v23)
  {
    if (v23 == 2)
    {
      v18.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v24);
    }

    else
    {
      if (v23 != 1)
      {
        re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
        _os_crash();
        __break(1u);
        goto LABEL_40;
      }

      if (v24[0])
      {
        v17 = v25;
        if (v25)
        {
          (*(*v24[0] + 40))();
        }
      }
    }
  }

  if (v41)
  {
    if (v41 != 2)
    {
      if (v41 == 1)
      {
        if (*&v42[2] && v45)
        {
          (*(**&v42[2] + 40))(v18);
        }

        goto LABEL_25;
      }

LABEL_40:
      re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      result = _os_crash();
      __break(1u);
      return result;
    }

    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v42[2]);
  }

LABEL_25:
  v19 = re::internal::GeomAttributeManager::replaceFaceWithFaceVaryingAttribute(this + 6, a2, &v46);
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v46, v20);
  if (v26[0] && v29)
  {
    (*(*v26[0] + 40))();
  }

  if (v30[0] && v33)
  {
    (*(*v30[0] + 40))();
  }

  if (v35)
  {
    if (v38)
    {
      (*(*v35 + 40))();
    }
  }

  return v19;
}

uint64_t re::GeomMesh::accessVertexPositions(re::GeomMesh *this)
{
  v1 = *(this + 91);
  if (!v1)
  {
    return 0;
  }

  if (!(*(*v1 + 16))(*(this + 91)))
  {
    return 0;
  }

  if (!v1[5])
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = v1[7];
  (*(*v1 + 16))(v1);
  return v2;
}

uint64_t re::GeomMesh::modifyVertexPositions(re::GeomMesh *this)
{
  v1 = *(this + 91);
  if (!v1)
  {
    return 0;
  }

  if (!(*(*v1 + 16))(*(this + 91)))
  {
    return 0;
  }

  if (!v1[5])
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = v1[7];
  (*(*v1 + 16))(v1);
  return v2;
}

uint64_t re::GeomMesh::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if ((v4 == 0) != (v5 == 0) || v4 && strcmp(v4, v5) || *(a1 + 16) != *(a2 + 16) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 24, a2 + 24) || !re::internal::GeomAttributeContainer::operator==((a1 + 64), a2 + 64) || !re::internal::GeomAttributeContainer::operator==((a1 + 288), a2 + 288) || !re::internal::GeomAttributeContainer::operator==((a1 + 400), a2 + 400) || !re::internal::GeomAttributeContainer::operator==((a1 + 176), a2 + 176))
  {
    return 0;
  }

  return re::internal::GeomAttributeContainer::operator==((a1 + 512), a2 + 512);
}

uint64_t re::GeomMesh::GeomMesh(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  re::internal::GeomBaseMesh::GeomBaseMesh(a1 + 16, a2 + 16);
  *(a1 + 728) = 0;
  *(a1 + 728) = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "vertexPosition");
  *a2 = 0;
  *(a2 + 728) = re::internal::GeomAttributeManager::addAttribute((a2 + 64), "vertexPosition", 1, 7);
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  re::internal::GeomBaseMesh::GeomBaseMesh(a1 + 16, a2);
  *(a1 + 728) = 0;
  *(a1 + 728) = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "vertexPosition");
  *(a1 + 8) = re::internal::GeomBaseMesh::calculateTriangleCount(a1 + 16);
  return a1;
}

uint64_t re::internal::GeomBaseMesh::GeomBaseMesh(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  ++*(a2 + 32);
  ++*(a1 + 32);
  *a2 = 0;
  *(a2 + 24) = 0;
  ++*(a2 + 32);
  re::internal::GeomAttributeManager::GeomAttributeManager(a1 + 48, a2 + 48);
  return a1;
}

uint64_t re::internal::GeomBaseMesh::calculateTriangleCount(uint64_t this)
{
  v1 = *(this + 24);
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  if (v1 <= v1 - 1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = this;
  LODWORD(this) = 0;
  v4 = *(v3 + 40);
  v5.i64[0] = -1;
  v5.i64[1] = -1;
  do
  {
    v6 = *v4++;
    v7 = vceqq_s32(v6, v5);
    v8 = vmovn_s32(vmvnq_s8(v7));
    v8.i16[3] = vmovn_s32(v7).i16[3];
    this = this + (vminv_u16(v8) & 1);
    --v2;
  }

  while (v2);
  return this;
}

re::GeomMesh *re::GeomMesh::operator=(re::GeomMesh *this, uint64_t a2)
{
  if (this != a2)
  {
    re::GeomMesh::freeName(this);
    *this = *a2;
    *a2 = 0;
    *(this + 2) = *(a2 + 8);
    *(this + 4) = *(a2 + 16);
    re::DynamicArray<re::GeomCell4>::operator=(this + 24, a2 + 24);
    re::internal::GeomAttributeManager::operator=((this + 64), a2 + 64);
    *(this + 91) = re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexPosition");
    re::GeomMesh::clear(a2);
  }

  return this;
}

uint64_t re::GeomMesh::operator=(uint64_t a1, _DWORD *a2)
{
  v3 = a1 + 16;
  if ((a1 + 16) != a2)
  {
    v4 = (a2 + 12);
    *(a1 + 16) = *a2;
    re::DynamicArray<re::GeomCell4>::operator=(a1 + 24, (a2 + 2));
    re::internal::GeomAttributeManager::operator=((a1 + 64), v4);
    *(a1 + 728) = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "vertexPosition");
    *(a1 + 8) = re::internal::GeomBaseMesh::calculateTriangleCount(v3);
  }

  return a1;
}

uint64_t re::GeomMesh::updateFaceVaryingAttribute(uint64_t a1, char *a2, int a3, uint64_t *a4, uint64_t *a5)
{
  v46[11] = *MEMORY[0x1E69E9840];
  v10 = a5[2];
  re::internal::GeomAttributeManager::attributeByName((a1 + 64), a2);
  v30 = a3;
  v11 = re::DynamicArray<re::GeomCell4>::DynamicArray(&v31, a4);
  if (!v32)
  {
    v11 = re::DynamicArray<re::BlendNode>::setCapacity(&v31, 1uLL);
  }

  memset(v29, 0, sizeof(v29));
  re::DynamicArray<float>::DynamicArray(v26, a5);
  v25 = 0;
  if (v10)
  {
    v12 = 0;
    do
    {
      v13 = v12;
      v14 = v27;
      if (v27 <= v12)
      {
        v21 = 0;
        memset(v45, 0, 32);
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v35 = 136315906;
        v36 = "operator[]";
        v37 = 1024;
        *v38 = 789;
        *&v38[4] = 2048;
        *&v38[6] = v13;
        v39 = 2048;
        v40 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      LODWORD(v42) = *(v28 + 4 * v12);
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addOrReplace(v29, &v42, &v25);
      v12 = v25 + 1;
      v25 = v12;
    }

    while (v12 < v10);
  }

  re::GeomIndexMap::GeomIndexMap(&v35, v26);
  re::GeomIndexMap::GeomIndexMap(&v21, v29);
  LODWORD(v42) = v30;
  *(&v42 + 1) = v31;
  v15 = v32;
  v31 = 0;
  v32 = 0uLL;
  v43 = v15;
  *(&v44 + 1) = v34;
  v34 = 0;
  LODWORD(v44) = 1;
  v30 = 0;
  v33 += 2;
  re::GeomIndexMap::GeomIndexMap(v45, &v35);
  re::GeomIndexMap::GeomIndexMap(v46, &v21);
  if (v22)
  {
    if (v22 == 2)
    {
      v17.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v23);
    }

    else
    {
      if (v22 != 1)
      {
        re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
        _os_crash();
        __break(1u);
        goto LABEL_30;
      }

      if (v23[0])
      {
        v16 = v24;
        if (v24)
        {
          (*(*v23[0] + 40))();
        }
      }
    }
  }

  if (v37)
  {
    if (v37 != 2)
    {
      if (v37 == 1)
      {
        if (*&v38[2] && v41)
        {
          (*(**&v38[2] + 40))(v17);
        }

        goto LABEL_21;
      }

LABEL_30:
      re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      result = _os_crash();
      __break(1u);
      return result;
    }

    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v38[2]);
  }

LABEL_21:
  re::internal::GeomAttributeManager::updateFaceVaryingAttributeSubmesh((a1 + 64), a2, &v42);
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v42, v18);
  if (v26[0] && v28)
  {
    (*(*v26[0] + 40))();
  }

  v19 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v29);
  result = v31;
  if (v31)
  {
    if (v34)
    {
      return (*(*v31 + 40))(v19);
    }
  }

  return result;
}

uint64_t re::GeomMesh::updateFaceVaryingAttribute(uint64_t a1, char *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  re::internal::GeomAttributeManager::attributeByName((a1 + 64), a2);
  v31 = a3;
  re::DynamicArray<re::GeomCell4>::DynamicArray(&v32, a4);
  if (!v33)
  {
    re::DynamicArray<re::BlendNode>::setCapacity(&v32, 1uLL);
  }

  v27 = 0xFFFFFFFF00000000;
  v28 = -1;
  v29 = 0;
  v9 = v8 - 1;
  if (v8 - 1 >= 0xFFFFFFFE)
  {
    v8 = 0;
    LODWORD(v30[0]) = 0;
    v10 = -1;
    v9 = -1;
  }

  else
  {
    v10 = 0;
    v27 = v8;
    v28 = v8 - 1;
    LODWORD(v30[0]) = v8;
  }

  v24 = 0;
  v23[1] = v10;
  v23[2] = v9;
  v23[0] = v8;
  LODWORD(v25[0]) = v8;
  LODWORD(v16) = v31;
  v17 = v32;
  v11 = v33;
  v32 = 0;
  v33 = 0uLL;
  v18 = v11;
  v20 = v35;
  v35 = 0;
  LODWORD(v19) = 1;
  v31 = 0;
  v34 += 2;
  re::GeomIndexMap::GeomIndexMap(&v21, &v27);
  re::GeomIndexMap::GeomIndexMap(&v22, v23);
  re::internal::GeomAttributeManager::updateFaceVaryingAttributeSubmesh((a1 + 64), a2, &v16);
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v16, v12);
  if (v24)
  {
    if (v24 == 2)
    {
      v14.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v25);
    }

    else
    {
      if (v24 != 1)
      {
        re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625, v16, v17, v18, v19, v20);
        _os_crash();
        __break(1u);
        goto LABEL_27;
      }

      if (v25[0])
      {
        v13 = v26;
        if (v26)
        {
          (*(*v25[0] + 40))();
        }
      }
    }
  }

  if (v29 != 2)
  {
    if (v29 == 1)
    {
      if (v30[0])
      {
        if (v30[4])
        {
          (*(*v30[0] + 40))(v14);
        }

        memset(v30, 0, 24);
      }

      goto LABEL_22;
    }

    if (!v29)
    {
      LODWORD(v30[0]) = 0;
      goto LABEL_22;
    }

LABEL_27:
    re::internal::assertLog(4, v13, v14.n128_f64[0], "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v14.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v30);
LABEL_22:
  result = v32;
  if (v32)
  {
    if (v35)
    {
      return (*(*v32 + 40))(v14);
    }
  }

  return result;
}

uint64_t re::computeGradientField(unint64_t *a1, void *a2, uint64_t a3)
{
  re::DynamicArray<re::Vector3<float>>::resize(a3, *(a1 + 10));
  result = re::GeomMesh::accessVertexPositions(a1);
  v11 = a1[5];
  if (v11)
  {
    v12 = 0;
    do
    {
      if (v11 <= v12)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_25:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_26:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_27:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_28:
        re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v14);
        _os_crash();
        __break(1u);
LABEL_29:
        re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3, v14);
        _os_crash();
        __break(1u);
LABEL_30:
        re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, v14);
        _os_crash();
        __break(1u);
LABEL_31:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_32:
        re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v5, v14);
        _os_crash();
        __break(1u);
LABEL_33:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_34:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_35:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_36:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v13 = (a1[7] + 16 * v12);
      v11 = *v13;
      if (v11 >= v10)
      {
        goto LABEL_25;
      }

      v3 = v13[1];
      if (v3 >= v10)
      {
        goto LABEL_26;
      }

      v4 = v13[2];
      if (v4 >= v10)
      {
        goto LABEL_27;
      }

      v14 = a2[1];
      if (v14 <= v11)
      {
        goto LABEL_28;
      }

      if (v14 <= v3)
      {
        goto LABEL_29;
      }

      if (v14 <= v4)
      {
        goto LABEL_30;
      }

      v15 = *(*a2 + 4 * v11);
      v5 = v13[3];
      v16 = *(*a2 + 4 * v3);
      v17 = *(*a2 + 4 * v4);
      if (v5 == -1)
      {
        v5 = *(a3 + 16);
        if (v5 <= v12)
        {
          goto LABEL_36;
        }

        v28 = *(result + 16 * v3);
        v29 = *(result + 16 * v11);
        v30 = vsubq_f32(v28, v29);
        v31 = *(result + 16 * v4);
        v32 = vsubq_f32(v31, v29);
        v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), vnegq_f32(v30)), v32, vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
        v25 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
        v34 = vaddq_f32(vmulq_n_f32(v30, v17), vaddq_f32(vmulq_n_f32(vsubq_f32(v31, v28), v15), vmulq_n_f32(vsubq_f32(v29, v31), v16)));
        v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), vnegq_f32(v25)), v34, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
      }

      else
      {
        if (v5 >= v10)
        {
          goto LABEL_31;
        }

        if (v14 <= v5)
        {
          goto LABEL_32;
        }

        if (*(a3 + 16) <= v12)
        {
          goto LABEL_33;
        }

        v18 = *(result + 16 * v4);
        v19 = *(result + 16 * v11);
        v20 = vsubq_f32(v18, v19);
        v21 = *(result + 16 * v5);
        v22 = *(result + 16 * v3);
        v23 = vsubq_f32(v21, v22);
        v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), vnegq_f32(v20)), v23, vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL));
        v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
        v26 = vaddq_f32(vmulq_n_f32(v20, *(*a2 + 4 * v5)), vaddq_f32(vmulq_n_f32(vsubq_f32(v19, v18), v16), vaddq_f32(vmulq_n_f32(v23, v15), vmulq_n_f32(vsubq_f32(v22, v21), v17))));
        v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v25)), v26, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
      }

      *(*(a3 + 32) + 16 * v12) = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
      v35 = vmulq_f32(v25, v25);
      v36 = v35.f32[2] + vaddv_f32(*v35.f32);
      v37 = *(a3 + 16);
      if (v36 <= 0.0)
      {
        if (v37 <= v12)
        {
          goto LABEL_35;
        }

        v38 = (*(a3 + 32) + 16 * v12);
        *v38 = 0;
        v38[1] = 0;
      }

      else
      {
        if (v37 <= v12)
        {
          goto LABEL_34;
        }

        *(*(a3 + 32) + 16 * v12) = vmulq_n_f32(*(*(a3 + 32) + 16 * v12), 1.0 / v36);
      }

      ++v12;
      v11 = a1[5];
    }

    while (v12 < v11);
  }

  return result;
}

re::GeomMeshBuilder *re::GeomMeshBuilder::GeomMeshBuilder(re::GeomMeshBuilder *this, const re::GeomMesh *a2)
{
  *this = 0;
  *(this + 2) = *(a2 + 4);
  re::DynamicArray<re::GeomCell4>::DynamicArray(this + 16, a2 + 3);
  if (!*(this + 3))
  {
    re::DynamicArray<re::BlendNode>::setCapacity(this + 2, 1uLL);
  }

  re::internal::GeomAttributeManager::GeomAttributeManager((this + 56), (a2 + 64));
  re::GeomMesh::setName(this, *a2);
  return this;
}

uint64_t re::GeomMeshBuilder::GeomMeshBuilder(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = *(a2 + 16);
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 24);
  *(a1 + 24) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 32) = *(a2 + 40);
  v5 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 56);
  *(a2 + 56) = v5;
  ++*(a2 + 48);
  ++*(a1 + 40);
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  ++*(a2 + 48);
  re::internal::GeomAttributeManager::GeomAttributeManager(a1 + 56, a2 + 64);
  re::GeomMesh::setName(a1, *a2);
  *(a2 + 728) = 0;
  re::GeomMesh::clear(a2);
  return a1;
}

void re::GeomMeshBuilder::~GeomMeshBuilder(re::GeomMeshBuilder *this)
{
  re::GeomMesh::freeName(this);
  re::internal::GeomAttributeManager::~GeomAttributeManager((this + 56));
  re::DynamicArray<unsigned long>::deinit(this + 16);
}

uint64_t re::GeomMeshBuilder::appendMesh(re::GeomMeshBuilder *this, const re::GeomMesh *a2)
{
  v4 = a2;
  v158 = *MEMORY[0x1E69E9840];
  v7 = this + 8;
  v6 = *(this + 2);
  v8 = *(this + 4);
  v9 = *(a2 + 4);
  v122 = *(a2 + 5);
  v10 = (v122 + v8);
  *(this + 2) = v9 + v6;
  *(this + 42) = v9 + v6;
  v11 = *(this + 24);
  if (v11)
  {
    v2 = *(this + 26);
    v3 = 8 * v11;
    do
    {
      v12 = *v2;
      v2 += 8;
      (*(*v12 + 80))(v12, *(this + 42));
      v3 -= 8;
    }

    while (v3);
  }

  re::DynamicArray<re::GeomCell4>::resize(this + 2, v10);
  *(this + 70) = v10;
  v13 = *(this + 38);
  if (v13)
  {
    v14 = *(this + 40);
    v2 = 8 * v13;
    do
    {
      v15 = *v14++;
      (*(*v15 + 80))(v15, *(this + 70));
      v2 -= 8;
    }

    while (v2);
  }

  if (v122)
  {
    v16 = *(v4 + 5);
    v17 = vdup_n_s32(v6);
    v18 = (*(v4 + 7) + 12);
    v19 = v122;
    v20 = v16;
    v21 = v8;
    while (v20)
    {
      v2 = v21;
      v3 = *(this + 4);
      if (v3 <= v21)
      {
        goto LABEL_242;
      }

      v22 = *(v18 - 1);
      if (*v18 == -1)
      {
        v23 = -1;
      }

      else
      {
        v23 = *v18 + v6;
      }

      v24 = (*(this + 6) + 16 * v21);
      *v24 = vadd_s32(*(v18 - 3), v17);
      v24[1].i32[0] = v22 + v6;
      v24[1].i32[1] = v23;
      ++v21;
      --v20;
      v18 += 4;
      if (!--v19)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_241;
  }

LABEL_15:
  v25 = *(v4 + 22);
  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      v27 = re::internal::GeomAttributeContainer::attributeByIndex((v4 + 64), i);
      if (!re::internal::GeomAttributeManager::attributeByName((v7 + 48), *(v27 + 8)))
      {
        v28 = re::internal::GeomAttributeManager::addAttribute((v7 + 48), *(v27 + 8), *(v27 + 16), *(v27 + 17));
        re::GeomAttribute::copyValues(v27, v28);
      }
    }
  }

  *&v144[2] = 0;
  memset(v144, 0, 28);
  *&v142[2] = 0;
  memset(v140, 0, sizeof(v140));
  re::DynamicArray<float>::resize(v144, v9);
  re::DynamicArray<float>::resize(v140, v9);
  if (v9)
  {
    v29 = 0;
    v16 = *&v144[1];
    v30 = *&v144[2];
    v2 = *&v140[16];
    v31 = *&v142[2];
    while (v16 != v29)
    {
      *(v30 + 4 * v29) = v29;
      if (v2 == v29)
      {
        goto LABEL_244;
      }

      *(v31 + 4 * v29) = v6 + v29;
      if (v9 == ++v29)
      {
        goto LABEL_25;
      }
    }

LABEL_243:
    *&v148[0] = 0;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v149 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v136 = 136315906;
    *&v136[4] = "operator[]";
    *&v136[12] = 1024;
    *&v136[14] = 789;
    *&v136[18] = 2048;
    *&v136[20] = v16;
    v137 = 2048;
    *v138 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_244:
    *&v148[0] = 0;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v149 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v136 = 136315906;
    *&v136[4] = "operator[]";
    *&v136[12] = 1024;
    *&v136[14] = 789;
    *&v136[18] = 2048;
    *&v136[20] = v2;
    v137 = 2048;
    *v138 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_245:
    *&v148[0] = 0;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v149 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v136 = 136315906;
    *&v136[4] = "operator[]";
    *&v136[12] = 1024;
    *&v136[14] = 789;
    *&v136[18] = 2048;
    *&v136[20] = v6;
    v137 = 2048;
    *v138 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_246:
    *&v148[0] = 0;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v149 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v136 = 136315906;
    *&v136[4] = "operator[]";
    *&v136[12] = 1024;
    *&v136[14] = 789;
    *&v136[18] = 2048;
    *&v136[20] = v16;
    v137 = 2048;
    *v138 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_247:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) ", "dstAttribute->type() == srcAttribute->type()", "appendMesh", 175);
    _os_crash();
    __break(1u);
LABEL_248:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) ", "dstAttribute->rate() == srcAttribute->rate()", "appendMesh", 176);
    _os_crash();
    __break(1u);
LABEL_249:
    re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) ", "dstAttribute->size() == newValueCount", "appendMesh", 195);
    _os_crash();
    __break(1u);
LABEL_250:
    re::internal::assertLog(4, v53, "assertion failure: '%s' (%s:line %i) ", "dstAttribute->type() == srcAttribute->type()", "appendMesh", 215);
    _os_crash();
    __break(1u);
LABEL_251:
    re::internal::assertLog(4, v53, "assertion failure: '%s' (%s:line %i) ", "dstAttribute->rate() == srcAttribute->rate()", "appendMesh", 216);
    _os_crash();
    __break(1u);
LABEL_252:
    re::internal::assertLog(4, v113, "assertion failure: '%s' (%s:line %i) ", "dstAttribute->size() == mergedAttrVertexCount", "appendMesh", 328);
    _os_crash();
    __break(1u);
LABEL_253:
    re::internal::assertLog(4, v53, "assertion failure: '%s' (%s:line %i) ", "dstAttribute != nullptr", "appendMesh", 223);
    _os_crash();
    __break(1u);
LABEL_254:
    re::internal::assertLog(4, v87, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
LABEL_255:
    re::internal::assertLog(4, v87, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
LABEL_256:
    re::internal::assertLog(4, v73, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
LABEL_257:
    re::internal::assertLog(4, v73, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
LABEL_258:
    re::internal::assertLog(4, v73, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
LABEL_259:
    re::internal::assertLog(4, v87, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
LABEL_260:
    re::internal::assertLog(4, v104, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash();
    __break(1u);
LABEL_261:
    re::internal::assertLog(4, v104, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash();
    __break(1u);
LABEL_262:
    re::internal::assertLog(4, v85, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash();
    __break(1u);
LABEL_263:
    re::internal::assertLog(4, v85, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash();
    __break(1u);
  }

LABEL_25:
  if (*v140 && *&v142[2])
  {
    (*(**v140 + 40))();
  }

  if (*&v144[0] && *&v144[2])
  {
    (*(**&v144[0] + 40))();
  }

  *&v144[2] = 0;
  memset(v144, 0, 28);
  *&v142[2] = 0;
  memset(v140, 0, sizeof(v140));
  re::DynamicArray<float>::resize(v144, v122);
  re::DynamicArray<float>::resize(v140, v122);
  if (v122)
  {
    v32 = 0;
    v6 = *&v144[1];
    v33 = *&v144[2];
    v16 = *&v140[16];
    v34 = *&v142[2];
    while (v6 != v32)
    {
      *(v33 + 4 * v32) = v32;
      if (v16 == v32)
      {
        goto LABEL_246;
      }

      *(v34 + 4 * v32) = v8 + v32;
      if (v122 == ++v32)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_245;
  }

LABEL_36:
  if (*v140 && *&v142[2])
  {
    (*(**v140 + 40))();
  }

  result = *&v144[0];
  if (*&v144[0] && *&v144[2])
  {
    result = (*(**&v144[0] + 40))();
  }

  v36 = *(v4 + 134);
  v123 = v7;
  if (!v36)
  {
    goto LABEL_64;
  }

  for (j = 0; j != v36; ++j)
  {
    v38 = re::internal::GeomAttributeContainer::attributeByIndex((v4 + 512), j);
    v39 = re::internal::GeomAttributeManager::attributeByName((v7 + 48), *(v38 + 8));
    if (v39)
    {
      v16 = v39;
      if (*(v39 + 17) != *(v38 + 17))
      {
        goto LABEL_247;
      }

      if (*(v39 + 16) != *(v38 + 16))
      {
        goto LABEL_248;
      }
    }

    else
    {
      v41 = *(v38 + 16);
      if (v41 == 3)
      {
        v16 = 0;
      }

      else
      {
        v16 = re::internal::GeomAttributeManager::addAttribute((v7 + 48), *(v38 + 8), v41, *(v38 + 17));
      }
    }

    result = (*(*v38 + 16))(v38);
    if (!result)
    {
      continue;
    }

    v3 = result;
    *&v144[2] = 0;
    memset(v144, 0, 28);
    *&v142[2] = 0;
    memset(v140, 0, sizeof(v140));
    v42 = (*(*v16 + 16))(v16);
    v43 = (v42 + v3);
    (*(*v16 + 24))(v16, v43);
    re::DynamicArray<float>::resize(v144, v3);
    re::DynamicArray<float>::resize(v140, v3);
    if ((*(*v16 + 16))(v16) != v43)
    {
      goto LABEL_249;
    }

    v45 = 0;
    v2 = *&v144[1];
    v46 = *&v144[2];
    v47 = v42;
    v48 = *&v140[16];
    v49 = *&v142[2];
    v7 = v123;
    do
    {
      if (v2 == v45)
      {
        *&v148[0] = 0;
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v149 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v136 = 136315906;
        *&v136[4] = "operator[]";
        *&v136[12] = 1024;
        *&v136[14] = 789;
        *&v136[18] = 2048;
        *&v136[20] = v2;
        v137 = 2048;
        *v138 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_230:
        *&v148[0] = 0;
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v149 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v136 = 136315906;
        *&v136[4] = "operator[]";
        *&v136[12] = 1024;
        *&v136[14] = 789;
        *&v136[18] = 2048;
        *&v136[20] = v48;
        v137 = 2048;
        *v138 = v48;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_231;
      }

      *(v46 + 4 * v45) = v45;
      if (v48 == v45)
      {
        goto LABEL_230;
      }

      *(v49 + 4 * v45) = v47 + v45;
      ++v45;
    }

    while (v3 != v45);
    (*(*v38 + 40))(v38, v16, v3);
    if (*v140 && *&v142[2])
    {
      (*(**v140 + 40))();
    }

    result = *&v144[0];
    if (*&v144[0] && *&v144[2])
    {
      result = (*(**&v144[0] + 40))();
    }
  }

LABEL_64:
  v118 = *(v4 + 106);
  if (v118)
  {
    v50 = 0;
    v117 = v4;
    while (1)
    {
      v51 = re::internal::GeomAttributeContainer::attributeByIndex((v4 + 400), v50);
      v52 = re::internal::GeomAttributeManager::attributeByName((v7 + 48), *(v51 + 8));
      if (v52)
      {
        v54 = v52;
        if (*(v52 + 17) != *(v51 + 17))
        {
          goto LABEL_250;
        }

        if (*(v52 + 16) != *(v51 + 16))
        {
          goto LABEL_251;
        }
      }

      else
      {
        LODWORD(v149) = 0;
        *(&v151 + 1) = 0;
        v150 = 0uLL;
        *(&v149 + 1) = 0;
        LODWORD(v151) = 0;
        re::DynamicArray<re::BlendNode>::setCapacity(&v149 + 1, 1uLL);
        LODWORD(v151) = v151 + 1;
        v106 = re::internal::GeomBaseMesh::addFaceVaryingAttribute(v7, *(v51 + 8), *(v51 + 17), &v149);
        if (!v106)
        {
          goto LABEL_253;
        }

        v54 = v106;
        if (*(&v149 + 1))
        {
          v53 = *(&v151 + 1);
          if (*(&v151 + 1))
          {
            (*(**(&v149 + 1) + 40))();
          }
        }
      }

      v120 = v50;
      v119 = v51;
      v55 = re::internal::accessFaceVaryingAttributeSubmesh(v51, v53);
      v121 = v54;
      v38 = re::internal::accessFaceVaryingAttributeSubmesh(v54, v56);
      v57 = *v55;
      k = *(v55 + 3);
      v59 = *v38;
      v60 = *(v38 + 24);
      v131 = *v38;
      re::DynamicArray<re::GeomCell4>::DynamicArray(&v132, (v38 + 8));
      if (!v133)
      {
        re::DynamicArray<re::BlendNode>::setCapacity(&v132, 1uLL);
      }

      v131 = v59 + v57;
      v16 = (v60 + k);
      v61 = re::DynamicArray<re::GeomCell4>::resize(&v132, v16);
      if (k)
      {
        v62 = *(v55 + 3);
        v2 = *(&v133 + 1);
        v63 = v135;
        v64 = k;
        v65 = vdup_n_s32(v59);
        v66 = (*(v55 + 5) + 12);
        v67 = v62;
        v68 = v60;
        while (v67)
        {
          v3 = v68;
          if (v2 <= v68)
          {
            goto LABEL_232;
          }

          v69 = *(v66 - 1);
          if (*v66 == -1)
          {
            v70 = -1;
          }

          else
          {
            v70 = *v66 + v59;
          }

          v71 = (v63 + 16 * v68);
          *v71 = vadd_s32(*(v66 - 3), v65);
          v71[1].i32[0] = v69 + v59;
          v71[1].i32[1] = v70;
          ++v68;
          --v67;
          v66 += 4;
          if (!--v64)
          {
            goto LABEL_79;
          }
        }

LABEL_231:
        *v140 = 0;
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v149 = 0u;
        k = v62;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v144[0]) = 136315906;
        *(v144 + 4) = "operator[]";
        WORD6(v144[0]) = 1024;
        *(v144 + 14) = 797;
        WORD1(v144[1]) = 2048;
        *(&v144[1] + 4) = k;
        WORD6(v144[1]) = 2048;
        *(&v144[1] + 14) = k;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_232:
        *v140 = 0;
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v149 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v144[0]) = 136315906;
        *(v144 + 4) = "operator[]";
        WORD6(v144[0]) = 1024;
        *(v144 + 14) = 789;
        WORD1(v144[1]) = 2048;
        *(&v144[1] + 4) = v3;
        WORD6(v144[1]) = 2048;
        *(&v144[1] + 14) = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_233:
        v126 = 0;
        v145 = 0u;
        v146 = 0u;
        memset(v144, 0, sizeof(v144));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v148[0]) = 136315906;
        *(v148 + 4) = "operator[]";
        WORD6(v148[0]) = 1024;
        *(v148 + 14) = 789;
        WORD1(v148[1]) = 2048;
        *(&v148[1] + 4) = k;
        WORD6(v148[1]) = 2048;
        *(&v148[1] + 14) = k;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_234:
        v126 = 0;
        v145 = 0u;
        v146 = 0u;
        memset(v144, 0, sizeof(v144));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v148[0]) = 136315906;
        *(v148 + 4) = "operator[]";
        WORD6(v148[0]) = 1024;
        *(v148 + 14) = 789;
        WORD1(v148[1]) = 2048;
        *(&v148[1] + 4) = v2;
        WORD6(v148[1]) = 2048;
        *(&v148[1] + 14) = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_235:
        *v136 = 0;
        v145 = 0u;
        v146 = 0u;
        memset(v144, 0, sizeof(v144));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v140 = 136315906;
        *&v140[4] = "operator[]";
        *&v140[12] = 1024;
        *&v140[14] = 789;
        *&v140[18] = 2048;
        *&v140[20] = v16;
        v141 = 2048;
        *v142 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_236:
        *v136 = 0;
        v145 = 0u;
        v146 = 0u;
        memset(v144, 0, sizeof(v144));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v140 = 136315906;
        *&v140[4] = "operator[]";
        *&v140[12] = 1024;
        *&v140[14] = 789;
        *&v140[18] = 2048;
        *&v140[20] = v2;
        v141 = 2048;
        *v142 = v38;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_237:
        *v136 = 0;
        v145 = 0u;
        v146 = 0u;
        memset(v144, 0, sizeof(v144));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v140 = 136315906;
        *&v140[4] = "operator[]";
        *&v140[12] = 1024;
        *&v140[14] = 789;
        *&v140[18] = 2048;
        *&v140[20] = k;
        v141 = 2048;
        *v142 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_238:
        *v136 = 0;
        v145 = 0u;
        v146 = 0u;
        memset(v144, 0, sizeof(v144));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v140 = 136315906;
        *&v140[4] = "operator[]";
        *&v140[12] = 1024;
        *&v140[14] = 789;
        *&v140[18] = 2048;
        *&v140[20] = v2;
        v141 = 2048;
        *v142 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_239:
        *v136 = 0;
        v145 = 0u;
        v146 = 0u;
        memset(v144, 0, sizeof(v144));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v140 = 136315906;
        *&v140[4] = "operator[]";
        *&v140[12] = 1024;
        *&v140[14] = 789;
        *&v140[18] = 2048;
        *&v140[20] = v2;
        v141 = 2048;
        *v142 = v16;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_240:
        *v136 = 0;
        v145 = 0u;
        v146 = 0u;
        memset(v144, 0, sizeof(v144));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v140 = 136315906;
        *&v140[4] = "operator[]";
        *&v140[12] = 1024;
        *&v140[14] = 789;
        *&v140[18] = 2048;
        *&v140[20] = v16;
        v141 = 2048;
        *v142 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_241:
        *v140 = 0;
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v149 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v144[0]) = 136315906;
        *(v144 + 4) = "operator[]";
        WORD6(v144[0]) = 1024;
        *(v144 + 14) = 797;
        WORD1(v144[1]) = 2048;
        *(&v144[1] + 4) = v16;
        WORD6(v144[1]) = 2048;
        *(&v144[1] + 14) = v16;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_242:
        *v140 = 0;
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v149 = 0u;
        v6 = v140;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v144[0]) = 136315906;
        *(v144 + 4) = "operator[]";
        WORD6(v144[0]) = 1024;
        *(v144 + 14) = 789;
        WORD1(v144[1]) = 2048;
        *(&v144[1] + 4) = v2;
        WORD6(v144[1]) = 2048;
        *(&v144[1] + 14) = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_243;
      }

LABEL_79:
      LODWORD(v149) = 0;
      *(&v151 + 1) = 0;
      v150 = 0uLL;
      *(&v149 + 1) = 0;
      LODWORD(v151) = 0;
      v72 = re::DynamicArray<re::BlendNode>::setCapacity(&v149 + 1, 1uLL);
      LODWORD(v151) = v151 + 1;
      *&v152 = 0xFFFFFFFF00000000;
      DWORD2(v152) = -1;
      BYTE12(v152) = 0;
      LODWORD(v153) = 0;
      v154 = 0xFFFFFFFF00000000;
      v3 = 0xFFFFFFFFLL;
      v155 = -1;
      v156 = 0;
      v157 = 0;
      if (v60 != v8 || k != v122)
      {
        break;
      }

      *&v148[2] = 0;
      memset(v148, 0, 28);
      v130 = 0;
      v127 = 0;
      v128 = 0;
      v126 = 0;
      v129 = 0;
      re::DynamicArray<float>::resize(v148, (v60 + k));
      re::DynamicArray<float>::resize(&v126, (v60 + k));
      v7 = v123;
      if (v8)
      {
        for (k = 0; v8 != k; ++k)
        {
          LODWORD(v144[0]) = k;
          v74 = *(v38 + 60);
          if (v74 == 2)
          {
            v76 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v38 + 64), v144);
            if (v76 == -1)
            {
              v16 = 0xFFFFFFFFLL;
            }

            else
            {
              v16 = *(*(v38 + 72) + 8 * v76 + 4);
            }
          }

          else if (v74 == 1)
          {
            v75 = *(v38 + 80);
            if (v75 <= k)
            {
              LODWORD(v144[0]) = k;
              v16 = 0xFFFFFFFFLL;
LABEL_99:
              if (v75 > k)
              {
                v78 = *(*(v38 + 96) + 4 * k);
                goto LABEL_107;
              }

              goto LABEL_103;
            }

            v16 = *(*(v38 + 96) + 4 * k);
          }

          else
          {
            if (*(v38 + 60))
            {
              goto LABEL_256;
            }

            if (k >= *(v38 + 64))
            {
              v16 = 0xFFFFFFFFLL;
            }

            else
            {
              v16 = k;
            }
          }

          v77 = *(v38 + 60);
          LODWORD(v144[0]) = k;
          if (v77)
          {
            if (v77 != 2)
            {
              if (v77 != 1)
              {
                goto LABEL_258;
              }

              v75 = *(v38 + 80);
              goto LABEL_99;
            }

            v79 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v38 + 64), v144);
            if (v79 != -1)
            {
              v78 = *(*(v38 + 72) + 8 * v79 + 4);
              goto LABEL_107;
            }

LABEL_103:
            v78 = -1;
            goto LABEL_107;
          }

          if (k >= *(v38 + 64))
          {
            v78 = -1;
          }

          else
          {
            v78 = k;
          }

LABEL_107:
          v2 = *&v148[1];
          if (*&v148[1] <= k)
          {
            goto LABEL_237;
          }

          *(*&v148[2] + 4 * k) = v78;
          v2 = v16;
          v3 = v128;
          if (v128 <= v16)
          {
            goto LABEL_238;
          }

          *(v130 + 4 * v16) = k;
        }
      }

      if (v122)
      {
        v80 = 0;
        while (1)
        {
          LODWORD(v144[0]) = v80;
          v81 = *(v55 + 60);
          if (v81 == 2)
          {
            break;
          }

          if (v81 == 1)
          {
            if (*(v55 + 10) > v80)
            {
              v82 = *(*(v55 + 12) + 4 * v80);
              goto LABEL_123;
            }

LABEL_122:
            v82 = -1;
            goto LABEL_123;
          }

          if (*(v55 + 60))
          {
            goto LABEL_257;
          }

          if (v80 >= v55[16])
          {
            v82 = -1;
          }

          else
          {
            v82 = v80;
          }

LABEL_123:
          v2 = (v8 + v80);
          v16 = *&v148[1];
          if (*&v148[1] <= v2)
          {
            goto LABEL_239;
          }

          v16 = (v82 + v8);
          *(*&v148[2] + 4 * v2) = v16;
          v2 = v128;
          if (v128 <= v16)
          {
            goto LABEL_240;
          }

          *(v130 + 4 * v16) = v8 + v80++;
          if (v122 == v80)
          {
            goto LABEL_126;
          }
        }

        v83 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(v55 + 8, v144);
        if (v83 != -1)
        {
          v82 = *(*(v55 + 9) + 8 * v83 + 4);
          goto LABEL_123;
        }

        goto LABEL_122;
      }

LABEL_126:
      re::GeomIndexMap::GeomIndexMap(v140, v148);
      re::GeomIndexMap::GeomIndexMap(v136, &v126);
      LODWORD(v144[0]) = v131;
      *(&v144[0] + 1) = v132;
      v84 = v133;
      v132 = 0;
      v133 = 0uLL;
      v144[1] = v84;
      *(&v144[2] + 1) = v135;
      v135 = 0;
      LODWORD(v144[2]) = 1;
      v131 = 0;
      v134 += 2;
      re::GeomIndexMap::GeomIndexMap(&v145, v140);
      re::GeomIndexMap::GeomIndexMap(v147, v136);
      v4 = v117;
      if (v136[12])
      {
        if (v136[12] == 2)
        {
          v86.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v136[16]);
        }

        else
        {
          if (v136[12] != 1)
          {
            goto LABEL_262;
          }

          if (*&v136[16])
          {
            v85 = v139;
            if (v139)
            {
              (*(**&v136[16] + 40))();
            }
          }
        }
      }

      if (v140[12])
      {
        if (v140[12] == 2)
        {
          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v140[16]);
        }

        else
        {
          if (v140[12] != 1)
          {
            goto LABEL_263;
          }

          if (*&v140[16] && v143)
          {
            (*(**&v140[16] + 40))(v86);
          }
        }
      }

      re::internal::GeomAttributeFaceVaryingSubmesh::operator=(&v149, v144);
      re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(v144, v110);
      if (v126 && v130)
      {
        (*(*v126 + 40))();
      }

      v109 = *&v148[0];
      if (*&v148[0] && *&v148[2])
      {
        goto LABEL_211;
      }

LABEL_212:
      updated = re::internal::GeomAttributeManager::updateFaceVaryingAttributeSubmesh(v7 + 6, *(v121 + 1), &v149);
      if (v57)
      {
        v16 = updated;
        *&v142[2] = 0;
        memset(v140, 0, sizeof(v140));
        *&v138[2] = 0;
        memset(v136, 0, sizeof(v136));
        re::DynamicArray<float>::resize(v140, v57);
        re::DynamicArray<float>::resize(v136, v57);
        if ((*(*v16 + 16))(v16) != v59 + v57)
        {
          goto LABEL_252;
        }

        v114 = 0;
        k = *&v140[16];
        v115 = *&v142[2];
        v2 = *&v136[16];
        v116 = *&v138[2];
        do
        {
          if (k == v114)
          {
            goto LABEL_233;
          }

          *(v115 + 4 * v114) = v114;
          if (v2 == v114)
          {
            goto LABEL_234;
          }

          *(v116 + 4 * v114) = v59 + v114;
          ++v114;
        }

        while (v57 != v114);
        (*(*v119 + 40))(v119, v16, v57);
        if (*v136)
        {
          v112 = *&v138[2];
          if (*&v138[2])
          {
            (*(**v136 + 40))();
          }
        }

        if (*v140)
        {
          v112 = *&v142[2];
          if (*&v142[2])
          {
            (*(**v140 + 40))();
          }
        }
      }

      re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v149, v112);
      result = v132;
      if (v132)
      {
        if (v135)
        {
          result = (*(*v132 + 40))();
        }
      }

      v50 = v120 + 1;
      if (v120 + 1 == v118)
      {
        return result;
      }
    }

    v130 = 0;
    v127 = 0;
    v128 = 0;
    v126 = 0;
    v129 = 0;
    memset(v148, 0, sizeof(v148));
    re::DynamicArray<float>::resize(&v126, (v60 + k));
    v125 = 0;
    if (v60)
    {
      v88 = 0;
      while (1)
      {
        LODWORD(v144[0]) = v88;
        v89 = *(v38 + 60);
        if (v89 != 2)
        {
          break;
        }

        v95 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v38 + 64), v144);
        if (v95 != -1)
        {
          v94 = (*(v38 + 72) + 8 * v95 + 4);
LABEL_145:
          v96 = *v94;
          goto LABEL_148;
        }

        v96 = -1;
LABEL_148:
        v97 = *(v38 + 60);
        v124 = v96;
        v88 = v125;
        LODWORD(v144[0]) = v125;
        if (v97 != 2)
        {
          if (v97 != 1)
          {
            if (v97)
            {
              goto LABEL_259;
            }

            v90 = *(v38 + 64);
            goto LABEL_152;
          }

          v93 = *(v38 + 80);
          v92 = v125;
          goto LABEL_155;
        }

        v98 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v38 + 64), v144);
        if (v98 == -1)
        {
LABEL_159:
          v88 = -1;
          goto LABEL_160;
        }

        v88 = *(*(v38 + 72) + 8 * v98 + 4);
LABEL_160:
        v16 = v125;
        v2 = v128;
        if (v128 <= v125)
        {
          goto LABEL_235;
        }

        *(v130 + 4 * v125) = v88;
        re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addNew(v148, &v124, &v125);
        v88 = v125 + 1;
        v125 = v88;
        if (v88 >= v60)
        {
          goto LABEL_162;
        }
      }

      if (v89 != 1)
      {
        if (*(v38 + 60))
        {
          goto LABEL_254;
        }

        v90 = *(v38 + 64);
        if (v90 <= v88)
        {
          v91 = -1;
        }

        else
        {
          v91 = v88;
        }

        v124 = v91;
LABEL_152:
        if (v90 <= v88)
        {
          v88 = -1;
        }

        goto LABEL_160;
      }

      v92 = v88;
      v93 = *(v38 + 80);
      if (v93 <= v88)
      {
        v124 = -1;
        LODWORD(v144[0]) = v88;
LABEL_155:
        if (v93 <= v92)
        {
          goto LABEL_159;
        }

        v88 = *(*(v38 + 96) + 4 * v92);
        goto LABEL_160;
      }

      v94 = (*(v38 + 96) + 4 * v88);
      goto LABEL_145;
    }

LABEL_162:
    if (!k)
    {
LABEL_177:
      re::GeomIndexMap::GeomIndexMap(v140, &v126);
      re::GeomIndexMap::GeomIndexMap(v136, v148);
      LODWORD(v144[0]) = v131;
      *(&v144[0] + 1) = v132;
      v103 = v133;
      v132 = 0;
      v133 = 0uLL;
      v144[1] = v103;
      *(&v144[2] + 1) = v135;
      v135 = 0;
      LODWORD(v144[2]) = 1;
      v131 = 0;
      v134 += 2;
      re::GeomIndexMap::GeomIndexMap(&v145, v140);
      re::GeomIndexMap::GeomIndexMap(v147, v136);
      v4 = v117;
      v7 = v123;
      if (v136[12])
      {
        if (v136[12] == 2)
        {
          v105.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v136[16]);
        }

        else
        {
          if (v136[12] != 1)
          {
            goto LABEL_260;
          }

          if (*&v136[16])
          {
            v104 = v139;
            if (v139)
            {
              (*(**&v136[16] + 40))();
            }
          }
        }
      }

      if (v140[12])
      {
        if (v140[12] == 2)
        {
          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v140[16]);
        }

        else
        {
          if (v140[12] != 1)
          {
            goto LABEL_261;
          }

          if (*&v140[16] && v143)
          {
            (*(**&v140[16] + 40))(v105);
          }
        }
      }

      re::internal::GeomAttributeFaceVaryingSubmesh::operator=(&v149, v144);
      re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(v144, v107);
      v108.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v148);
      v109 = v126;
      if (!v126 || !v130)
      {
        goto LABEL_212;
      }

LABEL_211:
      (*(*v109 + 40))(v109, v108);
      goto LABEL_212;
    }

    v16 = 0;
    k = k;
    while (1)
    {
      LODWORD(v144[0]) = v16;
      v99 = *(v55 + 60);
      if (v99 == 2)
      {
        v101 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(v55 + 8, v144);
        if (v101 == -1)
        {
          goto LABEL_174;
        }

        v100 = *(*(v55 + 9) + 8 * v101 + 4);
      }

      else
      {
        if (v99 != 1)
        {
          if (*(v55 + 60))
          {
            goto LABEL_255;
          }

          if (v16 >= v55[16])
          {
            v100 = -1;
          }

          else
          {
            v100 = v16;
          }

          goto LABEL_175;
        }

        if (*(v55 + 10) <= v16)
        {
LABEL_174:
          v100 = -1;
          goto LABEL_175;
        }

        v100 = *(*(v55 + 12) + 4 * v16);
      }

LABEL_175:
      v102 = v100 + v8;
      v125 = v102;
      v2 = (v60 + v16);
      v38 = v128;
      if (v128 <= v2)
      {
        goto LABEL_236;
      }

      *(v130 + 4 * v2) = v102;
      LODWORD(v144[0]) = v60 + v16;
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addNew(v148, &v125, v144);
      if (k == ++v16)
      {
        goto LABEL_177;
      }
    }
  }

  return result;
}

uint64_t re::anonymous namespace::addAttributeAndCopyValuesHelper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  result = re::internal::GeomAttributeManager::attributeCount(a1 + 64, a3);
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = 0;
  while (1)
  {
    v15 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 64), v14, v9);
    result = re::internal::GeomAttributeManager::attributeByName((a2 + 48), *(v15 + 8));
    if (!result)
    {
      v17 = *(v15 + 16);
      if (v17 == 3)
      {
        goto LABEL_15;
      }

      result = re::internal::GeomAttributeManager::addAttribute((a2 + 48), *(v15 + 8), v17, *(v15 + 17));
      v16 = result;
      if (!result)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    v16 = result;
    if (*(result + 17) != *(v15 + 17))
    {
      break;
    }

    if (*(result + 16) != *(v15 + 16))
    {
      goto LABEL_14;
    }

LABEL_9:
    if (a4)
    {
      result = (*(*v15 + 40))(v15, v16, a4, a5, a6);
    }

    v14 = (v14 + 1);
    if (v13 == v14)
    {
      return result;
    }
  }

  re::internal::assertLog(4, result, "assertion failure: '%s' (%s:line %i) ", "dstAttribute->type() == srcAttribute->type()", "addAttributeAndCopyValuesHelper", 32);
  _os_crash();
  __break(1u);
LABEL_14:
  re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "dstAttribute->rate() == srcAttribute->rate()", "addAttributeAndCopyValuesHelper", 33);
  _os_crash();
  __break(1u);
LABEL_15:
  re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "dstAttribute != nullptr", "addAttributeAndCopyValuesHelper", 36);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::internal::compareMeshes(re::internal *this@<X0>, uint64_t **a2@<X1>, const re::GeomMesh *a3@<X2>, float a4@<S0>, uint64_t a5@<X8>)
{
  v6 = a3;
  v71 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11 = re::internal::GeomAttributeManager::attributeByName((this + 64), a3);
    v12 = re::internal::GeomAttributeManager::attributeByName((a2 + 8), v6);
    if ((v11 != 0) != (v12 != 0))
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      bzero((a5 + 16), 0x2C8uLL);
      re::internal::GeomBaseMesh::GeomBaseMesh((a5 + 16));
      *(a5 + 728) = 0;

      re::GeomMesh::copy(a2, a5);
      return;
    }

    v6 = v12;
    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    v13 = !v14;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  re::GeomMesh::GeomMesh(a5, 0);
  v15 = &v51;
  bzero(&v51, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v53, 1uLL);
  ++v54;
  re::internal::GeomAttributeManager::GeomAttributeManager(v56);
  re::internal::GeomAttributeManager::addAttribute(v56, "vertexPosition", 1, 7);
  if (v13)
  {
    v50 = 0;
    v48 = 0;
    v47[0] = 0;
    v47[1] = 0;
    v49 = 0;
    v46 = 0;
    v44 = 0;
    v43[0] = 0;
    v43[1] = 0;
    v45 = 0;
    v42 = 0;
    v40 = 0;
    v39[0] = 0;
    v39[1] = 0;
    v41 = 0;
    v38 = 0;
    v36 = 0;
    v35[0] = 0;
    v35[1] = 0;
    v37 = 0;
    v34 = 0;
    v32 = 0;
    v31[0] = 0;
    v31[1] = 0;
    v33 = 0;
    v30 = 0;
    v28 = 0;
    v27[0] = 0;
    v27[1] = 0;
    v29 = 0;
    v17 = v48;
    v18 = v36;
    if (v48 | v36)
    {
      v19 = 0;
      v20 = 0;
      while (1)
      {
        re::GeomMesh::GeomMesh(v26, 0);
        re::GeomMesh::GeomMesh(v25, 0);
        if (v20 == v17)
        {
          break;
        }

        v21 = v32;
        if (v32 <= v19)
        {
          v57 = 0;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v58 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v63 = 136315906;
          v64 = "operator[]";
          v65 = 1024;
          v66 = 789;
          v67 = 2048;
          v68 = v19;
          v69 = 2048;
          v70 = v21;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_53:
          v57 = 0;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v58 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v63 = 136315906;
          v64 = "operator[]";
          v65 = 1024;
          v66 = 789;
          v67 = 2048;
          v68 = v21;
          v69 = 2048;
          v70 = v15;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v21 = v20;
        v15 = v44;
        if (v44 <= v20)
        {
          goto LABEL_53;
        }

        v22 = *(v34 + 4 * v19);
        v23 = *(v46 + 4 * v20);
        if (v22 < v23)
        {
          break;
        }

        if (v19 != v18 && v23 >= v22)
        {
          re::GeomMesh::operator=(v26, &v58);
          re::GeomMesh::~GeomMesh(&v58);
          re::GeomMesh::operator=(v25, &v58);
          re::GeomMesh::~GeomMesh(&v58);
          ++v20;
          goto LABEL_21;
        }

        re::GeomMesh::operator=(v26, &v58);
        re::GeomMesh::~GeomMesh(&v58);
        ++v20;
LABEL_22:
        re::GeomMeshBuilder::appendMesh(&v51, &v58);
        re::GeomMesh::~GeomMesh(&v58);
        re::GeomMesh::~GeomMesh(v25);
        re::GeomMesh::~GeomMesh(v26);
        if (v20 >= v17 && v19 >= v18)
        {
          goto LABEL_30;
        }
      }

      re::GeomMesh::operator=(v25, &v58);
      re::GeomMesh::~GeomMesh(&v58);
LABEL_21:
      ++v19;
      goto LABEL_22;
    }

LABEL_30:
    if (v27[0] && v30)
    {
      (*(*v27[0] + 40))();
    }

    if (v31[0] && v34)
    {
      (*(*v31[0] + 40))();
    }

    if (v35[0] && v38)
    {
      (*(*v35[0] + 40))();
    }

    if (v39[0] && v42)
    {
      (*(*v39[0] + 40))();
    }

    if (v43[0] && v46)
    {
      (*(*v43[0] + 40))();
    }

    if (v47[0] && v50)
    {
      (*(*v47[0] + 40))();
    }
  }

  else
  {
    re::GeomMeshBuilder::appendMesh(&v51, v26);
    re::GeomMesh::~GeomMesh(v26);
  }

  v24 = re::GeomMesh::operator=(a5, &v52);
  re::GeomMesh::setName(v24, v51);
  re::GeomMesh::freeName(&v51);
  re::GeomMesh::freeName(&v51);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v56);
  if (v53 && v55)
  {
    (*(*v53 + 40))();
  }
}

void re::anonymous namespace::sortFacesByMaterial(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a2 && (v9 = a2, v10 = a1, *(a1 + 40)))
  {
    re::DynamicArray<float>::resize(a5, *(a1 + 40));
    v12 = *(v10 + 40);
    if (*(v10 + 40))
    {
      v13 = 0;
      v10 = *(a5 + 16);
      v14 = *(a5 + 32);
      while (v10 != v13)
      {
        *(v14 + 4 * v13) = v13;
        if (v12 == ++v13)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v38 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      v29 = 789;
      v30 = 2048;
      v31 = v10;
      v32 = 2048;
      v33 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_25:
      v25 = 0;
      v38 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      v29 = 613;
      v30 = 2048;
      v31 = v5;
      v32 = 2048;
      v33 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_26;
    }

LABEL_7:
    v15 = (*(*v9 + 16))(v9);
    if (v15)
    {
      if (!*(v9 + 40))
      {
LABEL_26:
        v23 = 0;
        v38 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v26 = 136315906;
        v27 = "operator[]";
        v28 = 1024;
        v29 = 797;
        v30 = 2048;
        v31 = 0;
        v32 = 2048;
        v33 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_27:
        v25 = 0;
        v38 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v26 = 136315906;
        v27 = "operator[]";
        v28 = 1024;
        v29 = 613;
        v30 = 2048;
        v31 = v10;
        v32 = 2048;
        v33 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v16 = *(v9 + 56);
      v15 = (*(*v9 + 16))(v9);
    }

    else
    {
      v16 = 0;
    }

    v23 = v16;
    v24 = v15;
    v17 = *(a5 + 32);
    v18 = *(a5 + 16);
    *&v34 = &v23;
    v19 = 126 - 2 * __clz(v18);
    if (v18)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    *(a3 + 16) = 0;
    ++*(a3 + 24);
    *(a4 + 16) = 0;
    ++*(a4 + 24);
    v21 = *(a5 + 16);
    if (v21)
    {
      v10 = **(a5 + 32);
      v9 = v24;
      if (v24 <= v10)
      {
        goto LABEL_27;
      }

      v9 = 0;
      v10 = *(v23 + 4 * v10);
      do
      {
        v5 = *(*(a5 + 32) + 4 * v9);
        v6 = v24;
        if (v24 <= v5)
        {
          goto LABEL_25;
        }

        v22 = *(v23 + 4 * v5);
        if (v22 != v10)
        {
          LODWORD(v34) = v9;
          re::DynamicArray<int>::add(a4, &v34);
          LODWORD(v34) = v10;
          re::DynamicArray<int>::add(a3, &v34);
          v21 = *(a5 + 16);
          v10 = v22;
        }

        ++v9;
      }

      while (v9 < v21);
      LODWORD(v34) = v21;
      re::DynamicArray<int>::add(a4, &v34);
      LODWORD(v34) = v10;
      re::DynamicArray<int>::add(a3, &v34);
    }
  }

  else
  {
    re::DynamicArray<float>::resize(a4, 0);
    *(a5 + 16) = 0;
    ++*(a5 + 24);
  }
}

uint64_t re::anonymous namespace::makeMeshFromMaterial(unint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v31 = 0;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28 = 0;
  v25 = 0;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v22[1] = 0;
  v23 = 0;
  v22[0] = 0;
  v24 = 0;
  if (a3)
  {
    v11 = a3 - 1;
    if (a5 <= v11)
    {
LABEL_27:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a5);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v12 = *(a4 + 4 * v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = a3;
  if (a5 <= a3)
  {
LABEL_26:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, a5);
    _os_crash();
    __break(1u);
    goto LABEL_27;
  }

  v14 = *(a4 + 4 * a3);
  if (v14 != v12)
  {
    re::DynamicArray<int>::setCapacity(v22, v14 - v12);
  }

  if (v14 > v12)
  {
    if (a7 <= v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = a7;
    }

    v16 = (a6 + 4 * v12);
    v17 = v14 - v12;
    v18 = v15 - v12;
    while (v18)
    {
      re::DynamicArray<int>::add(v22, v16++);
      --v18;
      if (!--v17)
      {
        goto LABEL_15;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, a7);
    _os_crash();
    __break(1u);
    goto LABEL_26;
  }

LABEL_15:
  v21[0] = v25;
  v21[1] = v23;
  v20[0] = 0;
  v20[1] = 0;
  re::makeMeshFromFaces(a2, v21, v20, v29, v26, a1);
  if (v22[0] && v25)
  {
    (*(*v22[0] + 40))();
  }

  if (v26[0] && v28)
  {
    (*(*v26[0] + 40))();
  }

  result = v29[0];
  if (v29[0])
  {
    if (v31)
    {
      return (*(*v29[0] + 40))(v29[0]);
    }
  }

  return result;
}

void re::anonymous namespace::computeErrorMesh(re::_anonymous_namespace_ *this, const re::GeomMesh *a2, const re::GeomMesh *a3, float a4)
{
  v5 = a3;
  v101 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 10) || !*(a3 + 10))
  {
    *this = 0;
    *(this + 2) = 0;
    bzero(this + 16, 0x2C8uLL);
    re::internal::GeomBaseMesh::GeomBaseMesh((this + 16));
    *(this + 91) = 0;

    re::GeomMesh::copy(v5, this);
    return;
  }

  v72 = 0;
  v67[0] = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  re::GeomMeshBVHTree::init(v67, a2);
  v8 = re::GeomMesh::accessVertexPositions(v5);
  v66 = 0;
  v63[1] = 0;
  v64 = 0;
  v62 = 0;
  v63[0] = 0;
  v65 = 0;
  v59[1] = 0;
  v60 = 0;
  v59[0] = 0;
  v61 = 0;
  v10 = *(v5 + 5);
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v8;
  v12 = v9;
  v13 = 0;
  v4 = &v96;
  do
  {
    v14 = 0uLL;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    if (v10 <= v13)
    {
      goto LABEL_83;
    }

    v15 = 0;
    v87 = *(*(v5 + 7) + 16 * v13);
    v16 = HIDWORD(v87);
    if (HIDWORD(v87) == -1)
    {
      v17 = 3;
    }

    else
    {
      v17 = 4;
    }

    v18 = &v96;
    do
    {
      v10 = *(&v87 + v15);
      if (v10 >= v12)
      {
        v73 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        *v74 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v88 = 136315906;
        v89 = "operator[]";
        v90 = 1024;
        v91 = 613;
        v92 = 2048;
        v93 = v10;
        v94 = 2048;
        v95 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_83:
        *&v87 = 0;
        v77 = v14;
        v78 = v14;
        v75 = v14;
        v76 = v14;
        *v74 = v14;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v88 = 136315906;
        v89 = "operator[]";
        v90 = 1024;
        v91 = 797;
        v92 = 2048;
        v93 = v13;
        v94 = 2048;
        v95 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_84;
      }

      *v18++ = *(v11 + 16 * v10);
      ++v15;
    }

    while (v17 != v15);
    if (v16 == -1)
    {
    }

    else
    {
    }

    ++v13;
    v10 = *(v5 + 5);
  }

  while (v13 < v10);
LABEL_16:
  re::GeomMesh::GeomMesh(this, 0);
  v19 = v64;
  if (v64 | v60)
  {
    v20 = v64 / 3;
    v58 = v60;
    v21 = v60 >> 2;
    bzero(v74, 0x2D0uLL);
    re::DynamicArray<re::BlendNode>::setCapacity(&v75, 1uLL);
    ++DWORD2(v76);
    re::internal::GeomAttributeManager::GeomAttributeManager((&v77 + 8));
    re::internal::GeomAttributeManager::addAttribute((&v77 + 8), "vertexPosition", 1, 7);
    v57 = v21;
    v23 = (v21 + v20);
    if (v23 < v76)
    {
      v24 = v86;
      if (v86)
      {
        v25 = 0;
        do
        {
          v26 = re::internal::GeomAttributeContainer::attributeByIndex(v85, v25);
          re::internal::accessFaceVaryingAttributeSubmesh(v26, v27);
          ++v25;
        }

        while (v24 != v25);
      }
    }

    re::DynamicArray<re::GeomCell4>::resize(&v75, v23);
    v82 = v23;
    if (v83)
    {
      v28 = v84;
      v29 = 8 * v83;
      do
      {
        v30 = *v28++;
        (*(*v30 + 80))(v30, v82);
        v29 -= 8;
      }

      while (v29);
    }

    LODWORD(v74[1]) = v60 + v64;
    v79 = v60 + v64;
    if (v80)
    {
      v31 = v81;
      v32 = 8 * v80;
      do
      {
        v33 = *v31++;
        (*(*v33 + 80))(v33, v79);
        v32 -= 8;
      }

      while (v32);
    }

    if (v20)
    {
      v12 = 0;
      v5 = v76;
      v10 = v74;
      while (v5 > v12)
      {
        v34 = (v77 + 16 * v12);
        v35 = *v34;
        v36 = v34[3];
        if (v35 != -1 && v36 == -1)
        {
          v4 = v86;
          if (v86)
          {
            v38 = 0;
            do
            {
              v39 = re::internal::GeomAttributeContainer::attributeByIndex(v85, v38);
              re::internal::accessFaceVaryingAttributeSubmesh(v39, v40);
              ++v38;
            }

            while (v4 != v38);
            v5 = v76;
          }
        }

        if (v5 <= v12)
        {
          goto LABEL_85;
        }

        v41 = v77 + 16 * v12;
        *v41 = 3 * v12;
        *(v41 + 4) = vadd_s32(vdup_n_s32(3 * v12), 0x200000001);
        *(v41 + 12) = -1;
        if (++v12 == v20)
        {
          goto LABEL_41;
        }
      }

LABEL_84:
      *&v87 = 0;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v88 = 136315906;
      v89 = "operator[]";
      v90 = 1024;
      v91 = 797;
      v92 = 2048;
      v93 = v12;
      v94 = 2048;
      v95 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_85:
      *&v87 = 0;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v88 = 136315906;
      v89 = "operator[]";
      v90 = 1024;
      v91 = 789;
      v92 = 2048;
      v93 = v12;
      v94 = 2048;
      v95 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_86:
      *&v87 = 0;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v88 = 136315906;
      v89 = "operator[]";
      v90 = 1024;
      v91 = 797;
      v92 = 2048;
      v93 = v12;
      v94 = 2048;
      v95 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_87:
      *&v87 = 0;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v88 = 136315906;
      v89 = "operator[]";
      v90 = 1024;
      v91 = 789;
      v92 = 2048;
      v93 = v12;
      v94 = 2048;
      v95 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_88:
      *&v87 = 0;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v88 = 136315906;
      *(v4->i64 + 4) = "operator[]";
      v90 = 1024;
      *(&v4->i32[3] + 2) = 789;
      v92 = 2048;
      *(v4[1].i64 + 4) = v5;
      v94 = 2048;
      *(&v4[1].i64[1] + 6) = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_89:
      *&v87 = 0;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v88 = 136315906;
      *(v4->i64 + 4) = "operator[]";
      v90 = 1024;
      *(&v4->i32[3] + 2) = 621;
      v92 = 2048;
      *(v4[1].i64 + 4) = v12;
      v94 = 2048;
      *(&v4[1].i64[1] + 6) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_90:
      *&v87 = 0;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      v55 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v88 = 136315906;
      *(v4->i64 + 4) = "operator[]";
      v90 = 1024;
      *(&v4->i32[3] + 2) = 789;
      v92 = 2048;
      *(v4[1].i64 + 4) = v5;
      v94 = 2048;
      *(&v4[1].i64[1] + 6) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_91:
      *&v87 = 0;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v88 = 136315906;
      *(v4->i64 + 4) = "operator[]";
      v90 = 1024;
      *(&v4->i32[3] + 2) = 621;
      v92 = 2048;
      *(v4[1].i64 + 4) = v12;
      v94 = 2048;
      *(&v4[1].i64[1] + 6) = v55;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_41:
    if (v57)
    {
      v42 = 0;
      v10 = (v58 >> 2);
      v5 = v76;
      do
      {
        v12 = (v42 + v20);
        if (v5 <= v12)
        {
          goto LABEL_86;
        }

        v43 = (v77 + 16 * v12);
        v44 = *v43;
        v45 = v43[3];
        if (v44 != -1 && v45 != -1)
        {
          v4 = v86;
          if (v86)
          {
            v47 = 0;
            do
            {
              v48 = re::internal::GeomAttributeContainer::attributeByIndex(v85, v47);
              re::internal::accessFaceVaryingAttributeSubmesh(v48, v49);
              ++v47;
            }

            while (v4 != v47);
            v5 = v76;
          }
        }

        if (v5 <= v12)
        {
          goto LABEL_87;
        }

        v50 = v19 + 4 * v42;
        v51 = v77 + 16 * v12;
        *v51 = v50;
        *(v51 + 4) = vadd_s32(vdup_n_s32(v50), 0x200000001);
        *(v51 + 12) = v50 + 3;
      }

      while (++v42 != v10);
    }

    v52 = re::GeomMesh::operator=(this, &v74[1]);
    re::GeomMesh::setName(v52, v74[0]);
    re::GeomMesh::freeName(v74);
    v53 = re::GeomMesh::modifyVertexPositions(this);
    v55 = v54;
    v4 = &v88;
    if (v19)
    {
      v5 = 0;
      v12 = v54;
      do
      {
        v10 = v64;
        if (v64 <= v5)
        {
          goto LABEL_88;
        }

        if (v5 == v54)
        {
          goto LABEL_89;
        }

        *(v53 + 16 * v5) = *(v66 + 16 * v5);
        v5 = (v5 + 1);
      }

      while (v5 != v19);
    }

    if (v58)
    {
      v5 = 0;
      LODWORD(v56) = v54 - v19;
      if (v54 >= v19)
      {
        v56 = v56;
      }

      else
      {
        v56 = 0;
      }

      do
      {
        v12 = v60;
        if (v60 <= v5)
        {
          goto LABEL_90;
        }

        v12 = v5 + v19;
        if (v5 == v56)
        {
          goto LABEL_91;
        }

        *(v53 + 16 * v12) = *(v62 + 16 * v5);
        v5 = (v5 + 1);
      }

      while (v5 != v58);
    }

    re::GeomMesh::freeName(v74);
    re::internal::GeomAttributeManager::~GeomAttributeManager((&v77 + 8));
    if (v75 && v77)
    {
      (*(*v75 + 40))();
    }
  }

  if (v59[0] && v62)
  {
    (*(*v59[0] + 40))();
  }

  if (v63[0] && v66)
  {
    (*(*v63[0] + 40))();
  }

  if (v68)
  {
    if (v72)
    {
      (*(*v68 + 40))();
    }
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::anonymous namespace::sortFacesByMaterial(re::GeomMesh const&,re::GeomAttribute const*,re::DynamicArray<int> &,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned int> &)::$_0 &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  v125 = a2;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 2;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      if (result)
      {
        v79 = v10->i32[0];
        v10->i32[0] = *(a2 - 1);
LABEL_105:
        *(a2 - 1) = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = v10 + 1;
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = *v86;
            v87 = v86[1];
            v86 = v82;
            if (result)
            {
              v89 = *v86;
              v90 = v85;
              while (1)
              {
                *(&v10->i32[1] + v90) = *(v10->i32 + v90);
                if (!v90)
                {
                  break;
                }

                v90 -= 4;
                if ((result & 1) == 0)
                {
                  v91 = (v10 + v90 + 4);
                  goto LABEL_127;
                }
              }

              v91 = v10;
LABEL_127:
              v91->i32[0] = v89;
            }

            v82 = v86 + 1;
            v85 += 4;
          }

          while (v86 + 1 != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v9;
          v119 = v9[1];
          v9 = v82;
          if (result)
          {
            v121 = *v9;
            v122 = v9;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v126 = v92;
        do
        {
          v93 = v92;
          if (v126 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = &v9[v94];
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = &v9[v93];
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v126 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = &v9[v99];
                v100 = 2 * v94 + 2;
                {
                  ++v95;
                  v99 = v100;
                }

                v96 = v98;
                v94 = v99;
              }

              while (!result);
              *v98 = v97;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v101 = v125;
        do
        {
          v102 = v101;
          v103 = 0;
          v127 = *v9;
          v104 = v9;
          do
          {
            v105 = &v104[v103];
            v106 = v105 + 1;
            v107 = (2 * v103) | 1;
            v108 = 2 * v103 + 2;
            if (v108 >= v11)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              if (result)
              {
                v106 = v109;
                v103 = v108;
              }

              else
              {
                v103 = v107;
              }
            }

            *v104 = *v106;
            v104 = v106;
          }

          while (v103 <= ((v11 - 2) >> 1));
          v101 = v102 - 1;
          if (v106 == v102 - 1)
          {
            *v106 = v127;
          }

          else
          {
            *v106 = *v101;
            *v101 = v127;
            v111 = (v106 - v9 + 4) >> 2;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = &v9[v113 >> 1];
              if (result)
              {
                v116 = *v106;
                do
                {
                  v117 = v115;
                  *v106 = *v115;
                  if (!v114)
                  {
                    break;
                  }

                  v114 = (v114 - 1) >> 1;
                  v115 = &v9[v114];
                  v106 = v117;
                }

                while ((result & 1) != 0);
                *v117 = v116;
              }
            }
          }

          v112 = v11-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      if (v17)
      {
        v19 = v9[v12];
        if (v18)
        {
          v9[v12] = *(a2 - 1);
          *(a2 - 1) = v19;
        }

        else
        {
          v9[v12] = *v9;
          *v9 = v19;
          {
            v31 = *v9;
            *v9 = *(a2 - 1);
            *(a2 - 1) = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = *v9;
        *v9 = *(a2 - 1);
        *(a2 - 1) = v22;
        {
          v23 = v9[v12];
          v9[v12] = *v9;
          *v9 = v23;
        }
      }

      goto LABEL_55;
    }

    if (v14)
    {
      v16 = *v9;
      if (v15)
      {
        *v9 = *(a2 - 1);
        *(a2 - 1) = v16;
      }

      else
      {
        *v9 = v9[v12];
        v9[v12] = v16;
        {
          v24 = v9[v12];
          v9[v12] = *(a2 - 1);
          *(a2 - 1) = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v9[v12];
      v9[v12] = *(a2 - 1);
      *(a2 - 1) = v20;
      {
        v21 = *v9;
        *v9 = v9[v12];
        v9[v12] = v21;
      }
    }

    v25 = v12 - 1;
    if (v26)
    {
      v28 = v9[1];
      if (v27)
      {
        v9[1] = *(a2 - 2);
        *(a2 - 2) = v28;
      }

      else
      {
        v9[1] = v9[v25];
        v9[v25] = v28;
        {
          v32 = v9[v25];
          v9[v25] = *(a2 - 2);
          *(a2 - 2) = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v9[v25];
      v9[v25] = *(a2 - 2);
      *(a2 - 2) = v29;
      {
        v30 = v9[1];
        v9[1] = v9[v25];
        v9[v25] = v30;
      }
    }

    v33 = v12 + 1;
    if (v34)
    {
      v36 = v9[2];
      if (v35)
      {
        v9[2] = *(a2 - 3);
        *(a2 - 3) = v36;
      }

      else
      {
        v9[2] = v9[v33];
        v9[v33] = v36;
        {
          v39 = v9[v33];
          v9[v33] = *(a2 - 3);
          *(a2 - 3) = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = v9[v33];
      v9[v33] = *(a2 - 3);
      *(a2 - 3) = v37;
      {
        v38 = v9[2];
        v9[2] = v9[v33];
        v9[v33] = v38;
      }
    }

    if (!v40)
    {
      v43 = v9[v12];
      if (!v41)
      {
        goto LABEL_54;
      }

      v44 = v9[v33];
      v9[v12] = v44;
      v9[v33] = v43;
      v43 = v9[v12];
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = v9[v25];
      v9[v25] = v43;
      v9[v12] = v46;
      goto LABEL_53;
    }

    v42 = v9[v25];
    if (v41)
    {
      v9[v25] = v9[v33];
      v9[v33] = v42;
      v43 = v9[v12];
    }

    else
    {
      v9[v25] = v9[v12];
      v9[v12] = v42;
      v43 = v9[v12];
      if (v47)
      {
        v46 = v9[v33];
        v9[v12] = v46;
        v9[v33] = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    v48 = *v9;
    *v9 = v43;
    v9[v12] = v48;
LABEL_55:
    --a4;
    v49 = *v9;
    {
      v51 = 0;
        ;
      }

      v53 = &v9[v51];
      v54 = a2;
      if (v51 == 1)
      {
        v54 = a2;
        do
        {
          if (v53 >= v54)
          {
            break;
          }

          v56 = *--v54;
        }
      }

      else
      {
        do
        {
          v55 = *--v54;
        }
      }

      if (v53 >= v54)
      {
        v62 = v53 - 1;
      }

      else
      {
        v57 = &v9[v51];
        v58 = v54;
        do
        {
          v59 = *v57;
          *v57 = *v58;
          *v58 = v59;
          do
          {
            v60 = v57[1];
            ++v57;
          }

          do
          {
            v61 = *--v58;
          }
        }

        while (v57 < v58);
        v62 = v57 - 1;
        a2 = v125;
      }

      if (v62 != v9)
      {
        *v9 = *v62;
      }

      *v62 = v49;
      if (v53 < v54)
      {
        goto LABEL_78;
      }

      v10 = (v62 + 1);
      if (result)
      {
        a2 = v62;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_78:
        a5 = 0;
        v10 = (v62 + 1);
      }
    }

    else
    {
      if (result)
      {
        v10 = v9;
        do
        {
          v64 = v10->u32[1];
          v10 = (v10 + 4);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = (v9 + 1);
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 = (v65 + 4);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].u32[1];
          v66 = (v66 - 4);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i32[0];
        v10->i32[0] = v66->i32[0];
        v66->i32[0] = v68;
        do
        {
          v69 = v10->u32[1];
          v10 = (v10 + 4);
        }

        do
        {
          v70 = v66[-1].u32[1];
          v66 = (v66 - 4);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1] + 1;
      if (&v10[-1].u8[4] != v9)
      {
        *v9 = *v71;
      }

      a5 = 0;
      *v71 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
    }

    if (v11 == 5)
    {
      if (!result)
      {
        return result;
      }

      v72 = v10[1].u32[1];
      v10[1].i32[1] = *(a2 - 1);
      *(a2 - 1) = v72;
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i32[0];
      v73 = v10[1].u32[1];
      v75 = v10->u32[1];
      v10[1].i32[0] = v73;
      v10[1].i32[1] = v74;
      if (!result)
      {
        return result;
      }

      v77 = v10->i32[1];
      v76 = v10[1].u32[0];
      v78 = v10->i32[0];
      v10->i32[1] = v76;
      v10[1].i32[0] = v77;
      goto LABEL_166;
    }

    goto LABEL_10;
  }

  if (!v80)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->u32[1];
    v10->i32[1] = *(a2 - 1);
    *(a2 - 1) = v118;
    v78 = v10->i32[0];
    v76 = v10->u32[1];
LABEL_166:
    if (result)
    {
      *v10 = vrev64_s32(*v10);
    }

    return result;
  }

  v81 = v10->i32[0];
  if (result)
  {
    v10->i32[0] = *(a2 - 1);
    *(a2 - 1) = v81;
  }

  else
  {
    v10->i32[0] = v10->i32[1];
    v10->i32[1] = v81;
    if (result)
    {
      v79 = v10->u32[1];
      v10->i32[1] = *(a2 - 1);
      goto LABEL_105;
    }
  }

  return result;
}

BOOL re::anonymous namespace::sortFacesByMaterial(re::GeomMesh const&,re::GeomAttribute const*,re::DynamicArray<int> &,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned int> &)::$_0::operator()(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (v3 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v3 <= a3)
  {
    goto LABEL_5;
  }

  return *(*a1 + 4 * a2) < *(*a1 + 4 * a3);
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::sortFacesByMaterial(re::GeomMesh const&,re::GeomAttribute const*,re::DynamicArray<int> &,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned int> &)::$_0 &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5)
{
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::sortFacesByMaterial(re::GeomMesh const&,re::GeomAttribute const*,re::DynamicArray<int> &,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned int> &)::$_0 &,unsigned int *>(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = (a2 - a1) >> 2;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 4);
          *(a1 + 4) = v17;
          {
            return 1;
          }

          v7 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 4);
        *(a1 + 4) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 4);
        break;
      case 4:
        return 1;
      case 5:
        {
          return 1;
        }

        v8 = *(a1 + 12);
        *(a1 + 12) = *(a2 - 1);
        *(a2 - 1) = v8;
        {
          return 1;
        }

        v10 = *(a1 + 8);
        v9 = *(a1 + 12);
        v11 = *(a1 + 4);
        *(a1 + 8) = v9;
        *(a1 + 12) = v10;
        {
          return 1;
        }

        v13 = *(a1 + 4);
        v12 = *(a1 + 8);
        v14 = *a1;
        *(a1 + 4) = v12;
        *(a1 + 8) = v13;
        break;
      default:
        goto LABEL_17;
    }

    {
      *a1 = vrev64_s32(*a1);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v19 = (a1 + 8);
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
    }

    else
    {
      v26 = *(a1 + 8);
      *a1 = *(a1 + 4);
      *(a1 + 4) = v21;
      {
        *(a1 + 4) = vrev64_s32(*(a1 + 4));
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 4);
    v23 = *(a1 + 8);
    v25 = *a1;
    *(a1 + 4) = v23;
    *(a1 + 8) = v24;
    {
      *a1 = vrev64_s32(*a1);
    }
  }

  v27 = (a1 + 12);
  if ((a1 + 12) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 12) = *(a1 + v31 + 8);
        if (v31 == -8)
        {
          break;
        }

        v31 -= 4;
        {
          v33 = (a1 + v31 + 12);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v30;
      if (++v29 == 8)
      {
        return v27 + 1 == a2;
      }
    }

    v19 = v27;
    v28 += 4;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

void re::anonymous namespace::computeErrorTriangle(re::GeomMeshBVHTree *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, int a5, _anonymous_namespace_ *a6, float a7)
{
  v14 = a7 * a7;
  v38 = 0u;
  v39 = 0u;
  v15 = re::GeomMeshBVHTree::computeClosestPoint(a1, a2, &v37) > (a7 * a7);
  v38 = 0u;
  v39 = 0u;
  if (re::GeomMeshBVHTree::computeClosestPoint(a1, a3, &v37) > v14)
  {
    ++v15;
  }

  v38 = 0u;
  v39 = 0u;
  if (re::GeomMeshBVHTree::computeClosestPoint(a1, a4, &v37) > v14)
  {
    ++v15;
  }

  __asm { FMOV            V1.4S, #3.0 }

  v36 = vdivq_f32(vaddq_f32(vaddq_f32(*a2, *a3), *a4), _Q1);
  v38 = 0u;
  v39 = 0u;
  if (re::GeomMeshBVHTree::computeClosestPoint(a1, &v36, &v37) <= v14)
  {
    v21 = v15;
  }

  else
  {
    v21 = v15 + 1;
  }

  if (v21)
  {
    if (!a5 || v21 == 4)
    {
      goto LABEL_17;
    }

    v22 = *a3;
    v23 = *a2;
    v24 = vsubq_f32(*a3, *a2);
    v25 = vmulq_f32(v24, v24);
    v26 = v25.f32[2] + vaddv_f32(*v25.f32);
    v27 = *a4;
    v28 = vsubq_f32(*a4, *a3);
    v29 = vmulq_f32(v28, v28);
    v30 = vsubq_f32(*a4, *a2);
    v31 = vmulq_f32(v30, v30);
    v32 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v31, v31, 8uLL)), vadd_f32(vzip1_s32(*v29.i8, *v31.i8), vzip2_s32(*v29.i8, *v31.i8)));
    if (v32.f32[0] < v32.f32[1])
    {
      v32.f32[0] = v32.f32[1];
    }

    if (v26 < v32.f32[0])
    {
      v26 = v32.f32[0];
    }

    if (v26 <= v14)
    {
LABEL_17:
      re::DynamicArray<re::Vector3<float>>::add(a6, a2);
      re::DynamicArray<re::Vector3<float>>::add(a6, a3);
      re::DynamicArray<re::Vector3<float>>::add(a6, a4);
    }

    else
    {
      v33 = a5 - 1;
      v34.i64[0] = 0x3F0000003F000000;
      v34.i64[1] = 0x3F0000003F000000;
      v36 = vmulq_f32(vaddq_f32(v22, v27), v34);
      v37 = vmulq_f32(vaddq_f32(v22, v23), v34);
      v35 = vmulq_f32(vaddq_f32(v23, v27), v34);
    }
  }
}

void re::anonymous namespace::computeErrorQuad(re::GeomMeshBVHTree *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, int a6, _anonymous_namespace_ *a7, float a8)
{
  v16 = a8 * a8;
  v40 = 0u;
  v41 = 0u;
  v17 = re::GeomMeshBVHTree::computeClosestPoint(a1, a2, &v39) > (a8 * a8);
  v40 = 0u;
  v41 = 0u;
  if (re::GeomMeshBVHTree::computeClosestPoint(a1, a3, &v39) > v16)
  {
    ++v17;
  }

  v40 = 0u;
  v41 = 0u;
  if (re::GeomMeshBVHTree::computeClosestPoint(a1, a4, &v39) > v16)
  {
    ++v17;
  }

  v40 = 0u;
  v41 = 0u;
  if (re::GeomMeshBVHTree::computeClosestPoint(a1, a5, &v39) > v16)
  {
    ++v17;
  }

  __asm { FMOV            V1.4S, #0.25 }

  v38 = vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*a2, *a3), *a4), *a5), _Q1);
  v40 = 0u;
  v41 = 0u;
  if (re::GeomMeshBVHTree::computeClosestPoint(a1, &v38, &v39) <= v16)
  {
    v23 = v17;
  }

  else
  {
    v23 = v17 + 1;
  }

  if (v23)
  {
    if (!a6 || v23 == 5)
    {
      goto LABEL_17;
    }

    v24 = *a4;
    v25 = *a2;
    v26 = vsubq_f32(*a4, *a2);
    v27 = vmulq_f32(v26, v26);
    v28 = *a5;
    v29 = *a3;
    v30 = vsubq_f32(*a5, *a3);
    v31 = vmulq_f32(v30, v30);
    v32 = vadd_f32(vzip1_s32(*&vextq_s8(v27, v27, 8uLL), *&vextq_s8(v31, v31, 8uLL)), vadd_f32(vzip1_s32(*v27.i8, *v31.i8), vzip2_s32(*v27.i8, *v31.i8)));
    if (v32.f32[0] < v32.f32[1])
    {
      v32.f32[0] = v32.f32[1];
    }

    if (v32.f32[0] <= v16)
    {
LABEL_17:
      re::DynamicArray<re::Vector3<float>>::add(a7, a2);
      re::DynamicArray<re::Vector3<float>>::add(a7, a3);
      re::DynamicArray<re::Vector3<float>>::add(a7, a4);
      re::DynamicArray<re::Vector3<float>>::add(a7, a5);
    }

    else
    {
      v33 = a6 - 1;
      v34.i64[0] = 0x3F0000003F000000;
      v34.i64[1] = 0x3F0000003F000000;
      v39 = vmulq_f32(vaddq_f32(v25, v29), v34);
      v36 = vmulq_f32(vaddq_f32(v24, v28), v34);
      v37 = vmulq_f32(vaddq_f32(v24, v29), v34);
      v35 = vmulq_f32(vaddq_f32(v25, v28), v34);
    }
  }
}

uint64_t re::buildPlatterWithRoundedCorners(unsigned int *a1, unsigned __int16 *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  LODWORD(v69) = 0;
  WORD2(v69) = 0;
  LOWORD(v72) = 0;
  LOBYTE(v69) = *(a2 + 36);
  BYTE3(v69) = *(a2 + 37);
  *(&v72 + 1) = *(a2 + 7);
  BYTE4(v69) = *(a2 + 38);
  BYTE5(v69) = 1;
  v5 = *(a2 + 10);
  v4 = *(a2 + 11);
  *(&v69 + 1) = __PAIR64__(LODWORD(v4), LODWORD(v5));
  v6 = *(a2 + 12);
  *&v70 = v6;
  v7 = 1.5287;
  v8 = 1.5287;
  if (v5 < 1.0)
  {
    v8 = 1.0;
    if (v5 > 0.0)
    {
      v8 = (v5 * 0.52866) + 1.0;
    }
  }

  v9 = 1.5287;
  if (v4 < 1.0)
  {
    v9 = 1.0;
    if (v4 > 0.0)
    {
      v9 = (v4 * 0.52866) + 1.0;
    }
  }

  if (v6 < 1.0)
  {
    v7 = 1.0;
    if (v6 > 0.0)
    {
      v7 = (v6 * 0.52866) + 1.0;
    }
  }

  v11 = *(a2 + 7);
  v10 = *(a2 + 8);
  if (v11 >= v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= v10)
  {
    v13 = *(a2 + 8);
  }

  else
  {
    v13 = *(a2 + 7);
  }

  v14 = v13 / (v12 + v12);
  v15 = *(a2 + 4);
  if (v14 >= *(a2 + 3))
  {
    v14 = *(a2 + 3);
  }

  *(&v70 + 1) = v14;
  v16 = 0.0;
  v17 = 0.0;
  if (v15 >= 0.0)
  {
    v16 = (v15 / v7) >= v14 ? v14 : v15 / v7;
    v17 = *(a2 + 5) / v7;
    if (v17 >= v14)
    {
      v17 = v14;
    }
  }

  *(&v70 + 1) = __PAIR64__(LODWORD(v17), LODWORD(v16));
  v18 = v11 + ((v8 * -2.0) * v14);
  if (v18 < 0.0)
  {
    v18 = 0.0;
  }

  v19 = v10 + ((v9 * -2.0) * v14);
  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  *&v71[0] = __PAIR64__(LODWORD(v19), LODWORD(v18));
  v20 = *(a2 + 6);
  *(v71 + 2) = v20;
  v21 = a2[3];
  if (v21 <= 2)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2[3];
  }

  v23 = v22 + 1;
  v24 = a2[4];
  if (v24 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = a2[4];
  }

  DWORD2(v71[1]) = v23;
  HIDWORD(v71[1]) = v25 + 1;
  v26.i32[0] = *a2;
  v26.i32[1] = a2[1];
  *(v71 + 12) = vmax_u32(v26, 0x100000001);
  v27 = a2[2];
  if (v27 <= 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = a2[2];
  }

  DWORD1(v71[1]) = v28;
  v29 = v24 * v21;
  v31 = v18 == 0.0 || v26.i32[0] == 0;
  v33 = v19 == 0.0 || v26.i32[1] == 0;
  v35 = v20 == 0.0 || v27 == 0;
  if (v14 == 0.0)
  {
    v36 = 316;
    goto LABEL_66;
  }

  if (v16 == 0.0)
  {
    v36 = 4;
LABEL_61:
    LOWORD(v72) = v36;
    goto LABEL_62;
  }

  if (v14 == v16)
  {
    v36 = 8;
    goto LABEL_61;
  }

  v36 = 0;
LABEL_62:
  if (v17 == 0.0)
  {
    v36 |= 0x10u;
  }

  else
  {
    if (v14 != v17)
    {
      goto LABEL_67;
    }

    v36 |= 0x20u;
  }

LABEL_66:
  LOWORD(v72) = v36;
LABEL_67:
  if (v29)
  {
    v37 = v31;
  }

  else
  {
    v37 = 1;
  }

  if ((v37 | (v33 || v35)) == 1)
  {
    if (v29)
    {
      v38 = v36;
    }

    else
    {
      v38 = v36 | 0x3C;
    }

    if (v31)
    {
      v39 = v38 | 0x41;
    }

    else
    {
      v39 = v38;
    }

    if (v33)
    {
      v40 = v39 | 0x81;
    }

    else
    {
      v40 = v39;
    }

    if (v35)
    {
      v40 |= 2u;
    }

    LOWORD(v72) = v40;
  }

  if (a2[18])
  {
    if ((*(a2 + 37) & 1) == 0)
    {
      goto LABEL_88;
    }
  }

  else if ((*(a2 + 37) & 1) == 0)
  {
    return result;
  }

  if ((a2[18] & 1) == 0)
  {

    return re::internal::GeomAttributeManager::deleteAttribute((a1 + 16), "vertexUV");
  }

LABEL_88:
  re::addVertexUVs(a1, v42);
  re::computeAABB(a1, &v58);
  v43 = v59;
  v44 = *v58.f32;
  v45 = re::GeomMesh::accessVertexPositions(a1);
  v47 = v46;
  result = re::modifyVertexUVs(a1, v46);
  if (a1[4])
  {
    v49 = 0;
    v50 = vsub_f32(v43, v44);
    __asm { FMOV            V2.2S, #1.0 }

    v55 = vbsl_s8(vcgtz_f32(v50), v50, _D2);
    v56 = v48;
    do
    {
      if (v47 == v49)
      {
        v60 = 0;
        v72 = 0u;
        v70 = 0u;
        memset(v71, 0, sizeof(v71));
        v69 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v61 = 136315906;
        v62 = "operator[]";
        v63 = 1024;
        v64 = 613;
        v65 = 2048;
        v66 = v47;
        v67 = 2048;
        v68 = v47;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_99:
        v60 = 0;
        v72 = 0u;
        v70 = 0u;
        memset(v71, 0, sizeof(v71));
        v69 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v61 = 136315906;
        v62 = "operator[]";
        v63 = 1024;
        v64 = 621;
        v65 = 2048;
        v66 = v56;
        v67 = 2048;
        v68 = v56;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (v48 == v49)
      {
        goto LABEL_99;
      }

      v57 = *v45;
      v45 += 2;
      *(result + 8 * v49++) = vdiv_f32(vsub_f32(v57, v44), v55);
    }

    while (v49 < a1[4]);
  }

  return result;
}

uint64_t re::anonymous namespace::buildRoundedBoxOrPlatter(re *a1, unint64_t a2)
{
  i = a1;
  v54 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v36[1] = 0;
  v37 = 0;
  v36[0] = 0;
  v38 = 0;
  v9 = v8;
  v35 = 0;
  v32[1] = 0;
  v33 = 0;
  v32[0] = 0;
  v34 = 0;
  if (*(a2 + 2) == 1)
  {
    re::DynamicArray<re::Vector3<float>>::resize(v32, *(i + 16) - v8);
    if (v9 < *(i + 16))
    {
      v12 = 0;
      v13 = 0;
      if (v9 <= v11)
      {
        v14 = v11;
      }

      else
      {
        v14 = v9;
      }

      while (v9 - v14 + v13)
      {
        v2 = v33;
        if (v33 <= v13)
        {
          goto LABEL_56;
        }

        *(v35 + v12 * 8) = *&v10[2 * v9 + v12];
        ++v13;
        v12 += 2;
        if (v9 + v13 >= *(i + 16))
        {
          goto LABEL_9;
        }
      }

      i = v11;
      *v48 = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v51 = 136315906;
      *&v51[4] = "operator[]";
      *&v51[12] = 1024;
      *&v51[14] = 613;
      *&v51[18] = 2048;
      *&v51[20] = v14;
      v52 = 2048;
      *v53 = i;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_56:
      *v48 = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v51 = 136315906;
      *&v51[4] = "operator[]";
      *&v51[12] = 1024;
      *&v51[14] = 789;
      *&v51[18] = 2048;
      *&v51[20] = v13;
      v52 = 2048;
      *v53 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_57;
    }
  }

LABEL_9:
  *&v53[2] = 0;
  memset(v51, 0, sizeof(v51));
  if (*(a2 + 64))
  {
    *&v50[2] = 0;
    memset(v48, 0, sizeof(v48));
    if (*(i + 40))
    {
      re::DynamicArray<int>::setCapacity(v48, *(i + 40));
      v15 = *(i + 40);
      LODWORD(v30[0]) = 0;
      if (v15)
      {
        v16 = 0;
        while (1)
        {
          v13 = v16;
          v14 = v37;
          if (v37 <= v16)
          {
            break;
          }

          if ((*(a2 + 64) & *(v39 + 2 * v16)) == 0)
          {
            re::DynamicArray<int>::add(v48, v30);
            v16 = v30[0];
            v15 = *(i + 40);
          }

          LODWORD(v30[0]) = ++v16;
          if (v16 >= v15)
          {
            goto LABEL_17;
          }
        }

LABEL_57:
        v31[0] = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v45 = 136315906;
        *&v45[4] = "operator[]";
        *&v45[12] = 1024;
        *&v45[14] = 789;
        *&v45[18] = 2048;
        *&v45[20] = v13;
        v46 = 2048;
        *v47 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_58:
        *v45 = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v48 = 136315906;
        *&v48[4] = "operator[]";
        *&v48[12] = 1024;
        *&v48[14] = 789;
        *&v48[18] = 2048;
        *&v48[20] = i;
        v49 = 2048;
        *v50 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_59:
        *v45 = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v48 = 136315906;
        *&v48[4] = "operator[]";
        *&v48[12] = 1024;
        *&v48[14] = 789;
        *&v48[18] = 2048;
        *&v48[20] = v4;
        v49 = 2048;
        *v50 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_60:
        *v45 = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v48 = 136315906;
        *&v48[4] = "operator[]";
        *&v48[12] = 1024;
        *&v48[14] = 621;
        *&v48[18] = 2048;
        *&v48[20] = i;
        v49 = 2048;
        *v50 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_61:
        *v45 = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v48 = 136315906;
        *&v48[4] = "operator[]";
        *&v48[12] = 1024;
        *&v48[14] = 613;
        *&v48[18] = 2048;
        *&v48[20] = i;
        v49 = 2048;
        *v50 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_62:
        *v45 = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v48 = 136315906;
        *&v48[4] = "operator[]";
        *&v48[12] = 1024;
        *&v48[14] = 621;
        *&v48[18] = 2048;
        *&v48[20] = i;
        v49 = 2048;
        *v50 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_63:
        *v45 = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v48 = 136315906;
        *&v48[4] = "operator[]";
        *&v48[12] = 1024;
        *&v48[14] = 789;
        *&v48[18] = 2048;
        *&v48[20] = v4;
        v49 = 2048;
        *v50 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_64:
        *v45 = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v48 = 136315906;
        *&v48[4] = "operator[]";
        *&v48[12] = 1024;
        *&v48[14] = 621;
        *&v48[18] = 2048;
        *&v48[20] = i;
        v49 = 2048;
        *v50 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_65:
        *v45 = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v48 = 136315906;
        *&v48[4] = "operator[]";
        *&v48[12] = 1024;
        *&v48[14] = 613;
        *&v48[18] = 2048;
        *&v48[20] = i;
        v49 = 2048;
        *v50 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_66:
        *v45 = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v48 = 136315906;
        *&v48[4] = "operator[]";
        *&v48[12] = 1024;
        *&v48[14] = 621;
        *&v48[18] = 2048;
        *&v48[20] = i;
        v49 = 2048;
        *v50 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

LABEL_17:
    *&v47[2] = 0;
    memset(v45, 0, sizeof(v45));
    v31[0] = *&v50[2];
    v31[1] = *&v48[16];
    v30[0] = 0;
    v30[1] = 0;
    re::makeMeshFromFaces(i, v31, v30, v51, v45, &v40);
    re::GeomMesh::operator=(i, &v40);
    re::GeomMesh::~GeomMesh(&v40);
    if (*v45 && *&v47[2])
    {
      (*(**v45 + 40))();
    }

    if (*v48 && *&v50[2])
    {
      (*(**v48 + 40))();
    }
  }

  if (*(a2 + 2) == 1)
  {
    v14 = v18;
    v19 = re::internal::GeomAttributeManager::attributeByName((i + 64), "vertexTangent");
    v20 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v19);
    v2 = v21;
    v22 = re::internal::GeomAttributeManager::attributeByName((i + 64), "vertexBitangent");
    v23 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v22);
    v3 = v24;
    v25 = *(i + 16);
    if (*&v51[16])
    {
      if (v25)
      {
        for (i = 0; i != v25; ++i)
        {
          v4 = *&v51[16];
          if (*&v51[16] <= i)
          {
            goto LABEL_58;
          }

          v26 = *(*&v53[2] + 4 * i);
          v4 = v26 - v9;
          if (v26 >= v9)
          {
            v5 = v33;
            if (v33 <= v4)
            {
              goto LABEL_59;
            }

            if (i >= v2)
            {
              goto LABEL_60;
            }

            *v20 = *(v35 + 16 * v4);
            if (i >= v14)
            {
              goto LABEL_61;
            }

            if (i >= v24)
            {
              goto LABEL_62;
            }

            v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v20, *v20), *v20, 0xCuLL), vnegq_f32(*&v17[2 * i])), *v20, vextq_s8(vuzp1q_s32(*&v17[2 * i], *&v17[2 * i]), *&v17[2 * i], 0xCuLL));
            *(v23 + 16 * i) = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
          }

          ++v20;
        }
      }
    }

    else if (v25)
    {
      for (i = 0; v25 != i; ++i)
      {
        if (i >= v9)
        {
          v4 = i - v9;
          v5 = v33;
          if (v33 <= v4)
          {
            goto LABEL_63;
          }

          if (i >= v2)
          {
            goto LABEL_64;
          }

          *v20 = *(v35 + 16 * v4);
          if (i >= v14)
          {
            goto LABEL_65;
          }

          if (i >= v24)
          {
            goto LABEL_66;
          }

          v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v20, *v20), *v20, 0xCuLL), vnegq_f32(*&v17[2 * i])), *v20, vextq_s8(vuzp1q_s32(*&v17[2 * i], *&v17[2 * i]), *&v17[2 * i], 0xCuLL));
          *(v23 + 16 * i) = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
        }

        ++v20;
      }
    }
  }

  if (*v51 && *&v53[2])
  {
    (*(**v51 + 40))();
  }

  if (v32[0] && v35)
  {
    (*(*v32[0] + 40))();
  }

  result = v36[0];
  if (v36[0])
  {
    if (v39)
    {
      return (*(*v36[0] + 40))();
    }
  }

  return result;
}

uint64_t re::anonymous namespace::computeOrthonormalizedTangentsAndBitangents(re::_anonymous_namespace_ *this, re::GeomMesh *a2, char a3)
{
  if (!a2)
  {
    re::internal::GeomAttributeManager::deleteAttribute((this + 64), "vertexNormal");
    result = re::internal::GeomAttributeManager::deleteAttribute((this + 64), "vertexTangent");
    if (a3)
    {
      return result;
    }

    return re::internal::GeomAttributeManager::deleteAttribute((this + 64), "vertexUV");
  }

  re::internal::GeomAttributeManager::deleteAttribute((this + 64), "vertexTangent");
  re::internal::GeomAttributeManager::deleteAttribute((this + 64), "vertexBitangent");
  v7 = 1;
  v6 = 2;
  result = re::computeTangentsAndBitangents(this, "vertexUV", "vertexTangent", "vertexBitangent", "vertexNormal", &v6);
  if ((a3 & 1) == 0)
  {
    return re::internal::GeomAttributeManager::deleteAttribute((this + 64), "vertexUV");
  }

  return result;
}

uint64_t re::anonymous namespace::InternalBoxRoundedCornersOptions::InternalBoxRoundedCornersOptions(uint64_t result, unsigned __int16 *a2)
{
  *(result + 4) = 0;
  *result = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(result + 8) = _D0;
  *(result + 16) = 1065353216;
  *(result + 20) = 0u;
  v6 = (result + 20);
  *(result + 72) = 0;
  *(result + 36) = 0u;
  *(result + 50) = 0u;
  *result = *(a2 + 32);
  *(result + 1) = *(a2 + 37);
  *(result + 3) = *(a2 + 33);
  *(result + 4) = *(a2 + 34);
  if (*(a2 + 35))
  {
    v8 = *(a2 + 5);
    v7 = *(a2 + 6);
    if (v7 >= v8)
    {
      v9 = *(a2 + 5);
    }

    else
    {
      v9 = *(a2 + 6);
    }

    v10 = v9 / 3.0573;
    v11 = *(a2 + 3);
    v12 = v11 <= (v9 / 3.0573);
    v13 = v11;
    if (v12 || (v13 = v10, *(a2 + 36) == 1))
    {
      *v6 = v13;
      v14 = *(a2 + 4);
      if (v14 >= 0.0)
      {
        if (v14 < v13)
        {
          v6 = (a2 + 8);
        }

        v15 = *(a2 + 7);
        v16 = v15 / 3.0573;
        if ((v15 / 3.0573) >= *v6)
        {
          v16 = *v6;
        }
      }

      else
      {
        v15 = *(a2 + 7);
        v16 = 0.0;
      }

      *(result + 24) = v16;
      v23 = v8 > v7;
      v24 = v8 - (v13 * 3.0573);
      if (v24 < 0.0)
      {
        v24 = 0.0;
      }

      v25 = v7 > v8;
      if (v10 > v11)
      {
        v23 = 1;
        v25 = 1;
      }

      if (v23)
      {
        v19 = v24;
      }

      else
      {
        v19 = 0.0;
      }

      v20 = v7 - (v13 * 3.0573);
      if (v20 < 0.0)
      {
        v20 = 0.0;
      }

      if (!v25)
      {
        v20 = 0.0;
      }

      *(result + 32) = v19;
      *(result + 36) = v20;
      v21 = v15 + (v16 * -3.0573);
      if (v21 < 0.0)
      {
        v21 = 0.0;
      }

      v22 = 1.0;
      goto LABEL_38;
    }
  }

  else
  {
    v8 = *(a2 + 5);
    v7 = *(a2 + 6);
    v11 = *(a2 + 3);
  }

  if (v7 >= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = v7;
  }

  v13 = v17 * 0.5;
  if (v13 >= v11)
  {
    v13 = v11;
  }

  *(result + 20) = v13;
  v18 = *(a2 + 7);
  v16 = v18 * 0.5;
  if ((v18 * 0.5) >= *(a2 + 4))
  {
    v16 = *(a2 + 4);
  }

  if (v16 >= v13)
  {
    v16 = v13;
  }

  *(result + 24) = v16;
  v19 = v8 + (v13 * -2.0);
  v20 = v7 + (v13 * -2.0);
  *(result + 32) = v19;
  *(result + 36) = v20;
  v21 = v18 + (v16 * -2.0);
  v22 = 0.0;
LABEL_38:
  *(result + 40) = v21;
  *(result + 8) = v22;
  *(result + 12) = v22;
  *(result + 16) = v22;
  *(result + 28) = v16;
  v26 = a2[3];
  if (v26 <= 2)
  {
    v27 = 2;
  }

  else
  {
    v27 = a2[3];
  }

  v28 = v27 + 1;
  v29 = a2[4];
  if (v29 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = a2[4];
  }

  *(result + 60) = v30 + 1;
  v31.i32[0] = *a2;
  v31.i32[1] = a2[1];
  *(result + 44) = vmax_u32(v31, 0x100000001);
  v32 = a2[2];
  if (v32 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = a2[2];
  }

  *(result + 52) = v33;
  *(result + 56) = v28;
  v34 = v29 * v26;
  v36 = *(a2 + 7) == 0.0 || v34 == 0;
  v38 = v19 == 0.0 || v31.i32[0] == 0;
  v40 = v20 == 0.0 || v31.i32[1] == 0;
  v42 = v21 == 0.0 || v32 == 0;
  if (v16 == 0.0 && v13 == 0.0)
  {
    v44 = 316;
  }

  else
  {
    v44 = 20;
  }

  *(result + 64) = 0;
  if (v16 == 0.0)
  {
    goto LABEL_80;
  }

  if (v13 == v16)
  {
    v44 = 40;
LABEL_80:
    *(result + 64) = v44;
    goto LABEL_81;
  }

  v44 = 0;
LABEL_81:
  if (v42 || v40 || v38 || v36)
  {
    if (v34)
    {
      v45 = v44;
    }

    else
    {
      v45 = v44 | 0x28;
    }

    v46 = v45 | 0x14;
    if (!v36)
    {
      v46 = v44;
    }

    if (v38)
    {
      v47 = v46 | 0x41;
    }

    else
    {
      v47 = v46;
    }

    if (v40)
    {
      v48 = v47 | 0x81;
    }

    else
    {
      v48 = v47;
    }

    if (v42)
    {
      v48 |= 2u;
    }

    *(result + 64) = v48;
  }

  return result;
}

uint64_t re::buildBoxWithRoundedCorners(uint64_t a1, __int128 *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*(a2 + 34) == 1)
  {
    v32 = *(a2 + 4);
    v6 = a2[1];
    v30 = *a2;
    v31 = v6;
    BYTE2(v32) = 0;
    return re::buildBoxWithRoundedCorners(a1, &v30);
  }

  else
  {
    v38 = 0;
    v36 = 0;
    v35[0] = 0;
    v35[1] = 0;
    v37 = 0;
    re::GeomMesh::GeomMesh(&v30, 0);
    re::DynamicArray<re::GeomMesh>::clear(a1);
    re::DynamicArray<re::GeomMesh>::resize(a1, 3uLL);
    v27 = 0;
    v24[1] = 0;
    v25 = 0;
    v24[0] = 0;
    v26 = 0;
    if (v33)
    {
      re::DynamicArray<int>::setCapacity(v24, v33);
    }

    v8 = 0;
    while (1)
    {
      v25 = 0;
      ++v26;
      v9 = word_1E30A1020[v8];
      LODWORD(v40[0]) = 0;
      v10 = v33;
      if (!v33)
      {
        goto LABEL_21;
      }

      v11 = 0;
      v12 = v9 | v29;
      do
      {
        v13 = v11;
        v14 = v36;
        if (v36 <= v11)
        {
          *v46 = 0;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v41 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v49[0]) = 136315906;
          *(v49 + 4) = "operator[]";
          WORD2(v49[1]) = 1024;
          *(&v49[1] + 6) = 789;
          WORD1(v49[2]) = 2048;
          *(&v49[2] + 4) = v13;
          WORD2(v49[3]) = 2048;
          *(&v49[3] + 6) = v14;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_40:
          *v46 = 0;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v41 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v49[0]) = 136315906;
          *(v49 + 4) = "operator[]";
          WORD2(v49[1]) = 1024;
          *(&v49[1] + 6) = 613;
          WORD1(v49[2]) = 2048;
          *(&v49[2] + 4) = v2;
          WORD2(v49[3]) = 2048;
          *(&v49[3] + 6) = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_41:
          *v46 = 0;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v41 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v49[0]) = 136315906;
          *(v49 + 4) = "operator[]";
          WORD2(v49[1]) = 1024;
          *(&v49[1] + 6) = 613;
          WORD1(v49[2]) = 2048;
          *(&v49[2] + 4) = v3;
          WORD2(v49[3]) = 2048;
          *(&v49[3] + 6) = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_42:
          *v46 = 0;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v41 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v49[0]) = 136315906;
          *(v49 + 4) = "operator[]";
          WORD2(v49[1]) = 1024;
          *(&v49[1] + 6) = 621;
          WORD1(v49[2]) = 2048;
          *(&v49[2] + 4) = v12;
          WORD2(v49[3]) = 2048;
          *(&v49[3] + 6) = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_43;
        }

        if ((*(v38 + 2 * v11) & v12) == 0)
        {
          re::DynamicArray<int>::add(v24, v40);
          v11 = v40[0];
          v10 = v33;
        }

        LODWORD(v40[0]) = ++v11;
      }

      while (v11 < v10);
      if (v25)
      {
        v40[0] = v27;
        v40[1] = v25;
        v49[4] = 0;
        memset(v49, 0, 28);
        *&v48[2] = 0;
        memset(v46, 0, sizeof(v46));
        v39[1] = 0;
        v39[0] = 0;
        re::makeMeshFromFaces(&v30, v40, v39, v49, v46, &v41);
        if (*v46 && *&v48[2])
        {
          (*(**v46 + 40))();
        }

        if (v49[0] && v49[4])
        {
          (*(*v49[0] + 40))();
        }

        v12 = *(a1 + 16);
        if (v12 > v8)
        {
          re::GeomMesh::operator=((*(a1 + 32) + 736 * v8), &v41);
          re::GeomMesh::~GeomMesh(&v41);
          goto LABEL_21;
        }

LABEL_43:
        v40[0] = 0;
        v50 = 0u;
        v51 = 0u;
        memset(v49, 0, sizeof(v49));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v46 = 136315906;
        *&v46[4] = "operator[]";
        *&v46[12] = 1024;
        *&v46[14] = 789;
        *&v46[18] = 2048;
        *&v46[20] = v8;
        v47 = 2048;
        *v48 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_21:
      if (v8 == 2 && (v28[2] & 1) != 0)
      {
        break;
      }

LABEL_31:
      if (++v8 == 3)
      {
        goto LABEL_32;
      }
    }

    LODWORD(v2) = v16;
    LODWORD(v3) = v18;
    v19 = re::internal::GeomAttributeManager::attributeByName(&v34, "vertexBitangent");
    v20 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v19);
    if (v31)
    {
      v22 = 0;
      v2 = v2;
      v3 = v3;
      v12 = v21;
      while (v2 != v22)
      {
        if (v3 == v22)
        {
          goto LABEL_41;
        }

        if (v21 == v22)
        {
          goto LABEL_42;
        }

        v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*&v17[2 * v22], *&v17[2 * v22]), *&v17[2 * v22], 0xCuLL), vnegq_f32(*&v15[2 * v22])), *&v17[2 * v22], vextq_s8(vuzp1q_s32(*&v15[2 * v22], *&v15[2 * v22]), *&v15[2 * v22], 0xCuLL));
        *(v20 + 16 * v22++) = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
        if (v22 >= v31)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_40;
    }

LABEL_32:
    if (v24[0] && v27)
    {
      (*(*v24[0] + 40))();
    }

    re::GeomMesh::~GeomMesh(&v30);
    result = v35[0];
    if (v35[0])
    {
      if (v38)
      {
        return (*(*v35[0] + 40))();
      }
    }
  }

  return result;
}

uint64_t re::anonymous namespace::buildRoundedBoxWithStandardUVs(re *a1, unint64_t a2, uint64_t a3)
{
  v4 = a3;
  v814 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 44);
  v6 = *(a2 + 48);
  v7 = *(a2 + 20);
  v9 = *(a2 + 32);
  v8 = *(a2 + 36);
  v10 = *(a2 + 40);
  v12 = *(a2 + 52);
  v11 = *(a2 + 56);
  v13 = *(a2 + 60);
  v751 = (v11 - 1);
  v752 = (v13 - 1);
  v14 = (v752 * v751);
  v15 = v13 * v11;
  if (v11)
  {
    v16 = *(a2 + 56);
  }

  else
  {
    v16 = v11 - 1;
  }

  v17 = (v16 + 3);
  *v748 = (v13 * v11);
  v737 = 4 * v13;
  v18 = v6 + v5 - 2;
  v742 = v6 + v5;
  v741 = 2 * v18;
  LODWORD(v750) = 4 * v11;
  v19 = 4 * v11 + 2 * v18;
  v734 = (4 * v13 + 4) * v18;
  v735 = 8 * (v17 + v14);
  v20 = (v734 + 8 * (v15 + 3));
  v757 = *(a2 + 44);
  v758 = *(a2 + 56);
  v733 = (2 * v5 - 2) * (v6 - 1);
  v753 = (v12 + 1);
  v732 = v20 + v733;
  v740[0] = v20 + v733 + (v19 | 1) * v753;
  v21 = v785;
  v747 = *(a2 + 60);
  v755 = (v15 + 3);
  v756 = *(a2 + 48);
  v759[0] = v735 + 4 * (v6 + v5) * v13;
  v22 = (2 * v5);
  v749 = *(a2 + 52);
  LODWORD(v746) = v19;
  v744 = 8 * (v15 + 3);
  v745 = v759[0] + 2 * v5 * v6;
  v23 = v745 + v19 * v12;
  re::DynamicArray<unsigned short>::resize(a3, v23);
  v24 = (v17 + v14);
  v25 = 0;
  v26 = 0;
  v27 = v4[2];
  do
  {
    if (!v14)
    {
      goto LABEL_10;
    }

    v28 = v4[4];
    v29 = v25 + v14;
    v30 = v752 * v751;
    do
    {
      v3 = v25;
      if (v27 <= v25)
      {
        v785[0] = 0;
        v800 = 0u;
        v801 = 0u;
        v798 = 0u;
        v799 = 0u;
        v797 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v791[0]) = 136315906;
        *(v791 + 4) = "operator[]";
        WORD2(v791[1]) = 1024;
        *(&v791[1] + 6) = 789;
        WORD1(v791[2]) = 2048;
        *(&v791[2] + 4) = v3;
        WORD2(v791[3]) = 2048;
        *(&v791[3] + 6) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_37:
        v785[0] = 0;
        v800 = 0u;
        v801 = 0u;
        v798 = 0u;
        v799 = 0u;
        v797 = 0u;
        v4 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v791[0]) = 136315906;
        *(v791 + 4) = "operator[]";
        WORD2(v791[1]) = 1024;
        *(&v791[1] + 6) = 789;
        WORD1(v791[2]) = 2048;
        *(&v791[2] + 4) = v3;
        WORD2(v791[3]) = 2048;
        *(&v791[3] + 6) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_38:
        v45 = v756;
        v46 = v752;
        v47 = v749;
        if (!v756)
        {
          goto LABEL_46;
        }

        goto LABEL_39;
      }

      ++v25;
      *(v28 + 2 * v3) = 516;
      --v30;
    }

    while (v30);
    v25 = v29;
LABEL_10:
    if (v24 > v14)
    {
      v31 = v4[4];
      v32 = v25 + v17;
      v33 = v16 + 3;
      do
      {
        v3 = v25;
        if (v27 <= v25)
        {
          goto LABEL_37;
        }

        ++v25;
        *(v31 + 2 * v3) = 520;
        --v33;
      }

      while (v33);
      v25 = v32;
    }

    ++v26;
  }

  while (v26 != 4);
  v34 = 0;
  v27 = v4[2];
  v35 = v16 + 3;
  v36 = v747;
  do
  {
    if (v14)
    {
      v37 = v4[4];
      v38 = v752 * v751;
      while (1)
      {
        v39 = v25;
        if (v27 <= v25)
        {
          break;
        }

        ++v25;
        *(v37 + 2 * v39) = 1040;
        if (!--v38)
        {
          goto LABEL_21;
        }
      }

      v785[0] = 0;
      v800 = 0u;
      v801 = 0u;
      v798 = 0u;
      v799 = 0u;
      v797 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v791[0]) = 136315906;
      *(v791 + 4) = "operator[]";
      WORD2(v791[1]) = 1024;
      *(&v791[1] + 6) = 789;
      WORD1(v791[2]) = 2048;
      *(&v791[2] + 4) = v39;
      WORD2(v791[3]) = 2048;
      *(&v791[3] + 6) = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_257;
    }

LABEL_21:
    if (v24 > v14)
    {
      v40 = v4[4];
      v41 = v35;
      while (1)
      {
        v39 = v25;
        if (v27 <= v25)
        {
          break;
        }

        ++v25;
        *(v40 + 2 * v39) = 1056;
        if (!--v41)
        {
          goto LABEL_25;
        }
      }

LABEL_257:
      v785[0] = 0;
      v800 = 0u;
      v801 = 0u;
      v798 = 0u;
      v799 = 0u;
      v797 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v791[0]) = 136315906;
      *(v791 + 4) = "operator[]";
      WORD2(v791[1]) = 1024;
      *(&v791[1] + 6) = 789;
      WORD1(v791[2]) = 2048;
      *(&v791[2] + 4) = v39;
      WORD2(v791[3]) = 2048;
      *(&v791[3] + 6) = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_258:
      v785[0] = 0;
      v800 = 0u;
      v801 = 0u;
      v798 = 0u;
      v799 = 0u;
      v797 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v791[0]) = 136315906;
      *(v791 + 4) = "operator[]";
      WORD2(v791[1]) = 1024;
      *(&v791[1] + 6) = 789;
      WORD1(v791[2]) = 2048;
      *(&v791[2] + 4) = v39;
      WORD2(v791[3]) = 2048;
      *(&v791[3] + 6) = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_259:
      v785[0] = 0;
      v800 = 0u;
      v801 = 0u;
      v798 = 0u;
      v799 = 0u;
      v797 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v791[0]) = 136315906;
      *(v791 + 4) = "operator[]";
      WORD2(v791[1]) = 1024;
      *(&v791[1] + 6) = 789;
      WORD1(v791[2]) = 2048;
      *(&v791[2] + 4) = v39;
      WORD2(v791[3]) = 2048;
      *(&v791[3] + 6) = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_260;
    }

LABEL_25:
    ++v34;
  }

  while (v34 != 4);
  v42 = v757;
  if (!v757)
  {
    goto LABEL_38;
  }

  v43 = 0;
  v27 = v4[2];
  v44 = v4[4];
  v45 = v756;
  v46 = v752;
  v47 = v749;
  do
  {
    if (v752)
    {
      v48 = v4[4];
      v49 = v752;
      do
      {
        v39 = v25;
        if (v27 <= v25)
        {
          goto LABEL_258;
        }

        ++v25;
        *(v48 + 2 * v39) = 580;
      }

      while (--v49);
    }

    v50 = v25;
    if (v27 <= v25)
    {
      v785[0] = 0;
      v800 = 0u;
      v801 = 0u;
      v798 = 0u;
      v799 = 0u;
      v797 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v791[0]) = 136315906;
      *(v791 + 4) = "operator[]";
      WORD2(v791[1]) = 1024;
      *(&v791[1] + 6) = 789;
      WORD1(v791[2]) = 2048;
      *(&v791[2] + 4) = v50;
      WORD2(v791[3]) = 2048;
      *(&v791[3] + 6) = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_369;
    }

    ++v25;
    *(v44 + 2 * v50) = 584;
    ++v43;
  }

  while (v43 != v757);
  if (v756)
  {
LABEL_39:
    v51 = 0;
    v27 = v4[2];
    v52 = v4[4];
    while (!v46)
    {
LABEL_44:
      v55 = v25;
      if (v27 <= v25)
      {
        goto LABEL_452;
      }

      ++v25;
      *(v52 + 2 * v55) = 648;
      if (++v51 == v45)
      {
        goto LABEL_46;
      }
    }

    v53 = v4[4];
    v54 = v46;
    while (1)
    {
      v39 = v25;
      if (v27 <= v25)
      {
        goto LABEL_259;
      }

      ++v25;
      *(v53 + 2 * v39) = 644;
      if (!--v54)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_46:
  if (v42)
  {
    v56 = 0;
    v27 = v4[2];
    v57 = v4[4];
    while (!v46)
    {
LABEL_52:
      v55 = v25;
      if (v27 <= v25)
      {
        goto LABEL_453;
      }

      ++v25;
      *(v57 + 2 * v55) = 584;
      if (++v56 == v42)
      {
        goto LABEL_54;
      }
    }

    v58 = v4[4];
    v59 = v46;
    while (1)
    {
      v39 = v25;
      if (v27 <= v25)
      {
        break;
      }

      ++v25;
      *(v58 + 2 * v39) = 580;
      if (!--v59)
      {
        goto LABEL_52;
      }
    }

LABEL_260:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v39;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_261:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v39;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_262:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v39;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_263:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v39;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_264:
    v203 = 0;
    goto LABEL_265;
  }

LABEL_54:
  if (v45)
  {
    v60 = 0;
    v27 = v4[2];
    v61 = v4[4];
    while (!v46)
    {
LABEL_60:
      v64 = v25;
      if (v27 <= v25)
      {
        v785[0] = 0;
        v800 = 0u;
        v801 = 0u;
        v798 = 0u;
        v799 = 0u;
        v797 = 0u;
        v311 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v791[0]) = 136315906;
        *(v791 + 4) = "operator[]";
        WORD2(v791[1]) = 1024;
        *(&v791[1] + 6) = 789;
        WORD1(v791[2]) = 2048;
        *(&v791[2] + 4) = v64;
        WORD2(v791[3]) = 2048;
        *(&v791[3] + 6) = v27;
        _os_log_send_and_compose_impl();
        v453 = _os_crash_msg();
        __break(1u);
        goto LABEL_603;
      }

      ++v25;
      *(v61 + 2 * v64) = 648;
      if (++v60 == v45)
      {
        goto LABEL_62;
      }
    }

    v62 = v4[4];
    v63 = v46;
    while (1)
    {
      v39 = v25;
      if (v27 <= v25)
      {
        goto LABEL_261;
      }

      ++v25;
      *(v62 + 2 * v39) = 644;
      if (!--v63)
      {
        goto LABEL_60;
      }
    }
  }

LABEL_62:
  if (v42)
  {
    v65 = 0;
    v27 = v4[2];
    v66 = v4[4];
    while (!v46)
    {
LABEL_68:
      v64 = v25;
      if (v27 <= v25)
      {
        v785[0] = 0;
        v800 = 0u;
        v801 = 0u;
        v798 = 0u;
        v799 = 0u;
        v797 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v791[0]) = 136315906;
        *(v791 + 4) = "operator[]";
        WORD2(v791[1]) = 1024;
        *(&v791[1] + 6) = 789;
        WORD1(v791[2]) = 2048;
        *(&v791[2] + 4) = v64;
        WORD2(v791[3]) = 2048;
        *(&v791[3] + 6) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_630:
        v785[0] = 0;
        v800 = 0u;
        v801 = 0u;
        v798 = 0u;
        v799 = 0u;
        v797 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v791[0]) = 136315906;
        *(v791 + 4) = "operator[]";
        WORD2(v791[1]) = 1024;
        *(&v791[1] + 6) = 789;
        WORD1(v791[2]) = 2048;
        *(&v791[2] + 4) = v64;
        WORD2(v791[3]) = 2048;
        *(&v791[3] + 6) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_631:
        *&v811[0] = 0;
        *(v22 + 160) = 0u;
        *(v22 + 176) = 0u;
        *(v22 + 128) = 0u;
        *(v22 + 144) = 0u;
        *(v22 + 112) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v785[0]) = 136315906;
        *(v22 + 4) = "operator[]";
        WORD2(v785[1]) = 1024;
        *(v22 + 14) = 797;
        WORD1(v785[2]) = 2048;
        *(v22 + 20) = v64;
        WORD2(v785[3]) = 2048;
        *(v22 + 30) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_632:
        *&v811[0] = 0;
        *(v22 + 160) = 0u;
        *(v22 + 176) = 0u;
        *(v22 + 128) = 0u;
        *(v22 + 144) = 0u;
        *(v22 + 112) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v785[0]) = 136315906;
        *(v22 + 4) = "operator[]";
        WORD2(v785[1]) = 1024;
        *(v22 + 14) = 797;
        WORD1(v785[2]) = 2048;
        *(v22 + 20) = v3;
        WORD2(v785[3]) = 2048;
        *(v22 + 30) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_633:
        *&v811[0] = 0;
        *(v22 + 160) = 0u;
        *(v22 + 176) = 0u;
        *(v22 + 128) = 0u;
        *(v22 + 144) = 0u;
        *(v22 + 112) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v785[0]) = 136315906;
        *(v22 + 4) = "operator[]";
        WORD2(v785[1]) = 1024;
        *(v22 + 14) = 797;
        WORD1(v785[2]) = 2048;
        *(v22 + 20) = v20;
        WORD2(v785[3]) = 2048;
        *(v22 + 30) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_634:
        *&v811[0] = 0;
        *(v22 + 160) = 0u;
        *(v22 + 176) = 0u;
        *(v22 + 128) = 0u;
        *(v22 + 144) = 0u;
        *(v22 + 112) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v785[0]) = 136315906;
        *(v22 + 4) = "operator[]";
        WORD2(v785[1]) = 1024;
        *(v22 + 14) = 797;
        WORD1(v785[2]) = 2048;
        *(v22 + 20) = v21;
        WORD2(v785[3]) = 2048;
        *(v22 + 30) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_635:
        v785[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v791[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v791[1]) = 1024;
        *(v21 + 126) = 789;
        WORD1(v791[2]) = 2048;
        *(v21 + 132) = v64;
        WORD2(v791[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_636:
        v785[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v791[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v791[1]) = 1024;
        *(v21 + 126) = 789;
        WORD1(v791[2]) = 2048;
        *(v21 + 132) = v64;
        WORD2(v791[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_637:
        v785[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v791[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v791[1]) = 1024;
        *(v21 + 126) = 789;
        WORD1(v791[2]) = 2048;
        *(v21 + 132) = v64;
        WORD2(v791[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_638:
        v785[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v791[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v791[1]) = 1024;
        *(v21 + 126) = 789;
        WORD1(v791[2]) = 2048;
        *(v21 + 132) = v64;
        WORD2(v791[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_639:
        v785[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v791[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v791[1]) = 1024;
        *(v21 + 126) = 789;
        WORD1(v791[2]) = 2048;
        *(v21 + 132) = v64;
        WORD2(v791[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_640:
        v785[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v791[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v791[1]) = 1024;
        *(v21 + 126) = 789;
        WORD1(v791[2]) = 2048;
        *(v21 + 132) = v64;
        WORD2(v791[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_641:
        v785[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v791[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v791[1]) = 1024;
        *(v21 + 126) = 789;
        WORD1(v791[2]) = 2048;
        *(v21 + 132) = v64;
        WORD2(v791[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_642:
        v785[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v791[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v791[1]) = 1024;
        *(v21 + 126) = 789;
        WORD1(v791[2]) = 2048;
        *(v21 + 132) = v64;
        WORD2(v791[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_643:
        v785[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v791[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v791[1]) = 1024;
        *(v21 + 126) = 789;
        WORD1(v791[2]) = 2048;
        *(v21 + 132) = v64;
        WORD2(v791[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_644:
        v785[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v791[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v791[1]) = 1024;
        *(v21 + 126) = 789;
        WORD1(v791[2]) = 2048;
        *(v21 + 132) = v64;
        WORD2(v791[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_645:
        v785[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v791[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v791[1]) = 1024;
        *(v21 + 126) = 789;
        WORD1(v791[2]) = 2048;
        *(v21 + 132) = v64;
        WORD2(v791[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_646:
        v785[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        v311 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v791[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v791[1]) = 1024;
        *(v21 + 126) = 789;
        WORD1(v791[2]) = 2048;
        *(v21 + 132) = v64;
        WORD2(v791[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl();
        v453 = _os_crash_msg();
        __break(1u);
LABEL_647:
        v562 = v758;
        if (v758)
        {
          v14 = v64;
          v17 = v724;
          v563 = v64 - v724;
          if (v64 < v724)
          {
            v563 = 0;
          }

          do
          {
            if (!v563)
            {
              goto LABEL_1015;
            }

            *(v311 + 8 * v17) = 0;
            --v563;
            ++v17;
            --v562;
          }

          while (v562);
        }

        v14 = (v724 - v758);
        if (v752)
        {
          v564 = 0.0;
          v565 = v752;
          v3 = v724;
          v566 = v724 - v758;
          while (v3 < v27)
          {
            v17 = v566;
            if (v566 >= v27)
            {
              goto LABEL_1020;
            }

            if (v566 >= v64)
            {
              goto LABEL_1021;
            }

            v567 = vsubq_f32(*(v453 + 16 * v3), *(v453 + 16 * v566));
            v568 = vmulq_f32(v567, v567);
            v564 = v564 + sqrtf(v568.f32[2] + vaddv_f32(*v568.f32));
            *(v311 + 8 * v566) = LODWORD(v564);
            v566 -= v758;
            v3 = (v3 - v758);
            if (!--v565)
            {
              goto LABEL_658;
            }
          }

          goto LABEL_1019;
        }

LABEL_658:
        if (v14 < v27)
        {
          if (v27 > v724)
          {
            if (v751 >= 2)
            {
              v569 = vsubq_f32(*(v453 + 16 * v14), *(v453 + 16 * v724));
              v570 = vmulq_f32(v569, v569);
              v571 = sqrtf(v570.f32[2] + vaddv_f32(*v570.f32));
              v572 = vextq_s8(vuzp1q_s32(v569, v569), v569, 0xCuLL);
              v573 = vnegq_f32(v569);
              v20 = v27;
              v574 = 1;
              while (1)
              {
                v17 = v574 + v14;
                if (v574 == v27 - v14)
                {
                  goto LABEL_1033;
                }

                if (v535 >= 2)
                {
                  break;
                }

LABEL_669:
                if (++v574 == v751)
                {
                  goto LABEL_670;
                }
              }

              v575 = vsubq_f32(*(v453 + 16 * v17), *(v453 + 16 * v724));
              v576 = vmulq_f32(v575, v575);
              v577 = vmulq_f32(v569, v575);
              v577.f32[0] = v577.f32[2] + vaddv_f32(*v577.f32);
              v578 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v575, v575), v575, 0xCuLL), v573), v575, v572);
              v579 = vmulq_f32(v578, v578);
              v577.i32[1] = sqrtf(v579.f32[1] + (v579.f32[2] + v579.f32[0]));
              v580 = vmul_n_f32(*v577.f32, 1.0 / (v571 * sqrtf(v576.f32[2] + vaddv_f32(*v576.f32))));
              v581 = 0.0;
              v582 = v752;
              v21 = v724;
              while (v21 < v27)
              {
                v3 = v17;
                if (v17 >= v27)
                {
                  goto LABEL_938;
                }

                if (v17 >= v64)
                {
                  goto LABEL_939;
                }

                v583 = vsubq_f32(*(v453 + 16 * v21), *(v453 + 16 * v17));
                v584 = vmulq_f32(v583, v583);
                v581 = v581 + sqrtf(v584.f32[2] + vaddv_f32(*v584.f32));
                *(v311 + 8 * v17) = vmul_n_f32(v580, v581);
                v21 = v17;
                v17 = (v17 - v758);
                if (!--v582)
                {
                  goto LABEL_669;
                }
              }

              goto LABEL_937;
            }

LABEL_670:
            v3 = *v740;
            v455 = v723;
            if (!v752)
            {
              goto LABEL_554;
            }

            v27 = (v724 - 1);
            while (v14 < v64)
            {
              if (v27 >= v64)
              {
                goto LABEL_1024;
              }

              LODWORD(v585) = 0;
              HIDWORD(v585) = *(v311 + 8 * v14);
              *(v311 + 8 * v27) = v585;
              v14 = (v14 - v758);
              v27 = (v27 - v758);
              if (!--v752)
              {
                goto LABEL_554;
              }
            }

LABEL_1023:
            *v810 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v14;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v64;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1024:
            *v810 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v27;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v64;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1025:
            *v810 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v14;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v64;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1026:
            *v810 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v27;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v64;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1027:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 797;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = 0;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = 0;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1028:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            v713 = v400;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v27;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v713;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1029:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 797;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = 0;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = 0;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1030:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            v64 = MEMORY[0x1E69E9C10];
            v714 = v400;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v17;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v714;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1031:
            re::internal::assertLog(6, v400, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v27, v27);
            _os_crash();
            __break(1u);
LABEL_1032:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v3;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v14;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1033:
            *v810 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 613;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v17;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v20;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1034:
            *v810 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 613;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v14;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v27;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1035:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            LODWORD(v311) = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 797;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v64;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v27;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1036:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v14;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v311;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1037:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            LODWORD(v311) = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 797;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v3;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v27;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1038:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            v64 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v27;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v311;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1039:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            LODWORD(v311) = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 797;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v64;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v20;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1040:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v17;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v311;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1041:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            LODWORD(v311) = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 797;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v3;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v20;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1042:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            v64 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v3;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v311;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1043:
            *v810 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v724;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v64;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1044:
            *v810 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            v14 = v455;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v14;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v64;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1045:
            *v810 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v27;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v64;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1046:
            *v810 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v3;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v64;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1047:
            re::internal::assertLog(6, v400, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v27, v27);
            _os_crash();
            __break(1u);
LABEL_1048:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v3;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v14;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1049:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 797;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = 0;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = 0;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1050:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            v715 = v354;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v64;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v715;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1051:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            v14 = v355;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v64;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v14;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1052:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            v716 = v355;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v14;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v716;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1053:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 797;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = 0;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = 0;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1054:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            v717 = v355;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v27;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v717;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1055:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            LODWORD(v311) = MEMORY[0x1E69E9C10];
            v718 = v355;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v17;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v718;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_1056;
          }

LABEL_1061:
          *v810 = 0;
          *(v22 + 48) = 0u;
          *(v22 + 64) = 0u;
          *(v22 + 16) = 0u;
          *(v22 + 32) = 0u;
          *v22 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v811[0]) = 136315906;
          *(v811 + 4) = "operator[]";
          WORD6(v811[0]) = 1024;
          *(v811 + 14) = 613;
          WORD1(v811[1]) = 2048;
          *(&v811[1] + 4) = v724;
          WORD6(v811[1]) = 2048;
          *(&v811[1] + 14) = v27;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_1062:
          v784 = 0;
          v786 = 0u;
          v787 = 0u;
          memset(v785, 0, sizeof(v785));
          LODWORD(v311) = MEMORY[0x1E69E9C10];
          v14 = v810;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v811[0]) = 136315906;
          *(v811 + 4) = "operator[]";
          WORD6(v811[0]) = 1024;
          *(v811 + 14) = 621;
          WORD1(v811[1]) = 2048;
          *(&v811[1] + 4) = v64;
          WORD6(v811[1]) = 2048;
          *(&v811[1] + 14) = v64;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_1063:
          *v810 = 0;
          v786 = 0u;
          v787 = 0u;
          memset(v785, 0, sizeof(v785));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v811[0]) = 136315906;
          *(v811 + 4) = "operator[]";
          WORD6(v811[0]) = 1024;
          *(v811 + 14) = 621;
          WORD1(v811[1]) = 2048;
          *(&v811[1] + 4) = v3;
          WORD6(v811[1]) = 2048;
          *(&v811[1] + 14) = v311;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_1064;
        }

LABEL_1060:
        *v810 = 0;
        *(v22 + 48) = 0u;
        *(v22 + 64) = 0u;
        *(v22 + 16) = 0u;
        *(v22 + 32) = 0u;
        *v22 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v811[0]) = 136315906;
        *(v811 + 4) = "operator[]";
        WORD6(v811[0]) = 1024;
        *(v811 + 14) = 613;
        WORD1(v811[1]) = 2048;
        *(&v811[1] + 4) = v14;
        WORD6(v811[1]) = 2048;
        *(&v811[1] + 14) = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_1061;
      }

      ++v25;
      *(v66 + 2 * v64) = 1120;
      if (++v65 == v42)
      {
        goto LABEL_70;
      }
    }

    v67 = v4[4];
    v68 = v46;
    while (1)
    {
      v39 = v25;
      if (v27 <= v25)
      {
        goto LABEL_262;
      }

      ++v25;
      *(v67 + 2 * v39) = 1104;
      if (!--v68)
      {
        goto LABEL_68;
      }
    }
  }

LABEL_70:
  if (v45)
  {
    v69 = 0;
    v27 = v4[2];
    v70 = v4[4];
    while (!v46)
    {
LABEL_76:
      v64 = v25;
      if (v27 <= v25)
      {
        goto LABEL_630;
      }

      ++v25;
      *(v70 + 2 * v64) = 1184;
      if (++v69 == v45)
      {
        goto LABEL_78;
      }
    }

    v71 = v4[4];
    v72 = v46;
    while (1)
    {
      v39 = v25;
      if (v27 <= v25)
      {
        goto LABEL_263;
      }

      ++v25;
      *(v71 + 2 * v39) = 1168;
      if (!--v72)
      {
        goto LABEL_76;
      }
    }
  }

LABEL_78:
  if (v42)
  {
    v73 = 0;
    v27 = v4[2];
    v74 = v4[4];
    while (!v46)
    {
LABEL_84:
      v64 = v25;
      if (v27 <= v25)
      {
        goto LABEL_635;
      }

      ++v25;
      *(v74 + 2 * v64) = 1120;
      if (++v73 == v42)
      {
        goto LABEL_86;
      }
    }

    v75 = v4[4];
    v76 = v46;
    while (1)
    {
      v77 = v25;
      if (v27 <= v25)
      {
        break;
      }

      ++v25;
      *(v75 + 2 * v77) = 1104;
      if (!--v76)
      {
        goto LABEL_84;
      }
    }

    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v77;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_341:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v77;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_342:
    *&v811[0] = 0;
    v792 = 0u;
    v793 = 0u;
    memset(v791, 0, sizeof(v791));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v785[0]) = 136315906;
    *(v785 + 4) = "operator[]";
    WORD2(v785[1]) = 1024;
    *(&v785[1] + 6) = 797;
    WORD1(v785[2]) = 2048;
    *(&v785[2] + 4) = v20;
    WORD2(v785[3]) = 2048;
    *(&v785[3] + 6) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_343:
    *v810 = 0;
    v792 = 0u;
    v793 = 0u;
    memset(v791, 0, sizeof(v791));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v785[0]) = 136315906;
    *(v785 + 4) = "operator[]";
    WORD2(v785[1]) = 1024;
    *(&v785[1] + 6) = 797;
    WORD1(v785[2]) = 2048;
    *(&v785[2] + 4) = v23;
    WORD2(v785[3]) = 2048;
    *(&v785[3] + 6) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_344:
    *v810 = 0;
    v102 = v785;
    v792 = 0u;
    v793 = 0u;
    memset(v791, 0, sizeof(v791));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v785[0]) = 136315906;
    *(v785 + 4) = "operator[]";
    WORD2(v785[1]) = 1024;
    *(&v785[1] + 6) = 789;
    WORD1(v785[2]) = 2048;
    *(&v785[2] + 4) = v23;
    WORD2(v785[3]) = 2048;
    *(&v785[3] + 6) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_345:
    v785[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(v21 + 126) = 789;
    WORD1(v791[2]) = 2048;
    *(v21 + 132) = v102;
    WORD2(v791[3]) = 2048;
    *(v21 + 142) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_346:
    v785[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v247 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(v21 + 126) = 789;
    WORD1(v791[2]) = 2048;
    *(v21 + 132) = v102;
    WORD2(v791[3]) = 2048;
    *(v21 + 142) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_347;
  }

LABEL_86:
  if (v45)
  {
    v78 = 0;
    v27 = v4[2];
    v79 = v4[4];
    while (!v46)
    {
LABEL_92:
      v64 = v25;
      if (v27 <= v25)
      {
        goto LABEL_646;
      }

      ++v25;
      *(v79 + 2 * v64) = 1184;
      if (++v78 == v45)
      {
        goto LABEL_94;
      }
    }

    v80 = v4[4];
    v81 = v46;
    while (1)
    {
      v77 = v25;
      if (v27 <= v25)
      {
        goto LABEL_341;
      }

      ++v25;
      *(v80 + 2 * v77) = 1168;
      if (!--v81)
      {
        goto LABEL_92;
      }
    }
  }

LABEL_94:
  if (v45 * v42)
  {
    v82 = v4[4];
    v83 = v45 * v42;
    do
    {
      v64 = v25;
      if (v27 <= v25)
      {
        goto LABEL_636;
      }

      ++v25;
      *(v82 + 2 * v64) = 513;
      --v83;
    }

    while (v83);
    v84 = v4[4];
    v85 = v45 * v42;
    do
    {
      v64 = v25;
      if (v27 <= v25)
      {
        goto LABEL_637;
      }

      ++v25;
      *(v84 + 2 * v64) = 1025;
    }

    while (--v85);
  }

  v86 = v751 * v47;
  if (v751 * v47)
  {
    v87 = v4[4];
    v88 = v751 * v47;
    do
    {
      v64 = v25;
      if (v27 <= v25)
      {
        goto LABEL_638;
      }

      ++v25;
      *(v87 + 2 * v64) = 2306;
    }

    while (--v88);
  }

  v89 = v47 * v42;
  if (v47 * v42)
  {
    v90 = v4[4];
    v91 = v47 * v42;
    do
    {
      v64 = v25;
      if (v27 <= v25)
      {
        goto LABEL_639;
      }

      ++v25;
      *(v90 + 2 * v64) = 2114;
    }

    while (--v91);
  }

  if (v86)
  {
    v92 = v4[4];
    v93 = v751 * v47;
    do
    {
      v64 = v25;
      if (v27 <= v25)
      {
        goto LABEL_640;
      }

      ++v25;
      *(v92 + 2 * v64) = 2306;
    }

    while (--v93);
  }

  v94 = v47 * v45;
  if (v47 * v45)
  {
    v95 = v4[4];
    v96 = v47 * v45;
    do
    {
      v64 = v25;
      if (v27 <= v25)
      {
        goto LABEL_641;
      }

      ++v25;
      *(v95 + 2 * v64) = 2178;
    }

    while (--v96);
  }

  if (v86)
  {
    v97 = v4[4];
    v98 = v751 * v47;
    do
    {
      v64 = v25;
      if (v27 <= v25)
      {
        goto LABEL_642;
      }

      ++v25;
      *(v97 + 2 * v64) = 2306;
    }

    while (--v98);
  }

  if (v89)
  {
    v99 = v4[4];
    do
    {
      v64 = v25;
      if (v27 <= v25)
      {
        goto LABEL_643;
      }

      ++v25;
      *(v99 + 2 * v64) = 2114;
    }

    while (--v89);
  }

  if (v86)
  {
    v100 = v4[4];
    do
    {
      v64 = v25;
      if (v27 <= v25)
      {
        goto LABEL_644;
      }

      ++v25;
      *(v100 + 2 * v64) = 2306;
    }

    while (--v86);
  }

  if (v94)
  {
    v101 = v4[4];
    do
    {
      v64 = v25;
      if (v27 <= v25)
      {
        goto LABEL_645;
      }

      ++v25;
      *(v101 + 2 * v64) = 2178;
    }

    while (--v94);
  }

  v754 = v24;
  v726 = v45 * v42;
  v783 = 0;
  v781 = 0;
  v780[0] = 0;
  v780[1] = 0;
  v782 = 0;
  v779 = 0;
  v777 = 0;
  v776[0] = 0;
  v776[1] = 0;
  v27 = v36 + 1;
  v778 = 0;
  re::DynamicArray<float>::resize(v780, v27);
  re::DynamicArray<float>::resize(v776, v27);
  v102 = v781;
  if (!v781)
  {
    goto LABEL_952;
  }

  v103 = v783;
  *v783 = 0;
  v14 = v777;
  v104 = v747;
  if (!v777)
  {
LABEL_953:
    v785[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(v21 + 126) = 789;
    WORD1(v791[2]) = 2048;
    *(v21 + 132) = 0;
    WORD2(v791[3]) = 2048;
    *(v21 + 142) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_954:
    v785[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v14 = v104;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(v21 + 126) = 789;
    WORD1(v791[2]) = 2048;
    *(v21 + 132) = v14;
    WORD2(v791[3]) = 2048;
    *(v21 + 142) = v102;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_955;
  }

  v105 = v779;
  *v779 = v751;
  if (v747 >= 2)
  {
    v106 = v105 + 1;
    v107 = v103 + 1;
    v108 = 1;
    while (v102 != v108)
    {
      *v107 = *(v107 - 1) + v758;
      if (v14 == v108)
      {
        goto LABEL_681;
      }

      *v106 = *(v106 - 1) + v758;
      ++v106;
      ++v108;
      ++v107;
      if (v747 == v108)
      {
        goto LABEL_140;
      }
    }

LABEL_680:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v102;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v102;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_681:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v14;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_682:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v14;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_683:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v102;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_684:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v17;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_685:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v102;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_686:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v14;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_687:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v102;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_688:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v102;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_689:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v102;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_690:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v14;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v102;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_691:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v14;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v102;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_692:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v14;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v102;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_693:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v14;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v102;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_694:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v14;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_695:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v102;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_696:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v17;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_697:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    LODWORD(v311) = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v102;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    v466 = _os_crash_msg();
    __break(1u);
LABEL_698:
    v534 = v528;
    v532 = v528;
    v21 = v732;
    v529 = v757;
    goto LABEL_699;
  }

LABEL_140:
  if (v102 <= v747)
  {
    goto LABEL_954;
  }

  v102 = *v748;
  v103[v747] = v748[0];
  if (v14 <= v747)
  {
LABEL_955:
    v785[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v695 = v104;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(v21 + 126) = 789;
    WORD1(v791[2]) = 2048;
    *(v21 + 132) = v695;
    WORD2(v791[3]) = 2048;
    *(v21 + 142) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_956;
  }

  v105[v747] = v748[0];
  v775 = 0;
  v772[1] = 0;
  v773 = 0;
  v771 = 0;
  v772[0] = 0;
  v774 = 0;
  v768[1] = 0;
  v769 = 0;
  v767 = 0;
  v768[0] = 0;
  v770 = 0;
  v764[1] = 0;
  v765 = 0;
  v763 = 0;
  v764[0] = 0;
  v766 = 0;
  v760[1] = 0;
  v761 = 0;
  v17 = v757;
  v3 = (v757 + 1);
  v760[0] = 0;
  v762 = 0;
  re::DynamicArray<unsigned int>::resize(v772, (v3 + v3 * v756), &re::kInvalidMeshIndex);
  re::DynamicArray<float>::resize(v764, (v750 + 2 * v742 - 3));
  re::DynamicArray<float>::resize(v768, v773);
  re::DynamicArray<float>::resize(v760, v765);
  v14 = v773;
  if (!v773)
  {
LABEL_956:
    v785[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(v21 + 126) = 789;
    WORD1(v791[2]) = 2048;
    *(v21 + 132) = 0;
    WORD2(v791[3]) = 2048;
    *(v21 + 142) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_957:
    v785[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(v21 + 126) = 789;
    WORD1(v791[2]) = 2048;
    *(v21 + 132) = v17;
    WORD2(v791[3]) = 2048;
    *(v21 + 142) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_958:
    v785[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v696 = v120;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(v21 + 126) = 789;
    WORD1(v791[2]) = 2048;
    *(v21 + 132) = v696;
    WORD2(v791[3]) = 2048;
    *(v21 + 142) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_959:
    v785[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v102 = v124;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(v21 + 126) = 789;
    WORD1(v791[2]) = 2048;
    *(v21 + 132) = v102;
    WORD2(v791[3]) = 2048;
    *(v21 + 142) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_960:
    v785[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(v21 + 126) = 789;
    WORD1(v791[2]) = 2048;
    *(v21 + 132) = 0;
    WORD2(v791[3]) = 2048;
    *(v21 + 142) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_961:
    v785[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    LODWORD(v311) = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(v21 + 126) = 789;
    WORD1(v791[2]) = 2048;
    *(v21 + 132) = v102;
    WORD2(v791[3]) = 2048;
    *(v21 + 142) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_962:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    LODWORD(v811[0]) = 136315906;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = (v14 + v27);
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v311;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_963:
    v785[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v697 = v120;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(v21 + 126) = 789;
    WORD1(v791[2]) = 2048;
    *(v21 + 132) = v697;
    WORD2(v791[3]) = 2048;
    *(v21 + 142) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_964:
    v785[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v64 = v124;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(v21 + 126) = 789;
    WORD1(v791[2]) = 2048;
    *(v21 + 132) = v64;
    WORD2(v791[3]) = 2048;
    *(v21 + 142) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_965;
  }

  v109 = v775;
  *v775 = 2 * v755 + v748[0];
  v110 = ~v747;
  if (v757 > 1)
  {
    v111 = 1;
    v112 = v747 * ((8 * v758) | 1) + (v756 + v22 - 4) * v27 + 24;
    while (v14 != v111)
    {
      v109[v111++] = v112;
      v112 += v110;
      if (v757 == v111)
      {
        goto LABEL_147;
      }
    }

    goto LABEL_682;
  }

LABEL_147:
  v17 = v757;
  if (v14 <= v757)
  {
    goto LABEL_957;
  }

  v113 = v27 * (v757 - 1);
  v109[v757] = 3 * v755 + v748[0];
  if (v756 >= 2)
  {
    v114 = v756 - 1;
    v115 = v747 * ((8 * v758) | 1);
    v116 = v115 + (v22 + 2 * v756 - 5) * v27 + 24;
    v117 = v113 + v115 + 24;
    v118 = v22 + 1;
    v119 = v757 + 1;
    do
    {
      v102 = v119;
      if (v14 <= v119)
      {
        goto LABEL_683;
      }

      v109[v119] = v117;
      v17 = v118;
      if (v14 <= v118)
      {
        goto LABEL_684;
      }

      v109[v118] = v116;
      v116 += v110;
      v117 += v27;
      v118 += v3;
      v119 += v3;
    }

    while (--v114);
  }

  v120 = (v3 * v756);
  if (v14 <= v120)
  {
    goto LABEL_958;
  }

  v109[v120] = v755 + v748[0];
  if (v757 >= 2)
  {
    v121 = v757 - 1;
    v122 = v747 * ((8 * v758) | 1) + 24;
    v123 = v120 + 1;
    do
    {
      v102 = v123;
      if (v14 <= v123)
      {
        goto LABEL_685;
      }

      v109[v123] = v122;
      v122 += v27;
      ++v123;
    }

    while (--v121);
  }

  v124 = (v120 + v757);
  if (v14 <= v124)
  {
    goto LABEL_959;
  }

  v109[v124] = v748[0];
  if (v756 >= 2)
  {
    v125 = v757 + 2;
    v126 = 1;
    while (1)
    {
      v127 = v125;
      v128 = v757 - 1;
      if (v757 >= 2)
      {
        break;
      }

LABEL_164:
      ++v126;
      v125 += v3;
      if (v126 == v756)
      {
        goto LABEL_165;
      }
    }

    while (1)
    {
      v102 = v127;
      if (v14 <= v127)
      {
        goto LABEL_345;
      }

      v109[v127] = v20;
      v20 = (v20 + 1);
      ++v127;
      if (!--v128)
      {
        goto LABEL_164;
      }
    }
  }

LABEL_165:
  v129 = v751 + v757;
  v130 = 3 * v758;
  if (v758)
  {
    v131 = 0;
    v14 = v765;
    v132 = v767;
    while (v14 != v131)
    {
      v132[v131] = v131;
      v102 = v129 + v131;
      if (v14 <= v102)
      {
        goto LABEL_677;
      }

      v132[v102] = v755 + v131;
      v102 = (v757 + v756 + 2 * v758 - 2 + v131);
      if (v14 <= v102)
      {
        goto LABEL_678;
      }

      v132[v102] = 2 * v755 + v131;
      v102 = (v756 + v22 + v130 - 3 + v131);
      if (v14 <= v102)
      {
        goto LABEL_679;
      }

      v132[v102] = 3 * v755 + v131++;
      if (v758 == v131)
      {
        goto LABEL_172;
      }
    }

    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v14;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_677:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v102;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_678:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v102;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_679:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v102;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_680;
  }

LABEL_172:
  if (v757 >= 2)
  {
    v102 = v765;
    v133 = v767;
    v134 = v757 - 1;
    v135 = v27 * (v757 - 2) + 8 * v748[0] + 24;
    v136 = v758;
    do
    {
      v14 = v136;
      if (v102 <= v136)
      {
        goto LABEL_690;
      }

      v133[v136] = v135;
      v135 += v110;
      ++v136;
    }

    while (--v134);
  }

  v137 = v129 + v758;
  if (v756 >= 2)
  {
    v102 = v765;
    v138 = v767;
    v139 = v756 - 1;
    v140 = (v757 + v756 - 3) * v27 + 8 * v748[0] + 24;
    v141 = v129 + v758;
    do
    {
      v14 = v141;
      if (v102 <= v141)
      {
        goto LABEL_691;
      }

      v138[v141] = v140;
      v140 += v110;
      ++v141;
    }

    while (--v139);
  }

  if (v757 >= 2)
  {
    v102 = v765;
    v142 = v767;
    v143 = v757 - 1;
    v144 = (v756 + v22 - 4) * v27 + 8 * v748[0] + 24;
    v145 = v757 + v756 + v130 - 2;
    do
    {
      v14 = v145;
      if (v102 <= v145)
      {
        goto LABEL_692;
      }

      v142[v145] = v144;
      v144 += v110;
      ++v145;
    }

    while (--v143);
  }

  if (v756 >= 2)
  {
    v102 = v765;
    v146 = v767;
    v147 = v756 - 1;
    v148 = (v22 + 2 * v756 - 5) * v27 + 8 * v748[0] + 24;
    v149 = v756 + v750 + v22 - 3;
    do
    {
      v14 = v149;
      if (v102 <= v149)
      {
        goto LABEL_693;
      }

      v146[v149] = v148;
      v148 += v110;
      ++v149;
    }

    while (--v147);
  }

  v14 = v769;
  if (!v769)
  {
    goto LABEL_960;
  }

  v730 = (4 * v755);
  v150 = v771;
  *v771 = v730 + v748[0];
  if (v757 >= 2)
  {
    v151 = 1;
    v152 = v747 * ((8 * v758) | 1) + (3 * v756 + 4 * v757 - 8) * v27 + 24;
    while (v14 != v151)
    {
      v150[v151++] = v152;
      v152 += v110;
      if (v757 == v151)
      {
        goto LABEL_193;
      }
    }

    goto LABEL_694;
  }

LABEL_193:
  v102 = v757;
  if (v14 <= v757)
  {
    goto LABEL_961;
  }

  v728 = 5 * v755;
  v150[v757] = 5 * v755 + v748[0];
  if (v756 >= 2)
  {
    v153 = v756 - 1;
    v154 = v747 * ((8 * v758) | 1);
    v155 = v154 + (3 * (v757 + v756) - 7) * v27 + 24;
    v156 = v154 + (3 * v756 + 4 * v757 - 7) * v27 + 24;
    v157 = v22 + 1;
    v158 = v757 + 1;
    do
    {
      v102 = v158;
      if (v14 <= v158)
      {
        goto LABEL_695;
      }

      v150[v158] = v156;
      v17 = v157;
      if (v14 <= v157)
      {
        goto LABEL_696;
      }

      v150[v157] = v155;
      v155 += ~v747;
      v156 += v27;
      v157 += v3;
      v158 += v3;
    }

    while (--v153);
  }

  if (v14 <= v120)
  {
    goto LABEL_963;
  }

  v159 = v27 * v741;
  v727 = v744 - v755;
  v150[v120] = v744 - v755 + v748[0];
  if (v757 >= 2)
  {
    v160 = v757 - 1;
    v161 = v159 + v747 * ((8 * v758) | 1) + 24;
    v162 = v120 + 1;
    do
    {
      v102 = v162;
      if (v14 <= v162)
      {
        goto LABEL_697;
      }

      v150[v162] = v161;
      v161 += v27;
      ++v162;
    }

    while (--v160);
  }

  if (v14 <= v124)
  {
    goto LABEL_964;
  }

  v150[v124] = v748[0] + 6 * v755;
  if (v756 >= 2)
  {
    v163 = v757 + 2;
    v164 = 1;
    while (1)
    {
      v165 = v163;
      v166 = v757 - 1;
      if (v757 >= 2)
      {
        break;
      }

LABEL_210:
      ++v164;
      v163 += v3;
      if (v164 == v756)
      {
        goto LABEL_211;
      }
    }

    while (1)
    {
      v102 = v165;
      if (v14 <= v165)
      {
        goto LABEL_346;
      }

      v150[v165] = v20;
      v20 = (v20 + 1);
      ++v165;
      if (!--v166)
      {
        goto LABEL_210;
      }
    }
  }

LABEL_211:
  v741 = v757 + 1;
  v3 = v758;
  if (v758)
  {
    v167 = 0;
    v14 = v761;
    v168 = v763;
    v169 = v756 + v22 + v130 - 3;
    v170 = v757 + v756 + 2 * v758 - 2;
    v171 = v763;
    while (v14 + v167)
    {
      *v171 = v758 - v748[0] + 8 * v748[0] + 20 + v167;
      v102 = v129;
      if (v14 <= v129)
      {
        goto LABEL_687;
      }

      v168[v129] = v758 * ((6 * v747) | 1) + 17 + v167;
      v102 = v170;
      if (v14 <= v170)
      {
        goto LABEL_688;
      }

      v168[v170] = v758 + 5 * v748[0] + 14 + v167;
      v102 = v169;
      if (v14 <= v169)
      {
        goto LABEL_689;
      }

      v168[v169] = v758 + v758 * v737 + 11 + v167;
      ++v171;
      --v167;
      ++v169;
      ++v170;
      ++v129;
      if (-v758 == v167)
      {
        goto LABEL_218;
      }
    }

    goto LABEL_686;
  }

LABEL_218:
  v172 = v744 + v159;
  if (v757 >= 2)
  {
    v64 = v761;
    v173 = v763;
    v174 = v757 - 1;
    v175 = v758;
    v176 = v172;
    while (1)
    {
      v14 = v175;
      if (v64 <= v175)
      {
        break;
      }

      v173[v175] = v176;
      v176 += v27;
      ++v175;
      if (!--v174)
      {
        goto LABEL_222;
      }
    }

    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v14;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v64;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_737:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    LODWORD(v311) = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v14;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v64;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_738:
    v603 = re::GeomMesh::accessVertexPositions(v3);
    LODWORD(v604) = *(v20 + 40);
    v605 = *(v20 + 52);
    v606 = *(v20 + 56);
    v607 = *(v20 + 60);
    v3 = (v607 * v606);
    v608 = v3 + 1;
    if (*(v20 + 20) <= 0.0)
    {
      goto LABEL_789;
    }

    v609 = *(v20 + 24);
    v610 = v607 - 1;
    if (v609 <= 0.0)
    {
      v3 = v608;
    }

    else
    {
      v3 = 0;
    }

    if (v609 > 0.0)
    {
      v611 = 1;
    }

    else
    {
      v611 = v610;
    }

    if (v3 >= v311)
    {
      goto LABEL_1063;
    }

    v20 = (v611 * v606);
    if (v20 >= v311)
    {
      goto LABEL_1065;
    }

    v14 = v400;
    if (v3 >= v400)
    {
      goto LABEL_1067;
    }

    if (v20 >= v400)
    {
      goto LABEL_1069;
    }

    if (v27)
    {
      v14 = *v17;
      if (v14 < v311)
      {
        if (!v27)
        {
          goto LABEL_888;
        }

        v612 = 0;
        v613 = vsub_f32(*(v64 + 8 * v3), *(v64 + 8 * v20));
        v614 = vsubq_f32(*(v603 + 16 * v3), *(v603 + 16 * v20));
        v615 = vmulq_f32(v614, v614);
        v616 = (*&v604 * (sqrtf(vaddv_f32(vmul_f32(v613, v613))) / sqrtf(v615.f32[2] + vaddv_f32(*v615.f32)))) / v605;
        v617 = *(v64 + 8 * v14);
        v618 = v605 + 1;
        v14 = v311;
        v619 = v733 + 8 * v748[0] + v734 + 24;
        v620 = 0.0;
        while (1)
        {
          if (v612 == v27)
          {
            goto LABEL_1047;
          }

          v3 = *(v17 + 4 * v612);
          if (v3 >= v311)
          {
            goto LABEL_1048;
          }

          v621 = *(v64 + 8 * v3);
          v622 = vsub_f32(v621, v617);
          v620 = v620 + sqrtf(vaddv_f32(vmul_f32(v622, v622)));
          if (v618)
          {
            break;
          }

LABEL_759:
          ++v612;
          v619 += v618;
          v617 = v621;
          if (v612 == v27)
          {
            goto LABEL_888;
          }
        }

        v623 = 0;
        v3 = v619;
        v624 = v618;
        while (v3 < v311)
        {
          *&v625 = v616 * v623;
          *(&v625 + 1) = v620;
          *(v64 + 8 * v3) = v625;
          ++v623;
          ++v3;
          if (!--v624)
          {
            goto LABEL_759;
          }
        }

LABEL_965:
        *v810 = 0;
        v786 = 0u;
        v787 = 0u;
        memset(v785, 0, sizeof(v785));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v811[0]) = 136315906;
        *(v811 + 4) = "operator[]";
        WORD6(v811[0]) = 1024;
        *(v811 + 14) = 621;
        WORD1(v811[1]) = 2048;
        *(&v811[1] + 4) = v3;
        WORD6(v811[1]) = 2048;
        *(&v811[1] + 14) = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_966;
      }
    }

    else
    {
LABEL_1070:
      re::internal::assertLog(6, v400, v604, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
      _os_crash();
      __break(1u);
    }

    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v14;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v311;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_222:
  if (v756 >= 2)
  {
    v177 = v172 + v113;
    v64 = v761;
    v178 = v763;
    v179 = v756 - 1;
    do
    {
      v14 = v137;
      if (v64 <= v137)
      {
        goto LABEL_737;
      }

      v178[v137] = v177;
      v177 += v27;
      ++v137;
    }

    while (--v179);
  }

  if (v757 >= 2)
  {
    v64 = v761;
    v180 = v763;
    v181 = v757 - 1;
    v182 = (3 * v742 - 6) * v27 + 8 * v748[0] + 24;
    v183 = v757 + v756 + v130 - 2;
    while (1)
    {
      v14 = v183;
      if (v64 <= v183)
      {
        break;
      }

      v180[v183] = v182;
      v182 += v27;
      ++v183;
      if (!--v181)
      {
        goto LABEL_230;
      }
    }

    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v14;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v64;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_762:
    v785[0] = 0;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v797 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v791 + 4) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(&v791[1] + 6) = 789;
    WORD1(v791[2]) = 2048;
    *(&v791[2] + 4) = v14;
    WORD2(v791[3]) = 2048;
    *(&v791[3] + 6) = v64;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_763:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    LODWORD(v811[0]) = 136315906;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = (v27 + v64);
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_764:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v415 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v27 + v64;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v23;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_765:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v27 + v64;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v415;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_766:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v311 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    LODWORD(v811[0]) = 136315906;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = (v27 + v64);
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_767:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v14 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v27 + v64;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v311;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_768:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    LODWORD(v311) = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v27 + v64;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v23;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_769;
  }

LABEL_230:
  if (v756 >= 2)
  {
    v64 = v761;
    v184 = v763;
    v185 = v756 - 1;
    v186 = (3 * v756 + 4 * v757 - 7) * v27 + 8 * v748[0] + 24;
    v187 = v756 + v750 + v22 - 3;
    do
    {
      v14 = v187;
      if (v64 <= v187)
      {
        goto LABEL_762;
      }

      v184[v187] = v186;
      v186 += v27;
      ++v187;
    }

    while (--v185);
  }

  if (!v765)
  {
    goto LABEL_975;
  }

  v737 = 3 * v755;
  v725 = 2 * v755;
  v767[v765 - 1] = *v767;
  if (!v761)
  {
LABEL_976:
    v785[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    LODWORD(v311) = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(v21 + 126) = 789;
    WORD1(v791[2]) = 2048;
    *(v21 + 132) = 0;
    WORD2(v791[3]) = 2048;
    *(v21 + 142) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_977:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    LODWORD(v811[0]) = 136315906;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = (v14 + v27);
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v311;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_978:
    *v810 = 0;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    LODWORD(v311) = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v14;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_979:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v417 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    LODWORD(v811[0]) = 136315906;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = (v14 + v27);
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v311;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_980;
  }

  v763[v761 - 1] = *v763;
  bzero(&v797, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v798, 1uLL);
  ++DWORD2(v799);
  re::internal::GeomAttributeManager::GeomAttributeManager((&v800 + 8));
  re::internal::GeomAttributeManager::addAttribute((&v800 + 8), "vertexPosition", 1, 7);
  if (v23 < v799)
  {
    v189 = v809;
    if (v809)
    {
      v190 = 0;
      do
      {
        v191 = re::internal::GeomAttributeContainer::attributeByIndex(v808, v190);
        re::internal::accessFaceVaryingAttributeSubmesh(v191, v192);
        ++v190;
      }

      while (v189 != v190);
    }
  }

  re::DynamicArray<re::GeomCell4>::resize(&v798, v23);
  v805 = v23;
  if (v806)
  {
    v193 = v807;
    v194 = 8 * v806;
    do
    {
      v195 = *v193++;
      (*(*v195 + 80))(v195, v805);
      v194 -= 8;
    }

    while (v194);
  }

  DWORD2(v797) = v740[0];
  v802 = v740[0];
  if (v803)
  {
    v196 = v804;
    v197 = 8 * v803;
    do
    {
      v198 = *v196++;
      (*(*v198 + 80))(v198, v802);
      v197 -= 8;
    }

    while (v197);
  }

  if (v4[1] < v23)
  {
    re::DynamicArray<unsigned short>::setCapacity(v4, v23);
  }

  v199 = v751;
  v200 = v752;
  if (!v752)
  {
    goto LABEL_264;
  }

  v201 = 0;
  v202 = 0;
  do
  {
    v203 = v201;
    if (v199)
    {
      v204 = v202 * v758;
      v203 = v201 + v199;
      v205 = 1;
      do
      {
        v206 = v204 + 1;
        re::GeomMeshBuilder::setFaceVertices(&v797, v201 + v205++ - 1, v204, v204 + 1, v758 + v204 + 1, v758 + v204);
        v204 = v206;
      }

      while (v758 != v205);
      v199 = v751;
      v200 = v752;
    }

    ++v202;
    v201 += v199;
  }

  while (v202 != v200);
LABEL_265:
  v207 = (v200 * v3);
  re::GeomMeshBuilder::setFaceVertices(&v797, v203, v748[0], v200 * v3, v748[0] + 1);
  *v731 = v748[0] + 1;
  re::GeomMeshBuilder::setFaceVertices(&v797, v203 + 1, v748[0], v731[0], v748[0] + 2);
  *v740 = v748[0] + 2;
  v723 = v748[0] - 1;
  re::GeomMeshBuilder::setFaceVertices(&v797, v203 + 2, v748[0], v748[0] + 2, v748[0] - 1);
  v208 = v203 + 3;
  v209 = (v3 | 0xFFFFFFFE) + v3;
  v210 = v209 >> 1;
  v724 = v207;
  if (!v209)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_272;
    }

    goto LABEL_274;
  }

  if (v210 <= 1)
  {
    v211 = 1;
  }

  else
  {
    v211 = v209 >> 1;
  }

  v212 = v207;
  v20 = v748[0] + 1;
  do
  {
    LODWORD(v207) = v212 + 1;
    re::GeomMeshBuilder::setFaceVertices(&v797, v208++, v731[0], v212, v212 + 1);
    v212 = v207;
    --v211;
  }

  while (v211);
  if (v3)
  {
LABEL_274:
    v213 = v748[0] + 2;
    re::GeomMeshBuilder::setFaceVertices(&v797, v208, v731[0], v207, v740[0]);
    goto LABEL_275;
  }

LABEL_272:
  v213 = v748[0] + 2;
  re::GeomMeshBuilder::setFaceVertices(&v797, v208, v731[0], v207, v207 + 1, v740[0]);
  LODWORD(v207) = v207 + 1;
LABEL_275:
  v729 = 2 * v737;
  if (v209)
  {
    if (v210 <= 1)
    {
      v210 = 1;
    }

    v214 = v208 + 1;
    do
    {
      re::GeomMeshBuilder::setFaceVertices(&v797, v214++, v213, v207, v207 + 1);
      LODWORD(v207) = v207 + 1;
      --v210;
    }

    while (v210);
  }

  v14 = &v797;
  v215 = 1;
  v3 = v811;
  v216 = v754;
  v22 = v754;
  v217 = v755;
  do
  {
    LODWORD(v750) = v215;
    if (v216)
    {
      v20 = 0;
      v27 = v799;
      while (v27 > v20)
      {
        v218 = 0;
        v219 = v800;
        v811[0] = *(v800 + 16 * v20);
        v21 = HIDWORD(v811[0]);
        if (HIDWORD(v811[0]) == -1)
        {
          v220 = 3;
        }

        else
        {
          v220 = 4;
        }

        do
        {
          *(v811 + v218++) += v217;
        }

        while (v220 != v218);
        v23 = v22;
        if (v27 <= v22)
        {
          goto LABEL_343;
        }

        v221 = (v219 + 16 * v22);
        if (*v221 != -1)
        {
          v222 = v221[3];
          _ZF = v21 == -1 || HIDWORD(v811[0]) == -1;
          v224 = _ZF;
          if ((((v222 != -1) ^ v224) & 1) == 0)
          {
            v225 = v809;
            if (v809)
            {
              v226 = 0;
              do
              {
                v227 = re::internal::GeomAttributeContainer::attributeByIndex(v808, v226);
                re::internal::accessFaceVaryingAttributeSubmesh(v227, v228);
                ++v226;
              }

              while (v225 != v226);
              v27 = v799;
              v216 = v754;
            }
          }
        }

        if (v27 <= v22)
        {
          goto LABEL_344;
        }

        v230 = DWORD2(v811[0]);
        v229 = HIDWORD(v811[0]);
        if (v21 == -1)
        {
          v229 = -1;
        }

        v231 = v800 + 16 * v22;
        *v231 = *&v811[0];
        *(v231 + 8) = v230;
        *(v231 + 12) = v229;
        v22 = (v22 + 1);
        if (++v20 == v216)
        {
          goto LABEL_305;
        }
      }

      goto LABEL_342;
    }

LABEL_305:
    v217 += v755;
    v215 = v750 + 1;
  }

  while (v750 != 7);
  v791[0] = v783;
  v791[1] = v781;
  v785[0] = v779;
  v785[1] = v777;
  LODWORD(v811[0]) = v744;
  *v810 = v735;
  v232 = v757;
  v233 = v756;
  v22 = v785;
  v3 = v758;
  v234 = v745;
  if (!v756)
  {
    goto LABEL_329;
  }

  v235 = 0;
  while (2)
  {
    if (v232)
    {
      v236 = v235 * v741;
      v14 = ++v235 * v741;
      v17 = v232;
      while (1)
      {
        v55 = v236;
        v27 = v773;
        if (v773 <= v236)
        {
          break;
        }

        v3 = v236 + 1;
        if (v773 <= v3)
        {
          goto LABEL_449;
        }

        v20 = (v14 + 1);
        if (v773 <= v20)
        {
          goto LABEL_450;
        }

        v21 = v14;
        if (v773 <= v14)
        {
          goto LABEL_451;
        }

        re::GeomMeshBuilder::setFaceVertices(&v797, v759[0]++, v775[v236], v775[v3], v775[v20], v775[v14]);
        v14 = (v14 + 1);
        v236 = v55 + 1;
        --v17;
        v3 = v758;
        if (!v17)
        {
          v233 = v756;
          v232 = v757;
          v234 = v745;
          goto LABEL_317;
        }
      }

      *&v811[0] = 0;
      v792 = 0u;
      v793 = 0u;
      memset(v791, 0, sizeof(v791));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v785[0]) = 136315906;
      *(v785 + 4) = "operator[]";
      WORD2(v785[1]) = 1024;
      *(&v785[1] + 6) = 797;
      WORD1(v785[2]) = 2048;
      *(&v785[2] + 4) = v55;
      WORD2(v785[3]) = 2048;
      *(&v785[3] + 6) = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_449:
      *&v811[0] = 0;
      v792 = 0u;
      v793 = 0u;
      memset(v791, 0, sizeof(v791));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v785[0]) = 136315906;
      *(v785 + 4) = "operator[]";
      WORD2(v785[1]) = 1024;
      *(&v785[1] + 6) = 797;
      WORD1(v785[2]) = 2048;
      *(&v785[2] + 4) = v3;
      WORD2(v785[3]) = 2048;
      *(&v785[3] + 6) = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_450:
      *&v811[0] = 0;
      v792 = 0u;
      v793 = 0u;
      memset(v791, 0, sizeof(v791));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v785[0]) = 136315906;
      *(v785 + 4) = "operator[]";
      WORD2(v785[1]) = 1024;
      *(&v785[1] + 6) = 797;
      WORD1(v785[2]) = 2048;
      *(&v785[2] + 4) = v20;
      WORD2(v785[3]) = 2048;
      *(&v785[3] + 6) = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_451:
      *&v811[0] = 0;
      v792 = 0u;
      v793 = 0u;
      memset(v791, 0, sizeof(v791));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v785[0]) = 136315906;
      *(v785 + 4) = "operator[]";
      WORD2(v785[1]) = 1024;
      *(&v785[1] + 6) = 797;
      WORD1(v785[2]) = 2048;
      *(&v785[2] + 4) = v21;
      WORD2(v785[3]) = 2048;
      *(&v785[3] + 6) = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_452:
      v785[0] = 0;
      *(v21 + 272) = 0u;
      *(v21 + 288) = 0u;
      *(v21 + 240) = 0u;
      *(v21 + 256) = 0u;
      *(v21 + 224) = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v791[0]) = 136315906;
      *(v21 + 116) = "operator[]";
      WORD2(v791[1]) = 1024;
      *(v21 + 126) = 789;
      WORD1(v791[2]) = 2048;
      *(v21 + 132) = v55;
      WORD2(v791[3]) = 2048;
      *(v21 + 142) = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_453:
      v785[0] = 0;
      *(v21 + 272) = 0u;
      *(v21 + 288) = 0u;
      *(v21 + 240) = 0u;
      *(v21 + 256) = 0u;
      *(v21 + 224) = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v791[0]) = 136315906;
      *(v21 + 116) = "operator[]";
      WORD2(v791[1]) = 1024;
      *(v21 + 126) = 789;
      WORD1(v791[2]) = 2048;
      *(v21 + 132) = v55;
      WORD2(v791[3]) = 2048;
      *(v21 + 142) = v27;
      _os_log_send_and_compose_impl();
      v351 = _os_crash_msg();
      __break(1u);
LABEL_454:
      v361.i64[0] = 0x7F0000007FLL;
      v361.i64[1] = 0x7F0000007FLL;
      v360 = vnegq_f32(v361).u64[0];
      v356 = 0.0;
      v354 = 0xFFFFFFFFLL;
      v367 = 0x7F0000007FLL;
      v366 = v360;
      v355 = v27;
      goto LABEL_455;
    }

    ++v235;
LABEL_317:
    if (v235 != v233)
    {
      continue;
    }

    break;
  }

  v237 = 0;
  do
  {
    if (v232)
    {
      v238 = v237 * v741;
      v239 = ++v237 * v741;
      v17 = v232;
      do
      {
        v64 = v238;
        v27 = v769;
        if (v769 <= v238)
        {
          goto LABEL_631;
        }

        v3 = v238 + 1;
        if (v769 <= v3)
        {
          goto LABEL_632;
        }

        v20 = v239 + 1;
        if (v769 <= v20)
        {
          goto LABEL_633;
        }

        v21 = v239;
        if (v769 <= v239)
        {
          goto LABEL_634;
        }

        re::GeomMeshBuilder::setFaceVertices(&v797, v759[0]++, v771[v238], v771[v3], v771[v20], v771[v239++]);
        v238 = v64 + 1;
        --v17;
        v3 = v758;
      }

      while (v17);
      v233 = v756;
      v232 = v757;
      v234 = v745;
    }

    else
    {
      ++v237;
    }
  }

  while (v237 != v233);
LABEL_329:
  if (v746)
  {
    v240 = 0;
    v241 = v733 + 8 * v748[0] + v734;
    v242 = v241 + v749;
    do
    {
      if (v749)
      {
        v243 = v234;
        for (i = 0; i != v749; ++i)
        {
          re::GeomMeshBuilder::setFaceVertices(&v797, v243 + i, v241 + i + 24, v241 + i + 25, v242 + i + 26, v242 + i + 25);
        }

        v234 = v243 + i;
      }

      ++v240;
      v241 += v753;
      v242 += v753;
    }

    while (v240 != v746);
  }

  v102 = a1;
  v245 = re::GeomMesh::operator=(a1, &v797 + 2);
  re::GeomMesh::setName(v245, v797);
  re::GeomMesh::freeName(&v797);
  v247 = a2;
  if (*a2 == 1)
  {
    re::addVertexUVs(a1, v246);
  }

  v248 = *(a2 + 72);
  v14 = v755;
  if (v248)
  {
    v17 = re::GeomMesh::addAttribute(a1, v248, 1, 4);
    goto LABEL_348;
  }

LABEL_347:
  v17 = 0;
LABEL_348:
  v249 = *v247[3].i32;
  v250 = v247[1];
  re::internal::UIKitStyleBezierArc::UIKitStyleBezierArc(v791, *&vdup_lane_s32(v247[2], 0), v249);
  v794 = v7;
  v795 = v249;
  v796 = v250;
  v27 = v747;
  v750 = v17;
  if (v247->i8[5] != 1)
  {
    v266 = re::GeomMesh::modifyVertexPositions(v102);
    v268 = v267;
    *v810 = v266;
    *&v810[8] = v267;
    v14 = re::modifyVertexTangents(v102, v267);
    v270 = v269;
    v271 = re::modifyVertexNormals(v102, v269);
    v3 = v741;
    if (!v730)
    {
LABEL_367:
      v284 = v755;
      v273.f32[0] = v9;
      v285 = a1;
      goto LABEL_438;
    }

    v275 = 0;
    v64 = v268;
    v276 = 16 * v268;
    v277 = v268 - v730;
    if (v268 < v730)
    {
      v277 = 0;
    }

    v278 = 16 * v277;
    if (v270 >= v730)
    {
      v279 = v270 - v730;
    }

    else
    {
      v279 = 0;
    }

    v280 = v272 - v730;
    if (v272 < v730)
    {
      v280 = 0;
    }

    v281 = 16 * v280;
    v20 = v272;
    v282 = 16 * v279;
    v21 = v270;
    v283 = 16 * v270;
    v27 = v730;
    while (1)
    {
      if (v276 == v275)
      {
        goto LABEL_928;
      }

      if (v278 == v275)
      {
        break;
      }

      v273.i32[0] = *(v266 + v275);
      v273.f32[1] = -*(v266 + v275 + 4);
      v273.f32[2] = -*(v266 + v275 + 8);
      *(v266 + 16 * v730 + v275) = v273;
      if (v283 == v275)
      {
        goto LABEL_930;
      }

      if (v282 == v275)
      {
        goto LABEL_931;
      }

      v273.i32[0] = *(v14 + v275);
      v273.f32[1] = -*(v14 + v275 + 4);
      v273.f32[2] = -*(v14 + v275 + 8);
      *(v14 + 16 * v730 + v275) = v273;
      if (16 * v272 == v275)
      {
        goto LABEL_932;
      }

      if (v281 == v275)
      {
        goto LABEL_933;
      }

      v273.i32[0] = *(v271 + v275);
      v273.f32[1] = -*(v271 + v275 + 4);
      v273.f32[2] = -*(v271 + v275 + 8);
      *(v271 + 16 * v730 + v275) = v273;
      v275 += 16;
      ++v27;
      if (16 * v730 == v275)
      {
        goto LABEL_367;
      }
    }

LABEL_929:
    v784 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v27;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v64;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_930:
    v784 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v21;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v21;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_931:
    v784 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v27;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v21;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_932:
    v784 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v20;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_933:
    v784 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v27;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_934:
    *v810 = 0;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 613;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v17;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_935:
    *v810 = 0;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 613;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v14;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_936:
    *v810 = 0;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v14;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v64;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_937:
    *v810 = 0;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 613;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v21;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_938:
    *v810 = 0;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 613;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v3;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_939:
    *v810 = 0;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v3;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v64;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_940:
    v784 = 0;
    v812 = 0u;
    v813 = 0u;
    memset(v811, 0, sizeof(v811));
    v27 = v323;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *&v810[4] = "operator[]";
    *&v810[12] = 1024;
    *&v810[14] = 621;
    *v810 = 136315906;
    *&v810[18] = 2048;
    *&v810[20] = (v27 + v64 + 14);
    *&v810[28] = 2048;
    *&v810[30] = v17;
    _os_log_send_and_compose_impl();
    v327 = _os_crash_msg();
    __break(1u);
LABEL_941:
    v784 = 0;
    v812 = 0u;
    v813 = 0u;
    memset(v811, 0, sizeof(v811));
    v693 = v327;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v810 = 136315906;
    *&v810[4] = "operator[]";
    *&v810[12] = 1024;
    *&v810[14] = 621;
    *&v810[18] = 2048;
    *&v810[20] = v693;
    *&v810[28] = 2048;
    *&v810[30] = v759[0];
    _os_log_send_and_compose_impl();
    v327 = _os_crash_msg();
    __break(1u);
LABEL_942:
    v784 = 0;
    v64 = v810;
    v812 = 0u;
    v813 = 0u;
    memset(v811, 0, sizeof(v811));
    v694 = v327;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v810 = 136315906;
    *&v810[4] = "operator[]";
    *&v810[12] = 1024;
    *&v810[14] = 621;
    *&v810[18] = 2048;
    *&v810[20] = v694;
    *&v810[28] = 2048;
    *&v810[30] = v22;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_943:
    v784 = 0;
    v812 = 0u;
    v813 = 0u;
    memset(v811, 0, sizeof(v811));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v810 = 136315906;
    *&v810[4] = "operator[]";
    *&v810[12] = 1024;
    *&v810[14] = 621;
    *&v810[18] = 2048;
    *&v810[20] = 6 * v748[0] - v27 + v64 + 17;
    *&v810[28] = 2048;
    *&v810[30] = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_944:
    v784 = 0;
    v812 = 0u;
    v813 = 0u;
    memset(v811, 0, sizeof(v811));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *&v810[4] = "operator[]";
    *&v810[12] = 1024;
    *&v810[14] = 621;
    *v810 = 136315906;
    *&v810[18] = 2048;
    *&v810[20] = (v64 - v748[0] + 8 * v748[0] + 20);
    *&v810[28] = 2048;
    *&v810[30] = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_945:
    v784 = 0;
    v812 = 0u;
    v813 = 0u;
    memset(v811, 0, sizeof(v811));
    v339 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v810 = 136315906;
    *&v810[4] = "operator[]";
    *&v810[12] = 1024;
    *&v810[14] = 621;
    *&v810[18] = 2048;
    *&v810[20] = (v64 - v27 + 8 * v748[0] + 23);
    *&v810[28] = 2048;
    *&v810[30] = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_946:
    v784 = 0;
    v812 = 0u;
    v813 = 0u;
    memset(v811, 0, sizeof(v811));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v810 = 136315906;
    *&v810[4] = "operator[]";
    *&v810[12] = 1024;
    *&v810[14] = 621;
    *&v810[18] = 2048;
    *&v810[20] = v339;
    *&v810[28] = 2048;
    *&v810[30] = v22;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_947:
    v784 = 0;
    v812 = 0u;
    v813 = 0u;
    memset(v811, 0, sizeof(v811));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v810 = 136315906;
    *&v810[4] = "operator[]";
    *&v810[12] = 1024;
    *&v810[14] = 621;
    *&v810[18] = 2048;
    *&v810[20] = v27;
    *&v810[28] = 2048;
    *&v810[30] = v22;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_948:
    v784 = 0;
    v339 = v810;
    v812 = 0u;
    v813 = 0u;
    memset(v811, 0, sizeof(v811));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v810 = 136315906;
    *&v810[4] = "operator[]";
    *&v810[12] = 1024;
    *&v810[14] = 621;
    *&v810[18] = 2048;
    *&v810[20] = v23;
    *&v810[28] = 2048;
    *&v810[30] = v759[0];
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_949:
    v784 = 0;
    v812 = 0u;
    v813 = 0u;
    memset(v811, 0, sizeof(v811));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v810 = 136315906;
    *&v810[4] = "operator[]";
    *&v810[12] = 1024;
    *&v810[14] = 621;
    *&v810[18] = 2048;
    *&v810[20] = v339;
    *&v810[28] = 2048;
    *&v810[30] = v22;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_950:
    v784 = 0;
    v812 = 0u;
    v813 = 0u;
    memset(v811, 0, sizeof(v811));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v810 = 136315906;
    *&v810[4] = "operator[]";
    *&v810[12] = 1024;
    *&v810[14] = 621;
    *&v810[18] = 2048;
    *&v810[20] = v27;
    *&v810[28] = 2048;
    *&v810[30] = v22;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_951:
    v784 = 0;
    v102 = v810;
    v812 = 0u;
    v813 = 0u;
    memset(v811, 0, sizeof(v811));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v810 = 136315906;
    *&v810[4] = "operator[]";
    *&v810[12] = 1024;
    *&v810[14] = 621;
    *&v810[18] = 2048;
    *&v810[20] = v23;
    *&v810[28] = 2048;
    *&v810[30] = v22;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_952:
    v785[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v791[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v791[1]) = 1024;
    *(v21 + 126) = 789;
    WORD1(v791[2]) = 2048;
    *(v21 + 132) = 0;
    WORD2(v791[3]) = 2048;
    *(v21 + 142) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_953;
  }

  v251 = *&v247[3].i32[1];
  re::internal::UIKitStyleBezierArc::UIKitStyleBezierArc(v785, *&vdup_lane_s32(v247[2], 0), v251);
  v788 = v7;
  v789 = v251;
  v790 = v250;
  v21 = re::GeomMesh::modifyVertexPositions(v102);
  v746 = v252;
  v14 = re::modifyVertexTangents(v102, v252);
  *v759 = v253;
  v20 = re::modifyVertexNormals(v102, v253);
  v22 = v260;
  v261 = v17;
  if (v17)
  {
    v262 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v17);
    v261 = v17;
    v263 = v262;
    v265 = v264;
    goto LABEL_370;
  }

LABEL_369:
  v263 = 0;
  v265 = 0xFFFFFFFFLL;
LABEL_370:
  v286 = v748[0];
  v287 = v747;
  v17 = v746;
  if (v747)
  {
    v288 = 0;
    v3 = ((v755 + -3.0) / v747);
    v722 = v746;
    v721 = v759[0];
    v720 = v22;
    v754 = v265;
    do
    {
      if (v3)
      {
        v289 = 0;
        v290 = 0;
        v291 = (v288 * v3 + v730);
        v719 = v288;
        v292 = v288 + 1;
        v293 = (v288 * v3 + v729);
        v743 = v263 + 4 * v293;
        v736 = v292;
        v294 = v292 * v3;
        if (v746 >= v291)
        {
          v295 = (v746 - v291);
        }

        else
        {
          v295 = 0;
        }

        if (v746 >= v293)
        {
          v296 = (v746 - v293);
        }

        else
        {
          v296 = 0;
        }

        if (v759[0] >= v291)
        {
          v297 = (v759[0] - v291);
        }

        else
        {
          v297 = 0;
        }

        v298 = v263;
        v299 = v263 + 4 * v291;
        if (v759[0] >= v293)
        {
          v300 = (v759[0] - v293);
        }

        else
        {
          v300 = 0;
        }

        v301 = v20 + 16 * v291;
        if (v22 >= v291)
        {
          v302 = (v22 - v291);
        }

        else
        {
          v302 = 0;
        }

        if (v22 >= v293)
        {
          v23 = v22 - v293;
        }

        else
        {
          v23 = 0;
        }

        v303 = 7 * v748[0] + 20 + v294;
        v304 = 5 * v748[0] + 14 + v294;
        v305 = v14 + 16 * v291;
        v306 = v21 + 16 * v291;
        do
        {
          if (v295 == v290)
          {
            goto LABEL_777;
          }

          v254.i32[0] = *(v306 + v289);
          v255.i64[0] = *(v306 + v289 + 4);
          v307 = vnegq_f32(v255);
          v308 = vextq_s8(vextq_s8(v254, v254, 4uLL), v307, 0xCuLL);
          *(v306 + v289) = v308;
          v27 = v304;
          if (v304 >= v17)
          {
            goto LABEL_778;
          }

          *v254.i32 = -*v254.i32;
          v309 = vextq_s8(vextq_s8(v254, v254, 4uLL), v307, 0xCuLL);
          v310 = v309;
          v310.i32[2] = v307.i32[1];
          *(v21 + 16 * v304) = v310;
          if (v296 == v290)
          {
            goto LABEL_779;
          }

          *(v21 + 16 * v293 + 16 * v290) = vtrn1q_s32(v309, v255);
          v311 = v303;
          if (v303 >= v17)
          {
            goto LABEL_780;
          }

          *(v21 + 16 * v303) = vtrn1q_s32(v308, v255);
          if (v297 == v290)
          {
            goto LABEL_781;
          }

          v308.i32[0] = *(v305 + v289);
          v312 = *(v305 + v289 + 4);
          v313 = -*(v305 + v289 + 8);
          v314 = v308;
          *&v314.i32[1] = v312;
          *&v314.i32[2] = v313;
          *(v305 + v289) = v314;
          v17 = *v759;
          if (v304 >= v759[0])
          {
            goto LABEL_782;
          }

          *v314.i32 = -*v308.i32;
          *&v314.i32[1] = v312;
          *&v314.i32[2] = v313;
          *(v14 + 16 * v304) = v314;
          if (v300 == v290)
          {
            goto LABEL_783;
          }

          *&v308.i32[1] = -v312;
          *&v308.i32[2] = v313;
          *(v14 + 16 * v293 + 16 * v290) = v308;
          if (v303 >= v759[0])
          {
            goto LABEL_784;
          }

          v309.f32[2] = v313;
          *(v14 + 16 * v303) = v309;
          if (v302 == v290)
          {
            goto LABEL_785;
          }

          v17 = v301 + v289;
          v308.i32[0] = *(v301 + v289);
          v309.i64[0] = *(v301 + v289 + 4);
          v257 = vnegq_f32(v309);
          v255 = vextq_s8(vextq_s8(v308, v308, 4uLL), v257, 0xCuLL);
          *(v301 + v289) = v255;
          if (v304 >= v22)
          {
            goto LABEL_786;
          }

          *v308.i32 = -*v308.i32;
          v315 = vextq_s8(vextq_s8(v308, v308, 4uLL), v257, 0xCuLL);
          *(v20 + 16 * v304) = v315;
          if (v23 == v290)
          {
            goto LABEL_787;
          }

          v256 = vtrn1q_s32(v315, v309);
          *(v20 + 16 * v293 + 16 * v290) = v256;
          if (v303 >= v22)
          {
            goto LABEL_788;
          }

          v254 = vtrn1q_s32(v255, v309);
          *(v20 + 16 * v303) = v254;
          if (v750)
          {
            v17 = &v290[v291];
            if (&v290[v291] >= v265)
            {
              goto LABEL_921;
            }

            if (v265 <= v304)
            {
              goto LABEL_922;
            }

            v17 = &v290[v293];
            v316 = *(v299 + 4 * v290);
            *(v298 + 4 * v304) = v316;
            if (&v290[v293] >= v265)
            {
              goto LABEL_923;
            }

            *(v743 + 4 * v290) = v316;
            if (v265 <= v303)
            {
              goto LABEL_924;
            }

            *(v298 + 4 * v303) = *(v299 + 4 * v290);
          }

          ++v290;
          --v303;
          --v304;
          v289 += 16;
          v17 = v746;
        }

        while (v3 != v290);
        v286 = v748[0];
        v287 = v747;
        v261 = v750;
        v263 = v298;
        v317 = v736;
      }

      else
      {
        v317 = v288 + 1;
      }

      v288 = v317;
    }

    while (v317 != v287);
  }

  v318 = v286;
  v64 = 0;
  v319 = 8 * v286;
  v320 = v319 - v318 + 20;
  v321 = (v319 + 16) | 7;
  v322 = (6 * v318 + 16) | 1;
  v323 = 5 * v318;
  v324 = v323 + 14;
  v325 = 1;
  v3 = v741;
  do
  {
    if (v64)
    {
      v27 = (v325 + -3.0);
    }

    else
    {
      v27 = 1;
    }

    v326 = v324 + v64;
    if (v324 + v64 >= v17)
    {
      goto LABEL_940;
    }

    v327 = v326;
    if (v326 >= v759[0])
    {
      goto LABEL_941;
    }

    if (v326 >= v22)
    {
      goto LABEL_942;
    }

    v328 = v21 + 16 * v326;
    v259.i32[0] = *v328;
    v258.i64[0] = *(v328 + 4);
    v329 = v14 + 16 * v326;
    v257.i64[0] = *v329;
    v330 = *(v329 + 8);
    v331 = v20 + 16 * v326;
    v256.i32[0] = *v331;
    v255.i64[0] = *(v331 + 4);
    v332 = vnegq_f32(v258);
    v333 = vextq_s8(vextq_s8(v259, v259, 4uLL), v332, 0xCuLL);
    *v328 = v333;
    v334 = v322 + v64 - v27;
    if (v334 >= v17)
    {
      goto LABEL_943;
    }

    *v259.i32 = -*v259.i32;
    v335 = vextq_s8(vextq_s8(v259, v259, 4uLL), v332, 0xCuLL);
    *(v21 + 16 * v334) = v335;
    v336 = v320 + v64;
    if (v320 + v64 >= v17)
    {
      goto LABEL_944;
    }

    v259 = vtrn1q_s32(v335, v258);
    *(v21 + 16 * v336) = v259;
    v337 = v321 + v64 - v27;
    if (v337 >= v17)
    {
      goto LABEL_945;
    }

    v338 = v22;
    v339 = v334;
    *(v21 + 16 * v337) = vtrn1q_s32(v333, v258);
    v340 = -v330;
    v258 = v257;
    v258.f32[2] = v340;
    *v329 = v258;
    v22 = *v759;
    if (v334 >= v759[0])
    {
      goto LABEL_946;
    }

    v341 = v257;
    *v341.i32 = -*v257.i32;
    v27 = v336;
    *&v341.i32[2] = v340;
    *(v14 + 16 * v334) = v341;
    if (v336 >= v759[0])
    {
      goto LABEL_947;
    }

    v23 = v337;
    *(v14 + 16 * v336) = v341;
    if (v337 >= v759[0])
    {
      goto LABEL_948;
    }

    v258.f32[1] = -*&v257.i32[1];
    v258.f32[2] = v340;
    v258.f32[0] = -*v257.i32;
    *(v14 + 16 * v337) = v258;
    v342 = vnegq_f32(v255);
    v257 = vextq_s8(vextq_s8(v256, v256, 4uLL), v342, 0xCuLL);
    *v331 = v257;
    v22 = v338;
    if (v334 >= v338)
    {
      goto LABEL_949;
    }

    *v256.i32 = -*v256.i32;
    v343 = vextq_s8(vextq_s8(v256, v256, 4uLL), v342, 0xCuLL);
    *(v20 + 16 * v334) = v343;
    if (v336 >= v338)
    {
      goto LABEL_950;
    }

    v256 = vtrn1q_s32(v343, v255);
    *(v20 + 16 * v336) = v256;
    if (v337 >= v338)
    {
      goto LABEL_951;
    }

    v255 = vtrn1q_s32(v257, v255);
    *(v20 + 16 * v337) = v255;
    if (v261)
    {
      if (v265 <= v326)
      {
        goto LABEL_971;
      }

      if (v265 <= v334)
      {
LABEL_972:
        v784 = 0;
        v812 = 0u;
        v813 = 0u;
        memset(v811, 0, sizeof(v811));
        v27 = v265;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v810 = 136315906;
        *&v810[4] = "operator[]";
        *&v810[12] = 1024;
        *&v810[14] = 621;
        *&v810[18] = 2048;
        *&v810[20] = v339;
        *&v810[28] = 2048;
        *&v810[30] = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_973:
        v784 = 0;
        v812 = 0u;
        v813 = 0u;
        memset(v811, 0, sizeof(v811));
        v700 = v265;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v810 = 136315906;
        *&v810[4] = "operator[]";
        *&v810[12] = 1024;
        *&v810[14] = 621;
        *&v810[18] = 2048;
        *&v810[20] = v27;
        *&v810[28] = 2048;
        *&v810[30] = v700;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_974:
        v784 = 0;
        v812 = 0u;
        v813 = 0u;
        memset(v811, 0, sizeof(v811));
        v14 = v265;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v810 = 136315906;
        *&v810[4] = "operator[]";
        *&v810[12] = 1024;
        *&v810[14] = 621;
        *&v810[18] = 2048;
        *&v810[20] = v23;
        *&v810[28] = 2048;
        *&v810[30] = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_975:
        v785[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v791[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v791[1]) = 1024;
        *(v21 + 126) = 789;
        WORD1(v791[2]) = 2048;
        *(v21 + 132) = 0;
        WORD2(v791[3]) = 2048;
        *(v21 + 142) = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_976;
      }

      v344 = *(v263 + 4 * v326);
      *(v263 + 4 * v334) = v344;
      if (v265 <= v336)
      {
        goto LABEL_973;
      }

      *(v263 + 4 * v336) = v344;
      if (v265 <= v337)
      {
        goto LABEL_974;
      }

      *(v263 + 4 * v337) = *(v263 + 4 * v326);
    }

    --v64;
    ++v325;
  }

  while (v64 != -3);
  v285 = a1;
  *&v811[0] = re::GeomMesh::modifyVertexPositions(a1);
  DWORD2(v811[0]) = v345;
  v284 = v755;
  v346.f32[0] = v9;
LABEL_438:
  v785[0] = v783;
  v785[1] = v781;
  *&v811[0] = v779;
  *(&v811[0] + 1) = v777;
  *v810 = v744;
  v14 = v757;
  v64 = v756;
  v17 = v727;
  if (v726 < 2)
  {
    goto LABEL_489;
  }

  v21 = re::GeomMesh::modifyVertexPositions(a1);
  v27 = v348;
  v23 = re::modifyVertexTangents(a1, v348);
  v22 = v349;
  v20 = re::modifyVertexNormals(a1, v349);
  v351 = v750;
  if (!v750)
  {
    goto LABEL_454;
  }

  v352 = v350;
  v351 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v750);
  if (!v773)
  {
    goto LABEL_1049;
  }

  v354 = v353;
  v64 = *v775;
  if (v64 >= v353)
  {
    goto LABEL_1050;
  }

  v355 = v27;
  if (v64 >= v27)
  {
    goto LABEL_1051;
  }

  v14 = v775[v773 - 1];
  if (v14 >= v27)
  {
    goto LABEL_1052;
  }

  if (!v769)
  {
    goto LABEL_1053;
  }

  v27 = *v771;
  if (v27 >= v355)
  {
    goto LABEL_1054;
  }

  v17 = v771[v769 - 1];
  if (v17 >= v355)
  {
    goto LABEL_1055;
  }

  v350 = v352;
  v356 = *(v351 + 4 * v64);
  v357 = *(v21 + 16 * v64);
  v357.i32[3] = 0;
  v358 = vmaxnmq_f32(v357, xmmword_1E306D4B0);
  v361 = vminnmq_f32(v357, xmmword_1E306D4A0);
  v359 = *(v21 + 16 * v14);
  v361.i32[3] = 0;
  v359.i32[3] = 0;
  v358.i32[3] = 0;
  v360 = vminnmq_f32(v361, v359).u64[0];
  v361.i64[0] = vmaxnmq_f32(v358, v359).u64[0];
  v362 = *(v21 + 16 * v27);
  v362.i32[3] = 0;
  v363 = vmaxnmq_f32(v362, xmmword_1E306D4B0);
  v364 = vminnmq_f32(v362, xmmword_1E306D4A0);
  v365 = *(v21 + 16 * v17);
  v364.i32[3] = 0;
  v365.i32[3] = 0;
  v366 = vminnmq_f32(v364, v365).u64[0];
  v363.i32[3] = 0;
  v367 = vmaxnmq_f32(v363, v365).u64[0];
  v14 = v757;
LABEL_455:
  if (v756 >= 2)
  {
    v368 = 1.0 / v14;
    v369 = v14 - 1;
    v370 = v14 + 2;
    v371 = 1;
    while (1)
    {
      v372 = (v3 * v371);
      v27 = v773;
      if (v773 <= v372)
      {
        goto LABEL_1000;
      }

      v373 = v775[v372];
      if (v373 >= v355)
      {
        goto LABEL_1001;
      }

      v14 = (v372 + v14);
      if (v773 <= v14)
      {
        goto LABEL_1002;
      }

      v374 = v775[v14];
      if (v374 >= v355)
      {
        goto LABEL_1003;
      }

      if (v373 >= v22)
      {
        goto LABEL_1004;
      }

      if (v373 >= v350)
      {
        goto LABEL_1005;
      }

      v17 = v769;
      if (v769 <= v372)
      {
        goto LABEL_1006;
      }

      v27 = v771[v372];
      if (v27 >= v355)
      {
        goto LABEL_1007;
      }

      if (v769 <= v14)
      {
        goto LABEL_1008;
      }

      v17 = v771[v14];
      if (v17 >= v355)
      {
        goto LABEL_1009;
      }

      if (v27 >= v22)
      {
        goto LABEL_1010;
      }

      if (v27 >= v350)
      {
        goto LABEL_1011;
      }

      if (v757 >= 2)
      {
        break;
      }

LABEL_488:
      ++v371;
      v370 += v3;
      LODWORD(v14) = v757;
      if (v371 == v756)
      {
        goto LABEL_489;
      }
    }

    v375 = 1;
    v376 = v370;
    v377 = v369;
    while (1)
    {
      v64 = v376;
      v378 = v773;
      if (v773 <= v376)
      {
        goto LABEL_913;
      }

      v378 = v769;
      if (v769 <= v376)
      {
        break;
      }

      v378 = v775[v376];
      if (v378 >= v355)
      {
        goto LABEL_915;
      }

      v379 = v771[v376];
      v380 = v368 * v375;
      v381 = (v21 + 16 * v378);
      *v381->f32 = vaddq_f32(vmulq_n_f32(*(v21 + 16 * v373), 1.0 - v380), vmulq_n_f32(*(v21 + 16 * v374), v380));
      if (v379 >= v355)
      {
        goto LABEL_916;
      }

      v382 = (v21 + 16 * v379);
      *v382->f32 = vaddq_f32(vmulq_n_f32(*(v21 + 16 * v27), 1.0 - v380), vmulq_n_f32(*(v21 + 16 * v17), v380));
      if (v378 >= v22)
      {
        goto LABEL_917;
      }

      *(v23 + 16 * v378) = *(v23 + 16 * v373);
      if (v379 >= v22)
      {
        goto LABEL_918;
      }

      *(v23 + 16 * v379) = *(v23 + 16 * v27);
      if (v378 >= v350)
      {
        goto LABEL_919;
      }

      *(v20 + 16 * v378) = *(v20 + 16 * v373);
      if (v379 >= v350)
      {
        goto LABEL_920;
      }

      *(v20 + 16 * v379) = *(v20 + 16 * v27);
      if (v750)
      {
        if (v354 <= v378)
        {
          goto LABEL_925;
        }

        v383 = vsub_f32(*v381, v360);
        v384 = vsub_f32(*v361.f32, *v381);
        v385 = vbsl_s8(vcgt_f32(v383, v384), v384, v383);
        if (*v385.i32 > *&v385.i32[1])
        {
          v385.i32[0] = v385.i32[1];
        }

        *(v351 + 4 * v378) = v356 + *v385.i32;
        if (v354 <= v379)
        {
          goto LABEL_926;
        }

        v386 = vsub_f32(*v382, v366);
        v387 = vsub_f32(v367, *v382);
        v388 = vbsl_s8(vcgt_f32(v386, v387), v387, v386);
        if (*v388.i32 > *&v388.i32[1])
        {
          v388.i32[0] = v388.i32[1];
        }

        *(v351 + 4 * v379) = v356 + *v388.i32;
      }

      v376 = v64 + 1;
      ++v375;
      if (!--v377)
      {
        goto LABEL_488;
      }
    }

LABEL_914:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 797;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v64;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v378;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_915:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v379 = MEMORY[0x1E69E9C10];
    v689 = v355;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v378;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v689;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_916:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v378 = v355;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v379;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v378;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_917:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v378;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v22;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_918:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v379;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v22;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_919:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v379 = MEMORY[0x1E69E9C10];
    v690 = v350;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v378;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v690;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_920:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v290 = MEMORY[0x1E69E9C10];
    v691 = v350;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v379;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v691;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_921:
    v784 = 0;
    v812 = 0u;
    v813 = 0u;
    memset(v811, 0, sizeof(v811));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v810 = 136315906;
    *&v810[4] = "operator[]";
    *&v810[12] = 1024;
    *&v810[14] = 621;
    *&v810[18] = 2048;
    *&v810[20] = &v290[(v3 * v719 + 4 * v748[0] + 12)];
    *&v810[28] = 2048;
    *&v810[30] = v754;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_922:
    v784 = 0;
    v290 = v810;
    v812 = 0u;
    v813 = 0u;
    memset(v811, 0, sizeof(v811));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v810 = 136315906;
    *&v810[4] = "operator[]";
    *&v810[12] = 1024;
    *&v810[14] = 621;
    *&v810[18] = 2048;
    *&v810[20] = v27;
    *&v810[28] = 2048;
    *&v810[30] = v754;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_923:
    v784 = 0;
    v812 = 0u;
    v813 = 0u;
    memset(v811, 0, sizeof(v811));
    v311 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v810 = 136315906;
    *&v810[4] = "operator[]";
    *&v810[12] = 1024;
    *&v810[14] = 621;
    *&v810[18] = 2048;
    *&v810[20] = &v290[(v3 * v719 + 6 * v748[0] + 18)];
    *&v810[28] = 2048;
    *&v810[30] = v754;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_924:
    v784 = 0;
    v378 = v810;
    v812 = 0u;
    v813 = 0u;
    memset(v811, 0, sizeof(v811));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v810 = 136315906;
    *&v810[4] = "operator[]";
    *&v810[12] = 1024;
    *&v810[14] = 621;
    *&v810[18] = 2048;
    *&v810[20] = v311;
    *&v810[28] = 2048;
    *&v810[30] = v754;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_925:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v379 = MEMORY[0x1E69E9C10];
    v692 = v354;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v378;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v692;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_926:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v64 = MEMORY[0x1E69E9C10];
    v14 = v354;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v379;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_927;
  }

LABEL_489:
  v14 = re::GeomMesh::modifyVertexPositions(a1);
  v27 = v389;
  v17 = re::modifyVertexTangents(a1, v389);
  v21 = v390;
  v391 = re::modifyVertexNormals(a1, v390);
  v23 = v393;
  LODWORD(v64) = 0;
  v394 = v765;
  v395 = *(a2 + 24);
  if (*(a2 + 20) == 0.0)
  {
    v3 = *v740;
    v396 = v750;
    if (v395 == 0.0)
    {
      LODWORD(v64) = *(a2 + 28) == 0.0;
    }
  }

  else
  {
    v3 = *v740;
    v396 = v750;
  }

  v20 = v391;
  if (v396)
  {
    v396 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v396);
    v397 = v765;
    v399 = v398;
  }

  else
  {
    v399 = 0xFFFFFFFFLL;
    v397 = v765;
  }

  v400 = v27;
  v401 = v17;
  if (!v397)
  {
    goto LABEL_1027;
  }

  v27 = *v767;
  v22 = v750;
  if (v27 >= v400)
  {
    goto LABEL_1028;
  }

  if (!v761)
  {
    goto LABEL_1029;
  }

  v17 = *v763;
  if (v17 >= v400)
  {
    goto LABEL_1030;
  }

  v402 = v20;
  v403 = 1.0 / v749;
  v404 = *(v14 + 16 * v27 + 8);
  v405 = *(v14 + 16 * v17 + 8);
  v406 = v394;
  if ((v64 & 1) == 0)
  {
    if (!v394)
    {
      goto LABEL_547;
    }

    v430 = v21;
    v431 = 0;
    v17 = v400;
    v311 = v21;
    v23 = v23;
    v432 = v733 + 8 * v748[0] + v734 + 24;
    while (1)
    {
      v27 = v765;
      if (v765 <= v431)
      {
        goto LABEL_984;
      }

      v20 = v767[v431];
      if (v20 >= v400)
      {
        goto LABEL_985;
      }

      v27 = v761;
      if (v761 <= v431)
      {
        goto LABEL_986;
      }

      v21 = v763[v431];
      if (v21 >= v400)
      {
        goto LABEL_987;
      }

      if (v20 >= v430)
      {
        goto LABEL_988;
      }

      if (v395 == 0.0)
      {
        if (v20 >= v23)
        {
          goto LABEL_1012;
        }

        v433 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(v402 + 16 * v20), *(v402 + 16 * v20)), *(v402 + 16 * v20), 0xCuLL), vnegq_f32(*(v401 + 16 * v20))), *(v402 + 16 * v20), vextq_s8(vuzp1q_s32(*(v401 + 16 * v20), *(v401 + 16 * v20)), *(v401 + 16 * v20), 0xCuLL));
        v434 = vmulq_f32(v433, v433);
        *&v435 = v434.f32[1] + (v434.f32[2] + v434.f32[0]);
        v436 = vrsqrte_f32(v435);
        v437 = vmul_f32(v436, vrsqrts_f32(v435, vmul_f32(v436, v436)));
        v438 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v433, v433), v433, 0xCuLL), vmul_f32(v437, vrsqrts_f32(v435, vmul_f32(v437, v437))).f32[0]);
        v439 = v438.i64[1];
        v440 = v438.i64[0];
      }

      else
      {
        if (v20 >= v23)
        {
          goto LABEL_1022;
        }

        v440 = *(v402 + 16 * v20);
        v439 = *(v402 + 16 * v20 + 8);
      }

      v27 = v432;
      if (v753)
      {
        break;
      }

LABEL_546:
      ++v431;
      v432 = v27 + v753;
      if (v431 == v406)
      {
        goto LABEL_547;
      }
    }

    v64 = 0;
    v441 = v396 + 4 * v432;
    v442 = v402 + 16 * v432;
    v443 = (v401 + 16 * v432);
    v444 = 8;
    v445 = v14 + 16 * v432;
    while (1)
    {
      v446 = v27 + v64;
      if (v27 + v64 >= v400)
      {
        goto LABEL_766;
      }

      *(v445 + 16 * v64) = vaddq_f32(vmulq_n_f32(*(v14 + 16 * v20), 1.0 - (v403 * v64)), vmulq_n_f32(*(v14 + 16 * v21), v403 * v64));
      if (v446 >= v311)
      {
        goto LABEL_767;
      }

      *v443 = *(v401 + 16 * v20);
      if (v446 >= v23)
      {
        goto LABEL_768;
      }

      v447 = (v442 + 16 * v64);
      *v447 = v440;
      v447[1] = v439;
      if (v750)
      {
        if (v399 <= v446)
        {
          goto LABEL_912;
        }

        v448 = *(v445 + v444);
        v449 = v404 - v448;
        v450 = v448 - v405;
        if (v449 <= v450)
        {
          v450 = v449;
        }

        *&v441[4 * v64] = v450;
      }

      ++v64;
      ++v443;
      v444 += 16;
      if (v753 == v64)
      {
        goto LABEL_546;
      }
    }
  }

  if (v394)
  {
    v407 = v21;
    v408 = v23;
    v21 = 0;
    v409 = *(a2 + 56);
    v410 = *(a2 + 44);
    v411 = v409 - 1 + v410;
    v412 = *(a2 + 48) + v409 - 1;
    v413 = (v410 + v409);
    v414 = (v412 + v413);
    v20 = v400;
    v23 = v407;
    v415 = v408;
    v416 = v733 + 8 * v748[0] + v734 + 24;
    v392.i64[0] = (v411 + v414);
    while (1)
    {
      v417 = v765;
      if (v765 <= v21)
      {
        break;
      }

      v17 = v767[v21];
      if (v17 >= v400)
      {
        goto LABEL_981;
      }

      v417 = v761;
      if (v761 <= v21)
      {
        goto LABEL_982;
      }

      v3 = v763[v21];
      if (v3 >= v400)
      {
        goto LABEL_983;
      }

      v418 = xmmword_1E30661F0;
      v419 = xmmword_1E3047680;
      if (v21 >= v413)
      {
        v418 = xmmword_1E30661D0;
        v419 = xmmword_1E30661F0;
        if (v21 >= v414)
        {
          v418.i64[0] = v21;
          v420 = vdupq_lane_s64(vcgtq_u64(v392, v418).i64[0], 0);
          v418 = vbslq_s8(v420, xmmword_1E3047670, xmmword_1E3047680);
          v419 = vbslq_s8(v420, xmmword_1E30661D0, xmmword_1E3047670);
        }
      }

      v27 = v416;
      if (v753)
      {
        v64 = 0;
        v421 = v396 + 4 * v416;
        v422 = v402 + 16 * v416;
        v423 = v401 + 16 * v416;
        v424 = 8;
        v425 = v14 + 16 * v416;
        do
        {
          v426 = v27 + v64;
          if (v27 + v64 >= v400)
          {
            goto LABEL_763;
          }

          *(v425 + 16 * v64) = vaddq_f32(vmulq_n_f32(*(v14 + 16 * v17), 1.0 - (v403 * v64)), vmulq_n_f32(*(v14 + 16 * v3), v403 * v64));
          if (v426 >= v23)
          {
            goto LABEL_764;
          }

          *(v423 + 16 * v64) = v418;
          if (v426 >= v415)
          {
            goto LABEL_765;
          }

          *(v422 + 16 * v64) = v419;
          if (v750)
          {
            if (v399 <= v426)
            {
              *v810 = 0;
              v786 = 0u;
              v787 = 0u;
              memset(v785, 0, sizeof(v785));
              v688 = v399;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v811[0]) = 136315906;
              *(v811 + 4) = "operator[]";
              WORD6(v811[0]) = 1024;
              *(v811 + 14) = 621;
              WORD1(v811[1]) = 2048;
              *(&v811[1] + 4) = v27 + v64;
              WORD6(v811[1]) = 2048;
              *(&v811[1] + 14) = v688;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_912:
              *v810 = 0;
              v786 = 0u;
              v787 = 0u;
              memset(v785, 0, sizeof(v785));
              v378 = v399;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v811[0]) = 136315906;
              *(v811 + 4) = "operator[]";
              WORD6(v811[0]) = 1024;
              *(v811 + 14) = 621;
              WORD1(v811[1]) = 2048;
              *(&v811[1] + 4) = v27 + v64;
              WORD6(v811[1]) = 2048;
              *(&v811[1] + 14) = v378;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_913:
              *v810 = 0;
              v786 = 0u;
              v787 = 0u;
              memset(v785, 0, sizeof(v785));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v811[0]) = 136315906;
              *(v811 + 4) = "operator[]";
              WORD6(v811[0]) = 1024;
              *(v811 + 14) = 797;
              WORD1(v811[1]) = 2048;
              *(&v811[1] + 4) = v64;
              WORD6(v811[1]) = 2048;
              *(&v811[1] + 14) = v378;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_914;
            }

            v427 = *(v425 + v424);
            v428 = v404 - v427;
            v429 = v427 - v405;
            if (v428 <= v429)
            {
              v429 = v428;
            }

            *&v421[4 * v64] = v429;
          }

          ++v64;
          v424 += 16;
        }

        while (v753 != v64);
      }

      ++v21;
      v416 = v27 + v753;
      v3 = *v740;
      if (v21 == v406)
      {
        goto LABEL_547;
      }
    }

LABEL_980:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 797;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v21;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v417;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_981:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v17;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_982:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 797;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v21;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v417;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_983:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v3;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_984:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v701 = v431;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 797;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v701;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_985:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v20;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_986:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v702 = v431;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 797;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v702;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_987:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v311 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v21;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_988:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v20;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v311;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_989:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    LODWORD(v811[0]) = 136315906;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = (v14 + v27);
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v311;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_990:
    v784 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    LODWORD(v811[0]) = 136315906;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = (v21 + v14 - 1);
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v311;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_991:
    v784 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v811 + 4) = "operator[]";
    LODWORD(v811[0]) = 136315906;
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = (v22 - v3 + v14 - 1);
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v311;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_992:
    v784 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v703 = v502;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    LODWORD(v811[0]) = 136315906;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = (v703 + v14 - 1);
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v311;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_993:
    v784 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v811 + 4) = "operator[]";
    LODWORD(v811[0]) = 136315906;
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = (v23 - v3 + v14 - 1);
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v311;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_994:
    v784 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v704 = v503;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    LODWORD(v811[0]) = 136315906;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = (v704 + v14 - 1);
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v311;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_995:
    v784 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v811 + 4) = "operator[]";
    LODWORD(v811[0]) = 136315906;
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = (v20 - v3 + v14 - 1);
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v311;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_996:
    v784 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v27 = v810;
    v705 = v504;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    LODWORD(v811[0]) = 136315906;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = (v705 + v14 - 1);
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v311;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_997:
    v784 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v17 = v810;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v811 + 4) = "operator[]";
    LODWORD(v811[0]) = 136315906;
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = (v27 - v3 + v14 - 1);
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v311;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_998:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    LODWORD(v811[0]) = 136315906;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = (v14 + v27);
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v311;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_999:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v372 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    LODWORD(v811[0]) = 136315906;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = (v14 + v27);
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v311;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_1000:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 797;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v372;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_1001:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v706 = v355;
    v14 = v373;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v14;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v706;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_1002:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 797;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v14;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_1003:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v707 = v355;
    v708 = v374;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v708;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v707;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_1004:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v709 = v373;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v709;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v22;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_1005:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v372 = v350;
    v14 = v373;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v14;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v372;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_1006:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 797;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v372;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_1007:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v710 = v355;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v27;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v710;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_1008:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 797;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v14;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_1009:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v711 = v355;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v17;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v711;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_1010:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v27;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v22;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_1011:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v712 = v350;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v27;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v712;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_1012:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    LODWORD(v311) = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v20;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v23;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_1013:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v64 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    LODWORD(v811[0]) = 136315906;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = (v14 + v27);
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v311;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_1014;
  }

LABEL_547:
  v451 = a2;
  if ((*a2 & 1) == 0 && *(a2 + 3) != 1)
  {
    goto LABEL_890;
  }

  v10 = *(a2 + 24);
  v311 = re::modifyVertexUVs(a1, v400);
  v64 = v452;
  v453 = re::GeomMesh::accessVertexPositions(a1);
  if (v7 != 0.0)
  {
LABEL_603:
    v27 = v454;
    v535 = v747;
    v22 = v785;
    if (v7 <= v10)
    {
      goto LABEL_647;
    }

    v14 = *v748;
    if (v748[0] >= v64)
    {
      goto LABEL_1057;
    }

    *(v311 + 8 * v748[0]) = 0;
    v536 = v747;
    if (v747)
    {
      v537 = 0.0;
      v538 = v747;
      v539 = v724;
      v17 = *v748;
      while (1)
      {
        if (v17 >= v454)
        {
          goto LABEL_1016;
        }

        v540 = v539;
        v14 = v539;
        if (v539 >= v454)
        {
          break;
        }

        if (v539 >= v64)
        {
          goto LABEL_1018;
        }

        v541 = vsubq_f32(*(v453 + 16 * v17), *(v453 + 16 * v539));
        v542 = vmulq_f32(v541, v541);
        v537 = v537 + sqrtf(v542.f32[2] + vaddv_f32(*v542.f32));
        *(v311 + 8 * v539) = LODWORD(v537);
        v539 = (v539 - v758);
        v17 = v540;
        if (!--v538)
        {
          goto LABEL_611;
        }
      }

LABEL_1017:
      *v810 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 613;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v14;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1018:
      *v810 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 621;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v14;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v64;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1019:
      *v810 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 613;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v3;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1020:
      *v810 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 613;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v17;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1021:
      *v810 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 621;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v17;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v64;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1022:
      *v810 = 0;
      v786 = 0u;
      v787 = 0u;
      memset(v785, 0, sizeof(v785));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 621;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v20;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v23;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_1023;
    }

LABEL_611:
    v14 = v724;
    if (v454 <= v724)
    {
      goto LABEL_1058;
    }

    if (v748[0] >= v454)
    {
LABEL_1059:
      *v810 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 613;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = *v748;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_1060;
    }

    if (v751 < 2)
    {
LABEL_623:
      v455 = v723;
      if (!v747)
      {
        goto LABEL_554;
      }

      v14 = v724;
      v27 = v723;
      while (v14 < v64)
      {
        if (v27 >= v64)
        {
          goto LABEL_1026;
        }

        LODWORD(v561) = 0;
        HIDWORD(v561) = *(v311 + 8 * v14);
        *(v311 + 8 * v27) = v561;
        v27 = (v27 - v758);
        v14 = (v14 - v758);
        if (!--v536)
        {
          goto LABEL_554;
        }
      }

      goto LABEL_1025;
    }

    v543 = vsubq_f32(*(v453 + 16 * v724), *(v453 + 16 * *v748));
    v544 = vmulq_f32(v543, v543);
    v545 = sqrtf(v544.f32[2] + vaddv_f32(*v544.f32));
    v546 = vextq_s8(vuzp1q_s32(v543, v543), v543, 0xCuLL);
    v547 = vnegq_f32(v543);
    v548 = 1;
    while (1)
    {
      v549 = v14;
      v14 += v548;
      if (v548 == v454 - v724)
      {
        goto LABEL_1034;
      }

      if (v747)
      {
        break;
      }

LABEL_622:
      ++v548;
      v14 = v549;
      if (v548 == v751)
      {
        goto LABEL_623;
      }
    }

    v550 = vsubq_f32(*(v453 + 16 * v14), *(v453 + 16 * *v748));
    v551 = vmulq_f32(v550, v550);
    v552 = vmulq_f32(v543, v550);
    v552.f32[0] = v552.f32[2] + vaddv_f32(*v552.f32);
    v553 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v550, v550), v550, 0xCuLL), v547), v550, v546);
    v554 = vmulq_f32(v553, v553);
    v552.i32[1] = sqrtf(v554.f32[1] + (v554.f32[2] + v554.f32[0]));
    v555 = vmul_n_f32(*v552.f32, 1.0 / (v545 * sqrtf(v551.f32[2] + vaddv_f32(*v551.f32))));
    v556 = 0.0;
    v557 = v747;
    v17 = *v748;
    while (v17 < v454)
    {
      v558 = v14;
      v14 = v14;
      if (v558 >= v454)
      {
        goto LABEL_935;
      }

      if (v558 >= v64)
      {
        goto LABEL_936;
      }

      v559 = vsubq_f32(*(v453 + 16 * v17), *(v453 + 16 * v14));
      v560 = vmulq_f32(v559, v559);
      v556 = v556 + sqrtf(v560.f32[2] + vaddv_f32(*v560.f32));
      *(v311 + 8 * v14) = vmul_n_f32(v555, v556);
      v14 = (v558 - v758);
      v17 = v558;
      if (!--v557)
      {
        goto LABEL_622;
      }
    }

    goto LABEL_934;
  }

  v455 = v723;
  v22 = v785;
  if (v755)
  {
    v14 = v64;
    v456 = v64;
    v457 = v755;
    v458 = v311;
    while (v456)
    {
      *v458++ = 0;
      --v456;
      if (!--v457)
      {
        goto LABEL_554;
      }
    }

    goto LABEL_978;
  }

LABEL_554:
  if (v724 >= v64)
  {
    goto LABEL_1043;
  }

  v14 = v755;
  v27 = *v731;
  if (v455 >= v64)
  {
    goto LABEL_1044;
  }

  if (v731[0] >= v64)
  {
    goto LABEL_1045;
  }

  v459 = *(v311 + 8 * v724);
  v460 = *(v311 + 8 * v455);
  __asm { FMOV            V2.2S, #3.0 }

  *(v311 + 8 * v731[0]) = vdiv_f32(vadd_f32(vadd_f32(v459, v459), v460), _D2);
  if (v3 >= v64)
  {
    goto LABEL_1046;
  }

  *(v311 + 8 * v3) = vdiv_f32(vadd_f32(v459, vadd_f32(v460, v460)), _D2);
  v465 = *(a2 + 2);
  v466 = re::modifyVertexUVs(a1, v454);
  LODWORD(v311) = v467;
  v468 = 0;
  v469 = 0;
  v470.f32[0] = v9 * 0.5;
  v471.f32[0] = -(v9 * 0.5);
  v472 = xmmword_1E3049620;
  v473 = vdupq_n_s64(9uLL);
  v474 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v473, v472)).u8[0])
    {
      *&v810[v469] = v468;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v472)).i32[1])
    {
      *&v810[v469 + 4] = v755 + v468;
    }

    v472 = vaddq_s64(v472, v474);
    v469 += 8;
    v468 += 2 * v748[0] + 6;
  }

  while (v469 != 40);
  v475 = 0;
  v476.f32[0] = -(v9 * 0.5);
  v476.f32[1] = -(v8 * 0.5);
  v477.f32[0] = v9 * 0.5;
  v477.f32[1] = v8 * 0.5;
  v471.f32[1] = v8 * 0.5;
  v470.f32[1] = v476.f32[1];
  if (v747 <= 1)
  {
    v478 = 1;
  }

  else
  {
    v478 = v747;
  }

  v479 = *v810;
  v480 = *&v810[16];
  v481 = v748[0] / v747;
  while (2)
  {
    v482 = v475 + 1;
    if (v747 <= v748[0])
    {
      v483 = 0;
      v484 = v475 * v481;
      while (1)
      {
        v485 = vtrn2q_s32(vrev64q_s32(vdupq_n_s32(v483 + v484)), vdupq_n_s32(v482 * v481 + ~v483));
        v486 = vaddq_s32(v485, v479);
        v14 = v486.u32[0];
        if (v486.i32[0] >= v467)
        {
          break;
        }

        v487 = &v466[v486.u32[0]];
        v488.i32[0] = v487->i32[0];
        v489 = v487->f32[1];
        v490 = vadd_f32(v477, *v487);
        *v487 = v490;
        v14 = v486.u32[1];
        if (v486.i32[1] >= v467)
        {
          goto LABEL_770;
        }

        v491.f32[0] = -v488.f32[0];
        v491.f32[1] = v489;
        v492 = vadd_f32(v471, v491);
        v466[v486.u32[1]] = v492;
        v14 = v486.u32[2];
        if (v486.i32[2] >= v467)
        {
          goto LABEL_771;
        }

        v493 = -v489;
        v494.f32[1] = -v489;
        v494.f32[0] = -v488.f32[0];
        v495 = vadd_f32(v476, v494);
        v466[v486.u32[2]] = v495;
        v14 = v486.u32[3];
        if (v486.i32[3] >= v467)
        {
          goto LABEL_772;
        }

        v488.f32[1] = v493;
        v496 = vaddq_s32(v485, v480);
        v497 = vadd_f32(v470, v488);
        v466[v486.u32[3]] = v497;
        v14 = v496.u32[0];
        if (v496.i32[0] >= v467)
        {
          goto LABEL_773;
        }

        v498 = &v466[v496.u32[0]];
        *v498 = v495;
        v14 = v496.u32[1];
        if (v496.i32[1] >= v467)
        {
          goto LABEL_774;
        }

        v499 = &v466[v496.u32[1]];
        *v499 = v497;
        v14 = v496.u32[2];
        if (v496.i32[2] >= v467)
        {
          goto LABEL_775;
        }

        v500 = &v466[v496.u32[2]];
        *v500 = v490;
        v14 = v496.u32[3];
        if (v496.i32[3] >= v467)
        {
          goto LABEL_776;
        }

        v501 = &v466[v496.u32[3]];
        *v501 = v492;
        if (v465)
        {
          v498->f32[0] = -v498->f32[0];
          v499->f32[0] = -v499->f32[0];
          v500->f32[0] = -v500->f32[0];
          v501->f32[0] = -v501->f32[0];
        }

        if (++v483 >= v481)
        {
          goto LABEL_581;
        }
      }

LABEL_769:
      v784 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 621;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v14;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v311;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_770:
      v784 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 621;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v14;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v311;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_771:
      v784 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 621;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v14;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v311;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_772:
      v784 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 621;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v14;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v311;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_773:
      v784 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 621;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v14;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v311;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_774:
      v784 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 621;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v14;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v311;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_775:
      v784 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 621;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v14;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v311;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_776:
      v784 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      LODWORD(v290) = MEMORY[0x1E69E9C10];
      v27 = v810;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 621;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v14;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v311;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_777:
      v784 = 0;
      v812 = 0u;
      v813 = 0u;
      memset(v811, 0, sizeof(v811));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v810 = 136315906;
      *&v810[4] = "operator[]";
      *&v810[12] = 1024;
      *&v810[14] = 621;
      *&v810[18] = 2048;
      *&v810[20] = (v3 * v719 + 4 * v748[0] + v290 + 12);
      *&v810[28] = 2048;
      *&v810[30] = v722;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_778:
      v784 = 0;
      v290 = v810;
      v812 = 0u;
      v813 = 0u;
      memset(v811, 0, sizeof(v811));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v810 = 136315906;
      *&v810[4] = "operator[]";
      *&v810[12] = 1024;
      *&v810[14] = 621;
      *&v810[18] = 2048;
      *&v810[20] = v27;
      *&v810[28] = 2048;
      *&v810[30] = v722;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_779:
      v784 = 0;
      v812 = 0u;
      v813 = 0u;
      memset(v811, 0, sizeof(v811));
      v311 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v810 = 136315906;
      *&v810[4] = "operator[]";
      *&v810[12] = 1024;
      *&v810[14] = 621;
      *&v810[18] = 2048;
      *&v810[20] = (v3 * v719 + 6 * v748[0] + v290 + 18);
      *&v810[28] = 2048;
      *&v810[30] = v722;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_780:
      v784 = 0;
      v812 = 0u;
      v813 = 0u;
      memset(v811, 0, sizeof(v811));
      v290 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v810 = 136315906;
      *&v810[4] = "operator[]";
      *&v810[12] = 1024;
      *&v810[14] = 621;
      *&v810[18] = 2048;
      *&v810[20] = v311;
      *&v810[28] = 2048;
      *&v810[30] = v722;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_781:
      v784 = 0;
      v812 = 0u;
      v813 = 0u;
      memset(v811, 0, sizeof(v811));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v810 = 136315906;
      *&v810[4] = "operator[]";
      *&v810[12] = 1024;
      *&v810[14] = 621;
      *&v810[18] = 2048;
      *&v810[20] = &v290[(v3 * v719 + 4 * v748[0] + 12)];
      *&v810[28] = 2048;
      *&v810[30] = v721;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_782:
      v784 = 0;
      v290 = v810;
      v812 = 0u;
      v813 = 0u;
      memset(v811, 0, sizeof(v811));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v810 = 136315906;
      *&v810[4] = "operator[]";
      *&v810[12] = 1024;
      *&v810[14] = 621;
      *&v810[18] = 2048;
      *&v810[20] = v27;
      *&v810[28] = 2048;
      *&v810[30] = v721;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_783:
      v784 = 0;
      v812 = 0u;
      v813 = 0u;
      memset(v811, 0, sizeof(v811));
      v311 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v810 = 136315906;
      *&v810[4] = "operator[]";
      *&v810[12] = 1024;
      *&v810[14] = 621;
      *&v810[18] = 2048;
      *&v810[20] = &v290[(v3 * v719 + 6 * v748[0] + 18)];
      *&v810[28] = 2048;
      *&v810[30] = v721;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_784:
      v784 = 0;
      v812 = 0u;
      v813 = 0u;
      memset(v811, 0, sizeof(v811));
      v290 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v810 = 136315906;
      *&v810[4] = "operator[]";
      *&v810[12] = 1024;
      *&v810[14] = 621;
      *&v810[18] = 2048;
      *&v810[20] = v311;
      *&v810[28] = 2048;
      *&v810[30] = v721;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_785:
      v784 = 0;
      v812 = 0u;
      v813 = 0u;
      memset(v811, 0, sizeof(v811));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v810 = 136315906;
      *&v810[4] = "operator[]";
      *&v810[12] = 1024;
      *&v810[14] = 621;
      *&v810[18] = 2048;
      *&v810[20] = &v290[(v3 * v719 + 4 * v748[0] + 12)];
      *&v810[28] = 2048;
      *&v810[30] = v720;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_786:
      v784 = 0;
      v290 = v810;
      v812 = 0u;
      v813 = 0u;
      memset(v811, 0, sizeof(v811));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v810 = 136315906;
      *&v810[4] = "operator[]";
      *&v810[12] = 1024;
      *&v810[14] = 621;
      *&v810[18] = 2048;
      *&v810[20] = v27;
      *&v810[28] = 2048;
      *&v810[30] = v720;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_787:
      v784 = 0;
      v812 = 0u;
      v813 = 0u;
      memset(v811, 0, sizeof(v811));
      v311 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v810 = 136315906;
      *&v810[4] = "operator[]";
      *&v810[12] = 1024;
      *&v810[14] = 621;
      *&v810[18] = 2048;
      *&v810[20] = &v290[(v3 * v719 + 6 * v748[0] + 18)];
      *&v810[28] = 2048;
      *&v810[30] = v720;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_788:
      v784 = 0;
      v14 = v810;
      v812 = 0u;
      v813 = 0u;
      memset(v811, 0, sizeof(v811));
      v64 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v810 = 136315906;
      *&v810[4] = "operator[]";
      *&v810[12] = 1024;
      *&v810[14] = 621;
      *&v810[18] = 2048;
      *&v810[20] = v311;
      *&v810[28] = 2048;
      *&v810[30] = v720;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_789:
      if (v3 < v311)
      {
        v27 = v608 + v3;
        if (v27 < v311)
        {
          v14 = v27 + v608;
          if (v14 < v311)
          {
            v626 = (v64 + 8 * v27);
            v627 = v626[1];
            v628 = *(v64 + 8 * v3) - *v626;
            v629 = *(v64 + 8 * v14 + 4);
            v630 = (*&v604 * (v628 / *(a2 + 32))) / v605;
            v14 = v21;
            if (v606)
            {
              v631 = 0;
              v632 = v605 + 1;
              if (v632 <= 1)
              {
                LODWORD(v632) = 1;
              }

              v14 = v21;
              v633 = v605;
              do
              {
                if (v633 != -1)
                {
                  v27 = 0;
                  v634 = v311 - v14;
                  if (v311 < v14)
                  {
                    v634 = 0;
                  }

                  do
                  {
                    if (v634 == v27)
                    {
                      goto LABEL_962;
                    }

                    *(v64 + 8 * v14 + 8 * v27) = COERCE_UNSIGNED_INT(v630 * v27);
                    ++v27;
                  }

                  while (v632 != v27);
                  v14 = (v14 + v27);
                  v633 = v605;
                }

                ++v631;
              }

              while (v631 != v606);
            }

            v635 = v628 + 0.0;
            v636 = *(a2 + 44) - 1;
            if (*(a2 + 44) != 1)
            {
              v637 = v605 + 1;
              if (v637 <= 1)
              {
                LODWORD(v637) = 1;
              }

              v638 = 1;
              v639 = v605;
              do
              {
                if (v639 != -1)
                {
                  v27 = 0;
                  v640 = v311 - v14;
                  if (v311 < v14)
                  {
                    v640 = 0;
                  }

                  do
                  {
                    if (v640 == v27)
                    {
                      goto LABEL_970;
                    }

                    *&v641 = v630 * v27;
                    *(&v641 + 1) = (v638 * (v635 / (v636 + 1.0))) + 0.0;
                    *(v64 + 8 * v14 + 8 * v27++) = v641;
                  }

                  while (v637 != v27);
                  v14 = (v14 + v27);
                  v639 = v605;
                }

                ++v638;
              }

              while (v638 <= v636);
            }

            if (v606)
            {
              v642 = 0;
              v643 = v605 + 1;
              if (v643 <= 1)
              {
                LODWORD(v643) = 1;
              }

              v644 = v605;
              do
              {
                if (v644 != -1)
                {
                  v27 = 0;
                  v645 = v311 - v14;
                  if (v311 < v14)
                  {
                    v645 = 0;
                  }

                  do
                  {
                    if (v645 == v27)
                    {
                      goto LABEL_977;
                    }

                    *&v646 = v630 * v27;
                    *(&v646 + 1) = v628 + 0.0;
                    *(v64 + 8 * v14 + 8 * v27++) = v646;
                  }

                  while (v643 != v27);
                  v14 = (v14 + v27);
                  v644 = v605;
                }

                ++v642;
              }

              while (v642 != v606);
            }

            v647 = v627 - v629;
            v648 = v635 + v647;
            v649 = *(a2 + 48) - 1;
            if (*(a2 + 48) != 1)
            {
              v650 = v605 + 1;
              if (v650 <= 1)
              {
                LODWORD(v650) = 1;
              }

              v651 = 1;
              v652 = v605;
              do
              {
                if (v652 != -1)
                {
                  v27 = 0;
                  v653 = v311 - v14;
                  if (v311 < v14)
                  {
                    v653 = 0;
                  }

                  do
                  {
                    if (v653 == v27)
                    {
                      goto LABEL_979;
                    }

                    *&v654 = v630 * v27;
                    *(&v654 + 1) = v635 + (v651 * ((v648 - v635) / (v649 + 1.0)));
                    *(v64 + 8 * v14 + 8 * v27++) = v654;
                  }

                  while (v650 != v27);
                  v14 = (v14 + v27);
                  v652 = v605;
                }

                ++v651;
              }

              while (v651 <= v649);
            }

            if (v606)
            {
              v655 = 0;
              v656 = v605 + 1;
              if (v656 <= 1)
              {
                LODWORD(v656) = 1;
              }

              v657 = v605;
              do
              {
                if (v657 != -1)
                {
                  v27 = 0;
                  v658 = v311 - v14;
                  if (v311 < v14)
                  {
                    v658 = 0;
                  }

                  do
                  {
                    if (v658 == v27)
                    {
                      goto LABEL_989;
                    }

                    *&v659 = v630 * v27;
                    *(&v659 + 1) = v648;
                    *(v64 + 8 * v14 + 8 * v27++) = v659;
                  }

                  while (v656 != v27);
                  v14 = (v14 + v27);
                  v657 = v605;
                }

                ++v655;
              }

              while (v655 != v606);
            }

            v660 = v628 + v648;
            v661 = v605 + 1;
            v662 = *(a2 + 44) - 1;
            if (*(a2 + 44) != 1)
            {
              if (v661 <= 1)
              {
                v663 = 1;
              }

              else
              {
                v663 = v605 + 1;
              }

              v664 = 1;
              v665 = v605;
              do
              {
                if (v665 != -1)
                {
                  v27 = 0;
                  v666 = v311 - v14;
                  if (v311 < v14)
                  {
                    v666 = 0;
                  }

                  do
                  {
                    if (v666 == v27)
                    {
                      goto LABEL_998;
                    }

                    *&v667 = v630 * v27;
                    *(&v667 + 1) = v648 + (v664 * ((v660 - v648) / (v662 + 1.0)));
                    *(v64 + 8 * v14 + 8 * v27++) = v667;
                  }

                  while (v663 != v27);
                  v14 = (v14 + v27);
                  v665 = v605;
                }

                ++v664;
              }

              while (v664 <= v662);
            }

            if (v606)
            {
              v668 = 0;
              if (v661 <= 1)
              {
                v669 = 1;
              }

              else
              {
                v669 = v605 + 1;
              }

              v670 = v605;
              do
              {
                if (v670 != -1)
                {
                  v27 = 0;
                  v671 = v311 - v14;
                  if (v311 < v14)
                  {
                    v671 = 0;
                  }

                  do
                  {
                    if (v671 == v27)
                    {
                      goto LABEL_999;
                    }

                    *&v672 = v630 * v27;
                    *(&v672 + 1) = v660;
                    *(v64 + 8 * v14 + 8 * v27++) = v672;
                  }

                  while (v669 != v27);
                  v14 = (v14 + v27);
                  v670 = v605;
                }

                ++v668;
              }

              while (v668 != v606);
            }

            v673 = v647 + v660;
            v674 = *(a2 + 48) - 1;
            if (*(a2 + 48) != 1)
            {
              if (v661 <= 1)
              {
                v675 = 1;
              }

              else
              {
                v675 = v605 + 1;
              }

              v676 = 1;
              v677 = v605;
              do
              {
                if (v677 != -1)
                {
                  v27 = 0;
                  v678 = v311 - v14;
                  if (v311 < v14)
                  {
                    v678 = 0;
                  }

                  do
                  {
                    if (v678 == v27)
                    {
                      goto LABEL_1013;
                    }

                    *&v679 = v630 * v27;
                    *(&v679 + 1) = v660 + (v676 * ((v673 - v660) / (v674 + 1.0)));
                    *(v64 + 8 * v14 + 8 * v27++) = v679;
                  }

                  while (v675 != v27);
                  v14 = (v14 + v27);
                  v677 = v605;
                }

                ++v676;
              }

              while (v676 <= v674);
            }

            if (v605 == -1)
            {
              goto LABEL_888;
            }

            v680 = 0;
            v27 = v14;
            v681 = v311 - v14;
            if (v311 < v14)
            {
              v681 = 0;
            }

            while (v681 != v680)
            {
              *&v682 = v630 * v680;
              *(&v682 + 1) = v673;
              *(v64 + 8 * v27++) = v682;
              if (v661 == ++v680)
              {
                goto LABEL_888;
              }
            }

LABEL_1056:
            *v810 = 0;
            v786 = 0u;
            v787 = 0u;
            memset(v785, 0, sizeof(v785));
            v64 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v27;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v311;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1057:
            *v810 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 621;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v14;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v64;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1058:
            *v810 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v811[0]) = 136315906;
            *(v811 + 4) = "operator[]";
            WORD6(v811[0]) = 1024;
            *(v811 + 14) = 613;
            WORD1(v811[1]) = 2048;
            *(&v811[1] + 4) = v14;
            WORD6(v811[1]) = 2048;
            *(&v811[1] + 14) = v27;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_1059;
          }

LABEL_1068:
          *v810 = 0;
          v786 = 0u;
          v787 = 0u;
          memset(v785, 0, sizeof(v785));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v811[0]) = 136315906;
          *(v811 + 4) = "operator[]";
          WORD6(v811[0]) = 1024;
          *(v811 + 14) = 621;
          WORD1(v811[1]) = 2048;
          *(&v811[1] + 4) = v14;
          WORD6(v811[1]) = 2048;
          *(&v811[1] + 14) = v311;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_1069:
          *v810 = 0;
          v786 = 0u;
          v787 = 0u;
          memset(v785, 0, sizeof(v785));
          LODWORD(v311) = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v811[0]) = 136315906;
          *(v811 + 4) = "operator[]";
          WORD6(v811[0]) = 1024;
          *(v811 + 14) = 613;
          WORD1(v811[1]) = 2048;
          *(&v811[1] + 4) = v20;
          WORD6(v811[1]) = 2048;
          *(&v811[1] + 14) = v14;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_1070;
        }

LABEL_1066:
        *v810 = 0;
        v786 = 0u;
        v787 = 0u;
        memset(v785, 0, sizeof(v785));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v811[0]) = 136315906;
        *(v811 + 4) = "operator[]";
        WORD6(v811[0]) = 1024;
        *(v811 + 14) = 621;
        WORD1(v811[1]) = 2048;
        *(&v811[1] + 4) = v27;
        WORD6(v811[1]) = 2048;
        *(&v811[1] + 14) = v311;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_1067:
        *v810 = 0;
        v786 = 0u;
        v787 = 0u;
        memset(v785, 0, sizeof(v785));
        LODWORD(v311) = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v811[0]) = 136315906;
        *(v811 + 4) = "operator[]";
        WORD6(v811[0]) = 1024;
        *(v811 + 14) = 613;
        WORD1(v811[1]) = 2048;
        *(&v811[1] + 4) = v3;
        WORD6(v811[1]) = 2048;
        *(&v811[1] + 14) = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_1068;
      }

LABEL_1064:
      *v810 = 0;
      v786 = 0u;
      v787 = 0u;
      memset(v785, 0, sizeof(v785));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 621;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v3;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v311;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1065:
      *v810 = 0;
      v786 = 0u;
      v787 = 0u;
      memset(v785, 0, sizeof(v785));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 621;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v20;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v311;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_1066;
    }

LABEL_581:
    v475 = v482;
    if (v482 != v478)
    {
      continue;
    }

    break;
  }

  v14 = 0;
  v502 = *&v810[12];
  v23 = *&v810[16];
  v503 = *&v810[20];
  v20 = *&v810[24];
  v504 = *&v810[28];
  v27 = *&v810[32];
  v505 = *&v810[28] - 1;
  v506 = *&v810[20] - 1;
  v507 = *&v810[12] - 1;
  v508 = *&v810[32] - 1;
  v509 = *&v810[24] - 1;
  LODWORD(v21) = *&v810[4];
  v22 = *&v810[8];
  v510 = *&v810[16] - 1;
  v511 = *&v810[8] - 1;
  v512 = *&v810[4] - 1;
  v513 = -2;
  v17 = v741;
  do
  {
    if (v512 + v14 >= v311)
    {
      goto LABEL_990;
    }

    if (v14)
    {
      v3 = v513;
    }

    else
    {
      v3 = 1;
    }

    v514 = &v466[(v512 + v14)];
    v515.i32[0] = v514->i32[0];
    v516 = v514->f32[1];
    v517 = vadd_f32(v477, *v514);
    *v514 = v517;
    if (v511 + v14 - v3 >= v311)
    {
      goto LABEL_991;
    }

    v518.f32[0] = -v515.f32[0];
    v518.f32[1] = v516;
    v519 = vadd_f32(v471, v518);
    v466[(v511 + v14 - v3)] = v519;
    if (v507 + v14 >= v311)
    {
      goto LABEL_992;
    }

    v520 = -v516;
    v521.f32[1] = -v516;
    v521.f32[0] = -v515.f32[0];
    v522 = vadd_f32(v476, v521);
    v466[(v507 + v14)] = v522;
    if (v510 + v14 - v3 >= v311)
    {
      goto LABEL_993;
    }

    v515.f32[1] = v520;
    v523 = vadd_f32(v470, v515);
    v466[(v510 + v14 - v3)] = v523;
    if (v506 + v14 >= v311)
    {
      goto LABEL_994;
    }

    v524 = &v466[(v506 + v14)];
    *v524 = v522;
    if (v509 + v14 - v3 >= v311)
    {
      goto LABEL_995;
    }

    v525 = &v466[(v509 + v14 - v3)];
    *v525 = v523;
    if (v505 + v14 >= v311)
    {
      goto LABEL_996;
    }

    v526 = &v466[(v505 + v14)];
    *v526 = v517;
    if (v508 + v14 - v3 >= v311)
    {
      goto LABEL_997;
    }

    v527 = &v466[(v508 + v14 - v3)];
    *v527 = v519;
    if (v465)
    {
      v524->f32[0] = -v524->f32[0];
      v525->f32[0] = -v525->f32[0];
      v526->f32[0] = -v526->f32[0];
      v527->f32[0] = -v527->f32[0];
    }

    --v14;
    ++v513;
  }

  while (v14 != -3);
  v528 = *v466;
  if (v27 < 2)
  {
    goto LABEL_698;
  }

  v64 = v311;
  v21 = v732;
  v529 = v757;
  if (v311 - 1 <= v27 - 2)
  {
    goto LABEL_1062;
  }

  v530 = v27 - 1;
  v531 = v466 + 1;
  v532 = *v466;
  do
  {
    v533 = *v531++;
    v534.i32[0] = vbsl_s8(vcgt_f32(v528, v533), v533, v528).u32[0];
    v534.i32[1] = v528.i32[1];
    v534.i32[1] = vbsl_s8(vcgt_f32(v534, v533), *&v533, *&v528).i32[1];
    v532 = vbsl_s8(vcgt_f32(v533, v532), v533, v532);
    v528 = v534;
    --v530;
  }

  while (v530);
LABEL_699:
  if (v27)
  {
    v586 = vsub_f32(v532, v534);
    if (v586.f32[1] >= v586.f32[0])
    {
      v586.f32[0] = v586.f32[1];
    }

    if (v586.f32[0] > 0.0)
    {
      v586.f32[0] = 1.0 / v586.f32[0];
    }

    v64 = v311;
    v587 = v311;
    while (v587)
    {
      *v466 = vmul_n_f32(vsub_f32(*v466, v534), v586.f32[0]);
      ++v466;
      --v587;
      if (!--v27)
      {
        goto LABEL_707;
      }
    }

LABEL_1014:
    v784 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    v14 = v810;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v64;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v64;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_1015:
    *v810 = 0;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v17;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_1016:
    *v810 = 0;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 613;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v17;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_1017;
  }

LABEL_707:
  v785[0] = v783;
  v785[1] = v781;
  *&v811[0] = v779;
  *(&v811[0] + 1) = v777;
  *v810 = v744;
  v3 = v727;
  v588 = v529;
  v14 = v730;
  if (v726 >= 2)
  {
    v590 = re::modifyVertexUVs(a1, v589);
    if (v756 >= 2)
    {
      LODWORD(v311) = v589;
      v591 = v757 + 2;
      v592 = 1;
      while (1)
      {
        v64 = (v17 * v592);
        v27 = v773;
        if (v773 <= v64)
        {
          goto LABEL_1035;
        }

        v14 = v775[v64];
        if (v14 >= v589)
        {
          goto LABEL_1036;
        }

        v3 = (v64 + v757);
        if (v773 <= v3)
        {
          goto LABEL_1037;
        }

        v27 = v775[v3];
        if (v27 >= v589)
        {
          goto LABEL_1038;
        }

        v20 = v769;
        if (v769 <= v64)
        {
          goto LABEL_1039;
        }

        v17 = v771[v64];
        if (v17 >= v589)
        {
          goto LABEL_1040;
        }

        if (v769 <= v3)
        {
          goto LABEL_1041;
        }

        v3 = v771[v3];
        if (v3 >= v589)
        {
          goto LABEL_1042;
        }

        if (v757 >= 2)
        {
          break;
        }

LABEL_725:
        ++v592;
        v17 = v741;
        v591 += v741;
        if (v592 == v756)
        {
          goto LABEL_726;
        }
      }

      v593 = 1;
      v594 = v591;
      v595 = v757 - 1;
      while (1)
      {
        v596 = (1.0 / v757) * v593;
        v597 = 1.0 - v596;
        v64 = v594;
        v20 = v773;
        if (v773 <= v594)
        {
          break;
        }

        v20 = v775[v594];
        if (v20 >= v589)
        {
          goto LABEL_967;
        }

        *(v590 + 8 * v20) = vadd_f32(vmul_n_f32(*(v590 + 8 * v27), v596), vmul_n_f32(*(v590 + 8 * v14), v597));
        v20 = v769;
        if (v769 <= v594)
        {
          goto LABEL_968;
        }

        v20 = v771[v594];
        if (v20 >= v589)
        {
          goto LABEL_969;
        }

        *(v590 + 8 * v20) = vadd_f32(vmul_n_f32(*(v590 + 8 * v17), v597), vmul_n_f32(*(v590 + 8 * v3), v596));
        ++v594;
        ++v593;
        if (!--v595)
        {
          goto LABEL_725;
        }
      }

LABEL_966:
      *v810 = 0;
      v786 = 0u;
      v787 = 0u;
      memset(v785, 0, sizeof(v785));
      LODWORD(v311) = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 797;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v64;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_967:
      *v810 = 0;
      v786 = 0u;
      v787 = 0u;
      memset(v785, 0, sizeof(v785));
      v64 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 621;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v20;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v311;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_968:
      *v810 = 0;
      v786 = 0u;
      v787 = 0u;
      memset(v785, 0, sizeof(v785));
      LODWORD(v311) = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 797;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v64;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_969:
      *v810 = 0;
      v786 = 0u;
      v787 = 0u;
      memset(v785, 0, sizeof(v785));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v811[0]) = 136315906;
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 621;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = v20;
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v311;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_970:
      *v810 = 0;
      v786 = 0u;
      v787 = 0u;
      memset(v785, 0, sizeof(v785));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *(v811 + 4) = "operator[]";
      WORD6(v811[0]) = 1024;
      *(v811 + 14) = 621;
      LODWORD(v811[0]) = 136315906;
      WORD1(v811[1]) = 2048;
      *(&v811[1] + 4) = (v14 + v27);
      WORD6(v811[1]) = 2048;
      *(&v811[1] + 14) = v311;
      _os_log_send_and_compose_impl();
      v327 = _os_crash_msg();
      __break(1u);
LABEL_971:
      v784 = 0;
      v812 = 0u;
      v813 = 0u;
      memset(v811, 0, sizeof(v811));
      v339 = MEMORY[0x1E69E9C10];
      v698 = v327;
      v699 = v265;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v810 = 136315906;
      *&v810[4] = "operator[]";
      *&v810[12] = 1024;
      *&v810[14] = 621;
      *&v810[18] = 2048;
      *&v810[20] = v698;
      *&v810[28] = 2048;
      *&v810[30] = v699;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_972;
    }
  }

LABEL_726:
  v20 = a2;
  v3 = a1;
  v14 = *(a2 + 2);
  v17 = v767;
  v27 = v765;
  v598 = re::modifyVertexUVs(a1, v589);
  v64 = v598;
  LODWORD(v311) = v400;
  if (v14 != 1)
  {
    goto LABEL_738;
  }

  if (v27)
  {
    v599 = 0;
    v600 = (*(a2 + 52) + 1);
    v14 = v400;
    v601 = v733 + 8 * v748[0] + v734 + 24;
    while (1)
    {
      if (v599 == v27)
      {
        goto LABEL_1031;
      }

      v3 = *(v17 + 4 * v599);
      if (v3 >= v400)
      {
        goto LABEL_1032;
      }

      v20 = v601;
      v602 = v600;
      if (v600)
      {
        break;
      }

LABEL_734:
      ++v599;
      v601 += v600;
      if (v599 == v27)
      {
        goto LABEL_888;
      }
    }

    while (v20 < v400)
    {
      *(v598 + 8 * v20++) = *(v598 + 8 * v3);
      if (!--v602)
      {
        goto LABEL_734;
      }
    }

LABEL_927:
    *v810 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v20;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_928:
    v784 = 0;
    v786 = 0u;
    v787 = 0u;
    memset(v785, 0, sizeof(v785));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v811[0]) = 136315906;
    *(v811 + 4) = "operator[]";
    WORD6(v811[0]) = 1024;
    *(v811 + 14) = 621;
    WORD1(v811[1]) = 2048;
    *(&v811[1] + 4) = v64;
    WORD6(v811[1]) = 2048;
    *(&v811[1] + 14) = v64;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_929;
  }

LABEL_888:
  v451 = a2;
  if (*(a2 + 1) == 1)
  {
    v683 = 3 - (4 * *(a2 + 56) + 2 * (*(a2 + 48) + *(a2 + 44)));
    v684 = *(a1 + 4);
    v685 = v683 + v683 * *(a2 + 52) + v684;
    v785[0] = re::modifyVertexUVs(a1, v400);
    LODWORD(v785[1]) = v686;
    v451 = a2;
  }

LABEL_890:
  if (*(v451 + 4) == 1)
  {
    re::internal::mergeVertexPositions(a1, v400);
  }

  re::GeomMeshBuilder::~GeomMeshBuilder(&v797);
  if (v760[0] && v763)
  {
    (*(*v760[0] + 40))(v760[0], v763);
  }

  if (v764[0] && v767)
  {
    (*(*v764[0] + 40))(v764[0], v767);
  }

  if (v768[0] && v771)
  {
    (*(*v768[0] + 40))(v768[0], v771);
  }

  if (v772[0] && v775)
  {
    (*(*v772[0] + 40))(v772[0], v775);
  }

  if (v776[0] && v779)
  {
    (*(*v776[0] + 40))(v776[0], v779);
  }

  if (v780[0] && v783)
  {
    (*(*v780[0] + 40))(v780[0], v783);
  }

  return v732;
}