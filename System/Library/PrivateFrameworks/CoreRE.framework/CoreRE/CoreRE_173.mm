uint64_t std::function<void ()(re::ProbeManager &,long long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, a2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return re::DynamicArray<re::ProbeSpecularWorkload>::add(v4);
}

__n128 re::DynamicArray<re::ProbeSpecularWorkload>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<re::ProbeSpecularWorkload>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::ProbeSpecularWorkload>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 68 * v5;
  *v11 = *a2;
  result = *(a2 + 16);
  v13 = *(a2 + 32);
  v14 = *(a2 + 48);
  *(v11 + 64) = *(a2 + 64);
  *(v11 + 32) = v13;
  *(v11 + 48) = v14;
  *(v11 + 16) = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void _ZN2re10FixedArrayIDv2_jE4initIJEEEvPNS_9AllocatorEmDpOT_(uint64_t *a1, uint64_t a2, unint64_t a3)
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

void re::ProbeWriteContext::~ProbeWriteContext(re::ProbeWriteContext *this)
{
  re::ProbeWriteContext::~ProbeWriteContext(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D051D0;
  v2 = *(this + 38);
  if (v2)
  {

    *(this + 38) = 0;
  }

  v3 = *(this + 37);
  if (v3)
  {

    *(this + 37) = 0;
  }

  v4 = *(this + 36);
  if (v4)
  {

    *(this + 36) = 0;
  }

  v5 = *(this + 35);
  if (v5)
  {

    *(this + 35) = 0;
  }

  v6 = *(this + 34);
  if (v6)
  {

    *(this + 34) = 0;
  }

  v7 = *(this + 33);
  if (v7)
  {

    *(this + 33) = 0;
  }

  if (*(this + 192) == 1)
  {
    re::FixedArray<CoreIKTransform>::deinit(this + 30);
    re::FixedArray<CoreIKTransform>::deinit(this + 27);
  }

  re::DynamicArray<unsigned long>::deinit(this + 152);
  re::DynamicArray<unsigned long>::deinit(this + 112);
}

uint64_t *_ZN2re10FixedArrayIDv2_jEC2ERKS2_(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    _ZN2re10FixedArrayIDv2_jE4initIJEEEvPNS_9AllocatorEmDpOT_(a1, v4, *(a2 + 8));
    re::FixedArray<unsigned long>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicArray<re::ProbeSpecularWorkload>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x44uLL))
        {
          v2 = 68 * a2;
          result = (*(*result + 32))(result, 68 * a2, 4);
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
            memcpy(v7, v5[4], 68 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 68, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::ProbeSpecularWorkload>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::Optional<re::ProbeManager::ProbeSlice>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Optional<re::ProbeManager::ProbeSlice>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA0uLL))
        {
          v2 = 160 * a2;
          result = (*(*result + 32))(result, 160 * a2, 16);
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
        v10 = v7 + 2;
        v11 = 160 * v9;
        v12 = (v8 + 16);
        do
        {
          v13 = *(v12 - 16);
          *(v10 - 16) = v13;
          if (v13 == 1)
          {
            *v10 = *v12;
            v14 = v12[1];
            v15 = v12[2];
            v16 = v12[4];
            v10[3] = v12[3];
            v10[4] = v16;
            v10[1] = v14;
            v10[2] = v15;
            v17 = v12[5];
            v18 = v12[6];
            v19 = v12[8];
            v10[7] = v12[7];
            v10[8] = v19;
            v10[5] = v17;
            v10[6] = v18;
          }

          v10 += 10;
          v12 += 10;
          v11 -= 160;
        }

        while (v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::Optional<re::ProbeManager::ProbeSlice>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::Optional<re::ProbeManager::ProbeSlice>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Optional<re::ProbeManager::ProbeSlice>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

int64x2_t re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::internalAdd(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::resize(a1, 1);
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
  v16 = (*(a1 + 8) + 16 * (v13 + 16 * v11));
  v17 = *a2;
  *v16 = *a2;
  v16[1] = *a3;
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
  result = vaddq_s64(*(a1 + 24), v19);
  *(a1 + 24) = result;
  v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27));
  *(a1 + 40) ^= (v21 >> 31) ^ v21;
  return result;
}

double re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::resize(uint64_t a1, int a2)
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

  return re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::doResize(a1, v3);
}

double re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::doResize(uint64_t a1, uint64_t a2)
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
        re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::internalAdd(v23, *(v21[0] + 8) + 16 * v13, *(v21[0] + 8) + 16 * v13 + 8, v10, v5);
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

void *re::DynamicArray<re::ProbeManager::ProbeAdd>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::ProbeManager::ProbeAdd>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ProbeManager::ProbeAdd>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::ProbeManager::ProbeAdd>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ProbeManager::ProbeAdd>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x50uLL))
        {
          v2 = 80 * a2;
          result = (*(*result + 32))(result, 80 * a2, 16);
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
        v10 = 80 * v9;
        v11 = v8 + 8;
        v12 = v7;
        do
        {
          v13 = *v11;
          *v12 = *(v11 - 8);
          v12[1] = v13;
          *v11 = 0;
          v14 = *(v11 + 8);
          v15 = *(v11 + 24);
          v16 = *(v11 + 40);
          *(v12 + 61) = *(v11 + 53);
          *(v12 + 2) = v15;
          *(v12 + 3) = v16;
          *(v12 + 1) = v14;
          if (*v11)
          {

            *v11 = 0;
          }

          v12 += 10;
          v11 += 80;
          v10 -= 80;
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

void *re::DynamicArray<re::ProbeManager::ProbeUpdate>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ProbeManager::ProbeUpdate>::setCapacity(v5, a2);
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
              goto LABEL_18;
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
        v10 = 24 * v9;
        v11 = v8 + 8;
        v12 = v7;
        do
        {
          v13 = *v11;
          *v12 = *(v11 - 8);
          v12[1] = v13;
          *v11 = 0;
          v14 = *(v11 + 8);
          *(v12 + 20) = *(v11 + 12);
          *(v12 + 4) = v14;
          if (*v11)
          {

            *v11 = 0;
          }

          v12 += 3;
          v11 += 24;
          v10 -= 24;
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

int64x2_t re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::internalAdd(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::resize(a1, 1u);
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
  v16 = *(a1 + 8) + 16 * (v13 + 16 * v11);
  v17 = *a2;
  *v16 = *a2;
  *(v16 + 8) = *a3;
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
  result = vaddq_s64(*(a1 + 24), v19);
  *(a1 + 24) = result;
  v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27));
  *(a1 + 40) ^= (v21 >> 31) ^ v21;
  return result;
}

double re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::resize(uint64_t a1, unsigned int a2)
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
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v28, v9, v4);
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
        re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::internalAdd(v28, *(v26[0] + 8) + 16 * v18, *(v26[0] + 8) + 16 * v18 + 8, v15, v10);
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
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v28);
}

__n128 std::__function::__func<void (re::ProbeManager::*)(long long),std::allocator<void (re::ProbeManager::*)(long long)>,void ()(re::ProbeManager&,long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D05210;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void (re::ProbeManager::*)(long long),std::allocator<void (re::ProbeManager::*)(long long)>,void ()(re::ProbeManager&,long long)>::operator()(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, *a3);
}

uint64_t std::__function::__func<void (re::ProbeManager::*)(long long),std::allocator<void (re::ProbeManager::*)(long long)>,void ()(re::ProbeManager&,long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::ProbeManager &,long long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(re::ProbeManager &,long long)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *re::DynamicArray<re::ProbeManager::SliceOperation>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ProbeManager::SliceOperation>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 8);
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
        v10 = (v7 + 2);
        v11 = v9 << 6;
        do
        {
          v12 = *(v8 + 8);
          *(v10 - 16) = *v8;
          *v8 = 0;
          *(v10 - 8) = v12;
          std::__function::__value_func<void ()(re::ProbeManager &,long long)>::__value_func[abi:nn200100](v10, v8 + 16);
          v13 = *(v8 + 48);
          *(v10 + 40) = *(v8 + 56);
          *(v10 + 32) = v13;
          std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](v8 + 16);
          if (*v8)
          {

            *v8 = 0;
          }

          v8 += 64;
          v10 += 64;
          v11 -= 64;
        }

        while (v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void ___ZN2re18PortalUserDefaults18maximumPortalCountEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::intValue("maximumPortalCount", a2, v4);
  if (v4[0] == 1 && (v5 & 0x80000000) == 0)
  {
    re::PortalUserDefaults::maximumPortalCount(void)::maximumPortalCount = v5;
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = re::PortalUserDefaults::maximumPortalCount(void)::maximumPortalCount;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "The maximum portal count is now %u.", buf, 8u);
  }
}

float ___ZN2re18PortalUserDefaults27portalLightingBlendDistanceEv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::floatValue("portalLightingBlendDistance", a2, v3);
  if (v3[0] == 1)
  {
    result = v4;
    re::PortalUserDefaults::portalLightingBlendDistance(void)::portalLightingBlendDistance = LODWORD(v4);
  }

  return result;
}

void ___ZN2re18PortalUserDefaults30enablePortalEmbeddedInMeshNodeEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("enablePortalEmbeddedInMeshNode", a2, v5);
  if (v5[0] == 1)
  {
    re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::enablePortalReorder = v5[1];
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::enablePortalReorder)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Portal embedded render is now %s", buf, 0xCu);
  }
}

uint64_t *re::introspect_MaterialParameterType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1B8938, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B8940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8940))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B8FB0, "MaterialParameterType", 1, 1, 1, 1);
      qword_1EE1B8FB0 = &unk_1F5D0C658;
      qword_1EE1B8FF0 = &re::introspect_MaterialParameterType(BOOL)::enumTable;
      dword_1EE1B8FC0 = 9;
      __cxa_guard_release(&qword_1EE1B8940);
    }

    if (v2)
    {
      if (_MergedGlobals_445)
      {
        return &qword_1EE1B8FB0;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v82);
      v3 = _MergedGlobals_445;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v82);
      if (v3)
      {
        return &qword_1EE1B8FB0;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (_MergedGlobals_445)
      {
        goto LABEL_46;
      }
    }

    _MergedGlobals_445 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B8FB0, a2);
    v79 = 0x713A1216588B58F8;
    v80 = "MaterialParameterType";
    v83 = 0x31CD534126;
    v84 = "uint8_t";
    v9 = v82[0];
    v10 = v82[1];
    if (v83)
    {
      if (v83)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v80);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE1B8938);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 1;
      *(v36 + 2) = "Float";
      qword_1EE18D968 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 32;
      *(v38 + 2) = "Vector2";
      qword_1EE18D970 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 33;
      *(v40 + 2) = "Vector3";
      qword_1EE18D978 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 34;
      *(v42 + 2) = "Vector4";
      qword_1EE18D980 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 48;
      *(v44 + 2) = "Matrix2x2";
      qword_1EE18D988 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 49;
      *(v46 + 2) = "Matrix3x3";
      qword_1EE18D990 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 50;
      *(v48 + 2) = "Matrix4x4";
      qword_1EE18D998 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 1) = 64;
      *(v50 + 2) = "Texture";
      qword_1EE18D9A0 = v50;
      v51 = re::introspectionAllocator(v50);
      v52 = (*(*v51 + 32))(v51, 24, 8);
      *v52 = 1;
      *(v52 + 1) = 128;
      *(v52 + 2) = "Buffer";
      qword_1EE18D9A8 = v52;
      v53 = re::introspectionAllocator(v52);
      v54 = (*(*v53 + 32))(v53, 24, 8);
      *v54 = 1;
      *(v54 + 1) = 192;
      *(v54 + 2) = "Sampler";
      qword_1EE18D9B0 = v54;
      v55 = re::introspectionAllocator(v54);
      v56 = (*(*v55 + 32))(v55, 24, 8);
      *v56 = 1;
      *(v56 + 1) = 0;
      *(v56 + 2) = "Invalid";
      qword_1EE18D9B8 = v56;
      v57 = re::introspectionAllocator(v56);
      v58 = (*(*v57 + 32))(v57, 24, 8);
      *v58 = 1;
      *(v58 + 1) = 2;
      *(v58 + 2) = "Bool";
      qword_1EE18D9C0 = v58;
      v59 = re::introspectionAllocator(v58);
      v60 = (*(*v59 + 32))(v59, 24, 8);
      *v60 = 1;
      *(v60 + 1) = 3;
      *(v60 + 2) = "Int";
      qword_1EE18D9C8 = v60;
      v61 = re::introspectionAllocator(v60);
      v62 = (*(*v61 + 32))(v61, 24, 8);
      *v62 = 1;
      *(v62 + 1) = 4;
      *(v62 + 2) = "Int2";
      qword_1EE18D9D0 = v62;
      v63 = re::introspectionAllocator(v62);
      v64 = (*(*v63 + 32))(v63, 24, 8);
      *v64 = 1;
      *(v64 + 1) = 5;
      *(v64 + 2) = "Int3";
      qword_1EE18D9D8 = v64;
      v65 = re::introspectionAllocator(v64);
      v66 = (*(*v65 + 32))(v65, 24, 8);
      *v66 = 1;
      *(v66 + 1) = 6;
      *(v66 + 2) = "Int4";
      qword_1EE18D9E0 = v66;
      v67 = re::introspectionAllocator(v66);
      v68 = (*(*v67 + 32))(v67, 24, 8);
      *v68 = 1;
      *(v68 + 1) = 7;
      *(v68 + 2) = "UInt";
      qword_1EE18D9E8 = v68;
      v69 = re::introspectionAllocator(v68);
      v70 = (*(*v69 + 32))(v69, 24, 8);
      *v70 = 1;
      *(v70 + 1) = 8;
      *(v70 + 2) = "UInt2";
      qword_1EE18D9F0 = v70;
      v71 = re::introspectionAllocator(v70);
      v72 = (*(*v71 + 32))(v71, 24, 8);
      *v72 = 1;
      *(v72 + 1) = 9;
      *(v72 + 2) = "UInt3";
      qword_1EE18D9F8 = v72;
      v73 = re::introspectionAllocator(v72);
      v74 = (*(*v73 + 32))(v73, 24, 8);
      *v74 = 1;
      *(v74 + 1) = 10;
      *(v74 + 2) = "UInt4";
      qword_1EE18DA00 = v74;
      v75 = re::introspectionAllocator(v74);
      v76 = (*(*v75 + 32))(v75, 24, 8);
      *v76 = 1;
      *(v76 + 1) = 20;
      *(v76 + 2) = "Color3";
      qword_1EE18DA08 = v76;
      v77 = re::introspectionAllocator(v76);
      v78 = (*(*v77 + 32))(v77, 24, 8);
      *v78 = 1;
      *(v78 + 8) = 21;
      *(v78 + 16) = "Color4";
      qword_1EE18DA10 = v78;
      __cxa_guard_release(&qword_1EE1B8938);
    }
  }

  v11 = qword_1EE1B8FF0;
  v83 = v9;
  v84 = v10;
  re::TypeBuilder::beginEnumType(v82, &v79, 1, 1, &v83);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v81.var0 = 2 * v16;
        v81.var1 = v15;
        re::TypeBuilder::addEnumConstant(v82, v20, &v81);
        if (*&v81.var0)
        {
          if (*&v81.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v81.var0 = 2 * v25;
          v81.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v82, v29, &v81);
          if (*&v81.var0)
          {
            if (*&v81.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v82, v31);
  xmmword_1EE1B8FD0 = v81;
  if (v79)
  {
    if (v79)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1B8FB0;
}

void re::introspect_MaterialTextureParam(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8948, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8948))
  {
    re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B9360, "MaterialTextureParam", 40, 8, 0, 0);
    qword_1EE1B9360 = &unk_1F5D0C698;
    qword_1EE1B93A0 = re::internal::defaultConstruct<re::MaterialTextureParam>;
    dword_1EE1B9370 = 11;
    __cxa_guard_release(&qword_1EE1B8948);
  }

  if ((byte_1EE1B8921 & 1) == 0)
  {
    byte_1EE1B8921 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B9360, a2);
    v3[0] = 0x8270B19F5FE36E32;
    v3[1] = "MaterialTextureParam";
    xmmword_1EE1B9380 = v4;
    if (v3[0])
    {
      if (v3[0])
      {
      }
    }
  }
}

