uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v56[0] = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v50), re::TypeInfo::TypeInfo(v49, &v51), v49[12] != 1) || !re::TypeInfo::isInteger(v49))
  {
LABEL_38:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v49, &v51);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v48, &v51);
  re::TypeInfo::TypeInfo(v46, this);
  v18 = (*(*a1 + 80))(a1, v49);
  if (!v18)
  {
    v39 = re::TypeInfo::name(v49);
    goto LABEL_38;
  }

  v19 = v18;
  v21 = 0;
  if (v20)
  {
    v22 = (*(v47 + 96))(a4);
    if (v22)
    {
      v54 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v50 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v50, v22);
      ++v53;
      v23 = (*(v47 + 120))(a4, v17);
      if ((*(v47 + 128))())
      {
        do
        {
          v24 = (*(v47 + 136))(v23);
          v25 = (*(v47 + 144))(v23);
          v55[0].n128_u64[0] = v24;
          v55[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v50, v55);
        }

        while (((*(v47 + 128))(v23, v26) & 1) != 0);
      }

      (*(v47 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v52);
      if (v52)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*,false>(v54, (v54 + 16 * v52), v29, 1, v27);
      if (v52)
      {
        v31 = v54;
        v32 = v54 + 16 * v52;
        do
        {
          v33 = **v31;
          if ((v33 & 0x80000000) != 0)
          {
            v55[0].n128_u8[0] = 45;
            v33 = -v33;
            v34 = (v55[0].n128_u64 + 1);
          }

          else
          {
            v34 = v55;
          }

          v35 = *(v31 + 8);
          if (v56 - v34 > 9 || (v36 = (1233 * (32 - __clz(v33 | 1))) >> 12, v37 = (((__PAIR64__(v36, v33) - std::__itoa::__pow10_32[v36]) >> 32) + 1), v38 = v56, v56 - v34 >= v37))
          {
            v38 = std::__itoa::__base_10_u32[abi:nn200100](v34, v33);
          }

          *v38 = 0;
          v19(a1, v55, 0, v35, v49, v48, 0);
          v31 += 16;
        }

        while (v31 != v32);
      }

      if (v50 && v54)
      {
        (*(*v50 + 40))(v30);
      }
    }

    goto LABEL_35;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v56[0] = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v50), re::TypeInfo::TypeInfo(v49, &v51), v49[12] != 1) || !re::TypeInfo::isInteger(v49))
  {
LABEL_38:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v49, &v51);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v48, &v51);
  re::TypeInfo::TypeInfo(v46, this);
  v18 = (*(*a1 + 80))(a1, v49);
  if (!v18)
  {
    v39 = re::TypeInfo::name(v49);
    goto LABEL_38;
  }

  v19 = v18;
  v21 = 0;
  if (v20)
  {
    v22 = (*(v47 + 96))(a4);
    if (v22)
    {
      v54 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v50 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v50, v22);
      ++v53;
      v23 = (*(v47 + 120))(a4, v17);
      if ((*(v47 + 128))())
      {
        do
        {
          v24 = (*(v47 + 136))(v23);
          v25 = (*(v47 + 144))(v23);
          v55[0].n128_u64[0] = v24;
          v55[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v50, v55);
        }

        while (((*(v47 + 128))(v23, v26) & 1) != 0);
      }

      (*(v47 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v52);
      if (v52)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*,false>(v54, &v54[v52], v29, 1, v27);
      if (v52)
      {
        v31 = v54;
        v32 = &v54[v52];
        do
        {
          v33 = *v31->n128_u64[0];
          if ((v33 & 0x80000000) != 0)
          {
            v55[0].n128_u8[0] = 45;
            v33 = -v33;
            v34 = (v55[0].n128_u64 + 1);
          }

          else
          {
            v34 = v55;
          }

          v35 = v31->n128_u64[1];
          if (v56 - v34 > 9 || (v36 = (1233 * (32 - __clz(v33 | 1))) >> 12, v37 = (((__PAIR64__(v36, v33) - std::__itoa::__pow10_32[v36]) >> 32) + 1), v38 = v56, v56 - v34 >= v37))
          {
            v38 = std::__itoa::__base_10_u32[abi:nn200100](v34, v33);
          }

          *v38 = 0;
          v19(a1, v55, 0, v35, v49, v48, 0);
          ++v31;
        }

        while (v31 != v32);
      }

      if (v50 && v54)
      {
        (*(*v50 + 40))(v30);
      }
    }

    goto LABEL_35;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  v13 = *a6;
  if (*this == *a6)
  {
    v15 = **(this + 2);
    v14 = *(a6 + 2);
    v16 = *v14;
    if (v15 == *v14)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_14;
    }

    v13 = *a6;
    v14 = *(a6 + 2);
  }

  re::TypeRegistry::typeInfo(v13, v14[10], &v49);
  re::TypeInfo::TypeInfo(v48, &v50);
  v19 = re::TypeInfo::name(v48);
  if (*v19 >> 1 != 0x22C6ED80D0CLL || (v20 = v19[1], v20 != "StringID") && strcmp(v20, "StringID"))
  {
LABEL_35:
    v25 = 0;
    return v25 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_33:
    v25 = *(a1 + 64) ^ 1;
    return v25 & 1;
  }

  v21 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v49);
  re::TypeInfo::TypeInfo(v48, &v50);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v49);
  re::TypeInfo::TypeInfo(v47, &v50);
  re::TypeInfo::TypeInfo(v45, this);
  v22 = (*(*a1 + 80))(a1, v48);
  if (!v22)
  {
    v37 = re::TypeInfo::name(v48);
    goto LABEL_35;
  }

  v23 = v22;
  v25 = 0;
  if (v24)
  {
    v26 = (*(v46 + 96))(a4);
    if (v26)
    {
      v53 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v49 = v21;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v49, v26);
      ++v52;
      v27 = (*(v46 + 120))(a4, v21);
      if ((*(v46 + 128))())
      {
        do
        {
          v28 = (*(v46 + 136))(v27);
          v29 = (*(v46 + 144))(v27);
          v44.n128_u64[0] = v28;
          v44.n128_u64[1] = v29;
          v30 = re::DynamicArray<re::RigNodeConstraint>::add(&v49, &v44);
        }

        while (((*(v46 + 128))(v27, v30) & 1) != 0);
      }

      (*(v46 + 152))(v27, v21);
      v31 = 126 - 2 * __clz(v51);
      if (v51)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,false>(v53, &v53[2 * v51], v32, 1);
      if (v51)
      {
        v33 = v53;
        v34 = &v53[2 * v51];
        do
        {
          v35 = *v33;
          if (*(*v33 + 8))
          {
            v36 = *(v35 + 16);
          }

          else
          {
            v36 = v35 + 9;
          }

          v23(a1, v36, 0, v33[1], v48, v47, 0);
          v33 += 2;
        }

        while (v33 != v34);
      }

      if (v49 && v53)
      {
        (*(*v49 + 40))();
      }
    }

    goto LABEL_33;
  }

  return v25 & 1;
}

uint64_t re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  v13 = *a6;
  if (*this == *a6)
  {
    v15 = **(this + 2);
    v14 = *(a6 + 2);
    v16 = *v14;
    if (v15 == *v14)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_14;
    }

    v13 = *a6;
    v14 = *(a6 + 2);
  }

  re::TypeRegistry::typeInfo(v13, v14[10], &v51);
  re::TypeInfo::TypeInfo(v50, &v52);
  v19 = re::TypeInfo::name(v50);
  if (*v19 >> 1 != 0x134375A94D9F7110 || (v20 = v19[1], v20 != "DynamicString") && strcmp(v20, "DynamicString"))
  {
LABEL_32:
    v25 = 0;
    return v25 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_30:
    v25 = *(a1 + 64) ^ 1;
    return v25 & 1;
  }

  v21 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v50, &v52);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v49, &v52);
  re::TypeInfo::TypeInfo(v47, this);
  v22 = (*(*a1 + 80))(a1, v50);
  if (!v22)
  {
    v39 = re::TypeInfo::name(v50);
    goto LABEL_32;
  }

  v23 = v22;
  v25 = 0;
  if (v24)
  {
    v26 = (*(v48 + 96))(a4);
    if (v26)
    {
      v55 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v51 = v21;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v51, v26);
      ++v54;
      v27 = (*(v48 + 120))(a4, v21);
      if ((*(v48 + 128))())
      {
        do
        {
          v28 = (*(v48 + 136))(v27);
          v29 = (*(v48 + 144))(v27);
          v46.n128_u64[0] = v28;
          v46.n128_u64[1] = v29;
          v30 = re::DynamicArray<re::RigNodeConstraint>::add(&v51, &v46);
        }

        while (((*(v48 + 128))(v27, v30) & 1) != 0);
      }

      (*(v48 + 152))(v27, v21);
      v32 = 126 - 2 * __clz(v53);
      if (v53)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      v34 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,false>(v55, &v55[v53], v33, 1, v31);
      if (v53)
      {
        v35 = v55;
        v36 = &v55[v53];
        do
        {
          v38 = v35->n128_u64[0];
          v37 = v35->n128_u64[1];
          ++v35;
          v23(a1, *(v38 + 8), 0, v37, v50, v49, 0, v34);
        }

        while (v35 != v36);
      }

      if (v51 && v55)
      {
        (*(*v51 + 40))(v34);
      }
    }

    goto LABEL_30;
  }

  return v25 & 1;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(uint64_t a1, char *__s, uint64_t *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), __s);
    }

    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartArray(*(a1 + 168));
    v7 = *a3;
    LOBYTE(v9) = 6;
    DWORD1(v9) = 0;
    *(&v9 + 1) = __s;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v11 = v7;
  }

  return v3 ^ 1u;
}

double re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartObject(*(a1 + 168));
    LOBYTE(v3[0]) = 7;
    DWORD1(v3[0]) = 32;
    *(&v3[0] + 1) = "entry";
    v3[1] = xmmword_1E3054780;
    v4 = 0;
    v5 = 0;
  }

  return result;
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == 2)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::EndObject(*(result + 21));
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v4 - 16);
    }

    else
    {
      if (v7)
      {
        v5 = *&v8[7];
      }

      else
      {
        v5 = v8;
      }

      re::DynamicString::format("Failed to deserialize dictionary entry %s. Expected 2 objects (key+value). Actual number of objects: %lld.", &v9, v5, *(*(v1 + 16) + 48 * *(v1 + 14) - 16));
      if (v9 && (v10 & 1) != 0)
      {
        (*(*v9 + 40))();
      }

      result = v6;
      if (v6)
      {
        if (v7)
        {
          return (*(*v6 + 40))();
        }
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionary(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == *(v2 + 48 * v3 - 24))
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::EndArray(*(result + 21));
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v4 - 16);
    }

    else
    {
      if (v8)
      {
        v5 = *&v9[7];
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format("Failed to deserialize dictionary %s. Expected number of entries: %lld. Actual number of entries: %lld.", &v10, v5, *(v6 - 24), *(v6 - 16));
      if (v10 && (v11 & 1) != 0)
      {
        (*(*v10 + 40))();
      }

      result = v7;
      if (v7)
      {
        if (v8)
        {
          return (*(*v7 + 40))();
        }
      }
    }
  }

  return result;
}

void std::sort[abi:nn200100]<re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1}>(char *a1, char *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = 126 - 2 * __clz((a2 - a1) >> 4);
  v5 = a3;
  if (a2 == a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,false>(a1, a2, &v5, v4, 1);
}

uint64_t rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartObject(uint64_t a1)
{
  rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(a1);
  v2 = *(a1 + 32);
  if (*(a1 + 40) - v2 <= 15)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Level>(a1 + 8, 1);
    v2 = *(a1 + 32);
  }

  *(a1 + 32) = v2 + 16;
  *v2 = 0;
  *(v2 + 8) = 0;

  return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteStartObject(a1);
}

uint64_t rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::EndObject(uint64_t *a1)
{
  v2 = a1[4];
  v3 = *(v2 - 16);
  a1[4] = v2 - 16;
  if (v3)
  {
    v4 = *a1;
    v5 = *(*a1 + 24);
    if ((*(*a1 + 32) - v5) <= 0)
    {
      rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*a1, 1);
      v5 = *(v4 + 24);
    }

    *(v4 + 24) = v5 + 1;
    *v5 = 10;
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteIndent(a1);
  }

  rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndObject(a1);
  return 1;
}

uint64_t re::serializeDynamicString<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *__s, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_14;
  }

  v17 = re::TypeInfo::name(a6);
  if (*v17 >> 1 != 0x22C6ED80D0CLL || (v18 = v17[1], v18 != "StringID") && strcmp(v18, "StringID"))
  {
    goto LABEL_24;
  }

LABEL_14:
  if (a7)
  {
    v24 = 0;
    {
LABEL_27:
      v22 = *(a1 + 64) ^ 1;
      return v22 & 1;
    }
  }

  else
  {
    v19 = *(a4 + 8);
    if (v19)
    {
      v20 = v19 >> 1;
    }

    else
    {
      v20 = v19 >> 1;
    }

    v24 = v20;
    {
      if (v20)
      {
        if (*(a4 + 8))
        {
          v21 = *(a4 + 16);
        }

        else
        {
          v21 = a4 + 9;
        }
      }

      goto LABEL_27;
    }
  }

LABEL_24:
  v22 = 0;
  return v22 & 1;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5D18330;
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 48);
    if ((v4 & 1) == 0)
    {
      (*(*v2 + 40))(v2, *(a1 + 64));
      v4 = *(a1 + 48);
    }

    *v3 = 0;
    v3[1] = 0;
    *(a1 + 48) = (v4 | 1) + 2;
  }

  return a1;
}

uint64_t re::internal::serializeMembers<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, uint64_t a2, uint64_t *a3, const re::TypeInfo *a4, uint64_t a5)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a3 == a4)
  {
LABEL_4:
  }

  if (*a3 == *a4)
  {
    v11 = *a3[2];
    v12 = **(a4 + 2);
    if (v11 == v12)
    {
      v14 = WORD1(v11) == WORD1(v12);
      v13 = (v12 ^ v11) & 0xFFFFFF00000000;
      v14 = v14 && v13 == 0;
      if (v14)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a3, a4, a3))
  {
    goto LABEL_4;
  }

  if (*(a3 + 12) == *(a4 + 12))
  {
    re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v47);
    re::TypeRegistry::typeInfo(*a4, *(*(a4 + 2) + 80), v45);
    if (v45[0] == 1)
    {
      if ((v47[0] & 1) == 0)
      {
        v30 = re::TypeInfo::name(v46)[1];
        re::TypeInfo::name(a3);
      }
    }

    re::TypeMemberCollection::TypeMemberCollection(v44, *a3, a3[2]);
    result = re::TypeMemberCollection::TypeMemberCollection(v42, *a4, *(a4 + 2));
    if (v43)
    {
      for (i = 0; i < v43; ++i)
      {
        if (*(a1 + 64))
        {
          break;
        }

        result = re::TypeMemberCollection::operator[](v42, i, v40);
        if (*(v41 + 28) == 1)
        {
          v16 = *(v41 + 16);
          if (strlen(v16) >= 3 && *v16 == 109)
          {
            v16 += 2 * (*(v16 + 1) == 95);
          }

          v17 = *(v41 + 32);
          v18 = *(*a4 + 856);
          if (!v18 || (v18 = re::internal::TypeTranslationTable::translateMember(v18, v40), v18 == -1))
          {
            v20 = *re::foundationSerializationLogObjects(v18);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = v20;
              v22 = re::TypeInfo::name(a4)[1];
              *buf = 136315394;
              v50 = v22;
              v51 = 2080;
              v52 = v16;
              _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_INFO, "Skipping unknown member %s.%s.", buf, 0x16u);
            }

            v23 = *(a1 + 272);
            re::TypeRegistry::typeInfo(v40[0], *v41, buf);
            re::TypeInfo::TypeInfo(v38, &v50 + 4);
            result = re::internal::translateType(v23, v38, buf);
            if ((*(a1 + 64) & 1) == 0)
            {
              result = (*(*a1 + 72))(a1, v16, v17, 0, buf, buf, 1);
            }
          }

          else
          {
            re::TypeMemberCollection::operator[](v44, v18, v38);
            v19 = *(v39 + 24);
            re::TypeRegistry::typeInfo(v38[0], *v39, buf);
            re::TypeInfo::TypeInfo(v37, &v50 + 4);
            re::TypeRegistry::typeInfo(v40[0], *v41, buf);
            result = re::TypeInfo::TypeInfo(v36, &v50 + 4);
            if ((*(a1 + 64) & 1) == 0)
            {
              result = (*(*a1 + 72))(a1, v16, v17, a2 + v19, v37, v36, a5);
            }
          }
        }
      }
    }
  }

  else
  {
    v24 = re::TypeInfo::name(a3)[1];
    re::TypeInfo::name(a4);
  }

  return result;
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Serializer(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

uint64_t *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::error(uint64_t *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result[1] + 64) & 1) == 0)
  {
    v10 = result;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    re::DynamicString::setCapacity(&v16, 0);
    v15 = &a9;
    re::DynamicString::vappendf(&v16, a2, &a9);
    v11 = v10[1];
    *&v12 = 400;
    *(&v12 + 1) = re::FoundationErrorCategory(void)::instance;
    re::DynamicString::DynamicString(&v13, &v16);
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v11 + 24, &v12);
    if (v13 && (v14 & 1) != 0)
    {
      (*(*v13 + 40))();
    }

    result = v16;
    if (v16)
    {
      if (v17)
      {
        return (*(*v16 + 40))(v16, v18);
      }
    }
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginField(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  *(v3 + 40 * v4 - 32) = a2;
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  *(v5 + 40 * v4 - 40) = a3;
  return 1;
}

