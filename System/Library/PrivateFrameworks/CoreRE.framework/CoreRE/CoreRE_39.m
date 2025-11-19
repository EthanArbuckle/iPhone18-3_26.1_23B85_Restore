uint64_t re::internal::deserializePolymorphicObject<re::EncoderOPACK<re::SeekableInputStream>,false>(uint64_t a1, const char *a2, uint64_t a3, void **a4, re **a5, re::TypeInfo *a6, re::TypeInfo *a7, int a8, char a9)
{
  v51 = *MEMORY[0x1E69E9840];
  v15 = re::EncoderOPACK<re::SeekableInputStream>::beginObject(a1 + 24, a2, 0, 0);
  v16 = 0;
  if (v15)
  {
    v46 = 0;
    if (re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, "customClassID", 1, &v46, 0))
    {
      re::TypeInfo::typeIDForCustomClassID(a7, v46, v45);
      if (v45[0])
      {
        if ((a9 & 1) == 0 && *a4)
        {
          re::TypeInfo::releaseInstance(a6, *a4, *(a1 + 48), *(a1 + 200));
          *a4 = 0;
        }

        re::TypeRegistry::typeInfo(*a7, v45, buf);
        re::TypeInfo::TypeInfo(&v41, &v48 + 4);
        if (a8)
        {
          v17 = *(a1 + 208);
        }

        else
        {
          v17 = *(a1 + 208);
          if (*a5 == v17)
          {
            re::TypeInfo::operator=(a6, &v41);
            v27 = v45[0];
            v28 = v45[1];
            if (a9)
            {
LABEL_33:
              Instance = 0;
              goto LABEL_40;
            }

LABEL_39:
            Instance = re::TypeInfo::createInstance(a6, *(a1 + 48), *(a1 + 200));
            *a4 = Instance;
            v36[0] = v27;
            v36[1] = v28;
            re::internal::setActualType(a4, a5, v36);
LABEL_40:
            v35[0] = v27;
            v35[1] = v28;
            (*(*a1 + 16))(a1, Instance, v35);
            if ((*(a1 + 64) & 1) == 0)
            {
              (*(*a1 + 72))(a1, "object", 10, Instance, a6, &v41, Instance == 0);
            }

LABEL_42:
            (*(*a1 + 24))(a1);
            re::EncoderOPACK<re::SeekableInputStream>::endObject(a1 + 24);
            v16 = *(a1 + 64) ^ 1;
            return v16 & 1;
          }
        }

        v25 = re::TypeInfo::name(&v41);
        v26 = re::TypeRegistry::typeInfo(v17, v25, buf);
        if (buf[0] != 1 || *(*&v50[10] + 128) != 1)
        {
          v30 = *re::foundationSerializationLogObjects(v26);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = re::TypeInfo::name(&v41)[1];
            *buf = 136315138;
            v48 = v31;
            _os_log_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEFAULT, "No matching runtime type found for serialized polymorphic type %s. Skipping unknown type.", buf, 0xCu);
          }

          v37[0] = 0;
          v37[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v37);
          if ((*(a1 + 64) & 1) == 0)
          {
            (*(*a1 + 72))(a1, "object", 10, 0, &v41, &v41, 1);
          }

          goto LABEL_42;
        }

        re::TypeInfo::operator=(a6, &v48 + 4);
        v27 = *a6;
        v28 = **(a6 + 2);
        if (a9)
        {
          goto LABEL_33;
        }

        goto LABEL_39;
      }

      if ((a9 & 1) == 0 && *a4)
      {
        re::TypeInfo::releaseInstance(a6, *a4, *(a1 + 48), *(a1 + 200));
        *a4 = 0;
      }

      v18 = re::TypeInfo::name(a7);
      if (*v18 >> 1 == 0x36D724013CDDLL)
      {
        v19 = v18[1];
        if (v19 == "Component" || (v18 = strcmp(v19, "Component"), !v18))
        {
          v18 = re::EncoderOPACK<re::SeekableInputStream>::checkForString(a1 + 24, 10);
          if (v18)
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            re::DynamicString::setCapacity(&v41, 0);
            v20 = *(a1 + 208);
            v38 = 0x2686EB529B3EE220;
            v39 = "DynamicString";
            re::TypeRegistry::typeInfo(v20, &v38, buf);
            v21 = re::TypeInfo::TypeInfo(v40, &v48 + 4);
            if (v38)
            {
              if (v38)
              {
              }
            }

            v22 = re::serializeDynamicString<re::EncoderOPACK<re::SeekableInputStream>>(a1, "object", 0xA, &v41, v40, v40, 0);
            if (v22)
            {
              v23 = *re::foundationSerializationLogObjects(v22);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                if (v42)
                {
                  v24 = v43;
                }

                else
                {
                  v24 = &v42 + 1;
                }

                *buf = 134218498;
                v48 = v46;
                v49 = 1040;
                *v50 = 256;
                *&v50[4] = 2080;
                *&v50[6] = v24;
                _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "Skipping unknown Component %llu. String data: %.256s", buf, 0x1Cu);
              }

              if (v41 && (v42 & 1) != 0)
              {
                (*(*v41 + 40))();
              }

LABEL_48:
              re::EncoderOPACK<re::SeekableInputStream>::endObject(a1 + 24);
              v16 = 1;
              return v16 & 1;
            }

            v18 = v41;
            if (v41 && (v42 & 1) != 0)
            {
              v18 = (*(*v41 + 40))();
            }
          }
        }
      }

      v32 = *re::foundationSerializationLogObjects(v18);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = re::TypeInfo::name(a7)[1];
        *buf = 136315394;
        v48 = v33;
        v49 = 2048;
        *v50 = v46;
        _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "Skipping unknown polymorphic %s type. Custom class ID = %llu", buf, 0x16u);
      }

      goto LABEL_48;
    }

    v16 = 0;
  }

  return v16 & 1;
}

uint64_t re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addNew(uint64_t a1, int *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addInternal<unsigned int,re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::SharedObject>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 96 * HIDWORD(v9) + 8;
  }
}

BOOL re::EncoderOPACK<re::SeekableInputStream>::checkForString(uint64_t a1, char a2)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v19 = v2;
  v20 = v3;
  __dst = 0;
  v7 = *(a1 + 168);
  if (v7)
  {
    v8 = v7 - 1;
    v9 = *(a1 + v7 - 1 + 160);
    __dst = v9;
    *(a1 + 168) = v8;
  }

  else
  {
    if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
    {
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, "check", "Key");
      return 0;
    }

    v9 = __dst;
  }

  if (v9 != (a2 + 8))
  {
    v12 = *(a1 + 168);
    if (v12 <= 7)
    {
      result = 0;
      *(a1 + 168) = v12 + 1;
      *(a1 + v12 + 160) = v9;
      return result;
    }

    return 0;
  }

  v17 = 0;
  v10 = *(a1 + 168);
  if (*(a1 + 40))
  {
LABEL_9:
    if (v10 <= 7)
    {
      result = 0;
      v11 = __dst;
      *(a1 + 168) = v10 + 1;
      *(a1 + v10 + 160) = v11;
      return result;
    }

    return 0;
  }

  if (v10)
  {
    v13 = v10 - 1;
    v14 = *(a1 + v13 + 160);
    *(a1 + 168) = v13;
  }

  else
  {
    if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &v17, 1uLL))
    {
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, "check", "String");
      v10 = *(a1 + 168);
      goto LABEL_9;
    }

    v14 = v17;
    v13 = *(a1 + 168);
  }

  result = (v14 - 64) < 0x30;
  if (v13 <= 7)
  {
    *(a1 + 168) = v13 + 1;
    *(a1 + 160 + v13) = v14;
    v15 = *(a1 + 168);
    if (v15 <= 7)
    {
      v16 = __dst;
      *(a1 + 168) = v15 + 1;
      *(a1 + 160 + v15) = v16;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addInternal<unsigned int,re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::SharedObject>(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v7 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 8) = *a4;
  v9 = v7 + 8;
  *(v7 + 4) = v8;
  re::TypeInfo::TypeInfo(v7 + 16, a4 + 8);
  re::TypeInfo::TypeInfo(v9 + 40, a4 + 40);
  *(v9 + 72) = *(a4 + 72);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 96 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 96 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 96 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 88) = a3;
  ++*(a1 + 28);
  return v7 + 96 * v5;
}

void re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::move(a1, v9);
      re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::move(uint64_t result, uint64_t a2)
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
        v8 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(v4, *(v7 + v5 + 88) % *(v4 + 24));
        v9 = *(a2 + 16) + v5;
        *(v8 + 4) = *(v9 + 4);
        *(v8 + 8) = *(v9 + 8);
        re::TypeInfo::TypeInfo(v8 + 16, v9 + 16);
        result = re::TypeInfo::TypeInfo(v8 + 48, v9 + 48);
        *(v8 + 80) = *(v9 + 80);
        v2 = *(a2 + 32);
      }

      v5 += 96;
    }
  }

  return result;
}

uint64_t re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFunc(uint64_t a1, const re::StringID *a2, uint64_t a3)
{
  result = re::TypeRegistry::typeID(*(a1 + 208), a2, &v6);
  if (v6)
  {
    v9 = a3;
    v8 = v7 | 0xFFFFFFFF00000000;
    return re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(a1 + 224, &v8, &v9);
  }

  return result;
}

uint64_t re::serializeBool<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, _BYTE *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  v9 = a3;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::SeekableInputStream>::serializeBool(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeChar<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  v9 = a3;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<signed char>(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeI8<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  v9 = a3;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<signed char>(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeI16<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, __int16 *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  v9 = a3;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<short>(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeI32<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, int *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  v9 = a3;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<int>(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeI64<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, void *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  v9 = a3;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<long long>(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeU8<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  v9 = a3;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned char>(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeU16<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, __int16 *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  v9 = a3;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned short>(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeU32<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, int *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  v9 = a3;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned int>(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeU64<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  v9 = a3;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeFloat<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  v9 = a3;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeDouble<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  v9 = a3;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeCString<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_22:
      re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
      goto LABEL_23;
    }

    v23 = **(a5 + 2);
    v24 = **(a6 + 2);
    if (v23 != v24)
    {
      goto LABEL_22;
    }

    v26 = WORD1(v23) == WORD1(v24);
    v25 = (v24 ^ v23) & 0xFFFFFF00000000;
    v26 = v26 && v25 == 0;
    if (!v26)
    {
      goto LABEL_22;
    }
  }

LABEL_4:
  if (!a7)
  {
    v46 = 2 * (*a4 != 0);
    v21 = re::EncoderOPACK<re::SeekableInputStream>::beginPointer(a1 + 24, a2, v9, &v46, 0);
    v20 = 0;
    if (!v21)
    {
      return v20 & 1;
    }

    v22 = v46;
    if (v46)
    {
      if (v46 == 1)
      {
LABEL_16:
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Found pointer reference instead of C string.", v15, v16, v17, v18, v19, v44);
LABEL_23:
        v20 = 0;
        return v20 & 1;
      }
    }

    else
    {
      if (!*a4)
      {
        goto LABEL_44;
      }

      (*(**(a1 + 48) + 40))(*(a1 + 48));
      *a4 = 0;
      v22 = v46;
    }

    if (v22 == 2)
    {
      v27 = *a4 ? strlen(*a4) : 0;
      v45 = v27;
      if (re::EncoderOPACK<re::SeekableInputStream>::beginString(a1 + 24, a2, 0, &v45, 0))
      {
        v28 = *a4;
        v29 = v45;
        if (*a4 && v45 == v27)
        {
          if (v27)
          {
LABEL_34:
            re::EncoderOPACK<re::SeekableInputStream>::serializeString(a1 + 24, v28, 0);
            v28 = *a4;
            v30 = v45;
LABEL_43:
            v28[v30] = 0;
            re::EncoderOPACK<re::SeekableInputStream>::endString((a1 + 24));
            goto LABEL_44;
          }
        }

        else
        {
          if (v28)
          {
            (*(**(a1 + 48) + 40))(*(a1 + 48));
            *a4 = 0;
            v29 = v45;
          }

          v31 = (*(**(a1 + 24) + 64))(*(a1 + 24));
          v37 = v45;
          if (v29 > v31)
          {
            (*(**(a1 + 24) + 64))(*(a1 + 24));
            re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "String size greater than stream size during deserialization. String length = %zu, Stream length = %zu", v38, v39, v40, v41, v42, v37);
            goto LABEL_23;
          }

          if (((v45 == -1) << 63) >> 63 != (v45 == -1))
          {
            re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Size overflow during string deserialization. String length = %zu", v32, v33, v34, v35, v36, v45);
            goto LABEL_23;
          }

          v28 = (*(**(a1 + 48) + 32))(*(a1 + 48), v45 + 1, 0);
          *a4 = v28;
          if (v45)
          {
            goto LABEL_34;
          }
        }

        v30 = 0;
        goto LABEL_43;
      }
    }

LABEL_44:
    re::EncoderOPACK<re::SeekableInputStream>::endPointer((a1 + 24));
    if (*a4 && *(a1 + 64) == 1)
    {
      (*(**(a1 + 48) + 40))(*(a1 + 48));
      *a4 = 0;
    }

    goto LABEL_47;
  }

  v46 = 0;
  v14 = re::EncoderOPACK<re::SeekableInputStream>::beginPointer(a1 + 24, a2, v9, &v46, 0);
  v20 = 0;
  if (v14)
  {
    if (!v46)
    {
LABEL_12:
      re::EncoderOPACK<re::SeekableInputStream>::endPointer((a1 + 24));
LABEL_47:
      v20 = *(a1 + 64) ^ 1;
      return v20 & 1;
    }

    if (v46 != 1)
    {
      v45 = 0;
      if (re::EncoderOPACK<re::SeekableInputStream>::beginString(a1 + 24, a2, 0, &v45, 0))
      {
        if (v45)
        {
          re::EncoderOPACK<re::SeekableInputStream>::serializeString(a1 + 24, 0, 1);
        }

        re::EncoderOPACK<re::SeekableInputStream>::endString((a1 + 24));
      }

      goto LABEL_12;
    }

    goto LABEL_16;
  }

  return v20 & 1;
}

uint64_t re::serializeStringID<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, _anonymous_namespace_ *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
  if (a5 == a6)
  {
    goto LABEL_14;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_14;
  }

  v18 = re::TypeInfo::name(a6);
  if (*v18 >> 1 != 0x134375A94D9F7110 || (v19 = v18[1], v19 != "DynamicString") && strcmp(v19, "DynamicString"))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    goto LABEL_26;
  }

LABEL_14:
  if (!a7)
  {
    v43 = 0;
    if (re::EncoderOPACK<re::SeekableInputStream>::beginString(a1 + 24, a2, v9, &v43, 0))
    {
      v22 = v43;
      if (v43)
      {
        v23 = (*(**(a1 + 24) + 64))(*(a1 + 24));
        v29 = v43;
        if (v22 > v23)
        {
          (*(**(a1 + 24) + 64))(*(a1 + 24));
          re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "String size greater than stream size during deserialization. String length = %zu, Stream length = %zu", v30, v31, v32, v33, v34, v29);
          goto LABEL_26;
        }

        if (((v43 == -1) << 63) >> 63 != (v43 == -1))
        {
          re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Size overflow during string deserialization. String length = %zu", v24, v25, v26, v27, v28, v43);
          goto LABEL_26;
        }

        v37 = (*(**(a1 + 56) + 32))(*(a1 + 56), v43 + 1, 0);
        v38 = re::EncoderOPACK<re::SeekableInputStream>::serializeString(a1 + 24, v37, 0);
        v37[v43] = 0;
        v41 = 0;
        v42 = &str_67;
        v39 = re::StringID::operator=(a4, &v41);
        if (v41)
        {
          if (v41)
          {
          }
        }

        v36 = *(**(a1 + 56) + 40);
      }

      else
      {
        v41 = 0;
        v42 = &str_67;
        v35 = re::StringID::operator=(a4, &v41);
        if ((v41 & 1) == 0)
        {
LABEL_32:
          re::EncoderOPACK<re::SeekableInputStream>::endString((a1 + 24));
          v21 = *(a1 + 64) ^ 1;
          return v21 & 1;
        }
      }

      v36();
      goto LABEL_32;
    }

LABEL_26:
    v21 = 0;
    return v21 & 1;
  }

  v41 = 0;
  v20 = re::EncoderOPACK<re::SeekableInputStream>::beginString(a1 + 24, a2, v9, &v41, 0);
  v21 = 0;
  if (v20)
  {
    if (v41)
    {
      re::EncoderOPACK<re::SeekableInputStream>::serializeString(a1 + 24, 0, 1);
    }

    goto LABEL_32;
  }

  return v21 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v10 = a3;
  v42 = *MEMORY[0x1E69E9840];
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_17:
      re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
      goto LABEL_40;
    }

    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_17;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_17;
    }
  }

LABEL_4:
  if (!a7)
  {
    v16 = *a5;
    v17 = **(a5 + 2);
    v38[0] = 0x258C98EAAF29A10ALL;
    v38[1] = "CallbackSerializerAttribute";
    v18 = re::TypeRegistry::typeID(v16, v38, buf);
    if (*buf && (v34 = *&buf[8], v35 = v17, LODWORD(v36) = -1, (v18 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v16 + 768, &v34)) != 0))
    {
      v19 = *v18;
    }

    else
    {
      v19 = 0;
    }

    if (v38[0])
    {
      if (v38[0])
      {
      }
    }

    v24 = *v19;
    v25 = *(a1 + 200);
    v38[0] = 0;
    if (re::EncoderOPACK<re::SeekableInputStream>::beginString(a1 + 24, a2, v10, v38, 0))
    {
      v26 = *(a1 + 56);
      v36 = 0;
      v37 = 0;
      v34 = v26;
      v35 = 0;
      re::DynamicString::setCapacity(&v34, 0);
      if (v38[0])
      {
        re::DynamicString::resize(&v34, v38[0], 0);
        if (v35)
        {
          v27 = v36;
        }

        else
        {
          v27 = &v35 + 1;
        }

        re::EncoderOPACK<re::SeekableInputStream>::serializeString(a1 + 24, v27, 0);
      }

      re::EncoderOPACK<re::SeekableInputStream>::endString((a1 + 24));
      v28 = &v35 + 1;
      if (v35)
      {
        v29 = v36;
      }

      else
      {
        v29 = &v35 + 1;
      }

      v30 = (*(v24 + 80))(*(a1 + 48), v25, v24, a4, v29);
      if ((v30 & 1) == 0)
      {
        v31 = *re::foundationSerializationLogObjects(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          if (v35)
          {
            v28 = v36;
          }

          v32 = re::TypeInfo::name(a5)[1];
          *buf = 136315650;
          *&buf[4] = a2;
          *&buf[12] = 2080;
          *&buf[14] = v28;
          v40 = 2080;
          v41 = v32;
          _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_INFO, "Failed to parse %s: %s (type %s) using deserialization callback - skipping.", buf, 0x20u);
        }
      }

      if (v34 && (v35 & 1) != 0)
      {
        (*(*v34 + 40))();
      }

      goto LABEL_39;
    }

LABEL_40:
    v15 = 0;
    return v15 & 1;
  }

  v34 = 0;
  v14 = re::EncoderOPACK<re::SeekableInputStream>::beginString(a1 + 24, a2, v10, &v34, 0);
  v15 = 0;
  if (v14)
  {
    if (v34)
    {
      re::EncoderOPACK<re::SeekableInputStream>::serializeString(a1 + 24, 0, 1);
    }

    re::EncoderOPACK<re::SeekableInputStream>::endString((a1 + 24));
LABEL_39:
    v15 = *(a1 + 64) ^ 1;
  }

  return v15 & 1;
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::serializePointer(uint64_t a1, const char *a2, uint64_t a3, char **a4, re::TypeInfo *this, const re::TypeInfo *a6, uint64_t a7)
{
  isPointerToPolymorphicType = re::TypeInfo::isPointerToPolymorphicType(this);
  if (this == a6)
  {
    goto LABEL_4;
  }

  if (*this == *a6)
  {
    v24 = **(this + 2);
    v25 = **(a6 + 2);
    if (v24 == v25)
    {
      v27 = WORD1(v24) == WORD1(v25);
      v26 = (v25 ^ v24) & 0xFFFFFF00000000;
      v27 = v27 && v26 == 0;
      if (v27)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, v14))
  {
LABEL_4:
    v16 = 0;
    goto LABEL_5;
  }

  if (*(a6 + 12) != 9 || isPointerToPolymorphicType && (!re::TypeInfo::isPointerToPolymorphicType(a6) || (v28 = re::TypeInfo::name(this), v29 = re::TypeInfo::name(a6), !re::StringID::operator==(v28, v29))))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, this, a6);
    goto LABEL_27;
  }

  v16 = 1;
