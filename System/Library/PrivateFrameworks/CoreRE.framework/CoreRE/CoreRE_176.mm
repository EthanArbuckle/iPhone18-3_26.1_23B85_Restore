uint64_t re::MaterialManager::addDefaultVariationFallbackValues(uint64_t this, re::TechniqueDefinitionBuilder *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 57);
  if (v2)
  {
    v4 = this;
    v5 = *(a2 + 59);
    v6 = &v5[v2];
    do
    {
      v22 = *v5;
      this = re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find((v4 + 976), &v22);
      v7 = *(v4 + 984) + 72 * this;
      v8 = (v7 + 8);
      v19 = v7 + 8;
      v20 = 0;
      v9 = *(v7 + 24);
      if (v9 >= 0x10)
      {
        v10 = 0;
        v11 = *v8;
        v12 = v9 >> 4;
        while (1)
        {
          v13 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v11), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v20 = v13 ^ 0xFFFFLL;
          if (v13 != 0xFFFFLL)
          {
            break;
          }

          v10 -= 16;
          ++v11;
          if (!--v12)
          {
            goto LABEL_13;
          }
        }

        v14 = __clz(__rbit64(v13 ^ 0xFFFFLL));
        v15 = v14 - v10;
        v21 = v14 - v10;
        if (v14 + 1 != v10)
        {
          do
          {
            v16 = (*(v19 + 8) + 96 * v15);
            memset(v23, 0, sizeof(v23));
            re::DynamicString::setCapacity(v23, 0);
            v28 = 0u;
            v27 = 0u;
            v26 = 0u;
            v25 = 0u;
            re::DynamicString::operator=(v23, v16);
            v24 = v16[8];
            TypeSize = re::mtl::getTypeSize(v24);
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            memcpy(&v25, v16 + 20, TypeSize);
            v18 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a2 + 584, v16, v23);
            if (*&v23[0])
            {
              if (BYTE8(v23[0]))
              {
                (*(**&v23[0] + 40))(v18);
              }
            }

            this = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v19);
            v15 = v21;
          }

          while (v21 != -1);
        }
      }

LABEL_13:
      ++v5;
    }

    while (v5 != v6);
  }

  return this;
}

int64x2_t re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find(a1, a2) == -1)
  {
    if (!*(a1 + 56))
    {
    }

    v8 = *(a1 + 32);
    if (!v8 || (v9 = *(a1 + 16), v9 > 8 * v8))
    {
      re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(a1);
      v9 = *(a1 + 16);
    }

    v10 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
    v11 = (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31);
    v12 = v9 >> 4;
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
        re::internal::assertLog(4, v6, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
        _os_crash();
        __break(1u);
        break;
      }
    }

    v16 = v13 + 16 * v14;
    v17 = *(v16 + v15);
    *(v16 + v15) = v11 & 0x7F;
    v18 = 9 * (v15 + 16 * v14);
    v19 = (*(a1 + 8) + 72 * (v15 + 16 * v14));
    *v19 = *a2;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::HashBrown((v19 + 1), a3);
    if (v17 == 255)
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
    v22 = *(*(a1 + 8) + 8 * v18);
    v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) >> 27));
    *(a1 + 40) ^= (v23 >> 31) ^ v23;
  }

  return result;
}

uint64_t re::MaterialManager::createPerSceneBufferTableForName(re::MaterialManager *this, const char *__s, uint64_t a3)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = strlen(__s);
  if (v6)
  {
    v6 = MurmurHash3_x64_128(__s, v6, 0, v17);
    v7 = (v17[1] - 0x61C8864680B583E9 + (v17[0] << 6) + (v17[0] >> 2)) ^ v17[0];
  }

  else
  {
    v7 = 0;
  }

  v8 = (a3 - 0x61C8864680B583E9 + (v7 << 6) + (v7 >> 2)) ^ v7;
  v17[0] = v8;
  if (!*(this + 68) || (v9 = *(*(this + 69) + 4 * (v8 % *(this + 142))), v9 == 0x7FFFFFFF))
  {
LABEL_9:
    v12 = re::globalAllocators(v6);
    v13 = (*(*v12[2] + 32))(v12[2], 288, 8);
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0u;
    *(v13 + 128) = 0u;
    *(v13 + 144) = 0u;
    *(v13 + 160) = 0u;
    *(v13 + 176) = 0u;
    *(v13 + 192) = 0u;
    *(v13 + 208) = 0u;
    *(v13 + 224) = 0u;
    *(v13 + 240) = 0u;
    *(v13 + 256) = 0u;
    *(v13 + 272) = 0u;
    *(v13 + 160) = 1;
    *(v13 + 176) = 0;
    *(v13 + 184) = 0;
    *(v13 + 168) = 0;
    *(v13 + 192) = 0;
    *(v13 + 208) = 0;
    *(v13 + 216) = 0;
    *(v13 + 200) = 0;
    *(v13 + 224) = 0;
    *(v13 + 232) = 0u;
    *(v13 + 248) = 0u;
    *(v13 + 264) = 0;
    v16 = v13;
    re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(this + 544, v17, &v16);
  }

  else
  {
    v10 = *(this + 70);
    v11 = *(*(this + 69) + 4 * (v8 % *(this + 142)));
    while (*(v10 + 24 * v11 + 8) != v8)
    {
      v11 = *(v10 + 24 * v11) & 0x7FFFFFFF;
      if (v11 == 0x7FFFFFFF)
      {
        goto LABEL_9;
      }
    }

    v15 = 0x7FFFFFFFLL;
    while (*(v10 + 24 * v9 + 8) != v8)
    {
      v9 = *(v10 + 24 * v9) & 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        return *(v10 + 24 * v15 + 16);
      }
    }

    v15 = v9;
    return *(v10 + 24 * v15 + 16);
  }

  return v13;
}

uint64_t re::MaterialManager::initPerSceneTables_ProbeManager(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 896);
  if (a3)
  {
    v6 = *(v5 + 56);
    v7 = *(a2 + 24);
    v35 = 0x3F800981E521C7A1;
    re::TextureManager::stockTextureForType(v6, 6, v26);
    re::TextureTable::setTexture(v7, &v35, v26);
    if (v26[0])
    {
    }

    v8 = *(a2 + 24);
    v34 = 0x150A18CBFF11727ALL;
    v35 = 0;
    re::TextureManager::stockTextureForType(v6, 3, v26);
    re::TextureTable::setTexture(v8, &v34, v26);
    if (v26[0])
    {
    }

    v9 = *(a2 + 24);
    v33 = 0x24E8D221D19BF998;
    v34 = 0;
    re::TextureManager::stockTextureForType(v6, 5, v26);
    re::TextureTable::setTexture(v9, &v33, v26);
    if (v26[0])
    {
    }

    v10 = *(a2 + 24);
    v32 = 0x319D4D8796A12B1FLL;
    v33 = 0;
    re::TextureManager::stockTextureForType(v6, 2, v26);
    re::TextureTable::setTexture(v10, &v32, v26);
    if (v26[0])
    {
    }

    v32 = 0;
    v11 = *(a2 + 24);
    v31 = 0x1AA47CB53A9AC861;
    re::TextureManager::stockTextureForType(v6, 3, v26);
    re::TextureTable::setTexture(v11, &v31, v26);
    if (v26[0])
    {
    }

    v30 = 0x7831721862C9B2CBLL;
    v31 = 0;
    v12 = *(a2 + 32);
    v26[0] = *(a1 + 760);
    v27 = 0;
    v28 = 0;
    v13 = *(a1 + 760);
  }

  else
  {
    v14 = [*(*(*(v5 + 112) + 304) + 80) textureType];
    v15 = *(a2 + 24);
    if (v14 == 5)
    {
      v23 = 0x24E8D221D19BF998;
      re::TextureTable::setTexture(v15, &v23, (*(*(*(a1 + 896) + 112) + 304) + 80));
      v17 = *(a2 + 24);
      v22 = 0x319D4D8796A12B1FLL;
      v23 = 0;
      re::TextureTable::setTexture(v17, &v22, (*(*(*(a1 + 896) + 112) + 304) + 88));
      v22 = 0;
    }

    else if (v14 == 6)
    {
      v25 = 0x3F800981E521C7A1;
      re::TextureTable::setTexture(v15, &v25, (*(*(*(a1 + 896) + 112) + 304) + 80));
      v16 = *(a2 + 24);
      v24 = 0x150A18CBFF11727ALL;
      v25 = 0;
      re::TextureTable::setTexture(v16, &v24, (*(*(*(a1 + 896) + 112) + 304) + 88));
      v24 = 0;
    }

    else
    {
      v21 = 0x1AA47CB53A9AC861;
      re::TextureTable::setTexture(v15, &v21, (*(*(*(a1 + 896) + 112) + 304) + 80));
      v21 = 0;
    }

    v12 = *(a2 + 32);
    v30 = 0x7831721862C9B2CBLL;
    v18 = *(*(a1 + 896) + 112);
    if (v18)
    {
      v19 = *(v18 + 304);
    }

    else
    {
      v19 = 0;
    }

    v26[0] = *(v19 + 128);
    v27 = 0;
    v28 = 0;
    v13 = *(v19 + 128);
  }

  v29 = [v13 length];
  result = re::BufferTable::setBuffer(v12, &v30, v26);
  if (v27 != -1)
  {
    return (off_1F5D060B0[v27])(&v36, v26);
  }

  return result;
}

uint64_t re::MaterialManager::deinit(re::MaterialManager *this)
{
  v2 = *(this + 144);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 70);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 144);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    re::internal::destroyPersistent<re::BufferTable>(*(*(this + 70) + 24 * v3 + 16));
    v6 = *(this + 144);
    if (v6 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 70) + 24 * v3) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v6;
LABEL_14:
    ;
  }

  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 68);
  v7 = *(this + 52);
  *(this + 52) = 0;
  if (v7)
  {
    v8 = *(this + 54);
    v9 = 8 * v7;
    do
    {
      objc_destroyWeak(v8);
      *v8++ = 0;
      v9 -= 8;
    }

    while (v9);
  }

  ++*(this + 106);
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit(this + 400);
  os_unfair_lock_lock(this + 122);
  re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 440);
  os_unfair_lock_unlock(this + 122);
  v10 = *(this + 132);
  if (v10)
  {
    v11 = 0;
    v12 = *(this + 64);
    while (1)
    {
      v13 = *v12;
      v12 += 6;
      if (v13 < 0)
      {
        break;
      }

      if (v10 == ++v11)
      {
        LODWORD(v11) = *(this + 132);
        break;
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  while (v11 != v10)
  {
    re::internal::destroyPersistent<re::TextureTable>(*(*(this + 64) + 24 * v11 + 16));
    v14 = *(this + 132);
    if (v14 <= v11 + 1)
    {
      v14 = v11 + 1;
    }

    while (v14 - 1 != v11)
    {
      LODWORD(v11) = v11 + 1;
      if ((*(*(this + 64) + 24 * v11) & 0x80000000) != 0)
      {
        goto LABEL_31;
      }
    }

    LODWORD(v11) = v14;
LABEL_31:
    ;
  }

  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 62);
  v16 = *(this + 156);
  if (v16)
  {
    v17 = 0;
    v18 = *(this + 76);
    while (1)
    {
      v19 = *v18;
      v18 += 6;
      if (v19 < 0)
      {
        break;
      }

      if (v16 == ++v17)
      {
        LODWORD(v17) = *(this + 156);
        break;
      }
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  if (v17 != v16)
  {
    v20 = *(this + 156);
    do
    {
      v21 = *(*(this + 76) + 24 * v17 + 16);
      if (v21)
      {
        v22 = re::globalAllocators(v15)[2];
        re::SamplerTable::~SamplerTable(v21);
        v15 = (*(*v22 + 40))(v22, v21);
        v20 = *(this + 156);
      }

      if (v20 <= v17 + 1)
      {
        v23 = v17 + 1;
      }

      else
      {
        v23 = v20;
      }

      while (v23 - 1 != v17)
      {
        LODWORD(v17) = v17 + 1;
        if ((*(*(this + 76) + 24 * v17) & 0x80000000) != 0)
        {
          goto LABEL_49;
        }
      }

      LODWORD(v17) = v23;
LABEL_49:
      ;
    }

    while (v17 != v16);
  }

  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 74);
  v24 = *(this + 44);
  if (v24)
  {
    v25 = 0;
    v26 = *(this + 20);
    while (1)
    {
      v27 = *v26;
      v26 += 6;
      if (v27 < 0)
      {
        break;
      }

      if (v24 == ++v25)
      {
        LODWORD(v25) = *(this + 44);
        break;
      }
    }
  }

  else
  {
    LODWORD(v25) = 0;
  }

  while (v25 != v24)
  {
    re::internal::destroyPersistent<re::TechniqueResolutions<re::AttributeResolution>>(*(*(this + 20) + 24 * v25 + 16));
    v28 = *(this + 44);
    if (v28 <= v25 + 1)
    {
      v28 = v25 + 1;
    }

    while (v28 - 1 != v25)
    {
      LODWORD(v25) = v25 + 1;
      if ((*(*(this + 20) + 24 * v25) & 0x80000000) != 0)
      {
        goto LABEL_63;
      }
    }

    LODWORD(v25) = v28;
LABEL_63:
    ;
  }

  v29 = *(this + 32);
  if (v29)
  {
    v30 = 0;
    v31 = *(this + 14);
    while (1)
    {
      v32 = *v31;
      v31 += 6;
      if (v32 < 0)
      {
        break;
      }

      if (v29 == ++v30)
      {
        LODWORD(v30) = *(this + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v30) = 0;
  }

  while (v30 != v29)
  {
    re::internal::destroyPersistent<re::TechniqueResolutions<re::BufferResolution>>(*(*(this + 14) + 24 * v30 + 16));
    v33 = *(this + 32);
    if (v33 <= v30 + 1)
    {
      v33 = v30 + 1;
    }

    while (v33 - 1 != v30)
    {
      LODWORD(v30) = v30 + 1;
      if ((*(*(this + 14) + 24 * v30) & 0x80000000) != 0)
      {
        goto LABEL_77;
      }
    }

    LODWORD(v30) = v33;
LABEL_77:
    ;
  }

  v34 = *(this + 20);
  if (v34)
  {
    v35 = 0;
    v36 = *(this + 8);
    while (1)
    {
      v37 = *v36;
      v36 += 6;
      if (v37 < 0)
      {
        break;
      }

      if (v34 == ++v35)
      {
        LODWORD(v35) = *(this + 20);
        break;
      }
    }
  }

  else
  {
    LODWORD(v35) = 0;
  }

  while (v35 != v34)
  {
    re::internal::destroyPersistent<re::TechniqueResolutions<re::BufferResolution>>(*(*(this + 8) + 24 * v35 + 16));
    v38 = *(this + 20);
    if (v38 <= v35 + 1)
    {
      v38 = v35 + 1;
    }

    while (v38 - 1 != v35)
    {
      LODWORD(v35) = v35 + 1;
      if ((*(*(this + 8) + 24 * v35) & 0x80000000) != 0)
      {
        goto LABEL_91;
      }
    }

    LODWORD(v35) = v38;
LABEL_91:
    ;
  }

  v39 = *(this + 8);
  if (v39)
  {
    v40 = 0;
    v41 = *(this + 2);
    while (1)
    {
      v42 = *v41;
      v41 += 6;
      if (v42 < 0)
      {
        break;
      }

      if (v39 == ++v40)
      {
        LODWORD(v40) = *(this + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v40) = 0;
  }

  while (v40 != v39)
  {
    re::internal::destroyPersistent<re::TechniqueResolutions<re::ConstantResolution>>(*(*(this + 2) + 24 * v40 + 16));
    v43 = *(this + 8);
    if (v43 <= v40 + 1)
    {
      v43 = v40 + 1;
    }

    while (v43 - 1 != v40)
    {
      LODWORD(v40) = v40 + 1;
      if ((*(*(this + 2) + 24 * v40) & 0x80000000) != 0)
      {
        goto LABEL_105;
      }
    }

    LODWORD(v40) = v43;
LABEL_105:
    ;
  }

  v44 = *(this + 56);
  if (v44)
  {
    v45 = 0;
    v46 = *(this + 26);
    while (1)
    {
      v47 = *v46;
      v46 += 6;
      if (v47 < 0)
      {
        break;
      }

      if (v44 == ++v45)
      {
        LODWORD(v45) = *(this + 56);
        break;
      }
    }
  }

  else
  {
    LODWORD(v45) = 0;
  }

  while (v45 != v44)
  {
    re::internal::destroyPersistent<re::TechniqueResolutions<re::BufferResolution>>(*(*(this + 26) + 24 * v45 + 16));
    v48 = *(this + 56);
    if (v48 <= v45 + 1)
    {
      v48 = v45 + 1;
    }

    while (v48 - 1 != v45)
    {
      LODWORD(v45) = v45 + 1;
      if ((*(*(this + 26) + 24 * v45) & 0x80000000) != 0)
      {
        goto LABEL_119;
      }
    }

    LODWORD(v45) = v48;
LABEL_119:
    ;
  }

  v49 = *(this + 68);
  if (v49)
  {
    v50 = 0;
    v51 = *(this + 32);
    while (1)
    {
      v52 = *v51;
      v51 += 6;
      if (v52 < 0)
      {
        break;
      }

      if (v49 == ++v50)
      {
        LODWORD(v50) = *(this + 68);
        break;
      }
    }
  }

  else
  {
    LODWORD(v50) = 0;
  }

  while (v50 != v49)
  {
    re::internal::destroyPersistent<re::TechniqueResolutions<re::BufferResolution>>(*(*(this + 32) + 24 * v50 + 16));
    v53 = *(this + 68);
    if (v53 <= v50 + 1)
    {
      v53 = v50 + 1;
    }

    while (v53 - 1 != v50)
    {
      LODWORD(v50) = v50 + 1;
      if ((*(*(this + 32) + 24 * v50) & 0x80000000) != 0)
      {
        goto LABEL_133;
      }
    }

    LODWORD(v50) = v53;
LABEL_133:
    ;
  }

  if (*(this + 267))
  {
    v54 = *(this + 266);
    if (v54)
    {
      memset_pattern16(*(this + 131), &memset_pattern_275, 4 * v54);
    }

    v55 = *(this + 268);
    if (v55)
    {
      v56 = *(this + 132);
      do
      {
        if ((*v56 & 0x80000000) != 0)
        {
          *v56 &= ~0x80000000;
        }

        v56 += 8;
        --v55;
      }

      while (v55);
    }

    *(this + 269) = 0x7FFFFFFF;
    *(this + 1068) = 0;
    ++*(this + 270);
  }

  return re::DataArray<re::MaterialParameterBlock>::deinit(this + 1088);
}

re *re::internal::destroyPersistent<re::BufferTable>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::BufferTable::~BufferTable(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

re *re::internal::destroyPersistent<re::TextureTable>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::TextureTableImpl<NS::SharedPtr<MTL::Texture>>::~TextureTableImpl(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

re *re::internal::destroyPersistent<re::TechniqueResolutions<re::AttributeResolution>>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    v3 = *(v1 + 1);
    if (v3)
    {
      if (*(v1 + 5))
      {
        (*(*v3 + 40))(v3);
      }

      *(v1 + 5) = 0;
      *(v1 + 2) = 0;
      *(v1 + 3) = 0;
      *(v1 + 1) = 0;
      ++*(v1 + 8);
    }

    v4 = *(*v2 + 40);

    return v4(v2, v1);
  }

  return result;
}

re *re::internal::destroyPersistent<re::TechniqueResolutions<re::BufferResolution>>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::DynamicArray<unsigned long>::deinit(v1 + 48);
    re::DynamicArray<unsigned long>::deinit(v1 + 8);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

re *re::internal::destroyPersistent<re::TechniqueResolutions<re::ConstantResolution>>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::DynamicArray<re::ConstantResolution>::deinit(v1 + 48);
    re::DynamicArray<re::ConstantResolution>::deinit(v1 + 8);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t re::DataArray<re::MaterialParameterBlock>::deinit(uint64_t result)
{
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::MaterialParameterBlock>::clear(result);
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

uint64_t re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(uint64_t a1, unint64_t *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 24 * HIDWORD(v10) + 16;
  }

  v6 = re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v10, v9);
  v7 = *a2;
  *(v6 + 16) = *a3;
  result = v6 + 16;
  *(result - 8) = v7;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  result = re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(&v8, a1, *a2, *a2);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v9, v8);
    v7 = *a3;
    *(result + 8) = *a2;
    *(result + 16) = v7;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::MaterialManager::findTextureTableByName(re::MaterialManager *this, const char *__s)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = strlen(__s);
  if (v4)
  {
    v4 = MurmurHash3_x64_128(__s, v4, 0, &v10);
    v5 = (*(&v10 + 1) + (v10 << 6) + (v10 >> 2) - 0x61C8864680B583E9) ^ v10;
  }

  else
  {
    v5 = 0;
  }

  if (!*(this + 62) || (v6 = *(*(this + 63) + 4 * (v5 % *(this + 130))), v6 == 0x7FFFFFFF))
  {
LABEL_9:
    v8 = *re::graphicsLogObjects(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v10) = 136315138;
      *(&v10 + 4) = __s;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Texture table %s not found. Returning null.", &v10, 0xCu);
    }

    return 0;
  }

  else
  {
    v7 = *(this + 64);
    while (*(v7 + 24 * v6 + 8) != v5)
    {
      v6 = *(v7 + 24 * v6) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        goto LABEL_9;
      }
    }

    return *(v7 + 24 * v6 + 16);
  }
}

uint64_t re::MaterialManager::findSamplerTableByName(re::MaterialManager *this, const char *__s)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = strlen(__s);
  if (v4)
  {
    v4 = MurmurHash3_x64_128(__s, v4, 0, &v10);
    v5 = (*(&v10 + 1) + (v10 << 6) + (v10 >> 2) - 0x61C8864680B583E9) ^ v10;
  }

  else
  {
    v5 = 0;
  }

  if (!*(this + 74) || (v6 = *(*(this + 75) + 4 * (v5 % *(this + 154))), v6 == 0x7FFFFFFF))
  {
LABEL_9:
    v8 = *re::graphicsLogObjects(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v10) = 136315138;
      *(&v10 + 4) = __s;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Sampler table %s not found. Returning null.", &v10, 0xCu);
    }

    return 0;
  }

  else
  {
    v7 = *(this + 76);
    while (*(v7 + 24 * v6 + 8) != v5)
    {
      v6 = *(v7 + 24 * v6) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        goto LABEL_9;
      }
    }

    return *(v7 + 24 * v6 + 16);
  }
}

uint64_t re::MaterialManager::findPerSceneTextureTableByName(re::MaterialManager *this, const char *__s, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = strlen(__s);
  if (v6)
  {
    v6 = MurmurHash3_x64_128(__s, v6, 0, v13);
    v7 = (*&v13[8] - 0x61C8864680B583E9 + (*v13 << 6) + (*v13 >> 2)) ^ *v13;
  }

  else
  {
    v7 = 0;
  }

  if (!*(this + 62) || (v8 = (a3 - 0x61C8864680B583E9 + (v7 << 6) + (v7 >> 2)) ^ v7, v9 = *(*(this + 63) + 4 * (v8 % *(this + 130))), v9 == 0x7FFFFFFF))
  {
LABEL_9:
    v11 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 136315394;
      *&v13[4] = __s;
      *&v13[12] = 2048;
      *&v13[14] = a3;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Texture table %s for scene index %zu not found. Returning null.", v13, 0x16u);
    }

    return 0;
  }

  else
  {
    v10 = *(this + 64);
    while (*(v10 + 24 * v9 + 8) != v8)
    {
      v9 = *(v10 + 24 * v9) & 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        goto LABEL_9;
      }
    }

    return *(v10 + 24 * v9 + 16);
  }
}

uint64_t re::MaterialManager::findOrCreateTextureTableForName(re::MaterialManager *this, const char *__s)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = strlen(__s);
  if (v4)
  {
    v4 = MurmurHash3_x64_128(__s, v4, 0, v12);
    v5 = (v12[1] + (v12[0] << 6) + (v12[0] >> 2) - 0x61C8864680B583E9) ^ v12[0];
  }

  else
  {
    v5 = 0;
  }

  v12[0] = v5;
  if (!*(this + 62) || (v6 = *(*(this + 63) + 4 * (v5 % *(this + 130))), v6 == 0x7FFFFFFF))
  {
LABEL_9:
    v8 = re::globalAllocators(v4);
    v9 = (*(*v8[2] + 32))(v8[2], 112, 8);
    *(v9 + 8) = 0u;
    *(v9 + 24) = 0u;
    *(v9 + 40) = 0u;
    *(v9 + 56) = 0u;
    *(v9 + 72) = 0u;
    *(v9 + 88) = 0u;
    *(v9 + 104) = 0;
    *v9 = &unk_1F5D06170;
    v11 = v9;
    re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(this + 496, v12, &v11);
    return v11;
  }

  else
  {
    v7 = *(this + 64);
    while (*(v7 + 24 * v6 + 8) != v5)
    {
      v6 = *(v7 + 24 * v6) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        goto LABEL_9;
      }
    }

    return *(v7 + 24 * v6 + 16);
  }
}

void re::MaterialManager::resizeScenes(re::MaterialManager *this, unint64_t a2)
{
  v92 = *MEMORY[0x1E69E9840];
  if (a2 <= 4)
  {
    v3 = 4;
  }

  else
  {
    v3 = a2;
  }

  v4 = *(this + 86);
  v5 = v4;
  if (v3 < v4)
  {
    v6 = v3 << 6;
    v7 = 24;
    v8 = v3;
    while (1)
    {
      v9 = *(this + 86);
      if (v9 <= v8)
      {
        break;
      }

      v10 = *(this + 88) + v6;
      re::internal::destroyPersistent<re::TextureTable>(*(v10 + 24));
      re::internal::destroyPersistent<re::BufferTable>(*(v10 + 32));
      re::internal::destroyPersistent<re::BufferTable>(*(v10 + 40));
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(this + 496, v10, *v10, v87);
      v11 = HIDWORD(v87[1]);
      if (HIDWORD(v87[1]) != 0x7FFFFFFF)
      {
        v12 = *(this + 64);
        v13 = *(v12 + 24 * HIDWORD(v87[1])) & 0x7FFFFFFF;
        if (v88 == 0x7FFFFFFF)
        {
          *(*(this + 63) + 4 * LODWORD(v87[1])) = v13;
          v11 = HIDWORD(v87[1]);
        }

        else
        {
          *(v12 + 24 * v88) = *(v12 + 24 * v88) & 0x80000000 | v13;
        }

        *(v12 + 24 * v11) = *(this + 133);
        *(this + 133) = v11;
        --*(this + 131);
        ++*(this + 134);
      }

      re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v87, this + 544, *(v10 + 8), *(v10 + 8));
      re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::removeInternal(this + 544, v87);
      re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v87, this + 544, *(v10 + 16), *(v10 + 16));
      re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::removeInternal(this + 544, v87);
      ++v8;
      v6 += 64;
      if (v4 == v8)
      {
        v5 = *(this + 86);
        goto LABEL_14;
      }
    }

    v78 = 0;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    *v87 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v80 = 136315906;
    *&v80[4] = "operator[]";
    v81 = 1024;
    v82 = 789;
    v83 = 2048;
    v84 = v8;
    v85 = 2048;
    v86 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_98:
    v78 = 0;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    *v87 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v80 = 136315906;
    *&v80[4] = "operator[]";
    v81 = 1024;
    v82 = 789;
    v83 = 2048;
    v84 = v4;
    v85 = 2048;
    v86 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_14:
  if (v5 >= v3)
  {
    if (v5 <= v3)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*(this + 85) < v3)
    {
      re::DynamicArray<re::MaterialManager::PerSceneTables>::setCapacity(this + 84, v3);
      v5 = *(this + 86);
    }

    if (v3 > v5 && v3 > v5)
    {
      bzero((*(this + 88) + (v5 << 6)), (v3 - v5) << 6);
    }
  }

  *(this + 86) = v3;
  ++*(this + 174);