double re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginObject(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = v2 + 40 * *(a1 + 40);
  v4 = *(v3 - 40);
  if (*(v3 - 32) || *v4 != 64)
  {
  }

  v6 = "";
  v7 = 0;
  v8 = 0;
  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endObject(_anonymous_namespace_ *result)
{
  v1 = *(result + 12);
  v2 = *(result + 5) - 1;
  *(result + 5) = v2;
  *(result + 12) = v1 + 2;
  if (v1)
  {
    v3 = result + 56;
  }

  else
  {
    v3 = *(result + 8);
  }

  v4 = &v3[40 * v2];
  if (*(v4 - 8) || **(v4 - 5) != 64)
  {
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginArray(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionary(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  v7 = v6 + 40 * *(a1 + 40) - 40;
  if (*(a1 + 48))
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = v8 + 40 * *(a1 + 40);
  v10 = *v7;
  v11 = *(v7 + 16);
  *(v9 + 32) = *(v7 + 32);
  *v9 = v10;
  *(v9 + 16) = v11;
  v12 = *(a1 + 40) + 1;
  *(a1 + 40) = v12;
  v13 = *(a1 + 48);
  *(a1 + 48) = v13 + 2;
  if (v13)
  {
    v14 = a1 + 56;
  }

  else
  {
    v14 = *(a1 + 64);
  }

  v15 = v14 + 40 * v12;
  v16 = *(a1 + 8);
  if (a3)
  {
    *(v15 - 28) = 1;
    v17 = *(v15 - 40);
  }

  else
  {
    *(v15 - 28) = 0;
    v19 = a2;
  }
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryEntry(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = a1 + 56;
  }

  else
  {
    v1 = *(a1 + 64);
  }

  v2 = v1 + 40 * *(a1 + 40);
  if (*(v2 - 28))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
    *(v2 - 40) = "key";
  }

  *(v2 - 32) = v3;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryValue(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 64);
  }

  v2 = v1 + 40 * *(result + 40);
  if (*(v2 - 28))
  {
    v3 = 0;
  }

  else
  {
    *(v2 - 40) = "value";
    v3 = 1;
  }

  *(v2 - 32) = v3;
  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 8);
  }

  if ((v1[40 * *(result + 5) - 28] & 1) == 0)
  {
  }

  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionary(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = *(v2 + 40 * *(a1 + 40) - 28);
  v4 = (*(a1 + 8) + 24);
  if (v3 == 1)
  {
  }

  else
  {
  }

  v6 = *(a1 + 48);
  --*(a1 + 40);
  *(a1 + 48) = v6 + 2;
  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginOptional(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  return a2;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, char a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned int a2)
{
  v10 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = (v5 - 3);
    v8 = (v5 - 27);
    if ((a2 & 0x80000000) != 0)
    {
      v8 = (v5 - 26);
      *(v5 - 27) = 45;
      a2 = -a2;
    }

    if (result - v8 > 9 || (v9 = (1233 * (32 - __clz(a2 | 1))) >> 12, result - v8 >= (((__PAIR64__(v9, a2) - std::__itoa::__pow10_32[v9]) >> 32) + 1)))
    {
      result = std::__itoa::__base_10_u32[abi:nn200100](v8, a2);
    }

    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

{
  v10 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = (v5 - 3);
    v8 = (v5 - 27);
    if ((a2 & 0x80000000) != 0)
    {
      v8 = (v5 - 26);
      *(v5 - 27) = 45;
      a2 = -a2;
    }

    if (result - v8 > 9 || (v9 = (1233 * (32 - __clz(a2 | 1))) >> 12, result - v8 >= (((__PAIR64__(v9, a2) - std::__itoa::__pow10_32[v9]) >> 32) + 1)))
    {
      result = std::__itoa::__base_10_u32[abi:nn200100](v8, a2);
    }

    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

{
  v10 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = (v5 - 3);
    if ((a2 & 0x80000000) != 0)
    {
      v8 = (v5 - 26);
      *(v5 - 27) = 45;
      a2 = -a2;
    }

    else
    {
      v8 = (v5 - 27);
    }

    if (result - v8 > 9 || (v9 = (1233 * (32 - __clz(a2 | 1))) >> 12, result - v8 >= (((__PAIR64__(v9, a2) - std::__itoa::__pow10_32[v9]) >> 32) + 1)))
    {
      result = std::__itoa::__base_10_u32[abi:nn200100](v8, a2);
    }

    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__itoa::__base_10_u32[abi:nn200100]((v5 - 27), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int8 a2)
{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__itoa::__base_10_u32[abi:nn200100]((v5 - 27), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int16 a2)
{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__itoa::__base_10_u32[abi:nn200100]((v5 - 27), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 40);
  v6 = v4 + 40 * v5;
  if (*(v6 - 28) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    if (HIDWORD(a2))
    {
      if (a2 <= 0x2540BE3FFLL)
      {
        v9 = (v6 - 27);
      }

      else
      {
        v9 = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2 / 0x2540BE400);
        v2 %= 0x2540BE400uLL;
      }

      *v9 = std::__itoa::__digits_base_10[v2 / 0x5F5E100];
      *(v9 + 1) = std::__itoa::__digits_base_10[v2 % 0x5F5E100 / 0xF4240];
      v10 = v2 % 0x5F5E100 % 0xF4240;
      *(v9 + 2) = std::__itoa::__digits_base_10[v10 / 0x2710uLL];
      v10 %= 0x2710u;
      *(v9 + 3) = std::__itoa::__digits_base_10[v10 / 0x64u];
      *(v9 + 4) = std::__itoa::__digits_base_10[v10 % 0x64u];
      result = v9 + 10;
    }

    else
    {
      result = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2);
    }

    *result = 0;
    *(v6 - 40) = v6 - 27;
  }

  else
  {
    v11 = a2;
    if (v3)
    {
      v7 = a1 + 56;
    }

    else
    {
      v7 = *(a1 + 64);
    }
  }

  return result;
}

{
  v2 = a2;
  v12 = a2;
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 40);
  v6 = v4 + 40 * v5;
  if (*(v6 - 28) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v9 = (v6 - 3);
    if ((a2 & 0x8000000000000000) != 0)
    {
      result = (v6 - 26);
      *(v6 - 27) = 45;
      v2 = -a2;
    }

    else
    {
      result = (v6 - 27);
    }

    if (v9 - result > 19 || (v10 = (1233 * (64 - __clz(v2 | 1))) >> 12, v9 - result >= v10 - (std::__itoa::__pow10_64[v10] > v2) + 1))
    {
      if (HIDWORD(v2))
      {
        if (v2 > 0x2540BE3FFLL)
        {
          result = std::__itoa::__base_10_u32[abi:nn200100](result, v2 / 0x2540BE400);
          v2 %= 0x2540BE400uLL;
        }

        *result = std::__itoa::__digits_base_10[v2 / 0x5F5E100];
        v11 = v2 % 0x5F5E100;
        *(result + 1) = std::__itoa::__digits_base_10[v11 / 0xF4240uLL];
        v11 %= 0xF4240u;
        *(result + 2) = std::__itoa::__digits_base_10[v11 / 0x2710uLL];
        v11 %= 0x2710u;
        *(result + 3) = std::__itoa::__digits_base_10[v11 / 0x64u];
        *(result + 4) = std::__itoa::__digits_base_10[v11 % 0x64u];
        v9 = result + 10;
      }

      else
      {
        result = std::__itoa::__base_10_u32[abi:nn200100](result, v2);
        v9 = result;
      }
    }

    *v9 = 0;
    *(v6 - 40) = v6 - 27;
  }

  else
  {
    if (v3)
    {
      v7 = a1 + 56;
    }

    else
    {
      v7 = *(a1 + 64);
    }
  }

  return result;
}

{
  v2 = a2;
  v11 = a2;
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 40);
  v6 = v4 + 40 * v5;
  if (*(v6 - 28) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    if (HIDWORD(a2))
    {
      if (a2 <= 0x2540BE3FFLL)
      {
        v9 = (v6 - 27);
      }

      else
      {
        v9 = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2 / 0x2540BE400);
        v2 %= 0x2540BE400uLL;
      }

      *v9 = std::__itoa::__digits_base_10[v2 / 0x5F5E100];
      *(v9 + 1) = std::__itoa::__digits_base_10[v2 % 0x5F5E100 / 0xF4240];
      v10 = v2 % 0x5F5E100 % 0xF4240;
      *(v9 + 2) = std::__itoa::__digits_base_10[v10 / 0x2710uLL];
      v10 %= 0x2710u;
      *(v9 + 3) = std::__itoa::__digits_base_10[v10 / 0x64u];
      *(v9 + 4) = std::__itoa::__digits_base_10[v10 % 0x64u];
      result = v9 + 10;
    }

    else
    {
      result = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2);
    }

    *result = 0;
    *(v6 - 40) = v6 - 27;
  }

  else
  {
    if (v3)
    {
      v7 = a1 + 56;
    }

    else
    {
      v7 = *(a1 + 64);
    }
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, float a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, double a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializeString(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v13 = a3;
  v6 = *(result + 12);
  if (v6)
  {
    v7 = result + 56;
  }

  else
  {
    v7 = *(result + 8);
  }

  v8 = *(result + 5);
  v9 = &v7[40 * v8];
  if (*(v9 - 28) == 1 && (*(v9 - 8) & 0x80000000) != 0)
  {
    *(v9 - 5) = a2;
  }

  else
  {
    if (v6)
    {
      v10 = result + 56;
    }

    else
    {
      v10 = *(result + 8);
    }

    if (a3 && v11)
    {
    }

    v12 = (*(v5 + 1) + 24);
  }

  return result;
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializeData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (*(a1 + 48))
  {
    v7 = a1 + 56;
  }

  else
  {
    v7 = *(a1 + 64);
  }

  if ((*(v6 + 64) & 1) == 0)
  {
    v8 = *(v7 + 40 * *(a1 + 40) - 40);
    if ((*(*(v6 + 152) + 48 * *(v6 + 136) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(v6 + 192), v8);
    }

    if (!a3)
    {
      v9 = *(v6 + 192);
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v9);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(v9);
    }

    LOBYTE(v23) = 4;
    DWORD1(v23) = 0;
    *(&v23 + 1) = v8;
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v25 = a3;
    v11 = *(a1 + 8);
    if ((*(v11 + 64) & 1) == 0)
    {
      v12 = *(*(v11 + 152) + 48 * *(v11 + 136) - 24);
      *(&v23 + 1) = 0;
      v24 = 0;
      v25 = 0;
      re::DynamicString::setCapacity(&v23, 0);
      *&v23 = *(v11 + 56);
      re::DynamicString::setCapacity(&v23, ((2863311531u * v12) >> 31) & 0x1FFFFFFFCLL);
      re::EncoderHelper::encodeBase64(a2, v12, &v23);
      v13 = *(v11 + 192);
      if (BYTE8(v23))
      {
        v14 = v24;
      }

      else
      {
        v14 = &v23 + 9;
      }

      if (BYTE8(v23))
      {
        v15 = *(&v23 + 1) >> 1;
      }

      else
      {
        v15 = BYTE8(v23) >> 1;
      }

      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(*(v11 + 192));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v13, v14, v15);
      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v16 = *(v11 + 152) + 48 * *(v11 + 136);
      *(v16 - 16) += v12;
      v17 = *(a1 + 8);
      if ((*(v17 + 64) & 1) == 0)
      {
        v18 = *(v17 + 152);
        v19 = *(v17 + 136);
        if (*(v18 + 48 * v19 - 16) == *(v18 + 48 * v19 - 24))
        {
          *(v17 + 232) = 0;
          ++*(v17 + 240);
          v20 = *(v17 + 152) + 48 * *(v17 + 136);
          ++*(v20 - 16);
        }

        else
        {
          if (v29)
          {
            v21 = *&v30[7];
          }

          else
          {
            v21 = v30;
          }

          v22 = *(v17 + 152) + 48 * *(v17 + 136);
          re::DynamicString::format("Failed to serialize BLOB %s. Expected number of bytes: %lld. Actual number of bytes: %lld.", &v23, v21, *(v22 - 24), *(v22 - 16));
          if (v23 && (BYTE8(v23) & 1) != 0)
          {
            (*(*v23 + 40))();
          }

          if (v28)
          {
            if (v29)
            {
              (*(*v28 + 40))();
            }
          }
        }
      }
    }
  }
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 2 * (a2 != 0);
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  if (a2)
  {
    v9 = a2;
    (*(**(a3 + 32) + 16))(*(a3 + 32), a1, &v9);
  }
}

_BYTE *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::write(uint64_t a1, uint64_t a2, re **this)
{
  v17[0] = 0;
  v5 = *(a1 + 16);
  if (this[4] == v5)
  {
    re::TypeRegistry::typeInfo(v5, this + 4, v15);
    re::Optional<re::TypeInfo>::operator=(v17, v15);
  }

  else
  {
    re::getPrettyTypeName(this, &v13);
    re::TypeRegistry::typeInfo(*(a1 + 16), &v13, v15);
    re::Optional<re::TypeInfo>::operator=(v17, v15);
    if (v13 && (v14 & 1) != 0)
    {
      (*(*v13 + 40))();
    }
  }

  if (v17[0])
  {
    v6 = *(a1 + 16);
    v7 = re::TypeInfo::name(v18);
    re::TypeRegistry::typeInfo(v6, v7, v15);
    if (v15[0])
    {
      result = *(a1 + 8);
      if (*(a1 + 48))
      {
        v9 = a1 + 56;
      }

      else
      {
        v9 = *(a1 + 64);
      }

      if ((result[64] & 1) == 0)
      {
        return (*(*result + 72))(result, *(v9 + 40 * *(a1 + 40) - 40), *(v9 + 40 * *(a1 + 40) - 32), a2, v18, &v16, 0);
      }
    }

    else
    {
      v11 = re::TypeInfo::name(v18)[1];
      if (*(a1 + 48))
      {
        v12 = a1 + 56;
      }

      else
      {
        v12 = *(a1 + 64);
      }

      return (*(*a1 + 56))(a1, "Stream schema doesn't support type '%s', writing field '%s'(%d)", v11, *(v12 + 40 * *(a1 + 40) - 40), *(v12 + 40 * *(a1 + 40) - 32));
    }
  }

  else
  {
    if (*(a1 + 48))
    {
      v10 = a1 + 56;
    }

    else
    {
      v10 = *(a1 + 64);
    }

    return (*(*a1 + 56))(a1, "No typeinfo while writing field '%s'(%d)", *(v10 + 40 * *(a1 + 40) - 40), *(v10 + 40 * *(a1 + 40) - 32));
  }

  return result;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(uint64_t a1, char *__s, int *a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    return v3 ^ 1u;
  }

  if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
  {
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), __s);
  }

  v7 = *a3;
  if ((*a3 - 1) < 2)
  {
LABEL_7:
    LOBYTE(v10) = 9;
    DWORD1(v10) = 0;
    *(&v10 + 1) = __s;
    v11 = 0;
    v13 = 0;
    v14 = 0;
    v12 = v7 != 0;
    return v3 ^ 1u;
  }

  if (!v7)
  {
    v8 = *(a1 + 168);
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v8);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(v8);
    v7 = *a3;
    goto LABEL_7;
  }

  re::internal::assertLog(4, __s, "assertion failure: '%s' (%s:line %i) Unexpected PointerEncoding.", "!Unreachable code", "beginPointer", 1054);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v19);
  if (v19[0] == 1)
  {
    re::TypeInfo::TypeInfo(v16, &v20);
    if (*(v17 + 96) || (re::TypeRegistry::typeInfo(v16[0], *(v17 + 80), v21), v21[0] == 1))
    {
    }
  }

  result = re::TypeMemberCollection::TypeMemberCollection(v16, *a3, a3[2]);
  if (v18)
  {
    for (i = 0; i < v18; ++i)
    {
      if (a1[64])
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v16, i, &v14);
      if (*(v15 + 28) == 1)
      {
        v10 = *(v15 + 16);
        if (strlen(v10) >= 3 && *v10 == 109)
        {
          v10 += 2 * (*(v10 + 1) == 95);
        }

        v11 = *(v15 + 32);
        v12 = *(v15 + 24);
        re::TypeRegistry::typeInfo(v14, *v15, v21);
        result = re::TypeInfo::TypeInfo(v13, &v22);
        if ((a1[64] & 1) == 0)
        {
          result = (*(*a1 + 72))(a1, v10, v11, a2 + v12, v13, v13, a4);
        }
      }
    }
  }

  return result;
}

uint64_t re::serializeBool<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeChar<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeI8<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeI16<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, __int16 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeI32<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeI64<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unint64_t *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeU8<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeU16<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned __int16 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeU32<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeU64<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, rapidjson::internal **a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeFloat<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeDouble<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, double *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeCString<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *__s, const re::TypeInfo *a3, const char **a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_18:
      goto LABEL_19;
    }

    v17 = **(this + 2);
    v18 = **(a6 + 2);
    if (v17 != v18)
    {
      goto LABEL_18;
    }

    v20 = WORD1(v17) == WORD1(v18);
    v19 = (v18 ^ v17) & 0xFFFFFF00000000;
    v20 = v20 && v19 == 0;
    if (!v20)
    {
      goto LABEL_18;
    }
  }

LABEL_4:
  if (a7)
  {
    LODWORD(v22) = 0;
    v14 = 0;
    if (!v13)
    {
      return v14 & 1;
    }

    goto LABEL_22;
  }

  v15 = *a4;
  v23 = 2 * (*a4 != 0);
  {
    if (v15)
    {
      if (*a4)
      {
        v16 = strlen(*a4);
        v22 = v16;
        {
          if (v16)
          {
          }

          goto LABEL_21;
        }
      }

      else
      {
        v22 = 0;
        {
LABEL_21:
        }
      }
    }

LABEL_22:
    v14 = *(a1 + 64) ^ 1;
    return v14 & 1;
  }

LABEL_19:
  v14 = 0;
  return v14 & 1;
}

uint64_t re::serializeStringID<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *__s, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_14;
  }

  v17 = re::TypeInfo::name(a6);
  if (*v17 >> 1 != 0x134375A94D9F7110 || (v18 = v17[1], v18 != "DynamicString") && strcmp(v18, "DynamicString"))
  {
    goto LABEL_21;
  }

LABEL_14:
  if (!a7)
  {
    v19 = strlen(*(a4 + 8));
    v22 = v19;
    {
      if (v19)
      {
      }

      goto LABEL_20;
    }

LABEL_21:
    v20 = 0;
    return v20 & 1;
  }

  v22 = 0;
  {
    goto LABEL_21;
  }

LABEL_20:
  v20 = *(a1 + 64) ^ 1;
  return v20 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *__s, const re::TypeInfo *a3, uint64_t a4, unint64_t **this, unint64_t **a6, int a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_16:
      goto LABEL_17;
    }

    v18 = *this[2];
    v19 = *a6[2];
    if (v18 != v19)
    {
      goto LABEL_16;
    }

    v21 = WORD1(v18) == WORD1(v19);
    v20 = (v19 ^ v18) & 0xFFFFFF00000000;
    v21 = v21 && v20 == 0;
    if (!v21)
    {
      goto LABEL_16;
    }
  }

LABEL_4:
  if (!a7)
  {
    v14 = *this;
    v15 = *this[2];
    v37[0] = 0x258C98EAAF29A10ALL;
    v37[1] = "CallbackSerializerAttribute";
    v16 = re::TypeRegistry::typeID(v14, v37, v38);
    if (v38[0] && (v33 = v38[1], v34 = v15, LODWORD(v35) = -1, (v16 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v14 + 768, &v33)) != 0))
    {
      v17 = *v16;
    }

    else
    {
      v17 = 0;
    }

    if (v37[0])
    {
      if (v37[0])
      {
      }
    }

    v23 = *v17;
    v24 = *(a1 + 264);
    v25 = *(a1 + 56);
    v35 = 0;
    v36 = 0;
    v33 = v25;
    v34 = 0;
    re::DynamicString::setCapacity(&v33, 0);
    if ((*(v23 + 72))(v24, v23, a4, &v33))
    {
      if (v34)
      {
        v26 = (v34 >> 1);
      }

      else
      {
        v26 = (v34 >> 1);
      }

      v38[0] = v26;
      {
        if (v26)
        {
          if (v34)
          {
            v27 = v35;
          }

          else
          {
            v27 = &v34 + 1;
          }
        }

        if (v33 && (v34 & 1) != 0)
        {
          (*(*v33 + 40))();
        }

        goto LABEL_7;
      }
    }

    else
    {
      re::TypeInfo::name(this);
    }

    if (v33 && (v34 & 1) != 0)
    {
      (*(*v33 + 40))();
    }

LABEL_17:
    v13 = 0;
    return v13 & 1;
  }

  v33 = 0;
  {
    goto LABEL_17;
  }

LABEL_7:
  v13 = *(a1 + 64) ^ 1;
  return v13 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString(_BYTE *a1, char *__s, const re::TypeInfo *a3, const char **a4, re *this, re::TypeInfo *a6)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_19:
LABEL_20:
      v20 = 0;
      return v20 & 1;
    }

    v16 = **(this + 2);
    v17 = **(a6 + 2);
    if (v16 != v17)
    {
      goto LABEL_19;
    }

    v19 = WORD1(v16) == WORD1(v17);
    v18 = (v17 ^ v16) & 0xFFFFFF00000000;
    v19 = v19 && v18 == 0;
    if (!v19)
    {
      goto LABEL_19;
    }
  }

LABEL_4:
  if (*a4)
  {
    if (a1[336] == 1 && (v25 = *a4, (v11 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet((a1 + 344), &v25)) != 0))
    {
      v12 = *v11;
      v24 = 1;
      LODWORD(v25) = v12;
      {
LABEL_22:
LABEL_23:
        v20 = a1[64] ^ 1;
        return v20 & 1;
      }
    }

    else
    {
      v24 = 2;
      {
        v13 = strlen(*a4);
        v25 = v13;
        {
          if (v13)
          {
          }

          v14 = *a4;
          v15 = **(this + 2);
          *&v23 = *this;
          *(&v23 + 1) = v15;
          re::internal::SharedObjectGraph::addObject((a1 + 336), v14, &v23);
          goto LABEL_23;
        }
      }
    }

    goto LABEL_20;
  }

  LODWORD(v25) = 0;
  v20 = 0;
  if (v21)
  {
    goto LABEL_22;
  }

  return v20 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer(uint64_t a1, char *a2, int a3, char **a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
{
  isPointerToPolymorphicType = re::TypeInfo::isPointerToPolymorphicType(this);
  if (this == a6)
  {
    goto LABEL_4;
  }

  if (*this == *a6)
  {
    v27 = **(this + 2);
    v28 = **(a6 + 2);
    if (v27 == v28)
    {
      v30 = WORD1(v27) == WORD1(v28);
      v29 = (v28 ^ v27) & 0xFFFFFF00000000;
      v30 = v30 && v29 == 0;
      if (v30)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, v13))
  {
LABEL_4:
    v15 = 0;
    goto LABEL_5;
  }

  if (*(a6 + 12) != 9 || isPointerToPolymorphicType && (!re::TypeInfo::isPointerToPolymorphicType(a6) || (v31 = re::TypeInfo::name(this), v32 = re::TypeInfo::name(a6), !re::StringID::operator==(v31, v32))))
  {
    goto LABEL_30;
  }

  v15 = 1;
LABEL_5:
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v50);
  re::TypeInfo::TypeInfo(v49, v51);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v50);
  re::TypeInfo::TypeInfo(v48, v51);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v22 = *v49[2];
    *&v47 = v49[0];
    *(&v47 + 1) = v22;
    if (!v49[0])
    {
      goto LABEL_8;
    }
  }

  else
  {
    re::internal::actualType(a4, this, &v47);
    if (!v47)
    {
LABEL_8:
      v16 = re::TypeInfo::name(this);
LABEL_30:
      v26 = 0;
      return v26 & 1;
    }
  }

  re::TypeRegistry::typeInfo(*this, &v47, &v50);
  re::TypeInfo::TypeInfo(v46, v51);
  if ((a7 & 1) == 0)
  {
    v23 = *a4;
    if (*a4)
    {
      if (*(a1 + 336) == 1)
      {
        v50 = *a4;
        v24 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 344, &v50);
        if (v24)
        {
          LODWORD(v50) = *v24;
          v52[0] = 1;
          {
            goto LABEL_30;
          }

          goto LABEL_17;
        }

        v23 = *a4;
      }

      v45 = v47;
      re::internal::SharedObjectGraph::beginObject((a1 + 336), v23, &v45);
      v44 = 2;
      {
        goto LABEL_30;
      }

      if (!isPointerToPolymorphicType)
      {
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, *a4, v49, v48, 0);
        }

        goto LABEL_45;
      }

      v34 = *a4;
      re::TypeInfo::TypeInfo(v52, v46);
      if (v15)
      {
        v35 = v48[0];
        v36 = re::TypeInfo::name(v46);
        re::TypeRegistry::typeInfo(v35, v36, &v50);
        if (v50 != 1)
        {
          v38 = re::TypeInfo::name(v46);
LABEL_45:
          if (*(a1 + 336) == 1)
          {
            --*(a1 + 488);
            ++*(a1 + 496);
          }

          goto LABEL_18;
        }

        re::TypeInfo::operator=(v52, v51);
      }

      {
        v37 = re::TypeInfo::polymorphicObjectName(v52);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, v37[1], 0, v34, v46, v52, 0);
        }
      }

      goto LABEL_45;
    }
  }

  LODWORD(v50) = 0;
  v26 = 0;
  if (v25)
  {
LABEL_17:
LABEL_18:
    v26 = *(a1 + 64) ^ 1;
  }

  return v26 & 1;
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference(_anonymous_namespace_ *result, unsigned int *a2)
{
  if ((*(result + 40) & 1) == 0)
  {
    v3 = result;
    if (result)
    {
    }
  }

  return result;
}