void *re::internal::defaultConstruct<re::MaterialTextureParam>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  result = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0;
  return result;
}

uint64_t anonymous namespace::introspectionWalkerMember(_anonymous_namespace_ *this, uint64_t a2, const void *a3)
{
  if (!a2)
  {
    goto LABEL_9;
  }

  v3 = *(a2 + 32);
  if (!v3)
  {
    {
      v4 = &re::introspect<re::DynamicString>(BOOL)::info;
      return *v4;
    }

    v4 = &re::introspect<re::DynamicString>(BOOL)::info;
    v11 = &re::introspect<re::DynamicString>(BOOL)::info;
    if (!v9)
    {
      return *v4;
    }

    re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v10);
LABEL_14:
    __cxa_guard_release(v8);
    v4 = v11;
    return *v4;
  }

  if (v3 != 1)
  {
LABEL_9:
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Unexpected; MaterialTextureParam should be an AssetHandle or a DynamicString", "false", "introspectionWalkerMember", 53);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  {
LABEL_10:
    v4 = &re::introspect<re::AssetHandle>(BOOL)::info;
    v11 = &re::introspect<re::AssetHandle>(BOOL)::info;
    if (!v6)
    {
      return *v4;
    }

    re::introspect<re::AssetHandle>(BOOL)::info = re::introspect_AssetHandle(0, v7);
    goto LABEL_14;
  }

  v4 = &re::introspect<re::AssetHandle>(BOOL)::info;
  return *v4;
}

void *re::internal::defaultConstructV2<re::MaterialTextureParam>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = re::DynamicString::setCapacity(a1, 0);
  *(a1 + 32) = 0;
  return result;
}

unsigned int *re::internal::defaultDestructV2<re::MaterialTextureParam>(unsigned int *result)
{
  v1 = result;
  v2 = result[8];
  if (v2 != -1)
  {
    result = off_1F5D05328[v2](&v3, result);
  }

  v1[8] = -1;
  return result;
}

void *re::allocInfo_MaterialTextureBlockData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8950))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B94B0, "MaterialTextureBlockData");
    __cxa_guard_release(&qword_1EE1B8950);
  }

  return &unk_1EE1B94B0;
}

void re::initInfo_MaterialTextureBlockData(re *this, re::IntrospectionBase *a2)
{
  v22[0] = 0x9175FC30469124C6;
  v22[1] = "MaterialTextureBlockData";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1B8958, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B8958);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_MaterialTextureParam(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "texture";
      *(v8 + 16) = &qword_1EE1B9360;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1B8BC8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::DynamicString>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "sampler";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B8BD0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::DynamicString>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "samplerArray";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x4800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1B8BD8 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::IntrospectionInfo<re::Optional<unsigned int>>::get(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "uvIndex";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x6800000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1B8BE0 = v20;
      __cxa_guard_release(&qword_1EE1B8958);
    }
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B8BC8;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialTextureBlockData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialTextureBlockData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialTextureBlockData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialTextureBlockData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

void *re::internal::defaultConstruct<re::MaterialTextureBlockData>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 8) = 0;
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  v5 = re::DynamicString::setCapacity(v3 + 5, 0);
  *(v3 + 72) = 0u;
  v3 = (v3 + 72);
  v3[1] = 0u;
  result = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 32) = 0;
  return result;
}

void re::internal::defaultDestruct<re::MaterialTextureBlockData>(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  re::DynamicString::deinit((a3 + 18));
  v4 = re::DynamicString::deinit((a3 + 10));
  v5 = a3[8];
  if (v5 != -1)
  {
    (off_1F5D05328[v5])(&v6, a3, v4);
  }

  a3[8] = -1;
}

void *re::internal::defaultConstructV2<re::MaterialTextureBlockData>(_anonymous_namespace_ *a1)
{
  v1 = a1;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 8) = 0;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  v3 = re::DynamicString::setCapacity(v1 + 5, 0);
  *(v1 + 72) = 0u;
  v1 = (v1 + 72);
  *(v1 + 1) = 0u;
  result = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 32) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::MaterialTextureBlockData>(unsigned int *a1)
{
  re::DynamicString::deinit((a1 + 18));
  v2 = re::DynamicString::deinit((a1 + 10));
  v3 = a1[8];
  if (v3 != -1)
  {
    (off_1F5D05328[v3])(&v4, a1, v2);
  }

  a1[8] = -1;
}

void re::introspect_MaterialSamplerBaseType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8968, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B8970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8970))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B8FF8, "MaterialSamplerBaseType", 1, 1, 1, 1);
      qword_1EE1B8FF8 = &unk_1F5D0C658;
      qword_1EE1B9038 = &re::introspect_MaterialSamplerBaseType(BOOL)::enumTable;
      dword_1EE1B9008 = 9;
      __cxa_guard_release(&qword_1EE1B8970);
    }

    if (byte_1EE1B8922)
    {
      break;
    }

    byte_1EE1B8922 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B8FF8, a2);
    v51 = 0xDC7B28CF926F5B18;
    v52 = "MaterialSamplerBaseType";
    v55 = 0x31CD534126;
    v56 = "uint8_t";
    v4 = v54[0];
    v5 = v54[1];
    if (v55)
    {
      if (v55)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B9038;
      v55 = v4;
      v56 = v5;
      re::TypeBuilder::beginEnumType(v54, &v51, 1, 1, &v55);
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
            *&v53.var0 = 2 * v11;
            v53.var1 = v10;
            re::TypeBuilder::addEnumConstant(v54, v15, &v53);
            if (*&v53.var0)
            {
              if (*&v53.var0)
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
              *&v53.var0 = 2 * v20;
              v53.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v54, v24, &v53);
              if (*&v53.var0)
              {
                if (*&v53.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v54, v26);
      xmmword_1EE1B9018 = v53;
      if (v51)
      {
        if (v51)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v52);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1B8968);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Nearest";
      qword_1EE1B9308 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Bilinear";
      qword_1EE1B9310 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Trilinear";
      qword_1EE1B9318 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "Anisotropic4x";
      qword_1EE1B9320 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "NearestClamp";
      qword_1EE1B9328 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 5;
      *(v40 + 2) = "BilinearClamp";
      qword_1EE1B9330 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 6;
      *(v42 + 2) = "TrilinearClamp";
      qword_1EE1B9338 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 7;
      *(v44 + 2) = "NearestClampToZero";
      qword_1EE1B9340 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 8;
      *(v46 + 2) = "BilinearClampToZero";
      qword_1EE1B9348 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 9;
      *(v48 + 2) = "TrilinearClampToZero";
      qword_1EE1B9350 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 8) = 10;
      *(v50 + 16) = "SamplerBaseTypeCount";
      qword_1EE1B9358 = v50;
      __cxa_guard_release(&qword_1EE1B8968);
    }
  }
}

void *re::allocInfo_OptionalMaterialSamplerData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8978, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8978))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9540, "OptionalMaterialSamplerData");
    __cxa_guard_release(&qword_1EE1B8978);
  }

  return &unk_1EE1B9540;
}

void re::initInfo_OptionalMaterialSamplerData(re *this, re::IntrospectionBase *a2)
{
  v54[0] = 0x2A51EC199F473916;
  v54[1] = "OptionalMaterialSamplerData";
  if (v54[0])
  {
    if (v54[0])
    {
    }
  }

  *(this + 2) = v55;
  if ((atomic_load_explicit(&qword_1EE1B8980, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B8980);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "normalizedCoordinates";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x100000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B93D0 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::Optional<re::mtl::SamplerAddressMode>>::get(v10, v11);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "wrapR";
      *(v12 + 16) = &qword_1EE1B8CB0;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B93D8 = v12;
      v13 = re::introspectionAllocator(v12);
      re::IntrospectionInfo<re::Optional<re::mtl::SamplerAddressMode>>::get(v13, v14);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "wrapS";
      *(v15 + 16) = &qword_1EE1B8CB0;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1000000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1B93E0 = v15;
      v16 = re::introspectionAllocator(v15);
      re::IntrospectionInfo<re::Optional<re::mtl::SamplerAddressMode>>::get(v16, v17);
      v18 = (*(*v16 + 32))(v16, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "wrapT";
      *(v18 + 16) = &qword_1EE1B8CB0;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x1800000004;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1B93E8 = v18;
      v19 = re::introspectionAllocator(v18);
      re::IntrospectionInfo<re::Optional<re::mtl::SamplerBorderColor>>::get(v19, v20);
      v21 = (*(*v19 + 32))(v19, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "borderColor";
      *(v21 + 16) = &qword_1EE1B8CF0;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x2000000005;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B93F0 = v21;
      v22 = re::introspectionAllocator(v21);
      re::IntrospectionInfo<re::Optional<re::mtl::SamplerMinMagFilter>>::get(v22, v23);
      v24 = (*(*v22 + 32))(v22, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "minFilter";
      *(v24 + 16) = &qword_1EE1B8D30;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x2800000006;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1B93F8 = v24;
      v25 = re::introspectionAllocator(v24);
      re::IntrospectionInfo<re::Optional<re::mtl::SamplerMinMagFilter>>::get(v25, v26);
      v27 = (*(*v25 + 32))(v25, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "magFilter";
      *(v27 + 16) = &qword_1EE1B8D30;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x3000000007;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1B9400 = v27;
      v28 = re::introspectionAllocator(v27);
      re::IntrospectionInfo<re::Optional<re::mtl::SamplerMipFilter>>::get(v28, v29);
      v30 = (*(*v28 + 32))(v28, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "mipFilter";
      *(v30 + 16) = &qword_1EE1B8D70;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x3800000008;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE1B9408 = v30;
      v31 = re::introspectionAllocator(v30);
      v33 = re::IntrospectionInfo<re::Optional<float>>::get(1, v32);
      v34 = (*(*v31 + 32))(v31, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "minLOD";
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0x4800000009;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE1B9410 = v34;
      v35 = re::introspectionAllocator(v34);
      v37 = re::IntrospectionInfo<re::Optional<float>>::get(1, v36);
      v38 = (*(*v35 + 32))(v35, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "maxLOD";
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0x500000000ALL;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE1B9418 = v38;
      v39 = re::introspectionAllocator(v38);
      v41 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v40);
      v42 = (*(*v39 + 32))(v39, 72, 8);
      *v42 = 1;
      *(v42 + 8) = "useAverageLOD";
      *(v42 + 16) = v41;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0x30000000BLL;
      *(v42 + 40) = 0;
      *(v42 + 48) = 0;
      *(v42 + 56) = 0;
      *(v42 + 64) = 0;
      qword_1EE1B9420 = v42;
      v43 = re::introspectionAllocator(v42);
      v45 = re::IntrospectionInfo<re::Optional<unsigned long long>>::get(1, v44);
      v46 = (*(*v43 + 32))(v43, 72, 8);
      *v46 = 1;
      *(v46 + 8) = "maxAnisoSamples";
      *(v46 + 16) = v45;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0x580000000CLL;
      *(v46 + 40) = 0;
      *(v46 + 48) = 0;
      *(v46 + 56) = 0;
      *(v46 + 64) = 0;
      qword_1EE1B9428 = v46;
      v47 = re::introspectionAllocator(v46);
      re::IntrospectionInfo<re::Optional<re::mtl::SamplerCompareFunction>>::get(v47, v48);
      v49 = (*(*v47 + 32))(v47, 72, 8);
      *v49 = 1;
      *(v49 + 8) = "compareFunction";
      *(v49 + 16) = &qword_1EE1B8DB0;
      *(v49 + 24) = 0;
      *(v49 + 32) = 0x400000000DLL;
      *(v49 + 40) = 0;
      *(v49 + 48) = 0;
      *(v49 + 56) = 0;
      *(v49 + 64) = 0;
      qword_1EE1B9430 = v49;
      v50 = re::introspectionAllocator(v49);
      re::introspect_MaterialSamplerBaseType(v50, v51);
      v52 = (*(*v50 + 32))(v50, 72, 8);
      *v52 = 1;
      *(v52 + 8) = "baseFilter";
      *(v52 + 16) = &qword_1EE1B8FF8;
      *(v52 + 24) = 0;
      *(v52 + 32) = 14;
      *(v52 + 40) = 0;
      *(v52 + 48) = 0;
      *(v52 + 56) = 0;
      *(v52 + 64) = 0;
      qword_1EE1B9438 = v52;
      __cxa_guard_release(&qword_1EE1B8980);
    }
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 14;
  *(this + 8) = &qword_1EE1B93D0;
  *(this + 9) = re::internal::defaultConstruct<re::OptionalMaterialSamplerData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::OptionalMaterialSamplerData>;
  *(this + 13) = re::internal::defaultConstructV2<re::OptionalMaterialSamplerData>;
  *(this + 14) = re::internal::defaultDestructV2<re::OptionalMaterialSamplerData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v53 = v55;
}

void re::IntrospectionInfo<re::Optional<re::mtl::SamplerAddressMode>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8AC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8AC8))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1B8CB0);
    qword_1EE1B8CB0 = &unk_1F5D05348;
    __cxa_guard_release(&qword_1EE1B8AC8);
  }

  if ((byte_1EE1B8924 & 1) == 0)
  {
    v2 = re::mtl::introspect_SamplerAddressMode(1, a2);
    if ((byte_1EE1B8924 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1B8924 = 1;
      v4 = *(v2 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8CB0, 0);
      qword_1EE1B8CC0 = 0x80000000DLL;
      dword_1EE1B8CC8 = v4;
      word_1EE1B8CCC = 0;
      *&xmmword_1EE1B8CD0 = 0;
      *(&xmmword_1EE1B8CD0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8CE0 = v3;
      qword_1EE1B8CE8 = 0;
      qword_1EE1B8CB0 = &unk_1F5D05348;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE1B8CB0, &v14);
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
        re::TypeBuilder::beginOptionalType(&v14, &v12, 8uLL, 4uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerAddressMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerAddressMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1B8CD0 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::Optional<re::mtl::SamplerBorderColor>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8AD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8AD0))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1B8CF0);
    qword_1EE1B8CF0 = &unk_1F5D053C8;
    __cxa_guard_release(&qword_1EE1B8AD0);
  }

  if ((byte_1EE1B8925 & 1) == 0)
  {
    v2 = re::mtl::introspect_SamplerBorderColor(1, a2);
    if ((byte_1EE1B8925 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1B8925 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8CF0, 0);
      qword_1EE1B8D00 = 0x80000000DLL;
      dword_1EE1B8D08 = v4;
      word_1EE1B8D0C = 0;
      *&xmmword_1EE1B8D10 = 0;
      *(&xmmword_1EE1B8D10 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8D20 = v3;
      qword_1EE1B8D28 = 0;
      qword_1EE1B8CF0 = &unk_1F5D053C8;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE1B8CF0, &v14);
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
        re::TypeBuilder::beginOptionalType(&v14, &v12, 8uLL, 4uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerBorderColor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerBorderColor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1B8D10 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::Optional<re::mtl::SamplerMinMagFilter>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8AD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8AD8))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1B8D30);
    qword_1EE1B8D30 = &unk_1F5D05448;
    __cxa_guard_release(&qword_1EE1B8AD8);
  }

  if ((byte_1EE1B8926 & 1) == 0)
  {
    v2 = re::mtl::introspect_SamplerMinMagFilter(1, a2);
    if ((byte_1EE1B8926 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1B8926 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8D30, 0);
      qword_1EE1B8D40 = 0x80000000DLL;
      dword_1EE1B8D48 = v4;
      word_1EE1B8D4C = 0;
      *&xmmword_1EE1B8D50 = 0;
      *(&xmmword_1EE1B8D50 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8D60 = v3;
      qword_1EE1B8D68 = 0;
      qword_1EE1B8D30 = &unk_1F5D05448;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE1B8D30, &v14);
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
        re::TypeBuilder::beginOptionalType(&v14, &v12, 8uLL, 4uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerMinMagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerMinMagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1B8D50 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::Optional<re::mtl::SamplerMipFilter>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8AE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8AE0))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1B8D70);
    qword_1EE1B8D70 = &unk_1F5D054C8;
    __cxa_guard_release(&qword_1EE1B8AE0);
  }

  if ((byte_1EE1B8927 & 1) == 0)
  {
    v2 = re::mtl::introspect_SamplerMipFilter(1, a2);
    if ((byte_1EE1B8927 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1B8927 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8D70, 0);
      qword_1EE1B8D80 = 0x80000000DLL;
      dword_1EE1B8D88 = v4;
      word_1EE1B8D8C = 0;
      *&xmmword_1EE1B8D90 = 0;
      *(&xmmword_1EE1B8D90 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8DA0 = v3;
      qword_1EE1B8DA8 = 0;
      qword_1EE1B8D70 = &unk_1F5D054C8;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE1B8D70, &v14);
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
        re::TypeBuilder::beginOptionalType(&v14, &v12, 8uLL, 4uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerMipFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerMipFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1B8D90 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::Optional<re::mtl::SamplerCompareFunction>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8AE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8AE8))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1B8DB0);
    qword_1EE1B8DB0 = &unk_1F5D05548;
    __cxa_guard_release(&qword_1EE1B8AE8);
  }

  if ((byte_1EE1B8928 & 1) == 0)
  {
    v2 = re::mtl::introspect_SamplerCompareFunction(1, a2);
    if ((byte_1EE1B8928 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1B8928 = 1;
      v4 = *(v2 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8DB0, 0);
      qword_1EE1B8DC0 = 0x80000000DLL;
      dword_1EE1B8DC8 = v4;
      word_1EE1B8DCC = 0;
      *&xmmword_1EE1B8DD0 = 0;
      *(&xmmword_1EE1B8DD0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8DE0 = v3;
      qword_1EE1B8DE8 = 0;
      qword_1EE1B8DB0 = &unk_1F5D05548;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE1B8DB0, &v14);
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
        re::TypeBuilder::beginOptionalType(&v14, &v12, 8uLL, 4uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerCompareFunction>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::mtl::SamplerCompareFunction>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1B8DD0 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::OptionalMaterialSamplerData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 10;
  *(a3 + 3) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
}

uint64_t re::internal::defaultConstructV2<re::OptionalMaterialSamplerData>(uint64_t result)
{
  *result = 10;
  *(result + 3) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  return result;
}

void *re::allocInfo_DebugMapping(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8990))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B95D0, "DebugMapping");
    __cxa_guard_release(&qword_1EE1B8990);
  }

  return &unk_1EE1B95D0;
}

