uint64_t re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(uint64_t a1, const char *a2, float *a3)
{
  v13 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v13);
    }

    v6 = *a3;
    v7 = *(a1 + 168);
    if (fabsf(v6) == INFINITY)
    {
      v8 = "-Infinity";
      if (v6 > 0.0)
      {
        v8 = "Infinity";
      }

      v12 = v8;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(v7, &v12);
    }

    else
    {
      v9 = v6;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(*(a1 + 168));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteDouble(v7, v9);
    }

    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v10 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(uint64_t a1, const char *a2, double *a3)
{
  v12 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v12);
    }

    v6 = *a3;
    v7 = *(a1 + 168);
    if (fabs(v6) == INFINITY)
    {
      v8 = "-Infinity";
      if (v6 > 0.0)
      {
        v8 = "Infinity";
      }

      v11 = v8;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(v7, &v11);
    }

    else
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(*(a1 + 168));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteDouble(v7, v6);
    }

    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v55 = *MEMORY[0x1E69E9840];
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v49), re::TypeInfo::TypeInfo(v48, &v50), v48[12] != 1) || !re::TypeInfo::isInteger(v48))
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
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v49);
  re::TypeInfo::TypeInfo(v48, &v50);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v49);
  re::TypeInfo::TypeInfo(v47, &v50);
  re::TypeInfo::TypeInfo(v45, this);
  v18 = (*(*a1 + 80))(a1, v48);
  if (!v18)
  {
    v38 = re::TypeInfo::name(v48);
    goto LABEL_38;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v46 + 96))(a4);
    if (v22)
    {
      v53 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v49 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v49, v22);
      ++v52;
      v23 = (*(v46 + 120))(a4, v17);
      if ((*(v46 + 128))())
      {
        do
        {
          v24 = (*(v46 + 136))(v23);
          v25 = (*(v46 + 144))(v23);
          v54[0].n128_u64[0] = v24;
          v54[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v49, v54);
        }

        while (((*(v46 + 128))(v23, v26) & 1) != 0);
      }

      (*(v46 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v51);
      if (v51)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,false>(v53, (v53 + 16 * v51), v29, 1, v27);
      if (v51)
      {
        v31 = v53;
        v32 = v53 + 16 * v51;
        do
        {
          v33 = *(v31 + 8);
          v34 = **v31;
          if (HIDWORD(v34))
          {
            if (v34 <= 0x2540BE3FFLL)
            {
              v36 = v54;
            }

            else
            {
              v36 = std::__itoa::__base_10_u32[abi:nn200100](v54, v34 / 0x2540BE400);
              v34 %= 0x2540BE400uLL;
            }

            v36->n128_u16[0] = std::__itoa::__digits_base_10[v34 / 0x5F5E100];
            v37 = v34 % 0x5F5E100;
            v36->n128_u16[1] = std::__itoa::__digits_base_10[v37 / 0xF4240uLL];
            v37 %= 0xF4240u;
            v36->n128_u16[2] = std::__itoa::__digits_base_10[v37 / 0x2710uLL];
            v37 %= 0x2710u;
            v36->n128_u16[3] = std::__itoa::__digits_base_10[v37 / 0x64u];
            v36->n128_u16[4] = std::__itoa::__digits_base_10[v37 % 0x64u];
            v35 = &v36->n128_i8[10];
          }

          else
          {
            v35 = std::__itoa::__base_10_u32[abi:nn200100](v54, **v31);
          }

          *v35 = 0;
          v19(a1, v54, 0, v33, v48, v47, 0);
          v31 += 16;
        }

        while (v31 != v32);
      }

      if (v49 && v53)
      {
        (*(*v49 + 40))(v30);
      }
    }

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_35;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v52 = *MEMORY[0x1E69E9840];
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v46), re::TypeInfo::TypeInfo(v45, &v47), v45[12] != 1) || !re::TypeInfo::isInteger(v45))
  {
LABEL_32:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v45, &v47);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v44, &v47);
  re::TypeInfo::TypeInfo(v42, this);
  v18 = (*(*a1 + 80))(a1, v45);
  if (!v18)
  {
    v35 = re::TypeInfo::name(v45);
    goto LABEL_32;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v43 + 96))(a4);
    if (v22)
    {
      v50 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v46 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v46, v22);
      ++v49;
      v23 = (*(v43 + 120))(a4, v17);
      if ((*(v43 + 128))())
      {
        do
        {
          v24 = (*(v43 + 136))(v23);
          v25 = (*(v43 + 144))(v23);
          v51[0].n128_u64[0] = v24;
          v51[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v46, v51);
        }

        while (((*(v43 + 128))(v23, v26) & 1) != 0);
      }

      (*(v43 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v48);
      if (v48)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,false>(v50, (v50 + 16 * v48), v29, 1, v27);
      if (v48)
      {
        v31 = v50;
        v32 = v50 + 16 * v48;
        do
        {
          v33 = *v31;
          v34 = *(v31 + 8);
          v31 += 16;
          *std::__itoa::__base_10_u32[abi:nn200100](v51, *v33) = 0;
          v19(a1, v51, 0, v34, v45, v44, 0);
        }

        while (v31 != v32);
      }

      if (v46 && v50)
      {
        (*(*v46 + 40))(v30);
      }
    }

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_29;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v52 = *MEMORY[0x1E69E9840];
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v46), re::TypeInfo::TypeInfo(v45, &v47), v45[12] != 1) || !re::TypeInfo::isInteger(v45))
  {
LABEL_32:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v45, &v47);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v44, &v47);
  re::TypeInfo::TypeInfo(v42, this);
  v18 = (*(*a1 + 80))(a1, v45);
  if (!v18)
  {
    v35 = re::TypeInfo::name(v45);
    goto LABEL_32;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v43 + 96))(a4);
    if (v22)
    {
      v50 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v46 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v46, v22);
      ++v49;
      v23 = (*(v43 + 120))(a4, v17);
      if ((*(v43 + 128))())
      {
        do
        {
          v24 = (*(v43 + 136))(v23);
          v25 = (*(v43 + 144))(v23);
          v51[0].n128_u64[0] = v24;
          v51[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v46, v51);
        }

        while (((*(v43 + 128))(v23, v26) & 1) != 0);
      }

      (*(v43 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v48);
      if (v48)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,false>(v50, &v50[v48], v29, 1, v27);
      if (v48)
      {
        v31 = v50;
        v32 = &v50[v48];
        do
        {
          v33 = v31->n128_u64[0];
          v34 = v31->n128_u64[1];
          ++v31;
          *std::__itoa::__base_10_u32[abi:nn200100](v51, *v33) = 0;
          v19(a1, v51, 0, v34, v45, v44, 0);
        }

        while (v31 != v32);
      }

      if (v46 && v50)
      {
        (*(*v46 + 40))(v30);
      }
    }

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_29;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v52 = *MEMORY[0x1E69E9840];
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v46), re::TypeInfo::TypeInfo(v45, &v47), v45[12] != 1) || !re::TypeInfo::isInteger(v45))
  {
LABEL_32:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v45, &v47);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v44, &v47);
  re::TypeInfo::TypeInfo(v42, this);
  v18 = (*(*a1 + 80))(a1, v45);
  if (!v18)
  {
    v35 = re::TypeInfo::name(v45);
    goto LABEL_32;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v43 + 96))(a4);
    if (v22)
    {
      v50 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v46 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v46, v22);
      ++v49;
      v23 = (*(v43 + 120))(a4, v17);
      if ((*(v43 + 128))())
      {
        do
        {
          v24 = (*(v43 + 136))(v23);
          v25 = (*(v43 + 144))(v23);
          v51[0].n128_u64[0] = v24;
          v51[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v46, v51);
        }

        while (((*(v43 + 128))(v23, v26) & 1) != 0);
      }

      (*(v43 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v48);
      if (v48)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,false>(v50, &v50[v48], v29, 1, v27);
      if (v48)
      {
        v31 = v50;
        v32 = &v50[v48];
        do
        {
          v33 = v31->n128_u64[0];
          v34 = v31->n128_u64[1];
          ++v31;
          *std::__itoa::__base_10_u32[abi:nn200100](v51, *v33) = 0;
          v19(a1, v51, 0, v34, v45, v44, 0);
        }

        while (v31 != v32);
      }

      if (v46 && v50)
      {
        (*(*v46 + 40))(v30);
      }
    }

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_29;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v57[0] = *MEMORY[0x1E69E9840];
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v51), re::TypeInfo::TypeInfo(v50, &v52), v50[12] != 1) || !re::TypeInfo::isInteger(v50))
  {
LABEL_42:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_39:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v50, &v52);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v49, &v52);
  re::TypeInfo::TypeInfo(v47, this);
  v18 = (*(*a1 + 80))(a1, v50);
  if (!v18)
  {
    v40 = re::TypeInfo::name(v50);
    goto LABEL_42;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v48 + 96))(a4);
    if (v22)
    {
      v55 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v51 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v51, v22);
      ++v54;
      v23 = (*(v48 + 120))(a4, v17);
      if ((*(v48 + 128))())
      {
        do
        {
          v24 = (*(v48 + 136))(v23);
          v25 = (*(v48 + 144))(v23);
          v56[0].n128_u64[0] = v24;
          v56[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v51, v56);
        }

        while (((*(v48 + 128))(v23, v26) & 1) != 0);
      }

      (*(v48 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v53);
      if (v53)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,false>(v55, (v55 + 16 * v53), v29, 1, v27);
      if (v53)
      {
        v31 = v55;
        v32 = v55 + 16 * v53;
        do
        {
          v33 = **v31;
          if ((v33 & 0x8000000000000000) != 0)
          {
            v56[0].n128_u8[0] = 45;
            v33 = -v33;
            v34 = (v56[0].n128_u64 + 1);
          }

          else
          {
            v34 = v56;
          }

          v35 = *(v31 + 8);
          if (v57 - v34 > 19 || (v36 = (1233 * (64 - __clz(v33 | 1))) >> 12, v37 = v36 - (std::__itoa::__pow10_64[v36] > v33) + 1, v38 = v57, v57 - v34 >= v37))
          {
            if (HIDWORD(v33))
            {
              if (v33 > 0x2540BE3FFLL)
              {
                v34 = std::__itoa::__base_10_u32[abi:nn200100](v34, v33 / 0x2540BE400);
                v33 %= 0x2540BE400uLL;
              }

              v34->n128_u16[0] = std::__itoa::__digits_base_10[v33 / 0x5F5E100];
              v39 = v33 % 0x5F5E100;
              v34->n128_u16[1] = std::__itoa::__digits_base_10[v39 / 0xF4240uLL];
              v39 %= 0xF4240u;
              v34->n128_u16[2] = std::__itoa::__digits_base_10[v39 / 0x2710uLL];
              v39 %= 0x2710u;
              v34->n128_u16[3] = std::__itoa::__digits_base_10[v39 / 0x64u];
              v34->n128_u16[4] = std::__itoa::__digits_base_10[v39 % 0x64u];
              v38 = &v34->n128_i8[10];
            }

            else
            {
              v38 = std::__itoa::__base_10_u32[abi:nn200100](v34, v33);
            }
          }

          *v38 = 0;
          v19(a1, v56, 0, v35, v50, v49, 0);
          v31 += 16;
        }

        while (v31 != v32);
      }

      if (v51 && v55)
      {
        (*(*v51 + 40))(v30);
      }
    }

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_39;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  v20 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
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

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_35;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  v20 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
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

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_35;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  v24 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
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

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_33;
  }

  return v25 & 1;
}

uint64_t re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  v24 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
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

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_30;
  }

  return v25 & 1;
}

uint64_t re::serializeDynamicString<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
    if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v24))
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
    if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v24))
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

        re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, v21);
      }

      goto LABEL_27;
    }
  }

LABEL_24:
  v22 = 0;
  return v22 & 1;
}

void *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5D19670;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5D19670;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::error(uint64_t *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginField(uint64_t a1, int a2, uint64_t a3)
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

double re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginObject(uint64_t a1)
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
    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(*(a1 + 8) + 24, v4, 0);
  }

  v6 = "";
  v7 = 0;
  v8 = 0;
  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endObject(_anonymous_namespace_ *result)
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
    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((*(result + 1) + 24));
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginArray(uint64_t a1, uint64_t a2)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionary(uint64_t a1, uint64_t a2, int a3)
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

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(v16 + 24, v17, 0);
  }

  else
  {
    *(v15 - 28) = 0;
    v19 = a2;
    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(v16 + 24, *(v15 - 40), &v19);
  }
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryEntry(uint64_t a1)
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
    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(*(a1 + 8) + 24, 0);
    v3 = 0;
    *(v2 - 40) = "key";
  }

  *(v2 - 32) = v3;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryValue(uint64_t result)
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

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionaryEntry(_anonymous_namespace_ *result)
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
    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((*(result + 1) + 24));
  }

  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionary(uint64_t a1)
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
    result = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(v4);
  }

  else
  {
    result = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionary(v4);
  }

  v6 = *(a1 + 48);
  --*(a1 + 40);
  *(a1 + 48) = v6 + 2;
  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginOptional(uint64_t a1, uint64_t a2)
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

  re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(*(a1 + 8) + 24, *(v3 + 40 * *(a1 + 40) - 40), &v5);
  return a2;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int8 a2)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, char a2)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4);
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned int a2)
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

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), &v10);
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

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), &v10);
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

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), &v10);
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

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), &v8);
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int8 a2)
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

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), &v8);
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int16 a2)
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

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), &v8);
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unint64_t a2)
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

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(*(a1 + 8) + 24, *(v7 + 40 * v5 - 40), &v11);
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
    result = std::__to_chars_itoa[abi:nn200100]<long long>((v5 - 27), (v5 - 3), a2);
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

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), &v8);
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

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(*(a1 + 8) + 24, *(v7 + 40 * v5 - 40), &v11);
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, float a2)
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

  return re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, double a2)
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

  return re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4);
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializeString(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3)
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

    v11 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(*(result + 1) + 24, *&v10[40 * v8 - 40], &v13);
    if (a3 && v11)
    {
      re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(*(v5 + 1) + 24, a2);
    }

    v12 = (*(v5 + 1) + 24);
  }

  return result;
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializeData(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v27 = *(v7 + 40 * *(a1 + 40) - 40);
  if ((*(v6 + 64) & 1) == 0)
  {
    if ((*(*(v6 + 152) + 48 * *(v6 + 136) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(v6 + 192), &v27);
    }

    if (!a3)
    {
      v8 = *(v6 + 192);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v8);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(v8);
    }

    LOBYTE(v22) = 4;
    DWORD1(v22) = 0;
    *(&v22 + 1) = v27;
    v23 = 0;
    v25 = 0;
    v26 = 0;
    v24 = a3;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(v6 + 24, &v22);
    v10 = *(a1 + 8);
    if ((*(v10 + 64) & 1) == 0)
    {
      v11 = *(*(v10 + 152) + 48 * *(v10 + 136) - 24);
      *(&v22 + 1) = 0;
      v23 = 0;
      v24 = 0;
      re::DynamicString::setCapacity(&v22, 0);
      *&v22 = *(v10 + 56);
      re::DynamicString::setCapacity(&v22, ((2863311531u * v11) >> 31) & 0x1FFFFFFFCLL);
      re::EncoderHelper::encodeBase64(a2, v11, &v22);
      v12 = *(v10 + 192);
      if (BYTE8(v22))
      {
        v13 = v23;
      }

      else
      {
        v13 = &v22 + 9;
      }

      if (BYTE8(v22))
      {
        v14 = *(&v22 + 1) >> 1;
      }

      else
      {
        v14 = BYTE8(v22) >> 1;
      }

      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(*(v10 + 192));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v12, v13, v14);
      if (v22 && (BYTE8(v22) & 1) != 0)
      {
        (*(*v22 + 40))();
      }

      v15 = *(v10 + 152) + 48 * *(v10 + 136);
      *(v15 - 16) += v11;
      v16 = *(a1 + 8);
      if ((*(v16 + 64) & 1) == 0)
      {
        v17 = *(v16 + 152);
        v18 = *(v16 + 136);
        if (*(v17 + 48 * v18 - 16) == *(v17 + 48 * v18 - 24))
        {
          *(v16 + 232) = 0;
          ++*(v16 + 240);
          v19 = *(v16 + 152) + 48 * *(v16 + 136);
          ++*(v19 - 16);
        }

        else
        {
          if (v28)
          {
            v20 = *&v29[7];
          }

          else
          {
            v20 = v29;
          }

          v21 = *(v16 + 152) + 48 * *(v16 + 136);
          re::DynamicString::format("Failed to serialize BLOB %s. Expected number of bytes: %lld. Actual number of bytes: %lld.", &v22, v20, *(v21 - 24), *(v21 - 16));
          if (v22 && (BYTE8(v22) & 1) != 0)
          {
            (*(*v22 + 40))();
          }

          if (v27)
          {
            if (v28)
            {
              (*(*v27 + 40))();
            }
          }
        }
      }
    }
  }
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
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

  re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(*(a1 + 8) + 24, *(v6 + 40 * *(a1 + 40) - 40), &v8);
  if (a2)
  {
    v9 = a2;
    (*(**(a3 + 32) + 16))(*(a3 + 32), a1, &v9);
  }
}

_BYTE *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::write(uint64_t a1, uint64_t a2, re **this)
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

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v19);
  if (v19[0] == 1)
  {
    re::TypeInfo::TypeInfo(v16, &v20);
    if (*(v17 + 96) || (re::TypeRegistry::typeInfo(v16[0], *(v17 + 80), v21), v21[0] == 1))
    {
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, v16, a4);
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

uint64_t re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v57 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v49);
  re::TypeRegistry::typeInfo(*a4, *(a4[2] + 80), v45);
  if (v45[0] == 1)
  {
    if ((v49[0] & 1) == 0)
    {
      v11 = re::TypeInfo::name(&v46)[1];
      re::TypeInfo::name(a3);
    }

    if (v50 == v46)
    {
      v18 = *v52;
      v19 = *v48;
      if (*v52 == *v48)
      {
        v21 = WORD1(v18) == WORD1(v19);
        v20 = (v19 ^ v18) & 0xFFFFFF00000000;
        v21 = v21 && v20 == 0;
        if (v21)
        {
          goto LABEL_5;
        }
      }
    }

    else if (re::areSameTranslatedVersion(&v50, &v46, v10))
    {
LABEL_5:
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v50, a5);
      goto LABEL_15;
    }

    if (v51 == v47)
    {
      re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v50, &v46, a5);
    }

    else
    {
      v22 = re::TypeInfo::name(&v50)[1];
      re::TypeInfo::name(&v46);
    }
  }

LABEL_15:
  re::TypeMemberCollection::TypeMemberCollection(v44, *a3, a3[2]);
  result = re::TypeMemberCollection::TypeMemberCollection(v42, *a4, a4[2]);
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
        v29 = *(v41 + 16);
        if (strlen(v29) >= 3 && *v29 == 109)
        {
          v29 += 2 * (*(v29 + 1) == 95);
        }

        v30 = *(v41 + 32);
        v31 = *(*a4 + 856);
        if (!v31 || (v31 = re::internal::TypeTranslationTable::translateMember(v31, v40), v31 == -1))
        {
          v33 = *re::foundationSerializationLogObjects(v31);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = re::TypeInfo::name(a4)[1];
            *buf = 136315394;
            v54 = v34;
            v55 = 2080;
            v56 = v29;
            _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_INFO, "Skipping unknown member %s.%s.", buf, 0x16u);
          }

          v35 = *(a1 + 272);
          re::TypeRegistry::typeInfo(v40[0], *v41, buf);
          re::TypeInfo::TypeInfo(v38, &v54 + 4);
          result = re::internal::translateType(v35, v38, buf);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v29, v30, 0, buf, buf, 1);
          }
        }

        else
        {
          re::TypeMemberCollection::operator[](v44, v31, v38);
          v32 = *(v39 + 24);
          re::TypeRegistry::typeInfo(v38[0], *v39, buf);
          re::TypeInfo::TypeInfo(v37, &v54 + 4);
          re::TypeRegistry::typeInfo(v40[0], *v41, buf);
          result = re::TypeInfo::TypeInfo(v36, &v54 + 4);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v29, v30, a2 + v32, v37, v36, a5);
          }
        }
      }
    }
  }

  return result;
}

