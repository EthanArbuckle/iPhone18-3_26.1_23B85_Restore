void re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 16 * v2;
    do
    {
      v5 = *v3;
      v3 += 2;

      v4 -= 16;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void *re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
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
        v10 = &v8[2 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          v13 = v8[1];
          *v8 = 0;
          *v11 = v12;
          v11[1] = v13;
          v11 += 2;
          v14 = *v8;
          v8 += 2;
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

re::AssetHandle *re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    result = a1[4];
    if (v13)
    {
      v14 = 32 * v13;
      do
      {
        v15 = re::AssetHandle::operator=(result, v12);
        *(v15 + 24) = v12[3];
        v12 += 4;
        result = (v15 + 32);
        v14 -= 32;
      }

      while (v14);
      result = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v16 = &v12[4 * v13];
      result = (result + 32 * v13);
      v17 = 32 * v4 - 32 * v13;
      do
      {
        v18 = re::AssetHandle::AssetHandle(result, v16);
        *(v18 + 3) = *(v16 + 3);
        v16 = (v16 + 32);
        result = (v18 + 32);
        v17 -= 32;
      }

      while (v17);
    }
  }

  else
  {
    result = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 32 * v4;
      do
      {
        v9 = re::AssetHandle::operator=(result, v7);
        *(v9 + 24) = v7[3];
        v7 += 4;
        result = (v9 + 32);
        v8 -= 32;
      }

      while (v8);
      result = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      result = (result + 32 * v4);
      v10 = 32 * v5 - 32 * v4;
      do
      {
        re::AssetHandle::~AssetHandle(result);
        result = (v11 + 32);
        v10 -= 32;
      }

      while (v10);
    }
  }

  a1[2] = v4;
  return result;
}

void *re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::setCapacity(v5, a2);
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
              goto LABEL_16;
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
        v10 = 32 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
          v11[1] = *(v8 + 1);
          *(v8 + 1) = 0;
          v12 = *v11;
          *v11 = 0;
          *v11 = *v8;
          *v8 = v12;
          v13 = v11[2];
          v14 = *(v8 + 3);
          v11[2] = *(v8 + 2);
          *(v8 + 2) = v13;
          v11[3] = v14;
          re::AssetHandle::~AssetHandle(v8);
          v8 = (v8 + 32);
          v11 += 4;
          v10 -= 32;
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

uint64_t *re::snapshot::DecoderRaw::operator>>(uint64_t *result, void *a2)
{
  v2 = result[3];
  v3 = result[4] - v2;
  if (v3 <= 7)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v3);
  }

  *a2 = *v2;
  result[3] += 8;
  return result;
}

{
  v2 = result[3];
  v3 = result[4] - v2;
  if (v3 <= 7)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v3);
  }

  *a2 = *v2;
  result[3] += 8;
  return result;
}

{
  v2 = result[3];
  v3 = result[4] - v2;
  if (v3 <= 7)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v3);
  }

  *a2 = *v2;
  result[3] += 8;
  return result;
}

{
  v2 = result[3];
  v3 = result[4] - v2;
  if (v3 <= 7)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v3);
  }

  *a2 = *v2;
  result[3] += 8;
  return result;
}

void re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::resize(uint64_t a1, unint64_t a2)
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
      re::AssetHandle::~AssetHandle((*(a1 + 32) + v8));
      ++v9;
      v8 += 32;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::setCapacity(a1, a2);
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

void re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 16 * a2;
    v9 = a2;
    do
    {

      ++v9;
      v8 += 16;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 16 * v4;
      do
      {
        v7 = (*(a1 + 32) + v6);
        *v7 = 0;
        v7[1] = 0;
        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *_ZNK2re8internal11CallableRefIZNS_8snapshotrsINS2_10DecoderRawEPNS_4ecs224DirectParameterResourcesEEENSt3__19enable_ifIXsr3stdE12is_pointer_vIT0_EEvE4typeERT_RSA_EUlRNS2_7DecoderERPvbE_FvSH_SJ_NSG_24DeserializePointerActionEEJEE9cloneIntoESI_(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEAF48;
  return result;
}

void _ZNSt3__16invokeB8nn200100IRKZN2re8snapshotrsINS2_10DecoderRawEPNS1_4ecs224DirectParameterResourcesEEENS_9enable_ifIXsr3stdE12is_pointer_vIT0_EEvE4typeERT_RS9_EUlRNS2_7DecoderERPvbE_JSG_SI_NSF_24DeserializePointerActionEEEENS_13invoke_resultISC_JDpT0_EE4typeEOSC_DpOSO_(const char **this, void *a2, int a3)
{
  v4 = *a2;
  if (!a3)
  {
    if (v4)
    {

      *a2 = 0;
    }

    return;
  }

  if (!v4)
  {
    v6 = (*(*this + 5))(this);
    v7 = re::internal::allocateAndConstruct<re::ecs2::DirectParameterResources *,re::ecs2::DirectParameterResources>(v6);
    v4 = v8;
    *a2 = v8;
    if (!v8)
    {
      re::snapshot::BufferDecoder::error(this, "allocation failure: %zu bytes", v7);
      return;
    }
  }

  v26 = 0;
  if (re::snapshot::DecoderRaw::beginArray(this, &v26))
  {
    v9 = v26;
    if (v26 == -1 || v4[4] >= v26)
    {
      --v26;
      if (!v9)
      {
        v10 = 1;
        LODWORD(v11) = 1;
LABEL_22:
        if (v10 != v11)
        {
          re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
        }

        goto LABEL_24;
      }

      v10 = v9 + 1;
      if (v9 == -1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::setCapacity(v4 + 3, v26);
      v26 = v9 - 1;
      v10 = v9 + 1;
    }

    v11 = 1;
    while (v10 != v11)
    {
      re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::resize((v4 + 3), v11);
      v12 = v4[7];
      v13 = v4[5];
      {
        v24 = v13;
        v25 = v12;
        v13 = v24;
        v12 = v25;
        if (v16)
        {
          re::introspect<re::AssetHandle>(BOOL)::info = re::introspect_AssetHandle(0, v17);
          v13 = v24;
          v12 = v25;
        }
      }

      v14 = v12 + 32 * v13;
      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, v14 - 32, re::introspect<re::AssetHandle>(BOOL)::info);
      re::snapshot::DecoderRaw::operator>>(this, (v14 - 8));
      ++v11;
      if (!v26--)
      {
        goto LABEL_22;
      }
    }

LABEL_19:
    re::snapshot::BufferDecoder::error(this, "Bad data, too many elements: have %d, expected %zu");
  }

LABEL_24:
  v26 = 0;
  if (!re::snapshot::DecoderRaw::beginArray(this, &v26))
  {
    return;
  }

  v19 = v26;
  if (v26 != -1 && v4[9] < v26)
  {
    re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::setCapacity(v4 + 8, v26);
    v20 = v19 + 1;
    goto LABEL_30;
  }

  if (v26)
  {
    v20 = v26 + 1;
    if (v26 == -1)
    {
LABEL_34:
      re::snapshot::BufferDecoder::error(this, "Bad data, too many elements: have %d, expected %zu", v18);
      return;
    }

LABEL_30:
    v21 = 1;
    v22 = v19;
    while (v20 != v21)
    {
      --v22;
      re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::resize((v4 + 8), v21);
      v23 = v4[12] + 16 * v4[10];
      re::internalDecode<re::snapshot::DecoderRaw>(this, (v23 - 16));
      re::snapshot::DecoderRaw::operator>>(this, (v23 - 8));
      ++v21;
      if (!v22)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_34;
  }

  v20 = 1;
  LODWORD(v21) = 1;
LABEL_36:
  if (v20 != v21)
  {
    re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d", v18);
  }
}

double re::internal::allocateAndConstruct<re::ecs2::DirectParameterResources *,re::ecs2::DirectParameterResources>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 144, 8);
  ArcSharedObject::ArcSharedObject(v1, 0);
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CEAE98;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 136) = 0;
  result = 0.0;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0;
  return result;
}

void *_ZNK2re8internal8CallableIZNS_8snapshotrsINS2_10DecoderRawEPNS_4ecs224DirectParameterResourcesEEENSt3__19enable_ifIXsr3stdE12is_pointer_vIT0_EEvE4typeERT_RSA_EUlRNS2_7DecoderERPvbE_FvSH_SJ_NSG_24DeserializePointerActionEEJEE9cloneIntoESI_(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEAF48;
  return result;
}

void *_ZN2re8internal8CallableIZNS_8snapshotrsINS2_10DecoderRawEPNS_4ecs224DirectParameterResourcesEEENSt3__19enable_ifIXsr3stdE12is_pointer_vIT0_EEvE4typeERT_RSA_EUlRNS2_7DecoderERPvbE_FvSH_SJ_NSG_24DeserializePointerActionEEJEE8moveIntoESI_(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEAF48;
  return result;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::destroyCallable(uint64_t a1))(void)
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

re *re::snapshot::DecoderOPACK::field<1,re::ecs2::DirectParameterResources *>(re::snapshot::DecoderOPACK *a1, uint64_t a2)
{
  v7[5] = *MEMORY[0x1E69E9840];
  result = re::snapshot::DecoderOPACK::beginField<1>(a1);
  if (result)
  {
    v5 = re::globalAllocators(result)[2];
    v7[0] = &unk_1F5CEAFA0;
    v7[1] = &v6;
    v7[3] = v5;
    v7[4] = v7;
    re::snapshot::DecoderOPACK::deserializePointer(a1, a2, v7);
    re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::destroyCallable(v7);
    return re::snapshot::DecoderOPACK::endField(a1);
  }

  return result;
}

void *_ZNK2re8internal11CallableRefIZNS_8snapshotrsINS2_12DecoderOPACKEPNS_4ecs224DirectParameterResourcesEEENSt3__19enable_ifIXsr3stdE12is_pointer_vIT0_EEvE4typeERT_RSA_EUlRNS2_7DecoderERPvbE_FvSH_SJ_NSG_24DeserializePointerActionEEJEE9cloneIntoESI_(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEAFF8;
  return result;
}

void _ZNSt3__18__invokeB8nn200100IRKZN2re8snapshotrsINS2_12DecoderOPACKEPNS1_4ecs224DirectParameterResourcesEEENS_9enable_ifIXsr3stdE12is_pointer_vIT0_EEvE4typeERT_RS9_EUlRNS2_7DecoderERPvbE_JSG_SI_NSF_24DeserializePointerActionEEEEDTclclsr3stdE7declvalISC_EEspclsr3stdE7declvalIT0_EEEEOSC_DpOSN_(const char **this, uint64_t *a2, int a3)
{
  v4 = *a2;
  if (a3)
  {
    if (v4 || (v6 = (*(*this + 5))(this), re::internal::allocateAndConstruct<re::ecs2::DirectParameterResources *,re::ecs2::DirectParameterResources>(v6), v4 = v7, (*a2 = v7) != 0))
    {
      if (re::snapshot::DecoderOPACK::beginObject(this, 0))
      {
        if (re::snapshot::DecoderOPACK::beginField<1>(this))
        {
          v23 = 0;
          if (re::snapshot::DecoderOPACK::beginData(this, &v23, 1))
          {
            v8 = v23;
            if ((v23 & 0x1F) != 0)
            {
              re::snapshot::BufferDecoder::error(this, "Bad data: %zu bytes, expected multiple of %zu");
            }

            else
            {
              re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::resize(v4 + 24, v23 >> 5);
              re::snapshot::BufferDecoder::readRaw(this, *(v4 + 56), v8);
            }
          }

          else if (re::snapshot::DecoderOPACK::beginArray(this, &v23))
          {
            v9 = v23;
            if (v23 != -1 && *(v4 + 32) < v23)
            {
              re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::setCapacity((v4 + 24), v23);
            }

            LODWORD(v10) = 1;
            if (v9 + 1 > 1)
            {
              v11 = v9 + 1;
            }

            else
            {
              v11 = 1;
            }

            if (re::snapshot::DecoderOPACK::endArray(this, &v23))
            {
LABEL_21:
              if (v9 + 1 != v10)
              {
                re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
              }
            }

            else
            {
              if (v9 != -1)
              {
                v10 = 1;
                while (v11 != v10)
                {
                  re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::resize(v4 + 24, v10);
                  v12 = *(v4 + 56);
                  v13 = *(v4 + 40);
                  if (re::snapshot::DecoderOPACK::beginObject(this, 0))
                  {
                    v14 = v12 + 32 * v13;
                    if (re::snapshot::DecoderOPACK::beginField<1>(this))
                    {
                      {
                        re::introspect<re::AssetHandle>(BOOL)::info = re::introspect_AssetHandle(0, v15);
                      }

                      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, v14 - 32, re::introspect<re::AssetHandle>(BOOL)::info);
                      re::snapshot::DecoderOPACK::endField(this);
                    }

                    re::snapshot::DecoderOPACK::field<2,unsigned long long>(this, (v14 - 8));
                    re::snapshot::DecoderOPACK::endObject(this, 0);
                  }

                  ++v10;
                  if (re::snapshot::DecoderOPACK::endArray(this, &v23))
                  {
                    goto LABEL_21;
                  }
                }
              }

              re::snapshot::BufferDecoder::error(this, "Bad data, too many elements: have %d, expected %zu");
            }
          }

          re::snapshot::DecoderOPACK::endField(this);
        }

        if (re::snapshot::DecoderOPACK::beginField<2>(this))
        {
          v23 = 0;
          if (re::snapshot::DecoderOPACK::beginData(this, &v23, 1))
          {
            v16 = v23;
            if ((v23 & 0xF) != 0)
            {
              re::snapshot::BufferDecoder::error(this, "Bad data: %zu bytes, expected multiple of %zu");
            }

            else
            {
              re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::resize(v4 + 64, v23 >> 4);
              re::snapshot::BufferDecoder::readRaw(this, *(v4 + 96), v16);
            }
          }

          else if (re::snapshot::DecoderOPACK::beginArray(this, &v23))
          {
            v17 = v23;
            if (v23 != -1 && *(v4 + 72) < v23)
            {
              re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::setCapacity((v4 + 64), v23);
            }

            LODWORD(v18) = 1;
            if (v17 + 1 > 1)
            {
              v19 = v17 + 1;
            }

            else
            {
              v19 = 1;
            }

            if (re::snapshot::DecoderOPACK::endArray(this, &v23))
            {
LABEL_56:
              if (v17 + 1 != v18)
              {
                re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
              }
            }

            else
            {
              if (v17 != -1)
              {
                v18 = 1;
                while (v19 != v18)
                {
                  re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::resize(v4 + 64, v18);
                  v20 = *(v4 + 96);
                  v21 = *(v4 + 80);
                  if (re::snapshot::DecoderOPACK::beginObject(this, 0))
                  {
                    v22 = v20 + 16 * v21;
                    re::snapshot::DecoderOPACK::field<1,re::DirectBuffer>(this, (v22 - 16));
                    re::snapshot::DecoderOPACK::field<2,unsigned long long>(this, (v22 - 8));
                    re::snapshot::DecoderOPACK::endObject(this, 0);
                  }

                  ++v18;
                  if (re::snapshot::DecoderOPACK::endArray(this, &v23))
                  {
                    goto LABEL_56;
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
    }

    else
    {
      re::snapshot::BufferDecoder::error(this, "allocation failure: %zu bytes", 0x90uLL);
    }
  }

  else if (v4)
  {

    *a2 = 0;
  }
}

void *_ZNK2re8internal8CallableIZNS_8snapshotrsINS2_12DecoderOPACKEPNS_4ecs224DirectParameterResourcesEEENSt3__19enable_ifIXsr3stdE12is_pointer_vIT0_EEvE4typeERT_RSA_EUlRNS2_7DecoderERPvbE_FvSH_SJ_NSG_24DeserializePointerActionEEJEE9cloneIntoESI_(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEAFF8;
  return result;
}

void *_ZN2re8internal8CallableIZNS_8snapshotrsINS2_12DecoderOPACKEPNS_4ecs224DirectParameterResourcesEEENSt3__19enable_ifIXsr3stdE12is_pointer_vIT0_EEvE4typeERT_RSA_EUlRNS2_7DecoderERPvbE_FvSH_SJ_NSG_24DeserializePointerActionEEJEE8moveIntoESI_(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEAFF8;
  return result;
}

unsigned int *re::snapshot::EncoderRaw::serializePointer(re::snapshot::BufferEncoder *this, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    __src = 1;
    re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 1uLL);
    result = *(a3 + 32);
    if (result)
    {
      v9 = a2;
      return (*(*result + 16))(result, this, &v9);
    }
  }

  else
  {
    v8 = 0;
    return re::snapshot::BufferEncoder::writeRaw<true>(this, &v8, 1uLL);
  }

  return result;
}

void *_ZNK2re8internal11CallableRefIZNS_8snapshotlsINS2_10EncoderRawEPNS_4ecs224DirectParameterResourcesEEENSt3__19enable_ifIXsr3stdE12is_pointer_vIT0_EEvE4typeERT_RKSA_EUlRNS2_7EncoderEPKvE_FvSI_SK_EJEE9cloneIntoEPv(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEB0B8;
  return result;
}

void *_ZNK2re8internal8CallableIZNS_8snapshotlsINS2_10EncoderRawEPNS_4ecs224DirectParameterResourcesEEENSt3__19enable_ifIXsr3stdE12is_pointer_vIT0_EEvE4typeERT_RKSA_EUlRNS2_7EncoderEPKvE_FvSI_SK_EJEE9cloneIntoEPv(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEB0B8;
  return result;
}

void *_ZN2re8internal8CallableIZNS_8snapshotlsINS2_10EncoderRawEPNS_4ecs224DirectParameterResourcesEEENSt3__19enable_ifIXsr3stdE12is_pointer_vIT0_EEvE4typeERT_RKSA_EUlRNS2_7EncoderEPKvE_FvSI_SK_EJEE8moveIntoEPv(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEB0B8;
  return result;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(uint64_t a1))(void)
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

unsigned int *re::snapshot::EncoderOPACK::serializePointer(unsigned int *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  if (!a2)
  {
    v4 = this[4];
    if (v4 >= this[5])
    {
      this = re::snapshot::BufferEncoder::grow(this, v4 + 1);
      if (!this)
      {
        return this;
      }

      LODWORD(v4) = v3[4];
    }

    v5 = *(v3 + 1);
    v3[4] = v4 + 1;
    *(v5 + v4) = 4;
    return this;
  }

  this = *(a3 + 32);
  if (this)
  {
    v6 = a2;
    return (*(*this + 16))(this, v3, &v6);
  }

  return this;
}

unsigned int *_ZNK2re8internal11CallableRefIZNS_8snapshotlsINS2_12EncoderOPACKEPNS_4ecs224DirectParameterResourcesEEENSt3__19enable_ifIXsr3stdE12is_pointer_vIT0_EEvE4typeERT_RKSA_EUlRNS2_7EncoderEPKvE_FvSI_SK_EJEEclESI_OSK_(int a1, re::snapshot::EncoderOPACK *this, void **a3)
{
  v4 = *a3;
  re::snapshot::EncoderOPACK::beginObject(this);
  re::ecs2::snapshotMapFields<re::snapshot::EncoderOPACK>(this, v4);

  return re::snapshot::EncoderOPACK::endObject(this);
}

void *_ZNK2re8internal11CallableRefIZNS_8snapshotlsINS2_12EncoderOPACKEPNS_4ecs224DirectParameterResourcesEEENSt3__19enable_ifIXsr3stdE12is_pointer_vIT0_EEvE4typeERT_RKSA_EUlRNS2_7EncoderEPKvE_FvSI_SK_EJEE9cloneIntoEPv(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEB168;
  return result;
}

unsigned int *_ZNK2re8internal8CallableIZNS_8snapshotlsINS2_12EncoderOPACKEPNS_4ecs224DirectParameterResourcesEEENSt3__19enable_ifIXsr3stdE12is_pointer_vIT0_EEvE4typeERT_RKSA_EUlRNS2_7EncoderEPKvE_FvSI_SK_EJEEclESI_OSK_(int a1, re::snapshot::EncoderOPACK *this, void **a3)
{
  v4 = *a3;
  re::snapshot::EncoderOPACK::beginObject(this);
  re::ecs2::snapshotMapFields<re::snapshot::EncoderOPACK>(this, v4);

  return re::snapshot::EncoderOPACK::endObject(this);
}

void *_ZNK2re8internal8CallableIZNS_8snapshotlsINS2_12EncoderOPACKEPNS_4ecs224DirectParameterResourcesEEENSt3__19enable_ifIXsr3stdE12is_pointer_vIT0_EEvE4typeERT_RKSA_EUlRNS2_7EncoderEPKvE_FvSI_SK_EJEE9cloneIntoEPv(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEB168;
  return result;
}

void *_ZN2re8internal8CallableIZNS_8snapshotlsINS2_12EncoderOPACKEPNS_4ecs224DirectParameterResourcesEEENSt3__19enable_ifIXsr3stdE12is_pointer_vIT0_EEvE4typeERT_RKSA_EUlRNS2_7EncoderEPKvE_FvSI_SK_EJEE8moveIntoEPv(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEB168;
  return result;
}

BOOL re::snapshot::DecoderOPACK::beginField<4>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 3)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 4)
      {
        return Integer == 4;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 4;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs238DirectMaterialParametersArrayComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 12;
    *(a2 + 8) = 0;
  }
}

re::AudioMultiSceneManager *re::AudioMultiSceneManager::AudioMultiSceneManager(re::AudioMultiSceneManager *this, char a2)
{
  *this = &unk_1F5CEB1C0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = 0;
  *(this + 12) = this + 104;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 127) = 0;
  *(this + 44) = 1065353216;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 54) = 1065353216;
  *(this + 130) = a2;
  v3 = [[REAudioManagerNotificationListener alloc] initWithOwner:this];
  v4 = *(this + 1);
  *(this + 1) = v3;

  return this;
}