void re::initInfo_DebugMapping(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x3253EF60E3187636;
  v14[1] = "DebugMapping";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1B8998, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B8998);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
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
      qword_1EE1B8B60 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v10, v11);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "mappings";
      *(v12 + 16) = &qword_1EE1B90D8;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B8B68 = v12;
      __cxa_guard_release(&qword_1EE1B8998);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B8B60;
  *(this + 9) = re::internal::defaultConstruct<re::DebugMapping>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DebugMapping>;
  *(this + 13) = re::internal::defaultConstructV2<re::DebugMapping>;
  *(this + 14) = re::internal::defaultDestructV2<re::DebugMapping>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8AF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8AF0))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1B90D8);
    qword_1EE1B90D8 = &unk_1F5D055C8;
    __cxa_guard_release(&qword_1EE1B8AF0);
  }

  if ((byte_1EE1B8929 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v4 = re::introspect_int(1, v3);
    if ((byte_1EE1B8929 & 1) == 0)
    {
      v5 = v4;
      byte_1EE1B8929 = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1B90D8, 0);
      qword_1EE1B90E8 = 0x3000000007;
      dword_1EE1B90F0 = v6;
      word_1EE1B90F4 = 0;
      *&xmmword_1EE1B90F8 = 0;
      *(&xmmword_1EE1B90F8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B9108 = v2;
      qword_1EE1B9110 = 0;
      qword_1EE1B9118 = v5;
      qword_1EE1B9120 = 0;
      qword_1EE1B90D8 = &unk_1F5D055C8;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1B90D8, &v23);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1B90F8 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::DebugMapping>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  re::DynamicString::setCapacity(a3, 0);
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a3 + 68) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultDestruct<re::DebugMapping>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 4);

  return re::DynamicString::deinit(a3);
}

double re::internal::defaultConstructV2<re::DebugMapping>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a1 + 68) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultDestructV2<re::DebugMapping>(uint64_t *a1)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 4);

  return re::DynamicString::deinit(a1);
}

void *re::allocInfo_OptionalMaterialParameterProperties(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B89A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B89A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9660, "OptionalMaterialParameterProperties");
    __cxa_guard_release(&qword_1EE1B89A8);
  }

  return &unk_1EE1B9660;
}

void re::initInfo_OptionalMaterialParameterProperties(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xEC26075C392FA2EALL;
  v15[1] = "OptionalMaterialParameterProperties";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1B89B0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B89B0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "displayName";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B8B70 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "isHidden";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B8B78 = v13;
      __cxa_guard_release(&qword_1EE1B89B0);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B8B70;
  *(this + 9) = re::internal::defaultConstruct<re::OptionalMaterialParameterProperties>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::OptionalMaterialParameterProperties>;
  *(this + 13) = re::internal::defaultConstructV2<re::OptionalMaterialParameterProperties>;
  *(this + 14) = re::internal::defaultDestructV2<re::OptionalMaterialParameterProperties>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

double re::internal::defaultDestruct<re::OptionalMaterialParameterProperties>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3 == 1)
  {
    return re::DynamicString::deinit((a3 + 8));
  }

  return result;
}

_BYTE *re::internal::defaultConstructV2<re::OptionalMaterialParameterProperties>(_BYTE *result)
{
  *result = 0;
  result[40] = 0;
  return result;
}

double re::internal::defaultDestructV2<re::OptionalMaterialParameterProperties>(_BYTE *a1)
{
  if (*a1 == 1)
  {
    return re::DynamicString::deinit((a1 + 8));
  }

  return result;
}

void *re::allocInfo_MaterialShaderData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B89C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B89C0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B96F0, "MaterialShaderData");
    __cxa_guard_release(&qword_1EE1B89C0);
  }

  return &unk_1EE1B96F0;
}

void re::initInfo_MaterialShaderData(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xCBEC3AED4BA4B3ACLL;
  v15[1] = "MaterialShaderData";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1B89C8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B89C8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_AssetHandle(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "library";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B8B80 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "entry";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B8B88 = v13;
      __cxa_guard_release(&qword_1EE1B89C8);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B8B80;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialShaderData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialShaderData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialShaderData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialShaderData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::internal::defaultConstruct<re::MaterialShaderData>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;

  return re::DynamicString::setCapacity((a3 + 24), 0);
}

void re::internal::defaultDestruct<re::MaterialShaderData>(int a1, int a2, re::DynamicString *this)
{
  v4 = (this + 24);
  if (*(this + 3))
  {
    re::DynamicString::deinit((this + 24));
  }

  re::DynamicString::deinit(v4);

  re::AssetHandle::~AssetHandle(this);
}

void *re::internal::defaultConstructV2<re::MaterialShaderData>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;

  return re::DynamicString::setCapacity((a1 + 24), 0);
}

void re::internal::defaultDestructV2<re::MaterialShaderData>(re::DynamicString *this)
{
  v2 = (this + 24);
  if (*(this + 3))
  {
    re::DynamicString::deinit((this + 24));
  }

  re::DynamicString::deinit(v2);

  re::AssetHandle::~AssetHandle(this);
}

void *re::allocInfo_RenderAttachmentState(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B89D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B89D8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9780, "RenderAttachmentState");
    __cxa_guard_release(&qword_1EE1B89D8);
  }

  return &unk_1EE1B9780;
}