LABEL_25:
  if (v4 < v3)
  {
    while (1)
    {
      v7 = *(this + 86);
      if (v7 <= v4)
      {
        goto LABEL_98;
      }

      v15 = v3;
      v16 = *(this + 88);
      if ((atomic_load_explicit(&qword_1EE1B9900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9900))
      {
        _MergedGlobals_447 = re::hashStringWithLength("scene", v66);
        __cxa_guard_release(&qword_1EE1B9900);
      }

      v17 = (v16 + (v4 << 6));
      v18 = v4 - 0x61C8864680B583E9;
      *v17 = (v4 - 0x61C8864680B583E9 + (_MergedGlobals_447 << 6) + (_MergedGlobals_447 >> 2)) ^ _MergedGlobals_447;
      v19 = MurmurHash3_x64_128("scene", 5uLL, 0, v87);
      v20 = (v87[1] + 64 * v87[0] + (v87[0] >> 2) - 0x61C8864680B583E9) ^ v87[0];
      v21 = (v4 - 0x61C8864680B583E9 + (v20 << 6) + (v20 >> 2)) ^ v20;
      v87[0] = v21;
      if (!*(this + 62) || (v22 = *(*(this + 63) + 4 * (v21 % *(this + 130))), v22 == 0x7FFFFFFF))
      {
LABEL_33:
        v25 = re::globalAllocators(v19);
        v26 = (*(*v25[2] + 32))(v25[2], 112, 8);
        *(v26 + 8) = 0u;
        *(v26 + 24) = 0u;
        *(v26 + 40) = 0u;
        *(v26 + 56) = 0u;
        *(v26 + 72) = 0u;
        *(v26 + 88) = 0u;
        *(v26 + 104) = 0;
        *v26 = &unk_1F5D06170;
        *v80 = v26;
        v19 = re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(this + 496, v87, v80);
        v27 = *v80;
      }

      else
      {
        v23 = *(this + 64);
        v24 = *(*(this + 63) + 4 * (v21 % *(this + 130)));
        while (*(v23 + 24 * v24 + 8) != v21)
        {
          v24 = *(v23 + 24 * v24) & 0x7FFFFFFF;
          if (v24 == 0x7FFFFFFF)
          {
            goto LABEL_33;
          }
        }

        while (*(v23 + 24 * v22 + 8) != v21)
        {
          v22 = *(v23 + 24 * v22) & 0x7FFFFFFF;
          v65 = 0x7FFFFFFFLL;
          if (v22 == 0x7FFFFFFF)
          {
            goto LABEL_91;
          }
        }

        v65 = v22;
LABEL_91:
        v27 = *(v23 + 24 * v65 + 16);
      }

      v17[3] = v27;
      v28 = v27 + 72;
      re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::setCapacity(v28, 0xAuLL);
      ++*(v28 + 24);
      v29 = v17[3];
      *v80 = 0x51D6CB770EC4;
      re::TextureTable::setTexture(v29, v80, (*(*(this + 112) + 56) + 48));
      *v80 = 0;
      v30 = v17[3];
      v78 = 0x5BE38A6CA01CLL;
      re::TextureTable::setTexture(v30, &v78, (*(*(this + 112) + 56) + 24));
      v78 = 0;
      v31 = v17[3];
      v77 = 0xE459D7324435E49;
      re::TextureTable::setTexture(v31, &v77, (*(*(this + 112) + 56) + 88));
      v77 = 0;
      v32 = v17[3];
      v76 = 0xC0489AC946E8FF4;
      re::TextureTable::setTexture(v32, &v76, (*(*(this + 112) + 56) + 88));
      v76 = 0;
      v33 = v17[3];
      v75 = 0x200BEB41406E4973;
      re::TextureTable::setTexture(v33, &v75, (*(*(this + 112) + 56) + 88));
      v75 = 0;
      v34 = v17[3];
      v74 = 0x74B9011688CA44FFLL;
      re::TextureTable::setTexture(v34, &v74, (*(*(this + 112) + 56) + 88));
      v74 = 0;
      v35 = v17[3];
      v73 = 0x23C1563FB78C78B1;
      re::TextureTable::setTexture(v35, &v73, (*(*(this + 112) + 56) + 88));
      v73 = 0;
      v36 = v17[3];
      v72 = 0x5495C6E7C96973E2;
      re::TextureTable::setTexture(v36, &v72, (*(*(this + 112) + 56) + 88));
      v72 = 0;
      v37 = v17[3];
      v71 = 0x4DB123A4BB1CD2C0;
      re::TextureTable::setTexture(v37, &v71, (*(*(this + 112) + 112) + 760));
      v71 = 0;
      v38 = v17[3];
      v70 = 0x564C767D75CDLL;
      v87[0] = 0;
      re::TextureTable::setTexture(v38, &v70, v87);
      if (v87[0])
      {
      }

      v70 = 0;
      v39 = v17[3];
      v69 = 0x143F50BFF6F9E46;
      v87[0] = 0;
      re::TextureTable::setTexture(v39, &v69, v87);
      if (v87[0])
      {
      }

      v69 = 0;
      v17[1] = (v18 + (_MergedGlobals_447 << 6) + (_MergedGlobals_447 >> 2)) ^ _MergedGlobals_447;
      PerSceneBufferTableForName = re::MaterialManager::createPerSceneBufferTableForName(this, "scene", v4);
      v17[4] = PerSceneBufferTableForName;
      v41 = v17[4];
      v87[0] = 0x29136C0FCC2;
      LOBYTE(v68) = 0;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v41, v87, &v68);
      if (!*(v41 + 280))
      {
        *(v41 + 280) = 1;
      }

      v42 = v17[4];
      v87[0] = 0x7831721862C9B2CBLL;
      LOBYTE(v68) = 1;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v42, v87, &v68);
      if (*(v42 + 280) <= 1u)
      {
        *(v42 + 280) = 2;
      }

      v43 = v17[4];
      v87[0] = 0xDFC20BDF4EDA5B3;
      LOBYTE(v68) = 2;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v43, v87, &v68);
      if (*(v43 + 280) <= 2u)
      {
        *(v43 + 280) = 3;
      }

      v44 = v17[4];
      v87[0] = 0x441AC0ECAF42AD04;
      LOBYTE(v68) = 3;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v44, v87, &v68);
      if (*(v44 + 280) <= 3u)
      {
        *(v44 + 280) = 4;
      }

      if ((atomic_load_explicit(&qword_1EE1B9910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9910))
      {
        qword_1EE1B9908 = re::hashStringWithLength("light", v67);
        __cxa_guard_release(&qword_1EE1B9910);
      }

      v17[2] = (v18 + (qword_1EE1B9908 << 6) + (qword_1EE1B9908 >> 2)) ^ qword_1EE1B9908;
      v45 = re::MaterialManager::createPerSceneBufferTableForName(this, "light", v4);
      v17[5] = v45;
      v46 = v17[5];
      v87[0] = 0x144ABD64D310CF6;
      LOBYTE(v68) = 0;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v46, v87, &v68);
      if (!*(v46 + 280))
      {
        *(v46 + 280) = 1;
      }

      v47 = v17[5];
      v87[0] = 0x5437C2365207957;
      LOBYTE(v68) = 1;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v47, v87, &v68);
      if (*(v47 + 280) <= 1u)
      {
        *(v47 + 280) = 2;
      }

      v48 = v17[5];
      v87[0] = 0x3D6DAF04080D176CLL;
      LOBYTE(v68) = 2;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v48, v87, &v68);
      if (*(v48 + 280) <= 2u)
      {
        *(v48 + 280) = 3;
      }

      v49 = v17[5];
      v87[0] = 0x63A3BE6348A3B8F4;
      LOBYTE(v68) = 3;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v49, v87, &v68);
      if (*(v49 + 280) <= 3u)
      {
        *(v49 + 280) = 4;
      }

      v50 = v17[5];
      v87[0] = 0x4FADF8C267199512;
      LOBYTE(v68) = 4;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v50, v87, &v68);
      if (*(v50 + 280) <= 4u)
      {
        *(v50 + 280) = 5;
      }

      v51 = v17[5];
      v87[0] = 0xA7927F2BBEE1ALL;
      LOBYTE(v68) = 5;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v51, v87, &v68);
      if (*(v51 + 280) <= 5u)
      {
        *(v51 + 280) = 6;
      }

      v52 = v17[5];
      v87[0] = 0x5294D280395580B0;
      LOBYTE(v68) = 6;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v52, v87, &v68);
      if (*(v52 + 280) <= 6u)
      {
        *(v52 + 280) = 7;
      }

      v53 = v17[5];
      v87[0] = 0x567D28DE2738;
      LOBYTE(v68) = 7;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v53, v87, &v68);
      if (*(v53 + 280) <= 7u)
      {
        *(v53 + 280) = 8;
      }

      v54 = v17[5];
      v87[0] = 0x2750CEF3162C90A2;
      LOBYTE(v68) = 8;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v54, v87, &v68);
      if (*(v54 + 280) <= 8u)
      {
        *(v54 + 280) = 9;
      }

      v55 = v17[5];
      v87[0] = 0x1658EB831E3FF0F9;
      LOBYTE(v68) = 9;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v55, v87, &v68);
      if (*(v55 + 280) <= 9u)
      {
        *(v55 + 280) = 10;
      }

      v56 = v17[5];
      v87[0] = 0x273A81CF18ED4F0;
      LOBYTE(v68) = 10;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v56, v87, &v68);
      if (*(v56 + 280) <= 0xAu)
      {
        *(v56 + 280) = 11;
      }

      v57 = v17[5];
      v87[0] = 0x3C5E7C1C007EE27;
      LOBYTE(v68) = 11;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v57, v87, &v68);
      if (*(v57 + 280) <= 0xBu)
      {
        *(v57 + 280) = 12;
      }

      v58 = v17[5];
      v87[0] = 0x16323C0B1F9DAD6FLL;
      LOBYTE(v68) = 12;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v58, v87, &v68);
      if (*(v58 + 280) <= 0xCu)
      {
        *(v58 + 280) = 13;
      }

      v59 = v17[5];
      v87[0] = 0x3A27078604AA8089;
      LOBYTE(v68) = 13;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v59, v87, &v68);
      if (*(v59 + 280) <= 0xDu)
      {
        *(v59 + 280) = 14;
      }

      v60 = v17[5];
      v87[0] = 0xEDE14EC8EBF7251;
      LOBYTE(v68) = 14;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v60, v87, &v68);
      if (*(v60 + 280) <= 0xEu)
      {
        *(v60 + 280) = 15;
      }

      v61 = v17[5];
      v87[0] = 0x262DF9A294ABAC1CLL;
      LOBYTE(v68) = 15;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v61, v87, &v68);
      if (*(v61 + 280) <= 0xFu)
      {
        *(v61 + 280) = 16;
      }

      v62 = v17[5];
      v87[0] = 0x6C67F4CE96CFCB6ALL;
      LOBYTE(v68) = 16;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v62, v87, &v68);
      if (*(v62 + 280) <= 0x10u)
      {
        *(v62 + 280) = 17;
      }

      v63 = v17[5];
      v87[0] = 0x458FBDFDF334653DLL;
      LOBYTE(v68) = 17;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v63, v87, &v68);
      if (*(v63 + 280) <= 0x11u)
      {
        *(v63 + 280) = 18;
      }

      v64 = v17[5];
      v68 = 0x458FBDFDF334653DLL;
      v87[0] = *(this + 106);
      DWORD2(v88) = 0;
      LODWORD(v89) = 0;
      DWORD1(v89) = [*(this + 106) length];
      re::BufferTable::setBuffer(v64, &v68, v87);
      if (DWORD2(v88) != -1)
      {
        (off_1F5D060B0[DWORD2(v88)])(&v79, v87);
      }

      re::MaterialManager::initPerSceneTables_ProbeManager(this, v17, 1);
      ++v4;
      v3 = v15;
      if (v4 == v15)
      {
        return;
      }
    }
  }
}

void *re::MaterialManager::ensureSceneTablesInitialized_ProbeManager(void *this)
{
  v1 = this;
  v2 = this[113];
  v3 = this[86];
  if (v2 < v3)
  {
    v4 = v2 << 6;
    do
    {
      if (v1[86] <= v2)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      this = re::MaterialManager::initPerSceneTables_ProbeManager(v1, v1[88] + v4, 0);
      ++v2;
      v4 += 64;
    }

    while (v3 != v2);
  }

  v1[113] = v3;
  return this;
}

uint64_t re::MaterialManager::sceneTextures(re::MaterialManager *this, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 86) > a2)
  {
    return *(*(this + 88) + (a2 << 6) + 24);
  }

  v4 = *re::graphicsLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Scene index %zu for scene texture table is out of range. Returning null.", &v5, 0xCu);
  }

  return 0;
}

uint64_t re::MaterialManager::lightBuffers(re::MaterialManager *this, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 86) > a2)
  {
    return *(*(this + 88) + (a2 << 6) + 40);
  }

  v4 = *re::graphicsLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Scene index %zu for light buffer table is out of range. Returning null.", &v5, 0xCu);
  }

  return 0;
}

uint64_t re::MaterialManager::sceneBuffers(re::MaterialManager *this, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 86) > a2)
  {
    return *(*(this + 88) + (a2 << 6) + 32);
  }

  v4 = *re::graphicsLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Scene index %zu for scene buffer table is out of range. Returning null.", &v5, 0xCu);
  }

  return 0;
}

unint64_t re::MaterialManager::sceneConstants(re::MaterialManager *this, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 86) > a2)
  {
    return *(this + 88) + (a2 << 6) + 48;
  }

  v4 = *re::graphicsLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Scene index %zu for scene buffer table is out of range. Returning null.", &v5, 0xCu);
  }

  return 0;
}

uint64_t *re::MaterialManager::generateDebugTechnique(re::MaterialManager *this, const re::MaterialInstance *a2, unint64_t a3)
{
  v6 = this;
  v63 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v7 = re::DynamicString::setCapacity(&v45, 0);
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  re::DynamicString::operator=(&v45, &v34);
  if (v34 && (BYTE8(v34) & 1) != 0)
  {
    (*(*v34 + 40))();
  }

  v8 = 0uLL;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  LOBYTE(v50) = 1;
  v49 = 2687029;
  v9 = *(a2 + 13);
  if (v9 <= a3)
  {
    v32 = 0;
    v35 = 0uLL;
    memset(v36, 0, sizeof(v36));
    v34 = 0uLL;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v62[0]) = 136315906;
    *(v62 + 4) = "operator[]";
    WORD6(v62[0]) = 1024;
    *(v62 + 14) = 468;
    WORD1(v62[1]) = 2048;
    *(&v62[1] + 4) = a3;
    WORD6(v62[1]) = 2048;
    *(&v62[1] + 14) = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_33:
    v32 = 0;
    v36[1] = v8;
    v36[2] = v8;
    v35 = v8;
    v36[0] = v8;
    v34 = v8;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v62[0]) = 136315906;
    *(v62 + 4) = "operator[]";
    WORD6(v62[0]) = 1024;
    *(v62 + 14) = 468;
    WORD1(v62[1]) = 2048;
    *(&v62[1] + 4) = a3;
    WORD6(v62[1]) = 2048;
    *(&v62[1] + 14) = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_34:
    v32 = 0;
    v36[1] = v8;
    v36[2] = v8;
    v35 = v8;
    v36[0] = v8;
    v34 = v8;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v62[0]) = 136315906;
    *(v62 + 4) = "operator[]";
    WORD6(v62[0]) = 1024;
    *(v62 + 14) = 476;
    WORD1(v62[1]) = 2048;
    *(&v62[1] + 4) = a3;
    WORD6(v62[1]) = 2048;
    *(&v62[1] + 14) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_35:
    v32 = 0;
    v35 = 0u;
    memset(v36, 0, sizeof(v36));
    v34 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v62[0]) = 136315906;
    *(v62 + 4) = "operator[]";
    WORD6(v62[0]) = 1024;
    *(v62 + 14) = 476;
    WORD1(v62[1]) = 2048;
    *(&v62[1] + 4) = a3;
    WORD6(v62[1]) = 2048;
    *(&v62[1] + 14) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_36;
  }

  v10 = (*(a2 + 14) + 40 * a3);
  if (*v10)
  {
    goto LABEL_28;
  }

  v11 = *(a2 + 2);
  v9 = *(v11 + 120);
  if (v9 <= a3)
  {
    goto LABEL_33;
  }

  v12 = *(*(v11 + 128) + 8 * a3);
  if (!v12)
  {
    *v10 = 0;
    goto LABEL_28;
  }

  v30 = 0;
  v27[1] = 0;
  v28 = 0;
  v27[0] = 0;
  v29 = 0;
  v3 = *(a2 + 10);
  if (v3 <= a3)
  {
    goto LABEL_34;
  }

  re::FixedArray<re::TechniqueFunctionConstant>::FixedArray(&v24, *(*(a2 + 11) + 40 * a3) + 16);
  if (v25)
  {
    v13 = v26;
    v14 = (v26 + 104 * v25);
    do
    {
      re::DynamicString::DynamicString(&v34, v13);
      v36[0] = *(v13 + 2);
      v15 = *(v13 + 3);
      v16 = *(v13 + 4);
      v17 = *(v13 + 5);
      v38 = *(v13 + 24);
      v36[2] = v16;
      v37 = v17;
      v36[1] = v15;
      v18 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v27, &v34);
      if (v34 && (BYTE8(v34) & 1) != 0)
      {
        (*(*v34 + 40))(v18);
      }

      v13 = (v13 + 104);
    }

    while (v13 != v14);
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::add(v27, &v45);
  v3 = *(a2 + 10);
  if (v3 <= a3)
  {
    goto LABEL_35;
  }

  v19 = *(*(a2 + 11) + 40 * a3);
  if (*(v19 + 40) == 1)
  {
    v20 = v19 + 48;
  }

  else
  {
    v20 = *v19 + 8;
  }

  ArcSharedObject::ArcSharedObject(&v34, 0);
  *&v34 = &unk_1F5D033E8;
  v35 = 0u;
  memset(v36, 0, 28);
  *(&v36[1] + 12) = 0x7FFFFFFFLL;
  v39 = 0;
  v37 = 0uLL;
  *(&v36[2] + 1) = 0;
  v38 = 0;
  v40 = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v21 = *(v6 + 112);
  v23 = 0;
  re::MaterialBuilder::generateTechnique(v21, v12, a2, v30, v28, v20, &v32, &v23, 0, 0);
  if (v23)
  {

    v23 = 0;
  }

  if ((v32 & 1) == 0)
  {
    goto LABEL_26;
  }

  v6 = *(a2 + 13);
  if (v6 <= a3)
  {
LABEL_36:
    v31 = 0;
    memset(v62, 0, sizeof(v62));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    v57 = 468;
    v58 = 2048;
    v59 = a3;
    v60 = 2048;
    v61 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::operator=[abi:nn200100]((*(a2 + 14) + 40 * a3), v33);
  if ((v32 & 1) == 0)
  {
LABEL_26:
    re::DynamicString::deinit(v33);
    goto LABEL_27;
  }

  std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::~unique_ptr[abi:nn200100](v33);
LABEL_27:
  re::FunctionReflectionCache::~FunctionReflectionCache(&v34);
  re::FixedArray<re::TechniqueFunctionConstant>::deinit(&v24);
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v27);
LABEL_28:
  result = v45;
  if (v45)
  {
    if (v46)
    {
      return (*(*v45 + 40))();
    }
  }

  return result;
}

void re::MaterialManager::createMaterial(uint64_t a1@<X0>, re::MaterialBuilder *a2@<X1>, void *a3@<X8>)
{
  location[3] = *MEMORY[0x1E69E9840];
  if ((*(a2 + 300) & 0xFFFFFFFE) == 6)
  {
    re::MaterialBuilder::result(a2, *(a1 + 896), v21);
    if (v21[0])
    {
      v6 = v22;
      *a3 = v22;
      if (v6)
      {
        v7 = (v6 + 8);
        v8 = (v6 + 8);
      }

      else
      {
        v8 = 0;
      }

      inited = objc_initWeak(location, v8);
      v10 = *(a1 + 408);
      v11 = *(a1 + 416);
      if (v11 >= v10)
      {
        v12 = v11 + 1;
        if (v10 < v11 + 1)
        {
          if (*(a1 + 400))
          {
            v13 = 2 * v10;
            v14 = v10 == 0;
            v15 = 8;
            if (!v14)
            {
              v15 = v13;
            }

            if (v15 <= v12)
            {
              v16 = v12;
            }

            else
            {
              v16 = v15;
            }

            re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::setCapacity((a1 + 400), v16);
          }

          else
          {
            re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::setCapacity((a1 + 400), v12);
            ++*(a1 + 424);
          }
        }

        v11 = *(a1 + 416);
      }

      v19 = (*(a1 + 432) + 8 * v11);
      *v19 = 0;
      objc_moveWeak(v19, location);
      ++*(a1 + 416);
      ++*(a1 + 424);
      objc_destroyWeak(location);
    }

    else
    {
      v18 = *re::graphicsLogObjects(v5);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        if (v23)
        {
          v20 = *&v24[7];
        }

        else
        {
          v20 = v24;
        }

        LODWORD(location[0]) = 136315138;
        *(location + 4) = v20;
        _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Failed to build material: %s.", location, 0xCu);
      }

      *a3 = 0;
    }

    if (v21[0] == 1)
    {
      if (v22)
      {
      }
    }

    else if (v22 && (v23 & 1) != 0)
    {
      (*(*v22 + 40))();
    }
  }

  else
  {
    v17 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Failed to build material. Builder not finished.", v21, 2u);
    }

    *a3 = 0;
  }
}

void *re::MaterialManager::destroyMaterial(_anonymous_namespace_ *a1, uint64_t a2, __int128 *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 112);
  v10 = *a3;
  v7 = *(a3 + 2);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *&v12 = a2;
  *v8 = &unk_1F5D060D0;
  *(v8 + 8) = a1;
  *(v8 + 16) = v10;
  v11[0] = 0;
  v11[1] = 0;
  *(v8 + 32) = v7;
  v11[2] = 0;
  *(v8 + 40) = v12;
  v15 = v8;
  re::RenderManager::addDelayedDestructorToRenderThread(v6, v13);
  re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(v13);
  return re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(v11);
}

void re::MaterialManager::createMaterialDefinition(uint64_t a1@<X0>, re::MaterialDefinitionBuilder *a2@<X1>, void *a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  re::MaterialDefinitionBuilder::result(a2, *(a1 + 896), v9);
  if (v9[0])
  {
    v5 = v10;
    *a3 = v10;
    if (v5)
    {
      v6 = (v5 + 8);
    }
  }

  else
  {
    v7 = *re::graphicsLogObjects(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (v11)
      {
        v8 = *&v12[7];
      }

      else
      {
        v8 = v12;
      }

      *buf = 136315138;
      v14 = v8;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Failed to build material definition : %s.", buf, 0xCu);
    }

    *a3 = 0;
  }

  if (v9[0] == 1)
  {
    if (v10)
    {
    }
  }

  else if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))();
  }
}

void re::MaterialManager::tryGetMaterialPipelineData(os_unfair_lock_s *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  os_unfair_lock_lock(this + 122);
  if (!*&this[110]._os_unfair_lock_opaque || (v6 = *(*&this[112]._os_unfair_lock_opaque + 4 * (a2 % this[116]._os_unfair_lock_opaque)), v6 == 0x7FFFFFFF))
  {
LABEL_6:
    *a3 = 0;
  }

  else
  {
    v7 = *&this[114]._os_unfair_lock_opaque;
    while (*(v7 + 24 * v6 + 8) != a2)
    {
      v6 = *(v7 + 24 * v6) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }

    v8 = *(v7 + 24 * v6 + 16);
    *a3 = v8;
    if (v8)
    {
      v9 = (v8 + 8);
    }
  }

  os_unfair_lock_unlock(this + 122);
}

void re::MaterialManager::installMaterialPipelineData(os_unfair_lock_s *a1, uint64_t *a2)
{
  os_unfair_lock_lock(a1 + 122);
  re::HashTable<unsigned long,re::SharedPtr<re::MaterialPipelineData>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(&a1[110], (*a2 + 152), a2);

  os_unfair_lock_unlock(a1 + 122);
}

uint64_t re::HashTable<unsigned long,re::SharedPtr<re::MaterialPipelineData>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long,re::SharedPtr<re::MaterialPipelineData>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addInternal<unsigned long const&,re::SharedPtr<re::MaterialPipelineData> const&>(a1, &v7, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 24 * HIDWORD(v8) + 16;
  }
}

_anonymous_namespace_ *re::MaterialManager::addSupportConstantsToArray(_anonymous_namespace_ *a1, int a2, int a3, int a4, int a5, int a6, char a7, int a8, uint64_t a9)
{
  if (a1)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a9, "EnableSamplerArray", &v20);
    a1 = v20;
    if (v20)
    {
      if (v21)
      {
        a1 = (*(*v20 + 40))();
      }
    }
  }

  if (a4)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a9, "EnableProgrammableBlending", &v20);
    a1 = v20;
    if (v20)
    {
      if (v21)
      {
        a1 = (*(*v20 + 40))();
      }
    }
  }

  if (a3)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a9, "SupportsQuadReduction", &v20);
    a1 = v20;
    if (v20)
    {
      if (v21)
      {
        a1 = (*(*v20 + 40))();
      }
    }
  }

  if (a5)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a9, "EnableCustomTextureArray", &v20);
    a1 = v20;
    if (v20)
    {
      if (v21)
      {
        a1 = (*(*v20 + 40))();
      }
    }
  }

  if (a2)
  {
    v16 = "true";
  }

  else
  {
    v16 = "false";
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a9, "SupportsCubeArray", &v20);
  result = v20;
  if (v20 && (v21 & 1) != 0)
  {
    result = (*(*v20 + 40))();
  }

  if (a8)
  {
    if (a6)
    {
      v18 = "true";
    }

    else
    {
      v18 = "false";
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a9, "EnablePrimitiveIdentifier", &v20);
    result = v20;
    if (v20 && (v21 & 1) != 0)
    {
      result = (*(*v20 + 40))();
    }

    if (a7)
    {
      v19 = "true";
      goto LABEL_34;
    }
  }

  else if (a7)
  {
    return result;
  }

  v19 = "false";
LABEL_34:
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a9, "EnableBarycentricCoordinates", &v20);
  result = v20;
  if (v20)
  {
    if (v21)
    {
      return (*(*v20 + 40))();
    }
  }

  return result;
}

BOOL re::MaterialManager::removeSystemMaterialParameterBlock(re::MaterialManager *this, uint64_t a2)
{
  v5 = a2;
  v3 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 1040, &v5);
  if (v3)
  {
    re::DataArray<re::MaterialParameterBlock>::destroy(this + 1088, *v3);
  }

  return re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 1040, &v5);
}

uint64_t (***re::DataArray<re::MaterialParameterBlock>::destroy(uint64_t a1, unint64_t a2))(void)
{
  v2 = a2;
  v4 = a2 >> 16;
  result = re::DataArray<re::MaterialParameterBlock>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    v6 = result;
    result = (**result)(result);
    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  return result;
}

uint64_t *re::MaterialManager::getSystemMaterialParameterBlock(re::MaterialManager *this, uint64_t a2)
{
  v4 = a2;
  result = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 1040, &v4);
  if (result)
  {
    return re::DataArray<re::MaterialParameterBlock>::tryGet(this + 1088, *result);
  }

  return result;
}

uint64_t re::DataArray<re::MaterialParameterBlock>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 1008 * a2;
  }

  else
  {
    return 0;
  }
}

uint64_t re::MaterialManager::getOrAddSystemMaterialParameterBlock(re::RenderManager **this, uint64_t a2)
{
  v6 = a2;
  v3 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet((this + 130), &v6);
  if (!v3)
  {
    v5 = re::DataArray<re::MaterialParameterBlock>::create<re::RenderManager *&>((this + 136), this + 112);
    re::HashTable<unsigned long long,re::DataArrayHandle<re::MaterialParameterBlock>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew((this + 130), &v6, &v5);
    v3 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet((this + 130), &v6);
  }

  return re::DataArray<re::MaterialParameterBlock>::tryGet((this + 136), *v3);
}

unint64_t re::DataArray<re::MaterialParameterBlock>::create<re::RenderManager *&>(uint64_t a1, re::RenderManager **a2)
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
      re::DataArray<re::MaterialParameterBlock>::allocBlock(a1);
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
        v10 = (*v12 + 1008 * v6);
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
  v10 = (*v9 + 1008 * v6);
  *(a1 + 52) = *v10;
LABEL_15:
  ++*(a1 + 40);
  re::MaterialParameterBlock::MaterialParameterBlock(v10, *a2);
  return ((v7 << 16) | ((*(a1 + 56) & 0xFFFFFF) << 32)) + v6;
}

uint64_t re::HashTable<unsigned long long,re::DataArrayHandle<re::MaterialParameterBlock>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(uint64_t a1, void *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::DataArrayHandle<re::MaterialParameterBlock>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  ++*(a1 + 40);
  return result;
}

BOOL re::MaterialManager::entityHasSystemMaterialParameterBlock(re::MaterialManager *this, unint64_t a2)
{
  if (!*(this + 130))
  {
    return 0;
  }

  v2 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v3 = *(*(this + 131) + 4 * ((v2 ^ (v2 >> 31)) % *(this + 266)));
  if (v3 == 0x7FFFFFFF)
  {
    return 0;
  }

  v5 = *(this + 132);
  v6 = 0x7FFFFFFFLL;
  while (*(v5 + 32 * v3 + 8) != a2)
  {
    v3 = *(v5 + 32 * v3) & 0x7FFFFFFF;
    if (v3 == 0x7FFFFFFF)
    {
      return v6 != 0x7FFFFFFF;
    }
  }

  v6 = v3;
  return v6 != 0x7FFFFFFF;
}

void re::MaterialManager::startFrame(re::MaterialManager *this)
{
  v22 = *MEMORY[0x1E69E9840];
  if (re::GraphicsFeatureFlags::systemMaterialParametersDirtyTracking(void)::onceToken != -1)
  {
    goto LABEL_17;
  }

  while ((re::GraphicsFeatureFlags::systemMaterialParametersDirtyTracking(void)::gSystemMaterialParametersDirtyTracking & 1) == 0)
  {
    v2 = this + 1088;
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v21, v2, 0);
    v3 = *&v21[0];
    v10 = *&v21[0];
    v11 = DWORD2(v21[0]);
    v4 = WORD4(v21[0]);
    v5 = HIWORD(DWORD2(v21[0]));
    if (v2 == *&v21[0] && WORD4(v21[0]) == 0xFFFF && v5 == 0xFFFF)
    {
      break;
    }

    while (1)
    {
      v6 = v5;
      v7 = *(v3 + 2);
      if (v7 <= v5)
      {
        break;
      }

      re::MaterialParameterBlock::clear((*(*(v3 + 4) + 16 * v5) + 1008 * v4));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
      v4 = v11;
      v5 = HIWORD(v11);
      if (v10 == v2 && v11 == 0xFFFF && HIWORD(v11) == 0xFFFF)
      {
        return;
      }
    }

    v12 = 0;
    memset(v21, 0, sizeof(v21));
    this = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 797;
    v17 = 2048;
    v18 = v6;
    v19 = 2048;
    v20 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_17:
    dispatch_once(&re::GraphicsFeatureFlags::systemMaterialParametersDirtyTracking(void)::onceToken, &__block_literal_global_41);
  }
}

void re::MaterialManager::getEngineShaderMetadata(re::MaterialManager *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(this + 295))
  {
    v15 = *(*(this + 112) + 208);
    re::createMaterialSystemShaderMetadataForDevice(&v15, &v16);
    re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(this + 1152, &v16);
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v16);

    if (a2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = *a2;
  if (*a2)
  {
    v7 = a2[1];
    if (v7)
    {
      v8 = a2 + 2;
      do
      {
        v6 = 31 * v6 + v7;
        v9 = *v8++;
        v7 = v9;
      }

      while (v9);
    }
  }

LABEL_10:
  v14[0] = 2 * v6;
  v14[1] = a2;
  v10 = 0xBF58476D1CE4E5B9 * (v6 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v6) >> 31));
  v11 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 1152, v14, (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31), &v16);
  if (v17 == 0x7FFFFFFF)
  {
    if (v14[0])
    {
      if (v14[0])
      {
      }
    }

    v12 = 0;
  }

  else
  {
    v13 = *(this + 146) + 32 * v17;
    if (v14[0])
    {
      if (v14[0])
      {
      }
    }

    *(a3 + 1) = *(v13 + 24);
    v12 = 1;
  }

  *a3 = v12;
}

uint64_t re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(uint64_t a1, uint64_t a2)
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
      re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

BOOL re::MaterialManager::isEngineDefinedTextureTable(re::MaterialManager *this, const char *a2)
{
  if (!strcmp(this, "fallback"))
  {
    return 1;
  }

  v3 = 0;
  v4 = &off_1E871F8F8;
  do
  {
    v5 = v3;
    if (v3 == 11)
    {
      break;
    }

    v6 = *v4;
    v4 += 2;
    v7 = strcmp(this, v6);
    v3 = v5 + 1;
  }

  while (v7);
  return v5 < 0xB;
}

BOOL re::MaterialManager::isEngineDefinedConstantBufferTable(re::MaterialManager *this, const char *a2)
{
  if (!strcmp(this, "global"))
  {
    return 1;
  }

  v3 = 0;
  v4 = &off_1E871F818;
  do
  {
    v5 = v3;
    if (v3 == 13)
    {
      break;
    }

    v6 = *v4;
    v4 += 2;
    v7 = strcmp(this, v6);
    v3 = v5 + 1;
  }

  while (v7);
  return v5 < 0xD;
}

BOOL re::MaterialManager::isEngineDefinedBufferTable(re::MaterialManager *this, const char *a2)
{
  if (!strcmp(this, "geometry"))
  {
    return 1;
  }

  v3 = 0;
  v4 = &off_1E871F9B8;
  do
  {
    v5 = v3;
    if (v3 == 12)
    {
      break;
    }

    v6 = *v4;
    v4 += 2;
    v7 = strcmp(this, v6);
    v3 = v5 + 1;
  }

  while (v7);
  return v5 < 0xC;
}

uint64_t re::HashTable<unsigned long long,re::HashSet<re::UnresolvedArgumentBufferEntry,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false> *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long long,re::HashSet<re::UnresolvedArgumentBufferEntry,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false> *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v13, v12);
    v9 = *a2;
    *(v8 + 16) = *a3;
    result = v8 + 16;
    *(result - 8) = v9;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 32 * v7;
    *(v11 + 16) = *a3;
    return v11 + 16;
  }

  return result;
}

void re::MaterialManager::resolveArgumentBuffers(id a1, id *a2)
{
  v3 = a1;
  v4 = *(a1 + 308);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 152);
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
        LODWORD(v5) = *(a1 + 308);
        break;
      }
    }

    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 != v4)
  {
    LODWORD(v9) = *(a1 + 308);
    v38 = a1;
    v35 = v9;
    while (1)
    {
      v10 = *(*(v3 + 152) + 32 * v8 + 16);
      v36 = v8;
      v37 = *(v10 + 32);
      if (v37)
      {
        v11 = 0;
        v12 = (*(v10 + 16) + 8);
        while (1)
        {
          v13 = *v12;
          v12 += 20;
          if (v13 < 0)
          {
            break;
          }

          if (v37 == ++v11)
          {
            LODWORD(v11) = *(v10 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v11) = 0;
      }

      if (v11 != v37)
      {
        break;
      }

LABEL_48:
      v8 = v36;
      if (v9 <= v36 + 1)
      {
        v32 = v36 + 1;
      }

      else
      {
        v32 = v9;
      }

      v3 = v38;
      while (v32 - 1 != v8)
      {
        if ((*(*(v38 + 152) + 32 * ++v8) & 0x80000000) != 0)
        {
          goto LABEL_56;
        }
      }

      v8 = v32;
LABEL_56:
      if (v8 == v35)
      {
        goto LABEL_57;
      }
    }

    while (1)
    {
      v14 = (*(v10 + 16) + 80 * v11);
      v15 = v14[5];
      if (v15)
      {
        break;
      }

LABEL_32:
      v23 = v14[8];
      if (v23)
      {
        v24 = 16 * v23;
        v25 = v14[9] + 8;
        do
        {
          v26 = *(v25 - 8);
          if ((v26 + 8) <= v14[3])
          {
            v28 = v14[2];
            v29 = *a2;
            v39 = v29;
            re::DirectBuffer::readUsing(&v39, buf);

            v30 = *buf;
            a1 = [*buf gpuAddress];
            *(v28 + v26) = a1;
            if (v30)
            {
            }
          }

          else
          {
            v27 = *re::graphicsLogObjects(a1);
            a1 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
            if (a1)
            {
              *buf = 0;
              _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "Unable to reencode texture resourceID reference, the argument buffer is not large enough!", buf, 2u);
            }
          }

          v25 += 16;
          v24 -= 16;
        }

        while (v24);
      }

      v31 = *(v10 + 32);
      if (v31 <= v11 + 1)
      {
        v31 = v11 + 1;
      }

      while (v31 - 1 != v11)
      {
        LODWORD(v11) = v11 + 1;
        if ((*(*(v10 + 16) + 80 * v11 + 8) & 0x80000000) != 0)
        {
          goto LABEL_46;
        }
      }

      LODWORD(v11) = v31;
LABEL_46:
      if (v11 == v37)
      {
        LODWORD(v9) = v38[308];
        goto LABEL_48;
      }
    }

    v16 = v14[6];
    v17 = 32 * v15;
    while (1)
    {
      v18 = *(v16 + 16);
      if ((v18 + 8) <= v14[3])
      {
        break;
      }

      v19 = *re::graphicsLogObjects(a1);
      a1 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Unable to reencode texture resourceID reference, the argument buffer is not large enough!", buf, 2u);
      }

LABEL_31:
      v16 += 32;
      v17 -= 32;
      if (!v17)
      {
        goto LABEL_32;
      }
    }

    v20 = v14[2];
    re::ArgumentBufferTextureRecord::getRenderThreadTexture(v16, buf);
    if (*buf)
    {
      v21 = [*buf textureType];
      v22 = *(v16 + 24);
      if (v21 == v22)
      {
LABEL_29:
        *(v20 + v18) = [*buf gpuResourceID];
        a1 = *buf;
        if (*buf)
        {
        }

        goto LABEL_31;
      }
    }

    else
    {
      LODWORD(v22) = *(v16 + 24);
    }

    re::TextureManager::stockTextureForType(*(*(v38 + 112) + 56), v22, &v40);
    NS::SharedPtr<MTL::Texture>::operator=(buf, &v40);
    if (v40)
    {
    }

    goto LABEL_29;
  }

  LODWORD(v9) = *(a1 + 308);