LABEL_5:
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v40);
  re::TypeInfo::TypeInfo(v49, &v41);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v40);
  re::TypeInfo::TypeInfo(v48, &v41);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v23 = *v49[2];
    v47[0] = v49[0];
    v47[1] = v23;
    if (!v49[0])
    {
      goto LABEL_8;
    }
  }

  else
  {
    re::internal::actualType(a4, this, v47);
    if (!v47[0])
    {
LABEL_8:
      v17 = re::TypeInfo::name(this);
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Failed to get actual type of polymorphic object. Type %s.", v18, v19, v20, v21, v22, v17[1]);
      goto LABEL_27;
    }
  }

  re::TypeRegistry::typeInfo(*this, v47, &v40);
  re::TypeInfo::TypeInfo(v46, &v41);
  v45 = 0;
  if (re::EncoderOPACK<re::SeekableInputStream>::beginPointer(a1 + 24, a2, a3, &v45, 0))
  {
    if (v45 == 1)
    {
      v44 = 0;
      if ((*(a1 + 64) & 1) == 0)
      {
        re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<unsigned int>((a1 + 24), "ID", &v44);
        v32 = *(a1 + 152) + 48 * *(a1 + 136);
        if (*(v32 - 48) != 2)
        {
          ++*(v32 - 16);
        }
      }

      if (*(a1 + 64))
      {
        goto LABEL_27;
      }

      if ((a7 & 1) == 0)
      {
        v40 = v44;
        v41 = a4;
        re::TypeInfo::TypeInfo(&v42, this);
        re::TypeInfo::TypeInfo(v43, a6);
        v43[32] = isPointerToPolymorphicType;
        v43[33] = v16;
        v33 = *(a1 + 376);
        if (v33)
        {
          v34 = *(a1 + 392);
          do
          {
            v35 = v33 >> 1;
            v36 = &v34[22 * (v33 >> 1)];
            v38 = *v36;
            v37 = v36 + 22;
            v33 += ~(v33 >> 1);
            if (v40 < v38)
            {
              v33 = v35;
            }

            else
            {
              v34 = v37;
            }
          }

          while (v33);
        }

        else
        {
          v34 = *(a1 + 392);
        }

        re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::PointerFixup>::insert((a1 + 360), 0x2E8BA2E8BA2E8BA3 * ((v34 - *(a1 + 392)) >> 3), &v40);
      }
    }

    else if (v45)
    {
      if (isPointerToPolymorphicType)
      {
        re::internal::deserializePolymorphicObject<re::EncoderOPACK<re::SeekableInputStream>,false>(a1, a2, a3, a4, this, v46, v48, v16, a7);
      }

      else
      {
        if (a7)
        {
          Instance = 0;
        }

        else
        {
          Instance = *a4;
          if (!*a4)
          {
            Instance = re::TypeInfo::createInstance(v49, *(a1 + 48), 0);
            *a4 = Instance;
          }
        }

        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, Instance, v49, v48, a7);
        }
      }
    }

    else if ((a7 & 1) == 0 && *a4)
    {
      re::TypeInfo::releaseInstance(v46, *a4, *(a1 + 48), *(a1 + 200));
      *a4 = 0;
    }

    re::EncoderOPACK<re::SeekableInputStream>::endPointer((a1 + 24));
    v30 = *(a1 + 64) ^ 1;
    return v30 & 1;
  }

LABEL_27:
  v30 = 0;
  return v30 & 1;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(uint64_t a1, const re::StringID *a2, uint64_t a3)
{
  result = re::TypeRegistry::typeID(*(a1 + 272), a2, &v7);
  if (v7)
  {
    v6 = v7;
    return re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v6, a3);
  }

  return result;
}

uint64_t re::serializeBool<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeChar<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeI8<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeI16<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, __int16 *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeI32<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned int *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeI64<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unint64_t *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeU8<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeU16<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int16 *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeU32<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned int *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeU64<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, rapidjson::internal **a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeFloat<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeDouble<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeCString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_21:
      re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
      goto LABEL_22;
    }

    v26 = **(a5 + 2);
    v27 = **(a6 + 2);
    if (v26 != v27)
    {
      goto LABEL_21;
    }

    v29 = WORD1(v26) == WORD1(v27);
    v28 = (v27 ^ v26) & 0xFFFFFF00000000;
    v29 = v29 && v28 == 0;
    if (!v29)
    {
      goto LABEL_21;
    }
  }

LABEL_4:
  if (a7)
  {
    v32 = 0;
    v14 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, a3, &v32, 0);
    v20 = 0;
    if (v14)
    {
      if (!v32)
      {
        goto LABEL_28;
      }

      if (v32 == 1)
      {
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Found pointer reference instead of C string.", v15, v16, v17, v18, v19, v31);
LABEL_22:
        v20 = 0;
        return v20 & 1;
      }

      v31 = 0;
      if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, 0, &v31, 0))
      {
LABEL_28:
        re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
        v20 = *(a1 + 64) ^ 1;
        return v20 & 1;
      }

      if (!v31)
      {
LABEL_27:
        re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
        goto LABEL_28;
      }

      v24 = a1 + 24;
      v23 = 0;
      v25 = 1;
LABEL_26:
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(v24, v23, v25);
      goto LABEL_27;
    }
  }

  else
  {
    v32 = 2 * (*a4 != 0);
    v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, a3, &v32, 0);
    v20 = 0;
    if (v21)
    {
      if (v32 != 2)
      {
        goto LABEL_28;
      }

      v22 = *a4;
      if (*a4)
      {
        v22 = strlen(v22);
      }

      v31 = v22;
      if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, 0, &v31, 0))
      {
        goto LABEL_28;
      }

      if (!v31)
      {
        goto LABEL_27;
      }

      v23 = *a4;
      v24 = a1 + 24;
      v25 = 0;
      goto LABEL_26;
    }
  }

  return v20 & 1;
}

uint64_t re::serializeStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_14;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_14;
  }

  v18 = re::TypeInfo::name(a6);
  if (*v18 >> 1 != 0x134375A94D9F7110 || (v19 = v18[1], v19 != "DynamicString") && strcmp(v19, "DynamicString"))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    goto LABEL_23;
  }

LABEL_14:
  if (!a7)
  {
    v26 = strlen(*(a4 + 8));
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, a3, &v26, 0))
    {
      if (v26)
      {
        v23 = *(a4 + 8);
        v22 = a1 + 24;
        v24 = 0;
        goto LABEL_21;
      }

LABEL_22:
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
      v21 = *(a1 + 64) ^ 1;
      return v21 & 1;
    }

LABEL_23:
    v21 = 0;
    return v21 & 1;
  }

  v26 = 0;
  v20 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, a3, &v26, 0);
  v21 = 0;
  if (v20)
  {
    if (v26)
    {
      v22 = a1 + 24;
      v23 = 0;
      v24 = 1;
LABEL_21:
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(v22, v23, v24);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  return v21 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_18:
      re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
      goto LABEL_19;
    }

    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_18;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_18;
    }
  }

LABEL_4:
  if (!a7)
  {
    v16 = *a5;
    v17 = **(a5 + 2);
    v39[0] = 0x258C98EAAF29A10ALL;
    v39[1] = "CallbackSerializerAttribute";
    v18 = re::TypeRegistry::typeID(v16, v39, v40);
    if (v40[0] && (v35 = v40[1], v36 = v17, LODWORD(v37) = -1, (v18 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v16 + 768, &v35)) != 0))
    {
      v19 = *v18;
    }

    else
    {
      v19 = 0;
    }

    if (v39[0])
    {
      if (v39[0])
      {
      }
    }

    v25 = *v19;
    v26 = *(a1 + 264);
    v27 = *(a1 + 56);
    v37 = 0;
    v38 = 0;
    v35 = v27;
    v36 = 0;
    re::DynamicString::setCapacity(&v35, 0);
    if ((*(v25 + 72))(v26, v25, a4, &v35))
    {
      if (v36)
      {
        v28 = (v36 >> 1);
      }

      else
      {
        v28 = (v36 >> 1);
      }

      v40[0] = v28;
      if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, a3, v40, 0))
      {
        if (v40[0])
        {
          if (v36)
          {
            v29 = v37;
          }

          else
          {
            v29 = &v36 + 1;
          }

          re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, v29, 0);
        }

        re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
        if (v35 && (v36 & 1) != 0)
        {
          (*(*v35 + 40))();
        }

        goto LABEL_9;
      }
    }

    else
    {
      re::TypeInfo::name(a5);
      re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Failed to write string for %s (type %s) using serialization callback.", v30, v31, v32, v33, v34, a2);
    }

    if (v35 && (v36 & 1) != 0)
    {
      (*(*v35 + 40))();
    }

LABEL_19:
    v15 = 0;
    return v15 & 1;
  }

  v35 = 0;
  v14 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, a3, &v35, 0);
  v15 = 0;
  if (v14)
  {
    if (v35)
    {
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, 0, 1);
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
LABEL_9:
    v15 = *(a1 + 64) ^ 1;
  }

  return v15 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString(_BYTE *a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *a5, const re::TypeInfo *a6)
{
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_19:
      re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_20:
      v15 = 0;
      return v15 & 1;
    }

    v18 = **(a5 + 2);
    v19 = **(a6 + 2);
    if (v18 != v19)
    {
      goto LABEL_19;
    }

    v21 = WORD1(v18) == WORD1(v19);
    v20 = (v19 ^ v18) & 0xFFFFFF00000000;
    v21 = v21 && v20 == 0;
    if (!v21)
    {
      goto LABEL_19;
    }
  }

LABEL_4:
  if (!*a4)
  {
    LODWORD(v26) = 0;
    v22 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, a3, &v26, 0);
    v15 = 0;
    if (v22)
    {
      goto LABEL_22;
    }

    return v15 & 1;
  }

  if (a1[336] != 1 || (v26 = *a4, (v12 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet((a1 + 344), &v26)) == 0))
  {
    v25 = 2;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, a3, &v25, 0))
    {
      v26 = strlen(*a4);
      if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, 0, &v26, 0))
      {
        if (v26)
        {
          re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString((a1 + 24), *a4, 0);
        }

        re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
        re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
        v16 = *a4;
        v17 = **(a5 + 2);
        *&v24 = *a5;
        *(&v24 + 1) = v17;
        re::internal::SharedObjectGraph::addObject((a1 + 336), v16, &v24);
        goto LABEL_23;
      }
    }

    goto LABEL_20;
  }

  v13 = *v12;
  v25 = 1;
  LODWORD(v26) = v13;
  v14 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, a3, &v25, 0);
  v15 = 0;
  if (v14)
  {
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference((a1 + 24), &v26);
LABEL_22:
    re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
LABEL_23:
    v15 = a1[64] ^ 1;
  }

  return v15 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer(uint64_t a1, const char *a2, uint64_t a3, char **a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
{
  isPointerToPolymorphicType = re::TypeInfo::isPointerToPolymorphicType(this);
  if (this == a6)
  {
    goto LABEL_4;
  }

  if (*this == *a6)
  {
    v29 = **(this + 2);
    v30 = **(a6 + 2);
    if (v29 == v30)
    {
      v32 = WORD1(v29) == WORD1(v30);
      v31 = (v30 ^ v29) & 0xFFFFFF00000000;
      v32 = v32 && v31 == 0;
      if (v32)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, v14))
  {
LABEL_4:
    v16 = 0;
    goto LABEL_5;
  }

  if (*(a6 + 12) != 9 || isPointerToPolymorphicType && (!re::TypeInfo::isPointerToPolymorphicType(a6) || (v33 = re::TypeInfo::name(this), v34 = re::TypeInfo::name(a6), !re::StringID::operator==(v33, v34))))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, this, a6);
    goto LABEL_30;
  }

  v16 = 1;
LABEL_5:
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v52);
  re::TypeInfo::TypeInfo(v51, v53);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v52);
  re::TypeInfo::TypeInfo(v50, v53);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v23 = *v51[2];
    *&v49 = v51[0];
    *(&v49 + 1) = v23;
    if (!v51[0])
    {
      goto LABEL_8;
    }
  }

  else
  {
    re::internal::actualType(a4, this, &v49);
    if (!v49)
    {
LABEL_8:
      v17 = re::TypeInfo::name(this);
      re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Failed to get actual type of polymorphic object. Type %s.", v18, v19, v20, v21, v22, v17[1]);
LABEL_30:
      v27 = 0;
      return v27 & 1;
    }
  }

  re::TypeRegistry::typeInfo(*this, &v49, &v52);
  re::TypeInfo::TypeInfo(v48, v53);
  if ((a7 & 1) != 0 || (v24 = *a4) == 0)
  {
    LODWORD(v52) = 0;
    v28 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, a3, &v52, 0);
    v27 = 0;
    if (v28)
    {
      goto LABEL_17;
    }

    return v27 & 1;
  }

  if (*(a1 + 336) != 1)
  {
LABEL_33:
    v47 = v49;
    re::internal::SharedObjectGraph::beginObject((a1 + 336), v24, &v47);
    v46 = 2;
    if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, a3, &v46, 0))
    {
      goto LABEL_30;
    }

    if (!isPointerToPolymorphicType)
    {
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, *a4, v51, v50, 0);
      }

      goto LABEL_45;
    }

    v36 = *a4;
    re::TypeInfo::TypeInfo(v54, v48);
    if (v16)
    {
      v37 = v50[0];
      v38 = re::TypeInfo::name(v48);
      re::TypeRegistry::typeInfo(v37, v38, &v52);
      if (v52 != 1)
      {
        v40 = re::TypeInfo::name(v48);
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "No matching type found for polymorphic type %s to serialize.", v41, v42, v43, v44, v45, v40[1]);
LABEL_45:
        re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
        if (*(a1 + 336) == 1)
        {
          --*(a1 + 488);
          ++*(a1 + 496);
        }

        goto LABEL_18;
      }

      re::TypeInfo::operator=(v54, v53);
    }

    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0))
    {
      v39 = re::TypeInfo::polymorphicObjectName(v54);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, v39[1], 0, v36, v48, v54, 0);
      }

      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    }

    goto LABEL_45;
  }

  v52 = *a4;
  v25 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 344, &v52);
  if (!v25)
  {
    v24 = *a4;
    goto LABEL_33;
  }

  LODWORD(v52) = *v25;
  v54[0] = 1;
  v26 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, a3, v54, 0);
  v27 = 0;
  if (v26)
  {
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference((a1 + 24), &v52);
LABEL_17:
    re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
LABEL_18:
    v27 = *(a1 + 64) ^ 1;
  }

  return v27 & 1;
}

_anonymous_namespace_ *re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference(_anonymous_namespace_ *result, unsigned int *a2)
{
  if ((*(result + 40) & 1) == 0)
  {
    v3 = result;
    result = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(result, 0, 0, 0);
    if (result)
    {
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(v3, "@ref", 0, a2, 0);

      return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(v3);
    }
  }

  return result;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(uint64_t a1, const re::StringID *a2, uint64_t a3)
{
  result = re::TypeRegistry::typeID(*(a1 + 272), a2, &v6);
  if (v6)
  {
    v9 = a3;
    v8 = v7 | 0xFFFFFFFF00000000;
    return re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(a1 + 288, &v8, &v9);
  }

  return result;
}

uint64_t re::serializeBool<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, BOOL *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, a2, a3, a4, a7);
}

unsigned int *re::serializeChar<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(a1 + 24, a2, a3, a4, a7);
}

unsigned int *re::serializeI8<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>(a1 + 24, a2, a3, a4, a7, "int8");
}

unsigned int *re::serializeI16<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _WORD *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>(a1 + 24, a2, a3, a4, a7, "int16");
}

uint64_t re::serializeI32<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned int *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>(a1 + 24, a2, a3, a4, a7, "int32");
}

uint64_t re::serializeI64<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unint64_t *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>(a1 + 24, a2, a3, a4, a7, "int64");
}

unsigned int *re::serializeU8<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>(a1 + 24, a2, a3, a4, a7, "uint8");
}

unsigned int *re::serializeU16<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _WORD *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>(a1 + 24, a2, a3, a4, a7, "uint16");
}

uint64_t re::serializeU32<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _DWORD *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(a1 + 24, a2, a3, a4, a7, "uint32");
}

uint64_t re::serializeU64<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, void *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(a1 + 24, a2, a3, a4, a7, "uint64");
}

uint64_t re::serializeFloat<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, a3, a4, a7, "float");
}

uint64_t re::serializeDouble<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
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

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, a3, a4, a7, "double");
}

uint64_t re::serializeCString<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, const char **a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_22:
      re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
      goto LABEL_23;
    }

    v23 = **(a5 + 2);
    v24 = **(a6 + 2);
    if (v23 != v24)
    {
      goto LABEL_22;
    }

    v26 = WORD1(v23) == WORD1(v24);
    v25 = (v24 ^ v23) & 0xFFFFFF00000000;
    v26 = v26 && v25 == 0;
    if (!v26)
    {
      goto LABEL_22;
    }
  }

LABEL_4:
  if (!a7)
  {
    v46 = 2 * (*a4 != 0);
    v21 = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, a3, &v46, 0);
    v20 = 0;
    if (!v21)
    {
      return v20 & 1;
    }

    v22 = v46;
    if (v46)
    {
      if (v46 == 1)
      {
LABEL_16:
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Found pointer reference instead of C string.", v15, v16, v17, v18, v19, v44);
LABEL_23:
        v20 = 0;
        return v20 & 1;
      }
    }

    else
    {
      if (!*a4)
      {
        goto LABEL_44;
      }

      (*(**(a1 + 48) + 40))(*(a1 + 48));
      *a4 = 0;
      v22 = v46;
    }

    if (v22 == 2)
    {
      v27 = *a4 ? strlen(*a4) : 0;
      v45 = v27;
      if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, 0, &v45, 0))
      {
        v28 = *a4;
        v29 = v45;
        if (*a4 && v45 == v27)
        {
          if (v27)
          {
LABEL_34:
            re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, v28, 0);
            v28 = *a4;
            v30 = v45;
LABEL_43:
            v28[v30] = 0;
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
            goto LABEL_44;
          }
        }

        else
        {
          if (v28)
          {
            (*(**(a1 + 48) + 40))(*(a1 + 48));
            *a4 = 0;
            v29 = v45;
          }

          v31 = (*(**(a1 + 24) + 64))(*(a1 + 24));
          v37 = v45;
          if (v29 > v31)
          {
            (*(**(a1 + 24) + 64))(*(a1 + 24));
            re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "String size greater than stream size during deserialization. String length = %zu, Stream length = %zu", v38, v39, v40, v41, v42, v37);
            goto LABEL_23;
          }

          if (((v45 == -1) << 63) >> 63 != (v45 == -1))
          {
            re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Size overflow during string deserialization. String length = %zu", v32, v33, v34, v35, v36, v45);
            goto LABEL_23;
          }

          v28 = (*(**(a1 + 48) + 32))(*(a1 + 48), v45 + 1, 0);
          *a4 = v28;
          if (v45)
          {
            goto LABEL_34;
          }
        }

        v30 = 0;
        goto LABEL_43;
      }
    }

LABEL_44:
    re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
    if (*a4 && *(a1 + 64) == 1)
    {
      (*(**(a1 + 48) + 40))(*(a1 + 48));
      *a4 = 0;
    }

    goto LABEL_47;
  }

  v46 = 0;
  v14 = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, a3, &v46, 0);
  v20 = 0;
  if (v14)
  {
    if (!v46)
    {
LABEL_12:
      re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
LABEL_47:
      v20 = *(a1 + 64) ^ 1;
      return v20 & 1;
    }

    if (v46 != 1)
    {
      v45 = 0;
      if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, 0, &v45, 0))
      {
        if (v45)
        {
          re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, 0, 1);
        }

        re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
      }

      goto LABEL_12;
    }

    goto LABEL_16;
  }

  return v20 & 1;
}

uint64_t re::serializeStringID<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _anonymous_namespace_ *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_14;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_14;
  }

  v18 = re::TypeInfo::name(a6);
  if (*v18 >> 1 != 0x134375A94D9F7110 || (v19 = v18[1], v19 != "DynamicString") && strcmp(v19, "DynamicString"))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    goto LABEL_26;
  }