uint64_t re::serializeBool<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *this, re::TypeInfo *a6, int a7)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, a2, v13);
}

uint64_t re::serializeChar<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, int a7)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(a1 + 24, a2, v13);
}

uint64_t re::serializeI8<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, int a7)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>(a1 + 24, a2, v13);
}

uint64_t re::serializeI16<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, __int16 *a4, re *this, re::TypeInfo *a6, int a7)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>(a1 + 24, a2, v13);
}

uint64_t re::serializeI32<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, int a7)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>(a1 + 24, a2, v13);
}

uint64_t re::serializeI64<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unint64_t *a4, re *this, re::TypeInfo *a6, int a7)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>(a1 + 24, a2, v13);
}

uint64_t re::serializeU8<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *this, re::TypeInfo *a6, int a7)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>(a1 + 24, a2, v13);
}

uint64_t re::serializeU16<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int16 *a4, re *this, re::TypeInfo *a6, int a7)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>(a1 + 24, a2, v13);
}

uint64_t re::serializeU32<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, int a7)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(a1 + 24, a2, v13);
}

uint64_t re::serializeU64<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, rapidjson::internal **a4, re *this, re::TypeInfo *a6, int a7)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(a1 + 24, a2, v13);
}

uint64_t re::serializeFloat<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *this, re::TypeInfo *a6, int a7)
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

  return re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, v13);
}

uint64_t re::serializeDouble<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, double *a4, re *this, re::TypeInfo *a6, int a7)
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

  return re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, v13);
}

uint64_t re::serializeCString<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *this, re::TypeInfo *a6, int a7)
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
    v13 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v22);
    v14 = 0;
    if (!v13)
    {
      return v14 & 1;
    }

    goto LABEL_22;
  }

  v15 = *a4;
  v23 = 2 * (*a4 != 0);
  if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v23))
  {
    if (v15)
    {
      if (*a4)
      {
        v16 = strlen(*a4);
        v22 = v16;
        if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v22))
        {
          if (v16)
          {
            re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, *a4);
          }

          goto LABEL_21;
        }
      }

      else
      {
        v22 = 0;
        if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v22))
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

uint64_t re::serializeStringID<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
    if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v22))
    {
      if (v19)
      {
        re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, *(a4 + 8));
      }

      goto LABEL_20;
    }

LABEL_21:
    v20 = 0;
    return v20 & 1;
  }

  v22 = 0;
  if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v22))
  {
    goto LABEL_21;
  }

LABEL_20:
  v20 = *(a1 + 64) ^ 1;
  return v20 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, unint64_t **this, unint64_t **a6, int a7)
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
      if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, v38))
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

          re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, v27);
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
  if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v33))
  {
    goto LABEL_17;
  }

LABEL_7:
  v13 = *(a1 + 64) ^ 1;
  return v13 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString(_BYTE *a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *this, re::TypeInfo *a6)
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
      if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, &v24))
      {
        re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference((a1 + 24), &v25);
LABEL_22:
LABEL_23:
        v20 = a1[64] ^ 1;
        return v20 & 1;
      }
    }

    else
    {
      v24 = 2;
      if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, &v24))
      {
        v13 = strlen(*a4);
        v25 = v13;
        if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v25))
        {
          if (v13)
          {
            re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString((a1 + 24), *a4);
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
  v21 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, &v25);
  v20 = 0;
  if (v21)
  {
    goto LABEL_22;
  }

  return v20 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer(uint64_t a1, const char *a2, int a3, char **a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
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
          if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, v52))
          {
            goto LABEL_30;
          }

          re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference((a1 + 24), &v50);
          goto LABEL_17;
        }

        v23 = *a4;
      }

      v45 = v47;
      re::internal::SharedObjectGraph::beginObject((a1 + 336), v23, &v45);
      v44 = 2;
      if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v44))
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

      if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
      {
        v37 = re::TypeInfo::polymorphicObjectName(v52);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, v37[1], 0, v34, v46, v52, 0);
        }

        re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
      }

      goto LABEL_45;
    }
  }

  LODWORD(v50) = 0;
  v25 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v50);
  v26 = 0;
  if (v25)
  {
LABEL_17:
LABEL_18:
    v26 = *(a1 + 64) ^ 1;
  }

  return v26 & 1;
}

void re::ServiceRegistry::~ServiceRegistry(re::ServiceRegistry *this)
{
  re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit(this + 2);
  re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit(this + 2);
}

{
  re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit(this + 2);
  re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit(this + 2);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ServiceRegistry::doGetService(re::ServiceRegistry *this, const re::IntrospectionBase *a2, StringID *a3)
{
  re::StringID::StringID(&v18, a3);
  v19 = a2;
  v5 = re::StringID::StringID(v20, &v18);
  if (*&v18.var0)
  {
    if (*&v18.var0)
    {
    }
  }

  *&v18.var0 = 0;
  v18.var1 = &str_67;
  v6 = re::internal::ServiceKeyHash::operator()(&v21, &v19);
  v7 = *(this + 10);
  if (!v7)
  {
    v16 = 0;
    if ((v20[0] & 1) == 0)
    {
      return v16;
    }

    goto LABEL_15;
  }

  v8 = *(*(this + 3) + 4 * (v6 % v7));
  v9 = v20[0];
  if (v8 == 0x7FFFFFFF)
  {
LABEL_12:
    v16 = 0;
    if ((v9 & 1) == 0)
    {
      return v16;
    }

    goto LABEL_15;
  }

  v10 = *(this + 4);
  v11 = v19;
  v12 = v20[1];
  while (1)
  {
    v13 = v10 + 40 * v8;
    v15 = *(v13 + 8);
    v14 = (v13 + 8);
    if (v15 == v11 && (v9 ^ v14[1]) <= 1)
    {
      v6 = v14[2];
      if (v6 == v12)
      {
        break;
      }

      v6 = strcmp(v6, v12);
      if (!v6)
      {
        break;
      }
    }

    v8 = *(v10 + 40 * v8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_12;
    }
  }

  v16 = v14[3];
  if (v9)
  {
LABEL_15:
    if (v20[0])
    {
    }
  }

  return v16;
}

void *re::allocInfo_ServiceRegistry(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_559, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_559))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3D10, "ServiceRegistry");
    __cxa_guard_release(&_MergedGlobals_559);
  }

  return &unk_1EE1C3D10;
}

void re::initInfo_ServiceRegistry(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x196524EDC9931BE4;
  v6[1] = "ServiceRegistry";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_ServiceRegistry(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ServiceRegistry>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ServiceRegistry>;
  *(this + 13) = re::internal::defaultConstructV2<re::ServiceRegistry>;
  *(this + 14) = re::internal::defaultDestructV2<re::ServiceRegistry>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultConstruct<re::ServiceRegistry>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5D197B0;
  *(a3 + 8) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 52) = 0x7FFFFFFFLL;
}

double re::internal::defaultDestruct<re::ServiceRegistry>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit((a3 + 16));

  return re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit((a3 + 16));
}

void re::internal::defaultConstructV2<re::ServiceRegistry>(uint64_t a1)
{
  *a1 = &unk_1F5D197B0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 52) = 0x7FFFFFFFLL;
}

double re::internal::defaultDestructV2<re::ServiceRegistry>(uint64_t a1)
{
  re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit((a1 + 16));

  return re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit((a1 + 16));
}

void *re::allocInfo_EntitlementService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_560, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_560))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3DA8, "EntitlementService");
    __cxa_guard_release(&_MergedGlobals_560);
  }

  return &unk_1EE1C3DA8;
}

void re::initInfo_EntitlementService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x522BBC3B11E1D0;
  v6[1] = "EntitlementService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_EntitlementService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::missingServiceErrorMessage@<X0>(re::internal *this@<X0>, const re::IntrospectionBase *a2@<X1>, re::DynamicString *a3@<X8>)
{
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  re::DynamicString::setCapacity(a3, 0);
  re::DynamicString::append(a3, "Service of type '", 0x11uLL);
  re::getPrettyTypeName(this, &v15);
  if (__s2[0])
  {
    v7 = __s2[1];
  }

  else
  {
    v7 = __s2 + 1;
  }

  if (__s2[0])
  {
    v8 = __s2[0] >> 1;
  }

  else
  {
    v8 = LOBYTE(__s2[0]) >> 1;
  }

  re::DynamicString::append(a3, v7, v8);
  if (v15 && (__s2[0] & 1) != 0)
  {
    (*(*v15 + 40))();
  }

  v9 = re::StringID::invalid(&v15);
  v10 = v15;
  if ((v15 ^ *a2) > 1)
  {
    v11 = 1;
    if ((v15 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v9 = *(a2 + 1);
    if (v9 == __s2[0])
    {
      v11 = 0;
      if ((v15 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = strcmp(v9, __s2[0]);
      v11 = v9 != 0;
      if ((v10 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  if (v15)
  {
  }

LABEL_19:
  if (v11)
  {
    re::DynamicString::append(a3, "' and key '", 0xBuLL);
    v12 = *(a2 + 1);
    v13 = strlen(v12);
    re::DynamicString::append(a3, v12, v13);
  }

  return re::DynamicString::append(a3, "' is required but is not registered in the service locator.", 0x3BuLL);
}

uint64_t re::BackgroundTask::BackgroundTask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  std::__function::__value_func<re::BackgroundTaskResult ()(re::BackgroundTask &)>::__value_func[abi:nn200100](a1 + 8, a3);
  std::__function::__value_func<void ()(re::BackgroundTask &)>::__value_func[abi:nn200100](a1 + 40, a4);
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1018212795;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  v6 = dispatch_group_create();

  v7 = *(a1 + 208);
  *(a1 + 208) = v6;

  return a1;
}

void re::BackgroundTask::~BackgroundTask(re::BackgroundTask *this)
{
  std::condition_variable::~condition_variable((this + 160));
  std::mutex::~mutex((this + 96));
  std::__function::__value_func<void ()(re::BackgroundTask &)>::~__value_func[abi:nn200100](this + 40);
  std::__function::__value_func<re::BackgroundTaskResult ()(re::BackgroundTask &)>::~__value_func[abi:nn200100](this + 8);
}

uint64_t std::__function::__value_func<re::BackgroundTaskResult ()(re::BackgroundTask &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t *re::foundationThreadingLogObjects(re *this)
{
  {
    re::foundationThreadingLogObjects(void)::logObjects = os_log_create("com.apple.re", "Foundation.Threading");
    qword_1ECF1CE30 = os_log_create("com.apple.re", "Foundation.JobSystem");
  }

  return &re::foundationThreadingLogObjects(void)::logObjects;
}

void re::internal::WorkerThread::~WorkerThread(re::internal::WorkerThread *this)
{
  re::internal::WorkerThread::deinit(this);
  std::condition_variable::~condition_variable(this + 15);
  std::mutex::~mutex((this + 656));
  re::WorkStealingQueue<re::Job *>::deinit(this + 256);
  re::DynamicArray<unsigned long>::deinit(this + 104);
  v2 = *(this + 8);
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (v2)
  {
    free(v2);
    *(this + 8) = 0;
    *(this + 9) = 0;
  }

  std::thread::~thread(this + 1);
}

void *re::internal::WorkerThread::deinit(void *this)
{
  if (*this)
  {
    v1 = this;
    re::WorkStealingQueue<re::Job *>::deinit((this + 32));
    this = re::DynamicArray<unsigned long>::deinit((v1 + 13));
    *v1 = 0;
  }

  return this;
}

void re::internal::WorkerThread::init(re::internal::WorkerThread *this, re::FiberJobManager *a2, BOOL a3, int a4, re::AlignedAllocator *a5)
{
  *this = a2;
  v8 = *(a2 + 132);
  *(this + 13) = a5;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 13, v8);
  ++*(this + 32);
  atomic_store(1uLL, this + 32);
  atomic_store(1uLL, this + 48);
  v9 = (*(*a5 + 32))(a5, 32, 8);
  *v9 = 0u;
  *(v9 + 16) = 0u;
  re::FixedArray<unsigned long>::init<>(v9, a5, 0x400uLL);
  *(this + 64) = v9;
  *(this + 160) = 0;
  std::mutex::lock((this + 656));
  *(this + 648) = 0;
  std::mutex::unlock((this + 656));
  *(this + 4) = a4;
  operator new();
}

uint64_t re::internal::WorkerThread::threadFunction(re::internal::WorkerThread *this)
{
  re::DynamicString::format("Job Service worker %d", &v7, *(this + 4));
  if (v8)
  {
    v2 = *&v9[7];
  }

  else
  {
    v2 = v9;
  }

  pthread_setname_np(v2);
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v3 = *(this + 8);
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (v3)
  {
    free(v3);
  }

  re::internal::AutoResetEvent::waitOne((this + 648));
  *(this + 20) = *(this + 24);
  *(this + 21) = 1;
  *(this + 11) = 0;
  FreeFiberIndex = re::FiberJobManager::getFreeFiberIndex(*this);
  re::internal::WorkerThread::switchToCustomFiber(this, FreeFiberIndex);
  re::internal::WorkerThread::postFiberSwitch(this, v5);
  result = v7;
  if (v7)
  {
    if (v8)
    {
      return (*(*v7 + 40))();
    }
  }

  return result;
}

uint64_t re::WorkStealingQueue<re::Job *>::deinit(uint64_t result)
{
  if (*(result + 256))
  {
    v1 = result;
    v2 = *(result + 256);
    if (v2)
    {
      v3 = *v2;
      re::WorkStealingQueue<re::Job *>::CircularArray::deinit(*(result + 256));
      re::FixedArray<CoreIKTransform>::deinit(v2);
      result = (*(*v3 + 40))(v3, v2);
      atomic_store(0, (v1 + 256));
    }
  }

  return result;
}

void re::internal::WorkerThread::switchToCustomFiber(re::internal::WorkerThread *this, unsigned int a2)
{
  v4 = *(this + 24);
  if (v4 == -1)
  {
    Fiber = this + 24;
  }

  else
  {
    Fiber = re::FiberJobManager::getFiber(*this, v4);
  }

  v6 = re::FiberJobManager::getFiber(*this, a2);
  *(this + 24) = a2;
  *(Fiber + 1) = v6;
  jump_fcontext();
  *v8 = v7;
  v8[1] = 0;
}

void re::internal::WorkerThread::postFiberSwitch(re::internal::WorkerThread *this, uint64_t a2)
{
  v3 = *(this + 21);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v12 = *(this + 11);
        v13.n128_u32[0] = *(this + 20);
        v13.n128_u64[1] = v12;
        re::DynamicArray<re::RigNodeConstraint>::add((this + 104), &v13);
        break;
      case 4:
        re::FiberJobManager::addFiberToWaitList(*this, *(this + 20), *(this + 11));
        break;
      case 5:
        break;
      default:
        goto LABEL_16;
    }

LABEL_15:
    *(this + 10) = 0xFFFFFFFFLL;
    *(this + 11) = 0;
    return;
  }

  if (v3 == 1)
  {
    goto LABEL_15;
  }

  if (v3 == 2)
  {
    v4 = *(this + 20);
    v5 = (*this + 640);
    v6 = *(*this + 536);
    explicit = atomic_load_explicit(v5, memory_order_acquire);
    v8 = (v6 + (v4 << 8));
    *v8 = explicit;
    v9 = explicit;
    atomic_compare_exchange_strong(v5, &v9, explicit & 0xFFFFFFFF00000000 | v4);
    if (v9 != explicit)
    {
      v10 = v9;
      do
      {
        *v8 = v9;
        atomic_compare_exchange_strong(v5, &v10, v9 & 0xFFFFFFFF00000000 | v4);
        v11 = v10 == v9;
        v9 = v10;
      }

      while (!v11);
    }

    goto LABEL_15;
  }

LABEL_16:
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unknown fiber state.", "!Unreachable code", "postFiberSwitch", 237);
  _os_crash();
  __break(1u);
}

unint64_t re::FiberJobManager::getFiber(re::FiberJobManager *this, unsigned int a2)
{
  if (*(this + 66) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 67) + (a2 << 8) + 128;
}

void re::internal::WorkerThread::switchToThreadFiber(re::internal::WorkerThread *this)
{
  Fiber = re::FiberJobManager::getFiber(*this, *(this + 24));
  *(this + 24) = -1;
  *(Fiber + 8) = this + 24;
  jump_fcontext();
  *v4 = v3;
  v4[1] = 0;
}

void re::internal::WorkerThread::runAsync(void *a1, uint64_t a2, unsigned int a3, unsigned int *a4, char a5)
{
  v6 = a2;
  if (a4)
  {
    *a4 = a3;
  }

  if (a5)
  {
    v8 = a3 - 1;
    if ((a3 - 1) >= 0)
    {
      v9 = v8 + 1;
      v10 = a2 + (v8 << 6);
      do
      {
        *(v10 + 8) = a4;
        v16 = v10;
        re::WorkStealingQueue<re::Job *>::push(a1 + 32, &v16);
        v10 -= 64;
        --v9;
      }

      while (v9);
    }
  }

  else if (a3)
  {
    v11 = a3;
    do
    {
      *(v6 + 8) = a4;
      v16 = v6;
      re::WorkStealingQueue<re::Job *>::push(a1 + 32, &v16);
      v6 += 64;
      --v11;
    }

    while (v11);
  }

  v12 = *(*a1 + 72);
  if (v12)
  {
    v13 = *(*a1 + 80);
    v14 = 8 * v12;
    do
    {
      v15 = *v13++;
      re::internal::AutoResetEvent::set((v15 + 648));
      v14 -= 8;
    }

    while (v14);
  }
}

uint64_t re::WorkStealingQueue<re::Job *>::push(void *a1, void *a2)
{
  v4 = a1[16];
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  v6 = a1[32];
  if (v4 - explicit > v6[1] - 1)
  {
    v6 = re::WorkStealingQueue<re::Job *>::CircularArray::grow(v6, explicit, v4);
    atomic_store(v6, a1 + 32);
  }

  result = re::WorkStealingQueue<re::Job *>::CircularArray::put(v6, v4, a2);
  __dmb(0xBu);
  a1[16] = v4 + 1;
  return result;
}

uint64_t re::internal::WorkerThread::getWaitingFiber(re::internal::WorkerThread *this, unsigned int *a2)
{
  v2 = *(this + 15);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  while (1)
  {
    if (*(this + 15) <= v4)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(this + 17);
    if (!atomic_load_explicit(*(v5 + v3 + 8), memory_order_acquire))
    {
      break;
    }

    ++v4;
    v3 += 16;
    if (v2 == v4)
    {
      return 0;
    }
  }

  *a2 = *(v5 + v3);
  re::DynamicArray<re::internal::FiberWaitInfo>::removeStableAt(this + 13, v4);
  return 2;
}

void *re::DynamicArray<re::internal::FiberWaitInfo>::removeStableAt(void *result, unint64_t a2)
{
  v2 = result[2];
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = result;
  v4 = v2 - 1;
  if (v2 - 1 > a2)
  {
    v5 = result[4];
    result = (v5 + 16 * a2);
    v6 = (v5 + 16 * v2);
    if (v6 != (result + 2))
    {
      result = memmove(result, result + 2, v6 - (result + 2));
      v4 = v3[2] - 1;
    }
  }

  v3[2] = v4;
  ++*(v3 + 6);
  return result;
}

uint64_t re::internal::WorkerThread::getJob(atomic_ullong *this, re::Job **a2)
{
  v4 = this[48];
  v5 = v4 - 1;
  v6 = this[64];
  this[48] = v4 - 1;
  __dmb(0xBu);
  v7 = this[32];
  if (v7 <= v4 - 1)
  {
    *a2 = re::WorkStealingQueue<re::Job *>::CircularArray::get(v6, v4 - 1);
    if (v7 != v5)
    {
      return 2;
    }

    v16 = v4 - 1;
    atomic_compare_exchange_strong(this + 32, &v16, v4);
    this[48] = v4;
    if (v16 == v5)
    {
      return 2;
    }
  }

  else
  {
    this[48] = v4;
  }

  v8 = *this;
  v9 = *(*this + 72);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = (v11 + *(this + 160)) % v9;
      if (*(*this + 72) <= v13)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v14 = *(*(*this + 80) + 8 * v13);
      if (v14 != this)
      {
        v10 = re::WorkStealingQueue<re::Job *>::steal(v14 + 32, a2);
        if (v10)
        {
          if (v10 != 1)
          {
            *(this + 160) = v11;
            return 2;
          }

          v12 = 1;
        }
      }

      if (v9 == ++v11)
      {
        v8 = *this;
        v15 = v12 | (v10 == 1);
        goto LABEL_16;
      }
    }
  }

  v15 = 0;
LABEL_16:
  v17 = re::WorkStealingQueue<re::Job *>::steal((v8 + 128), a2);
  if (v17 == 2)
  {
    return 2;
  }

  else
  {
    return v15 & 1u | (v17 == 1);
  }
}

uint64_t re::WorkStealingQueue<re::Job *>::steal(atomic_ullong *a1, uint64_t *a2)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  __dmb(0xBu);
  if (explicit >= atomic_load_explicit(a1 + 16, memory_order_acquire))
  {
    return 0;
  }

  *a2 = re::WorkStealingQueue<re::Job *>::CircularArray::get(atomic_load_explicit(a1 + 32, memory_order_acquire), explicit);
  v4 = explicit;
  atomic_compare_exchange_strong(a1, &v4, explicit + 1);
  if (v4 == explicit)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (re::internal::WorkerThread::*)(void),re::internal::WorkerThread*>>(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = a1[2];
  v5 = a1[1];
  v6 = (a1[3] + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v5(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (re::internal::WorkerThread::*)(void),re::internal::WorkerThread*>>::~unique_ptr[abi:nn200100](&v8);
  return 0;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (re::internal::WorkerThread::*)(void),re::internal::WorkerThread*>>::~unique_ptr[abi:nn200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x1E6906520](v3, 0xA0C40F20CD8FBLL);
  }

  return a1;
}

uint64_t *re::WorkStealingQueue<re::Job *>::CircularArray::deinit(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    result = re::FixedArray<CoreIKTransform>::deinit(result);
    v3 = v2[3];
    if (v3)
    {
      re::WorkStealingQueue<re::Job *>::CircularArray::deinit(v2[3]);
      re::FixedArray<CoreIKTransform>::deinit(v3);
      result = (*(*v1 + 40))(v1, v3);
    }

    v2[3] = 0;
  }

  return result;
}

uint64_t re::WorkStealingQueue<re::Job *>::CircularArray::grow(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v6 = *a1;
  v7 = 2 * a1[1];
  v8 = (*(**a1 + 32))(*a1, 32, 8);
  *v8 = 0u;
  *(v8 + 16) = 0u;
  re::FixedArray<unsigned long>::init<>(v8, v6, v7);
  if (a2 < a3)
  {
    do
    {
      v10 = re::WorkStealingQueue<re::Job *>::CircularArray::get(a1, a2);
      re::WorkStealingQueue<re::Job *>::CircularArray::put(v8, a2++, &v10);
    }

    while (a3 != a2);
  }

  *(v8 + 24) = a1;
  return v8;
}

uint64_t re::WorkStealingQueue<re::Job *>::CircularArray::put(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 8);
  v4 = (v3 - 1) & a2;
  if (v3 <= v4)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(result + 16) + 8 * v4) = *a3;
  return result;
}

uint64_t re::WorkStealingQueue<re::Job *>::CircularArray::get(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = (v2 - 1) & a2;
  if (v2 <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 16) + 8 * v3);
}