LABEL_57:
  if (v3[307])
  {
    v33 = v3[306];
    if (v33)
    {
      memset_pattern16(*(v3 + 151), &memset_pattern_275, 4 * v33);
      LODWORD(v9) = v3[308];
    }

    if (v9)
    {
      v34 = *(v3 + 152);
      v9 = v9;
      do
      {
        if ((*v34 & 0x80000000) != 0)
        {
          *v34 &= ~0x80000000;
        }

        v34 += 8;
        --v9;
      }

      while (v9);
    }

    v3[309] = 0x7FFFFFFF;
    *(v3 + 307) = 0;
    ++v3[310];
  }
}

uint64_t re::TextureTableImpl<NS::SharedPtr<MTL::Texture>>::lookup@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

id re::TextureTable::textureAt@<X0>(re::TextureTable *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(this + 11) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  result = *(*(this + 13) + 32 * a2);
  *a3 = result;
  return result;
}

void *re::internal::MoveOnlyCallable<re::MaterialManager::destroyMaterial(unsigned long,re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>> &&)::$_0,void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5D060D0;
  re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(a1 + 2);
  return a1;
}

void re::internal::MoveOnlyCallable<re::MaterialManager::destroyMaterial(unsigned long,re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>> &&)::$_0,void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5D060D0;
  re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(a1 + 2);

  JUMPOUT(0x1E6906520);
}

void *re::internal::MoveOnlyCallable<re::MaterialManager::destroyMaterial(unsigned long,re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>> &&)::$_0,void ()(void)>::operator()(re *a1)
{
  v1 = a1;
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1);
  v3 = *(v2 + 896);
  v4 = v3[14];
  if (v4)
  {
    v5 = *(a1 + 6);
    v33 = 0;
    v30[1] = 0;
    v31 = 0;
    LODWORD(v32) = 0;
    v30[0] = v5;
    re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(v30, 0);
    LODWORD(v32) = v32 + 1;
    v27 = v4 + 104;
    v28 = 0;
    v6 = *(v4 + 120);
    if (v6 < 0x10)
    {
LABEL_6:
      v29 = -1;
    }

    else
    {
      v7 = 0;
      v8 = *(v4 + 104);
      v9 = v6 >> 4;
      while (1)
      {
        v10 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        v28 = v10 ^ 0xFFFFLL;
        if (v10 != 0xFFFFLL)
        {
          break;
        }

        v7 -= 16;
        ++v8;
        if (!--v9)
        {
          goto LABEL_6;
        }
      }

      v18 = __clz(__rbit64(v10 ^ 0xFFFFLL));
      v19 = v18 - v7;
      v29 = v18 - v7;
      if (v18 + 1 != v7)
      {
        do
        {
          v20 = v27;
          re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v27);
          v21 = *(v20 + 8) + 48 * v19;
          if (*(v21 + 16) == *(v1 + 5))
          {
            v22 = *(v21 + 40);

            *v22 = 0;
            v22[1] = 0;
            re::internal::destroyPersistent<re::CachedArgumentBuffer>("destroyCachedArgumentBuffer", 185, v22);
            re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add(v30, v21);
          }

          v19 = v29;
        }

        while (v29 != -1);
      }
    }

    if (v31)
    {
      v11 = v33;
      v12 = 40 * v31;
      do
      {
        v13 = *v11;
        v14 = *(v11 + 16);
        v26 = *(v11 + 32);
        v24 = v13;
        v25 = v14;
        re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::remove(v4 + 104, &v24);
        v11 += 40;
        v12 -= 40;
      }

      while (v12);
    }

    a1 = v30[0];
    if (v30[0] && v33)
    {
      a1 = (*(*v30[0] + 40))();
    }

    v3 = *(v2 + 896);
  }

  v23 = *(v1 + 1);
  v15 = *(v1 + 4);
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 2) = 0;
  *&v24 = v2;
  v26 = v4;
  v32 = re::globalAllocators(a1)[2];
  v16 = (*(*v32 + 32))(v32, 48, 0);
  *v16 = &unk_1F5D06120;
  *(v16 + 8) = v2;
  *(v16 + 16) = v23;
  *(&v24 + 1) = 0;
  v25 = 0uLL;
  *(v16 + 32) = v15;
  *(v16 + 40) = v4;
  v33 = v16;
  re::RenderManager::addDelayedDestructor(v3, v30);
  re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(v30);
  return re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(&v24 + 1);
}

uint64_t re::internal::MoveOnlyCallable<re::MaterialManager::destroyMaterial(unsigned long,re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>> &&)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D060D0;
  *(a2 + 8) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  v3 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = *(a2 + 32);
  *(a2 + 32) = *(a1 + 32);
  *(a1 + 32) = v4;
  *(a2 + 40) = *(a1 + 40);
  return a2;
}

BOOL re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 != 0;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0x80;
    }

    v5->i8[v3 & 0xF] = v9;
    re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::updateHashes(a1, (*(a1 + 8) + 48 * v3));
    v10.i64[0] = -1;
    v10.i64[1] = v8;
    v11 = vaddq_s64(*(a1 + 24), v10);
    *(a1 + 24) = v11;
    v12 = *(a1 + 16);
    if (v12 >= 0x11 && v11.i64[0] < v12 >> 2)
    {
      re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

re *re::internal::destroyPersistent<re::CachedArgumentBuffer>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    objc_destroyWeak((a3 + 64));
    *(a3 + 64) = 0;
    re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(a3 + 16);
    for (i = 8; i != -8; i -= 8)
    {
      v6 = *(a3 + i);
      if (v6)
      {

        *(a3 + i) = 0;
      }
    }

    v7 = *(*v4 + 40);

    return v7(v4, a3);
  }

  return result;
}

uint64_t re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::find(uint64_t *a1, void *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v3 = a1[2];
  if (v3 < 0x10 || !a1[3])
  {
    return -1;
  }

  v5 = (a2[2] + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2;
  v6 = (((v5 << 6) + (v5 >> 2) + ((a2[4] + (a2[3] << 6) + (a2[3] >> 2) - 0x61C8864680B583E9) ^ a2[3]) - 0x61C8864680B583E9) ^ v5) % (v3 >> 4);
  while (1)
  {
    v7 = *a1;
    v8 = re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::h2(a1, a2);
    v9 = *(v7 + 16 * v6);
    v10 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(vdupq_n_s8(v8), v9), xmmword_1E304FAD0)))), 0x3830282018100800);
    v11 = __clz(__rbit64(v10));
    v12.i64[0] = -1;
    v12.i64[1] = -1;
    if (v11 <= 0x3F)
    {
      break;
    }

LABEL_13:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v9, v12), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (++v6 == a1[2] >> 4)
    {
      v6 = 0;
    }

    v16 = re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::computeKeyHash(a1, a2) % (a1[2] >> 4);
    result = -1;
    if (v6 == v16)
    {
      return result;
    }
  }

  v13 = 16 * v6;
  while (1)
  {
    result = v11 + v13;
    v15 = (a1[1] + 48 * (v11 + v13));
    if (a2[2] == v15[2] && a2[3] == v15[3] && a2[4] == v15[4] && a2[1] == v15[1])
    {
      return result;
    }

    if (v11 <= 0x3E)
    {
      v11 = __clz(__rbit64((-2 << v11) & v10));
      if (v11 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_13;
  }
}

uint64_t re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::updateHashes(uint64_t result, void *a2)
{
  v2 = (a2[2] + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2;
  *(result + 40) ^= v2 ^ ((v2 << 6) + (v2 >> 2) + ((a2[4] + (a2[3] << 6) + (a2[3] >> 2) - 0x61C8864680B583E9) ^ a2[3]) - 0x61C8864680B583E9);
  return result;
}

double re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::resize(uint64_t a1, int a2)
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

  return re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::doResize(a1, v3);
}

double re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::init(v21, v4, a2);
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
        re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::internalAdd(v21, (*(v19[0] + 8) + 48 * v11), (*(v19[0] + 8) + 48 * v11 + 40));
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
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v21);
}

uint64_t re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::internalAdd(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = (a2[2] + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2;
  v9 = (((v8 << 6) + (v8 >> 2) + ((a2[4] + (a2[3] << 6) + (a2[3] >> 2) - 0x61C8864680B583E9) ^ a2[3]) - 0x61C8864680B583E9) ^ v8) % (v7 >> 4);
  v10 = *a1;
  v11 = re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::h2(a1, a2);
  v12 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v10 + 16 * v9)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v12 >= 0x40)
  {
    do
    {
      if (v9 + 1 == *(a1 + 16) >> 4)
      {
        v9 = 0;
      }

      else
      {
        ++v9;
      }

      v10 = *a1;
      v11 = re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::h2(a1, a2);
      v12 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v10 + 16 * v9)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v12 > 0x3F);
  }

  v13 = v10 + 16 * v9;
  v14 = *(v13 + v12);
  *(v13 + v12) = v11;
  v15 = 3 * (v12 + 16 * v9);
  v16 = *(a1 + 8) + 16 * v15;
  v17 = *a2;
  v18 = *(a2 + 1);
  *(v16 + 32) = a2[4];
  *v16 = v17;
  *(v16 + 16) = v18;
  *(*(a1 + 8) + 16 * v15 + 40) = *a3;
  if (v14 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v20);
  re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::updateHashes(a1, (*(a1 + 8) + 16 * v15));
  return *(a1 + 8) + 16 * v15 + 40;
}

void *re::internal::MoveOnlyCallable<re::MaterialManager::destroyMaterial(unsigned long,re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>> &&)::$_0::operator()(void)::{lambda(void)#1},void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5D06120;
  re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(a1 + 2);
  return a1;
}

void re::internal::MoveOnlyCallable<re::MaterialManager::destroyMaterial(unsigned long,re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>> &&)::$_0::operator()(void)::{lambda(void)#1},void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5D06120;
  re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(a1 + 2);

  JUMPOUT(0x1E6906520);
}

void re::internal::MoveOnlyCallable<re::MaterialManager::destroyMaterial(unsigned long,re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>> &&)::$_0::operator()(void)::{lambda(void)#1},void ()(void)>::operator()(void *a1)
{
  v158 = *MEMORY[0x1E69E9840];
  v1 = a1[1];
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v148 = &v3[5 * v2];
    do
    {
      v149 = v3;
      v4 = *v3;
      if (!*v3)
      {
        goto LABEL_239;
      }

      v152 = *(v4 + 120);
      if (v152)
      {
        v5 = 0;
        v6 = *(v4 + 104);
        do
        {
          v7 = *v6;
          v6 += 8;
          if (v7 < 0)
          {
            goto LABEL_11;
          }

          ++v5;
        }

        while (v152 != v5);
        LODWORD(v5) = *(v4 + 120);
      }

      else
      {
        LODWORD(v5) = 0;
      }

LABEL_11:
      if (v5 == v152)
      {
        goto LABEL_239;
      }

      v151 = *v3;
      do
      {
        v8 = *(*(v4 + 104) + 32 * v5 + 16);
        v9 = a1[5];
        if (v9)
        {
          re::MaterialTechniqueVariant::releasePipelineStates(*(*(v4 + 104) + 32 * v5 + 16), *(v1 + 896), v9);
        }

        v10 = *(v8 + 248);
        if (!v10)
        {
          LODWORD(v11) = 0;
          goto LABEL_45;
        }

        v11 = 0;
        v12 = *(v8 + 232);
        do
        {
          v13 = *v12;
          v12 += 4;
          if (v13 < 0)
          {
            goto LABEL_45;
          }

          ++v11;
        }

        while (v10 != v11);
        LODWORD(v11) = *(v8 + 248);
LABEL_45:
        while (v11 != v10)
        {
          v14 = *(*(v8 + 232) + 16 * v11 + 8);
          re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::remove(v8 + 216, v14);
          if (!*(v1 + 144))
          {
            v15 = *(v1 + 160);
LABEL_28:
            v16 = 0x7FFFFFFFLL;
            goto LABEL_29;
          }

          v15 = *(v1 + 160);
          v16 = *(*(v1 + 152) + 4 * (v14 % *(v1 + 168)));
          if (v16 == 0x7FFFFFFF)
          {
            goto LABEL_28;
          }

          while (*(v15 + 24 * v16 + 8) != v14)
          {
            v16 = *(v15 + 24 * v16) & 0x7FFFFFFF;
            if (v16 == 0x7FFFFFFF)
            {
              goto LABEL_28;
            }
          }

LABEL_29:
          v17 = *(v15 + 24 * v16 + 16);
          if (!*v17 || (v18 = *v17 - 1, (*v17 = v18) == 0))
          {
            re::internal::destroyPersistent<re::TechniqueResolutions<re::AttributeResolution>>(v17);
            if (*(v1 + 144))
            {
              v19 = v14 % *(v1 + 168);
              v20 = *(v1 + 152);
              v21 = *(v20 + 4 * v19);
              if (v21 != 0x7FFFFFFF)
              {
                v22 = *(v1 + 160);
                if (*(v22 + 24 * v21 + 8) == v14)
                {
                  v23 = (v22 + 24 * v21);
                  *(v20 + 4 * v19) = *v23 & 0x7FFFFFFF;
                }

                else
                {
                  do
                  {
                    v24 = v21;
                    v21 = *(v22 + 24 * v21) & 0x7FFFFFFF;
                    if (v21 == 0x7FFFFFFF)
                    {
                      goto LABEL_39;
                    }
                  }

                  while (*(v22 + 24 * v21 + 8) != v14);
                  v23 = (v22 + 24 * v21);
                  *(v22 + 24 * v24) = *(v22 + 24 * v24) & 0x80000000 | *v23 & 0x7FFFFFFF;
                }

                *v23 = *(v1 + 180);
                --*(v1 + 172);
                v25 = *(v1 + 184) + 1;
                *(v1 + 180) = v21;
                *(v1 + 184) = v25;
              }
            }
          }

LABEL_39:
          v26 = *(v8 + 248);
          if (v26 <= v11 + 1)
          {
            v26 = v11 + 1;
          }

          while (v26 - 1 != v11)
          {
            LODWORD(v11) = v11 + 1;
            if ((*(*(v8 + 232) + 16 * v11) & 0x80000000) != 0)
            {
              goto LABEL_45;
            }
          }

          LODWORD(v11) = v26;
        }

        v27 = *(v8 + 200);
        if (!v27)
        {
          LODWORD(v28) = 0;
          goto LABEL_76;
        }

        v28 = 0;
        v29 = *(v8 + 184);
        do
        {
          v30 = *v29;
          v29 += 4;
          if (v30 < 0)
          {
            goto LABEL_76;
          }

          ++v28;
        }

        while (v27 != v28);
        LODWORD(v28) = *(v8 + 200);
LABEL_76:
        while (2)
        {
          if (v28 != v27)
          {
            v31 = *(*(v8 + 184) + 16 * v28 + 8);
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::remove(v8 + 168, v31);
            if (*(v1 + 96))
            {
              v32 = *(v1 + 112);
              v33 = *(*(v1 + 104) + 4 * (v31 % *(v1 + 120)));
              if (v33 != 0x7FFFFFFF)
              {
                while (*(v32 + 24 * v33 + 8) != v31)
                {
                  v33 = *(v32 + 24 * v33) & 0x7FFFFFFF;
                  if (v33 == 0x7FFFFFFF)
                  {
                    goto LABEL_59;
                  }
                }

                goto LABEL_60;
              }
            }

            else
            {
              v32 = *(v1 + 112);
            }

LABEL_59:
            v33 = 0x7FFFFFFFLL;
LABEL_60:
            v34 = *(v32 + 24 * v33 + 16);
            if (!*v34 || (v35 = *v34 - 1, (*v34 = v35) == 0))
            {
              re::internal::destroyPersistent<re::TechniqueResolutions<re::BufferResolution>>(v34);
              if (*(v1 + 96))
              {
                v36 = v31 % *(v1 + 120);
                v37 = *(v1 + 104);
                v38 = *(v37 + 4 * v36);
                if (v38 != 0x7FFFFFFF)
                {
                  v39 = *(v1 + 112);
                  if (*(v39 + 24 * v38 + 8) == v31)
                  {
                    v40 = (v39 + 24 * v38);
                    *(v37 + 4 * v36) = *v40 & 0x7FFFFFFF;
                  }

                  else
                  {
                    do
                    {
                      v41 = v38;
                      v38 = *(v39 + 24 * v38) & 0x7FFFFFFF;
                      if (v38 == 0x7FFFFFFF)
                      {
                        goto LABEL_70;
                      }
                    }

                    while (*(v39 + 24 * v38 + 8) != v31);
                    v40 = (v39 + 24 * v38);
                    *(v39 + 24 * v41) = *(v39 + 24 * v41) & 0x80000000 | *v40 & 0x7FFFFFFF;
                  }

                  *v40 = *(v1 + 132);
                  --*(v1 + 124);
                  v42 = *(v1 + 136) + 1;
                  *(v1 + 132) = v38;
                  *(v1 + 136) = v42;
                }
              }
            }

LABEL_70:
            v43 = *(v8 + 200);
            if (v43 <= v28 + 1)
            {
              v43 = v28 + 1;
            }

            while (v43 - 1 != v28)
            {
              LODWORD(v28) = v28 + 1;
              if ((*(*(v8 + 184) + 16 * v28) & 0x80000000) != 0)
              {
                goto LABEL_76;
              }
            }

            LODWORD(v28) = v43;
            continue;
          }

          break;
        }

        v44 = *(v8 + 104);
        if (!v44)
        {
          LODWORD(v45) = 0;
          goto LABEL_107;
        }

        v45 = 0;
        v46 = *(v8 + 88);
        do
        {
          v47 = *v46;
          v46 += 4;
          if (v47 < 0)
          {
            goto LABEL_107;
          }

          ++v45;
        }

        while (v44 != v45);
        LODWORD(v45) = *(v8 + 104);
LABEL_107:
        while (2)
        {
          if (v45 != v44)
          {
            v48 = *(*(v8 + 88) + 16 * v45 + 8);
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::remove(v8 + 72, v48);
            if (*v1)
            {
              v49 = *(v1 + 16);
              v50 = *(*(v1 + 8) + 4 * (v48 % *(v1 + 24)));
              if (v50 != 0x7FFFFFFF)
              {
                while (*(v49 + 24 * v50 + 8) != v48)
                {
                  v50 = *(v49 + 24 * v50) & 0x7FFFFFFF;
                  if (v50 == 0x7FFFFFFF)
                  {
                    goto LABEL_90;
                  }
                }

                goto LABEL_91;
              }
            }

            else
            {
              v49 = *(v1 + 16);
            }

LABEL_90:
            v50 = 0x7FFFFFFFLL;
LABEL_91:
            v51 = *(v49 + 24 * v50 + 16);
            if (!*v51 || (v52 = *v51 - 1, (*v51 = v52) == 0))
            {
              re::internal::destroyPersistent<re::TechniqueResolutions<re::ConstantResolution>>(v51);
              if (*v1)
              {
                v53 = v48 % *(v1 + 24);
                v54 = *(v1 + 8);
                v55 = *(v54 + 4 * v53);
                if (v55 != 0x7FFFFFFF)
                {
                  v56 = *(v1 + 16);
                  if (*(v56 + 24 * v55 + 8) == v48)
                  {
                    v57 = (v56 + 24 * v55);
                    *(v54 + 4 * v53) = *v57 & 0x7FFFFFFF;
                  }

                  else
                  {
                    do
                    {
                      v58 = v55;
                      v55 = *(v56 + 24 * v55) & 0x7FFFFFFF;
                      if (v55 == 0x7FFFFFFF)
                      {
                        goto LABEL_101;
                      }
                    }

                    while (*(v56 + 24 * v55 + 8) != v48);
                    v57 = (v56 + 24 * v55);
                    *(v56 + 24 * v58) = *(v56 + 24 * v58) & 0x80000000 | *v57 & 0x7FFFFFFF;
                  }

                  *v57 = *(v1 + 36);
                  --*(v1 + 28);
                  v59 = *(v1 + 40) + 1;
                  *(v1 + 36) = v55;
                  *(v1 + 40) = v59;
                }
              }
            }

LABEL_101:
            v60 = *(v8 + 104);
            if (v60 <= v45 + 1)
            {
              v60 = v45 + 1;
            }

            while (v60 - 1 != v45)
            {
              LODWORD(v45) = v45 + 1;
              if ((*(*(v8 + 88) + 16 * v45) & 0x80000000) != 0)
              {
                goto LABEL_107;
              }
            }

            LODWORD(v45) = v60;
            continue;
          }

          break;
        }

        v61 = *(v8 + 152);
        if (!v61)
        {
          LODWORD(v62) = 0;
          goto LABEL_138;
        }

        v62 = 0;
        v63 = *(v8 + 136);
        do
        {
          v64 = *v63;
          v63 += 4;
          if (v64 < 0)
          {
            goto LABEL_138;
          }

          ++v62;
        }

        while (v61 != v62);
        LODWORD(v62) = *(v8 + 152);
LABEL_138:
        while (2)
        {
          if (v62 != v61)
          {
            v65 = *(*(v8 + 136) + 16 * v62 + 8);
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::remove(v8 + 120, v65);
            if (*(v1 + 48))
            {
              v66 = *(v1 + 64);
              v67 = *(*(v1 + 56) + 4 * (v65 % *(v1 + 72)));
              if (v67 != 0x7FFFFFFF)
              {
                while (*(v66 + 24 * v67 + 8) != v65)
                {
                  v67 = *(v66 + 24 * v67) & 0x7FFFFFFF;
                  if (v67 == 0x7FFFFFFF)
                  {
                    goto LABEL_121;
                  }
                }

                goto LABEL_122;
              }
            }

            else
            {
              v66 = *(v1 + 64);
            }

LABEL_121:
            v67 = 0x7FFFFFFFLL;
LABEL_122:
            v68 = *(v66 + 24 * v67 + 16);
            if (!*v68 || (v69 = *v68 - 1, (*v68 = v69) == 0))
            {
              re::internal::destroyPersistent<re::TechniqueResolutions<re::BufferResolution>>(v68);
              if (*(v1 + 48))
              {
                v70 = v65 % *(v1 + 72);
                v71 = *(v1 + 56);
                v72 = *(v71 + 4 * v70);
                if (v72 != 0x7FFFFFFF)
                {
                  v73 = *(v1 + 64);
                  if (*(v73 + 24 * v72 + 8) == v65)
                  {
                    v74 = (v73 + 24 * v72);
                    *(v71 + 4 * v70) = *v74 & 0x7FFFFFFF;
                  }

                  else
                  {
                    do
                    {
                      v75 = v72;
                      v72 = *(v73 + 24 * v72) & 0x7FFFFFFF;
                      if (v72 == 0x7FFFFFFF)
                      {
                        goto LABEL_132;
                      }
                    }

                    while (*(v73 + 24 * v72 + 8) != v65);
                    v74 = (v73 + 24 * v72);
                    *(v73 + 24 * v75) = *(v73 + 24 * v75) & 0x80000000 | *v74 & 0x7FFFFFFF;
                  }

                  *v74 = *(v1 + 84);
                  --*(v1 + 76);
                  v76 = *(v1 + 88) + 1;
                  *(v1 + 84) = v72;
                  *(v1 + 88) = v76;
                }
              }
            }

LABEL_132:
            v77 = *(v8 + 152);
            if (v77 <= v62 + 1)
            {
              v77 = v62 + 1;
            }

            while (v77 - 1 != v62)
            {
              LODWORD(v62) = v62 + 1;
              if ((*(*(v8 + 136) + 16 * v62) & 0x80000000) != 0)
              {
                goto LABEL_138;
              }
            }

            LODWORD(v62) = v77;
            continue;
          }

          break;
        }

        v78 = *(v8 + 296);
        if (!v78)
        {
          LODWORD(v79) = 0;
          goto LABEL_169;
        }

        v79 = 0;
        v80 = *(v8 + 280);
        do
        {
          v81 = *v80;
          v80 += 4;
          if (v81 < 0)
          {
            goto LABEL_169;
          }

          ++v79;
        }

        while (v78 != v79);
        LODWORD(v79) = *(v8 + 296);
LABEL_169:
        while (2)
        {
          if (v79 != v78)
          {
            v82 = *(*(v8 + 280) + 16 * v79 + 8);
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::remove(v8 + 264, v82);
            if (*(v1 + 192))
            {
              v83 = *(v1 + 208);
              v84 = *(*(v1 + 200) + 4 * (v82 % *(v1 + 216)));
              if (v84 != 0x7FFFFFFF)
              {
                while (*(v83 + 24 * v84 + 8) != v82)
                {
                  v84 = *(v83 + 24 * v84) & 0x7FFFFFFF;
                  if (v84 == 0x7FFFFFFF)
                  {
                    goto LABEL_152;
                  }
                }

                goto LABEL_153;
              }
            }

            else
            {
              v83 = *(v1 + 208);
            }

LABEL_152:
            v84 = 0x7FFFFFFFLL;
LABEL_153:
            v85 = *(v83 + 24 * v84 + 16);
            if (!*v85 || (v86 = *v85 - 1, (*v85 = v86) == 0))
            {
              re::internal::destroyPersistent<re::TechniqueResolutions<re::BufferResolution>>(v85);
              if (*(v1 + 192))
              {
                v87 = v82 % *(v1 + 216);
                v88 = *(v1 + 200);
                v89 = *(v88 + 4 * v87);
                if (v89 != 0x7FFFFFFF)
                {
                  v90 = *(v1 + 208);
                  if (*(v90 + 24 * v89 + 8) == v82)
                  {
                    v91 = (v90 + 24 * v89);
                    *(v88 + 4 * v87) = *v91 & 0x7FFFFFFF;
                  }

                  else
                  {
                    do
                    {
                      v92 = v89;
                      v89 = *(v90 + 24 * v89) & 0x7FFFFFFF;
                      if (v89 == 0x7FFFFFFF)
                      {
                        goto LABEL_163;
                      }
                    }

                    while (*(v90 + 24 * v89 + 8) != v82);
                    v91 = (v90 + 24 * v89);
                    *(v90 + 24 * v92) = *(v90 + 24 * v92) & 0x80000000 | *v91 & 0x7FFFFFFF;
                  }

                  *v91 = *(v1 + 228);
                  --*(v1 + 220);
                  v93 = *(v1 + 232) + 1;
                  *(v1 + 228) = v89;
                  *(v1 + 232) = v93;
                }
              }
            }

LABEL_163:
            v94 = *(v8 + 296);
            if (v94 <= v79 + 1)
            {
              v94 = v79 + 1;
            }

            while (v94 - 1 != v79)
            {
              LODWORD(v79) = v79 + 1;
              if ((*(*(v8 + 280) + 16 * v79) & 0x80000000) != 0)
              {
                goto LABEL_169;
              }
            }

            LODWORD(v79) = v94;
            continue;
          }

          break;
        }

        v95 = *(v8 + 344);
        if (!v95)
        {
          LODWORD(v96) = 0;
          goto LABEL_200;
        }

        v96 = 0;
        v97 = *(v8 + 328);
        do
        {
          v98 = *v97;
          v97 += 4;
          if (v98 < 0)
          {
            goto LABEL_200;
          }

          ++v96;
        }

        while (v95 != v96);
        LODWORD(v96) = *(v8 + 344);
LABEL_200:
        while (2)
        {
          if (v96 != v95)
          {
            v99 = *(*(v8 + 328) + 16 * v96 + 8);
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::remove(v8 + 312, v99);
            if (*(v1 + 240))
            {
              v100 = *(v1 + 256);
              v101 = *(*(v1 + 248) + 4 * (v99 % *(v1 + 264)));
              if (v101 != 0x7FFFFFFF)
              {
                while (*(v100 + 24 * v101 + 8) != v99)
                {
                  v101 = *(v100 + 24 * v101) & 0x7FFFFFFF;
                  if (v101 == 0x7FFFFFFF)
                  {
                    goto LABEL_183;
                  }
                }

                goto LABEL_184;
              }
            }

            else
            {
              v100 = *(v1 + 256);
            }

LABEL_183:
            v101 = 0x7FFFFFFFLL;
LABEL_184:
            v102 = *(v100 + 24 * v101 + 16);
            if (!*v102 || (v103 = *v102 - 1, (*v102 = v103) == 0))
            {
              re::internal::destroyPersistent<re::TechniqueResolutions<re::BufferResolution>>(v102);
              if (*(v1 + 240))
              {
                v104 = v99 % *(v1 + 264);
                v105 = *(v1 + 248);
                v106 = *(v105 + 4 * v104);
                if (v106 != 0x7FFFFFFF)
                {
                  v107 = *(v1 + 256);
                  if (*(v107 + 24 * v106 + 8) == v99)
                  {
                    v108 = (v107 + 24 * v106);
                    *(v105 + 4 * v104) = *v108 & 0x7FFFFFFF;
                  }

                  else
                  {
                    do
                    {
                      v109 = v106;
                      v106 = *(v107 + 24 * v106) & 0x7FFFFFFF;
                      if (v106 == 0x7FFFFFFF)
                      {
                        goto LABEL_194;
                      }
                    }

                    while (*(v107 + 24 * v106 + 8) != v99);
                    v108 = (v107 + 24 * v106);
                    *(v107 + 24 * v109) = *(v107 + 24 * v109) & 0x80000000 | *v108 & 0x7FFFFFFF;
                  }

                  *v108 = *(v1 + 276);
                  *(v1 + 276) = v106;
                  --*(v1 + 268);
                  ++*(v1 + 280);
                }
              }
            }

LABEL_194:
            v110 = *(v8 + 344);
            if (v110 <= v96 + 1)
            {
              v110 = v96 + 1;
            }

            while (v110 - 1 != v96)
            {
              LODWORD(v96) = v96 + 1;
              if ((*(*(v8 + 328) + 16 * v96) & 0x80000000) != 0)
              {
                goto LABEL_200;
              }
            }

            LODWORD(v96) = v110;
            continue;
          }

          break;
        }

        v111 = *(v8 + 392);
        if (!v111)
        {
          LODWORD(v112) = 0;
          goto LABEL_231;
        }

        v112 = 0;
        v113 = *(v8 + 376);
        do
        {
          v114 = *v113;
          v113 += 4;
          if (v114 < 0)
          {
            goto LABEL_231;
          }

          ++v112;
        }

        while (v111 != v112);
        LODWORD(v112) = *(v8 + 392);
LABEL_231:
        while (2)
        {
          if (v112 != v111)
          {
            v115 = *(*(v8 + 376) + 16 * v112 + 8);
            v116 = re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::remove(v8 + 360, v115);
            if (*(v1 + 288))
            {
              v117 = *(v1 + 304);
              v118 = *(*(v1 + 296) + 4 * (v115 % *(v1 + 312)));
              if (v118 != 0x7FFFFFFF)
              {
                while (*(v117 + 24 * v118 + 8) != v115)
                {
                  v118 = *(v117 + 24 * v118) & 0x7FFFFFFF;
                  if (v118 == 0x7FFFFFFF)
                  {
                    goto LABEL_214;
                  }
                }

                goto LABEL_215;
              }
            }

            else
            {
              v117 = *(v1 + 304);
            }

LABEL_214:
            v118 = 0x7FFFFFFFLL;
LABEL_215:
            v119 = *(v117 + 24 * v118 + 16);
            if (!*v119 || (v120 = *v119 - 1, (*v119 = v120) == 0))
            {
              v121 = re::globalAllocators(v116)[2];
              re::DynamicArray<re::ArgumentBufferResolution>::deinit((v119 + 12));
              re::DynamicArray<re::ArgumentBufferResolution>::deinit((v119 + 2));
              (*(*v121 + 40))(v121, v119);
              if (*(v1 + 288))
              {
                v122 = v115 % *(v1 + 312);
                v123 = *(v1 + 296);
                v124 = *(v123 + 4 * v122);
                if (v124 != 0x7FFFFFFF)
                {
                  v125 = *(v1 + 304);
                  if (*(v125 + 24 * v124 + 8) == v115)
                  {
                    v126 = (v125 + 24 * v124);
                    *(v123 + 4 * v122) = *v126 & 0x7FFFFFFF;
LABEL_224:
                    *v126 = *(v1 + 324);
                    *(v1 + 324) = v124;
                    --*(v1 + 316);
                    ++*(v1 + 328);
                  }

                  else
                  {
                    while (1)
                    {
                      v127 = v124;
                      v124 = *(v125 + 24 * v124) & 0x7FFFFFFF;
                      if (v124 == 0x7FFFFFFF)
                      {
                        break;
                      }

                      if (*(v125 + 24 * v124 + 8) == v115)
                      {
                        v126 = (v125 + 24 * v124);
                        *(v125 + 24 * v127) = *(v125 + 24 * v127) & 0x80000000 | *v126 & 0x7FFFFFFF;
                        goto LABEL_224;
                      }
                    }
                  }
                }
              }
            }

            v128 = *(v8 + 392);
            if (v128 <= v112 + 1)
            {
              v128 = v112 + 1;
            }

            while (v128 - 1 != v112)
            {
              LODWORD(v112) = v112 + 1;
              if ((*(*(v8 + 376) + 16 * v112) & 0x80000000) != 0)
              {
                goto LABEL_231;
              }
            }

            LODWORD(v112) = v128;
            continue;
          }

          break;
        }

        v4 = v151;
        v129 = *(v151 + 120);
        if (v129 <= v5 + 1)
        {
          v129 = v5 + 1;
        }

        while (v129 - 1 != v5)
        {
          LODWORD(v5) = v5 + 1;
          if ((*(*(v151 + 104) + 32 * v5) & 0x80000000) != 0)
          {
            goto LABEL_238;
          }
        }

        LODWORD(v5) = v129;
LABEL_238:
        ;
      }

      while (v5 != v152);
LABEL_239:
      v3 = v149 + 5;
    }

    while (v149 + 5 != v148);
  }

  if (*(v1 + 416))
  {
    v130 = 0;
    do
    {
      WeakRetained = objc_loadWeakRetained((*(v1 + 432) + 8 * v130));
      if (WeakRetained)
      {

        ++v130;
        v132 = *(v1 + 416);
      }

      else
      {
        v133 = *(v1 + 416);
        if (v133 <= v130)
        {
          v156 = 0u;
          v157 = 0u;
          v154 = 0u;
          v155 = 0u;
          v153 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v134 = *(v1 + 432);
        if (v133 - 1 > v130)
        {
          v135 = (v134 + 8 * v133 - 8);
          v136 = (v134 + 8 * v130);
          if (v135 != v136)
          {
            objc_destroyWeak((v134 + 8 * v130));
            *v136 = 0;
            objc_moveWeak(v136, v135);
            v133 = *(v1 + 416);
            v134 = *(v1 + 432);
          }
        }

        v137 = v134 + 8 * v133;
        objc_destroyWeak((v137 - 8));
        *(v137 - 8) = 0;
        v132 = *(v1 + 416) - 1;
        *(v1 + 416) = v132;
        ++*(v1 + 424);
      }
    }

    while (v130 < v132);
  }

  os_unfair_lock_lock((v1 + 488));
  v138 = *(v1 + 472);
  if (v138)
  {
    v139 = 0;
    v140 = *(v1 + 456);
    while (1)
    {
      v141 = *v140;
      v140 += 6;
      if (v141 < 0)
      {
        break;
      }

      if (v138 == ++v139)
      {
        LODWORD(v139) = *(v1 + 472);
        break;
      }
    }
  }

  else
  {
    LODWORD(v139) = 0;
  }

  while (v139 != v138)
  {
    v142 = *(v1 + 456) + 24 * v139 + 16;
    if (objc_isUniquelyReferenced())
    {
      if (*v142)
      {

        *v142 = 0;
      }

      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v1 + 440, (v142 - 8), *(v142 - 8), &v153);
      v143 = HIDWORD(v153);
      if (HIDWORD(v153) != 0x7FFFFFFF)
      {
        v144 = *(v1 + 456);
        v145 = *(v144 + 24 * HIDWORD(v153)) & 0x7FFFFFFF;
        if (v154 == 0x7FFFFFFF)
        {
          *(*(v1 + 448) + 4 * DWORD2(v153)) = v145;
          v143 = HIDWORD(v153);
        }

        else
        {
          *(v144 + 24 * v154) = *(v144 + 24 * v154) & 0x80000000 | v145;
        }

        re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::free(v1 + 440, v143);
        v146 = HIDWORD(v153);
        *(*(v1 + 456) + 24 * HIDWORD(v153)) = *(*(v1 + 456) + 24 * HIDWORD(v153)) & 0x80000000 | *(v1 + 476);
        *(v1 + 476) = v146;
        --*(v1 + 468);
        ++*(v1 + 480);
      }
    }

    v147 = *(v1 + 472);
    if (v147 <= v139 + 1)
    {
      v147 = v139 + 1;
    }

    while (v147 - 1 != v139)
    {
      LODWORD(v139) = v139 + 1;
      if ((*(*(v1 + 456) + 24 * v139) & 0x80000000) != 0)
      {
        goto LABEL_271;
      }
    }

    LODWORD(v139) = v147;
LABEL_271:
    ;
  }

  os_unfair_lock_unlock((v1 + 488));
}