void re::AudioMultiSceneManager::~AudioMultiSceneManager(re::AudioMultiSceneManager *this)
{
  *this = &unk_1F5CEB1C0;
  os_unfair_lock_lock(this + 34);
  [*(this + 1) stop];
  v2 = *(this + 1);
  *(this + 1) = 0;

  for (i = *(this + 9); i; i = *i)
  {
    (*(*i[3] + 960))(i[3]);
  }

  if (*(this + 10))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>>>::__deallocate_node(*(this + 9));
    *(this + 9) = 0;
    v4 = *(this + 8);
    if (v4)
    {
      for (j = 0; j != v4; ++j)
      {
        *(*(this + 7) + 8 * j) = 0;
      }
    }

    *(this + 10) = 0;
  }

  os_unfair_lock_unlock(this + 34);
  std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioMultiSceneManager::AudioAssetCacheEntry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioMultiSceneManager::AudioAssetCacheEntry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioMultiSceneManager::AudioAssetCacheEntry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioMultiSceneManager::AudioAssetCacheEntry>>>::__deallocate_node(*(this + 25));
  v6 = *(this + 23);
  *(this + 23) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 144);

  std::__tree<unsigned long long>::destroy(this + 96, *(this + 13));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>>>::__deallocate_node(*(this + 9));
  v7 = *(this + 7);
  *(this + 7) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(this + 16);
}

{
  re::AudioMultiSceneManager::~AudioMultiSceneManager(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AudioMultiSceneManager::audioService(re *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a2 + 104) + 288) >> 1;
    v4 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(a1 + 7, v3);
    v7 = *(a1 + 13);
    v6 = (a1 + 104);
    v5 = v7;
    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = v6;
    do
    {
      v9 = v5[4];
      v10 = v9 >= v3;
      v11 = v9 < v3;
      if (v10)
      {
        v8 = v5;
      }

      v5 = v5[v11];
    }

    while (v5);
    if (v8 == v6 || v3 < v8[4])
    {
LABEL_10:
      if (v4)
      {
        return v4[3];
      }

      v14 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15[0] = 0;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "AudioMultiSceneManager::audioService() called on scene that isn't registered.", v15, 2u);
      }
    }
  }

  else
  {
    v13 = *re::audioLogObjects(a1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "AudioMultiSceneManager::audioService() called with a null scene.", buf, 2u);
    }
  }

  return 0;
}

uint64_t re::AudioMultiSceneManager::audioService(re::AudioMultiSceneManager *this)
{
  v1 = *(this + 9);
  if (v1)
  {
    return *(v1 + 24);
  }

  else
  {
    return 0;
  }
}

void re::AudioMultiSceneManager::registerScene(re::AudioMultiSceneManager *this, const re::ecs2::Scene *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    re::internal::assertLog(4, 0, "assertion failure: '%s' (%s:line %i) AudioMultiSceneManager::registerScene() called with nullptr scene.", "scene != nullptr", "registerScene", 63);
    _os_crash();
    __break(1u);
  }

  v5 = *(*(a2 + 13) + 288) >> 1;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(this + 7, v5);
  if (!v3)
  {
    re::AudioManagerFactory::createManager(*(this + 130));
  }

  v4 = *re::audioLogObjects(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "[RE/ECS] AudioMultiSceneManager::registerScene called on scene that is already reigstered", buf, 2u);
  }
}

uint64_t re::AudioMultiSceneManager::configureNewAudioService(uint64_t a1, void *a2)
{
  (*(**a2 + 544))(*a2, *(a1 + 128));
  (*(**a2 + 552))();
  v3 = *(**a2 + 520);

  return v3();
}

void re::AudioMultiSceneManager::loadAudioToSingleService(uint64_t a1, std::__shared_weak_count **a2, uint64_t *a3, uint64_t a4)
{
  v11[9] = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  v8 = *a3;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v10[0] = v5;
  v10[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:nn200100](v11, a4);
  v11[4] = a1;
  operator new();
}

void *re::AudioMultiSceneManager::unregisterScene(void *a1, uint64_t a2)
{
  v3 = *(*(a2 + 104) + 288) >> 1;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(a1 + 7, v3);
  if (!v4)
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) AudioMultiSceneManager::unregisterScene() called on scene that isn't registered.", "audioService != m_audioServices.end()", "unregisterScene", 98);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = v4;
  v19 = v3;
  v7 = a1[8];
  v8 = *v4;
  v9 = v4[1];
  v10 = vcnt_s8(v7);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    if (v9 >= *&v7)
    {
      v9 %= *&v7;
    }
  }

  else
  {
    v9 &= *&v7 - 1;
  }

  v11 = a1[7];
  v12 = *(v11 + 8 * v9);
  do
  {
    v13 = v12;
    v12 = *v12;
  }

  while (v12 != v4);
  if (v13 == a1 + 9)
  {
    goto LABEL_19;
  }

  v14 = v13[1];
  if (v10.u32[0] > 1uLL)
  {
    if (v14 >= *&v7)
    {
      v14 %= *&v7;
    }
  }

  else
  {
    v14 &= *&v7 - 1;
  }

  if (v14 != v9)
  {
LABEL_19:
    if (v8)
    {
      v15 = *(v8 + 8);
      if (v10.u32[0] > 1uLL)
      {
        v16 = *(v8 + 8);
        if (v15 >= *&v7)
        {
          v16 = v15 % *&v7;
        }
      }

      else
      {
        v16 = v15 & (*&v7 - 1);
      }

      if (v16 == v9)
      {
        goto LABEL_23;
      }
    }

    *(v11 + 8 * v9) = 0;
    v8 = *v4;
  }

  if (v8)
  {
    v15 = *(v8 + 8);
LABEL_23:
    if (v10.u32[0] > 1uLL)
    {
      if (v15 >= *&v7)
      {
        v15 %= *&v7;
      }
    }

    else
    {
      v15 &= *&v7 - 1;
    }

    if (v15 != v9)
    {
      *(a1[7] + 8 * v15) = v13;
      v8 = *v4;
    }
  }

  *v13 = v8;
  *v4 = 0;
  --a1[10];
  v17 = v4[4];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  operator delete(v6);
  return std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>((a1 + 12), &v19);
}

void re::AudioMultiSceneManager::clearRecentlyDeletedScenes(re::AudioMultiSceneManager *this)
{
  v1 = (this + 104);
  std::__tree<unsigned long long>::destroy(this + 96, *(this + 13));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

void re::AudioMultiSceneManager::setEngineQueue(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((a1 + 120), a2);
  for (i = *(a1 + 72); i; i = *i)
  {
    (*(*i[3] + 520))(i[3], v5);
  }
}

void re::AudioMultiSceneManager::configureEnterFramePhase(re *a1, uint64_t *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  *&v15.var0 = 0x4BF9C6AA1E4AE526;
  v15.var1 = "Audio Before Frame Update";
  *v16 = 1;
  v5 = a1 + 56;
  *&v16[4] = 0;
  v16[8] = 0;
  *&v16[12] = 260;
  *&v16[16] = 1023969417;
  v16[20] = 0;
  v18 = re::globalAllocators(a1)[2];
  v19 = v17;
  v17[0] = &unk_1F5CEB2C8;
  v17[1] = v5;
  v20 = *a2;
  v21 = 0;
  v25 = 0;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  re::StringID::StringID(v9, &v15);
  *v10 = *v16;
  *&v10[13] = *&v16[13];
  v11[3] = v18;
  v11[4] = 0;
  re::FunctionBase<24ul,void ()(float)>::operator=<24ul>(v11, v17);
  v11[5] = v20;
  re::DynamicArray<unsigned long>::DynamicArray(v12, &v21);
  v6 = *(a3 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  (*(*v6 + 48))(v6, v9);
  if (v12[0])
  {
    if (v14)
    {
      (*(*v12[0] + 40))();
    }

    v14 = 0;
    memset(v12, 0, sizeof(v12));
    ++v13;
  }

  v7 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(v11);
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  v9[0] = 0;
  v9[1] = &str_67;
  if (v21)
  {
    if (v25)
    {
      (*(*v21 + 40))();
    }

    v25 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    ++v24;
  }

  v8 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(v17);
  if (*&v15.var0)
  {
    if (*&v15.var0)
    {
    }
  }
}

void re::AudioMultiSceneManager::configureCommitPhase(re *a1, uint64_t *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  *&v15.var0 = 0xEA0359364ADC6754;
  v15.var1 = "Audio After Frame Update";
  *v16 = 1;
  v5 = a1 + 56;
  *&v16[4] = 0;
  v16[8] = 0;
  *&v16[12] = 260;
  *&v16[16] = 1023969417;
  v16[20] = 0;
  v18 = re::globalAllocators(a1)[2];
  v19 = v17;
  v17[0] = &unk_1F5CEB320;
  v17[1] = v5;
  v20 = *a2;
  v21 = 0;
  v25 = 0;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  re::StringID::StringID(v9, &v15);
  *v10 = *v16;
  *&v10[13] = *&v16[13];
  v11[3] = v18;
  v11[4] = 0;
  re::FunctionBase<24ul,void ()(float)>::operator=<24ul>(v11, v17);
  v11[5] = v20;
  re::DynamicArray<unsigned long>::DynamicArray(v12, &v21);
  v6 = *(a3 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  (*(*v6 + 48))(v6, v9);
  if (v12[0])
  {
    if (v14)
    {
      (*(*v12[0] + 40))();
    }

    v14 = 0;
    memset(v12, 0, sizeof(v12));
    ++v13;
  }

  v7 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(v11);
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  v9[0] = 0;
  v9[1] = &str_67;
  if (v21)
  {
    if (v25)
    {
      (*(*v21 + 40))();
    }

    v25 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    ++v24;
  }

  v8 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(v17);
  if (*&v15.var0)
  {
    if (*&v15.var0)
    {
    }
  }
}

uint64_t re::AudioMultiSceneManager::setIsExternalSourceControl(uint64_t this, char a2)
{
  *(this + 128) = a2;
  v2 = *(this + 72);
  if (v2)
  {
    v3 = this;
    do
    {
      this = (*(*v2[3] + 544))(v2[3], *(v3 + 128));
      v2 = *v2;
    }

    while (v2);
  }

  return this;
}

uint64_t re::AudioMultiSceneManager::setIsSTSControl(uint64_t this, char a2)
{
  *(this + 129) = a2;
  v2 = *(this + 72);
  if (v2)
  {
    v3 = this;
    do
    {
      this = (*(*v2[3] + 552))(v2[3], *(v3 + 129));
      v2 = *v2;
    }

    while (v2);
  }

  return this;
}

uint64_t re::AudioMultiSceneManager::triggerNotification(uint64_t result, uint64_t a2)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *(result + 72);
  if (v2)
  {
    v4 = result;
    do
    {
      result = (*(*v2[3] + 944))(v2[3], a2);
      if (a2 == 3)
      {
        v5 = v2[3];
        v6[0] = &unk_1F5CEB468;
        v6[1] = v4;
        v6[3] = v6;
        (*(*v5 + 608))(v5, v6);
        result = std::__function::__value_func<std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::~__value_func[abi:ne200100](v6);
      }

      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

uint64_t re::AudioMultiSceneManager::forceShutdown(uint64_t this)
{
  for (i = *(this + 72); i; i = *i)
  {
    this = (*(*i[3] + 960))(i[3]);
  }

  return this;
}

uint64_t re::AudioMultiSceneManager::updateEngine(uint64_t this)
{
  for (i = *(this + 72); i; i = *i)
  {
    this = (*(*i[3] + 24))(i[3]);
  }

  return this;
}

void re::AudioMultiSceneManager::loadAudio(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 80))
  {
    v6 = *(a1 + 72);
    v7 = *(v6 + 16);
    v9 = a2[1];
    v8 = a2[2];
    if (!v8 || (atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed), (v6 = *(a1 + 72)) != 0))
    {
      if (*(v6 + 16) == v7)
      {
        v10 = *(v6 + 32);
        v23[0] = *(v6 + 24);
        v23[1] = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22[0] = v9;
        v22[1] = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__function::__value_func<void ()(BOOL)>::__value_func[abi:nn200100](v26, a3);
          re::AudioMultiSceneManager::loadAudioToSingleService(a1, v23, v22, v26);
        }

        std::__function::__value_func<void ()(BOOL)>::__value_func[abi:nn200100](v26, a3);
        re::AudioMultiSceneManager::loadAudioToSingleService(a1, v23, v22, v26);
      }

      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::__function::__value_func<void ()(BOOL)>::__value_func[abi:nn200100](v24, a3);
      v25 = 0;
      operator new();
    }

    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    return;
  }

  os_unfair_lock_lock((a1 + 136));
  v12 = *re::audioLogObjects(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "[RE] [AudioMultiSceneManager] loadAudio called with no audio service. Caching the payload.", buf, 2u);
  }

  v14 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:nn200100](v27, a3);
  *buf = v13;
  *&buf[8] = v15;
  if (v28)
  {
    if (v28 == v27)
    {
      v31 = v30;
      (*(*v28 + 24))();
    }

    else
    {
      v31 = v28;
      v28 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v16 = *(a1 + 192);
  if (!*&v16)
  {
    goto LABEL_40;
  }

  v17 = vcnt_s8(v16);
  v17.i16[0] = vaddlv_u8(v17);
  if (v17.u32[0] > 1uLL)
  {
    v18 = v14;
    if (*&v16 <= v14)
    {
      v18 = v14 % *&v16;
    }
  }

  else
  {
    v18 = (*&v16 - 1) & v14;
  }

  v19 = *(*(a1 + 184) + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_40:
    operator new();
  }

  while (1)
  {
    v21 = v20[1];
    if (v21 == v14)
    {
      break;
    }

    if (v17.u32[0] > 1uLL)
    {
      if (v21 >= *&v16)
      {
        v21 %= *&v16;
      }
    }

    else
    {
      v21 &= *&v16 - 1;
    }

    if (v21 != v18)
    {
      goto LABEL_40;
    }

LABEL_39:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_40;
    }
  }

  if (v20[2] != v14)
  {
    goto LABEL_39;
  }

  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v30);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
  }

  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v27);
  os_unfair_lock_unlock((a1 + 136));
}

void re::AudioMultiSceneManager::unloadAudio(int8x8_t *this, unint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = a2;
  if (this[10])
  {
    v4 = this[9];
    if (!*&v4)
    {
      goto LABEL_12;
    }

    v5 = 0;
    do
    {
      while (1)
      {
        v6 = (*(**(*&v4 + 24) + 640))(*(*&v4 + 24));
        v7 = [v6 isCancelled];
        if (!v7)
        {
          break;
        }

        v8 = *re::audioLogObjects(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = *(*&v4 + 24);
          *buf = 134218240;
          *&buf[4] = a2;
          *&buf[12] = 2048;
          *&buf[14] = v9;
          _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "[RE] [AudioMultiSceneManager] REEngine was deallocated. Cannot unload audio asset: %llu from audioService %p", buf, 0x16u);
        }

        v4 = **&v4;
        v5 = 1;
        if (!*&v4)
        {
          return;
        }
      }

      (*(**(*&v4 + 24) + 648))(*(*&v4 + 24), a2);

      v4 = **&v4;
    }

    while (v4);
    if ((v5 & 1) == 0)
    {
LABEL_12:
      v10 = &this[16] + 1;
      os_unfair_lock_lock(&this[16] + 1);
      if (!std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>>>::__erase_unique<unsigned long long>(&this[2], &v27))
      {
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&this[18], &v27);
      }

      goto LABEL_59;
    }
  }

  else
  {
    v10 = &this[17];
    os_unfair_lock_lock(&this[17]);
    v11 = this[24];
    if (v11)
    {
      v12 = this + 23;
      v13 = vcnt_s8(v11);
      v13.i16[0] = vaddlv_u8(v13);
      if (v13.u32[0] > 1uLL)
      {
        v14 = a2;
        if (*&v11 <= a2)
        {
          v14 = a2 % *&v11;
        }
      }

      else
      {
        v14 = (*&v11 - 1) & a2;
      }

      v15 = *v12;
      v16 = *(*v12 + 8 * v14);
      if (v16)
      {
        v17 = *v16;
        if (v17)
        {
          v18 = *&v11 - 1;
          do
          {
            v19 = v17[1];
            if (v19 == a2)
            {
              if (*&v17[2] == a2)
              {
                v20 = v17[1];
                if (v13.u32[0] > 1uLL)
                {
                  if (v20 >= *&v11)
                  {
                    v20 %= *&v11;
                  }
                }

                else
                {
                  v20 &= v18;
                }

                v21 = *(*&v15 + 8 * v20);
                do
                {
                  v22 = v21;
                  v21 = *v21;
                }

                while (v21 != v17);
                if (v22 == &this[25])
                {
                  goto LABEL_49;
                }

                v23 = v22[1];
                if (v13.u32[0] > 1uLL)
                {
                  if (v23 >= *&v11)
                  {
                    v23 %= *&v11;
                  }
                }

                else
                {
                  v23 &= v18;
                }

                if (v23 != v20)
                {
LABEL_49:
                  if (!*v17)
                  {
                    goto LABEL_50;
                  }

                  v24 = *(*v17 + 8);
                  if (v13.u32[0] > 1uLL)
                  {
                    if (v24 >= *&v11)
                    {
                      v24 %= *&v11;
                    }
                  }

                  else
                  {
                    v24 &= v18;
                  }

                  if (v24 != v20)
                  {
LABEL_50:
                    *(*&v15 + 8 * v20) = 0;
                  }
                }

                v25 = *v17;
                if (*v17)
                {
                  v26 = *(*&v25 + 8);
                  if (v13.u32[0] > 1uLL)
                  {
                    if (v26 >= *&v11)
                    {
                      v26 %= *&v11;
                    }
                  }

                  else
                  {
                    v26 &= v18;
                  }

                  if (v26 != v20)
                  {
                    *(*v12 + 8 * v26) = v22;
                    v25 = *v17;
                  }
                }

                *v22 = v25;
                *v17 = 0;
                --*&this[26];
                *buf = v17;
                *&buf[8] = this + 23;
                buf[16] = 1;
                *&buf[17] = 0;
                *&buf[20] = 0;
                std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,re::AudioMultiSceneManager::AudioAssetCacheEntry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,re::AudioMultiSceneManager::AudioAssetCacheEntry>,void *>>>>::~unique_ptr[abi:nn200100](buf);
                break;
              }
            }

            else
            {
              if (v13.u32[0] > 1uLL)
              {
                if (v19 >= *&v11)
                {
                  v19 %= *&v11;
                }
              }

              else
              {
                v19 &= v18;
              }

              if (v19 != v14)
              {
                break;
              }
            }

            v17 = *v17;
          }

          while (v17);
        }
      }
    }

LABEL_59:
    os_unfair_lock_unlock(v10);
  }
}

void re::AudioMultiSceneManager::simulateMediaServicesLostNotification(re::AudioMultiSceneManager *this)
{
  v2 = *(this + 1);
  v3 = objc_alloc(MEMORY[0x1E696AD80]);
  v5 = [*(this + 1) audioSessionToFollow];
  v4 = [v3 initWithName:@"AVAudioSessionMediaServicesWereLostNotification" object:v5 userInfo:MEMORY[0x1E695E0F8]];
  [v2 servicesLost:v4];
}

void re::AudioMultiSceneManager::simulateMediaServicesResetNotification(re::AudioMultiSceneManager *this)
{
  v2 = *(this + 1);
  v3 = objc_alloc(MEMORY[0x1E696AD80]);
  v5 = [*(this + 1) audioSessionToFollow];
  v4 = [v3 initWithName:@"AVAudioSessionMediaServicesWereResetNotification" object:v5 userInfo:MEMORY[0x1E695E0F8]];
  [v2 servicesReset:v4];
}

