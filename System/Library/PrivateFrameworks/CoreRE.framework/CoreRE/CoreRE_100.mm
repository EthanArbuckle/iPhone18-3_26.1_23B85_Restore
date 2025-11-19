int64x2_t re::HashBrown<unsigned long long,re::HashSet<re::ecs2::Component const*,re::Hash<re::ecs2::Component const*>,re::EqualTo<re::ecs2::Component const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<unsigned long long,re::HashSet<re::ecs2::Component const*,re::Hash<re::ecs2::Component const*>,re::EqualTo<re::ecs2::Component const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(a1, 1u);
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
  v16 = 56 * (v13 + 16 * v11);
  v17 = *(a1 + 8) + v16;
  *v17 = *a2;
  *(v17 + 8) = 0u;
  *(v17 + 40) = 0;
  *(v17 + 24) = 0u;
  *(v17 + 44) = 0x7FFFFFFFLL;
  *(v17 + 8) = *a3;
  *a3 = 0;
  v18 = *(v17 + 16);
  *(v17 + 16) = *(a3 + 8);
  *(a3 + 8) = v18;
  v19 = *(v17 + 24);
  *(v17 + 24) = *(a3 + 16);
  *(a3 + 16) = v19;
  LODWORD(v19) = *(v17 + 32);
  *(v17 + 32) = *(a3 + 24);
  *(a3 + 24) = v19;
  LODWORD(v19) = *(v17 + 36);
  *(v17 + 36) = *(a3 + 28);
  *(a3 + 28) = v19;
  LODWORD(v19) = *(v17 + 40);
  *(v17 + 40) = *(a3 + 32);
  *(a3 + 32) = v19;
  LODWORD(v19) = *(v17 + 44);
  *(v17 + 44) = *(a3 + 36);
  *(a3 + 36) = v19;
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
  v23 = *(*(a1 + 8) + v16) ^ (*(*(a1 + 8) + v16) >> 30);
  v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v23) ^ ((0xBF58476D1CE4E5B9 * v23) >> 27));
  *(a1 + 40) ^= (v24 >> 31) ^ v24;
  return result;
}

double re::HashBrown<unsigned long long,re::HashSet<re::ecs2::Component const*,re::Hash<re::ecs2::Component const*>,re::EqualTo<re::ecs2::Component const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24) + a2;
  v5 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v5 > v3)
  {
    v6 = 3 * v3;
    v7 = v6 << 6;
    v8 = (v6 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v5 > v7 >> 7)
    {
      v8 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v4 = (v8 << 7) / 0x97;
  }

  v9 = *(a1 + 56);
  memset(v28, 0, sizeof(v28));
  re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::init(v28, v9, v4);
  v26[0] = a1;
  v11 = *(a1 + 16);
  if (v11 >= 0x10)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v11 >> 4;
    v15 = xmmword_1E304FAD0;
    v10.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v16 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v26[1] = v16 ^ 0xFFFFLL;
      if (v16 != 0xFFFFLL)
      {
        break;
      }

      v12 -= 16;
      ++v13;
      if (!--v14)
      {
        goto LABEL_13;
      }
    }

    v17 = __clz(__rbit64(v16 ^ 0xFFFFLL));
    v18 = v17 - v12;
    v27 = v17 - v12;
    if (v17 + 1 != v12)
    {
      do
      {
        re::HashBrown<unsigned long long,re::HashSet<re::ecs2::Component const*,re::Hash<re::ecs2::Component const*>,re::EqualTo<re::ecs2::Component const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(v28, *(v26[0] + 8) + 56 * v18, *(v26[0] + 8) + 56 * v18 + 8, v15, v10);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v26);
        v18 = v27;
      }

      while (v27 != -1);
      v11 = *(a1 + 16);
    }
  }

LABEL_13:
  v19 = *(&v28[3] + 1);
  *(&v28[3] + 1) = *(a1 + 56);
  v20 = v28[0];
  v21 = v28[1];
  v28[0] = *a1;
  *&v28[1] = v11;
  v22 = v28[2];
  v23 = *(a1 + 40);
  *(a1 + 48) = *&v28[3];
  *(a1 + 56) = v19;
  *(&v28[2] + 8) = v23;
  v24 = *(a1 + 24);
  *a1 = v20;
  *(a1 + 16) = v21;
  *(a1 + 32) = v22;
  *(&v28[1] + 8) = v24;
  return re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::deinit(v28);
}

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(a1 + 24);
  if (!v7)
  {
    LODWORD(v8) = 0;
    goto LABEL_8;
  }

  v8 = v6 % v7;
  v9 = *(*(a1 + 8) + 4 * (v6 % v7));
  if (v9 == 0x7FFFFFFF)
  {
LABEL_8:
    v12 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::addAsCopy(a1, v8, v6, a2, a2);
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 16 * v12;
    return v11 + 8;
  }

  v10 = *(a1 + 16);
  while (*(v10 + 16 * v9 + 8) != v4)
  {
    v9 = *(v10 + 16 * v9) & 0x7FFFFFFF;
    if (v9 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  v11 = v10 + 16 * v9;
  return v11 + 8;
}

void re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v15, 0, 36);
      *&v15[36] = 0x7FFFFFFFLL;
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(v15, v4, a2);
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
            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::addAsCopy(a1, v13 % *(a1 + 24), v13, *&v15[16] + v10 + 8, *&v15[16] + v10 + 8);
            v9 = *&v15[32];
          }

          ++v11;
          v10 += 16;
        }

        while (v11 < v9);
      }

      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v15);
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

uint64_t re::DynamicInlineArray<unsigned long long,8ul>::ensureCapacity(void *a1, uint64_t a2)
{
  if (*a1 <= 7uLL)
  {
    return 1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::HashBrown<unsigned long long,re::ecs2::PortalServiceQuery::WorldType,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24) + a2;
  v5 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v5 > v3)
  {
    v6 = 3 * v3;
    v7 = v6 << 6;
    v8 = (v6 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v5 > v7 >> 7)
    {
      v8 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v4 = (v8 << 7) / 0x97;
  }

  v9 = *(a1 + 56);
  memset(v44, 0, sizeof(v44));
  v10 = re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v44, v9, v4);
  v42[0] = a1;
  v11 = *(a1 + 16);
  if (v11 >= 0x10)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v11 >> 4;
    while (1)
    {
      v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v42[1] = v15 ^ 0xFFFFLL;
      if (v15 != 0xFFFFLL)
      {
        break;
      }

      v12 -= 16;
      ++v13;
      if (!--v14)
      {
        goto LABEL_28;
      }
    }

    v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
    v17 = v16 - v12;
    v43 = v16 - v12;
    if (v16 + 1 != v12)
    {
      do
      {
        v18 = *(v42[0] + 8);
        if (*(&v44[3] + 1))
        {
          v19 = *&v44[2];
        }

        else
        {
          *&v44[1] = 16;
          *&v35 = -1;
          *(&v35 + 1) = -1;
          **&v44[0] = v35;
          v19 = *&v44[1];
          *(&v44[0] + 1) = *&v44[0] + 16;
          *(&v44[1] + 1) = 0;
          v44[2] = *&v44[1];
          *&v44[3] = 0;
        }

        v20 = xmmword_1E304FAD0;
        if (!v19 || (v21 = *&v44[1], *&v44[1] > (8 * v19)))
        {
          re::HashBrown<unsigned long long,re::ecs2::PortalServiceQuery::WorldType,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(v44, 1);
          v20 = xmmword_1E304FAD0;
          v21 = *&v44[1];
        }

        v22 = (v18 + 16 * v17);
        v23 = 0xBF58476D1CE4E5B9 * (*v22 ^ (*v22 >> 30));
        v24 = (0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31);
        v25 = v21 >> 4;
        v26 = v24 % (v21 >> 4);
        v27 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v44[0] + 16 * v26)), v20)))), 0x3830282018100800)));
        if (v27 >= 0x40)
        {
          do
          {
            if (v26 + 1 == v25)
            {
              v26 = 0;
            }

            else
            {
              ++v26;
            }

            v27 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v44[0] + 16 * v26)), v20)))), 0x3830282018100800)));
          }

          while (v27 > 0x3F);
        }

        v28 = *&v44[0] + 16 * v26;
        v29 = *(v28 + v27);
        *(v28 + v27) = v24 & 0x7F;
        v30 = *(&v44[0] + 1) + 16 * (v27 + 16 * v26);
        v31 = *v22;
        *v30 = *v22;
        *(v30 + 8) = *(v22 + 2);
        if (v29 == 255)
        {
          v32 = -1;
        }

        else
        {
          v32 = 0;
        }

        v33.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v33.i64[1] = v32;
        *(&v44[1] + 8) = vaddq_s64(*(&v44[1] + 8), v33);
        v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) >> 27));
        *(&v44[2] + 1) ^= (v34 >> 31) ^ v34;
        v10 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v42);
        v17 = v43;
      }

      while (v43 != -1);
      v11 = *(a1 + 16);
    }
  }

LABEL_28:
  v36 = *(&v44[3] + 1);
  *(&v44[3] + 1) = *(a1 + 56);
  v37 = v44[0];
  v38 = v44[1];
  v44[0] = *a1;
  *&v44[1] = v11;
  v39 = v44[2];
  v40 = *(a1 + 40);
  *(a1 + 48) = *&v44[3];
  *(a1 + 56) = v36;
  *(&v44[2] + 8) = v40;
  v41 = *(a1 + 24);
  *a1 = v37;
  *(a1 + 16) = v38;
  *(a1 + 32) = v39;
  *(&v44[1] + 8) = v41;
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(v44);
}

uint64_t (***re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidChangeEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CEA4C8;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CEA520;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CEA578;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<RESceneEntityDidReparentEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CEA5D0;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<RESceneEntityDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CEA628;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<RESceneEntityWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CEA680;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA4C8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEA4C8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA520;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEA520;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA578;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEA578;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA5D0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEA5D0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if ((*(a2 + 387) & 1) == 0)
  {
    v3 = a1 + 200;
    (*(*a1 + 40))(a1);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v5);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v3, &v5);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA628;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEA628;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<unsigned long long>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = a1 + 200;
  (*(*a1 + 40))(a1);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 104, &v5);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v3, &v5);
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA680;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<unsigned long long>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<unsigned long long>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEA680;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void re::PeerVideoStreamingManager::~PeerVideoStreamingManager(id *this)
{
  if (*(this + 32) == 1)
  {
    re::PeerVideoStreamingManager::deinit(this);
  }

  re::Event<re::GeometricObjectBase>::~Event(this + 28);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::deinit((this + 22));
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::deinit((this + 16));
  re::DynamicArray<unsigned long>::deinit((this + 10));
  v2 = this[7];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = this[1];
  this[1] = 0;
}

{
  re::PeerVideoStreamingManager::~PeerVideoStreamingManager(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::PeerVideoStreamingManager::deinit(re::PeerVideoStreamingManager *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    v3 = *(this + 14);
    v4 = 8 * v2;
    do
    {
      v3 += 8;
      RESyncNetSessionRemoveObserver();
      v4 -= 8;
    }

    while (v4);
  }

  RESyncServiceRemoveObserver();
  RESyncRelease();
  result = RESyncRelease();
  v7 = *(this + 28);
  v6 = this + 224;
  if (v7)
  {

    return re::DynamicArray<unsigned long>::deinit(v6);
  }

  return result;
}

uint64_t ___ZN2re25PeerVideoStreamingManager15setupSessionObsEv_block_invoke(re *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 4);
  v9 = re::globalAllocators(a1)[2];
  v10 = (*(*v9 + 32))(v9, 40, 0);
  *v10 = &unk_1F5CEA7A8;
  *(v10 + 8) = v8;
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *(v10 + 32) = a5;
  v26[0] = &unk_1F5D0CA98;
  v26[1] = a4;
  v26[2] = a4;
  v26[3] = a4 + a5;
  re::OPackReader::OPackReader(v27, v26);
  v12 = re::OPackReader::next(v27, v11);
  if (!v12 || v30 != 12)
  {
    v18 = *re::peerVideoStreamingLogObjects(v12);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    LOWORD(v23) = 0;
    v19 = "Failed to read message. Unexpected OPack type. Skipping reading payload.";
    v20 = &v23;
    goto LABEL_39;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v14 = re::OPackReader::next(v27, v13);
  if (v14 && v30 == 13)
  {
    while (1)
    {
      v14 = re::OPackReader::next(v27, v15);
      if (!v14 || v30 != 6)
      {
        break;
      }

      if (v31 == 1)
      {
        v14 = re::OPackReader::next(v27, v16);
        if (!v14 || v30 != 6)
        {
          goto LABEL_32;
        }

        v25 = v31;
      }

      else if (v31)
      {
        re::OPackReader::next(v27, v16);
      }

      else
      {
        v14 = re::OPackReader::next(v27, v16);
        if (!v14 || v30 != 13)
        {
          goto LABEL_32;
        }

        while (1)
        {
          v14 = re::OPackReader::next(v27, v17);
          if (!v14 || v30 != 6)
          {
            break;
          }

          if (v31 == 1)
          {
            v14 = re::OPackReader::next(v27, v15);
            if (!v14 || v30 != 6)
            {
              goto LABEL_32;
            }

            v24 = v31;
          }

          else if (v31)
          {
            re::OPackReader::next(v27, v15);
          }

          else
          {
            v14 = re::OPackReader::next(v27, v15);
            if (!v14 || v30 != 6)
            {
              goto LABEL_32;
            }

            v23 = v31;
          }
        }

        if (v29 != 5)
        {
          goto LABEL_32;
        }
      }
    }

    if (v29 == 5)
    {
      (*(*v10 + 16))(v10, &v23, v27);
      goto LABEL_33;
    }
  }

LABEL_32:
  v18 = *re::peerVideoStreamingLogObjects(v14);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v22 = 0;
    v19 = "Failed to read message header. Skipping reading payload.";
    v20 = &v22;
LABEL_39:
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
  }

LABEL_33:
  if (v33)
  {
    if (v37)
    {
      (*(*v33 + 40))(v33);
    }

    v37 = 0;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    ++v36;
  }

  re::OPackReader::Buffer::~Buffer(&v32);
  re::zerocopy::BufferedReadStream::~BufferedReadStream(&v28);
  (**v10)(v10);
  return (*(*v9 + 40))(v9, v10);
}

uint64_t ___ZN2re25PeerVideoStreamingManager15setupSessionObsEv_block_invoke_2(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = RESyncParticipantGetPeerID();
  v45 = result;
  v3 = *(v1 + 160);
  if (v3)
  {
    v4 = 0;
    v5 = *(v1 + 144);
    while ((*v5 & 0x80000000) == 0)
    {
      v5 += 84;
      if (v3 == ++v4)
      {
        LODWORD(v4) = *(v1 + 160);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  while (v4 != v3)
  {
    v6 = *(v1 + 144) + 336 * v4;
    result = re::DynamicArray<unsigned long long>::remove(v6 + 24, &v45);
    if (result)
    {
      v7 = *re::peerVideoStreamingLogObjects(result);
      result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v8 = v45;
        v10 = *(v6 + 8);
        v9 = *(v6 + 16);
        v11 = v7;
        re::DynamicString::format("%llu_%llu", &v40, v10, v9);
        v12 = (v41 & 1) != 0 ? v42 : &v41 + 1;
        *buf = 134218242;
        *&buf[4] = v8;
        v47 = 2080;
        *v48 = v12;
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Peer %llu left. Removed as client from write end: %s", buf, 0x16u);

        result = v40;
        if (v40)
        {
          if (v41)
          {
            result = (*(*v40 + 40))();
          }
        }
      }
    }

    v13 = *(v1 + 160);
    if (v13 <= v4 + 1)
    {
      v13 = v4 + 1;
    }

    while (v13 - 1 != v4)
    {
      LODWORD(v4) = v4 + 1;
      if ((*(*(v1 + 144) + 336 * v4) & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    LODWORD(v4) = v13;
LABEL_22:
    ;
  }

  v44 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v43 = 0;
  v14 = *(v1 + 208);
  if (v14)
  {
    v15 = 0;
    v16 = *(v1 + 192);
    while (1)
    {
      v17 = *v16;
      v16 += 42;
      if (v17 < 0)
      {
        break;
      }

      if (v14 == ++v15)
      {
        LODWORD(v15) = *(v1 + 208);
        break;
      }
    }
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v15 != v14)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(v1 + 192) + 168 * v15;
      if (*(v20 + 32) == v45)
      {
        if (v19 >= v41)
        {
          if (v41 < v19 + 1)
          {
            if (v40)
            {
              v21 = 8;
              if (v41)
              {
                v21 = 2 * v41;
              }

              if (v21 <= v19 + 1)
              {
                v22 = v19 + 1;
              }

              else
              {
                v22 = v21;
              }

              re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v40, v22);
            }

            else
            {
              re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v40, v19 + 1);
              ++v43;
            }
          }

          v19 = v42;
          v18 = v44;
        }

        v18[v19] = *(v20 + 8);
        v19 = ++v42;
        ++v43;
      }

      result = re::DynamicArray<unsigned long long>::remove(v20 + 40, &v45);
      if (result)
      {
        v23 = *re::peerVideoStreamingLogObjects(result);
        result = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          v24 = v45;
          v26 = *(v20 + 8);
          v25 = *(v20 + 16);
          v27 = v23;
          re::DynamicString::format("%llu_%llu", buf, v26, v25);
          v28 = &buf[9];
          if (buf[8])
          {
            v28 = *&v48[2];
          }

          *v49 = 134218242;
          v50 = v24;
          v51 = 2080;
          v52 = v28;
          _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEFAULT, "Peer %llu left. Removed as proxy client from read end: %s", v49, 0x16u);

          result = *buf;
          if (*buf && (buf[8] & 1) != 0)
          {
            result = (*(**buf + 40))();
          }
        }
      }

      v29 = *(v1 + 208);
      if (v29 <= v15 + 1)
      {
        v29 = v15 + 1;
      }

      while (v29 - 1 != v15)
      {
        LODWORD(v15) = v15 + 1;
        if ((*(*(v1 + 192) + 168 * v15) & 0x80000000) != 0)
        {
          goto LABEL_57;
        }
      }

      LODWORD(v15) = v29;
LABEL_57:
      ;
    }

    while (v15 != v14);
    v38 = v44;
    if (v19)
    {
      v30 = 16 * v19;
      v31 = v44;
      do
      {
        v39 = *v31;
        re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::remove(v1 + 176, &v39);
        v33 = *re::peerVideoStreamingLogObjects(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v45;
          v35 = v39;
          v36 = v33;
          re::DynamicString::format("%llu_%llu", buf, v35);
          v37 = (buf[8] & 1) != 0 ? *&v48[2] : &buf[9];
          *v49 = 134218242;
          v50 = v34;
          v51 = 2080;
          v52 = v37;
          _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "Peer %llu left. Removed read end: %s", v49, 0x16u);

          if (*buf)
          {
            if (buf[8])
            {
              (*(**buf + 40))();
            }
          }
        }

        ++v31;
        v30 -= 16;
      }

      while (v30);
    }

    result = v40;
    if (v40)
    {
      if (v38)
      {
        return (*(*v40 + 40))();
      }
    }
  }

  return result;
}

void re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::remove(uint64_t a1, re::PeerVideoStreamId *this)
{
  v4 = re::PeerVideoStreamId::hash(this);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v9, a1, *this, *(this + 1), v4);
  v5 = v11;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = *(v6 + 168 * v11) & 0x7FFFFFFF;
    if (v12 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v10) = v7;
    }

    else
    {
      *(v6 + 168 * v12) = *(v6 + 168 * v12) & 0x80000000 | v7;
    }

    re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::free(a1, v5);
    v8 = *(a1 + 40);
    *(*(a1 + 16) + 168 * v5) = *(*(a1 + 16) + 168 * v5) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v8 + 1;
  }
}

uint64_t re::PeerVideoStreamingManager::init(uint64_t a1, uint64_t a2)
{
  objc_storeStrong((a1 + 8), *a2);
  *(a1 + 16) = *(a2 + 8);
  re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 224), 0);
  ++*(a1 + 248);
  *(a1 + 72) = RESyncNetSessionObserverCreate();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN2re25PeerVideoStreamingManager15setupSessionObsEv_block_invoke;
  v11[3] = &__block_descriptor_40_e38_v36__0__RESyncNetSession__8Q16r_v24I32l;
  v11[4] = a1;
  RESyncNetSessionObserverOnReceiveData();
  RESyncNetSessionObserverOnParticipantLeave();
  *(a1 + 64) = RESyncServiceObserverCreate();
  RESyncServiceObserverOnSessionDidAdd();
  RESyncServiceObserverOnSessionWillRemove();
  RESyncServiceAddObserver();
  SessionCount = RESyncServiceGetSessionCount();
  if (SessionCount)
  {
    v8 = SessionCount;
    for (i = 0; i != v8; ++i)
    {
      RESyncServiceGetSession();
      v11[0] = RESyncSessionGetNetSession();
      if (v11[0])
      {
        re::DynamicArray<re::RigDataValue *>::add((a1 + 80), v11);
        RESyncNetSessionAddObserver();
      }
    }
  }

  result = RESyncServiceGetLocalPeerId();
  *(a1 + 40) = result;
  *(a1 + 32) = 1;
  return result;
}

uint64_t ___ZN2re25PeerVideoStreamingManager4initERKNS0_6ConfigE_block_invoke(uint64_t result, uint64_t a2)
{
  v6 = a2;
  v2 = *(result + 32);
  v3 = v2[12];
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2[14];
    while (*v5 != a2)
    {
      ++v5;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v5 = v2[14];
  }

  if (v5 == (v2[14] + 8 * v3))
  {
LABEL_8:
    re::DynamicArray<re::RigDataValue *>::add((v2 + 10), &v6);

    return RESyncNetSessionAddObserver();
  }

  return result;
}

uint64_t ___ZN2re25PeerVideoStreamingManager4initERKNS0_6ConfigE_block_invoke_2(uint64_t result, uint64_t a2)
{
  v3 = *(result + 32);
  v4 = *(v3 + 96);
  if (v4)
  {
    v5 = 8 * v4;
    for (i = *(v3 + 112); *i != a2; ++i)
    {
      v5 -= 8;
      if (!v5)
      {
        return result;
      }
    }
  }

  else
  {
    i = *(v3 + 112);
  }

  if (i != (*(v3 + 112) + 8 * v4))
  {
    result = RESyncNetSessionRemoveObserver();
    v7 = *(v3 + 112);
    v8 = *(v3 + 96);
    j = v7;
    if (v8)
    {
      v10 = 8 * v8;
      for (j = *(v3 + 112); *j != a2; j += 8)
      {
        v10 -= 8;
        if (!v10)
        {
          return result;
        }
      }
    }

    v11 = &v7[8 * v8];
    if (j != v11)
    {
      v12 = j - v7;
      v13 = (j - v7) >> 3;
      if (v8 <= v12 >> 3)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v14 = v8 - 1;
      if (v14 > v13)
      {
        *&v7[v12] = *(v11 - 1);
      }

      *(v3 + 96) = v14;
      ++*(v3 + 104);
    }
  }

  return result;
}