re *re::internal::introspected::write<re::internal::Serializer>(re *result, uint64_t a2, uint64_t a3, __n128 a4)
{
  v109 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = result;
  switch(*(a3 + 16))
  {
    case 0:
      v7 = *(a3 + 56);
      if (v7 > 5)
      {
        if (v7 <= 8)
        {
          if (v7 == 6)
          {
            goto LABEL_164;
          }

          if (v7 == 7)
          {
LABEL_73:
            v53 = *(*result + 200);
          }

          else
          {
LABEL_161:
            v53 = *(*result + 216);
          }

          return v53();
        }

        switch(v7)
        {
          case 9:
            goto LABEL_173;
          case 10:
            a4.n128_u32[0] = *a2;
            v97 = *(*result + 248);

            return v97(a4);
          case 11:
            a4.n128_u64[0] = *a2;
            v97 = *(*result + 256);

            return v97(a4);
        }

        return (*(*result + 56))(result, "Snapshot writer: Unexpected basic type: %s");
      }

      if (v7 <= 2)
      {
        if (v7 == 1)
        {
          v53 = *(*result + 160);
        }

        else
        {
          if (v7 != 2)
          {
            return (*(*result + 56))(result, "Snapshot writer: Unexpected basic type: %s");
          }

          v53 = *(*result + 176);
        }
      }

      else if (v7 == 3)
      {
        v53 = *(*result + 192);
      }

      else if (v7 == 4)
      {
        v53 = *(*result + 208);
      }

      else
      {
        v53 = *(*result + 232);
      }

      return v53();
    case 1:
      if ((atomic_load_explicit(&qword_1EE1C3C90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C3C90))
      {
        _MergedGlobals_556 = re::introspect<char>(0);
        __cxa_guard_release(&qword_1EE1C3C90);
      }

      v40 = *v5;
      v41 = *(a3 + 48);
      v42 = re::PolymorphicData::makeWithPointer(v41, v40, __src);
      v43 = *&__src[16];
      if (*&__src[16])
      {
        v44 = *&__src[8] == 0;
      }

      else
      {
        v44 = 1;
      }

      if (v44 || *__src == 0)
      {
        if (v41 == _MergedGlobals_556)
        {
          if ((*(*v6 + 144))(v6, v40 != 0))
          {
            if (v40)
            {
              v100 = strlen(v40);
            }

            else
            {
              v100 = -1;
            }

            (*(*v6 + 264))(v6, v40, v100);
          }

          return (*(*v6 + 152))(v6);
        }

        v101[0] = v41;
        v46 = re::globalAllocators(v42)[2];
        v104 = &unk_1F5D187D0;
        v105 = v101;
        v107 = v46;
        v108 = &v104;
        (*(*v6 + 280))(v6, v40, &v104);
      }

      else
      {
        __dst = 0;
        v63 = memcpy(&__dst, *__src, *(*&__src[8] + 20));
        v64 = __dst;
        v65 = *(v43 + 8);
        v66 = v65[3];
        while (v66 != __dst)
        {
          v66 = v65[8];
          v65 += 5;
        }

        v67 = v65[1];
        v101[0] = v41;
        v101[1] = v67;
        v68 = re::globalAllocators(v63)[2];
        v104 = &unk_1F5D18750;
        v105 = v101;
        v107 = v68;
        v108 = &v104;
        (*(*v6 + 288))(v6, v40, v64, &v104);
      }

      return re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(&v104);
    case 2:
      v34 = *(a3 + 48);
      v35 = *(v34 + 16);
      if (v35)
      {
        v36 = v35 == 9;
      }

      else
      {
        v36 = 1;
      }

      v37 = v36;
      v38 = (*(*result + 48))(result, v37, *(v34 + 28), *(v34 + 29));
      v39 = *(a3 + 64);
      if (v38)
      {
        v10 = *(*v6 + 272);
        v11 = *(v34 + 20) * v39;
        result = v6;
        v12 = v5;
        goto LABEL_109;
      }

      (*(*v6 + 88))(v6, v39);
      v61 = *(a3 + 64);
      if (v61 >= 1)
      {
        for (i = 0; i < v61; ++i)
        {
          re::internal::introspected::write<re::internal::Serializer>(v6, v5, v34);
          v5 = (v5 + *(v34 + 20));
          v61 = *(a3 + 64);
        }
      }

      v58 = *(*v6 + 96);
      v60 = v61;
      v59 = v6;
      goto LABEL_92;
    case 3:
      v13 = *(a3 + 48);
      v30 = *(v13 + 16);
      if (v30)
      {
        v31 = v30 == 9;
      }

      else
      {
        v31 = 1;
      }

      v32 = v31;
      v17 = (*(*a3 + 88))(a3, a2);
      if (!(*(*v6 + 48))(v6, v32, *(v13 + 28), *(v13 + 29)))
      {
        (*(*v6 + 88))(v6, v17);
        if (v17)
        {
          for (j = 0; j != v17; ++j)
          {
            v57 = (*(*a3 + 104))(a3, v5, j);
            re::internal::introspected::write<re::internal::Serializer>(v6, v57, v13);
          }
        }

        goto LABEL_87;
      }

      if (!v17)
      {
        goto LABEL_108;
      }

      goto LABEL_39;
    case 4:
      v13 = *(a3 + 48);
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = v14 == 9;
      }

      else
      {
        v15 = 1;
      }

      v16 = v15;
      v17 = (*(*a3 + 80))(a3, a2);
      if ((*(*v6 + 48))(v6, v16, *(v13 + 28), *(v13 + 29)))
      {
        if (v17)
        {
LABEL_39:
          v33 = (*(*a3 + 104))(a3, v5, 0);
          v10 = *(*v6 + 272);
          v12 = v33;
          v11 = v17 * *(v13 + 20);
          result = v6;
        }

        else
        {
LABEL_108:
          v10 = *(*v6 + 272);
          result = v6;
          v12 = 0;
          v11 = 0;
        }

LABEL_109:

        return v10(result, v12, v11);
      }

      else
      {
        (*(*v6 + 88))(v6, v17);
        if (v17)
        {
          for (k = 0; k != v17; ++k)
          {
            v55 = (*(*a3 + 104))(a3, v5, k);
            (*(*v6 + 296))(v6, v55, v13);
          }
        }

LABEL_87:
        v58 = *(*v6 + 96);
        v59 = v6;
        v60 = v17;
LABEL_92:

        return v58(v59, v60);
      }

    case 5:
      v21 = *(a3 + 48);
      v22 = (*(*a3 + 80))(a3, a2);
      (*(*v6 + 88))(v6, v22);
      v104 = (*(*a3 + 88))(a3, v5);
      LODWORD(v105) = v23;
      while (1)
      {
        v24 = (*(*a3 + 96))(a3, v5);
        if (v104 == v24 && v105 == v25 && WORD1(v105) == HIWORD(v25))
        {
          break;
        }

        v26 = (*(*a3 + 104))(a3, &v104);
        re::internal::introspected::write<re::internal::Serializer>(v6, v26, v21);
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v104);
      }

      return (*(*v6 + 96))(v6, v22);
    case 6:
      v47 = *(a2 + 8);
      v48 = (v47 & 1) == 0;
      if (v47)
      {
        v12 = *(a2 + 16);
      }

      else
      {
        v12 = a2 + 9;
      }

      v49 = v47 >> 1;
      v50 = v47 >> 1;
      if (v48)
      {
        v11 = v50;
      }

      else
      {
        v11 = v49;
      }

      v10 = *(*result + 264);
      goto LABEL_66;
    case 7:
      v51 = (*(*a3 + 80))(a3, a2);
      (*(*v6 + 104))(v6, v51, 0);
      operator new();
    case 8:
      v53 = *(a3 + 120);
      if (v53)
      {

        return v53();
      }

      v69 = *(a3 + 60);
      if ((v69 & 1) == 0)
      {
        result = (*(*result + 72))(result);
      }

      if (!*(a3 + 56))
      {
        goto LABEL_159;
      }

      v70 = 0;
      do
      {
        v71 = *(*(a3 + 64) + 8 * v70);
        if (*v71 != 1)
        {
          goto LABEL_152;
        }

        if (v69)
        {
          v72 = *(v71 + 40);
          if (v72 == 3)
          {
            goto LABEL_152;
          }
        }

        else
        {
          result = (*(*v6 + 64))(v6, *(v71 + 32), *(v71 + 8));
          v72 = *(v71 + 40);
        }

        v73 = *(v71 + 36);
        if (v72 > 1)
        {
          if (v72 != 2)
          {
            if (v72 != 3)
            {
              goto LABEL_152;
            }

LABEL_132:
            result = re::internal::introspected::write<re::internal::Serializer>(v6, v5 + v73, *(v71 + 16));
            goto LABEL_152;
          }

          v82 = *(*(*(v71 + 16) + 48) + 64);
          v83 = *v82;
          if (**v82 != 2)
          {
            v84 = (v82 + 1);
            do
            {
              v85 = *v84++;
              v83 = v85;
            }

            while (*v85 != 2);
          }

          v86 = *(v83 + 1);
          if (v86)
          {
            if (v5)
            {
              v87 = *(v71 + 64);
              v88 = *(v71 + 48);
              v104 = 0;
              result = memcpy(&v104, v5 + v87, *(v88 + 20));
              v89 = v104;
            }

            else
            {
              v89 = 0;
            }

            v92 = *v86;
            if (v92)
            {
              v93 = *(v86 + 1);
              while (*(v93 + 24) != v89)
              {
                v93 += 40;
                if (!--v92)
                {
                  goto LABEL_148;
                }
              }
            }

            else
            {
LABEL_148:
              v93 = 0;
            }

            v94 = *(v5 + v73);
            *__src = v93;
            v107 = re::globalAllocators(result)[2];
            v108 = &v104;
            v104 = &unk_1F5D18898;
            v105 = __src;
            (*(*v6 + 288))(v6, v94, v89, &v104);
            result = re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(&v104);
          }

          else
          {
            v91 = *re::foundationSerializationLogObjects(result);
            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              re::getPrettyTypeName(a3, &v104);
              v95 = &v105 + 1;
              if (v105)
              {
                v95 = v106;
              }

              v96 = *(v71 + 8);
              *__src = 136315394;
              *&__src[4] = v95;
              *&__src[12] = 2080;
              *&__src[14] = v96;
              _os_log_error_impl(&dword_1E1C61000, v91, OS_LOG_TYPE_ERROR, "No polymorphic table for %s.%s", __src, 0x16u);
              if (v104 && (v105 & 1) != 0)
              {
                (*(*v104 + 40))();
              }
            }

            (*(*v6 + 144))(v6, 0);
            result = (*(*v6 + 152))(v6);
          }
        }

        else
        {
          if (!v72)
          {
            goto LABEL_132;
          }

          if (v72 == 1)
          {
            v74 = *(v5 + v73);
            v75 = *(v71 + 16);
            if (v74)
            {
              v76 = *(v71 + 48);
              if (!v76)
              {
                (*(*v6 + 56))(v6, "Snapshot writer failed to get array length for member '%s' in %s.", *(v71 + 8), *(a3 + 48));
                return (*(*v6 + 88))(v6, 0);
              }

              v77 = *(v71 + 64);
              v104 = 0;
              memcpy(&v104, v5 + v77, *(v76 + 20));
              v78 = *(v75 + 48);
              v79 = v104;
              if (*(v78 + 16))
              {
                (*(*v6 + 88))(v6, v104);
                if (v79)
                {
                  v80 = *(v75 + 48);
                  v81 = v79;
                  do
                  {
                    re::internal::introspected::write<re::internal::Serializer>(v6, v74, v80);
                    v80 = *(v75 + 48);
                    v74 += *(v80 + 20);
                    v81 = (v81 - 1);
                  }

                  while (v81);
                }

                result = (*(*v6 + 96))(v6, v79);
              }

              else
              {
                result = (*(*v6 + 272))(v6, v74, v104 * *(v78 + 20));
              }
            }

            else
            {
              v90 = *v6;
              if (*(*(v75 + 48) + 16))
              {
                result = (*(v90 + 88))(v6, 0);
              }

              else
              {
                result = (*(v90 + 272))(v6, 0, 0);
              }
            }
          }
        }

LABEL_152:
        ++v70;
      }

      while (v70 < *(a3 + 56));
LABEL_159:
      if ((v69 & 1) == 0)
      {
        return (*(*v6 + 80))(v6);
      }

      return result;
    case 9:
      v52 = *(a3 + 20);
      if (v52 > 3)
      {
        if (v52 == 4)
        {
          goto LABEL_161;
        }

        if (v52 != 8)
        {
          return (*(*result + 56))(result, "Snapshot writer: Unexpected enum size %d");
        }

LABEL_173:
        v53 = *(*result + 240);
      }

      else
      {
        if (v52 != 1)
        {
          if (v52 == 2)
          {
            goto LABEL_73;
          }

          return (*(*result + 56))(result, "Snapshot writer: Unexpected enum size %d");
        }

LABEL_164:
        v53 = *(*result + 184);
      }

      return v53();
    case 0xA:
      v8 = *(a2 + 8);
      v9 = strlen(v8);
      v10 = *(*v6 + 264);
      v11 = v9;
      result = v6;
      v12 = v8;
LABEL_66:

      return v10(result, v12, v11);
    case 0xB:
      v105 = 0;
      v106 = 0;
      v107 = 0;
      re::DynamicString::setCapacity(&v104, 0);
      v27 = *(a3 + 72);
      v28 = (*(*v6 + 32))(v6);
      if ((v27(v28, a3, v5, &v104) & 1) == 0)
      {
        if (v105)
        {
          v105 = 1;
          v29 = v106;
        }

        else
        {
          LOBYTE(v105) = 0;
          v29 = &v105 + 1;
        }

        *v29 = 0;
      }

      if (v105)
      {
        v98 = v106;
      }

      else
      {
        v98 = &v105 + 1;
      }

      if (v105)
      {
        v99 = v105 >> 1;
      }

      else
      {
        v99 = v105 >> 1;
      }

      (*(*v6 + 264))(v6, v98, v99);
      result = v104;
      if (v104 && (v105 & 1) != 0)
      {
        return (*(*v104 + 40))();
      }

      return result;
    case 0xD:
      v18 = (*(*a3 + 56))(a3, a2);
      if ((*(*v6 + 144))(v6, v18))
      {
        v19 = (*(*a3 + 80))(a3, v5);
        re::internal::introspected::write<re::internal::Serializer>(v6, v19, *(a3 + 48));
      }

      v20 = *(*v6 + 152);

      return v20(v6);
    default:
      return result;
  }
}

uint64_t re::internal::introspected::read<re::internal::Deserializer>(uint64_t result, uint64_t a2, void *a3)
{
  v127 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = result;
  switch(*(a3 + 4))
  {
    case 0:
      v6 = *(a3 + 14);
      v7 = *result;
      v8 = *result;
      if (v6 <= 5)
      {
        if (v6 > 2)
        {
          if (v6 == 3)
          {
            v39 = v7[28];
          }

          else if (v6 == 4)
          {
            v39 = v7[30];
          }

          else
          {
            v39 = v7[33];
          }

          return v39();
        }

        if (v6 == 1)
        {
          v39 = v7[24];

          return v39();
        }

        if (v6 == 2)
        {
          v39 = v7[26];

          return v39();
        }
      }

      else
      {
        if (v6 <= 8)
        {
          if (v6 == 6)
          {
            goto LABEL_225;
          }

          if (v6 == 7)
          {
            goto LABEL_69;
          }

          goto LABEL_222;
        }

        switch(v6)
        {
          case 9:
            goto LABEL_236;
          case 10:
            v39 = v7[35];

            return v39();
          case 11:
            v39 = v7[36];

            return v39();
        }
      }

      return (v7[7])(result, "unexpected basic type: %s");
    case 1:
      if ((atomic_load_explicit(&qword_1EE1C3CA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C3CA0))
      {
        qword_1EE1C3C98 = re::introspect<char>(0);
        __cxa_guard_release(&qword_1EE1C3CA0);
      }

      v34 = a3[6];
      if (v34 != qword_1EE1C3C98)
      {
        v35 = re::PolymorphicData::makeWithPointer(v34, *v4, &v119);
        if (v120 && *(&v119 + 1))
        {
          v116 = v34;
          v117 = v119;
          v118 = v120;
          v36 = re::globalAllocators(v35)[2];
          __src = &unk_1F5D18918;
          v123 = &v116;
          v125 = v36;
          p_src = &__src;
          (*(*v5 + 320))(v5, v4, &__src);
          return re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::destroyCallable(&__src);
        }

        else
        {
          v116 = v34;
          v105 = re::globalAllocators(v35)[2];
          __src = &unk_1F5D18998;
          v123 = &v116;
          v125 = v105;
          p_src = &__src;
          (*(*v5 + 312))(v5, v4, &__src);
          return re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::destroyCallable(&__src);
        }
      }

      if (((*(*v5 + 168))(v5) & 1) == 0)
      {
        if (*v4)
        {
          v106 = (*(*v5 + 40))(v5);
          (*(*v106 + 40))(v106, *v4);
          *v4 = 0;
        }

        return (*(*v5 + 176))(v5);
      }

      __src = 0;
      result = (*(*v5 + 184))(v5, &__src);
      if (!result)
      {
        return (*(*v5 + 176))(v5);
      }

      v63 = *v4;
      if (!*v4)
      {
        goto LABEL_269;
      }

      result = strlen(*v4);
      if (result == __src)
      {
        v64 = result;
        if (result == -1)
        {
          return result;
        }
      }

      else
      {
        v111 = (*(*v5 + 40))(v5);
        result = (*(*v111 + 40))(v111, *v4);
        *v4 = 0;
LABEL_269:
        if (__src == -1)
        {
          return result;
        }

        v112 = (*(*v5 + 40))(v5);
        v113 = (*(*v112 + 32))(v112, __src + 1, 0);
        *v4 = v113;
        v64 = __src;
        if (!v113)
        {
          return (*(*v5 + 56))(v5, "C String of %zu bytes");
        }

        v63 = v113;
      }

      (*(*v5 + 296))(v5, v63, v64);
      *(*v4 + __src) = 0;
      return (*(*v5 + 176))(v5);
    case 2:
      v31 = a3[6];
      __src = 0;
      if ((*(v31 + 28) & 1) != 0 && (*(*result + 160))(result, &__src, 1))
      {
        v32 = __src;
        v33 = *(v31 + 20);
        if (__src % v33)
        {
          return (*(*v5 + 56))(v5, "C Array element size mismatch: expected multiple of %d, got %zu");
        }

        else
        {
          if (__src / v33 == *(a3 + 16))
          {
            v110 = v5;
            v109 = v4;
            return re::internal::Deserializer::readRaw(v110, v109, v32);
          }

          return (*(*v5 + 56))(v5, "C Array size mismatch: expected %d, got %zu");
        }
      }

      else
      {
        result = (*(*v5 + 104))(v5, &__src);
        if (result)
        {
          v52 = __src;
          v53 = *(a3 + 16);
          v54 = *v5;
          if (__src == v53)
          {
            result = (*(v54 + 112))(v5, &__src);
            v55 = 0;
            if ((result & 1) == 0)
            {
              do
              {
                if (v55 >= *(a3 + 16))
                {
                  re::internal::Deserializer::skipNext(v5);
                }

                else
                {
                  re::internal::introspected::read<re::internal::Deserializer>(v5, v4, v31);
                  v4 = (v4 + *(v31 + 20));
                  ++v55;
                }

                result = (*(*v5 + 112))(v5, &__src);
              }

              while (!result);
            }

            if (v52 != v55)
            {
              return (*(*v5 + 56))(v5, "size mismatch: expected %zu, got %d");
            }
          }

          else
          {
            return (*(v54 + 56))(v5, "unexpected C Array size: expected %d, got %zu", v53, __src);
          }
        }
      }

      return result;
    case 3:
      v30 = a3[6];
      __src = 0;
      if ((*(v30 + 28) & 1) != 0 && (*(*result + 160))(result, &__src, 1))
      {
        v18 = __src;
        if (__src % *(v30 + 20))
        {
          return re::internal::Deserializer::advance(v5, v18);
        }

        v107 = (*(*v5 + 40))(v5);
        v108 = (*(*v5 + 32))(v5);
        result = (*(*a3 + 72))(a3, v107, v108, v4, __src / *(v30 + 20));
        if (__src)
        {
          goto LABEL_249;
        }
      }

      else
      {
        result = (*(*v5 + 104))(v5, &__src);
        if (result)
        {
          v48 = (*(*v5 + 40))(v5);
          v49 = (*(*v5 + 32))(v5);
          (*(*a3 + 72))(a3, v48, v49, v4, __src);
          v44 = __src;
          result = (*(*v5 + 112))(v5, &__src);
          v45 = 0;
          if ((result & 1) == 0)
          {
            do
            {
              if (v44 <= v45)
              {
                re::internal::Deserializer::skipNext(v5);
              }

              else
              {
                v50 = v45++;
                v51 = (*(*a3 + 96))(a3, v4, v50);
                re::internal::introspected::read<re::internal::Deserializer>(v5, v51, v30);
              }

              result = (*(*v5 + 112))(v5, &__src);
            }

            while (!result);
          }

          goto LABEL_88;
        }
      }

      return result;
    case 4:
      v15 = a3[6];
      __src = 0;
      if ((*(v15 + 28) & 1) != 0 && (*(*result + 160))(result, &__src, 1))
      {
        if (((*(*a3 + 88))(a3, v4) & 1) == 0)
        {
          v16 = (*(*v5 + 40))(v5);
          v17 = (*(*v5 + 32))(v5);
          (*(*a3 + 64))(a3, v4, v16, v17, __src / *(v15 + 20));
        }

        v18 = __src;
        v19 = *(v15 + 20);
        v20 = __src / v19;
        if (__src % v19)
        {
          return re::internal::Deserializer::advance(v5, v18);
        }

        else
        {
          result = (*(*a3 + 80))(a3, v4);
          if (v20 == result)
          {
            if (__src)
            {
LABEL_249:
              v109 = (*(*a3 + 96))(a3, v4, 0);
              v32 = __src;
              v110 = v5;
              return re::internal::Deserializer::readRaw(v110, v109, v32);
            }
          }

          else
          {
            (*(*a3 + 80))(a3, v4);
            return (*(*v5 + 56))(v5, "unexpected data size reading FixedArray: expected %zu, got %zu");
          }
        }
      }

      else
      {
        result = (*(*v5 + 104))(v5, &__src);
        if (result)
        {
          if (((*(*a3 + 88))(a3, v4) & 1) == 0)
          {
            v41 = (*(*v5 + 40))(v5);
            v42 = (*(*v5 + 32))(v5);
            (*(*a3 + 64))(a3, v4, v41, v42, __src);
          }

          v43 = (*(*a3 + 80))(a3, v4);
          if (v43 == __src)
          {
            v44 = v43;
            result = (*(*v5 + 112))(v5, &__src);
            v45 = 0;
            if ((result & 1) == 0)
            {
              do
              {
                if ((*(*a3 + 80))(a3, v4) <= v45)
                {
                  re::internal::Deserializer::skipNext(v5);
                }

                else
                {
                  v46 = v45++;
                  v47 = (*(*a3 + 96))(a3, v4, v46);
                  re::internal::introspected::read<re::internal::Deserializer>(v5, v47, v15);
                }

                result = (*(*v5 + 112))(v5, &__src);
              }

              while (!result);
            }

LABEL_88:
            if (v44 != v45)
            {
              return (*(*v5 + 56))(v5, "count mismatch: expected %zu, got %d");
            }
          }

          else
          {
            (*(*a3 + 80))(a3, v4);
            return (*(*v5 + 56))(v5, "unexpected FixedArray size: expected %zu, got %zu");
          }
        }
      }

      return result;
    case 5:
      if ((*(*a3 + 80))(a3, a2))
      {
        v24 = *(*v5 + 56);

        return v24(v5, "cannot read into existing DataArray");
      }

      else
      {
        v57 = a3[6];
        __src = 0;
        result = (*(*v5 + 104))(v5, &__src);
        if (result)
        {
          v58 = __src;
          result = (*(*v5 + 112))(v5, &__src);
          if ((result & 1) == 0)
          {
            v59 = 0;
            do
            {
              if (v59 >= v58)
              {
                re::internal::Deserializer::skipNext(v5);
              }

              else
              {
                v60 = (*(*v5 + 40))(v5);
                v61 = (*(*v5 + 32))(v5);
                v62 = (*(*a3 + 72))(a3, v60, v61, v4);
                re::internal::introspected::read<re::internal::Deserializer>(v5, v62, v57);
              }

              result = (*(*v5 + 112))(v5, &__src);
              ++v59;
            }

            while (!result);
          }
        }
      }

      return result;
    case 6:
      __src = 0;
      result = (*(*result + 184))(result, &__src);
      if (result)
      {
        re::DynamicString::resize(v4, __src, 0);
        if (v4[1])
        {
          v37 = v4[2];
        }

        else
        {
          v37 = (v4 + 9);
        }

        return (*(*v5 + 296))(v5, v37, __src);
      }

      return result;
    case 7:

      return re::internal::introspected::read<re::internal::Deserializer>(result, a2, a3);
    case 8:
      v40 = a3[16];
      if (v40)
      {

        return v40();
      }

      v65 = *(a3 + 15);
      *&v119 = a3[6];
      if ((v65 & 1) == 0)
      {
        result = (*(*result + 88))(result, &v119);
        if (!result)
        {
          return result;
        }
      }

      if (*(a3 + 14))
      {
        v66 = 0;
        while (1)
        {
          v67 = *(a3[8] + 8 * v66);
          if (*v67 != 1)
          {
            goto LABEL_164;
          }

          if (v65)
          {
            v68 = *(v67 + 40);
            if (v68 == 3)
            {
              goto LABEL_164;
            }
          }

          else
          {
            result = (*(*v5 + 72))(v5, *(v67 + 32), *(v67 + 8));
            if (!result)
            {
              goto LABEL_164;
            }

            v68 = *(v67 + 40);
          }

          if (v68 <= 1)
          {
            break;
          }

          if (v68 == 2)
          {
            v76 = *(v67 + 36);
            v116 = a3;
            *&v117 = v67;
            *(&v117 + 1) = v4;
            v77 = re::globalAllocators(result)[2];
            __src = &unk_1F5D18C58;
            v123 = &v116;
            v125 = v77;
            p_src = &__src;
            (*(*v5 + 320))(v5, v4 + v76, &__src);
            result = re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::destroyCallable(&__src);
            goto LABEL_162;
          }

          if (v68 != 3)
          {
            goto LABEL_162;
          }

          if ((v65 & 1) == 0)
          {
            re::internal::introspected::read<re::internal::Deserializer>(v5, v4 + *(v67 + 36), *(v67 + 16));
LABEL_163:
            result = (*(*v5 + 80))(v5);
          }

LABEL_164:
          if (++v66 >= *(a3 + 14))
          {
            goto LABEL_228;
          }
        }

        if (!v68)
        {
          result = re::internal::introspected::read<re::internal::Deserializer>(v5, v4 + *(v67 + 36), *(v67 + 16));
          goto LABEL_162;
        }

        if (v68 != 1)
        {
          goto LABEL_162;
        }

        v69 = *(v67 + 36);
        v70 = *(v67 + 16);
        v116 = 0;
        __dst = 0;
        if (*(v4 + v69))
        {
          v71 = *(v67 + 48);
          if (v71)
          {
            memcpy(&__dst, v4 + *(v67 + 64), *(v71 + 20));
          }
        }

        v72 = *v5;
        if (!*(*(v70 + 48) + 16))
        {
          result = (*(v72 + 160))(v5, &v116, 0);
          if (result)
          {
            v78 = v116;
            v79 = *(*(v70 + 48) + 20);
            v80 = v116 / v79;
            if (v116 % v79)
            {
              return (*(*v5 + 56))(v5, "invalid array data, data size = %zu, element size = %u");
            }

            v81 = *(v4 + v69);
            if (v81 && v80 != __dst)
            {
              v82 = (*(*v5 + 40))(v5);
              (*(*v82 + 40))(v82, *(v4 + v69));
              v81 = 0;
              *(v4 + v69) = 0;
              v78 = v116;
            }

            if (v81)
            {
              v83 = 1;
            }

            else
            {
              v83 = v78 == 0;
            }

            if (!v83)
            {
              v84 = (*(*v5 + 40))(v5);
              v81 = (*(*v84 + 32))(v84, v116, 0);
              *(v4 + v69) = v81;
              if (!v81)
              {
                return (*(*v5 + 56))(v5, "allocation failure, array with size: %zu bytes");
              }
            }

            __src = v80;
            if (*(v67 + 40) == 1)
            {
              v85 = *(v67 + 48);
              if (v85)
              {
                memcpy(v4 + *(v67 + 64), &__src, *(v85 + 20));
                v81 = *(v4 + v69);
              }
            }

            result = re::internal::Deserializer::readRaw(v5, v81, v116);
          }

LABEL_162:
          if ((v65 & 1) == 0)
          {
            goto LABEL_163;
          }

          goto LABEL_164;
        }

        result = (*(v72 + 104))(v5, &v116);
        if (!result)
        {
          goto LABEL_162;
        }

        v73 = v116;
        if (!*(v4 + v69))
        {
          v86 = 1;
          goto LABEL_199;
        }

        v74 = __dst;
        if (__dst == v116)
        {
LABEL_209:
          __src = v73;
          if (*(v67 + 40) == 1)
          {
            v100 = *(v67 + 48);
            if (v100)
            {
              memcpy(v4 + *(v67 + 64), &__src, *(v100 + 20));
            }
          }

          v101 = *(v4 + v69);
          result = (*(*v5 + 112))(v5, &v116);
          if ((result & 1) == 0)
          {
            v102 = 0;
            do
            {
              if (v102 >= v73)
              {
                LOBYTE(__src) = 0;
                Raw = re::internal::Deserializer::readRaw(v5, &__src, 1uLL);
                v104 = __src;
                if (!Raw)
                {
                  v104 = 0;
                }

                re::internal::Deserializer::skip(v5, v104);
              }

              else
              {
                re::internal::introspected::read<re::internal::Deserializer>(v5, v101, *(v70 + 48));
                v101 += *(*(v70 + 48) + 20);
              }

              result = (*(*v5 + 112))(v5, &v116);
              ++v102;
            }

            while ((result & 1) == 0);
          }

          goto LABEL_162;
        }

        v125 = 0;
        v75 = *(*(v70 + 48) + 16);
        if (v75 > 6)
        {
          if (v75 > 9)
          {
            if (v75 == 10)
            {
              std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#4},void>(&__src);
              goto LABEL_194;
            }

            if (v75 == 13)
            {
              std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2},void>(&__src, v70);
              goto LABEL_194;
            }
          }

          else
          {
            if (v75 == 7)
            {
              std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8},void>(&__src, v70);
              goto LABEL_194;
            }

            if (v75 == 8)
            {
              std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},void>(&__src, v5, v70);
              goto LABEL_194;
            }
          }
        }

        else
        {
          if (v75 > 4)
          {
            if (v75 == 5)
            {
              std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7},void>(&__src, v70);
            }

            else
            {
              std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#3},void>(&__src);
            }

LABEL_194:
            if (v74 && v125)
            {
              for (i = 0; i != v74; ++i)
              {
                std::function<void ()(void *)>::operator()(&__src, *(v4 + v69) + *(*(v70 + 48) + 20) * i);
              }
            }

            goto LABEL_198;
          }

          if (v75 == 3)
          {
            std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5},void>(&__src, v70);
            goto LABEL_194;
          }

          if (v75 == 4)
          {
            std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6},void>(&__src, v70);
            goto LABEL_194;
          }
        }