BOOL re::AudioMultiSceneManager::assetIsLoaded(os_unfair_lock_s *this, unint64_t a2)
{
  v5 = a2;
  os_unfair_lock_lock(this + 33);
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(&this[4]._os_unfair_lock_opaque, &v5) != 0;
  os_unfair_lock_unlock(this + 33);
  return v3;
}

uint64_t re::internal::Callable<re::AudioMultiSceneManager::configureEnterFramePhase(unsigned long const&,std::function<void ()(re::Scheduler::TaskDescriptor)>)::$_0,void ()(float)>::operator()(uint64_t a1)
{
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v4);
  for (i = *(*(a1 + 8) + 16); i; i = *i)
  {
    (*(*i[3] + 968))(i[3]);
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)22>::end(v4);
}

void *re::internal::Callable<re::AudioMultiSceneManager::configureEnterFramePhase(unsigned long const&,std::function<void ()(re::Scheduler::TaskDescriptor)>)::$_0,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEB2C8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::AudioMultiSceneManager::configureEnterFramePhase(unsigned long const&,std::function<void ()(re::Scheduler::TaskDescriptor)>)::$_0,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEB2C8;
  a2[1] = v2;
  return a2;
}

uint64_t re::ProfilerTimeGuard<(re::ProfilerStatistic)22>::end(uint64_t result)
{
  if (*result && *(*result + 152))
  {
    v1 = result;
    result = mach_absolute_time();
    v2 = *v1;
    v3 = *(*v1 + 152);
    if (v3)
    {
      v4 = result - v1[1];
      v5 = v3[184].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[184].i64[0] = v5;
      v6 = v3[184].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[184].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[185] = vaddq_s64(v3[185], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::internal::Callable<re::AudioMultiSceneManager::configureCommitPhase(unsigned long const&,std::function<void ()(re::Scheduler::TaskDescriptor)>)::$_0,void ()(float)>::operator()(uint64_t a1, float *a2)
{
  v3 = *a2;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v6);
  for (i = *(*(a1 + 8) + 16); i; i = *i)
  {
    (*(*i[3] + 976))(i[3], v3);
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)22>::end(v6);
}

void *re::internal::Callable<re::AudioMultiSceneManager::configureCommitPhase(unsigned long const&,std::function<void ()(re::Scheduler::TaskDescriptor)>)::$_0,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEB320;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::AudioMultiSceneManager::configureCommitPhase(unsigned long const&,std::function<void ()(re::Scheduler::TaskDescriptor)>)::$_0,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEB320;
  a2[1] = v2;
  return a2;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioMultiSceneManager::AudioAssetCacheEntry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioMultiSceneManager::AudioAssetCacheEntry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioMultiSceneManager::AudioAssetCacheEntry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioMultiSceneManager::AudioAssetCacheEntry>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<unsigned long long const,re::AudioMultiSceneManager::AudioAssetCacheEntry>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<unsigned long long const,re::AudioMultiSceneManager::AudioAssetCacheEntry>,0>(uint64_t a1)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void std::__shared_ptr_pointer<re::AudioManager  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__shared_ptr_pointer<re::AudioManager  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 936))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<re::AudioManager  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t std::__function::__func<re::AudioMultiSceneManager::registerScene(re::ecs2::Scene const*)::$_0,std::allocator<re::AudioMultiSceneManager::registerScene(re::ecs2::Scene const*)::$_0>,std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CEB3D8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<re::AudioMultiSceneManager::registerScene(re::ecs2::Scene const*)::$_0,std::allocator<re::AudioMultiSceneManager::registerScene(re::ecs2::Scene const*)::$_0>,std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  os_unfair_lock_lock(v3 + 33);
  std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>>::unordered_map(a2, &v3[4]);

  os_unfair_lock_unlock(v3 + 33);
}

uint64_t std::__function::__func<re::AudioMultiSceneManager::registerScene(re::ecs2::Scene const*)::$_0,std::allocator<re::AudioMultiSceneManager::registerScene(re::ecs2::Scene const*)::$_0>,std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::shared_ptr<re::PersistedAssetData>> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::shared_ptr<re::PersistedAssetData>> const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__function::__func<re::AudioMultiSceneManager::triggerNotification(REAudioNotificationType)::$_0,std::allocator<re::AudioMultiSceneManager::triggerNotification(REAudioNotificationType)::$_0>,std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CEB468;
  a2[1] = v2;
  return result;
}

void std::__function::__func<re::AudioMultiSceneManager::triggerNotification(REAudioNotificationType)::$_0,std::allocator<re::AudioMultiSceneManager::triggerNotification(REAudioNotificationType)::$_0>,std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  os_unfair_lock_lock(v3 + 33);
  std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>>::unordered_map(a2, &v3[4]);

  os_unfair_lock_unlock(v3 + 33);
}