void re::PeerVideoStreamingManager::createStream(re::PeerVideoStreamingManager *this@<X0>, uint64_t a2@<X1>, re *a3@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  *&v33 = *(this + 5);
  v6 = v33;
  *(&v33 + 1) = a2;
  v31 = 0u;
  v32 = 0u;
  memset(v30, 0, sizeof(v30));
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  memset(v21, 0, sizeof(v21));
  v7 = re::DynamicString::setCapacity(&v23, 0);
  *(&v25 + 1) = 0;
  v26 = 0uLL;
  re::DynamicString::setCapacity(&v25, 0);
  v27 = 0uLL;
  *&v28 = 0;
  *(&v28 + 1) = 0x3FF0000000000000;
  LOBYTE(v29) = 0;
  *(&v29 + 1) = 0;
  *&v30[0] = 0;
  *(v30 + 8) = *MEMORY[0x1E6960CC0];
  *(&v30[1] + 1) = *(MEMORY[0x1E6960CC0] + 16);
  v31 = *(v30 + 8);
  *&v32 = *(&v30[1] + 1);
  BYTE8(v32) = 0;
  memset(buf, 0, sizeof(buf));
  v8 = re::PeerVideoStreamId::hash(&v33);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(buf, this + 128, v6, a2, v8);
  if (*&buf[12] == 0x7FFFFFFF)
  {
    v9 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::allocEntry(this + 128, *&buf[8], *buf);
    v10 = v33;
    *(v9 + 24) = *&v21[0];
    *(v9 + 8) = v10;
    *&v21[0] = 0;
    *(v9 + 32) = *(v21 + 8);
    *(v21 + 8) = 0u;
    *(v9 + 56) = *&v21[2];
    *&v21[2] = 0;
    ++DWORD2(v21[1]);
    *(v9 + 48) = 1;
    *(v9 + 80) = 0;
    v11 = v9 + 24;
    *(v9 + 64) = 0u;
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
    *(v9 + 88) = 0u;
    *(v9 + 120) = 0u;
    re::PeerVideoStreamingEncoder::operator=((v9 + 64), (&v21[2] + 8));
    *(v11 + 112) = v22;
    re::DynamicString::DynamicString((v11 + 128), &v23);
    re::DynamicString::DynamicString((v11 + 160), &v25);
    v12 = v31;
    *(v11 + 256) = v30[1];
    *(v11 + 272) = v12;
    *(v11 + 288) = v32;
    v13 = v28;
    *(v11 + 192) = v27;
    *(v11 + 208) = v13;
    v14 = v30[0];
    *(v11 + 224) = v29;
    *(v11 + 240) = v14;
    *(v11 + 296) = BYTE8(v32);
    ++*(this + 42);
  }

  else
  {
    v11 = *(this + 18) + 336 * *&buf[12] + 24;
  }

  v15 = re::PeerVideoFileWriter::destroy(&v23);
  if (v25)
  {
    if (BYTE8(v25))
    {
      (*(*v25 + 40))(v15);
    }

    v15 = 0uLL;
    v25 = 0u;
    v26 = 0u;
  }

  if (v23)
  {
    if (BYTE8(v23))
    {
      (*(*v23 + 40))(v15);
    }

    v23 = 0u;
    v24 = 0u;
  }

  re::PeerVideoStreamingEncoder::~PeerVideoStreamingEncoder((&v21[2] + 8));
  v16 = *&v21[0];
  if (*&v21[0] && *&v21[2])
  {
    v16 = (*(**&v21[0] + 40))();
  }

  v17 = *re::peerVideoStreamingLogObjects(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = v17;
    re::DynamicString::format("%llu_%llu", v21, v6, a2);
    if (BYTE8(v21[0]))
    {
      v19 = *&v21[1];
    }

    else
    {
      v19 = v21 + 9;
    }

    v20 = *(this + 39);
    *buf = 136315650;
    *&buf[4] = v19;
    *&buf[12] = 2048;
    *&buf[14] = v11 + 40;
    *&buf[22] = 1024;
    v35 = v20;
    _os_log_debug_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEBUG, "Created stream: %s with encoder 0x%p (count=%u)", buf, 0x1Cu);

    if (*&v21[0] && (BYTE8(v21[0]) & 1) != 0)
    {
      (*(**&v21[0] + 40))();
    }
  }

  *&v21[0] = this;
  re::make::shared::object<re::PeerVideoStreamHandle,re::PeerVideoStreamId &,re::PeerVideoStreamingManager *>(a3, &v33, v21);
}

BOOL re::PeerVideoStreamingManager::hasClients(re *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *(v2 + 24);
  v3 = (v2 + 24);
  if (!v4)
  {
    v7 = *re::peerVideoStreamingLogObjects(a1);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v11 = 0;
    v8 = "Invalid stream handle in method hasClients";
    v9 = &v11;
LABEL_9:
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    return 0;
  }

  v5 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 128, v3);
  if (v5)
  {
    return *(v5 + 16) != 0;
  }

  v7 = *re::peerVideoStreamingLogObjects(0);
  result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v10 = 0;
    v8 = "No write end found for handle in method hasClients";
    v9 = &v10;
    goto LABEL_9;
  }

  return result;
}

uint64_t re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(uint64_t a1, re::PeerVideoStreamId *this)
{
  v4 = re::PeerVideoStreamId::hash(this);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v6, a1, *this, *(this + 1), v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 336 * v7 + 24;
  }
}

uint64_t re::PeerVideoStreamingManager::newClientsAwaitingFrame(re *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *(v2 + 24);
  v3 = (v2 + 24);
  if (!v4)
  {
    v7 = *re::peerVideoStreamingLogObjects(a1);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      v6 = 0;
      return v6 & 1;
    }

    v12 = 0;
    v8 = "Invalid stream handle in method newClientsAwaitingFrame";
    v9 = &v12;
LABEL_10:
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    goto LABEL_7;
  }

  v5 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 128, v3);
  if (!v5)
  {
    v7 = *re::peerVideoStreamingLogObjects(0);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = 0;
    v8 = "No write end found for handle in method newClientsAwaitingFrame";
    v9 = &v11;
    goto LABEL_10;
  }

  v6 = *(v5 + 112);
  return v6 & 1;
}

uint64_t re::PeerVideoStreamingManager::createFrameForWriting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!*(*a2 + 24))
  {
    v23 = *re::peerVideoStreamingLogObjects(a1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LOWORD(cacheOut) = 0;
      _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "Failed to create frame for writing. Invalid stream handle.", &cacheOut, 2u);
    }

    return 0;
  }

  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
  {
    kdebug_trace();
  }

  v10 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 128, (*a2 + 24));
  if (!v10)
  {
    v24 = *re::peerVideoStreamingLogObjects(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v47 = *(*a2 + 24);
      v48 = *(*a2 + 32);
      v49 = v24;
      re::DynamicString::format("%llu_%llu", &cacheOut, v47, v48);
      v50 = (v57 & 1) != 0 ? v59 : v58;
      *buf = 136315138;
      v61 = v50;
      _os_log_error_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_ERROR, "Failed to create frame for writing. No write end found for handle %s.", buf, 0xCu);

      if (cacheOut)
      {
        if (v57)
        {
          (*(*cacheOut + 40))();
        }
      }
    }

    return 0;
  }

  re::PeerVideoStreamingEncoder::createPixelBufferFromPool(v10 + 40, a3, &pixelBuffer);
  v12 = pixelBuffer;
  if (pixelBuffer)
  {
    if (*(a1 + 56))
    {
      v13 = *MEMORY[0x1E695E480];
    }

    else
    {
      v32 = re::ServiceLocator::serviceOrNull<re::RenderManager>(*(a1 + 16));
      if (!v32)
      {
        v43 = *re::peerVideoStreamingLogObjects(0);
        v19 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
        if (!v19)
        {
          goto LABEL_42;
        }

        LOWORD(cacheOut) = 0;
        v22 = "Failed to create CVMetalTextureCache. No RenderManager";
        p_cacheOut = &cacheOut;
        v36 = v43;
        v37 = 2;
        goto LABEL_26;
      }

      cacheOut = 0;
      v13 = *MEMORY[0x1E695E480];
      v33 = CVMetalTextureCacheCreate(*MEMORY[0x1E695E480], 0, *(v32 + 26), 0, &cacheOut);
      if (v33)
      {
        v34 = v33;
        v21 = *re::peerVideoStreamingLogObjects(v33);
        v19 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
        if (v19)
        {
          *buf = 67109120;
          LODWORD(v61) = v34;
          v22 = "Error creating texture cache: %d";
          goto LABEL_25;
        }

LABEL_42:
        v44 = *re::peerVideoStreamingLogObjects(v19);
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        v51 = *(*a2 + 24);
        v52 = *(*a2 + 32);
        v29 = v44;
        re::DynamicString::format("%llu_%llu", &cacheOut, v51, v52);
        if (v57)
        {
          v53 = v59;
        }

        else
        {
          v53 = v58;
        }

        *buf = 136315138;
        v61 = v53;
        v31 = "Failed to create frame for writing. Could not create CVMetalTexture for stream %s";
LABEL_59:
        _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, v31, buf, 0xCu);

        if (cacheOut && (v57 & 1) != 0)
        {
          (*(*cacheOut + 40))();
        }

        goto LABEL_43;
      }

      v46 = *(a1 + 56);
      *(a1 + 56) = cacheOut;
      if (v46)
      {
        CFRelease(v46);
      }
    }

    Width = CVPixelBufferGetWidth(v12);
    Height = CVPixelBufferGetHeight(v12);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v12);
    v18 = re::PeerVideoStreamingUtils::mtlPixelFormatFromCVPixelFormat(PixelFormatType, v17);
    cacheOut = 0;
    v19 = CVMetalTextureCacheCreateTextureFromImage(v13, *(a1 + 56), v12, 0, v18, Width, Height, 0, &cacheOut);
    if (!v19)
    {
      v38 = cacheOut;
      v54 = cacheOut;
      if (cacheOut)
      {
        v39 = pixelBuffer;
        v40 = cacheOut;
        if (pixelBuffer)
        {
          CFRetain(pixelBuffer);
          CFRetain(v38);
          v40 = v39;
        }

        CFRetain(v40);
        CFRetain(v38);
        v42 = *a4;
        v41 = *(a4 + 8);
        *a4 = v39;
        *(a4 + 8) = v38;
        *(a4 + 16) = a5;
        if (v41)
        {
          CFRelease(v41);
        }

        if (v42)
        {
          CFRelease(v42);
        }

        CFRelease(v38);
        if (v39)
        {
          CFRelease(v39);
        }

        if (!re::internal::enableSignposts(0, 0) || !re::internal::enableHighFrequencyNetworkTracing(0, 0) || (kdebug_trace(), (v38 = v54) != 0))
        {
          CFRelease(v38);
        }

        v25 = 1;
        goto LABEL_44;
      }

      goto LABEL_42;
    }

    v20 = v19;
    v21 = *re::peerVideoStreamingLogObjects(v19);
    v19 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      *buf = 67109120;
      LODWORD(v61) = v20;
      v22 = "Failed to create texture from image: %d";
LABEL_25:
      p_cacheOut = buf;
      v36 = v21;
      v37 = 8;
LABEL_26:
      _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, v22, p_cacheOut, v37);
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  v26 = *re::peerVideoStreamingLogObjects(v11);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = *(*a2 + 24);
    v28 = *(*a2 + 32);
    v29 = v26;
    re::DynamicString::format("%llu_%llu", &cacheOut, v27, v28);
    if (v57)
    {
      v30 = v59;
    }

    else
    {
      v30 = v58;
    }

    *buf = 136315138;
    v61 = v30;
    v31 = "Failed to create frame for writing. Could not create pixel buffer for stream %s.";
    goto LABEL_59;
  }

LABEL_43:
  v25 = 0;
LABEL_44:
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  return v25;
}

void re::PeerVideoStreamingManager::writeFrame(id *a1, uint64_t *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 24))
  {
    if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
    {
      kdebug_trace();
    }

    v6 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet((a1 + 16), (*a2 + 24));
    if (v6)
    {
      v7 = v6;
      if (*(v6 + 16))
      {
        Width = CVPixelBufferGetWidth(*a3);
        Height = CVPixelBufferGetHeight(*a3);
        BytesPerRow = CVPixelBufferGetBytesPerRow(*a3);
        v11 = BytesPerRow * Height;
        v12 = *(a3 + 16);
        v13 = *a2;
        if (*a2)
        {
          BytesPerRow = (v13 + 8);
        }

        v14 = re::globalAllocators(BytesPerRow)[2];
        v25 = v14;
        v15 = (*(*v14 + 32))(v14, 56, 0);
        *v15 = &unk_1F5CEA810;
        v15[1] = a1;
        v15[2] = v13;
        v15[3] = v11;
        v15[4] = Width;
        v15[5] = Height;
        v15[6] = v12;
        v26 = v15;
        v16 = *(v7 + 112);
        v22 = v14;
        v23 = 0;
        re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::operator=<24ul>(v21, buf);
        v20 = a1[1];
        re::PeerVideoStreamingEncoder::encodeFrame(v7 + 40, a3, v16, v21, &v20);
        v17 = v20;
        v20 = 0;

        re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::destroyCallable(v21);
        *(v7 + 112) = 0;
        re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::destroyCallable(buf);
      }

      else if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
      {

        kdebug_trace();
      }
    }

    else
    {
      v19 = *re::peerVideoStreamingLogObjects(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Failed to write frame. No write end found for handle.", buf, 2u);
      }

      if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
      {
        kdebug_trace();
      }
    }
  }

  else
  {
    v18 = *re::peerVideoStreamingLogObjects(a1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Failed to write frame. Invalid stream handle.", buf, 2u);
    }
  }
}

void re::PeerVideoStreamingManager::writeFrameToVideoFile(re *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, float64_t a7, float64_t a8)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!*(*a2 + 24))
  {
    v24 = *re::peerVideoStreamingLogObjects(a1);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v25 = "Failed to write frame to video file. Invalid stream handle.";
LABEL_13:
    _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, v25, buf, 2u);
    return;
  }

  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
  {
    kdebug_trace();
  }

  v16 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 128, (*a2 + 24));
  if (!v16)
  {
    v24 = *re::peerVideoStreamingLogObjects(0);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v25 = "Failed to write frame to video file. No write end found for handle.";
    goto LABEL_13;
  }

  v17 = v16;
  if ((*(v16 + 296) & 1) == 0)
  {
    v18 = a4;
    v19 = [v18 URLByDeletingPathExtension];
    v20 = [v19 absoluteString];
    v21 = [v20 stringByAppendingFormat:@"_%llu", a5];

    v22 = [v18 pathExtension];
    if (v22)
    {
      v23 = [v18 pathExtension];
    }

    else
    {
      v23 = @"mov";
    }

    v26 = [v21 UTF8String];
    re::DynamicString::operator=((v17 + 128), buf);
    if (*buf && (buf[8] & 1) != 0)
    {
      (*(**buf + 40))();
    }

    v27 = [(__CFString *)v23 UTF8String];
    re::DynamicString::operator=((v17 + 160), buf);
    v28 = *buf;
    if (*buf && (buf[8] & 1) != 0)
    {
      v28 = (*(**buf + 40))();
    }

    v29 = *re::peerVideoStreamingLogObjects(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v18;
      v31 = *(*a2 + 24);
      v30 = *(*a2 + 32);
      v32 = v29;
      re::DynamicString::format("%llu_%llu", &v35, v31, v30);
      if (v36)
      {
        v33 = *&v37[7];
      }

      else
      {
        v33 = v37;
      }

      *buf = 136315650;
      *&buf[4] = v33;
      v39 = 2112;
      v40 = v21;
      v41 = 2112;
      v42 = v23;
      _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "Set video file writer output path for write end: %s, output path: %@.%@", buf, 0x20u);

      if (v35 && (v36 & 1) != 0)
      {
        (*(*v35 + 40))();
      }

      v18 = v34;
    }

    v17[296] = 1;
  }

  re::PeerVideoFileWriter::appendFrame((v17 + 128), a3, a5, a6, a7, a8);
  if (re::internal::enableSignposts(0, 0))
  {
    if (re::internal::enableHighFrequencyNetworkTracing(0, 0))
    {
      kdebug_trace();
    }
  }
}

void re::PeerVideoStreamingManager::stopAllVideoFileWriters(re::PeerVideoStreamingManager *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(this + 40);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 18);
    while ((*v4 & 0x80000000) == 0)
    {
      v4 += 84;
      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 40);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 != v2)
  {
    v5 = *(this + 40);
    do
    {
      v6 = *(this + 18);
      v7 = v6 + 336 * v3;
      if (*(v7 + 320) == 1)
      {
        v8 = v7 + 24;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = ___ZN2re25PeerVideoStreamingManager23stopAllVideoFileWritersEv_block_invoke;
        v11[3] = &__block_descriptor_48_e5_v8__0l;
        v11[4] = v6 + 336 * v3 + 8;
        v11[5] = v7 + 24;
        v9 = _Block_copy(v11);
        v12[3] = re::globalAllocators(v9)[2];
        v13 = 0;
        v12[0] = &unk_1F5CEA878;
        v12[1] = _Block_copy(v9);
        v13 = v12;
        re::PeerVideoFileWriter::flush(v8 + 128, v12);
        re::FunctionBase<24ul,void ()(void)>::destroyCallable(v12);

        *(v8 + 296) = 0;
        v5 = *(this + 40);
      }

      if (v5 <= v3 + 1)
      {
        v10 = v3 + 1;
      }

      else
      {
        v10 = v5;
      }

      while (v10 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(this + 18) + 336 * v3) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v3) = v10;
LABEL_18:
      ;
    }

    while (v3 != v2);
  }
}

double ___ZN2re25PeerVideoStreamingManager23stopAllVideoFileWritersEv_block_invoke(re *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *re::peerVideoStreamingLogObjects(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 4);
    v4 = *v3;
    v5 = v3[1];
    v6 = v2;
    re::DynamicString::format("%llu_%llu", &v9, v4, v5);
    if (v10)
    {
      v7 = *&v11[7];
    }

    else
    {
      v7 = v11;
    }

    *buf = 136315138;
    v13 = v7;
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "Flushed video file writer for write end: %s", buf, 0xCu);

    if (v9 && (v10 & 1) != 0)
    {
      (*(*v9 + 40))();
    }
  }

  *&result = re::PeerVideoFileWriter::destroy((*(a1 + 5) + 128)).n128_u64[0];
  return result;
}

uint64_t anonymous namespace::makeMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v9[0] = &unk_1F5D0C9F0;
  v9[1] = a1;
  v8 = v9;
  v10 = -46;
  re::zerocopy::writeAll(v9, &v10, 1);
  v10 = -30;
  re::zerocopy::writeAll(v9, &v10, 1);
  v10 = 8;
  re::zerocopy::writeAll(v9, &v10, 1);
  v5 = *a2;
  v6 = *(a2 + 8);
  v10 = -30;
  re::zerocopy::writeAll(v9, &v10, 1);
  v10 = 8;
  re::zerocopy::writeAll(v9, &v10, 1);
  re::OPackWriter::writeInteger(&v8, v5);
  v10 = 9;
  re::zerocopy::writeAll(v9, &v10, 1);
  re::OPackWriter::writeInteger(&v8, v6);
  v10 = 9;
  re::zerocopy::writeAll(v9, &v10, 1);
  re::OPackWriter::writeInteger(&v8, *(a2 + 16));
  return (*(**(a3 + 32) + 16))(*(a3 + 32), &v8);
}

uint64_t (***re::PeerVideoStreamingManager::makeUnsubscribeMessage(re *a1, uint64_t a2, uint64_t a3))(void)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v6[0] = a2;
  v6[1] = a3;
  v7 = 2;
  v4 = re::globalAllocators(a1)[2];
  v8[0] = &unk_1F5CEA938;
  v8[3] = v4;
  v8[4] = v8;
  return re::FunctionBase<24ul,void ()(re::OPackWriter &)>::destroyCallable(v8);
}

void re::PeerVideoStreamingManager::connectToStream(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, re *a5@<X8>)
{
  v51 = *MEMORY[0x1E69E9840];
  *&v34 = a3;
  *(&v34 + 1) = a4;
  if (!a3)
  {
    v27 = *re::peerVideoStreamingLogObjects(a1);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    LOWORD(to) = 0;
    v28 = "Failed to connect to stream. Invalid stream id.";
LABEL_40:
    _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, v28, &to, 2u);
    goto LABEL_41;
  }

  v10 = re::PeerVideoStreamId::hash(&v34);
  v11 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(&to, a1 + 176, a3, a4, v10);
  if (HIDWORD(v36) != 0x7FFFFFFF)
  {
    v27 = *re::peerVideoStreamingLogObjects(v11);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    LOWORD(to) = 0;
    v28 = "There is already a connection to this stream. Multiple connections are unsupported.";
    goto LABEL_40;
  }

  if (!*(a1 + 96) || !**(a1 + 112))
  {
    v27 = *re::peerVideoStreamingLogObjects(v11);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LOWORD(to) = 0;
      v28 = "Failed to connect to stream. Could not get Session";
      goto LABEL_40;
    }

LABEL_41:
    *a5 = 0;
    return;
  }

  to = a1;
  re::make::shared::object<re::PeerVideoStreamHandle,re::PeerVideoStreamId &,re::PeerVideoStreamingManager *>(a5, &v34, &to);
  if (*a5)
  {
    v12 = (*a5 + 8);
  }

  else
  {
    v12 = 0;
  }

  objc_initWeak(&location, v12);
  to = 0;
  objc_copyWeak(&to, &location);
  v36 = a2;
  v37 = 0;
  v38 = 0uLL;
  v39 = 0;
  v45 = 0;
  v47 = 0;
  v49 = 0;
  session[0] = 0;
  session[1] = 0;
  v40 = 0;
  v42 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v13 = re::PeerVideoStreamId::hash(&v34);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(&v29, a1 + 176, a3, a4, v13);
  if (HIDWORD(v30) == 0x7FFFFFFF)
  {
    v14 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::allocEntry(a1 + 176, v30, v29);
    *(v14 + 8) = v34;
    *(v14 + 24) = 0;
    objc_moveWeak((v14 + 24), &to);
    v15 = v37;
    *(v14 + 32) = v36;
    *(v14 + 40) = v15;
    *(v14 + 48) = v38;
    v37 = 0;
    v38 = 0uLL;
    *(v14 + 72) = v40;
    v40 = 0;
    ++v39;
    *(v14 + 64) = 1;
    *(v14 + 80) = *session;
    v16 = v42;
    *(v14 + 96) = v42;
    if (v16 == 1)
    {
      v17 = cf;
      v18 = v44;
      cf = 0;
      *(v14 + 104) = v17;
      *(v14 + 112) = v18;
    }

    v19 = v45;
    *(v14 + 120) = v45;
    if (v19 == 1)
    {
      *(v14 + 128) = v46;
    }

    v20 = v47;
    *(v14 + 136) = v47;
    if (v20 == 1)
    {
      *(v14 + 144) = v48;
    }

    *(v14 + 152) = v49;
    ++*(a1 + 216);
    if (v16 && cf)
    {
      CFRelease(cf);
    }
  }

  v21 = session[0];
  if (session[0])
  {
    VTDecompressionSessionInvalidate(session[0]);
    CFRelease(v21);
    session[0] = 0;
  }

  if (v37)
  {
    if (v40)
    {
      (*(*v37 + 40))();
    }

    v40 = 0;
    v38 = 0uLL;
    v37 = 0;
    ++v39;
  }

  objc_destroyWeak(&to);
  to = 0;
  objc_destroyWeak(&location);
  location = 0;
  *buf = a3;
  *&buf[8] = a4;
  *&buf[16] = 1;
  *&v38 = re::globalAllocators(v22)[2];
  *(&v38 + 1) = &to;
  to = &unk_1F5CEA8D0;
  re::FunctionBase<24ul,void ()(re::OPackWriter &)>::destroyCallable(&to);
  v23 = RESyncNetSessionSendData();
  v24 = *re::peerVideoStreamingLogObjects(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    re::DynamicString::format("%llu_%llu", &to, a3, a4);
    v26 = (v36 & 1) != 0 ? v37 : (&v36 + 1);
    *buf = 136315394;
    *&buf[4] = v26;
    *&buf[12] = 2048;
    *&buf[14] = a2;
    _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "Opened read end for: %s, served by %llu. Sent subscribe message.", buf, 0x16u);

    if (to)
    {
      if (v36)
      {
        (*(*to + 40))();
      }
    }
  }

  if (v29)
  {
    if (v32)
    {
      (*(*v29 + 40))();
    }
  }
}

BOOL re::PeerVideoStreamingManager::consumeFrame(re *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v5 = *(v3 + 24);
  v4 = (v3 + 24);
  if (!v5)
  {
    v14 = *re::peerVideoStreamingLogObjects(a1);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *v16 = 0;
    v15 = "Failed to consume frame. Invalid handle.";
LABEL_13:
    _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, v15, v16, 2u);
    return 0;
  }

  v7 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 176, v4);
  if (!v7)
  {
    v14 = *re::peerVideoStreamingLogObjects(0);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *v16 = 0;
    v15 = "Failed to consume frame. There is no read end for the given handle.";
    goto LABEL_13;
  }

  v8 = v7;
  v10 = *(v7 + 72);
  v9 = v7 + 72;
  if (v10 != 1)
  {
    return 0;
  }

  v11 = *a3;
  *a3 = *(v8 + 80);
  *(v8 + 80) = v11;
  a3[1] = *(v8 + 88);
  v16[0] = 0;
  re::Optional<re::OutputVideoFrame>::operator=(v9, v16);
  if (v16[0] == 1 && cf)
  {
    CFRelease(cf);
  }

  v12 = a3[1];
  if (*(v8 + 112))
  {
    *(v8 + 120) = v12;
    return 1;
  }

  else
  {
    result = 1;
    *(v8 + 112) = 1;
    *(v8 + 120) = v12;
  }

  return result;
}