LABEL_198:
        v88 = (*(*v5 + 40))(v5);
        (*(*v88 + 40))(v88, *(v4 + v69));
        *(v4 + v69) = 0;
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](&__src);
        v73 = v116;
        v86 = *(v4 + v69) == 0;
LABEL_199:
        if (v86 && v73 != 0)
        {
          v90 = (*(*v5 + 40))(v5);
          v91 = (*(*v90 + 32))(v90, v116 * *(*(v70 + 48) + 20), 0);
          *(v4 + v69) = v91;
          if (!v91)
          {
            return (*(*v5 + 56))(v5, "allocation failure, array with size: %zu %d byte elements");
          }

          if (v116)
          {
            v114 = v65;
            for (j = 0; j < v116; ++j)
            {
              v93 = (*(v4 + v69) + *(*(v70 + 48) + 20) * j);
              v115 = (*(*v5 + 40))(v5);
              v94 = (*(*v5 + 32))(v5);
              v95 = v4;
              v96 = v69;
              v97 = *(v70 + 48);
              re::introspectionCallConstructor(v94, v97, v93);
              v98 = v97;
              v69 = v96;
              v4 = v95;
              re::introspectionInitElement(v115, v99, v98, v93);
              v73 = v116;
            }

            v65 = v114;
          }

          else
          {
            v73 = 0;
          }
        }

        goto LABEL_209;
      }

LABEL_228:
      if ((v65 & 1) == 0)
      {
        return (*(*v5 + 96))(v5, v119);
      }

      return result;
    case 9:
      v38 = *(a3 + 5);
      v8 = *result;
      if (v38 > 3)
      {
        if (v38 == 4)
        {
LABEL_222:
          v39 = v8[31];

          return v39();
        }

        if (v38 == 8)
        {
LABEL_236:
          v39 = v8[34];

          return v39();
        }
      }

      else
      {
        if (v38 == 1)
        {
LABEL_225:
          v39 = v8[27];

          return v39();
        }

        if (v38 == 2)
        {
LABEL_69:
          v39 = v8[29];

          return v39();
        }
      }

      return (*(*result + 56))(result, "unexpected enum size %d");
    case 0xA:
      *&v119 = 0;
      result = (*(*result + 184))(result, &v119);
      if (result)
      {
        re::DynamicOverflowArray<char,256ul>::DynamicOverflowArray(&__src, v119);
        v9 = &v125;
        if (v124)
        {
          v10 = &v125;
        }

        else
        {
          v10 = p_src;
        }

        v11 = (*(*v5 + 296))(v5, v10, v119);
        if ((v124 & 1) == 0)
        {
          v9 = p_src;
        }

        v12 = v119;
        v116 = 0;
        *&v117 = &str_67;
        v13 = re::StringID::operator=(v4, &v116);
        if (v116)
        {
          if (v116)
          {
          }
        }

        result = __src;
        if (__src)
        {
          if ((v124 & 1) == 0)
          {
            v14 = p_src;
            return (*(*result + 40))(result, v14);
          }
        }
      }

      return result;
    case 0xB:
      v123 = 0;
      v124 = 0;
      v125 = 0;
      re::DynamicString::setCapacity(&__src, 0);
      v116 = 0;
      if ((*(*v5 + 184))(v5, &v116))
      {
        re::DynamicString::resize(&__src, v116, 0);
        if (v123)
        {
          v25 = v124;
        }

        else
        {
          v25 = &v123 + 1;
        }

        (*(*v5 + 296))(v5, v25, v116);
      }

      v26 = a3[10];
      v27 = (*(*v5 + 40))(v5);
      v28 = (*(*v5 + 32))(v5);
      if (v123)
      {
        v29 = v124;
      }

      else
      {
        v29 = &v123 + 1;
      }

      v26(v27, v28, a3, v4, v29);
      result = __src;
      if (__src && (v123 & 1) != 0)
      {
        v14 = v124;
        return (*(*result + 40))(result, v14);
      }

      return result;
    case 0xD:
      v21 = (*(*result + 168))(result);
      v22 = *(*a3 + 64);
      if (v21)
      {
        v22(a3, v4, 1);
        v23 = (*(*a3 + 72))(a3, v4);
        re::internal::introspected::read<re::internal::Deserializer>(v5, v23, a3[6]);
      }

      else
      {
        v22(a3, v4, 0);
      }

      v56 = *(*v5 + 176);

      return v56(v5);
    default:
      return result;
  }
}

uint64_t re::useSnapshotOPACK(re *this)
{
  v1 = &unk_1EE1C6000;
  {
    v1 = &unk_1EE1C6000;
    if (v3)
    {
      re::useSnapshotOPACK(void)::enable = re::useSnapshotOPACK(void)::$_0::operator()(v3, v4);
      v1 = &unk_1EE1C6000;
    }
  }

  return v1[3632];
}

uint64_t re::useSnapshotOPACK(void)::$_0::operator()(uint64_t a1, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("useSnapshotOPACK", a2, v6);
  if (LOBYTE(v6[0]))
  {
    v3 = BYTE1(v6[0]);
  }

  else
  {
    v3 = 0;
  }

  v4 = *re::foundationSerializationLogObjects(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "useSnapshotOPACK=%d.", v6, 8u);
  }

  return v3 & 1;
}

uint64_t re::serializeOPACK@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v27 = &unk_1F5D18470;
  v28 = 0u;
  v29 = 0u;
  v12 = re::DynamicString::setCapacity(&v28, 0);
  memset(v34, 0, 28);
  v33 = 0u;
  memset(&v34[8], 0, 44);
  v35 = 0x7FFFFFFFLL;
  v30 = a1;
  v31 = a4;
  v32 = a5;
  memset(buf, 0, sizeof(buf));
  v37 = re::globalAllocators(v12)[2];
  v38 = 0;
  v39 = 0;
  re::DynamicArray<re::internal::Serializer::SharedObject>::add(v34, buf);
  re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(&buf[8]);
  if (!*&v34[10] || (v13 = **&v34[12], v13 == 0x7FFFFFFF))
  {
LABEL_3:
    v14 = re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::allocEntry(&v34[10], 0, 0);
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    ++HIDWORD(v35);
    goto LABEL_4;
  }

  while (*(*&v34[14] + 32 * v13 + 8))
  {
    v13 = *(*&v34[14] + 32 * v13) & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      goto LABEL_3;
    }
  }

LABEL_4:
  v27[9](&v27);
  v15.n128_f64[0] = (v27[8])(&v27, 10, "root");
  re::internal::introspected::write<re::internal::Serializer>(&v27, a3, a2, v15);
  (v27[8])(&v27, 20, "shared");
  v27[9](&v27);
  v16 = *&v34[4];
  if (*&v34[4])
  {
    v17 = 0;
    v18 = 0;
    do
    {
      if (*(*&v34[8] + v17))
      {
        v19 = *&v34[8] + v17;
        if (*(*&v34[8] + v17 + 48))
        {
          v20 = 0;
        }

        else
        {
          v20 = v18;
        }

        (v27[8])(&v27, v20, 0);
        *buf = *v19;
        (*(**(v19 + 40) + 16))(*(v19 + 40), &v27, buf);
        v16 = *&v34[4];
      }

      ++v18;
      v17 += 56;
    }

    while (v16 > v18);
  }

  v27[10](&v27);
  v27[10](&v27);
  v21 = (*(*v30 + 24))(v30, (DWORD2(v33) - v33));
  if (BYTE8(v28))
  {
    v22 = *(&v28 + 1) >> 1;
  }

  else
  {
    v22 = BYTE8(v28) >> 1;
  }

  if (v22)
  {
    v23 = *re::foundationSerializationLogObjects(v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      if (BYTE8(v28))
      {
        v26 = v29;
      }

      else
      {
        v26 = &v28 + 9;
      }

      *buf = 136315138;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "serializeOPACK failed: %s", buf, 0xCu);
    }

    re::DynamicString::DynamicString(buf, &v28);
    *a6 = 0;
    v24 = *&buf[24];
    *(a6 + 8) = *buf;
    *(a6 + 32) = v24;
    *(a6 + 16) = *&buf[8];
  }

  else
  {
    *a6 = 1;
  }

  v27 = &unk_1F5D18470;
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v34[10]);
  re::DynamicArray<re::internal::Serializer::SharedObject>::deinit(v34);
  result = v28;
  if (v28)
  {
    if (BYTE8(v28))
    {
      return (*(*v28 + 40))();
    }
  }

  return result;
}

void re::internal::Serializer::~Serializer(re::internal::Serializer *this)
{
  *this = &unk_1F5D18470;
  v2 = (this + 8);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 15);
  re::DynamicArray<re::internal::Serializer::SharedObject>::deinit(this + 80);
  re::DynamicString::deinit(v2);
}

{
  *this = &unk_1F5D18470;
  v2 = (this + 8);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 15);
  re::DynamicArray<re::internal::Serializer::SharedObject>::deinit(this + 80);
  re::DynamicString::deinit(v2);

  JUMPOUT(0x1E6906520);
}

uint64_t re::deserializeOPACKIntoBuffer@<X0>(uint64_t a1@<X0>, re *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v128 = *MEMORY[0x1E69E9840];
  v14 = (*(*a1 + 40))(a1);
  v103 = &unk_1F5D185B0;
  v104 = 0u;
  v105 = 0u;
  re::DynamicString::setCapacity(&v104, 0);
  v110 = 0u;
  v111 = -1;
  v112 = 0;
  v113 = 0u;
  v114 = 0;
  memset(v115, 0, sizeof(v115));
  v116 = 0x7FFFFFFFLL;
  memset(v117, 0, sizeof(v117));
  v118 = 0;
  v119 = 0x7FFFFFFFLL;
  v106 = a1;
  v107 = a4;
  v108 = a5;
  v109 = a6;
  v15 = unk_1F5D18608(&v103, 0);
  v16 = v103;
  if (v15)
  {
    if (v103[9](&v103, 10, "root"))
    {
      goto LABEL_6;
    }

    v16 = v103;
    v17 = "Expected field 10 (root)";
  }

  else
  {
    v17 = "Expected object";
  }

  (v16[7])(&v103, v17);
LABEL_6:
  re::internal::introspected::read<re::internal::Deserializer>(&v103, a3, a2);
  (v103[10])(&v103);
  if (!v103[9](&v103, 20, "shared"))
  {
LABEL_87:
    (v103[12])(&v103, 0);
    v67 = (*(*v106 + 24))(v106, (HIDWORD(v110) - DWORD2(v110)));
    goto LABEL_92;
  }

  v101[0] = 0;
  if ((v103[15](&v103, v101, 0) & 1) == 0)
  {
    v67 = (v103[7])(&v103, "Expected dictionary of shared objects");
    goto LABEL_92;
  }

  v100 = a2;
  v99 = a7;
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v124 = 0x7FFFFFFFLL;
  if (((v103[19])(&v103, v101) & 1) == 0)
  {
    LODWORD(v18) = 0;
    do
    {
      v18 = (v18 + 1);
      v120 = 0;
      (v103[31])(&v103, &v120);
      v19 = re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(&v115[8], v18);
      if (!v19 || (v20 = v19, (v21 = *(v19 + 32)) == 0))
      {
        v26 = re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v117, v18);
        if (!v26 || (v27 = v26, !*(v26 + 32)))
        {
          buf[0] = 0;
          Raw = re::internal::Deserializer::readRaw(&v103, buf, 1uLL);
          v35 = buf[0];
          if (!Raw)
          {
            v35 = 0;
          }

          re::internal::Deserializer::skip(&v103, v35);
          continue;
        }

        if (((v103[11])(&v103, 0) & 1) == 0)
        {
          (v103[7])(&v103, "expected object when deserializing polymorphic object");
          goto LABEL_91;
        }

        if ((v103[9](&v103, 1, "") & 1) == 0)
        {
          (v103[7])(&v103, "expected field 1 when deserializing polymorphic object");
          goto LABEL_91;
        }

        *v125 = 0;
        (v103[34])(&v103, v125);
        (v103[10])(&v103);
        if (!v103[9](&v103, 10, ""))
        {
          (v103[7])(&v103, "expected field 10 when deserializing polymorphic object");
          goto LABEL_91;
        }

        v28 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) >> 27));
        v29 = v28 ^ (v28 >> 31);
        if (v121)
        {
          v30 = v29 % DWORD2(v122);
          v31 = *(*(&v121 + 1) + 4 * v30);
          if (v31 == 0x7FFFFFFF)
          {
            goto LABEL_35;
          }

          if (*(v122 + 32 * v31 + 4) == v18)
          {
LABEL_27:
            v32 = v122 + 32 * v31 + 8;
            v33 = *v125;
          }

          else
          {
            while (1)
            {
              v31 = *(v122 + 32 * v31) & 0x7FFFFFFF;
              if (v31 == 0x7FFFFFFF)
              {
                break;
              }

              if (*(v122 + 32 * v31 + 4) == v18)
              {
                goto LABEL_27;
              }
            }

LABEL_35:
            v37 = re::HashTable<unsigned int,re::Pair<void *,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(&v121, v30, v29);
            *(v37 + 8) = 0;
            v32 = v37 + 8;
            *(v37 + 4) = v18;
            v33 = *v125;
            *(v37 + 16) = *v125;
            ++HIDWORD(v124);
          }

          LODWORD(__ptr) = 1;
          *buf = v33;
          (*(**(v27 + 32) + 16))(*(v27 + 32), &v103, v32, &__ptr, buf);
          (v103[10])(&v103);
          (v103[12])(&v103, 0);
          continue;
        }

        LODWORD(v30) = 0;
        goto LABEL_35;
      }

      v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) >> 27));
      v23 = v22 ^ (v22 >> 31);
      if (v121)
      {
        v24 = v23 % DWORD2(v122);
        v25 = *(*(&v121 + 1) + 4 * v24);
        if (v25 != 0x7FFFFFFF)
        {
          while (*(v122 + 32 * v25 + 4) != v18)
          {
            v25 = *(v122 + 32 * v25) & 0x7FFFFFFF;
            if (v25 == 0x7FFFFFFF)
            {
              goto LABEL_32;
            }
          }

          goto LABEL_33;
        }
      }

      else
      {
        LODWORD(v24) = 0;
      }

LABEL_32:
      v36 = re::HashTable<unsigned int,re::Pair<void *,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(&v121, v24, v23);
      *(v36 + 8) = 0;
      *(v36 + 4) = v18;
      *(v36 + 16) = 0;
      ++HIDWORD(v124);
      v21 = *(v20 + 32);