void re::initInfo_RenderAttachmentState(re *this, re::IntrospectionBase *a2)
{
  v45[0] = 0xA6BA137CEBA0C130;
  v45[1] = "RenderAttachmentState";
  if (v45[0])
  {
    if (v45[0])
    {
    }
  }

  *(this + 2) = v46;
  if ((atomic_load_explicit(&qword_1EE1B89E0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B89E0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_BOOL(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "alphaBlend";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B9088 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_BOOL(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "preferProgrammableBlending";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x100000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B9090 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 5;
      *(v15 + 1) = "programmableBlending";
      *(v15 + 2) = "preferProgrammableBlending";
      qword_1EE1B9098 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::mtl::introspect_BlendFactor(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "rgbSourceFactor";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x400000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1B90A0 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::mtl::introspect_BlendFactor(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "rgbDestinationFactor";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x800000004;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1B90A8 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::mtl::introspect_BlendOperation(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "rgbBlendOperation";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0xC00000005;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1B90B0 = v27;
      v28 = re::introspectionAllocator(v27);
      v30 = re::mtl::introspect_BlendFactor(1, v29);
      v31 = (*(*v28 + 32))(v28, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "alphaSourceFactor";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x1000000006;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE1B90B8 = v31;
      v32 = re::introspectionAllocator(v31);
      v34 = re::mtl::introspect_BlendFactor(1, v33);
      v35 = (*(*v32 + 32))(v32, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "alphaDestinationFactor";
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x1400000007;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE1B90C0 = v35;
      v36 = re::introspectionAllocator(v35);
      v38 = re::mtl::introspect_BlendOperation(1, v37);
      v39 = (*(*v36 + 32))(v36, 72, 8);
      *v39 = 1;
      *(v39 + 8) = "alphaBlendOperation";
      *(v39 + 16) = v38;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0x1800000008;
      *(v39 + 40) = 0;
      *(v39 + 48) = 0;
      *(v39 + 56) = 0;
      *(v39 + 64) = 0;
      qword_1EE1B90C8 = v39;
      v40 = re::introspectionAllocator(v39);
      v42 = re::mtl::introspect_ColorWriteMask(1, v41);
      v43 = (*(*v40 + 32))(v40, 72, 8);
      *v43 = 1;
      *(v43 + 8) = "colorWriteMask";
      *(v43 + 16) = v42;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0x1C00000009;
      *(v43 + 40) = 0;
      *(v43 + 48) = 0;
      *(v43 + 56) = 0;
      *(v43 + 64) = 0;
      qword_1EE1B90D0 = v43;
      __cxa_guard_release(&qword_1EE1B89E0);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE1B9088;
  *(this + 9) = re::internal::defaultConstruct<re::RenderAttachmentState>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderAttachmentState>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderAttachmentState>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderAttachmentState>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v44 = v46;
}

double re::internal::defaultConstruct<re::RenderAttachmentState>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 4) = xmmword_1E30A1FE0;
  *&result = 5;
  *(a3 + 20) = 5;
  *(a3 + 28) = 15;
  return result;
}

double re::internal::defaultConstructV2<re::RenderAttachmentState>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = xmmword_1E30A1FE0;
  *&result = 5;
  *(a1 + 20) = 5;
  *(a1 + 28) = 15;
  return result;
}

void *re::allocInfo_TechniqueState(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B89F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B89F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9810, "TechniqueState");
    __cxa_guard_release(&qword_1EE1B89F0);
  }

  return &unk_1EE1B9810;
}

void re::initInfo_TechniqueState(re *this, re::IntrospectionBase *a2)
{
  v81[0] = 0x49118B545AE53882;
  v81[1] = "TechniqueState";
  if (v81[0])
  {
    if (v81[0])
    {
    }
  }

  *(this + 2) = v82;
  if ((atomic_load_explicit(&qword_1EE1B89F8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B89F8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_BOOL(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "alphaBlend";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE18D838 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_BOOL(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "writeDepth";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x200000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18D840 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_uint8_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "stencilReferenceValue";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x600000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE18D848 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::mtl::introspect_CompareFunction(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "depthCompareFunction";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xA00000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE18D850 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::mtl::introspect_BlendFactor(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "rgbSourceFactor";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0xC00000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE18D858 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::mtl::introspect_BlendFactor(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "rgbDestinationFactor";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x1000000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE18D860 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::mtl::introspect_BlendOperation(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "rgbBlendOperation";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x1400000007;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE18D868 = v33;
      v34 = re::introspectionAllocator(v33);
      v36 = re::mtl::introspect_BlendFactor(1, v35);
      v37 = (*(*v34 + 32))(v34, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "alphaSourceFactor";
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x1800000008;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE18D870 = v37;
      v38 = re::introspectionAllocator(v37);
      v40 = re::mtl::introspect_BlendFactor(1, v39);
      v41 = (*(*v38 + 32))(v38, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "alphaDestinationFactor";
      *(v41 + 16) = v40;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x1C00000009;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE18D878 = v41;
      v42 = re::introspectionAllocator(v41);
      v44 = re::mtl::introspect_BlendOperation(1, v43);
      v45 = (*(*v42 + 32))(v42, 72, 8);
      *v45 = 1;
      *(v45 + 8) = "alphaBlendOperation";
      *(v45 + 16) = v44;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0x200000000ALL;
      *(v45 + 40) = 0;
      *(v45 + 48) = 0;
      *(v45 + 56) = 0;
      *(v45 + 64) = 0;
      qword_1EE18D880 = v45;
      v46 = re::introspectionAllocator(v45);
      v48 = re::introspect_BOOL(1, v47);
      v49 = (*(*v46 + 32))(v46, 72, 8);
      *v49 = 1;
      *(v49 + 8) = "alphaToCoverage";
      *(v49 + 16) = v48;
      *(v49 + 24) = 0;
      *(v49 + 32) = 0x30000000BLL;
      *(v49 + 40) = 0;
      *(v49 + 48) = 0;
      *(v49 + 56) = 0;
      *(v49 + 64) = 0;
      qword_1EE18D888 = v49;
      v50 = re::introspectionAllocator(v49);
      v52 = re::introspect_BOOL(1, v51);
      v53 = (*(*v50 + 32))(v50, 72, 8);
      *v53 = 1;
      *(v53 + 8) = "alphaToOne";
      *(v53 + 16) = v52;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0x40000000CLL;
      *(v53 + 40) = 0;
      *(v53 + 48) = 0;
      *(v53 + 56) = 0;
      *(v53 + 64) = 0;
      qword_1EE18D890 = v53;
      v54 = re::introspectionAllocator(v53);
      v56 = re::mtl::introspect_ColorWriteMask(1, v55);
      v57 = (*(*v54 + 32))(v54, 72, 8);
      *v57 = 1;
      *(v57 + 8) = "colorWriteMask";
      *(v57 + 16) = v56;
      *(v57 + 24) = 0;
      *(v57 + 32) = 0x240000000DLL;
      *(v57 + 40) = 0;
      *(v57 + 48) = 0;
      *(v57 + 56) = 0;
      *(v57 + 64) = 0;
      qword_1EE18D898 = v57;
      v58 = re::introspectionAllocator(v57);
      re::IntrospectionInfo<re::DynamicArray<re::RenderAttachmentState>>::get(v58);
      v59 = (*(*v58 + 32))(v58, 72, 8);
      *v59 = 1;
      *(v59 + 8) = "renderAttachmentState";
      *(v59 + 16) = &qword_1EE1B8DF0;
      *(v59 + 24) = 0;
      *(v59 + 32) = 0x380000000ELL;
      *(v59 + 40) = 0;
      *(v59 + 48) = 0;
      *(v59 + 56) = 0;
      *(v59 + 64) = 0;
      qword_1EE18D8A0 = v59;
      v60 = re::introspectionAllocator(v59);
      v62 = re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(1, v61);
      v63 = (*(*v60 + 32))(v60, 72, 8);
      *v63 = 1;
      *(v63 + 8) = "cullMode";
      *(v63 + 16) = v62;
      *(v63 + 24) = 0;
      *(v63 + 32) = 0x340000000FLL;
      *(v63 + 40) = 0;
      *(v63 + 48) = 0;
      *(v63 + 56) = 0;
      *(v63 + 64) = 0;
      qword_1EE18D8A8 = v63;
      v64 = re::introspectionAllocator(v63);
      v66 = re::introspect_float(1, v65);
      v67 = (*(*v64 + 32))(v64, 72, 8);
      *v67 = 1;
      *(v67 + 8) = "depthBias";
      *(v67 + 16) = v66;
      *(v67 + 24) = 0;
      *(v67 + 32) = 0x2800000010;
      *(v67 + 40) = 0;
      *(v67 + 48) = 0;
      *(v67 + 56) = 0;
      *(v67 + 64) = 0;
      qword_1EE18D8B0 = v67;
      v68 = re::introspectionAllocator(v67);
      v70 = re::introspect_float(1, v69);
      v71 = (*(*v68 + 32))(v68, 72, 8);
      *v71 = 1;
      *(v71 + 8) = "depthSlopeScale";
      *(v71 + 16) = v70;
      *(v71 + 24) = 0;
      *(v71 + 32) = 0x2C00000011;
      *(v71 + 40) = 0;
      *(v71 + 48) = 0;
      *(v71 + 56) = 0;
      *(v71 + 64) = 0;
      qword_1EE18D8B8 = v71;
      v72 = re::introspectionAllocator(v71);
      v74 = re::introspect_float(1, v73);
      v75 = (*(*v72 + 32))(v72, 72, 8);
      *v75 = 1;
      *(v75 + 8) = "depthClamp";
      *(v75 + 16) = v74;
      *(v75 + 24) = 0;
      *(v75 + 32) = 0x3000000012;
      *(v75 + 40) = 0;
      *(v75 + 48) = 0;
      *(v75 + 56) = 0;
      *(v75 + 64) = 0;
      qword_1EE18D8C0 = v75;
      v76 = re::introspectionAllocator(v75);
      v78 = re::introspect_BOOL(1, v77);
      v79 = (*(*v76 + 32))(v76, 72, 8);
      *v79 = 1;
      *(v79 + 8) = "preferProgrammableBlending";
      *(v79 + 16) = v78;
      *(v79 + 24) = 0;
      *(v79 + 32) = 0x100000013;
      *(v79 + 40) = 0;
      *(v79 + 48) = 0;
      *(v79 + 56) = 0;
      *(v79 + 64) = 0;
      qword_1EE18D8C8 = v79;
      __cxa_guard_release(&qword_1EE1B89F8);
    }
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 19;
  *(this + 8) = &qword_1EE18D838;
  *(this + 9) = re::internal::defaultConstruct<re::TechniqueState>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TechniqueState>;
  *(this + 13) = re::internal::defaultConstructV2<re::TechniqueState>;
  *(this + 14) = re::internal::defaultDestructV2<re::TechniqueState>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v80 = v82;
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderAttachmentState>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B8AF8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B8AF8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1B8DF0);
      qword_1EE1B8DF0 = &unk_1F5D05668;
      __cxa_guard_release(&qword_1EE1B8AF8);
    }
  }

  if ((byte_1EE1B892A & 1) == 0)
  {
    v1 = qword_1EE1B89E8;
    if (qword_1EE1B89E8 || (v1 = re::allocInfo_RenderAttachmentState(a1), qword_1EE1B89E8 = v1, re::initInfo_RenderAttachmentState(v1, v2), (byte_1EE1B892A & 1) == 0))
    {
      byte_1EE1B892A = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8DF0, 0);
      qword_1EE1B8E00 = 0x2800000003;
      dword_1EE1B8E08 = v3;
      word_1EE1B8E0C = 0;
      *&xmmword_1EE1B8E10 = 0;
      *(&xmmword_1EE1B8E10 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8E20 = v1;
      qword_1EE1B8E28 = 0;
      qword_1EE1B8DF0 = &unk_1F5D05668;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1B8DF0, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1B8E10 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::TechniqueState>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0xFFFF000100010000;
  *(a3 + 8) = 1792;
  *(a3 + 10) = 4;
  *(a3 + 12) = xmmword_1E30A1FE0;
  *&result = 5;
  *(a3 + 28) = 5;
  *(a3 + 36) = 15;
  *(a3 + 88) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 56) = 0;
  *(a3 + 80) = 0;
  *(a3 + 40) = 0;
  *(a3 + 45) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::TechniqueState>(uint64_t a1)
{
  *a1 = 0xFFFF000100010000;
  *(a1 + 8) = 1792;
  *(a1 + 10) = 4;
  *(a1 + 12) = xmmword_1E30A1FE0;
  *&result = 5;
  *(a1 + 28) = 5;
  *(a1 + 36) = 15;
  *(a1 + 88) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 40) = 0;
  *(a1 + 45) = 0;
  return result;
}

void *re::allocInfo_MaterialTechniqueData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8A08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&_MergedGlobals_266, "MaterialTechniqueData");
    __cxa_guard_release(&qword_1EE1B8A08);
  }

  return &_MergedGlobals_266;
}

void re::initInfo_MaterialTechniqueData(re *this, re::IntrospectionBase *a2)
{
  v86[0] = 0xCB28E91752B24826;
  v86[1] = "MaterialTechniqueData";
  if (v86[0])
  {
    if (v86[0])
    {
    }
  }

  *(this + 2) = v87;
  if ((atomic_load_explicit(&qword_1EE1B8A10, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B8A10);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
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
      qword_1EE18D8D0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_AssetHandle(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "library";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x4000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18D8D8 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = v14;
      v16 = qword_1EE1B89D0;
      if (!qword_1EE1B89D0)
      {
        v16 = re::allocInfo_MaterialShaderData(v14);
        qword_1EE1B89D0 = v16;
        re::initInfo_MaterialShaderData(v16, v17);
      }

      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "vertexShader";
      *(v18 + 16) = v16;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x5800000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE18D8E0 = v18;
      v19 = re::introspectionAllocator(v18);
      v20 = v19;
      v21 = qword_1EE1B89D0;
      if (!qword_1EE1B89D0)
      {
        v21 = re::allocInfo_MaterialShaderData(v19);
        qword_1EE1B89D0 = v21;
        re::initInfo_MaterialShaderData(v21, v22);
      }

      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "pixelShader";
      *(v23 + 16) = v21;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x9000000004;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE18D8E8 = v23;
      v24 = re::introspectionAllocator(v23);
      v25 = v24;
      v26 = qword_1EE1B8A00;
      if (!qword_1EE1B8A00)
      {
        v26 = re::allocInfo_TechniqueState(v24);
        qword_1EE1B8A00 = v26;
        re::initInfo_TechniqueState(v26, v27);
      }

      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "state";
      *(v28 + 16) = v26;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0xC800000005;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE18D8F0 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::IntrospectionInfo<re::DynamicString>::get(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "debugMapping";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x12800000006;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE18D8F8 = v32;
      v33 = re::introspectionAllocator(v32);
      v35 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v34);
      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "functionConstants";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x14800000007;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE18D900 = v36;
      v37 = re::introspectionAllocator(v36);
      v39 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v38);
      v40 = (*(*v37 + 32))(v37, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "variations";
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x17800000008;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE18D908 = v40;
      v41 = re::introspectionAllocator(v40);
      v43 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v42);
      v44 = (*(*v41 + 32))(v41, 72, 8);
      *v44 = 1;
      *(v44 + 8) = "defaultVariations";
      *(v44 + 16) = v43;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0x1A800000009;
      *(v44 + 40) = 0;
      *(v44 + 48) = 0;
      *(v44 + 56) = 0;
      *(v44 + 64) = 0;
      qword_1EE18D910 = v44;
      v45 = re::introspectionAllocator(v44);
      v47 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v46);
      v48 = (*(*v45 + 32))(v45, 72, 8);
      *v48 = 1;
      *(v48 + 8) = "tags";
      *(v48 + 16) = v47;
      *(v48 + 24) = 0;
      *(v48 + 32) = 0x1D00000000ALL;
      *(v48 + 40) = 0;
      *(v48 + 48) = 0;
      *(v48 + 56) = 0;
      *(v48 + 64) = 0;
      qword_1EE18D918 = v48;
      v49 = re::introspectionAllocator(v48);
      v51 = re::introspect_BOOL(1, v50);
      v52 = (*(*v49 + 32))(v49, 72, 8);
      *v52 = 1;
      *(v52 + 8) = "inheritState";
      *(v52 + 16) = v51;
      *(v52 + 24) = 0;
      *(v52 + 32) = 0x2280000000BLL;
      *(v52 + 40) = 0;
      *(v52 + 48) = 0;
      *(v52 + 56) = 0;
      *(v52 + 64) = 0;
      qword_1EE18D920 = v52;
      v53 = re::introspectionAllocator(v52);
      v55 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v54);
      v56 = (*(*v53 + 32))(v53, 72, 8);
      *v56 = 1;
      *(v56 + 8) = "instancedArguments";
      *(v56 + 16) = v55;
      *(v56 + 24) = 0;
      *(v56 + 32) = 0x2000000000CLL;
      *(v56 + 40) = 0;
      *(v56 + 48) = 0;
      *(v56 + 56) = 0;
      *(v56 + 64) = 0;
      qword_1EE18D928 = v56;
      v57 = re::introspectionAllocator(v56);
      v59 = re::introspect_BOOL(1, v58);
      v60 = (*(*v57 + 32))(v57, 72, 8);
      *v60 = 1;
      *(v60 + 8) = "supportsRuntimeFunctionConstants";
      *(v60 + 16) = v59;
      *(v60 + 24) = 0;
      *(v60 + 32) = 0x2290000000DLL;
      *(v60 + 40) = 0;
      *(v60 + 48) = 0;
      *(v60 + 56) = 0;
      *(v60 + 64) = 0;
      qword_1EE18D930 = v60;
      v61 = re::introspectionAllocator(v60);
      v63 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v62);
      v64 = (*(*v61 + 32))(v61, 72, 8);
      *v64 = 1;
      *(v64 + 8) = "runtimeFunctionConstantDefaults";
      *(v64 + 16) = v63;
      *(v64 + 24) = 0;
      *(v64 + 32) = 0x2300000000ELL;
      *(v64 + 40) = 0;
      *(v64 + 48) = 0;
      *(v64 + 56) = 0;
      *(v64 + 64) = 0;
      qword_1EE18D938 = v64;
      v65 = re::introspectionAllocator(v64);
      v67 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v66);
      v68 = (*(*v65 + 32))(v65, 72, 8);
      *v68 = 1;
      *(v68 + 8) = "preloadOptions";
      *(v68 + 16) = v67;
      *(v68 + 24) = 0;
      *(v68 + 32) = 0x2600000000FLL;
      *(v68 + 40) = 0;
      *(v68 + 48) = 0;
      *(v68 + 56) = 0;
      *(v68 + 64) = 0;
      qword_1EE18D940 = v68;
      v69 = re::introspectionAllocator(v68);
      v71 = re::IntrospectionInfo<re::DynamicString>::get(1, v70);
      v72 = (*(*v69 + 32))(v69, 72, 8);
      *v72 = 1;
      *(v72 + 8) = "inheritFromTechnique";
      *(v72 + 16) = v71;
      *(v72 + 24) = 0;
      *(v72 + 32) = 0x2000000010;
      *(v72 + 40) = 0;
      *(v72 + 48) = 0;
      *(v72 + 56) = 0;
      *(v72 + 64) = 0;
      qword_1EE18D948 = v72;
      v73 = re::introspectionAllocator(v72);
      v75 = re::introspect_BOOL(1, v74);
      v76 = (*(*v73 + 32))(v73, 72, 8);
      *v76 = 1;
      *(v76 + 8) = "useDynamicAttributeStride";
      *(v76 + 16) = v75;
      *(v76 + 24) = 0;
      *(v76 + 32) = 0x29000000011;
      *(v76 + 40) = 0;
      *(v76 + 48) = 0;
      *(v76 + 56) = 0;
      *(v76 + 64) = 0;
      qword_1EE18D950 = v76;
      v77 = re::introspectionAllocator(v76);
      v79 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v78);
      v80 = (*(*v77 + 32))(v77, 72, 8);
      *v80 = 1;
      *(v80 + 8) = "allowRuntimeTechniqueStateOverride";
      *(v80 + 16) = v79;
      *(v80 + 24) = 0;
      *(v80 + 32) = 0x29100000012;
      *(v80 + 40) = 0;
      *(v80 + 48) = 0;
      *(v80 + 56) = 0;
      *(v80 + 64) = 0;
      qword_1EE18D958 = v80;
      v81 = re::introspectionAllocator(v80);
      v83 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v82);
      v84 = (*(*v81 + 32))(v81, 72, 8);
      *v84 = 1;
      *(v84 + 8) = "isPrecompiled";
      *(v84 + 16) = v83;
      *(v84 + 24) = 0;
      *(v84 + 32) = 0x29300000013;
      *(v84 + 40) = 0;
      *(v84 + 48) = 0;
      *(v84 + 56) = 0;
      *(v84 + 64) = 0;
      qword_1EE18D960 = v84;
      __cxa_guard_release(&qword_1EE1B8A10);
    }
  }

  *(this + 2) = 0x29800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 19;
  *(this + 8) = &qword_1EE18D8D0;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialTechniqueData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialTechniqueData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialTechniqueData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialTechniqueData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v85 = v87;
}

void *re::allocInfo_MaterialTechniqueGroupData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D448, "MaterialTechniqueGroupData");
    __cxa_guard_release(&qword_1EE1B8A20);
  }

  return &unk_1EE18D448;
}

void re::initInfo_MaterialTechniqueGroupData(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xAECD50652FAE5000;
  v15[1] = "MaterialTechniqueGroupData";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1B8A28, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B8A28);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
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
      qword_1EE1B8B90 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "techniques";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B8B98 = v13;
      __cxa_guard_release(&qword_1EE1B8A28);
    }
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B8B90;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialTechniqueGroupData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialTechniqueGroupData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialTechniqueGroupData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialTechniqueGroupData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::internal::defaultConstruct<re::MaterialTechniqueGroupData>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  result = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 64) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = 0;
  *(a3 + 56) = 0;
  return result;
}