void re::JobProfiler::~JobProfiler(re::JobProfiler *this)
{
  re::JobProfiler::deinit(this);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 20);
  re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>>::deinit(this + 17);
  re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerFiberData>>::deinit(this + 14);
  re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>>::deinit(this + 11);
  re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerThreadData>>::deinit(this + 8);
  re::StringID::destroyString((this + 8));
}

void re::JobProfiler::deinit(re::JobProfiler *this)
{
  if (*this)
  {
    v2 = *(this + 9);
    if (v2)
    {
      v3 = *(this + 10);
      v4 = &v3[12 * v2];
      do
      {
        v70 = *v3;
        v75 = 0;
        v72 = 0;
        v73 = 0;
        v71 = 0;
        v74 = 0;
        if (*(v3 + 1))
        {
          v5 = *(v3 + 3);
          v71 = *(v3 + 1);
          re::DynamicArray<re::internal::JobProfilerThreadData>::setCapacity(&v71, v5);
          ++v74;
          v6 = *(v3 + 3);
          v7 = v73;
          if (v6 >= v73)
          {
            re::DynamicArray<re::internal::JobProfilerThreadData>::setCapacity(&v71, *(v3 + 3));
            v17 = *(v3 + 5);
            v18 = v73;
            v19 = v75;
            if (v73)
            {
              v20 = 80 * v73;
              do
              {
                v21 = re::StringID::operator=(v19, v17);
                v22 = *(v17 + 16);
                v23 = *(v17 + 32);
                v24 = *(v17 + 48);
                *(v21 + 60) = *(v17 + 60);
                *(v21 + 2) = v23;
                *(v21 + 3) = v24;
                *(v21 + 1) = v22;
                v17 += 80;
                v19 = v21 + 10;
                v20 -= 80;
              }

              while (v20);
              v19 = v75;
              v18 = v73;
              v17 = *(v3 + 5);
            }

            if (v18 != v6)
            {
              v25 = 5 * v18;
              v26 = v17 + 16 * v25;
              v27 = &v19[2 * v25];
              v28 = 80 * v6 - 16 * v25;
              do
              {
                v29 = re::StringID::StringID(v27, v26);
                v30 = *(v26 + 16);
                v31 = *(v26 + 32);
                v32 = *(v26 + 48);
                *(v29 + 60) = *(v26 + 60);
                *(v29 + 2) = v31;
                *(v29 + 3) = v32;
                *(v29 + 1) = v30;
                v26 += 80;
                v27 = (v29 + 80);
                v28 -= 80;
              }

              while (v28);
            }
          }

          else
          {
            v8 = v75;
            if (v6)
            {
              v9 = *(v3 + 5);
              v10 = 80 * v6;
              do
              {
                v11 = re::StringID::operator=(v8, v9);
                v12 = *(v9 + 16);
                v13 = *(v9 + 32);
                v14 = *(v9 + 48);
                *(v11 + 60) = *(v9 + 60);
                *(v11 + 2) = v13;
                *(v11 + 3) = v14;
                *(v11 + 1) = v12;
                v9 += 80;
                v8 = v11 + 10;
                v10 -= 80;
              }

              while (v10);
              v8 = v75;
              v7 = v73;
            }

            if (v6 != v7)
            {
              v15 = &v8[10 * v6];
              v16 = 80 * v7 - 80 * v6;
              do
              {
                re::StringID::destroyString(v15);
                v15 = (v15 + 80);
                v16 -= 80;
              }

              while (v16);
            }
          }

          v73 = v6;
        }

        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerThreadData>::deinitValues(&v70);
        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerThreadData>::deinitValues(&v70);
        re::DynamicArray<re::internal::JobProfilerThreadData>::deinit(&v71);
        v3 += 12;
      }

      while (v3 != v4);
    }

    v33 = *(this + 15);
    if (v33)
    {
      v34 = *(this + 16);
      v35 = &v34[12 * v33];
      do
      {
        v70 = *v34;
        v75 = 0;
        v72 = 0;
        v73 = 0;
        v71 = 0;
        v74 = 0;
        if (*(v34 + 1))
        {
          v36 = *(v34 + 3);
          v71 = *(v34 + 1);
          re::DynamicArray<re::internal::JobProfilerFiberData>::setCapacity(&v71, v36);
          ++v74;
          v37 = *(v34 + 3);
          v38 = v73;
          if (v37 >= v73)
          {
            re::DynamicArray<re::internal::JobProfilerFiberData>::setCapacity(&v71, *(v34 + 3));
            v48 = *(v34 + 5);
            v49 = v73;
            v50 = v75;
            if (v73)
            {
              v51 = 72 * v73;
              do
              {
                v52 = re::StringID::operator=(v50, v48);
                v53 = *(v48 + 16);
                v54 = *(v48 + 32);
                v55 = *(v48 + 48);
                *(v52 + 16) = *(v48 + 64);
                *(v52 + 2) = v54;
                *(v52 + 3) = v55;
                *(v52 + 1) = v53;
                v48 += 72;
                v50 = v52 + 9;
                v51 -= 72;
              }

              while (v51);
              v50 = v75;
              v49 = v73;
              v48 = *(v34 + 5);
            }

            if (v49 != v37)
            {
              v56 = 9 * v49;
              v57 = v48 + 8 * v56;
              v58 = &v50[v56];
              v59 = 72 * v37 - 8 * v56;
              do
              {
                v60 = re::StringID::StringID(v58, v57);
                v61 = *(v57 + 16);
                v62 = *(v57 + 32);
                v63 = *(v57 + 48);
                *(v60 + 16) = *(v57 + 64);
                *(v60 + 2) = v62;
                *(v60 + 3) = v63;
                *(v60 + 1) = v61;
                v57 += 72;
                v58 = (v60 + 72);
                v59 -= 72;
              }

              while (v59);
            }
          }

          else
          {
            v39 = v75;
            if (v37)
            {
              v40 = *(v34 + 5);
              v41 = 72 * v37;
              do
              {
                v42 = re::StringID::operator=(v39, v40);
                v43 = *(v40 + 16);
                v44 = *(v40 + 32);
                v45 = *(v40 + 48);
                *(v42 + 16) = *(v40 + 64);
                *(v42 + 2) = v44;
                *(v42 + 3) = v45;
                *(v42 + 1) = v43;
                v40 += 72;
                v39 = v42 + 9;
                v41 -= 72;
              }

              while (v41);
              v39 = v75;
              v38 = v73;
            }

            if (v37 != v38)
            {
              v46 = &v39[9 * v37];
              v47 = 72 * v38 - 72 * v37;
              do
              {
                re::StringID::destroyString(v46);
                v46 = (v46 + 72);
                v47 -= 72;
              }

              while (v47);
            }
          }

          v73 = v37;
        }

        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerFiberData>::deinitValues(&v70);
        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerFiberData>::deinitValues(&v70);
        re::DynamicArray<re::internal::JobProfilerFiberData>::deinit(&v71);
        v34 += 12;
      }

      while (v34 != v35);
    }

    v64 = *(this + 18);
    if (v64)
    {
      v65 = 48 * v64;
      v66 = (*(this + 19) + 8);
      do
      {
        v70 = *(v66 - 2);
        re::DynamicArray<re::internal::JobProfilerJobData>::DynamicArray(&v71, v66);
        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>::deinitValues(&v70);
        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>::deinitValues(&v70);
        re::DynamicArray<re::internal::JobProfilerJobData>::deinit(&v71);
        v66 += 6;
        v65 -= 48;
      }

      while (v65);
    }

    v67 = *(this + 12);
    if (v67)
    {
      v68 = 48 * v67;
      v69 = (*(this + 13) + 8);
      do
      {
        v70 = *(v69 - 2);
        re::DynamicArray<re::internal::JobProfilerJobData>::DynamicArray(&v71, v69);
        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>::deinitValues(&v70);
        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>::deinitValues(&v70);
        re::DynamicArray<re::internal::JobProfilerJobData>::deinit(&v71);
        v69 += 6;
        v68 -= 48;
      }

      while (v68);
    }

    re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerThreadData>>::deinit(this + 8);
    re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerFiberData>>::deinit(this + 14);
    re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>>::deinit(this + 17);
    re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>>::deinit(this + 11);
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 20);
    *this = 0;
  }
}

void re::internal::JobProfilerDataBuffer<re::internal::JobProfilerThreadData>::deinitValues(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = v2 + 80 * v1;
    do
    {
      v4 = re::StringID::StringID(&v8, v2);
      v5 = *(v2 + 16);
      v6 = *(v2 + 32);
      v7 = *(v2 + 48);
      *(v12 + 12) = *(v2 + 60);
      v11 = v6;
      v12[0] = v7;
      v10 = v5;
      if (v8)
      {
        if (v8)
        {
        }
      }

      v2 += 80;
    }

    while (v2 != v3);
  }
}

void re::internal::JobProfilerDataBuffer<re::internal::JobProfilerFiberData>::deinitValues(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = v2 + 72 * v1;
    do
    {
      v4 = re::StringID::StringID(&v8, v2);
      v5 = *(v2 + 16);
      v6 = *(v2 + 32);
      v7 = *(v2 + 48);
      v14 = *(v2 + 64);
      v12 = v6;
      v13 = v7;
      v10 = v5;
      v11 = 0;
      if (v8)
      {
        if (v8)
        {
        }
      }

      v2 += 72;
    }

    while (v2 != v3);
  }
}

void re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>::deinitValues(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = v2 + 344 * v1;
    do
    {
      memcpy(__dst, v2, sizeof(__dst));
      v4 = re::StringID::StringID(&v9, (v2 + 272));
      v5 = *(v2 + 288);
      v6 = *(v2 + 304);
      v7 = *(v2 + 320);
      v15 = *(v2 + 336);
      v13 = *(&v6 + 1);
      v14 = v7;
      v11 = v5;
      v12 = 0;
      if (v9)
      {
        if (v9)
        {
        }
      }

      v2 += 344;
    }

    while (v2 != v3);
  }
}

void *re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerThreadData>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = v4 + 48 * v2;
      do
      {
        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerThreadData>::deinitValues(v4);
        re::DynamicArray<re::internal::JobProfilerThreadData>::deinit(v4 + 8);
        v4 += 48;
      }

      while (v4 != v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerFiberData>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = v4 + 48 * v2;
      do
      {
        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerFiberData>::deinitValues(v4);
        re::DynamicArray<re::internal::JobProfilerFiberData>::deinit(v4 + 8);
        v4 += 48;
      }

      while (v4 != v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = v4 + 48 * v2;
      do
      {
        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>::deinitValues(v4);
        re::DynamicArray<re::internal::JobProfilerJobData>::deinit(v4 + 8);
        v4 += 48;
      }

      while (v4 != v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::DynamicArray<re::internal::JobProfilerThreadData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::internal::JobProfilerThreadData>::setCapacity(v5, a2);
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
        v10 = 80 * v9;
        v11 = v7;
        do
        {
          re::StringID::StringID(v11, v8);
          v12 = *(v8 + 16);
          v13 = *(v8 + 32);
          v14 = *(v8 + 48);
          *(v11 + 60) = *(v8 + 60);
          v11[2] = v13;
          v11[3] = v14;
          v11[1] = v12;
          re::StringID::destroyString(v8);
          v8 += 80;
          v11 += 5;
          v10 -= 80;
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

void *re::DynamicArray<re::internal::JobProfilerJobData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::internal::JobProfilerJobData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x158uLL))
        {
          v2 = 344 * a2;
          result = (*(*result + 32))(result, 344 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 344, a2);
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
        v10 = v8 + 344 * v9;
        v11 = v7;
        do
        {
          memcpy(v11, v8, 0x110uLL);
          re::StringID::StringID((v11 + 34), (v8 + 272));
          v12 = *(v8 + 288);
          v13 = *(v8 + 304);
          v14 = *(v8 + 320);
          v11[42] = *(v8 + 336);
          *(v11 + 19) = v13;
          *(v11 + 20) = v14;
          *(v11 + 18) = v12;
          re::StringID::destroyString((v8 + 272));
          v11 += 43;
          v8 += 344;
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

void *re::DynamicArray<re::internal::JobProfilerFiberData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::internal::JobProfilerFiberData>::setCapacity(v5, a2);
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
        v10 = 72 * v9;
        v11 = v7;
        do
        {
          re::StringID::StringID(v11, v8);
          v12 = *(v8 + 16);
          v13 = *(v8 + 32);
          v14 = *(v8 + 48);
          *(v11 + 16) = *(v8 + 64);
          *(v11 + 2) = v13;
          *(v11 + 3) = v14;
          *(v11 + 1) = v12;
          re::StringID::destroyString(v8);
          v8 += 72;
          v11 = (v11 + 72);
          v10 -= 72;
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

uint64_t re::DynamicArray<re::internal::JobProfilerJobData>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::internal::JobProfilerJobData>::setCapacity(a1, v5);
    ++*(a1 + 24);
    v6 = a2[2];
    v7 = *(a1 + 16);
    if (v6 >= v7)
    {
      re::DynamicArray<re::internal::JobProfilerJobData>::setCapacity(a1, a2[2]);
      v16 = a2[4];
      v17 = *(a1 + 16);
      v18 = *(a1 + 32);
      if (v17)
      {
        v19 = v16 + 344 * v17;
        do
        {
          memcpy(v18, v16, 0x110uLL);
          re::StringID::operator=((v18 + 272), (v16 + 272));
          v20 = *(v16 + 288);
          v21 = *(v16 + 304);
          v22 = *(v16 + 320);
          *(v18 + 336) = *(v16 + 336);
          *(v18 + 304) = v21;
          *(v18 + 320) = v22;
          *(v18 + 288) = v20;
          v16 += 344;
          v18 += 344;
        }

        while (v16 != v19);
        v18 = *(a1 + 32);
        v17 = *(a1 + 16);
        v16 = a2[4];
      }

      if (v17 != v6)
      {
        v23 = 344 * v17;
        v24 = v16 + v23;
        v25 = v18 + v23;
        do
        {
          memcpy(v25, v24, 0x110uLL);
          re::StringID::StringID((v25 + 272), (v24 + 272));
          v26 = *(v24 + 288);
          v27 = *(v24 + 304);
          v28 = *(v24 + 320);
          *(v25 + 336) = *(v24 + 336);
          *(v25 + 304) = v27;
          *(v25 + 320) = v28;
          *(v25 + 288) = v26;
          v24 += 344;
          v25 += 344;
        }

        while (v24 != v16 + 344 * v6);
      }
    }

    else
    {
      v8 = *(a1 + 32);
      if (v6)
      {
        v9 = a2[4];
        v10 = v9 + 344 * v6;
        do
        {
          memcpy(v8, v9, 0x110uLL);
          re::StringID::operator=((v8 + 272), (v9 + 272));
          v11 = *(v9 + 288);
          v12 = *(v9 + 304);
          v13 = *(v9 + 320);
          *(v8 + 336) = *(v9 + 336);
          *(v8 + 304) = v12;
          *(v8 + 320) = v13;
          *(v8 + 288) = v11;
          v9 += 344;
          v8 += 344;
        }

        while (v9 != v10);
        v8 = *(a1 + 32);
        v7 = *(a1 + 16);
      }

      if (v6 != v7)
      {
        v14 = -344 * v6 + 344 * v7;
        v15 = (344 * v6 + v8 + 272);
        do
        {
          re::StringID::destroyString(v15);
          v15 = (v15 + 344);
          v14 -= 344;
        }

        while (v14);
      }
    }

    *(a1 + 16) = v6;
  }

  return a1;
}

uint64_t re::DynamicArray<re::internal::JobProfilerThreadData>::deinit(uint64_t a1)
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
        do
        {
          re::StringID::destroyString(v3);
          v3 = (v3 + 80);
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

uint64_t re::DynamicArray<re::internal::JobProfilerJobData>::deinit(uint64_t a1)
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
        v5 = 344 * v4;
        v6 = (v3 + 272);
        do
        {
          re::StringID::destroyString(v6);
          v6 = (v6 + 344);
          v5 -= 344;
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

uint64_t re::DynamicArray<re::internal::JobProfilerFiberData>::deinit(uint64_t a1)
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
        v5 = 72 * v4;
        do
        {
          re::StringID::destroyString(v3);
          v3 = (v3 + 72);
          v5 -= 72;
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

unint64_t re::internal::Fiber::init(re::internal::Fiber *this, void (*a2)(void *), void *a3, uint64_t a4)
{
  if ((atomic_load_explicit(&qword_1EE1C3E40, memory_order_acquire) & 1) == 0)
  {
    v12 = a4;
    v11 = __cxa_guard_acquire(&qword_1EE1C3E40);
    a4 = v12;
    if (v11)
    {
      _MergedGlobals_561 = getpagesize();
      __cxa_guard_release(&qword_1EE1C3E40);
      a4 = v12;
    }
  }

  v7 = _MergedGlobals_561;
  v8 = (a4 + _MergedGlobals_561 - 1) & -_MergedGlobals_561;
  *(this + 6) = v8;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, (v7 + 7) & 0xFFFFFFFFFFFFFFF8, v8, 0xAE8B065EuLL);
  v9 = memptr;
  *(this + 5) = memptr;
  *this = result;
  *(this + 3) = a2;
  *(this + 4) = a3;
  return result;
}

void anonymous namespace::fiberEntryPoint(uint64_t a1, void *a2)
{
  v2 = a2[1];
  *a2 = a1;
  a2[1] = 0;
  (*(v2 + 24))(*(v2 + 32));
  re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) Fiber ended without transferring control back to another fiber.", "!Unreachable code", "fiberEntryPoint", 169);
  _os_crash();
  __break(1u);
}

void DispatchJobManager::currentWorkerThreadIndex(DispatchJobManager *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not Implemented", "!Unreachable code", "currentWorkerThreadIndex", 23);
  _os_crash();
  __break(1u);
}

void DispatchJobManager::run(dispatch_queue_t *this, re::Job *a2)
{
  DispatchJobManager::runAsync(this, a2, 1u, &v3);
  while (atomic_load_explicit(&v3, memory_order_acquire))
  {
    dispatch_sync(this[1], &__block_literal_global_51);
  }
}

void DispatchJobManager::runAsync(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  v4 = a2;
  if (a4)
  {
    *a4 = a3;
    if (!a3)
    {
      return;
    }

    v6 = (a3 + 1) & 0x1FFFFFFFELL;
    v7 = vdupq_n_s64(a3 - 1);
    v8 = xmmword_1E3049620;
    v9 = (a2 + 72);
    v10 = vdupq_n_s64(2uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v7, v8));
      if (v11.i8[0])
      {
        *(v9 - 8) = a4;
      }

      if (v11.i8[4])
      {
        *v9 = a4;
      }

      v8 = vaddq_s64(v8, v10);
      v9 += 16;
      v6 -= 2;
    }

    while (v6);
  }

  if (a3)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = a3;
    do
    {
      v14 = *(a1 + 8);
      block[0] = v12;
      block[1] = 0x40000000;
      block[2] = ___ZN18DispatchJobManager8runAsyncEPN2re3JobEjPNSt3__16atomicIiEEb_block_invoke;
      block[3] = &__block_descriptor_tmp_34;
      block[4] = v4;
      dispatch_async(v14, block);
      v4 += 64;
      --v13;
    }

    while (v13);
  }
}

void DispatchJobManager::waitFor(uint64_t a1, atomic_uint *a2)
{
  while (atomic_load_explicit(a2, memory_order_acquire))
  {
    dispatch_sync(*(a1 + 8), &__block_literal_global_51);
  }
}

uint64_t ___ZN18DispatchJobManager8runAsyncEPN2re3JobEjPNSt3__16atomicIiEEb_block_invoke(uint64_t a1)
{
  result = (**(a1 + 32))();
  v3 = *(*(a1 + 32) + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 0xFFFFFFFF, memory_order_release);
  }

  return result;
}