uint64_t std::__function::__func<re::AudioMultiSceneManager::triggerNotification(REAudioNotificationType)::$_0,std::allocator<re::AudioMultiSceneManager::triggerNotification(REAudioNotificationType)::$_0>,std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,re::AudioMultiSceneManager::AudioAssetCacheEntry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,re::AudioMultiSceneManager::AudioAssetCacheEntry>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<unsigned long long const,re::AudioMultiSceneManager::AudioAssetCacheEntry>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__function::__func<re::AudioMultiSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioMultiSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::~__func(void *a1)
{
  *a1 = &unk_1F5CEB4E8;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<re::AudioMultiSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioMultiSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::~__func(void *a1)
{
  *a1 = &unk_1F5CEB4E8;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void std::__function::__func<re::AudioMultiSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioMultiSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<re::AudioMultiSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioMultiSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = a1 + 8;
  if (v2)
  {
    std::function<void ()(BOOL)>::operator()(v4, 1);
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v5 = std::function<void ()(BOOL)>::operator()(v4, 0);
    v6 = *re::audioLogObjects(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "[RE] [AudioMultiSceneManager] Cannot add asset to assetGenerators with a null generator block.", v7, 2u);
      if (!v3)
      {
        return;
      }
    }

    else if (!v3)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
}

uint64_t std::__function::__func<re::AudioMultiSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioMultiSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<re::AudioMultiSceneManager::loadAudioToSingleService(std::shared_ptr<re::AudioManager>,std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioMultiSceneManager::loadAudioToSingleService(std::shared_ptr<re::AudioManager>,std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::~__func(void *a1)
{
  *a1 = &unk_1F5CEB578;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<re::AudioMultiSceneManager::loadAudioToSingleService(std::shared_ptr<re::AudioManager>,std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioMultiSceneManager::loadAudioToSingleService(std::shared_ptr<re::AudioManager>,std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::~__func(void *a1)
{
  *a1 = &unk_1F5CEB578;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<re::AudioMultiSceneManager::loadAudioToSingleService(std::shared_ptr<re::AudioManager>,std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioMultiSceneManager::loadAudioToSingleService(std::shared_ptr<re::AudioManager>,std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::__clone(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = &unk_1F5CEB578;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  result = std::__function::__value_func<void ()(BOOL)>::__value_func[abi:nn200100]((a2 + 3), (a1 + 3));
  a2[7] = a1[7];
  return result;
}

void std::__function::__func<re::AudioMultiSceneManager::loadAudioToSingleService(std::shared_ptr<re::AudioManager>,std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioMultiSceneManager::loadAudioToSingleService(std::shared_ptr<re::AudioManager>,std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<re::AudioMultiSceneManager::loadAudioToSingleService(std::shared_ptr<re::AudioManager>,std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioMultiSceneManager::loadAudioToSingleService(std::shared_ptr<re::AudioManager>,std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::destroy[abi:nn200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<re::AudioMultiSceneManager::loadAudioToSingleService(std::shared_ptr<re::AudioManager>,std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioMultiSceneManager::loadAudioToSingleService(std::shared_ptr<re::AudioManager>,std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::operator()(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = a1[2];
  if (v5)
  {
    v6 = a1[7];
    v5 = std::__shared_weak_count::lock(v5);
    v7 = v5;
    if (v5 && a1[1])
    {
      if (v4 && *v4)
      {
        os_unfair_lock_lock((v6 + 132));
        *buf = v4[13];
        v8 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>((v6 + 144), buf);
        if (v8)
        {
          v9 = v8;
          v10 = *re::audioLogObjects(v8);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = v4[13];
            *buf = 134217984;
            *&buf[4] = v11;
            _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "[RE] [AudioMultiSceneManager] Audio asset: %llu has been unregistered. Not storing assetData in asset generator map.", buf, 0xCu);
          }

          std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::erase((v6 + 144), v9);
        }

        else
        {
          v17 = v4[13];
          *buf = &v17;
          v15 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v6 + 16), &v17);
          if (v3)
          {
            atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v16 = v15[4];
          v15[3] = v4;
          v15[4] = v3;
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v16);
          }
        }

        std::function<void ()(BOOL)>::operator()((a1 + 3), 1);
        os_unfair_lock_unlock((v6 + 132));
      }

      else
      {
        v13 = std::function<void ()(BOOL)>::operator()((a1 + 3), 0);
        v14 = *re::audioLogObjects(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "[RE] [AudioMultiSceneManager] Cannot add asset to assetGenerators with a null generator block.", buf, 2u);
        }
      }

      goto LABEL_24;
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = *re::audioLogObjects(v5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "[RE] [AudioMultiSceneManager] AudioMultiSceneManager was deallocated. Cannot assign audio asset to assetGenerators", buf, 2u);
  }

  if (!v7)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_24:
  std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  if (!v3)
  {
    return;
  }

LABEL_15:
  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
}

uint64_t std::__function::__func<re::AudioMultiSceneManager::loadAudioToSingleService(std::shared_ptr<re::AudioManager>,std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioMultiSceneManager::loadAudioToSingleService(std::shared_ptr<re::AudioManager>,std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__alloc_func<re::AudioMultiSceneManager::loadAudioToSingleService(std::shared_ptr<re::AudioManager>,std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioMultiSceneManager::loadAudioToSingleService(std::shared_ptr<re::AudioManager>,std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::destroy[abi:nn200100](uint64_t a1)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *re::mediaLogObjects(re *this)
{
  {
    re::mediaLogObjects(void)::logObjects = os_log_create("com.apple.re", "Media");
  }

  return &re::mediaLogObjects(void)::logObjects;
}

_DWORD *re::ecs2::SkeletalPoseBufferComponent::initializeBufferRanges(_DWORD *this, const re::MeshAsset *a2, const re::MeshNameMap *a3, const re::SkeletalPoseRigMappingData *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*(this + 11) == *(a4 + 1))
  {
    return this;
  }

  v4 = a4;
  v6 = this;
  v7 = *(a4 + 32);
  v8 = *(this + 14);
  if (v8 < v7)
  {
    if (*(this + 13) < v7)
    {
      re::DynamicArray<re::Matrix4x4<float>>::setCapacity(this + 12, *(a4 + 32));
      v8 = *(v6 + 112);
    }

    v9 = v7 - v8;
    if (v7 > v8)
    {
      v10 = v8 << 6;
      do
      {
        v11 = (*(v6 + 128) + v10);
        *v11 = xmmword_1E3047670;
        v11[1] = xmmword_1E3047680;
        v11[2] = xmmword_1E30476A0;
        v11[3] = xmmword_1E30474D0;
        v10 += 64;
        --v9;
      }

      while (v9);
    }

    goto LABEL_10;
  }

  if (v8 > v7)
  {
LABEL_10:
    *(v6 + 112) = v7;
    ++*(v6 + 120);
  }

  this = re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::clear(v6 + 136);
  v12 = *(a3 + 30);
  if (*(v6 + 144) < v12)
  {
    this = re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::setCapacity((v6 + 136), v12);
    v12 = *(a3 + 30);
  }

  if (v12)
  {
    v13 = *(a3 + 31);
    v34 = &v13[v12];
    v35 = a2;
    do
    {
      v14 = *v13;
      v15 = *(a2 + 79);
      v16 = re::MeshNameMap::modelIndex(a3, *v13);
      v17 = v16;
      v18 = *(a2 + 76);
      if (v18 <= v16)
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v38 = 136315906;
        v39 = "operator[]";
        v40 = 1024;
        v41 = 797;
        v42 = 2048;
        v43 = v17;
        v44 = 2048;
        v45 = v18;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      this = re::DataArray<re::MeshModel>::tryGet(v15 + 8, *(*(a2 + 78) + 8 * v16));
      if (this)
      {
        v19 = this;
        this = re::MeshNameMap::meshPartStartIndexForInstance(a3, v14);
        v36 = this;
        v20 = *(v19 + 224);
        if (v20)
        {
          v21 = *(v20 + 8);
          v22 = *(v35 + 156);
          LOWORD(v38) = 0;
          if (v21)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            do
            {
              v26 = *(v19 + 224);
              if (v26 && *(v26 + 8) > v23)
              {
                v27 = *(*(v26 + 16) + 88 * v23 + 4);
              }

              else
              {
                v27 = 0xFFFFFFFFLL;
              }

              if (v22 > v27)
              {
                v28 = re::MeshNameMap::skinnedPartIndexForPartInstance(a3, v36 + v23);
                v29 = v4;
                this = re::SkeletalPoseRigMappingData::jointTransformStartAndEndIndex(v4, v28);
                v30 = this[1];
                if (v30)
                {
                  v31 = this;
                  if (v24 != *this || v25 != v30)
                  {
                    *&v46 = __PAIR64__(*this, v14);
                    DWORD2(v46) = v30;
                    *&v49 = 0;
                    *&v48 = 0;
                    v47 = 0uLL;
                    DWORD2(v48) = 0;
                    re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::add((v6 + 136), &v46);
                    if (v47 && v49)
                    {
                      (*(*v47 + 40))();
                    }

                    v33 = *(v6 + 168) + 56 * *(v6 + 152);
                    if (*(v33 - 32) < v21)
                    {
                      re::DynamicArray<unsigned short>::setCapacity((v33 - 40), v21);
                    }

                    v24 = *v31;
                    v25 = v31[1];
                  }

                  this = re::DynamicArray<unsigned short>::add((*(v6 + 168) + 56 * *(v6 + 152) - 40), &v38);
                }

                v4 = v29;
              }

              v23 = v38 + 1;
              LOWORD(v38) = v23;
            }

            while (v21 > v23);
          }
        }

        a2 = v35;
      }

      ++v13;
    }

    while (v13 != v34);
  }

  *(v6 + 88) = *(v4 + 1);
  return this;
}

uint64_t re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 56 * v2;
    v4 = *(result + 32) + 16;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v4);
      v4 += 56;
      v3 -= 56;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::add(_anonymous_namespace_ *result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
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

        result = re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 56 * v5;
  v12 = *a2;
  *(v11 + 8) = *(a2 + 2);
  *v11 = v12;
  *(v11 + 48) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = 0;
  *(v11 + 40) = 0;
  v13 = a2[3];
  *(v11 + 16) = a2[2];
  *(v11 + 24) = v13;
  a2[2] = 0;
  a2[3] = 0;
  v14 = *(v11 + 32);
  *(v11 + 32) = a2[4];
  a2[4] = v14;
  v15 = *(v11 + 48);
  *(v11 + 48) = a2[6];
  a2[6] = v15;
  ++*(a2 + 10);
  ++*(v11 + 40);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

uint64_t re::ecs2::SkeletalPoseBufferComponent::update(re::ecs2::SkeletalPoseBufferComponent *this, id *a2, uint64_t a3, unsigned int a4)
{
  v167 = *MEMORY[0x1E69E9840];
  v8 = re::RenderManager::perFrameAllocator(a2);
  v122 = v8;
  v9 = *(this + 2);
  v134 = v9[25];
  if (*(v134 + 30))
  {
    v132 = a4;
    v10 = a2[18];
    v12 = v10[3];
    v11 = v10[4];
    v13 = v10[2];
    v14 = v9[24];
    v15 = *(this + 5);
    if (!v15 || *(v134 + 31) != *v15)
    {
      v126 = v11;
      v119 = v13 << 60;
      v123 = v12;
      v121 = (v13 << 60) | v12 & 0xFFFFFFFFFFFFFFFLL;
      v16 = *(v134 + 49);
      v17 = *(v16 + 88);
      v18 = *(v16 + 96);
      v19 = re::globalAllocators(v8);
      v20 = (*(*v19[2] + 32))(v19[2], 48, 8);
      v21 = *(v134 + 31);
      v22 = [a2[26] newBufferWithBytes:*(this + 16) length:*(this + 14) << 6 options:0];
      *v20 = v21;
      v20[1] = a3;
      v23 = v17;
      v20[2] = v22;
      v20[3] = 0;
      v20[4] = 0;
      v20[5] = 0;
      v130 = v18;
      v131 = this;
      v135 = re::ecs2::SkeletalPoseBufferComponent::resetDeformerInputs(this, a2, v20, v18, v17);
      if (v22)
      {
      }

      v116 = v14;
      v24 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v14 + 32));
      v25 = re::ecs2::EntityComponentCollection::get((v9 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v25)
      {
        v26 = (v25 + 216);
      }

      else
      {
        v26 = (v24 + 640);
      }

      v27 = re::ecs2::EntityComponentCollection::getOrAdd((v9 + 6), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
      v28 = v131;
      *(v131 + 22) = v121;
      v29 = *(v135 + 8);
      v29[4] = v17;
      v32 = v132;
      if (v17)
      {
        if (v17 >= 0x666666666666667)
        {
          goto LABEL_169;
        }

        v29[5] = v31;
        if (!v31)
        {
LABEL_170:
          re::internal::assertLog(4, v33, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash();
          __break(1u);
        }

        v34 = v31;
        if (v17 != 1)
        {
          bzero(v31, 40 * v17 - 40);
          v34 += 40 * v17 - 40;
        }

        *(v34 + 32) = 0;
        *v34 = 0u;
        *(v34 + 16) = 0u;
      }

      v133 = v17;
      v125 = v9;
      v128 = *(v131 + 19);
      if (v128)
      {
        v23 = 0;
        v120 = v119 & 0xF000000000000000 | v126 & 0xFFFFFFFFFFFFFFFLL;
        v124 = v123 & 0xFFFFFFFFFFFFFFFLL;
        v136 = v24;
        v117 = v26;
        v118 = v126 & 0xFFFFFFFFFFFFFFFLL;
        v129 = v27;
        do
        {
          v35 = v28[19];
          if (v35 <= v23)
          {
            goto LABEL_159;
          }

          v36 = (v28[21] + 56 * v23);
          if (*v36 >= *(v26 + 54))
          {
            if (v32)
            {
              v42 = *re::ecsComponentsLogObjects(v31);
              v31 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
              if (v31)
              {
                v43 = v125[37];
                *buf = 134218242;
                *&buf[4] = v124;
                *&buf[12] = 2080;
                *&buf[14] = v43;
                _os_log_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_DEFAULT, "[DeformerLogging] Frame[%llu]: Entity[%s] has mismatched mesh joints from mesh scene data.", buf, 0x16u);
              }
            }
          }

          else
          {
            v37 = *(v24 + 632);
            v38 = re::MeshNameMap::modelIndex(v26, *v36);
            v35 = v38;
            v39 = *(v24 + 608);
            if (v39 <= v38)
            {
              goto LABEL_160;
            }

            v31 = re::DataArray<re::MeshModel>::tryGet(v37 + 8, *(*(v24 + 624) + 8 * v38));
            if (v31)
            {
              v40 = v31;
              v41 = *(v31 + 224);
              if (v41)
              {
                v24 = *(v41 + 8);
              }

              else
              {
                v24 = 0;
              }

              started = re::MeshNameMap::meshPartStartIndexForInstance(v26, *v36);
              v45 = vshl_n_s32(*(v36 + 1), 6uLL);
              v46 = *(*(v135 + 8) + 16);
              v156[0] = v46;
              v157 = 0;
              v158 = v45;
              v47 = *(v36 + 4);
              if (v47)
              {
                v48 = *(v36 + 6);
                for (i = 2 * v47; i; i -= 2)
                {
                  v50 = *v48;
                  if (v24 <= v50)
                  {
                    if (v32)
                    {
                      v59 = *re::ecsComponentsLogObjects(v46);
                      v46 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
                      if (v46)
                      {
                        v60 = v125[37];
                        *buf = 134218242;
                        *&buf[4] = v124;
                        *&buf[12] = 2080;
                        *&buf[14] = v60;
                        _os_log_impl(&dword_1E1C61000, v59, OS_LOG_TYPE_DEFAULT, "[DeformerLogging] Frame[%llu]: Entity[%s] has mismatched mesh part indices from skinning data.", buf, 0x16u);
                      }
                    }
                  }

                  else
                  {
                    v46 = re::MeshDeformationRuntimeData::absoluteDeformedMeshPartIndex((v134 + 232), started + v50);
                    if (v133 > v46)
                    {
                      v32 = v46;
                      v160[0].i8[0] = 0;
                      v160[1].i32[2] = -1;
                      std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v160, v156);
                      v160[2].i64[0] = v158;
                      v51 = *(v135 + 8);
                      v52 = *(v51 + 32);
                      if (v52 <= v32)
                      {
                        goto LABEL_156;
                      }

                      v53 = *(v51 + 40) + 40 * v32;
                      v46 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v53, v160);
                      *(v53 + 32) = v160[2].i64[0];
                      if (v160[1].i32[2] != -1)
                      {
                        v46 = (off_1F5CEB6E0[v160[1].u32[2]])(buf, v160);
                      }

                      v54 = *(v135 + 8);
                      v52 = *(v54 + 32);
                      if (v52 <= v32)
                      {
                        goto LABEL_157;
                      }

                      v55 = v130 + 168 * v32;
                      v56 = *(v54 + 40) + 40 * v32;
                      ++*(v55 + 2);
                      *(v55 + 40) = v56;
                      v57 = *(v135 + 8);
                      v52 = *(v57 + 32);
                      if (v52 <= v32)
                      {
                        goto LABEL_158;
                      }

                      v58 = *(v57 + 40) + 40 * v32;
                      ++*(v55 + 14);
                      *(v55 + 136) = v58;
                      v32 = v132;
                    }
                  }

                  ++v48;
                }
              }

              v35 = *(v131 + 75);
              if (v35 <= v23)
              {
                goto LABEL_161;
              }

              v61 = *(v131 + 77) + (v23 << 7);
              v127 = (v61 + 48);
              v62 = *v36;
              if (*v61 == v62)
              {
                v63 = *(v61 + 24);
                if (v63 == *(v36 + 4) && !memcmp(*(v61 + 40), *(v36 + 6), 2 * v63))
                {
                  goto LABEL_110;
                }
              }

              *v61 = v62;
              if ((v61 + 8) != v36 + 4)
              {
                v65 = *(v36 + 2);
                if (*(v61 + 8))
                {
                  if (v65)
                  {
                    re::DynamicArray<unsigned short>::copy((v61 + 8), (v36 + 4));
                  }

                  else
                  {
                    *(v61 + 24) = 0;
                  }

                  ++*(v61 + 32);
                }

                else if (v65)
                {
                  v66 = *(v36 + 4);
                  *(v61 + 8) = v65;
                  re::DynamicArray<unsigned short>::setCapacity((v61 + 8), v66);
                  ++*(v61 + 32);
                  re::DynamicArray<unsigned short>::copy((v61 + 8), (v36 + 4));
                }
              }

              v67 = *(v36 + 4);
              *&buf[16] = 1;
              v164 = 0uLL;
              *&buf[8] = 0;
              *buf = v122;
              re::DynamicOverflowArray<re::AABB,8ul>::setCapacity(buf, v67);
              *&buf[16] += 2;
              v68 = *(v36 + 4);
              if (!v68)
              {
                goto LABEL_166;
              }

              v69 = *(v36 + 6);
              v62 = 2 * v68;
              do
              {
                v70 = *v69;
                v32 = v40[7];
                if (v32 <= v70)
                {
                  v145 = 0;
                  v107 = v159;
                  v161 = 0u;
                  v162 = 0u;
                  memset(v160, 0, sizeof(v160));
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v159 = 136315906;
                  *&v159[4] = "operator[]";
                  *&v159[12] = 1024;
                  *&v159[14] = 476;
                  *&v159[18] = 2048;
                  *&v159[20] = v70;
                  *&v159[28] = 2048;
                  *&v159[30] = v32;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_155;
                }

                v71 = v40[8];
                v72 = (v71 + 544 * *v69);
                if (v24 <= v70 || ((v73 = v40[28]) == 0 || *(v73 + 8) <= v70 ? (v74 = 0xFFFFFFFFLL) : (v74 = *(*(v73 + 16) + 88 * *v69 + 4)), *(v136 + 1248) <= v74))
                {
                  re::DynamicOverflowArray<re::AABB,8ul>::add(buf, &v72[26]);
                }

                else
                {
                  re::AABB::transform(v72 + 26, (v71 + 544 * *v69 + 352), v160);
                  re::DynamicOverflowArray<re::AABB,8ul>::add(buf, v160);
                }

                ++v69;
                v62 -= 2;
              }

              while (v62);
              if (!*(v36 + 4))
              {
                goto LABEL_166;
              }

              v75 = **(v36 + 6);
              re::SkinningModelUtil::inverseBindPoseBufferForPart((v40 + 18), v75, v154);
              v151[0] = 0;
              v153 = 0;
              v152 = 0;
              v76 = v40[28];
              if (v76 && *(v76 + 8) > v75)
              {
                v77 = *(v76 + 16) + 88 * v75;
                v78 = *v77;
                std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v151, v77 + 48);
                v153 = *(v77 + 80);
              }

              else
              {
                v78 = 0;
              }

              re::ReadOnlyCPUAccessibleBufferSliceContent::make(v151, v160);
              re::ReadOnlyCPUAccessibleBufferSliceContent::make(v154, v159);
              v79 = v40[28];
              if (v79 && *(v79 + 8) > v75)
              {
                v80 = *(*(v79 + 16) + 88 * v75 + 1);
              }

              else
              {
                v80 = 0;
              }

              re::SkinningModelUtil::skinnedEndIndicesBuffer((v40 + 18), v75, v149);
              re::ReadOnlyCPUAccessibleBufferSliceContent::make(v149, &v145);
              if (v80)
              {
                v32 = v132;
                v81 = v127;
                goto LABEL_78;
              }

              v32 = v132;
              v81 = v127;
              if (v145 == 1)
              {
                v143 = v146[0];
                v144 = v146[1] >> 2;
              }

              else
              {
LABEL_78:
                v143 = 0;
                v144 = 0;
              }

              re::SkinnedMeshBoundsEstimator::deinit(v81);
              if (v78)
              {
                v85 = &v164;
                if ((buf[16] & 1) == 0)
                {
                  v85 = *(&v164 + 1);
                }

                v141 = v85;
                v142 = *&buf[8];
                v139 = *&v159[8];
                v140 = *&v159[16] >> 6;
                v137 = v160[0].i64[1];
                v138 = v160[1].i64[0] >> 2;
                re::SkinnedMeshBoundsEstimator::init<re::PackedSkinningInfluence>(v81, &v141, &v139, &v137, &v143, v80, v82, v83, v84);
              }

              else
              {
                v86 = &v164;
                if ((buf[16] & 1) == 0)
                {
                  v86 = *(&v164 + 1);
                }

                v141 = v86;
                v142 = *&buf[8];
                v139 = *&v159[8];
                v140 = *&v159[16] >> 6;
                v137 = v160[0].i64[1];
                v138 = v160[1].i64[0] >> 3;
                re::SkinnedMeshBoundsEstimator::init<re::SkinningInfluence>(v81, &v141, &v139, &v137, &v143, v80, v82, v83);
              }

              if (v145 == 1)
              {
                re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(v146);
              }

              else if (v147 && (v148 & 1) != 0)
              {
                (*(*v147 + 40))();
              }

              if (v150 != -1)
              {
                (off_1F5CEB6E0[v150])(&v145, v149);
              }

              if (v159[0] == 1)
              {
                re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v159[8]);
              }

              else if (*&v159[24] && (v159[32] & 1) != 0)
              {
                (*(**&v159[24] + 40))();
              }

              if (v160[0].u8[0] == 1)
              {
                re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v160[0].u32[2]);
              }

              else if (v160[1].i64[1] && (v160[2].i8[0] & 1) != 0)
              {
                (*(*v160[1].i64[1] + 40))();
              }

              if (v152 != -1)
              {
                (off_1F5CEB6E0[v152])(v160, v151);
              }

              if (v155 != -1)
              {
                (off_1F5CEB6E0[v155])(v160, v154);
              }

              if (*buf && (buf[16] & 1) == 0)
              {
                (*(**buf + 40))();
              }

LABEL_110:
              v87 = *(v131 + 24);
              v88 = 8;
              if (v87 > 8)
              {
                v88 = *(v131 + 24);
              }

              v89 = v88 - 8;
              v24 = v120;
              do
              {
                if (v87 <= v89)
                {
                  goto LABEL_130;
                }

                v90 = --v87 & 7;
              }

              while ((*(v131 + (v87 & 7) + 25) & 0xFFFFFFFFFFFFFFFuLL) > v118);
              v91 = *(v36 + 4);
              *&buf[16] = 1;
              v164 = 0uLL;
              *&buf[8] = 0;
              *buf = v122;
              re::DynamicOverflowArray<re::AABB,8ul>::setCapacity(buf, v91);
              *&buf[16] += 2;
              v93 = *(v36 + 4);
              if (v93)
              {
                v94 = *(v36 + 6);
                v95 = 2 * v93;
                do
                {
                  v96 = re::ecs2::DynamicBoundingBoxComponent::boundingBoxForMeshPartForFrame(v129, v120, started + *v94);
                  if (v96)
                  {
                    v64 = re::DynamicOverflowArray<re::AABB,8ul>::add(buf, v96);
                  }

                  ++v94;
                  v95 -= 2;
                }

                while (v95);
                v93 = *(v36 + 4);
              }

              if (*&buf[8] == v93)
              {
                v97 = v131 + 40 * v90 + 264;
                v98 = v36[1];
                v99 = *(v97 + 16);
                v62 = v99 + 1;
                if (v99 + 1 > v98)
                {
                  v100 = v36[2];
                  if (v100 + v98 <= v99)
                  {
                    v160[0].i64[0] = *(v97 + 32) + (v98 << 6);
                    v160[0].i64[1] = v100;
                    v101 = &v164;
                    if ((buf[16] & 1) == 0)
                    {
                      v101 = *(&v164 + 1);
                    }

                    *v159 = v101;
                    *&v159[8] = v93;
                    re::SkinnedMeshBoundsEstimator::updateKnownBoundingBoxes(v127, v159, v160);
                    goto LABEL_127;
                  }

LABEL_168:
                  re::internal::assertLog(7, v92, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 1129, v98, v100, v99);
                  _os_crash();
                  __break(1u);
LABEL_169:
                  re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, v23);
                  _os_crash();
                  __break(1u);
                  goto LABEL_170;
                }

LABEL_167:
                v145 = 0;
                v23 = v159;
                v161 = 0u;
                v162 = 0u;
                memset(v160, 0, sizeof(v160));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v159 = 136315906;
                *&v159[4] = "slice";
                *&v159[12] = 1024;
                *&v159[14] = 1119;
                *&v159[18] = 2048;
                *&v159[20] = v98;
                *&v159[28] = 2048;
                *&v159[30] = v62;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_168;
              }

LABEL_127:
              if (*buf && (buf[16] & 1) == 0)
              {
                (*(**buf + 40))();
              }

LABEL_130:
              v35 = v36[1];
              v102 = (*(v131 + 14) + 1);
              if (v102 <= v35)
              {
                goto LABEL_162;
              }

              v24 = v36[2] + v35;
              if (v24 < v35)
              {
                goto LABEL_163;
              }

              if (v102 <= v24)
              {
                goto LABEL_164;
              }

              *buf = *(v131 + 16) + (v35 << 6);
              *&buf[8] = v24 - v35;
              updated = re::SkinnedMeshBoundsEstimator::updateEstimatedBoundingBoxes(v127, buf, v64);
              v104 = *(v131 + 75);
              if (v104 <= v23)
              {
                goto LABEL_165;
              }

              v105 = *(v131 + 77) + (v23 << 7);
              v24 = *(v105 + 80);
              if (v24)
              {
                v70 = 0;
                v106 = *(v105 + 88);
                while (1)
                {
                  v107 = *(v36 + 4);
                  if (v107 <= v70)
                  {
                    break;
                  }

                  v31 = re::ecs2::DynamicBoundingBoxComponent::setMeshPartEstimatedBoundingBox(v129, v121, started + *(*(v36 + 6) + 2 * v70++), v106);
                  v106 += 2;
                  if (v24 == v70)
                  {
                    goto LABEL_138;
                  }
                }

LABEL_155:
                *v159 = 0;
                v23 = v159;
                v165 = 0u;
                v166 = 0u;
                v164 = 0u;
                memset(buf, 0, sizeof(buf));
                v52 = MEMORY[0x1E69E9C10];
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v160[0].i32[0] = 136315906;
                *(v160[0].i64 + 4) = "operator[]";
                v160[0].i16[6] = 1024;
                *(&v160[0].i32[3] + 2) = 797;
                v160[1].i16[1] = 2048;
                *(v160[1].i64 + 4) = v70;
                v160[1].i16[6] = 2048;
                *(&v160[1].i64[1] + 6) = v107;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_156:
                v145 = 0;
                v165 = 0u;
                v166 = 0u;
                v164 = 0u;
                memset(buf, 0, sizeof(buf));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v159 = 136315906;
                *&v159[4] = "operator[]";
                *&v159[12] = 1024;
                *&v159[14] = 468;
                *&v159[18] = 2048;
                *&v159[20] = v32;
                *&v159[28] = 2048;
                *&v159[30] = v52;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_157:
                *v159 = 0;
                v165 = 0u;
                v166 = 0u;
                v164 = 0u;
                memset(buf, 0, sizeof(buf));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v160[0].i32[0] = 136315906;
                *(v160[0].i64 + 4) = "operator[]";
                v160[0].i16[6] = 1024;
                *(&v160[0].i32[3] + 2) = 468;
                v160[1].i16[1] = 2048;
                *(v160[1].i64 + 4) = v32;
                v160[1].i16[6] = 2048;
                *(&v160[1].i64[1] + 6) = v52;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_158:
                *v159 = 0;
                v165 = 0u;
                v166 = 0u;
                v164 = 0u;
                memset(buf, 0, sizeof(buf));
                v35 = MEMORY[0x1E69E9C10];
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v160[0].i32[0] = 136315906;
                *(v160[0].i64 + 4) = "operator[]";
                v160[0].i16[6] = 1024;
                *(&v160[0].i32[3] + 2) = 468;
                v160[1].i16[1] = 2048;
                *(v160[1].i64 + 4) = v32;
                v160[1].i16[6] = 2048;
                *(&v160[1].i64[1] + 6) = v52;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_159:
                *v159 = 0;
                v39 = v159;
                v165 = 0u;
                v166 = 0u;
                v164 = 0u;
                memset(buf, 0, sizeof(buf));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v160[0].i32[0] = 136315906;
                *(v160[0].i64 + 4) = "operator[]";
                v160[0].i16[6] = 1024;
                *(&v160[0].i32[3] + 2) = 789;
                v160[1].i16[1] = 2048;
                *(v160[1].i64 + 4) = v23;
                v160[1].i16[6] = 2048;
                *(&v160[1].i64[1] + 6) = v35;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_160:
                *v159 = 0;
                v23 = v159;
                v165 = 0u;
                v166 = 0u;
                v164 = 0u;
                memset(buf, 0, sizeof(buf));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v160[0].i32[0] = 136315906;
                *(v160[0].i64 + 4) = "operator[]";
                v160[0].i16[6] = 1024;
                *(&v160[0].i32[3] + 2) = 797;
                v160[1].i16[1] = 2048;
                *(v160[1].i64 + 4) = v35;
                v160[1].i16[6] = 2048;
                *(&v160[1].i64[1] + 6) = v39;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_161:
                *v159 = 0;
                v102 = v159;
                v165 = 0u;
                v166 = 0u;
                v164 = 0u;
                memset(buf, 0, sizeof(buf));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v160[0].i32[0] = 136315906;
                *(v160[0].i64 + 4) = "operator[]";
                v160[0].i16[6] = 1024;
                *(&v160[0].i32[3] + 2) = 789;
                v160[1].i16[1] = 2048;
                *(v160[1].i64 + 4) = v23;
                v160[1].i16[6] = 2048;
                *(&v160[1].i64[1] + 6) = v35;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_162:
                *v159 = 0;
                v165 = 0u;
                v166 = 0u;
                v164 = 0u;
                memset(buf, 0, sizeof(buf));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v160[0].i32[0] = 136315906;
                *(v160[0].i64 + 4) = "sliceRange";
                v160[0].i16[6] = 1024;
                *(&v160[0].i32[3] + 2) = 1137;
                v160[1].i16[1] = 2048;
                *(v160[1].i64 + 4) = v35;
                v160[1].i16[6] = 2048;
                *(&v160[1].i64[1] + 6) = v102;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_163:
                v102 = (v24 + 1);
                *v159 = 0;
                v23 = v159;
                v165 = 0u;
                v166 = 0u;
                v164 = 0u;
                memset(buf, 0, sizeof(buf));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v160[0].i32[0] = 136315906;
                *(v160[0].i64 + 4) = "sliceRange";
                v160[0].i16[6] = 1024;
                *(&v160[0].i32[3] + 2) = 1139;
                v160[1].i16[1] = 2048;
                *(v160[1].i64 + 4) = v35;
                v160[1].i16[6] = 2048;
                *(&v160[1].i64[1] + 6) = v24 + 1;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_164:
                *v159 = 0;
                v104 = v159;
                v165 = 0u;
                v166 = 0u;
                v164 = 0u;
                memset(buf, 0, sizeof(buf));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v160[0].i32[0] = 136315906;
                *(v160[0].i64 + 4) = "sliceRange";
                v160[0].i16[6] = 1024;
                *(&v160[0].i32[3] + 2) = 1140;
                v160[1].i16[1] = 2048;
                *(v160[1].i64 + 4) = v24;
                v160[1].i16[6] = 2048;
                *(&v160[1].i64[1] + 6) = v102;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_165:
                *v159 = 0;
                v62 = v159;
                v165 = 0u;
                v166 = 0u;
                v164 = 0u;
                memset(buf, 0, sizeof(buf));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v160[0].i32[0] = 136315906;
                *(v160[0].i64 + 4) = "operator[]";
                v160[0].i16[6] = 1024;
                *(&v160[0].i32[3] + 2) = 797;
                v160[1].i16[1] = 2048;
                *(v160[1].i64 + 4) = v23;
                v160[1].i16[6] = 2048;
                *(&v160[1].i64[1] + 6) = v104;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_166:
                v145 = 0;
                v98 = v159;
                v161 = 0u;
                v162 = 0u;
                memset(v160, 0, sizeof(v160));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v159 = 136315906;
                *&v159[4] = "operator[]";
                *&v159[12] = 1024;
                *&v159[14] = 797;
                *&v159[18] = 2048;
                *&v159[20] = 0;
                *&v159[28] = 2048;
                *&v159[30] = 0;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_167;
              }

LABEL_138:
              if (v157 != -1)
              {
                v31 = (off_1F5CEB6E0[v157])(buf, v156, updated);
              }

              v24 = v136;
              v26 = v117;
            }
          }

          ++v23;
          v27 = v129;
          v28 = v131;
        }

        while (v23 != v128);
      }

      re::ecs2::Component::markDirty(v27);
      re::DynamicArray<re::Matrix4x4<float>>::DynamicArray(buf, v28 + 12);
      v108 = v28[24];
      v28[24] = v108 + 1;
      v109 = -v108 < 0;
      v110 = -v108 & 7;
      v111 = v108 & 7;
      if (!v109)
      {
        v111 = -v110;
      }

      v28[v111 + 25] = v121;
      re::DynamicArray<re::RigComponentConstraint>::operator=(&v28[5 * v111 + 33], buf);
      if (*buf)
      {
        if (v164)
        {
          (*(**buf + 40))();
        }
      }

      v14 = v116;
    }

    return re::ecs2::MeshDeformationComponent::areRequiredAssetsLoaded(v134, v14);
  }

  else
  {
    if (a4)
    {
      v113 = *re::ecsComponentsLogObjects(v8);
      result = os_log_type_enabled(v113, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      v114 = *(a2[18] + 3) & 0xFFFFFFFFFFFFFFFLL;
      v115 = v9[37];
      *buf = 134218242;
      *&buf[4] = v114;
      *&buf[12] = 2080;
      *&buf[14] = v115;
      _os_log_impl(&dword_1E1C61000, v113, OS_LOG_TYPE_INFO, "[DeformerLogging] Frame[%llu]: Mesh Deformation Assets still loading for Entity - %s", buf, 0x16u);
    }

    return 0;
  }
}

uint64_t re::ecs2::SkeletalPoseBufferComponent::resetDeformerInputs(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 144);
  if (v9)
  {
    v10 = (v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  inited = objc_initWeak(&location, v10);
  memset(v15, 0, 24);
  v15[3] = re::globalAllocators(inited)[2];
  v15[4] = 0;
  re::FramePersistentPtr<re::ecs2::SkeletalPoseBufferComponent::SkeletalPoseBufferInputs,re::FrameManager>::reset((a1 + 32), &location, a3, v15);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v15);
  objc_destroyWeak(&location);
  if (a5)
  {
    v12 = 168 * a5;
    do
    {
      ++*(a4 + 2);
      *(a4 + 40) = 0;
      ++*(a4 + 14);
      *(a4 + 136) = 0;
      a4 += 168;
      v12 -= 168;
    }

    while (v12);
  }

  return a1 + 32;
}

__n128 re::DynamicOverflowArray<re::AABB,8ul>::add(uint64_t a1, uint64_t a2)
{
  re::DynamicOverflowArray<re::AABB,8ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v4 = a1 + 32;
  }

  else
  {
    v4 = *(a1 + 40);
  }

  v5 = (v4 + 32 * *(a1 + 8));
  result = *a2;
  v7 = *(a2 + 16);
  *v5 = *a2;
  v5[1] = v7;
  ++*(a1 + 8);
  *(a1 + 16) += 2;
  return result;
}

uint64_t re::ecs2::DynamicBoundingBoxComponent::boundingBoxForMeshPartForFrame(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  if (*(v3 + 40) > a3)
  {
    v4 = (*(v3 + 48) + 136 * a3);
    v5 = *v4;
    v6 = 8;
    if (*v4 > 8)
    {
      v6 = *v4;
    }

    v7 = v6 - 8;
    while (v5 > v7)
    {
      if ((v4[(--v5 & 7) + 1] & 0xFFFFFFFFFFFFFFFuLL) <= (a2 & 0xFFFFFFFFFFFFFFFuLL))
      {
        v9 = v4[(v5 & 7) + 9];
        v10 = 0;
        v11 = 0x2000000000;
        return re::BufferView::contents(&v9);
      }
    }
  }

  return 0;
}

void *re::ecs2::SkeletalPoseBufferComponent::initializePerRangeEstimators(void *this)
{
  if (this[23] != this[11])
  {
    v1 = this;
    this[24] = 0;
    memset_pattern16(this + 25, &unk_1E30747C0, 0x40uLL);
    v2 = v1[75];
    v1[75] = 0;
    if (v2)
    {
      v3 = v2 << 7;
      v4 = (v1[77] + 104);
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v4);
        re::FixedArray<CoreIKTransform>::deinit(v4 - 4);
        re::FixedArray<CoreIKTransform>::deinit(v4 - 7);
        re::DynamicArray<unsigned long>::deinit((v4 - 12));
        v4 += 16;
        v3 -= 128;
      }

      while (v3);
    }

    ++*(v1 + 152);
    this = re::DynamicArray<re::ecs2::SkeletalPoseBufferComponent::MeshBoundsEstimatorForJointRange>::resize(v1 + 73, v1[19]);
    v1[23] = v1[11];
  }

  return this;
}

void *re::DynamicArray<re::ecs2::SkeletalPoseBufferComponent::MeshBoundsEstimatorForJointRange>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v13 = (a2 << 7) | 0x68;
    v14 = a2;
    do
    {
      v15 = (v3[4] + v13);
      re::FixedArray<CoreIKTransform>::deinit(v15);
      re::FixedArray<CoreIKTransform>::deinit(v15 - 4);
      re::FixedArray<CoreIKTransform>::deinit(v15 - 7);
      result = re::DynamicArray<unsigned long>::deinit((v15 - 12));
      ++v14;
      v13 += 128;
    }

    while (v14 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::ecs2::SkeletalPoseBufferComponent::MeshBoundsEstimatorForJointRange>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = v4 << 7;
      __asm { FMOV            V1.2S, #1.0 }

      do
      {
        v12 = v3[4] + v6;
        *v12 = -1;
        *(v12 + 16) = 0;
        *(v12 + 24) = 0;
        *(v12 + 8) = 0;
        *(v12 + 32) = 0;
        *(v12 + 40) = 0uLL;
        *(v12 + 56) = 0uLL;
        *(v12 + 72) = 0uLL;
        *(v12 + 88) = 0;
        *(v12 + 96) = _D1;
        *(v12 + 112) = 0;
        *(v12 + 120) = 0;
        v6 += 128;
        *(v12 + 104) = 0;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

re::ecs2::SkeletalPoseBufferComponentStateImpl *re::ecs2::SkeletalPoseBufferComponentStateImpl::SkeletalPoseBufferComponentStateImpl(re::ecs2::SkeletalPoseBufferComponentStateImpl *this)
{
  v6[3] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CEB5F8;
  *(this + 8) = 0u;
  *(this + 5) = 0;
  *(this + 24) = 0u;
  v2 = (this + 24);
  v6[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v6[1] = re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v6[2] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[0] = v6;
  v5[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::FixedArray(v4, v5);
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=(v2, v4);
  if (v4[0] && v4[1])
  {
    (*(*v4[0] + 40))();
  }

  return this;
}

BOOL re::ecs2::SkeletalPoseBufferComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (*(*v9 + 104))(v9);
  }

  else
  {
    v10 = 0;
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v37, a5, 0);
  v11 = v37;
  v12 = v38;
  v13 = v38;
  v37 = a4;
  v38 = v11;
  v39 = v12;
  if (v11 != a5 || v13 != 0xFFFFFFFFLL)
  {
    do
    {
      v15 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v37);
      v16 = v15;
      v17 = *(v15 + 16);
      v18 = *(v17 + 98);
      if (!*(v17 + 98))
      {
        goto LABEL_14;
      }

      v19 = (re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType + 16);
      v20 = *(v17 + 104);
      v21 = vld1q_dup_s16(v19);
      v22 = 1;
      while (1)
      {
        v23 = vandq_s8(vceqq_s16(v21, *v20), xmmword_1E306AC00);
        v23.i16[0] = vmaxvq_u16(v23);
        if (v23.i32[0])
        {
          break;
        }

        v22 -= 8;
        ++v20;
        if (!--v18)
        {
          goto LABEL_14;
        }
      }

      v24 = (a3 + 32);
      if (v23.u16[0] - v22 >= *(v17 + 96))
      {
LABEL_14:
        v25 = *(v17 + 200);
        v26 = *(v15 + 40);
        if (v26)
        {
          if (v25)
          {
            v27 = *(v25 + 248) != *v26 || v10 == 0;
            if (!v27 && v26[1] == v10)
            {
              goto LABEL_34;
            }

            v28 = *(a1 + 8);
            v29 = *(v25 + 392);
            if (v29)
            {
              v31 = *(v29 + 88);
              v30 = *(v29 + 96);
            }

            else
            {
              v31 = 0;
              v30 = 0;
            }
          }

          else
          {
            v31 = 0;
            v30 = 0;
            v28 = *(a1 + 8);
          }

          re::ecs2::SkeletalPoseBufferComponent::resetDeformerInputs(v15, v28, 0, v30, v31);
        }

        v32 = *(v17 + 192);
        if (v32)
        {
          v33 = v25 == 0;
        }

        else
        {
          v33 = 1;
        }

        v24 = (a3 + 32);
        if (!v33)
        {
          v24 = (a3 + 32);
          if (*(v32 + 40))
          {
            v24 = (a3 + 32);
            if (v16[14])
            {
              re::ecs2::SkeletalPoseBufferComponent::initializePerRangeEstimators(v16);
              v24 = (a3 + 40);
            }
          }
        }
      }

      v34 = v37;
      v35 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v38);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v34, v35, *v24);
LABEL_34:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v38);
    }

    while (v38 != a5 || v39 != 0xFFFF || HIWORD(v39) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

BOOL re::ecs2::SkeletalPoseBufferComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 16);
  if (v9)
  {
    v9 = (*(*v9 + 104))(v9);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  isSkinningAssignLoggingEnabled = re::DeformerFeatureFlags::isSkinningAssignLoggingEnabled(v9);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v22, a5, 0);
  v12 = v22;
  v13 = v23;
  v14 = v23;
  v22 = a4;
  v23 = v12;
  v24 = v13;
  if (v12 != a5 || v14 != 0xFFFFFFFFLL)
  {
    do
    {
      v16 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v22);
      if (re::ecs2::SkeletalPoseBufferComponent::update(v16, *(a1 + 8), v10, isSkinningAssignLoggingEnabled))
      {
        v17 = v22;
        v18 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v23);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v17, v18, *(a3 + 48));
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v23);
    }

    while (v23 != a5 || v24 != 0xFFFF || HIWORD(v24) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::SkeletalPoseBufferSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v33[0] = a2;
  v33[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v32);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v31, 3144, a1);
  re::StackScratchAllocator::StackScratchAllocator(v45);
  v41 = 1;
  v42 = 0;
  v43 = 0;
  v39 = v45;
  v40 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v39, 0);
  v41 += 2;
  v5 = a1[58];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v44 = a1[58];
  v34[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v39, v6, v34);
  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = *(a3 + 216);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v34[0] = v10;
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 39, v34);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v39, *(a1[40] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v39, (a1 + 53));
  v35 = 1;
  v36 = 0;
  v37 = 0;
  v34[0] = v45;
  v34[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v34, 0);
  v35 += 2;
  v12 = a1[58];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v38 = a1[58];
  v46 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v34, v13, &v46);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 53), &v39);
  v14 = v43;
  if (v41)
  {
    v14 = &v42;
  }

  v15 = v40;
  if ((v40 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v16 = 0;
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      if (v18)
      {
        break;
      }

      v16 -= 64;
      if (!--v15)
      {
        goto LABEL_30;
      }
    }

    v19 = __clz(__rbit64(v17));
    if (v19 + 1 != v16)
    {
      FirstBitSet = v19 - v16;
      do
      {
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 32), FirstBitSet);
        v22 = *(*v21 + 224);
        v23 = v21[3];
        v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
        if (*(v24 + 40))
        {
          v25 = (*(*v22 + 24))(v22, v33, v21, v23, v24, 0);
        }

        else
        {
          v25 = 0;
        }

        v26 = v21[5];
        v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
        if (*(v27 + 40))
        {
          v25 |= (*(*v22 + 32))(v22, v33, v21, v26, v27, 0);
        }

        v28 = v21[6];
        v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
        if (*(v29 + 40))
        {
          if (((v25 | (*(*v22 + 40))(v22, v33, v21, v28, v29, 0)) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v34, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v34, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v39, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 53), v34);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 32));
  if (v34[0] && (v35 & 1) == 0)
  {
    (*(*v34[0] + 40))();
  }

  if (v39 && (v41 & 1) == 0)
  {
    (*(*v39 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v45);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v31);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v32);
}