double re::internal::defaultDestruct<re::MaterialTechniqueGroupData>(int a1, int a2, const re::DynamicString **this)
{
  re::MaterialTechniqueGroupData::deinit(this);
  re::DynamicArray<re::DynamicString>::deinit((this + 4));

  return re::DynamicString::deinit(this);
}

void *re::internal::defaultConstructV2<re::MaterialTechniqueGroupData>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = re::DynamicString::setCapacity(a1, 0);
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  return result;
}

double re::internal::defaultDestructV2<re::MaterialTechniqueGroupData>(const re::DynamicString **a1)
{
  re::MaterialTechniqueGroupData::deinit(a1);
  re::DynamicArray<re::DynamicString>::deinit((a1 + 4));

  return re::DynamicString::deinit(a1);
}

void *re::allocInfo_MaterialTechniqueQualityLevelSetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8A38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D4D8, "MaterialTechniqueQualityLevelSetData");
    __cxa_guard_release(&qword_1EE1B8A38);
  }

  return &unk_1EE18D4D8;
}

void re::initInfo_MaterialTechniqueQualityLevelSetData(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0xA79299F1B003743CLL;
  v19[1] = "MaterialTechniqueQualityLevelSetData";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1B8A40, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B8A40);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
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
      qword_1EE1B8BB0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "techniqueSetBaseline";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B8BB8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "techniques";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x4000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B8BC0 = v17;
      __cxa_guard_release(&qword_1EE1B8A40);
    }
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1B8BB0;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialTechniqueQualityLevelSetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialTechniqueQualityLevelSetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialTechniqueQualityLevelSetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialTechniqueQualityLevelSetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

void *re::internal::defaultConstruct<re::MaterialTechniqueQualityLevelSetData>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = re::DynamicString::setCapacity(v3, 0);
  v3[2] = 0u;
  v3[3] = 0u;
  v3 += 2;
  result = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 8) = 0;
  *(v3 + 5) = 0;
  *(v3 + 6) = 0;
  *(v3 + 4) = 0;
  *(v3 + 14) = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::MaterialTechniqueQualityLevelSetData>(_anonymous_namespace_ *a1)
{
  v1 = a1;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  v1 = (v1 + 32);
  result = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 8) = 0;
  *(v1 + 5) = 0;
  *(v1 + 6) = 0;
  *(v1 + 4) = 0;
  *(v1 + 14) = 0;
  return result;
}

void *re::allocInfo_MaterialParameterData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D568, "MaterialParameterData");
    __cxa_guard_release(&qword_1EE1B8A50);
  }

  return &unk_1EE18D568;
}

void re::initInfo_MaterialParameterData(re *this, re::IntrospectionBase *a2)
{
  v24[0] = 0x713A1216587C19D8;
  v24[1] = "MaterialParameterData";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE1B8A58, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B8A58);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "constants";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B8BE8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "buffers";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B8BF0 = v13;
      v14 = re::introspectionAllocator(v13);
      re::IntrospectionInfo<re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v14, v15);
      v16 = (*(*v14 + 32))(v14, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "textures";
      *(v16 + 16) = &qword_1EE1B9128;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x6000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1B8BF8 = v16;
      v17 = re::introspectionAllocator(v16);
      re::IntrospectionInfo<re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v17, v18);
      v19 = (*(*v17 + 32))(v17, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "textureBlocks";
      *(v19 + 16) = &qword_1EE1B9178;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x9000000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1B8C00 = v19;
      v20 = re::introspectionAllocator(v19);
      re::IntrospectionInfo<re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v20, v21);
      v22 = (*(*v20 + 32))(v20, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "samplers";
      *(v22 + 16) = &qword_1EE1B91C8;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0xC000000005;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE1B8C08 = v22;
      __cxa_guard_release(&qword_1EE1B8A58);
    }
  }

  *(this + 2) = 0xF000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1B8BE8;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialParameterData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialParameterData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialParameterData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialParameterData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v23 = v25;
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8B00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8B00))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1B9128);
    qword_1EE1B9128 = &unk_1F5D05700;
    __cxa_guard_release(&qword_1EE1B8B00);
  }

  if ((byte_1EE1B892B & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    re::introspect_MaterialTextureParam(v2, v3);
    if ((byte_1EE1B892B & 1) == 0)
    {
      byte_1EE1B892B = 1;
      v4 = dword_1EE1B9378;
      ArcSharedObject::ArcSharedObject(&qword_1EE1B9128, 0);
      qword_1EE1B9138 = 0x3000000007;
      dword_1EE1B9140 = v4;
      word_1EE1B9144 = 0;
      *&xmmword_1EE1B9148 = 0;
      *(&xmmword_1EE1B9148 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B9158 = v2;
      qword_1EE1B9160 = 0;
      qword_1EE1B9168 = &qword_1EE1B9360;
      qword_1EE1B9170 = 0;
      qword_1EE1B9128 = &unk_1F5D05700;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE1B9128, &v21);
      if (BYTE8(v21))
      {
        v7 = v22;
      }

      else
      {
        v7 = &v21 + 9;
      }

      if (v21 && (BYTE8(v21) & 1) != 0)
      {
        (*(*v21 + 40))();
      }

      v8 = *(v2 + 2);
      v16 = xmmword_1EE1B9380;
      v17 = v8;
      if (v28)
      {
        v15 = v28;
      }

      else
      {
        *&v21 = 0x449AD97C4B77BED4;
        *(&v21 + 1) = "_CompareFunc";
        if (v21)
        {
          if (v21)
          {
          }
        }

        if (!v27)
        {
          v23[0] = 0x449AD97C4B77BED4;
          v23[1] = "_CompareFunc";
          v27 = v21;
          if (v23[0])
          {
            if (v23[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v26, &v21 + 8);
        if (!v27 || (v12 = *v26[2], *&v21 = *(&v27 + 1), *(&v21 + 1) = v12, LODWORD(v22) = -1, (v13 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v26[0] + 768, &v21)) == 0) || !*v13)
        {
          v24 = v27;
          v25 = v17;
        }

        re::StackScratchAllocator::StackScratchAllocator(v23);
        re::TypeBuilder::TypeBuilder(&v21, v23);
        v19 = v16;
        v20 = v17;
        re::TypeBuilder::beginDictionaryType(&v21, &v18, 1, 0x30uLL, 8uLL, &v20, &v19);
        re::TypeBuilder::setConstructor(&v21, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v21, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v21, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v21, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v21, v14);
        re::StackScratchAllocator::~StackScratchAllocator(v23);
      }

      xmmword_1EE1B9148 = v15;
      if (v18)
      {
        if (v18)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8B08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8B08))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1B9178);
    qword_1EE1B9178 = &unk_1F5D057A0;
    __cxa_guard_release(&qword_1EE1B8B08);
  }

  if ((byte_1EE1B892C & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v3 = v2;
    v4 = qword_1EE1B8960;
    if (!qword_1EE1B8960)
    {
      v4 = re::allocInfo_MaterialTextureBlockData(v2);
      qword_1EE1B8960 = v4;
      re::initInfo_MaterialTextureBlockData(v4, v5);
    }

    if ((byte_1EE1B892C & 1) == 0)
    {
      byte_1EE1B892C = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B9178, 0);
      qword_1EE1B9188 = 0x3000000007;
      dword_1EE1B9190 = v6;
      word_1EE1B9194 = 0;
      *&xmmword_1EE1B9198 = 0;
      *(&xmmword_1EE1B9198 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B91A8 = v3;
      qword_1EE1B91B0 = 0;
      qword_1EE1B91B8 = v4;
      qword_1EE1B91C0 = 0;
      qword_1EE1B9178 = &unk_1F5D057A0;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1B9178, &v23);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = *(v3 + 32);
      v18 = *(v4 + 2);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1B9198 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8B10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8B10))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1B91C8);
    qword_1EE1B91C8 = &unk_1F5D05840;
    __cxa_guard_release(&qword_1EE1B8B10);
  }

  if ((byte_1EE1B892D & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v3 = v2;
    v4 = qword_1EE1B8988;
    if (!qword_1EE1B8988)
    {
      v4 = re::allocInfo_OptionalMaterialSamplerData(v2);
      qword_1EE1B8988 = v4;
      re::initInfo_OptionalMaterialSamplerData(v4, v5);
    }

    if ((byte_1EE1B892D & 1) == 0)
    {
      byte_1EE1B892D = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B91C8, 0);
      qword_1EE1B91D8 = 0x3000000007;
      dword_1EE1B91E0 = v6;
      word_1EE1B91E4 = 0;
      *&xmmword_1EE1B91E8 = 0;
      *(&xmmword_1EE1B91E8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B91F8 = v3;
      qword_1EE1B9200 = 0;
      qword_1EE1B9208 = v4;
      qword_1EE1B9210 = 0;
      qword_1EE1B91C8 = &unk_1F5D05840;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1B91C8, &v23);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = *(v3 + 32);
      v18 = *(v4 + 2);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1B91E8 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::MaterialParameterData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 36) = 0x7FFFFFFFLL;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0x7FFFFFFFLL;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  *(a3 + 132) = 0x7FFFFFFFLL;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0;
  *(a3 + 180) = 0x7FFFFFFFLL;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0;
  *(a3 + 228) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultDestruct<re::MaterialParameterData>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 24);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 18);
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 12);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 6);

  return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3);
}

double re::internal::defaultConstructV2<re::MaterialParameterData>(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0x7FFFFFFFLL;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0x7FFFFFFFLL;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 180) = 0x7FFFFFFFLL;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 228) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultDestructV2<re::MaterialParameterData>(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 24);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 18);
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 12);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 6);

  return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void *re::allocInfo_MaterialDefinitionFile(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8A68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A68))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D5F8, "MaterialDefinitionFile");
    __cxa_guard_release(&qword_1EE1B8A68);
  }

  return &unk_1EE18D5F8;
}