LABEL_14:
  if (!a7)
  {
    v43 = 0;
    if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, a3, &v43, 0))
    {
      v22 = v43;
      if (v43)
      {
        v23 = (*(**(a1 + 24) + 64))(*(a1 + 24));
        v29 = v43;
        if (v22 > v23)
        {
          (*(**(a1 + 24) + 64))(*(a1 + 24));
          re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "String size greater than stream size during deserialization. String length = %zu, Stream length = %zu", v30, v31, v32, v33, v34, v29);
          goto LABEL_26;
        }

        if (((v43 == -1) << 63) >> 63 != (v43 == -1))
        {
          re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Size overflow during string deserialization. String length = %zu", v24, v25, v26, v27, v28, v43);
          goto LABEL_26;
        }

        v37 = (*(**(a1 + 56) + 32))(*(a1 + 56), v43 + 1, 0);
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, v37, 0);
        v37[v43] = 0;
        v41 = 0;
        v42 = &str_67;
        v39 = re::StringID::operator=(a4, &v41);
        if (v41)
        {
          if (v41)
          {
          }
        }

        v36 = *(**(a1 + 56) + 40);
      }

      else
      {
        v41 = 0;
        v42 = &str_67;
        v35 = re::StringID::operator=(a4, &v41);
        if ((v41 & 1) == 0)
        {
LABEL_32:
          re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
          v21 = *(a1 + 64) ^ 1;
          return v21 & 1;
        }
      }

      v36();
      goto LABEL_32;
    }

LABEL_26:
    v21 = 0;
    return v21 & 1;
  }

  v41 = 0;
  v20 = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, a3, &v41, 0);
  v21 = 0;
  if (v20)
  {
    if (v41)
    {
      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, 0, 1);
    }

    goto LABEL_32;
  }

  return v21 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_17:
      re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
      goto LABEL_40;
    }

    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_17;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_17;
    }
  }

LABEL_4:
  if (!a7)
  {
    v16 = *a5;
    v17 = **(a5 + 2);
    v38[0] = 0x258C98EAAF29A10ALL;
    v38[1] = "CallbackSerializerAttribute";
    v18 = re::TypeRegistry::typeID(v16, v38, buf);
    if (*buf && (v34 = *&buf[8], v35 = v17, LODWORD(v36) = -1, (v18 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v16 + 768, &v34)) != 0))
    {
      v19 = *v18;
    }

    else
    {
      v19 = 0;
    }

    if (v38[0])
    {
      if (v38[0])
      {
      }
    }

    v24 = *v19;
    v25 = *(a1 + 264);
    v38[0] = 0;
    if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, a3, v38, 0))
    {
      v26 = *(a1 + 56);
      v36 = 0;
      v37 = 0;
      v34 = v26;
      v35 = 0;
      re::DynamicString::setCapacity(&v34, 0);
      if (v38[0])
      {
        re::DynamicString::resize(&v34, v38[0], 0);
        if (v35)
        {
          v27 = v36;
        }

        else
        {
          v27 = &v35 + 1;
        }

        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, v27, 0);
      }

      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
      v28 = &v35 + 1;
      if (v35)
      {
        v29 = v36;
      }

      else
      {
        v29 = &v35 + 1;
      }

      v30 = (*(v24 + 80))(*(a1 + 48), v25, v24, a4, v29);
      if ((v30 & 1) == 0)
      {
        v31 = *re::foundationSerializationLogObjects(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          if (v35)
          {
            v28 = v36;
          }

          v32 = re::TypeInfo::name(a5)[1];
          *buf = 136315650;
          *&buf[4] = a2;
          *&buf[12] = 2080;
          *&buf[14] = v28;
          v40 = 2080;
          v41 = v32;
          _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_INFO, "Failed to parse %s: %s (type %s) using deserialization callback - skipping.", buf, 0x20u);
        }
      }

      if (v34 && (v35 & 1) != 0)
      {
        (*(*v34 + 40))();
      }

      goto LABEL_39;
    }

LABEL_40:
    v15 = 0;
    return v15 & 1;
  }

  v34 = 0;
  v14 = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, a3, &v34, 0);
  v15 = 0;
  if (v14)
  {
    if (v34)
    {
      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, 0, 1);
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
LABEL_39:
    v15 = *(a1 + 64) ^ 1;
  }

  return v15 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString(uint64_t a1, char *a2, const re::TypeInfo *a3, char **a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_15:
      re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
      goto LABEL_16;
    }

    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 != v15)
    {
      goto LABEL_15;
    }

    v17 = WORD1(v14) == WORD1(v15);
    v16 = (v15 ^ v14) & 0xFFFFFF00000000;
    v17 = v17 && v16 == 0;
    if (!v17)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  v49 = 0;
  if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, a3, &v49, 0))
  {
    if (v49 == 1)
    {
      v48 = 0;
      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference((a1 + 24), &v48, 0);
      if ((*(a1 + 64) & 1) == 0)
      {
        if (*(a1 + 408) <= v48)
        {
          re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Invalid reference ID for shared object: %u", v20, v21, v22, v23, v24, v48);
        }

        else
        {
          re::internal::SharedObjectGraph::typeID((a1 + 336), v48, &v44);
          if (v44 == *a5)
          {
            v25 = **(a5 + 2);
            if (v45 == v25 && v46 == WORD1(v25) && ((v47 ^ HIDWORD(v25)) & 0xFFFFFF) == 0)
            {
              if ((a7 & 1) == 0)
              {
                if (*a4)
                {
                  v41 = *a4;
                  if (v41 != re::internal::SharedObjectGraph::object((a1 + 336), v48))
                  {
                    (*(**(a1 + 48) + 40))(*(a1 + 48), *a4);
                    *a4 = 0;
                  }
                }

                *a4 = re::internal::SharedObjectGraph::object((a1 + 336), v48);
                if (*(a1 + 336) == 1 && *(a1 + 337) == 1)
                {
                  re::internal::SharedObjectGraph::addChild((a1 + 336), *(*(a1 + 504) + 4 * *(a1 + 488) - 4), v48);
                }
              }

              goto LABEL_38;
            }
          }

          v26 = *(a1 + 272);
          re::internal::SharedObjectGraph::typeID((a1 + 336), v48, &v44);
          v42 = *(re::TypeRegistry::typeName(v26, &v44) + 1);
          re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Invalid reference ID for shared object. Expected type char *. Actual type %s.", v27, v28, v29, v30, v31, v42);
        }
      }
    }

    else
    {
      if (!v49)
      {
        if ((a7 & 1) == 0 && *a4)
        {
          (*(**(a1 + 48) + 40))(*(a1 + 48));
          *a4 = 0;
        }

LABEL_38:
        re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
        v18 = *(a1 + 64) ^ 1;
        return v18 & 1;
      }

      if ((a7 & 1) == 0 && *a4)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      v44 = 0;
      if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, 0, &v44, 0))
      {
        if (((v44 == -1) << 63) >> 63 == (v44 == -1))
        {
          v37 = (*(**(a1 + 48) + 32))(*(a1 + 48), v44 + 1, 0);
          v38 = v37;
          if ((a7 & 1) == 0)
          {
            *a4 = v37;
          }

          v39 = v44;
          if (v44)
          {
            re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, v37, 0);
            v39 = v44;
          }

          *(v38 + v39) = 0;
          re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
          v40 = **(a5 + 2);
          *&v43 = *a5;
          *(&v43 + 1) = v40;
          re::internal::SharedObjectGraph::addObject(a1 + 336, v38, &v43);
          goto LABEL_38;
        }

        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Size overflow during string deserialization. String length = %zu", v32, v33, v34, v35, v36, v44);
      }
    }
  }

LABEL_16:
  v18 = 0;
  return v18 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer(uint64_t a1, char *a2, uint64_t a3, void **a4, re::TypeInfo *this, const re::TypeInfo *a6, int a7)
{
  isPointerToPolymorphicType = re::TypeInfo::isPointerToPolymorphicType(this);
  if (this == a6)
  {
    goto LABEL_4;
  }

  if (*this == *a6)
  {
    v26 = **(this + 2);
    v27 = **(a6 + 2);
    if (v26 == v27)
    {
      v29 = WORD1(v26) == WORD1(v27);
      v28 = (v27 ^ v26) & 0xFFFFFF00000000;
      v29 = v29 && v28 == 0;
      if (v29)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, v14))
  {
LABEL_4:
    v16 = 0;
    goto LABEL_5;
  }

  if (*(a6 + 12) != 9 || isPointerToPolymorphicType && (!re::TypeInfo::isPointerToPolymorphicType(a6) || (v30 = re::TypeInfo::name(this), v31 = re::TypeInfo::name(a6), !re::StringID::operator==(v30, v31))))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, this, a6);
    goto LABEL_28;
  }

  v16 = 1;
LABEL_5:
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v59);
  re::TypeInfo::TypeInfo(v57, v60);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v59);
  re::TypeInfo::TypeInfo(v56, v60);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v25 = *v58;
    v55[0] = v57[0];
    v55[1] = v25;
    if (!v57[0])
    {
      goto LABEL_8;
    }

LABEL_11:
    re::TypeRegistry::typeInfo(*this, v55, &v59);
    re::TypeInfo::TypeInfo(v53, v60);
    v52 = 0;
    if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, a3, &v52, 0))
    {
      goto LABEL_28;
    }

    if (v52 != 1)
    {
      if (!v52)
      {
        if ((a7 & 1) == 0 && *a4)
        {
          re::TypeInfo::releaseInstance(v53, *a4, *(a1 + 48), *(a1 + 264));
          *a4 = 0;
        }

        goto LABEL_60;
      }

      if (isPointerToPolymorphicType)
      {
        re::internal::deserializePolymorphicObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>(a1, a2, a3, a4, this, v53, v56, v16, a7);
        goto LABEL_60;
      }

      if (!a7)
      {
        Instance = *a4;
        if (!*a4)
        {
          Instance = re::TypeInfo::createInstance(v57, *(a1 + 48), 0);
        }

        v41 = 0;
        *a4 = Instance;
        goto LABEL_56;
      }

      v38 = *(a1 + 272);
      if (v57[0] != v38)
      {
        v39 = re::TypeInfo::name(v57);
        re::TypeRegistry::typeInfo(v38, v39, &v59);
        if ((v59 & 1) == 0)
        {
          Instance = 0;
          v41 = 1;
          goto LABEL_56;
        }

        re::TypeInfo::operator=(v57, v60);
      }

      Instance = re::TypeInfo::createInstance(v57, *(a1 + 48), 0);
      v41 = 0;
LABEL_56:
      v44 = *v58;
      *&v47 = v57[0];
      *(&v47 + 1) = v44;
      re::internal::SharedObjectGraph::beginObject((a1 + 336), Instance, &v47);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, Instance, v57, v56, v41);
      }

      if (*(a1 + 336) == 1)
      {
        --*(a1 + 488);
        ++*(a1 + 496);
      }

      goto LABEL_60;
    }

    v51 = 0;
    re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference((a1 + 24), &v51, 0);
    if (*(a1 + 64))
    {
      goto LABEL_28;
    }

    if (*(a1 + 408) > v51)
    {
      re::internal::SharedObjectGraph::typeID((a1 + 336), v51, v50);
      if (!re::internal::areCompatible(this, v50))
      {
        v42 = re::TypeInfo::name(v57)[1];
        v43 = *(a1 + 272);
        re::internal::SharedObjectGraph::typeID((a1 + 336), v51, &v59);
        LOBYTE(v46) = v42;
        re::TypeRegistry::typeName(v43, &v59);
        v22 = "Invalid reference. Objects are not compatible. Expected type %s. Actual type %s.";
        goto LABEL_54;
      }

      if (a7)
      {
LABEL_60:
        re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
        v32 = *(a1 + 64) ^ 1;
        return v32 & 1;
      }

      if (*a4)
      {
        v34 = *a4;
        if (v34 != re::internal::SharedObjectGraph::object((a1 + 336), v51))
        {
          re::TypeInfo::releaseInstance(v53, *a4, *(a1 + 48), *(a1 + 264));
          *a4 = 0;
        }
      }

      v35 = re::internal::SharedObjectGraph::object((a1 + 336), v51);
      v36 = v35;
      *a4 = v35;
      if ((*(v54 + 49) & 2) != 0)
      {
        v45 = *(v54 + 32);
        if (v45)
        {
          v45(v35);
        }

        if (*(a1 + 336) == 1 && *(a1 + 337) == 1)
        {
          re::internal::SharedObjectGraph::addChild((a1 + 336), *(*(a1 + 504) + 4 * *(a1 + 488) - 4), v51);
        }
      }

      else
      {
        re::internal::SharedObjectGraph::typeID((a1 + 336), v51, v49);
        if (!v49[0])
        {
          LOBYTE(v46) = v51;
          v22 = "TypeID for shared object at index %d is invalid.";
          goto LABEL_54;
        }

        re::TypeRegistry::typeInfo(v49[0], v49, &v59);
        if ((v59 & 1) == 0)
        {
          LOBYTE(v46) = v51;
          v22 = "No TypeInfo found for shared object at index %d.";
          goto LABEL_54;
        }

        v37 = re::TypeInfo::createInstance(v60, *(a1 + 48), *(a1 + 264));
        *a4 = v37;
        if ((re::TypeInfo::copy(v60, v37, v36, *(a1 + 48), *(a1 + 264)) & 1) == 0)
        {
          v46 = re::TypeInfo::name(v60)[1];
          v22 = "Failed to copy non-shareable object of type '%s'.";
LABEL_54:
          v23 = a1;
          v24 = 0;
          goto LABEL_9;
        }
      }

      re::internal::SharedObjectGraph::typeID((a1 + 336), v51, v48);
      re::TypeInfo::setActualTypeForPointer(this, a4, v48);
      goto LABEL_60;
    }

    LOBYTE(v46) = v51;
    v22 = "Invalid reference ID for shared object: %u";
    goto LABEL_54;
  }

  re::internal::actualType(a4, this, v55);
  if (v55[0])
  {
    goto LABEL_11;
  }

LABEL_8:
  v46 = re::TypeInfo::name(this)[1];
  v22 = "Failed to get actual type of polymorphic object. Type %s.";
  v23 = a1;
  v24 = a2;
LABEL_9:
  re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(v23, v24, v22, v17, v18, v19, v20, v21, v46);
LABEL_28:
  v32 = 0;
  return v32 & 1;
}

_anonymous_namespace_ *re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference(_anonymous_namespace_ *result, _DWORD *a2, int a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v3 = a3;
    v5 = result;
    result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(result, 0, 0, a3);
    if (result)
    {
      result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(v5, "@ref", 0, a2, v3, "uint32");
      if ((*(v5 + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v5, 2);
        v6 = *(v5 + 128) + 48 * *(v5 + 112);
        ++*(v6 - 16);
      }
    }
  }

  return result;
}

uint64_t re::internal::deserializePolymorphicObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>(uint64_t a1, char *a2, uint64_t a3, void **a4, re **a5, re::TypeInfo *a6, re::TypeInfo *a7, int a8, char a9)
{
  v60 = *MEMORY[0x1E69E9840];
  v15 = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, 0, 0);
  v21 = 0;
  if (v15)
  {
    v22 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
    if (!*v22)
    {
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Invalid object. Name of polymorphic type expected.", v16, v17, v18, v19, v20, v51);
LABEL_13:
      v21 = 0;
      return v21 & 1;
    }

    v23 = *(v22 + 8);
    if ((*(v23 + 11) & 0x1000) != 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = *(v23 + 1);
    }

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

    v29 = 2 * v25;
    v30 = *(*(a7 + 2) + 88);
    v31 = (v30 - 1);
    if (v30 != 1)
    {
      v32 = 0;
      while (1)
      {
        re::TypeInfo::derivedClass(a7, v32, buf);
        v33 = re::TypeInfo::polymorphicObjectName(buf);
        if ((*v33 ^ v29) <= 1)
        {
          v34 = v33[1];
          if (v34 == v24 || !strcmp(v34, v24))
          {
            break;
          }
        }

        if (v31 == ++v32)
        {
          goto LABEL_23;
        }
      }

      v35 = *v59;
      v56 = *buf;
      v57 = v35;
      if (*buf)
      {
LABEL_27:
        if ((a9 & 1) == 0 && *a4)
        {
          re::TypeInfo::releaseInstance(a6, *a4, *(a1 + 48), *(a1 + 264));
          *a4 = 0;
        }

        re::TypeRegistry::typeInfo(*a7, &v56, buf);
        re::TypeInfo::TypeInfo(v55, &buf[8]);
        if (a8)
        {
          v38 = *(a1 + 272);
        }

        else
        {
          v38 = *(a1 + 272);
          if (*a5 == v38)
          {
            re::TypeInfo::operator=(a6, v55);
            v43 = v56;
            v44 = v57;
            goto LABEL_48;
          }
        }

        v41 = re::TypeInfo::name(v55);
        v42 = re::TypeRegistry::typeInfo(v38, v41, buf);
        if (buf[0] != 1)
        {
          v45 = *re::foundationSerializationLogObjects(v42);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = re::TypeInfo::name(v55)[1];
            *buf = 136315138;
            *&buf[4] = v46;
            _os_log_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_DEFAULT, "No matching runtime type found for serialized polymorphic type %s. Skipping unknown type.", buf, 0xCu);
          }

          v54[0] = 0;
          v54[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v54);
          if ((*(a1 + 64) & 1) == 0)
          {
            (*(*a1 + 72))(a1, v24, 0, 0, v55, v55, 1);
          }

LABEL_52:
          (*(*a1 + 24))(a1);
          if ((*(a1 + 64) & 1) == 0)
          {
            re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 2);
            v49 = *(a1 + 152) + 48 * *(a1 + 136);
            ++*(v49 - 16);
            v21 = *(a1 + 64) ^ 1;
            return v21 & 1;
          }

          goto LABEL_13;
        }

        re::TypeInfo::operator=(a6, &buf[8]);
        v43 = *a6;
        v44 = **(a6 + 2);
LABEL_48:
        Instance = re::TypeInfo::createInstance(a6, *(a1 + 48), *(a1 + 264));
        v48 = Instance;
        if ((a9 & 1) == 0)
        {
          *a4 = Instance;
          v53[0] = v43;
          v53[1] = v44;
          re::internal::setActualType(a4, a5, v53);
        }

        v52[0] = v43;
        v52[1] = v44;
        (*(*a1 + 16))(a1, v48, v52);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, v24, 0, v48, a6, v55, v48 == 0);
        }

        goto LABEL_52;
      }
    }

LABEL_23:
    v36 = re::TypeInfo::polymorphicObjectName(a7);
    if ((*v36 ^ v29) <= 1)
    {
      v36 = v36[1];
      if (v36 == v24 || (v36 = strcmp(v36, v24), !v36))
      {
        v37 = **(a7 + 2);
        v56 = *a7;
        v57 = v37;
        if (v56)
        {
          goto LABEL_27;
        }
      }
    }

    v39 = *re::foundationSerializationLogObjects(v36);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = v24;
      _os_log_error_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_ERROR, "Skipping unknown polymorphic type. Type name = %s", buf, 0xCu);
    }

    if ((a9 & 1) == 0 && *a4)
    {
      re::TypeInfo::releaseInstance(a6, *a4, *(a1 + 48), *(a1 + 264));
      *a4 = 0;
    }

    if ((*(a1 + 64) & 1) == 0)
    {
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 2);
      v40 = *(a1 + 152) + 48 * *(a1 + 136);
      ++*(v40 - 16);
    }

    v21 = 1;
  }

  return v21 & 1;
}

void re::introspect_RealityFileSpecifierType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE192CA0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE192CA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE192CA8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE192D00, "RealityFileSpecifierType", 1, 1, 1, 1);
      qword_1EE192D00 = &unk_1F5D0C658;
      qword_1EE192D40 = &re::introspect_RealityFileSpecifierType(BOOL)::enumTable;
      dword_1EE192D10 = 9;
      __cxa_guard_release(&qword_1EE192CA8);
    }

    if (_MergedGlobals_49)
    {
      break;
    }

    _MergedGlobals_49 = 1;
    re::IntrospectionRegistry::add(&qword_1EE192D00, a2);
    v39 = 0x63FC8598F9F42358;
    v40 = "RealityFileSpecifierType";
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
      v6 = qword_1EE192D40;
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
      xmmword_1EE192D20 = v41;
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
    v28 = __cxa_guard_acquire(&qword_1EE192CA0);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "None";
      qword_1EE192CD8 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Url";
      qword_1EE192CE0 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "BundleID";
      qword_1EE192CE8 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "MemoryID";
      qword_1EE192CF0 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 8) = 4;
      *(v38 + 16) = "NameAlias";
      qword_1EE192CF8 = v38;
      __cxa_guard_release(&qword_1EE192CA0);
    }
  }
}