_anonymous_namespace_ *re::ecs2::SkeletalPoseBufferSystem::willAddSystemToECSService(re::ecs2::SkeletalPoseBufferSystem *this)
{
  re::ecs2::DeformationSubsystem::willAddSystemToECSService(this);
  v2 = *(this + 29);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::ecs2::ThrottleService>(v3);
  *(this + 63) = v2;
  *(this + 64) = result;
  return result;
}

double re::ecs2::SkeletalPoseBufferSystem::willRemoveSystemFromECSService(re::ecs2::SkeletalPoseBufferSystem *this)
{
  *(this + 63) = 0;
  *(this + 64) = 0;
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

unint64_t re::ecs2::SkeletalPoseBufferSystem::willAddSceneToECSService(re::ecs2::SkeletalPoseBufferSystem *this, re::ecs2::Scene *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(this + 48);
  v5 = *(this + 98);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 400);
    }

    else
    {
      v6 = *(this + 51);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (this + 400);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 51);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 376, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 256, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::init(v12, this + 256, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 39, v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 376, v40);
    v13 = v40;
    goto LABEL_49;
  }

LABEL_17:
  v47 = 0u;
  v40 = 0u;
  *&v41 = 0;
  v42 = 0u;
  v43 = 0u;
  *(&v41 + 1) = -1;
  v44 = 0;
  v45 = 1;
  v46 = 0uLL;
  v14 = *(this + 37);
  *&v47 = 0;
  v15 = *(this + 33);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>,4ul>::setBucketsCapacity(this + 32, (v14 + 4) >> 2);
    v15 = *(this + 33);
  }

  if (v15 <= v14 >> 2)
  {
    v48[1] = 0;
    memset(v57, 0, sizeof(v57));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    v52 = 858;
    v53 = 2048;
    v54 = v14 >> 2;
    v55 = 2048;
    v56 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(this + 272))
  {
    v16 = this + 280;
  }

  else
  {
    v16 = *(this + 36);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 37);
  ++*(this + 76);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v40;
  v20 = v41;
  v21 = v42;
  *(v18 + 48) = v43;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v43 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v40);
  v23 = *(this + 37);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 256, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::init(v24, this + 256, v48[0]);
  *&v57[0] = *(this + 37) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 39, v48, v57);
  v25 = *(this + 37);
  v26 = *(this + 52);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 52) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 376), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 52) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 392))
    {
      v30 = this + 400;
    }

    else
    {
      v30 = *(this + 51);
    }

    *&v30[8 * *(this + 48) - 8] &= v28;
  }

  v31 = *(this + 37);
  v32 = *(this + 58);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 58) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 424), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 58) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 440))
    {
      v36 = this + 448;
    }

    else
    {
      v36 = *(this + 57);
    }

    *&v36[8 * *(this + 54) - 8] &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 424, v13);
  if (*(this + 488) == 1)
  {
    v38 = *(this + 59);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 256);
  }

  return result;
}

uint64_t re::ecs2::SkeletalPoseBufferSystem::willRemoveSceneFromECSService(re::ecs2::SkeletalPoseBufferSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 39, &v15);
  if (result != -1)
  {
    v4 = *(this + 40) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 376, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 424, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 256, *(v4 + 8));
    if (*v5)
    {
      v6 = v5;
      *v5 = 0;
      v7 = v5 + 1;
      v8 = *(v5[1] + 288);
      if (v8)
      {
        v9 = v5[12];
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 7), i);
            re::EventBus::unsubscribe(v8, *v11, *(v11 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v6 + 7));
      v12 = 0;
      v13 = v6 + 3;
      do
      {
        v14 = v6[2];
        if (*v14)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v14, v13[v12]);
        }

        v13[v12++] = -1;
      }

      while (v12 != 4);
      *v7 = 0;
      v7[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 312, &v15);
  }

  return result;
}

void *re::ecs2::allocInfo_SkinnedMeshJointRange(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A3F10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3F10))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4010, "SkinnedMeshJointRange");
    __cxa_guard_release(&qword_1EE1A3F10);
  }

  return &unk_1EE1A4010;
}

void re::ecs2::initInfo_SkinnedMeshJointRange(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v22[0] = 0x49833F28F7FA4720;
  v22[1] = "SkinnedMeshJointRange";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1A3F18, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A3F18);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint32_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "instanceIndex";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1A3F50 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint32_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "jointRangeStartIndex";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1A3F58 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_uint32_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "jointRangeSize";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1A3F60 = v17;
      v18 = re::introspectionAllocator(v17);
      re::IntrospectionInfo<re::DynamicArray<unsigned short>>::get(v18, v19);
      v20 = (*(*v18 + 32))(v18, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "partIndices";
      *(v20 + 16) = &qword_1EE1A3F90;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1000000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1A3F68 = v20;
      __cxa_guard_release(&qword_1EE1A3F18);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A3F50;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SkinnedMeshJointRange>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SkinnedMeshJointRange>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SkinnedMeshJointRange>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SkinnedMeshJointRange>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

void re::IntrospectionInfo<re::DynamicArray<unsigned short>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A3F40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3F40))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1A3F90);
    qword_1EE1A3F90 = &unk_1F5CEB860;
    __cxa_guard_release(&qword_1EE1A3F40);
  }

  if ((_MergedGlobals_201 & 1) == 0)
  {
    v2 = re::introspect_uint16_t(1, a2);
    if ((_MergedGlobals_201 & 1) == 0)
    {
      v3 = v2;
      _MergedGlobals_201 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1A3F90, 0);
      qword_1EE1A3FA0 = 0x2800000003;
      dword_1EE1A3FA8 = v4;
      word_1EE1A3FAC = 0;
      *&xmmword_1EE1A3FB0 = 0;
      *(&xmmword_1EE1A3FB0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A3FC0 = v3;
      unk_1EE1A3FC8 = 0;
      qword_1EE1A3F90 = &unk_1F5CEB860;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE1A3F90, &v14);
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
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1A3FB0 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::ecs2::SkinnedMeshJointRange>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 0xFFFFFFFFLL;
  *a3 = 0xFFFFFFFFLL;
  *(a3 + 8) = 0;
  *(a3 + 48) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::SkinnedMeshJointRange>(uint64_t a1)
{
  *&result = 0xFFFFFFFFLL;
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  return result;
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::SkinnedMeshJointRange>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE1A3F48, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1A3F48);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(qword_1EE1A3FD0);
      qword_1EE1A3FD0[0] = &unk_1F5CEB8F8;
      __cxa_guard_release(&qword_1EE1A3F48);
    }
  }

  if ((byte_1EE1A3F09 & 1) == 0)
  {
    v1 = qword_1EE1A3F20;
    if (qword_1EE1A3F20 || (v1 = re::ecs2::allocInfo_SkinnedMeshJointRange(a1), qword_1EE1A3F20 = v1, re::ecs2::initInfo_SkinnedMeshJointRange(v1, v2), (byte_1EE1A3F09 & 1) == 0))
    {
      byte_1EE1A3F09 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(qword_1EE1A3FD0, 0);
      unk_1EE1A3FE0 = 0x2800000003;
      unk_1EE1A3FE8 = v3;
      unk_1EE1A3FEC = 0;
      *&xmmword_1EE1A3FF0 = 0;
      *(&xmmword_1EE1A3FF0 + 1) = 0xFFFFFFFFLL;
      unk_1EE1A4000 = v1;
      unk_1EE1A4008 = 0;
      qword_1EE1A3FD0[0] = &unk_1F5CEB8F8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(qword_1EE1A3FD0, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SkinnedMeshJointRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SkinnedMeshJointRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SkinnedMeshJointRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SkinnedMeshJointRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SkinnedMeshJointRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SkinnedMeshJointRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SkinnedMeshJointRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SkinnedMeshJointRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1A3FF0 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_SkeletalPoseBufferComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A3F30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3F30))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A40A0, "SkeletalPoseBufferComponent");
    __cxa_guard_release(&qword_1EE1A3F30);
  }

  return &unk_1EE1A40A0;
}

void re::ecs2::initInfo_SkeletalPoseBufferComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v19[0] = 0xCDC652ECDEE0A8A6;
  v19[1] = "SkeletalPoseBufferComponent";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1A3F28, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A3F28);
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
      qword_1EE1A3F70 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "m_totalAbsoluteJointTransforms";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x6000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1A3F78 = v11;
      v12 = re::introspectionAllocator(v11);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::SkinnedMeshJointRange>>::get(v12);
      v13 = (*(*v12 + 32))(v12, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "m_jointTransformRanges";
      *(v13 + 16) = qword_1EE1A3FD0;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x8800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1A3F80 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_size_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "m_processedJointTransformRangeHash";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x5800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1A3F88 = v17;
      __cxa_guard_release(&qword_1EE1A3F28);
    }
  }

  *(this + 2) = 0x27000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A3F70;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SkeletalPoseBufferComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SkeletalPoseBufferComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SkeletalPoseBufferComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SkeletalPoseBufferComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227SkeletalPoseBufferComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v18 = v20;
}

void *re::ecs2::allocInfo_SkeletalPoseBufferSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A3F38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3F38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4130, "SkeletalPoseBufferSystem");
    __cxa_guard_release(&qword_1EE1A3F38);
  }

  return &unk_1EE1A4130;
}

void re::ecs2::initInfo_SkeletalPoseBufferSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xCEA160DB8A90D532;
  v6[1] = "SkeletalPoseBufferSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x22000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_SkeletalPoseBufferSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SkeletalPoseBufferSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SkeletalPoseBufferSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::SkeletalPoseBufferSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::SkeletalPoseBufferSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SkeletalPoseBufferSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SkeletalPoseBufferSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::SkeletalPoseBufferSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  a3[62] = &unk_1F5CEB5F8;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 65);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 32);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::SkeletalPoseBufferSystem>(uint64_t *a1)
{
  a1[62] = &unk_1F5CEB5F8;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 65);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 32);

  re::ecs2::System::~System(a1);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::SkeletalPoseBufferComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 24;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v6), v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v6 += 8;
    }

    while (v6 != 56);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

void re::ecs2::SkeletalPoseBufferSystem::~SkeletalPoseBufferSystem(re::ecs2::SkeletalPoseBufferSystem *this)
{
  *(this + 62) = &unk_1F5CEB5F8;
  re::FixedArray<CoreIKTransform>::deinit(this + 65);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 32);

  re::ecs2::System::~System(this);
}