void re::initInfo_MaterialDefinitionFile(re *this, re::IntrospectionBase *a2)
{
  v53[0] = 0x40860A7DC02A152CLL;
  v53[1] = "MaterialDefinitionFile";
  if (v53[0])
  {
    if (v53[0])
    {
    }
  }

  *(this + 2) = v54;
  if ((atomic_load_explicit(&qword_1EE1B8A70, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B8A70);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
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
      qword_1EE1B9440 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "deprecationMessage";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x4000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B9448 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_AssetHandle(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "library";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x6000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B9450 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_AssetHandle(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "overrideMaterial";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x7800000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B9458 = v21;
      v22 = re::introspectionAllocator(v21);
      v23 = v22;
      v24 = qword_1EE1B8A60;
      if (!qword_1EE1B8A60)
      {
        v24 = re::allocInfo_MaterialParameterData(v22);
        qword_1EE1B8A60 = v24;
        re::initInfo_MaterialParameterData(v24, v25);
      }

      v26 = (*(*v23 + 32))(v23, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "parameters";
      *(v26 + 16) = v24;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x9000000005;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE1B9460 = v26;
      v27 = re::introspectionAllocator(v26);
      re::IntrospectionInfo<re::DynamicArray<re::MaterialTechniqueData>>::get(v27);
      v28 = (*(*v27 + 32))(v27, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "techniques";
      *(v28 + 16) = &qword_1EE1B8E30;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x18000000006;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1B9468 = v28;
      v29 = re::introspectionAllocator(v28);
      re::IntrospectionInfo<re::DynamicArray<re::MaterialTechniqueGroupData>>::get(v29);
      v30 = (*(*v29 + 32))(v29, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "techniqueGroups";
      *(v30 + 16) = &qword_1EE1B8E70;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x1A800000007;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE1B9470 = v30;
      v31 = re::introspectionAllocator(v30);
      v33 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v32);
      v34 = (*(*v31 + 32))(v31, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "techniqueMapping";
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0x1D000000008;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE1B9478 = v34;
      v35 = re::introspectionAllocator(v34);
      re::IntrospectionInfo<re::DynamicArray<re::DebugMapping>>::get(v35);
      v36 = (*(*v35 + 32))(v35, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "debugMappings";
      *(v36 + 16) = &qword_1EE1B8EB0;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x23000000009;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE1B9480 = v36;
      v37 = re::introspectionAllocator(v36);
      re::IntrospectionInfo<re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v37, v38);
      v39 = (*(*v37 + 32))(v37, 72, 8);
      *v39 = 1;
      *(v39 + 8) = "parameterProperties";
      *(v39 + 16) = &qword_1EE1B9218;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0x2580000000ALL;
      *(v39 + 40) = 0;
      *(v39 + 48) = 0;
      *(v39 + 56) = 0;
      *(v39 + 64) = 0;
      qword_1EE1B9488 = v39;
      v40 = re::introspectionAllocator(v39);
      re::IntrospectionInfo<re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>>::get(v40);
      v41 = (*(*v40 + 32))(v40, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "techniqueQualityLevelSet";
      *(v41 + 16) = &qword_1EE1B8EF0;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x2880000000BLL;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE1B9490 = v41;
      v42 = re::introspectionAllocator(v41);
      re::IntrospectionInfo<re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v42, v43);
      v44 = (*(*v42 + 32))(v42, 72, 8);
      *v44 = 1;
      *(v44 + 8) = "techniqueMappingOverrides";
      *(v44 + 16) = &qword_1EE1B9268;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0x2000000000CLL;
      *(v44 + 40) = 0;
      *(v44 + 48) = 0;
      *(v44 + 56) = 0;
      *(v44 + 64) = 0;
      qword_1EE1B9498 = v44;
      v45 = re::introspectionAllocator(v44);
      re::IntrospectionInfo<re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v45, v46);
      v47 = (*(*v45 + 32))(v45, 72, 8);
      *v47 = 1;
      *(v47 + 8) = "shaderCompilationMode";
      *(v47 + 16) = &qword_1EE1B90D8;
      *(v47 + 24) = 0;
      *(v47 + 32) = 0x2B00000000DLL;
      *(v47 + 40) = 0;
      *(v47 + 48) = 0;
      *(v47 + 56) = 0;
      *(v47 + 64) = 0;
      qword_1EE1B94A0 = v47;
      v48 = re::introspectionAllocator(v47);
      v50 = re::IntrospectionInfo<re::DynamicString>::get(1, v49);
      v51 = (*(*v48 + 32))(v48, 72, 8);
      *v51 = 1;
      *(v51 + 8) = "profilingCategory";
      *(v51 + 16) = v50;
      *(v51 + 24) = 0;
      *(v51 + 32) = 0x200000000ELL;
      *(v51 + 40) = 0;
      *(v51 + 48) = 0;
      *(v51 + 56) = 0;
      *(v51 + 64) = 0;
      qword_1EE1B94A8 = v51;
      __cxa_guard_release(&qword_1EE1B8A70);
    }
  }

  *(this + 2) = 0x2E000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 14;
  *(this + 8) = &qword_1EE1B9440;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialDefinitionFile>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialDefinitionFile>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialDefinitionFile>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialDefinitionFile>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v52 = v54;
}

void re::IntrospectionInfo<re::DynamicArray<re::MaterialTechniqueData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B8B18, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B8B18);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1B8E30);
      qword_1EE1B8E30 = &unk_1F5D058E0;
      __cxa_guard_release(&qword_1EE1B8B18);
    }
  }

  if ((byte_1EE1B892E & 1) == 0)
  {
    v1 = qword_1EE1B8A18;
    if (qword_1EE1B8A18 || (v1 = re::allocInfo_MaterialTechniqueData(a1), qword_1EE1B8A18 = v1, re::initInfo_MaterialTechniqueData(v1, v2), (byte_1EE1B892E & 1) == 0))
    {
      byte_1EE1B892E = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8E30, 0);
      qword_1EE1B8E40 = 0x2800000003;
      dword_1EE1B8E48 = v3;
      word_1EE1B8E4C = 0;
      *&xmmword_1EE1B8E50 = 0;
      *(&xmmword_1EE1B8E50 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8E60 = v1;
      qword_1EE1B8E68 = 0;
      qword_1EE1B8E30 = &unk_1F5D058E0;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1B8E30, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1B8E50 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MaterialTechniqueGroupData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B8B20, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B8B20);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1B8E70);
      qword_1EE1B8E70 = &unk_1F5D05978;
      __cxa_guard_release(&qword_1EE1B8B20);
    }
  }

  if ((byte_1EE1B892F & 1) == 0)
  {
    v1 = qword_1EE1B8A30;
    if (qword_1EE1B8A30 || (v1 = re::allocInfo_MaterialTechniqueGroupData(a1), qword_1EE1B8A30 = v1, re::initInfo_MaterialTechniqueGroupData(v1, v2), (byte_1EE1B892F & 1) == 0))
    {
      byte_1EE1B892F = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8E70, 0);
      qword_1EE1B8E80 = 0x2800000003;
      dword_1EE1B8E88 = v3;
      word_1EE1B8E8C = 0;
      *&xmmword_1EE1B8E90 = 0;
      *(&xmmword_1EE1B8E90 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8EA0 = v1;
      qword_1EE1B8EA8 = 0;
      qword_1EE1B8E70 = &unk_1F5D05978;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1B8E70, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1B8E90 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::DebugMapping>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B8B28, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B8B28);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1B8EB0);
      qword_1EE1B8EB0 = &unk_1F5D05A10;
      __cxa_guard_release(&qword_1EE1B8B28);
    }
  }

  if ((byte_1EE1B8930 & 1) == 0)
  {
    v1 = qword_1EE1B89A0;
    if (qword_1EE1B89A0 || (v1 = re::allocInfo_DebugMapping(a1), qword_1EE1B89A0 = v1, re::initInfo_DebugMapping(v1, v2), (byte_1EE1B8930 & 1) == 0))
    {
      byte_1EE1B8930 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8EB0, 0);
      qword_1EE1B8EC0 = 0x2800000003;
      dword_1EE1B8EC8 = v3;
      word_1EE1B8ECC = 0;
      *&xmmword_1EE1B8ED0 = 0;
      *(&xmmword_1EE1B8ED0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8EE0 = v1;
      qword_1EE1B8EE8 = 0;
      qword_1EE1B8EB0 = &unk_1F5D05A10;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1B8EB0, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1B8ED0 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8B30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8B30))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1B9218);
    qword_1EE1B9218 = &unk_1F5D05AA8;
    __cxa_guard_release(&qword_1EE1B8B30);
  }

  if ((byte_1EE1B8931 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v3 = v2;
    v4 = qword_1EE1B89B8;
    if (!qword_1EE1B89B8)
    {
      v4 = re::allocInfo_OptionalMaterialParameterProperties(v2);
      qword_1EE1B89B8 = v4;
      re::initInfo_OptionalMaterialParameterProperties(v4, v5);
    }

    if ((byte_1EE1B8931 & 1) == 0)
    {
      byte_1EE1B8931 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B9218, 0);
      qword_1EE1B9228 = 0x3000000007;
      dword_1EE1B9230 = v6;
      word_1EE1B9234 = 0;
      *&xmmword_1EE1B9238 = 0;
      *(&xmmword_1EE1B9238 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B9248 = v3;
      qword_1EE1B9250 = 0;
      qword_1EE1B9258 = v4;
      qword_1EE1B9260 = 0;
      qword_1EE1B9218 = &unk_1F5D05AA8;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1B9218, &v23);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = *(v3 + 32);
      v18 = *(v4 + 2);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1B9238 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B8B38, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B8B38);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1B8EF0);
      qword_1EE1B8EF0 = &unk_1F5D05B48;
      __cxa_guard_release(&qword_1EE1B8B38);
    }
  }

  if ((byte_1EE1B8932 & 1) == 0)
  {
    v1 = qword_1EE1B8A48;
    if (qword_1EE1B8A48 || (v1 = re::allocInfo_MaterialTechniqueQualityLevelSetData(a1), qword_1EE1B8A48 = v1, re::initInfo_MaterialTechniqueQualityLevelSetData(v1, v2), (byte_1EE1B8932 & 1) == 0))
    {
      byte_1EE1B8932 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8EF0, 0);
      qword_1EE1B8F00 = 0x2800000003;
      dword_1EE1B8F08 = v3;
      word_1EE1B8F0C = 0;
      *&xmmword_1EE1B8F10 = 0;
      *(&xmmword_1EE1B8F10 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8F20 = v1;
      qword_1EE1B8F28 = 0;
      qword_1EE1B8EF0 = &unk_1F5D05B48;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1B8EF0, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1B8F10 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8B40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8B40))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1B9268);
    qword_1EE1B9268 = &unk_1F5D05BE0;
    __cxa_guard_release(&qword_1EE1B8B40);
  }

  if ((byte_1EE1B8933 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v4 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v3);
    if ((byte_1EE1B8933 & 1) == 0)
    {
      v5 = v4;
      byte_1EE1B8933 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B9268, 0);
      qword_1EE1B9278 = 0x3000000007;
      dword_1EE1B9280 = v6;
      word_1EE1B9284 = 0;
      *&xmmword_1EE1B9288 = 0;
      *(&xmmword_1EE1B9288 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B9298 = v2;
      qword_1EE1B92A0 = 0;
      qword_1EE1B92A8 = v5;
      qword_1EE1B92B0 = 0;
      qword_1EE1B9268 = &unk_1F5D05BE0;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1B9268, &v23);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1B9288 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::introspect_ShaderStage(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8A78, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B8A80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A80))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B9040, "ShaderStage", 1, 1, 1, 1);
      qword_1EE1B9040 = &unk_1F5D0C658;
      qword_1EE1B9080 = &re::introspect_ShaderStage(BOOL)::enumTable;
      dword_1EE1B9050 = 9;
      __cxa_guard_release(&qword_1EE1B8A80);
    }

    if (byte_1EE1B8923)
    {
      break;
    }

    byte_1EE1B8923 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B9040, a2);
    v39 = 0x1F785ABD80A53F2;
    v40 = "ShaderStage";
    v43 = 0x31CD534126;
    v44 = "uint8_t";
    v4 = v42[0];
    v5 = v42[1];
    if (v43)
    {
      if (v43)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B9080;
      v43 = v4;
      v44 = v5;
      re::TypeBuilder::beginEnumType(v42, &v39, 1, 1, &v43);
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
            *&v41.var0 = 2 * v11;
            v41.var1 = v10;
            re::TypeBuilder::addEnumConstant(v42, v15, &v41);
            if (*&v41.var0)
            {
              if (*&v41.var0)
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
              *&v41.var0 = 2 * v20;
              v41.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v42, v24, &v41);
              if (*&v41.var0)
              {
                if (*&v41.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v42, v26);
      xmmword_1EE1B9060 = v41;
      if (v39)
      {
        if (v39)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v40);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1B8A78);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Unknown";
      qword_1EE1B8C10 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Vertex";
      qword_1EE1B8C18 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Fragment";
      qword_1EE1B8C20 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "GeometryModifier";
      qword_1EE1B8C28 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 8) = 4;
      *(v38 + 16) = "SurfaceShader";
      qword_1EE1B8C30 = v38;
      __cxa_guard_release(&qword_1EE1B8A78);
    }
  }
}

void *re::allocInfo_FunctionLink(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8A88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8A88))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D688, "FunctionLink");
    __cxa_guard_release(&qword_1EE1B8A88);
  }

  return &unk_1EE18D688;
}

void re::initInfo_FunctionLink(re *this, re::IntrospectionBase *a2)
{
  v36[0] = 0x341C5717FA628024;
  v36[1] = "FunctionLink";
  if (v36[0])
  {
    if (v36[0])
    {
    }
  }

  *(this + 2) = v37;
  if ((atomic_load_explicit(&qword_1EE1B8A90, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B8A90);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_ShaderStage(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "stage";
      *(v8 + 16) = &qword_1EE1B9040;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1B8C70 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::DynamicString>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "shaderFunctionName";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B8C78 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::DynamicString>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "linkedFunctionName";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1B8C80 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_AssetHandle(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "linkedFunctionLibrary";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x4800000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1B8C88 = v20;
      v21 = re::introspectionAllocator(v20);
      re::IntrospectionInfo<re::DynamicArray<re::ShaderAPIFlags::Values>>::get(v21, v22);
      v23 = (*(*v21 + 32))(v21, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "linkedShaderAPIs";
      *(v23 + 16) = &qword_1EE1B8F30;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x6000000005;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1B8C90 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "functionConstants";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x8800000006;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1B8C98 = v27;
      v28 = re::introspectionAllocator(v27);
      re::IntrospectionInfo<re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v28, v29);
      v30 = (*(*v28 + 32))(v28, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "functionConstantDataMap";
      *(v30 + 16) = &qword_1EE1B92B8;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0xB800000007;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE1B8CA0 = v30;
      v31 = re::introspectionAllocator(v30);
      v33 = re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(1, v32);
      v34 = (*(*v31 + 32))(v31, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "functionConstantData";
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0xE800000008;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE1B8CA8 = v34;
      __cxa_guard_release(&qword_1EE1B8A90);
    }
  }

  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE1B8C70;
  *(this + 9) = re::internal::defaultConstruct<re::FunctionLink>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FunctionLink>;
  *(this + 13) = re::internal::defaultConstructV2<re::FunctionLink>;
  *(this + 14) = re::internal::defaultDestructV2<re::FunctionLink>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v35 = v37;
}

void re::IntrospectionInfo<re::DynamicArray<re::ShaderAPIFlags::Values>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8B48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8B48))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1B8F30);
    qword_1EE1B8F30 = &unk_1F5D05C80;
    __cxa_guard_release(&qword_1EE1B8B48);
  }

  if ((byte_1EE1B8934 & 1) == 0)
  {
    v2 = re::introspect_ShaderAPIFlagsValues(1, a2);
    if ((byte_1EE1B8934 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1B8934 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8F30, 0);
      qword_1EE1B8F40 = 0x2800000003;
      dword_1EE1B8F48 = v4;
      word_1EE1B8F4C = 0;
      *&xmmword_1EE1B8F50 = 0;
      *(&xmmword_1EE1B8F50 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8F60 = v3;
      qword_1EE1B8F68 = 0;
      qword_1EE1B8F30 = &unk_1F5D05C80;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE1B8F30, &v14);
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
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1B8F50 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8B50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8B50))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1B92B8);
    qword_1EE1B92B8 = &unk_1F5D05D18;
    __cxa_guard_release(&qword_1EE1B8B50);
  }

  if ((byte_1EE1B8935 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v3 = v2;
    v4 = qword_1EE1B8AB0;
    if (!qword_1EE1B8AB0)
    {
      v4 = re::allocInfo_ConstantDataEntry(v2);
      qword_1EE1B8AB0 = v4;
      re::initInfo_ConstantDataEntry(v4, v5);
    }

    if ((byte_1EE1B8935 & 1) == 0)
    {
      byte_1EE1B8935 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B92B8, 0);
      qword_1EE1B92C8 = 0x3000000007;
      dword_1EE1B92D0 = v6;
      word_1EE1B92D4 = 0;
      *&xmmword_1EE1B92D8 = 0;
      *(&xmmword_1EE1B92D8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B92E8 = v3;
      qword_1EE1B92F0 = 0;
      qword_1EE1B92F8 = v4;
      qword_1EE1B9300 = 0;
      qword_1EE1B92B8 = &unk_1F5D05D18;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1B92B8, &v23);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = *(v3 + 32);
      v18 = *(v4 + 2);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1B92D8 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::FunctionLink>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *a3 = 0;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  v4 = (a3 + 8);
  v5 = re::DynamicString::setCapacity(v4, 0);
  *(v3 + 40) = 0u;
  v3 += 40;
  *(v3 + 16) = 0u;
  re::DynamicString::setCapacity(v3, 0);
  *(v3 + 116) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 132) = 0x7FFFFFFFLL;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0;
  *(v3 + 180) = 0x7FFFFFFFLL;
  *(v3 + 224) = 0;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  *(v3 + 192) = 0;
  *(v3 + 216) = 0;
  return result;
}