void re::internal::setThreadPriority(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  v2 = a2;
  v8 = *MEMORY[0x1E69E9840];
  *v5.__opaque = 0;
  v5.sched_priority = a2;
  v3 = pthread_setschedparam(this, 2, &v5);
  if (v3 == -1)
  {
    v4 = *re::foundationThreadingLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v7 = v2;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Failed to change thread to priority to %d", buf, 8u);
    }
  }
}

re::BackgroundTaskManager *re::BackgroundTaskManager::BackgroundTaskManager(re::BackgroundTaskManager *this)
{
  *this = &unk_1F5D198A0;
  *(this + 2) = 0;
  *(this + 10) = 0;
  *(this + 2) = 0;
  v2 = (this + 16);
  *(this + 24) = 0u;
  *(this + 16) = 0;
  *(this + 3) = 0u;
  *(this + 68) = 0x1FFFFFFFFLL;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v2, 0);
  ++*(this + 10);
  *(this + 15) = 100;
  v3 = re::DataArray<re::BackgroundTask>::allocBlock(v2);
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 10) = 0;
  v4 = re::DynamicArray<float *>::setCapacity(this + 10, 0x64uLL);
  ++*(this + 26);
  *(this + 20) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  v5 = re::DynamicArray<float *>::setCapacity(this + 16, 0x64uLL);
  ++*(this + 38);
  *(this + 25) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 48) = 0;
  *(this + 21) = 0;
  re::DynamicArray<float *>::setCapacity(this + 21, 0x64uLL);
  ++*(this + 48);
  return this;
}

void re::BackgroundTaskManager::~BackgroundTaskManager(re::BackgroundTaskManager *this)
{
  re::BackgroundTaskManager::update(this);
  v2 = *(this + 18);
  if (v2)
  {
    v3 = *(this + 20);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      atomic_store(1u, (v5 + 80));
      v4 -= 8;
    }

    while (v4);
  }

  v6 = atomic_load(this + 2);
  if (v6 >= 1)
  {
    do
    {
      if (*(this + 18))
      {
        v7 = **(this + 20);
        v8 = dispatch_time(0, 8000000);
        dispatch_group_wait(*(v7 + 208), v8);
        atomic_load((v7 + 72));
        v9 = *(this + 18);
        if (v9)
        {
          v10 = *(this + 20);
          v11 = 8 * v9;
          do
          {
            v12 = *v10++;
            atomic_store(1u, (v12 + 80));
            v11 -= 8;
          }

          while (v11);
        }
      }

      re::BackgroundTaskManager::update(this);
      v13 = atomic_load(this + 2);
    }

    while (v13 > 0);
  }

  re::DynamicArray<unsigned long>::deinit(this + 168);
  re::DynamicArray<unsigned long>::deinit(this + 128);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::DataArray<re::BackgroundTask>::deinit(this + 16);
  re::DynamicArray<unsigned long>::deinit(this + 16);
}

{
  re::BackgroundTaskManager::~BackgroundTaskManager(this);

  JUMPOUT(0x1E6906520);
}

void re::BackgroundTaskManager::update(re::BackgroundTaskManager *this)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(this + 23) >= 1)
  {
    v4 = (*(this + 23) & 0x7FFFFFFFLL) - 1;
    do
    {
      v5 = *(this + 23);
      if (v5 <= v4)
      {
        v24 = 0;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v25 = 136315906;
        v26 = "operator[]";
        v27 = 1024;
        v28 = 789;
        v29 = 2048;
        v30 = v4;
        v31 = 2048;
        v32 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_32:
        v24 = 0;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v25 = 136315906;
        v26 = "removeStableAt";
        v27 = 1024;
        v28 = 969;
        v29 = 2048;
        v30 = v2;
        v31 = 2048;
        v32 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_33:
        v24 = 0;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v25 = 136315906;
        v26 = "removeAt";
        v27 = 1024;
        v28 = 931;
        v29 = 2048;
        v30 = v4;
        v31 = 2048;
        v32 = v1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v6 = *(*(this + 25) + 8 * v4);
      v7 = atomic_load((v6 + 81));
      if (v7)
      {
        v1 = *(this + 23);
        if (v1 <= v4)
        {
          goto LABEL_33;
        }

        if (v1 - 1 > v4)
        {
          *(*(this + 25) + 8 * v4) = *(*(this + 25) + 8 * v1 - 8);
        }

        *(this + 23) = v1 - 1;
        ++*(this + 48);
        os_unfair_lock_lock(this + 30);
        v8 = re::DataArray<re::BackgroundTask>::handle(this + 16, v6);
        re::DataArray<re::BackgroundTask>::destroy(this + 16, v8);
        os_unfair_lock_unlock(this + 30);
      }

      v9 = v4-- + 1;
    }

    while (v9 > 1);
  }

  os_unfair_lock_lock(this + 31);
  v10 = *(this + 12);
  if (v10)
  {
    v11 = *(this + 14);
    v12 = 8 * v10;
    do
    {
      re::DynamicArray<re::RigDataValue *>::add((this + 128), v11++);
      v12 -= 8;
    }

    while (v12);
  }

  *(this + 12) = 0;
  ++*(this + 26);
  os_unfair_lock_unlock(this + 31);
  if (*(this + 18))
  {
    v2 = 0;
    v4 = 0;
    v1 = 0xFFFFFFFFLL;
    do
    {
      v23 = *(*(this + 20) + 8 * v2);
      v13 = atomic_load((v23 + 72));
      v14 = v23;
      if (v13 == 1)
      {
        re::internal::AutoResetEvent::set((v23 + 88));
        v4 = (v4 + 1);
      }

      else
      {
        v15 = *(v23 + 64);
        if (v15)
        {
          (*(*v15 + 48))(v15, v23);
          v16 = *(v14 + 64);
          *(v14 + 64) = 0;
          if (v16 == v14 + 40)
          {
            (*(*v16 + 32))(v16);
          }

          else if (v16)
          {
            (*(*v16 + 40))(v16);
          }
        }

        atomic_fetch_add(this + 2, 0xFFFFFFFF);
        v5 = *(this + 18);
        if (v5 <= v2)
        {
          goto LABEL_32;
        }

        v17 = v5 - 1;
        if (v5 - 1 > v2)
        {
          v18 = *(this + 20);
          v19 = v18 + 8 * v2;
          v20 = v18 + 8 * v5;
          if (v20 != v19 + 8)
          {
            memmove(v19, (v19 + 8), v20 - (v19 + 8));
            v17 = *(this + 18) - 1;
          }
        }

        *(this + 18) = v17;
        ++*(this + 38);
        v21 = atomic_load((v23 + 81));
        if (v21)
        {
          os_unfair_lock_lock(this + 30);
          v22 = re::DataArray<re::BackgroundTask>::handle(this + 16, v23);
          re::DataArray<re::BackgroundTask>::destroy(this + 16, v22);
          os_unfair_lock_unlock(this + 30);
        }

        else
        {
          re::DynamicArray<re::RigDataValue *>::add((this + 168), &v23);
        }
      }

      v2 = v4;
    }

    while (*(this + 18) > v4);
  }
}

uint64_t re::BackgroundTaskManager::runAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v35 = *MEMORY[0x1E69E9840];
  atomic_fetch_add((a1 + 8), 1u);
  os_unfair_lock_lock((a1 + 120));
  v11 = *(a1 + 72);
  if ((v11 + 1) >> 24)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 + 1;
  }

  *(a1 + 72) = v12;
  v13 = *(a1 + 68);
  v14 = *(a1 + 70);
  if (v13 == 0xFFFF && v14 == 0xFFFF)
  {
    if (*(a1 + 64) >= *(a1 + 60))
    {
      re::DataArray<re::BackgroundTask>::allocBlock((a1 + 16));
    }

    v18 = *(a1 + 32);
    v14 = (v18 - 1);
    if (!v18)
    {
      goto LABEL_19;
    }

    v13 = *(a1 + 64);
    if (v13 >= 0x10000)
    {
      goto LABEL_20;
    }

    v19 = (*(a1 + 48) + 16 * v14);
    *(a1 + 64) = v13 + 1;
    *(v19[1] + 4 * v13) = *(a1 + 72);
    v16 = (*v19 + 216 * v13);
  }

  else
  {
    v16 = *(a1 + 32);
    if (v16 <= v14)
    {
LABEL_18:
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v25 = 136315906;
      *&v25[4] = "operator[]";
      *&v25[12] = 1024;
      *&v25[14] = 789;
      v26 = 2048;
      v27 = v14;
      v28 = 2048;
      v29 = v16;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_19:
      v24 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v25 = 136315906;
      *&v25[4] = "operator[]";
      *&v25[12] = 1024;
      *&v25[14] = 789;
      v26 = 2048;
      v27 = v14;
      v28 = 2048;
      v29 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_20:
      re::internal::assertLog(5, v10, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v13, v24, *v25, *&v25[8]);
      _os_crash();
      __break(1u);
    }

    v17 = (*(a1 + 48) + 16 * v14);
    *(v17[1] + 4 * v13) = v12;
    v16 = (*v17 + 216 * v13);
    *(a1 + 68) = *v16;
  }

  ++*(a1 + 56);
  std::__function::__value_func<re::BackgroundTaskResult ()(re::BackgroundTask &)>::__value_func[abi:nn200100](&v30, a3);
  std::__function::__value_func<void ()(re::BackgroundTask &)>::__value_func[abi:nn200100](v25, a4);
  re::BackgroundTask::BackgroundTask(v16, a2, &v30, v25);
  std::__function::__value_func<void ()(re::BackgroundTask &)>::~__value_func[abi:nn200100](v25);
  std::__function::__value_func<re::BackgroundTaskResult ()(re::BackgroundTask &)>::~__value_func[abi:nn200100](&v30);
  v20 = v14 + (v13 >> 16);
  v21 = *(a1 + 32);
  if (v21 <= v20)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v25 = 136315906;
    *&v25[4] = "operator[]";
    *&v25[12] = 1024;
    *&v25[14] = 797;
    v26 = 2048;
    v27 = v14 + (v13 >> 16);
    v28 = 2048;
    v29 = v21;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v22 = *(*(a1 + 48) + 16 * v20) + 216 * v13;
  *v25 = v22;
  os_unfair_lock_unlock((a1 + 120));
  atomic_store(1u, (v22 + 72));
  re::dispatch::Queue::global(a5, 0, &v30);
  re::dispatch::Group::async((v22 + 208), &v30, v22, re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::__invoke);

  os_unfair_lock_lock((a1 + 124));
  re::DynamicArray<re::RigDataValue *>::add((a1 + 80), v25);
  os_unfair_lock_unlock((a1 + 124));
  return v22;
}

uint64_t re::DataArray<re::BackgroundTask>::handle(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (*(a1 + 32) + 8);
    v5 = 0x10000;
    while (v5)
    {
      v6 = a2 - *(v4 - 1);
      if (v6 >= -215)
      {
        v7 = 0x84BDA12F684BDA13 * (v6 >> 3);
        if (v7 < *(a1 + 44))
        {
          goto LABEL_8;
        }
      }

      v3 -= 0x10000;
      --v5;
      v4 += 2;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) blockIndex (%zu) is too large for a 16-bit unsigned integer", "!overflow", "handle", 692, 0x10000);
    _os_crash();
    __break(1u);
  }

  else
  {
LABEL_7:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) element isn't in data array", "!Unreachable code", "handle", 707);
    _os_crash();
    __break(1u);
LABEL_8:
    if (v7 < 0x10000)
    {
      return v7 + ((*(*v4 + 4 * v7) & 0xFFFFFF) << 32) - v3;
    }
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) arrayIndex (%zu) is too large for a 16-bit unsigned integer", "!overflow", "handle", 700, v7);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::DataArray<re::BackgroundTask>::destroy(uint64_t a1, uint64_t a2)
{
  v2 = WORD1(a2);
  v3 = *(a1 + 16);
  if (WORD1(a2) < v3)
  {
    v4 = a2;
    v6 = (v3 - 1) == WORD1(a2) ? *(a1 + 48) : *(a1 + 44);
    if (a2 < v6)
    {
      v7 = a2;
      v8 = (*(a1 + 32) + 16 * WORD1(a2));
      v9 = *(v8[1] + 4 * a2);
      if (v9 && v9 == (HIDWORD(a2) & 0xFFFFFF))
      {
        v11 = *v8;
        if (v11)
        {
          re::BackgroundTask::~BackgroundTask((v11 + 216 * a2));
          if (*(a1 + 16) <= v2)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          *(*(*(a1 + 32) + 16 * v2 + 8) + 4 * v7) = 0;
          *v12 = *(a1 + 52);
          *(a1 + 52) = v4;
          --*(a1 + 40);
        }
      }
    }
  }
}

uint64_t re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::__invoke(uint64_t result)
{
  v1 = result;
  v5[4] = *MEMORY[0x1E69E9840];
  v2 = atomic_load((result + 80));
  if (v2)
  {
    atomic_store(3u, (result + 72));
  }

  else
  {
    v4 = 0;
    v5[0] = &unk_1F5D19900;
    v5[1] = result;
    v5[2] = &v4;
    v5[3] = v5;
    re::runInLocalAutoreleasePool(v5);
    result = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5);
    if (v4)
    {
      v3 = 3;
    }

    else
    {
      atomic_store(0x3F800000u, (v1 + 76));
      v3 = 2;
    }

    atomic_store(v3, (v1 + 72));
  }

  return result;
}