void *re::allocInfo_RealityFileDescriptor(re *this)
{
  if ((atomic_load_explicit(&qword_1EE192CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE192CB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192D48, "RealityFileDescriptor");
    __cxa_guard_release(&qword_1EE192CB0);
  }

  return &unk_1EE192D48;
}

void re::initInfo_RealityFileDescriptor(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x6D3EFC1FD26478B6;
  v18[1] = "RealityFileDescriptor";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE192CB8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE192CB8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_RealityFileSpecifierType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "realityFileSpecifierType";
      *(v8 + 16) = &qword_1EE192D00;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE192CC0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::DynamicString>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "realityFileSpecifier";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE192CC8 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::DynamicString>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "realityFileSpecifier2";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE192CD0 = v16;
      __cxa_guard_release(&qword_1EE192CB8);
    }
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE192CC0;
  *(this + 9) = re::internal::defaultConstruct<re::RealityFileDescriptor>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RealityFileDescriptor>;
  *(this + 13) = re::internal::defaultConstructV2<re::RealityFileDescriptor>;
  *(this + 14) = re::internal::defaultDestructV2<re::RealityFileDescriptor>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void *re::internal::defaultConstruct<re::RealityFileDescriptor>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  v4 = (a3 + 8);
  v5 = re::DynamicString::setCapacity(v4, 0);
  *(a3 + 40) = 0u;
  v6 = a3 + 40;
  *(v6 + 16) = 0u;

  return re::DynamicString::setCapacity(v6, 0);
}

double re::internal::defaultDestruct<re::RealityFileDescriptor>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 40));

  return re::DynamicString::deinit((a3 + 8));
}

void *re::internal::defaultConstructV2<re::RealityFileDescriptor>(uint64_t a1)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v2 = (a1 + 8);
  v3 = re::DynamicString::setCapacity(v2, 0);
  *(a1 + 40) = 0u;
  v4 = a1 + 40;
  *(v4 + 16) = 0u;

  return re::DynamicString::setCapacity(v4, 0);
}

double re::internal::defaultDestructV2<re::RealityFileDescriptor>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 40));

  return re::DynamicString::deinit((a1 + 8));
}

BOOL re::RealityFileDescriptor::hasURL(unsigned __int8 *a1, os_unfair_lock_s *a2)
{
  v2 = *a1;
  if (v2 == 4)
  {
    v3 = a2;
    if (a2)
    {
      re::DynamicString::DynamicString(&v5, (a1 + 8));
      re::NamedFileRegistry::tryGetFilePathFor(v3, &v5, v7);
      v3 = v7[0];
      if (v7[0] == 1 && v8)
      {
        if (BYTE8(v8))
        {
          (*(*v8 + 40))();
        }

        v9 = 0u;
        v8 = 0u;
      }

      if (v5 && (v6 & 1) != 0)
      {
        (*(*v5 + 40))();
      }
    }
  }

  else
  {
    return v2 == 2 || v2 == 1;
  }

  return v3;
}

void re::RealityFileDescriptor::getURL(unsigned __int8 *a1@<X0>, os_unfair_lock_s *a2@<X1>, os_unfair_lock_s *a3@<X2>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  if (v6 <= 1)
  {
    if (*a1)
    {
      re::DynamicString::DynamicString(&v44, (a1 + 8));
      *a4 = 1;
      v11 = *&v44.st_rdev;
      *(a4 + 8) = *&v44.st_dev;
      *(a4 + 32) = v11;
      *(a4 + 16) = *&v44.st_ino;
      return;
    }

    v7 = "kNone is an invalid RealityFileSpecifierType.";
    goto LABEL_41;
  }

  if (v6 == 2)
  {
    if (a1[16])
    {
      v9 = *(a1 + 3);
    }

    else
    {
      v9 = (a1 + 17);
    }

    if (a1[48])
    {
      v12 = *(a1 + 7);
      if (a3)
      {
LABEL_20:
        re::BundleFilePathRegistry::findWithBundleID(a3, v42, &v44);
        v13 = *&v44.st_dev;
        v43 = *&v44.st_dev;
        *&v44.st_dev = 0;

        if (*&v42[0])
        {
          if (BYTE8(v42[0]))
          {
            (*(**&v42[0] + 40))();
          }

          memset(v42, 0, sizeof(v42));
        }

        if (v13)
        {
LABEL_25:
          re::Bundle::findFile(&v43, v12, v40);
          if (v40[8])
          {
            v14 = *&v40[16];
          }

          else
          {
            v14 = &v40[9];
          }

          if (stat(v14, &v44))
          {
            re::DynamicString::format("Could not find a reality file named %s in bundle with ID %s.", &v44, v12, v9);
            v15 = *&v44.st_dev;
            v16 = *&v44.st_uid;
            v17 = *&v44.st_rdev;
            *a4 = 0;
            *(a4 + 8) = v15;
            *(a4 + 24) = v16;
            *(a4 + 32) = v17;
          }

          else
          {
            if (v40[8])
            {
              v28 = *&v40[16];
            }

            else
            {
              v28 = &v40[9];
            }

            re::fileURLWithPath(v28, &v44);
            if (v44.st_ino)
            {
              v29 = v44.st_ino >> 1;
            }

            else
            {
              v29 = LOBYTE(v44.st_ino) >> 1;
            }

            if (v29)
            {
              re::DynamicString::DynamicString(v38, &v44);
              *a4 = 1;
              *(a4 + 8) = *v38;
              *(a4 + 32) = v39;
              *(a4 + 16) = *&v38[8];
            }

            else
            {
              if (v40[8])
              {
                v33 = *&v40[16];
              }

              else
              {
                v33 = &v40[9];
              }

              re::DynamicString::format("Failed to create a file URL from path %s.", v38, v33);
              v34 = *v38;
              v35 = *&v38[16];
              v36 = v39;
              *a4 = 0;
              *(a4 + 8) = v34;
              *(a4 + 24) = v35;
              *(a4 + 32) = v36;
            }

            if (*&v44.st_dev && (v44.st_ino & 1) != 0)
            {
              (*(**&v44.st_dev + 40))();
            }
          }

          if (*v40 && (v40[8] & 1) != 0)
          {
            (*(**v40 + 40))();
          }

          v18 = v43;
          goto LABEL_39;
        }

LABEL_38:
        re::DynamicString::format("Failed to find bundle with bundle ID %s.", &v44, v9);
        v18 = 0;
        v21 = *&v44.st_dev;
        v22 = *&v44.st_uid;
        v23 = *&v44.st_rdev;
        *a4 = 0;
        *(a4 + 8) = v21;
        *(a4 + 24) = v22;
        *(a4 + 32) = v23;
LABEL_39:

        return;
      }
    }

    else
    {
      v12 = (a1 + 49);
      if (a3)
      {
        goto LABEL_20;
      }
    }

    v19 = *re::assetsLogObjects(a1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v44.st_dev = 136315138;
      *&v44.st_mode = v9;
      _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "BundleFilePathRegistry not used to get URL, using fallback for %s", &v44, 0xCu);
    }

    re::Bundle::findWithBundleID(v9, &v44);
    v20 = *&v44.st_dev;
    v43 = *&v44.st_dev;
    *&v44.st_dev = 0;

    if (v20)
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

  if (v6 == 3)
  {
    v7 = "This RealityFileDescriptor cannot produce a file URL.";
LABEL_41:
    v24 = *&v44.st_dev;
    v25 = *&v44.st_uid;
    v26 = *&v44.st_rdev;
    *a4 = 0;
    *(a4 + 8) = v24;
    *(a4 + 24) = v25;
    *(a4 + 32) = v26;
    return;
  }

  if (!a2)
  {
    v7 = "This RealityFileDescriptor requires a valid NamedFileRegistry to get a file URL.";
    goto LABEL_41;
  }

  re::DynamicString::DynamicString(v37, (a1 + 8));
  re::NamedFileRegistry::tryGetFilePathFor(a2, v37, &v44);
  if (*&v37[0])
  {
    if (BYTE8(v37[0]))
    {
      (*(**&v37[0] + 40))();
    }

    memset(v37, 0, sizeof(v37));
  }

  if (v44.st_dev)
  {
    re::DynamicString::DynamicString(v40, &v44.st_ino);
    *a4 = 1;
    *(a4 + 8) = *v40;
    *(a4 + 32) = v41;
    *(a4 + 16) = *&v40[8];
  }

  else
  {
    if (a1[16])
    {
      v27 = *(a1 + 3);
    }

    else
    {
      v27 = a1 + 17;
    }

    re::DynamicString::format("No file registered for alias '%s'", v40, v27);
    v30 = *v40;
    v31 = *&v40[16];
    v32 = v41;
    *a4 = 0;
    *(a4 + 8) = v30;
    *(a4 + 24) = v31;
    *(a4 + 32) = v32;
  }

  if (LOBYTE(v44.st_dev) == 1 && v44.st_ino && (v44.st_uid & 1) != 0)
  {
    (*(*v44.st_ino + 40))();
  }
}

uint64_t re::RealityFileDescriptor::getMemoryFileID@<X0>(re::RealityFileDescriptor *this@<X0>, uint64_t a2@<X8>)
{
  if (*this <= 1u)
  {
    if (!*this)
    {
      v5 = "kNone is an invalid RealityFileSpecifierType.";
LABEL_8:
LABEL_9:
      v7 = v13;
      v8 = v14;
      v9 = v15;
      *a2 = 0;
      *(a2 + 8) = v7;
      *(a2 + 24) = v8;
      *(a2 + 32) = v9;
      return result;
    }

LABEL_7:
    v5 = "This RealityFileDescriptor cannot produce a MemoryFileID.";
    goto LABEL_8;
  }

  if (*this != 3)
  {
    goto LABEL_7;
  }

  v12 = 0;
  if (*(this + 16))
  {
    v4 = *(this + 3);
  }

  else
  {
    v4 = this + 17;
  }

  result = sscanf(v4, "%llu", &v12);
  if (result != 1)
  {
    if (*(this + 16))
    {
      v11 = *(this + 3);
    }

    else
    {
      v11 = this + 17;
    }

    result = re::DynamicString::format("Failed to parse MemoryFileID from string: %s", &v13, v11);
    goto LABEL_9;
  }

  v10 = v12;
  *a2 = 1;
  *(a2 + 8) = v10;
  return result;
}

void *re::RealityFileDescriptor::makeWithURL@<X0>(re::RealityFileDescriptor *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  v4 = re::DynamicString::DynamicString((a2 + 8), this);
  *(a2 + 40) = 0u;
  v5 = a2 + 40;
  *(v5 + 16) = 0u;

  return re::DynamicString::setCapacity(v5, 0);
}

void *re::RealityFileDescriptor::makeWithMemoryFileID@<X0>(re::RealityFileDescriptor *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 3;
  v3 = re::DynamicString::format("%llu", (a2 + 8), this);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;

  return re::DynamicString::setCapacity((a2 + 40), 0);
}

void *re::RealityFileDescriptor::makeWithNameAlias@<X0>(const re::DynamicString *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 4;
  v3 = re::DynamicString::DynamicString((a2 + 8), a1);
  *(a2 + 40) = 0u;
  v4 = a2 + 40;
  *(v4 + 16) = 0u;

  return re::DynamicString::setCapacity(v4, 0);
}

double re::RealityFileDescriptor::transform@<D0>(re::RealityFileDescriptor *this@<X0>, const re::SourceLoadDescriptorTransform *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *this;
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      if (re::DynamicString::operator==(this + 8, a2 + 24))
      {
        v7 = re::DynamicString::DynamicString(&v9, (a2 + 56));
        memset(v12, 0, sizeof(v12));
        re::DynamicString::setCapacity(v12, 0);
        *a3 = 1;
        *(a3 + 8) = 1;
        *(a3 + 16) = v9;
        *(a3 + 24) = v10;
        v8 = *&v12[0];
        *(a3 + 40) = v11;
        *(a3 + 48) = v8;
        *(a3 + 72) = *(&v12[1] + 1);
        result = *(v12 + 1);
        *(a3 + 56) = *(v12 + 8);
        return result;
      }
    }

    else if (v4 != 2)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "transform", 183);
      _os_crash();
      __break(1u);
    }
  }

  *a3 = 0;
  return result;
}

void *zip_write_file_header(uint64_t a1, uint64_t a2, char a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  (*(*a1 + 8))(**a1, *(a1 + 32) + 30, 0);
  v7 = *(a1 + 31);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v7 = *(a1 + 16);
    if (v7 >= 0x10000)
    {
      return 0;
    }

    v8 = *(a1 + 8);
  }

  else
  {
    v8 = a1 + 8;
  }

  v9 = (v6[3])(*v6, v8, v7);
  v6[14] += v9;
  if (v9 != v7)
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    v10 = 0;
    if ((a3 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  *v26 = *(a1 + 40);
  if (!write_extra_field(v6, 1, v26, 0x10uLL))
  {
    return 0;
  }

  v10 = 20;
  if ((a3 & 2) != 0)
  {
LABEL_11:
    if (!write_extra_field(v6, 65534, a1 + 60, 0x20uLL))
    {
      return 0;
    }

    v10 += 36;
  }

LABEL_13:
  v11 = *(a1 + 32);
  v12 = v7 + 30;
  v13 = v10 + v11 + v7 + 30;
  if (!(v13 % a2))
  {
    goto LABEL_22;
  }

  v14 = (v13 + a2 + 3) & -a2;
  if (((v13 + a2 - 1) & -a2) >= v13 + 4)
  {
    v14 = (v13 + a2 - 1) & -a2;
  }

  v15 = v14 - v13;
  v16 = v14 - v13 - 4;
  if (v14 - v13 != 4)
  {
    result = malloc_type_malloc(v14 - v13 - 4, 0x100004077774924uLL);
    if (!result)
    {
      return result;
    }

    v18 = result;
    bzero(result, v16);
    v19 = write_extra_field(v6, 0xFFFF, v18, v16);
    free(v18);
    if (!v19)
    {
      return 0;
    }

    goto LABEL_21;
  }

  *v26 = 0xFFFF;
  v20 = (v6[3])(*v6, v26, 4);
  v6[14] += v20;
  if (v20 != 4)
  {
    return 0;
  }

LABEL_21:
  v10 += v15;
  v11 = *(a1 + 32);
LABEL_22:
  *v26 = 67324752;
  if (a3)
  {
    v21 = 45;
  }

  else
  {
    v21 = 20;
  }

  *&v26[4] = v21;
  *&v26[8] = *(a1 + 92);
  *&v26[10] = *(a1 + 94);
  *&v26[14] = *(a1 + 56);
  v28 = v7;
  v29 = v10;
  v22 = *(a1 + 40);
  v23.i64[0] = 0xFFFFFFFFLL;
  v23.i64[1] = 0xFFFFFFFFLL;
  v24 = vcgtq_u64(v23, v22);
  v27 = vrev64_s32(vmovn_s64(vornq_s8(vandq_s8(v22, v24), v24)));
  (v6[1])(*v6, v11, 0);
  v25 = (v6[3])(*v6, v26, 30);
  v6[14] += v25;
  if (v25 != 30)
  {
    return 0;
  }

  (v6[1])(*v6, *(a1 + 32) + v10 + v12, 0);
  if (v10 + v7 >= 0x10000)
  {
    return 0;
  }

  else
  {
    return (v10 + v12);
  }
}

BOOL write_extra_field(void *a1, __int16 a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 16)
  {
    return 0;
  }

  v13 = v4;
  v14 = v5;
  v12[0] = a2;
  v12[1] = a4;
  v10 = (a1[3])(*a1, v12, 4);
  a1[14] += v10;
  result = 0;
  if (v10 == 4)
  {
    if (!a4)
    {
      return 1;
    }

    v11 = (a1[3])(*a1, a3, a4);
    a1[14] += v11;
    if (v11 == a4)
    {
      return 1;
    }
  }

  return result;
}

void ___ZN2re33assetsHighFrequencyLoggingEnabledEv_block_invoke(uint64_t a1, const char *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("enableAssetsHFLogs", a2, v5);
  if (LOBYTE(v5[0]))
  {
    v3 = BYTE1(v5[0]);
  }

  else
  {
    v3 = 0;
  }

  re::assetsLogObjects(v2);
  v4 = re::assetsLogObjects(void)::logObjects;
  if (os_log_type_enabled(re::assetsLogObjects(void)::logObjects, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "enableAssetsHFLogs=%d.", v5, 8u);
  }

  re::assetsHighFrequencyLoggingEnabled(void)::shouldLog = v3;
}

uint64_t *re::assetsLogObjects(re *this)
{
  {
    re::assetsLogObjects(void)::logObjects = os_log_create("com.apple.re", "Assets");
  }

  return &re::assetsLogObjects(void)::logObjects;
}

void *re::allocInfo_NetworkSendBlockingAssetLoadRequestService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192DE0, "NetworkSendBlockingAssetLoadRequestService");
    __cxa_guard_release(&_MergedGlobals_50);
  }

  return &unk_1EE192DE0;
}

void re::initInfo_NetworkSendBlockingAssetLoadRequestService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x1AFAAC597CC96262;
  v6[1] = "NetworkSendBlockingAssetLoadRequestService";
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
  *(this + 8) = &re::initInfo_NetworkSendBlockingAssetLoadRequestService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

re::AssetHandle *re::AssetHandle::AssetHandle(re::AssetHandle *this, re::internal::AssetEntry *a2)
{
  *this = 0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  re::internal::AssetEntry::makeAssetReference(a2, &v5);
  v3 = *this;
  *this = v5;
  if (v3)
  {
  }

  return this;
}

uint64_t *re::AssetHandle::AssetHandle(uint64_t *a1, re::internal::AssetEntry *this)
{
  *a1 = 0;
  a1[1] = this;
  a1[2] = 0;
  if (this)
  {
    re::internal::AssetEntry::makeAssetReference(this, &v5);
    v3 = *a1;
    *a1 = v5;
    if (v3)
    {
    }
  }

  return a1;
}

void re::AssetHandle::~AssetHandle(re::AssetHandle *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *v2;
    v4 = re::DynamicString::deinit(*(this + 2));
    (*(*v3 + 40))(v3, v2, v4);
    *(this + 2) = 0;
  }

  *(this + 1) = 0;
  if (*this)
  {

    *this = 0;
  }
}

uint64_t re::AssetHandle::operator=(uint64_t a1, uint64_t *a2)
{
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a1, *a2);
  *(a1 + 8) = a2[1];
  v4 = a2[2];
  if (v4)
  {
    if (*(v4 + 8))
    {
      v5 = *(v4 + 16);
    }

    else
    {
      v5 = (v4 + 9);
    }

    re::AssetHandle::setSerializationString(a1, v5, *v4);
  }

  else
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = *v6;
      v8 = re::DynamicString::deinit(*(a1 + 16));
      (*(*v7 + 40))(v7, v6, v8);
      *(a1 + 16) = 0;
    }
  }

  return a1;
}

re::DynamicString *re::AssetHandle::setSerializationString(re::DynamicString *this, re::AssetPath *a2, re::Allocator *a3)
{
  v3 = this;
  v4 = *(this + 2);
  if (*a2)
  {
    if (!v4)
    {
      v7 = (*(*a3 + 32))(a3, 32, 8);
      v7[2] = 0;
      v7[3] = 0;
      *v7 = a3;
      v7[1] = 0;
      re::DynamicString::setCapacity(v7, 0);
      *(v3 + 2) = v7;
    }

    v11[0] = re::AssetPath::fixLegacyPath(a2, a2);
    v11[1] = v8;
    return re::DynamicString::operator=(*(v3 + 2), v11);
  }

  else if (v4)
  {
    v9 = *v4;
    v10 = re::DynamicString::deinit(*(this + 2));
    this = (*(*v9 + 40))(v9, v4, v10);
    *(v3 + 2) = 0;
  }

  return this;
}