uint64_t re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(uint64_t a1, re::PeerVideoStreamId *this)
{
  v4 = re::PeerVideoStreamId::hash(this);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v6, a1, *this, *(this + 1), v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 168 * v7 + 24;
  }
}

uint64_t re::Optional<re::OutputVideoFrame>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      v3 = *(a1 + 8);
      v4 = *(a2 + 16);
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = v3;
      *(a1 + 16) = v4;
    }

    else
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        CFRelease(v6);
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    v5 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 16) = v5;
  }

  return a1;
}

BOOL re::PeerVideoStreamingManager::peekFrame(re *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v5 = *(v3 + 24);
  v4 = (v3 + 24);
  if (!v5)
  {
    v12 = *re::peerVideoStreamingLogObjects(a1);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v16 = 0;
    v13 = "Failed to peek frame. Invalid handle.";
    v14 = &v16;
LABEL_13:
    _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v13, v14, 2u);
    return 0;
  }

  v7 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 176, v4);
  if (!v7)
  {
    v12 = *re::peerVideoStreamingLogObjects(0);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v15 = 0;
    v13 = "Failed to peek frame. There is no read end for the given handle.";
    v14 = &v15;
    goto LABEL_13;
  }

  v8 = v7;
  if (*(v7 + 72) != 1)
  {
    return 0;
  }

  v9 = *a3;
  v10 = *(v7 + 80);
  *a3 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  *(a3 + 8) = *(v8 + 88);
  return 1;
}

void re::PeerVideoStreamingManager::lastConsumedFrameNumber(re *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v6 = *(v4 + 24);
  v5 = (v4 + 24);
  if (!v6)
  {
    v9 = *re::peerVideoStreamingLogObjects(a1);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      *a3 = 0;
      return;
    }

    v13 = 0;
    v10 = "Failed to get last consumed frame number. Invalid handle.";
    v11 = &v13;
LABEL_11:
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    goto LABEL_8;
  }

  v7 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 176, v5);
  if (!v7)
  {
    v9 = *re::peerVideoStreamingLogObjects(0);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v12 = 0;
    v10 = "Failed to get last consumed frame number. No read end for handle.";
    v11 = &v12;
    goto LABEL_11;
  }

  v8 = *(v7 + 112);
  *a3 = v8;
  if (v8 == 1)
  {
    *(a3 + 8) = *(v7 + 120);
  }
}

uint64_t re::PeerVideoStreamingManager::streamStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  if (!a2)
  {
    return 0;
  }

  if (re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 128, v5))
  {
    return 2;
  }

  if (re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 176, v5))
  {
    return 3;
  }

  return 1;
}

void re::PeerVideoStreamingManager::setUserData(re *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v5 = (*a2 + 24);
  v4 = *v5;
  if (!*v5)
  {
    v12 = *re::peerVideoStreamingLogObjects(a1);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *v15 = 0;
    v13 = "Error setting userData. Invalid handle";
    goto LABEL_8;
  }

  v8 = re::PeerVideoStreamId::hash((*a2 + 24));
  v9 = *(v3 + 32);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v15, a1 + 128, v4, v9, v8);
  if (v16 == 0x7FFFFFFF)
  {
    v10 = re::PeerVideoStreamId::hash(v5);
    v11 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v15, a1 + 176, v4, v9, v10);
    if (v16 == 0x7FFFFFFF)
    {
      v12 = *re::peerVideoStreamingLogObjects(v11);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *v15 = 0;
      v13 = "Error setting userData. No read or write end for handle.";
LABEL_8:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v13, v15, 2u);
      return;
    }

    re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v15, a1 + 176, v4, v9, v10);
    *(*(a1 + 24) + 168 * v16 + 152) = a3;
  }

  else
  {
    v14 = re::PeerVideoStreamId::hash(v5);
    re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v15, a1 + 128, v4, v9, v14);
    *(*(a1 + 18) + 336 * v16 + 144) = a3;
  }
}

void re::PeerVideoStreamingManager::getUserData(re *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v6 = (*a2 + 24);
  v5 = *v6;
  if (!*v6)
  {
    v12 = *re::peerVideoStreamingLogObjects(a1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      v13 = "Error getting userData. Invalid handle";
      goto LABEL_13;
    }

LABEL_7:
    *a3 = 0;
    return;
  }

  v8 = re::PeerVideoStreamId::hash((*a2 + 24));
  v9 = *(v4 + 32);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v18, a1 + 128, v5, v9, v8);
  if (v19 == 0x7FFFFFFF)
  {
    v10 = re::PeerVideoStreamId::hash(v6);
    v11 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v18, a1 + 176, v5, v9, v10);
    if (v19 == 0x7FFFFFFF)
    {
      v12 = *re::peerVideoStreamingLogObjects(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        v13 = "Error getting userData. No read or write end for handle.";
LABEL_13:
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v13, v18, 2u);
        goto LABEL_7;
      }

      goto LABEL_7;
    }

    re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v18, a1 + 176, v5, v9, v10);
    v17 = *(a1 + 24) + 168 * v19;
    *a3 = 1;
    v16 = *(v17 + 152);
  }

  else
  {
    v14 = re::PeerVideoStreamId::hash(v6);
    re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v18, a1 + 128, v5, v9, v14);
    v15 = *(a1 + 18) + 336 * v19;
    *a3 = 1;
    v16 = *(v15 + 144);
  }

  *(a3 + 8) = v16;
}

void re::PeerVideoStreamingManager::close(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  *&v36 = a2;
  *(&v36 + 1) = a3;
  v6 = re::PeerVideoStreamId::hash(&v36);
  re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(&v28, a1 + 128, a2, a3, v6);
  if (v31 == 0x7FFFFFFF)
  {
    re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(&v28, a1 + 176, a2, a3, v6);
    if (v31 == 0x7FFFFFFF)
    {
      return;
    }

    re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(&v28, a1 + 176, a2, a3, v6);
    re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::remove(a1 + 176, &v36);
    if (*(a1 + 96) && **(a1 + 112))
    {
      re::PeerVideoStreamingManager::makeUnsubscribeMessage(&v28, a2, a3);
      RESyncNetSessionSendData();
      v8 = v28;
      if (!v28 || !v33)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v22 = *re::peerVideoStreamingLogObjects(v7);
      v8 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      if (!v8)
      {
        goto LABEL_24;
      }

      v26 = v22;
      re::DynamicString::format("%llu_%llu", &v28, a2, a3);
      v27 = (v29 & 1) != 0 ? v32 : v30;
      *buf = 136315138;
      v38 = v27;
      _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "Failed to send unsubscribe while closing read end %s. No Session", buf, 0xCu);

      v8 = v28;
      if (!v28 || (v29 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v8 = (*(*v8 + 40))(v8);
LABEL_24:
    v23 = *re::peerVideoStreamingLogObjects(v8);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v24 = v23;
    re::DynamicString::format("%llu_%llu", &v28, a2, a3);
    if (v29)
    {
      v25 = v32;
    }

    else
    {
      v25 = v30;
    }

    *buf = 136315138;
    v38 = v25;
    _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "Closed read end: %s.", buf, 0xCu);

LABEL_29:
    if (v28)
    {
      if (v29)
      {
        (*(*v28 + 40))();
      }
    }

    return;
  }

  v9 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(a1 + 128, &v36);
  if (*(v9 + 296) != 1)
  {
    v15 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::remove(a1 + 128, &v36);
    v16 = re::peerVideoStreamingLogObjects(v15);
    v17 = re::PeerVideoStreamingLogObjects::loggingEnabled(v16);
    if (!v17)
    {
      return;
    }

    v18 = *re::peerVideoStreamingLogObjects(v17);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v19 = v18;
    re::DynamicString::format("%llu_%llu", &v28, a2, a3);
    if (v29)
    {
      v20 = v32;
    }

    else
    {
      v20 = v30;
    }

    v21 = *(a1 + 156);
    *buf = 136315394;
    v38 = v20;
    v39 = 1024;
    v40 = v21;
    _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Closed write end: %s (count=%u)", buf, 0x12u);

    goto LABEL_29;
  }

  v10 = v9;
  v11 = *re::peerVideoStreamingLogObjects(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    re::DynamicString::format("%llu_%llu", &v28, a2, a3);
    v13 = (v29 & 1) != 0 ? v32 : v30;
    *buf = 136315138;
    v38 = v13;
    _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Write end %s is active, deferring close until after flush", buf, 0xCu);

    if (v28)
    {
      if (v29)
      {
        (*(*v28 + 40))();
      }
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN2re25PeerVideoStreamingManager5closeENS_17PeerVideoStreamIdE_block_invoke;
  aBlock[3] = &__block_descriptor_56_e5_v8__0l;
  aBlock[4] = a1;
  v35 = v36;
  v14 = _Block_copy(aBlock);
  v41[3] = re::globalAllocators(v14)[2];
  v42 = 0;
  v41[0] = &unk_1F5CEA878;
  v41[1] = _Block_copy(v14);
  v42 = v41;
  re::PeerVideoFileWriter::flush(v10 + 128, v41);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v41);

  *(v10 + 296) = 0;
}

uint64_t ___ZN2re25PeerVideoStreamingManager5closeENS_17PeerVideoStreamIdE_block_invoke(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = *re::peerVideoStreamingLogObjects(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = v3;
    re::DynamicString::format("%llu_%llu", &v16, v4, v5);
    v7 = (v17 & 1) != 0 ? v19 : v18;
    *buf = 136315138;
    v21 = v7;
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "Flushed video file writer for write end: %s", buf, 0xCu);

    if (v16)
    {
      if (v17)
      {
        (*(*v16 + 40))();
      }
    }
  }

  v8 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::remove(v2 + 128, (a1 + 5));
  v9 = *re::peerVideoStreamingLogObjects(v8);
  result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v11 = a1[5];
    v12 = a1[6];
    v13 = v9;
    re::DynamicString::format("%llu_%llu", &v16, v11, v12);
    if (v17)
    {
      v14 = v19;
    }

    else
    {
      v14 = v18;
    }

    v15 = *(v2 + 156);
    *buf = 136315394;
    v21 = v14;
    v22 = 1024;
    v23 = v15;
    _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Closed write end: %s (count=%u)", buf, 0x12u);

    result = v16;
    if (v16)
    {
      if (v17)
      {
        return (*(*v16 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::remove(uint64_t a1, re::PeerVideoStreamId *this)
{
  v4 = re::PeerVideoStreamId::hash(this);
  result = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(v10, a1, *this, *(this + 1), v4);
  v6 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 336 * v12) & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v8;
    }

    else
    {
      *(v7 + 336 * v13) = *(v7 + 336 * v13) & 0x80000000 | v8;
    }

    result = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::free(a1, v6);
    v9 = *(a1 + 40);
    *(*(a1 + 16) + 336 * v6) = *(*(a1 + 16) + 336 * v6) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v6;
    *(a1 + 40) = v9 + 1;
  }

  return result;
}

void _ZNK2re8internal8CallableIZZNS_25PeerVideoStreamingManager15setupSessionObsEvEUb_E3__0FvRKN12_GLOBAL__N_113MessageHeaderERNS_11OPackReaderEEJEEclES7_S9_(re *a1, uint64_t a2, re::OPackReader *a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  v5 = *(a2 + 16);
  if (v5 != 3)
  {
    if (v5 == 2)
    {
      v15 = *(a1 + 2);
      v16 = *a2;
      v17 = *(a2 + 8);
      *v75 = *a2;
      *&v75[8] = v17;
      cf = v15;
      v18 = *re::peerVideoStreamingLogObjects(a1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v15;
        _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Received unsubscribe message from peer %llu", buf, 0xCu);
      }

      re::OPackReader::next(a3, v19);
      v20 = re::PeerVideoStreamId::hash(v75);
      re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(buf, v4 + 128, v16, v17, v20);
      if (v79 == 0x7FFFFFFF)
      {
        v21 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(buf, v4 + 176, v16, v17, v20);
        if (v79 == 0x7FFFFFFF)
        {
          v13 = *re::peerVideoStreamingLogObjects(v21);
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 0;
          v14 = "Received unsubscribe message for nonexisting stream id.";
          goto LABEL_16;
        }

        re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(buf, v4 + 176, v16, v17, v20);
        v49 = re::DynamicArray<unsigned long long>::remove(*(v4 + 192) + 168 * v79 + 40, &cf);
        if (!v49)
        {
          return;
        }

        --*(v4 + 48);
        v50 = *re::peerVideoStreamingLogObjects(v49);
        if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v42 = v50;
        re::DynamicString::format("%llu_%llu", buf, v16, v17);
        if (buf[8])
        {
          v51 = v80;
        }

        else
        {
          v51 = &buf[9];
        }

        LODWORD(v83) = 136315138;
        *(&v83 + 4) = v51;
        v44 = "Removed as proxy client from read end: %s";
      }

      else
      {
        re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(buf, v4 + 128, v16, v17, v20);
        v40 = re::DynamicArray<unsigned long long>::remove(*(v4 + 144) + 336 * v79 + 24, &cf);
        if (!v40)
        {
          return;
        }

        --*(v4 + 48);
        v41 = *re::peerVideoStreamingLogObjects(v40);
        if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v42 = v41;
        re::DynamicString::format("%llu_%llu", buf, v16, v17);
        if (buf[8])
        {
          v43 = v80;
        }

        else
        {
          v43 = &buf[9];
        }

        LODWORD(v83) = 136315138;
        *(&v83 + 4) = v43;
        v44 = "Removed as client from write end: %s";
      }

      v52 = &v83;
      v53 = v42;
      v54 = 12;
    }

    else
    {
      if (v5 != 1)
      {
        v38 = *re::peerVideoStreamingLogObjects(a1);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_ERROR, "Received unknown message type.", buf, 2u);
        }

        return;
      }

      v6 = *(a1 + 2);
      v7 = *a2;
      v8 = *(a2 + 8);
      *&v83 = *a2;
      *(&v83 + 1) = v8;
      cf = v6;
      v9 = *re::peerVideoStreamingLogObjects(a1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v6;
        _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Received subscribe message from peer %llu", buf, 0xCu);
      }

      re::OPackReader::next(a3, v10);
      v11 = re::PeerVideoStreamId::hash(&v83);
      re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(buf, v4 + 128, v7, v8, v11);
      if (v79 == 0x7FFFFFFF)
      {
        v12 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(buf, v4 + 176, v7, v8, v11);
        if (v79 == 0x7FFFFFFF)
        {
          v13 = *re::peerVideoStreamingLogObjects(v12);
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 0;
          v14 = "Received subscribe message for nonexisting stream id.";
LABEL_16:
          _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
          return;
        }

        re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(buf, v4 + 176, v7, v8, v11);
        v55 = (*(v4 + 192) + 168 * v79);
        v56 = v55[7];
        if (v56)
        {
          v57 = 8 * v56;
          v58 = v55[9];
          while (*v58 != v6)
          {
            ++v58;
            v57 -= 8;
            if (!v57)
            {
              goto LABEL_85;
            }
          }
        }

        else
        {
          v58 = v55[9];
        }

        if (v58 != (v55[9] + 8 * v56))
        {
          return;
        }

LABEL_85:
        v68 = re::DynamicArray<re::TransitionCondition *>::add(v55 + 5, &cf);
        ++*(v4 + 48);
        v69 = *re::peerVideoStreamingLogObjects(v68);
        if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v70 = cf;
        v42 = v69;
        re::DynamicString::format("%llu_%llu", buf, v7, v8);
        if (buf[8])
        {
          v71 = v80;
        }

        else
        {
          v71 = &buf[9];
        }

        *v75 = 134218242;
        *&v75[4] = v70;
        *&v75[12] = 2080;
        *&v75[14] = v71;
        v44 = "Added proxy client %llu to read end %s";
      }

      else
      {
        re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(buf, v4 + 128, v7, v8, v11);
        v45 = *(v4 + 144) + 336 * v79;
        v46 = *(v45 + 40);
        if (v46)
        {
          v47 = 8 * v46;
          v48 = *(v45 + 56);
          while (*v48 != v6)
          {
            ++v48;
            v47 -= 8;
            if (!v47)
            {
              goto LABEL_60;
            }
          }
        }

        else
        {
          v48 = *(v45 + 56);
        }

        if (v48 != (*(v45 + 56) + 8 * v46))
        {
          return;
        }

LABEL_60:
        v59 = re::DynamicArray<re::TransitionCondition *>::add((v45 + 24), &cf);
        *(v45 + 136) = 1;
        ++*(v4 + 48);
        v60 = *re::peerVideoStreamingLogObjects(v59);
        if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v61 = cf;
        v42 = v60;
        re::DynamicString::format("%llu_%llu", buf, v7, v8);
        if (buf[8])
        {
          v62 = v80;
        }

        else
        {
          v62 = &buf[9];
        }

        *v75 = 134218242;
        *&v75[4] = v61;
        *&v75[12] = 2080;
        *&v75[14] = v62;
        v44 = "Added client %llu to write end %s";
      }

      v52 = v75;
      v53 = v42;
      v54 = 22;
    }

    _os_log_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_DEFAULT, v44, v52, v54);

    v66 = *buf;
    if (*buf && (buf[8] & 1) != 0)
    {
LABEL_93:
      (*(*v66 + 40))(v66);
      return;
    }

    return;
  }

  v23 = *a2;
  v22 = *(a2 + 8);
  v24 = *(a1 + 2);
  *&v83 = *a2;
  *(&v83 + 1) = v22;
  v25 = re::internal::enableSignposts(0, 0);
  if (v25)
  {
    v25 = re::internal::enableHighFrequencyNetworkTracing(0, 0);
    if (v25)
    {
      v25 = kdebug_trace();
    }
  }

  if (!*(v4 + 96) || !**(v4 + 112))
  {
    v39 = *re::peerVideoStreamingLogObjects(v25);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_ERROR, "Failed to process frame message. No Session available.", buf, 2u);
    }

    if (!re::internal::enableSignposts(0, 0) || !re::internal::enableHighFrequencyNetworkTracing(0, 0))
    {
      return;
    }

    goto LABEL_34;
  }

  v26 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(v4 + 176, &v83);
  if (!v26)
  {
    v63 = *re::peerVideoStreamingLogObjects(0);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v64 = v63;
      re::DynamicString::format("%llu_%llu", buf, v23, v22);
      v65 = (buf[8] & 1) != 0 ? v80 : &buf[9];
      *v75 = 136315138;
      *&v75[4] = v65;
      _os_log_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_DEFAULT, "Received frame message for unknown stream id %s. Sending unsubscribe.", v75, 0xCu);

      if (*buf)
      {
        if (buf[8])
        {
          (*(**buf + 40))();
        }
      }
    }

    re::PeerVideoStreamingManager::makeUnsubscribeMessage(buf, v23, v22);
    RESyncNetSessionSendData();
    if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
    {
      kdebug_trace();
    }

    v66 = *buf;
    if (*buf && v82)
    {
      goto LABEL_93;
    }

    return;
  }

  v28 = v26;
  v73 = 0;
  cf = 0;
  v29 = re::PeerVideoStreamingUtils::readCMSampleBuffer(a3, (v26 + 64), &cf, &v73, v27);
  if (v29)
  {
    v30 = v73;
    v31 = re::globalAllocators(v29)[2];
    v81 = v31;
    v32 = (*(*v31 + 32))(v31, 48, 0);
    *v32 = &unk_1F5CEA9E8;
    *(v32 + 8) = v4;
    *(v32 + 16) = v83;
    *(v32 + 32) = v30;
    *(v32 + 40) = v24;
    v82 = v32;
    v33 = cf;
    v76 = v31;
    v77 = 0;
    re::FunctionBase<24ul,void ()(re::OutputVideoFrame &&)>::operator=<24ul>(v75, buf);
    v72 = *(v4 + 8);
    re::PeerVideoStreamingDecoder::decodeFrame((v28 + 56), v33, v75, &v72);
    v34 = v72;
    v72 = 0;

    re::FunctionBase<24ul,void ()(re::OutputVideoFrame &&)>::destroyCallable(v75);
    CFRelease(cf);
    v35 = *(v28 + 32);
    if (v35)
    {
      v36 = *(v28 + 48);
      v37 = 8 * v35;
      do
      {
        v36 += 8;
        RESyncNetSessionSendDataUnreliableUnordered();
        v37 -= 8;
      }

      while (v37);
    }

    re::FunctionBase<24ul,void ()(re::OutputVideoFrame &&)>::destroyCallable(buf);
    return;
  }

  v67 = *re::peerVideoStreamingLogObjects(v29);
  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v67, OS_LOG_TYPE_ERROR, "Failed to read CMSampleBuffer", buf, 2u);
  }

  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
  {
LABEL_34:
    kdebug_trace();
  }
}

uint64_t _ZNK2re8internal8CallableIZZNS_25PeerVideoStreamingManager15setupSessionObsEvEUb_E3__0FvRKN12_GLOBAL__N_113MessageHeaderERNS_11OPackReaderEEJEE9cloneIntoEPv(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA7A8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t _ZN2re8internal8CallableIZZNS_25PeerVideoStreamingManager15setupSessionObsEvEUb_E3__0FvRKN12_GLOBAL__N_113MessageHeaderERNS_11OPackReaderEEJEE8moveIntoEPv(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA7A8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

void *re::internal::Callable<re::PeerVideoStreamingManager::writeFrame(re::SharedPtr<re::PeerVideoStreamHandle>,re::InputVideoFrame const&)::$_0,void ()(opaqueCMSampleBuffer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CEA810;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::PeerVideoStreamingManager::writeFrame(re::SharedPtr<re::PeerVideoStreamHandle>,re::InputVideoFrame const&)::$_0,void ()(opaqueCMSampleBuffer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CEA810;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::PeerVideoStreamingManager::writeFrame(re::SharedPtr<re::PeerVideoStreamHandle>,re::InputVideoFrame const&)::$_0,void ()(opaqueCMSampleBuffer *)>::operator()(void *a1, CMSampleBufferRef *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = a1[1];
  TotalSampleSize = CMSampleBufferGetTotalSampleSize(*a2);
  NumSamples = CMSampleBufferGetNumSamples(v3);
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v3, 0);
  Count = CFArrayGetCount(SampleAttachmentsArray);
  v9 = Count;
  v10 = *re::peerVideoStreamingLogObjects(Count);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v21 = a1[3];
    v22 = a1[4];
    v23 = a1[5];
    *buf = 134219520;
    *&buf[4] = v21;
    *&buf[12] = 2048;
    *&buf[14] = TotalSampleSize;
    *&buf[22] = 2048;
    v28 = v21 / TotalSampleSize;
    *v29 = 2048;
    *&v29[2] = v22;
    v30 = 2048;
    v31 = v23;
    v32 = 1024;
    v33 = NumSamples;
    v34 = 1024;
    v35 = v9;
    _os_log_debug_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEBUG, "Encode succeeded. Input buffer size: %lu. Encoded buffer size: %lu. Compression factor: %lu, w: %zu, h: %zu, n:%d/%d", buf, 0x40u);
  }

  v11 = a1[2];
  v12 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(v4 + 128, (v11 + 24));
  if (!v12 || (v13 = v12, !*(v12 + 2)))
  {
    result = re::internal::enableSignposts(0, 0);
    if (!result)
    {
      return result;
    }

    result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
    if (!result)
    {
      return result;
    }

    return kdebug_trace();
  }

  if (*(v4 + 96) && **(v4 + 112))
  {
    v14 = a1[6];
    v25 = *(v11 + 24);
    v26 = 3;
    v15 = re::globalAllocators(v12)[2];
    *&buf[16] = v14;
    v28 = v15;
    *buf = &unk_1F5CEA990;
    *&buf[8] = v3;
    *v29 = buf;
    re::FunctionBase<24ul,void ()(re::OPackWriter &)>::destroyCallable(buf);
    v16 = *(v13 + 2);
    if (v16)
    {
      v17 = *(v13 + 4);
      v18 = 8 * v16;
      do
      {
        v17 += 8;
        RESyncNetSessionSendDataUnreliableUnordered();
        v18 -= 8;
      }

      while (v18);
    }

    if ((re::internal::enableSignposts(0, 0) & 1) != 0 && re::internal::enableHighFrequencyNetworkTracing(0, 0))
    {
      kdebug_trace();
    }

    result = v24[0];
    if (v24[0])
    {
      if (v24[4])
      {
        return (*(*v24[0] + 40))();
      }
    }

    return result;
  }

  v20 = *re::peerVideoStreamingLogObjects(v12);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "No Session available in OnEncodeSucceeded", buf, 2u);
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {
    result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
    if (result)
    {
      return kdebug_trace();
    }
  }

  return result;
}