__n128 std::__function::__func<re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::operator() const(void *)::{lambda(void)#1},std::allocator<re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::operator() const(void *)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D19900;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::operator() const(void *)::{lambda(void)#1},std::allocator<re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::operator() const(void *)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 32);
  if (v2)
  {
    result = (*(*v2 + 48))(v2);
    **(a1 + 16) = result;
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__func<re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::operator() const(void *)::{lambda(void)#1},std::allocator<re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::operator() const(void *)::{lambda(void)#1}>,void ()(void)>::target(v4);
  }

  return result;
}

uint64_t std::__function::__func<re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::operator() const(void *)::{lambda(void)#1},std::allocator<re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::operator() const(void *)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_anonymous_namespace_ *re::DataArray<re::BackgroundTask>::allocBlock(void *a1)
{
  v3 = 216 * *(a1 + 11);
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

uint64_t re::DataArray<re::BackgroundTask>::deinit(uint64_t result)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!*(result + 44))
  {
    return result;
  }

  v2 = result;
  v10 = result;
  if (*(result + 40))
  {
    LODWORD(v11) = 0;
    if (!*(result + 16))
    {
      goto LABEL_29;
    }

    v3 = result;
    if (!**(*(result + 32) + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
    }
  }

  else
  {
    LODWORD(v11) = -1;
    v3 = result;
  }

  v10 = v3;
  if (v3 != v2 || v11 != 0xFFFFFFFFLL)
  {
    v4 = v11;
    v5 = WORD1(v11);
    do
    {
      v6 = v3[2];
      if (v6 <= v5)
      {
        goto LABEL_28;
      }

      re::DataArray<re::BackgroundTask>::destroy(v2, ((*(*(v3[4] + 16 * v5 + 8) + 4 * v4) & 0xFFFFFF) << 32) | (v5 << 16) | v4);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
      v4 = v11;
      v5 = WORD1(v11);
    }

    while (v10 != v2 || v11 != 0xFFFFLL || WORD1(v11) != 0xFFFFLL);
  }

  v7 = v2[2];
  v5 = v7 - 1;
  if (v7 == 1)
  {
    goto LABEL_23;
  }

  v6 = 16 * v7 - 16;
  do
  {
    if (v7 <= v5)
    {
      v10 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 789;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_27:
      v10 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "removeAt";
      v15 = 1024;
      v16 = 931;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_28:
      v12 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 797;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_29:
      v12 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 797;
      v17 = 2048;
      v18 = 0;
      v19 = 2048;
      v20 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v8 = (v2[4] + v6);
    (*(**v2 + 40))(*v2, *v8);
    (*(**v2 + 40))(*v2, v8[1]);
    v1 = v2[2];
    if (v1 <= v5)
    {
      goto LABEL_27;
    }

    v7 = v1 - 1;
    if (v1 - 1 > v5)
    {
      *(v2[4] + v6) = *(v2[4] + 16 * v1 - 16);
      v7 = v2[2] - 1;
    }

    v2[2] = v7;
    ++*(v2 + 6);
    v6 -= 16;
    --v5;
  }

  while (v5);
  v2[6] = 0xFFFFFFFF00000000;
  if (!v7)
  {
    v10 = 0;
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 789;
    v17 = 2048;
    v18 = 0;
    v19 = 2048;
    v20 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v2[6] = 0xFFFFFFFF00000000;
  }

  v9 = v2[4];
  (*(**v2 + 40))(*v2, *v9);
  (*(**v2 + 40))(*v2, v9[1]);
  result = re::DynamicArray<unsigned long>::deinit(v2);
  *(v2 + 11) = 0;
  return result;
}

void re::FiberJobManager::~FiberJobManager(re::FiberJobManager *this)
{
  v2 = (this + 8);
  if (*(this + 1))
  {
    atomic_store(1u, this + 32);
    v3 = *(this + 9);
    if (v3)
    {
      v4 = *(this + 10);
      v5 = 8 * v3;
      do
      {
        v6 = *v4++;
        re::internal::AutoResetEvent::set((v6 + 648));
        v5 -= 8;
      }

      while (v5);
      v7 = *(this + 9);
      if (v7)
      {
        v8 = 0;
        while (*(this + 9) > v8)
        {
          std::thread::join((*(*(this + 10) + 8 * v8++) + 8));
          if (v7 == v8)
          {
            v9 = 0;
            while (*(this + 9) > v9)
            {
              v10 = *(this + 10);
              v11 = *(v10 + 8 * v9);
              if (v11)
              {
                v12 = *(this + 2);
                re::internal::WorkerThread::~WorkerThread(*(v10 + 8 * v9));
                (*(*v12 + 40))(v12, v11);
              }

              if (v7 == ++v9)
              {
                goto LABEL_14;
              }
            }

LABEL_19:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }
        }

        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_19;
      }
    }

LABEL_14:
    re::FixedArray<CoreIKTransform>::deinit(this + 8);
    re::FixedArray<CoreIKTransform>::deinit(this + 5);
    re::DynamicArray<unsigned long>::deinit(this + 776);
    atomic_store(0xFFFFFFFFuLL, this + 80);
    re::FixedArray<re::FiberJobManager::FiberNode>::deinit(this + 65);
    re::JobProfiler::deinit(*(this + 3));
    v13 = *(this + 3);
    if (v13)
    {
      v14 = *v2;
      re::JobProfiler::~JobProfiler(*(this + 3));
      (*(*v14 + 40))(v14, v13);
    }

    *(this + 3) = 0;
    re::WorkStealingQueue<re::Job *>::deinit(this + 128);
    *v2 = 0;
    v2[1] = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 776);
  re::FixedArray<re::FiberJobManager::FiberNode>::deinit(this + 65);
  re::WorkStealingQueue<re::Job *>::deinit(this + 128);
  re::FixedArray<CoreIKTransform>::deinit(this + 8);
  re::FixedArray<CoreIKTransform>::deinit(this + 5);
}

{
  re::FiberJobManager::~FiberJobManager(this);

  JUMPOUT(0x1E6906510);
}

uint64_t re::FiberJobManager::fiberFunction(os_unfair_lock_s *this, void *a2)
{
  v3 = re::FiberJobManager::currentWorkerThread(this);
  re::internal::WorkerThread::postFiberSwitch(v3, v4);
  if (this[8]._os_unfair_lock_opaque)
  {
LABEL_2:
    *(v3 + 80) = *(v3 + 96);
    *(v3 + 84) = 5;
    *(v3 + 88) = 0;
    re::internal::WorkerThread::switchToThreadFiber(v3);
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Cannot resume dead fiber.", "!Unreachable code", "fiberFunction", 373);
    _os_crash();
    __break(1u);
  }

  while (1)
  {
    v27[0] = 0;
    WaitingFiber = re::internal::WorkerThread::getWaitingFiber(v3, v27);
    if (WaitingFiber != 2)
    {
      break;
    }

LABEL_4:
    *(v3 + 80) = *(v3 + 96);
    *(v3 + 84) = 2;
    *(v3 + 88) = 0;
    re::internal::WorkerThread::switchToCustomFiber(v3, v27[0]);
    v3 = re::FiberJobManager::currentWorkerThread(this);
    re::internal::WorkerThread::postFiberSwitch(v3, v7);
LABEL_28:
    if (this[8]._os_unfair_lock_opaque)
    {
      goto LABEL_2;
    }
  }

  v8 = WaitingFiber == 1;
  if (!os_unfair_lock_trylock(this + 192))
  {
    v8 = 1;
    goto LABEL_14;
  }

  v9 = *&this[198]._os_unfair_lock_opaque;
  if (!v9)
  {
LABEL_12:
    os_unfair_lock_unlock(this + 192);
LABEL_14:
    v35[0] = 0;
    Job = re::internal::WorkerThread::getJob(v3, v35);
    if (Job == 2)
    {
      v16 = v35[0];
      *(re::FiberJobManager::getFiber(*v3, *(v3 + 96)) + 16) = v16;
      (*v35[0])();
      v17 = *(v35[0] + 1);
      if (v17)
      {
        atomic_fetch_add_explicit(v17, 0xFFFFFFFF, memory_order_release);
      }

      else
      {
        v18 = *(v35[0] + 2);
        if (v18)
        {
          v19 = v18;
          v20 = *(v35[0] + 2);
          *(v35[0] + 2) = 0;

          dispatch_semaphore_signal(v19);
        }
      }

      v21 = *&this[18]._os_unfair_lock_opaque;
      if (v21)
      {
        v22 = *&this[20]._os_unfair_lock_opaque;
        v23 = 8 * v21;
        do
        {
          v24 = *v22++;
          re::internal::AutoResetEvent::set((v24 + 648));
          v23 -= 8;
        }

        while (v23);
      }

      v3 = re::FiberJobManager::currentWorkerThread(this);
      *(re::FiberJobManager::getFiber(*v3, *(v3 + 96)) + 16) = 0;
    }

    v25 = (Job - 1) < 2 || v8;
    if ((v25 & 1) == 0)
    {
      re::internal::AutoResetEvent::waitOne((v3 + 648));
    }

    goto LABEL_28;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *&this[198]._os_unfair_lock_opaque;
    if (v12 <= v11)
    {
      break;
    }

    v13 = *&this[202]._os_unfair_lock_opaque;
    v14 = **(v13 + v10 + 8);
    if (v14 <= 0)
    {
      __dmb(9u);
      if (!v14)
      {
        v27[0] = *(v13 + v10);
        re::DynamicArray<re::internal::FiberWaitInfo>::removeStableAt(&this[194]._os_unfair_lock_opaque, v11);
        os_unfair_lock_unlock(this + 192);
        goto LABEL_4;
      }
    }

    ++v11;
    v10 += 16;
    if (v9 == v11)
    {
      goto LABEL_12;
    }
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  *v35 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v27[1] = 136315906;
  v28 = "operator[]";
  v29 = 1024;
  v30 = 789;
  v31 = 2048;
  v32 = v11;
  v33 = 2048;
  v34 = v12;
  _os_log_send_and_compose_impl();
  result = _os_crash_msg();
  __break(1u);
  return result;
}

void *re::FixedArray<re::FiberJobManager::FiberNode>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2] + 168;
      v5 = v2 << 8;
      do
      {
        *(v4 - 40) = 0;
        *(v4 - 16) = 0;
        *(v4 - 8) = 0;
        if (*v4)
        {
          free(*v4);
          *v4 = 0;
          *(v4 + 8) = 0;
        }

        v4 += 256;
        v5 -= 256;
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

void re::FiberJobManager::run(os_unfair_lock_s *this, id *a2)
{
  dsema = dispatch_semaphore_create(0);

  re::ObjCObject::operator=(a2 + 2, &dsema);
  os_unfair_lock_lock(this + 22);
  v9 = a2;
  re::WorkStealingQueue<re::Job *>::push(&this[32]._os_unfair_lock_opaque, &v9);
  os_unfair_lock_unlock(this + 22);
  v4 = *&this[18]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = *&this[20]._os_unfair_lock_opaque;
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      re::internal::AutoResetEvent::set((v7 + 648));
      v6 -= 8;
    }

    while (v6);
  }

  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v8 = a2[2];
  a2[2] = 0;
}

uint64_t re::FiberJobManager::currentWorkerThread(re::FiberJobManager *this)
{
  v2 = re::FiberJobManager::currentWorkerThreadIndex(this);
  if (*(this + 9) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 10) + 8 * v2);
}

unint64_t re::FiberJobManager::currentWorkerThreadIndex(re::FiberJobManager *this)
{
  v2 = pthread_self();
  v4 = *(this + 6);
  if (v4)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      if (*(*(this + 7) + 8 * v5) == v2)
      {
        goto LABEL_6;
      }

      v5 = v6;
    }

    while (v4 > v6++);
  }

  do
  {
    re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) Trying to get the index of a non-worker thread", "isWorkerThread()", "currentWorkerThreadIndex", 383);
    _os_crash();
    __break(1u);
LABEL_6:
    ;
  }

  while (!v6);
  v8 = pthread_self();
  v9 = *(this + 6);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v8;
  v11 = 0;
  result = 0;
  while (*(*(this + 7) + 8 * v11) != v10)
  {
    v11 = (result + 1);
    result = v11;
    if (v9 <= v11)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void re::FiberJobManager::runAsync(re::FiberJobManager *a1, uint64_t a2, unsigned int a3, unsigned int *a4, char a5)
{
  v9 = re::FiberJobManager::currentWorkerThread(a1);

  re::internal::WorkerThread::runAsync(v9, a2, a3, a4, a5);
}

void re::FiberJobManager::waitFor(re::FiberJobManager *a1, atomic_uint *a2, int a3)
{
  if (atomic_load_explicit(a2, memory_order_acquire))
  {
    v6 = re::FiberJobManager::currentWorkerThread(a1);
    v7 = v6;
    if (a3)
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }

    *(v6 + 80) = *(v6 + 96);
    *(v6 + 84) = v8;
    *(v6 + 88) = a2;
    FreeFiberIndex = re::FiberJobManager::getFreeFiberIndex(a1);
    re::internal::WorkerThread::switchToCustomFiber(v7, FreeFiberIndex);
    if ((a3 & 1) == 0)
    {
      v7 = re::FiberJobManager::currentWorkerThread(a1);
    }

    re::internal::WorkerThread::postFiberSwitch(v7, v10);
  }
}

unint64_t re::FiberJobManager::getFreeFiberIndex(re::FiberJobManager *this)
{
  v1 = *(this + 67);
  explicit = atomic_load_explicit(this + 80, memory_order_acquire);
  if (explicit == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = explicit;
  atomic_compare_exchange_strong(this + 80, &v3, (explicit & 0xFFFFFFFF00000000 | *(v1 + (explicit << 8))) + 0x100000000);
  if (v3 != explicit)
  {
    while (v3 != -1)
    {
      explicit = v3;
      v4 = v3;
      atomic_compare_exchange_strong(this + 80, &v4, (v3 & 0xFFFFFFFF00000000 | *(v1 + (v3 << 8))) + 0x100000000);
      v5 = v4 == v3;
      v3 = v4;
      if (v5)
      {
        return explicit;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return explicit;
}

void re::FiberJobManager::addFiberToWaitList(os_unfair_lock_s *a1, unsigned __int32 a2, unint64_t a3)
{
  os_unfair_lock_lock(a1 + 192);
  v6.n128_u32[0] = a2;
  v6.n128_u64[1] = a3;
  re::DynamicArray<re::RigNodeConstraint>::add(&a1[194], &v6);
  os_unfair_lock_unlock(a1 + 192);
}

uint64_t re::sharedJobServiceInit(re *a1, uint64_t a2, unsigned int a3, unint64_t a4, char a5, re::Allocator *a6, re::AlignedAllocator *a7)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a1 == 3)
  {
    v22 = re::globalAllocators(a1);
    v20 = (*(*v22[2] + 32))(v22[2], 16, 8);
    *v20 = &unk_1F5D19820;
    result = dispatch_get_global_queue(0, 0);
    *(v20 + 8) = result;
    goto LABEL_44;
  }

  v10 = a2;
  if (a1 == 2)
  {
    v19 = re::globalAllocators(a1);
    v20 = (*(*v19[2] + 32))(v19[2], 208, 8);
    *v20 = &unk_1F5D199F0;
    *(v20 + 8) = 1018212795;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0;
    *(v20 + 56) = 850045863;
    *(v20 + 160) = 0;
    *(v20 + 64) = 0u;
    *(v20 + 80) = 0u;
    *(v20 + 96) = 0u;
    *(v20 + 112) = 0u;
    *(v20 + 128) = 0u;
    *(v20 + 140) = 0u;
    *(v20 + 168) = 1;
    *(v20 + 176) = 0u;
    *(v20 + 192) = 0u;
    result = re::ThreadJobManager::init(v20, v10, a5, a6, a7);
LABEL_44:
    g_jobService = v20;
    return result;
  }

  if (a1 == 1)
  {
    v13 = re::globalAllocators(a1);
    v14 = (*(*v13[2] + 32))(v13[2], 896, 128);
    v15 = v14;
    *v14 = &unk_1F5D19980;
    v14[1] = 0;
    v16 = (v14 + 1);
    v14[48] = 0;
    v14[2] = 0;
    v14[3] = 0;
    *(v14 + 5) = 0u;
    *(v14 + 7) = 0u;
    *(v14 + 9) = 0u;
    *(v14 + 22) = 0;
    *(v14 + 512) = 1;
    v14[65] = 0;
    v14[67] = 0;
    v14[66] = 0;
    atomic_store(0xFFFFFFFFuLL, v14 + 80);
    *(v14 + 192) = 0;
    v14[101] = 0;
    v14[97] = 0;
    v14[99] = 0;
    v14[98] = 0;
    *(v14 + 200) = 0;
    if (!v10)
    {
      v17 = *re::foundationThreadingLogObjects(v14);
      v14 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        *buf = 67109120;
        *&buf[4] = 0;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Thread count %d is too small, jobservice will create one thread", buf, 8u);
      }

      v10 = 1;
    }

    if (v10 >= a3)
    {
      v18 = *re::foundationThreadingLogObjects(v14);
      v14 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        *buf = 67109376;
        *&buf[4] = a3;
        *&buf[8] = 1024;
        *&buf[10] = v10 + 1;
        _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Fiber count %d is too small, jobservice will create %d fibers", buf, 0xEu);
      }

      a3 = v10 + 1;
    }

    if (a4 <= 0x3FF)
    {
      v23 = *re::foundationThreadingLogObjects(v14);
      v14 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (!v14)
      {
        a4 = 1024;
        if (a6)
        {
LABEL_20:
          *v16 = a6;
          if (!a7)
          {
            a7 = re::globalAllocators(v14)[4];
            a6 = *v16;
          }

          v15[2] = a7;
          atomic_store(1uLL, v15 + 16);
          atomic_store(1uLL, v15 + 32);
          v24 = (*(*a6 + 32))(a6, 32, 8);
          *v24 = 0u;
          *(v24 + 16) = 0u;
          re::FixedArray<unsigned long>::init<>(v24, a6, 0x80uLL);
          v15[48] = v24;
          v25 = (*(*v15[1] + 32))(v15[1], 224, 8);
          *v25 = 0;
          *(v25 + 8) = 0;
          *(v25 + 16) = &str_67;
          *(v25 + 24) = -1;
          *(v25 + 36) = 0;
          *(v25 + 28) = 0;
          *(v25 + 48) = 0u;
          *(v25 + 64) = 0u;
          *(v25 + 80) = 0u;
          *(v25 + 96) = 0u;
          *(v25 + 112) = 0u;
          *(v25 + 128) = 0u;
          *(v25 + 144) = 0u;
          *(v25 + 160) = 0u;
          *(v25 + 176) = 0u;
          *(v25 + 192) = 0;
          *(v25 + 196) = 0x7FFFFFFFLL;
          *(v25 + 208) = 0;
          *(v25 + 216) = 0;
          *(v25 + 220) = 0;
          v15[3] = v25;
          v26 = v15[1];
          v15[65] = v26;
          v15[66] = a3;
          if (a3)
          {
            v27 = (*(*v26 + 32))(v26, a3 << 8, 128);
            v15[67] = v27;
            if (!v27)
            {
              goto LABEL_50;
            }

            v29 = a3 - 1;
            if (a3 != 1)
            {
              do
              {
                *v27 = -1;
                *(v27 + 128) = 0uLL;
                *(v27 + 144) = 0uLL;
                *(v27 + 160) = 0uLL;
                *(v27 + 176) = 0;
                v27 += 256;
                --v29;
              }

              while (v29);
            }

            *v27 = -1;
            *(v27 + 128) = 0u;
            *(v27 + 144) = 0u;
            *(v27 + 160) = 0u;
            *(v27 + 176) = 0;
            v30 = v15[66];
            if (v30)
            {
              v31 = v30 << 8;
              v32 = (v15[67] + 128);
              do
              {
                re::internal::Fiber::init(v32, re::FiberJobManager::fiberFunction, v15, a4);
                v32 = (v32 + 256);
                v31 -= 256;
              }

              while (v31);
            }

            v33 = a3 - 1;
            if ((a3 - 1) >= 0)
            {
              do
              {
                v34 = v15[67];
                explicit = atomic_load_explicit(v15 + 80, memory_order_acquire);
                v36 = (v34 + (v33 << 8));
                *v36 = explicit;
                v37 = explicit;
                atomic_compare_exchange_strong(v15 + 80, &v37, explicit & 0xFFFFFFFF00000000 | v33);
                if (v37 != explicit)
                {
                  v38 = v37;
                  do
                  {
                    *v36 = v37;
                    atomic_compare_exchange_strong(v15 + 80, &v38, v37 & 0xFFFFFFFF00000000 | v33);
                    v39 = v38 == v37;
                    v37 = v38;
                  }

                  while (!v39);
                }
              }

              while (v33-- > 0);
            }
          }

          v15[97] = v15[1];
          re::DynamicArray<re::RigNodeConstraint>::setCapacity(v15 + 97, a3);
          ++*(v15 + 200);
          atomic_store(0, v15 + 32);
          v41 = v15[1];
          v15[5] = v41;
          v15[6] = v10;
          v42 = 8 * v10;
          v43 = (*(*v41 + 32))(v41, v42, 8);
          v15[7] = v43;
          if (v43)
          {
            v45 = v43;
            if (v10 != 1)
            {
              bzero(v43, v42 - 8);
              v45 = (v45 + v42 - 8);
            }

            *v45 = 0;
            v46 = v15[1];
            v15[8] = v46;
            v15[9] = v10;
            v47 = (*(*v46 + 32))(v46, 8 * v10, 8);
            v15[10] = v47;
            if (!v47)
            {
              goto LABEL_49;
            }

            v49 = v47;
            if (v10 != 1)
            {
              bzero(v47, v42 - 8);
              v49 = (v49 + v42 - 8);
            }

            *v49 = 0;
            *(v15 + 512) = a5;
            v50 = (*(*v15[2] + 32))(v15[2], 768, 128);
            *v50 = 0;
            *(v50 + 8) = 0;
            *(v50 + 24) = 0u;
            *(v50 + 40) = 0u;
            *(v50 + 56) = 0u;
            *(v50 + 72) = 0;
            *(v50 + 80) = 0xFFFFFFFFLL;
            *(v50 + 88) = 0;
            *(v50 + 96) = -1;
            *(v50 + 136) = 0;
            *(v50 + 112) = 0;
            *(v50 + 120) = 0;
            *(v50 + 104) = 0;
            *(v50 + 128) = 0;
            *(v50 + 512) = 0;
            *(v50 + 640) = -1;
            *(v50 + 648) = 0;
            *(v50 + 656) = 850045863;
            *(v50 + 712) = 0;
            *(v50 + 680) = 0u;
            *(v50 + 696) = 0u;
            *(v50 + 664) = 0u;
            *(v50 + 720) = 1018212795;
            *(v50 + 728) = 0u;
            *(v50 + 744) = 0u;
            *(v50 + 760) = 0;
            if (v15[9])
            {
              *v15[10] = v50;
              re::internal::WorkerThread::init(*v15[10], v15, a5, 0, v15[2]);
            }

            v53 = 0uLL;
            v54 = 0uLL;
            v52 = 0uLL;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            v53 = 0u;
            v54 = 0u;
            v52 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            v53 = 0u;
            v54 = 0u;
            v52 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash();
          __break(1u);
LABEL_49:
          re::internal::assertLog(4, v48, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash();
          __break(1u);
LABEL_50:
          re::internal::assertLog(4, v28, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash();
          __break(1u);
        }

LABEL_19:
        v14 = re::globalAllocators(v14);
        a6 = v14[2];
        goto LABEL_20;
      }

      *buf = 134218240;
      *&buf[4] = a4;
      *&buf[12] = 2048;
      a4 = 1024;
      *&buf[14] = 1024;
      _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "Fiber stack size %zu is too small, jobservice will create fibers stasks of size %zu", buf, 0x16u);
    }

    if (a6)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  g_jobService = 0;
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Must select job service type", "!Unreachable code", "sharedJobServiceInit", 580);
  result = _os_crash();
  __break(1u);
  return result;
}

re *re::internal::destroyPersistent<re::JobService>(re *result, uint64_t a2, void (***a3)(void))
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

void *re::allocInfo_JobService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_562, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_562))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3E50, "JobService");
    __cxa_guard_release(&_MergedGlobals_562);
  }

  return &unk_1EE1C3E50;
}