re::AssetHandle *re::AssetHandle::AssetHandle(re::AssetHandle *this, const re::AssetHandle *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(this, *a2);
  *(this + 1) = *(a2 + 1);
  v4 = *(a2 + 2);
  if (v4)
  {
    if (*(v4 + 8))
    {
      v5 = *(v4 + 16);
    }

    else
    {
      v5 = (v4 + 9);
    }

    re::AssetHandle::setSerializationString(this, v5, *v4);
  }

  else
  {
    v6 = *(this + 2);
    if (v6)
    {
      v7 = *v6;
      v8 = re::DynamicString::deinit(*(this + 2));
      (*(*v7 + 40))(v7, v6, v8);
      *(this + 2) = 0;
    }
  }

  return this;
}

re::AssetManager *re::AssetHandle::isAnyDependencyMutated@<X0>(re::AssetManager *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(this + 1);
  if (v3 && (this = *(v3 + 24)) != 0)
  {
    re::AssetManager::findDependencies(this, v3, v7);
    if (v8)
    {
      v4 = v9 + 8;
      v5 = 24 * v8;
      while (*(*v4 + 256) != 1)
      {
        v4 += 24;
        v5 -= 24;
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v6 = 1;
    }

    else
    {
LABEL_7:
      v6 = 0;
    }

    *a2 = 1;
    a2[1] = v6;
    return re::DynamicArray<re::AssetHandle>::deinit(v7);
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

void re::AssetHandle::loadNow(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = *re::assetsLogObjects(0);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(v29) = 0;
    v8 = "load failed: can't load empty asset handle.";
    v9 = v7;
    v10 = 2;
    goto LABEL_25;
  }

  if (!*(a1 + 24))
  {
    v11 = *re::assetsLogObjects(a1);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    if (*(a1 + 168))
    {
      v12 = *(a1 + 176);
    }

    else
    {
      v12 = a1 + 169;
    }

    v29 = 136315138;
    v30 = v12;
    v8 = "load failed: asset isn't in an asset manager '%s'";
    v9 = v11;
    v10 = 12;
LABEL_25:
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, v8, &v29, v10);
    return;
  }

  v3 = atomic_load((a1 + 896));
  if (v3 == 2)
  {
    return;
  }

  if (v3 == 3)
  {
    os_unfair_lock_lock((a1 + 512));
    v5 = *re::assetsLogObjects(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 168))
      {
        v6 = *(a1 + 176);
      }

      else
      {
        v6 = a1 + 169;
      }

      v22 = *(a1 + 920);
      v23 = *(v22 + 224);
      v24 = *(v22 + 232);
      v25 = (v22 + 225);
      if (v23)
      {
        v25 = v24;
      }

      v29 = 136315394;
      v30 = v6;
      v31 = 2080;
      v32 = v25;
      v26 = "load failed: asset loading already has failed '%s' (%s)";
LABEL_36:
      v27 = v5;
      v28 = 22;
LABEL_39:
      _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, v26, &v29, v28);
    }

LABEL_16:
    os_unfair_lock_unlock((a1 + 512));
    return;
  }

  os_unfair_lock_lock((a1 + 512));
  if ((*(a1 + 545) & 1) != 0 || *(a1 + 120) == 4)
  {
    v15 = *re::assetsLogObjects(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 168))
      {
        v20 = *(a1 + 176);
      }

      else
      {
        v20 = a1 + 169;
      }

      v29 = 136315138;
      v30 = v20;
      v26 = "loadNow doesn't work on network loaded assets. Use AssetLoadRequest instead. For '%s'";
      v27 = v15;
      v28 = 12;
      goto LABEL_39;
    }

    goto LABEL_16;
  }

  os_unfair_lock_unlock((a1 + 512));
  re::AssetManager::loadNow(*(a1 + 24), a1, a2);
  v16 = atomic_load((a1 + 896));
  if (v16 != 2)
  {
    os_unfair_lock_lock((a1 + 512));
    v18 = *(a1 + 920);
    if (*(v18 + 208) == 1)
    {
      if (*(v18 + 224))
      {
        v19 = *(v18 + 232);
      }

      else
      {
        v19 = (v18 + 225);
      }
    }

    else
    {
      v19 = "unknown reason";
    }

    v5 = *re::assetsLogObjects(v17);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    if (*(a1 + 168))
    {
      v21 = *(a1 + 176);
    }

    else
    {
      v21 = a1 + 169;
    }

    v29 = 136315394;
    v30 = v21;
    v31 = 2080;
    v32 = v19;
    v26 = "load failed: couldn't load '%s' (%s)";
    goto LABEL_36;
  }
}

void re::AssetHandle::loadAsync(re::AssetHandle *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      os_unfair_lock_lock((v1 + 512));
      re::AssetManager::loadAssetAsync_entryStateLocked(v2, v1, 0);

      os_unfair_lock_unlock((v1 + 512));
    }

    else
    {
      v4 = *re::assetsLogObjects(this);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(this + 1);
        if (*(v5 + 168))
        {
          v6 = *(v5 + 176);
        }

        else
        {
          v6 = v5 + 169;
        }

        v7 = 136315138;
        v8 = v6;
        _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can't load asset that isn't in an asset manager '%s'", &v7, 0xCu);
      }
    }
  }
}

void re::AssetHandle::internalForceUnloadAsync(re::AssetHandle *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(this + 1);
  if (v1)
  {
    v3 = *(v1 + 24);
    if (v3)
    {

      re::AssetManager::unloadAssetAsync(v3, v1, 1);
    }

    else
    {
      v4 = *re::assetsLogObjects(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(this + 1);
        if (*(v5 + 168))
        {
          v6 = *(v5 + 176);
        }

        else
        {
          v6 = v5 + 169;
        }

        v7 = 136315138;
        v8 = v6;
        _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can't unload asset that isn't in an asset manager '%s'", &v7, 0xCu);
      }
    }
  }
}

uint64_t re::AssetHandle::isLoadedOnResourceSharingClients(re::AssetHandle *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 2432));
  re::DynamicOverflowArray<unsigned long long,1ul>::DynamicOverflowArray(&v14, (v3 + 2440));
  os_unfair_lock_unlock((v3 + 2432));
  v4 = *(this + 1);
  os_unfair_lock_lock(v4 + 128);
  v5 = v17;
  if ((v16 & 1) == 0)
  {
    v5 = v17[1];
  }

  if (v15)
  {
    v6 = &v5[v15];
    v7 = *(this + 1);
    v8 = *(v7 + 656);
    while (1)
    {
      v9 = v7 + 672;
      if ((*(v7 + 664) & 1) == 0)
      {
        v9 = *(v7 + 680);
      }

      if (!v8)
      {
        break;
      }

      v10 = (v9 + 8);
      v11 = 32 * v8;
      while (*(v10 - 1) != *v5)
      {
        v10 += 8;
        v11 -= 32;
        if (!v11)
        {
          goto LABEL_16;
        }
      }

      if (*v10 != 2)
      {
        break;
      }

      if (++v5 == v6)
      {
        goto LABEL_15;
      }
    }

LABEL_16:
    v12 = 0;
  }

  else
  {
LABEL_15:
    v12 = 1;
  }

  os_unfair_lock_unlock(v4 + 128);
  if (v14 && (v16 & 1) == 0)
  {
    (*(*v14 + 40))();
  }

  return v12;
}

void re::AssetHandle::loadFailedErrorCode(re::AssetHandle *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 1);
  if (v3 && (v4 = atomic_load((v3 + 896)), v4 == 3))
  {
    v6 = *(this + 1);
    os_unfair_lock_lock(v6 + 128);
    v7 = *(*(this + 1) + 920);
    v8 = *(v7 + 196);
    *a2 = v8;
    if (v8 == 1)
    {
      *(a2 + 4) = *(v7 + 200);
    }

    os_unfair_lock_unlock(v6 + 128);
  }

  else
  {
    *a2 = 0;
  }
}

void re::AssetHandle::loadFailedMessage(re::AssetHandle *this@<X0>, re::DynamicString *a2@<X8>)
{
  v3 = *(this + 1);
  if (v3 && (v4 = atomic_load((v3 + 896)), v4 == 3))
  {
    v6 = *(this + 1);
    os_unfair_lock_lock(v6 + 128);
    v7 = *(*(this + 1) + 920);
    if (*(v7 + 208))
    {
      v9 = (v7 + 216);
    }

    else
    {
      v9 = &v10;
    }

    re::DynamicString::DynamicString(a2, v9);
    if (v10)
    {
      if (v11)
      {
        (*(*v10 + 40))();
      }
    }

    os_unfair_lock_unlock(v6 + 128);
  }

  else
  {
  }
}

void *re::AssetHandle::legacy_assetPath(re::AssetHandle *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return (v1 + 32);
  }

  {
    byte_1EE1C7B30 = 0;
    *algn_1EE1C7B28 = "assetPathNull allocator";
  }

  {
  }
}

re::AssetHandle *re::AssetHandle::getLegacyAppPath@<X0>(re::AssetHandle *this@<X0>, _BYTE *a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  if (!v3 || (v4 = v3[3]) == 0)
  {
LABEL_6:
    *a2 = 0;
    return this;
  }

  v5 = this;
  v14 = v3[3];
  this = re::AssetHandle::assetInfo(this);
  v6 = *(this + 22);
  if (v6 != 1)
  {
    if (v6 == 8)
    {
      LOBYTE(v10) = 0;
      *a2 = 0;
      v16 = re::globalAllocators(this)[2];
      v7 = (*(*v16 + 32))(v16, 32, 0);
      *v7 = &unk_1F5CBB4D8;
      v7[1] = &v10;
      v7[2] = &v14;
      v7[3] = a2;
      v17 = v7;
      re::AssetManager::readLoadDescriptorsForAsset(v4, v5, v15);
      return re::FunctionBase<24ul,void ()(re::DynamicArray<re::AssetLoadDescriptor> const&)>::destroyCallable(v15);
    }

    goto LABEL_6;
  }

  v8 = re::AssetHandle::legacy_assetPath(v5);
  v9 = *(v8 + 1);
  v12 = 0;
  v13 = 0;
  v10 = v9;
  v11 = 0;
  re::DynamicString::setCapacity(&v10, 0);
  re::AssetPath::fullAssetPath(v8, &v10);
  if (re::AssetPath::pathIsAppBased(&v10))
  {
    *a2 = 1;
    re::DynamicString::DynamicString((a2 + 8), &v10);
  }

  else
  {
    *a2 = 0;
  }

  this = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return this;
}

void *re::AssetHandle::assetInfo(re::AssetHandle *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return (v1 + 32);
  }

  {
    byte_1EE1C7A48 = 0;
    unk_1EE1C7A40 = "assetInformationNull allocator";
  }

  {
  }
}

void re::AssetHandle::getDescription(re::AssetHandle *this@<X0>, char a2@<W1>, re::DynamicString *a3@<X8>)
{
  v5 = *(this + 1);
  if (v5)
  {
    v6 = *(v5 + 3);

    re::AssetManager::getDescription(v6, v5, a2, a3);
  }

  else
  {
  }
}

uint64_t re::AssetPathMapping::lookupString(re::AssetPathMapping *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  if (!*(a3 + 1))
  {
    return 0;
  }

  re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(this, a3, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  re::DynamicString::operator=(a2, (*(this + 2) + 72 * v7 + 32));
  return 1;
}

uint64_t re::AssetHandle::introspectionSerialize(uint64_t a1, uint64_t a2, re::DynamicString *a3, re::AssetSerializationScheme *a4)
{
  if (a1)
  {
    v6 = *(**a1 + 16);

    return v6();
  }

  else
  {
    v14 = v4;
    v15 = v5;
    v9[0] = 0;
    v8 = re::AssetSerializationScheme::commonCodingKey(a4, a3, 0xF, v9);
    if (v9[0] == 1)
    {
      if (v12)
      {
        if (BYTE8(v12))
        {
          (*(*v12 + 40))();
        }

        v12 = 0u;
        v13 = 0u;
      }

      if (v10 && (v11 & 1) != 0)
      {
        (*(*v10 + 40))();
      }
    }

    return v8;
  }
}

uint64_t re::AssetHandle::introspectionDeserialize(re::Allocator *a1, void *a2, int a3, re::DynamicString *a4, char *__s1)
{
  if (*__s1)
  {
    v6 = __s1;
    if (!strncmp(__s1, "framework:", 0xAuLL))
    {
      std::string::basic_string[abi:nn200100]<0>(&__str, v6);
      std::string::basic_string[abi:nn200100]<0>(&__p, "/");
      if (*(v30 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v38, *v30, *(v30 + 1));
      }

      else
      {
        v10 = *v30;
        v38.__r_.__value_.__r.__words[2] = *(v30 + 2);
        *&v38.__r_.__value_.__l.__data_ = v10;
      }

      v37.__r_.__value_.__r.__words[0] = &v30;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v37);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, ":");
      if (*(v30 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v37, *(v30 + 3), *(v30 + 4));
      }

      else
      {
        v37 = *(v30 + 1);
      }

      v40 = &v30;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v40);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v12 = SHIBYTE(v37.__r_.__value_.__r.__words[2]);
      v13 = v37.__r_.__value_.__r.__words[0];
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v37;
      }

      else
      {
        v14 = v37.__r_.__value_.__r.__words[0];
      }

      if (re::isEngineFrameworkIdentifier(v14, v11))
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v38;
        }

        else
        {
          v17 = v38.__r_.__value_.__r.__words[0];
        }

        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = v38.__r_.__value_.__l.__size_;
        }

        if (v18)
        {
          v19 = p_str + size;
          if (size >= v18)
          {
            v26 = v17->__r_.__value_.__s.__data_[0];
            v27 = p_str;
            do
            {
              v28 = size - v18;
              if (v28 == -1)
              {
                break;
              }

              v29 = memchr(v27, v26, v28 + 1);
              if (!v29)
              {
                break;
              }

              v20 = v29;
              if (!memcmp(v29, v17, v18))
              {
                goto LABEL_36;
              }

              v27 = (v20 + 1);
              size = v19 - (v20 + 1);
            }

            while (size >= v18);
          }

          v20 = v19;
LABEL_36:
          if (v20 == v19)
          {
            v21 = -1;
          }

          else
          {
            v21 = v20 - p_str;
          }
        }

        else
        {
          v21 = 0;
        }

        v22 = std::string::replace(&__str, v21, v18 + 1, "engine:");
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &__str;
        }

        else
        {
          v23 = __str.__r_.__value_.__r.__words[0];
        }

        LOBYTE(v30) = 1;
        v6 = v35;
        v32[1] = v35;
        v32[2] = v36;
        v24 = v34;
        v31 = __p;
        v32[0] = v34;
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if ((v24 & 1) == 0)
        {
          v6 = v32 + 1;
        }

        if (a2)
        {
          goto LABEL_4;
        }

        goto LABEL_58;
      }

      if (v12 < 0)
      {
        operator delete(v13);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    LOBYTE(v30) = 0;
    if (a2)
    {
LABEL_4:
      v9 = (*(**a2 + 24))(*a2, a4, v6, a1);
LABEL_59:
      if (v30 == 1 && v31 && (v32[0] & 1) != 0)
      {
        (*(*v31 + 40))();
      }

      return v9;
    }

LABEL_58:
    re::AssetHandle::setSerializationString(a4, v6, a1);
    v9 = 1;
    goto LABEL_59;
  }

  if (*a4)
  {

    *a4 = 0;
  }

  *(a4 + 1) = 0;
  return 1;
}

uint64_t re::AssetHandle::hasAssetHandle(uint64_t *a1)
{
  v2 = *a1;
  v25 = 0x190DE9534BBF230;
  v26 = "AssetHandle";
  v3 = re::TypeRegistry::typeID(v2, &v25, &v23);
  if (v25)
  {
    if (v25)
    {
    }
  }

  v4 = a1[2];
  if (*a1 == v23)
  {
    v5 = *v4;
    if (*v4 == v24)
    {
      v7 = WORD1(v5) == WORD1(v24);
      v6 = (v24 ^ v5) & 0xFFFFFF00000000;
      v7 = v7 && v6 == 0;
      if (v7)
      {
        return 1;
      }
    }
  }

  v8 = *(a1 + 12);
  if (v8 == 5)
  {
    re::TypeRegistry::typeInfo(*a1, v4[10], &v25);
    re::TypeInfo::TypeInfo(v21, &v26);
    v9 = re::TypeInfo::TypeInfo(&v25, v21);
    if (re::AssetHandle::hasAssetHandle(v9))
    {
      return 1;
    }

    v8 = *(a1 + 12);
  }

  if (v8 == 6)
  {
    re::TypeRegistry::typeInfo(*a1, *(a1[2] + 88), &v25);
    re::TypeInfo::TypeInfo(v21, &v26);
    v10 = re::TypeInfo::TypeInfo(&v25, v21);
    if (re::AssetHandle::hasAssetHandle(v10))
    {
      return 1;
    }

    v8 = *(a1 + 12);
  }

  if (v8 == 8)
  {
    re::TypeMemberCollection::TypeMemberCollection(v21, *a1, a1[2]);
    v12 = v22;
    if (v22)
    {
      v13 = 0;
      while (1)
      {
        re::TypeMemberCollection::operator[](v21, v13, v20);
        re::TypeRegistry::typeInfo(v20[0], *v20[2], &v25);
        re::TypeInfo::TypeInfo(v19, &v26);
        if (re::AssetHandle::hasAssetHandle(v19))
        {
          break;
        }

        if (v12 == ++v13)
        {
          return 0;
        }
      }

      return 1;
    }

    v14 = *a1;
    v15 = *a1[2];
    v19[0] = 0x258C98EAAF29A10ALL;
    v19[1] = "CallbackSerializerAttribute";
    v16 = re::TypeRegistry::typeID(v14, v19, v20);
    if (v20[0] && (v25 = v20[1], v26 = v15, v27 = -1, (v16 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v14 + 768, &v25)) != 0))
    {
      v17 = *v16;
    }

    else
    {
      v17 = 0;
    }

    if (v19[0])
    {
      if (v19[0])
      {
      }
    }

    if (v17)
    {
      v18 = *v17;
      if (*v17)
      {
        if (*(v18 + 96) && *(v18 + 104))
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t re::AssetHandle::assetWithType(re::AssetHandle *this, const re::AssetType *a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  result = *(this + 1);
  if (!result)
  {
    return result;
  }

  v6 = *(result + 280);
  if (!v6)
  {
LABEL_5:
    v7 = *re::assetsLogObjects(result);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(this + 1);
      if (*(v8 + 168))
      {
        v9 = *(v8 + 176);
      }

      else
      {
        v9 = v8 + 169;
      }

      v11 = *a2;
      v17 = 136315394;
      v18 = v9;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "%s doesn't conform to type %s", &v17, 0x16u);
    }

    return 0;
  }

  while (v6 != a2)
  {
    v6 = *(v6 + 2);
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  if (!a3)
  {
    re::AssetHandle::loadNow(result, 0);
    goto LABEL_15;
  }

  v10 = atomic_load((result + 896));
  if (v10 != 2)
  {
    return 0;
  }

LABEL_15:
  hasAssetPointer = re::internal::AssetEntry::hasAssetPointer(*(this + 1));
  if (!hasAssetPointer)
  {
    v13 = *re::assetsLogObjects(hasAssetPointer);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(this + 1);
      if (*(v14 + 168))
      {
        v15 = *(v14 + 176);
      }

      else
      {
        v15 = v14 + 169;
      }

      v16 = *a2;
      v17 = 136315394;
      v18 = v15;
      v19 = 2080;
      v20 = v16;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Asset %s with type %s has no asset pointer.", &v17, 0x16u);
    }
  }

  return re::internal::AssetEntry::assetPointer(*(this + 1));
}

uint64_t re::AssetHandle::assetWithTypeRaw(re::internal::AssetEntry **a1, uint64_t *a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 35);
  if (!v6)
  {
LABEL_5:
    v7 = *re::assetsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[1];
      if (*(v8 + 168))
      {
        v9 = *(v8 + 22);
      }

      else
      {
        v9 = v8 + 169;
      }

      v12 = *a2;
      v15 = 136315394;
      v16 = v9;
      v17 = 2080;
      v18 = v12;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "%s doesn't conform to type %s", &v15, 0x16u);
    }

    return 0;
  }

  while (v6 != a2)
  {
    v6 = v6[2];
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  if (!*(v3 + 113))
  {
    if (a3)
    {
      os_unfair_lock_lock(v3 + 128);
      v13 = re::internal::AssetEntry::assetPointer(a1[1]);
      if (v13)
      {
LABEL_20:
        os_unfair_lock_unlock(v3 + 128);
        return v13;
      }

      v14 = *(a1[1] + 114);
      if (v14)
      {
        v13 = *(v14 + 24);
        goto LABEL_20;
      }

      os_unfair_lock_unlock(v3 + 128);
    }

    return 0;
  }

  v10 = a1[1];

  return re::internal::AssetEntry::assetPointer(v10);
}