void *re::internal::MoveOnlyCallable<re::MaterialManager::destroyMaterial(unsigned long,re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>> &&)::$_0::operator()(void)::{lambda(void)#1},void ()(void)>::moveInto(void *a1, void *a2)
{
  v2 = a1[1];
  *a2 = &unk_1F5D06120;
  a2[1] = v2;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  v3 = a1[3];
  a2[2] = a1[2];
  a2[3] = v3;
  a1[2] = 0;
  a1[3] = 0;
  v4 = a2[4];
  a2[4] = a1[4];
  a1[4] = v4;
  a2[5] = a1[5];
  return a2;
}

uint64_t re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::remove(uint64_t result, unint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v3 = a2 % v2;
    v4 = *(result + 8);
    v5 = *(v4 + 4 * (a2 % v2));
    if (v5 != 0x7FFFFFFF)
    {
      v6 = *(result + 16);
      if (*(v6 + 16 * v5 + 8) == a2)
      {
        *(v4 + 4 * v3) = *(v6 + 16 * v5) & 0x7FFFFFFF;
LABEL_8:
        v8 = *(result + 16);
        v9 = (v8 + 16 * v5);
        v10 = *v9;
        if (*v9 < 0)
        {
          *v9 = v10 & 0x7FFFFFFF;
          v8 = *(result + 16);
          v10 = *(v8 + 16 * v5);
        }

        v11 = *(result + 40);
        *(v8 + 16 * v5) = *(result + 36) | v10 & 0x80000000;
        --*(result + 28);
        *(result + 36) = v5;
        *(result + 40) = v11 + 1;
      }

      else
      {
        while (1)
        {
          v7 = v5;
          v5 = *(v6 + 16 * v5) & 0x7FFFFFFF;
          if (v5 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v6 + 16 * v5 + 8) == a2)
          {
            *(v6 + 16 * v7) = *(v6 + 16 * v7) & 0x80000000 | *(v6 + 16 * v5) & 0x7FFFFFFF;
            goto LABEL_8;
          }
        }
      }
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::ArgumentBufferResolution>::deinit(uint64_t a1)
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
        v5 = 144 * v4;
        v6 = v3 + 80;
        do
        {
          v7 = *(v6 + 40);
          if (v7)
          {

            *(v6 + 40) = 0;
          }

          re::DynamicArray<re::ConstantResolution>::deinit(v6);
          re::DynamicArray<unsigned long>::deinit(v6 - 40);
          re::DynamicArray<unsigned long>::deinit(v6 - 80);
          v6 += 144;
          v5 -= 144;
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

uint64_t re::DynamicArray<re::ConstantResolution>::deinit(uint64_t a1)
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
        v6 = v3 + 56;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6);
          re::DynamicArray<unsigned long>::deinit(v6 - 48);
          v6 += 112;
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

void *re::DynamicArray<re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>>::setCapacity(v5, a2);
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
        v10 = v9 << 6;
        v11 = v7;
        do
        {
          *(v11 + 2) = 0u;
          *(v11 + 3) = 0u;
          *v11 = 0u;
          *(v11 + 1) = 0u;
          re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(v11, v8);
          re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v8);
          v8 += 8;
          v11 += 8;
          v10 -= 64;
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

_anonymous_namespace_ *re::DataArray<re::MaterialParameterBlock>::allocBlock(void *a1)
{
  v3 = 1008 * *(a1 + 11);
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

uint64_t re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::TechniqueFunctionConstant>(uint64_t a1, uint64_t a2, const re::DynamicString *a3, uint64_t a4)
{
  v7 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::DynamicString::DynamicString((v7 + 8), a3);
  *(v7 + 40) = 0u;
  v7 += 40;
  *(v7 + 16) = 0u;
  *(v7 + 24) = *(a4 + 24);
  v8 = *(a4 + 8);
  *v7 = *a4;
  *a4 = 0;
  v9 = *(a4 + 16);
  *(a4 + 24) = 0;
  v11 = *(v7 + 8);
  v10 = *(v7 + 16);
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  v12 = *(a4 + 48);
  v13 = *(a4 + 64);
  v14 = *(a4 + 80);
  *(v7 + 96) = *(a4 + 96);
  *(v7 + 64) = v13;
  *(v7 + 80) = v14;
  *(v7 + 48) = v12;
  *(v7 + 32) = *(a4 + 32);
  ++*(a1 + 40);
  return v7;
}

double re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + 1;
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

  v8 = *(a1 + 56);
  memset(v25, 0, sizeof(v25));
  re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::init(v25, v8, v3);
  v23[0] = a1;
  v9 = *(a1 + 16);
  if (v9 >= 0x10)
  {
    v10 = 0;
    v11 = *a1;
    v12 = v9 >> 4;
    while (1)
    {
      v13 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v11), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v23[1] = v13 ^ 0xFFFFLL;
      if (v13 != 0xFFFFLL)
      {
        break;
      }

      v10 -= 16;
      ++v11;
      if (!--v12)
      {
        goto LABEL_13;
      }
    }

    v14 = __clz(__rbit64(v13 ^ 0xFFFFLL));
    v15 = v14 - v10;
    v24 = v14 - v10;
    if (v14 + 1 != v10)
    {
      do
      {
        re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(v25, (*(v23[0] + 8) + 72 * v15), (*(v23[0] + 8) + 72 * v15 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v23);
        v15 = v24;
      }

      while (v24 != -1);
      v9 = *(a1 + 16);
    }
  }

LABEL_13:
  v16 = *(&v25[3] + 1);
  *(&v25[3] + 1) = *(a1 + 56);
  v17 = v25[0];
  v18 = v25[1];
  v25[0] = *a1;
  *&v25[1] = v9;
  v19 = v25[2];
  v20 = *(a1 + 40);
  *(a1 + 48) = *&v25[3];
  *(a1 + 56) = v16;
  *(&v25[2] + 8) = v20;
  v21 = *(a1 + 24);
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 32) = v19;
  *(&v25[1] + 8) = v21;
  return re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(v25);
}

int64x2_t re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(uint64_t *a1, void *a2, void *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(a1);
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
  v16 = 9 * (v13 + 16 * v11);
  v17 = a1[1] + 72 * (v13 + 16 * v11);
  *v17 = *a2;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 64) = a3[7];
  a3[7] = 0;
  v18 = *(v17 + 8);
  *(v17 + 8) = *a3;
  *a3 = v18;
  v19 = *(v17 + 16);
  v20 = a3[2];
  *(v17 + 16) = a3[1];
  *(v17 + 24) = v20;
  a3[1] = v19;
  a3[2] = 0;
  v21 = *(v17 + 48);
  *(v17 + 48) = a3[5];
  a3[5] = v21;
  v22 = *(v17 + 56);
  *(v17 + 56) = a3[6];
  a3[6] = v22;
  v23 = *(v17 + 32);
  *(v17 + 32) = a3[3];
  a3[3] = v23;
  v24 = *(v17 + 40);
  *(v17 + 40) = a3[4];
  a3[4] = v24;
  if (v15 == 255)
  {
    v25 = -1;
  }

  else
  {
    v25 = 0;
  }

  v26.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v26.i64[1] = v25;
  result = vaddq_s64(*(a1 + 3), v26);
  *(a1 + 3) = result;
  v28 = *(a1[1] + 8 * v16) ^ (*(a1[1] + 8 * v16) >> 30);
  v29 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v28) ^ ((0xBF58476D1CE4E5B9 * v28) >> 27));
  a1[5] ^= (v29 >> 31) ^ v29;
  return result;
}

void *re::TextureTableImpl<NS::SharedPtr<MTL::Texture>>::~TextureTableImpl(void *a1)
{
  *a1 = &unk_1F5D061E0;
  v2 = (a1 + 1);
  re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::deinit((a1 + 9));
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v2);
  re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::deinit((a1 + 9));
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v2);
  return a1;
}

uint64_t re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::deinit(uint64_t a1)
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
        v5 = 32 * v4;
        v6 = (v3 + 16);
        do
        {
          if (*(v6 - 8) == 1 && *v6)
          {

            *v6 = 0;
          }

          v7 = *(v6 - 2);
          if (v7)
          {

            *(v6 - 2) = 0;
          }

          v6 += 4;
          v5 -= 32;
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

double re::DataArray<re::MaterialParameterBlock>::clear(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v11, a1, 0);
  if (*&v11[0] != a1 || DWORD2(v11[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v11);
      re::DataArray<re::MaterialParameterBlock>::destroy(a1, v3);
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

uint64_t re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 8);
            do
            {
              if ((*(v18 - 1) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *v18 % *(a1 + 24));
                v20 = v18[1];
                *(v19 + 8) = *v18;
                *(v19 + 16) = v20;
              }

              ++v17;
              v18 += 3;
            }

            while (v17 < v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v4);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v4);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = 24 * v4;
  *(v21 + v24) = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *(v21 + v24) = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v21 + 24 * v4;
}

void re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_275, 4 * v10);
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

uint64_t re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 24 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 24 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 24 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 24 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::removeInternal(uint64_t result, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v3 = a2[4];
    v4 = *(result + 16);
    v5 = *(v4 + 24 * v2) & 0x7FFFFFFF;
    if (v3 == 0x7FFFFFFF)
    {
      *(*(result + 8) + 4 * a2[2]) = v5;
      v2 = a2[3];
    }

    else
    {
      *(v4 + 24 * v3) = *(v4 + 24 * v3) & 0x80000000 | v5;
    }

    v6 = *(result + 40);
    *(v4 + 24 * v2) = *(result + 36);
    --*(result + 28);
    *(result + 36) = v2;
    *(result + 40) = v6 + 1;
  }

  return result;
}

void *re::DynamicArray<re::MaterialManager::PerSceneTables>::setCapacity(void *result, unint64_t a2)
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
    result = re::DynamicArray<re::MaterialManager::PerSceneTables>::setCapacity(v4, a2);
    ++*(v4 + 6);
    return result;
  }

  if (a2 >> 58)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v2 = a2 << 6;
  result = (*(*v5 + 32))(v5, a2 << 6, 16);
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
    memcpy(result, v4[4], v4[2] << 6);
    result = (*(**v4 + 40))(*v4, v4[4]);
  }

  v4[4] = v7;
  v4[1] = a2;
  return result;
}

uint64_t re::HashTable<unsigned long,re::SharedPtr<re::MaterialPipelineData>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addInternal<unsigned long const&,re::SharedPtr<re::MaterialPipelineData> const&>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = re::HashTable<unsigned long,re::SharedPtr<re::MaterialPipelineData>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  v9 = *a4;
  *(v7 + 16) = *a4;
  v10 = v7 + 16;
  *(v7 + 8) = v8;
  if (v9)
  {
    v11 = (v9 + 8);
  }

  ++*(a1 + 40);
  return v10;
}

uint64_t re::HashTable<unsigned long,re::SharedPtr<re::MaterialPipelineData>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::SharedPtr<re::MaterialPipelineData>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *(v18 - 1) % *(a1 + 24));
                v20 = *v18;
                *(v19 + 8) = *(v18 - 1);
                *(v19 + 16) = v20;
                *v18 = 0;
              }

              ++v17;
              v18 += 3;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v4);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v4);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = 24 * v4;
  *(v21 + v24) = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *(v21 + v24) = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v21 + 24 * v4;
}

uint64_t re::HashTable<unsigned long long,re::DataArrayHandle<re::MaterialParameterBlock>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::DataArrayHandle<re::MaterialParameterBlock>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v26, v9, v8);
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
            v17 = 0;
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::DataArrayHandle<re::MaterialParameterBlock>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v18[1] % *(a1 + 24));
                *(v19 + 8) = *(v18 - 1);
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 4;
            }

            while (v17 < v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v26);
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

void re::HashTable<unsigned long long,re::DataArrayHandle<re::MaterialParameterBlock>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_275, 4 * v10);
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

void re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_275, 4 * v2);
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
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 32;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

uint64_t re::HashTable<unsigned long long,re::HashSet<re::UnresolvedArgumentBufferEntry,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false> *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::DataArrayHandle<re::MaterialParameterBlock>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::HashSet<re::UnresolvedArgumentBufferEntry,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false> *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v18[1] % *(a1 + 24));
                v20 = *v18;
                *(v19 + 8) = *(v18 - 1);
                *(v19 + 16) = v20;
              }

              ++v17;
              v18 += 4;
            }

            while (v17 < v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 32 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v24 + 24) = a3;
  *(v25 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v21 + 32 * v5;
}

void ___ZN2re20GraphicsFeatureFlags37systemMaterialParametersDirtyTrackingEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("GraphicsSystemMaterialParametersDirtyTracking", a2, v5);
  if (v5[0] == 1)
  {
    re::GraphicsFeatureFlags::systemMaterialParametersDirtyTracking(void)::gSystemMaterialParametersDirtyTracking = v5[1];
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::GraphicsFeatureFlags::systemMaterialParametersDirtyTracking(void)::gSystemMaterialParametersDirtyTracking)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Dirty tracking of SystemMaterialPrameterBlock parameters is %s.", buf, 0xCu);
  }
}

void ___ZN2re20GraphicsFeatureFlags20mergeComputeEncodersEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("GraphicsMergeComputeEncoders", a2, v5);
  if (v5[0] == 1)
  {
    re::GraphicsFeatureFlags::mergeComputeEncoders(void)::gMergeComputeEncoders = v5[1];
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::GraphicsFeatureFlags::mergeComputeEncoders(void)::gMergeComputeEncoders)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Merging Compute Encoders is %s.", buf, 0xCu);
  }
}

void ___ZN2re20GraphicsFeatureFlags16enableDepthPatchEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("enableDepthPatch", a2, v5);
  if (v5[0] == 1)
  {
    re::GraphicsFeatureFlags::enableDepthPatch(void)::gEnableDepthPatch = v5[1];
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::GraphicsFeatureFlags::enableDepthPatch(void)::gEnableDepthPatch)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Depth Patch is %s.", buf, 0xCu);
  }
}

void ___ZN2re20GraphicsFeatureFlags34enablePbrToSurfaceShaderConversionEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("enablePbrToSurfaceShaderConversion", a2, v5);
  if (v5[0] == 1)
  {
    re::GraphicsFeatureFlags::enablePbrToSurfaceShaderConversion(void)::sEnablePbrToSurfaceShaderConversion = v5[1];
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::GraphicsFeatureFlags::enablePbrToSurfaceShaderConversion(void)::sEnablePbrToSurfaceShaderConversion)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "PBR-to-Surface Shader runtime conversion is %s.", buf, 0xCu);
  }
}

void ___ZN2re20GraphicsFeatureFlags34enableMeshPartDepthBiasInSortGroupEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("enableMeshPartDepthBiasInSortGroup", a2, v5);
  if (v5[0] == 1)
  {
    re::GraphicsFeatureFlags::enableMeshPartDepthBiasInSortGroup(void)::gEnableMeshPartDepthBiasInSortGroup = v5[1];
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::GraphicsFeatureFlags::enableMeshPartDepthBiasInSortGroup(void)::gEnableMeshPartDepthBiasInSortGroup)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "MeshPartDepthBiasInSortGroup is %s.", buf, 0xCu);
  }
}

void ___ZN2re20GraphicsFeatureFlags14enableUIShadowEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("enableUIShadow", a2, v5);
  if (v5[0] == 1)
  {
    re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow = v5[1];
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "EnableUIShadow is %s.", buf, 0xCu);
  }
}

void ___ZN2re20GraphicsFeatureFlags34enableOptOutFadeGroupInnerDistanceEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("enableOptOutFadeGroupInnerDistance", a2, v5);
  if (v5[0] == 1)
  {
    re::GraphicsFeatureFlags::enableOptOutFadeGroupInnerDistance(void)::gEnableOptOutFadeGroupInnerDistance = v5[1];
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::GraphicsFeatureFlags::enableOptOutFadeGroupInnerDistance(void)::gEnableOptOutFadeGroupInnerDistance)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "EnableOptOutFadeGroupInnerDistance is %s.", buf, 0xCu);
  }
}

uint64_t re::REAnalyticsEventShaderCompilationRequest(re *this, const char *a2, const char *a3, const char *a4, const char *a5, const char *a6, uint64_t a7, unsigned int *a8, unsigned int a9, unsigned int a10, uint64_t a11, const char *a12, uint64_t a13, char a14)
{
  v28 = a8;
  v27 = a6;
  if (!a4)
  {
    goto LABEL_19;
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithCString:a4 encoding:4];
  v17 = [v16 hasPrefix:@"snapshotCamera"];
  if (!v17)
  {
    if ([v16 hasPrefix:@"Reality Simulation Default Camera"])
    {
      v19 = [v16 rangeOfString:@"_" options:4];
      if (!v19 || (v20 = v19, v19 >= [v16 length]))
      {
        re::DynamicString::format("RSCamera_%s", &v36, "");
        goto LABEL_18;
      }

      v21 = [v16 substringFromIndex:v20 + 1];
      re::DynamicString::format("RSCamera_%s", &v36, [v21 cStringUsingEncoding:4]);
    }

    else
    {
      v22 = [v16 hasPrefix:@"rOS Shared Scene"];
      if (!v22)
      {
        v18 = a4;
        goto LABEL_4;
      }

      v23 = [v16 rangeOfString:@"_" options:4];
      if (!v23 || (v24 = v23, v23 >= [v16 length]))
      {
        re::DynamicString::format("SharedScene_%s", &v36, "");
        goto LABEL_18;
      }

      v21 = [v16 substringFromIndex:v24 + 1];
      re::DynamicString::format("SharedScene_%s", &v36, [v21 cStringUsingEncoding:4]);
    }

    goto LABEL_18;
  }

  v18 = "snapshotCamera";
LABEL_4:
LABEL_18:

LABEL_19:
  re::DynamicString::DynamicString(v29, &v36);
  v29[4] = a5;
  v29[5] = a7;
  v30 = v27;
  v31 = v28;
  v32 = a9;
  v33 = a10;
  v34 = a12;
  v29[6] = a11;
  v29[7] = a13;
  v35 = a14;
  AnalyticsSendEventLazy();
  if (v29[0])
  {
    if (v29[1])
    {
      (*(*v29[0] + 40))();
    }

    memset(v29, 0, 32);
  }

  result = v36;
  if (v36)
  {
    if (v37)
    {
      return (*(*v36 + 40))(v36, v38);
    }
  }

  return result;
}

id ___ZN2re40REAnalyticsEventShaderCompilationRequestEPKcS1_S1_S1_S1_jPjjjjS1_bmb_block_invoke(uint64_t a1)
{
  v21[14] = *MEMORY[0x1E69E9840];
  v20[0] = @"MaterialName";
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 32)];
  v21[0] = v19;
  v20[1] = @"TechniqueName";
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 40)];
  v21[1] = v18;
  v20[2] = @"NodeName";
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 48)];
  v21[2] = v17;
  v20[3] = @"GraphScope";
  if (*(a1 + 64))
  {
    v2 = *(a1 + 72);
  }

  else
  {
    v2 = a1 + 65;
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
  v21[3] = v16;
  v20[4] = @"TypeScope";
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 88)];
  v21[4] = v15;
  v20[5] = @"SampleCount";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 120)];
  v21[5] = v3;
  v20[6] = @"PixelFormats";
  v4 = *(a1 + 96);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u %u %u %u %u %u %u %u", *v4, v4[1], v4[2], v4[3], v4[4], v4[5], v4[6], v4[7]];
  v21[6] = v5;
  v20[7] = @"DepthFormat";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 124)];
  v21[7] = v6;
  v20[8] = @"StencilFormat";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 128)];
  v21[8] = v7;
  v20[9] = @"TechniqueStateOverrideFlags";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 132)];
  v21[9] = v8;
  v20[10] = @"VertexDescriptor";
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 104)];
  v21[10] = v9;
  v20[11] = @"CompiledInAssetRegistration";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 136)];
  v21[11] = v10;
  v20[12] = @"CompilationHash";
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zu", *(a1 + 112)];
  v21[12] = v11;
  v20[13] = @"IsFallback";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 137)];
  v21[13] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:14];

  return v13;
}

id ___ZN2re37REAnalyticsEventRenderGraphCacheStateEjjjj_block_invoke(unsigned int *a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"GraphEmitCount";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1[8]];
  v9[0] = v2;
  v8[1] = @"CacheHitCount";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1[9]];
  v9[1] = v3;
  v8[2] = @"CacheMissCount";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1[10]];
  v9[2] = v4;
  v8[3] = @"BuildErrorCount";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1[11]];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

id ___ZN2re48REAnalyticsEventShaderPermutationsForCustomClearEPKc_block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"ShaderPermutation";
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

double MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_8Unorm4_float4(float32x2_t *a1, float32x2_t a2, double a3, double a4, double a5, double a6, double a7, uint8x8_t a8)
{
  v8 = vmla_f32(0xBF000000BF000000, a2, a1[13]);
  v9 = vrndm_f32(v8);
  v10 = vsub_f32(v8, v9);
  v11 = vcvt_s32_f32(v9);
  v12 = vadd_s32(v11, 0x100000001);
  v13 = vand_s8(v12, 0xFFFF0000FFFFLL);
  v14 = vceq_s32(vand_s8(v11, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v38) = v14.i16[2];
  v15 = vbic_s8(v11, v14);
  LOWORD(v38) = v14.i16[0];
  v14.i32[0] = a1[12].i32[1] & v38;
  v16.i32[0] = a1[12].u16[0];
  v16.i32[1] = a1[12].u16[1];
  v17 = vorr_s8(v15, *&vmovl_u16(v14));
  v18 = vbic_s8(v12, vceq_s32(v13, v16));
  v19 = a1[26];
  v20 = vshr_n_s32(vshl_n_s32(vzip2_s32(v17, v18), 0x10uLL), 0x10uLL);
  v21 = vshl_n_s32(vzip1_s32(v17, v18), 2uLL);
  v22 = vmul_n_s32(v20, *&a1[4]);
  v23 = *&v19 + (v21.i16[0] & 0xFFFC);
  v24 = v22.u32[1];
  v25 = v22.i32[0];
  v26 = *&v19 + (v21.i16[2] & 0xFFFC);
  v21.i32[0] = *(v23 + v22.u32[0]);
  v27 = vdupq_n_s32(0x4B400000u);
  _Q3 = vdupq_n_s32(0xCB400000);
  v29 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v21)), v27), _Q3);
  v20.i32[0] = *(v23 + v24);
  v30 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v20)), v27), _Q3);
  v13.i32[0] = *(v26 + v25);
  v31 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v13)), v27), _Q3);
  a8.i32[0] = *(v26 + v24);
  v32 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a8)), v27), _Q3);
  __asm { FMOV            V3.2S, #1.0 }

  *_Q3.f32 = vsub_f32(*_Q3.f32, v10);
  *&result = vmulq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v30, vmuls_lane_f32(_Q3.f32[0], v10, 1)), v29, vmuls_lane_f32(_Q3.f32[0], *_Q3.f32, 1)), v31, vmuls_lane_f32(v10.f32[0], *_Q3.f32, 1)), v32, vmuls_lane_f32(v10.f32[0], v10, 1)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_8Unorm_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v26) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v26) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v26;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  v10 = vbic_s8(v6, vceq_s32(vand_s8(v6, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  v12 = a1[4];
  v13 = vzip2_s32(v9, v10);
  v14 = *&v11 + v9.u16[0];
  v15 = vmul_n_s32(vshr_n_s32(vshl_n_s32(v13, 0x10uLL), 0x10uLL), v12.i32[0]);
  v16 = v15.i32[0];
  v17 = *&v11 + v10.u16[0];
  v15.i8[0] = *(v14 + v15.u32[0]);
  v10.i8[0] = *(v14 + v15.u32[1]);
  v12.i8[0] = *(v17 + v16);
  v13.i8[0] = *(v17 + v15.u32[1]);
  __asm { FMOV            V5.2S, #1.0 }

  v23 = vsub_f32(_D5, v4);
  v4.f32[0] = (((vmuls_lane_f32(v23.f32[0], v4, 1) * v10.u32[0]) + (v15.u32[0] * vmuls_lane_f32(v23.f32[0], v23, 1))) + (v12.u32[0] * vmuls_lane_f32(v4.f32[0], v23, 1))) + (v13.u32[0] * vmuls_lane_f32(v4.f32[0], v4, 1));
  v24 = vdupq_lane_s32(v4, 0);
  v24.i32[3] = 1132396544;
  *&result = vmulq_f32(v24, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_0to1_repeat_trilinear_8Unorm4_float4(uint64_t a1, float32x2_t a2, float a3)
{
  *v3.i64 = _ZN14MetalEmulation12_GLOBAL__N_153sampleTexture_normalized_0to1_repeat_trilinear_float4IDv4_hEEDv4_fRKNS_7TextureEDv2_fNS_5levelE(*(a1 + 8), *(a1 + 56), a2, a3);
  *&result = vmulq_f32(v3, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double _ZN14MetalEmulation12_GLOBAL__N_153sampleTexture_normalized_0to1_repeat_trilinear_float4IDv4_hEEDv4_fRKNS_7TextureEDv2_fNS_5levelE(unsigned int a1, uint64_t a2, float32x2_t a3, float a4)
{
  v6 = fmaxf(a4, 0.0);
  v7 = v6 - truncf(v6);
  v8 = v6;
  if (a1 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = a1;
  }

  v10 = (a2 + 224 * v9);
  v11 = vmla_f32(0xBF000000BF000000, a3, v10[13]);
  v12 = vrndm_f32(v11);
  v13 = vsub_f32(v11, v12);
  v14 = vcvt_s32_f32(v12);
  v15 = vadd_s32(v14, 0x100000001);
  v16 = vceq_s32(vand_s8(v14, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v67) = v16.i16[2];
  v17 = vbic_s8(v14, v16);
  LOWORD(v67) = v16.i16[0];
  v16.i32[0] = v10[12].i32[1] & v67;
  v18.i32[0] = v10[12].u16[0];
  v18.i32[1] = v10[12].u16[1];
  v19 = vorr_s8(v17, *&vmovl_u16(v16));
  v20 = vbic_s8(v15, vceq_s32(vand_s8(v15, 0xFFFF0000FFFFLL), v18));
  v21 = v10[26];
  v10 += 4;
  v22 = vld1_dup_f32(v10);
  v23 = vmul_s32(v22, vshr_n_s32(vshl_n_s32(vzip2_s32(v19, v20), 0x10uLL), 0x10uLL));
  v24 = vshl_n_s32(vzip1_s32(v19, v20), 2uLL);
  v25 = *&v21 + (v24.i16[0] & 0xFFFC);
  v26 = v23.u32[1];
  v27 = v23.i32[0];
  v24.i32[0] = *(v25 + v23.u32[0]);
  v28 = *&v21 + (v24.i16[2] & 0xFFFC);
  v29 = vdupq_n_s32(0x4B400000u);
  v30 = vdupq_n_s32(0xCB400000);
  v22.i32[0] = *(v25 + v26);
  v31 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v24)), v29), v30);
  v32 = vorrq_s8(vmovl_u16(*&vmovl_u8(v22)), v29);
  v22.i32[0] = *(v28 + v27);
  v33 = vaddq_f32(v32, v30);
  v4.i32[0] = *(v28 + v26);
  v34 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v22)), v29), v30);
  v35 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v4)), v29), v30);
  __asm { FMOV            V3.2S, #1.0 }

  v41 = vsub_f32(_D3, v13);
  v42 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v33, vmuls_lane_f32(v41.f32[0], v13, 1)), v31, vmuls_lane_f32(v41.f32[0], v41, 1)), v34, vmuls_lane_f32(v13.f32[0], v41, 1)), v35, vmuls_lane_f32(v13.f32[0], v13, 1));
  if (v7 >= 0.00001 && v8 < a1)
  {
    v43 = (a2 + 224 * (v9 + 1));
    v44 = vmla_f32(0xBF000000BF000000, a3, v43[13]);
    v45 = vrndm_f32(v44);
    v46 = vsub_f32(v44, v45);
    v47 = vcvt_s32_f32(v45);
    v48 = vadd_s32(v47, 0x100000001);
    v49 = vand_s8(v48, 0xFFFF0000FFFFLL);
    v50 = vceq_s32(vand_s8(v47, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
    HIWORD(v66) = v50.i16[2];
    v51 = vbic_s8(v47, v50);
    LOWORD(v66) = v50.i16[0];
    v50.i32[0] = v43[12].i32[1] & v66;
    v52 = vorr_s8(v51, *&vmovl_u16(v50));
    v50.i32[0] = v43[12].u16[0];
    v50.i32[1] = v43[12].u16[1];
    v53 = vbic_s8(v48, vceq_s32(v49, v50));
    v54 = v43[26];
    v43 += 4;
    v55 = vld1_dup_f32(v43);
    v56 = vmul_s32(v55, vshr_n_s32(vshl_n_s32(vzip2_s32(v52, v53), 0x10uLL), 0x10uLL));
    v57 = vshl_n_s32(vzip1_s32(v52, v53), 2uLL);
    v58 = *&v54 + (v57.i16[0] & 0xFFFC);
    v59 = v56.u32[1];
    v60 = v56.i32[0];
    v61 = *&v54 + (v57.i16[2] & 0xFFFC);
    v57.i32[0] = *(v58 + v56.u32[0]);
    v62 = vdupq_n_s32(0x4B400000u);
    v63 = vdupq_n_s32(0xCB400000);
    v55.i32[0] = *(v58 + v59);
    v49.i32[0] = *(v61 + v60);
    v5.i32[0] = *(v61 + v59);
    v64 = vsub_f32(_D3, v46);
    v42.i64[0] = vmlaq_n_f32(v42, vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v55)), v62), v63), vmuls_lane_f32(v64.f32[0], v46, 1)), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v57)), v62), v63), vmuls_lane_f32(v64.f32[0], v64, 1)), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v49)), v62), v63), vmuls_lane_f32(v46.f32[0], v64, 1)), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v5)), v62), v63), vmuls_lane_f32(v46.f32[0], v46, 1)), v42), v7).u64[0];
  }

  return *v42.i64;
}