void re::initInfo_JobService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xE9829092CC0B0;
  v6[1] = "JobService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_JobService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::AutoResetEvent::set(re::internal::AutoResetEvent *this)
{
  if ((atomic_load_explicit(this, memory_order_acquire) & 1) == 0)
  {
    std::mutex::lock((this + 8));
    *this = 1;
    std::condition_variable::notify_one((this + 72));

    std::mutex::unlock((this + 8));
  }
}

void re::internal::AutoResetEvent::waitOne(re::internal::AutoResetEvent *this)
{
  m = (this + 8);
  v4.__m_ = (this + 8);
  v4.__owns_ = 1;
  std::mutex::lock((this + 8));
  if (*this)
  {
    *this = 0;
LABEL_6:
    std::mutex::unlock(m);
    return;
  }

  do
  {
    std::condition_variable::wait((this + 72), &v4);
  }

  while ((*this & 1) == 0);
  owns = v4.__owns_;
  *this = 0;
  if (owns)
  {
    m = v4.__m_;
    goto LABEL_6;
  }
}

void re::ThreadJobManager::threadFunction(re::ThreadJobManager *this)
{
  pthread_setname_np("Job Service worker");
  v2 = 0;
  while (1)
  {
    v6.__m_ = (this + 56);
    v6.__owns_ = 1;
    std::mutex::lock((this + 56));
    while (!*(this + 17) && (*(this + 169) & 1) == 0)
    {
      std::condition_variable::wait((this + 8), &v6);
    }

    v4 = *(this + 169);
    if ((v4 & 1) == 0)
    {
      v2 = re::Queue<re::internal::AssetLoadItem *>::dequeue(this + 120, v3);
    }

    if (v6.__owns_)
    {
      std::mutex::unlock(v6.__m_);
    }

    if (v4)
    {
      break;
    }

    (*v2)(v2);
    v5 = *(v2 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 0xFFFFFFFF, memory_order_release);
    }
  }
}

uint64_t *re::ThreadJobManager::init(uint64_t *this, int a2, char a3, re::Allocator *a4, re::AlignedAllocator *a5)
{
  v7 = this;
  v13 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    this = re::globalAllocators(this);
    a4 = this[2];
  }

  v7[25] = a4;
  v8 = (a2 - 1);
  v7[22] = a4;
  v7[23] = v8;
  if (a2 != 1)
  {
    v9 = (*(*a4 + 32))(a4, 8 * v8, 8);
    v7[24] = v9;
    if (v9)
    {
      v11 = v9;
      if (v8 != 1)
      {
        bzero(v9, 8 * v8 - 8);
        v11 += v8 - 1;
      }

      *v11 = 0;
      *(v7 + 168) = a3;
      operator new();
    }

    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    v12 = _os_crash();
    __break(1u);
    std::__throw_system_error(v12, "thread constructor failed");
    std::terminate();
  }

  *(v7 + 168) = a3;
  return this;
}

void re::ThreadJobManager::~ThreadJobManager(re::ThreadJobManager *this)
{
  std::mutex::lock((this + 56));
  *(this + 169) = 1;
  std::condition_variable::notify_all((this + 8));
  std::mutex::unlock((this + 56));
  if (*(this + 23))
  {
    v2 = 0;
    v3 = 1;
    do
    {
      std::thread::join((*(this + 24) + 8 * v2));
      v2 = v3;
    }

    while (*(this + 23) > v3++);
  }

  re::FixedArray<std::thread>::deinit(this + 22);
  v6 = (this + 120);
  v5 = *(this + 15);
  if (v5)
  {
    if (*(this + 20))
    {
      (*(*v5 + 40))(v5);
    }

    *(this + 20) = 0;
    *v6 = 0u;
    *(this + 136) = 0u;
    *(this + 38) = 0;
  }

  re::FixedArray<std::thread>::deinit(this + 22);
  if (*v6)
  {
    if (*(this + 20))
    {
      (*(**v6 + 40))(*v6);
    }

    *(this + 20) = 0;
    *v6 = 0u;
    *(this + 136) = 0u;
    *(this + 38) = 0;
  }

  std::mutex::~mutex((this + 56));
  std::condition_variable::~condition_variable((this + 8));
}

{
  re::ThreadJobManager::~ThreadJobManager(this);

  JUMPOUT(0x1E6906520);
}

void *re::FixedArray<std::thread>::deinit(void *result)
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
        std::thread::~thread(v4);
        v4 = v6 + 1;
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

void re::ThreadJobManager::currentWorkerThreadIndex(re::ThreadJobManager *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not Implemented", "!Unreachable code", "currentWorkerThreadIndex", 88);
  _os_crash();
  __break(1u);
}

void re::ThreadJobManager::runAsync(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  v5 = a2;
  if (a4)
  {
    *a4 = a3;
    if (a3)
    {
      v7 = (a3 + 1) & 0x1FFFFFFFELL;
      v8 = vdupq_n_s64(a3 - 1);
      v9 = xmmword_1E3049620;
      v10 = (a2 + 72);
      v11 = vdupq_n_s64(2uLL);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v8, v9));
        if (v12.i8[0])
        {
          *(v10 - 8) = a4;
        }

        if (v12.i8[4])
        {
          *v10 = a4;
        }

        v9 = vaddq_s64(v9, v11);
        v10 += 16;
        v7 -= 2;
      }

      while (v7);
    }
  }

  v13 = a3;
  v14 = *(a1 + 184);
  std::mutex::lock((a1 + 56));
  if (v14 <= a3)
  {
    if (a3)
    {
      do
      {
        v15 = v5;
        re::Queue<re::Job *>::enqueue((a1 + 120), &v15);
        v5 += 64;
        --v13;
      }

      while (v13);
    }

    std::condition_variable::notify_all((a1 + 8));
  }

  else if (a3)
  {
    do
    {
      v15 = v5;
      re::Queue<re::Job *>::enqueue((a1 + 120), &v15);
      std::condition_variable::notify_one((a1 + 8));
      v5 += 64;
      --v13;
    }

    while (v13);
  }

  std::mutex::unlock((a1 + 56));
}

_anonymous_namespace_ *re::Queue<re::Job *>::enqueue(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v5 = (result + 16);
  v4 = *(result + 2);
  v6 = v4 + 1;
  v7 = *(result + 1);
  if (v4 + 1 >= v7)
  {
    if (v7 < v6)
    {
      if (*result)
      {
        v8 = 2 * v7;
        if (!v7)
        {
          v8 = 8;
        }

        if (v8 <= v6)
        {
          v9 = v6;
        }

        else
        {
          v9 = v8;
        }

        result = re::Queue<re::internal::AssetLoadItem *>::setCapacity(result, v9);
        v4 = *(v3 + 2);
      }

      else
      {
        result = re::Queue<re::internal::AssetLoadItem *>::setCapacity(v3, v6);
        v4 = 0;
        *v5 = 0;
        v5[1] = 0;
        *(v5 + 4) = 0;
      }
    }

    v7 = *(v3 + 1);
    v6 = v4 + 1;
  }

  *(*(v3 + 5) + 8 * ((*(v3 + 3) + v4) % v7)) = *a2;
  *(v3 + 2) = v6;
  ++*(v3 + 8);
  return result;
}

uint64_t re::ThreadJobManager::waitFor(uint64_t result, atomic_uint *a2)
{
  if (atomic_load_explicit(a2, memory_order_acquire))
  {
    v3 = result;
    do
    {
      std::mutex::lock((v3 + 56));
      if (*(v3 + 136))
      {
        v5 = re::Queue<re::internal::AssetLoadItem *>::dequeue(v3 + 120, v4);
        std::mutex::unlock((v3 + 56));
        if (v5)
        {
          result = (*v5)(v5);
          v6 = *(v5 + 8);
          if (v6)
          {
            atomic_fetch_add_explicit(v6, 0xFFFFFFFF, memory_order_release);
          }

          continue;
        }
      }

      else
      {
        std::mutex::unlock((v3 + 56));
      }

      result = usleep(1u);
    }

    while (atomic_load_explicit(a2, memory_order_acquire));
  }

  return result;
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (re::ThreadJobManager::*)(void),re::ThreadJobManager*>>(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = a1[2];
  v5 = a1[1];
  v6 = (a1[3] + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v5(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (re::internal::WorkerThread::*)(void),re::internal::WorkerThread*>>::~unique_ptr[abi:nn200100](&v8);
  return 0;
}

void *re::allocInfo_BackgroundTaskService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_563, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_563))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3EE8, "BackgroundTaskService");
    __cxa_guard_release(&_MergedGlobals_563);
  }

  return &unk_1EE1C3EE8;
}

void re::initInfo_BackgroundTaskService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x2D7BF0572AA82684;
  v6[1] = "BackgroundTaskService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_BackgroundTaskService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::allocInfo_SharedClockService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_564, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_564))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3F90, "SharedClockService");
    __cxa_guard_release(&_MergedGlobals_564);
  }

  return &unk_1EE1C3F90;
}

void re::initInfo_SharedClockService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xA811E48D3DB587D8;
  v6[1] = "SharedClockService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = re::internal::defaultRetain<re::SharedClockService>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::SharedClockService>(void)::{lambda(void *)#1}::__invoke;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_SharedClockService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::SharedClockManager::TimeSyncClockStateDidChange(_anonymous_namespace_ *a1, uint64_t a2, int a3)
{
  v5 = v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134218240;
    v7 = a1;
    v8 = 1024;
    v9 = a3;
    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_INFO, "TimeSyncClock %p lock state did change to %d", &v6, 0x12u);
  }
}

id anonymous namespace::SharedClockLog(_anonymous_namespace_ *this)
{
  if (qword_1EE1C3F88 != -1)
  {
    dispatch_once(&qword_1EE1C3F88, &__block_literal_global_52);
  }

  v2 = qword_1EE1C3F80;

  return v2;
}

void re::SharedClockManager::TimeSyncClockMasterDidChange(re::SharedClockManager *this, void *a2, void *a3)
{
  v4 = v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    v6 = this;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_INFO, "TimeSyncClock %p master did change", &v5, 0xCu);
  }
}

void re::SharedClockManager::TimeSyncClockGrandmasterIdentityDidChange(re::SharedClockManager *this, char *a2, unint64_t a3)
{
  v6 = v17 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v14 = 134218240;
    *&v14[4] = this;
    *&v14[12] = 2048;
    *&v14[14] = a3;
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_INFO, "TimeSyncClock %p grandmaster identity did change to %llu", v14, 0x16u);
  }

  atomic_store(a3, a2 + 26);
  os_unfair_lock_lock(a2 + 26);
  v7 = *(a2 + 4);
  HostTimeClock = CMClockGetHostTimeClock();
  v10 = re::ManualCMClockCreateWithReference(HostTimeClock, (a2 + 32), v9);
  if (v10)
  {
    v12 = v11 = v10;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315650;
      *&v14[4] = "changeGrandmasterID";
      *&v14[12] = 1024;
      *&v14[14] = 237;
      *&v14[18] = 1024;
      *&v14[20] = v11;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "%s:%d error: %d", v14, 0x18u);
    }
  }

  CFRelease(v7);
  os_unfair_lock_unlock(a2 + 26);
  re::SharedClockManager::update(a2);
  re::Event<re::NetworkSystem,re::ecs2::Entity *,re::TLEInfo *,re::NewUnboundTLEHandlerResult *>::raise((a2 + 120), a2);
  v13 = *(a2 + 14);
  *v14 = MEMORY[0x1E69E9820];
  *&v14[8] = 3221225472;
  *&v14[16] = ___ZN2re18SharedClockManager19changeGrandmasterIDEy_block_invoke;
  v15 = &__block_descriptor_40_e5_v8__0l;
  v16 = a2;
  dispatch_async(v13, v14);
}

void re::SharedClockManager::TimeSyncClockGrandmasterIdentityAndLocalPortDidChange(re::SharedClockManager *this, void *a2, void *a3, int a4)
{
  v7 = v14 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134218496;
    v9 = this;
    v10 = 2048;
    v11 = a3;
    v12 = 1024;
    v13 = a4;
    _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_INFO, "TimeSyncClock %p grandmaster identity did change to %llu and local port to %d", &v8, 0x1Cu);
  }
}

void re::SharedClockManager::~SharedClockManager(id *this)
{
  re::SharedClockManager::setSession(this, 0);
  re::SharedClockManager::tearDownClocks(this);
  if (this[15])
  {
    re::DynamicArray<unsigned long>::deinit((this + 15));
  }

  if (this[6])
  {
    RESyncRelease();
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table((this + 30));
  v2 = this[27];
  if (v2)
  {

    this[27] = 0;
  }

  re::Event<re::GeometricObjectBase>::~Event(this + 15);

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table((this + 8));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

void re::SharedClockManager::setSession(re::SharedClockManager *this, uint64_t a2)
{
  v3 = *(this + 5);
  if (v3 != a2)
  {
    if (v3)
    {
      if (RESyncNetSessionParticipantsCount())
      {
        v5 = 0;
        do
        {
          RESyncNetSessionGetParticipantAtIndex();
          re::SharedClockManager::participantDidLeave(this);
          ++v5;
        }

        while (v5 < RESyncNetSessionParticipantsCount());
      }

      os_unfair_lock_lock(this + 26);
      v6 = *(this + 11);
      v11 = 0;
      v12 = 0;
      v10 = 0;
      if (v6)
      {
        if (!(v6 >> 61))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(&v10, v6);
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v7 = *(this + 10);
      if (v7)
      {
        v8 = 0;
        do
        {
          *v8++ = v7[2];
          v7 = *v7;
        }

        while (v7);
      }

      os_unfair_lock_unlock(this + 26);
      if (RESyncNetSessionIsInitialized())
      {
        RESyncNetSessionRemoveObserver();
      }

      RESyncRelease();
      if (v10)
      {
        v11 = v10;
        operator delete(v10);
      }
    }

    *(this + 5) = a2;
    if (!a2)
    {
      goto LABEL_25;
    }

    RESyncRetain();
    if (RESyncNetSessionIsInitialized())
    {
      if (!*(this + 6))
      {
        *(this + 6) = RESyncNetSessionObserverCreate();
      }

      RESyncNetSessionObserverOnParticipantJoin();
      RESyncNetSessionObserverOnParticipantLeave();
      RESyncNetSessionObserverOnReceiveData();
      RESyncNetSessionAddObserver();
      if (RESyncNetSessionParticipantsCount())
      {
        v9 = 0;
        do
        {
          RESyncNetSessionGetParticipantAtIndex();
          re::SharedClockManager::participantDidJoin(this);
          ++v9;
        }

        while (v9 < RESyncNetSessionParticipantsCount());
      }
    }

    if (!*(this + 5) || RESyncNetSessionParticipantsCount() <= 1)
    {
LABEL_25:
      re::SharedClockManager::tearDownClocks(this);
    }
  }
}

void re::SharedClockManager::tearDownClocks(re::SharedClockManager *this)
{
  if (*(this + 232) == 1)
  {
    if (*(this + 7))
    {
      TimeSyncClockDispose();
      *(this + 7) = 0;
    }

    v2 = *(this + 4);
    if (v2)
    {
      CFRelease(v2);
      *(this + 4) = 0;
    }

    v3 = *(this + 3);
    if (v3)
    {
      CFRelease(v3);
      *(this + 3) = 0;
    }

    atomic_store(0, this + 26);
    re::Event<re::NetworkSystem,re::ecs2::Entity *,re::TLEInfo *,re::NewUnboundTLEHandlerResult *>::raise(this + 120, this);
    *(this + 232) = 0;
  }
}

void re::SharedClockManager::setUpClocks(re::SharedClockManager *this)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*(this + 232) & 1) == 0)
  {
    os_unfair_lock_lock(this + 26);
    HostTimeClock = CMClockGetHostTimeClock();
    v4 = re::ManualCMClockCreateWithReference(HostTimeClock, (this + 24), v3);
    if (v4)
    {
      v6 = v5 = v4;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315650;
        v18 = "setUpClocks";
        v19 = 1024;
        v20 = 168;
        v21 = 1024;
        v22 = v5;
        _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v17, 0x18u);
      }
    }

    v7 = TimeSyncAddgPTPServices();
    if (v7)
    {
      v8 = TimeSyncSystemDomainClockIdentifier();
      v9 = MEMORY[0x1E6905C10](v8);
      *(this + 7) = v9;
      if (v9)
      {
        v10 = CMClockGetHostTimeClock();
        v12 = re::ManualCMClockCreateWithReference(v10, (this + 32), v11);
        if (v12)
        {
          v14 = v13 = v12;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v17 = 136315650;
            v18 = "setUpClocks";
            v19 = 1024;
            v20 = 176;
            v21 = 1024;
            v22 = v13;
            _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v17, 0x18u);
          }
        }

        TimeSyncClockSetLockStateChangeCallback();
        TimeSyncClockSetMasterChangeCallback();
        TimeSyncClockSetgPTPGrandmasterChangeCallback();
        TimeSyncClockSetgPTPGrandmasterAndPortChangeCallback();
        TimeSyncClockSetgPTPLocalPortChangeCallback();
        atomic_store(TimeSyncClockGetgPTPGrandmasterIdentity(), this + 26);
        goto LABEL_17;
      }
      v15 = ;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

LABEL_17:
        os_unfair_lock_unlock(this + 26);
        re::SharedClockManager::update(this);
        atomic_load(this + 26);
        re::Event<re::NetworkSystem,re::ecs2::Entity *,re::TLEInfo *,re::NewUnboundTLEHandlerResult *>::raise(this + 120, this);
        *(this + 232) = 1;
        return;
      }

      LOWORD(v17) = 0;
      v16 = "Failed to create time sync clock";
    }

    else
      v15 = {;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      LOWORD(v17) = 0;
      v16 = "Failed to add time sync services";
    }

    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v16, &v17, 2u);
    goto LABEL_16;
  }
}