uint64_t re::AssetHandle::getAssetLoader(re::AssetHandle *this)
{
  v1 = *(this + 1);
  v2 = *(*(v1 + 24) + 1808);
  v5 = *(v1 + 280);
  v3 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v2, &v5);
  (*(**v3 + 128))(*v3);
  return *v3;
}

uint64_t re::AssetHandle::internalRegisterAsset(re::AssetHandle *this)
{
  v2 = *(this + 1);
  v3 = *(*(v2 + 24) + 1808);
  v10 = *(v2 + 280);
  v4 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v3, &v10);
  (*(**v4 + 128))(*v4);
  v5 = *v4;
  v6 = re::internal::AssetEntry::assetPointer(*(this + 1));
  v7 = re::AssetHandle::assetInfo(this);
  v8 = *(*v5 + 96);

  return v8(v5, v6, v7);
}

uint64_t re::AssetHandle::internalUnregisterAsset(re::AssetHandle *this)
{
  v2 = *(this + 1);
  v3 = *(*(v2 + 24) + 1808);
  v10 = *(v2 + 280);
  v4 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v3, &v10);
  (*(**v4 + 128))(*v4);
  v5 = *v4;
  v6 = re::internal::AssetEntry::assetPointer(*(this + 1));
  v7 = re::AssetHandle::assetInfo(this);
  v8 = *(*v5 + 104);

  return v8(v5, v6, v7);
}

void re::AssetHandle::mutateAssetCommon(re::AssetHandle *this)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  if ((*(v2 + 257) & 1) == 0)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      re::AssetManager::deviceAssetPath(v3, this, 0, 15, &buf);
    }

    else
    {
      LOBYTE(buf) = 0;
    }

    v4 = *re::assetsLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = re::AssetHandle::assetInfo(this);
      if (v5[17])
      {
        v6 = v5[18];
      }

      else
      {
        v6 = v5 + 137;
      }

      v20 = 136315138;
      v21 = v6;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Trying to mutate, an immutable asset: %s. This asset needs to be created using mutable asset API instead.", &v20, 0xCu);
    }

    if (buf == 1 && *(&buf + 1) && (v23 & 1) != 0)
    {
      (*(**(&buf + 1) + 40))();
    }

    v2 = *(this + 1);
  }

  if ((*(v2 + 256) & 1) == 0)
  {
    v7 = [*(v2 + 904) + 8 retainCount];
    v2 = *(this + 1);
    if (v7 >= 2)
    {
      v8 = [*(v2 + 904) + 8 retainCount];
      v2 = *(this + 1);
      if (v8 >= 2 && v2 && *(v2 + 24))
      {
        os_unfair_lock_lock((v2 + 512));
        v9 = *(this + 1);
        v10 = *(*(v9 + 24) + 1808);
        *&buf = *(v9 + 280);
        v11 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v10, &buf);
        (*(**v11 + 128))(*v11);
        v12 = *v11;
        v13 = re::internal::AssetEntry::assetPointer(*(this + 1));
        v14 = re::AssetLoader::cloneAsset(v12, v13);
        if (v14)
        {
          v15 = *(this + 1);
          re::internal::SharedAssetPointer::makeSharedAssetPointer(v14, &buf);
          re::internal::AssetEntry::LoadState::setAssetPointer_locked(v15 + 896, &buf);
          if (buf)
          {
          }

          re::AssetHandle::internalRegisterAsset(this);
        }

        else
        {
          v16 = *re::assetsLogObjects(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v18 = *(this + 1);
            if (*(v18 + 168))
            {
              v19 = *(v18 + 176);
            }

            else
            {
              v19 = v18 + 169;
            }

            LODWORD(buf) = 136315138;
            *(&buf + 4) = v19;
            _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Failed to clone from shared asset '%s'", &buf, 0xCu);
          }
        }

        os_unfair_lock_unlock((v2 + 512));
        v2 = *(this + 1);
      }
    }
  }

  v17 = *(v2 + 264);
  if (v17)
  {

    *(v2 + 264) = 0;
  }
}

uint64_t re::AssetHandle::setNetworkSharingMode(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  os_unfair_lock_lock(v4 + 128);
  v6 = *(a1 + 8);
  v7 = *(v6 + 548);
  v8 = v7 == a2;
  if (v7 == a2)
  {
LABEL_5:
    os_unfair_lock_unlock(v4 + 128);
    return v8;
  }

  if (v7)
  {
    v9 = *re::assetsLogObjects(v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "setNetworkSharingMode: re-enabling network sharing is not supported.", v15, 2u);
    }

    goto LABEL_5;
  }

  *(v6 + 548) = a2;
  os_unfair_lock_unlock(v4 + 128);
  v11 = *(a1 + 8);
  v12 = *(v11 + 24);
  if (*(v12 + 1920))
  {
    v13 = *(v11 + 112);
    if (v13 == -1)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    re::NetworkActionQueue::queueSyncActionRestrictAssetShareMode(v12 + 1152, v14, a2);
  }

  return 1;
}

void re::AssetHandle::payloadDidChangeIfPossible(re::AssetHandle *this)
{
  v1 = *(this + 1);
  if ((*(v1 + 328) & 1) == 0)
  {
    if (*(re::AssetHandle::assetInfo(this) + 22) != 8)
    {
      return;
    }

    v1 = *(this + 1);
  }

  v3 = *(v1 + 24);

  re::AssetManager::assetPayloadDidChange(v3, v1);
}

BOOL re::AssetHandle::isMemoryAssetWithNetworkingSyncingEnabled(re::AssetHandle *this)
{
  v1 = *(this + 1);
  if (*(v1 + 328) != 1)
  {
    return 0;
  }

  os_unfair_lock_lock((v1 + 512));
  v2 = *(v1 + 548);
  os_unfair_lock_unlock((v1 + 512));
  return v2 == 0;
}

re::DynamicString *re::AssetHandle::serializationString@<X0>(re::AssetHandle *this@<X0>, re::DynamicString *a2@<X8>)
{
  v3 = *(this + 2);
  if (v3)
  {

    return re::DynamicString::DynamicString(a2, v3);
  }

  else
  {
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;

    return re::DynamicString::setCapacity(a2, 0);
  }
}

double re::AssetHandle::setOrClearMetadataString(re::AssetHandle *this, const char *a2, const char *a3)
{
  v6 = *(this + 1);
  v9 = 0;
  v10 = &str_67;
  os_unfair_lock_lock(v6 + 128);
  re::internal::AssetEntry::setOrClearMetadata_stateLocked(v6, &v9, a3);
  os_unfair_lock_unlock(v6 + 128);
  if (v9)
  {
    if (v9)
    {
    }
  }

  return re::internal::AssetEntry::updateMetadata(*(this + 1), 0);
}

void re::AssetHandle::composedMetadata(re::AssetHandle *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 36) = 0x7FFFFFFFLL;
  v4 = *(this + 1);
  v5 = *(*(v4 + 24) + 1920);
  if (v5 && (*(v4 + 112) + 1) >= 2)
  {
    (*(*v5 + 72))(v5);
    v4 = *(this + 1);
  }

  os_unfair_lock_lock((v4 + 512));
  v6 = *(v4 + 584);
  if (v6)
  {
    v7 = 0;
    v8 = *(v4 + 568);
    while (1)
    {
      v9 = *v8;
      v8 += 22;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(v4 + 584);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 != v6)
  {
    v10 = *(v4 + 568);
    do
    {
      v11 = v10 + 88 * v7;
      re::StringID::StringID(&v17, (v11 + 8));
      v13 = *(v11 + 40);
      v12 = v11 + 40;
      if (v13 == 1)
      {
        v14 = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a2, &v17, (v12 + 8));
      }

      else
      {
        v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v17.var0 >> 31) ^ (*&v17.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v17.var0 >> 31) ^ (*&v17.var0 >> 1))) >> 27));
        re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a2, &v17, v15 ^ (v15 >> 31), v18);
        v14 = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a2, v18);
      }

      if (*&v17.var0)
      {
        if (*&v17.var0)
        {
        }
      }

      if (*(v4 + 584) <= (v7 + 1))
      {
        v16 = v7 + 1;
      }

      else
      {
        v16 = *(v4 + 584);
      }

      v10 = *(v4 + 568);
      while (v16 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(v10 + 88 * v7) & 0x80000000) != 0)
        {
          goto LABEL_26;
        }
      }

      LODWORD(v7) = v16;
LABEL_26:
      ;
    }

    while (v7 != v6);
  }

  os_unfair_lock_unlock((v4 + 512));
}

__CFDictionary *re::AssetHandle::copyComposedMetadataCFDR(re::AssetHandle *this)
{
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  v2 = *(this + 1);
  v3 = *(*(v2 + 24) + 1920);
  if (v3 && (*(v2 + 112) + 1) >= 2)
  {
    (*(*v3 + 80))(v3);
    v2 = *(this + 1);
  }

  os_unfair_lock_lock((v2 + 512));
  v4 = *(v2 + 584);
  if (v4)
  {
    v5 = 0;
    v6 = *(v2 + 568);
    while (1)
    {
      v7 = *v6;
      v6 += 22;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(v2 + 584);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(v2 + 568);
    do
    {
      v9 = v8 + 88 * v5;
      if (*(v9 + 16))
      {
        v10 = *(v9 + 24);
      }

      else
      {
        v10 = (v9 + 17);
      }

      v11 = v9 + 40;
      v12 = CFStringCreateWithCString(0, v10, 0x8000100u);
      if (*v11 == 1)
      {
        if (*(v11 + 16))
        {
          v13 = *(v11 + 24);
        }

        else
        {
          v13 = (v11 + 17);
        }

        v14 = CFStringCreateWithCString(0, v13, 0x8000100u);
        if (CFDictionaryContainsKey(theDict, v12))
        {
          CFDictionaryReplaceValue(theDict, v12, v14);
        }

        else
        {
          CFDictionaryAddValue(theDict, v12, v14);
        }

        CFRelease(v14);
      }

      else
      {
        CFDictionaryRemoveValue(theDict, v12);
      }

      CFRelease(v12);
      if (*(v2 + 584) <= (v5 + 1))
      {
        v15 = v5 + 1;
      }

      else
      {
        v15 = *(v2 + 584);
      }

      v8 = *(v2 + 568);
      while (v15 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 88 * v5) & 0x80000000) != 0)
        {
          goto LABEL_32;
        }
      }

      LODWORD(v5) = v15;
LABEL_32:
      ;
    }

    while (v5 != v4);
  }

  os_unfair_lock_unlock((v2 + 512));
  return theDict;
}

void re::AssetHandle::serializableAsset(re::AssetHandle *this@<X0>, void *a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  if (!v3 || !*(v3 + 24))
  {
LABEL_12:
    *a2 = 0;
    a2[4] = 0;
    return;
  }

  v5 = atomic_load((v3 + 896));
  if (v5 != 2)
  {
    v12 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(this + 1);
      if (*(v13 + 168))
      {
        v14 = *(v13 + 176);
      }

      else
      {
        v14 = v13 + 169;
      }

      *v15 = 136315138;
      *&v15[4] = v14;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Cannot create serializableAsset for %s, as the asset is not loaded.", v15, 0xCu);
    }

    goto LABEL_12;
  }

  v6 = *(this + 1);
  v7 = *(*(v6 + 24) + 1808);
  *v15 = *(v6 + 280);
  v8 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v7, v15);
  (*(**v8 + 128))(*v8);
  v9 = *v8;
  v10 = re::internal::AssetEntry::assetPointer(*(this + 1));
  v11 = *(*v9 + 272);

  v11(v9, v10);
}

char *re::AssetHandle::getOrBuildSerializationString@<X0>(re::AssetHandle *this@<X0>, re::DynamicString *a2@<X8>)
{
  v3 = *(this + 2);
  if (v3)
  {

    return re::DynamicString::DynamicString(a2, v3);
  }

  else
  {
    v5 = re::AssetHandle::legacy_assetPath(this);
    v6 = *(v5 + 1);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *a2 = v6;
    *(a2 + 1) = 0;
    re::DynamicString::setCapacity(a2, 0);

    return re::AssetPath::fullAssetPath(v5, a2);
  }
}

uint64_t re::AssetHandle::setMemoryAttributionID(re *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1);
  if (!v2)
  {
    v12 = *re::assetsLogObjects(a1);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *v16 = 0;
    v9 = "setMemoryAttributionID failed: handle has no AssetEntry";
    v10 = v12;
    v11 = 2;
    goto LABEL_12;
  }

  if (*(v2 + 336))
  {
    if (!*a2 || *(a2 + 8) != *(v2 + 344))
    {
      v5 = *re::assetsLogObjects(a1);
      result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v7 = re::AssetHandle::assetInfo(a1);
      if (v7[17])
      {
        v8 = v7[18];
      }

      else
      {
        v8 = v7 + 137;
      }

      *v16 = 136315138;
      *&v16[4] = v8;
      v9 = "setMemoryAttributionID can only be called once on asset %s";
      v10 = v5;
      v11 = 12;
LABEL_12:
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, v9, v16, v11);
      return 0;
    }
  }

  else if (*a2)
  {
    v13 = *(*(v2 + 24) + 1808);
    *v16 = *(v2 + 280);
    v14 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v13, v16);
    (*(**v14 + 128))(*v14);
    result = (*(**v14 + 320))();
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 1);
    if (*(v15 + 336))
    {
      if (*a2)
      {
        *(v15 + 344) = *(a2 + 8);
        v15 = *(a1 + 1);
      }

      else
      {
        *(v15 + 336) = 0;
      }
    }

    else if (*a2)
    {
      *(v15 + 336) = 1;
      *(v15 + 344) = *(a2 + 8);
    }

    re::internal::AssetEntry::copyMetadataAndMemoryAttributionIDToNetworkAssetService(v15);
  }

  return 1;
}

uint64_t *re::introspect_AssetHandle(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE192E78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE192E78))
  {
    re::IntrospectionBasic::IntrospectionBasic(&qword_1EE192E98, "AssetHandle", 24, 8, 0, 0);
    qword_1EE192E98 = &unk_1F5D0C698;
    qword_1EE192ED8 = re::internal::defaultConstruct<re::AssetHandle>;
    qword_1EE192EE0 = re::AssetHandle::introspectionSerialize;
    qword_1EE192EE8 = re::AssetHandle::introspectionDeserialize;
    qword_1EE192EF8 = 0;
    unk_1EE192F00 = 0;
    qword_1EE192EF0 = re::AssetHandle::introspectionDeepCopy;
    dword_1EE192EA8 = 11;
    __cxa_guard_release(&qword_1EE192E78);
  }

  if (v2)
  {
    if (_MergedGlobals_51)
    {
      return &qword_1EE192E98;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v10);
    v3 = _MergedGlobals_51;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v10);
    if (v3)
    {
      return &qword_1EE192E98;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (_MergedGlobals_51)
    {
LABEL_11:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &qword_1EE192E98;
    }
  }

  _MergedGlobals_51 = 1;
  re::IntrospectionRegistry::add(&qword_1EE192E98, a2);
  v9[0] = 0x190DE9534BBF230;
  v9[1] = "AssetHandle";
  unk_1EE192EB8 = v10;
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

  return &qword_1EE192E98;
}

void re::internal::defaultConstruct<re::AssetHandle>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void *re::internal::defaultConstructV2<re::AssetHandle>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void *re::allocInfo_SharedAssetHandle(re *this)
{
  if ((atomic_load_explicit(&qword_1EE192E80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE192E80))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192F08, "SharedAssetHandle");
    __cxa_guard_release(&qword_1EE192E80);
  }

  return &unk_1EE192F08;
}

void re::initInfo_SharedAssetHandle(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x91C4B88E416096E6;
  v10[1] = "SharedAssetHandle";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE192E90, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE192E90);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_AssetHandle(1, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "assetHandle";
      *(v8 + 16) = &qword_1EE192E98;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0x1800000001;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE192E88 = v8;
      __cxa_guard_release(&qword_1EE192E90);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE192E88;
  *(this + 9) = re::internal::defaultConstruct<re::SharedAssetHandle>;
  *(this + 10) = re::internal::defaultDestruct<re::SharedAssetHandle>;
  *(this + 11) = re::internal::defaultRetain<re::SharedAssetHandle>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::SharedAssetHandle>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::SharedAssetHandle>;
  *(this + 14) = re::internal::defaultDestructV2<re::SharedAssetHandle>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::SharedAssetHandle>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  ArcSharedObject::ArcSharedObject(a3, 0);
  *(a3 + 24) = 0;
  *a3 = &unk_1F5CBB540;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
}

void re::internal::defaultConstructV2<re::SharedAssetHandle>(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = 0;
  *a1 = &unk_1F5CBB540;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

uint64_t re::internal::Callable<re::AssetHandle::getLegacyAppPath(void)::$_0,void ()(re::DynamicArray<re::AssetLoadDescriptor> const&)>::operator()(uint64_t result, uint64_t a2)
{
  **(result + 8) = 1;
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *(a2 + 32);
    v5 = 144 * v2;
    while (1)
    {
      v6 = (*(v4 + 8) & 1) != 0 ? *(v4 + 16) : (v4 + 9);
      result = strcmp(v6, "AssetPath");
      if (!result)
      {
        break;
      }

      v4 += 144;
      v5 -= 144;
      if (!v5)
      {
        return result;
      }
    }

    *&v8 = re::AssetManager::convertToAssetPath(**(v3 + 16), v4, v12).n128_u64[0];
    if (v12[0])
    {
      if (re::AssetPath::pathIsAppBased(&v13))
      {
        v9[0] = 1;
        re::DynamicString::DynamicString(&v10, &v13);
      }

      else
      {
        v9[0] = 0;
      }

      re::Optional<re::DynamicString>::operator=(*(v3 + 24), v9);
      if (v9[0] == 1 && v10 && (v11 & 1) != 0)
      {
        (*(*v10 + 40))();
      }

      result = v13;
      if (v13)
      {
        if (v14)
        {
          return (*(*v13 + 40))();
        }
      }
    }

    else
    {
      re::internal::assertLog(4, v7, v8, "assertion failure: '%s' (%s:line %i) Converting loadDescriptor to asset path failed.", "result.isOk()", "operator()", 455);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::internal::Callable<re::AssetHandle::getLegacyAppPath(void)::$_0,void ()(re::DynamicArray<re::AssetLoadDescriptor> const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CBB4D8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::AssetHandle::getLegacyAppPath(void)::$_0,void ()(re::DynamicArray<re::AssetLoadDescriptor> const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CBB4D8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::DynamicArray<re::AssetLoadDescriptor> const&)>::destroyCallable(uint64_t a1))(void)
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

void anonymous namespace::splitString(void *a1, std::string *__str, char *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v7 = __str;
  }

  else
  {
    v7 = __str->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v8 = a3[23];
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = a3[23];
  }

  else
  {
    v10 = *(a3 + 1);
  }

  if (v10)
  {
    if (size >= v10)
    {
      v25 = v7 + size;
      v26 = *v9;
      v27 = v7;
      do
      {
        v28 = size - v10;
        if (v28 == -1)
        {
          break;
        }

        v29 = memchr(v27, v26, v28 + 1);
        if (!v29)
        {
          break;
        }

        v30 = v29;
        if (!memcmp(v29, v9, v10))
        {
          v11 = 0;
          if (v30 != v25)
          {
            v12 = v30 - v7;
            if (v12 != -1)
            {
              goto LABEL_19;
            }
          }

          goto LABEL_15;
        }

        v27 = (v30 + 1);
        size = v25 - (v30 + 1);
      }

      while (size >= v10);
    }

    v11 = 0;
  }

  else
  {
    v12 = 0;
LABEL_19:
    v11 = 0;
    do
    {
      std::string::basic_string(&__p, __str, v11, v12 - v11, &v32);
      std::vector<std::string>::push_back[abi:nn200100](a1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v13 = a3[23];
      v14 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      if ((v14 & 0x80u) == 0)
      {
        v15 = __str;
      }

      else
      {
        v15 = __str->__r_.__value_.__r.__words[0];
      }

      if ((v14 & 0x80u) != 0)
      {
        v14 = __str->__r_.__value_.__l.__size_;
      }

      v16 = v13 >= 0 ? a3[23] : *(a3 + 1);
      v11 = v16 + v12;
      v17 = v13 >= 0 ? a3 : *a3;
      v18 = v14 - v11;
      if (v14 < v11)
      {
        break;
      }

      v12 += v16;
      if (v16)
      {
        if (v18 >= v16)
        {
          v19 = v15 + v14;
          v20 = v15 + v11;
          v21 = *v17;
          while (1)
          {
            v22 = v18 - v16;
            if (v22 == -1)
            {
              break;
            }

            v23 = memchr(v20, v21, v22 + 1);
            if (!v23)
            {
              break;
            }

            v24 = v23;
            if (!memcmp(v23, v17, v16))
            {
              if (v24 == v19)
              {
                goto LABEL_15;
              }

              v12 = v24 - v15;
              goto LABEL_44;
            }

            v20 = v24 + 1;
            v18 = v19 - (v24 + 1);
            if (v18 < v16)
            {
              goto LABEL_15;
            }
          }
        }

        break;
      }

LABEL_44:
      ;
    }

    while (v12 != -1);
  }

LABEL_15:
  std::string::basic_string(&__p, __str, v11, ~v11, &v32);
  std::vector<std::string>::push_back[abi:nn200100](a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void std::vector<std::string>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:nn200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:nn200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:nn200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

re::DynamicString *re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, const re::DynamicString *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::DynamicString const&>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::DynamicString::operator=((*(a1 + 16) + 56 * v7 + 24), a3);
}

uint64_t re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(v3 + 792);
  }

  else
  {
    v4 = 0;
  }

  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
  return re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a1, a2, v4 ^ (v5 >> 31) ^ v5, a3);
}

void re::SharedAssetHandle::~SharedAssetHandle(re::SharedAssetHandle *this)
{
  *this = &unk_1F5CBB540;
  re::AssetHandle::~AssetHandle((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CBB540;
  re::AssetHandle::~AssetHandle((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::allocInfo_NamedFileAssetLoadDescriptorParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_52, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_52))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192FC8, "NamedFileAssetLoadDescriptorParameters");
    __cxa_guard_release(&_MergedGlobals_52);
  }

  return &unk_1EE192FC8;
}

void re::initInfo_NamedFileAssetLoadDescriptorParameters(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0xD31F5603CC4AAF34;
  v11[1] = "NamedFileAssetLoadDescriptorParameters";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE192FA8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE192FA8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "fileAliasName";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE192FA0 = v9;
      __cxa_guard_release(&qword_1EE192FA8);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE192FA0;
  *(this + 9) = re::internal::defaultConstruct<re::NamedFileAssetLoadDescriptorParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::NamedFileAssetLoadDescriptorParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::NamedFileAssetLoadDescriptorParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::NamedFileAssetLoadDescriptorParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void *re::internal::defaultConstruct<re::NamedFileAssetLoadDescriptorParameters>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;

  return re::DynamicString::setCapacity(a3, 0);
}

void *re::internal::defaultConstructV2<re::NamedFileAssetLoadDescriptorParameters>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;

  return re::DynamicString::setCapacity(a1, 0);
}