{
  *(this + 62) = &unk_1F5CEB5F8;
  re::FixedArray<CoreIKTransform>::deinit(this + 65);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 32);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x38uLL))
        {
          v2 = 56 * a2;
          result = (*(*result + 32))(result, 56 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 56, a2);
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
        v10 = v8 + 56 * v9;
        v11 = v7;
        do
        {
          v12 = *v8;
          *(v11 + 2) = *(v8 + 8);
          *v11 = v12;
          v11[6] = 0;
          v11[3] = 0;
          v11[4] = 0;
          v11[2] = 0;
          *(v11 + 10) = 0;
          v13 = *(v8 + 16);
          v14 = *(v8 + 24);
          v15 = v8 + 16;
          v11[2] = v13;
          v11[3] = v14;
          *v15 = 0;
          *(v15 + 8) = 0;
          v16 = v11[4];
          v11[4] = *(v15 + 16);
          *(v15 + 16) = v16;
          v17 = v11[6];
          v11[6] = *(v15 + 32);
          *(v15 + 32) = v17;
          ++*(v15 + 24);
          ++*(v11 + 10);
          re::DynamicArray<unsigned long>::deinit(v15);
          v11 += 7;
          v8 = v15 + 40;
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

void **re::DynamicArray<unsigned short>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<unsigned short>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 2 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 2 * v5, (*(a2 + 32) + 2 * v5), 2 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 2 * v4);
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicOverflowArray<re::AABB,8ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::AABB,8ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 8;
  }

  else
  {
    v8 = result[4];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 8 || (v7 & 1) == 0))
    {
      if (a2 < 9)
      {
        v14 = result + 4;
        v15 = v4[5];
        if (v7)
        {
          v16 = v4 + 4;
        }

        else
        {
          v16 = v4[5];
        }

        memcpy(v14, v16, 32 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 59)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 32, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = 32 * a2;
        v10 = (*(*v5 + 32))(*result, 32 * a2, 16);
        if (v10)
        {
          v12 = v10;
          if (v4[2])
          {
            v13 = v4 + 4;
          }

          else
          {
            v13 = v4[5];
          }

          result = memcpy(v10, v13, 32 * v4[1]);
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, v4[5]);
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          v4[4] = a2;
          v4[5] = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::AABB,8ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 1);
    if (*(result + 16))
    {
      v3 = 8;
    }

    else
    {
      v3 = *(result + 4);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<re::AABB,8ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 1);
    result = re::DynamicOverflowArray<re::AABB,8ul>::setCapacity(v1, v4 + 1);
    *(v1 + 4) += 2;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::AABB,8ul>::growCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<re::AABB,8ul>::setCapacity(v3, v2);
    *(v3 + 4) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 8)
    {
      return result;
    }

    v5 = 16;
  }

  else
  {
    v4 = *(result + 4);
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

  return re::DynamicOverflowArray<re::AABB,8ul>::setCapacity(result, a2);
}

uint64_t re::DynamicArray<re::Matrix4x4<float>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::Matrix4x4<float>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::Matrix4x4<float>>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicArray<re::ecs2::SkeletalPoseBufferComponent::MeshBoundsEstimatorForJointRange>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::SkeletalPoseBufferComponent::MeshBoundsEstimatorForJointRange>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 57)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 128, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 7;
          result = (*(*result + 32))(result, a2 << 7, 8);
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
        v10 = &v8[16 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          v11[5] = 0;
          v11[2] = 0;
          v11[3] = 0;
          v11[1] = 0;
          *(v11 + 8) = 0;
          v14 = (v8 + 1);
          v13 = v8[1];
          *v11 = v12;
          v15 = v8[2];
          v11[1] = v13;
          v8[1] = 0;
          v11[2] = v15;
          v8[2] = 0;
          v16 = v11[3];
          v11[3] = v8[3];
          v8[3] = v16;
          v17 = v11[5];
          v11[5] = v8[5];
          v8[5] = v17;
          ++*(v8 + 8);
          ++*(v11 + 8);
          v11[7] = 0;
          v11[8] = 0;
          v11[6] = 0;
          v18 = v8 + 6;
          v11[6] = v8[6];
          v8[6] = 0;
          v19 = v11[8];
          v20 = v8[8];
          v11[7] = v8[7];
          v11[8] = v20;
          v8[7] = 0;
          v8[8] = v19;
          v11[10] = 0;
          v11[11] = 0;
          v11[9] = 0;
          v21 = v8 + 9;
          v11[9] = v8[9];
          v8[9] = 0;
          v22 = v11[11];
          v23 = v8[11];
          v11[10] = v8[10];
          v11[11] = v23;
          v8[10] = 0;
          v8[11] = v22;
          v11[12] = v8[12];
          v11[13] = 0;
          v11[14] = 0;
          v11[15] = 0;
          v25 = v8[13];
          v24 = v8 + 13;
          v11[13] = v25;
          *v24 = 0;
          v26 = v11[15];
          v27 = v24[2];
          v11[14] = v24[1];
          v11[15] = v27;
          v24[1] = 0;
          v24[2] = v26;
          re::FixedArray<CoreIKTransform>::deinit(v24);
          re::FixedArray<CoreIKTransform>::deinit(v21);
          re::FixedArray<CoreIKTransform>::deinit(v18);
          re::DynamicArray<unsigned long>::deinit(v14);
          v11 += 16;
          v8 = v24 + 3;
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CEB700;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEB758;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEB7B0;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEB808;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CEB700;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CEB758;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CEB7B0;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CEB808;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEB700;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEB700;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEB758;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEB758;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEB7B0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEB7B0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEB808;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEB808;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
        v5 = (*(**v3 + 32))(*v3, 448, 0);
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

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseBufferComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::IntrospectionDynamicArray<unsigned short>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<unsigned short>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<unsigned short>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<unsigned short>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<unsigned short>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<unsigned short>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<unsigned short>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<unsigned short>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<unsigned short>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<unsigned short>::add(this, &v10);
  v8 = (*(this + 4) + 2 * *(this + 2) - 2);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<unsigned short>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 2 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 2 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<unsigned short>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<unsigned short>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<unsigned short>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 2 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 2;
        v11 -= 2;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 2 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 2 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::SkinnedMeshJointRange>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::SkinnedMeshJointRange>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::SkinnedMeshJointRange>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::SkinnedMeshJointRange>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::SkinnedMeshJointRange>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::SkinnedMeshJointRange>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v11 = 0uLL;
  v13 = 0;
  v14 = 0;
  v10 = 0xFFFFFFFFLL;
  v12 = 0uLL;
  re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::add(a4, &v10);
  if (*(&v11 + 1) && v14)
  {
    (*(**(&v11 + 1) + 40))();
  }

  v8 = (*(a4 + 4) + 56 * *(a4 + 2) - 56);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::SkinnedMeshJointRange>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 56 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 56 * a3;
}

void *re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 56 * a2 + 16;
    v9 = a2;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v3[4] + v8);
      ++v9;
      v8 += 56;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 56 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0xFFFFFFFFLL;
        *(v7 + 8) = 0;
        *(v7 + 48) = 0;
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 16) = 0;
        *(v7 + 40) = 0;
        v6 += 56;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SkinnedMeshJointRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SkinnedMeshJointRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::ecs2::SkinnedMeshJointRange>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 56 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 56;
        v11 -= 56;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SkinnedMeshJointRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 56 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SkinnedMeshJointRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SkinnedMeshJointRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 56 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SkinnedMeshJointRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::make::shared::unsafelyInplace<re::ecs2::SkeletalPoseBufferComponent>(void *a1)
{
  bzero(a1, 0x270uLL);
  ArcSharedObject::ArcSharedObject(a1, 0);
  a1[2] = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F5CE2270;
  inited = objc_initWeak(a1 + 4, 0);
  a1[5] = 0;
  a1[9] = re::globalAllocators(inited)[2];
  *(a1 + 108) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  a1[21] = 0;
  a1[22] = 0xFFFFFFFFFFFFFFFLL;
  a1[23] = 0;
  a1[24] = 0;
  memset_pattern16(a1 + 25, &unk_1E30747C0, 0x40uLL);
  for (i = 0; i != 40; i += 5)
  {
    v4 = &a1[i];
    v4[37] = 0;
    v4[34] = 0;
    v4[35] = 0;
    v4[33] = 0;
    *(v4 + 72) = 0;
  }

  a1[77] = 0;
  a1[73] = 0;
  a1[75] = 0;
  a1[74] = 0;
  *(a1 + 152) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227SkeletalPoseBufferComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

re::ecs2::SkeletalPoseBufferSystem *re::ecs2::SkeletalPoseBufferSystem::SkeletalPoseBufferSystem(re::ecs2::SkeletalPoseBufferSystem *this)
{
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  v3 = re::ecs2::System::System(this, v2 ^ 1u, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CEB660;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 68) = 1;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 35) = 0;
  *(this + 76) = 0;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 98) = 1;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 54) = 0;
  *(this + 110) = 1;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 473) = 0u;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 47, 0);
  *(this + 98) += 2;
  *(this + 52) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 53, 0);
  *(this + 110) += 2;
  *(this + 58) = 0;
  *(this + 59) = this;
  *(this + 60) = this + 496;
  *(this + 488) = 1;
  re::ecs2::SkeletalPoseBufferComponentStateImpl::SkeletalPoseBufferComponentStateImpl((this + 496));
  return this;
}

void *re::ecs2::allocInfo_ScopeLanePair(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A41C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A41C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4308, "ScopeLanePair");
    __cxa_guard_release(&qword_1EE1A41C8);
  }

  return &unk_1EE1A4308;
}

void re::ecs2::initInfo_ScopeLanePair(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x5EF9E11BBFF1A274;
  v15[1] = "ScopeLanePair";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1A41D0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A41D0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "scope";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1A4230 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "lane";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1A4238 = v13;
      __cxa_guard_release(&qword_1EE1A41D0);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A4230;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ScopeLanePair>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ScopeLanePair>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ScopeLanePair>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ScopeLanePair>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::internal::defaultConstruct<re::ecs2::ScopeLanePair>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  v5 = (a3 + 32);

  return re::DynamicString::setCapacity(v5, 0);
}

double re::internal::defaultDestruct<re::ecs2::ScopeLanePair>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 32));

  return re::DynamicString::deinit(a3);
}

void *re::internal::defaultConstructV2<re::ecs2::ScopeLanePair>(_OWORD *a1)
{
  *a1 = 0u;
  a1[1] = 0u;
  v2 = re::DynamicString::setCapacity(a1, 0);
  a1[2] = 0u;
  a1[3] = 0u;
  v3 = a1 + 2;

  return re::DynamicString::setCapacity(v3, 0);
}

double re::internal::defaultDestructV2<re::ecs2::ScopeLanePair>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 32));

  return re::DynamicString::deinit(a1);
}

void *re::ecs2::allocInfo_CameraViewport(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A41D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A41D8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4398, "CameraViewport");
    __cxa_guard_release(&qword_1EE1A41D8);
  }

  return &unk_1EE1A4398;
}

void re::ecs2::initInfo_CameraViewport(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v23[0] = 0xF750B41F86BFEE16;
  v23[1] = "CameraViewport";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE1A41E0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A41E0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "originX";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1A4250 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "originY";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1A4258 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "width";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1A4260 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "height";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xC00000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1A4268 = v21;
      __cxa_guard_release(&qword_1EE1A41E0);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A4250;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CameraViewport>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CameraViewport>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CameraViewport>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CameraViewport>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v22 = v24;
}

double re::internal::defaultConstruct<re::ecs2::CameraViewport>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 0.0;
  *a3 = xmmword_1E3063230;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::CameraViewport>(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1E3063230;
  return result;
}

void re::ecs2::introspect_CameraOrientation(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A41E8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A41F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A41F0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A42C0, "CameraOrientation", 4, 4, 1, 1);
      qword_1EE1A42C0 = &unk_1F5D0C658;
      qword_1EE1A4300 = &re::ecs2::introspect_CameraOrientation(BOOL)::enumTable;
      dword_1EE1A42D0 = 9;
      __cxa_guard_release(&qword_1EE1A41F0);
    }

    if (_MergedGlobals_202)
    {
      break;
    }

    _MergedGlobals_202 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A42C0, a2);
    v33 = 0x586A12A243D84296;
    v34 = "CameraOrientation";
    v37 = 208862;
    v38 = "int";
    v4 = v36[0];
    v5 = v36[1];
    if (v37)
    {
      if (v37)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1A4300;
      v37 = v4;
      v38 = v5;
      re::TypeBuilder::beginEnumType(v36, &v33, 1, 1, &v37);
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
            *&v35.var0 = 2 * v11;
            v35.var1 = v10;
            re::TypeBuilder::addEnumConstant(v36, v15, &v35);
            if (*&v35.var0)
            {
              if (*&v35.var0)
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
              *&v35.var0 = 2 * v20;
              v35.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v36, v24, &v35);
              if (*&v35.var0)
              {
                if (*&v35.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v36, v26);
      xmmword_1EE1A42E0 = v35;
      if (v33)
      {
        if (v33)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v34);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1A41E8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Portrait";
      qword_1EE1A4240 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 8) = 1;
      *(v32 + 16) = "Landscape";
      qword_1EE1A4248 = v32;
      __cxa_guard_release(&qword_1EE1A41E8);
    }
  }
}

void *re::ecs2::allocInfo_PerspectiveCameraComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A41F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A41F8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4428, "PerspectiveCameraComponent");
    __cxa_guard_release(&qword_1EE1A41F8);
  }

  return &unk_1EE1A4428;
}

void re::ecs2::initInfo_PerspectiveCameraComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v25[0] = 0x7E1E37D6BC901B38;
  v25[1] = "PerspectiveCameraComponent";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&qword_1EE1A4200, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A4200);
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
      qword_1EE1A4270 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "near";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A4278 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_float(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "far";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A4280 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_float(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "fieldOfView";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2400000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1A4288 = v20;
      v21 = re::introspectionAllocator(v20);
      re::ecs2::introspect_CameraOrientation(v21, v22);
      v23 = (*(*v21 + 32))(v21, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "cameraOrientation";
      *(v23 + 16) = &qword_1EE1A42C0;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x2800000004;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1A4290 = v23;
      __cxa_guard_release(&qword_1EE1A4200);
    }
  }

  *(this + 2) = 0x11000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1A4270;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PerspectiveCameraComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PerspectiveCameraComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PerspectiveCameraComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PerspectiveCameraComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226PerspectiveCameraComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v24 = v26;
}

void *re::ecs2::allocInfo_OrthographicCameraComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A4208, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4208))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A44B8, "OrthographicCameraComponent");
    __cxa_guard_release(&qword_1EE1A4208);
  }

  return &unk_1EE1A44B8;
}

void re::ecs2::initInfo_OrthographicCameraComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v25[0] = 0x869DF0D89BEB39D0;
  v25[1] = "OrthographicCameraComponent";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&qword_1EE1A4210, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A4210);
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
      qword_1EE1A4298 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "near";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A42A0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_float(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "far";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A42A8 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_float(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "scale";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2400000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1A42B0 = v20;
      v21 = re::introspectionAllocator(v20);
      re::ecs2::introspect_CameraOrientation(v21, v22);
      v23 = (*(*v21 + 32))(v21, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "cameraOrientation";
      *(v23 + 16) = &qword_1EE1A42C0;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x2800000004;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1A42B8 = v23;
      __cxa_guard_release(&qword_1EE1A4210);
    }
  }

  *(this + 2) = 0xF000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1A4298;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::OrthographicCameraComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::OrthographicCameraComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::OrthographicCameraComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::OrthographicCameraComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227OrthographicCameraComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v24 = v26;
}

void *re::ecs2::allocInfo_CustomMatrixCameraComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A4218, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4218))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4548, "CustomMatrixCameraComponent");
    __cxa_guard_release(&qword_1EE1A4218);
  }

  return &unk_1EE1A4548;
}

void re::ecs2::initInfo_CustomMatrixCameraComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x9A2110E153E34C8CLL;
  v10[1] = "CustomMatrixCameraComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A4228, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A4228);
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
      qword_1EE1A4220 = v8;
      __cxa_guard_release(&qword_1EE1A4228);
    }
  }

  *(this + 2) = 0x24000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A4220;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CustomMatrixCameraComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CustomMatrixCameraComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CustomMatrixCameraComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CustomMatrixCameraComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227CustomMatrixCameraComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::ecs2::PerspectiveCameraComponent::PerspectiveCameraComponent(re::ecs2::PerspectiveCameraComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  v2 = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CEB990;
  *(v1 + 28) = 0x7F8000003C23D70ALL;
  *(v1 + 36) = 1115815936;
  *(v1 + 44) = 1;
  *(v1 + 176) = 0;
  *(v1 + 192) = xmmword_1E30476A0;
  do
  {
    v3 = (v1 + v2);
    v3[26] = 0;
    v3[27] = 0;
    v3[28] = 0;
    v3[29] = 0x3F80000000000000;
    v2 += 32;
  }

  while (v2 != 64);
  *(v1 + 48) = xmmword_1E3047670;
  *(v1 + 64) = xmmword_1E3047680;
  *(v1 + 80) = xmmword_1E30476A0;
  *(v1 + 96) = xmmword_1E30474D0;
  *(v1 + 112) = xmmword_1E3047670;
  *(v1 + 128) = xmmword_1E3047680;
  *(v1 + 144) = xmmword_1E30476A0;
  *(v1 + 160) = xmmword_1E30474D0;
}

uint64_t re::ecs2::PerspectiveCameraComponent::firstPerspectiveCameraInScene(uint64_t a1)
{
  v1 = *(re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
  if (*(a1 + 224) <= v1)
  {
    return 0;
  }

  v2 = *(*(a1 + 240) + 8 * v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 384);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 400);
  v5 = 8 * v3;
  while (1)
  {
    result = *v4;
    if (*(*(*v4 + 16) + 304))
    {
      break;
    }

    ++v4;
    v5 -= 8;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

void *re::ecs2::PerspectiveCameraComponent::calculateWorldPose@<X0>(uint64_t a1@<X0>, const re::ecs2::Entity *a2@<X1>, float32x4_t *a3@<X8>)
{
  result = re::TransformService::transformServiceFromEntity(*(a1 + 16), a2);
  if (result)
  {
    v7 = result;
    re::TransformService::flushDirtyComponentsQueue(result, *(a1 + 16));
    re::TransformService::worldTransform(v7, *(a1 + 16), 0, v28);
    v24 = v29;
    v25 = v30;
    result = re::ecs2::PerspectiveCameraComponent::localEyePose(a1, a2, &v26);
    _Q6 = v24;
    v9 = vextq_s8(vuzp1q_s32(_Q6, _Q6), v24, 0xCuLL);
    v10 = vnegq_f32(v24);
    v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v10), v26, v9);
    v12 = vaddq_f32(v11, v11);
    v13 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
    v14 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL), v10), v13, v9);
    v15 = vaddq_f32(v25, vaddq_f32(vaddq_f32(v26, vmulq_laneq_f32(v13, v24, 3)), vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL)));
    _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL), v10), v27, v9);
    v17 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v27, v24, 3);
    _Q3.i32[0] = v27.i32[3];
    v23 = vmlaq_laneq_f32(v17, v24, v27, 3);
    __asm { FMLA            S2, S3, V6.S[3] }

    v23.i32[3] = _S2;
  }

  else
  {
    v23 = xmmword_1E30474D0;
    v15 = 0uLL;
  }

  *a3 = v15;
  a3[1] = v23;
  return result;
}

_OWORD *re::ecs2::PerspectiveCameraComponent::localEyePose@<X0>(_OWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 == 2)
  {
    v5 = result[15];
    v6 = result[16];
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v5 = result[13];
    v6 = result[14];
LABEL_7:
    *a3 = v5;
    *(a3 + 16) = v6;
    return result;
  }

  if (a2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "localEyePose", 144, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0x3F80000000000000;
  }

  return result;
}

void re::ecs2::PerspectiveCameraComponent::projectionMatrix(float *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[8];
  v4 = a1[7];
  v5 = tanf(((a1[9] * 3.1416) / 180.0) * 0.5);
  v6 = 1.0 / v5;
  if (v3 == INFINITY)
  {
    v7 = -v4;
    LODWORD(v9) = 0;
    *(&v9 + 1) = 0;
    DWORD1(v8) = 0;
    *(&v8 + 1) = 0;
    *&v8 = 1.0 / v5;
    *(&v9 + 1) = v6;
    v10 = xmmword_1E3085330;
  }

  else
  {
    DWORD1(v8) = 0;
    *(&v8 + 1) = 0;
    *&v8 = 1.0 / v5;
    LODWORD(v9) = 0;
    *(&v9 + 1) = 0;
    *(&v9 + 1) = v6;
    *&v10 = 0;
    v7 = (v4 * v3) / (v4 - v3);
    *(&v10 + 2) = v3 / (v4 - v3);
    HIDWORD(v10) = -1.0;
  }

  *&v11 = 0;
  *(&v11 + 1) = LODWORD(v7);
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v11;
  re::Projection::makeReverseDepth(v12, a2);
}