LABEL_33:
      *buf = 1;
      (*(*v21 + 16))(v21, &v103);
    }

    while (!(v103[19])(&v103, v101));
  }

  v98 = v14;
  if (!*(&v113 + 1))
  {
LABEL_58:
    v63 = v123;
    if (v123)
    {
      v64 = 0;
      v65 = v122;
      while (1)
      {
        v66 = *v65;
        v65 += 8;
        if (v66 < 0)
        {
          break;
        }

        if (v123 == ++v64)
        {
          LODWORD(v64) = v123;
          break;
        }
      }
    }

    else
    {
      LODWORD(v64) = 0;
    }

    if (v64 != v123)
    {
      v68 = v122;
      do
      {
        v69 = v68 + 32 * v64;
        v72 = *(v69 + 4);
        v70 = (v69 + 4);
        v71 = v72;
        v73 = re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(&v115[8], v72);
        if (v73)
        {
          v74 = v73;
          v75 = *(v73 + 32);
          if (v75)
          {
            if (*(v74 + 40))
            {
              *buf = 0;
              (*(*v75 + 16))(v75, &v103, v70 + 1, buf);
              v71 = *v70;
            }
          }
        }

        v76 = re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v117, v71);
        if (v76)
        {
          v77 = v76;
          v78 = *(v76 + 32);
          if (v78)
          {
            if (*(v77 + 40))
            {
              *v125 = 0;
              *buf = 0;
              (*(*v78 + 16))(v78, &v103, v70 + 1, v125, buf);
            }
          }
        }

        if (v123 <= v64 + 1)
        {
          v79 = v64 + 1;
        }

        else
        {
          v79 = v123;
        }

        v68 = v122;
        while (v79 - 1 != v64)
        {
          LODWORD(v64) = v64 + 1;
          if ((*(v122 + 32 * v64) & 0x80000000) != 0)
          {
            goto LABEL_85;
          }
        }

        LODWORD(v64) = v79;
LABEL_85:
        ;
      }

      while (v64 != v63);
    }

    (v103[10])(&v103);
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v121);
    a7 = v99;
    v14 = v98;
    a2 = v100;
    goto LABEL_87;
  }

  v38 = *v115 + 16 * *(&v113 + 1);
  v39 = DWORD2(v122);
  v40 = v121;
  v41 = v122;
  v42 = v38;
LABEL_40:
  v44 = *(v42 - 16);
  v42 -= 16;
  v43 = v44;
  a2 = v100;
  if (v40)
  {
    v45 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v43 ^ (v43 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v43 ^ (v43 >> 30))) >> 27));
    for (i = *(*(&v40 + 1) + 4 * ((v45 ^ (v45 >> 31)) % v39)); i != 0x7FFFFFFF; i = *(v41 + 32 * i) & 0x7FFFFFFF)
    {
      if (*(v41 + 32 * i + 4) == v43)
      {
        v47 = v41 + 32 * i;
        v49 = *(v47 + 8);
        v48 = v47 + 8;
        **(v38 - 8) = v49;
        v50 = re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(&v115[8], v43);
        if (v50 && (v51 = v50, (v52 = *(v50 + 32)) != 0))
        {
          v53 = *(v38 - 8);
          v54 = *(v51 + 40) - 1;
          *(v51 + 40) = v54;
          if (v54)
          {
            v55 = 3;
          }

          else
          {
            v55 = 2;
          }

          *buf = v55;
          (*(*v52 + 16))(v52, &v103, v53, buf);
        }

        else
        {
          v56 = re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v117, v43);
          if (v56)
          {
            v57 = v56;
            v58 = *(v56 + 32);
            if (v58)
            {
              v59 = *(v38 - 8);
              v60 = *(v57 + 40) - 1;
              *(v57 + 40) = v60;
              if (v60)
              {
                v61 = 3;
              }

              else
              {
                v61 = 2;
              }

              v62 = *(v48 + 8);
              *v125 = v61;
              *buf = v62;
              (*(*v58 + 16))(v58, &v103, v59, v125, buf);
            }
          }
        }

        v38 = v42;
        if (v42 != *v115)
        {
          goto LABEL_40;
        }

        goto LABEL_58;
      }
    }
  }

  (v103[7])(&v103, "No object decoded for referenceID %u", v43);
  a7 = v99;
LABEL_91:
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v121);
LABEL_92:
  if (BYTE8(v104))
  {
    v80 = *(&v104 + 1) >> 1;
  }

  else
  {
    v80 = BYTE8(v104) >> 1;
  }

  if (v80)
  {
    v81 = *re::foundationSerializationLogObjects(v67);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      re::getPrettyTypeName(a2, &v121);
      v84 = (BYTE8(v121) & 1) != 0 ? v122 : (&v121 + 9);
      v85 = (BYTE8(v104) & 1) != 0 ? v105 : (&v104 + 9);
      *buf = 136315394;
      *&buf[4] = v84;
      *&buf[12] = 2080;
      *&buf[14] = v85;
      _os_log_error_impl(&dword_1E1C61000, v81, OS_LOG_TYPE_ERROR, "deserializeOPACKIntoBuffer into %s failed: %s", buf, 0x16u);
      if (v121)
      {
        if (BYTE8(v121))
        {
          (*(*v121 + 40))();
        }
      }
    }

    re::defaultTemporaryDirectoryPath(&v121);
    if ((*(*a1 + 48))(a1) && v121 == 1)
    {
      v82 = v14;
      (*(*a1 + 56))(a1, v14);
      __ptr = 0;
      v120 = 0;
      v83 = 0;
      if ((*(*a1 + 16))(a1, &__ptr, &v120))
      {
        if (v120)
        {
          MurmurHash3_x64_128(__ptr, v120, 0, buf);
          v83 = (*&buf[8] + (*buf << 6) + (*buf >> 2) - 0x61C8864680B583E9) ^ *buf;
        }

        else
        {
          v83 = 0;
        }

        (*(*a1 + 56))(a1, v82);
      }

      if (v122)
      {
        v86 = *(&v122 + 1);
      }

      else
      {
        v86 = &v122 + 1;
      }

      re::DynamicString::format("%s/%llu", buf, v86, v83);
      if (buf[8])
      {
        v87 = *&buf[16];
      }

      else
      {
        v87 = &buf[9];
      }

      v88 = fopen(v87, "wb");
      if (v88)
      {
        v89 = v88;
        v90 = a7;
        v91 = (*(*a1 + 112))(v101, a1);
        if (LOBYTE(v101[0]) == 1)
        {
          v92 = *re::foundationSerializationLogObjects(v91);
          v91 = os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT);
          if (v91)
          {
            *v125 = 136315138;
            *&v125[4] = v101[1];
            _os_log_impl(&dword_1E1C61000, v92, OS_LOG_TYPE_DEFAULT, "original data from %s", v125, 0xCu);
          }
        }

        v93 = *re::foundationSerializationLogObjects(v91);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          if (buf[8])
          {
            v94 = *&buf[16];
          }

          else
          {
            v94 = &buf[9];
          }

          *v125 = 136315138;
          *&v125[4] = v94;
          _os_log_impl(&dword_1E1C61000, v93, OS_LOG_TYPE_DEFAULT, "dumping OPACK data to %s", v125, 0xCu);
        }

        a7 = v90;
        if ((*(*a1 + 16))(a1, &__ptr, &v120))
        {
          do
          {
            fwrite(__ptr, v120, 1uLL, v89);
          }

          while (((*(*a1 + 16))(a1, &__ptr, &v120) & 1) != 0);
        }

        fclose(v89);
      }

      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }
    }

    re::DynamicString::DynamicString(buf, &v104);
    *a7 = 0;
    v95 = v127;
    *(a7 + 8) = *buf;
    *(a7 + 32) = v95;
    *(a7 + 16) = *&buf[8];
    if (v121 == 1 && *(&v121 + 1) && (v122 & 1) != 0)
    {
      (*(**(&v121 + 1) + 40))();
    }
  }

  else
  {
    *a7 = 1;
  }

  v103 = &unk_1F5D185B0;
  re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v117);
  v96.n128_f64[0] = re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(&v115[8]);
  if (v112)
  {
    if (*v115)
    {
      (*(*v112 + 40))(v96.n128_f64[0]);
    }

    *v115 = 0;
    v113 = 0uLL;
    v112 = 0;
    ++v114;
  }

  result = v104;
  if (v104)
  {
    if (BYTE8(v104))
    {
      return (*(*v104 + 40))(v96);
    }
  }

  return result;
}

void re::internal::Deserializer::~Deserializer(re::internal::Deserializer *this)
{
  *this = &unk_1F5D185B0;
  v2 = (this + 8);
  re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 23);
  re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 17);
  re::DynamicArray<unsigned long>::deinit(this + 96);
  re::DynamicString::deinit(v2);
}

{
  *this = &unk_1F5D185B0;
  v2 = (this + 8);
  re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 23);
  re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 17);
  re::DynamicArray<unsigned long>::deinit(this + 96);
  re::DynamicString::deinit(v2);

  JUMPOUT(0x1E6906520);
}

BOOL re::internal::Serializer::isOK(re::internal::Serializer *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = v1 >> 1;
  }

  else
  {
    v2 = v1 >> 1;
  }

  return v2 == 0;
}

uint64_t re::internal::Serializer::error(uint64_t this, const char *__format, ...)
{
  va_start(va, __format);
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    v5 = v4 >> 1;
  }

  else
  {
    v5 = v4 >> 1;
  }

  if (v5)
  {
    if (v5 > 0x3E8)
    {
      return this;
    }

    re::DynamicString::append((this + 8), "\n", 1uLL);
  }

  return re::DynamicString::vappendf((v3 + 8), __format, va);
}

void *re::internal::Serializer::beginArray(re::internal::Serializer *this, unint64_t a2)
{
  if (a2 > 0xE)
  {
    re::internal::Serializer::writeRaw(this, &re::internal::OPACK::Array, 1uLL);
    v5 = *(*this + 224);

    return v5(this, a2);
  }

  else
  {
    __src = a2 | 0xD0;
    return re::internal::Serializer::writeRaw(this, &__src, 1uLL);
  }
}

re::internal::Serializer *re::internal::Serializer::endArray(re::internal::Serializer *this, unint64_t a2)
{
  if (a2 >= 0xF)
  {
    return re::internal::Serializer::writeRaw(this, &re::internal::OPACK::Terminator, 1uLL);
  }

  return this;
}

void *re::internal::Serializer::beginDictionary(re::internal::Serializer *this, unint64_t a2)
{
  if (a2 > 0xE)
  {
    re::internal::Serializer::writeRaw(this, &re::internal::OPACK::SmallArray2, 1uLL);
    (*(*this + 224))(this, a2);

    return re::internal::Serializer::writeRaw(this, &re::internal::OPACK::Dictionary, 1uLL);
  }

  else
  {
    __src = a2 | 0xE0;
    return re::internal::Serializer::writeRaw(this, &__src, 1uLL);
  }
}

re::internal::Serializer *re::internal::Serializer::endDictionary(re::internal::Serializer *this, unint64_t a2)
{
  if (a2 >= 0xF)
  {
    return re::internal::Serializer::writeRaw(this, &re::internal::OPACK::Terminator, 1uLL);
  }

  return this;
}

uint64_t re::internal::Serializer::beginOptional(re::internal::Serializer *this, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    re::internal::Serializer::writeRaw(this, &re::internal::OPACK::NullObject, 1uLL);
  }

  return a2;
}

void *re::internal::Serializer::operator<<(re::internal::Serializer *a1, int a2)
{
  if (a2)
  {
    v2 = &re::internal::OPACK::Boolean_True;
  }

  else
  {
    v2 = &re::internal::OPACK::Boolean_False;
  }

  return re::internal::Serializer::writeRaw(a1, v2, 1uLL);
}

void *re::internal::Serializer::operator<<(re::internal::Serializer *this, uint64_t a2)
{
  __src = a2;
  if (a2 < 0)
  {
    re::internal::Serializer::writeRaw(this, &re::internal::OPACK::SmallData8, 1uLL);
    return re::internal::Serializer::writeRaw(this, &__src, 8uLL);
  }

  else
  {

    return re::internal::Serializer::writeInteger(this, a2);
  }
}

{
  __src = a2;
  if (a2 < 0)
  {
    re::internal::Serializer::writeRaw(this, &re::internal::OPACK::SmallData8, 1uLL);
    return re::internal::Serializer::writeRaw(this, &__src, 8uLL);
  }

  else
  {

    return re::internal::Serializer::writeInteger(this, a2);
  }
}

void *re::internal::Serializer::operator<<(re::internal::Serializer *a1, float a2)
{
  __src = a2;
  re::internal::Serializer::writeRaw(a1, &re::internal::OPACK::Float32, 1uLL);
  return re::internal::Serializer::writeRaw(a1, &__src, 4uLL);
}

void *re::internal::Serializer::operator<<(re::internal::Serializer *a1, double a2)
{
  __src = a2;
  re::internal::Serializer::writeRaw(a1, &re::internal::OPACK::Float64, 1uLL);
  return re::internal::Serializer::writeRaw(a1, &__src, 8uLL);
}

void *re::internal::Serializer::serializeString(re::internal::Serializer *this, char *a2, unint64_t a3)
{
  v5 = this;
  v13 = a3;
  if (!a2 && a3)
  {
    v6 = &re::internal::OPACK::NullObject;
    v7 = 1;
    goto LABEL_10;
  }

  if (a3 > 0x20)
  {
    if (a3 > 0xFF)
    {
      if (a3 >> 16)
      {
        if (HIDWORD(a3))
        {
          re::internal::Serializer::writeRaw(this, re::internal::OPACK::String_LenU64, 1uLL);
          v8 = &v13;
        }

        else
        {
          re::internal::Serializer::writeRaw(this, re::internal::OPACK::String_LenU32, 1uLL);
          v12 = a3;
          v8 = &v12;
        }

        v9 = v5;
        v10 = 8;
      }

      else
      {
        re::internal::Serializer::writeRaw(this, re::internal::OPACK::String_LenU16, 1uLL);
        LOWORD(v12) = a3;
        v8 = &v12;
        v9 = v5;
        v10 = 2;
      }

      goto LABEL_9;
    }

    re::internal::Serializer::writeRaw(this, re::internal::OPACK::String_LenU8, 1uLL);
    LOBYTE(v12) = a3;
  }

  else
  {
    LOBYTE(v12) = a3 | 0x40;
  }

  v8 = &v12;
  v9 = v5;
  v10 = 1;
LABEL_9:
  re::internal::Serializer::writeRaw(v9, v8, v10);
  this = v5;
  v6 = a2;
  v7 = a3;
LABEL_10:

  return re::internal::Serializer::writeRaw(this, v6, v7);
}

void *re::internal::Serializer::serializeData(re::internal::Serializer *this, char *a2, size_t a3)
{
  if (a3 <= 0x20)
  {
    LOBYTE(__src) = a3 + 112;
LABEL_5:
    v6 = this;
    v7 = 1;
    goto LABEL_6;
  }

  if (a3 <= 0xFF)
  {
    re::internal::Serializer::writeRaw(this, &re::internal::OPACK::Data_LenU8, 1uLL);
    LOBYTE(__src) = a3;
    goto LABEL_5;
  }

  if (a3 >> 16)
  {
    if (HIDWORD(a3))
    {
      re::internal::Serializer::writeRaw(this, &re::internal::OPACK::Data_LenU64, 1uLL);
      __src = a3;
      v6 = this;
      v7 = 8;
    }

    else
    {
      re::internal::Serializer::writeRaw(this, &re::internal::OPACK::Data_LenU32, 1uLL);
      LODWORD(__src) = a3;
      v6 = this;
      v7 = 4;
    }
  }

  else
  {
    re::internal::Serializer::writeRaw(this, &re::internal::OPACK::Data_LenU16, 1uLL);
    LOWORD(__src) = a3;
    v6 = this;
    v7 = 2;
  }

LABEL_6:
  re::internal::Serializer::writeRaw(v6, &__src, v7);

  return re::internal::Serializer::writeRaw(this, a2, a3);
}

void *re::internal::Serializer::serializePointer(re::internal::Serializer *this, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a2;
  if (a2)
  {
    v5 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 120, &v8);
    if (v5)
    {
      v7 = *v5;
    }

    else
    {
      v7 = *(this + 12);
      v9 = v8;
      v10[3] = re::globalAllocators(0)[2];
      v10[4] = 0;
      re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::operator=<24ul>(v10, a3);
      v11 = 0;
      re::DynamicArray<re::internal::Serializer::SharedObject>::add(this + 80, &v9);
      re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(v10);
      re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::addNew(this + 120, &v8, &v7);
    }

    return (*(*this + 216))(this);
  }

  else
  {

    return re::internal::Serializer::writeRaw(this, &re::internal::OPACK::NullObject, 1uLL);
  }
}

void *re::internal::Serializer::serializePolymorphicPointer(re::internal::Serializer *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v14 = a2;
  if (a2)
  {
    v7 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 120, &v14);
    if (v7)
    {
      v13 = *v7;
    }

    else
    {
      v13 = *(this + 12);
      v25 = re::globalAllocators(0)[2];
      v26 = 0;
      re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::operator=<24ul>(v24, a4);
      v18 = 0;
      v19 = v14;
      v15 = a3;
      v17 = v25;
      v9 = re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::operator=<24ul>(v16, v24);
      v21 = re::globalAllocators(v9)[2];
      v10 = (*(*v21 + 32))(v21, 56, 0);
      v11 = v15;
      v12 = v17;
      *v10 = &unk_1F5D18710;
      v10[1] = v11;
      v10[5] = v12;
      v10[6] = 0;
      re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::operator=<24ul>((v10 + 2), v16);
      v22 = v10;
      v23 = 1;
      re::DynamicArray<re::internal::Serializer::SharedObject>::add(this + 80, &v19);
      re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(&v20);
      re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(v16);
      re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::addNew(this + 120, &v14, &v13);
      re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(v24);
    }

    return (*(*this + 216))(this);
  }

  else
  {

    return re::internal::Serializer::writeRaw(this, &re::internal::OPACK::NullObject, 1uLL);
  }
}

BOOL re::internal::Deserializer::isOK(re::internal::Deserializer *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = v1 >> 1;
  }

  else
  {
    v2 = v1 >> 1;
  }

  return v2 == 0;
}

uint64_t re::internal::Deserializer::error(uint64_t this, const char *a2, ...)
{
  va_start(va, a2);
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    v5 = v4 >> 1;
  }

  else
  {
    v5 = v4 >> 1;
  }

  if (v5)
  {
    if (v5 > 0x3E8)
    {
      return this;
    }

    re::DynamicString::append((this + 8), "\n", 1uLL);
  }

  else
  {
    v6 = *(this + 80);
    v7 = (*(**(this + 40) + 40))(*(this + 40));
    re::DynamicString::format("at %lld, ", &v8, v7 + v6 - v3[21]);
    re::DynamicString::operator=((v3 + 2), &v8);
    if (v8)
    {
      if (v9)
      {
        (*(*v8 + 40))();
      }
    }
  }

  va_copy(v8, va);
  this = re::DynamicString::vappendf((v3 + 2), a2, va);
  v3[20] = v3[21];
  return this;
}

BOOL re::internal::Deserializer::beginField(re::internal::Deserializer *this, int a2, const char *a3)
{
  for (i = *(this + 22); i < a2; *(this + 22) = i)
  {
    __dst = 0;
    Raw = re::internal::Deserializer::readRaw(this, &__dst, 1uLL);
    v7 = __dst;
    if (!Raw)
    {
      v7 = 0;
    }

    re::internal::Deserializer::skip(this, v7);
    i = re::internal::Deserializer::nextField(this);
  }

  return i == a2;
}

uint64_t re::internal::Deserializer::endField(re::internal::Deserializer *this)
{
  result = re::internal::Deserializer::nextField(this);
  *(this + 22) = result;
  return result;
}

BOOL re::internal::Deserializer::beginObject(re::internal::Deserializer *this, const char **a2)
{
  __dst = 0;
  if (re::internal::Deserializer::readRaw(this, &__dst, 1uLL))
  {
    v3 = __dst;
  }

  else
  {
    v3 = 0;
  }

  if (v3 == 239)
  {
    *(this + 22) = re::internal::Deserializer::nextField(this);
  }

  else
  {
    (*(*this + 56))(this, "expected object, found tag %x", v3);
  }

  return v3 == 239;
}

uint64_t re::internal::Deserializer::endObject(re::internal::Deserializer *this, const char *a2)
{
  __dst = 0;
  result = re::internal::Deserializer::readRaw(this, &__dst, 1uLL);
  for (i = __dst; ; i = v6)
  {
    if (!result)
    {
      i = 0;
    }

    if (!i || i == 3)
    {
      break;
    }

    re::internal::Deserializer::skip(this, i);
    v6 = 0;
    result = re::internal::Deserializer::readRaw(this, &v6, 1uLL);
  }

  return result;
}

uint64_t re::internal::Deserializer::beginArray(re::internal::Deserializer *this, unint64_t *a2)
{
  __dst = 0;
  if (re::internal::Deserializer::readRaw(this, &__dst, 1uLL))
  {
    v4 = __dst;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 + 48) > 0xEu)
  {
    if (v4 != 223)
    {
      (*(*this + 56))(this, "expected array, found tag %x");
      return 0;
    }

    Integer = re::internal::Deserializer::readInteger(this, -1);
    *a2 = Integer;
    if (re::internal::Deserializer::bytesRemaining(this) < Integer + 1)
    {
      re::internal::Deserializer::bytesRemaining(this);
      (*(*this + 56))(this, "overrun in beginArray: %zu items, only %zu bytes remaining");
      return 0;
    }

    return 1;
  }

  v5 = v4 - 208;
  *a2 = v5;
  if (re::internal::Deserializer::bytesRemaining(this) >= v5)
  {
    return 1;
  }

  v6 = *a2;
  v7 = re::internal::Deserializer::bytesRemaining(this);
  (*(*this + 56))(this, "overrun in beginArray: %zu items, only %zu bytes remaining", v6, v7);
  return 0;
}

BOOL re::internal::Deserializer::endArray(re::internal::Deserializer *this, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 > 0xE)
  {
    if (re::internal::Deserializer::peekTag(this) == 3)
    {
      v3 = 1;
      re::internal::Deserializer::advance(this, 1uLL);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *a2 = v2 - 1;
    return v2 == 0;
  }

  return v3;
}

uint64_t re::internal::Deserializer::beginDictionary(re::internal::Deserializer *this, unint64_t *a2)
{
  __dst = 0;
  Raw = re::internal::Deserializer::readRaw(this, &__dst, 1uLL);
  v5 = __dst;
  if (!Raw)
  {
    v5 = 0;
  }

  if ((v5 + 32) <= 0xEu)
  {
    *a2 = v5 & 0xF;
    if (re::internal::Deserializer::bytesRemaining(this) < (v5 & 0xF))
    {
      v6 = *a2;
      v7 = re::internal::Deserializer::bytesRemaining(this);
      (*(*this + 56))(this, "overrun in beginDictionary: %zu items, only %zu bytes remaining", v6, v7);
      return 0;
    }

    return 1;
  }

  if (v5 != 210)
  {
    if (v5 == 239)
    {
      *a2 = -1;
      return 1;
    }

LABEL_13:
    (*(*this + 56))(this, "expected dictionary, found tag %x", v5);
    return 0;
  }

  *a2 = re::internal::Deserializer::readInteger(this, 0);
  v12 = 0;
  v8 = 1;
  v9 = re::internal::Deserializer::readRaw(this, &v12, 1uLL);
  v5 = v12;
  if (!v9)
  {
    v5 = 0;
  }

  if (v5 != 239)
  {
    goto LABEL_13;
  }

  return v8;
}