double MetalEmulation::sampleTexture_normalized_0to1_repeat_trilinear_8Unorm_float4(uint64_t a1, float32x2_t a2, float a3)
{
  *&result = vmulq_f32(v3, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::anonymous namespace::sampleTexture_normalized_0to1_repeat_trilinear_float4<unsigned char>(unsigned int a1, uint64_t a2, float32x2_t a3, float a4)
{
  v4 = fmaxf(a4, 0.0);
  v5 = v4;
  v6 = v4 - truncf(v4);
  if (a1 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = a1;
  }

  v8 = (a2 + 224 * v7);
  v9 = vmla_f32(0xBF000000BF000000, a3, v8[13]);
  v10 = vrndm_f32(v9);
  v11 = vsub_f32(v9, v10);
  v12 = vcvt_s32_f32(v10);
  v13 = vadd_s32(v12, 0x100000001);
  v14 = vceq_s32(vand_s8(v12, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v57) = v14.i16[2];
  v15 = vbic_s8(v12, v14);
  LOWORD(v57) = v14.i16[0];
  v14.i32[0] = v8[12].i32[1] & v57;
  v16 = vorr_s8(v15, *&vmovl_u16(v14));
  v14.i32[0] = v8[12].u16[0];
  v14.i32[1] = v8[12].u16[1];
  v17 = vbic_s8(v13, vceq_s32(vand_s8(v13, 0xFFFF0000FFFFLL), v14));
  v18 = v8[26];
  v8 += 4;
  v19 = v17.i16[0];
  v20 = *&v18 + v16.u16[0];
  v21 = vshr_n_s32(vshl_n_s32(vzip2_s32(v16, v17), 0x10uLL), 0x10uLL);
  v22 = vld1_dup_f32(v8);
  v23 = vmul_s32(v22, v21);
  v24 = v23.i32[0];
  v25 = *&v18 + v19;
  v23.i8[0] = *(v20 + v23.u32[0]);
  *v22.i32 = v23.u32[0];
  v23.i8[0] = *(v20 + v23.u32[1]);
  *v13.i32 = v23.u32[0];
  v23.i8[0] = *(v25 + v24);
  v26 = v23.u32[0];
  v23.i8[0] = *(v25 + v23.u32[1]);
  v27 = v23.u32[0];
  __asm { FMOV            V5.2S, #1.0 }

  v32 = vsub_f32(_D5, v11);
  v11.f32[0] = (((vmuls_lane_f32(v32.f32[0], v11, 1) * *v13.i32) + (*v22.i32 * vmuls_lane_f32(v32.f32[0], v32, 1))) + (v26 * vmuls_lane_f32(v11.f32[0], v32, 1))) + (v27 * vmuls_lane_f32(v11.f32[0], v11, 1));
  v33 = vdupq_lane_s32(v11, 0);
  v33.i32[3] = 1132396544;
  if (v6 >= 0.00001 && v5 < a1)
  {
    v35 = (a2 + 224 * (v7 + 1));
    v36 = vmla_f32(0xBF000000BF000000, a3, v35[13]);
    v37 = vrndm_f32(v36);
    v38 = vsub_f32(v36, v37);
    v39 = vcvt_s32_f32(v37);
    v40 = vadd_s32(v39, 0x100000001);
    v41 = vceq_s32(vand_s8(v39, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
    HIWORD(v56) = v41.i16[2];
    v42 = vbic_s8(v39, v41);
    LOWORD(v56) = v41.i16[0];
    v41.i32[0] = v35[12].i32[1] & v56;
    v37.i32[0] = v35[12].u16[0];
    v37.i32[1] = v35[12].u16[1];
    v43 = vorr_s8(v42, *&vmovl_u16(v41));
    v44 = vbic_s8(v40, vceq_s32(vand_s8(v40, 0xFFFF0000FFFFLL), v37));
    v45 = v35[26];
    v35 += 4;
    v46 = vzip2_s32(v43, v44);
    v47 = v44.i16[0];
    v48 = *&v45 + v43.u16[0];
    v49 = vld1_dup_f32(v35);
    v50 = vmul_s32(v49, vshr_n_s32(vshl_n_s32(v46, 0x10uLL), 0x10uLL));
    v51 = v50.i32[0];
    v52 = *&v45 + v47;
    v50.i8[0] = *(v48 + v50.u32[0]);
    v49.i8[0] = *(v48 + v50.u32[1]);
    v46.i8[0] = *(v52 + v51);
    v37.i8[0] = *(v52 + v50.u32[1]);
    v53 = vsub_f32(_D5, v38);
    v38.f32[0] = (((vmuls_lane_f32(v53.f32[0], v38, 1) * v49.u32[0]) + (v50.u32[0] * vmuls_lane_f32(v53.f32[0], v53, 1))) + (v46.u32[0] * vmuls_lane_f32(v38.f32[0], v53, 1))) + (v37.u32[0] * vmuls_lane_f32(v38.f32[0], v38, 1));
    v54 = vdupq_lane_s32(v38, 0);
    v54.i32[3] = 1132396544;
    v33.i64[0] = vmlaq_n_f32(v33, vsubq_f32(v54, v33), v6).u64[0];
  }

  return *v33.i64;
}

double MetalEmulation::sampleTexture_normalized_repeat_linear_8Unorm4_float4(float32x2_t *a1, float32x2_t a2, double a3, double a4, double a5, double a6, double a7, uint8x8_t a8)
{
  v8 = vmla_f32(0xBF000000BF000000, vsub_f32(a2, vrndm_f32(a2)), a1[13]);
  v9 = vrndm_f32(v8);
  v10 = vsub_f32(v8, v9);
  v11 = vcvt_s32_f32(v9);
  v12 = vadd_s32(v11, 0x100000001);
  v13 = vand_s8(v12, 0xFFFF0000FFFFLL);
  v14 = vceq_s32(vand_s8(v11, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v38) = v14.i16[2];
  v15 = vbic_s8(v11, v14);
  LOWORD(v38) = v14.i16[0];
  v14.i32[0] = a1[12].i32[1] & v38;
  v16.i32[0] = a1[12].u16[0];
  v16.i32[1] = a1[12].u16[1];
  v17 = vorr_s8(v15, *&vmovl_u16(v14));
  v18 = vbic_s8(v12, vceq_s32(v13, v16));
  v19 = a1[26];
  v20 = vshr_n_s32(vshl_n_s32(vzip2_s32(v17, v18), 0x10uLL), 0x10uLL);
  v21 = vshl_n_s32(vzip1_s32(v17, v18), 2uLL);
  v22 = vmul_n_s32(v20, *&a1[4]);
  v23 = *&v19 + (v21.i16[0] & 0xFFFC);
  v24 = v22.u32[1];
  v25 = v22.i32[0];
  v26 = *&v19 + (v21.i16[2] & 0xFFFC);
  v21.i32[0] = *(v23 + v22.u32[0]);
  v27 = vdupq_n_s32(0x4B400000u);
  _Q3 = vdupq_n_s32(0xCB400000);
  v29 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v21)), v27), _Q3);
  v20.i32[0] = *(v23 + v24);
  v30 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v20)), v27), _Q3);
  v13.i32[0] = *(v26 + v25);
  v31 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v13)), v27), _Q3);
  a8.i32[0] = *(v26 + v24);
  v32 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a8)), v27), _Q3);
  __asm { FMOV            V3.2S, #1.0 }

  *_Q3.f32 = vsub_f32(*_Q3.f32, v10);
  *&result = vmulq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v30, vmuls_lane_f32(_Q3.f32[0], v10, 1)), v29, vmuls_lane_f32(_Q3.f32[0], *_Q3.f32, 1)), v31, vmuls_lane_f32(v10.f32[0], *_Q3.f32, 1)), v32, vmuls_lane_f32(v10.f32[0], v10, 1)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_repeat_linear_8Unorm_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, vsub_f32(a2, vrndm_f32(a2)), a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v26) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v26) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v26;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  v10 = vbic_s8(v6, vceq_s32(vand_s8(v6, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  v12 = a1[4];
  v13 = vzip2_s32(v9, v10);
  v14 = *&v11 + v9.u16[0];
  v15 = vmul_n_s32(vshr_n_s32(vshl_n_s32(v13, 0x10uLL), 0x10uLL), v12.i32[0]);
  v16 = v15.i32[0];
  v17 = *&v11 + v10.u16[0];
  v15.i8[0] = *(v14 + v15.u32[0]);
  v10.i8[0] = *(v14 + v15.u32[1]);
  v12.i8[0] = *(v17 + v16);
  v13.i8[0] = *(v17 + v15.u32[1]);
  __asm { FMOV            V5.2S, #1.0 }

  v23 = vsub_f32(_D5, v4);
  v4.f32[0] = (((vmuls_lane_f32(v23.f32[0], v4, 1) * v10.u32[0]) + (v15.u32[0] * vmuls_lane_f32(v23.f32[0], v23, 1))) + (v12.u32[0] * vmuls_lane_f32(v4.f32[0], v23, 1))) + (v13.u32[0] * vmuls_lane_f32(v4.f32[0], v4, 1));
  v24 = vdupq_lane_s32(v4, 0);
  v24.i32[3] = 1132396544;
  *&result = vmulq_f32(v24, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_repeat_trilinear_8Unorm4_float4(uint64_t a1, float32x2_t a2, float a3)
{
  *v3.i64 = _ZN14MetalEmulation12_GLOBAL__N_153sampleTexture_normalized_0to1_repeat_trilinear_float4IDv4_hEEDv4_fRKNS_7TextureEDv2_fNS_5levelE(*(a1 + 8), *(a1 + 56), vsub_f32(a2, vrndm_f32(a2)), a3);
  *&result = vmulq_f32(v3, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_repeat_trilinear_8Unorm_float4(uint64_t a1, float32x2_t a2, float a3)
{
  *&result = vmulq_f32(v3, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_clamp_linear_8Unorm4_float4(uint64_t a1, float32x2_t a2, double a3, double a4, double a5, double a6, uint8x8_t a7, uint8x8_t a8)
{
  v8 = vmla_f32(0xBF000000BF000000, a2, *(a1 + 104));
  v9 = vrndm_f32(v8);
  v10 = vsub_f32(v8, v9);
  v11 = vcvt_s32_f32(v9);
  v12 = *(a1 + 100);
  v13 = vmin_s16(vmax_s16(vuzp1_s16(v11, v10).u32[0], 0).u32[0], v12).u32[0];
  v14 = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(v11, 0x100000001), v10).u32[0], 0).u32[0], v12);
  v15 = *(a1 + 208);
  v16 = *(a1 + 32);
  v17 = v16 * (v13 >> 16);
  v18 = (v14.i32[0] >> 16) * v16;
  v19 = v15 + 4 * (v13 & 0x3FFF);
  v20 = v15 + 4 * (v14.i16[0] & 0x3FFF);
  v14.i32[0] = *(v19 + v17);
  v21 = vdupq_n_s32(0x4B400000u);
  _Q3 = vdupq_n_s32(0xCB400000);
  v23 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v14)), v21), _Q3);
  v24 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*(v19 + v18))), v21), _Q3);
  a7.i32[0] = *(v20 + v17);
  v25 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a7)), v21), _Q3);
  a8.i32[0] = *(v20 + v18);
  v26 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a8)), v21), _Q3);
  __asm { FMOV            V3.2S, #1.0 }

  *_Q3.f32 = vsub_f32(*_Q3.f32, v10);
  *&result = vmulq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v24, vmuls_lane_f32(_Q3.f32[0], v10, 1)), v23, vmuls_lane_f32(_Q3.f32[0], *_Q3.f32, 1)), v25, vmuls_lane_f32(v10.f32[0], *_Q3.f32, 1)), v26, vmuls_lane_f32(v10.f32[0], v10, 1)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_clamp_linear_8Unorm_float4(uint64_t a1, float32x2_t a2)
{
  *&result = vmulq_f32(v2, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::anonymous namespace::sampleTexture_normalized_clamp_linear_float4<unsigned char>(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, *(a1 + 104));
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = *(a1 + 100);
  v7 = vmin_s16(vmax_s16(vuzp1_s16(v5, v4).u32[0], 0).u32[0], v6).u32[0];
  v5.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(v5, 0x100000001), v4).u32[0], 0).u32[0], v6).u32[0];
  v8 = *(a1 + 208);
  v9 = *(a1 + 32);
  v10 = v9 * (v7 >> 16);
  v11 = (v5.i32[0] >> 16) * v9;
  v12 = v8 + v7;
  v13 = v8 + v5.u16[0];
  v5.i8[0] = *(v12 + v10);
  LOBYTE(v6) = *(v12 + v11);
  __asm { FMOV            V5.2S, #1.0 }

  v19 = vsub_f32(_D5, v4);
  v4.f32[0] = (((vmuls_lane_f32(v19.f32[0], v4, 1) * v6) + (v5.u32[0] * vmuls_lane_f32(v19.f32[0], v19, 1))) + (*(v13 + v10) * vmuls_lane_f32(v4.f32[0], v19, 1))) + (*(v13 + v11) * vmuls_lane_f32(v4.f32[0], v4, 1));
  *&result = vdupq_lane_s32(v4, 0).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_clamp_trilinear_8Unorm4_float4(uint64_t a1, float32x2_t a2, float a3)
{
  v4 = fmaxf(a3, 0.0);
  v5 = v4 - truncf(v4);
  v6 = *(a1 + 8);
  v7 = v4;
  if (v6 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = *(a1 + 56);
  v10 = v9 + 224 * v8;
  v11 = vmla_f32(0xBF000000BF000000, a2, *(v10 + 104));
  v12 = vrndm_f32(v11);
  v13 = vcvt_s32_f32(v12);
  v14 = *(v10 + 100);
  v15 = vmax_s16(vuzp1_s16(v13, a2).u32[0], 0).u32[0];
  v16 = vsub_f32(v11, v12);
  v17 = vmin_s16(v15.u32[0], v14).u32[0];
  v18 = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(v13, 0x100000001), a2).u32[0], 0).u32[0], v14);
  v19 = *(v10 + 208);
  LODWORD(v10) = *(v10 + 32);
  v20 = v10 * (v17 >> 16);
  LODWORD(v10) = (v18.i32[0] >> 16) * v10;
  v21 = v19 + 4 * (v17 & 0x3FFF);
  v22 = 4 * (v18.i16[0] & 0x3FFF);
  v18.i32[0] = *(v21 + v20);
  v23 = v19 + v22;
  v24 = vdupq_n_s32(0x4B400000u);
  v25 = vdupq_n_s32(0xCB400000);
  v26 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v18)), v24), v25);
  v27 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*(v21 + v10))), v24), v25);
  v15.i32[0] = *(v23 + v10);
  v28 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*(v23 + v20))), v24), v25);
  v29 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v15)), v24), v25);
  __asm { FMOV            V3.2S, #1.0 }

  v35 = vsub_f32(_D3, v16);
  v36 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v27, vmuls_lane_f32(v35.f32[0], v16, 1)), v26, vmuls_lane_f32(v35.f32[0], v35, 1)), v28, vmuls_lane_f32(v16.f32[0], v35, 1)), v29, vmuls_lane_f32(v16.f32[0], v16, 1));
  if (v5 >= 0.00001 && v6 > v7)
  {
    v37 = v9 + 224 * (v8 + 1);
    v38 = vmla_f32(0xBF000000BF000000, a2, *(v37 + 104));
    v39 = vrndm_f32(v38);
    v40 = vsub_f32(v38, v39);
    v41 = vcvt_s32_f32(v39);
    v42 = *(v37 + 100);
    v38.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(v41, v40).u32[0], 0).u32[0], v42).u32[0];
    v43.i32[1] = 1;
    v44 = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(v41, 0x100000001), v40).u32[0], 0).u32[0], v42);
    v45 = *(v37 + 208);
    LODWORD(v37) = *(v37 + 32);
    v46 = v37 * (v38.i32[0] >> 16);
    LODWORD(v37) = (v44.i32[0] >> 16) * v37;
    v47 = v45 + 4 * (v38.i16[0] & 0x3FFF);
    v48 = v45 + 4 * (v44.i16[0] & 0x3FFF);
    v44.i32[0] = *(v47 + v46);
    v49 = vdupq_n_s32(0x4B400000u);
    v50 = vdupq_n_s32(0xCB400000);
    v43.i32[0] = *(v48 + v46);
    v3.i32[0] = *(v48 + v37);
    v51 = vsub_f32(_D3, v40);
    v36 = vmlaq_n_f32(v36, vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*(v47 + v37))), v49), v50), vmuls_lane_f32(v51.f32[0], v40, 1)), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v44)), v49), v50), vmuls_lane_f32(v51.f32[0], v51, 1)), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v43)), v49), v50), vmuls_lane_f32(v40.f32[0], v51, 1)), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v3)), v49), v50), vmuls_lane_f32(v40.f32[0], v40, 1)), v36), v5);
  }

  *&result = vmulq_f32(v36, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_clamp_trilinear_8Unorm_float4(uint64_t a1, float32x2_t a2, float a3)
{
  v4 = fmaxf(a3, 0.0);
  v15 = v4 - truncf(v4);
  v5 = v4;
  v6 = *(a1 + 8);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = *(a1 + 56);
  v10 = v9;
  if (v15 >= 0.00001 && v6 > v5)
  {
    v14 = v9;
    v10 = vmlaq_n_f32(v14, vsubq_f32(v12, v14), v15);
  }

  *&result = vmulq_f32(v10, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleCube_linear_8Unorm4_float4(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  *v5.i64 = _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_hEEDv4_fRKNS_10TextureMipEDv3_f(a1, a2, a3, a4, a5);
  *&result = vmulq_f32(v5, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_hEEDv4_fRKNS_10TextureMipEDv3_f(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  v68 = a2;
  v67 = 0;
  v12.n128_u64[0] = v11;
  *v13.i8 = vcgt_f32(*(a1 + 64), v11);
  v13.u64[1] = vcgt_f32(v12.n128_u64[0], *(a1 + 80));
  if ((vmaxvq_u32(v13) & 0x80000000) != 0)
  {
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    v6.n128_u64[0] = *(a1 + 120);
    v40 = 0uLL;
    v41 = *(a1 + 32);
    v42 = vmovl_u16(*(&v64 + 8));
    HIWORD(v63) = v42.i16[2];
    LOWORD(v63) = v42.i16[0];
    v43 = 4 * v42.u16[0];
    v44 = vmovl_u16(*&v65);
    HIWORD(v62) = v44.i16[2];
    LOWORD(v62) = v44.i16[0];
    v45 = 4 * v44.u16[0];
    v46.i32[1] = HIDWORD(v65);
    v47 = vmovl_u16(*(&v65 + 8));
    HIWORD(v61) = v47.i16[2];
    LOWORD(v61) = v47.i16[0];
    v48 = *(a1 + 208);
    v46.i32[0] = *(v48 + HIDWORD(v41) * WORD6(v64) + v41 * HIWORD(v63) + v43);
    v49 = 4 * v47.u16[0];
    v50 = vmovl_u8(v46).u64[0];
    v46.i32[0] = *(v48 + HIDWORD(v41) * WORD2(v65) + v41 * HIWORD(v62) + v45);
    v51 = vmovl_u8(v46).u64[0];
    v46.i32[0] = *(v48 + HIDWORD(v41) * WORD6(v65) + v41 * HIWORD(v61) + v49);
    v52 = vmovl_u8(v46).u64[0];
    if (*v66.i32 != 0.0)
    {
      v53 = vmovl_u16(*&v64);
      HIWORD(v60) = v53.i16[2];
      LOWORD(v60) = v53.i16[0];
      v53.i32[0] = *(v48 + HIDWORD(v41) * WORD2(v64) + v41 * HIWORD(v60) + 4 * v53.u16[0]);
      v40 = vmulq_n_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*v53.i8)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)), *v66.i32);
    }

    v54 = vdupq_n_s32(0x4B400000u);
    v55 = vdupq_n_s32(0xCB400000);
    v56 = vaddq_f32(vorrq_s8(vmovl_u16(v52), v54), v55);
    v57 = vaddq_f32(vorrq_s8(vmovl_u16(v51), v54), v55);
    v58 = vaddq_f32(vorrq_s8(vmovl_u16(v50), v54), v55);
    v54.i64[0] = 0;
    v59 = vandq_s8(vmulq_lane_f32(v58, *v66.i8, 1), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(vdupq_lane_s32(*v66.i8, 1), v54)), 0));
    *v54.f32 = vceqz_f32(*&vextq_s8(v66, v66, 8uLL));
    *&result = vaddq_f32(vbicq_s8(vmulq_laneq_f32(v56, v66, 3), vmovl_s16(vdup_lane_s16(*v54.f32, 2))), vaddq_f32(vbicq_s8(vmulq_laneq_f32(v57, v66, 2), vmovl_s16(vdup_lane_s16(*v54.f32, 0))), vaddq_f32(v59, v40))).u64[0];
  }

  else
  {
    v14 = vmla_f32(0xBF000000BF000000, v12.n128_u64[0], *(a1 + 104));
    v15 = vrndm_f32(v14);
    v16 = vsub_f32(v14, v15);
    v17 = vcvt_s32_f32(v15);
    v18 = *(a1 + 100);
    v19 = vmin_s16(vmax_s16(vuzp1_s16(v17, v17).u32[0], 0).u32[0], v18).u32[0];
    v20 = vadd_s32(v17, 0x100000001);
    v21 = vmin_s16(vmax_s16(vuzp1_s16(v20, v20).u32[0], 0).u32[0], v18);
    v22 = *(a1 + 32);
    v23 = *(a1 + 208) + *(a1 + 36) * v67;
    v24 = v22 * (v19 >> 16);
    v25 = v22 * (v21.i32[0] >> 16);
    v26 = v23 + 4 * (v19 & 0x3FFF);
    v27 = v23 + 4 * (v21.i16[0] & 0x3FFF);
    v21.i32[0] = *(v26 + v24);
    v28 = vdupq_n_s32(0x4B400000u);
    v29 = vorrq_s8(vmovl_u16(*&vmovl_u8(v21)), v28);
    _Q3 = vdupq_n_s32(0xCB400000);
    v31 = vaddq_f32(v29, _Q3);
    v29.i32[0] = *(v26 + v25);
    v32 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*v29.f32)), v28), _Q3);
    v9.i32[0] = *(v27 + v24);
    v33 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*v9.i8)), v28), _Q3);
    v10.i32[0] = *(v27 + v25);
    v34 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*v10.i8)), v28), _Q3);
    __asm { FMOV            V3.2S, #1.0 }

    *_Q3.f32 = vsub_f32(*_Q3.f32, v16);
    *&result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v32, vmuls_lane_f32(_Q3.f32[0], v16, 1)), v31, vmuls_lane_f32(_Q3.f32[0], *_Q3.f32, 1)), v33, vmuls_lane_f32(v16.f32[0], *_Q3.f32, 1)), v34, vmuls_lane_f32(v16.f32[0], v16, 1)).u64[0];
  }

  return result;
}

double MetalEmulation::sampleCube_linear_8Unorm_float4(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  *&result = vmulq_f32(v5, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::anonymous namespace::sampleCube_linear_float4<unsigned char>(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  v60 = a2;
  v59 = 0;
  v12.n128_u64[0] = v11;
  *v13.i8 = vcgt_f32(*(a1 + 64), v11);
  v13.u64[1] = vcgt_f32(v12.n128_u64[0], *(a1 + 80));
  if ((vmaxvq_u32(v13) & 0x80000000) != 0)
  {
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    v6.n128_u64[0] = *(a1 + 120);
    v34 = *(a1 + 32);
    v35 = *(a1 + 36);
    v36 = vmovl_u16(*&v56);
    v37 = v35 * WORD2(v56) + v34 * v36.u16[2];
    v38 = v36.u16[0];
    v39 = vmovl_u16(*(&v56 + 8));
    v40 = v35 * WORD6(v56) + v34 * v39.u16[2];
    v41 = v39.u16[0];
    v42 = vmovl_u16(*&v57);
    v43 = v35 * WORD2(v57) + v34 * v42.u16[2];
    v44 = v42.u16[0];
    v33.n128_u64[0] = *(&v57 + 1);
    v42.i64[0] = vmovl_u16(*(&v57 + 8)).u64[0];
    v45 = v35 * WORD6(v57) + v34 * v42.u16[2];
    v46 = v42.u16[0];
    v47 = *(a1 + 208);
    v33.n128_u8[0] = *(v47 + v37 + v38);
    v33.n128_f32[0] = v33.n128_u32[0];
    v42.i8[0] = *(v47 + v40 + v41);
    *v42.i32 = v42.u32[0];
    LOBYTE(v48) = *(v47 + v43 + v44);
    *v49.i32 = v48;
    v50.i64[0] = 0;
    v51 = vandq_s8(vdupq_lane_s32(*&vmulq_f32(v33, v58), 0), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v58, v50)), 0));
    v52 = vandq_s8(vmulq_lane_f32(vdupq_lane_s32(*v42.i8, 0), *v58.f32, 1), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(vdupq_lane_s32(*v58.f32, 1), v50)), 0));
    v53 = vceqq_f32(vdupq_laneq_s32(v58, 2), v50);
    v54 = vdupq_laneq_s32(v58, 3);
    v55 = vceqq_f32(v54, v50);
    v54.i8[0] = *(v47 + v45 + v46);
    v54.f32[0] = v54.u32[0];
    *&result = vaddq_f32(vandq_s8(vmulq_laneq_f32(vdupq_lane_s32(*v54.f32, 0), v58, 3), vdupq_lane_s32(*&vmvnq_s8(v55), 0)), vaddq_f32(vandq_s8(vmulq_laneq_f32(vdupq_lane_s32(v49, 0), v58, 2), vdupq_lane_s32(*&vmvnq_s8(v53), 0)), vaddq_f32(v51, v52))).u64[0];
  }

  else
  {
    v14 = vmla_f32(0xBF000000BF000000, v12.n128_u64[0], *(a1 + 104));
    v15 = vrndm_f32(v14);
    v16 = vsub_f32(v14, v15);
    v17 = vcvt_s32_f32(v15);
    v18 = *(a1 + 100);
    v19 = vmin_s16(vmax_s16(vuzp1_s16(v17, v16).u32[0], 0).u32[0], v18).u32[0];
    v17.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(v17, 0x100000001), v16).u32[0], 0).u32[0], v18).u32[0];
    v20 = *(a1 + 32);
    v21 = *(a1 + 208) + *(a1 + 36) * v59;
    v22 = v20 * (v19 >> 16);
    v23 = v20 * (v17.i32[0] >> 16);
    v24 = v21 + v19;
    v25 = v21 + v17.u16[0];
    v17.i8[0] = *(v24 + v22);
    LOBYTE(v18) = *(v24 + v23);
    __asm { FMOV            V5.2S, #1.0 }

    v31 = vsub_f32(_D5, v16);
    v16.f32[0] = (((vmuls_lane_f32(v31.f32[0], v16, 1) * v18) + (v17.u32[0] * vmuls_lane_f32(v31.f32[0], v31, 1))) + (*(v25 + v22) * vmuls_lane_f32(v16.f32[0], v31, 1))) + (*(v25 + v23) * vmuls_lane_f32(v16.f32[0], v16, 1));
    *&result = vdupq_lane_s32(v16, 0).u64[0];
  }

  return result;
}

double MetalEmulation::sampleCube_trilinear_8Unorm4_float4(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  HIDWORD(v5) = 0;
  *&v5 = fmaxf(*&a3, 0.0);
  *&a3 = *&v5 - truncf(*&v5);
  v19 = a3;
  v6 = *&v5;
  v7 = *(a1 + 8);
  if (v7 >= *&v5)
  {
    v8 = *&v5;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = *(a1 + 56);
  *v10.i64 = _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_hEEDv4_fRKNS_10TextureMipEDv3_f(v9 + 224 * v8, a2, a3, v5, a5);
  v12 = v10;
  if (*&v19 >= 0.00001 && v7 > v6)
  {
    v14 = a2;
    v18 = v12;
    *v15.i64 = _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_hEEDv4_fRKNS_10TextureMipEDv3_f(v9 + 224 * (v8 + 1), v14, v19, *v12.i64, v11);
    v12 = vmlaq_n_f32(v18, vsubq_f32(v15, v18), *&v19);
  }

  *&result = vmulq_f32(v12, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleCube_trilinear_8Unorm_float4(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  HIDWORD(v5) = 0;
  *&v5 = fmaxf(*&a3, 0.0);
  *&a3 = *&v5 - truncf(*&v5);
  v19 = a3;
  v6 = *&v5;
  v7 = *(a1 + 8);
  if (v7 >= *&v5)
  {
    v8 = *&v5;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = *(a1 + 56);
  v12 = v10;
  if (*&v19 >= 0.00001 && v7 > v6)
  {
    v14 = a2;
    v18 = v12;
    v12 = vmlaq_n_f32(v18, vsubq_f32(v15, v18), *&v19);
  }

  *&result = vmulq_f32(v12, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::readPixel_8Unorm4_float4(uint64_t a1, unsigned int a2, uint8x8_t a3)
{
  a3.i32[0] = *(*(a1 + 208) + 4 * a2 + *(a1 + 32) * HIWORD(a2));
  *&result = vmulq_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a3)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::readPixel_8Unorm_float4(uint64_t a1, unsigned int a2, double a3)
{
  LOBYTE(a3) = *(*(a1 + 208) + *(a1 + 32) * HIWORD(a2) + a2);
  *&a3 = LODWORD(a3) * 0.0039216;
  *&result = vdupq_lane_s32(*&a3, 0).u64[0];
  return result;
}

double MetalEmulation::readPixelArray_8Unorm4_float4(uint64_t a1, unsigned int a2, int a3, uint8x8_t a4)
{
  a4.i32[0] = *(*(a1 + 208) + (*(a1 + 36) * a3) + 4 * a2 + *(a1 + 32) * HIWORD(a2));
  *&result = vmulq_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a4)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::readPixelArray_8Unorm_float4(uint64_t a1, unsigned int a2, int a3, double a4)
{
  LOBYTE(a4) = *(*(a1 + 208) + (*(a1 + 36) * a3) + *(a1 + 32) * HIWORD(a2) + a2);
  *&a4 = LODWORD(a4) * 0.0039216;
  *&result = vdupq_lane_s32(*&a4, 0).u64[0];
  return result;
}

int8x8_t MetalEmulation::writePixel_8Unorm4(uint64_t a1, unsigned int a2, float32x4_t a3)
{
  v3 = vdupq_n_s32(0x437F0000u);
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v5 = vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v4, v3, a3), 0), v3)));
  result = vuzp1_s8(v5, v5);
  *(*(a1 + 176) + *(a1 + 32) * HIWORD(a2) + 4 * a2) = result.i32[0];
  return result;
}

int8x8_t MetalEmulation::writePixel_8Unorm(uint64_t a1, unsigned int a2, float a3)
{
  v3 = (a3 * 255.0) + 0.5;
  v4 = 0.0;
  if (v3 >= 0.0)
  {
    v4 = v3;
    if (v3 > 255.0)
    {
      v4 = 255.0;
    }
  }

  result = vdup_n_s8(v4);
  *(*(a1 + 176) + *(a1 + 32) * HIWORD(a2) + a2) = result.i32[0];
  return result;
}

int8x8_t MetalEmulation::writePixelArray_8Unorm4(uint64_t a1, unsigned int a2, int a3, float32x4_t a4)
{
  v4 = vdupq_n_s32(0x437F0000u);
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6 = vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v5, v4, a4), 0), v4)));
  result = vuzp1_s8(v6, v6);
  *(*(a1 + 176) + *(a1 + 36) * a3 + *(a1 + 32) * HIWORD(a2) + 4 * a2) = result.i32[0];
  return result;
}