uint64_t re::internal::Callable<re::PeerVideoStreamingManager::writeFrame(re::SharedPtr<re::PeerVideoStreamHandle>,re::InputVideoFrame const&)::$_0,void ()(opaqueCMSampleBuffer *)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_1F5CEA810;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    v6 = (v4 + 8);
  }

  v7 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v7;
  return a2;
}

uint64_t re::internal::Callable<re::PeerVideoStreamingManager::writeFrame(re::SharedPtr<re::PeerVideoStreamHandle>,re::InputVideoFrame const&)::$_0,void ()(opaqueCMSampleBuffer *)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA810;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  v2 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v2;
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::destroyCallable(uint64_t a1))(void)
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

void re::internal::Callable<void({block_pointer} {__strong})(void),void ()(void)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<void({block_pointer} {__strong})(void),void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CEA878;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<void({block_pointer} {__strong})(void),void ()(void)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CEA878;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<re::PeerVideoStreamingManager::makeSubscribeMessage(re::PeerVideoStreamId)::$_0,void ()(re::OPackWriter &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEA8D0;
  return result;
}

void *re::internal::Callable<re::PeerVideoStreamingManager::makeSubscribeMessage(re::PeerVideoStreamId)::$_0,void ()(re::OPackWriter &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEA8D0;
  return result;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::OPackWriter &)>::destroyCallable(uint64_t a1))(void)
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

void *re::internal::Callable<re::PeerVideoStreamingManager::makeUnsubscribeMessage(re::PeerVideoStreamId)::$_0,void ()(re::OPackWriter &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEA938;
  return result;
}

void *re::internal::Callable<re::PeerVideoStreamingManager::makeUnsubscribeMessage(re::PeerVideoStreamId)::$_0,void ()(re::OPackWriter &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEA938;
  return result;
}

uint64_t re::internal::Callable<re::PeerVideoStreamingManager::makeFrameMessage(re::PeerVideoStreamId,opaqueCMSampleBuffer *,unsigned long long)::$_0,void ()(re::OPackWriter &)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA990;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::PeerVideoStreamingManager::makeFrameMessage(re::PeerVideoStreamId,opaqueCMSampleBuffer *,unsigned long long)::$_0,void ()(re::OPackWriter &)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA990;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::PeerVideoStreamingManager::processFrameMessage(unsigned long long,re::PeerVideoStreamId,re::OPackReader &,void const*,unsigned long)::$_0,void ()(re::OutputVideoFrame &&)>::operator()(void *a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v5 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::tryGet(v4 + 176, (a1 + 2));
  if (v5)
  {
    v6 = v5;
    if (*(v5 + 96) == 1)
    {
      v8 = a1 + 4;
      v7 = a1[4];
      if (v7 <= *(v5 + 104))
      {
LABEL_53:
        result = re::internal::enableSignposts(0, 0);
        if (result)
        {
          result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
          if (result)
          {
            return kdebug_trace();
          }
        }

        return result;
      }
    }

    else
    {
      v8 = a1 + 4;
      v7 = a1[4];
      if (!v7)
      {
        goto LABEL_53;
      }

      *(v5 + 96) = 1;
    }

    *(v5 + 104) = v7;
    LOBYTE(cf[0]) = 1;
    v10 = *a2;
    v11 = *(a2 + 8);
    *a2 = 0;
    cf[1] = v10;
    *&v44 = v11;
    re::Optional<re::OutputVideoFrame>::operator=(v5 + 72, cf);
    if (LOBYTE(cf[0]) == 1 && cf[1])
    {
      CFRelease(cf[1]);
    }

    *(v6 + 88) = *v8;
    WeakRetained = objc_loadWeakRetained(v6);
    if (WeakRetained)
    {

      v13 = objc_loadWeakRetained(v6);
      v14 = v13;
      v15 = v13 - 8;
      if (!v13)
      {
        v15 = 0;
      }

      v33 = v15;
      if (v13)
      {
        v16 = v13;
      }

      v17 = *(v4 + 304);
      *(v4 + 304) = v17 + 1;
      if (*(v4 + 240))
      {
        v18 = 0;
        do
        {
          if ((*(*(v4 + 256) + 32 * v18 + 24))(v4) == 1)
          {
            re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt((v4 + 224), v18);
          }

          else
          {
            ++v18;
          }
        }

        while (v18 < *(v4 + 240));
        v17 = *(v4 + 304) - 1;
      }

      *(v4 + 304) = v17;
      if (!v17)
      {
        v19 = *(v4 + 280);
        if (v19)
        {
          v20 = 0;
          for (i = 0; i != v19; ++i)
          {
            v22 = *(v4 + 280);
            if (v22 <= i)
            {
              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              *cf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v35 = 136315906;
              v36 = "operator[]";
              v37 = 1024;
              v38 = 789;
              v39 = 2048;
              v40 = i;
              v41 = 2048;
              v42 = v22;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            v23 = *(v4 + 296) + v20;
            v24 = *(v23 + 16);
            *v34 = *v23;
            *&v34[16] = v24;
            *&v34[32] = *(v23 + 32);
            if (v34[0] == 1)
            {
              v25 = re::DynamicArray<re::Event<re::PeerVideoStreamingService,re::SharedPtr<re::PeerVideoStreamHandle>,unsigned long>::Subscription>::indexOf(cf, *(v4 + 240), *(v4 + 256), &v34[8]);
              if ((cf[0] & 1) == 0)
              {
                v26 = *(v4 + 232);
                v27 = *(v4 + 240);
                if (v27 >= v26)
                {
                  v28 = v27 + 1;
                  if (v26 < v27 + 1)
                  {
                    if (*(v4 + 224))
                    {
                      if (v26)
                      {
                        v29 = 2 * v26;
                      }

                      else
                      {
                        v29 = 8;
                      }

                      if (v29 <= v28)
                      {
                        v30 = v27 + 1;
                      }

                      else
                      {
                        v30 = v29;
                      }

                      re::DynamicArray<re::EvaluationRegister>::setCapacity((v4 + 224), v30);
                    }

                    else
                    {
                      re::DynamicArray<re::EvaluationRegister>::setCapacity((v4 + 224), v28);
                      ++*(v4 + 248);
                    }
                  }

                  v27 = *(v4 + 240);
                }

                v31 = (*(v4 + 256) + 32 * v27);
                v32 = *&v34[24];
                *v31 = *&v34[8];
                v31[1] = v32;
                ++*(v4 + 240);
                ++*(v4 + 248);
              }
            }

            else
            {
              re::DynamicArray<re::Event<re::PeerVideoStreamingService,re::SharedPtr<re::PeerVideoStreamHandle>,unsigned long>::Subscription>::indexOf(cf, *(v4 + 240), *(v4 + 256), &v34[8]);
              if (LOBYTE(cf[0]) == 1)
              {
                re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt((v4 + 224), cf[1]);
              }
            }

            v20 += 40;
          }
        }
      }

      if (v33)
      {
      }

      if (v14)
      {
      }
    }

    goto LABEL_53;
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {
    result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
    if (result)
    {

      return kdebug_trace();
    }
  }

  return result;
}

uint64_t re::internal::Callable<re::PeerVideoStreamingManager::processFrameMessage(unsigned long long,re::PeerVideoStreamId,re::OPackReader &,void const*,unsigned long)::$_0,void ()(re::OutputVideoFrame &&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA9E8;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::PeerVideoStreamingManager::processFrameMessage(unsigned long long,re::PeerVideoStreamId,re::OPackReader &,void const*,unsigned long)::$_0,void ()(re::OutputVideoFrame &&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA9E8;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::DynamicArray<re::Event<re::PeerVideoStreamingService,re::SharedPtr<re::PeerVideoStreamHandle>,unsigned long>::Subscription>::indexOf(uint64_t result, uint64_t a2, char *a3, void *a4)
{
  v4 = a3;
  if (a2)
  {
    v5 = 32 * a2;
    v4 = a3;
    while (*v4 != *a4 || *(v4 + 1) != a4[1] || *(v4 + 2) != a4[2])
    {
      v4 += 32;
      v5 -= 32;
      if (!v5)
      {
        goto LABEL_12;
      }
    }
  }

  if (v4 == &a3[32 * a2])
  {
LABEL_12:
    v7 = 0;
  }

  else
  {
    *(result + 8) = (v4 - a3) >> 5;
    v7 = 1;
  }

  *result = v7;
  return result;
}

double re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::free(a1, v3++);
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

uint64_t re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::free(uint64_t result, unsigned int a2)
{
  v2 = (*(result + 16) + 336 * a2);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::PeerVideoFileWriter::destroy((v2 + 38));
    re::DynamicString::deinit((v2 + 46));
    re::DynamicString::deinit((v2 + 38));
    re::PeerVideoStreamingEncoder::~PeerVideoStreamingEncoder((v2 + 16));

    return re::DynamicArray<unsigned long>::deinit((v2 + 6));
  }

  return result;
}

double re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::free(a1, v3++);
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

void re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 168 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    if (*(v2 + 96) == 1)
    {
      v3 = *(v2 + 104);
      if (v3)
      {
        CFRelease(v3);
      }
    }

    re::PeerVideoStreamingDecoder::~PeerVideoStreamingDecoder((v2 + 80));
    re::DynamicArray<unsigned long>::deinit(v2 + 40);
    objc_destroyWeak((v2 + 24));
    *(v2 + 24) = 0;
  }
}

uint64_t re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *a2;
  v6 = 0x7FFFFFFF;
  if (*a2 && (v5 = a5 % *(a2 + 24), v7 = *(*(a2 + 8) + 4 * v5), v7 != 0x7FFFFFFF))
  {
    v9 = *(a2 + 16);
    v6 = 0x7FFFFFFF;
    v8 = 0x7FFFFFFF;
    while (1)
    {
      v10 = v7;
      v11 = v9 + 168 * v7;
      v13 = *(v11 + 8);
      v12 = v11 + 8;
      if (v13 == a3 && *(v12 + 8) == a4)
      {
        break;
      }

      v7 = *(v9 + 168 * v10) & 0x7FFFFFFF;
      v8 = v10;
      if (v7 == 0x7FFFFFFF)
      {
        v8 = v10;
        goto LABEL_10;
      }
    }

    v6 = v10;
  }

  else
  {
    v8 = 0x7FFFFFFF;
  }

LABEL_10:
  *result = a5;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v8;
  return result;
}

void re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 336 * v10, 16);
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

uint64_t re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::findEntry<re::PeerVideoStreamId>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *a2;
  v6 = 0x7FFFFFFF;
  if (*a2 && (v5 = a5 % *(a2 + 24), v7 = *(*(a2 + 8) + 4 * v5), v7 != 0x7FFFFFFF))
  {
    v9 = *(a2 + 16);
    v6 = 0x7FFFFFFF;
    v8 = 0x7FFFFFFF;
    while (1)
    {
      v10 = v7;
      v11 = v9 + 336 * v7;
      v13 = *(v11 + 8);
      v12 = v11 + 8;
      if (v13 == a3 && *(v12 + 8) == a4)
      {
        break;
      }

      v7 = *(v9 + 336 * v10) & 0x7FFFFFFF;
      v8 = v10;
      if (v7 == 0x7FFFFFFF)
      {
        v8 = v10;
        goto LABEL_10;
      }
    }

    v6 = v10;
  }

  else
  {
    v8 = 0x7FFFFFFF;
  }

LABEL_10:
  *result = a5;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v35, 0, 36);
          *&v35[36] = 0x7FFFFFFFLL;
          re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::init(v35, v9, v8);
          v11 = *v35;
          *v35 = *a1;
          *a1 = v11;
          v12 = *&v35[16];
          v13 = *(a1 + 16);
          *&v35[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v35[24];
          *&v35[24] = *(a1 + 24);
          v14 = *&v35[32];
          *(a1 + 24) = v15;
          ++*&v35[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 184;
            do
            {
              if ((*(v18 - 184) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::allocEntry(a1, *(v18 + 144) % *(a1 + 24));
                *(v19 + 8) = *(v18 - 176);
                *(v19 + 56) = 0;
                *(v19 + 48) = 0;
                *(v19 + 32) = 0;
                *(v19 + 40) = 0;
                *(v19 + 24) = 0;
                v20 = *(v18 - 152);
                *(v19 + 24) = *(v18 - 160);
                *(v19 + 32) = v20;
                *(v18 - 160) = 0;
                *(v18 - 152) = 0;
                v21 = *(v19 + 40);
                *(v19 + 40) = *(v18 - 144);
                *(v18 - 144) = v21;
                v22 = *(v19 + 56);
                *(v19 + 56) = *(v18 - 128);
                *(v18 - 128) = v22;
                ++*(v18 - 136);
                ++*(v19 + 48);
                *(v19 + 64) = 0;
                v23 = v19 + 64;
                *(v19 + 80) = 0;
                *(v19 + 72) = 0;
                *(v19 + 112) = 0;
                *(v19 + 96) = 0;
                *(v19 + 104) = 0;
                *(v19 + 88) = 0;
                *(v19 + 120) = 0;
                *(v19 + 128) = 0;
                re::PeerVideoStreamingEncoder::operator=((v19 + 64), (v18 - 120));
                *(v23 + 72) = *(v18 - 48);
                re::DynamicString::DynamicString((v23 + 88), (v18 - 32));
                re::DynamicString::DynamicString((v23 + 120), v18);
                v24 = *(v18 + 32);
                v25 = *(v18 + 48);
                *(v23 + 184) = *(v18 + 64);
                *(v23 + 168) = v25;
                *(v23 + 152) = v24;
                v26 = *(v18 + 80);
                v27 = *(v18 + 96);
                v28 = *(v18 + 112);
                *(v23 + 248) = *(v18 + 128);
                *(v23 + 232) = v28;
                *(v23 + 216) = v27;
                *(v23 + 200) = v26;
                *(v23 + 256) = *(v18 + 136);
              }

              ++v17;
              v18 += 336;
            }

            while (v17 < v16);
          }

          re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamWriteEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::deinit(v35);
        }
      }

      else
      {
        if (v8)
        {
          v31 = 2 * v7;
        }

        else
        {
          v31 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v29 = *(a1 + 16);
    v30 = *(v29 + 336 * v5);
  }

  else
  {
    v29 = *(a1 + 16);
    v30 = *(v29 + 336 * v5);
    *(a1 + 36) = v30 & 0x7FFFFFFF;
  }

  v32 = v29 + 336 * v5;
  *v32 = v30 | 0x80000000;
  v33 = *(a1 + 8);
  *v32 = *(v33 + 4 * a2) | 0x80000000;
  *(v33 + 4 * a2) = v5;
  *(v32 + 328) = a3;
  ++*(a1 + 28);
  return v29 + 336 * v5;
}

void re::make::shared::object<re::PeerVideoStreamHandle,re::PeerVideoStreamId &,re::PeerVideoStreamingManager *>(re *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 48, 8);
  v9 = *a2;
  v8 = a2[1];
  v10 = *a3;
  ArcSharedObject::ArcSharedObject(v7, 0);
  *(v7 + 3) = v9;
  *v7 = &unk_1F5CD72C0;
  *(v7 + 4) = v8;
  *(v7 + 5) = v10;
  *a1 = v7;
}

uint64_t re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::init(v33, v9, v8);
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
            v18 = v13 + 80;
            do
            {
              if ((*(v18 - 80) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::allocEntry(a1, *(v18 + 80) % *(a1 + 24));
                *(v19 + 8) = *(v18 - 72);
                *(v19 + 24) = 0;
                objc_moveWeak((v19 + 24), (v18 - 56));
                v20 = *(v18 - 48);
                *(v19 + 72) = 0;
                *(v19 + 64) = 0;
                *(v19 + 48) = 0;
                *(v19 + 56) = 0;
                *(v19 + 32) = v20;
                *(v19 + 40) = 0;
                v21 = *(v18 - 32);
                *(v19 + 40) = *(v18 - 40);
                *(v19 + 48) = v21;
                *(v18 - 40) = 0;
                *(v18 - 32) = 0;
                v22 = *(v19 + 56);
                *(v19 + 56) = *(v18 - 24);
                *(v18 - 24) = v22;
                v23 = *(v19 + 72);
                *(v19 + 72) = *(v18 - 8);
                *(v18 - 8) = v23;
                ++*(v18 - 16);
                ++*(v19 + 64);
                *(v19 + 80) = *v18;
                LODWORD(v23) = *(v18 + 16);
                *(v19 + 96) = v23;
                if (v23 == 1)
                {
                  v24 = *(v18 + 32);
                  *(v19 + 104) = *(v18 + 24);
                  *(v18 + 24) = 0;
                  *(v19 + 112) = v24;
                }

                v25 = *(v18 + 40);
                *(v19 + 120) = v25;
                if (v25 == 1)
                {
                  *(v19 + 128) = *(v18 + 48);
                }

                v26 = *(v18 + 56);
                *(v19 + 136) = v26;
                if (v26 == 1)
                {
                  *(v19 + 144) = *(v18 + 64);
                }

                *(v19 + 152) = *(v18 + 72);
              }

              v18 += 168;
              ++v17;
            }

            while (v17 < v16);
          }

          re::HashTable<re::PeerVideoStreamId,re::StreamingInternal::StreamReadEnd,re::Hash<re::PeerVideoStreamId>,re::EqualTo<re::PeerVideoStreamId>,true,false>::deinit(v33);
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
    v28 = *(v27 + 168 * v5);
  }

  else
  {
    v27 = *(a1 + 16);
    v28 = *(v27 + 168 * v5);
    *(a1 + 36) = v28 & 0x7FFFFFFF;
  }

  v30 = v27 + 168 * v5;
  *v30 = v28 | 0x80000000;
  v31 = *(a1 + 8);
  *v30 = *(v31 + 4 * a2) | 0x80000000;
  *(v31 + 4 * a2) = v5;
  *(v30 + 160) = a3;
  ++*(a1 + 28);
  return v27 + 168 * v5;
}

void *re::ecs2::allocInfo_AmbientAudioComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_198))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A3C70, "AmbientAudioComponent");
    __cxa_guard_release(&_MergedGlobals_198);
  }

  return &unk_1EE1A3C70;
}

void re::ecs2::initInfo_AmbientAudioComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x6EAB480046526CBELL;
  v14[1] = "AmbientAudioComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1A3C58, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A3C58);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A3C60 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "gain";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A3C68 = v12;
      __cxa_guard_release(&qword_1EE1A3C58);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A3C60;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AmbientAudioComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AmbientAudioComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AmbientAudioComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AmbientAudioComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221AmbientAudioComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::ecs2::AmbientAudioComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD99E0;
  *(v3 + 28) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::AmbientAudioComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD99E0;
  *(v1 + 28) = 0;
}

void re::ecs2::AmbientAudioComponent::syncStateToAudioPlayerComponent(re::ecs2::AmbientAudioComponent *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v3 = re::ecs2::EntityComponentCollection::getOrAdd((v1 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v4 = __exp10f(*(this + 7) / 20.0);
    if (*(v3 + 188) != v4)
    {
      if (v4 > 10.0)
      {
        v4 = 10.0;
      }

      re::ecs2::AudioPlayerComponent::setParameterFade(v3, v3 + 184, v3 + 208, v4, 0.0);
    }
  }
}

void _ZZN2re8internal15setIntroVersionINS_4ecs221AmbientAudioComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 6;
    *(a2 + 8) = 0;
  }
}

id *re::ecs2::PhysicsConstraintsComponent::PhysicsConstraintsComponent(id *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CEAA50;
  re::StringID::invalid((v2 + 32));
  this[6] = 0;
  this[7] = 0;
  *(this + 18) = 0;
  this[8] = 0;
  this[15] = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  objc_initWeak(this + 16, 0);
  return this;
}

uint64_t re::ecs2::PhysicsConstraintsComponent::syncConstraintArrays(re::ecs2::PhysicsConstraintsComponent *this, char a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = (this + 88);
  v4 = *(this + 11);
  __dst = 0;
  v43[1] = 0;
  v44 = 0;
  v43[0] = 0;
  v45 = 0;
  if (v4)
  {
    v6 = *(this + 13);
    v43[0] = v4;
    re::DynamicArray<float *>::setCapacity(v43, v6);
    ++v45;
    v7 = *(this + 13);
    if (v7 >= v44)
    {
      re::DynamicArray<float *>::setCapacity(v43, *(this + 13));
      v8 = v44;
      if (v44)
      {
        memmove(__dst, *(this + 15), 8 * v44);
        v8 = v44;
      }

      memcpy(__dst + 8 * v8, (*(this + 15) + 8 * v8), 8 * (v7 - v8));
    }

    else if (v7)
    {
      memmove(__dst, *(this + 15), 8 * v7);
    }

    v44 = v7;
  }

  *(this + 13) = 0;
  ++*(this + 28);
  v9 = *(this + 2);
  if (!v9)
  {
    goto LABEL_40;
  }

  do
  {
    v10 = v9;
    v9 = *(v9 + 32);
  }

  while (v9);
  v11 = (*(**(*(v10 + 24) + 56) + 32))(*(*(v10 + 24) + 56));
  v12 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v11);
  if (v12)
  {
    v13 = re::ecs2::PhysicsSimulationService::physicsSimulationForEntity(v12, *(this + 2));
    v14 = v13 == 0;
    if (v13 && (a2 & 1) == 0)
    {
      if (*(this + 8))
      {
        v15 = 0;
        do
        {
          v16 = *(this + 10) + 304 * v15;
          if (v15 >= v44 || (v17 = *(__dst + v15)) == 0 || !re::StringID::operator==((v16 + 8), v17 + 3) || (v18 = *v16, v18 != (*(*v17 + 32))(v17)) || (v39 = *(v16 + 80), v41 = *(v16 + 64), (*(*v17 + 40))(v49, v17), v19 = vmvnq_s8(vceqq_f32(v41, *v49)), v19.i32[3] = v19.i32[2], (vmaxvq_u32(v19) & 0x80000000) != 0) || (vmaxvq_u32(vmvnq_s8(vceqq_f32(v39, v50))) & 0x80000000) != 0 || (v40 = *(v16 + 160), v42 = *(v16 + 144), (*(*v17 + 48))(v48, v17), v20 = vmvnq_s8(vceqq_f32(v42, *v48)), v20.i32[3] = v20.i32[2], (vmaxvq_u32(v20) & 0x80000000) != 0) || (vmaxvq_u32(vmvnq_s8(vceqq_f32(v40, *&v48[16]))) & 0x80000000) != 0)
          {
            v22 = *(this + 2);
            do
            {
              v23 = v22;
              v22 = *(v22 + 32);
            }

            while (v22);
            v49[0] = re::ecs2::PhysicsConstraint::makeJoint(v16, *(v23 + 24));
            re::DynamicArray<re::TransitionCondition *>::add(v5, v49);
            if (v49[0])
            {
              v24 = *(v13 + 21);
              if (v24)
              {
                v25 = 8 * v24;
                v26 = *(v13 + 23);
                while (*v26 != v49[0])
                {
                  ++v26;
                  v25 -= 8;
                  if (!v25)
                  {
                    goto LABEL_37;
                  }
                }
              }

              else
              {
                v26 = *(v13 + 23);
              }

              if (v26 == (*(v13 + 23) + 8 * v24))
              {
LABEL_37:
                re::PhysicsJointCollection::add((v13 + 136), v49[0]);
              }
            }
          }

          else
          {
            v21 = v44;
            if (v44 <= v15)
            {
              v47 = 0;
              v52 = 0u;
              v53 = 0u;
              v50 = 0u;
              v51 = 0u;
              *v49 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v48 = 136315906;
              *&v48[4] = "operator[]";
              *&v48[12] = 1024;
              *&v48[14] = 789;
              *&v48[18] = 2048;
              *&v48[20] = v15;
              *&v48[28] = 2048;
              *&v48[30] = v21;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_62:
              v47 = 0;
              v52 = 0u;
              v53 = 0u;
              v50 = 0u;
              v51 = 0u;
              *v49 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v48 = 136315906;
              *&v48[4] = "operator[]";
              *&v48[12] = 1024;
              *&v48[14] = 789;
              *&v48[18] = 2048;
              *&v48[20] = v15;
              *&v48[28] = 2048;
              *&v48[30] = v21;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            re::DynamicArray<re::TransitionCondition *>::add(v5, __dst + v15);
            v21 = v44;
            if (v44 <= v15)
            {
              goto LABEL_62;
            }

            *(__dst + v15) = 0;
          }

          ++v15;
        }

        while (*(this + 8) > v15);
      }

      v14 = 0;
    }
  }

  else
  {
LABEL_40:
    v13 = 0;
    v14 = 1;
  }

  WeakRetained = objc_loadWeakRetained(this + 16);
  if (WeakRetained)
  {
    v28 = WeakRetained;

    v29 = v44;
    if (v44)
    {
      v30 = 0;
      do
      {
        v31 = *(__dst + v30);
        if (v31)
        {
          v32 = v28[20];
          if (v32)
          {
            v33 = 8 * v32;
            v34 = v28[22];
            while (*v34 != v31)
            {
              ++v34;
              v33 -= 8;
              if (!v33)
              {
                goto LABEL_53;
              }
            }
          }

          else
          {
            v34 = v28[22];
          }

          if (v34 != (v28[22] + 8 * v32))
          {
            v49[0] = *(__dst + v30);
            v35 = re::DynamicArray<re::Allocator const*>::removeStable(v28 + 18, v49);
            v36 = re::globalAllocators(v35)[2];
            (**v31)(v31);
            (*(*v36 + 40))(v36, v31);
            v29 = v44;
          }
        }

LABEL_53:
        ++v30;
      }

      while (v29 > v30);
    }
  }

  if (v14)
  {
    v37 = 0;
  }

  else
  {
    v37 = v13 + 8;
  }

  objc_storeWeak(this + 16, v37);
  *(this + 25) = 0;
  result = v43[0];
  if (v43[0])
  {
    if (__dst)
    {
      return (*(*v43[0] + 40))();
    }
  }

  return result;
}