_anonymous_namespace_ *re::NamedFileAssetProvider::NamedFileAssetProvider(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CBB588;
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  *(a1 + 4) = 0;
  if ((atomic_load_explicit(&qword_1EE192FC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE192FC0))
  {
    qword_1EE192FB8 = re::internal::getOrCreateInfo("NamedFileAssetLoadDescriptorParameters", re::allocInfo_NamedFileAssetLoadDescriptorParameters, re::initInfo_NamedFileAssetLoadDescriptorParameters, &unk_1EE192FB0, 0);
    __cxa_guard_release(&qword_1EE192FC0);
  }

  re::NamedFileAssetProvider::s_loadDescriptorParametersIntrospect = qword_1EE192FB8;
  *(a1 + 3) = a2;
  *(a1 + 4) = a3;
  *(a1 + 5) = a4;
  *(a1 + 6) = a5;
  return a1;
}

void re::NamedFileAssetProvider::~NamedFileAssetProvider(re::NamedFileAssetProvider *this)
{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::NamedFileAssetProvider::makeDescriptor@<X0>(_anonymous_namespace_ *a1@<X0>, re::DynamicString *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v6 = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 56) = 0;
  *(a3 + 48) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0;
  re::DynamicString::setCapacity((a3 + 112), 0);
  v12 = "NamedFileAsset";
  v13 = 14;
  re::DynamicString::operator=(a3, &v12);
  v7 = re::DynamicString::operator=((a3 + 112), a2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  re::DynamicString::setCapacity(&v12, 0);
  re::DynamicString::operator=(&v12, a1);
  re::DynamicString::DynamicString(v11, &v12);
  re::AssetLoadDescriptor::setIntrospectableData(a3, re::NamedFileAssetProvider::s_loadDescriptorParametersIntrospect, v11, 0);
  if (*&v11[0])
  {
    if (BYTE8(v11[0]))
    {
      (*(**&v11[0] + 40))();
    }

    memset(v11, 0, sizeof(v11));
  }

  result = v12;
  if (v12)
  {
    if (v13)
    {
      return (*(*v12 + 40))(v12, v14, v8, v9);
    }
  }

  return result;
}

re::DynamicString *re::NamedFileAssetProvider::load@<X0>(re::NamedFileAssetProvider *this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a2 + 8))
  {
    v9 = *(a2 + 2);
  }

  else
  {
    v9 = a2 + 9;
  }

  v10 = strcmp(v9, "NamedFileAsset");
  if (v10)
  {
    v12 = v29;
    v13 = v30;
    v14 = v31;
    *a4 = 0;
    *(a4 + 8) = v12;
    *(a4 + 24) = v13;
    *(a4 + 32) = v14;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    re::DynamicString::setCapacity(&v32, 0);
    v15 = re::AssetLoadDescriptor::getIntrospectableData<re::NamedFileAssetLoadDescriptorParameters>(a2, &v32);
    if (v15)
    {
      v16 = *(this + 3);
      re::DynamicString::DynamicString(v28, &v32);
      re::NamedFileRegistry::tryGetFilePathFor(v16, v28, &v29);
      if (*&v28[0])
      {
        if (BYTE8(v28[0]))
        {
          (*(**&v28[0] + 40))();
        }

        memset(v28, 0, sizeof(v28));
      }

      if (v29)
      {
        if (*(a2 + 120))
        {
          v17 = *(a2 + 16);
        }

        else
        {
          v17 = a2 + 121;
        }

        re::loadCompiledOrSourceFile(&v29 + 8, v17, this + 4, a3, a4);
      }

      else
      {
        if (v33)
        {
          v21 = v34;
        }

        else
        {
          v21 = &v33 + 1;
        }

        re::DynamicString::format("No file found for FileAlias '%s'.", &v25, v21);
        v22 = v25;
        v23 = v26;
        v24 = v27;
        *a4 = 0;
        *(a4 + 8) = v22;
        *(a4 + 24) = v23;
        *(a4 + 32) = v24;
      }

      if (v29 == 1 && *(&v29 + 1) && (v30 & 1) != 0)
      {
        (*(**(&v29 + 1) + 40))();
      }
    }

    else
    {
      v18 = v29;
      v19 = v30;
      v20 = v31;
      *a4 = 0;
      *(a4 + 8) = v18;
      *(a4 + 24) = v19;
      *(a4 + 32) = v20;
    }

    result = v32;
    if (v32)
    {
      if (v33)
      {
        return (*(*v32 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<re::NamedFileAssetLoadDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE192FC0, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE192FC0);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE192FB8 = re::internal::getOrCreateInfo("NamedFileAssetLoadDescriptorParameters", re::allocInfo_NamedFileAssetLoadDescriptorParameters, re::initInfo_NamedFileAssetLoadDescriptorParameters, &unk_1EE192FB0, 0);
      __cxa_guard_release(&qword_1EE192FC0);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE192FB8;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

__n128 re::NamedFileAssetProvider::resolveChild@<Q0>(re::NamedFileAssetProvider *this@<X0>, uint64_t a2@<X8>)
{
  result = v9;
  v7 = v10;
  v8 = v11;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  return result;
}

re::DynamicString *re::NamedFileAssetProvider::getDescription(re::NamedFileAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  re::DynamicString::setCapacity(&v6, 0);
  if (re::AssetLoadDescriptor::getIntrospectableData<re::NamedFileAssetLoadDescriptorParameters>(a2, &v6))
  {
    re::DynamicString::operator=(a3, &v6);
  }

  else
  {
    v10[0] = "mangled";
    v10[1] = 7;
    re::DynamicString::operator=(a3, v10);
  }

  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 40))();
    }
  }

  return result;
}

id objectDecodeError(NSString *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *MEMORY[0x1E696A250];
  v8 = *MEMORY[0x1E696A278];
  v9[0] = a1;
  v3 = MEMORY[0x1E695DF20];
  v4 = a1;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v1 errorWithDomain:v2 code:4864 userInfo:v5];

  return v6;
}

void re::SharedResourcePayload::clientObject(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this clientObject];
  *a2 = v3;
}

uint64_t re::BundleFilePathRegistry::registerBundleFilePath(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  re::DynamicString::DynamicString(v25, a2);
  re::NamedFileRegistry::tryGetFilePathFor(a1, v25, v26);
  v6 = *&v25[0];
  if (*&v25[0])
  {
    if (BYTE8(v25[0]))
    {
      v6 = (*(**&v25[0] + 40))();
    }

    memset(v25, 0, sizeof(v25));
  }

  if ((v26[0] & 1) == 0)
  {
    v18 = *re::assetsLogObjects(v6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 8))
      {
        v19 = *(a2 + 16);
      }

      else
      {
        v19 = a2 + 9;
      }

      if (*(a3 + 8))
      {
        v21 = *(a3 + 16);
      }

      else
      {
        v21 = a3 + 9;
      }

      *buf = 136315394;
      v32 = v19;
      v33 = 2080;
      v34 = v21;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "BundleId '%s' manually registered for file '%s'", buf, 0x16u);
    }

    os_unfair_lock_lock(a1);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&a1[2], a2, a3);
    os_unfair_lock_unlock(a1);
    goto LABEL_28;
  }

  if (v28)
  {
    v7 = v30;
  }

  else
  {
    v7 = v29;
  }

  v8 = a3 + 9;
  if (*(a3 + 8))
  {
    v9 = *(a3 + 16);
  }

  else
  {
    v9 = (a3 + 9);
  }

  v10 = strcmp(v7, v9);
  v11 = v10;
  v12 = *re::assetsLogObjects(v10);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!v11)
  {
    if (v13)
    {
      if (*(a2 + 8))
      {
        v20 = *(a2 + 16);
      }

      else
      {
        v20 = a2 + 9;
      }

      if (*(a3 + 8))
      {
        v8 = *(a3 + 16);
      }

      *buf = 136315394;
      v32 = v20;
      v33 = 2080;
      v34 = v8;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "BundleId '%s' already registered for file '%s'", buf, 0x16u);
    }

LABEL_28:
    v22 = 1;
    goto LABEL_37;
  }

  if (v13)
  {
    v16 = *(a2 + 8);
    if (v16)
    {
      v17 = *(a2 + 16);
    }

    else
    {
      v17 = a2 + 9;
    }

    if (*(a3 + 8))
    {
      v8 = *(a3 + 16);
    }

    if (v16)
    {
      v23 = *(a2 + 16);
    }

    else
    {
      v23 = a2 + 9;
    }

    *buf = 136315650;
    v32 = v17;
    v33 = 2080;
    v34 = v8;
    v35 = 2080;
    v36 = v23;
    _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Failed to register '%s' bundle for file '%s'! BundleId '%s' already registered for different file.", buf, 0x20u);
  }

  v22 = 0;
LABEL_37:
  if (v26[0] == 1 && v27 && (v28 & 1) != 0)
  {
    (*(*v27 + 40))(v27, v30, v14, v15);
  }

  return v22;
}

void re::BundleFilePathRegistry::findWithBundleID(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, id *a3@<X8>)
{
  re::DynamicString::DynamicString(v10, a2);
  re::NamedFileRegistry::tryGetFilePathFor(a1, v10, v11);
  if (*&v10[0])
  {
    if (BYTE8(v10[0]))
    {
      (*(**&v10[0] + 40))();
    }

    memset(v10, 0, sizeof(v10));
  }

  if (v11[0])
  {
    if (v13)
    {
      v6 = v15;
    }

    else
    {
      v6 = v14;
    }

    re::Bundle::findWithFilePath(v6, a3);
  }

  else
  {
    if (*(a2 + 8))
    {
      v9 = *(a2 + 16);
    }

    else
    {
      v9 = (a2 + 9);
    }

    re::Bundle::findWithBundleID(v9, a3);
    if (*a3)
    {
      os_unfair_lock_lock(a1);
      re::Bundle::bundlePath(a3, &v16);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&a1[2], a2, &v16);
      if (v16 && (v17 & 1) != 0)
      {
        (*(*v16 + 40))(v16, v18);
      }

      os_unfair_lock_unlock(a1);
    }
  }

  if (v11[0] == 1 && v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))(v12, v15, v7, v8);
  }
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, void *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::DynamicString>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 80 * HIDWORD(v9) + 40;
  }
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::DynamicString>(uint64_t a1, uint64_t a2, const re::DynamicString *a3, void *a4)
{
  v7 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::DynamicString::DynamicString((v7 + 8), a3);
  *(v7 + 40) = 0u;
  v7 += 40;
  *(v7 + 16) = 0u;
  *(v7 + 24) = a4[3];
  v8 = a4[1];
  *v7 = *a4;
  *a4 = 0;
  v9 = a4[2];
  a4[3] = 0;
  v11 = *(v7 + 8);
  v10 = *(v7 + 16);
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  a4[1] = v11;
  a4[2] = v10;
  ++*(a1 + 40);
  return v7;
}

__n128 re::AssetProvider::getAssetPathForRelease@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = a1 + 9;
  }

  re::DynamicString::format("No asset path for AssetLoadDescriptor type '%s'", &v7, v3);
  result = v7;
  v5 = v8;
  v6 = v9;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

void re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_4, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(*(a1 + 16) + v3);
        ++v4;
        v3 += 56;
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

BOOL re::AssetProviderRegistry::Tables::registerProvider(uint64_t a1, char *a2, uint64_t *a3)
{
  v6 = re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a1, a2);
  if (!v6)
  {
    re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, a2, a3);
  }

  return !v6;
}

BOOL re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(uint64_t a1, char *a2)
{
  v6 = a2;
  v3 = re::Hash<re::DynamicString>::operator()(v5, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v6, v3, v5);
  return v5[3] != 0x7FFFFFFF;
}

void *re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(uint64_t a1, char *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = a2;
  v7 = 0;
  v8 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v10, v5, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::SharedPtr<re::AssetProvider> const&>(a1, &v7, &v10, a3);
  }

  else
  {
    return (*(a1 + 16) + 56 * HIDWORD(v8) + 40);
  }
}

BOOL re::AssetProviderRegistry::Tables::registerResolver(uint64_t a1, char *a2, uint64_t *a3)
{
  if (re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a1, a2))
  {
    return 0;
  }

  re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1 + 48, a2, a3);
  v7 = *a3;
  v10 = v7;
  if (v7)
  {
    v8 = (v7 + 8);
  }

  v6 = re::AssetProviderRegistry::Tables::registerProvider(a1, a2, &v10);
  if (v10)
  {
  }

  return v6;
}

BOOL re::AssetProviderRegistry::registerAssetProvider(os_unfair_lock_s *a1, uint64_t *a2)
{
  os_unfair_lock_lock(a1 + 32);
  v4 = (*(**a2 + 32))();
  v5 = *a2;
  v9 = v5;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  v7 = re::AssetProviderRegistry::Tables::registerProvider(&a1[34], v4, &v9);
  if (v9)
  {
  }

  os_unfair_lock_unlock(a1 + 32);
  return v7;
}

BOOL re::AssetProviderRegistry::registerAssetResolverForScheme(re::AssetProviderRegistry *this, const char *a2, const char *(*a3)(const char *, const char *, void *), uint64_t a4, char a5)
{
  v13 = a3;
  v14 = a2;
  v12 = a4;
  v11 = a5;
  re::make::shared::object<re::ExternalResolverAssetProvider,char const*&,void *&,char const* (*&)(char const*,char const*,void *),re::AssetLoadData &,BOOL &>(&v14, &v12, &v13, this, &v11, &v10);
  os_unfair_lock_lock(this + 32);
  v6 = v14;
  v15 = v10;
  if (v10)
  {
    v7 = (v10 + 8);
  }

  v8 = re::AssetProviderRegistry::Tables::registerResolver(this + 136, v6, &v15);
  if (v15)
  {
  }

  os_unfair_lock_unlock(this + 32);
  if (v10)
  {
  }

  return v8;
}

uint64_t re::AssetProviderRegistry::tryGetProviderForScheme(os_unfair_lock_s *this, char *a2)
{
  os_unfair_lock_lock(this + 32);
  v4 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(&this[34], a2);
  if (v4)
  {
    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(this + 32);
  return v5;
}

void *re::AssetProviderRegistry::tryGetRawProviderForScheme(os_unfair_lock_s *this, char *a2)
{
  result = re::AssetProviderRegistry::tryGetProviderForScheme(this, a2);
  if (result)
  {
  }

  return result;
}

double re::AssetProviderRegistry::getPathFromResolver@<D0>(os_unfair_lock_s *this@<X0>, const re::DynamicString *a2@<X1>, const re::DynamicString *a3@<X2>, uint64_t a4@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a2 + 9;
  if (*(a2 + 1))
  {
    v9 = *(a2 + 2);
  }

  else
  {
    v9 = a2 + 9;
  }

  os_unfair_lock_lock(this + 32);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(&this[46], v9);
  if (!v10)
  {
    os_unfair_lock_unlock(this + 32);
LABEL_12:
    v15 = *re::assetsLogObjects(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 1))
      {
        v25 = *(a2 + 2);
      }

      else
      {
        v25 = v8;
      }

      *v26 = 136315138;
      *&v26[4] = v25;
      v22 = "No resolver defined for %s";
      v23 = v15;
      v24 = 12;
      goto LABEL_30;
    }

LABEL_13:
    *a4 = 0;
    return result;
  }

  v11 = *v10;
  os_unfair_lock_unlock(this + 32);
  if (!v11)
  {
    goto LABEL_12;
  }

  if (*(a3 + 8))
  {
    v13 = *(a3 + 2);
  }

  else
  {
    v13 = a3 + 9;
  }

  if (*(v11 + 32))
  {
    v14 = *(v11 + 40);
  }

  else
  {
    v14 = v11 + 33;
  }

  v17 = (*(v11 + 56))(v14, v13, *(v11 + 64));
  if (!v17)
  {
    v19 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 1))
      {
        v20 = *(a2 + 2);
      }

      else
      {
        v20 = v8;
      }

      if (*(a3 + 1))
      {
        v21 = *(a3 + 2);
      }

      else
      {
        v21 = a3 + 9;
      }

      *v26 = 136315394;
      *&v26[4] = v20;
      *&v26[12] = 2080;
      *&v26[14] = v21;
      v22 = "Resolver %s did not return a final path for %s";
      v23 = v19;
      v24 = 22;
LABEL_30:
      _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, v22, v26, v24);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v18 = v17;
  *a4 = 1;
  *(a4 + 8) = *v26;
  *(a4 + 32) = v27;
  result = *&v26[8];
  *(a4 + 16) = *&v26[8];
  return result;
}

BOOL re::AssetProviderRegistry::hasResolverForScheme(os_unfair_lock_s *this, const re::DynamicString *a2)
{
  os_unfair_lock_lock(this + 32);
  v4 = re::Hash<re::DynamicString>::operator()(v7, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&this[46], a2, v4, v7);
  v5 = v8 != 0x7FFFFFFF;
  os_unfair_lock_unlock(this + 32);
  return v5;
}