double re::internal::defaultDestruct<re::FunctionLink>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::DynamicArray<unsigned long>::deinit((a3 + 29));
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 23);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 17);
  re::DynamicArray<unsigned long>::deinit((a3 + 12));
  re::AssetHandle::~AssetHandle((a3 + 9));
  re::DynamicString::deinit((a3 + 5));

  return re::DynamicString::deinit((a3 + 1));
}

double re::internal::defaultConstructV2<re::FunctionLink>(uint64_t a1)
{
  v1 = a1;
  *a1 = 0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v2 = (a1 + 8);
  v3 = re::DynamicString::setCapacity(v2, 0);
  *(v1 + 40) = 0u;
  v1 += 40;
  *(v1 + 16) = 0u;
  re::DynamicString::setCapacity(v1, 0);
  *(v1 + 116) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 132) = 0x7FFFFFFFLL;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0;
  *(v1 + 180) = 0x7FFFFFFFLL;
  *(v1 + 224) = 0;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 192) = 0;
  *(v1 + 216) = 0;
  return result;
}

double re::internal::defaultDestructV2<re::FunctionLink>(uint64_t *a1)
{
  re::DynamicArray<unsigned long>::deinit((a1 + 29));
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 23);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 17);
  re::DynamicArray<unsigned long>::deinit((a1 + 12));
  re::AssetHandle::~AssetHandle((a1 + 9));
  re::DynamicString::deinit((a1 + 5));

  return re::DynamicString::deinit((a1 + 1));
}

void *re::allocInfo_ConstantDataEntry(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8AA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8AA0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D718, "ConstantDataEntry");
    __cxa_guard_release(&qword_1EE1B8AA0);
  }

  return &unk_1EE18D718;
}

void re::initInfo_ConstantDataEntry(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x2C54D4B20E616F08;
  v15[1] = "ConstantDataEntry";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1B8AA8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B8AA8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_size_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "dataOffset";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B8BA0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint16_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "dataType";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B8BA8 = v13;
      __cxa_guard_release(&qword_1EE1B8AA8);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B8BA0;
  *(this + 9) = re::internal::defaultConstruct<re::ConstantDataEntry>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ConstantDataEntry>;
  *(this + 13) = re::internal::defaultConstructV2<re::ConstantDataEntry>;
  *(this + 14) = re::internal::defaultDestructV2<re::ConstantDataEntry>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::allocInfo_MaterialFile(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8AB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8AB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D7A8, "MaterialFile");
    __cxa_guard_release(&qword_1EE1B8AB8);
  }

  return &unk_1EE18D7A8;
}

void re::initInfo_MaterialFile(re *this, re::IntrospectionBase *a2)
{
  v33[0] = 0x3898C50117566EC6;
  v33[1] = "MaterialFile";
  if (v33[0])
  {
    if (v33[0])
    {
    }
  }

  *(this + 2) = v34;
  if ((atomic_load_explicit(&qword_1EE1B8AC0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B8AC0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
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
      qword_1EE1B8C38 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_AssetHandle(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "materialDefinition";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B8C40 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = v14;
      v16 = qword_1EE1B8A60;
      if (!qword_1EE1B8A60)
      {
        v16 = re::allocInfo_MaterialParameterData(v14);
        qword_1EE1B8A60 = v16;
        re::initInfo_MaterialParameterData(v16, v17);
      }

      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "parameters";
      *(v18 + 16) = v16;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x3800000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1B8C48 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "functionConstants";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x12800000004;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE1B8C50 = v22;
      v23 = re::introspectionAllocator(v22);
      v24 = re::introspect_MaterialRenderFlags(1);
      v25 = (*(*v23 + 32))(v23, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "renderFlags";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x15800000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1B8C58 = v25;
      v26 = re::introspectionAllocator(v25);
      re::IntrospectionInfo<re::DynamicArray<re::FunctionLink>>::get(v26);
      v27 = (*(*v26 + 32))(v26, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "functionLinks";
      *(v27 + 16) = &qword_1EE1B8F70;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x17000000006;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1B8C60 = v27;
      v28 = re::introspectionAllocator(v27);
      v30 = re::introspect_BOOL(1, v29);
      v31 = (*(*v28 + 32))(v28, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "failIfNotPrecompiled";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x19800000007;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE1B8C68 = v31;
      __cxa_guard_release(&qword_1EE1B8AC0);
    }
  }

  *(this + 2) = 0x1A000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1B8C38;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialFile>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialFile>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialFile>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialFile>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v32 = v34;
}

void re::IntrospectionInfo<re::DynamicArray<re::FunctionLink>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B8B58, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B8B58);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1B8F70);
      qword_1EE1B8F70 = &unk_1F5D05DB8;
      __cxa_guard_release(&qword_1EE1B8B58);
    }
  }

  if ((byte_1EE1B8936 & 1) == 0)
  {
    v1 = qword_1EE1B8A98;
    if (qword_1EE1B8A98 || (v1 = re::allocInfo_FunctionLink(a1), qword_1EE1B8A98 = v1, re::initInfo_FunctionLink(v1, v2), (byte_1EE1B8936 & 1) == 0))
    {
      byte_1EE1B8936 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8F70, 0);
      qword_1EE1B8F80 = 0x2800000003;
      dword_1EE1B8F88 = v3;
      word_1EE1B8F8C = 0;
      *&xmmword_1EE1B8F90 = 0;
      *(&xmmword_1EE1B8F90 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8FA0 = v1;
      qword_1EE1B8FA8 = 0;
      qword_1EE1B8F70 = &unk_1F5D05DB8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1B8F70, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1B8F90 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::MaterialFile>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3;
  *a3 = 0u;
  a3[1] = 0u;
  re::DynamicString::setCapacity(v3, 0);
  *(v3 + 248) = 0u;
  v3 = (v3 + 248);
  *(v3 - 172) = 0u;
  *(v3 - 184) = 0u;
  *(v3 - 200) = 0u;
  *(v3 - 216) = 0u;
  *(v3 - 156) = 0x7FFFFFFFLL;
  *(v3 - 9) = 0u;
  *(v3 - 8) = 0u;
  *(v3 - 28) = 0;
  *(v3 - 108) = 0x7FFFFFFFLL;
  *(v3 - 6) = 0u;
  *(v3 - 5) = 0u;
  *(v3 - 16) = 0;
  *(v3 - 60) = 0x7FFFFFFFLL;
  *(v3 - 3) = 0u;
  *(v3 - 2) = 0u;
  *(v3 - 4) = 0;
  *(v3 - 12) = 0x7FFFFFFFLL;
  v3[1] = 0u;
  result = 0.0;
  *(v3 + 8) = 0;
  *(v3 + 36) = 0x7FFFFFFFLL;
  v3[3] = 0u;
  v3[4] = 0u;
  *(v3 + 20) = 0;
  *(v3 + 84) = 0x7FFFFFFFLL;
  *(v3 + 96) = 0;
  *(v3 + 98) = 0;
  *(v3 + 100) = 0;
  *(v3 + 102) = 0;
  *(v3 + 104) = 0;
  *(v3 + 106) = 0;
  *(v3 + 108) = 0;
  *(v3 + 110) = 0;
  *(v3 + 112) = 0;
  *(v3 + 114) = 0;
  *(v3 + 19) = 0;
  *(v3 + 16) = 0;
  *(v3 + 17) = 0;
  *(v3 + 36) = 0;
  *(v3 + 15) = 0;
  *(v3 + 160) = 0;
  return result;
}

double re::internal::defaultDestruct<re::MaterialFile>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::DynamicArray<re::FunctionLink>::deinit((a3 + 46));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 37);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 31);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 25);
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 19);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 13);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 7);
  re::AssetHandle::~AssetHandle((a3 + 4));

  return re::DynamicString::deinit(a3);
}

double re::internal::defaultConstructV2<re::MaterialFile>(_anonymous_namespace_ *a1)
{
  v1 = a1;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  re::DynamicString::setCapacity(v1, 0);
  *(v1 + 248) = 0u;
  v1 = (v1 + 248);
  *(v1 - 172) = 0u;
  *(v1 - 184) = 0u;
  *(v1 - 200) = 0u;
  *(v1 - 216) = 0u;
  *(v1 - 156) = 0x7FFFFFFFLL;
  *(v1 - 9) = 0u;
  *(v1 - 8) = 0u;
  *(v1 - 28) = 0;
  *(v1 - 108) = 0x7FFFFFFFLL;
  *(v1 - 6) = 0u;
  *(v1 - 5) = 0u;
  *(v1 - 16) = 0;
  *(v1 - 60) = 0x7FFFFFFFLL;
  *(v1 - 3) = 0u;
  *(v1 - 2) = 0u;
  *(v1 - 4) = 0;
  *(v1 - 12) = 0x7FFFFFFFLL;
  *(v1 + 1) = 0u;
  result = 0.0;
  *(v1 + 8) = 0;
  *(v1 + 36) = 0x7FFFFFFFLL;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 20) = 0;
  *(v1 + 84) = 0x7FFFFFFFLL;
  *(v1 + 96) = 0;
  *(v1 + 98) = 0;
  *(v1 + 100) = 0;
  *(v1 + 102) = 0;
  *(v1 + 104) = 0;
  *(v1 + 106) = 0;
  *(v1 + 108) = 0;
  *(v1 + 110) = 0;
  *(v1 + 112) = 0;
  *(v1 + 114) = 0;
  *(v1 + 19) = 0;
  *(v1 + 16) = 0;
  *(v1 + 17) = 0;
  *(v1 + 36) = 0;
  *(v1 + 15) = 0;
  *(v1 + 160) = 0;
  return result;
}

double re::internal::defaultDestructV2<re::MaterialFile>(uint64_t *a1)
{
  re::DynamicArray<re::FunctionLink>::deinit((a1 + 46));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 37);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 31);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 25);
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 19);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 13);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 7);
  re::AssetHandle::~AssetHandle((a1 + 4));

  return re::DynamicString::deinit(a1);
}

void *re::IntrospectionOptional<re::mtl::SamplerAddressMode>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::mtl::SamplerAddressMode>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::mtl::SamplerAddressMode>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 4) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::mtl::SamplerAddressMode>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 4;
}

{
  return a2 + 4;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::mtl::SamplerAddressMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 4;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::mtl::SamplerAddressMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, int *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 4) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<re::mtl::SamplerBorderColor>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::mtl::SamplerBorderColor>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::mtl::SamplerBorderColor>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 4) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::mtl::SamplerBorderColor>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 4;
}

{
  return a2 + 4;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::mtl::SamplerBorderColor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 4;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::mtl::SamplerBorderColor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, int *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 4) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<re::mtl::SamplerMinMagFilter>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::mtl::SamplerMinMagFilter>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::mtl::SamplerMinMagFilter>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 4) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::mtl::SamplerMinMagFilter>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 4;
}

{
  return a2 + 4;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::mtl::SamplerMinMagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 4;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::mtl::SamplerMinMagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, int *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 4) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<re::mtl::SamplerMipFilter>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::mtl::SamplerMipFilter>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::mtl::SamplerMipFilter>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 4) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::mtl::SamplerMipFilter>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 4;
}

{
  return a2 + 4;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::mtl::SamplerMipFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 4;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::mtl::SamplerMipFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, int *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 4) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<re::mtl::SamplerCompareFunction>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::mtl::SamplerCompareFunction>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::mtl::SamplerCompareFunction>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 4) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::mtl::SamplerCompareFunction>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 4;
}

{
  return a2 + 4;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::mtl::SamplerCompareFunction>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 4;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::mtl::SamplerCompareFunction>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, int *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 4) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v10 = 0;
  v8 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 14;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 56 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 40);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 56 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v7 + 40;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 56 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 14;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 56 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 56 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RenderAttachmentState>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderAttachmentState>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderAttachmentState>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderAttachmentState>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RenderAttachmentState>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RenderAttachmentState>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RenderAttachmentState>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RenderAttachmentState>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderAttachmentState>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::RenderAttachmentState>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RenderAttachmentState>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 32 * v9);
  *v15 = xmmword_1E30B42C0;
  v15[1] = xmmword_1E30B42D0;
  v16 = *(a4 + 16) + 1;
  *(a4 + 16) = v16;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 32 * v16 - 32);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

uint64_t re::IntrospectionDynamicArray<re::RenderAttachmentState>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

void *re::DynamicArray<re::RenderAttachmentState>::resize(void *result, unint64_t a2)
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

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RenderAttachmentState>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      v6 = v3[4] + 32 * v4;
      v7 = v5 + 1;
      do
      {
        *v6 = 0;
        *(v6 + 4) = xmmword_1E30A1FE0;
        *(v6 + 20) = 5;
        *(v6 + 28) = 15;
        v6 += 32;
        --v7;
      }

      while (v7 > 1);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RenderAttachmentState>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RenderAttachmentState>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RenderAttachmentState>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 32 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 32 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