BOOL re::internal::Deserializer::endDictionary(re::internal::Deserializer *this, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 > 0xE)
  {
    if (re::internal::Deserializer::peekTag(this) == 3)
    {
      v3 = 1;
      re::internal::Deserializer::advance(this, 1uLL);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *a2 = v2 - 1;
    return v2 == 0;
  }

  return v3;
}

uint64_t re::internal::Deserializer::beginData(re::internal::Deserializer *this, unint64_t *a2, char a3)
{
  v6 = re::internal::Deserializer::peekTag(this);
  v7 = v6;
  if (v6 > 146)
  {
    if (v6 == 147)
    {
      re::internal::Deserializer::advance(this, 1uLL);
      v11 = 0;
      if (!re::internal::Deserializer::readRaw(this, &v11, 4uLL))
      {
        (*(*this + 56))(this, "insufficent data: couldn't read 4 bytes");
        return 0;
      }

      v8 = v11;
      goto LABEL_18;
    }

    if (v6 == 148)
    {
      re::internal::Deserializer::advance(this, 1uLL);
      v10 = 0;
      if (!re::internal::Deserializer::readRaw(this, &v10, 8uLL))
      {
        (*(*this + 56))(this, "insufficient data: coudn't read 8 bytes");
        return 0;
      }

      v8 = v10;
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  if (v6 == 145)
  {
    re::internal::Deserializer::advance(this, 1uLL);
    v13 = 0;
    if (!re::internal::Deserializer::readRaw(this, &v13, 1uLL))
    {
      (*(*this + 56))(this, "insufficient data: couldn't read 1 byte");
      return 0;
    }

    v8 = v13;
    goto LABEL_18;
  }

  if (v6 != 146)
  {
LABEL_10:
    if ((v6 - 145) <= 0xFFFFFFDE)
    {
      if ((a3 & 1) == 0)
      {
        (*(*this + 56))(this, "expected data, found tag %x");
      }

      return 0;
    }

    re::internal::Deserializer::advance(this, 1uLL);
    v8 = (v7 - 112);
    goto LABEL_18;
  }

  re::internal::Deserializer::advance(this, 1uLL);
  *__dst = 0;
  if (!re::internal::Deserializer::readRaw(this, __dst, 2uLL))
  {
    (*(*this + 56))(this, "insufficient data: coudn't read 2 bytes");
    return 0;
  }

  v8 = *__dst;
LABEL_18:
  *a2 = v8;
  if (re::internal::Deserializer::bytesRemaining(this) >= v8)
  {
    return 1;
  }

  re::internal::Deserializer::bytesRemaining(this);
  (*(*this + 56))(this, "overrun in data: size = %zu, only %zu bytes left");
  return 0;
}

BOOL re::internal::Deserializer::beginOptional(re::internal::Deserializer *this)
{
  v2 = re::internal::Deserializer::peekTag(this) & 0xFFFFFFFB;
  if (!v2)
  {
    re::internal::Deserializer::advance(this, 1uLL);
  }

  return v2 != 0;
}

uint64_t re::internal::Deserializer::beginString(re::internal::Deserializer *this, unint64_t *a2)
{
  LOBYTE(__dst) = 0;
  Raw = re::internal::Deserializer::readRaw(this, &__dst, 1uLL);
  v5 = __dst;
  if (!Raw)
  {
    v5 = 0;
  }

  if (v5 <= 0x61u)
  {
    if (v5 == 4)
    {
      *a2 = -1;
      return 1;
    }

    if (v5 == 97)
    {
      LOBYTE(__dst) = 0;
      if (re::internal::Deserializer::readRaw(this, &__dst, 1uLL))
      {
        v6 = __dst;
        goto LABEL_17;
      }

      (*(*this + 56))(this, "insufficient data: expected 1 byte");
LABEL_25:
      v7 = 1;
LABEL_26:
      if (v7 != 1)
      {
        v8 = *a2;
        goto LABEL_28;
      }

      return 0;
    }
  }

  else
  {
    switch(v5)
    {
      case 'b':
        LOWORD(__dst) = 0;
        if (re::internal::Deserializer::readRaw(this, &__dst, 2uLL))
        {
          v6 = __dst;
          goto LABEL_17;
        }

        (*(*this + 56))(this, "insufficient data: expected 2 bytes");
        goto LABEL_25;
      case 'c':
        LODWORD(__dst) = 0;
        if (re::internal::Deserializer::readRaw(this, &__dst, 4uLL))
        {
          v6 = __dst;
          goto LABEL_17;
        }

        (*(*this + 56))(this, "insufficient data: expected 4 bytes");
        goto LABEL_25;
      case 'd':
        __dst = 0;
        if (re::internal::Deserializer::readRaw(this, &__dst, 8uLL))
        {
          v6 = __dst;
LABEL_17:
          *a2 = v6;
          v7 = 2;
          goto LABEL_26;
        }

        (*(*this + 56))(this, "insufficient data: expected 8 bytes");
        goto LABEL_25;
    }
  }

  if ((v5 - 97) <= 0xDEu)
  {
    (*(*this + 56))(this, "expected string, found tag %x", v5);
    return 0;
  }

  v8 = v5 - 64;
  *a2 = v8;
LABEL_28:
  if (re::internal::Deserializer::bytesRemaining(this) < v8)
  {
    v9 = *a2;
    v10 = re::internal::Deserializer::bytesRemaining(this);
    (*(*this + 56))(this, "overrun in beginString: size is %zu, but only %zu bytes remaining", v9, v10);
    return 0;
  }

  return 1;
}

uint64_t re::internal::Deserializer::operator>>(re::internal::Deserializer *a1, _BYTE *a2)
{
  __dst = 0;
  result = re::internal::Deserializer::readRaw(a1, &__dst, 1uLL);
  v5 = __dst;
  if (!result)
  {
    v5 = 0;
  }

  if (v5 == 2)
  {
    *a2 = 0;
  }

  else if (v5 == 1)
  {
    *a2 = 1;
  }

  else
  {
    return (*(*a1 + 56))(a1, "expected BOOLean, found tag 0x%x", v5);
  }

  return result;
}

{
  result = re::internal::Deserializer::readInteger(a1, 0);
  *a2 = result;
  return result;
}

{
  result = re::internal::Deserializer::readInteger(a1, 0);
  *a2 = result;
  return result;
}

{
  result = re::internal::Deserializer::readInteger(a1, 0);
  *a2 = result;
  return result;
}

uint64_t re::internal::Deserializer::operator>>(re::internal::Deserializer *a1, _WORD *a2)
{
  result = re::internal::Deserializer::readInteger(a1, 0);
  *a2 = result;
  return result;
}

{
  result = re::internal::Deserializer::readInteger(a1, 0);
  *a2 = result;
  return result;
}

uint64_t re::internal::Deserializer::operator>>(re::internal::Deserializer *a1, _DWORD *a2)
{
  result = re::internal::Deserializer::readInteger(a1, 0);
  *a2 = result;
  return result;
}

{
  result = re::internal::Deserializer::readInteger(a1, 0);
  *a2 = result;
  return result;
}

uint64_t re::internal::Deserializer::operator>>(re::internal::Deserializer *a1, uint64_t *a2)
{
  result = re::internal::Deserializer::readInteger(a1, 0);
  *a2 = result;
  return result;
}

{
  result = re::internal::Deserializer::readInteger(a1, 0);
  *a2 = result;
  return result;
}

{
  result = re::internal::Deserializer::readInteger(a1, 0);
  *a2 = result;
  return result;
}

uint64_t re::internal::Deserializer::operator>>(re::internal::Deserializer *a1, char *a2)
{
  __dst = 0;
  Raw = re::internal::Deserializer::readRaw(a1, &__dst, 1uLL);
  v5 = __dst;
  if (!Raw)
  {
    v5 = 0;
  }

  if (v5 == 54)
  {
    v8 = 0.0;
    result = re::internal::Deserializer::readRaw(a1, &v8, 8uLL);
    if (result)
    {
      v7 = v8;
      *a2 = v7;
    }
  }

  else if (v5 == 53)
  {

    return re::internal::Deserializer::readRaw(a1, a2, 4uLL);
  }

  else
  {
    return (*(*a1 + 56))(a1, "expected floating point value, found tag 0x%x", v5);
  }

  return result;
}

{
  __dst = 0;
  Raw = re::internal::Deserializer::readRaw(a1, &__dst, 1uLL);
  v5 = __dst;
  if (!Raw)
  {
    v5 = 0;
  }

  if (v5 == 54)
  {

    return re::internal::Deserializer::readRaw(a1, a2, 8uLL);
  }

  else if (v5 == 53)
  {
    v7 = 0.0;
    result = re::internal::Deserializer::readRaw(a1, &v7, 4uLL);
    if (result)
    {
      *a2 = v7;
    }
  }

  else
  {
    return (*(*a1 + 56))(a1, "expected floating point value, found tag 0x%x", v5);
  }

  return result;
}

void re::internal::Deserializer::deserializePointer(re::internal::Deserializer *a1, unint64_t a2, uint64_t a3)
{
  v6 = re::internal::Deserializer::peekTag(a1);
  if ((v6 - 7) >= 0x2D)
  {
    if (v6 == 4)
    {
      re::internal::Deserializer::advance(a1, 1uLL);
      v17.n128_u32[0] = 0;
    }

    else
    {
      v17.n128_u32[0] = 1;
    }

    (*(**(a3 + 32) + 16))(*(a3 + 32), a1, a2, &v17);
  }

  else
  {
    v16 = 0;
    (*(*a1 + 248))(a1, &v16);
    v17.n128_u32[0] = v16;
    v17.n128_u64[1] = a2;
    re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 96, &v17);
    v7 = v16;
    if (v16)
    {
      v8 = re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(a1 + 136, v16);
      if (v8)
      {
        ++*(v8 + 40);
      }

      else
      {
        v17 = 0uLL;
        v18 = 0;
        v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
        re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v17, a1 + 136, v7, v9 ^ (v9 >> 31));
        if (v17.n128_u32[3] == 0x7FFFFFFF)
        {
          v10 = re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1 + 136, v17.n128_u32[2], v17.n128_u64[0]);
          *(v10 + 4) = v16;
          v11 = v10 + 8;
          *(v10 + 32) = re::globalAllocators(v10)[2];
          *(v10 + 40) = 0;
          if (v10 + 8 != a3)
          {
            re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::destroyCallable(v11);
            v12 = *(a3 + 32);
            if (v12)
            {
              v13 = (*(*v12 + 40))(v12);
              if (v13 >= 0x19)
              {
                v14 = v13;
                v15 = *(v10 + 32);
                if (v15)
                {
                  v11 = (*(*v15 + 32))(v15, v14, 0);
                }

                else
                {
                  v11 = 0;
                }
              }

              *(v10 + 40) = v11;
              (*(**(a3 + 32) + 24))(*(a3 + 32), v11);
            }
          }

          *(v10 + 48) = 1;
          ++*(a1 + 44);
        }
      }
    }
  }
}

void re::internal::Deserializer::deserializePolymorphicPointer(re::internal::Deserializer *a1, unint64_t a2, uint64_t a3)
{
  if (re::internal::Deserializer::peekTag(a1) == 4)
  {
    re::internal::Deserializer::advance(a1, 1uLL);
    v15 = 0;
    v16.n128_u64[0] = 0;
    (*(**(a3 + 32) + 16))(*(a3 + 32), a1, a2, &v15, &v16);
  }

  else
  {
    v15 = 0;
    (*(*a1 + 248))(a1, &v15);
    v16.n128_u32[0] = v15;
    v16.n128_u64[1] = a2;
    re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 96, &v16);
    v6 = v15;
    if (v15)
    {
      v7 = re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(a1 + 184, v15);
      if (v7)
      {
        ++*(v7 + 40);
      }

      else
      {
        v16 = 0uLL;
        v17 = 0;
        v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
        re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v16, a1 + 184, v6, v8 ^ (v8 >> 31));
        if (v16.n128_u32[3] == 0x7FFFFFFF)
        {
          v9 = re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1 + 184, v16.n128_u32[2], v16.n128_u64[0]);
          *(v9 + 4) = v15;
          v10 = v9 + 8;
          *(v9 + 32) = re::globalAllocators(v9)[2];
          *(v9 + 40) = 0;
          if (v9 + 8 != a3)
          {
            re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::destroyCallable(v10);
            v11 = *(a3 + 32);
            if (v11)
            {
              v12 = (*(*v11 + 40))(v11);
              if (v12 >= 0x19)
              {
                v13 = v12;
                v14 = *(v9 + 32);
                if (v14)
                {
                  v10 = (*(*v14 + 32))(v14, v13, 0);
                }

                else
                {
                  v10 = 0;
                }
              }

              *(v9 + 40) = v10;
              (*(**(a3 + 32) + 24))(*(a3 + 32), v10);
            }
          }

          *(v9 + 48) = 1;
          ++*(a1 + 56);
        }
      }
    }
  }
}

uint64_t re::DynamicArray<re::internal::Serializer::SharedObject>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<re::internal::Serializer::SharedObject>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::internal::Serializer::SharedObject>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 56 * v5;
  *v11 = *a2;
  *(v11 + 32) = *(a2 + 32);
  *(v11 + 40) = 0;
  result = re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::operator=<24ul>(v11 + 8, a2 + 8);
  *(v11 + 48) = *(a2 + 48);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void *re::DynamicArray<re::internal::Serializer::SharedObject>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::internal::Serializer::SharedObject>::setCapacity(v5, a2);
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
        v11 = (v7 + 1);
        v12 = v8 + 8;
        do
        {
          *(v11 - 8) = *(v12 - 8);
          *(v11 + 24) = *(v12 + 24);
          *(v11 + 32) = 0;
          re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::operator=<24ul>(v11, v12);
          *(v11 + 40) = *(v12 + 40);
          re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(v12);
          v11 += 56;
          v13 = v12 + 48;
          v12 += 56;
        }

        while (v13 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(a1);
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

{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(a1);
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
        re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(a2);
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

uint64_t re::DynamicArray<re::internal::Serializer::SharedObject>::deinit(uint64_t a1)
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
        v5 = 56 * v4;
        v6 = v3 + 8;
        do
        {
          re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(v6);
          v6 += 56;
          v5 -= 56;
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

unint64_t re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(uint64_t a1, unsigned int a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30));
  re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v5, a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + (v6 << 6) + 8;
  }
}

re::internal::Deserializer *re::internal::Deserializer::skip(re::internal::Deserializer *this, int a2)
{
  v2 = this;
  if (a2 > 97)
  {
    if (a2 <= 145)
    {
      if (a2 > 99)
      {
        if (a2 != 100)
        {
          if (a2 == 145)
          {
LABEL_29:
            LOBYTE(__dst) = 0;
            if ((re::internal::Deserializer::readRaw(this, &__dst, 1uLL) & 1) == 0)
            {
              return (*(*v2 + 56))(v2, "insufficient data: wanted 1 byte");
            }

            v4 = __dst;
            goto LABEL_44;
          }

          goto LABEL_54;
        }

LABEL_39:
        __dst = 0;
        if ((re::internal::Deserializer::readRaw(this, &__dst, 8uLL) & 1) == 0)
        {
          return (*(*v2 + 56))(v2, "insufficient data: wanted 8 bytes");
        }

        v4 = __dst;
        if (v4 > re::internal::Deserializer::bytesRemaining(v2))
        {
          re::internal::Deserializer::bytesRemaining(v2);
          return (*(*v2 + 56))(v2, "invalid size when skipping string or data: %llu, only %zu remaining");
        }

        return re::internal::Deserializer::advance(v2, v4);
      }

      if (a2 != 98)
      {
LABEL_32:
        LODWORD(__dst) = 0;
        if ((re::internal::Deserializer::readRaw(this, &__dst, 4uLL) & 1) == 0)
        {
          return (*(*v2 + 56))(v2, "insufficient data: wanted 4 bytes");
        }

        v4 = __dst;
        goto LABEL_44;
      }
    }

    else
    {
      if (a2 > 147)
      {
        if (a2 != 148)
        {
          if (a2 == 223 || a2 == 239)
          {
            while (1)
            {
              LOBYTE(__dst) = 0;
              this = re::internal::Deserializer::readRaw(v2, &__dst, 1uLL);
              v3 = __dst;
              if (!this)
              {
                v3 = 0;
              }

              if (!v3 || v3 == 3)
              {
                break;
              }

              re::internal::Deserializer::skip(v2, v3);
            }

            return this;
          }

          goto LABEL_54;
        }

        goto LABEL_39;
      }

      if (a2 != 146)
      {
        goto LABEL_32;
      }
    }

    LOWORD(__dst) = 0;
    if ((re::internal::Deserializer::readRaw(this, &__dst, 2uLL) & 1) == 0)
    {
      return (*(*v2 + 56))(v2, "insufficient data: wanted 2 bytes");
    }

    v4 = __dst;
LABEL_44:
    if (re::internal::Deserializer::bytesRemaining(v2) < v4)
    {
      re::internal::Deserializer::bytesRemaining(v2);
      return (*(*v2 + 56))(v2, "invalid size when skipping string or data: %d, only %zu remaining");
    }

    return re::internal::Deserializer::advance(v2, v4);
  }

  if (a2 <= 49)
  {
    if (a2 <= 47)
    {
      if ((a2 - 1) < 2 || a2 == 4)
      {
        return this;
      }

      goto LABEL_54;
    }

    if (a2 == 48)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

LABEL_58:

    return re::internal::Deserializer::advance(this, v5);
  }

  if (a2 > 52)
  {
    if (a2 != 53)
    {
      if (a2 != 54)
      {
        if (a2 != 97)
        {
          goto LABEL_54;
        }

        goto LABEL_29;
      }

LABEL_38:
      v5 = 8;
      goto LABEL_58;
    }

LABEL_47:
    v5 = 4;
    goto LABEL_58;
  }

  if (a2 == 50)
  {
    goto LABEL_47;
  }

  if (a2 == 51)
  {
    goto LABEL_38;
  }

LABEL_54:
  if ((a2 - 7) < 0x29)
  {
    return this;
  }

  v6 = (a2 - 64);
  if (v6 <= 0x20 || (v6 = (a2 - 112), v6 <= 0x20))
  {
    v5 = v6;
    goto LABEL_58;
  }

  if ((a2 - 208) > 0xE)
  {
    if ((a2 - 224) > 0xE)
    {
      return (*(*this + 56))(this, "unexpected tag while skipping: %x");
    }

    else if (a2 >= 0xE1)
    {
      v10 = a2 - 223;
      do
      {
        LOBYTE(__dst) = 0;
        Raw = re::internal::Deserializer::readRaw(v2, &__dst, 1uLL);
        v12 = __dst;
        if (!Raw)
        {
          v12 = 0;
        }

        re::internal::Deserializer::skip(v2, v12);
        LOBYTE(__dst) = 0;
        v13 = re::internal::Deserializer::readRaw(v2, &__dst, 1uLL);
        v14 = __dst;
        if (!v13)
        {
          v14 = 0;
        }

        this = re::internal::Deserializer::skip(v2, v14);
        --v10;
      }

      while (v10 > 1);
    }
  }

  else if (a2 >= 0xD1)
  {
    v7 = a2 - 207;
    do
    {
      LOBYTE(__dst) = 0;
      v8 = re::internal::Deserializer::readRaw(v2, &__dst, 1uLL);
      v9 = __dst;
      if (!v8)
      {
        v9 = 0;
      }

      this = re::internal::Deserializer::skip(v2, v9);
      --v7;
    }

    while (v7 > 1);
  }

  return this;
}

uint64_t re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(uint64_t result, uint64_t a2, int a3, unint64_t a4)
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
  if (*(v7 + (v6 << 6) + 4) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + (v6 << 6)) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + (v8 << 6) + 4) == a3)
      {
        break;
      }

      v8 = *(v7 + (v8 << 6)) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
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