void *re::ecs2::PhysicsConstraintsComponent::addOrReplacePhysicsConstraint(re::ecs2::PhysicsConstraintsComponent *this, const re::ecs2::PhysicsConstraint *a2, unint64_t a3)
{
  v5 = *(this + 8);
  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = 0;
  v8 = *(this + 10);
  v9 = (v8 + 288);
  do
  {
    if (re::StringID::operator==(v9 - 35, a2 + 1))
    {
      if (v5 > v7)
      {
        *(v9 - 72) = *a2;
        re::StringID::operator=(v9 - 35, a2 + 1);
        *(v9 - 264) = *(a2 + 24);
        re::ecs2::EntityHandle::operator=((v9 - 32), a2 + 4);
        v34 = *(a2 + 5);
        *(v9 - 14) = *(a2 + 4);
        *(v9 - 13) = v34;
        re::StringID::operator=(v9 - 24, a2 + 12);
        re::ecs2::EntityHandle::operator=((v9 - 22), a2 + 14);
        *(v9 - 9) = *(a2 + 9);
        v35 = *(a2 + 10);
        v36 = *(a2 + 11);
        v37 = *(a2 + 13);
        *(v9 - 6) = *(a2 + 12);
        *(v9 - 5) = v37;
        *(v9 - 8) = v35;
        *(v9 - 7) = v36;
        v38 = *(a2 + 14);
        v39 = *(a2 + 15);
        v40 = *(a2 + 17);
        *(v9 - 2) = *(a2 + 16);
        *(v9 - 1) = v40;
        *(v9 - 4) = v38;
        *(v9 - 3) = v39;
        result = re::StringID::operator=(v9, a2 + 36);
        goto LABEL_17;
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_19;
    }

    ++v7;
    v9 += 38;
  }

  while (v5 != v7);
  if (v5 > a3)
  {
    v10 = v8 + 304 * a3;
    *v10 = *a2;
    re::StringID::operator=((v10 + 8), a2 + 1);
    *(v10 + 24) = *(a2 + 24);
    re::ecs2::EntityHandle::operator=((v10 + 32), a2 + 4);
    v11 = *(a2 + 5);
    *(v10 + 64) = *(a2 + 4);
    *(v10 + 80) = v11;
    re::StringID::operator=((v10 + 96), a2 + 12);
    re::ecs2::EntityHandle::operator=((v10 + 112), a2 + 14);
    *(v10 + 144) = *(a2 + 9);
    v12 = *(a2 + 10);
    v13 = *(a2 + 11);
    v14 = *(a2 + 13);
    *(v10 + 192) = *(a2 + 12);
    *(v10 + 208) = v14;
    *(v10 + 160) = v12;
    *(v10 + 176) = v13;
    v15 = *(a2 + 14);
    v16 = *(a2 + 15);
    v17 = *(a2 + 17);
    *(v10 + 256) = *(a2 + 16);
    *(v10 + 272) = v17;
    *(v10 + 224) = v15;
    *(v10 + 240) = v16;
    result = re::StringID::operator=((v10 + 288), a2 + 36);
    if (*(this + 13) > a3)
    {
      v19 = *(*(this + 15) + 8 * a3);
      if (v19)
      {
        v20 = *(*((*(**(v19 + 5) + 16))(*(v19 + 5)) + 72) + 40);
        v21 = v20;
        do
        {
          v22 = v21;
          v21 = *(v21 + 4);
        }

        while (v21);
        v23 = (*(**(*(v22 + 3) + 56) + 32))(*(*(v22 + 3) + 56));
        v24 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v23);
        v25 = re::ecs2::PhysicsSimulationService::physicsSimulationForEntity(v24, v20);
        if (*(this + 13) > a3)
        {
          *(*(this + 15) + 8 * a3) = 0;
          result = re::PhysicsSimulation::addConstraintToDelete(v25, v19);
          goto LABEL_17;
        }

LABEL_19:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }
  }

  else
  {
LABEL_12:
    if (v5 >= *(this + 7))
    {
      re::DynamicArray<re::ecs2::PhysicsConstraint>::growCapacity(this + 6, v5 + 1);
      v5 = *(this + 8);
    }

    v26 = *(this + 10) + 304 * v5;
    *v26 = *a2;
    re::StringID::StringID((v26 + 8), (a2 + 8));
    *(v26 + 24) = *(a2 + 24);
    re::ecs2::EntityHandle::EntityHandle((v26 + 32), (a2 + 32));
    v27 = *(a2 + 5);
    *(v26 + 64) = *(a2 + 4);
    *(v26 + 80) = v27;
    re::StringID::StringID((v26 + 96), a2 + 6);
    re::ecs2::EntityHandle::EntityHandle((v26 + 112), (a2 + 112));
    *(v26 + 144) = *(a2 + 9);
    v28 = *(a2 + 10);
    v29 = *(a2 + 11);
    v30 = *(a2 + 13);
    *(v26 + 192) = *(a2 + 12);
    *(v26 + 208) = v30;
    *(v26 + 160) = v28;
    *(v26 + 176) = v29;
    v31 = *(a2 + 14);
    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    *(v26 + 256) = *(a2 + 16);
    *(v26 + 272) = v33;
    *(v26 + 224) = v31;
    *(v26 + 240) = v32;
    result = re::StringID::StringID((v26 + 288), a2 + 18);
    ++*(this + 8);
    ++*(this + 18);
  }

LABEL_17:
  *(this + 25) = 1;
  return result;
}

re::ecs2::PhysicsSimulationData *re::ecs2::PhysicsSimulationService::physicsSimulationForEntity(re::ecs2::PhysicsSimulationService *this, const re::ecs2::Entity *a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 4);
  }

  while (v4);
  v6 = *(v5 + 3);
  v7 = (*(*this + 24))(this);
  v8 = (*(*this + 40))(this, v6);
  v10[0] = v7;
  v10[1] = v8;
  result = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v10, a2);
  if (result)
  {
    return re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(result);
  }

  return result;
}

void re::ecs2::PhysicsConstraintsComponent::removePhysicsConstraint(re::ecs2::PhysicsConstraintsComponent *this, const re::StringID *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v5 = 0;
    for (i = (*(this + 10) + 8); !re::StringID::operator==(i, a2); i += 38)
    {
      if (v2 == ++v5)
      {
        return;
      }
    }

    re::DynamicArray<re::ecs2::PhysicsConstraint>::removeAt(this + 48, v5);
    if (v5 < *(this + 13))
    {
      re::DynamicArray<re::internal::AnimationCompositionChainBase *>::removeAt(this + 88, v5);
    }

    *(this + 25) = 1;
  }
}

void re::DynamicArray<re::ecs2::PhysicsConstraint>::removeAt(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 - 1 > a2)
  {
    v4 = *(a1 + 32);
    v5 = v4 + 304 * v2;
    v6 = v4 + 304 * a2;
    *v6 = *(v5 - 304);
    re::StringID::operator=((v6 + 8), (v5 - 296));
    *(v6 + 24) = *(v5 - 280);
    re::ecs2::EntityHandle::operator=((v6 + 32), v5 - 272);
    v7 = *(v5 - 224);
    *(v6 + 64) = *(v5 - 240);
    *(v6 + 80) = v7;
    re::StringID::operator=((v6 + 96), (v5 - 208));
    re::ecs2::EntityHandle::operator=((v6 + 112), v5 - 192);
    *(v6 + 144) = *(v5 - 160);
    v8 = *(v5 - 144);
    v9 = *(v5 - 128);
    v10 = *(v5 - 96);
    *(v6 + 192) = *(v5 - 112);
    *(v6 + 208) = v10;
    *(v6 + 160) = v8;
    *(v6 + 176) = v9;
    v11 = *(v5 - 80);
    v12 = *(v5 - 64);
    v13 = *(v5 - 32);
    *(v6 + 256) = *(v5 - 48);
    *(v6 + 272) = v13;
    *(v6 + 224) = v11;
    *(v6 + 240) = v12;
    re::StringID::operator=((v6 + 288), (v5 - 16));
    v2 = *(a1 + 16);
  }

  v14 = *(a1 + 32) + 304 * v2;
  re::StringID::destroyString((v14 - 16));
  re::ecs2::EntityHandle::reset((v14 - 192));
  objc_destroyWeak((v14 - 192));
  *(v14 - 192) = 0;
  re::StringID::destroyString((v14 - 208));
  re::ecs2::EntityHandle::reset((v14 - 272));
  objc_destroyWeak((v14 - 272));
  *(v14 - 272) = 0;
  re::StringID::destroyString((v14 - 296));
  --*(a1 + 16);
  ++*(a1 + 24);
}

void re::ecs2::PhysicsConstraintsComponent::removePhysicsConstraintLeaveJoint(re::ecs2::PhysicsConstraintsComponent *this, const re::StringID *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v5 = 0;
    for (i = (*(this + 10) + 8); !re::StringID::operator==(i, a2); i += 38)
    {
      if (v2 == ++v5)
      {
        return;
      }
    }

    re::DynamicArray<re::ecs2::PhysicsConstraint>::removeAt(this + 48, v5);
  }
}

void *re::ecs2::PhysicsConstraintsComponent::deferDeleteConstraint(re::ecs2::PhysicsConstraintsComponent *this, re::Constraint *a2)
{
  v9 = a2;
  re::DynamicArray<unsigned long long>::remove(this + 88, &v9);
  v2 = *(*((*(**(v9 + 5) + 16))(*(v9 + 5)) + 72) + 40);
  v3 = v2;
  do
  {
    v4 = v3;
    v3 = *(v3 + 4);
  }

  while (v3);
  v5 = (*(**(*(v4 + 3) + 56) + 32))(*(*(v4 + 3) + 56));
  v6 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v5);
  v7 = re::ecs2::PhysicsSimulationService::physicsSimulationForEntity(v6, v2);
  return re::PhysicsSimulation::addConstraintToDelete(v7, v9);
}

unint64_t re::ecs2::PhysicsConstraintsComponent::pinNameA(re::ecs2::PhysicsConstraintsComponent *this, unint64_t a2)
{
  v2 = *(this + 8);
  if (a2 >= v2 - 1)
  {
    v3 = v2 - 1;
  }

  else
  {
    v3 = a2;
  }

  if (v2 <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 10) + 304 * v3 + 96;
}

unint64_t *re::ecs2::PhysicsConstraintsComponent::setPinNameA(re::ecs2::PhysicsConstraintsComponent *this, unint64_t a2, const re::StringID *a3)
{
  v3 = *(this + 8);
  if (a2 >= v3 - 1)
  {
    v4 = v3 - 1;
  }

  else
  {
    v4 = a2;
  }

  if (v3 <= v4)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = (*(this + 10) + 304 * v4 + 96);

  return re::StringID::operator=(v5, a3);
}

unint64_t re::ecs2::PhysicsConstraintsComponent::pinNameB(re::ecs2::PhysicsConstraintsComponent *this, unint64_t a2)
{
  v2 = *(this + 8);
  if (a2 >= v2 - 1)
  {
    v3 = v2 - 1;
  }

  else
  {
    v3 = a2;
  }

  if (v2 <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 10) + 304 * v3 + 288;
}

unint64_t *re::ecs2::PhysicsConstraintsComponent::setPinNameB(re::ecs2::PhysicsConstraintsComponent *this, unint64_t a2, const re::StringID *a3)
{
  v3 = *(this + 8);
  if (a2 >= v3 - 1)
  {
    v4 = v3 - 1;
  }

  else
  {
    v4 = a2;
  }

  if (v3 <= v4)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = (*(this + 10) + 304 * v4 + 288);

  return re::StringID::operator=(v5, a3);
}

void *re::ecs2::PhysicsConstraintsComponent::setLinearLimits(void *result, unint64_t a2, uint64_t a3, __n128 a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (result[8] <= a2)
  {
    memset(v16, 0, sizeof(v16));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = (result[10] + 304 * a2);
  if (fabsf(a4.n128_f32[0]) == INFINITY || a4.n128_f32[1] == INFINITY)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  __asm { FMOV            V2.2S, #1.0 }

  a4.n128_u64[0] = vbsl_s8(vdup_n_s32(v7), COERCE_INT8X8_T(-_D2), a4.n128_u64[0]);
  if (a3 == 2)
  {
    v5[64] = a4.n128_u32[0];
    v12 = 65;
  }

  else if (a3 == 1)
  {
    v5[62] = a4.n128_u32[0];
    v12 = 63;
  }

  else
  {
    if (a3)
    {
      goto LABEL_15;
    }

    v5[60] = a4.n128_u32[0];
    v12 = 61;
  }

  v5[v12] = a4.n128_u32[1];
LABEL_15:
  if (result[13] > a2)
  {
    v15 = a4;
    v13 = *(result[15] + 8 * a2);
    result = (*(*v13 + 32))(v13);
    if (result == 6)
    {
      *&v16[0] = v15.n128_u64[0];
      return re::Generic6DOFConstraint::setLinearLimit(v13, a3, v16);
    }

    else if (result == 4)
    {
      v13[7] = v15.n128_u64[0];
      v14 = *(*v13 + 56);

      return v14(v13, v15);
    }
  }

  return result;
}

double re::ecs2::PhysicsConstraintsComponent::linearLimits(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  result = 0.0;
  if (a3 <= 2)
  {
    return *(*(a1 + 80) + 304 * a2 + 8 * a3 + 240);
  }

  return result;
}

void *re::ecs2::PhysicsConstraintsComponent::setAngularLimits(void *result, unint64_t a2, uint64_t a3, double a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (result[8] <= a2)
  {
    memset(v23, 0, sizeof(v23));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = (result[10] + 304 * a2);
  if (fabsf(*&a4) == INFINITY || *(&a4 + 1) == INFINITY)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  __asm { FMOV            V2.2S, #1.0 }

  v12 = vbsl_s8(vdup_n_s32(v7), COERCE_INT8X8_T(-_D2), *&a4);
  if (a3 == 2)
  {
    v5[70] = v12.i32[0];
    v13 = 71;
  }

  else if (a3 == 1)
  {
    v5[68] = v12.i32[0];
    v13 = 69;
  }

  else
  {
    if (a3)
    {
      goto LABEL_15;
    }

    v5[66] = v12.i32[0];
    v13 = 67;
  }

  v5[v13] = v12.i32[1];
LABEL_15:
  if (result[13] > a2)
  {
    v22 = *&v12;
    v14 = *(result[15] + 8 * a2);
    result = (*(*v14 + 32))(v14);
    if (result == 6)
    {
      *v23 = v22;
      return re::Generic6DOFConstraint::setAngularLimit(v14, a3, v23);
    }

    else
    {
      v15.i32[1] = HIDWORD(v22);
      if (result == 3)
      {

        return re::HingeJoint::setAngularLimit(v14, v22, *(&v22 + 1));
      }

      else if (result == 2)
      {
        if (a3 == 1)
        {
          v16 = *(&v22 + 1);
          v17 = v14[15];
          if (*(&v22 + 1) > 3.1416)
          {
            v16 = 3.1416;
          }

          if (v16 < -1.0)
          {
            v16 = -1.0;
          }

          if (v17 > 3.1416)
          {
            v17 = 3.1416;
          }

          if (v17 < -1.0)
          {
            v17 = -1.0;
          }

          v14[14] = v16;
          v14[15] = v17;
        }

        else
        {
          v15.f32[0] = v14[14];
          v18 = vdup_n_s32(0x40490FDBu);
          v19 = vbsl_s8(vcgt_f32(v15, v18), v18, v15);
          __asm { FMOV            V1.2S, #-1.0 }

          *(v14 + 7) = vbsl_s8(vcgt_f32(_D1, v19), _D1, v19);
        }

        v21 = *(*v14 + 56);

        return v21(v14);
      }
    }
  }

  return result;
}

uint64_t re::ecs2::PhysicsConstraintsComponent::collisionEnabled(re::ecs2::PhysicsConstraintsComponent *this, unint64_t a2)
{
  if (*(this + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 10) + 304 * a2 + 24);
}

uint64_t re::ecs2::PhysicsConstraintsComponent::setCollisionEnabled(uint64_t this, unint64_t a2, char a3)
{
  if (*(this + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(this + 80) + 304 * a2 + 24) = a3;
  return this;
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::PhysicsConstraint>>::get()
{
  if ((atomic_load_explicit(&qword_1EE1A3D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3D18))
  {
    re::IntrospectionDynamicArray<re::ecs2::PhysicsConstraint>::IntrospectionDynamicArray();
    __cxa_guard_release(&qword_1EE1A3D18);
  }

  if ((_MergedGlobals_199 & 1) == 0)
  {
    v0 = re::ecs2::introspect_PhysicsConstraint(1);
    if ((_MergedGlobals_199 & 1) == 0)
    {
      v1 = v0;
      _MergedGlobals_199 = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A3D38, 0);
      qword_1EE1A3D48 = 0x2800000003;
      dword_1EE1A3D50 = v2;
      word_1EE1A3D54 = 0;
      *&xmmword_1EE1A3D58 = 0;
      *(&xmmword_1EE1A3D58 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A3D68 = v1;
      qword_1EE1A3D70 = 0;
      qword_1EE1A3D38 = &unk_1F5CEAAD8;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE1A3D38, &v12);
      if (v13)
      {
        v5 = *&v14[7];
      }

      else
      {
        v5 = v14;
      }

      if (v12 && (v13 & 1) != 0)
      {
        (*(*v12 + 40))();
      }

      v9 = *(v1 + 32);
      if (v16)
      {
        v8 = v16;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v15);
        re::TypeBuilder::TypeBuilder(&v12, v15);
        v11 = v9;
        re::TypeBuilder::beginListType(&v12, &v10, 1, 0x28uLL, 8uLL, &v11);
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE1A3D58 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_PhysicsConstraintsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A3D10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3D10))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A3D78, "PhysicsConstraintsComponent");
    __cxa_guard_release(&qword_1EE1A3D10);
  }

  return &unk_1EE1A3D78;
}

void re::ecs2::initInfo_PhysicsConstraintsComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v16[0] = 0xC606B99E7D5E985CLL;
  v16[1] = "PhysicsConstraintsComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A3D08, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A3D08);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A3D20 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::PhysicsConstraint>>::get();
      v10 = (*(*v9 + 32))(v9, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "m_constraints";
      *(v10 + 16) = &qword_1EE1A3D38;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0x3000000001;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1A3D28 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_BOOL(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "m_dirty";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x1900000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1A3D30 = v14;
      __cxa_guard_release(&qword_1EE1A3D08);
    }
  }

  *(this + 2) = 0x8800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A3D20;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PhysicsConstraintsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PhysicsConstraintsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PhysicsConstraintsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PhysicsConstraintsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227PhysicsConstraintsComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v15 = v17;
}

void re::ecs2::PhysicsConstraintsComponent::~PhysicsConstraintsComponent(id *this)
{
  re::ecs2::PhysicsConstraintsComponent::~PhysicsConstraintsComponent(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CEAA50;
  objc_destroyWeak(this + 16);
  this[16] = 0;
  re::DynamicArray<unsigned long>::deinit((this + 11));
  re::DynamicArray<re::ecs2::PhysicsConstraint>::deinit((this + 6));
  re::StringID::destroyString((this + 4));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

void *re::DynamicArray<re::ecs2::PhysicsConstraint>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::PhysicsConstraint>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::PhysicsConstraint>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::ecs2::PhysicsConstraint>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::PhysicsConstraint>::setCapacity(v5, a2);
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
        v10 = v8 + 304 * v9;
        v11 = (v7 + 14);
        v12 = v8 + 112;
        do
        {
          *(v11 - 112) = *(v12 - 112);
          v13 = *(v12 - 104);
          *(v11 - 104) = *(v11 - 104) & 0xFFFFFFFFFFFFFFFELL | *(v12 - 104) & 1;
          *(v11 - 104) = *(v12 - 104) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          *(v11 - 96) = *(v12 - 96);
          *(v12 - 96) = &str_67;
          *(v12 - 104) = 0;
          *(v11 - 88) = *(v12 - 88);
          re::ecs2::EntityHandle::EntityHandle(v11 - 80, v12 - 80);
          v14 = *(v12 - 32);
          *(v11 - 48) = *(v12 - 48);
          *(v11 - 32) = v14;
          v15 = *(v12 - 16);
          *(v11 - 16) = *(v11 - 16) & 0xFFFFFFFFFFFFFFFELL | *(v12 - 16) & 1;
          *(v11 - 16) = *(v12 - 16) & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          *(v11 - 8) = *(v12 - 8);
          *(v12 - 8) = &str_67;
          *(v12 - 16) = 0;
          re::ecs2::EntityHandle::EntityHandle(v11, v12);
          *(v11 + 32) = *(v12 + 32);
          v16 = *(v12 + 48);
          v17 = *(v12 + 64);
          v18 = *(v12 + 96);
          *(v11 + 80) = *(v12 + 80);
          *(v11 + 96) = v18;
          *(v11 + 48) = v16;
          *(v11 + 64) = v17;
          v19 = *(v12 + 112);
          v20 = *(v12 + 128);
          v21 = *(v12 + 160);
          *(v11 + 144) = *(v12 + 144);
          *(v11 + 160) = v21;
          *(v11 + 112) = v19;
          *(v11 + 128) = v20;
          v22 = *(v12 + 176);
          *(v11 + 176) = *(v11 + 176) & 0xFFFFFFFFFFFFFFFELL | *(v12 + 176) & 1;
          *(v11 + 176) = *(v12 + 176) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
          *(v11 + 184) = *(v12 + 184);
          *(v12 + 184) = &str_67;
          *(v12 + 176) = 0;
          re::StringID::destroyString((v12 + 176));
          re::ecs2::EntityHandle::reset(v12);
          objc_destroyWeak(v12);
          *v12 = 0;
          re::StringID::destroyString((v12 - 16));
          re::ecs2::EntityHandle::reset((v12 - 80));
          objc_destroyWeak((v12 - 80));
          *(v12 - 80) = 0;
          re::StringID::destroyString((v12 - 104));
          v11 += 304;
          v23 = v12 + 192;
          v12 += 304;
        }

        while (v23 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::PhysicsConstraint>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1A3D38, 0);
  *(&qword_1EE1A3D48 + 6) = 0;
  qword_1EE1A3D48 = 0;
  *&xmmword_1EE1A3D58 = 0;
  *(&xmmword_1EE1A3D58 + 1) = 0xFFFFFFFFLL;
  qword_1EE1A3D38 = &unk_1F5CADA48;
  qword_1EE1A3D70 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1A3D68);
  qword_1EE1A3D38 = &unk_1F5CEAAD8;
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::PhysicsConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::PhysicsConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::PhysicsConstraint>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::PhysicsConstraint>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::PhysicsConstraint>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::PhysicsConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::PhysicsConstraint>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::PhysicsConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::PhysicsConstraint>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::PhysicsConstraint>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4)
{
  re::ecs2::PhysicsConstraint::PhysicsConstraint(&v24);
  v8 = *(a4 + 16);
  if (v8 >= *(a4 + 8))
  {
    re::DynamicArray<re::ecs2::PhysicsConstraint>::growCapacity(a4, v8 + 1);
    v8 = *(a4 + 16);
  }

  v9 = *(a4 + 32) + 304 * v8;
  *v9 = v24;
  v10 = v25;
  *(v9 + 8) = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v25 & 1;
  *(v9 + 8) = v25 & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  *(v9 + 16) = v26;
  v25 = 0;
  v26 = &str_67;
  *(v9 + 24) = v27;
  re::ecs2::EntityHandle::EntityHandle(v9 + 32, v28);
  v11 = v30;
  *(v9 + 64) = v29;
  *(v9 + 80) = v11;
  v12 = v31;
  *(v9 + 96) = *(v9 + 96) & 0xFFFFFFFFFFFFFFFELL | v31 & 1;
  *(v9 + 96) = v31 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  *(v9 + 104) = v32;
  v31 = 0;
  v32 = &str_67;
  re::ecs2::EntityHandle::EntityHandle(v9 + 112, v33);
  *(v9 + 144) = v34;
  v13 = v35;
  v14 = v36;
  v15 = v38;
  *(v9 + 192) = v37;
  *(v9 + 208) = v15;
  *(v9 + 160) = v13;
  *(v9 + 176) = v14;
  v16 = v39;
  v17 = v40;
  v18 = v42;
  *(v9 + 256) = v41;
  *(v9 + 272) = v18;
  *(v9 + 224) = v16;
  *(v9 + 240) = v17;
  v19 = v43;
  *(v9 + 288) = *(v9 + 288) & 0xFFFFFFFFFFFFFFFELL | v43 & 1;
  *(v9 + 288) = v43 & 0xFFFFFFFFFFFFFFFELL | v19 & 1;
  *(v9 + 296) = v44;
  ++*(a4 + 16);
  ++*(a4 + 24);
  v43 = 0;
  v44 = &str_67;
  re::ecs2::EntityHandle::reset(v33);
  objc_destroyWeak(v33);
  v33[0] = 0;
  if (v31)
  {
    if (v31)
    {
    }
  }

  v31 = 0;
  v32 = &str_67;
  re::ecs2::EntityHandle::reset(v28);
  objc_destroyWeak(v28);
  v28[0] = 0;
  if (v25)
  {
    if (v25)
    {
    }
  }

  v22 = (*(a4 + 32) + 304 * *(a4 + 16) - 304);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v22);
  return v22;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::PhysicsConstraint>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 304 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 304 * a3;
}

uint64_t re::DynamicArray<re::ecs2::PhysicsConstraint>::deinit(uint64_t a1)
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
        v6 = 304 * v4;
        do
        {
          v7 = v3 + v5;
          re::StringID::destroyString((v3 + v5 + 288));
          re::ecs2::EntityHandle::reset((v3 + v5 + 112));
          objc_destroyWeak((v3 + v5 + 112));
          *(v7 + 112) = 0;
          re::StringID::destroyString((v3 + v5 + 96));
          re::ecs2::EntityHandle::reset((v3 + v5 + 32));
          objc_destroyWeak((v3 + v5 + 32));
          *(v7 + 32) = 0;
          re::StringID::destroyString((v3 + v5 + 8));
          v5 += 304;
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

void re::DynamicArray<re::ecs2::PhysicsConstraint>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v7 = 304 * a2 + 288;
    v8 = a2;
    do
    {
      v9 = (*(a1 + 32) + v7);
      re::StringID::destroyString(v9);
      re::ecs2::EntityHandle::reset((v9 - 176));
      objc_destroyWeak(v9 - 22);
      *(v9 - 22) = 0;
      re::StringID::destroyString((v9 - 192));
      re::ecs2::EntityHandle::reset((v9 - 256));
      objc_destroyWeak(v9 - 32);
      *(v9 - 32) = 0;
      re::StringID::destroyString((v9 - 280));
      ++v8;
      v7 += 304;
    }

    while (v8 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::PhysicsConstraint>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 304 * v4;
      do
      {
        re::ecs2::PhysicsConstraint::PhysicsConstraint((*(a1 + 32) + v6));
        v6 += 304;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::PhysicsConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 0;
      v10 = *(a1 + 32);
      v11 = 304 * v8;
      do
      {
        v12 = v10 + v9;
        re::StringID::destroyString((v10 + v9 + 288));
        re::ecs2::EntityHandle::reset((v10 + v9 + 112));
        objc_destroyWeak((v10 + v9 + 112));
        *(v12 + 112) = 0;
        re::StringID::destroyString((v10 + v9 + 96));
        re::ecs2::EntityHandle::reset((v10 + v9 + 32));
        objc_destroyWeak((v10 + v9 + 32));
        *(v12 + 32) = 0;
        re::StringID::destroyString((v10 + v9 + 8));
        v9 += 304;
      }

      while (v11 != v9);
    }
  }

  else
  {
    re::DynamicArray<re::ecs2::PhysicsConstraint>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::PhysicsConstraint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::ecs2::PhysicsConstraint>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v18);
    re::TypeInfo::TypeInfo(v17, &v19);
    v14 = *(a1 + 16);
    if (v14)
    {
      v15 = *(a1 + 32);
      v16 = 304 * v14;
      do
      {
        re::TypeInfo::destruct(v17, v15, a3, 0);
        re::TypeInfo::construct(v17, v15, a3, 0);
        v15 += 304;
        v16 -= 304;
      }

      while (v16);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 304 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 304 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227PhysicsConstraintsComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 5;
    *(a2 + 8) = 0;
  }
}

void media::MediaScreenAnimationEngine::~MediaScreenAnimationEngine(media::MediaScreenAnimationEngine *this)
{
  for (i = 64; i != 12448; i += 2064)
  {
    v3 = *(this + i);
    if (v3)
    {
      v4 = 8 * v3;
      v5 = (this + i + 16);
      do
      {
        v6 = *v5++;
        re::internal::destroyPersistent<media::FloatAnimation>("~MediaScreenAnimationEngine", 15, v6);
        v4 -= 8;
      }

      while (v4);
    }
  }

  v7 = 12384;
  do
  {
    *(this + v7 - 2000) = 0;
    ++*(this + v7 - 1992);
    v7 -= 2064;
  }

  while (v7);
  re::FunctionBase<24ul,void ()(float,float,float,re::ecs2::SpatialMedia::ImmersiveTransition::AnimatableParameters)>::destroyCallable(this);
}

re *re::internal::destroyPersistent<media::FloatAnimation>(re *result, uint64_t a2, void (***a3)(void))
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

uint64_t media::MediaScreenAnimationEngine::add(float *a1, int a2)
{
  if (a2 > 5)
  {
    return 0;
  }

  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 48, 8);
  v7 = v5;
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = a1 + 11;
      }

      else
      {
        v8 = a1 + 12;
      }
    }

    else
    {
      v8 = a1 + 10;
    }

    media::FloatSpringAnimation::FloatSpringAnimation(v5, v8);
LABEL_16:
    if (!v7)
    {
      return v7;
    }

    goto LABEL_17;
  }

  if (a2 == 3)
  {
    v9 = 13;
  }

  else
  {
    if (a2 != 4)
    {
      media::FloatEaseInOutAnimation::FloatEaseInOutAnimation(v5, a1 + 15);
      goto LABEL_16;
    }

    v9 = 14;
  }

  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = &a1[v9];
  *(v5 + 32) = 0;
  *(v5 + 36) = 0;
  *v5 = &unk_1F5CEABC0;
  *(v5 + 40) = 1065353216;