int8x8_t MetalEmulation::writePixelArray_8Unorm(uint64_t a1, unsigned int a2, int a3, float a4)
{
  v4 = (a4 * 255.0) + 0.5;
  v5 = 0.0;
  if (v4 >= 0.0)
  {
    v5 = v4;
    if (v4 > 255.0)
    {
      v5 = 255.0;
    }
  }

  result = vdup_n_s8(v5);
  *(*(a1 + 176) + *(a1 + 36) * a3 + *(a1 + 32) * HIWORD(a2) + a2) = result.i32[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_half4_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v21) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v21) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v21;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  v10 = vbic_s8(v6, vceq_s32(vand_s8(v6, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  v12 = vmul_n_s32(vshr_n_s32(vshl_n_s32(vzip2_s32(v9, v10), 0x10uLL), 0x10uLL), *&a1[4]);
  v13 = vshl_n_s32(vzip1_s32(v9, v10), 3uLL);
  __asm { FMOV            V5.2S, #1.0 }

  v19 = vsub_f32(_D5, v4);
  *&result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*(*&v11 + (v13.i16[0] & 0xFFF8) + v12.u32[1])), vmuls_lane_f32(v19.f32[0], v4, 1)), vcvtq_f32_f16(*(*&v11 + (v13.i16[0] & 0xFFF8) + v12.u32[0])), vmuls_lane_f32(v19.f32[0], v19, 1)), vcvtq_f32_f16(*(*&v11 + (v13.i16[2] & 0xFFF8) + v12.u32[0])), vmuls_lane_f32(v4.f32[0], v19, 1)), vcvtq_f32_f16(*(*&v11 + (v13.i16[2] & 0xFFF8) + v12.u32[1])), vmuls_lane_f32(v4.f32[0], v4, 1)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_half_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  _D4 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v24) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v24) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v24;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  _D2 = vbic_s8(_D4, vceq_s32(vand_s8(_D4, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  _D3 = vmul_n_s32(vshr_n_s32(vshl_n_s32(vzip2_s32(v9, _D2), 0x10uLL), 0x10uLL), *&a1[4]);
  v13 = vzip1_s32(v9, _D2);
  _D1 = vadd_s32(v13, v13);
  v15 = *&v11 + (_D1.i16[0] & 0xFFFE);
  v16 = *&v11 + (_D1.i16[2] & 0xFFFE);
  _D1.i16[0] = *(v15 + _D3.u32[0]);
  _D2.i16[0] = *(v15 + _D3.u32[1]);
  __asm
  {
    FCVT            S1, H1
    FCVT            S2, H2
  }

  _D3.i16[0] = *(v16 + _D3.u32[0]);
  _D4.i16[0] = *(v16 + _D3.u32[1]);
  __asm
  {
    FCVT            S3, H3
    FCVT            S4, H4
    FMOV            V5.2S, #1.0
  }

  v22 = vsub_f32(_D5, v4);
  v4.f32[0] = (((vmuls_lane_f32(v22.f32[0], v4, 1) * *_D2.i32) + (*_D1.i32 * vmuls_lane_f32(v22.f32[0], v22, 1))) + (*_D3.i32 * vmuls_lane_f32(v4.f32[0], v22, 1))) + (*_D4.i32 * vmuls_lane_f32(v4.f32[0], v4, 1));
  *&result = vdupq_lane_s32(v4, 0).u64[0];
  return result;
}

double _ZN14MetalEmulation12_GLOBAL__N_153sampleTexture_normalized_0to1_repeat_trilinear_float4IDv4_DF16_EEDv4_fRKNS_7TextureEDv2_fNS_5levelE(unsigned int a1, uint64_t a2, float32x2_t a3, float a4)
{
  v5 = fmaxf(a4, 0.0);
  v6 = v5 - truncf(v5);
  v7 = v5;
  if (a1 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = a1;
  }

  v9 = (a2 + 224 * v8);
  v10 = vmla_f32(0xBF000000BF000000, a3, v9[13]);
  v11 = vrndm_f32(v10);
  v12 = vsub_f32(v10, v11);
  v13 = vcvt_s32_f32(v11);
  v14 = vadd_s32(v13, 0x100000001);
  v15 = vceq_s32(vand_s8(v13, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v47) = v15.i16[2];
  v16 = vbic_s8(v13, v15);
  LOWORD(v47) = v15.i16[0];
  v15.i32[0] = v9[12].i32[1] & v47;
  v17 = vorr_s8(v16, *&vmovl_u16(v15));
  v15.i32[0] = v9[12].u16[0];
  v15.i32[1] = v9[12].u16[1];
  v18 = vbic_s8(v14, vceq_s32(vand_s8(v14, 0xFFFF0000FFFFLL), v15));
  v19 = v9[26];
  v9 += 4;
  v20 = vld1_dup_f32(v9);
  v21 = vmul_s32(v20, vshr_n_s32(vshl_n_s32(vzip2_s32(v17, v18), 0x10uLL), 0x10uLL));
  v22 = vshl_n_s32(vzip1_s32(v17, v18), 3uLL);
  __asm { FMOV            V6.2S, #1.0 }

  v27 = vsub_f32(_D6, v12);
  v28 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*(*&v19 + (v22.i16[0] & 0xFFF8) + v21.u32[1])), vmuls_lane_f32(v27.f32[0], v12, 1)), vcvtq_f32_f16(*(*&v19 + (v22.i16[0] & 0xFFF8) + v21.u32[0])), vmuls_lane_f32(v27.f32[0], v27, 1)), vcvtq_f32_f16(*(*&v19 + (v22.i16[2] & 0xFFF8) + v21.u32[0])), vmuls_lane_f32(v12.f32[0], v27, 1)), vcvtq_f32_f16(*(*&v19 + (v22.i16[2] & 0xFFF8) + v21.u32[1])), vmuls_lane_f32(v12.f32[0], v12, 1));
  if (v6 >= 0.00001 && v7 < a1)
  {
    v30 = (a2 + 224 * (v8 + 1));
    v31 = vmla_f32(0xBF000000BF000000, a3, v30[13]);
    v32 = vrndm_f32(v31);
    v33 = vsub_f32(v31, v32);
    v34 = vcvt_s32_f32(v32);
    v35 = vadd_s32(v34, 0x100000001);
    v36 = vceq_s32(vand_s8(v34, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
    HIWORD(v46) = v36.i16[2];
    v37 = vbic_s8(v34, v36);
    LOWORD(v46) = v36.i16[0];
    v36.i32[0] = v30[12].i32[1] & v46;
    v38 = vorr_s8(v37, *&vmovl_u16(v36));
    v36.i32[0] = v30[12].u16[0];
    v36.i32[1] = v30[12].u16[1];
    v39 = vbic_s8(v35, vceq_s32(vand_s8(v35, 0xFFFF0000FFFFLL), v36));
    v40 = v30[26];
    v30 += 4;
    v41 = vld1_dup_f32(v30);
    v42 = vmul_s32(v41, vshr_n_s32(vshl_n_s32(vzip2_s32(v38, v39), 0x10uLL), 0x10uLL));
    v43 = vshl_n_s32(vzip1_s32(v38, v39), 3uLL);
    v44 = vsub_f32(_D6, v33);
    v28.i64[0] = vmlaq_n_f32(v28, vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*(*&v40 + (v43.i16[0] & 0xFFF8) + v42.u32[1])), vmuls_lane_f32(v44.f32[0], v33, 1)), vcvtq_f32_f16(*(*&v40 + (v43.i16[0] & 0xFFF8) + v42.u32[0])), vmuls_lane_f32(v44.f32[0], v44, 1)), vcvtq_f32_f16(*(*&v40 + (v43.i16[2] & 0xFFF8) + v42.u32[0])), vmuls_lane_f32(v33.f32[0], v44, 1)), vcvtq_f32_f16(*(*&v40 + (v43.i16[2] & 0xFFF8) + v42.u32[1])), vmuls_lane_f32(v33.f32[0], v33, 1)), v28), v6).u64[0];
  }

  return *v28.i64;
}

double MetalEmulation::anonymous namespace::sampleTexture_normalized_0to1_repeat_trilinear_float4<half>(unsigned int a1, uint64_t a2, float32x2_t a3, float a4)
{
  v4 = fmaxf(a4, 0.0);
  v5 = v4 - truncf(v4);
  v6 = v4;
  if (a1 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = a1;
  }

  v8 = (a2 + 224 * v7);
  v9 = vmla_f32(0xBF000000BF000000, a3, v8[13]);
  v10 = vrndm_f32(v9);
  v11 = vsub_f32(v9, v10);
  v12 = vcvt_s32_f32(v10);
  v13 = vadd_s32(v12, 0x100000001);
  v14 = vceq_s32(vand_s8(v12, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v55) = v14.i16[2];
  v15 = vbic_s8(v12, v14);
  LOWORD(v55) = v14.i16[0];
  v14.i32[0] = v8[12].i32[1] & v55;
  v16 = vorr_s8(v15, *&vmovl_u16(v14));
  v14.i32[0] = v8[12].u16[0];
  v14.i32[1] = v8[12].u16[1];
  _D4 = vbic_s8(v13, vceq_s32(vand_s8(v13, 0xFFFF0000FFFFLL), v14));
  v18 = v8[26];
  v8 += 4;
  _D6 = vld1_dup_f32(v8);
  _D5 = vmul_s32(_D6, vshr_n_s32(vshl_n_s32(vzip2_s32(v16, _D4), 0x10uLL), 0x10uLL));
  v21 = vzip1_s32(v16, _D4);
  _D3 = vadd_s32(v21, v21);
  v23 = *&v18 + (_D3.i16[0] & 0xFFFE);
  v24 = _D5.i32[0];
  v25 = *&v18 + (_D3.i16[2] & 0xFFFE);
  _D3.i16[0] = *(v23 + _D5.u32[0]);
  __asm { FCVT            S4, H3 }

  _D3.i16[0] = *(v23 + _D5.u32[1]);
  __asm { FCVT            S5, H3 }

  _D3.i16[0] = *(v25 + v24);
  __asm { FCVT            S6, H3 }

  _D3.i16[0] = *(v25 + _D5.u32[1]);
  __asm
  {
    FCVT            S7, H3
    FMOV            V3.2S, #1.0
  }

  v32 = vsub_f32(_D3, v11);
  v11.f32[0] = (((vmuls_lane_f32(v32.f32[0], v11, 1) * *_D5.i32) + (*_D4.i32 * vmuls_lane_f32(v32.f32[0], v32, 1))) + (*_D6.i32 * vmuls_lane_f32(v11.f32[0], v32, 1))) + (_S7 * vmuls_lane_f32(v11.f32[0], v11, 1));
  v33 = vdupq_lane_s32(v11, 0);
  v33.i32[3] = 1.0;
  if (v5 >= 0.00001 && v6 < a1)
  {
    v34 = (a2 + 224 * (v7 + 1));
    v35 = vmla_f32(0xBF000000BF000000, a3, v34[13]);
    v36 = vrndm_f32(v35);
    v37 = vsub_f32(v35, v36);
    v38 = vcvt_s32_f32(v36);
    v39 = vadd_s32(v38, 0x100000001);
    v40 = vceq_s32(vand_s8(v38, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
    HIWORD(v54) = v40.i16[2];
    v41 = vbic_s8(v38, v40);
    LOWORD(v54) = v40.i16[0];
    v40.i32[0] = v34[12].i32[1] & v54;
    v42 = vorr_s8(v41, *&vmovl_u16(v40));
    v40.i32[0] = v34[12].u16[0];
    v40.i32[1] = v34[12].u16[1];
    _D5 = vbic_s8(v39, vceq_s32(vand_s8(v39, 0xFFFF0000FFFFLL), v40));
    v44 = v34[26];
    v34 += 4;
    _D7 = vld1_dup_f32(v34);
    _D6 = vmul_s32(_D7, vshr_n_s32(vshl_n_s32(vzip2_s32(v42, _D5), 0x10uLL), 0x10uLL));
    v47 = vzip1_s32(v42, _D5);
    _D4 = vadd_s32(v47, v47);
    v49 = *&v44 + (_D4.i16[0] & 0xFFFE);
    v50 = *&v44 + (_D4.i16[2] & 0xFFFE);
    _D4.i16[0] = *(v49 + _D6.u32[0]);
    __asm { FCVT            S4, H4 }

    _D5.i16[0] = *(v49 + _D6.u32[1]);
    __asm { FCVT            S5, H5 }

    _D6.i16[0] = *(v50 + _D6.u32[0]);
    __asm { FCVT            S6, H6 }

    _D7.i16[0] = *(v50 + _D6.u32[1]);
    __asm { FCVT            S7, H7 }

    v51 = vsub_f32(_D3, v37);
    v37.f32[0] = (((vmuls_lane_f32(v51.f32[0], v37, 1) * *_D5.i32) + (*_D4.i32 * vmuls_lane_f32(v51.f32[0], v51, 1))) + (*_D6.i32 * vmuls_lane_f32(v37.f32[0], v51, 1))) + (*_D7.i32 * vmuls_lane_f32(v37.f32[0], v37, 1));
    v52 = vdupq_lane_s32(v37, 0);
    v52.i32[3] = 1.0;
    v33.i64[0] = vmlaq_n_f32(v33, vsubq_f32(v52, v33), v5).u64[0];
  }

  return *v33.i64;
}

double MetalEmulation::sampleTexture_normalized_repeat_linear_half4_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, vsub_f32(a2, vrndm_f32(a2)), a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v21) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v21) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v21;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  v10 = vbic_s8(v6, vceq_s32(vand_s8(v6, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  v12 = vmul_n_s32(vshr_n_s32(vshl_n_s32(vzip2_s32(v9, v10), 0x10uLL), 0x10uLL), *&a1[4]);
  v13 = vshl_n_s32(vzip1_s32(v9, v10), 3uLL);
  __asm { FMOV            V5.2S, #1.0 }

  v19 = vsub_f32(_D5, v4);
  *&result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*(*&v11 + (v13.i16[0] & 0xFFF8) + v12.u32[1])), vmuls_lane_f32(v19.f32[0], v4, 1)), vcvtq_f32_f16(*(*&v11 + (v13.i16[0] & 0xFFF8) + v12.u32[0])), vmuls_lane_f32(v19.f32[0], v19, 1)), vcvtq_f32_f16(*(*&v11 + (v13.i16[2] & 0xFFF8) + v12.u32[0])), vmuls_lane_f32(v4.f32[0], v19, 1)), vcvtq_f32_f16(*(*&v11 + (v13.i16[2] & 0xFFF8) + v12.u32[1])), vmuls_lane_f32(v4.f32[0], v4, 1)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_repeat_linear_half_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, vsub_f32(a2, vrndm_f32(a2)), a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  _D4 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v24) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v24) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v24;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  _D2 = vbic_s8(_D4, vceq_s32(vand_s8(_D4, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  _D3 = vmul_n_s32(vshr_n_s32(vshl_n_s32(vzip2_s32(v9, _D2), 0x10uLL), 0x10uLL), *&a1[4]);
  v13 = vzip1_s32(v9, _D2);
  _D1 = vadd_s32(v13, v13);
  v15 = *&v11 + (_D1.i16[0] & 0xFFFE);
  v16 = *&v11 + (_D1.i16[2] & 0xFFFE);
  _D1.i16[0] = *(v15 + _D3.u32[0]);
  _D2.i16[0] = *(v15 + _D3.u32[1]);
  __asm
  {
    FCVT            S1, H1
    FCVT            S2, H2
  }

  _D3.i16[0] = *(v16 + _D3.u32[0]);
  _D4.i16[0] = *(v16 + _D3.u32[1]);
  __asm
  {
    FCVT            S3, H3
    FCVT            S4, H4
    FMOV            V5.2S, #1.0
  }

  v22 = vsub_f32(_D5, v4);
  v4.f32[0] = (((vmuls_lane_f32(v22.f32[0], v4, 1) * *_D2.i32) + (*_D1.i32 * vmuls_lane_f32(v22.f32[0], v22, 1))) + (*_D3.i32 * vmuls_lane_f32(v4.f32[0], v22, 1))) + (*_D4.i32 * vmuls_lane_f32(v4.f32[0], v4, 1));
  *&result = vdupq_lane_s32(v4, 0).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_clamp_linear_half4_float4(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, *(a1 + 104));
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = *(a1 + 100);
  v2.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(v5, v5).u32[0], 0).u32[0], v6).u32[0];
  v7 = vadd_s32(v5, 0x100000001);
  v7.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(v7, v7).u32[0], 0).u32[0], v6).u32[0];
  v8 = *(a1 + 208);
  v9 = *(a1 + 32);
  __asm { FMOV            V5.2S, #1.0 }

  v15 = vsub_f32(_D5, v4);
  *&result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*(v8 + 8 * (v2.i16[0] & 0x1FFF) + ((v7.i32[0] >> 16) * v9))), vmuls_lane_f32(v15.f32[0], v4, 1)), vcvtq_f32_f16(*(v8 + 8 * (v2.i16[0] & 0x1FFF) + (v9 * (v2.i32[0] >> 16)))), vmuls_lane_f32(v15.f32[0], v15, 1)), vcvtq_f32_f16(*(v8 + 8 * (v7.i16[0] & 0x1FFF) + (v9 * (v2.i32[0] >> 16)))), vmuls_lane_f32(v4.f32[0], v15, 1)), vcvtq_f32_f16(*(v8 + 8 * (v7.i16[0] & 0x1FFF) + ((v7.i32[0] >> 16) * v9))), vmuls_lane_f32(v4.f32[0], v4, 1)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_clamp_linear_half_float4(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, *(a1 + 104));
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  _D1 = vcvt_s32_f32(v3);
  _D2 = *(a1 + 100);
  _S3 = vmin_s16(vmax_s16(vuzp1_s16(_D1, v4).u32[0], 0).u32[0], _D2).u32[0];
  _D1.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(_D1, 0x100000001), v4).u32[0], 0).u32[0], _D2).u32[0];
  v8 = *(a1 + 208);
  v9 = *(a1 + 32);
  v10 = v9 * (_S3 >> 16);
  v11 = (_D1.i32[0] >> 16) * v9;
  v12 = v8 + 2 * (_S3 & 0x7FFF);
  v13 = v8 + 2 * (_D1.i16[0] & 0x7FFF);
  _D1.i16[0] = *(v12 + v10);
  LOWORD(_D2) = *(v12 + v11);
  __asm
  {
    FCVT            S1, H1
    FCVT            S2, H2
  }

  LOWORD(_S3) = *(v13 + v10);
  _H4 = *(v13 + v11);
  __asm
  {
    FCVT            S3, H3
    FCVT            S4, H4
    FMOV            V5.2S, #1.0
  }

  v22 = vsub_f32(_D5, v4);
  v4.f32[0] = (((vmuls_lane_f32(v22.f32[0], v4, 1) * *&_D2) + (*_D1.i32 * vmuls_lane_f32(v22.f32[0], v22, 1))) + (_S3 * vmuls_lane_f32(v4.f32[0], v22, 1))) + (_S4 * vmuls_lane_f32(v4.f32[0], v4, 1));
  *&result = vdupq_lane_s32(v4, 0).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_clamp_trilinear_half4_float4(uint64_t a1, float32x2_t a2, float a3)
{
  v4 = fmaxf(a3, 0.0);
  v5 = v4 - truncf(v4);
  v6 = *(a1 + 8);
  v7 = v4;
  if (v6 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = *(a1 + 56);
  v10 = v9 + 224 * v8;
  v11 = vmla_f32(0xBF000000BF000000, a2, *(v10 + 104));
  v12 = vrndm_f32(v11);
  v13 = vsub_f32(v11, v12);
  v14 = vcvt_s32_f32(v12);
  v15 = *(v10 + 100);
  v16 = vmin_s16(vmax_s16(vuzp1_s16(v14, v14).u32[0], 0).u32[0], v15).u32[0];
  v17 = vadd_s32(v14, 0x100000001);
  v17.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(v17, v17).u32[0], 0).u32[0], v15).u32[0];
  v18 = *(v10 + 208);
  LODWORD(v10) = *(v10 + 32);
  __asm { FMOV            V5.2S, #1.0 }

  v24 = vsub_f32(_D5, v13);
  v25 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*(v18 + 8 * (v16 & 0x1FFF) + ((v17.i32[0] >> 16) * v10))), vmuls_lane_f32(v24.f32[0], v13, 1)), vcvtq_f32_f16(*(v18 + 8 * (v16 & 0x1FFF) + (v10 * (v16 >> 16)))), vmuls_lane_f32(v24.f32[0], v24, 1)), vcvtq_f32_f16(*(v18 + 8 * (v17.i16[0] & 0x1FFF) + (v10 * (v16 >> 16)))), vmuls_lane_f32(v13.f32[0], v24, 1)), vcvtq_f32_f16(*(v18 + 8 * (v17.i16[0] & 0x1FFF) + ((v17.i32[0] >> 16) * v10))), vmuls_lane_f32(v13.f32[0], v13, 1));
  if (v5 >= 0.00001 && v6 > v7)
  {
    v27 = v9 + 224 * (v8 + 1);
    v28 = vmla_f32(0xBF000000BF000000, a2, *(v27 + 104));
    v29 = vrndm_f32(v28);
    v30 = vsub_f32(v28, v29);
    v31 = vcvt_s32_f32(v29);
    v32 = *(v27 + 100);
    v29.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(v31, *v25.f32).u32[0], 0).u32[0], v32).u32[0];
    v31.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(v31, 0x100000001), *v25.f32).u32[0], 0).u32[0], v32).u32[0];
    v33 = *(v27 + 208);
    LODWORD(v27) = *(v27 + 32);
    v34 = vsub_f32(_D5, v30);
    v25.i64[0] = vmlaq_n_f32(v25, vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*(v33 + 8 * (v29.i16[0] & 0x1FFF) + ((v31.i32[0] >> 16) * v27))), vmuls_lane_f32(v34.f32[0], v30, 1)), vcvtq_f32_f16(*(v33 + 8 * (v29.i16[0] & 0x1FFF) + (v27 * (v29.i32[0] >> 16)))), vmuls_lane_f32(v34.f32[0], v34, 1)), vcvtq_f32_f16(*(v33 + 8 * (v31.i16[0] & 0x1FFF) + (v27 * (v29.i32[0] >> 16)))), vmuls_lane_f32(v30.f32[0], v34, 1)), vcvtq_f32_f16(*(v33 + 8 * (v31.i16[0] & 0x1FFF) + ((v31.i32[0] >> 16) * v27))), vmuls_lane_f32(v30.f32[0], v30, 1)), v25), v5).u64[0];
  }

  return *v25.i64;
}

double MetalEmulation::sampleTexture_normalized_clamp_trilinear_half_float4(uint64_t a1, float32x2_t a2, float a3)
{
  v3 = fmaxf(a3, 0.0);
  v4 = v3 - truncf(v3);
  v5 = *(a1 + 8);
  v6 = v3;
  if (v5 >= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = *(a1 + 56);
  v9 = v8 + 224 * v7;
  v10 = vmla_f32(0xBF000000BF000000, a2, *(v9 + 104));
  v11 = vrndm_f32(v10);
  _D5 = vcvt_s32_f32(v11);
  _D6 = *(v9 + 100);
  v14 = vsub_f32(v10, v11);
  v15 = vmin_s16(vmax_s16(vuzp1_s16(_D5, a2).u32[0], 0).u32[0], _D6).u32[0];
  _D5.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(_D5, 0x100000001), a2).u32[0], 0).u32[0], _D6).u32[0];
  v16 = *(v9 + 208);
  LODWORD(v9) = *(v9 + 32);
  v17 = v9 * (v15 >> 16);
  LODWORD(v9) = (_D5.i32[0] >> 16) * v9;
  v18 = v16 + 2 * (v15 & 0x7FFF);
  v19 = 2 * (_D5.i16[0] & 0x7FFF);
  _D5.i16[0] = *(v18 + v17);
  v20 = v16 + v19;
  __asm { FCVT            S5, H5 }

  LOWORD(_D6) = *(v18 + v9);
  _H7 = *(v20 + v17);
  __asm
  {
    FCVT            S16, H6
    FCVT            S7, H7
  }

  LOWORD(_D6) = *(v20 + v9);
  __asm
  {
    FCVT            S17, H6
    FMOV            V6.2S, #1.0
  }

  v30 = vsub_f32(_D6, v14);
  v14.f32[0] = (((vmuls_lane_f32(v30.f32[0], v14, 1) * _S16) + (*_D5.i32 * vmuls_lane_f32(v30.f32[0], v30, 1))) + (_S7 * vmuls_lane_f32(v14.f32[0], v30, 1))) + (_S17 * vmuls_lane_f32(v14.f32[0], v14, 1));
  v31 = vdupq_lane_s32(v14, 0);
  v31.i32[3] = 1.0;
  if (v4 >= 0.00001 && v5 > v6)
  {
    v33 = v8 + 224 * (v7 + 1);
    v34 = vmla_f32(0xBF000000BF000000, a2, *(v33 + 104));
    v35 = vrndm_f32(v34);
    v36 = vsub_f32(v34, v35);
    _D3 = vcvt_s32_f32(v35);
    _D7 = *(v33 + 100);
    _S16 = vmin_s16(vmax_s16(vuzp1_s16(_D3, v36).u32[0], 0).u32[0], _D7).u32[0];
    _D3.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(_D3, 0x100000001), v36).u32[0], 0).u32[0], _D7).u32[0];
    v40 = *(v33 + 208);
    LODWORD(v33) = *(v33 + 32);
    v41 = v33 * (_S16 >> 16);
    LODWORD(v33) = (_D3.i32[0] >> 16) * v33;
    v42 = v40 + 2 * (_S16 & 0x7FFF);
    v43 = v40 + 2 * (_D3.i16[0] & 0x7FFF);
    _D3.i16[0] = *(v42 + v41);
    __asm { FCVT            S3, H3 }

    _H4 = *(v42 + v33);
    __asm { FCVT            S4, H4 }

    LOWORD(_D7) = *(v43 + v41);
    __asm { FCVT            S7, H7 }

    LOWORD(_S16) = *(v43 + v33);
    __asm { FCVT            S16, H16 }

    v47 = vsub_f32(_D6, v36);
    v36.f32[0] = (((vmuls_lane_f32(v47.f32[0], v36, 1) * _S4) + (*_D3.i32 * vmuls_lane_f32(v47.f32[0], v47, 1))) + (*&_D7 * vmuls_lane_f32(v36.f32[0], v47, 1))) + (_S16 * vmuls_lane_f32(v36.f32[0], v36, 1));
    v48 = vdupq_lane_s32(v36, 0);
    v48.i32[3] = 1.0;
    v31.i64[0] = vmlaq_n_f32(v31, vsubq_f32(v48, v31), v4).u64[0];
  }

  return *v31.i64;
}

double _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_DF16_EEDv4_fRKNS_10TextureMipEDv3_f(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  v51 = a2;
  v50 = 0;
  v12.n128_u64[0] = v11;
  *v13.i8 = vcgt_f32(*(a1 + 64), v11);
  v13.u64[1] = vcgt_f32(v12.n128_u64[0], *(a1 + 80));
  if ((vmaxvq_u32(v13) & 0x80000000) != 0)
  {
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v6.n128_u64[0] = *(a1 + 120);
    v31 = 0uLL;
    v32 = *(a1 + 32);
    v33 = vmovl_u16(*(&v47 + 8));
    HIWORD(v46) = v33.i16[2];
    LOWORD(v46) = v33.i16[0];
    v34 = 8 * v33.u16[0];
    v35 = vmovl_u16(*&v48);
    HIWORD(v45) = v35.i16[2];
    LOWORD(v45) = v35.i16[0];
    v36 = 8 * v35.u16[0];
    v37 = vmovl_u16(*(&v48 + 8));
    HIWORD(v44) = v37.i16[2];
    LOWORD(v44) = v37.i16[0];
    v38 = *(a1 + 208);
    v39 = *(v38 + HIDWORD(v32) * WORD6(v48) + v32 * HIWORD(v44) + 8 * v37.u16[0]);
    if (*v49.i32 != 0.0)
    {
      v40 = vmovl_u16(*&v47);
      HIWORD(v43) = v40.i16[2];
      LOWORD(v43) = v40.i16[0];
      v30 = vcvtq_f32_f16(*(v38 + HIDWORD(v32) * WORD2(v47) + v32 * HIWORD(v43) + 8 * v40.u16[0]));
      v31 = vmulq_n_f32(v30, *v49.i32);
    }

    v30.i64[0] = 0;
    v41 = vandq_s8(vmulq_lane_f32(vcvtq_f32_f16(*(v38 + HIDWORD(v32) * WORD6(v47) + v32 * HIWORD(v46) + v34)), *v49.i8, 1), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(vdupq_lane_s32(*v49.i8, 1), v30)), 0));
    v42 = vceqz_f32(*&vextq_s8(v49, v49, 8uLL));
    *&result = vaddq_f32(vbicq_s8(vmulq_laneq_f32(vcvtq_f32_f16(v39), v49, 3), vmovl_s16(vdup_lane_s16(v42, 2))), vaddq_f32(vbicq_s8(vmulq_laneq_f32(vcvtq_f32_f16(*(v38 + HIDWORD(v32) * WORD2(v48) + v32 * HIWORD(v45) + v36)), v49, 2), vmovl_s16(vdup_lane_s16(v42, 0))), vaddq_f32(v41, v31))).u64[0];
  }

  else
  {
    v14 = vmla_f32(0xBF000000BF000000, v12.n128_u64[0], *(a1 + 104));
    v15 = vrndm_f32(v14);
    v16 = vsub_f32(v14, v15);
    v17 = vcvt_s32_f32(v15);
    v18 = *(a1 + 100);
    v19 = vmin_s16(vmax_s16(vuzp1_s16(v17, v17).u32[0], 0).u32[0], v18).u32[0];
    v20 = vadd_s32(v17, 0x100000001);
    v20.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(v20, v20).u32[0], 0).u32[0], v18).u32[0];
    v21 = *(a1 + 32);
    v22 = *(a1 + 208) + *(a1 + 36) * v50;
    __asm { FMOV            V5.2S, #1.0 }

    v28 = vsub_f32(_D5, v16);
    *&result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*(v22 + 8 * (v19 & 0x1FFF) + (v21 * (v20.i32[0] >> 16)))), vmuls_lane_f32(v28.f32[0], v16, 1)), vcvtq_f32_f16(*(v22 + 8 * (v19 & 0x1FFF) + (v21 * (v19 >> 16)))), vmuls_lane_f32(v28.f32[0], v28, 1)), vcvtq_f32_f16(*(v22 + 8 * (v20.i16[0] & 0x1FFF) + (v21 * (v19 >> 16)))), vmuls_lane_f32(v16.f32[0], v28, 1)), vcvtq_f32_f16(*(v22 + 8 * (v20.i16[0] & 0x1FFF) + (v21 * (v20.i32[0] >> 16)))), vmuls_lane_f32(v16.f32[0], v16, 1)).u64[0];
  }

  return result;
}

double MetalEmulation::anonymous namespace::sampleCube_linear_float4<half>(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  v67 = a2;
  v66 = 0;
  v12.n128_u64[0] = v11;
  *v13.i8 = vcgt_f32(*(a1 + 64), v11);
  v13.u64[1] = vcgt_f32(v12.n128_u64[0], *(a1 + 80));
  if ((vmaxvq_u32(v13) & 0x80000000) != 0)
  {
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v6.n128_u64[0] = *(a1 + 120);
    v36 = *(a1 + 32);
    v37 = *(a1 + 36);
    v38 = vmovl_u16(*&v63);
    HIWORD(v62) = v38.i16[2];
    LOWORD(v62) = v38.i16[0];
    v39 = v37 * WORD2(v63) + v36 * HIWORD(v62);
    v40 = 2 * v38.u16[0];
    v41 = vmovl_u16(*(&v63 + 8));
    HIWORD(v61) = v41.i16[2];
    LOWORD(v61) = v41.i16[0];
    v42 = v37 * WORD6(v63) + v36 * HIWORD(v61);
    v43 = 2 * v41.u16[0];
    v44 = vmovl_u16(*&v64);
    HIWORD(v60) = v44.i16[2];
    LOWORD(v60) = v44.i16[0];
    v45 = v37 * WORD2(v64) + v36 * HIWORD(v60);
    v46 = 2 * v44.u16[0];
    _Q0.n128_u32[1] = HIDWORD(v64);
    _Q1 = vmovl_u16(*(&v64 + 8));
    HIWORD(v59) = _Q1.i16[2];
    LOWORD(v59) = _Q1.i16[0];
    v48 = v37 * WORD6(v64) + v36 * HIWORD(v59);
    v49 = 2 * _Q1.u16[0];
    v50 = *(a1 + 208);
    _Q0.n128_u16[0] = *(v50 + v39 + v40);
    __asm { FCVT            S0, H0 }

    _Q1.i16[0] = *(v50 + v42 + v43);
    __asm { FCVT            S1, H1 }

    _H2 = *(v50 + v45 + v46);
    __asm { FCVT            S2, H2 }

    v53.i64[0] = 0;
    v54 = vandq_s8(vdupq_lane_s32(*&vmulq_f32(_Q0, v65), 0), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v65, v53)), 0));
    v55 = vandq_s8(vmulq_lane_f32(vdupq_lane_s32(*_Q1.i8, 0), *v65.f32, 1), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(vdupq_lane_s32(*v65.f32, 1), v53)), 0));
    v56 = vceqq_f32(vdupq_laneq_s32(v65, 2), v53);
    _Q6 = vdupq_laneq_s32(v65, 3);
    v58 = vceqq_f32(_Q6, v53);
    _Q6.i16[0] = *(v50 + v48 + v49);
    __asm { FCVT            S6, H6 }

    *&result = vaddq_f32(vandq_s8(vmulq_laneq_f32(vdupq_lane_s32(*_Q6.f32, 0), v65, 3), vdupq_lane_s32(*&vmvnq_s8(v58), 0)), vaddq_f32(vandq_s8(vmulq_laneq_f32(vdupq_lane_s32(_D2, 0), v65, 2), vdupq_lane_s32(*&vmvnq_s8(v56), 0)), vaddq_f32(v54, v55))).u64[0];
  }

  else
  {
    _D1 = vmla_f32(0xBF000000BF000000, v12.n128_u64[0], *(a1 + 104));
    v15 = vrndm_f32(_D1);
    _D2 = vcvt_s32_f32(v15);
    _D3 = *(a1 + 100);
    _S4 = vmax_s16(vuzp1_s16(_D2, v15).u32[0], 0).u32[0];
    v19 = vsub_f32(_D1, v15);
    v20 = vmin_s16(_S4, _D3).u32[0];
    _D1.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(_D2, 0x100000001), v19).u32[0], 0).u32[0], _D3).u32[0];
    v21 = *(a1 + 32);
    v22 = *(a1 + 208) + *(a1 + 36) * v66;
    v23 = v21 * (v20 >> 16);
    v24 = v21 * (_D1.i32[0] >> 16);
    v25 = v22 + 2 * (v20 & 0x7FFF);
    v26 = v22 + 2 * (_D1.i16[0] & 0x7FFF);
    _D1.i16[0] = *(v25 + v23);
    __asm { FCVT            S1, H1 }

    _D2.i16[0] = *(v25 + v24);
    __asm { FCVT            S2, H2 }

    LOWORD(_D3) = *(v26 + v23);
    __asm { FCVT            S3, H3 }

    LOWORD(_S4) = *(v26 + v24);
    __asm
    {
      FCVT            S4, H4
      FMOV            V5.2S, #1.0
    }

    v33 = vsub_f32(_D5, v19);
    v19.f32[0] = (((vmuls_lane_f32(v33.f32[0], v19, 1) * *_D2.i32) + (_D1.f32[0] * vmuls_lane_f32(v33.f32[0], v33, 1))) + (*&_D3 * vmuls_lane_f32(v19.f32[0], v33, 1))) + (_S4 * vmuls_lane_f32(v19.f32[0], v19, 1));
    *&result = vdupq_lane_s32(v19, 0).u64[0];
  }

  return result;
}