uint64_t re::HashTable<unsigned int,re::Pair<void *,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v24, 0, 36);
          *&v24[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v24, v9, v8);
          v11 = *v24;
          *v24 = *a1;
          *a1 = v11;
          v12 = *&v24[16];
          v13 = *(a1 + 16);
          *&v24[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v24[24];
          *&v24[24] = *(a1 + 24);
          v14 = *&v24[32];
          *(a1 + 24) = v15;
          ++*&v24[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<unsigned int,re::Pair<void *,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, *(v13 + 24) % *(a1 + 24));
                *(v17 + 4) = *(v13 + 4);
                *(v17 + 8) = *(v13 + 8);
              }

              v13 += 32;
              --v16;
            }

            while (v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v24);
        }
      }

      else
      {
        if (v8)
        {
          v20 = 2 * v7;
        }

        else
        {
          v20 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v18 = *(a1 + 16);
    v19 = *(v18 + 32 * v5);
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *(v18 + 32 * v5);
    *(a1 + 36) = v19 & 0x7FFFFFFF;
  }

  v21 = v18 + 32 * v5;
  *v21 = v19 | 0x80000000;
  v22 = *(a1 + 8);
  *v21 = *(v22 + 4 * a2) | 0x80000000;
  *(v21 + 24) = a3;
  *(v22 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v18 + 32 * v5;
}

uint64_t re::internal::Deserializer::advance(uint64_t this, unint64_t a2)
{
  v2 = this;
  v4 = *(this + 80);
  v3 = *(this + 84);
  v5 = v3 - v4;
  if (a2 <= v3 - v4)
  {
    *(this + 80) = v4 + a2;
  }

  else
  {
    v6 = *(this + 16);
    if (v6)
    {
      v7 = v6 >> 1;
    }

    else
    {
      v7 = v6 >> 1;
    }

    if (!v7)
    {
      v8 = a2 - v5;
      *(this + 80) = v3;
      this = (*(**(this + 40) + 32))(*(this + 40), v8);
      if ((this & 1) == 0)
      {
        return (*(*v2 + 56))(v2, "insufficient data: wanted to skip %zu bytes, not available", v8);
      }
    }
  }

  return this;
}

uint64_t re::internal::Deserializer::readRaw(re::internal::Deserializer *this, char *__dst, size_t a3)
{
  v5 = (this + 84);
  v6 = *(this + 20);
  v7 = *(this + 21) - v6;
  v8 = a3 - v7;
  if (a3 > v7)
  {
    v9 = *(this + 2);
    if (v9)
    {
      v10 = v9 >> 1;
    }

    else
    {
      v10 = v9 >> 1;
    }

    if (!v10)
    {
      memcpy(__dst, (*(this + 9) + v6), v7);
      __src = 0;
      if ((*(**(this + 5) + 16))(*(this + 5), &__src, v5))
      {
        v11 = &__dst[v7];
        while (1)
        {
          v12 = *v5;
          v13 = __src;
          if (v8 <= v12)
          {
            break;
          }

          memcpy(v11, __src, v12);
          v14 = *(this + 21);
          v8 -= v14;
          v11 += v14;
          if (((*(**(this + 5) + 16))(*(this + 5), &__src, v5) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(this + 9) = __src;
        memcpy(v11, v13, v8);
        *(this + 20) = v8;
        return 1;
      }

LABEL_10:
      (*(*this + 56))(this, "insufficient data: expected %zu bytes, non remain", v8);
    }

    return 0;
  }

  v16 = a3;
  memcpy(__dst, (*(this + 9) + v6), a3);
  *(this + 20) += v16;
  return 1;
}

double re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(uint64_t *a1)
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
          re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::destroyCallable(v6 + v4 + 8);
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
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

double re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(uint64_t *a1)
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
          re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::destroyCallable(v6 + v4 + 8);
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
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void *re::internal::Serializer::writeInteger(re::internal::Serializer *this, int a2)
{
  __src = a2;
  if (a2 == a2)
  {

    return re::internal::Serializer::writeInteger(this, a2);
  }

  else
  {
    re::internal::Serializer::writeRaw(this, re::internal::OPACK::IntegerI32, 1uLL);
    return re::internal::Serializer::writeRaw(this, &__src, 4uLL);
  }
}

{
  __src = a2;
  if (a2 == a2)
  {
    a2 = a2;

    return re::internal::Serializer::writeInteger(this, a2);
  }

  else
  {
    re::internal::Serializer::writeRaw(this, re::internal::OPACK::IntegerI16, 1uLL);
    return re::internal::Serializer::writeRaw(this, &__src, 2uLL);
  }
}

{
  __src = a2;
  if ((a2 + 1) > 0x28)
  {
    re::internal::Serializer::writeRaw(this, re::internal::OPACK::IntegerI8, 1uLL);
    p_src = &__src;
  }

  else
  {
    v5 = a2 + 8;
    p_src = &v5;
  }

  return re::internal::Serializer::writeRaw(this, p_src, 1uLL);
}

void *re::internal::Serializer::writeRaw(re::internal::Serializer *this, char *__src, size_t a3)
{
  v7 = this + 64;
  v5 = *(this + 8);
  v6 = *(v7 + 1);
  v8 = v6 - v5;
  v9 = a3 - (v6 - v5);
  if (a3 >= v6 - v5)
  {
    memcpy(v5, __src, v6 - v5);
    memset(__n, 0, sizeof(__n));
    if ((*(**(this + 5) + 16))(*(this + 5), &__n[1], __n))
    {
      v12 = &__src[v8];
      while (v9 > __n[0])
      {
        memcpy(*&__n[1], v12, __n[0]);
        v12 += __n[0];
        v9 -= __n[0];
        if (((*(**(this + 5) + 16))(*(this + 5), &__n[1], __n) & 1) == 0)
        {
          return (*(*this + 56))(this, "failed to obtain write buffer, %zu bytes remaining", v9);
        }
      }

      result = memcpy(*&__n[1], v12, v9);
      v13 = *&__n[1] + __n[0];
      *(this + 8) = *&__n[1] + v9;
      *(this + 9) = v13;
    }

    else
    {
      return (*(*this + 56))(this, "failed to obtain write buffer, %zu bytes remaining", v9);
    }
  }

  else
  {
    result = memcpy(v5, __src, a3);
    *(this + 8) += a3;
  }

  return result;
}

void *re::internal::Serializer::writeInteger(re::internal::Serializer *this, uint64_t a2)
{
  __src = a2;
  if (a2 == a2)
  {

    return re::internal::Serializer::writeInteger(this, a2);
  }

  else
  {
    re::internal::Serializer::writeRaw(this, &re::internal::OPACK::IntegerI64, 1uLL);
    return re::internal::Serializer::writeRaw(this, &__src, 8uLL);
  }
}

void *re::internal::Callable<re::internal::Serializer::serializePolymorphicPointer(void const*,unsigned long long,re::FunctionForwarder<void ()(re::snapshot::Encoder &,void const*)> const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D18710;
  re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable((a1 + 2));
  return a1;
}

void re::internal::Callable<re::internal::Serializer::serializePolymorphicPointer(void const*,unsigned long long,re::FunctionForwarder<void ()(re::snapshot::Encoder &,void const*)> const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D18710;
  re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable((a1 + 2));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::internal::Serializer::serializePolymorphicPointer(void const*,unsigned long long,re::FunctionForwarder<void ()(re::snapshot::Encoder &,void const*)> const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  (*(*a2 + 72))(a2);
  (*(*a2 + 64))(a2, 1, "");
  (*(*a2 + 240))(a2, *(a1 + 8));
  (*(*a2 + 64))(a2, 10, "");
  v7 = v5;
  (*(**(a1 + 48) + 16))(*(a1 + 48), a2, &v7);
  return (*(*a2 + 80))(a2);
}

void *re::internal::Callable<re::internal::Serializer::serializePolymorphicPointer(void const*,unsigned long long,re::FunctionForwarder<void ()(re::snapshot::Encoder &,void const*)> const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *a2 = &unk_1F5D18710;
  a2[1] = v3;
  a2[5] = *(a1 + 40);
  a2[6] = 0;
  re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::operator=<24ul>((a2 + 2), a1 + 16);
  return a2;
}

void *re::internal::Callable<re::internal::Serializer::serializePolymorphicPointer(void const*,unsigned long long,re::FunctionForwarder<void ()(re::snapshot::Encoder &,void const*)> const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::moveInto(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *a2 = &unk_1F5D18710;
  a2[1] = v3;
  a2[5] = *(a1 + 40);
  a2[6] = 0;
  re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::operator=<24ul>((a2 + 2), a1 + 16);
  return a2;
}

uint64_t re::internal::Deserializer::nextField(re::internal::Deserializer *this)
{
  v2 = re::internal::Deserializer::peekTag(this);
  result = 0x7FFFFFFFLL;
  if (v2 && v2 != 3)
  {
    if ((v2 - 7) > 0x28)
    {
      return re::internal::Deserializer::readInteger(this, 0x7FFFFFFFLL);
    }

    else
    {
      ++*(this + 20);
      return (v2 - 8);
    }
  }

  return result;
}

uint64_t re::internal::Deserializer::peekTag(re::internal::Deserializer *this)
{
  v2 = *(this + 20);
  if (v2 < *(this + 21))
  {
    return *(*(this + 9) + v2);
  }

  __dst = 0;
  Raw = re::internal::Deserializer::readRaw(this, &__dst, 1uLL);
  result = 0;
  if (Raw)
  {
    v5 = __dst;
    if (__dst)
    {
      --*(this + 20);
      return v5;
    }
  }

  return result;
}

uint64_t re::internal::Deserializer::readInteger(re::internal::Deserializer *this, uint64_t a2)
{
  LOBYTE(__dst) = 0;
  Raw = re::internal::Deserializer::readRaw(this, &__dst, 1uLL);
  v5 = __dst;
  if (!Raw)
  {
    v5 = 0;
  }

  if (v5 <= 0x31u)
  {
    if (v5 == 48)
    {
      LOBYTE(__dst) = 0;
      if (re::internal::Deserializer::readRaw(this, &__dst, 1uLL))
      {
        return __dst;
      }
    }

    else
    {
      if (v5 != 49)
      {
        goto LABEL_17;
      }

      LOWORD(__dst) = 0;
      if (re::internal::Deserializer::readRaw(this, &__dst, 2uLL))
      {
        return __dst;
      }
    }
  }

  else
  {
    if (v5 != 50)
    {
      if (v5 == 51 || v5 == 120)
      {
        __dst = 0;
        if (re::internal::Deserializer::readRaw(this, &__dst, 8uLL))
        {
          return __dst;
        }

        return a2;
      }

LABEL_17:
      if (v5 - 7 <= 0x28)
      {
        return (v5 - 8);
      }

      (*(*this + 56))(this, "expected integer, found tag %x", v5);
      return a2;
    }

    LODWORD(__dst) = 0;
    if (re::internal::Deserializer::readRaw(this, &__dst, 4uLL))
    {
      return __dst;
    }
  }

  return a2;
}

uint64_t re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v32, v9, v8);
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
            v17 = (v13 + 32);
            do
            {
              if ((*(v17 - 4) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v17[3] % *(a1 + 24));
                v19 = v18;
                *(v18 + 4) = *(v17 - 7);
                v20 = v18 + 8;
                *(v18 + 32) = *v17;
                *(v18 + 40) = 0;
                if (v17 - 3 != (v18 + 8))
                {
                  re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::destroyCallable(v18 + 8);
                  v21 = v17[1];
                  if (v19[4] != *v17 || v17 - 3 == v21)
                  {
                    if (v21)
                    {
                      v23 = (*(*v21 + 40))(v21);
                      if (v23 >= 0x19)
                      {
                        v24 = v23;
                        v25 = v19[4];
                        if (v25)
                        {
                          v20 = (*(*v25 + 32))(v25, v24, 0);
                        }

                        else
                        {
                          v20 = 0;
                        }
                      }

                      v19[5] = v20;
                      (*(*v17[1] + 32))(v17[1], v20);
                      re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::destroyCallable((v17 - 3));
                    }
                  }

                  else
                  {
                    v19[5] = v21;
                    v17[1] = 0;
                  }
                }

                v19[6] = v17[2];
              }

              v17 += 8;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v32);
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
    v27 = *(v26 + (v5 << 6));
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + (v5 << 6));
    *(a1 + 36) = v27 & 0x7FFFFFFF;
  }

  v29 = v26 + (v5 << 6);
  *v29 = v27 | 0x80000000;
  v30 = *(a1 + 8);
  *v29 = *(v30 + 4 * a2) | 0x80000000;
  *(v29 + 56) = a3;
  *(v30 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v26 + (v5 << 6);
}

uint64_t re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v32, v9, v8);
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
            v17 = (v13 + 32);
            do
            {
              if ((*(v17 - 4) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v17[3] % *(a1 + 24));
                v19 = v18;
                *(v18 + 4) = *(v17 - 7);
                v20 = v18 + 8;
                *(v18 + 32) = *v17;
                *(v18 + 40) = 0;
                if (v17 - 3 != (v18 + 8))
                {
                  re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::destroyCallable(v18 + 8);
                  v21 = v17[1];
                  if (v19[4] != *v17 || v17 - 3 == v21)
                  {
                    if (v21)
                    {
                      v23 = (*(*v21 + 40))(v21);
                      if (v23 >= 0x19)
                      {
                        v24 = v23;
                        v25 = v19[4];
                        if (v25)
                        {
                          v20 = (*(*v25 + 32))(v25, v24, 0);
                        }

                        else
                        {
                          v20 = 0;
                        }
                      }

                      v19[5] = v20;
                      (*(*v17[1] + 32))(v17[1], v20);
                      re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::destroyCallable((v17 - 3));
                    }
                  }

                  else
                  {
                    v19[5] = v21;
                    v17[1] = 0;
                  }
                }

                v19[6] = v17[2];
              }

              v17 += 8;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned int,re::Pair<re::Function<void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>,unsigned long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v32);
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
    v27 = *(v26 + (v5 << 6));
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + (v5 << 6));
    *(a1 + 36) = v27 & 0x7FFFFFFF;
  }

  v29 = v26 + (v5 << 6);
  *v29 = v27 | 0x80000000;
  v30 = *(a1 + 8);
  *v29 = *(v30 + 4 * a2) | 0x80000000;
  *(v29 + 56) = a3;
  *(v30 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v26 + (v5 << 6);
}

uint64_t re::internal::CallableRef<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D18790;
  *(a2 + 8) = *v2;
  return a2;
}

uint64_t re::internal::Callable<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D18790;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D18790;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void *re::internal::CallableRef<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#2},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  *a2 = &unk_1F5D18810;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#2},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D18810;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#2},void ()(re::snapshot::Encoder &,void const*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D18810;
  a2[1] = v2;
  return a2;
}

__n128 std::__function::__func<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1},std::allocator<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D18850;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1},std::allocator<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, __n128 a4)
{
  v5 = *a3;
  re::internal::introspected::write<re::internal::Serializer>(*(a1 + 8), *a2, *(a1 + 16), a4);
  re::internal::introspected::write<re::internal::Serializer>(*(a1 + 8), v5, *(a1 + 24), v6);
  return 1;
}

void *re::internal::CallableRef<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionStructure const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  *a2 = &unk_1F5D188D8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionStructure const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D188D8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionStructure const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D188D8;
  a2[1] = v2;
  return a2;
}

uint64_t re::internal::introspected::read<re::internal::Deserializer>(uint64_t a1, uint64_t a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v23[0] = 0;
  result = (*(*a1 + 120))(a1, v23, 0);
  if (result)
  {
    v7 = (*(*a3 + 88))(a3, a2);
    if (v23[0] != -1)
    {
      v7 = (*(*a3 + 72))(a3, a2);
    }

    v8 = a3[6];
    v9 = a3[8];
    v10 = *(v8 + 6);
    v11 = *(v8 + 5) + v10 - 1;
    __space = v11;
    MEMORY[0x1EEE9AC00](v7);
    v13 = &__ptr - v12;
    bzero(&__ptr - v12, v11);
    __ptr = v13;
    __ptr = std::align(v10, v11, &__ptr, &__space);
    result = (*(*a1 + 152))(a1, v23);
    if ((result & 1) == 0)
    {
      do
      {
        v14 = (*(*a1 + 40))(a1);
        v15 = (*(*a1 + 32))(a1);
        v16 = __ptr;
        re::introspectionCallConstructor(v15, v8, __ptr);
        re::introspectionInitElement(v14, v17, v8, v16);
        re::internal::introspected::read<re::internal::Deserializer>(a1, __ptr, v8);
        v18 = (*(*a1 + 40))(a1);
        v19 = (*(*a1 + 32))(a1);
        v20 = (*(*a3 + 96))(a3, v18, v19, a2, __ptr);
        re::internal::introspected::read<re::internal::Deserializer>(a1, v20, v9);
        (*(*a3 + 112))(a3, __ptr);
        result = (*(*a1 + 152))(a1, v23);
      }

      while (!result);
    }
  }

  return result;
}

uint64_t re::internal::CallableRef<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D18958;
  v3 = *v2;
  *(a2 + 24) = v2[1];
  *(a2 + 8) = v3;
  return a2;
}

void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1}::operator()(uint64_t *a1, uint64_t a2, uint64_t *a3, int a4, void *a5)
{
  if (a4 != 3)
  {
    if (a4 != 1)
    {
      if (!a4)
      {
        v9 = *a3;
        if (*a3)
        {
          v10 = (*(*a2 + 40))(a2);
          v11 = (*(*a2 + 32))(a2);
          re::introspectionReleasePointer(v9, v10, v11, *a1);
          *a3 = 0;
        }
      }

      return;
    }

    v12 = a1[3];
    v13 = *v12;
    if (v13)
    {
      v14 = (*(v12 + 1) + 24);
      while (*v14 != a5)
      {
        v14 += 5;
        if (!--v13)
        {
          goto LABEL_20;
        }
      }

      v20 = *(v14 - 2);
      v21 = a1[1];
      if (v21)
      {
        v22 = a1[2];
        __dst = 0;
        memcpy(&__dst, v21, *(v22 + 20));
        v23 = __dst;
      }

      else
      {
        v23 = 0;
      }

      v27 = *a3;
      if (v23 == a5)
      {
        if (v27)
        {
LABEL_36:

          re::internal::introspected::read<re::internal::Deserializer>(a2, v27, v20);
          return;
        }
      }

      else if (v27)
      {
        v28 = (*(*a2 + 40))(a2);
        v29 = (*(*a2 + 32))(a2);
        re::introspectionReleasePointer(v27, v28, v29, *a1);
        *a3 = 0;
      }

      v30 = (*(*a2 + 40))(a2);
      v31 = (*(*a2 + 32))(a2);
      v32 = re::introspectionAllocPointer(v30, v31, v20);
      *a3 = v32;
      if (!v32)
      {
        (*(*a2 + 56))(a2, "allocation failure: %d bytes", *(*a1 + 20));
        return;
      }

      re::PolymorphicData::makeWithPointer(*a1, v32, &__dst);
      __src = a5;
      if (__dst)
      {
        memcpy(__dst, &__src, *(v34 + 20));
      }

      v27 = *a3;
      goto LABEL_36;
    }

LABEL_20:
    (*(*a2 + 56))(a2, "invalid polymorphic type %llu", a5);
    return;
  }

  if (*(*a1 + 16) == 8 && (v15 = *(*a1 + 88)) != 0)
  {
    v16 = *a3;

    v15(v16);
  }

  else
  {
    v17 = a1[3];
    v18 = *v17;
    if (!v18)
    {
      goto LABEL_20;
    }

    v19 = (*(v17 + 1) + 24);
    while (*v19 != a5)
    {
      v19 += 5;
      if (!--v18)
      {
        goto LABEL_20;
      }
    }

    v24 = (*(*a2 + 40))(a2);
    v25 = (*(*a2 + 32))(a2);
    v26 = re::introspectionDeepCopy(v24, v25, *(v19 - 2), *a3);
    *a3 = v26;
    re::PolymorphicData::makeWithPointer(*a1, v26, &__dst);
    __src = a5;
    if (__dst)
    {
      memcpy(__dst, &__src, *(v34 + 20));
    }
  }
}

uint64_t re::internal::Callable<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D18958;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D18958;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

void *re::internal::CallableRef<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  *a2 = &unk_1F5D189D8;
  a2[1] = v2;
  return a2;
}

void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1}::operator()(re::Allocator **a1, uint64_t a2, uint64_t *a3, int a4)
{
  switch(a4)
  {
    case 3:
      if (*(*a1 + 4) == 8 && (v14 = *(*a1 + 11)) != 0)
      {
        v15 = *a3;

        v14(v15);
      }

      else
      {
        v16 = (*(*a2 + 40))(a2);
        v17 = (*(*a2 + 32))(a2);
        *a3 = re::introspectionDeepCopy(v16, v17, *a1, *a3);
      }

      break;
    case 1:
      v10 = *a3;
      if (*a3 || (v11 = (*(*a2 + 40))(a2), v12 = (*(*a2 + 32))(a2), v10 = re::introspectionAllocPointer(v11, v12, *a1), (*a3 = v10) != 0))
      {
        v13 = *a1;

        re::internal::introspected::read<re::internal::Deserializer>(a2, v10, v13);
      }

      else
      {
        (*(*a2 + 56))(a2, "allocation failure: %d bytes", *(*a1 + 5));
      }

      break;
    case 0:
      v7 = *a3;
      if (*a3)
      {
        v8 = (*(*a2 + 40))(a2);
        v9 = (*(*a2 + 32))(a2);
        re::introspectionReleasePointer(v7, v8, v9, *a1);
        *a3 = 0;
      }

      break;
  }
}

void *re::internal::Callable<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D189D8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D189D8;
  a2[1] = v2;
  return a2;
}

re::internal::Deserializer *re::internal::Deserializer::skipNext(re::internal::Deserializer *this)
{
  __dst = 0;
  Raw = re::internal::Deserializer::readRaw(this, &__dst, 1uLL);
  v3 = __dst;
  if (!Raw)
  {
    v3 = 0;
  }

  return re::internal::Deserializer::skip(this, v3);
}

void *std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},void>(void *a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F5D18A18;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = v5;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v5, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v5);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D18A60;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#3},void>(void *a1)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5D18AA8;
  v3[3] = v3;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v3, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v3);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#4},void>(void *a1)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5D18AF0;
  v3[3] = v3;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v3, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v3);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D18B38;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D18B80;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D18BC8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D18C10;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

__n128 std::__function::__func<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},std::allocator<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D18A18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},std::allocator<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*(a1 + 16) + 48);
  v6 = *(v3 + 80);
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));

  return v6(v3, v4, v2);
}

uint64_t std::__function::__func<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2},std::allocator<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D18A60;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5},std::allocator<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D18B38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6},std::allocator<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D18B80;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7},std::allocator<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D18BC8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8},std::allocator<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D18C10;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::CallableRef<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D18C98;
  v3 = *v2;
  *(a2 + 24) = *(v2 + 2);
  *(a2 + 8) = v3;
  return a2;
}

uint64_t re::internal::Callable<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D18C98;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D18C98;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::translateType@<X0>(re::internal *this@<X0>, const re::TypeRegistry *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != this)
  {
    v7 = *(*a2 + 856);
    if (v7)
    {
      v8 = **(a2 + 2);
      v12 = *a2;
      v13 = v8;
      re::internal::TypeTranslationTable::translateType(v7, &v12, v14);
      if (v14[0])
      {
        re::TypeRegistry::typeInfo(this, v14, &v12);
        v9 = &v13;
        v10 = a3;
        return re::TypeInfo::TypeInfo(v10, v9);
      }
    }

    else
    {
      v14[0] = 0;
      v14[1] = 0xFFFFFFFFLL;
    }

    v10 = a3;
    v9 = a2;
    return re::TypeInfo::TypeInfo(v10, v9);
  }

  return re::TypeInfo::TypeInfo(a3, a2);
}