LABEL_17:
  v10 = &a1[516 * a2];
  v12 = *(v10 + 8);
  v11 = v10 + 16;
  if (v12 <= 0xFF && re::DynamicInlineArray<media::FloatAnimation *,256ul>::ensureCapacity(v11, v6))
  {
    v13 = *v11;
    *&v11[2 * *v11 + 4] = v7;
    *v11 = v13 + 1;
    ++*(v11 + 2);
  }

  return v7;
}

uint64_t media::MediaScreenAnimationEngine::addSpringAnimationWithDuration(re *a1, unsigned int a2, float a3, float a4, float a5, float a6, float a7)
{
  if (a2 > 5)
  {
    return 0;
  }

  v14 = a1 + 4 * (a2 & 0x3F) + 40;
  v15 = re::globalAllocators(a1);
  v16 = (*(*v15[2] + 32))(v15[2], 48, 8);
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = v14;
  *(v16 + 32) = 0;
  *(v16 + 36) = 0;
  *v16 = &unk_1F5CEAB70;
  *(v16 + 40) = 0;
  v17 = [objc_alloc(MEMORY[0x1E69794B0]) initWithPerceptualDuration:a7 bounce:0.0];
  v18 = *(v16 + 40);
  *(v16 + 40) = v17;

  v20 = a1 + 2064 * a2;
  v22 = *(v20 + 8);
  v21 = v20 + 64;
  if (v22 <= 0xFF)
  {
    *(v16 + 8) = a3;
    *(v16 + 12) = a4;
    *(v16 + 16) = a5;
    *(v16 + 20) = a6;
    if (re::DynamicInlineArray<media::FloatAnimation *,256ul>::ensureCapacity(v21, v19))
    {
      v23 = *v21;
      *&v21[8 * *v21 + 16] = v16;
      *v21 = v23 + 1;
      ++*(v21 + 2);
    }
  }

  return v16;
}

void media::MediaScreenAnimationEngine::addSpatialMediaImmersiveTransitionAnimation(media::MediaScreenAnimationEngine *a1, int a2, char a3, uint64_t a4, float a5)
{
  if (a2)
  {
    if (a3)
    {
      if (*a4)
      {
        media::MediaScreenAnimationEngine::addSpatialMediaExpandToImmersiveAfterGestureReducedMotionAnimation(a1, a5);
        return;
      }

      goto LABEL_6;
    }

    if (*a4)
    {
      media::MediaScreenAnimationEngine::addSpatialMediaExpandToImmersiveAfterGestureAnimation(a1, *(a4 + 4));
    }

    else
    {
      media::MediaScreenAnimationEngine::addSpatialMediaExpandToImmersiveAnimation(a1);
    }
  }

  else
  {
    if (a3)
    {
LABEL_6:
      media::MediaScreenAnimationEngine::addSpatialMediaExpandToImmersiveReducedMotionAnimation(a1);
      return;
    }

    if (*a4)
    {
      media::MediaScreenAnimationEngine::addSpatialMediaCollapseToPortalAfterGestureAnimation(a1, *(a4 + 4));
    }

    else
    {
      media::MediaScreenAnimationEngine::addSpatialMediaCollapseToPortalAnimation(a1);
    }
  }
}

uint64_t media::MediaScreenAnimationEngine::addSpatialMediaExpandToImmersiveAfterGestureAnimation(media::MediaScreenAnimationEngine *this, float a2)
{
  v4 = media::MediaScreenAnimationEngine::addSpringAnimationWithDuration(this, 3u, 0.0, 1.0, 0.0, 1.0, 1.0);
  if (v4)
  {
    [*(v4 + 40) setInitialVelocity:a2];
  }

  result = media::MediaScreenAnimationEngine::addSpringAnimationWithDuration(this, 4u, 0.0, 1.0, 0.0, 1.0, 1.0);
  if (result)
  {
    v6 = *(result + 40);

    return [v6 setInitialVelocity:a2];
  }

  return result;
}

double media::MediaScreenAnimationEngine::addSpatialMediaExpandToImmersiveAnimation(media::MediaScreenAnimationEngine *this)
{
  v2 = media::MediaScreenAnimationEngine::add(this, 3);
  if (v2)
  {
    *(v2 + 40) = 1063675494;
    *(v2 + 8) = xmmword_1E3083D60;
  }

  v3 = media::MediaScreenAnimationEngine::add(this, 4);
  if (v3)
  {
    *(v3 + 40) = 1058642330;
    result = 0.00273437425;
    *(v3 + 8) = xmmword_1E3083D60;
  }

  return result;
}

uint64_t media::MediaScreenAnimationEngine::addSpatialMediaExpandToImmersiveAfterGestureReducedMotionAnimation(media::MediaScreenAnimationEngine *this, float a2)
{
  v3 = media::MediaScreenAnimationEngine::add<media::FloatStepAnimation>(this, 3u, 0.0, 0.6, 0.0, 1.0);
  if (v3)
  {
    *(v3 + 40) = 1056964608;
  }

  v4 = media::MediaScreenAnimationEngine::add<media::FloatStepAnimation>(this, 4u, 0.0, 0.6, 0.0, 1.0);
  if (v4)
  {
    *(v4 + 40) = 1056964608;
  }

  v5 = media::MediaScreenAnimationEngine::add(this, 5);
  if (v5)
  {
    *(v5 + 8) = xmmword_1E3083D70;
  }

  result = media::MediaScreenAnimationEngine::add(this, 5);
  if (result)
  {
    *(result + 8) = xmmword_1E3083D80;
  }

  return result;
}

uint64_t media::MediaScreenAnimationEngine::addSpatialMediaExpandToImmersiveReducedMotionAnimation(media::MediaScreenAnimationEngine *this)
{
  v2 = media::MediaScreenAnimationEngine::add<media::FloatStepAnimation>(this, 3u, 0.0, 0.9, 0.0, 1.0);
  if (v2)
  {
    *(v2 + 40) = 1056964608;
  }

  v3 = media::MediaScreenAnimationEngine::add<media::FloatStepAnimation>(this, 4u, 0.0, 0.9, 0.0, 1.0);
  if (v3)
  {
    *(v3 + 40) = 1056964608;
  }

  v4 = media::MediaScreenAnimationEngine::add(this, 5);
  if (v4)
  {
    *(v4 + 8) = xmmword_1E3083D90;
  }

  result = media::MediaScreenAnimationEngine::add(this, 5);
  if (result)
  {
    *(result + 8) = xmmword_1E3083DA0;
  }

  return result;
}

uint64_t media::MediaScreenAnimationEngine::addSpatialMediaCollapseToPortalAfterGestureAnimation(media::MediaScreenAnimationEngine *this, float a2)
{
  v4 = media::MediaScreenAnimationEngine::addSpringAnimationWithDuration(this, 3u, 0.0, 0.5, 0.0, 1.0, 0.5);
  if (v4)
  {
    [*(v4 + 40) setInitialVelocity:a2];
  }

  result = media::MediaScreenAnimationEngine::addSpringAnimationWithDuration(this, 4u, 0.0, 0.5, 0.0, 1.0, 0.5);
  if (result)
  {
    v6 = *(result + 40);

    return [v6 setInitialVelocity:a2];
  }

  return result;
}

uint64_t media::MediaScreenAnimationEngine::addSpatialMediaCollapseToPortalAnimation(media::MediaScreenAnimationEngine *this)
{
  v2 = media::MediaScreenAnimationEngine::add<media::FloatCriticallyDampedAnimation>(this, 3u, 0.0, 0.5, 0.0, 1.0);
  if (v2)
  {
    *(v2 + 40) = 1061158912;
  }

  result = media::MediaScreenAnimationEngine::add<media::FloatCriticallyDampedAnimation>(this, 4u, 0.0, 0.5, 0.0, 1.0);
  if (result)
  {
    *(result + 40) = 1065353216;
  }

  return result;
}

uint64_t media::MediaScreenAnimationEngine::add<media::FloatStepAnimation>(re *a1, unsigned int a2, float a3, float a4, float a5, float a6)
{
  if (a2 > 5)
  {
    return 0;
  }

  v12 = a1 + 4 * (a2 & 0x3F) + 40;
  v13 = re::globalAllocators(a1);
  v14 = (*(*v13[2] + 32))(v13[2], 48, 8);
  v16 = v14;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = v12;
  *(v14 + 32) = 0;
  *(v14 + 36) = 0;
  *v14 = &unk_1F5CEAC40;
  *(v14 + 40) = 1056964608;
  v17 = a1 + 2064 * a2;
  v19 = *(v17 + 8);
  v18 = v17 + 64;
  if (v19 <= 0xFF)
  {
    *(v14 + 8) = a3;
    *(v14 + 12) = a4;
    *(v14 + 16) = a5;
    *(v14 + 20) = a6;
    if (re::DynamicInlineArray<media::FloatAnimation *,256ul>::ensureCapacity(v18, v15))
    {
      v20 = *v18;
      *&v18[8 * *v18 + 16] = v16;
      *v18 = v20 + 1;
      ++*(v18 + 2);
    }
  }

  return v16;
}

uint64_t media::MediaScreenAnimationEngine::add<media::FloatCriticallyDampedAnimation>(re *a1, unsigned int a2, float a3, float a4, float a5, float a6)
{
  if (a2 > 5)
  {
    return 0;
  }

  v12 = a1 + 4 * (a2 & 0x3F) + 40;
  v13 = re::globalAllocators(a1);
  v14 = (*(*v13[2] + 32))(v13[2], 48, 8);
  v16 = v14;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = v12;
  *(v14 + 32) = 0;
  *(v14 + 36) = 0;
  *v14 = &unk_1F5CEABC0;
  *(v14 + 40) = 1065353216;
  v17 = a1 + 2064 * a2;
  v19 = *(v17 + 8);
  v18 = v17 + 64;
  if (v19 <= 0xFF)
  {
    *(v14 + 8) = a3;
    *(v14 + 12) = a4;
    *(v14 + 16) = a5;
    *(v14 + 20) = a6;
    if (re::DynamicInlineArray<media::FloatAnimation *,256ul>::ensureCapacity(v18, v15))
    {
      v20 = *v18;
      *&v18[8 * *v18 + 16] = v16;
      *v18 = v20 + 1;
      ++*(v18 + 2);
    }
  }

  return v16;
}

uint64_t media::FloatSpringAnimation::setSpringParam(uint64_t a1, float *a2)
{
  [*(a1 + 40) setMass:*a2];
  [*(a1 + 40) setStiffness:a2[1]];
  [*(a1 + 40) setDamping:a2[2]];
  [*(a1 + 40) settlingDuration];
  v4 = *(a1 + 40);

  return [v4 setDuration:?];
}

uint64_t media::MediaScreenAnimationEngine::update(uint64_t this, float a2, double a3, __n128 a4)
{
  v5 = this;
  v6 = 0;
  v7 = this + 64;
  v8 = 12384;
  do
  {
    if (*v7)
    {
      this = media::FloatAnimation::update(*(v7 + 16), a2, a3, a4);
      if ((this & 1) == 0)
      {
        if (!*v7)
        {
          re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
          this = _os_crash();
          __break(1u);
          return this;
        }

        re::internal::destroyPersistent<media::FloatAnimation>("update", 546, *(v7 + 16));
        this = re::DynamicInlineArray<media::FloatAnimation *,256ul>::removeStableAt(v7, 0);
      }

      v6 = 1;
    }

    v7 += 2064;
    v8 -= 2064;
  }

  while (v8);
  if (v6)
  {
    this = *(v5 + 32);
    if (this)
    {
      v10 = *(v5 + 40);
      v11 = *(v5 + 44);
      v12 = *(v5 + 48);
      v13 = *(v5 + 60);
      v17 = *(v5 + 52);
      v18 = v13;
      v15 = v11;
      v16 = v10;
      v14 = v12;
      return (*(*this + 16))(this, &v16, &v15, &v14, &v17);
    }
  }

  return this;
}

BOOL media::FloatAnimation::update(media::FloatAnimation *this, float a2, double a3, __n128 a4)
{
  v4 = *(this + 8) + a2;
  *(this + 8) = v4;
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v4 >= (v5 + v6))
  {
    **(this + 3) = *(this + 5);
    *(this + 37) = 1;
    a4.n128_u32[0] = 1.0;
  }

  else
  {
    a4.n128_u64[0] = 0;
    if (v5 > 0.0 && v4 > v6)
    {
      a4.n128_f32[0] = (v4 - v6) / v5;
      if ((*(this + 36) & 1) == 0)
      {
        *(this + 36) = 1;
      }
    }
  }

  v8 = v4 < (v5 + v6);
  **(this + 3) = (*(*this + 16))(this, *(this + 4), *(this + 5), a4);
  return v8;
}

char *re::DynamicInlineArray<media::FloatAnimation *,256ul>::removeStableAt(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  if (*a1 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeStableAt", 555, a2, v2);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v4 = v2 - 1;
    v5 = v2 - 1 > a2;
    v6 = a1 + 2;
    result = &a1[a2 + 2];
    v8 = (result + 8);
    v9 = &v6[v2];
    if (v5 && v9 != v8)
    {
      result = memmove(result, v8, v9 - v8);
      v4 = *a1 - 1;
    }

    *a1 = v4;
    ++*(a1 + 2);
  }

  return result;
}

uint64_t (***re::FunctionBase<24ul,void ()(float,float,float,re::ecs2::SpatialMedia::ImmersiveTransition::AnimatableParameters)>::destroyCallable(uint64_t a1))(void)
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

media::FloatSpringAnimation *media::FloatSpringAnimation::FloatSpringAnimation(media::FloatSpringAnimation *this, float *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *this = &unk_1F5CEAB70;
  *(this + 5) = 0;
  v3 = objc_alloc_init(MEMORY[0x1E69794B0]);
  v4 = *(this + 5);
  *(this + 5) = v3;

  return this;
}

void media::FloatSpringAnimation::~FloatSpringAnimation(id *this)
{
}

{

  JUMPOUT(0x1E6906520);
}

float media::FloatSpringAnimation::interpolate(id *this, double a2, float a3, float a4)
{
  v5 = *&a2;
  *&a2 = a4;
  [this[5] _solveForInput:a2];
  if (v6 > 0.999)
  {
    v6 = 1.0;
  }

  return v5 + ((a3 - v5) * v6);
}

float media::FloatCriticallyDampedAnimation::interpolate(media::FloatCriticallyDampedAnimation *this, float a2, float a3, float a4)
{
  v6 = 6.28318531 / *(this + 10);
  v7 = 1.0 - (((v6 * a4) + 1.0) * expf(-(v6 * a4)));
  return a2 + ((a3 - a2) * (v7 / (1.0 - ((v6 + 1.0) * expf(-v6)))));
}

media::FloatEaseInOutAnimation *media::FloatEaseInOutAnimation::FloatEaseInOutAnimation(media::FloatEaseInOutAnimation *this, float *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *this = &unk_1F5CEAC00;
  *(this + 5) = 0;
  v3 = [MEMORY[0x1E69793C8] functionWithName:*MEMORY[0x1E6979EC0]];
  v4 = *(this + 5);
  *(this + 5) = v3;

  return this;
}

void media::FloatEaseInOutAnimation::~FloatEaseInOutAnimation(id *this)
{
}

{

  JUMPOUT(0x1E6906520);
}

float media::FloatEaseInOutAnimation::interpolate(id *this, double a2, float a3, float a4)
{
  v5 = *&a2;
  *&a2 = a4;
  [this[5] _solveForInput:a2];
  if (v6 > 0.999)
  {
    v6 = 1.0;
  }

  return v5 + ((a3 - v5) * v6);
}

uint64_t re::DynamicInlineArray<media::FloatAnimation *,256ul>::ensureCapacity(void *a1, uint64_t a2)
{
  if (*a1 <= 0xFFuLL)
  {
    return 1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

float media::FloatStepAnimation::interpolate(media::FloatStepAnimation *this, float a2, float a3, float a4)
{
  if (*(this + 10) < a4)
  {
    return a3;
  }

  return result;
}

void *re::ecs2::DirectMaterialParametersArrayComponent::getParameterResources@<X0>(void *this@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if (this[6] <= a3)
  {
    goto LABEL_5;
  }

  v4 = this[8] + 32 * a3;
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v5 = *(v4 + 8);
      goto LABEL_8;
    }

LABEL_5:
    *a4 = 0;
    return this;
  }

  v5 = *(v4 + 24);
LABEL_8:
  *a4 = v5;
  if (v5)
  {
    return (v5 + 8);
  }

  return this;
}

void re::ecs2::DirectMaterialParametersArrayComponent::setParameterResources(uint64_t a1, char a2, unint64_t a3, uint64_t *a4)
{
  if ((a2 & 3) != 0)
  {
    v8 = *(a1 + 48);
    if (v8 <= a3)
    {
      re::DynamicArray<re::ecs2::DirectMaterialParameters>::resize(a1 + 32, a3 + 1);
      v8 = *(a1 + 48);
    }

    if (v8 <= a3)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = *(a1 + 64) + 32 * a3;
    if (a2)
    {
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v9 + 8), *a4);
    }

    if ((a2 & 2) != 0)
    {
      v10 = *a4;

      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v9 + 24), v10);
    }
  }
}