double MetalEmulation::sampleCube_trilinear_half4_float4(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  HIDWORD(v5) = 0;
  *&v5 = fmaxf(*&a3, 0.0);
  *&a3 = *&v5 - truncf(*&v5);
  v18 = a3;
  v6 = *&v5;
  v7 = *(a1 + 8);
  if (v7 >= *&v5)
  {
    v8 = *&v5;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = *(a1 + 56);
  *v10.i64 = _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_DF16_EEDv4_fRKNS_10TextureMipEDv3_f(v9 + 224 * v8, a2, a3, v5, a5);
  v12 = v10;
  if (*&v18 >= 0.00001 && v7 > v6)
  {
    v14 = a2;
    v17 = v12;
    *v10.i64 = _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_DF16_EEDv4_fRKNS_10TextureMipEDv3_f(v9 + 224 * (v8 + 1), v14, *v12.i64, v18, v11);
    v10.i64[0] = vmlaq_n_f32(v17, vsubq_f32(v10, v17), *&v18).u64[0];
  }

  return *v10.i64;
}

double MetalEmulation::sampleCube_trilinear_half_float4(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  HIDWORD(v5) = 0;
  *&v5 = fmaxf(*&a3, 0.0);
  *&a3 = *&v5 - truncf(*&v5);
  v18 = a3;
  v6 = *&v5;
  v7 = *(a1 + 8);
  if (v7 >= *&v5)
  {
    v8 = *&v5;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = *(a1 + 56);
  v12 = v10;
  if (*&v18 >= 0.00001 && v7 > v6)
  {
    v14 = a2;
    v17 = v12;
    v10.i64[0] = vmlaq_n_f32(v17, vsubq_f32(v10, v17), *&v18).u64[0];
  }

  return *v10.i64;
}

double MetalEmulation::readPixel_half_float4(uint64_t a1, unsigned int a2, int32x2_t _D0)
{
  _D0.i16[0] = *(*(a1 + 208) + 2 * a2 + *(a1 + 32) * HIWORD(a2));
  __asm { FCVT            S0, H0 }

  *&result = vdupq_lane_s32(_D0, 0).u64[0];
  return result;
}

double MetalEmulation::readPixelArray_half_float4(uint64_t a1, unsigned int a2, int a3, int32x2_t _D0)
{
  _D0.i16[0] = *(*(a1 + 208) + (*(a1 + 36) * a3) + 2 * a2 + *(a1 + 32) * HIWORD(a2));
  __asm { FCVT            S0, H0 }

  *&result = vdupq_lane_s32(_D0, 0).u64[0];
  return result;
}

float16x4_t MetalEmulation::writePixel_half4(uint64_t a1, unsigned int a2, float32x4_t a3)
{
  result = vcvt_f16_f32(a3);
  *(*(a1 + 176) + *(a1 + 32) * HIWORD(a2) + 8 * a2) = result;
  return result;
}

__int16 MetalEmulation::writePixel_half@<H0>(uint64_t a1@<X0>, unsigned int a2@<W1>, float _S0@<S0>)
{
  __asm { FCVT            H0, S0 }

  *(*(a1 + 176) + *(a1 + 32) * HIWORD(a2) + 2 * a2) = result;
  return result;
}

float16x4_t MetalEmulation::writePixelArray_half4(uint64_t a1, unsigned int a2, int a3, float32x4_t a4)
{
  result = vcvt_f16_f32(a4);
  *(*(a1 + 176) + *(a1 + 36) * a3 + *(a1 + 32) * HIWORD(a2) + 8 * a2) = result;
  return result;
}

__int16 MetalEmulation::writePixelArray_half@<H0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, float _S0@<S0>)
{
  __asm { FCVT            H0, S0 }

  *(*(a1 + 176) + *(a1 + 36) * a3 + *(a1 + 32) * HIWORD(a2) + 2 * a2) = result;
  return result;
}

double MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_float4_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v23) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v23) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v23;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  v10 = vbic_s8(v6, vceq_s32(vand_s8(v6, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  v12 = vmul_n_s32(vshr_n_s32(vshl_n_s32(vzip2_s32(v9, v10), 0x10uLL), 0x10uLL), *&a1[4]);
  v13 = vshl_n_s32(vzip1_s32(v9, v10), 4uLL);
  v14 = *&v11 + (v13.i16[0] & 0xFFF0);
  v15 = *&v11 + (v13.i16[2] & 0xFFF0);
  __asm { FMOV            V0.2S, #1.0 }

  v21 = vsub_f32(_D0, v4);
  *&result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v14 + v12.u32[1]), vmuls_lane_f32(v21.f32[0], v4, 1)), *(v14 + v12.u32[0]), vmuls_lane_f32(v21.f32[0], v21, 1)), *(v15 + v12.u32[0]), vmuls_lane_f32(v4.f32[0], v21, 1)), *(v15 + v12.u32[1]), vmuls_lane_f32(v4.f32[0], v4, 1)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_float_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v21) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v21) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v21;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  v10 = vbic_s8(v6, vceq_s32(vand_s8(v6, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  v12 = vmul_n_s32(vshr_n_s32(vshl_n_s32(vzip2_s32(v9, v10), 0x10uLL), 0x10uLL), *&a1[4]);
  v13 = vshl_n_s32(vzip1_s32(v9, v10), 2uLL);
  __asm { FMOV            V5.2S, #1.0 }

  v19 = vsub_f32(_D5, v4);
  v4.f32[0] = (((*(*&v11 + (v13.i16[0] & 0xFFFC) + v12.u32[1]) * vmuls_lane_f32(v19.f32[0], v4, 1)) + (*(*&v11 + (v13.i16[0] & 0xFFFC) + v12.u32[0]) * vmuls_lane_f32(v19.f32[0], v19, 1))) + (*(*&v11 + (v13.i16[2] & 0xFFFC) + v12.u32[0]) * vmuls_lane_f32(v4.f32[0], v19, 1))) + (*(*&v11 + (v13.i16[2] & 0xFFFC) + v12.u32[1]) * vmuls_lane_f32(v4.f32[0], v4, 1));
  *&result = vdupq_lane_s32(v4, 0).u64[0];
  return result;
}

double _ZN14MetalEmulation12_GLOBAL__N_153sampleTexture_normalized_0to1_repeat_trilinear_float4IDv4_fEES2_RKNS_7TextureEDv2_fNS_5levelE(unsigned int a1, uint64_t a2, float32x2_t a3, float a4)
{
  v5 = fmaxf(a4, 0.0);
  v6 = v5 - truncf(v5);
  v7 = v5;
  if (a1 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = a1;
  }

  v9 = (a2 + 224 * v8);
  v10 = vmla_f32(0xBF000000BF000000, a3, v9[13]);
  v11 = vrndm_f32(v10);
  v12 = vsub_f32(v10, v11);
  v13 = vcvt_s32_f32(v11);
  v14 = vadd_s32(v13, 0x100000001);
  v15 = vceq_s32(vand_s8(v13, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v49) = v15.i16[2];
  v16 = vbic_s8(v13, v15);
  LOWORD(v49) = v15.i16[0];
  v15.i32[0] = v9[12].i32[1] & v49;
  v17 = vorr_s8(v16, *&vmovl_u16(v15));
  v15.i32[0] = v9[12].u16[0];
  v15.i32[1] = v9[12].u16[1];
  v18 = vbic_s8(v14, vceq_s32(vand_s8(v14, 0xFFFF0000FFFFLL), v15));
  v19 = v9[26];
  v9 += 4;
  v20 = vld1_dup_f32(v9);
  v21 = vmul_s32(v20, vshr_n_s32(vshl_n_s32(vzip2_s32(v17, v18), 0x10uLL), 0x10uLL));
  v22 = vshl_n_s32(vzip1_s32(v17, v18), 4uLL);
  v23 = v21.u32[1];
  v24 = v21.i32[0];
  __asm { FMOV            V6.2S, #1.0 }

  v29 = vsub_f32(_D6, v12);
  v30 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(*&v19 + (v22.i16[0] & 0xFFF0) + v23), vmuls_lane_f32(v29.f32[0], v12, 1)), *(*&v19 + (v22.i16[0] & 0xFFF0) + v24), vmuls_lane_f32(v29.f32[0], v29, 1)), *(*&v19 + (v22.i16[2] & 0xFFF0) + v24), vmuls_lane_f32(v12.f32[0], v29, 1)), *(*&v19 + (v22.i16[2] & 0xFFF0) + v23), vmuls_lane_f32(v12.f32[0], v12, 1));
  if (v6 >= 0.00001 && v7 < a1)
  {
    v32 = (a2 + 224 * (v8 + 1));
    v33 = vmla_f32(0xBF000000BF000000, a3, v32[13]);
    v34 = vrndm_f32(v33);
    v35 = vsub_f32(v33, v34);
    v36 = vcvt_s32_f32(v34);
    v37 = vadd_s32(v36, 0x100000001);
    v38 = vceq_s32(vand_s8(v36, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
    HIWORD(v48) = v38.i16[2];
    v39 = vbic_s8(v36, v38);
    LOWORD(v48) = v38.i16[0];
    v38.i32[0] = v32[12].i32[1] & v48;
    v40 = vorr_s8(v39, *&vmovl_u16(v38));
    v38.i32[0] = v32[12].u16[0];
    v38.i32[1] = v32[12].u16[1];
    v41 = vbic_s8(v37, vceq_s32(vand_s8(v37, 0xFFFF0000FFFFLL), v38));
    v42 = v32[26];
    v32 += 4;
    v43 = vld1_dup_f32(v32);
    v44 = vmul_s32(v43, vshr_n_s32(vshl_n_s32(vzip2_s32(v40, v41), 0x10uLL), 0x10uLL));
    v45 = vshl_n_s32(vzip1_s32(v40, v41), 4uLL);
    v46 = vsub_f32(_D6, v35);
    v30.i64[0] = vmlaq_n_f32(v30, vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(*&v42 + (v45.i16[0] & 0xFFF0) + v44.u32[1]), vmuls_lane_f32(v46.f32[0], v35, 1)), *(*&v42 + (v45.i16[0] & 0xFFF0) + v44.u32[0]), vmuls_lane_f32(v46.f32[0], v46, 1)), *(*&v42 + (v45.i16[2] & 0xFFF0) + v44.u32[0]), vmuls_lane_f32(v35.f32[0], v46, 1)), *(*&v42 + (v45.i16[2] & 0xFFF0) + v44.u32[1]), vmuls_lane_f32(v35.f32[0], v35, 1)), v30), v6).u64[0];
  }

  return *v30.i64;
}

double MetalEmulation::anonymous namespace::sampleTexture_normalized_0to1_repeat_trilinear_float4<float>(unsigned int a1, uint64_t a2, float32x2_t a3, float a4)
{
  v4 = fmaxf(a4, 0.0);
  v5 = v4;
  v6 = v4 - truncf(v4);
  if (a1 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = a1;
  }

  v8 = (a2 + 224 * v7);
  v9 = vmla_f32(0xBF000000BF000000, a3, v8[13]);
  v10 = vrndm_f32(v9);
  v11 = vsub_f32(v9, v10);
  v12 = vcvt_s32_f32(v10);
  v13 = vadd_s32(v12, 0x100000001);
  v14 = vceq_s32(vand_s8(v12, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v51) = v14.i16[2];
  v15 = vbic_s8(v12, v14);
  LOWORD(v51) = v14.i16[0];
  v14.i32[0] = v8[12].i32[1] & v51;
  v16 = vorr_s8(v15, *&vmovl_u16(v14));
  v14.i32[0] = v8[12].u16[0];
  v14.i32[1] = v8[12].u16[1];
  v17 = vbic_s8(v13, vceq_s32(vand_s8(v13, 0xFFFF0000FFFFLL), v14));
  v18 = v8[26];
  v8 += 4;
  v19 = vshr_n_s32(vshl_n_s32(vzip2_s32(v16, v17), 0x10uLL), 0x10uLL);
  v20 = vld1_dup_f32(v8);
  v21 = vshl_n_s32(vzip1_s32(v16, v17), 2uLL);
  v22 = vmul_s32(v20, v19);
  v23 = *&v18 + (v21.i16[0] & 0xFFFC);
  v21.i32[0] = *(v23 + v22.u32[0]);
  v19.i32[0] = *(v23 + v22.u32[1]);
  v24 = *&v18 + (v21.i16[2] & 0xFFFC);
  v20.i32[0] = *(v24 + v22.u32[0]);
  v25 = *(v24 + v22.u32[1]);
  __asm { FMOV            V7.2S, #1.0 }

  v30 = vsub_f32(_D7, v11);
  v11.f32[0] = (((*v19.i32 * vmuls_lane_f32(v30.f32[0], v11, 1)) + (*v21.i32 * vmuls_lane_f32(v30.f32[0], v30, 1))) + (*v20.i32 * vmuls_lane_f32(v11.f32[0], v30, 1))) + (v25 * vmuls_lane_f32(v11.f32[0], v11, 1));
  v31 = vdupq_lane_s32(v11, 0);
  v31.i32[3] = 1.0;
  if (v6 >= 0.00001 && v5 < a1)
  {
    v33 = (a2 + 224 * (v7 + 1));
    v34 = vmla_f32(0xBF000000BF000000, a3, v33[13]);
    v35 = vrndm_f32(v34);
    v36 = vcvt_s32_f32(v35);
    v37 = vadd_s32(v36, 0x100000001);
    v38 = vceq_s32(vand_s8(v36, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
    HIWORD(v50) = v38.i16[2];
    v39 = vbic_s8(v36, v38);
    LOWORD(v50) = v38.i16[0];
    v38.i32[0] = v33[12].i32[1] & v50;
    v40 = vorr_s8(v39, *&vmovl_u16(v38));
    v39.i32[0] = v33[12].u16[0];
    v39.i32[1] = v33[12].u16[1];
    v41 = vbic_s8(v37, vceq_s32(vand_s8(v37, 0xFFFF0000FFFFLL), v39));
    v42 = v33[26];
    v33 += 4;
    v43 = vld1_dup_f32(v33);
    v44 = vmul_s32(v43, vshr_n_s32(vshl_n_s32(vzip2_s32(v40, v41), 0x10uLL), 0x10uLL));
    v45 = vshl_n_s32(vzip1_s32(v40, v41), 2uLL);
    v46 = vsub_f32(v34, v35);
    v47 = vsub_f32(_D7, v46);
    v46.f32[0] = (((*(*&v42 + (v45.i16[0] & 0xFFFC) + v44.u32[1]) * vmuls_lane_f32(v47.f32[0], v46, 1)) + (*(*&v42 + (v45.i16[0] & 0xFFFC) + v44.u32[0]) * vmuls_lane_f32(v47.f32[0], v47, 1))) + (*(*&v42 + (v45.i16[2] & 0xFFFC) + v44.u32[0]) * vmuls_lane_f32(v46.f32[0], v47, 1))) + (*(*&v42 + (v45.i16[2] & 0xFFFC) + v44.u32[1]) * vmuls_lane_f32(v46.f32[0], v46, 1));
    v48 = vdupq_lane_s32(v46, 0);
    v48.i32[3] = 1.0;
    v31.i64[0] = vmlaq_n_f32(v31, vsubq_f32(v48, v31), v6).u64[0];
  }

  return *v31.i64;
}

double MetalEmulation::sampleTexture_normalized_repeat_linear_float4_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, vsub_f32(a2, vrndm_f32(a2)), a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v23) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v23) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v23;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  v10 = vbic_s8(v6, vceq_s32(vand_s8(v6, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  v12 = vmul_n_s32(vshr_n_s32(vshl_n_s32(vzip2_s32(v9, v10), 0x10uLL), 0x10uLL), *&a1[4]);
  v13 = vshl_n_s32(vzip1_s32(v9, v10), 4uLL);
  v14 = *&v11 + (v13.i16[0] & 0xFFF0);
  v15 = *&v11 + (v13.i16[2] & 0xFFF0);
  __asm { FMOV            V0.2S, #1.0 }

  v21 = vsub_f32(_D0, v4);
  *&result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v14 + v12.u32[1]), vmuls_lane_f32(v21.f32[0], v4, 1)), *(v14 + v12.u32[0]), vmuls_lane_f32(v21.f32[0], v21, 1)), *(v15 + v12.u32[0]), vmuls_lane_f32(v4.f32[0], v21, 1)), *(v15 + v12.u32[1]), vmuls_lane_f32(v4.f32[0], v4, 1)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_repeat_linear_float_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, vsub_f32(a2, vrndm_f32(a2)), a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v21) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v21) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v21;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  v10 = vbic_s8(v6, vceq_s32(vand_s8(v6, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  v12 = vmul_n_s32(vshr_n_s32(vshl_n_s32(vzip2_s32(v9, v10), 0x10uLL), 0x10uLL), *&a1[4]);
  v13 = vshl_n_s32(vzip1_s32(v9, v10), 2uLL);
  __asm { FMOV            V5.2S, #1.0 }

  v19 = vsub_f32(_D5, v4);
  v4.f32[0] = (((*(*&v11 + (v13.i16[0] & 0xFFFC) + v12.u32[1]) * vmuls_lane_f32(v19.f32[0], v4, 1)) + (*(*&v11 + (v13.i16[0] & 0xFFFC) + v12.u32[0]) * vmuls_lane_f32(v19.f32[0], v19, 1))) + (*(*&v11 + (v13.i16[2] & 0xFFFC) + v12.u32[0]) * vmuls_lane_f32(v4.f32[0], v19, 1))) + (*(*&v11 + (v13.i16[2] & 0xFFFC) + v12.u32[1]) * vmuls_lane_f32(v4.f32[0], v4, 1));
  *&result = vdupq_lane_s32(v4, 0).u64[0];
  return result;
}

double _ZN14MetalEmulation12_GLOBAL__N_144sampleTexture_normalized_clamp_linear_float4IDv4_fEES2_RKNS_10TextureMipEDv2_f(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, *(a1 + 104));
  v3 = vrndm_f32(v2);
  v4 = vcvt_s32_f32(v3);
  v5 = *(a1 + 100);
  v6 = vsub_f32(v2, v3);
  v7 = vmin_s16(vmax_s16(vuzp1_s16(v4, v3).u32[0], 0).u32[0], v5).u32[0];
  v8 = vadd_s32(v4, 0x100000001);
  v8.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(v8, v8).u32[0], 0).u32[0], v5).u32[0];
  v9 = *(a1 + 208);
  v10 = *(a1 + 32);
  v11 = v10 * (v7 >> 16);
  v12 = (v8.i32[0] >> 16) * v10;
  v13 = v9 + 16 * (v8.i16[0] & 0xFFF);
  __asm { FMOV            V0.2S, #1.0 }

  v19 = vsub_f32(_D0, v6);
  *&result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v9 + 16 * (v7 & 0xFFF) + v12), vmuls_lane_f32(v19.f32[0], v6, 1)), *(v9 + 16 * (v7 & 0xFFF) + v11), vmuls_lane_f32(v19.f32[0], v19, 1)), *(v13 + v11), vmuls_lane_f32(v6.f32[0], v19, 1)), *(v13 + v12), vmuls_lane_f32(v6.f32[0], v6, 1)).u64[0];
  return result;
}

double MetalEmulation::anonymous namespace::sampleTexture_normalized_clamp_linear_float4<float>(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, *(a1 + 104));
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = *(a1 + 100);
  v7 = vmin_s16(vmax_s16(vuzp1_s16(v5, v4).u32[0], 0).u32[0], v6).u32[0];
  v5.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(v5, 0x100000001), v4).u32[0], 0).u32[0], v6).u32[0];
  v8 = *(a1 + 208);
  v9 = *(a1 + 32);
  __asm { FMOV            V5.2S, #1.0 }

  v15 = vsub_f32(_D5, v4);
  v4.f32[0] = (((vmuls_lane_f32(v15.f32[0], v4, 1) * *(v8 + 4 * (v7 & 0x3FFF) + ((v5.i32[0] >> 16) * v9))) + (*(v8 + 4 * (v7 & 0x3FFF) + (v9 * (v7 >> 16))) * vmuls_lane_f32(v15.f32[0], v15, 1))) + (*(v8 + 4 * (v5.i16[0] & 0x3FFF) + (v9 * (v7 >> 16))) * vmuls_lane_f32(v4.f32[0], v15, 1))) + (*(v8 + 4 * (v5.i16[0] & 0x3FFF) + ((v5.i32[0] >> 16) * v9)) * vmuls_lane_f32(v4.f32[0], v4, 1));
  *&result = vdupq_lane_s32(v4, 0).u64[0];
  return result;
}

void MetalEmulation::sampleTexture_normalized_clamp_trilinear_float4_float4(uint64_t a1, float32x2_t a2, float a3)
{
  v4 = fmaxf(a3, 0.0);
  v10 = v4 - truncf(v4);
  v5 = v4;
  v6 = *(a1 + 8);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = *(a1 + 56);
  _ZN14MetalEmulation12_GLOBAL__N_144sampleTexture_normalized_clamp_linear_float4IDv4_fEES2_RKNS_10TextureMipEDv2_f(v8 + 224 * v7, a2);
  if (v10 >= 0.00001 && v6 > v5)
  {
    _ZN14MetalEmulation12_GLOBAL__N_144sampleTexture_normalized_clamp_linear_float4IDv4_fEES2_RKNS_10TextureMipEDv2_f(v8 + 224 * (v7 + 1), a2);
  }
}

void MetalEmulation::sampleTexture_normalized_clamp_trilinear_float_float4(uint64_t a1, float32x2_t a2, float a3)
{
  v4 = fmaxf(a3, 0.0);
  v10 = v4 - truncf(v4);
  v5 = v4;
  v6 = *(a1 + 8);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = *(a1 + 56);
  if (v10 >= 0.00001 && v6 > v5)
  {
  }
}

double _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_fEES2_RKNS_10TextureMipEDv3_f(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  v55 = a2;
  v54 = 0;
  v12.n128_u64[0] = v11;
  *v13.i8 = vcgt_f32(*(a1 + 64), v11);
  v13.u64[1] = vcgt_f32(v12.n128_u64[0], *(a1 + 80));
  if ((vmaxvq_u32(v13) & 0x80000000) != 0)
  {
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    v6.n128_u64[0] = *(a1 + 120);
    v35 = 0uLL;
    v36 = *(a1 + 32);
    v37 = vmovl_u16(*(&v51 + 8));
    HIWORD(v50) = v37.i16[2];
    LOWORD(v50) = v37.i16[0];
    v38 = 16 * v37.u16[0];
    v39 = vmovl_u16(*&v52);
    HIWORD(v49) = v39.i16[2];
    LOWORD(v49) = v39.i16[0];
    v40 = 16 * v39.u16[0];
    v41 = vmovl_u16(*(&v52 + 8));
    HIWORD(v48) = v41.i16[2];
    LOWORD(v48) = v41.i16[0];
    v42 = *(a1 + 208);
    v43 = *(v42 + HIDWORD(v36) * WORD6(v52) + v36 * HIWORD(v48) + 16 * v41.u16[0]);
    if (*v53.i32 != 0.0)
    {
      v44 = vmovl_u16(*&v51);
      HIWORD(v47) = v44.i16[2];
      LOWORD(v47) = v44.i16[0];
      v34 = *(v42 + HIDWORD(v36) * WORD2(v51) + v36 * HIWORD(v47) + 16 * v44.u16[0]);
      v35 = vmulq_n_f32(v34, *v53.i32);
    }

    v34.i64[0] = 0;
    v45 = vandq_s8(vmulq_lane_f32(*(v42 + HIDWORD(v36) * WORD6(v51) + v36 * HIWORD(v50) + v38), *v53.i8, 1), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(vdupq_lane_s32(*v53.i8, 1), v34)), 0));
    v46 = vceqz_f32(*&vextq_s8(v53, v53, 8uLL));
    *&result = vaddq_f32(vbicq_s8(vmulq_laneq_f32(v43, v53, 3), vmovl_s16(vdup_lane_s16(v46, 2))), vaddq_f32(vbicq_s8(vmulq_laneq_f32(*(v42 + HIDWORD(v36) * WORD2(v52) + v36 * HIWORD(v49) + v40), v53, 2), vmovl_s16(vdup_lane_s16(v46, 0))), vaddq_f32(v45, v35))).u64[0];
  }

  else
  {
    v14 = vmla_f32(0xBF000000BF000000, v12.n128_u64[0], *(a1 + 104));
    v15 = vrndm_f32(v14);
    v16 = vsub_f32(v14, v15);
    v17 = vcvt_s32_f32(v15);
    v18 = *(a1 + 100);
    v19 = vmin_s16(vmax_s16(vuzp1_s16(v17, v17).u32[0], 0).u32[0], v18).u32[0];
    v20 = vadd_s32(v17, 0x100000001);
    v20.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(v20, v20).u32[0], 0).u32[0], v18).u32[0];
    v21 = *(a1 + 32);
    v22 = *(a1 + 208) + *(a1 + 36) * v54;
    v23 = v21 * (v19 >> 16);
    v24 = v21 * (v20.i32[0] >> 16);
    v25 = v22 + 16 * (v19 & 0xFFF);
    v26 = v22 + 16 * (v20.i16[0] & 0xFFF);
    __asm { FMOV            V0.2S, #1.0 }

    v32 = vsub_f32(_D0, v16);
    *&result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v25 + v24), vmuls_lane_f32(v32.f32[0], v16, 1)), *(v25 + v23), vmuls_lane_f32(v32.f32[0], v32, 1)), *(v26 + v23), vmuls_lane_f32(v16.f32[0], v32, 1)), *(v26 + v24), vmuls_lane_f32(v16.f32[0], v16, 1)).u64[0];
  }

  return result;
}

double MetalEmulation::anonymous namespace::sampleCube_linear_float4<float>(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  v59 = a2;
  v58 = 0;
  v12.n128_u64[0] = v11;
  *v13.i8 = vcgt_f32(*(a1 + 64), v11);
  v13.u64[1] = vcgt_f32(v12.n128_u64[0], *(a1 + 80));
  if ((vmaxvq_u32(v13) & 0x80000000) != 0)
  {
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v6.n128_u64[0] = *(a1 + 120);
    v29 = *(a1 + 32);
    v30 = *(a1 + 36);
    v31 = vmovl_u16(*&v55);
    HIWORD(v54) = v31.i16[2];
    LOWORD(v54) = v31.i16[0];
    v32 = v30 * WORD2(v55) + v29 * HIWORD(v54);
    v33 = 4 * v31.u16[0];
    v34 = vmovl_u16(*(&v55 + 8));
    HIWORD(v53) = v34.i16[2];
    LOWORD(v53) = v34.i16[0];
    v35 = v30 * WORD6(v55) + v29 * HIWORD(v53);
    v36 = vmovl_u16(*&v56);
    HIWORD(v52) = v36.i16[2];
    LOWORD(v52) = v36.i16[0];
    v37 = v30 * WORD2(v56) + v29 * HIWORD(v52);
    v38 = 4 * v36.u16[0];
    v39 = vmovl_u16(*(&v56 + 8));
    HIWORD(v51) = v39.i16[2];
    LOWORD(v51) = v39.i16[0];
    v40 = v30 * WORD6(v56) + v29 * HIWORD(v51);
    v41 = 4 * v39.u16[0];
    v42 = *(a1 + 208);
    v43 = (v42 + 4 * v53 + v35);
    v44 = vld1q_dup_f32(v43);
    v45 = (v42 + v38 + v37);
    v46 = vld1q_dup_f32(v45);
    v47.i64[0] = 0;
    v48 = (v42 + v41 + v40);
    v49.i32[0] = *(v42 + v32 + v33);
    v50 = vld1q_dup_f32(v48);
    *&result = vaddq_f32(vandq_s8(vmulq_laneq_f32(v50, v57, 3), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(vdupq_laneq_s32(v57, 3), v47)), 0)), vaddq_f32(vandq_s8(vmulq_laneq_f32(v46, v57, 2), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(vdupq_laneq_s32(v57, 2), v47)), 0)), vaddq_f32(vandq_s8(vdupq_lane_s32(*&vmulq_f32(v49, v57), 0), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v57, v47)), 0)), vandq_s8(vmulq_lane_f32(v44, *v57.f32, 1), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(vdupq_lane_s32(*v57.f32, 1), v47)), 0))))).u64[0];
  }

  else
  {
    v14 = vmla_f32(0xBF000000BF000000, v12.n128_u64[0], *(a1 + 104));
    v15 = vrndm_f32(v14);
    v16 = vcvt_s32_f32(v15);
    v17 = *(a1 + 100);
    v18 = vmin_s16(vmax_s16(vuzp1_s16(v16, v14).u32[0], 0).u32[0], v17).u32[0];
    v16.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(v16, 0x100000001), v14).u32[0], 0).u32[0], v17).u32[0];
    v19 = *(a1 + 32);
    v20 = *(a1 + 208) + *(a1 + 36) * v58;
    v21 = vsub_f32(v14, v15);
    __asm { FMOV            V5.2S, #1.0 }

    v27 = vsub_f32(_D5, v21);
    v21.f32[0] = (((vmuls_lane_f32(v27.f32[0], v21, 1) * *(v20 + 4 * (v18 & 0x3FFF) + (v19 * (v16.i32[0] >> 16)))) + (*(v20 + 4 * (v18 & 0x3FFF) + (v19 * (v18 >> 16))) * vmuls_lane_f32(v27.f32[0], v27, 1))) + (*(v20 + 4 * (v16.i16[0] & 0x3FFF) + (v19 * (v18 >> 16))) * vmuls_lane_f32(v21.f32[0], v27, 1))) + (*(v20 + 4 * (v16.i16[0] & 0x3FFF) + (v19 * (v16.i32[0] >> 16))) * vmuls_lane_f32(v21.f32[0], v21, 1));
    *&result = vdupq_lane_s32(v21, 0).u64[0];
  }

  return result;
}