void re::ecs2::PerspectiveCameraComponent::calculateProjection(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *a2 = 0;
  *(a2 + 4) = xmmword_1E30806D0;
  *(a2 + 20) = 0xBDCCCCCD3DCCCCCDLL;
  *(a2 + 28) = 0;
  *(a2 + 32) = xmmword_1E30476A0;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 160) = 0;
  v5 = a1[8];
  v6 = a1[7];
  v7 = 1.0 / tanf(((a1[9] * 3.1416) / 180.0) * 0.5);
  if (v5 == INFINITY)
  {
    v8 = -v6;
    LODWORD(v10) = 0;
    *(&v10 + 1) = 0;
    DWORD1(v9) = 0;
    *(&v9 + 1) = 0;
    *&v9 = v7 / a3;
    *(&v10 + 1) = v7;
    v11 = xmmword_1E3085330;
  }

  else
  {
    DWORD1(v9) = 0;
    *(&v9 + 1) = 0;
    *&v9 = v7 / a3;
    LODWORD(v10) = 0;
    *(&v10 + 1) = 0;
    *(&v10 + 1) = v7;
    *&v11 = 0;
    v8 = (v6 * v5) / (v6 - v5);
    *(&v11 + 2) = v5 / (v6 - v5);
    HIDWORD(v11) = -1.0;
  }

  *&v12 = 0;
  *(&v12 + 1) = LODWORD(v8);
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  re::Projection::makeReverseDepth(v16, v15);
  *(a2 + 80) = 1;
  v13 = v15[1];
  *(a2 + 96) = v15[0];
  *(a2 + 112) = v13;
  v14 = v15[3];
  *(a2 + 128) = v15[2];
  *(a2 + 144) = v14;
  re::Projection::decompose(a2, v15);
}

float re::Projection::setAspect(re::Projection *this, int a2, float a3)
{
  if (a2)
  {
    v4 = (*(this + 5) + *(this + 6)) * 0.5;
    v5 = ((*(this + 4) - *(this + 3)) * 0.5) / a3;
    *(this + 5) = v4 + v5;
    *(this + 6) = v4 - v5;
  }

  else
  {
    v6 = (*(this + 3) + *(this + 4)) * 0.5;
    v7 = ((*(this + 5) - *(this + 6)) * 0.5) * a3;
    *(this + 3) = v6 - v7;
    *(this + 4) = v6 + v7;
  }

  re::Projection::cullingProjectionMatrix(this, v11);
  if ((*(this + 80) & 1) == 0)
  {
    *(this + 80) = 1;
  }

  v8 = v11[1];
  *(this + 6) = v11[0];
  *(this + 7) = v8;
  result = *&v12;
  v10 = v13;
  *(this + 8) = v12;
  *(this + 9) = v10;
  if ((*(this + 160) & 1) == 0)
  {
    return re::Projection::decompose(this, v11);
  }

  return result;
}

__n128 re::ecs2::PerspectiveCameraComponent::localEyePoseMatrix@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  re::ecs2::PerspectiveCameraComponent::localEyePose(a1, a2, &v24);
  v4 = v25;
  v5 = v26;
  v6 = v4 + v4;
  v7 = v5 + v5;
  v8 = v27;
  v9 = v8 + v8;
  v10 = v4 * (v4 + v4);
  v11 = v5 * (v5 + v5);
  v12 = v8 * (v8 + v8);
  v13 = v6 * v26;
  v14 = v6 * v27;
  v15 = v7 * v27;
  v16 = v7 * v28;
  v17 = v9 * v28;
  HIDWORD(v18) = 0;
  *&v18 = 1.0 - (v11 + v12);
  *(&v18 + 1) = (v6 * v26) + v17;
  *(&v18 + 2) = (v6 * v27) - v16;
  v19 = v6 * v28;
  v20 = 1.0 - (v10 + v12);
  HIDWORD(v21) = 0;
  *&v21 = v13 - v17;
  *(&v21 + 1) = v20;
  *(&v21 + 2) = v15 + v19;
  HIDWORD(v22) = 0;
  *&v22 = v14 + v16;
  *(&v22 + 1) = v15 - v19;
  *(&v22 + 2) = 1.0 - (v10 + v11);
  *a3 = v18;
  *(a3 + 16) = v21;
  result = v24;
  result.n128_u32[3] = 1.0;
  *(a3 + 32) = v22;
  *(a3 + 48) = result;
  return result;
}

uint64_t re::ecs2::PerspectiveCameraComponent::setLocalEyePose(uint64_t result, _OWORD *a2, int a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = 208;
    }

    else
    {
      if (a3 != 2)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "setLocalEyePose", 163, v3, v4);
        result = _os_crash();
        __break(1u);
        return result;
      }

      v5 = 240;
    }

    v6 = (result + v5);
    v7 = a2[1];
    *v6 = *a2;
    v6[1] = v7;
  }

  return result;
}

uint64_t re::ecs2::PerspectiveCameraComponent::setLocalEyePoseFromMatrix(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *a2;
  v5 = *(a2 + 4);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 36);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = (*a2 + v9) + v13;
  if (v15 >= 0.0)
  {
    v36 = sqrtf(v15 + 1.0);
    v37 = v36 + v36;
    v38 = vrecpe_f32(COERCE_UNSIGNED_INT(v36 + v36));
    v39 = vmul_f32(v38, vrecps_f32(COERCE_UNSIGNED_INT(v36 + v36), v38));
    v40 = vmul_f32(v39, vrecps_f32(COERCE_UNSIGNED_INT(v36 + v36), v39)).f32[0];
    *&v45 = (v10 - v12) * v40;
    v46 = (v11 - v7) * v40;
    v47 = (v5 - v8) * v40;
    v48 = v37 * 0.25;
  }

  else if (v6 < v9 || v6 < v13)
  {
    v17 = 1.0 - v6;
    v18 = v9 < v13;
    v19 = sqrtf((v17 - v9) + v13);
    *&v20 = v19 + v19;
    v21 = vrecpe_f32(v20);
    v22 = vmul_f32(v21, vrecps_f32(v20, v21));
    v23 = vmul_f32(v22, vrecps_f32(v20, v22)).f32[0];
    v24 = (v7 + v11) * v23;
    v25 = v10 + v12;
    v26 = v25 * v23;
    v27 = *&v20 * 0.25;
    v28 = (v5 - v8) * v23;
    v29 = sqrtf(v9 + (v17 - v13));
    *&v30 = v29 + v29;
    v31 = vrecpe_f32(v30);
    v32 = vmul_f32(v31, vrecps_f32(v30, v31));
    v32.f32[0] = vmul_f32(v32, vrecps_f32(v30, v32)).f32[0];
    v33 = (v5 + v8) * v32.f32[0];
    v34 = *&v30 * 0.25;
    v35 = v25 * v32.f32[0];
    v48 = (v11 - v7) * v32.f32[0];
    if (v18)
    {
      *&v45 = v24;
    }

    else
    {
      *&v45 = v33;
    }

    if (v18)
    {
      v46 = v26;
    }

    else
    {
      v46 = v34;
    }

    if (v18)
    {
      v47 = v27;
    }

    else
    {
      v47 = v35;
    }

    if (v18)
    {
      v48 = v28;
    }
  }

  else
  {
    v41 = sqrtf(v6 + ((1.0 - v9) - v13));
    *&v42 = v41 + v41;
    v43 = vrecpe_f32(v42);
    v44 = vmul_f32(v43, vrecps_f32(v42, v43));
    v44.f32[0] = vmul_f32(v44, vrecps_f32(v42, v44)).f32[0];
    *&v45 = *&v42 * 0.25;
    v46 = (v5 + v8) * v44.f32[0];
    v47 = (v7 + v11) * v44.f32[0];
    v48 = (v10 - v12) * v44.f32[0];
  }

  v51 = v3;
  v52 = v4;
  *(&v45 + 1) = v46;
  *(&v45 + 1) = __PAIR64__(LODWORD(v48), LODWORD(v47));
  v50[0] = v14;
  v50[1] = v45;
  return re::ecs2::PerspectiveCameraComponent::setLocalEyePose(a1, v50, a3);
}

double re::ecs2::OrthographicCameraComponent::OrthographicCameraComponent(re::ecs2::OrthographicCameraComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  v2 = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CEB9E8;
  *(v1 + 28) = 0x447A00003C23D70ALL;
  *(v1 + 36) = 1065353216;
  *(v1 + 44) = 1;
  do
  {
    v3 = (v1 + v2);
    v3[22] = 0;
    v3[23] = 0;
    v3[24] = 0;
    v3[25] = 0x3F80000000000000;
    v2 += 32;
  }

  while (v2 != 64);
  *&result = 1065353216;
  *(v1 + 48) = xmmword_1E3047670;
  *(v1 + 64) = xmmword_1E3047680;
  *(v1 + 80) = xmmword_1E30476A0;
  *(v1 + 96) = xmmword_1E30474D0;
  *(v1 + 112) = xmmword_1E3047670;
  *(v1 + 128) = xmmword_1E3047680;
  *(v1 + 144) = xmmword_1E30476A0;
  *(v1 + 160) = xmmword_1E30474D0;
  return result;
}

uint64_t re::ecs2::OrthographicCameraComponent::firstOrthographicCameraInScene(uint64_t a1)
{
  v1 = *(re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
  if (*(a1 + 224) <= v1)
  {
    return 0;
  }

  v2 = *(*(a1 + 240) + 8 * v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 384);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 400);
  v5 = 8 * v3;
  while (1)
  {
    result = *v4;
    if (*(*(*v4 + 16) + 304))
    {
      break;
    }

    ++v4;
    v5 -= 8;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

void *re::ecs2::OrthographicCameraComponent::calculateWorldPose@<X0>(uint64_t a1@<X0>, const re::ecs2::Entity *a2@<X1>, float32x4_t *a3@<X8>)
{
  result = re::TransformService::transformServiceFromEntity(*(a1 + 16), a2);
  if (result)
  {
    v7 = result;
    re::TransformService::flushDirtyComponentsQueue(result, *(a1 + 16));
    re::TransformService::worldTransform(v7, *(a1 + 16), 0, v28);
    v24 = v29;
    v25 = v30;
    result = re::ecs2::OrthographicCameraComponent::localEyePose(a1, a2, &v26);
    _Q6 = v24;
    v9 = vextq_s8(vuzp1q_s32(_Q6, _Q6), v24, 0xCuLL);
    v10 = vnegq_f32(v24);
    v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v10), v26, v9);
    v12 = vaddq_f32(v11, v11);
    v13 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
    v14 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL), v10), v13, v9);
    v15 = vaddq_f32(v25, vaddq_f32(vaddq_f32(v26, vmulq_laneq_f32(v13, v24, 3)), vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL)));
    _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL), v10), v27, v9);
    v17 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v27, v24, 3);
    _Q3.i32[0] = v27.i32[3];
    v23 = vmlaq_laneq_f32(v17, v24, v27, 3);
    __asm { FMLA            S2, S3, V6.S[3] }

    v23.i32[3] = _S2;
  }

  else
  {
    v23 = xmmword_1E30474D0;
    v15 = 0uLL;
  }

  *a3 = v15;
  a3[1] = v23;
  return result;
}

_OWORD *re::ecs2::OrthographicCameraComponent::localEyePose@<X0>(_OWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 == 2)
  {
    v5 = result[13];
    v6 = result[14];
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v5 = result[11];
    v6 = result[12];
LABEL_7:
    *a3 = v5;
    *(a3 + 16) = v6;
    return result;
  }

  if (a2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "localEyePose", 246, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0x3F80000000000000;
  }

  return result;
}

float re::ecs2::OrthographicCameraComponent::calculateProjection@<S0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *a2 = 0;
  *(a2 + 4) = xmmword_1E30806D0;
  *(a2 + 20) = 0xBDCCCCCD3DCCCCCDLL;
  *(a2 + 28) = 0;
  *(a2 + 32) = xmmword_1E30476A0;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 160) = 0;
  v4 = a1[8];
  v3 = a1[9];
  v5.f32[0] = v3 * a3;
  v6 = 2.0 / (v5.f32[0] + v5.f32[0]);
  v7 = 2.0 / (v3 + v3);
  v5.f32[1] = v3;
  *&v8 = vdiv_f32(vsub_f32(v5, v5), vsub_f32(vneg_f32(v5), v5));
  v9 = v4 - a1[7];
  v10 = v6;
  LODWORD(v11) = 0;
  *(&v11 + 1) = v7;
  *&v12 = 0;
  HIDWORD(v12) = 0;
  *(&v12 + 2) = 1.0 / v9;
  *(&v8 + 2) = v4 / v9;
  HIDWORD(v8) = 1.0;
  v16 = LODWORD(v10);
  v17 = v11;
  v18 = v12;
  v19 = v8;
  *(a2 + 80) = 1;
  v13 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v13;
  v14 = v19;
  *(a2 + 128) = v18;
  *(a2 + 144) = v14;
  return re::Projection::decompose(a2, &v16);
}

__n128 re::ecs2::OrthographicCameraComponent::localEyePoseMatrix@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  re::ecs2::OrthographicCameraComponent::localEyePose(a1, a2, &v24);
  v4 = v25;
  v5 = v26;
  v6 = v4 + v4;
  v7 = v5 + v5;
  v8 = v27;
  v9 = v8 + v8;
  v10 = v4 * (v4 + v4);
  v11 = v5 * (v5 + v5);
  v12 = v8 * (v8 + v8);
  v13 = v6 * v26;
  v14 = v6 * v27;
  v15 = v7 * v27;
  v16 = v7 * v28;
  v17 = v9 * v28;
  HIDWORD(v18) = 0;
  *&v18 = 1.0 - (v11 + v12);
  *(&v18 + 1) = (v6 * v26) + v17;
  *(&v18 + 2) = (v6 * v27) - v16;
  v19 = v6 * v28;
  v20 = 1.0 - (v10 + v12);
  HIDWORD(v21) = 0;
  *&v21 = v13 - v17;
  *(&v21 + 1) = v20;
  *(&v21 + 2) = v15 + v19;
  HIDWORD(v22) = 0;
  *&v22 = v14 + v16;
  *(&v22 + 1) = v15 - v19;
  *(&v22 + 2) = 1.0 - (v10 + v11);
  *a3 = v18;
  *(a3 + 16) = v21;
  result = v24;
  result.n128_u32[3] = 1.0;
  *(a3 + 32) = v22;
  *(a3 + 48) = result;
  return result;
}

uint64_t re::ecs2::OrthographicCameraComponent::setLocalEyePose(uint64_t result, _OWORD *a2, int a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = 176;
    }

    else
    {
      if (a3 != 2)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "setLocalEyePose", 265, v3, v4);
        result = _os_crash();
        __break(1u);
        return result;
      }

      v5 = 208;
    }

    v6 = (result + v5);
    v7 = a2[1];
    *v6 = *a2;
    v6[1] = v7;
  }

  return result;
}

uint64_t re::ecs2::OrthographicCameraComponent::setLocalEyePoseFromMatrix(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *a2;
  v5 = *(a2 + 4);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 36);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = (*a2 + v9) + v13;
  if (v15 >= 0.0)
  {
    v36 = sqrtf(v15 + 1.0);
    v37 = v36 + v36;
    v38 = vrecpe_f32(COERCE_UNSIGNED_INT(v36 + v36));
    v39 = vmul_f32(v38, vrecps_f32(COERCE_UNSIGNED_INT(v36 + v36), v38));
    v40 = vmul_f32(v39, vrecps_f32(COERCE_UNSIGNED_INT(v36 + v36), v39)).f32[0];
    *&v45 = (v10 - v12) * v40;
    v46 = (v11 - v7) * v40;
    v47 = (v5 - v8) * v40;
    v48 = v37 * 0.25;
  }

  else if (v6 < v9 || v6 < v13)
  {
    v17 = 1.0 - v6;
    v18 = v9 < v13;
    v19 = sqrtf((v17 - v9) + v13);
    *&v20 = v19 + v19;
    v21 = vrecpe_f32(v20);
    v22 = vmul_f32(v21, vrecps_f32(v20, v21));
    v23 = vmul_f32(v22, vrecps_f32(v20, v22)).f32[0];
    v24 = (v7 + v11) * v23;
    v25 = v10 + v12;
    v26 = v25 * v23;
    v27 = *&v20 * 0.25;
    v28 = (v5 - v8) * v23;
    v29 = sqrtf(v9 + (v17 - v13));
    *&v30 = v29 + v29;
    v31 = vrecpe_f32(v30);
    v32 = vmul_f32(v31, vrecps_f32(v30, v31));
    v32.f32[0] = vmul_f32(v32, vrecps_f32(v30, v32)).f32[0];
    v33 = (v5 + v8) * v32.f32[0];
    v34 = *&v30 * 0.25;
    v35 = v25 * v32.f32[0];
    v48 = (v11 - v7) * v32.f32[0];
    if (v18)
    {
      *&v45 = v24;
    }

    else
    {
      *&v45 = v33;
    }

    if (v18)
    {
      v46 = v26;
    }

    else
    {
      v46 = v34;
    }

    if (v18)
    {
      v47 = v27;
    }

    else
    {
      v47 = v35;
    }

    if (v18)
    {
      v48 = v28;
    }
  }

  else
  {
    v41 = sqrtf(v6 + ((1.0 - v9) - v13));
    *&v42 = v41 + v41;
    v43 = vrecpe_f32(v42);
    v44 = vmul_f32(v43, vrecps_f32(v42, v43));
    v44.f32[0] = vmul_f32(v44, vrecps_f32(v42, v44)).f32[0];
    *&v45 = *&v42 * 0.25;
    v46 = (v5 + v8) * v44.f32[0];
    v47 = (v7 + v11) * v44.f32[0];
    v48 = (v10 - v12) * v44.f32[0];
  }

  v51 = v3;
  v52 = v4;
  *(&v45 + 1) = v46;
  *(&v45 + 1) = __PAIR64__(LODWORD(v48), LODWORD(v47));
  v50[0] = v14;
  v50[1] = v45;
  return re::ecs2::OrthographicCameraComponent::setLocalEyePose(a1, v50, a3);
}

uint64_t re::ecs2::CustomMatrixCameraComponent::firstCustomMatrixCameraInScene(uint64_t a1)
{
  v1 = *(re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
  if (*(a1 + 224) <= v1)
  {
    return 0;
  }

  v2 = *(*(a1 + 240) + 8 * v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 384);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 400);
  v5 = 8 * v3;
  while (1)
  {
    result = *v4;
    if (*(*(*v4 + 16) + 304))
    {
      break;
    }

    ++v4;
    v5 -= 8;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

re::ecs2::CustomMatrixCameraComponent *re::ecs2::CustomMatrixCameraComponent::CustomMatrixCameraComponent(re::ecs2::CustomMatrixCameraComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  v2 = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CEBA40;
  *(v3 + 28) = 0;
  *(v3 + 32) = 0;
  *(v3 + 36) = 0;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  do
  {
    v4 = (this + v2);
    v4[22] = 0;
    v4[23] = 0;
    v4[24] = 0;
    v4[25] = 0x3F80000000000000;
    v2 += 32;
  }

  while (v2 != 64);
  *(this + 120) = 0;
  *(this + 496) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 416) = 0;
  v5 = tanf(0.56723);
  LODWORD(v6) = 0;
  *(&v6 + 1) = 1.0 / v5;
  v13[0] = COERCE_UNSIGNED_INT((1.0 / v5) / 1.3333);
  v13[1] = v6;
  v13[2] = xmmword_1E3085330;
  v13[3] = xmmword_1E3085340;
  re::Projection::makeReverseDepth(v13, v12);
  v7 = v12[1];
  *(this + 16) = v12[0];
  *(this + 17) = v7;
  v8 = v12[3];
  *(this + 18) = v12[2];
  *(this + 19) = v8;
  v9 = *(this + 17);
  *(this + 20) = *(this + 16);
  *(this + 21) = v9;
  v10 = *(this + 19);
  *(this + 22) = *(this + 18);
  *(this + 23) = v10;
  *(this + 32) = 1;
  *(this + 3) = xmmword_1E3047670;
  *(this + 4) = xmmword_1E3047680;
  *(this + 5) = xmmword_1E30476A0;
  *(this + 6) = xmmword_1E30474D0;
  *(this + 7) = xmmword_1E3047670;
  *(this + 8) = xmmword_1E3047680;
  *(this + 9) = xmmword_1E30476A0;
  *(this + 10) = xmmword_1E30474D0;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  return this;
}

void re::ecs2::CustomMatrixCameraComponent::calculateWorldPose(uint64_t a1@<X0>, const re::ecs2::Entity *a2@<X1>, float32x4_t *a3@<X8>)
{
  if (a2 == 1)
  {
    v6 = 240;
  }

  else
  {
    if (a2 != 2)
    {
LABEL_7:
      v8 = re::TransformService::transformServiceFromEntity(*(a1 + 16), a2);
      if (v8)
      {
        v9 = v8;
        re::TransformService::flushDirtyComponentsQueue(v8, *(a1 + 16));
        re::TransformService::worldTransform(v9, *(a1 + 16), 0, v32);
        v28 = v33;
        v29 = v34;
        re::ecs2::CustomMatrixCameraComponent::localEyePose(a1, a2, &v30);
        _Q6 = v28;
        v11 = vextq_s8(vuzp1q_s32(_Q6, _Q6), v28, 0xCuLL);
        v12 = vnegq_f32(v28);
        v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), v12), v30, v11);
        v14 = vaddq_f32(v13, v13);
        v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
        v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v12), v15, v11);
        v17 = vaddq_f32(vaddq_f32(v30, vmulq_laneq_f32(v15, v28, 3)), vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
        _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL), v12), v31, v11);
        v19 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v31, v28, 3);
        _Q3.i32[0] = v31.i32[3];
        v20 = vmlaq_laneq_f32(v19, v28, v31, 3);
        __asm { FMLA            S2, S3, V6.S[3] }

        v20.i32[3] = _S2;
        *a3 = vaddq_f32(v29, v17);
        a3[1] = v20;
      }

      else
      {
        a3->i64[0] = 0;
        a3->i64[1] = 0;
        a3[1].i64[0] = 0;
        a3[1].i64[1] = 0x3F80000000000000;
      }

      return;
    }

    v6 = 241;
  }

  v7 = *(a1 + v6);
  if (v7 != 1)
  {
    if (v7)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "calculateWorldPose", 339);
      _os_crash();
      __break(1u);
      return;
    }

    goto LABEL_7;
  }

  if (a2 == 2)
  {
    v26 = *(a1 + 208);
    v27 = *(a1 + 224);
  }

  else
  {
    v26 = *(a1 + 176);
    v27 = *(a1 + 192);
  }

  *a3 = v26;
  a3[1] = v27;
}