void re::DynamicArray<re::ecs2::DirectMaterialParameters>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v5 = 32 * a2;
    v6 = a2;
    do
    {
      v7 = *(a1 + 32) + v5;
      v8 = *(v7 + 24);
      if (v8)
      {

        *(v7 + 24) = 0;
      }

      v9 = *(v7 + 8);
      if (v9)
      {

        *(v7 + 8) = 0;
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::DirectMaterialParameters>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4)
    {
      bzero((*(a1 + 32) + 32 * v4), 32 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

id re::ecs2::DirectMaterialParametersArrayComponent::getParameterBuffer@<X0>(re::ecs2::DirectMaterialParametersArrayComponent *this@<X0>, char a2@<W1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(this + 6) <= a3)
  {
    goto LABEL_4;
  }

  v5 = *(this + 8) + 32 * a3;
  if ((a2 & 2) != 0)
  {
    v7 = *(v5 + 16);
LABEL_7:
    result = v7;
    goto LABEL_8;
  }

  if (a2)
  {
    v7 = *v5;
    goto LABEL_7;
  }

LABEL_4:
  result = 0;
LABEL_8:
  *a4 = result;
  return result;
}

void re::ecs2::DirectMaterialParametersArrayComponent::ensureParameterBufferSize(re::ecs2::DirectMaterialParametersArrayComponent *this, id *a2, char a3, unint64_t a4, id a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if ((a3 & 3) == 0)
  {
    return;
  }

  v10 = *(this + 6);
  if (v10 <= a4)
  {
    re::DynamicArray<re::ecs2::DirectMaterialParameters>::resize(this + 32, a4 + 1);
    v10 = *(this + 6);
  }

  if (v10 <= a4)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = (*(this + 8) + 32 * a4);
  if ((a3 & 1) == 0)
  {
    goto LABEL_13;
  }

  BytesUsed = *v11;
  if (*v11)
  {
    BytesUsed = DRBufferGetBytesUsed();
  }

  if (BytesUsed == a5)
  {
    v13 = *v11;
  }

  else
  {
    if ((a3 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_13:
    v14 = v11[2];
    if (v14)
    {
      v14 = DRBufferGetBytesUsed();
    }

    if (v14 == a5)
    {
      v13 = v11[2];
      if ((a3 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
LABEL_16:
      v15 = DRBufferDescriptorCreate();
      DRBufferDescriptorSetCapacity();
      DRBufferDescriptorSetSizeMultiple();
      v16 = a2[5];
      Buffer = DRContextCreateBuffer();
      v13 = Buffer;
      if (Buffer)
      {
        v18 = Buffer;
      }

      else
      {
        v19 = CFErrorCopyDescription(0);
        v20 = *re::graphicsLogObjects(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = v20;
          *buf = 136315138;
          *&buf[4] = CFStringGetCStringPtr(v19, 0x8000100u);
          _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Unable to create direct buffer: %s", buf, 0xCu);
        }

        CFRelease(v19);
      }

      if ((a3 & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  objc_storeStrong(v11, v13);
LABEL_23:
  if ((a3 & 2) != 0)
  {
    objc_storeStrong(v11 + 2, v13);
  }
}

BOOL re::ecs2::DirectMaterialParametersArrayComponent::isBufferShared(re::ecs2::DirectMaterialParametersArrayComponent *this, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 6) <= a2)
  {
    return 0;
  }

  v2 = (*(this + 8) + 32 * a2);
  if (!*v2)
  {
    return 0;
  }

  v3 = (v2 + 2);
  if (!v2[2])
  {
    return 0;
  }

  re::DirectBuffer::getResourceId(v2, uu1);
  re::DirectBuffer::getResourceId(v3, uu2);
  return uuid_compare(uu1, uu2) == 0;
}

void re::ecs2::DirectMaterialParametersArrayComponent::clearBufferData(re::ecs2::DirectMaterialParametersArrayComponent *this, char a2, unint64_t a3)
{
  if (*(this + 6) > a3)
  {
    if (a2)
    {
      v6 = *(this + 8);
      v7 = *(v6 + 32 * a3);
      *(v6 + 32 * a3) = 0;
    }

    if ((a2 & 2) != 0)
    {
      if (*(this + 6) <= a3)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v8 = *(this + 8) + 32 * a3;
      v9 = *(v8 + 16);
      *(v8 + 16) = 0;
    }
  }
}

void re::ecs2::DirectMaterialParametersArrayComponent::initComponentType(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1EE1A3E38, memory_order_acquire) & 1) == 0)
  {
    v20 = __cxa_guard_acquire(&qword_1EE1A3E38);
    if (v20)
    {
      v21 = qword_1EE1A3E28;
      if (!qword_1EE1A3E28)
      {
        v21 = re::ecs2::allocInfo_DirectMaterialParametersArrayComponent(v20);
        qword_1EE1A3E28 = v21;
        re::ecs2::initInfo_DirectMaterialParametersArrayComponent(v21, v22);
      }

      qword_1EE1A3E30 = v21;
      __cxa_guard_release(&qword_1EE1A3E38);
    }
  }

  v2 = strlen(*(qword_1EE1A3E30 + 48));
  v26[0] = re::ecs2::Component::dropComponentSuffix(*(qword_1EE1A3E30 + 48), v2);
  v26[1] = v3;
  v4 = re::globalAllocators(v26[0]);
  v5 = (*(*v4[2] + 32))(v4[2], 80, 8);
  v6 = re::ecs2::ComponentTypeBase::ComponentTypeBase(v5, v26, 1, 2);
  *v6 = &unk_1F5CEACB0;
  *(v6 + 64) = 0;
  v7 = (v6 + 64);
  *(v6 + 48) = a1;
  *(v6 + 56) = 0;
  *(v6 + 72) = 0xFFFFFFFFLL;
  *(v5 + 56) = re::ecs2::ComponentTypeBase::makeAllocator((v6 + 24), 0x48);
  if ((atomic_load_explicit(&qword_1EE1A3E38, memory_order_acquire) & 1) == 0)
  {
    v23 = __cxa_guard_acquire(&qword_1EE1A3E38);
    if (v23)
    {
      v24 = qword_1EE1A3E28;
      if (!qword_1EE1A3E28)
      {
        v24 = re::ecs2::allocInfo_DirectMaterialParametersArrayComponent(v23);
        qword_1EE1A3E28 = v24;
        re::ecs2::initInfo_DirectMaterialParametersArrayComponent(v24, v25);
      }

      qword_1EE1A3E30 = v24;
      __cxa_guard_release(&qword_1EE1A3E38);
    }
  }

  v8 = qword_1EE1A3E30;
  v9 = *(v8 + 48);
  if (v9)
  {
    v10 = *v9;
    if (*v9)
    {
      v11 = v9[1];
      if (v11)
      {
        v12 = (v9 + 2);
        do
        {
          v10 = 31 * v10 + v11;
          v13 = *v12++;
          v11 = v13;
        }

        while (v13);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v27 = 2 * v10;
  v28 = v9;
  *v7 = v29;
  if (v27)
  {
    if (v27)
    {
    }
  }

  re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = v5;
  v15 = re::ecs2::ComponentTypeRegistry::instance(v14);
  re::ecs2::ComponentTypeRegistry::add(v15, re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 1);
  if ((atomic_load_explicit(&qword_1EE1A3E40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3E40))
  {
    qword_1EE1A3E70 = 0;
    *&qword_1EE1A3E48 = 0u;
    *&qword_1EE1A3E58 = 0u;
    __cxa_guard_release(&qword_1EE1A3E40);
  }

  if ((_MergedGlobals_200 & 1) == 0)
  {
    _MergedGlobals_200 = 1;
    v16 = qword_1EE1A3E48;
    qword_1EE1A3E48 = &__block_literal_global_19;

    v17 = qword_1EE1A3E58;
    qword_1EE1A3E58 = &__block_literal_global_54;

    v18 = qword_1EE1A3E50;
    qword_1EE1A3E50 = &__block_literal_global_57;

    v19 = qword_1EE1A3E60;
    qword_1EE1A3E60 = &__block_literal_global_59;

    qword_1EE1A3E68 = re::snapshot::Registry::list(void)::s_head;
    if ((atomic_load_explicit(&qword_1EE1A3E38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3E38))
    {
      qword_1EE1A3E30 = re::internal::getOrCreateInfo("DirectMaterialParametersArrayComponent", re::ecs2::allocInfo_DirectMaterialParametersArrayComponent, re::ecs2::initInfo_DirectMaterialParametersArrayComponent, &qword_1EE1A3E28, 0);
      __cxa_guard_release(&qword_1EE1A3E38);
    }

    qword_1EE1A3E70 = qword_1EE1A3E30;
    re::snapshot::Registry::list(void)::s_head = &qword_1EE1A3E48;
  }

  *(re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 1) = re::ecs2::DirectMaterialParametersArrayComponent::clone;
}

void *re::ecs2::DirectMaterialParametersArrayComponent::clone(re::ecs2::DirectMaterialParametersArrayComponent *this, const re::ecs2::Component *a2)
{
  v3 = (*(*re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 32))(location);
  v4 = location[0];
  v5 = *(this + 6);
  re::DynamicArray<re::ecs2::DirectMaterialParameters>::setCapacity(v4 + 4, v5);
  ++*(v4 + 14);
  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(this + 8) + 24;
    v8 = 32 * v6;
    while (1)
    {
      *location = 0u;
      v29 = 0u;
      *&v29 = *(v7 - 8);
      re::make::shared::object<re::ecs2::DirectParameterResources>(v29, &v27);
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v29 + 1, v27);
      if (v27)
      {
      }

      if (*v7)
      {
        v9 = *(&v29 + 1);
        re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::operator=(*(&v29 + 1) + 64, (*v7 + 64));
        re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::operator=(v9 + 24, (*v7 + 24));
      }

      objc_storeStrong(location, *(v7 - 24));
      re::make::shared::object<re::ecs2::DirectParameterResources>(v10, &v27);
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&location[1], v27);
      if (v27)
      {
      }

      v12 = *(v7 - 16);
      if (v12)
      {
        v13 = location[1];
        re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::operator=(location[1] + 64, (v12 + 64));
        v11 = re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::operator=(v13 + 24, (*(v7 - 16) + 24));
      }

      v14 = v4[5];
      v15 = v4[6];
      if (v15 >= v14)
      {
        v16 = v15 + 1;
        if (v14 < v15 + 1)
        {
          if (v4[4])
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

            re::DynamicArray<re::ecs2::DirectMaterialParameters>::setCapacity(v4 + 4, v18);
          }

          else
          {
            re::DynamicArray<re::ecs2::DirectMaterialParameters>::setCapacity(v4 + 4, v16);
            ++*(v4 + 14);
          }
        }

        v15 = v4[6];
      }

      v19 = v4[8] + 32 * v15;
      v20 = location[0];
      location[0] = 0;
      *v19 = v20;
      v21 = location[1];
      *(v19 + 8) = location[1];
      if (v21)
      {
        v22 = v21 + 8;
      }

      v23 = v29;
      *&v29 = 0;
      *(v19 + 16) = v23;
      v24 = *(&v29 + 1);
      *(v19 + 24) = *(&v29 + 1);
      if (!v24)
      {
        break;
      }

      v25 = (v24 + 8);
      ++v4[6];
      ++*(v4 + 14);

      if (v21)
      {
        goto LABEL_27;
      }

LABEL_28:
      v7 += 32;
      v8 -= 32;
      if (!v8)
      {
        return v4;
      }
    }

    ++v4[6];
    ++*(v4 + 14);
    if (!v21)
    {
      goto LABEL_28;
    }

LABEL_27:

    goto LABEL_28;
  }

  return v4;
}

uint64_t re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::ecs2::ProbeResource>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::snapshot::DecoderOPACK::field<1,re::DirectBuffer>(re::snapshot::DecoderOPACK *a1, void **a2)
{
  result = re::snapshot::DecoderOPACK::beginField<1>(a1);
  if (result)
  {
    re::internalDecode<re::snapshot::DecoderOPACK>(a1, a2);

    return re::snapshot::DecoderOPACK::endField(a1);
  }

  return result;
}

unsigned int *re::ecs2::snapshotMapFields<re::snapshot::EncoderRaw>(unsigned int *a1, void *a2)
{
  __src = a2[5];
  re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
  v4 = a2[5];
  if (v4)
  {
    v5 = a2[7];
    v6 = v5 + 32 * v4;
    do
    {
      {
        re::introspect<re::AssetHandle>(BOOL)::info = re::introspect_AssetHandle(0, v7);
      }

      re::snapshot::introspected::write<re::snapshot::EncoderRaw>(a1, v5, re::introspect<re::AssetHandle>(BOOL)::info);
      __src = *(v5 + 24);
      re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
      v5 += 32;
    }

    while (v5 != v6);
  }

  __src = a2[10];
  result = re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
  v9 = a2[10];
  if (v9)
  {
    v10 = a2[12];
    v11 = (v10 + 16 * v9);
    do
    {
      re::internalEncode<re::snapshot::EncoderRaw>(a1, v10);
      __src = *(v10 + 1);
      result = re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
      v10 = (v10 + 16);
    }

    while (v10 != v11);
  }

  return result;
}

{
  v4 = a2[8];
  __src = 32 * a2[6];
  v5 = __src;
  re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
  re::snapshot::BufferEncoder::writeRaw<true>(a1, v4, v5);
  v6 = a2[13];
  __src = 32 * a2[11];
  v7 = __src;
  re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
  re::snapshot::BufferEncoder::writeRaw<true>(a1, v6, v7);
  v8 = a2[18];
  v9 = a2[16];
  __src = v9;
  re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, v8, v9);
}

{
  {
    re::introspect<re::ecs2::Component>(BOOL)::info = re::ecs2::introspect_Component(0);
  }

  re::snapshot::introspected::write<re::snapshot::EncoderRaw>(a1, a2, re::introspect<re::ecs2::Component>(BOOL)::info);
  __src = a2[9];
  re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
  v4 = a2[9];
  if (v4)
  {
    v5 = a2[11];
    v6 = 88 * v4;
    do
    {
      {
        re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0);
      }

      re::snapshot::introspected::write<re::snapshot::EncoderRaw>(a1, v5, re::introspect<re::SkeletalPose>(BOOL)::info);
      v5 += 88;
      v6 -= 88;
    }

    while (v6);
  }

  __src = a2[14];
  re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
  v7 = a2[14];
  if (v7)
  {
    v8 = 40 * v7;
    v9 = (a2[16] + 32);
    do
    {
      v10 = *v9;
      __src = *(v9 - 2) << 6;
      v11 = __src;
      re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
      re::snapshot::BufferEncoder::writeRaw<true>(a1, v10, v11);
      v9 += 5;
      v8 -= 40;
    }

    while (v8);
  }

  {
    re::introspect<re::AssetHandle>(BOOL)::info = re::introspect_AssetHandle(0, v13);
  }

  return re::snapshot::introspected::write<re::snapshot::EncoderRaw>(a1, (a2 + 4), re::introspect<re::AssetHandle>(BOOL)::info);
}

unsigned int *re::ecs2::snapshotMapFields<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK *this, void *a2)
{
  v4 = *(this + 4);
  if (v4 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v5 = *(this + 1);
    *(this + 4) = v4 + 1;
    *(v5 + v4) = 9;
  }

  v6 = a2[5];
  re::snapshot::EncoderOPACK::beginArray(this, v6);
  v7 = a2[5];
  if (v7)
  {
    v8 = a2[7];
    v9 = v8 + 32 * v7;
    do
    {
      re::snapshot::EncoderOPACK::beginObject(this);
      v10 = *(this + 4);
      if (v10 >= *(this + 5))
      {
        re::snapshot::EncoderOPACK::writeInteger(this, 1);
      }

      else
      {
        v11 = *(this + 1);
        *(this + 4) = v10 + 1;
        *(v11 + v10) = 9;
      }

      {
        re::introspect<re::AssetHandle>(BOOL)::info = re::introspect_AssetHandle(0, v14);
      }

      re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, v8, re::introspect<re::AssetHandle>(BOOL)::info);
      v12 = *(this + 4);
      if (v12 >= *(this + 5))
      {
        re::snapshot::EncoderOPACK::writeInteger(this, 2);
      }

      else
      {
        v13 = *(this + 1);
        *(this + 4) = v12 + 1;
        *(v13 + v12) = 10;
      }

      re::snapshot::EncoderOPACK::writeInteger(this, *(v8 + 24));
      re::snapshot::EncoderOPACK::endObject(this);
      v8 += 32;
    }

    while (v8 != v9);
  }

  re::snapshot::EncoderOPACK::endArray(this, v6);
  v15 = *(this + 4);
  if (v15 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 2);
  }

  else
  {
    v16 = *(this + 1);
    *(this + 4) = v15 + 1;
    *(v16 + v15) = 10;
  }

  v17 = a2[10];
  re::snapshot::EncoderOPACK::beginArray(this, v17);
  v18 = a2[10];
  if (v18)
  {
    v19 = a2[12];
    v20 = &v19[2 * v18];
    do
    {
      re::snapshot::EncoderOPACK::beginObject(this);
      v21 = *(this + 4);
      if (v21 >= *(this + 5))
      {
        re::snapshot::EncoderOPACK::writeInteger(this, 1);
      }

      else
      {
        v22 = *(this + 1);
        *(this + 4) = v21 + 1;
        *(v22 + v21) = 9;
      }

      re::internalEncode<re::snapshot::EncoderOPACK>(this, v19);
      v23 = *(this + 4);
      if (v23 >= *(this + 5))
      {
        re::snapshot::EncoderOPACK::writeInteger(this, 2);
      }

      else
      {
        v24 = *(this + 1);
        *(this + 4) = v23 + 1;
        *(v24 + v23) = 10;
      }

      re::snapshot::EncoderOPACK::writeInteger(this, v19[1]);
      re::snapshot::EncoderOPACK::endObject(this);
      v19 += 2;
    }

    while (v19 != v20);
  }

  return re::snapshot::EncoderOPACK::endArray(this, v17);
}

{
  v4 = *(this + 4);
  if (v4 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v5 = *(this + 1);
    *(this + 4) = v4 + 1;
    *(v5 + v4) = 9;
  }

  v6 = a2[6];
  re::snapshot::EncoderOPACK::beginArray(this, v6);
  v7 = a2[6];
  if (v7)
  {
    v8 = a2[8];
    v9 = 32 * v7;
    do
    {
      re::snapshot::EncoderOPACK::beginObject(this);
      re::snapshotMapFields<re::snapshot::EncoderOPACK>(this, v8);
      re::snapshot::EncoderOPACK::endObject(this);
      v8 += 32;
      v9 -= 32;
    }

    while (v9);
  }

  re::snapshot::EncoderOPACK::endArray(this, v6);
  v10 = *(this + 4);
  if (v10 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 2);
  }

  else
  {
    v11 = *(this + 1);
    *(this + 4) = v10 + 1;
    *(v11 + v10) = 10;
  }

  v12 = a2[11];
  re::snapshot::EncoderOPACK::beginArray(this, v12);
  v13 = a2[11];
  if (v13)
  {
    v14 = a2[13];
    v15 = 32 * v13;
    do
    {
      re::snapshot::EncoderOPACK::beginObject(this);
      re::snapshotMapFields<re::snapshot::EncoderOPACK>(this, v14);
      re::snapshot::EncoderOPACK::endObject(this);
      v14 += 32;
      v15 -= 32;
    }

    while (v15);
  }

  re::snapshot::EncoderOPACK::endArray(this, v12);
  v16 = *(this + 4);
  if (v16 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 3);
  }

  else
  {
    v17 = *(this + 1);
    *(this + 4) = v16 + 1;
    *(v17 + v16) = 11;
  }

  if ((*(this + 72) & 4) != 0)
  {
    v23 = a2[18];
    v24 = a2[16];
    re::snapshot::EncoderOPACK::beginData(this, v24, v24);

    return re::snapshot::BufferEncoder::writeRaw<true>(this, v23, v24);
  }

  else
  {
    v18 = a2[16];
    re::snapshot::EncoderOPACK::beginArray(this, v18);
    v19 = a2[16];
    if (v19)
    {
      v20 = a2[18];
      do
      {
        v21 = *v20++;
        re::snapshot::EncoderOPACK::operator<<(this, v21);
        --v19;
      }

      while (v19);
    }

    return re::snapshot::EncoderOPACK::endArray(this, v18);
  }
}

{
  v4 = *(this + 4);
  if (v4 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 0);
  }

  else
  {
    v5 = *(this + 1);
    *(this + 4) = v4 + 1;
    *(v5 + v4) = 8;
  }

  {
    re::introspect<re::ecs2::Component>(BOOL)::info = re::ecs2::introspect_Component(0);
  }

  re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, a2, re::introspect<re::ecs2::Component>(BOOL)::info);
  v6 = *(this + 4);
  if (v6 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v7 = *(this + 1);
    *(this + 4) = v6 + 1;
    *(v7 + v6) = 9;
  }

  v8 = a2[9];
  re::snapshot::EncoderOPACK::beginArray(this, v8);
  v9 = a2[9];
  if (v9)
  {
    v10 = a2[11];
    v11 = 88 * v9;
    do
    {
      {
        re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0);
      }

      re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, v10, re::introspect<re::SkeletalPose>(BOOL)::info);
      v10 += 88;
      v11 -= 88;
    }

    while (v11);
  }

  re::snapshot::EncoderOPACK::endArray(this, v8);
  v12 = *(this + 4);
  if (v12 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 2);
  }

  else
  {
    v13 = *(this + 1);
    *(this + 4) = v12 + 1;
    *(v13 + v12) = 10;
  }

  v14 = a2[14];
  re::snapshot::EncoderOPACK::beginArray(this, v14);
  v15 = a2[14];
  if (v15)
  {
    v16 = a2[16];
    v17 = v16 + 40 * v15;
    do
    {
      v18 = *(v16 + 16);
      re::snapshot::EncoderOPACK::beginArray(this, v18);
      v19 = *(v16 + 16);
      if (v19)
      {
        v20 = *(v16 + 32);
        v21 = v19 << 6;
        do
        {
          re::internal::opack::encode<re::Vector4<float>,4>(this, v20);
          v20 += 64;
          v21 -= 64;
        }

        while (v21);
      }

      re::snapshot::EncoderOPACK::endArray(this, v18);
      v16 += 40;
    }

    while (v16 != v17);
  }

  re::snapshot::EncoderOPACK::endArray(this, v14);
  v22 = *(this + 4);
  if (v22 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 3);
  }

  else
  {
    v23 = *(this + 1);
    *(this + 4) = v22 + 1;
    *(v23 + v22) = 11;
  }

  {
    re::introspect<re::AssetHandle>(BOOL)::info = re::introspect_AssetHandle(0, v26);
  }

  v24 = re::introspect<re::AssetHandle>(BOOL)::info;

  return re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, (a2 + 4), v24);
}

uint64_t (***re::ecs2::snapshotMapFields<re::snapshot::DecoderRaw>(re *a1, uint64_t a2))(void)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1)[2];
  v7[0] = &unk_1F5CEAEE0;
  v7[1] = &v6;
  v7[3] = v4;
  v7[4] = v7;
  re::snapshot::DecoderRaw::deserializePointer(a1, a2, v7);
  return re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::destroyCallable(v7);
}

uint64_t (***re::ecs2::snapshotMapFields<re::snapshot::EncoderRaw>(re *a1, uint64_t a2))(void)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1)[2];
  v7[0] = &unk_1F5CEB050;
  v7[1] = &v6;
  v7[3] = v4;
  v7[4] = v7;
  re::snapshot::EncoderRaw::serializePointer(a1, a2, v7);
  return re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(v7);
}

uint64_t (***re::ecs2::snapshotMapFields<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK *this, uint64_t *a2))(void)
{
  v3 = this;
  v10[5] = *MEMORY[0x1E69E9840];
  v4 = *(this + 4);
  if (v4 >= *(this + 5))
  {
    this = re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v5 = *(this + 1);
    *(this + 4) = v4 + 1;
    *(v5 + v4) = 9;
  }

  v6 = *a2;
  v7 = re::globalAllocators(this)[2];
  v10[0] = &unk_1F5CEB110;
  v10[1] = &v9;
  v10[3] = v7;
  v10[4] = v10;
  re::snapshot::EncoderOPACK::serializePointer(v3, v6, v10);
  return re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(v10);
}