void re::SharedClockManager::participantDidJoin(uint64_t a1)
{
  *&v36[13] = *MEMORY[0x1E69E9840];
  RESyncParticipantGetPeerID();
  IsLocalPeer = RESyncNetSessionGetIsLocalPeer();
  if ((IsLocalPeer & 1) == 0)
  {
    if (atomic_load((a1 + 236)))
      v4 = {;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        PeerID = RESyncParticipantGetPeerID();
        _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_INFO, "Participant joined with peer ID %llu ", buf, 0xCu);
      }

      if ((*(a1 + 232) & 1) == 0)
      {
        re::SharedClockManager::setUpClocks(a1);
      }

      v5 = *(a1 + 224);
      if (v5)
      {
        v6 = CFRetain(v5);
      }

      else
      {
        v32 = 0;
        v13 = getifaddrs(&v32);
        if ((v13 & 0x80000000) != 0)
          v24 = {;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v31 = *__error();
            *buf = 67109120;
            LODWORD(PeerID) = v31;
            _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "SharedClockManager: unable to list network adapters(errno=%d).", buf, 8u);
          }

          goto LABEL_36;
        }

        v14 = v32;
        if (!v32)
        {
          MEMORY[0x1E6906FA0](0);
LABEL_36:
          v25 = RESyncParticipantGetPeerID();
          v26 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>((a1 + 240), v25);
          if (v26)
          {
            v27 = CFRetain(v26[3]);
            v28 = RESyncParticipantGetPeerID();
            BytePtr = CFDataGetBytePtr(v27);
            Length = CFDataGetLength(v27);
            re::SharedClockManager::didReceiveData(a1, v28, BytePtr, Length);
            CFRelease(v27);
          }

          return;
        }

        v15 = 0;
        do
        {
          ifa_addr = v14->ifa_addr;
          if (ifa_addr)
          {
            ifa_name = v14->ifa_name;
            if ((!strcmp(ifa_name, "en0") || !strcmp(ifa_name, "awdl0")) && (v14->ifa_flags & 0xB) == 3 && ifa_addr->sa_family == 2)
            {
              *&v36[1] = *&ifa_addr->sa_data[2];
              v18 = v14->ifa_name;
              *buf = 0;
              strcpy(&PeerID, v18);
              if (((v15 >> 5) + 1) >> 59)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              if (v15 >> 5 != -1)
              {
                if (!(((v15 >> 5) + 1) >> 59))
                {
                  operator new();
                }

                std::string::__throw_length_error[abi:nn200100]();
              }

              v19 = 32 * (v15 >> 5);
              *v19 = 0;
              strcpy((v19 + 4), &PeerID);
              *(v19 + 16) = *&v36[1];
              if (v15)
              {
                v20 = 4;
                v21 = 4;
                do
                {
                  *(v21 - 4) = *(v20 - 4);
                  v22 = strcpy(v21, v20);
                  *(v22 + 12) = *(v20 + 12);
                  v23 = v20 + 28;
                  v20 += 32;
                  v21 = (v22 + 32);
                }

                while (v23 != v15);
              }

              v15 = v19 + 32;
            }
          }

          v14 = v14->ifa_next;
        }

        while (v14);
        MEMORY[0x1E6906FA0](v32);
        if (v15)
        {
          v6 = CFDataCreate(*MEMORY[0x1E695E480], 0, v15);
        }

        else
        {
          v6 = 0;
        }
      }

      if (v6)
      {
        RESyncParticipantGetPeerID();
        CFDataGetBytePtr(v6);
        CFDataGetLength(v6);
        v8 = v7 = RESyncNetSessionSendData();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = RESyncParticipantGetPeerID();
          v10 = CFDataGetLength(v6);
          *buf = 134218240;
          PeerID = v9;
          v35 = 2048;
          *v36 = v10 >> 5;
          _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Sent %llu %lu addresses:", buf, 0x16u);
        }

        v11 = CFDataGetBytePtr(v6);
        v12 = CFDataGetLength(v6);
        CFRelease(v6);
      }

      goto LABEL_36;
    }
  }
}

void re::SharedClockManager::update(os_unfair_lock_s *this)
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 26);
  if (*&this[14]._os_unfair_lock_opaque)
  {
    v12 = 0;
    hostTime = 0;
    v17 = 0;
    value = 0;
    ClockRateAndAnchors = TimeSyncClockGetClockRateAndAnchors();
    if (ClockRateAndAnchors)
    {
      v4 = v3 = ClockRateAndAnchors;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v18.value) = 136315650;
        *(&v18.value + 4) = "update";
        LOWORD(v18.flags) = 1024;
        *(&v18.flags + 2) = 308;
        WORD1(v18.epoch) = 1024;
        HIDWORD(v18.epoch) = v3;
        _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v18, 0x18u);
      }
    }

    else
    {
      v5 = *&this[8]._os_unfair_lock_opaque;
      CMTimeMake(&v18, value, 1000000000);
      CMClockMakeHostTimeFromSystemUnits(&v14, hostTime);
      re::ManualCMClockUpdateRateAndAnchor(v5, &v18, 1.0, &v14, v6);
    }
  }

  if (*&this[6]._os_unfair_lock_opaque)
  {
    hostTime = 0;
    v17 = 0;
    times = mach_get_times();
    if (times)
    {
      v9 = v8 = times;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v18.value) = 136315650;
        *(&v18.value + 4) = "update";
        LOWORD(v18.flags) = 1024;
        *(&v18.flags + 2) = 332;
        WORD1(v18.epoch) = 1024;
        HIDWORD(v18.epoch) = v8;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v18, 0x18u);
      }
    }

    else
    {
      v10 = *&this[6]._os_unfair_lock_opaque;
      CMTimeMake(&v18, v13 + 1000000000 * v12, 1000000000);
      CMClockMakeHostTimeFromSystemUnits(&v14, hostTime);
      re::ManualCMClockUpdateRateAndAnchor(v10, &v18, 1.0, &v14, v11);
    }
  }

  os_unfair_lock_unlock(this + 26);
}

uint64_t ___ZN2re18SharedClockManager19changeGrandmasterIDEy_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  os_unfair_lock_lock((v1 + 104));
  v12 = 0u;
  v13 = 0u;
  v14 = 1065353216;
  v3 = *(v1 + 80);
  if (!v3)
  {
    goto LABEL_13;
  }

  do
  {
    if (*(v3 + 6))
      v4 = {;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Non-IPv4 not yet supported", buf, 2u);
      }
    }

    else
    {
      inet_ntop(2, v3 + 5, v17, 0x10u);
      v2 = (*(**(v1 + 216) + 32))(*(v1 + 216), v17, 1500000);
      if (v2)
      {
        goto LABEL_8;
      }
    }

    v2 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&v12, v3 + 2);
LABEL_8:
    v3 = *v3;
  }

  while (v3);
  for (i = v13; i; i = *i)
    v6 = {;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = i[2];
      *buf = 134217984;
      v16 = v7;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_INFO, "Disconnecting from peer %llu after failing to ping", buf, 0xCu);
    }

    re::SharedClockManager::peerDidLeave(v1, i[2]);
  }

LABEL_13:
  os_unfair_lock_unlock((v1 + 104));
  if (*(&v13 + 1) && *(v1 + 40) && RESyncNetSessionParticipantsCount())
  {
    v8 = 0;
    do
    {
      v9 = *(v1 + 40);
      ParticipantAtIndex = RESyncNetSessionGetParticipantAtIndex();
      re::SharedClockManager::participantDidJoin(v1, v9, ParticipantAtIndex);
      ++v8;
    }

    while (v8 < RESyncNetSessionParticipantsCount());
  }

  return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v12);
}

void re::SharedClockManager::peerDidLeave(int8x8_t *this, unint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&this[8], a2);
  if (v4)
  {
    if (!*&this[7])
    {
      goto LABEL_16;
    }

    v5 = v4;
    v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v4 + 28, 0x8000100u);
    v7 = *(v5 + 6);
    if (v7 == 2)
    {
      v13 = TimeSyncClockRemoveAWDLPort();
      if (v13)
      {
        v10 = v14 = v13;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v26 = 136315650;
          v27 = "peerDidLeave";
          v28 = 1024;
          v29 = 513;
          v30 = 1024;
          v31 = v14;
          goto LABEL_47;
        }

LABEL_14:
      }
    }

    else
    {
      if (v7 != 1)
      {
        if (v7)
        {
          goto LABEL_15;
        }

        v8 = TimeSyncClockRemoveUDPv4EndToEndPort();
        if (!v8)
        {
          goto LABEL_15;
        }

        v10 = v9 = v8;
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        v26 = 136315650;
        v27 = "peerDidLeave";
        v28 = 1024;
        v29 = 505;
        v30 = 1024;
        v31 = v9;
        goto LABEL_47;
      }

      v11 = TimeSyncClockRemoveUDPv6EndToEndPort();
      if (v11)
      {
        v10 = v12 = v11;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v26 = 136315650;
          v27 = "peerDidLeave";
          v28 = 1024;
          v29 = 509;
          v30 = 1024;
          v31 = v12;
LABEL_47:
          _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v26, 0x18u);
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

LABEL_15:
    CFRelease(v6);
LABEL_16:
    v15 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&this[8], a2);
    if (!v15)
    {
      return;
    }

    v16 = this[9];
    v17 = *v15;
    v18 = v15[1];
    v19 = vcnt_s8(v16);
    v19.i16[0] = vaddlv_u8(v19);
    if (v19.u32[0] > 1uLL)
    {
      if (v18 >= *&v16)
      {
        v18 %= *&v16;
      }
    }

    else
    {
      v18 &= *&v16 - 1;
    }

    v20 = this[8];
    v21 = *(*&v20 + 8 * v18);
    do
    {
      v22 = v21;
      v21 = *v21;
    }

    while (v21 != v15);
    if (v22 == &this[10])
    {
      goto LABEL_34;
    }

    v23 = v22[1];
    if (v19.u32[0] > 1uLL)
    {
      if (v23 >= *&v16)
      {
        v23 %= *&v16;
      }
    }

    else
    {
      v23 &= *&v16 - 1;
    }

    if (v23 != v18)
    {
LABEL_34:
      if (v17)
      {
        v24 = *(*&v17 + 8);
        if (v19.u32[0] > 1uLL)
        {
          v25 = *(*&v17 + 8);
          if (v24 >= *&v16)
          {
            v25 = v24 % *&v16;
          }
        }

        else
        {
          v25 = v24 & (*&v16 - 1);
        }

        if (v25 == v18)
        {
          goto LABEL_38;
        }
      }

      *(*&v20 + 8 * v18) = 0;
      v17 = *v15;
    }

    if (!*&v17)
    {
LABEL_44:
      *v22 = v17;
      *v15 = 0;
      --*&this[11];
      operator delete(v15);
      return;
    }

    v24 = *(*&v17 + 8);
LABEL_38:
    if (v19.u32[0] > 1uLL)
    {
      if (v24 >= *&v16)
      {
        v24 %= *&v16;
      }
    }

    else
    {
      v24 &= *&v16 - 1;
    }

    if (v24 != v18)
    {
      *(*&this[8] + 8 * v24) = v22;
      v17 = *v15;
    }

    goto LABEL_44;
  }
}

void re::SharedClockManager::participantDidLeave(uint64_t a1)
{
  v2 = v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    PeerID = RESyncParticipantGetPeerID();
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_INFO, "Participant left with peer ID %llu", &v4, 0xCu);
  }

  os_unfair_lock_lock((a1 + 104));
  v3 = RESyncParticipantGetPeerID();
  re::SharedClockManager::peerDidLeave(a1, v3);
  os_unfair_lock_unlock((a1 + 104));
  if (RESyncNetSessionParticipantsCount() <= 1 && *(a1 + 232) == 1)
  {
    re::SharedClockManager::tearDownClocks(a1);
  }
}

void re::SharedClockManager::didReceiveData(_anonymous_namespace_ *a1, unint64_t a2, const UInt8 *a3, unsigned int a4)
{
  *&v42[13] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v10 = v9 = a4 >> 5;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v40 = v9;
    v41 = 2048;
    *v42 = a2;
    _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_INFO, "Received %lu addresses from %llu:", buf, 0x16u);
  }

  v11 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(a1 + 30, a2);
  if (v11)
  {
    CFRelease(v11[3]);
    v12 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(a1 + 30, a2);
    if (v12)
    {
      v13 = *(a1 + 248);
      v14 = *v12;
      v15 = v12[1];
      v16 = vcnt_s8(v13);
      v16.i16[0] = vaddlv_u8(v16);
      if (v16.u32[0] > 1uLL)
      {
        if (v15 >= *&v13)
        {
          v15 %= *&v13;
        }
      }

      else
      {
        v15 &= *&v13 - 1;
      }

      v17 = *(a1 + 30);
      v18 = *(v17 + 8 * v15);
      do
      {
        v19 = v18;
        v18 = *v18;
      }

      while (v18 != v12);
      if (v19 == (a1 + 256))
      {
        goto LABEL_22;
      }

      v20 = v19[1];
      if (v16.u32[0] > 1uLL)
      {
        if (v20 >= *&v13)
        {
          v20 %= *&v13;
        }
      }

      else
      {
        v20 &= *&v13 - 1;
      }

      if (v20 != v15)
      {
LABEL_22:
        if (v14)
        {
          v21 = *(v14 + 8);
          if (v16.u32[0] > 1uLL)
          {
            v22 = *(v14 + 8);
            if (v21 >= *&v13)
            {
              v22 = v21 % *&v13;
            }
          }

          else
          {
            v22 = v21 & (*&v13 - 1);
          }

          if (v22 == v15)
          {
            goto LABEL_26;
          }
        }

        *(v17 + 8 * v15) = 0;
        v14 = *v12;
      }

      if (!v14)
      {
LABEL_32:
        *v19 = v14;
        *v12 = 0;
        --*(a1 + 33);
        operator delete(v12);
        goto LABEL_33;
      }

      v21 = *(v14 + 8);
LABEL_26:
      if (v16.u32[0] > 1uLL)
      {
        if (v21 >= *&v13)
        {
          v21 %= *&v13;
        }
      }

      else
      {
        v21 &= *&v13 - 1;
      }

      if (v21 != v15)
      {
        *(*(a1 + 30) + 8 * v21) = v19;
        v14 = *v12;
      }

      goto LABEL_32;
    }
  }

LABEL_33:
  if (!*(a1 + 7))
  {
    v28 = CFDataCreate(*MEMORY[0x1E695E480], a3, v8);
    v29 = *(a1 + 248);
    if (!*&v29)
    {
      goto LABEL_55;
    }

    v30 = vcnt_s8(v29);
    v30.i16[0] = vaddlv_u8(v30);
    if (v30.u32[0] > 1uLL)
    {
      v31 = a2;
      if (*&v29 <= a2)
      {
        v31 = a2 % *&v29;
      }
    }

    else
    {
      v31 = (*&v29 - 1) & a2;
    }

    v32 = *(*(a1 + 30) + 8 * v31);
    if (!v32 || (v33 = *v32) == 0)
    {
LABEL_55:
      operator new();
    }

    while (1)
    {
      v34 = v33[1];
      if (v34 == a2)
      {
        if (v33[2] == a2)
        {
          v33[3] = v28;
          return;
        }
      }

      else
      {
        if (v30.u32[0] > 1uLL)
        {
          if (v34 >= *&v29)
          {
            v34 %= *&v29;
          }
        }

        else
        {
          v34 &= *&v29 - 1;
        }

        if (v34 != v31)
        {
          goto LABEL_55;
        }
      }

      v33 = *v33;
      if (!v33)
      {
        goto LABEL_55;
      }
    }
  }

  if (a4 >= 0x20)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = a3 + 16;
    do
    {
      *buf = *(v24 - 4);
      v25 = *buf;
      strcpy(&v40, v24 - 12);
      *&v42[1] = *v24;
      v26 = *(a1 + 14);
      v35[0] = v23;
      v35[1] = 3321888768;
      v35[2] = ___ZN2re18SharedClockManager14didReceiveDataEP16RESyncNetSessionyPKvj_block_invoke;
      v35[3] = &__block_descriptor_80_a8_48c54_ZTSN2re18SharedClockManager23TimeSyncPeerInformationE_e5_v8__0l;
      v35[4] = a1;
      v35[5] = a2;
      v36 = v25;
      strcpy(v37, &v40);
      v27 = *v24;
      v24 += 2;
      v38 = v27;
      dispatch_async(v26, v35);
      --v9;
    }

    while (v9);
  }
}

void anonymous namespace::LogPeerInformationArray(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = a2;
    v3 = a1 + 4;
    for (i = (a1 + 16); ; i += 8)
    {
      v5 = *(i - 4);
      if (v5 == 1)
      {
        break;
      }

      if (!v5)
      {
        v7 = v6 = inet_ntop(2, i, buf, 0x10u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v16 = 136315394;
          v17 = v3;
          v18 = 2080;
          v19 = buf;
          v8 = v16;
          v9 = v7;
          v10 = "   %s udpv4 %s";
          goto LABEL_9;
        }

        goto LABEL_10;
      }

LABEL_11:
      v3 += 32;
      if (!--v2)
      {
        return;
      }
    }

    v7 = v11 = inet_ntop(30, i, v16, 0x2Eu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = v3;
      v14 = 2080;
      v15 = v16;
      v8 = buf;
      v9 = v7;
      v10 = "   %s udpv6 %s";
LABEL_9:
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_INFO, v10, v8, 0x16u);
    }

LABEL_10:

    goto LABEL_11;
  }
}

void ___ZN2re18SharedClockManager14didReceiveDataEP16RESyncNetSessionyPKvj_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v20 = *(a1 + 48);
  strcpy(v21, (a1 + 52));
  v22 = *(a1 + 64);
  if (*(v3 + 56))
  {
    os_unfair_lock_lock((v3 + 104));
    v4 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>((v3 + 64), v2);
    if (v4)
      v5 = {;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v28 = v2;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_INFO, "Already connected to peer %llu", buf, 0xCu);
      }

LABEL_8:

      goto LABEL_9;
    }

    if (v20)
      v5 = {;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Non-IPv4 not yet supported", buf, 2u);
      }

      goto LABEL_8;
    }

    inet_ntop(2, &v22, buf, 0x10u);
    v6 = (*(**(v3 + 216) + 32))(*(v3 + 216), buf, 1500000);
    v8 = v7 = v6;
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        *v23 = 136315394;
        v24 = buf;
        v25 = 2080;
        v26[0] = v21;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Successfully pinged peer at %s on %s", v23, 0x16u);
      }

      v10 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v21, 0x8000100u);
      v11 = TimeSyncClockAddUDPv4EndToEndPort();
      if (v11)
      {
        v13 = v12 = v11;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *v23 = 136315650;
          v24 = "attemptToReachPeerAtAddress";
          v25 = 1024;
          LODWORD(v26[0]) = 565;
          WORD2(v26[0]) = 1024;
          *(v26 + 6) = v12;
          _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "%s:%d error: %d", v23, 0x18u);
        }
      }

      v14 = *(v3 + 72);
      if (!*&v14)
      {
        goto LABEL_38;
      }

      v15 = vcnt_s8(v14);
      v15.i16[0] = vaddlv_u8(v15);
      if (v15.u32[0] > 1uLL)
      {
        v16 = v2;
        if (*&v14 <= v2)
        {
          v16 = v2 % *&v14;
        }
      }

      else
      {
        v16 = (*&v14 - 1) & v2;
      }

      v17 = *(*(v3 + 64) + 8 * v16);
      if (!v17 || (v18 = *v17) == 0)
      {
LABEL_38:
        operator new();
      }

      while (1)
      {
        v19 = v18[1];
        if (v19 == v2)
        {
          if (v18[2] == v2)
          {
            *(v18 + 6) = v20;
            strcpy(v18 + 28, v21);
            *(v18 + 5) = v22;
            if (v10)
            {
              CFRelease(v10);
            }

            goto LABEL_9;
          }
        }

        else
        {
          if (v15.u32[0] > 1uLL)
          {
            if (v19 >= *&v14)
            {
              v19 %= *&v14;
            }
          }

          else
          {
            v19 &= *&v14 - 1;
          }

          if (v19 != v16)
          {
            goto LABEL_38;
          }
        }

        v18 = *v18;
        if (!v18)
        {
          goto LABEL_38;
        }
      }
    }

    if (v9)
    {
      *v23 = 136315138;
      v24 = buf;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Failed to ping peer at %s", v23, 0xCu);
    }

LABEL_9:
    os_unfair_lock_unlock((v3 + 104));
  }
}

__n128 __copy_helper_block_a8_48c54_ZTSN2re18SharedClockManager23TimeSyncPeerInformationE(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  strcpy(&a1[3].n128_i8[4], &a2[3].n128_i8[4]);
  result = a2[4];
  a1[4] = result;
  return result;
}

void ___ZN12_GLOBAL__N_114SharedClockLogEv_block_invoke()
{
  v0 = os_log_create("com.apple.re", "SharedClock");
  v1 = qword_1EE1C3F80;
  qword_1EE1C3F80 = v0;
}