uint64_t re::AssetProviderRegistry::deviceAssetPath@<X0>(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a2 + 8))
  {
    v8 = *(a2 + 16);
  }

  else
  {
    v8 = (a2 + 9);
  }

  result = re::AssetProviderRegistry::tryGetProviderForScheme(a1, v8);
  if (result && (v10 = result, result = (*(*result + 96))(result, a2, a3), (result & 1) != 0))
  {
    result = (*(*v10 + 104))(&v11, v10, a2, *&a1->_os_unfair_lock_opaque, a1, a3);
    if (v11 == 1)
    {
      *(a4 + 8) = v12;
      *(a4 + 32) = v14;
      *(a4 + 16) = v13;
      *a4 = 1;
    }

    else
    {
      result = v12;
      *a4 = 0;
      if (result)
      {
        if (v13)
        {
          return (*(*result + 40))(result, *(&v13 + 1));
        }
      }
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t *re::AssetProviderRegistry::makeDescriptorForResolver@<X0>(re::AssetProviderRegistry *this@<X0>, const re::DynamicString *a2@<X1>, const re::DynamicString *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v9 = re::DynamicString::setCapacity(a4, 0);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 48) = 0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  re::DynamicString::setCapacity((a4 + 112), 0);
  re::DynamicString::operator=(a4, this);
  v10 = re::DynamicString::operator=((a4 + 112), a3);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  re::DynamicString::setCapacity(&v15, 0);
  re::DynamicString::operator=(&v15, a2);
  re::DynamicString::DynamicString(v14, &v15);
  re::AssetLoadDescriptor::setIntrospectableData(a4, re::ExternalResolverAssetProvider::s_loadDescriptorParametersIntrospect, v14, 0);
  if (*&v14[0])
  {
    if (BYTE8(v14[0]))
    {
      (*(**&v14[0] + 40))();
    }

    memset(v14, 0, sizeof(v14));
  }

  result = v15;
  if (v15)
  {
    if (v16)
    {
      return (*(*v15 + 40))(v15, v17, v11, v12);
    }
  }

  return result;
}

uint64_t re::loadCompiledOrSourceFile@<X0>(char *a1@<X0>, char *a2@<X1>, re::internal::AssetTypeRegistry **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = re::internal::AssetTypeRegistry::assetTypeWithName(*a3, a2);
  if (v10)
  {
    v29[0] = 0;
    LocalCompiledOrSourceAsset = re::AssetUtilities::loadLocalCompiledOrSourceAsset(a1, a3, v10, a4, v29, 0, &v30);
    if (v30)
    {
      *&v23[8] = 0;
      *&v23[16] = 0;
      v24 = 0;
      re::DynamicString::setCapacity(v23, 0);
      v27 = 0;
      v28 = 0;
      v25 = v31;
      v26 = 0;
      v18 = a2;
      *&v19 = strlen(a2);
      re::DynamicString::operator=(v23, &v18);
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v26, v32);
      re::types::Ok<re::AssetLoadResult>::Ok(&v18, v23);
      *a5 = 1;
      *(a5 + 8) = v18;
      *(a5 + 32) = v20;
      *(a5 + 16) = v19;
      v12 = v22;
      *(a5 + 40) = v21;
      *(a5 + 56) = v12;
      if (v26)
      {

        v26 = 0;
      }

      if (*v23)
      {
        if (v23[8])
        {
          (*(**v23 + 40))();
        }
      }
    }

    else
    {
      re::DynamicString::DynamicString(v23, &v31);
      *a5 = 0;
      *(a5 + 8) = *v23;
      *(a5 + 32) = v24;
      *(a5 + 16) = *&v23[8];
    }

    return re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::DynamicString>::~Result(&v30);
  }

  else
  {
    re::DynamicString::operator+(&v18, &v30, v23);
    v14 = *v23;
    memset(v23, 0, sizeof(v23));
    v15 = *&v23[16];
    v16 = v24;
    v24 = 0;
    *a5 = 0;
    *(a5 + 8) = v14;
    *(a5 + 24) = v15;
    *(a5 + 32) = v16;
    if (v30 && (v31 & 1) != 0)
    {
      (*(*v30 + 40))(v30, v32);
    }

    result = v18;
    if (v18 && (v19 & 1) != 0)
    {
      return (*(*v18 + 40))();
    }
  }

  return result;
}

void re::AssetProvider::getPreloadableDependencies(uint64_t a1@<X8>)
{
  re::WrappedError::make(@"REAssetProviderErrorDomain", 1, "This AssetProvider does not provide dependencies for AssetLoadDescriptors.", &v3);
  v2 = v3;
  v3 = 0;
  *a1 = 0;
  *(a1 + 8) = v2;
}

uint64_t re::AssetProvider::resolveChildPath@<X0>(re::AssetProvider *this@<X0>, re::PathBuffer *a2@<X1>, re::DynamicString *a3@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 488;
  v26[0] = 0;
  v20 = v22;
  v21 = 488;
  v22[0] = 0;
  v9 = re::path::dirname(&v23, a2, v8);
  v11 = re::path::join(&v19, v9, this, v10);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  re::DynamicString::setCapacity(a3, 0);
  v13 = v18[1];
  if ((v18[0] & 1) == 0)
  {
    v13 = v18 + 1;
  }

  v14 = LOBYTE(v18[0]) >> 1;
  if (v18[0])
  {
    v14 = v18[0] >> 1;
  }

  v16[0] = v13;
  v16[1] = v14;
  re::AssetPath::standardizePath(v16, a3);
  result = v17;
  if (v17 && (v18[0] & 1) != 0)
  {
    result = (*(*v17 + 40))();
  }

  if (v20 != v22)
  {
    result = (*(*v19 + 40))(v19);
  }

  if (v24 != v26)
  {
    return (*(*v23 + 40))(v23);
  }

  return result;
}

void *re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::SharedPtr<re::AssetProvider> const&>(uint64_t a1, uint64_t a2, const char **a3, uint64_t *a4)
{
  v7 = re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  v9 = *a4;
  v7[5] = *a4;
  v10 = v7 + 5;
  if (v9)
  {
    v11 = (v9 + 8);
  }

  ++*(a1 + 40);
  return v10;
}

uint64_t re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v32, v9, v8);
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
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = (v13 + v17);
                v20 = re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + v17 + 48) % *(a1 + 24));
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
                v13 = *&v32[16];
                v25 = *&v32[16] + v17;
                *(v20 + 40) = *(*&v32[16] + v17 + 40);
                *(v25 + 40) = 0;
              }

              ++v18;
              v17 += 56;
            }

            while (v18 < v16);
          }

          re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v32);
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
    v27 = *(v26 + 56 * v5);
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + 56 * v5);
    *(a1 + 36) = v27 & 0x7FFFFFFF;
  }

  v29 = v26 + 56 * v5;
  *v29 = v27 | 0x80000000;
  v30 = *(a1 + 8);
  *v29 = *(v30 + 4 * a2) | 0x80000000;
  *(v30 + 4 * a2) = v5;
  *(v29 + 48) = a3;
  ++*(a1 + 28);
  return v26 + 56 * v5;
}

void re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_4, 4 * v10);
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

uint64_t re::make::shared::object<re::ExternalResolverAssetProvider,char const*&,void *&,char const* (*&)(char const*,char const*,void *),re::AssetLoadData &,BOOL &>@<X0>(re *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = re::globalAllocators(a1);
  v13 = (*(*v12[2] + 32))(v12[2], 104, 8);
  result = re::ExternalResolverAssetProvider::ExternalResolverAssetProvider(v13, *a1, *a2, *a3, a4, *a5);
  *a6 = result;
  return result;
}

re::DynamicString *re::types::Ok<re::AssetLoadResult>::Ok(re::DynamicString *a1, uint64_t a2)
{
  v4 = re::DynamicString::DynamicString(a1, a2);
  v5 = *(a2 + 40);
  *(v4 + 4) = *(a2 + 32);
  *(v4 + 5) = v5;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  *(a1 + 3) = *(a2 + 48);
  return a1;
}

re::ExistingAssetInformation *re::ExistingAssetInformation::ExistingAssetInformation(re::ExistingAssetInformation *this, re::Allocator *a2)
{
  *this = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 1) = a2;
  v4 = (this + 8);
  re::DynamicString::setCapacity(this + 1, 0);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 5) = a2;
  re::DynamicString::setCapacity(this + 5, 0);
  *(this + 9) = 0;
  re::DynamicString::DynamicString((this + 96), "(unset)", a2);
  re::ExistingAssetInformation::CachedLogName::CachedLogName((this + 128), a2);
  *(this + 22) = 0;
  re::AssetPath::invalidAssetPath(a2, &v7);
  *this = v7;
  re::DynamicString::operator=(v4, &v8);
  re::DynamicString::operator=((this + 40), &v10);
  v5 = v10;
  *(this + 9) = v12;
  if (v5)
  {
    if (BYTE8(v10))
    {
      (*(*v5 + 40))(v5, v11);
    }

    v11 = 0u;
    v10 = 0u;
  }

  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))();
  }

  *(this + 10) = -1;
  return this;
}

re::DynamicString *re::ExistingAssetInformation::setupFromPath(re::ExistingAssetInformation *this, const re::AssetPath *a2)
{
  *this = *a2;
  re::DynamicString::operator=((this + 8), (a2 + 8));
  re::DynamicString::operator=((this + 40), (a2 + 40));
  *(this + 9) = *(a2 + 9);
  *(this + 22) = *a2;
  if (*(this + 104))
  {
    *(this + 13) = 1;
    v4 = *(this + 14);
  }

  else
  {
    *(this + 104) = 0;
    v4 = this + 105;
  }

  *v4 = 0;
  re::AssetPath::fullAssetPath(a2, (this + 96));
  if (re::AssetPath::getAssetId(a2, this + 10))
  {
    v6 = *(this + 20);
    v5 = (this + 160);
    re::DynamicString::format(v6, "#%llu", &v9, *(v5 - 10));
    re::DynamicString::operator=(v5, &v9);
    re::ExistingAssetInformation::CachedLogName::updateLogName((v5 - 32));
    result = v9;
    if (v9)
    {
      if (v10)
      {
        return (*(*v9 + 40))();
      }
    }
  }

  else
  {
    *(this + 10) = 0;
    if (*(this + 104))
    {
      v8 = *(this + 14);
    }

    else
    {
      v8 = this + 105;
    }

    v9 = v8;
    v10 = strlen(v8);
    re::DynamicString::operator=((this + 160), &v9);

    return re::ExistingAssetInformation::CachedLogName::updateLogName((this + 128));
  }

  return result;
}

re::ExistingAssetInformation::CachedLogName *re::ExistingAssetInformation::CachedLogName::CachedLogName(re::ExistingAssetInformation::CachedLogName *this, re::Allocator *a2)
{
  v4 = re::DynamicString::DynamicString(this, "(unset)", a2);
  re::DynamicString::DynamicString((v4 + 32), &str_2_26, a2);
  re::DynamicString::DynamicString((this + 64), &str_2_26, a2);
  return this;
}

re::DynamicString *re::ExistingAssetInformation::CachedLogName::updateLogName(re::ExistingAssetInformation::CachedLogName *this)
{
  v2 = *(this + 9);
  v3 = v2 >> 1;
  if ((v2 & 1) == 0)
  {
    v3 = v2 >> 1;
  }

  if (v3)
  {
    if (v2)
    {
      v4 = *(this + 10);
    }

    else
    {
      v4 = this + 73;
    }

    if (*(this + 40))
    {
      v6 = *(this + 6);
    }

    else
    {
      v6 = this + 41;
    }

    re::DynamicString::format("%s (%s)", &v7, v4, v6);
    re::DynamicString::operator=(this, &v7);
    result = v7;
    if (v7)
    {
      if (v8)
      {
        return (*(*v7 + 40))();
      }
    }
  }

  else
  {

    return re::DynamicString::operator=(this, (this + 32));
  }

  return result;
}

re::DynamicString *re::ExistingAssetInformation::CachedLogName::setDebugMetadata(re::ExistingAssetInformation::CachedLogName *this, const char *__s)
{
  v4[0] = __s;
  v4[1] = strlen(__s);
  re::DynamicString::operator=((this + 64), v4);

  return re::ExistingAssetInformation::CachedLogName::updateLogName(this);
}

void *allocInfo_TubeDescriptorParameters(void)
{
  if ((atomic_load_explicit(&_MergedGlobals_53, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_53))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193318, "TubeDescriptorParameters");
    __cxa_guard_release(&_MergedGlobals_53);
  }

  return &unk_1EE193318;
}

void initInfo_TubeDescriptorParameters(re::IntrospectionBase *a1)
{
  v17[0] = 0x87CFA6BB47133EFALL;
  v17[1] = "TubeDescriptorParameters";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(a1 + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE193060, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_1EE193060);
    if (v4)
    {
      v5 = re::introspectionAllocator(v4);
      v6 = re::introspect_GeomBuildTubeOptions(1);
      v7 = (*(*v5 + 32))(v5, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "options";
      *(v7 + 16) = v6;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE193210 = v7;
      v8 = re::introspectionAllocator(v7);
      v10 = re::introspect_BOOL(1, v9);
      v11 = (*(*v8 + 32))(v8, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "splitMeshes";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1400000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE193218 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_BOOL(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "decimate";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1500000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE193220 = v15;
      __cxa_guard_release(&qword_1EE193060);
    }
  }

  *(a1 + 2) = 0x1800000008;
  *(a1 + 6) = 4;
  *(a1 + 14) = 1;
  *(a1 + 14) = 3;
  *(a1 + 8) = &qword_1EE193210;
  *(a1 + 9) = re::internal::defaultConstruct<TubeDescriptorParameters>;
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 10) = re::internal::defaultDestruct<TubeDescriptorParameters>;
  *(a1 + 13) = re::internal::defaultConstructV2<TubeDescriptorParameters>;
  *(a1 + 14) = re::internal::defaultDestructV2<TubeDescriptorParameters>;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  re::internal::prepare(a1, v3);
  v16 = v18;
}

double re::internal::defaultConstruct<TubeDescriptorParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 65544;
  result = 0.00000190734908;
  *(a3 + 4) = 0x3EC000003F800000;
  *(a3 + 12) = 1056964608;
  *(a3 + 16) = 257;
  *(a3 + 18) = 0;
  return result;
}

double re::internal::defaultConstructV2<TubeDescriptorParameters>(uint64_t a1)
{
  *a1 = 65544;
  result = 0.00000190734908;
  *(a1 + 4) = 0x3EC000003F800000;
  *(a1 + 12) = 1056964608;
  *(a1 + 16) = 257;
  *(a1 + 18) = 0;
  return result;
}

void *allocInfo_PlaneDescriptorParameters(void)
{
  if ((atomic_load_explicit(&qword_1EE193070, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193070))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1933A8, "PlaneDescriptorParameters");
    __cxa_guard_release(&qword_1EE193070);
  }

  return &unk_1EE1933A8;
}

void initInfo_PlaneDescriptorParameters(re::IntrospectionBase *a1)
{
  v17[0] = 0xB6ACCE2E2A57B62ALL;
  v17[1] = "PlaneDescriptorParameters";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(a1 + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE193078, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_1EE193078);
    if (v4)
    {
      v5 = re::introspectionAllocator(v4);
      v6 = re::introspect_GeomBuildPlaneOptions(1);
      v7 = (*(*v5 + 32))(v5, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "options";
      *(v7 + 16) = v6;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE193228 = v7;
      v8 = re::introspectionAllocator(v7);
      v10 = re::introspect_BOOL(1, v9);
      v11 = (*(*v8 + 32))(v8, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "splitMeshes";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1C00000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE193230 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_BOOL(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "decimate";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1D00000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE193238 = v15;
      __cxa_guard_release(&qword_1EE193078);
    }
  }

  *(a1 + 2) = 0x2000000008;
  *(a1 + 6) = 4;
  *(a1 + 14) = 1;
  *(a1 + 14) = 3;
  *(a1 + 8) = &qword_1EE193228;
  *(a1 + 9) = re::internal::defaultConstruct<PlaneDescriptorParameters>;
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 10) = re::internal::defaultDestruct<PlaneDescriptorParameters>;
  *(a1 + 13) = re::internal::defaultConstructV2<PlaneDescriptorParameters>;
  *(a1 + 14) = re::internal::defaultDestructV2<PlaneDescriptorParameters>;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  re::internal::prepare(a1, v3);
  v16 = v18;
}

double re::internal::defaultConstruct<PlaneDescriptorParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 65537;
  *(a3 + 4) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  *(a3 + 20) = 257;
  *(a3 + 24) = 2;
  return result;
}

double re::internal::defaultConstructV2<PlaneDescriptorParameters>(uint64_t a1)
{
  *a1 = 65537;
  *(a1 + 4) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 20) = 257;
  *(a1 + 24) = 2;
  return result;
}

void *allocInfo_CylinderDescriptorParameters(void)
{
  if ((atomic_load_explicit(&qword_1EE193088, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193088))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193438, "CylinderDescriptorParameters");
    __cxa_guard_release(&qword_1EE193088);
  }

  return &unk_1EE193438;
}

void initInfo_CylinderDescriptorParameters(re::IntrospectionBase *a1)
{
  v17[0] = 0x9C4984D14682379ELL;
  v17[1] = "CylinderDescriptorParameters";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(a1 + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE193090, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_1EE193090);
    if (v4)
    {
      v5 = re::introspectionAllocator(v4);
      v6 = re::introspect_GeomBuildCylinderOptions(1);
      v7 = (*(*v5 + 32))(v5, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "options";
      *(v7 + 16) = v6;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE193240 = v7;
      v8 = re::introspectionAllocator(v7);
      v10 = re::introspect_BOOL(1, v9);
      v11 = (*(*v8 + 32))(v8, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "splitMeshes";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1800000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE193248 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_BOOL(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "decimate";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1900000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE193250 = v15;
      __cxa_guard_release(&qword_1EE193090);
    }
  }

  *(a1 + 2) = 0x1C00000008;
  *(a1 + 6) = 4;
  *(a1 + 14) = 1;
  *(a1 + 14) = 3;
  *(a1 + 8) = &qword_1EE193240;
  *(a1 + 9) = re::internal::defaultConstruct<CylinderDescriptorParameters>;
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 10) = re::internal::defaultDestruct<CylinderDescriptorParameters>;
  *(a1 + 13) = re::internal::defaultConstructV2<CylinderDescriptorParameters>;
  *(a1 + 14) = re::internal::defaultDestructV2<CylinderDescriptorParameters>;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  re::internal::prepare(a1, v3);
  v16 = v18;
}

double re::internal::defaultConstruct<CylinderDescriptorParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 65544;
  result = 0.0000305175853;
  *(a3 + 4) = 0x3F0000003F800000;
  *(a3 + 12) = 0x10101013F000000;
  *(a3 + 20) = 0;
  return result;
}

double re::internal::defaultConstructV2<CylinderDescriptorParameters>(uint64_t a1)
{
  *a1 = 65544;
  result = 0.0000305175853;
  *(a1 + 4) = 0x3F0000003F800000;
  *(a1 + 12) = 0x10101013F000000;
  *(a1 + 20) = 0;
  return result;
}

void *allocInfo_TetrahedronDescriptorParameters(void)
{
  if ((atomic_load_explicit(&qword_1EE1930A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1930A0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1934C8, "TetrahedronDescriptorParameters");
    __cxa_guard_release(&qword_1EE1930A0);
  }

  return &unk_1EE1934C8;
}

void initInfo_TetrahedronDescriptorParameters(re::IntrospectionBase *a1)
{
  v17[0] = 0xC1D636A90025346ALL;
  v17[1] = "TetrahedronDescriptorParameters";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(a1 + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1930A8, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_1EE1930A8);
    if (v4)
    {
      v5 = re::introspectionAllocator(v4);
      v6 = re::introspect_GeomBuildTetrahedronOptions(1);
      v7 = (*(*v5 + 32))(v5, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "options";
      *(v7 + 16) = v6;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE193258 = v7;
      v8 = re::introspectionAllocator(v7);
      v10 = re::introspect_BOOL(1, v9);
      v11 = (*(*v8 + 32))(v8, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "splitMeshes";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0xC00000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE193260 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_BOOL(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "decimate";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0xD00000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE193268 = v15;
      __cxa_guard_release(&qword_1EE1930A8);
    }
  }

  *(a1 + 2) = 0x1000000008;
  *(a1 + 6) = 4;
  *(a1 + 14) = 1;
  *(a1 + 14) = 3;
  *(a1 + 8) = &qword_1EE193258;
  *(a1 + 9) = re::internal::defaultConstruct<TetrahedronDescriptorParameters>;
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 10) = re::internal::defaultDestruct<TetrahedronDescriptorParameters>;
  *(a1 + 13) = re::internal::defaultConstructV2<TetrahedronDescriptorParameters>;
  *(a1 + 14) = re::internal::defaultDestructV2<TetrahedronDescriptorParameters>;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  re::internal::prepare(a1, v3);
  v16 = v18;
}