void re::ecs2::DirectMaterialParametersArrayComponentVersionUtilities::prepareForRealityFileSerialization(re::ecs2::DirectMaterialParametersArrayComponentVersionUtilities *this, re::ecs2::EntityAssetData *a2, re::ecs2::Component *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MaterialParameterBlockArrayComponent>(this);
  if (v5)
  {
    if (*(this + 4))
    {
      v6 = *(this + 6);
      if (v6)
      {
        v7 = v5;
        v8 = (*(this + 8) + 8);
        v9 = 24 * v6;
        while (*(v8 - 1) != *(re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType + 3) >> 1)
        {
          v8 += 3;
          v9 -= 24;
          if (!v9)
          {
            return;
          }
        }

        v10 = *v8;
        if (*v8)
        {
          if (*(a2 + 6))
          {
            v11 = 0;
            v30 = *v8;
            v31 = a2;
            do
            {
              if (v11 >= *(v10 + 72))
              {
                return;
              }

              re::AssetHandle::AssetHandle(v34, (*(v10 + 88) + 24 * v11));
              if (v35)
              {
                v12 = *(re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v34) + 1968);
                if (v12)
                {
                  v13 = (v12 + 8);
                  if (v11 >= *(v7 + 6))
                  {
                    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(v7, v11 + 1);
                  }

                  v14 = *(a2 + 6);
                  if (v14 <= v11)
                  {
LABEL_43:
                    v36 = 0;
                    v48 = 0u;
                    v49 = 0u;
                    v46 = 0u;
                    v47 = 0u;
                    v45 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    v37 = 136315906;
                    v38 = "operator[]";
                    v39 = 1024;
                    v40 = 789;
                    v41 = 2048;
                    v42 = v11;
                    v43 = 2048;
                    v44 = v14;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                  }

                  v15 = *(a2 + 8);
                  v32 = v12;
                  CustomUniformsArgument = re::sg::CachedCompilationMaterial::getCustomUniformsArgument(v12);
                  v17 = *(CustomUniformsArgument + 9);
                  if (v17)
                  {
                    v18 = *(CustomUniformsArgument + 10);
                    v19 = &v18[5 * v17];
                    do
                    {
                      v14 = *(v7 + 6);
                      if (v14 <= v11)
                      {
                        v36 = 0;
                        v48 = 0u;
                        v49 = 0u;
                        v46 = 0u;
                        v47 = 0u;
                        v45 = 0u;
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        v37 = 136315906;
                        v38 = "operator[]";
                        v39 = 1024;
                        v40 = 789;
                        v41 = 2048;
                        v42 = v11;
                        v43 = 2048;
                        v44 = v14;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
                        goto LABEL_43;
                      }

                      var0 = v18->var0;
                      v21 = *(*(v7 + 8) + 32 * v11);
                      if (v21)
                      {
                        v22 = (v21 + 8);
                      }

                      v23 = *(&v18[2].var0 + 2);
                      if (v23 != 60)
                      {
                        if (v23 == 58)
                        {
                          v24 = *(v15 + 32 * v11 + 24);
                          v25 = *(v24 + 40);
                          if (v25)
                          {
                            v26 = *(v24 + 56);
                            v27 = (v26 + 32 * v25);
                            while (1)
                            {
                              v28 = re::AssetHandle::AssetHandle(&v45, v26);
                              *(&v46 + 1) = *(v26 + 3);
                              if (*(&v46 + 1) == var0)
                              {
                                break;
                              }

                              re::AssetHandle::~AssetHandle(v28);
                              v26 = (v26 + 32);
                              if (v26 == v27)
                              {
                                goto LABEL_33;
                              }
                            }

                            re::AssetHandle::AssetHandle(v33, &v45);
                            re::ecs2::SerializableMaterialParameterBlock::setTexture(v21, v18 + 1, v33);
                            re::AssetHandle::~AssetHandle(v33);
                            re::AssetHandle::~AssetHandle(&v45);
                            if (!v21)
                            {
                              goto LABEL_35;
                            }

LABEL_34:

                            goto LABEL_35;
                          }
                        }

                        else
                        {
                          if (v21)
                          {
                            v29 = (v21 + 8);
                          }

                          DRBufferRead();
                          if (v21)
                          {
                          }
                        }
                      }

LABEL_33:
                      if (v21)
                      {
                        goto LABEL_34;
                      }

LABEL_35:
                      v18 += 5;
                    }

                    while (v18 != v19);
                  }

                  v10 = v30;
                  a2 = v31;
                }
              }

              re::AssetHandle::~AssetHandle(v34);
              ++v11;
            }

            while (v11 < *(a2 + 6));
          }
        }
      }
    }
  }
}

void ___ZN2re4ecs254DirectMaterialParametersArrayComponentVersionUtilities34prepareForRealityFileSerializationEPNS0_15EntityAssetDataEPNS0_9ComponentE_block_invoke(uint64_t a1, uint64_t a2, float16x4_t a3, int8x16_t _Q1)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  v8 = *(a1 + 64);
  v9 = (a2 + *(a1 + 80));
  switch(*(*(a1 + 72) + 36))
  {
    case 3:
      _S0 = *v9;
      goto LABEL_23;
    case 4:
      v26.i64[0] = *v9;
      goto LABEL_25;
    case 5:
      v19 = *v9;
      v18 = *(v9 + 1);
      v26.i64[0] = v19;
      v26.i64[1] = v18;
      goto LABEL_28;
    case 6:
      v17 = *v9;
      v16 = *(v9 + 1);
      v26.i64[0] = v17;
      v26.i64[1] = v16;
      goto LABEL_21;
    case 7:
      v26 = *v9;
      v11 = v6;
      v12 = 48;
      goto LABEL_29;
    case 8:
    case 9:
    case 0xA:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
      goto LABEL_30;
    case 0xB:
      v15 = *(v9 + 1);
      v26 = *v9;
      v27 = v15;
      v28 = *(v9 + 2);
      v11 = v6;
      v12 = 49;
      goto LABEL_29;
    case 0xF:
      v13 = *(v9 + 1);
      v26 = *v9;
      v27 = v13;
      v14 = *(v9 + 3);
      v28 = *(v9 + 2);
      v29 = v14;
      v11 = v6;
      v12 = 50;
      goto LABEL_29;
    case 0x10:
      _H0 = *v9;
      __asm { FCVT            S0, H0 }

LABEL_23:
      v26.i32[0] = _S0;
      v11 = v6;
      v12 = 1;
      goto LABEL_29;
    case 0x11:
      a3.i32[0] = *v9;
      v26.i64[0] = vcvtq_f32_f16(a3).u64[0];
LABEL_25:
      v11 = v6;
      v12 = 32;
      goto LABEL_29;
    case 0x12:
      _D0 = *v9;
      __asm { FCVT            S1, H0 }

      v26 = vextq_s8(vextq_s8(_Q1, _Q1, 4uLL), vcvtq_f32_f16(vext_s8(_D0, _D0, 2uLL)), 0xCuLL);
LABEL_28:
      v11 = v6;
      v12 = 33;
      goto LABEL_29;
    case 0x13:
      v26 = vcvtq_f32_f16(*v9);
LABEL_21:
      v11 = v6;
      v12 = 34;
      goto LABEL_29;
    case 0x1D:
      v26.i32[0] = *v9;
      v11 = v6;
      v12 = 3;
      goto LABEL_29;
    case 0x1E:
      v26.i64[0] = *v9;
      v11 = v6;
      v12 = 4;
      goto LABEL_29;
    case 0x1F:
      v26 = *v9;
      v11 = v6;
      v12 = 5;
      goto LABEL_29;
    case 0x20:
      v26 = *v9;
      v11 = v6;
      v12 = 6;
      goto LABEL_29;
    case 0x21:
      v26.i32[0] = *v9;
      v11 = v6;
      v12 = 7;
      goto LABEL_29;
    case 0x22:
      v26.i64[0] = *v9;
      v11 = v6;
      v12 = 8;
      goto LABEL_29;
    case 0x23:
      v26 = *v9;
      v11 = v6;
      v12 = 9;
      goto LABEL_29;
    case 0x24:
      v26 = *v9;
      v11 = v6;
      v12 = 10;
      goto LABEL_29;
    default:
      if (*(*(a1 + 72) + 36) != 53)
      {
        goto LABEL_30;
      }

      v26.i8[0] = *v9;
      v11 = v6;
      v12 = 2;
LABEL_29:
      re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v11, v8, v12, &v26);
LABEL_30:
      if (v6)
      {
      }

      return;
  }
}

double __copy_helper_block_a8_32c56_ZTSN2re4ecs240SerializableMaterialParameterBlockHandleE(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  a1[4] = v3;
  if (v3)
  {
    v4 = (v3 + 8);
  }

  a1[5] = 0;
  *&result = 1;
  a1[6] = 1;
  a1[7] = 0;
  return result;
}

void __destroy_helper_block_a8_32c56_ZTSN2re4ecs240SerializableMaterialParameterBlockHandleE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {

    *(a1 + 32) = 0;
  }
}

void *re::ecs2::allocInfo_DirectMaterialParametersArrayComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A3E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3E10))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A3E78, "DirectMaterialParametersArrayComponent");
    __cxa_guard_release(&qword_1EE1A3E10);
  }

  return &unk_1EE1A3E78;
}

void re::ecs2::initInfo_DirectMaterialParametersArrayComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x5523AF574B6F6F3CLL;
  v10[1] = "DirectMaterialParametersArrayComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A3E20, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A3E20);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A3E18 = v8;
      __cxa_guard_release(&qword_1EE1A3E20);
    }
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A3E18;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DirectMaterialParametersArrayComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DirectMaterialParametersArrayComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DirectMaterialParametersArrayComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DirectMaterialParametersArrayComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs238DirectMaterialParametersArrayComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::DirectMaterialParametersArrayComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CEAD20;
  *(v3 + 64) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::DirectMaterialParametersArrayComponent>(uint64_t a1)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CEAD20;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
}

void *re::DynamicArray<re::ecs2::DirectMaterialParameters>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::DirectMaterialParameters>::setCapacity(v5, a2);
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
              goto LABEL_23;
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
LABEL_23:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 16;
        v11 = 32 * v9;
        v12 = v7;
        do
        {
          v14 = *(v10 - 16);
          v13 = *(v10 - 8);
          *(v10 - 16) = 0;
          *v12 = v14;
          v12[1] = v13;
          if (v13)
          {
            v15 = (v13 + 8);
          }

          v17 = *v10;
          v16 = *(v10 + 8);
          *v10 = 0;
          v12[2] = v17;
          v12[3] = v16;
          if (v16)
          {
            v18 = (v16 + 8);
            v19 = *(v10 + 8);
            if (v19)
            {

              *(v10 + 8) = 0;
            }
          }

          v20 = *(v10 - 8);
          if (v20)
          {

            *(v10 - 8) = 0;
          }

          v12 += 4;
          v10 += 32;
          v11 -= 32;
        }

        while (v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_23;
    }
  }

  return result;
}

double re::ecs2::ComponentType<re::ecs2::DirectMaterialParametersArrayComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::DirectMaterialParametersArrayComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::DirectMaterialParametersArrayComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ComponentType<re::ecs2::DirectMaterialParametersArrayComponent>::doMakeComponent(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 72, 0);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CEAD20;
  *(v3 + 64) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
  *a1 = v3;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::DirectMaterialParametersArrayComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CEADA8;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::DirectMaterialParametersArrayComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A3E38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3E38))
  {
    qword_1EE1A3E30 = re::internal::getOrCreateInfo("DirectMaterialParametersArrayComponent", re::ecs2::allocInfo_DirectMaterialParametersArrayComponent, re::ecs2::initInfo_DirectMaterialParametersArrayComponent, &qword_1EE1A3E28, 0);
    __cxa_guard_release(&qword_1EE1A3E38);
  }

  return qword_1EE1A3E30;
}

__n128 re::ecs2::ComponentType<re::ecs2::DirectMaterialParametersArrayComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::DirectMaterialParametersArrayComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CEACB0;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::DirectMaterialParametersArrayComponent::~DirectMaterialParametersArrayComponent(re::ecs2::DirectMaterialParametersArrayComponent *this)
{
  *this = &unk_1F5CEAD20;
  re::DynamicArray<re::ecs2::DirectMaterialParameters>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CEAD20;
  re::DynamicArray<re::ecs2::DirectMaterialParameters>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::DynamicArray<re::ecs2::DirectMaterialParameters>::deinit(uint64_t a1)
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
        v5 = v3 + 24;
        v6 = 32 * v4;
        do
        {
          if (*v5)
          {

            *v5 = 0;
          }

          v7 = *(v5 - 16);
          if (v7)
          {

            *(v5 - 16) = 0;
          }

          v5 += 32;
          v6 -= 32;
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

void re::ecs2::SceneComponentCollection<re::ecs2::DirectMaterialParametersArrayComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::DirectMaterialParametersArrayComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CEADA8;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

BOOL ___ZN2re8snapshot8Registry3addINS_4ecs238DirectMaterialParametersArrayComponentEEEPKNS1_5EntryEv_block_invoke(int a1, re::snapshot::BufferEncoder *this, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  __src = *(a3 + 48);
  re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 8uLL);
  v5 = *(a3 + 48);
  if (v5)
  {
    v6 = *(a3 + 64);
    v7 = &v6[4 * v5];
    do
    {
      re::internalEncode<re::snapshot::EncoderRaw>(this, v6);
      re::ecs2::snapshotMapFields<re::snapshot::EncoderRaw>(this, v6[1]);
      re::internalEncode<re::snapshot::EncoderRaw>(this, (v6 + 2));
      re::ecs2::snapshotMapFields<re::snapshot::EncoderRaw>(this, v6[3]);
      v6 += 4;
    }

    while (v6 != v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    v9 = v8 >> 1;
  }

  else
  {
    v9 = v8 >> 1;
  }

  return v9 == 0;
}

BOOL ___ZN2re8snapshot8Registry3addINS_4ecs238DirectMaterialParametersArrayComponentEEEPKNS1_5EntryEv_block_invoke_2(int a1, re::snapshot::EncoderOPACK *this, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  re::snapshot::EncoderOPACK::beginObject(this);
  v5 = *(this + 4);
  if (v5 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v6 = *(this + 1);
    *(this + 4) = v5 + 1;
    *(v6 + v5) = 9;
  }

  v7 = *(a3 + 48);
  re::snapshot::EncoderOPACK::beginArray(this, v7);
  v8 = *(a3 + 48);
  if (v8)
  {
    v9 = *(a3 + 64);
    v10 = (v9 + 32 * v8);
    do
    {
      re::snapshot::EncoderOPACK::beginObject(this);
      v11 = *(this + 4);
      if (v11 >= *(this + 5))
      {
        re::snapshot::EncoderOPACK::writeInteger(this, 1);
      }

      else
      {
        v12 = *(this + 1);
        *(this + 4) = v11 + 1;
        *(v12 + v11) = 9;
      }

      re::internalEncode<re::snapshot::EncoderOPACK>(this, v9);
      v13 = *(this + 4);
      if (v13 >= *(this + 5))
      {
        re::snapshot::EncoderOPACK::writeInteger(this, 2);
      }

      else
      {
        v14 = *(this + 1);
        *(this + 4) = v13 + 1;
        *(v14 + v13) = 10;
      }

      re::snapshot::EncoderOPACK::beginObject(this);
      v15 = (v9 + 8);
      re::ecs2::snapshotMapFields<re::snapshot::EncoderOPACK>(this, v15);
      re::snapshot::EncoderOPACK::endObject(this);
      v16 = *(this + 4);
      if (v16 >= *(this + 5))
      {
        re::snapshot::EncoderOPACK::writeInteger(this, 3);
      }

      else
      {
        v17 = *(this + 1);
        *(this + 4) = v16 + 1;
        *(v17 + v16) = 11;
      }

      v18 = v15 + 1;
      re::internalEncode<re::snapshot::EncoderOPACK>(this, v18);
      v19 = *(this + 4);
      if (v19 >= *(this + 5))
      {
        re::snapshot::EncoderOPACK::writeInteger(this, 4);
      }

      else
      {
        v20 = *(this + 1);
        *(this + 4) = v19 + 1;
        *(v20 + v19) = 12;
      }

      re::snapshot::EncoderOPACK::beginObject(this);
      re::ecs2::snapshotMapFields<re::snapshot::EncoderOPACK>(this, v18 + 1);
      re::snapshot::EncoderOPACK::endObject(this);
      re::snapshot::EncoderOPACK::endObject(this);
      v9 = (v18 + 2);
    }

    while (v9 != v10);
  }

  re::snapshot::EncoderOPACK::endArray(this, v7);
  re::snapshot::EncoderOPACK::endObject(this);
  v21 = *(this + 6);
  if (v21)
  {
    v22 = v21 >> 1;
  }

  else
  {
    v22 = v21 >> 1;
  }

  return v22 == 0;
}

uint64_t ___ZN2re8snapshot8Registry3addINS_4ecs238DirectMaterialParametersArrayComponentEEEPKNS1_5EntryEv_block_invoke_3(int a1, re::snapshot::DecoderRaw *this, void *a3)
{
  if (a3)
  {
    v13 = 0;
    if (!re::snapshot::DecoderRaw::beginArray(this, &v13))
    {
LABEL_20:
      v7 = *(this + 44) ^ 1;
      return v7 & 1;
    }

    v5 = v13;
    if (v13 == -1 || a3[5] >= v13)
    {
      if (!v13)
      {
        v8 = 1;
        LODWORD(v9) = 1;
LABEL_18:
        if (v8 != v9)
        {
          re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
        }

        goto LABEL_20;
      }

      v8 = v13 + 1;
      if (v13 == -1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      re::DynamicArray<re::ecs2::DirectMaterialParameters>::setCapacity(a3 + 4, v13);
      v8 = v5 + 1;
    }

    v9 = 1;
    v10 = v5;
    while (v8 != v9)
    {
      --v10;
      re::DynamicArray<re::ecs2::DirectMaterialParameters>::resize((a3 + 4), v9);
      v11 = a3[8] + 32 * a3[6];
      re::internalDecode<re::snapshot::DecoderRaw>(this, (v11 - 32));
      re::ecs2::snapshotMapFields<re::snapshot::DecoderRaw>(this, v11 - 24);
      re::internalDecode<re::snapshot::DecoderRaw>(this, (v11 - 16));
      re::ecs2::snapshotMapFields<re::snapshot::DecoderRaw>(this, v11 - 8);
      ++v9;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

LABEL_16:
    re::snapshot::BufferDecoder::error(this, "Bad data, too many elements: have %d, expected %zu");
    goto LABEL_20;
  }

  v7 = 0;
  return v7 & 1;
}

uint64_t ___ZN2re8snapshot8Registry3addINS_4ecs238DirectMaterialParametersArrayComponentEEEPKNS1_5EntryEv_block_invoke_4(int a1, const char **this, uint64_t a3)
{
  if (a3)
  {
    if (re::snapshot::DecoderOPACK::beginObject(this, 0))
    {
      if (re::snapshot::DecoderOPACK::beginField<1>(this))
      {
        v14 = 0;
        if (re::snapshot::DecoderOPACK::beginData(this, &v14, 1))
        {
          v5 = v14;
          if ((v14 & 0x1F) != 0)
          {
            re::snapshot::BufferDecoder::error(this, "Bad data: %zu bytes, expected multiple of %zu");
          }

          else
          {
            re::DynamicArray<re::ecs2::DirectMaterialParameters>::resize(a3 + 32, v14 >> 5);
            re::snapshot::BufferDecoder::readRaw(this, *(a3 + 64), v5);
          }
        }

        else if (re::snapshot::DecoderOPACK::beginArray(this, &v14))
        {
          v7 = v14;
          if (v14 != -1 && *(a3 + 40) < v14)
          {
            re::DynamicArray<re::ecs2::DirectMaterialParameters>::setCapacity((a3 + 32), v14);
          }

          LODWORD(v8) = 1;
          if (v7 + 1 > 1)
          {
            v9 = v7 + 1;
          }

          else
          {
            v9 = 1;
          }

          if (re::snapshot::DecoderOPACK::endArray(this, &v14))
          {
LABEL_32:
            if (v7 + 1 != v8)
            {
              re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
            }
          }

          else
          {
            if (v7 != -1)
            {
              v8 = 1;
              while (v9 != v8)
              {
                re::DynamicArray<re::ecs2::DirectMaterialParameters>::resize(a3 + 32, v8);
                v10 = *(a3 + 64);
                v11 = *(a3 + 48);
                if (re::snapshot::DecoderOPACK::beginObject(this, 0))
                {
                  v12 = v10 + 32 * v11;
                  re::snapshot::DecoderOPACK::field<1,re::DirectBuffer>(this, (v12 - 32));
                  if (re::snapshot::DecoderOPACK::beginField<2>(this))
                  {
                    if (re::snapshot::DecoderOPACK::beginObject(this, 0))
                    {
                      re::snapshot::DecoderOPACK::field<1,re::ecs2::DirectParameterResources *>(this, v12 - 24);
                      re::snapshot::DecoderOPACK::endObject(this, 0);
                    }

                    re::snapshot::DecoderOPACK::endField(this);
                  }

                  if (re::snapshot::DecoderOPACK::beginField<3>(this))
                  {
                    re::internalDecode<re::snapshot::DecoderOPACK>(this, (v12 - 16));
                    re::snapshot::DecoderOPACK::endField(this);
                  }

                  if (re::snapshot::DecoderOPACK::beginField<4>(this))
                  {
                    if (re::snapshot::DecoderOPACK::beginObject(this, 0))
                    {
                      re::snapshot::DecoderOPACK::field<1,re::ecs2::DirectParameterResources *>(this, v12 - 8);
                      re::snapshot::DecoderOPACK::endObject(this, 0);
                    }

                    re::snapshot::DecoderOPACK::endField(this);
                  }

                  re::snapshot::DecoderOPACK::endObject(this, 0);
                }

                ++v8;
                if (re::snapshot::DecoderOPACK::endArray(this, &v14))
                {
                  goto LABEL_32;
                }
              }
            }

            re::snapshot::BufferDecoder::error(this, "Bad data, too many elements: have %d, expected %zu");
          }
        }

        re::snapshot::DecoderOPACK::endField(this);
      }

      re::snapshot::DecoderOPACK::endObject(this, 0);
    }

    v6 = *(this + 44) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

double re::make::shared::object<re::ecs2::DirectParameterResources>@<D0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 144, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *(v4 + 24) = 0;
  *v4 = &unk_1F5CEAE98;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 136) = 0;
  result = 0.0;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0;
  *a2 = v4;
  return result;
}

void re::ecs2::DirectParameterResources::~DirectParameterResources(re::ecs2::DirectParameterResources *this)
{
  *this = &unk_1F5CEAE98;
  v2 = this + 24;
  re::DynamicArray<unsigned long>::deinit(this + 104);
  re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::deinit(this + 64);
  re::DynamicArray<re::ecs2::ProbeResource>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CEAE98;
  v2 = this + 24;
  re::DynamicArray<unsigned long>::deinit(this + 104);
  re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::deinit(this + 64);
  re::DynamicArray<re::ecs2::ProbeResource>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::deinit(uint64_t a1)
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
        v5 = 16 * v4;
        do
        {
          v6 = *v3;
          v3 += 2;

          v5 -= 16;
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

void re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    v14 = a1[4];
    if (v13)
    {
      v15 = v12 + 16 * v13;
      do
      {
        objc_storeStrong(v14, *v12);
        *(v14 + 8) = *(v12 + 8);
        v12 += 16;
        v14 += 16;
      }

      while (v12 != v15);
      v14 = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v16 = v12 + 16 * v4;
      v17 = v12 + 16 * v13;
      v18 = (v14 + 16 * v13);
      do
      {
        v19 = *v17;
        v20 = *(v17 + 8);
        *v18 = v19;
        v18[1] = v20;
        v18 += 2;
        v17 += 16;
      }

      while (v17 != v16);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = v7 + 16 * v4;
      do
      {
        objc_storeStrong(v6, *v7);
        *(v6 + 8) = *(v7 + 8);
        v7 += 16;
        v6 += 16;
      }

      while (v7 != v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v9 = (v6 + 16 * v4);
      v10 = 16 * v5 - 16 * v4;
      do
      {
        v11 = *v9;
        v9 += 2;

        v10 -= 16;
      }

      while (v10);
    }
  }

  a1[2] = v4;
}