uint64_t re::internal::getEnumConstantIndex(re::internal *this, const re::TypeInfo *a2, void *a3)
{
  v5 = re::TypeInfo::enumConstants(this);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v5;
  v8 = v6;
  v9 = 0;
  v10 = *(*(this + 2) + 8);
  while (memcmp(v7, a2, v10))
  {
    ++v9;
    v7 += 24;
    if (v8 == v9)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v9;
}

uint64_t re::internal::getEnumConstantIndex(re::internal *this, const re::TypeInfo *a2, const re::StringID *a3)
{
  v5 = re::TypeInfo::enumConstants(this);
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    v9 = (v5 + 8);
    while (!re::StringID::operator==(v9, a2))
    {
      ++v8;
      v9 += 3;
      if (v7 == v8)
      {
        goto LABEL_5;
      }
    }

    return v8;
  }

  else
  {
LABEL_5:
    v10 = re::TypeInfo::renamedEnumConstants(this);
    if (v11)
    {
      v12 = v11;
      for (i = (v10 + 8); !re::StringID::operator==(i, a2); i += 3)
      {
        v7 = (v7 + 1);
        if (!--v12)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v7;
}

__n128 re::internal::upgradeObject@<Q0>(void *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X2>, uint64_t **a4@<X3>, re::Allocator *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a6;
  v8 = a5;
  v51 = *MEMORY[0x1E69E9840];
  while (1)
  {
    re::TypeInfo::nextVersion(a2, a4, v45);
    if ((v45[0] & 1) == 0)
    {
      re::TypeInfo::releaseInstance(a2, a1, v8, v7);
      v32 = re::TypeInfo::name(a4)[1];
      v33 = re::DataArray<re::TextureAtlasTile>::tryGet((*a2 + 12), *a2[2]);
      if (v33)
      {
        v34 = *(v33 + 16);
      }

      else
      {
        v34 = 0xFFFFFFFFLL;
      }

      re::DynamicString::format("Failed to upgrade type %s version %u to the next version. Type info is missing.", buf, v32, v34);
      goto LABEL_45;
    }

    v12 = v46[0];
    v13 = *v47;
    v44[0] = 0xAE8345F9D646D604;
    v44[1] = "ComplexVersioningAttribute";
    v14 = re::TypeRegistry::typeID(v46[0], v44, v48);
    if (v48[0] && (*buf = v48[1], *&buf[8] = v13, *&buf[16] = -1, (v14 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v12 + 768, buf)) != 0))
    {
      v15 = *v14;
    }

    else
    {
      v15 = 0;
    }

    if (v44[0])
    {
      if (v44[0])
      {
      }
    }

    if (!v15 || !*v15)
    {
      re::TypeInfo::releaseInstance(a2, a1, v8, v7);
      v29 = re::TypeInfo::name(a4)[1];
      v30 = re::DataArray<re::TextureAtlasTile>::tryGet((*a2 + 12), *a2[2]);
      if (v30)
      {
        v31 = *(v30 + 16);
      }

      else
      {
        v31 = 0xFFFFFFFFLL;
      }

      re::DynamicString::format("Failed to upgrade type %s version %u to the next version. Upgrade function is missing.", buf, v29, v31);
      goto LABEL_45;
    }

    v16 = re::DataArray<re::TextureAtlasTile>::tryGet(v46[0] + 96, *v47);
    if (v16)
    {
      v17 = *(v16 + 16);
    }

    else
    {
      v17 = -1;
    }

    Instance = re::DataArray<re::TextureAtlasTile>::tryGet((*a4 + 12), *a4[2]);
    if (Instance)
    {
      v19 = Instance[4];
    }

    else
    {
      v19 = -1;
    }

    v20 = a3;
    if (v17 != v19)
    {
      Instance = re::TypeInfo::createInstance(v46, v8, v7);
      v20 = Instance;
    }

    v21 = *re::foundationSerializationLogObjects(Instance);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = re::TypeInfo::name(a4)[1];
      v23 = re::DataArray<re::TextureAtlasTile>::tryGet((*a2 + 12), *a2[2]);
      if (v23)
      {
        v24 = *(v23 + 16);
      }

      else
      {
        v24 = -1;
      }

      v25 = re::DataArray<re::TextureAtlasTile>::tryGet(v46[0] + 96, *v47);
      if (v25)
      {
        v26 = *(v25 + 16);
      }

      else
      {
        v26 = -1;
      }

      *buf = 136315650;
      *&buf[4] = v22;
      *&buf[12] = 1024;
      *&buf[14] = v24;
      *&buf[18] = 1024;
      *&buf[20] = v26;
      _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_INFO, "Upgrading type %s from version %u to %u.", buf, 0x18u);
      v8 = a5;
      v7 = a6;
    }

    v27 = (*v15)(v7, a1, v20);
    re::TypeInfo::releaseInstance(a2, a1, v8, v7);
    if ((v27 & 1) == 0)
    {
      break;
    }

    re::TypeInfo::operator=(a2, v46);
    a1 = v20;
    if (v17 == v19)
    {
      *a7 = 1;
      return result;
    }
  }

  if (v17 != v19)
  {
    re::TypeInfo::releaseInstance(v46, v20, v8, v7);
  }

  v35 = re::TypeInfo::name(a4)[1];
  v36 = re::DataArray<re::TextureAtlasTile>::tryGet((*a2 + 12), *a2[2]);
  if (v36)
  {
    v37 = *(v36 + 16);
  }

  else
  {
    v37 = 0xFFFFFFFFLL;
  }

  re::DynamicString::format("Failed to upgrade type %s version %u to the next version. Upgrade function failed.", buf, v35, v37);
LABEL_45:
  result = *buf;
  v38 = *&buf[16];
  v39 = v50;
  *a7 = 0;
  *(a7 + 8) = 400;
  *(a7 + 16) = re::FoundationErrorCategory(void)::instance;
  *(a7 + 24) = result;
  *(a7 + 40) = v38;
  *(a7 + 48) = v39;
  return result;
}

uint64_t re::internal::actualType@<X0>(char **this@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 10), v10);
  result = re::TypeInfo::TypeInfo(v9, v10 + 8);
  if (*this)
  {
    result = re::TypeInfo::getActualType(v9, *this, a3);
    if (!*a3)
    {
      result = re::TypeInfo::getActualTypeFromPointer(a2, this, v10);
      *a3 = v10[0];
    }
  }

  else
  {
    v8 = *v9[2];
    *a3 = v9[0];
    a3[1] = v8;
  }

  return result;
}

void re::internal::setActualType(uint64_t *a1, re **a2, re **a3)
{
  v6 = *a2;
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 10), &v19);
  re::TypeInfo::TypeInfo(v18, v20);
  re::TypeRegistry::typeInfo(v6, a3, &v19);
  re::TypeInfo::TypeInfo(v16, v20);
  if (*(v17 + 128) == 1)
  {
    v7 = *(v17 + 136);
    if (*(a2 + 12) == 9 && (v8 = a2[2], (*(v8 + 25) & 0xFFFFFF) != 0) && *(v8 + 26))
    {
      v15 = *a3;
      re::TypeInfo::setActualTypeForPointer(a2, a1, &v15);
    }

    else
    {
      re::TypeInfo::rootClass(v18, &v19);
      re::TypeInfo::customClassIDMember(&v19, v12);
      if (v12[0] == 1)
      {
        v9 = *a1;
        v10 = *(v14 + 24);
        re::TypeRegistry::typeInfo(v13, *v14, &v19);
        re::TypeInfo::TypeInfo(v11, v20);
        re::internal::writeUnsigned((v9 + v10), v11, v7);
      }
    }
  }
}

BOOL re::internal::areCompatible(re **a1, uint64_t a2)
{
  re::TypeRegistry::typeInfo(*a1, *(a1[2] + 10), v16);
  re::TypeInfo::TypeInfo(&v13, v17);
  if (v13 == *a2)
  {
    v4 = *v15;
    v5 = *(a2 + 8);
    if (*v15 == v5)
    {
      v7 = WORD1(v4) == WORD1(v5);
      v6 = (v5 ^ v4) & 0xFFFFFF00000000;
      v7 = v7 && v6 == 0;
      if (v7)
      {
        return 1;
      }
    }
  }

  re::TypeRegistry::typeInfo(*a1, a2, v16);
  re::TypeInfo::TypeInfo(&v11, v17);
  result = 0;
  if (v14 == 8 && v12 == 8)
  {
    v9 = *v15;
    v10[0] = v13;
    v10[1] = v9;
    return re::TypeInfo::isSubClassOf(&v11, v10);
  }

  return result;
}

void re::PropertyBagHelper::makeWithIntrospectedData(const re::IntrospectionBase *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4) == 8)
  {
    v26 = a3;
    v9 = v8;
    if (v7)
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      v25 = 0x7FFFFFFFLL;
      re::PersistedSchema::addIntrospectionGraph(&v22, a1);
      if ((atomic_load_explicit(&qword_1EE1C3CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C3CB0))
      {
        _MergedGlobals_557 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(0, v21);
        __cxa_guard_release(&qword_1EE1C3CB0);
      }

      v13 = v12;
      if (v11)
      {
        v14 = MEMORY[0x1E696AEC0];
        re::getPrettyTypeName(a1, buf);
        if (buf[8])
        {
          v15 = v30;
        }

        else
        {
          v15 = &buf[9];
        }

        v16 = [v14 stringWithUTF8String:v15];
        if (*buf)
        {
          if (buf[8])
          {
            (*(**buf + 40))();
          }
        }

        v27[0] = @"type";
        v27[1] = @"value";
        v28[0] = v16;
        v28[1] = v9;
        v27[2] = @"schema";
        v28[2] = v13;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
        *a4 = 1;
        *(a4 + 8) = v17;
      }

      else
      {
        *a4 = 0;
      }

      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v22);
    }

    else
    {
      *a4 = 0;
    }
  }

  else
  {
    v18 = *re::foundationSerializationLogObjects(a1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      re::getPrettyTypeName(a1, &v22);
      v20 = (BYTE8(v22) & 1) != 0 ? v23 : (&v22 + 9);
      *buf = 136315138;
      *&buf[4] = v20;
      _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "PropertyBagWriter; only works on structures '%s'.", buf, 0xCu);

      if (v22)
      {
        if (BYTE8(v22))
        {
          (*(*v22 + 40))();
        }
      }
    }

    *a4 = 0;
  }
}

unint64_t anonymous namespace::PropertyBagWriter::writeValue(_anonymous_namespace_::PropertyBagWriter *this, const re::IntrospectionBase *a2, unsigned int *a3, double a4)
{
  v88 = *MEMORY[0x1E69E9840];
  switch(*(a2 + 4))
  {
    case 0:
      {
        re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v72);
      }

      if (re::introspect<BOOL>(BOOL)::info != a2)
      {
        {
          re::introspect<char>(BOOL)::info = re::introspect_char(0, v73);
        }

        if (re::introspect<char>(BOOL)::info == a2)
        {
          [MEMORY[0x1E696AD98] numberWithChar:*a3];
          objc_claimAutoreleasedReturnValue();
        }

        else
        {
          {
            re::introspect<double>(BOOL)::info = re::introspect_double(0, v75);
          }

          if (re::introspect<double>(BOOL)::info == a2)
          {
            [MEMORY[0x1E696AD98] numberWithDouble:*a3];
            objc_claimAutoreleasedReturnValue();
          }

          else
          {
            {
              re::introspect<float>(BOOL)::info = re::introspect_float(0, v76);
            }

            if (re::introspect<float>(BOOL)::info == a2)
            {
              LODWORD(a4) = *a3;
              [MEMORY[0x1E696AD98] numberWithFloat:a4];
              objc_claimAutoreleasedReturnValue();
            }

            else
            {
              {
                re::introspect<short>(BOOL)::info = re::introspect_short(0, v77);
              }

              if (re::introspect<short>(BOOL)::info == a2)
              {
                [MEMORY[0x1E696AD98] numberWithShort:*a3];
                objc_claimAutoreleasedReturnValue();
              }

              else
              {
                {
                  re::introspect<int>(BOOL)::info = re::introspect_int(0, v78);
                }

                if (re::introspect<int>(BOOL)::info == a2)
                {
                  [MEMORY[0x1E696AD98] numberWithInt:*a3];
                  objc_claimAutoreleasedReturnValue();
                }

                else
                {
                  {
                    re::introspect<long>(BOOL)::info = re::introspect_long(0, v79);
                  }

                  if (re::introspect<long>(BOOL)::info == a2)
                  {
                    [MEMORY[0x1E696AD98] numberWithLong:*a3];
                    objc_claimAutoreleasedReturnValue();
                  }

                  else
                  {
                    {
                      re::introspect<unsigned long>(BOOL)::info = re::introspect_size_t(0, v80);
                    }

                    if (re::introspect<unsigned long>(BOOL)::info != a2)
                    {
                      {
                        re::introspect<long long>(BOOL)::info = re::introspect_int64_t(0, v81);
                      }

                      if (re::introspect<long long>(BOOL)::info == a2)
                      {
                        [MEMORY[0x1E696AD98] numberWithLongLong:*a3];
                        objc_claimAutoreleasedReturnValue();
                        goto LABEL_104;
                      }

                      if (re::introspect<unsigned char>(0) == a2)
                      {
                        [MEMORY[0x1E696AD98] numberWithUnsignedChar:*a3];
                        objc_claimAutoreleasedReturnValue();
                        goto LABEL_104;
                      }

                      if (re::introspect<unsigned short>(0) == a2)
                      {
                        [MEMORY[0x1E696AD98] numberWithUnsignedShort:*a3];
                        objc_claimAutoreleasedReturnValue();
                        goto LABEL_104;
                      }

                      if (re::introspect<unsigned int>(0) == a2)
                      {
                        [MEMORY[0x1E696AD98] numberWithUnsignedInt:*a3];
                        objc_claimAutoreleasedReturnValue();
                        goto LABEL_104;
                      }

                      v7 = re::introspect<unsigned long long>(0);
                      if (v7 != a2)
                      {
                        v8 = *re::foundationSerializationLogObjects(v7);
                        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                        {
                          v9 = v8;
                          re::getPrettyTypeName(a2, buf);
                          if (buf[8])
                          {
                            v10 = *&buf[16];
                          }

                          else
                          {
                            v10 = &buf[9];
                          }

                          LODWORD(v82) = 136315138;
                          *(&v82 + 4) = v10;
LABEL_131:
                          _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "PropertyBagWriter; unhandled type '%s'.", &v82, 0xCu);

                          if (*buf && (buf[8] & 1) != 0)
                          {
                            (*(**buf + 40))(*buf, *&buf[16]);
                          }
                        }

LABEL_56:
                        v37 = 0;
                        LOBYTE(v31) = 0;
                        return v31 | v37;
                      }
                    }

                    [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*a3];
                    objc_claimAutoreleasedReturnValue();
                  }
                }
              }
            }
          }
        }

LABEL_104:
        v37 = 0;
        LOBYTE(v31) = 1;
        return v31 | v37;
      }

      if (*a3 != 1)
      {
        [MEMORY[0x1E696AD98] numberWithBool:0];
        objc_claimAutoreleasedReturnValue();
        goto LABEL_104;
      }

      LOBYTE(v31) = 1;
      [MEMORY[0x1E696AD98] numberWithBool:1];
      objc_claimAutoreleasedReturnValue();
LABEL_112:
      v37 = 0;
      return v31 | v37;
    case 1:
      v42 = *a3;
      re::PolymorphicData::makeWithPointer(*(a2 + 6), *a3, buf);
      if (!v42)
      {
        goto LABEL_86;
      }

      v43 = *(a2 + 6);
      {
        re::introspect<char>(BOOL)::info = re::introspect_char(0, v74);
      }

      if (v43 == re::introspect<char>(BOOL)::info)
      {
        [MEMORY[0x1E696AEC0] stringWithUTF8String:v42];
        objc_claimAutoreleasedReturnValue();
        goto LABEL_115;
      }

      if (*&buf[16])
      {
        goto LABEL_121;
      }

      v21 = *(a2 + 6);
      v20 = this;
      v19 = v42;
      goto LABEL_120;
    case 2:
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (*(a2 + 16) < 1)
      {
        goto LABEL_61;
      }

      v38 = 0;
      while (1)
      {
        v41 = v40;
        if ((v39 & 1) == 0)
        {
          break;
        }

        [v12 addObject:v40];

        if (++v38 >= *(a2 + 16))
        {
          goto LABEL_61;
        }
      }

      goto LABEL_110;
    case 3:
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (!(*(*a2 + 88))(a2, a3))
      {
        goto LABEL_61;
      }

      v32 = 0;
      while (1)
      {
        v33 = (*(*a2 + 104))(a2, a3, v32);
        v17 = v35;
        if ((v34 & 1) == 0)
        {
          goto LABEL_96;
        }

        [v12 addObject:v35];

        if ((*(*a2 + 88))(a2, a3) <= ++v32)
        {
          goto LABEL_61;
        }
      }

    case 4:
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (!(*(*a2 + 80))(a2, a3))
      {
        goto LABEL_61;
      }

      v13 = 0;
      while (1)
      {
        v14 = (*(*a2 + 104))(a2, a3, v13);
        v17 = v16;
        if ((v15 & 1) == 0)
        {
          break;
        }

        [v12 addObject:v16];

        if ((*(*a2 + 80))(a2, a3) <= ++v13)
        {
LABEL_61:
          v12;
          LOBYTE(v31) = 1;
          goto LABEL_111;
        }
      }

LABEL_96:

LABEL_110:
      LOBYTE(v31) = 0;
LABEL_111:

      goto LABEL_112;
    case 5:
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *buf = (*(*a2 + 88))(a2, a3);
      *&buf[8] = v22;
      while (2)
      {
        v23 = (*(*a2 + 96))(a2, a3);
        if (*buf == v23 && *&buf[8] == v24 && *&buf[10] == HIWORD(v24))
        {
          goto LABEL_61;
        }

        v25 = (*(*a2 + 104))(a2, buf);
        v28 = v27;
        if (v26)
        {
          [v12 addObject:v27];

          re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(buf);
          continue;
        }

        break;
      }

      LOBYTE(v31) = 0;
      goto LABEL_111;
    case 6:
      if (a3[2])
      {
        v45 = *(a3 + 2);
      }

      else
      {
        v45 = a3 + 9;
      }

      [MEMORY[0x1E696AEC0] stringWithUTF8String:v45];
      objc_claimAutoreleasedReturnValue();
      goto LABEL_104;
    case 7:
      *&v82 = objc_alloc_init(MEMORY[0x1E695DF90]);
      operator new();
    case 8:
      v53 = *(a2 + 14);
      if (!v53)
      {
        goto LABEL_87;
      }

      v54 = *(a2 + 8);
      v55 = 1;
      v56 = *(a2 + 14);
      v57 = 1;
      do
      {
        if (**v54 == 4 && (*(*v54 + 4) & 1) != 0)
        {
          break;
        }

        v57 = v55++ < v53;
        v54 += 8;
        --v56;
      }

      while (v56);
      if (v57)
      {
        StructureMember = re::introspectionFirstStructureMember(a2, a2);
        if (StructureMember)
        {
          goto LABEL_121;
        }

        v65 = *re::foundationSerializationLogObjects(0);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v70 = v65;
          re::getPrettyTypeName(a2, buf);
          v71 = (buf[8] & 1) != 0 ? *&buf[16] : &buf[9];
          LODWORD(v82) = 136315138;
          *(&v82 + 4) = v71;
          _os_log_error_impl(&dword_1E1C61000, v70, OS_LOG_TYPE_ERROR, "PropertyBagReader; expected member in for struct '%s'.", &v82, 0xCu);

          if (*buf)
          {
            if (buf[8])
            {
              (*(**buf + 40))();
            }
          }
        }

        v31 = 0;
      }

      else
      {
LABEL_87:
        v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
        {
          v60 = MEMORY[0x1E696AEC0];
          re::getPrettyTypeName(a2, buf);
          if (buf[8])
          {
            v61 = *&buf[16];
          }

          else
          {
            v61 = &buf[9];
          }

          v62 = [v60 stringWithUTF8String:v61];
          if (*buf && (buf[8] & 1) != 0)
          {
            (*(**buf + 40))();
          }

          *&v82 = @"type";
          *(&v82 + 1) = @"value";
          *buf = v62;
          *&buf[8] = v59;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v82 count:2];
          objc_claimAutoreleasedReturnValue();

          v31 = 1;
        }

        else
        {
          v31 = 0;
        }
      }

      goto LABEL_122;
    case 9:
      *&v82 = 0;
      v46 = memcpy(&v82, a3, *(a2 + 5));
      v47 = *(a2 + 8);
      v48 = v82;
      v49 = *v47;
      if (!v49)
      {
        goto LABEL_75;
      }

      v50 = *(v47 + 1);
      do
      {
        v51 = *v50;
        if (**v50 == 1 && *(v51 + 1) == v82)
        {
          [MEMORY[0x1E696AEC0] stringWithUTF8String:*(v51 + 2)];
          objc_claimAutoreleasedReturnValue();
          LOBYTE(v31) = 1;
          goto LABEL_112;
        }

        ++v50;
        --v49;
      }

      while (v49);
LABEL_75:
      v52 = *re::foundationSerializationLogObjects(v46);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v67 = *(a2 + 6);
        *buf = 134218242;
        *&buf[4] = v48;
        *&buf[12] = 2080;
        *&buf[14] = v67;
        _os_log_error_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_ERROR, "PropertyBagWriter; unknown enum value %llu in %s.", buf, 0x16u);
      }

      LOBYTE(v31) = 0;
      goto LABEL_112;
    case 0xA:
      re::StringID::StringID(buf, a3);
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*&buf[8]];
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      goto LABEL_104;
    case 0xB:
      *&buf[8] = 0;
      *&buf[16] = 0;
      v87 = 0;
      re::DynamicString::setCapacity(buf, 0);
      v29 = (*(a2 + 9))(*this, a2, a3, buf);
      if (v29)
      {
        if (buf[8])
        {
          v30 = *&buf[16];
        }

        else
        {
          v30 = &buf[9];
        }

        [MEMORY[0x1E696AEC0] stringWithUTF8String:v30];
        objc_claimAutoreleasedReturnValue();
        LOBYTE(v31) = 1;
      }

      else
      {
        v63 = *re::foundationSerializationLogObjects(v29);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v68 = v63;
          re::getPrettyTypeName(a2, &v82);
          v69 = (BYTE8(v82) & 1) != 0 ? v83 : (&v82 + 9);
          *v84 = 136315138;
          v85 = v69;
          _os_log_error_impl(&dword_1E1C61000, v68, OS_LOG_TYPE_ERROR, "PropertyBagWriter; serialization callback of type '%s' failed.", v84, 0xCu);

          if (v82)
          {
            if (BYTE8(v82))
            {
              (*(*v82 + 40))();
            }
          }
        }

        LOBYTE(v31) = 0;
      }

      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      goto LABEL_112;
    case 0xD:
      if ((*(*a2 + 56))(a2, a3))
      {
        v18 = *(a2 + 6);
        v19 = (*(*a2 + 80))(a2, a3);
        v20 = this;
        v21 = v18;
LABEL_120:
LABEL_121:
        v31 = v44;
      }

      else
      {
LABEL_86:
        [MEMORY[0x1E695DFB0] null];
        objc_claimAutoreleasedReturnValue();
LABEL_115:
        v31 = 1;
      }

LABEL_122:
      v37 = v31 & 0xFFFFFFFFFFFFFF00;
      return v31 | v37;
    default:
      v36 = *re::foundationSerializationLogObjects(this);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_56;
      }

      v9 = v36;
      re::getPrettyTypeName(a2, buf);
      if (buf[8])
      {
        v66 = *&buf[16];
      }

      else
      {
        v66 = &buf[9];
      }

      LODWORD(v82) = 136315138;
      *(&v82 + 4) = v66;
      goto LABEL_131;
  }
}