uint64_t *re::foundationTimingLogObjects(re *this)
{
  {
    re::foundationTimingLogObjects(void)::logObjects = os_log_create("com.apple.re", "Foundation.Timing");
  }

  return &re::foundationTimingLogObjects(void)::logObjects;
}

void *re::allocInfo_SimulationClock(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_565, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_565))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C4028, "SimulationClock");
    __cxa_guard_release(&_MergedGlobals_565);
  }

  return &unk_1EE1C4028;
}

void re::initInfo_SimulationClock(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x4256CCBB645C544ELL;
  v6[1] = "SimulationClock";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_SimulationClock(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t re::Scheduler::configure(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v88 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  {
    re::FixedArray<re::StringID>::deinit((v3 + 8));
    re::FixedArray<re::StringID>::deinit((v3 + 32));
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v3 + 56);
    *(v3 + 120) = 0;
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v3 + 128);
    *(v3 + 192) = 0;
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v3 + 200);
    *(v3 + 264) = 0;
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v3 + 272);
    *(v3 + 336) = 0;
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v3 + 344);
    *(v3 + 408) = 0;
    re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit((v3 + 416));
    re::FixedArray<CoreIKTransform>::deinit((v3 + 440));
    re::FixedArray<CoreIKTransform>::deinit((v3 + 464));
    re::FixedArray<CoreIKTransform>::deinit((v3 + 488));
    re::FixedArray<re::Function<void ()(float)>>::deinit((v3 + 512));
    re::FixedArray<CoreIKTransform>::deinit((v3 + 536));
    re::FixedArray<CoreIKTransform>::deinit((v3 + 560));
    re::FixedArray<CoreIKTransform>::deinit((v3 + 584));
    re::FixedArray<CoreIKTransform>::deinit((v3 + 608));
    re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit((v3 + 632));
    re::FixedArray<CoreIKTransform>::deinit((v3 + 656));
    re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit((v3 + 680));
    re::DynamicArray<unsigned long>::deinit(v3 + 704);
    *(v3 + 744) = 0;
    *(v3 + 752) = vneg_f32(0x80000000800000);
    re::Scheduler::ExecutionContext::deinit((v3 + 760));
  }

  *v3 = v4;
  if ((atomic_load_explicit(&qword_1EE1C40C0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_126;
  }

  while (1)
  {
    v5 = *(a2 + 32);
    v6 = *(a2 + 16);
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = *(a2 + 16);
    }

    v8 = *(a2 + 72);
    a2 = *(a2 + 56);
    v83 = 0uLL;
    *&v84 = 0;
    re::FixedArray<re::StringID>::init<>(&v83, v4, v7);
    re::FixedArray<float>::operator=((v3 + 8), &v83);
    re::FixedArray<re::StringID>::deinit(&v83);
    re::FixedArray<re::StringID>::init<>((v3 + 32), v4, a2);
    *(v3 + 56) = v4;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity((v3 + 56), 0);
    *(v3 + 72) += 2;
    if ((a2 & 0x3F) != 0)
    {
      v9 = (a2 >> 6) + 1;
    }

    else
    {
      v9 = a2 >> 6;
    }

    *(v3 + 120) = a2;
    *&v83 = 0;
    re::DynamicOverflowArray<unsigned long long,5ul>::resize((v3 + 56), v9, &v83);
    *(v3 + 128) = v4;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity((v3 + 128), 0);
    *(v3 + 144) += 2;
    *(v3 + 192) = a2;
    *&v83 = 0;
    v72 = v3 + 128;
    re::DynamicOverflowArray<unsigned long long,5ul>::resize((v3 + 128), v9, &v83);
    *(v3 + 200) = v4;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity((v3 + 200), 0);
    *(v3 + 216) += 2;
    *(v3 + 264) = a2;
    *&v83 = 0;
    re::DynamicOverflowArray<unsigned long long,5ul>::resize((v3 + 200), v9, &v83);
    *(v3 + 272) = v4;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity((v3 + 272), 0);
    *(v3 + 288) += 2;
    *(v3 + 336) = a2;
    *&v83 = 0;
    re::DynamicOverflowArray<unsigned long long,5ul>::resize((v3 + 272), v9, &v83);
    *(v3 + 344) = v4;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity((v3 + 344), 0);
    *(v3 + 360) += 2;
    *(v3 + 408) = a2;
    *&v83 = 0;
    v75 = v9;
    re::DynamicOverflowArray<unsigned long long,5ul>::resize((v3 + 344), v9, &v83);
    re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::init<>(v3 + 416, v4, v7);
    *(v3 + 440) = v4;
    *(v3 + 448) = a2;
    if (!a2)
    {
      goto LABEL_22;
    }

    v10 = (*(*v4 + 32))(v4, a2, 1);
    *(v3 + 456) = v10;
    if (!v10)
    {
LABEL_122:
      re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
LABEL_123:
      re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
LABEL_124:
      re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
      goto LABEL_125;
    }

    v12 = v10;
    v13 = v6;
    v6 = a2 - 1;
    if (a2 != 1)
    {
      memset(v10, 1, a2 - 1);
      v12 += v6;
    }

    *v12 = 1;
    *(v3 + 464) = v4;
    *(v3 + 472) = a2;
    v14 = (*(*v4 + 32))(v4, a2, 1);
    *(v3 + 480) = v14;
    if (!v14)
    {
      goto LABEL_123;
    }

    v16 = v14;
    if (a2 != 1)
    {
      memset(v14, 1, a2 - 1);
      v16 += v6;
    }

    *v16 = 1;
    *(v3 + 488) = v4;
    *(v3 + 496) = a2;
    v17 = (*(*v4 + 32))(v4, a2, 1);
    *(v3 + 504) = v17;
    if (!v17)
    {
      goto LABEL_124;
    }

    v19 = v17;
    if (a2 == 1)
    {
      *v17 = 0;
      *(v3 + 512) = v4;
      *(v3 + 520) = 1;
    }

    else
    {
      bzero(v17, a2 - 1);
      v19[v6] = 0;
      *(v3 + 512) = v4;
      *(v3 + 520) = a2;
      if (a2 >= 0x666666666666667)
      {
        re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, a2);
        _os_crash();
        __break(1u);
LABEL_22:
        *(v3 + 464) = v4;
        *(v3 + 472) = 0;
        *(v3 + 488) = v4;
        *(v3 + 496) = 0;
        *(v3 + 512) = v4;
        *(v3 + 520) = 0;
        goto LABEL_28;
      }
    }

    v21 = (*(*v4 + 32))(v4, 40 * a2, 8);
    *(v3 + 528) = v21;
    if (v21)
    {
      break;
    }

LABEL_125:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
LABEL_126:
    if (__cxa_guard_acquire(&qword_1EE1C40C0))
    {
      qword_1EE1C40D0 = 0x32549179C460AFB4;
      unk_1EE1C40D8 = "DefaultPhase";
      __cxa_guard_release(&qword_1EE1C40C0);
    }
  }

  v23 = v21;
  if (a2 != 1)
  {
    do
    {
      v23[4] = 0;
      *v23 = 0u;
      *(v23 + 1) = 0u;
      v21 = re::globalAllocators(v21);
      v23[3] = v21[2];
      v23[4] = 0;
      v23 += 5;
      --v6;
    }

    while (v6);
  }

  v23[4] = 0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v23[3] = re::globalAllocators(v21)[2];
  v23[4] = 0;
  v6 = v13;
LABEL_28:
  re::FixedArray<int>::init<>((v3 + 536), v4, a2);
  re::FixedArray<double>::init<>((v3 + 560), v4, a2);
  re::FixedArray<unsigned long>::init<>((v3 + 584), v4, a2);
  re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::init<>(v3 + 632, v4, a2);
  re::FixedArray<double>::init<>((v3 + 656), v4, a2);
  re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::init<>(v3 + 680, v4, v7);
  *(v3 + 704) = v4;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity((v3 + 704), 0);
  ++*(v3 + 728);
  *(v3 + 744) = 0;
  *(v3 + 752) = vneg_f32(0x80000000800000);
  re::StackScratchAllocator::StackScratchAllocator(&v83);
  *&v82[2] = 0;
  memset(&v80[8], 0, 20);
  *v80 = &v83;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v80, v7);
  ++*&v80[24];
  v77 = 0;
  do
  {
    re::DynamicArray<unsigned long>::add(v80, &v77);
    ++v77;
  }

  while (v77 < v7);
  if (v6)
  {
    v24 = v5;
  }

  else
  {
    v24 = &qword_1EE1C40D0;
  }

  v76[0] = *&v82[2];
  v76[1] = *&v80[16];
  v78 = 0;
  v79 = 0;
  v77 = 0;
  re::FixedArray<unsigned long>::init<>(&v77, v4, *&v80[16]);
  re::FixedArray<unsigned long>::copy(&v77, v76);
  re::FixedArray<unsigned long>::operator=((v3 + 608), &v77);
  if (v77 && v78)
  {
    (*(*v77 + 40))();
  }

  v70 = v8;
  if (*v80 && *&v82[2])
  {
    (*(**v80 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(&v83);
  v25 = 0;
  v26 = 0;
  v27 = 32;
  v74 = v7;
  do
  {
    v28 = *(v3 + 16);
    if (v28 <= v26)
    {
LABEL_109:
      v77 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v80 = 136315906;
      *&v80[4] = "operator[]";
      *&v80[12] = 1024;
      *&v80[14] = 468;
      *&v80[18] = 2048;
      *&v80[20] = v26;
      v81 = 2048;
      *v82 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_110:
      v77 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v80 = 136315906;
      *&v80[4] = "operator[]";
      *&v80[12] = 1024;
      *&v80[14] = 468;
      *&v80[18] = 2048;
      *&v80[20] = v26;
      v81 = 2048;
      *v82 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_111:
      v77 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v80 = 136315906;
      *&v80[4] = "operator[]";
      *&v80[12] = 1024;
      *&v80[14] = 468;
      *&v80[18] = 2048;
      *&v80[20] = v26;
      v81 = 2048;
      *v82 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_112:
      v77 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v80 = 136315906;
      *&v80[4] = "operator[]";
      *&v80[12] = 1024;
      *&v80[14] = 468;
      *&v80[18] = 2048;
      *&v80[20] = v26;
      v81 = 2048;
      *v82 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_113:
      v77 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v80 = 136315906;
      *&v80[4] = "operator[]";
      *&v80[12] = 1024;
      *&v80[14] = 468;
      *&v80[18] = 2048;
      *&v80[20] = v26;
      v81 = 2048;
      *v82 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_114:
      v77 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v80 = 136315906;
      *&v80[4] = "operator[]";
      *&v80[12] = 1024;
      *&v80[14] = 468;
      *&v80[18] = 2048;
      *&v80[20] = v24;
      v81 = 2048;
      *v82 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_115:
      v77 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v80 = 136315906;
      *&v80[4] = "operator[]";
      *&v80[12] = 1024;
      *&v80[14] = 468;
      *&v80[18] = 2048;
      *&v80[20] = v24;
      v81 = 2048;
      *v82 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_116:
      v77 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v80 = 136315906;
      *&v80[4] = "operator[]";
      *&v80[12] = 1024;
      *&v80[14] = 468;
      *&v80[18] = 2048;
      *&v80[20] = v24;
      v81 = 2048;
      *v82 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_117:
      v77 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v80 = 136315906;
      *&v80[4] = "operator[]";
      *&v80[12] = 1024;
      *&v80[14] = 468;
      *&v80[18] = 2048;
      *&v80[20] = v24;
      v81 = 2048;
      *v82 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_118:
      v77 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v80 = 136315906;
      *&v80[4] = "operator[]";
      *&v80[12] = 1024;
      *&v80[14] = 468;
      *&v80[18] = 2048;
      *&v80[20] = v24;
      v81 = 2048;
      *v82 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_119:
      v77 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v80 = 136315906;
      *&v80[4] = "operator[]";
      *&v80[12] = 1024;
      *&v80[14] = 468;
      *&v80[18] = 2048;
      *&v80[20] = v24;
      v81 = 2048;
      *v82 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_120:
      v77 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v80 = 136315906;
      *&v80[4] = "operator[]";
      *&v80[12] = 1024;
      *&v80[14] = 468;
      *&v80[18] = 2048;
      *&v80[20] = v24;
      v81 = 2048;
      *v82 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_121:
      v77 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      v3 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v80 = 136315906;
      *&v80[4] = "operator[]";
      *&v80[12] = 1024;
      *&v80[14] = 468;
      *&v80[18] = 2048;
      *&v80[20] = v24;
      v81 = 2048;
      *v82 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_122;
    }

    re::StringID::operator=((*(v3 + 24) + v25), v24);
    v28 = *(v3 + 424);
    if (v28 <= v26)
    {
      goto LABEL_110;
    }

    v29 = *(v3 + 432);
    *(v29 + v27 - 32) = v4;
    v30 = v29 + v27 - 32;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(v30, 0);
    *(v30 + 16) += 2;
    *(v30 + 64) = 0;
    v28 = *(v3 + 424);
    if (v28 <= v26)
    {
      goto LABEL_111;
    }

    v31 = *(v3 + 432);
    v32 = *(v31 + v27 + 32);
    *(v31 + v27 + 32) = a2;
    *&v83 = 0;
    re::DynamicOverflowArray<unsigned long long,5ul>::resize((v31 + v27 - 32), v75, &v83);
    if (a2 && v32 > a2)
    {
      v33 = *(v31 + v27 + 32) & 0x3FLL;
      if (v33)
      {
        v34 = v33 == 63;
        v35 = -1 << v33;
        if (v34)
        {
          v36 = 63;
        }

        else
        {
          v36 = ~v35;
        }
      }

      else
      {
        v36 = 63;
      }

      if (*(v31 + v27 - 16))
      {
        v37 = v31 + v27 - 8;
      }

      else
      {
        v37 = *(v31 + v27);
      }

      v38 = v37 + 8 * *(v31 + v27 - 24);
      *(v38 - 8) &= v36;
    }

    v28 = *(v3 + 688);
    if (v28 <= v26)
    {
      goto LABEL_112;
    }

    v39 = *(v3 + 696);
    *(v39 + v27 - 32) = v4;
    v40 = v39 + v27 - 32;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(v40, 0);
    *(v40 + 16) += 2;
    *(v40 + 64) = 0;
    v28 = *(v3 + 688);
    if (v28 <= v26)
    {
      goto LABEL_113;
    }

    v41 = *(v3 + 696);
    v42 = *(v41 + v27 + 32);
    *(v41 + v27 + 32) = a2;
    *&v83 = 0;
    result = re::DynamicOverflowArray<unsigned long long,5ul>::resize((v41 + v27 - 32), v75, &v83);
    if (a2 && v42 > a2)
    {
      v44 = *(v41 + v27 + 32) & 0x3FLL;
      if (v44)
      {
        v34 = v44 == 63;
        v45 = -1 << v44;
        if (v34)
        {
          v46 = 63;
        }

        else
        {
          v46 = ~v45;
        }
      }

      else
      {
        v46 = 63;
      }

      if (*(v41 + v27 - 16))
      {
        v47 = v41 + v27 - 8;
      }

      else
      {
        v47 = *(v41 + v27);
      }

      v48 = v47 + 8 * *(v41 + v27 - 24);
      *(v48 - 8) &= v46;
    }

    ++v26;
    v27 += 72;
    v24 += 16;
    v25 += 16;
  }

  while (v7 != v26);
  if (a2)
  {
    v73 = a2;
    v26 = 0;
    v49 = 0;
    v24 = 0;
    v50 = (v70 + 80);
    v51 = 32;
    v71 = v4;
    while (1)
    {
      v28 = *(v3 + 40);
      if (v28 <= v24)
      {
        goto LABEL_114;
      }

      re::StringID::operator=((*(v3 + 48) + v26), v50 - 10);
      if (*(v50 - 64) == 1)
      {
        re::DynamicBitset<unsigned long long,64ul>::setBit(v72, v24);
      }

      else
      {
        re::DynamicBitset<unsigned long long,64ul>::clearBit(v72, v24);
      }

      if (*(v50 - 56) == 1)
      {
        re::DynamicBitset<unsigned long long,64ul>::setBit(v3 + 344, v24);
      }

      else
      {
        re::DynamicBitset<unsigned long long,64ul>::clearBit(v3 + 344, v24);
      }

      v28 = *(v3 + 520);
      if (v28 <= v24)
      {
        goto LABEL_115;
      }

      re::FunctionBase<24ul,void ()(float)>::operator=<24ul>(*(v3 + 528) + v49, (v50 - 5));
      v28 = *(v3 + 544);
      if (v28 <= v24)
      {
        goto LABEL_116;
      }

      *(*(v3 + 552) + 4 * v24) = *(v50 - 12);
      v28 = *(v3 + 472);
      if (v28 <= v24)
      {
        goto LABEL_117;
      }

      *(*(v3 + 480) + v24) = *(v50 - 51);
      v28 = *(v3 + 496);
      if (v28 <= v24)
      {
        goto LABEL_118;
      }

      *(*(v3 + 504) + v24) = *(v50 - 44);
      v28 = *(v3 + 592);
      if (v28 <= v24)
      {
        goto LABEL_119;
      }

      v52 = *v50;
      if (*v50 >= v74)
      {
        v52 = 0;
      }

      *(*(v3 + 600) + 8 * v24) = v52;
      v28 = *(v3 + 640);
      if (v28 <= v24)
      {
        goto LABEL_120;
      }

      v53 = *(v3 + 648);
      *(v53 + v51 - 32) = v4;
      v54 = v53 + v51 - 32;
      re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(v54, 0);
      *(v54 + 16) += 2;
      *(v54 + 64) = 0;
      v28 = *(v3 + 640);
      if (v28 <= v24)
      {
        goto LABEL_121;
      }

      v55 = *(v3 + 648);
      v56 = *(v55 + v51 + 32);
      a2 = v73;
      *(v55 + v51 + 32) = v73;
      *&v83 = 0;
      re::DynamicOverflowArray<unsigned long long,5ul>::resize((v55 + v51 - 32), v75, &v83);
      if (v56 > v73)
      {
        v57 = *(v55 + v51 + 32) & 0x3FLL;
        if (v57)
        {
          v34 = v57 == 63;
          v58 = -1 << v57;
          if (v34)
          {
            v59 = 63;
          }

          else
          {
            v59 = ~v58;
          }
        }

        else
        {
          v59 = 63;
        }

        if (*(v55 + v51 - 16))
        {
          v60 = v55 + v51 - 8;
        }

        else
        {
          v60 = *(v55 + v51);
        }

        v61 = v60 + 8 * *(v55 + v51 - 24);
        *(v61 - 8) &= v59;
      }

      if (*(v50 - 63) == 1)
      {
        re::Scheduler::enqueueTaskWithDeadline(v3, v24, *(v50 - 15));
      }

      ++v24;
      v51 += 72;
      v49 += 40;
      v26 += 16;
      v50 += 16;
      v4 = v71;
      if (v73 == v24)
      {
        v4 = 0;
        a2 = v73;
        v28 = v70;
        while (1)
        {
          v62 = v70 + (v4 << 7);
          v63 = *(v62 + 104);
          if (v63)
          {
            break;
          }

LABEL_104:
          if (++v4 == v73)
          {
            v67 = 0;
            v68 = (v70 + 28);
            do
            {
              v69 = *v68;
              v68 += 128;
              result = re::Scheduler::updateTaskSchedule(v3, v67++, v69);
            }

            while (v73 != v67);
            return result;
          }
        }

        v64 = *(v62 + 120);
        v24 = 8 * v63;
        while (1)
        {
          v65 = *v64;
          v66 = *(v3 + 640);
          if (v66 <= *v64)
          {
            break;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(*(v3 + 648) + 72 * v65, v4);
          ++v64;
          v24 -= 8;
          if (!v24)
          {
            goto LABEL_104;
          }
        }

        v77 = 0;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v83 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v80 = 136315906;
        *&v80[4] = "operator[]";
        *&v80[12] = 1024;
        *&v80[14] = 468;
        *&v80[18] = 2048;
        *&v80[20] = v65;
        v81 = 2048;
        *v82 = v66;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_109;
      }
    }
  }

  return result;
}