void re::ecs2::CustomMatrixCameraComponent::localEyePose(uint64_t a1@<X0>, uint64_t a2@<X1>, float32x4_t *a3@<X8>)
{
  if (a2 == 2)
  {
    v5 = *(a1 + 224);
    v6 = *(a1 + 208);
    v7 = v5;
    v4 = *(a1 + 241);
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v3 = *(a1 + 192);
    v6 = *(a1 + 176);
    v7 = v3;
    v4 = *(a1 + 240);
LABEL_7:
    re::ecs2::CustomMatrixCameraComponent::localEyePose(a1, &v6, v4, a3);
    return;
  }

  if (a2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "localEyePose", 442);
    _os_crash();
    __break(1u);
  }

  else
  {
    a3->i64[0] = 0;
    a3->i64[1] = 0;
    a3[1].i64[0] = 0;
    a3[1].i64[1] = 0x3F80000000000000;
  }
}

uint64_t re::ecs2::CustomMatrixCameraComponent::projectionMatrix(uint64_t a1, uint64_t a2)
{
  if (a2 < 3)
  {
    return a1 + qword_1E3085558[a2];
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "projectionMatrix", 351, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::ecs2::CustomMatrixCameraComponent::calculateProjection(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 4) = xmmword_1E30806D0;
  *(a3 + 20) = 0xBDCCCCCD3DCCCCCDLL;
  *(a3 + 28) = 0;
  *(a3 + 32) = xmmword_1E30476A0;
  *(a3 + 48) = 1;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 160) = 0;
  if (a2 >= 3)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "calculateProjection", 363);
    _os_crash();
    __break(1u);
  }

  else
  {
    v6 = (a1 + qword_1E3085558[a2]);
    *(a3 + 80) = 1;
    v7 = v6[1];
    *(a3 + 96) = *v6;
    *(a3 + 112) = v7;
    v8 = v6[3];
    *(a3 + 128) = v6[2];
    *(a3 + 144) = v8;
    re::Projection::decompose(a3, v6);
    if (*re::ecs2::CustomMatrixCameraComponent::cullingProjectionMatrix(a1, a2) == 1)
    {
      v9 = 432;
      if (a2 == 2)
      {
        v9 = 512;
      }

      v10 = (a1 + v9);
      if ((*(a3 + 160) & 1) == 0)
      {
        *(a3 + 160) = 1;
      }

      v11 = v10[1];
      *(a3 + 176) = *v10;
      *(a3 + 192) = v11;
      v12 = v10[3];
      *(a3 + 208) = v10[2];
      *(a3 + 224) = v12;

      re::Projection::decompose(a3, v10);
    }
  }
}

uint64_t re::ecs2::CustomMatrixCameraComponent::cullingProjectionMatrix(uint64_t a1, uint64_t a2)
{
  if (a2 < 3)
  {
    return a1 + qword_1E3085540[a2];
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "cullingProjectionMatrix", 385, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::ecs2::CustomMatrixCameraComponent::setProjection(uint64_t a1, re::Projection *this, unsigned int a3)
{
  if (*(this + 80) == 1)
  {
    v6 = *(this + 7);
    v10 = *(this + 6);
    v11 = v6;
    v7 = *(this + 9);
    v12 = *(this + 8);
    v13 = v7;
  }

  else
  {
    re::Projection::cullingProjectionMatrix(this, &v10);
  }

  result = re::ecs2::CustomMatrixCameraComponent::setRenderProjectionFromMatrix(a1, &v10, a3);
  if (*(this + 160) == 1)
  {
    re::Projection::cullingProjectionMatrix(this, v9);
    LOBYTE(v10) = 1;
    v11 = v9[0];
    v12 = v9[1];
    v13 = v9[2];
    v14 = v9[3];
    return re::ecs2::CustomMatrixCameraComponent::setCullingProjectionFromMatrix(a1, &v10, a3);
  }

  return result;
}

uint64_t re::ecs2::CustomMatrixCameraComponent::setRenderProjectionFromMatrix(uint64_t result, __int128 *a2, unsigned int a3)
{
  if (a3 >= 3)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "setRenderProjectionFromMatrix", 405, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v5 = (result + qword_1E3085558[a3]);
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v5[2] = a2[2];
    v5[3] = v8;
    *v5 = v6;
    v5[1] = v7;
  }

  return result;
}

uint64_t re::ecs2::CustomMatrixCameraComponent::setCullingProjectionFromMatrix(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 == 2)
  {
    if (*(result + 496))
    {
      if ((*a2 & 1) == 0)
      {
        *(result + 496) = 0;
        return result;
      }
    }

    else
    {
      if ((*a2 & 1) == 0)
      {
        return result;
      }

      *(result + 496) = 1;
    }

    v8 = *(a2 + 16);
    v9 = *(a2 + 32);
    v10 = *(a2 + 64);
    *(result + 544) = *(a2 + 48);
    *(result + 560) = v10;
    *(result + 512) = v8;
    *(result + 528) = v9;
    return result;
  }

  if (a3 > 1)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "setCullingProjectionFromMatrix", 418, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    if (*(result + 416))
    {
      if ((*a2 & 1) == 0)
      {
        *(result + 416) = 0;
        return result;
      }

      goto LABEL_12;
    }

    if (*a2)
    {
      *(result + 416) = 1;
LABEL_12:
      v5 = *(a2 + 16);
      v6 = *(a2 + 32);
      v7 = *(a2 + 64);
      *(result + 464) = *(a2 + 48);
      *(result + 480) = v7;
      *(result + 432) = v5;
      *(result + 448) = v6;
    }
  }

  return result;
}

void re::ecs2::CustomMatrixCameraComponent::localEyePose(uint64_t a1@<X0>, float32x4_t *a2@<X1>, int a3@<W2>, float32x4_t *a4@<X8>)
{
  if (a3 == 1)
  {
    v8 = re::TransformService::transformServiceFromEntity(*(a1 + 16), a2);
    if (v8)
    {
      re::TransformService::worldTransform(v8, *(a1 + 16), 0, v31);
      _V0.S[3] = v32.i32[3];
      _Q1 = vnegq_f32(v32);
      v11 = vnegq_f32(v33);
      v12 = vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL);
      v13 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), v32), v12, v33);
      v14 = vaddq_f32(v13, v13);
      v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
      v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v32), v15, v12);
      v17 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v15, v32, 3), v33), vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
      v18 = a2[1];
      v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a2, *a2), *a2, 0xCuLL), v32), *a2, v12);
      v20 = vaddq_f32(v19, v19);
      v21 = vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL);
      v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), v32), v21, v12);
      v23 = vaddq_f32(vaddq_f32(*a2, vmulq_laneq_f32(v21, v32, 3)), vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL));
      _Q6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v32), v18, v12);
      v25 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q6, _Q6), _Q6, 0xCuLL), v18, v32, 3);
      _Q6.i32[0] = v18.i32[3];
      v26 = vmlsq_laneq_f32(v25, v32, v18, 3);
      __asm { FMLA            S1, S6, V0.S[3] }

      v26.i32[3] = _Q1.i32[0];
      *a4 = vaddq_f32(v17, v23);
      a4[1] = v26;
    }

    else
    {
      a4->i64[0] = 0;
      a4->i64[1] = 0;
      a4[1].i64[0] = 0;
      a4[1].i64[1] = 0x3F80000000000000;
    }
  }

  else if (a3)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid pose reference", "!Unreachable code", "localEyePose", 461);
    _os_crash();
    __break(1u);
  }

  else
  {
    v6 = a2[1];
    *a4 = *a2;
    a4[1] = v6;
  }
}

__n128 re::ecs2::CustomMatrixCameraComponent::localEyePoseMatrix@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  re::ecs2::CustomMatrixCameraComponent::localEyePose(a1, a2, &v24);
  v4 = v25;
  v5 = v26;
  v6 = v4 + v4;
  v7 = v5 + v5;
  v8 = v27;
  v9 = v8 + v8;
  v10 = v4 * (v4 + v4);
  v11 = v5 * (v5 + v5);
  v12 = v8 * (v8 + v8);
  v13 = v6 * v26;
  v14 = v6 * v27;
  v15 = v7 * v27;
  v16 = v7 * v28;
  v17 = v9 * v28;
  HIDWORD(v18) = 0;
  *&v18 = 1.0 - (v11 + v12);
  *(&v18 + 1) = (v6 * v26) + v17;
  *(&v18 + 2) = (v6 * v27) - v16;
  v19 = v6 * v28;
  v20 = 1.0 - (v10 + v12);
  HIDWORD(v21) = 0;
  *&v21 = v13 - v17;
  *(&v21 + 1) = v20;
  *(&v21 + 2) = v15 + v19;
  HIDWORD(v22) = 0;
  *&v22 = v14 + v16;
  *(&v22 + 1) = v15 - v19;
  *(&v22 + 2) = 1.0 - (v10 + v11);
  *a3 = v18;
  *(a3 + 16) = v21;
  result = v24;
  result.n128_u32[3] = 1.0;
  *(a3 + 32) = v22;
  *(a3 + 48) = result;
  return result;
}

uint64_t re::ecs2::CustomMatrixCameraComponent::setEyePose(uint64_t result, _OWORD *a2, char a3, int a4)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v7 = a2[1];
      *(result + 208) = *a2;
      *(result + 224) = v7;
      *(result + 241) = a3;
    }

    else if (a4 == 1)
    {
      v6 = a2[1];
      *(result + 176) = *a2;
      *(result + 192) = v6;
      *(result + 240) = a3;
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "setEyePose", 498, v4, v5);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::ecs2::CustomMatrixCameraComponent::setLocalEyePoseFromMatrix(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *a2;
  v5 = *(a2 + 4);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 36);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = (*a2 + v9) + v13;
  if (v15 >= 0.0)
  {
    v36 = sqrtf(v15 + 1.0);
    v37 = v36 + v36;
    v38 = vrecpe_f32(COERCE_UNSIGNED_INT(v36 + v36));
    v39 = vmul_f32(v38, vrecps_f32(COERCE_UNSIGNED_INT(v36 + v36), v38));
    v40 = vmul_f32(v39, vrecps_f32(COERCE_UNSIGNED_INT(v36 + v36), v39)).f32[0];
    *&v45 = (v10 - v12) * v40;
    v46 = (v11 - v7) * v40;
    v47 = (v5 - v8) * v40;
    v48 = v37 * 0.25;
  }

  else if (v6 < v9 || v6 < v13)
  {
    v17 = 1.0 - v6;
    v18 = v9 < v13;
    v19 = sqrtf((v17 - v9) + v13);
    *&v20 = v19 + v19;
    v21 = vrecpe_f32(v20);
    v22 = vmul_f32(v21, vrecps_f32(v20, v21));
    v23 = vmul_f32(v22, vrecps_f32(v20, v22)).f32[0];
    v24 = (v7 + v11) * v23;
    v25 = v10 + v12;
    v26 = v25 * v23;
    v27 = *&v20 * 0.25;
    v28 = (v5 - v8) * v23;
    v29 = sqrtf(v9 + (v17 - v13));
    *&v30 = v29 + v29;
    v31 = vrecpe_f32(v30);
    v32 = vmul_f32(v31, vrecps_f32(v30, v31));
    v32.f32[0] = vmul_f32(v32, vrecps_f32(v30, v32)).f32[0];
    v33 = (v5 + v8) * v32.f32[0];
    v34 = *&v30 * 0.25;
    v35 = v25 * v32.f32[0];
    v48 = (v11 - v7) * v32.f32[0];
    if (v18)
    {
      *&v45 = v24;
    }

    else
    {
      *&v45 = v33;
    }

    if (v18)
    {
      v46 = v26;
    }

    else
    {
      v46 = v34;
    }

    if (v18)
    {
      v47 = v27;
    }

    else
    {
      v47 = v35;
    }

    if (v18)
    {
      v48 = v28;
    }
  }

  else
  {
    v41 = sqrtf(v6 + ((1.0 - v9) - v13));
    *&v42 = v41 + v41;
    v43 = vrecpe_f32(v42);
    v44 = vmul_f32(v43, vrecps_f32(v42, v43));
    v44.f32[0] = vmul_f32(v44, vrecps_f32(v42, v44)).f32[0];
    *&v45 = *&v42 * 0.25;
    v46 = (v5 + v8) * v44.f32[0];
    v47 = (v7 + v11) * v44.f32[0];
    v48 = (v10 - v12) * v44.f32[0];
  }

  v51 = v3;
  v52 = v4;
  *(&v45 + 1) = v46;
  *(&v45 + 1) = __PAIR64__(LODWORD(v48), LODWORD(v47));
  v50[0] = v14;
  v50[1] = v45;
  return re::ecs2::CustomMatrixCameraComponent::setEyePose(a1, v50, 0, a3);
}

uint64_t re::ecs2::CustomMatrixCameraComponent::setWorldEyePoseFromMatrix(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *a2;
  v5 = *(a2 + 4);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 36);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = (*a2 + v9) + v13;
  if (v15 >= 0.0)
  {
    v36 = sqrtf(v15 + 1.0);
    v37 = v36 + v36;
    v38 = vrecpe_f32(COERCE_UNSIGNED_INT(v36 + v36));
    v39 = vmul_f32(v38, vrecps_f32(COERCE_UNSIGNED_INT(v36 + v36), v38));
    v40 = vmul_f32(v39, vrecps_f32(COERCE_UNSIGNED_INT(v36 + v36), v39)).f32[0];
    *&v45 = (v10 - v12) * v40;
    v46 = (v11 - v7) * v40;
    v47 = (v5 - v8) * v40;
    v48 = v37 * 0.25;
  }

  else if (v6 < v9 || v6 < v13)
  {
    v17 = 1.0 - v6;
    v18 = v9 < v13;
    v19 = sqrtf((v17 - v9) + v13);
    *&v20 = v19 + v19;
    v21 = vrecpe_f32(v20);
    v22 = vmul_f32(v21, vrecps_f32(v20, v21));
    v23 = vmul_f32(v22, vrecps_f32(v20, v22)).f32[0];
    v24 = (v7 + v11) * v23;
    v25 = v10 + v12;
    v26 = v25 * v23;
    v27 = *&v20 * 0.25;
    v28 = (v5 - v8) * v23;
    v29 = sqrtf(v9 + (v17 - v13));
    *&v30 = v29 + v29;
    v31 = vrecpe_f32(v30);
    v32 = vmul_f32(v31, vrecps_f32(v30, v31));
    v32.f32[0] = vmul_f32(v32, vrecps_f32(v30, v32)).f32[0];
    v33 = (v5 + v8) * v32.f32[0];
    v34 = *&v30 * 0.25;
    v35 = v25 * v32.f32[0];
    v48 = (v11 - v7) * v32.f32[0];
    if (v18)
    {
      *&v45 = v24;
    }

    else
    {
      *&v45 = v33;
    }

    if (v18)
    {
      v46 = v26;
    }

    else
    {
      v46 = v34;
    }

    if (v18)
    {
      v47 = v27;
    }

    else
    {
      v47 = v35;
    }

    if (v18)
    {
      v48 = v28;
    }
  }

  else
  {
    v41 = sqrtf(v6 + ((1.0 - v9) - v13));
    *&v42 = v41 + v41;
    v43 = vrecpe_f32(v42);
    v44 = vmul_f32(v43, vrecps_f32(v42, v43));
    v44.f32[0] = vmul_f32(v44, vrecps_f32(v42, v44)).f32[0];
    *&v45 = *&v42 * 0.25;
    v46 = (v5 + v8) * v44.f32[0];
    v47 = (v7 + v11) * v44.f32[0];
    v48 = (v10 - v12) * v44.f32[0];
  }

  v51 = v3;
  v52 = v4;
  *(&v45 + 1) = v46;
  *(&v45 + 1) = __PAIR64__(LODWORD(v48), LODWORD(v47));
  v50[0] = v14;
  v50[1] = v45;
  return re::ecs2::CustomMatrixCameraComponent::setEyePose(a1, v50, 1, a3);
}

uint64_t re::ecs2::CustomMatrixCameraComponent::setRenderFrustumTangents(uint64_t result, _OWORD *a2, unsigned int a3)
{
  if (a3 >= 3)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "setRenderFrustumTangents", 525, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result + qword_1E3085570[a3]) = *a2;
  }

  return result;
}

uint64_t re::ecs2::CustomMatrixCameraComponent::renderFrustumTangents(uint64_t a1, uint64_t a2)
{
  if (a2 < 3)
  {
    return *(a1 + qword_1E3085570[a2]);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "renderFrustumTangents", 539, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::ecs2::PerspectiveCameraComponent::~PerspectiveCameraComponent(re::ecs2::PerspectiveCameraComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::OrthographicCameraComponent::~OrthographicCameraComponent(re::ecs2::OrthographicCameraComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::CustomMatrixCameraComponent::~CustomMatrixCameraComponent(re::ecs2::CustomMatrixCameraComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs226PerspectiveCameraComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227OrthographicCameraComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227CustomMatrixCameraComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

void re::registerSerializationFunctions(re *this)
{
  v198 = re::introspectionSharedMutex(this);
  std::__shared_mutex_base::lock(v198);
  v202 = 0x6DAE480279BALL;
  v203 = "Component";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v199 = 0x7F36B44A9D0F5EC6;
  v200 = "AssetBinarySerializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v2);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0x81C6E49267FF3CC8;
  v200 = "AssetBinaryDeserializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v16);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0x3D2ADDFABE78EB94;
  v200 = "AssetOPACKSerializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v30);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0x935762BFD538CE16;
  v200 = "AssetOPACKDeserializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v44);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0x8EBD744EB006D4;
  v200 = "AssetJSONSerializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v58);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0xD414A1634161956;
  v200 = "AssetJSONDeserializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v72);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0xE1F66B0F30BD1E9ELL;
  v200 = "ECSJSONSerializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v86);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0x3373FC80C73C66A0;
  v200 = "ECSJSONDeserializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v100);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0x88B8E3BC1E0ECD0ALL;
  v200 = "ECSOPACKSerializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v114);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0x337AFDA7A6DC2A0CLL;
  v200 = "ECSOPACKDeserializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v128);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0xD66B7D4190E6B598;
  v200 = "NetworkOPACKSerializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v142);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0xDEED4B9BC35C271ALL;
  v200 = "NetworkOPACKDeserializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v156);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0x287C37956ADFC9C4;
  v200 = "NetworkCompatSerializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v170);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0xEFB8C0610360E046;
  v200 = "NetworkCompatDeserializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v184);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  std::__shared_mutex_base::unlock(v198);
}