re::MaterialTechniqueData *re::MaterialTechniqueData::MaterialTechniqueData(re::MaterialTechniqueData *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  v2 = re::DynamicString::setCapacity(this, 0);
  *(this + 3) = 0u;
  *(this + 2) = 0u;
  v3 = re::DynamicString::setCapacity(this + 4, 0);
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 4) = 0u;
  *(this + 7) = 0u;
  v4 = re::DynamicString::setCapacity(this + 14, 0);
  *(this + 24) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 9) = 0u;
  v5 = re::DynamicString::setCapacity(this + 21, 0);
  *(this + 25) = 0xFFFF000100010000;
  *(this + 104) = 1792;
  *(this + 210) = 4;
  *(this + 212) = xmmword_1E30A1FE0;
  *(this + 228) = 5;
  *(this + 59) = 15;
  *(this + 32) = 0;
  *(this + 264) = 0u;
  *(this + 70) = 0;
  *(this + 30) = 0;
  *(this + 245) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 40) = 0;
  re::DynamicString::setCapacity(this + 37, 0);
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 45) = 0x7FFFFFFF00000000;
  *(this + 92) = 0;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 102) = 0;
  *(this + 412) = 0x7FFFFFFFLL;
  *(this + 53) = 0;
  *(this + 27) = 0u;
  *(this + 112) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 484) = 0u;
  *(this + 500) = 0x7FFFFFFFLL;
  *(this + 68) = 0;
  *(this + 66) = 0;
  *(this + 134) = 0;
  *(this + 32) = 0u;
  *(this + 276) = 0;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 148) = 0;
  *(this + 596) = 0x7FFFFFFFLL;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 160) = 0;
  *(this + 644) = 0x7FFFFFFFLL;
  *(this + 164) = 16777472;
  *(this + 660) = 0;
  return this;
}

void *re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

unsigned int *re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v14 = 0u;
  v13 = 0u;
  re::DynamicString::setCapacity(&v12, 0);
  DWORD2(v14) = 0;
  v10 = re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, &v12);
  if (DWORD2(v14) != -1)
  {
    off_1F5D05328[DWORD2(v14)](&v15, &v12);
  }

  re::introspectionInitElement(a2, a3, a1[8], v10);
  return v10;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 22;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 88 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 40);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 88 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

unsigned int *re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v14, a2);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v11);
  v7 = HIDWORD(v12);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v12, v11);
    re::DynamicString::DynamicString((v8 + 8), a2);
    *(v8 + 40) = 0;
    v9 = (v8 + 40);
    v9[8] = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1>>(v9, a3);
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v9 = (*(a1 + 16) + 88 * v7 + 40);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1>>(v9, a3);
  }

  return v9;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

unsigned int *re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 88 * v7 + 40;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 88 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 22;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 88 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 88 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = re::DynamicString::setCapacity(&v14, 0);
  DWORD2(v16) = 0;
  v18 = 0uLL;
  *(&v17 + 1) = 0;
  v11 = re::DynamicString::setCapacity(&v17, 0);
  *(&v19 + 1) = 0;
  v20 = 0uLL;
  re::DynamicString::setCapacity(&v19, 0);
  LOBYTE(v21) = 0;
  v12 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, &v14);
  if (v19)
  {
    if (BYTE8(v19))
    {
      (*(*v19 + 40))();
    }

    v20 = 0u;
    v19 = 0u;
  }

  if (v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))();
    }

    v18 = 0u;
    v17 = 0u;
  }

  if (DWORD2(v16) != -1)
  {
    off_1F5D05328[DWORD2(v16)](&v22, &v14);
  }

  re::introspectionInitElement(a2, a3, a1[8], v12);
  return v12;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 40;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 160 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 40);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 160 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v23, a2);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v20);
  v7 = HIDWORD(v21);
  if (HIDWORD(v21) != 0x7FFFFFFF)
  {
    ++*(a1 + 40);
    v18 = *(a1 + 16) + 160 * v7;
    v9 = v18 + 40;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1>>(v18 + 40, a3);
    re::DynamicString::operator=((v18 + 80), (a3 + 40));
    re::DynamicString::operator=((v18 + 112), (a3 + 72));
    if (*(v18 + 144))
    {
      if ((*(a3 + 104) & 1) == 0)
      {
        *(v18 + 144) = 0;
        return v9;
      }
    }

    else
    {
      if ((*(a3 + 104) & 1) == 0)
      {
        return v9;
      }

      *(v18 + 144) = 1;
    }

    *(v18 + 148) = *(a3 + 108);
    return v9;
  }

  v8 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v21, v20);
  re::DynamicString::DynamicString((v8 + 8), a2);
  *(v8 + 40) = 0;
  v9 = v8 + 40;
  *(v8 + 72) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1>>((v8 + 40), a3);
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 104) = *(a3 + 64);
  v10 = *(a3 + 48);
  *(v8 + 80) = *(a3 + 40);
  *(a3 + 40) = 0;
  v11 = *(a3 + 56);
  *(a3 + 64) = 0;
  v13 = *(v8 + 88);
  v12 = *(v8 + 96);
  *(v8 + 88) = v10;
  *(v8 + 96) = v11;
  *(a3 + 48) = v13;
  *(a3 + 56) = v12;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  *(v8 + 136) = *(a3 + 96);
  v14 = *(a3 + 80);
  *(v8 + 112) = *(a3 + 72);
  *(a3 + 72) = 0;
  v15 = *(a3 + 88);
  *(a3 + 96) = 0;
  v17 = *(v8 + 120);
  v16 = *(v8 + 128);
  *(v8 + 120) = v14;
  *(v8 + 128) = v15;
  *(a3 + 80) = v17;
  *(a3 + 88) = v16;
  LODWORD(v15) = *(a3 + 104);
  *(v8 + 144) = v15;
  if (v15 == 1)
  {
    *(v8 + 148) = *(a3 + 108);
  }

  ++*(a1 + 40);
  return v9;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 160 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 40;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 160 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 160 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  LOBYTE(v10[0]) = 10;
  v8 = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 38;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 152 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 40);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 152 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v26, a2);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v23);
  v7 = HIDWORD(v24);
  if (HIDWORD(v24) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v24, v23);
    re::DynamicString::DynamicString((v8 + 8), a2);
    *(v8 + 40) = *a3;
    result = v8 + 40;
    v10 = *(a3 + 1);
    *(v8 + 41) = v10;
    if (v10 == 1)
    {
      *(v8 + 42) = *(a3 + 2);
    }

    v11 = *(a3 + 3);
    *(v8 + 43) = v11;
    if (v11 == 1)
    {
      *(v8 + 44) = *(a3 + 4);
    }

    v12 = *(a3 + 8);
    *(v8 + 48) = v12;
    if (v12 == 1)
    {
      *(v8 + 52) = *(a3 + 12);
    }

    v13 = *(a3 + 16);
    *(v8 + 56) = v13;
    if (v13 == 1)
    {
      *(v8 + 60) = *(a3 + 20);
    }

    v14 = *(a3 + 24);
    *(v8 + 64) = v14;
    if (v14 == 1)
    {
      *(v8 + 68) = *(a3 + 28);
    }

    v15 = *(a3 + 32);
    *(v8 + 72) = v15;
    if (v15 == 1)
    {
      *(v8 + 76) = *(a3 + 36);
    }

    v16 = *(a3 + 40);
    *(v8 + 80) = v16;
    if (v16 == 1)
    {
      *(v8 + 84) = *(a3 + 44);
    }

    v17 = *(a3 + 48);
    *(v8 + 88) = v17;
    if (v17 == 1)
    {
      *(v8 + 92) = *(a3 + 52);
    }

    v18 = *(a3 + 56);
    *(v8 + 96) = v18;
    if (v18 == 1)
    {
      *(v8 + 100) = *(a3 + 60);
    }

    v19 = *(a3 + 64);
    *(v8 + 104) = v19;
    if (v19 == 1)
    {
      *(v8 + 108) = *(a3 + 68);
    }

    v20 = *(a3 + 72);
    *(v8 + 112) = v20;
    if (v20 == 1)
    {
      *(v8 + 116) = *(a3 + 76);
    }

    v21 = *(a3 + 80);
    *(v8 + 120) = v21;
    if (v21 == 1)
    {
      *(v8 + 124) = *(a3 + 84);
    }

    v22 = *(a3 + 88);
    *(v8 + 128) = v22;
    if (v22 == 1)
    {
      *(v8 + 136) = *(a3 + 96);
    }

    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    return re::OptionalMaterialSamplerData::operator=(*(a1 + 16) + 152 * v7 + 40, a3);
  }

  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 152 * v7 + 40;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 152 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 38;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 152 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 152 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MaterialTechniqueData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MaterialTechniqueData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MaterialTechniqueData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MaterialTechniqueData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MaterialTechniqueData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MaterialTechniqueData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MaterialTechniqueData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MaterialTechniqueData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MaterialTechniqueData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MaterialTechniqueData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  bzero(v10, 0x298uLL);
  re::MaterialTechniqueData::MaterialTechniqueData(v10);
  re::DynamicArray<re::MaterialTechniqueData>::add(a4, v10);
  re::MaterialTechniqueData::~MaterialTechniqueData(v10);
  v8 = (*(a4 + 4) + 664 * *(a4 + 2) - 664);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::MaterialTechniqueData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 664 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 664 * a3;
}

void re::DynamicArray<re::MaterialTechniqueData>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v12 = 664 * a2;
    v13 = a2;
    do
    {
      re::MaterialTechniqueData::~MaterialTechniqueData((*(v3 + 4) + v12));
      ++v2;
      v12 += 664;
    }

    while (v2 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::MaterialTechniqueData>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v13 = v2;
    v5 = v2 - v4;
    if (v2 > v4)
    {
      v6 = 664 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        v8 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 48) = 0u;
        *(v7 + 32) = 0u;
        v9 = re::DynamicString::setCapacity((v7 + 32), 0);
        *(v7 + 128) = 0u;
        *(v7 + 80) = 0u;
        *(v7 + 96) = 0u;
        *(v7 + 64) = 0u;
        *(v7 + 112) = 0u;
        v10 = re::DynamicString::setCapacity((v7 + 112), 0);
        *(v7 + 192) = 0;
        *(v7 + 160) = 0u;
        *(v7 + 176) = 0u;
        *(v7 + 144) = 0u;
        v7 += 168;
        v11 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 32) = 0xFFFF000100010000;
        *(v7 + 40) = 1792;
        *(v7 + 42) = 4;
        *(v7 + 44) = xmmword_1E30A1FE0;
        *(v7 + 60) = 5;
        *(v7 + 68) = 15;
        *(v7 + 88) = 0;
        *(v7 + 96) = 0u;
        *(v7 + 112) = 0;
        *(v7 + 72) = 0;
        *(v7 + 77) = 0;
        *(v7 + 120) = 0u;
        *(v7 + 136) = 0u;
        *(v7 + 152) = 0;
        a1 = re::DynamicString::setCapacity((v7 + 128), 0);
        *(v7 + 160) = 0u;
        *(v7 + 176) = 0u;
        *(v7 + 192) = 0u;
        *(v7 + 208) = 0u;
        *(v7 + 196) = 0x7FFFFFFF;
        *(v7 + 224) = 0u;
        *(v7 + 240) = 0u;
        *(v7 + 244) = 0x7FFFFFFF;
        *(v7 + 256) = 0;
        *(v7 + 264) = 0u;
        *(v7 + 280) = 0;
        *(v7 + 304) = 0u;
        *(v7 + 320) = 0u;
        *(v7 + 288) = 0u;
        *(v7 + 336) = 0;
        *(v7 + 332) = 0x7FFFFFFF;
        *(v7 + 376) = 0;
        *(v7 + 360) = 0;
        *(v7 + 368) = 0;
        *(v7 + 344) = 0u;
        *(v7 + 384) = 0;
        *(v7 + 424) = 0u;
        *(v7 + 408) = 0u;
        *(v7 + 392) = 0u;
        *(v7 + 428) = 0x7FFFFFFF;
        *(v7 + 472) = 0u;
        *(v7 + 456) = 0u;
        *(v7 + 440) = 0u;
        *(v7 + 476) = 0x7FFFFFFF;
        *(v7 + 488) = 16777472;
        v6 += 664;
        *(v7 + 492) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = v13;
  ++*(v3 + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MaterialTechniqueData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MaterialTechniqueData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MaterialTechniqueData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MaterialTechniqueData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MaterialTechniqueData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 664 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 664;
        v11 -= 664;
      }

      while (v11);
    }
  }
}

re::MaterialTechniqueData *re::DynamicArray<re::MaterialTechniqueData>::clear(re::MaterialTechniqueData *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    result = *(result + 4);
    v3 = 664 * v2;
    do
    {
      re::MaterialTechniqueData::~MaterialTechniqueData(result);
      result = (v4 + 664);
      v3 -= 664;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 664 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 664 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MaterialTechniqueGroupData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MaterialTechniqueGroupData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MaterialTechniqueGroupData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MaterialTechniqueGroupData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MaterialTechniqueGroupData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MaterialTechniqueGroupData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MaterialTechniqueGroupData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MaterialTechniqueGroupData>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  re::DynamicString::setCapacity(&v10, 0);
  *(&v14 + 1) = 0;
  v13 = 0uLL;
  *(&v12 + 1) = 0;
  LODWORD(v14) = 0;
  re::DynamicArray<re::MaterialTechniqueGroupData>::add(a4, &v10);
  re::MaterialTechniqueGroupData::deinit(&v10);
  re::DynamicArray<re::DynamicString>::deinit(&v12 + 8);
  if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))();
  }

  v8 = (*(a4 + 4) + 72 * *(a4 + 2) - 72);
  re::introspectionInitElement(a2, a3, a1[6], v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::MaterialTechniqueGroupData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 72 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 72 * a3;
}

void re::DynamicArray<re::MaterialTechniqueGroupData>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 72 * a2;
    v9 = a2;
    do
    {
      v10 = (*(v3 + 4) + v8);
      re::MaterialTechniqueGroupData::deinit(v10);
      re::DynamicArray<re::DynamicString>::deinit((v10 + 4));
      re::DynamicString::deinit(v10);
      ++v9;
      v8 += 72;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 72 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 64) = 0;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = 0;
        v6 += 72;
        *(v7 + 56) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = &v9[9 * v8];
      do
      {
        re::MaterialTechniqueGroupData::deinit(v9);
        re::DynamicArray<re::DynamicString>::deinit((v9 + 4));
        re::DynamicString::deinit(v9);
        v9 += 9;
      }

      while (v9 != v10);
    }
  }

  else
  {
    re::DynamicArray<re::MaterialTechniqueGroupData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::MaterialTechniqueGroupData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 72 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 72;
        v14 -= 72;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 72 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 72 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::DebugMapping>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::DebugMapping>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::DebugMapping>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::DebugMapping>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DebugMapping>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::DebugMapping>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::DebugMapping>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::DebugMapping>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::DebugMapping>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::DebugMapping>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  memset(v13, 0, sizeof(v13));
  v12 = 0u;
  re::DynamicString::setCapacity(&v11, 0);
  memset(&v13[8], 0, 36);
  *&v13[44] = 0x7FFFFFFFLL;
  re::DynamicArray<re::DebugMapping>::add(a4, &v11);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v13[8]);
  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))(v8);
  }

  v9 = (*(a4 + 4) + 80 * *(a4 + 2) - 80);
  re::introspectionInitElement(a2, a3, a1[6], v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::DebugMapping>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 80 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 80 * a3;
}