double MetalEmulation::sampleCube_trilinear_float4_float4(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  HIDWORD(v5) = 0;
  *&v5 = fmaxf(*&a3, 0.0);
  *&a3 = *&v5 - truncf(*&v5);
  v18 = a3;
  v6 = *&v5;
  v7 = *(a1 + 8);
  if (v7 >= *&v5)
  {
    v8 = *&v5;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = *(a1 + 56);
  *v10.i64 = _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_fEES2_RKNS_10TextureMipEDv3_f(v9 + 224 * v8, a2, a3, v5, a5);
  v12 = v10;
  if (*&v18 >= 0.00001 && v7 > v6)
  {
    v14 = a2;
    v17 = v12;
    *v10.i64 = _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_fEES2_RKNS_10TextureMipEDv3_f(v9 + 224 * (v8 + 1), v14, *v12.i64, v18, v11);
    v10.i64[0] = vmlaq_n_f32(v17, vsubq_f32(v10, v17), *&v18).u64[0];
  }

  return *v10.i64;
}

double MetalEmulation::sampleCube_trilinear_float_float4(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  HIDWORD(v5) = 0;
  *&v5 = fmaxf(*&a3, 0.0);
  *&a3 = *&v5 - truncf(*&v5);
  v18 = a3;
  v6 = *&v5;
  v7 = *(a1 + 8);
  if (v7 >= *&v5)
  {
    v8 = *&v5;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = *(a1 + 56);
  v12 = v10;
  if (*&v18 >= 0.00001 && v7 > v6)
  {
    v14 = a2;
    v17 = v12;
    v10.i64[0] = vmlaq_n_f32(v17, vsubq_f32(v10, v17), *&v18).u64[0];
  }

  return *v10.i64;
}

double MetalEmulation::readPixel_float_float4(uint64_t a1, unsigned int a2)
{
  v2 = (*(a1 + 208) + 4 * a2 + *(a1 + 32) * HIWORD(a2));
  *&result = vld1q_dup_f32(v2).u64[0];
  return result;
}

double MetalEmulation::readPixelArray_float_float4(uint64_t a1, unsigned int a2, int a3)
{
  v3 = (*(a1 + 208) + (*(a1 + 36) * a3) + 4 * a2 + *(a1 + 32) * HIWORD(a2));
  *&result = vld1q_dup_f32(v3).u64[0];
  return result;
}

float32x4_t *MetalEmulation::anonymous namespace::cubeDirToUVAndFace(float32x4_t *result, char *a2, double a3, double a4, double a5, double a6)
{
  v6 = *result;
  v7 = vabsq_f32(*result);
  *&a6 = fmaxf(fmaxf(v7.f32[0], v7.f32[2]), v7.f32[1]);
  v8 = vdivq_f32(*result, vdupq_lane_s32(*&a6, 0));
  if (*&a6 == v7.f32[0])
  {
    if (v6.f32[0] > 0.0)
    {
      *a2 = 0;
      v9.i32[1] = v8.i32[1];
      v9.i32[0] = vextq_s8(v8, v8, 8uLL).u32[0];
      v10 = vneg_f32(v9);
      goto LABEL_14;
    }

    *a2 = 1;
    v11 = -v8.f32[1];
    v10.i32[0] = vdupq_laneq_s32(v8, 2).u32[0];
  }

  else
  {
    if (*&a6 != v7.f32[1])
    {
      if (v6.f32[2] <= 0.0)
      {
        v10 = vneg_f32(*v8.f32);
        v12 = 5;
      }

      else
      {
        v10.i32[0] = v8.i32[0];
        v10.f32[1] = -v8.f32[1];
        v12 = 4;
      }

      *a2 = v12;
      goto LABEL_14;
    }

    if (v6.f32[1] > 0.0)
    {
      *a2 = 2;
      v10 = vzip1_s32(*v8.f32, *&vextq_s8(v8, v8, 8uLL));
      goto LABEL_14;
    }

    *a2 = 3;
    v11 = -v8.f32[2];
    v10.i32[0] = v8.i32[0];
  }

  v10.f32[1] = v11;
LABEL_14:
  v13 = vmvn_s8(vceq_f32(v10, v10));
  if ((vpmax_u32(v13, v13).u32[0] & 0x80000000) != 0)
  {
    v14 = *result;
    v15 = vmvnq_s8(vorrq_s8(vcltzq_f32(v8), vcgezq_f32(v8)));
    v16.i64[0] = 0x8000000080000000;
    v16.i64[1] = 0x8000000080000000;
    __asm { FMOV            V4.4S, #1.0 }

    v15.i32[3] = 0;
    v23 = vbslq_s8(vcltzq_s32(v15), vbslq_s8(vorrq_s8(vcltzq_f32(*result), vcgtzq_f32(*result)), vorrq_s8(vandq_s8(*result, v16), _Q4), 0), 0);
    v22 = vceqzq_f32(v14);
    v22.i32[3] = v22.i32[2];
    if ((vminvq_u32(v22) & 0x80000000) != 0)
    {
      *a2 = 0;
    }

    else
    {
    }
  }

  return result;
}

__n128 MetalEmulation::anonymous namespace::computeCubeLinearBorderPixels(uint64_t a1, unsigned int a2, float32x2_t a3, __n128 a4, __n128 a5, float32x4_t a6, double a7, int8x16_t a8, int8x16_t a9)
{
  v9 = a4.n128_u16[0];
  v10 = vmla_f32(0xBF000000BF000000, a5.n128_u64[0], a3);
  v11 = vrndm_f32(v10);
  *a8.i8 = vsub_f32(v10, v11);
  __asm { FMOV            V2.2S, #1.0 }

  *a9.i8 = vsub_f32(_D2, *a8.i8);
  *a6.f32 = vcvt_s32_f32(v11);
  a5.n128_u64[0] = vdup_n_s32(a4.n128_u16[0]);
  v16 = vshr_n_s32(vshr_n_s32(vshl_n_s32(*a6.f32, 0x10uLL), 0x10uLL), 0xFuLL);
  v17 = COERCE_DOUBLE(vcgt_s32(vshr_n_s32(vshl_n_s32(vadd_s32(*a6.f32, 0x100000001), 0x10uLL), 0x10uLL), vshr_n_s32(vshl_n_s32(a5.n128_u64[0], 0x10uLL), 0x10uLL)));
  v18 = v16.i16[2];
  v19 = v16.i32[0];
  v20 = &unk_1E30B5814 + 12 * a2;
  v21 = vextq_s8(vextq_s8(vextq_s8(a9, a9, 4uLL), a8, 8uLL), a8, 4uLL);
  *v22.f32 = vdup_lane_s32(*a9.i8, 1);
  a9.i32[1] = a8.i32[1];
  v22.i64[1] = a9.i64[0];
  v23 = vmulq_f32(v21, v22);
  *(a1 + 32) = v23;
  if (v19)
  {
    if (v18)
    {
      v24 = (&unk_1E30B585C + 16 * v20[4] + 8 * v20[5]);
      a4.n128_u16[0] = *v24;
      a4.n128_u16[2] = v24[1];
      v25 = vmul_s32(a4.n128_u64[0], a5.n128_u64[0]);
      LOWORD(v24) = v20[3];
      v26 = (&unk_1E30B585C + 16 * v20[1] + 8 * v20[2]);
      a6.i16[0] = *v26;
      a6.i16[2] = v26[1];
      a5.n128_u64[0] = vmul_s32(*a6.f32, a5.n128_u64[0]);
      v27 = a5.n128_u64[0];
      v27.i16[1] = a5.n128_i16[2];
      v27.i16[2] = *v20;
      v28 = 0;
      WORD2(v28) = a2;
      *(a1 + 16) = v27;
      *(a1 + 24) = v28;
      *v27.i32 = 0.33333 * v23.f32[0];
      v23 = vaddq_f32(vdupq_lane_s32(v27, 0), v23);
      a5.n128_u16[1] = a5.n128_u16[2];
      a5.n128_u16[2] = v27.u16[2];
      a5.n128_u16[4] = v25.i16[0];
      a5.n128_u16[5] = v25.u16[2];
      a5.n128_u16[6] = v24;
      *a1 = a5;
      v23.i32[0] = 0;
LABEL_21:
      *(a1 + 32) = v23;
      goto LABEL_52;
    }

    if (HIDWORD(v17))
    {
      v34 = &unk_1E30B585C + 16 * v20[4] + 8 * v20[5];
      a4.n128_u16[0] = *(v34 + 2);
      a4.n128_u16[2] = *(v34 + 3);
      a4.n128_u64[0] = vmul_s32(a4.n128_u64[0], a5.n128_u64[0]);
      v35 = v20[3];
      v36 = a4.n128_u64[0];
      v36.i16[1] = a4.n128_i16[2];
      v36.i16[2] = v35;
      v37 = 0;
      WORD1(v37) = v9;
      WORD2(v37) = a2;
      *a1 = v36;
      *(a1 + 8) = v37;
      v38 = (&unk_1E30B585C + 16 * v20[10] + 8 * v20[11]);
      v36.i16[0] = *v38;
      v36.i16[2] = v38[1];
      v39 = vmul_s32(v36, a5.n128_u64[0]);
      *v36.i32 = vmuls_lane_f32(0.33333, v23, 2);
      v23 = vaddq_f32(vdupq_lane_s32(v36, 0), v23);
      a4.n128_u16[1] = a4.n128_u16[2];
      a4.n128_u16[2] = v35;
      a4.n128_u16[4] = v39.i16[0];
      a4.n128_u16[5] = v39.u16[2];
      a4.n128_u16[6] = v20[9];
      v23.i32[2] = 0;
      *(a1 + 16) = a4;
      *(a1 + 32) = v23;
    }

    else
    {
      v54 = v20[5];
      v55 = a4.n128_u16[0] - a6.i16[2];
      v56 = v20[4];
      v57 = v54 == 0;
      if (!v20[5])
      {
        v55 = a6.u16[2];
      }

      v58 = (&unk_1E30B585C + 16 * v20[4] + 8 * v54);
      v23.i16[0] = *v58;
      v23.i16[2] = v58[1];
      v59 = 0;
      v60 = 0;
      WORD1(v60) = a6.i16[2];
      WORD2(v60) = a2;
      *(a1 + 8) = v60;
      *(&v59 + 2) = (a6.i16[2] + 1);
      WORD2(v59) = a2;
      *(a1 + 24) = v59;
      v61 = v20[3];
      if (v57)
      {
        v62 = 1;
      }

      else
      {
        v62 = -1;
      }

      v63 = v55 + v62;
      if ((v56 - 1) > 1)
      {
        v23.i16[0] = v55;
        v23.i16[1] = v23.i16[2] * v9;
        v23.i16[2] = v61;
        *a1 = v23.i64[0];
        v23.i16[0] = v63;
      }

      else
      {
        v23.i32[0] *= v9;
        v64 = v23.i64[0];
        WORD1(v64) = v55;
        WORD2(v64) = v61;
        *a1 = v64;
        v23.i16[1] = v63;
      }

      v23.i16[2] = v61;
      *(a1 + 16) = v23.i64[0];
    }
  }

  else if (LODWORD(v17))
  {
    if (v18)
    {
      v29 = &unk_1E30B585C + 16 * v20[1] + 8 * v20[2];
      a4.n128_u16[0] = *(v29 + 2);
      a4.n128_u16[2] = *(v29 + 3);
      a4.n128_u64[0] = vmul_s32(a4.n128_u64[0], a5.n128_u64[0]);
      v30 = a4;
      v30.n128_u16[1] = a4.n128_u16[2];
      v30.n128_u16[2] = *v20;
      v30.n128_u16[4] = a4.n128_u16[0];
      v30.n128_u16[5] = a4.n128_u16[2];
      v30.n128_u16[6] = v30.n128_u16[2];
      v31 = (&unk_1E30B585C + 16 * v20[7] + 8 * v20[8]);
      a4.n128_u16[0] = *v31;
      a4.n128_u16[2] = v31[1];
      v32 = vmul_s32(a4.n128_u64[0], a5.n128_u64[0]);
      v33 = v9;
      WORD2(v33) = a2;
      v32.i16[1] = v32.i16[2];
      v32.i16[2] = v20[6];
      *a1 = v30;
      *(a1 + 16) = v33;
      *(a1 + 24) = v32;
      *v32.i32 = vmuls_lane_f32(0.33333, *v23.f32, 1);
      v23 = vaddq_f32(vdupq_lane_s32(v32, 0), v23);
      v23.i32[1] = 0;
      goto LABEL_21;
    }

    if (HIDWORD(v17))
    {
      v50 = &unk_1E30B585C + 16 * v20[7] + 8 * v20[8];
      a6.i16[0] = *(v50 + 2);
      a6.i16[2] = *(v50 + 3);
      v51 = vmul_s32(*a6.f32, a5.n128_u64[0]);
      v52 = &unk_1E30B585C + 16 * v20[10] + 8 * v20[11];
      LOWORD(v17) = *(v52 + 2);
      WORD2(v17) = *(v52 + 3);
      a5.n128_u64[0] = vmul_s32(*&v17, a5.n128_u64[0]);
      v53 = a4;
      v53.n128_u16[1] = a4.n128_u16[0];
      v53.n128_u16[2] = a2;
      v53.n128_u16[4] = v51.i16[0];
      v53.n128_u16[5] = v51.u16[2];
      v53.n128_u16[6] = v20[6];
      a5.n128_u16[1] = a5.n128_u16[2];
      a5.n128_u16[2] = v20[9];
      a5.n128_u16[4] = a4.n128_u16[0];
      a5.n128_u16[5] = a4.n128_u16[0];
      a5.n128_u16[6] = a2;
      *a1 = v53;
      *(a1 + 16) = a5;
      a4.n128_f32[0] = vmuls_lane_f32(0.33333, v23, 2);
      v23 = vaddq_f32(vdupq_lane_s32(a4.n128_u64[0], 0), v23);
      v23.i32[3] = 0;
      goto LABEL_21;
    }

    v73 = v20[8];
    v74 = v20[7] - 1;
    v75 = v73 == 0;
    v76 = (&unk_1E30B585C + 16 * v20[7] + 8 * v73);
    v23.i16[0] = *v76;
    v23.i16[2] = v76[1];
    if (v75)
    {
      v77 = a6.u16[2];
    }

    else
    {
      v77 = a4.n128_u16[0] - a6.i16[2];
    }

    v78 = a4.n128_u64[0];
    WORD1(v78) = a6.i16[2];
    WORD2(v78) = a2;
    *a1 = v78;
    a4.n128_u16[1] = a6.i16[2] + 1;
    a4.n128_u16[2] = a2;
    *(a1 + 16) = a4.n128_u64[0];
    v79 = v20[6];
    if (v75)
    {
      v80 = 1;
    }

    else
    {
      v80 = -1;
    }

    v81 = v77 + v80;
    if (v74 > 1)
    {
      v23.i16[0] = v77;
      v23.i16[1] = v23.i16[2] * a4.n128_u16[0];
      v23.i16[2] = v79;
      *(a1 + 8) = v23.i64[0];
      v23.i16[0] = v81;
    }

    else
    {
      v23.i32[0] *= a4.n128_u16[0];
      v82 = v23.i64[0];
      WORD1(v82) = v77;
      WORD2(v82) = v79;
      *(a1 + 8) = v82;
      v23.i16[1] = v81;
    }

    v23.i16[2] = v79;
    *(a1 + 24) = v23.i64[0];
  }

  else
  {
    if (v18)
    {
      v40 = v20[2];
      v41 = a4.n128_u16[0] - a6.i16[0];
      v42 = v20[1];
      _ZF = v40 == 0;
      if (!v20[2])
      {
        v41 = a6.i16[0];
      }

      v44 = (&unk_1E30B585C + 16 * v20[1] + 8 * v40);
      v23.i16[0] = *v44;
      v23.i16[2] = v44[1];
      v45 = *v20;
      if (_ZF)
      {
        v46 = 1;
      }

      else
      {
        v46 = -1;
      }

      v47 = v23.i16[2];
      v23.i32[0] *= a4.n128_u16[0];
      v48 = *v23.i64;
      WORD1(v48) = v41;
      WORD2(v48) = v45;
      v23.i16[1] = v41 + v46;
      v23.i16[2] = v45;
      a5.n128_u16[0] = v41;
      a5.n128_u16[1] = v47 * v9;
      a5.n128_u16[2] = v45;
      LOWORD(v17) = v41 + v46;
      WORD1(v17) = v47 * v9;
      WORD2(v17) = v45;
      if ((v42 - 1) >= 2)
      {
        v48 = a5.n128_f64[0];
        *v23.i64 = v17;
      }

      *a1 = v48;
      *(a1 + 8) = v23.i64[0];
      v49 = a6.u16[0];
      WORD2(v49) = a2;
      v23.i64[0] = (a6.i16[0] + 1);
      v23.i16[2] = a2;
    }

    else
    {
      if (!HIDWORD(v17))
      {
        v23 = a6;
        v23.i16[1] = a6.i16[2];
        v23.i16[2] = a2;
        v23.i16[4] = a6.i16[0] + 1;
        v23.i16[5] = a6.i16[2];
        v23.i16[6] = a2;
        a6.i16[1] = a6.i16[2] + 1;
        a6.i16[2] = a2;
        a6.i16[4] = a6.i16[0] + 1;
        a6.i16[5] = a6.i16[1];
        a6.i16[6] = a2;
        *a1 = v23;
        *(a1 + 16) = a6;
        goto LABEL_52;
      }

      v65 = v20[11];
      v66 = v20[10] - 1;
      v67 = v65 == 0;
      v68 = (&unk_1E30B585C + 16 * v20[10] + 8 * v65);
      v23.i16[0] = *v68;
      v23.i16[2] = v68[1];
      if (v67)
      {
        v69 = a6.i16[0];
      }

      else
      {
        v69 = a4.n128_u16[0] - a6.i16[0];
      }

      a6.i16[1] = a4.n128_u16[0];
      a6.i16[2] = a2;
      a4.n128_u16[0] = a6.i16[0] + 1;
      a4.n128_u16[1] = v9;
      a4.n128_u16[2] = a2;
      *a1 = a6.i64[0];
      *(a1 + 8) = a4.n128_u64[0];
      v70 = v20[9];
      if (v67)
      {
        v71 = 1;
      }

      else
      {
        v71 = -1;
      }

      v72 = v69 + v71;
      if (v66 >= 2)
      {
        v23.i16[0] = v69;
        v23.i16[1] = v23.i16[2] * v9;
        v23.i16[2] = v70;
        a4.n128_u16[0] = v72;
        a4.n128_u16[1] = v23.u16[1];
        a4.n128_u16[2] = v70;
        *(a1 + 16) = v23.i64[0];
        *(a1 + 24) = a4.n128_u64[0];
        goto LABEL_52;
      }

      v23.i32[0] *= v9;
      v49 = v23.i64[0];
      WORD1(v49) = v69;
      WORD2(v49) = v70;
      v23.i16[1] = v72;
      v23.i16[2] = v70;
    }

    *(a1 + 16) = v49;
    *(a1 + 24) = v23.i64[0];
  }

LABEL_52:
  result.n128_u32[0] = v23.i32[0];
  result.n128_u16[2] = v23.u16[2];
  return result;
}

double MetalEmulation::wrapTextureMip@<D0>(void *a1@<X0>, unsigned int a2@<W1>, int16x4_t *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = 0uLL;
  if ((v8 & 1) == 0)
  {
    goto LABEL_18;
  }

  v29 = 0uLL;
  v30 = 0uLL;
  v28 = 0uLL;
  v10 = MetalEmulation::readPixelArray_8Unorm_float4;
  v11 = MetalEmulation::readPixel_8Unorm_float4;
  v12 = MetalEmulation::sampleCube_linear_8Unorm_float4;
  v13 = MetalEmulation::sampleTexture_normalized_clamp_linear_8Unorm_float4;
  v14 = MetalEmulation::sampleTexture_normalized_repeat_linear_8Unorm_float4;
  v15 = MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_8Unorm_float4;
  if (*(&v25 + 1) <= 64)
  {
    if (*(&v25 + 1) <= 29)
    {
      if (*(&v25 + 1) == 10)
      {
        goto LABEL_21;
      }

      if (*(&v25 + 1) == 25)
      {
        v10 = MetalEmulation::readPixelArray_half_float4;
        v11 = MetalEmulation::readPixel_half_float4;
        v12 = MetalEmulation::sampleCube_linear_half_float4;
        v13 = MetalEmulation::sampleTexture_normalized_clamp_linear_half_float4;
        v14 = MetalEmulation::sampleTexture_normalized_repeat_linear_half_float4;
        v15 = MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_half_float4;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    if (*(&v25 + 1) != 30)
    {
      if (*(&v25 + 1) == 55)
      {
        v10 = MetalEmulation::readPixelArray_float_float4;
        v11 = MetalEmulation::readPixel_float_float4;
        v12 = MetalEmulation::sampleCube_linear_float_float4;
        v13 = MetalEmulation::sampleTexture_normalized_clamp_linear_float_float4;
        v14 = MetalEmulation::sampleTexture_normalized_repeat_linear_float_float4;
        v15 = MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_float_float4;
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  else if (*(&v25 + 1) <= 104)
  {
    if (*(&v25 + 1) != 65)
    {
      if (*(&v25 + 1) == 70)
      {
        v10 = MetalEmulation::readPixelArray_8Unorm4_float4;
        v11 = MetalEmulation::readPixel_8Unorm4_float4;
        v12 = MetalEmulation::sampleCube_linear_8Unorm4_float4;
        v13 = MetalEmulation::sampleTexture_normalized_clamp_linear_8Unorm4_float4;
        v14 = MetalEmulation::sampleTexture_normalized_repeat_linear_8Unorm4_float4;
        v15 = MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_8Unorm4_float4;
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  else if (*(&v25 + 1) != 105)
  {
    if (*(&v25 + 1) == 115)
    {
      v10 = MetalEmulation::readPixelArray_half4_float4;
      v11 = MetalEmulation::readPixel_half4_float4;
      v12 = MetalEmulation::sampleCube_linear_half4_float4;
      v13 = MetalEmulation::sampleTexture_normalized_clamp_linear_half4_float4;
      v14 = MetalEmulation::sampleTexture_normalized_repeat_linear_half4_float4;
      v15 = MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_half4_float4;
      goto LABEL_21;
    }

    if (*(&v25 + 1) == 125)
    {
      v10 = MetalEmulation::readPixelArray_float4_float4;
      v11 = MetalEmulation::readPixel_float4_float4;
      v12 = MetalEmulation::sampleCube_linear_float4_float4;
      v13 = MetalEmulation::sampleTexture_normalized_clamp_linear_float4_float4;
      v14 = MetalEmulation::sampleTexture_normalized_repeat_linear_float4_float4;
      v15 = MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_float4_float4;
LABEL_21:
      *&v28 = v15;
      *(&v28 + 1) = v14;
      *&v29 = v13;
      *(&v29 + 1) = v12;
      *&v30 = v11;
      *(&v30 + 1) = v10;
      goto LABEL_22;
    }

LABEL_18:
    a6[12] = 0uLL;
    a6[13] = 0uLL;
    a6[10] = 0uLL;
    a6[11] = 0uLL;
    a6[8] = 0uLL;
    a6[9] = 0uLL;
    a6[6] = 0uLL;
    a6[7] = 0uLL;
    a6[4] = 0uLL;
    a6[5] = 0uLL;
    a6[2] = 0uLL;
    a6[3] = 0uLL;
    *a6 = 0uLL;
    a6[1] = 0uLL;
    return *&v9;
  }

LABEL_22:
  *&v31 = a4;
  v16 = v29;
  a6[10] = v28;
  a6[11] = v16;
  v17 = v27[4];
  a6[6] = v27[3];
  a6[7] = v17;
  v18 = v27[6];
  a6[8] = v27[5];
  a6[9] = v18;
  v19 = v27[0];
  a6[2] = v26;
  a6[3] = v19;
  v20 = v27[2];
  a6[4] = v27[1];
  a6[5] = v20;
  v21 = v25;
  *a6 = v24;
  a6[1] = v21;
  *&v9 = v30;
  v22 = v31;
  a6[12] = v30;
  a6[13] = v22;
  return *&v9;
}

uint64_t MetalEmulation::anonymous namespace::wrapTextureMip(void *a1, unsigned int a2, int16x4_t *a3, unint64_t a4, int16x4_t *a5, uint64_t a6)
{
  a5[4] = *a3;
  v36 = vmax_u32(vshl_u32(vand_s8(__PAIR64__([a1 height], objc_msgSend(a1, sel_width)), 0xFFFF0000FFFFLL), vneg_s32(vdup_n_s32(a2))), 0x100000001);
  v11 = [a1 depth] >> a2;
  v12 = v36;
  v12.i16[1] = v36.i16[2];
  if (v11 <= 1)
  {
    LOWORD(v11) = 1;
  }

  v12.i16[2] = v11;
  *a5 = v12;
  a5[1].i16[0] = [a1 arrayLength];
  a5[3] = [a1 pixelFormat];
  v13 = [a1 textureType];
  result = 0;
  a5[2] = v13;
  a5[4] = *a3;
  v15 = a5[3];
  if (v15 <= 64)
  {
    if (v15 > 29)
    {
      if (v15 == 30)
      {
        v16 = 33620481;
      }

      else
      {
        if (v15 != 55)
        {
          return result;
        }

        v16 = 67371267;
      }
    }

    else
    {
      if (v15 == 10)
      {
        *a6 = 16843009;
        goto LABEL_25;
      }

      if (v15 != 25)
      {
        return result;
      }

      v16 = 33685762;
    }
  }

  else if (v15 <= 104)
  {
    if (v15 == 65)
    {
      v16 = 67240450;
    }

    else
    {
      if (v15 != 70)
      {
        return result;
      }

      v16 = 67175425;
    }
  }

  else
  {
    switch(v15)
    {
      case 'i':
        v16 = 134480387;
        break;
      case 's':
        v16 = 134349826;
        break;
      case '}':
        v16 = 268698627;
        break;
      default:
        return result;
    }
  }

  *a6 = v16;
LABEL_25:
  v17 = a5[1].u16[0] * a5->u16[2] * a3->u32[1];
  if ([a1 textureType] == 5 || objc_msgSend(a1, sel_textureType) == 6)
  {
    v17 *= 6;
  }

  if (v17 > a4 || a3->i32[0] * HIWORD(a5->u32[0]) > a3->i32[1] || *(a6 + 3) * a5->u16[0] > a3->i32[0])
  {
    return 0;
  }

  v18.i64[0] = -1;
  v18.i64[1] = -1;
  *(a6 + 72) = vadd_s16(*a5, -1);
  v19 = vmovl_u16(*a5).u64[0];
  *(a6 + 50) = v19.i16[2];
  v20 = vshl_n_s32(v19, 0x10uLL);
  *(a6 + 48) = v19.i16[0];
  v21 = vaddw_u16(v18, *a5);
  *(a6 + 54) = v21.i16[2];
  *(a6 + 52) = v21.i16[0];
  v22 = vdupq_n_s32(0x4B400000u);
  *v18.i8 = vsra_n_s32(*v22.i8, v20, 0x10uLL);
  v23 = vdupq_n_s32(0xCB400000);
  *v18.i8 = vadd_f32(*v18.i8, *v23.f32);
  v24 = vrecpe_f32(*v18.i8);
  v25 = vmul_f32(v24, vrecps_f32(*v18.i8, v24));
  *(a6 + 56) = v18.i64[0];
  *(a6 + 64) = vmul_f32(v25, vrecps_f32(*v18.i8, v25));
  v26 = vaddq_f32(vorrq_s8(vmovl_u16(*a5), v22), v23);
  *(a6 + 80) = v26;
  v26.i32[3] = 0;
  v27 = vrecpeq_f32(v26);
  v28 = vmulq_f32(v27, vrecpsq_f32(v26, v27));
  v29 = vmulq_f32(v28, vrecpsq_f32(v26, v28));
  *(a6 + 96) = v29;
  v28.i64[0] = 0x3F0000003F000000;
  v28.i64[1] = 0x3F0000003F000000;
  v30 = vmulq_f32(v29, v28);
  __asm { FMOV            V1.4S, #1.0 }

  *(a6 + 16) = v30;
  *(a6 + 32) = vsubq_f32(_Q1, v30);
  return 1;
}

float MetalEmulation::wrapTexture@<S0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1 || !a2)
  {
    goto LABEL_19;
  }

  v3 = 0;
  v4 = *(a1 + 24);
  if (v4 <= 64)
  {
    if (v4 > 29)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      if (v4 == 30)
      {
        goto LABEL_22;
      }

      if (v4 == 55)
      {
        v7 = MetalEmulation::sampleTexture_normalized_0to1_repeat_trilinear_float_float4;
        v6 = MetalEmulation::sampleTexture_normalized_repeat_trilinear_float_float4;
        v5 = MetalEmulation::sampleTexture_normalized_clamp_trilinear_float_float4;
        v3 = MetalEmulation::sampleCube_trilinear_float_float4;
        goto LABEL_22;
      }
    }

    else
    {
      if (v4 == 10)
      {
        v7 = MetalEmulation::sampleTexture_normalized_0to1_repeat_trilinear_8Unorm_float4;
        v6 = MetalEmulation::sampleTexture_normalized_repeat_trilinear_8Unorm_float4;
        v5 = MetalEmulation::sampleTexture_normalized_clamp_trilinear_8Unorm_float4;
        v3 = MetalEmulation::sampleCube_trilinear_8Unorm_float4;
        goto LABEL_22;
      }

      if (v4 == 25)
      {
        v7 = MetalEmulation::sampleTexture_normalized_0to1_repeat_trilinear_half_float4;
        v6 = MetalEmulation::sampleTexture_normalized_repeat_trilinear_half_float4;
        v5 = MetalEmulation::sampleTexture_normalized_clamp_trilinear_half_float4;
        v3 = MetalEmulation::sampleCube_trilinear_half_float4;
        goto LABEL_22;
      }
    }

    goto LABEL_19;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (v4 <= 104)
  {
    if (v4 == 65)
    {
      goto LABEL_22;
    }

    if (v4 == 70)
    {
      v7 = MetalEmulation::sampleTexture_normalized_0to1_repeat_trilinear_8Unorm4_float4;
      v6 = MetalEmulation::sampleTexture_normalized_repeat_trilinear_8Unorm4_float4;
      v5 = MetalEmulation::sampleTexture_normalized_clamp_trilinear_8Unorm4_float4;
      v3 = MetalEmulation::sampleCube_trilinear_8Unorm4_float4;
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (v4 != 105)
  {
    if (v4 == 115)
    {
      v7 = MetalEmulation::sampleTexture_normalized_0to1_repeat_trilinear_half4_float4;
      v6 = MetalEmulation::sampleTexture_normalized_repeat_trilinear_half4_float4;
      v5 = MetalEmulation::sampleTexture_normalized_clamp_trilinear_half4_float4;
      v3 = MetalEmulation::sampleCube_trilinear_half4_float4;
      goto LABEL_22;
    }

    if (v4 == 125)
    {
      v7 = MetalEmulation::sampleTexture_normalized_0to1_repeat_trilinear_float4_float4;
      v6 = MetalEmulation::sampleTexture_normalized_repeat_trilinear_float4_float4;
      v5 = MetalEmulation::sampleTexture_normalized_clamp_trilinear_float4_float4;
      v3 = MetalEmulation::sampleCube_trilinear_float4_float4;
      goto LABEL_22;
    }

LABEL_19:
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

LABEL_22:
  result = a2;
  *a3 = a2;
  *(a3 + 4) = (a2 - 1);
  *(a3 + 8) = a2 - 1;
  *(a3 + 16) = v7;
  *(a3 + 24) = v6;
  *(a3 + 32) = v5;
  *(a3 + 40) = v3;
  *(a3 + 48) = a2;
  *(a3 + 56) = a1;
  return result;
}

double MetalEmulation::wrapRenderTargetMip@<D0>(void *a1@<X0>, unsigned int a2@<W1>, int16x4_t *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  {
    goto LABEL_18;
  }

  v21 = 0uLL;
  v8 = MetalEmulation::writePixelArray_8Unorm;
  v9 = MetalEmulation::writePixel_8Unorm;
  if (*(&v18 + 1) <= 64)
  {
    if (*(&v18 + 1) <= 29)
    {
      if (*(&v18 + 1) == 10)
      {
        goto LABEL_21;
      }

      if (*(&v18 + 1) == 25)
      {
        v8 = MetalEmulation::writePixelArray_half;
        v9 = MetalEmulation::writePixel_half;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    if (*(&v18 + 1) != 30)
    {
      if (*(&v18 + 1) == 55)
      {
        v8 = MetalEmulation::writePixelArray_float;
        v9 = MetalEmulation::writePixel_float;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

LABEL_22:
    *&v22 = a4;
    v11 = v20[6];
    a6[8] = v20[5];
    a6[9] = v11;
    v12 = v20[2];
    a6[4] = v20[1];
    a6[5] = v12;
    v13 = v20[4];
    a6[6] = v20[3];
    a6[7] = v13;
    v14 = v18;
    *a6 = v17;
    a6[1] = v14;
    v15 = v20[0];
    a6[2] = v19;
    a6[3] = v15;
    result = *&v21;
    v16 = v22;
    a6[10] = v21;
    a6[11] = v16;
    return result;
  }

  if (*(&v18 + 1) <= 104)
  {
    if (*(&v18 + 1) != 65)
    {
      if (*(&v18 + 1) == 70)
      {
        v8 = MetalEmulation::writePixelArray_8Unorm4;
        v9 = MetalEmulation::writePixel_8Unorm4;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    goto LABEL_22;
  }

  switch(*(&v18 + 1))
  {
    case 'i':
      goto LABEL_22;
    case 's':
      v8 = MetalEmulation::writePixelArray_half4;
      v9 = MetalEmulation::writePixel_half4;
      goto LABEL_21;
    case '}':
      v8 = MetalEmulation::writePixelArray_float4;
      v9 = MetalEmulation::writePixel_float4;
LABEL_21:
      *&v21 = v9;
      *(&v21 + 1) = v8;
      goto LABEL_22;
  }

LABEL_18:
  result = 0.0;
  a6[10] = 0u;
  a6[11] = 0u;
  a6[8] = 0u;
  a6[9] = 0u;
  a6[6] = 0u;
  a6[7] = 0u;
  a6[4] = 0u;
  a6[5] = 0u;
  a6[2] = 0u;
  a6[3] = 0u;
  *a6 = 0u;
  a6[1] = 0u;
  return result;
}