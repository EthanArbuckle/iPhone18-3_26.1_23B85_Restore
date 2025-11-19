uint64_t re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addNew(uint64_t a1, int *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addInternal<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 96 * HIDWORD(v9) + 8;
  }
}

uint64_t re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 96 * v6 + 4) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 96 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 96 * v8 + 4) == *a2)
      {
        break;
      }

      v8 = *(v7 + 96 * v8) & 0x7FFFFFFF;
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
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

BOOL re::EncoderOPACK<re::FixedArrayInputStream>::checkForString(uint64_t a1, char a2)
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
      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, "check", "Key");
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
      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, "check", "String");
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

uint64_t re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addInternal<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject>(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v7 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
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

uint64_t re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::move(a1, v9);
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

uint64_t re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::move(uint64_t result, uint64_t a2)
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
        v8 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(v4, *(v7 + v5 + 88) % *(v4 + 24));
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

void re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 96 * v10, 16);
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

uint64_t re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(uint64_t a1, const re::StringID *a2, uint64_t a3)
{
  result = re::TypeRegistry::typeID(*(a1 + 208), a2, &v6);
  if (v6)
  {
    v9 = a3;
    v8 = v7 | 0xFFFFFFFF00000000;
    return re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(a1 + 224, &v8, &v9);
  }

  return result;
}

uint64_t re::serializeBool<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, _BYTE *a4, re *a5, const re::TypeInfo *a6, char a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeBool(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeChar<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<signed char>(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeI8<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<signed char>(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeI16<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, __int16 *a4, re *a5, const re::TypeInfo *a6, char a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<short>(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeI32<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, int *a4, re *a5, const re::TypeInfo *a6, char a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<int>(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeI64<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, void *a4, re *a5, const re::TypeInfo *a6, char a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<long long>(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeU8<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned char>(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeU16<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, __int16 *a4, re *a5, const re::TypeInfo *a6, char a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned short>(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeU32<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, int *a4, re *a5, const re::TypeInfo *a6, char a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned int>(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeU64<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeFloat<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeDouble<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, a2, v9, a4, a7);
}

uint64_t re::serializeCString<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *a5, const re::TypeInfo *a6, int a7)
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
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
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
    v21 = re::EncoderOPACK<re::FixedArrayInputStream>::beginPointer(a1 + 24, a2, v9, &v46, 0);
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
        re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Found pointer reference instead of C string.", v15, v16, v17, v18, v19, v44);
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
      if (re::EncoderOPACK<re::FixedArrayInputStream>::beginString(a1 + 24, a2, 0, &v45, 0))
      {
        v28 = *a4;
        v29 = v45;
        if (*a4 && v45 == v27)
        {
          if (v27)
          {
LABEL_34:
            re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(a1 + 24, v28, 0);
            v28 = *a4;
            v30 = v45;
LABEL_43:
            v28[v30] = 0;
            re::EncoderOPACK<re::FixedArrayInputStream>::endString((a1 + 24));
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
            re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "String size greater than stream size during deserialization. String length = %zu, Stream length = %zu", v38, v39, v40, v41, v42, v37);
            goto LABEL_23;
          }

          if (((v45 == -1) << 63) >> 63 != (v45 == -1))
          {
            re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Size overflow during string deserialization. String length = %zu", v32, v33, v34, v35, v36, v45);
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
    re::EncoderOPACK<re::FixedArrayInputStream>::endPointer((a1 + 24));
    if (*a4 && *(a1 + 64) == 1)
    {
      (*(**(a1 + 48) + 40))(*(a1 + 48));
      *a4 = 0;
    }

    goto LABEL_47;
  }

  v46 = 0;
  v14 = re::EncoderOPACK<re::FixedArrayInputStream>::beginPointer(a1 + 24, a2, v9, &v46, 0);
  v20 = 0;
  if (v14)
  {
    if (!v46)
    {
LABEL_12:
      re::EncoderOPACK<re::FixedArrayInputStream>::endPointer((a1 + 24));
LABEL_47:
      v20 = *(a1 + 64) ^ 1;
      return v20 & 1;
    }

    if (v46 != 1)
    {
      v45 = 0;
      if (re::EncoderOPACK<re::FixedArrayInputStream>::beginString(a1 + 24, a2, 0, &v45, 0))
      {
        if (v45)
        {
          re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(a1 + 24, 0, 1);
        }

        re::EncoderOPACK<re::FixedArrayInputStream>::endString((a1 + 24));
      }

      goto LABEL_12;
    }

    goto LABEL_16;
  }

  return v20 & 1;
}

uint64_t re::serializeStringID<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, _anonymous_namespace_ *a4, re *a5, const re::TypeInfo *a6, int a7)
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
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    goto LABEL_26;
  }

LABEL_14:
  if (!a7)
  {
    v43 = 0;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginString(a1 + 24, a2, v9, &v43, 0))
    {
      v22 = v43;
      if (v43)
      {
        v23 = (*(**(a1 + 24) + 64))(*(a1 + 24));
        v29 = v43;
        if (v22 > v23)
        {
          (*(**(a1 + 24) + 64))(*(a1 + 24));
          re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "String size greater than stream size during deserialization. String length = %zu, Stream length = %zu", v30, v31, v32, v33, v34, v29);
          goto LABEL_26;
        }

        if (((v43 == -1) << 63) >> 63 != (v43 == -1))
        {
          re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Size overflow during string deserialization. String length = %zu", v24, v25, v26, v27, v28, v43);
          goto LABEL_26;
        }

        v37 = (*(**(a1 + 56) + 32))(*(a1 + 56), v43 + 1, 0);
        v38 = re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(a1 + 24, v37, 0);
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
          re::EncoderOPACK<re::FixedArrayInputStream>::endString((a1 + 24));
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
  v20 = re::EncoderOPACK<re::FixedArrayInputStream>::beginString(a1 + 24, a2, v9, &v41, 0);
  v21 = 0;
  if (v20)
  {
    if (v41)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(a1 + 24, 0, 1);
    }

    goto LABEL_32;
  }

  return v21 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v10 = a3;
  v43 = *MEMORY[0x1E69E9840];
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_17:
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
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
    v39[0] = 0x258C98EAAF29A10ALL;
    v39[1] = "CallbackSerializerAttribute";
    v18 = re::TypeRegistry::typeID(v16, v39, buf);
    if (*buf && (v35 = *&buf[8], v36 = v17, LODWORD(v37) = -1, (v18 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v16 + 768, &v35)) != 0))
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

    v24 = *v19;
    v25 = *(a1 + 200);
    v39[0] = 0;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginString(a1 + 24, a2, v10, v39, 0))
    {
      v26 = *(a1 + 56);
      v37 = 0;
      v38 = 0;
      v35 = v26;
      v36 = 0;
      re::DynamicString::setCapacity(&v35, 0);
      if (v39[0])
      {
        re::DynamicString::resize(&v35, v39[0], 0);
        if (v36)
        {
          v27 = v37;
        }

        else
        {
          v27 = &v36 + 1;
        }

        re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(a1 + 24, v27, 0);
      }

      re::EncoderOPACK<re::FixedArrayInputStream>::endString((a1 + 24));
      v28 = &v36 + 1;
      if (v36)
      {
        v29 = v37;
      }

      else
      {
        v29 = &v36 + 1;
      }

      v30 = (*(v24 + 80))(*(a1 + 48), v25, v24, a4, v29);
      if ((v30 & 1) == 0)
      {
        v31 = *re::foundationSerializationLogObjects(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          if (v36)
          {
            v28 = v37;
          }

          v32 = v31;
          v33 = re::TypeInfo::name(a5)[1];
          *buf = 136315650;
          *&buf[4] = a2;
          *&buf[12] = 2080;
          *&buf[14] = v28;
          v41 = 2080;
          v42 = v33;
          _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_INFO, "Failed to parse %s: %s (type %s) using deserialization callback - skipping.", buf, 0x20u);
        }
      }

      if (v35 && (v36 & 1) != 0)
      {
        (*(*v35 + 40))();
      }

      goto LABEL_39;
    }

LABEL_40:
    v15 = 0;
    return v15 & 1;
  }

  v35 = 0;
  v14 = re::EncoderOPACK<re::FixedArrayInputStream>::beginString(a1 + 24, a2, v10, &v35, 0);
  v15 = 0;
  if (v14)
  {
    if (v35)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(a1 + 24, 0, 1);
    }

    re::EncoderOPACK<re::FixedArrayInputStream>::endString((a1 + 24));
LABEL_39:
    v15 = *(a1 + 64) ^ 1;
  }

  return v15 & 1;
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = *a2;
  if (!*a1)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v6 % *(a1 + 24);
  v8 = *(*(a1 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(a1, v7, v6);
    *(v10 + 4) = *a2;
    *(v10 + 16) = *a3;
    result = v10 + 16;
    ++*(a1 + 40);
    return result;
  }

  v9 = *(a1 + 16);
  while (*(v9 + 24 * v8 + 4) != v6)
  {
    v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  ++*(a1 + 40);
  v12 = v9 + 24 * v8;
  *(v12 + 16) = *a3;
  return v12 + 16;
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 24 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 24 * v4;
}

void re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v9, v4, a2);
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
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::move(a1, v9);
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v9);
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

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(v4, *(v7 + v5 + 4) % *(v4 + 24));
        *(result + 4) = *(*(a2 + 16) + v5 + 4);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 24;
    }
  }

  return result;
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::serializePointer(uint64_t a1, const char *a2, uint64_t a3, char **a4, re::TypeInfo *this, const re::TypeInfo *a6, uint64_t a7)
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
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, this, a6);
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
      re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Failed to get actual type of polymorphic object. Type %s.", v18, v19, v20, v21, v22, v17[1]);
      goto LABEL_27;
    }
  }

  re::TypeRegistry::typeInfo(*this, v47, &v40);
  re::TypeInfo::TypeInfo(v46, &v41);
  v45 = 0;
  if (re::EncoderOPACK<re::FixedArrayInputStream>::beginPointer(a1 + 24, a2, a3, &v45, 0))
  {
    if (v45 == 1)
    {
      v44 = 0;
      if ((*(a1 + 64) & 1) == 0)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<unsigned int>((a1 + 24), "ID", &v44);
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
        re::internal::deserializePolymorphicObject<re::EncoderOPACK<re::FixedArrayInputStream>,false>(a1, a2, a3, a4, this, v46, v48, v16, a7);
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

    re::EncoderOPACK<re::FixedArrayInputStream>::endPointer((a1 + 24));
    v30 = *(a1 + 64) ^ 1;
    return v30 & 1;
  }

LABEL_27:
  v30 = 0;
  return v30 & 1;
}

uint64_t re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::PointerFixup>::insert(_anonymous_namespace_ *this, unint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (v4 + 1 <= a2)
  {
    memset(v10, 0, sizeof(v10));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::PointerFixup>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v7 = *(this + 4) + 88 * v4;
  if (v4 <= a2)
  {
    *v7 = *a3;
    re::TypeInfo::TypeInfo(v7 + 16, a3 + 16);
    result = re::TypeInfo::TypeInfo(v7 + 48, a3 + 48);
  }

  else
  {
    *v7 = *(v7 - 88);
    re::TypeInfo::TypeInfo(v7 + 16, v7 - 72);
    re::TypeInfo::TypeInfo(v7 + 48, v7 - 40);
    *(v7 + 80) = *(v7 - 8);
    v8 = 88 * a2;
    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::PointerFixup *,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::PointerFixup *,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::PointerFixup *>(v10, *(this + 4) + v8, *(this + 4) + 88 * *(this + 2) - 88, *(this + 4) + 88 * *(this + 2));
    v7 = *(this + 4) + v8;
    *v7 = *a3;
    re::TypeInfo::operator=(v7 + 16, a3 + 16);
    result = re::TypeInfo::operator=(v7 + 48, a3 + 48);
  }

  *(v7 + 80) = *(a3 + 80);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::PointerFixup>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::PointerFixup>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::PointerFixup>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::PointerFixup>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::PointerFixup>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x58uLL))
        {
          v2 = 88 * a2;
          result = (*(*result + 32))(result, 88 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 88, a2);
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
        v10 = v8 + 88 * v9;
        v11 = (v7 + 6);
        v12 = v8 + 48;
        do
        {
          *(v11 - 48) = *(v12 - 48);
          re::TypeInfo::TypeInfo(v11 - 32, v12 - 32);
          re::TypeInfo::TypeInfo(v11, v12);
          *(v11 + 32) = *(v12 + 32);
          v11 += 88;
          v13 = v12 + 40;
          v12 += 88;
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

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::PointerFixup *,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::PointerFixup *,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::PointerFixup *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      *(a4 + v7 - 88) = *(a3 + v7 - 88);
      re::TypeInfo::operator=(a4 + v7 - 72, a3 + v7 - 72);
      re::TypeInfo::operator=(a4 + v7 - 40, a3 + v7 - 40);
      *(a4 + v7 - 8) = *(a3 + v7 - 8);
      v7 -= 88;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

re::NetworkCompatSerializer *re::NetworkCompatSerializer::NetworkCompatSerializer(re::NetworkCompatSerializer *this)
{
  *&v4.var0 = 0x287C37956ADFC9C4;
  v4.var1 = "NetworkCompatSerializer";
  v2 = re::NetworkSerializerBase<re::SerializerV1<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::NetworkSerializerBase(this, &v4);
  if (*&v4.var0)
  {
    if (*&v4.var0)
    {
    }
  }

  *this = &unk_1F5CB6000;
  return this;
}

uint64_t re::NetworkSerializerBase<re::SerializerV1<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::NetworkSerializerBase(uint64_t a1, const StringID *a2)
{
  *a1 = &unk_1F5CB6190;
  re::StringID::StringID((a1 + 8), a2);
  re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::Encoder(a1 + 24, 15);
  *(a1 + 240) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 244) = 0x7FFFFFFFLL;
  *(a1 + 256) = 1;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 300) = 0x7FFFFFFFLL;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  *(a1 + 336) = 0;
  *(a1 + 424) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 416) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *a1 = &unk_1F5CB60C0;
  *(a1 + 464) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 184) = a1 + 432;
  return a1;
}

void re::NetworkCompatSerializer::~NetworkCompatSerializer(re::NetworkCompatSerializer *this)
{
  *this = &unk_1F5CB6128;
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::DynamicArray<unsigned long>::deinit(this + 352);
  re::DynamicArray<unsigned long>::deinit(this + 312);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 33);

  re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::~Serializer(this);
}

{
  *this = &unk_1F5CB6128;
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::DynamicArray<unsigned long>::deinit(this + 352);
  re::DynamicArray<unsigned long>::deinit(this + 312);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 33);
  re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::untrackObject(uint64_t result)
{
  if (*(result + 256) == 1)
  {
    --*(result + 408);
    ++*(result + 416);
  }

  return result;
}

void re::NetworkSerializerBase<re::SerializerV1<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::doOpen(uint64_t a1)
{
  *(a1 + 257) = 0;
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 264);
  *(a1 + 328) = 0;
  ++*(a1 + 336);
  *(a1 + 368) = 0;
  ++*(a1 + 376);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
}

void re::SerializerV1<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::doClose(uint64_t a1)
{
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 264);
  *(a1 + 328) = 0;
  ++*(a1 + 336);
  *(a1 + 368) = 0;
  ++*(a1 + 376);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
}

void re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v26 = 6059476;
  v27 = "BOOL";
  v2 = re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeBool<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6104748;
  v27 = "char";
  v3 = re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeChar<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x172E117BCLL;
  v27 = "int8_t";
  v4 = re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeI8<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93A4A92;
  v27 = "int16_t";
  v5 = re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeI16<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93BFE06;
  v27 = "int32_t";
  v6 = re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeI32<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93EC744;
  v27 = "int64_t";
  v7 = re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6655224;
  v27 = "long";
  v8 = re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x31CD534126;
  v27 = "uint8_t";
  v9 = re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeU8<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0D4E68;
  v27 = "uint16_t";
  v10 = re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeU16<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0F01DCLL;
  v27 = "uint32_t";
  v11 = re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeU32<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD11CB1ALL;
  v27 = "uint64_t";
  v12 = re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x1947BDF6CLL;
  v27 = "size_t";
  v13 = re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 195052728;
  v27 = "float";
  v14 = re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeFloat<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x161EEF7A2;
  v27 = "double";
  v15 = re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeDouble<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 189247272;
  v27 = "char*";
  v16 = re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeCString<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2686EB529B3EE220;
  v27 = "DynamicString";
  v17 = re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeDynamicString<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x458DDB01A18;
  v27 = "StringID";
  v18 = re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeStringID<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v19 = *(a1 + 192);
  v26 = 0x258C98EAAF29A10ALL;
  v27 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(v19, &v26, &v30);
  if (v26)
  {
    if (v26)
    {
    }
  }

  if (v30)
  {
    v21 = *(a1 + 192);
    v25 = v30;
    re::TypeRegistry::attributesByAttributeType(v21, &v25, &v26);
    if (v28)
    {
      v22 = (v29 + 24);
      v23 = 48 * v28;
      do
      {
        v24 = *v22;
        v22 += 6;
        v32 = re::serializeIntrospectionCallbackSerializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>;
        v31 = v24 | 0xFFFFFFFF00000000;
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(a1 + 208, &v31, &v32);
        v23 -= 48;
      }

      while (v23);
    }

    if (v26)
    {
      if (v29)
      {
        (*(*v26 + 40))();
      }
    }
  }
}

uint64_t re::SerializerV1<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a1 + 408);
  if (!v14)
  {
    if (a7)
    {
      v15 = 0;
    }

    else
    {
      v15 = a4;
    }

    v16 = **(a5 + 2);
    *&v25 = *a5;
    *(&v25 + 1) = v16;
    re::internal::SharedObjectGraph::beginObject((a1 + 256), v15, &v25);
  }

  v17 = (*(*a1 + 80))(a1, a5);
  if (v17)
  {
    result = v17(a1, a2, a3, a4, a5, a6, a7);
    if (!v14 && *(a1 + 256) == 1)
    {
      --*(a1 + 408);
      ++*(a1 + 416);
    }
  }

  else
  {
    v19 = re::TypeInfo::name(a5);
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v20, v21, v22, v23, v24, v19[1]);
    return 0;
  }

  return result;
}

uint64_t (*re::SerializerV1<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this))(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v4 = re::TypeInfo::name(this);
  if (*v4 >> 1 == 94623636)
  {
    v6 = v4[1];
    v7 = re::SerializerV1<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::serializeCString;
    if (v6 == "char*")
    {
      return v7;
    }

    v8 = strcmp(v6, "char*");
    v7 = re::SerializerV1<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::serializeCString;
    if (!v8)
    {
      return v7;
    }
  }

  if (*(this + 12) != 9)
  {
    goto LABEL_9;
  }

  v9 = *(*(this + 2) + 88);
  v7 = re::SerializerV1<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::serializePointer;
  if (v9 >= 2)
  {
    if (v9 != 2)
    {
      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Invalid PointerSharing type.", "!Unreachable code", "doResolveSerializeFunc", 84);
      result = _os_crash();
      __break(1u);
      return result;
    }

    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) External references are not supported by the SerializerV1.", "!Unreachable code", "doResolveSerializeFunc", 82);
    _os_crash();
    __break(1u);
LABEL_9:
    if (*this == *(a1 + 192))
    {
      LODWORD(v12) = **(this + 2);
      HIDWORD(v12) = -1;
      v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 208, &v12);
      v7 = re::serializeType<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>;
      if (v10)
      {
        return *v10;
      }
    }

    else
    {
      return re::serializeType<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>;
    }
  }

  return v7;
}

void *re::NetworkSerializerBase<re::SerializerV1<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::~NetworkSerializerBase(void *a1)
{
  *a1 = &unk_1F5CB6128;
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::DynamicArray<unsigned long>::deinit((a1 + 44));
  re::DynamicArray<unsigned long>::deinit((a1 + 39));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 33);

  return re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::~Serializer(a1);
}

void re::NetworkSerializerBase<re::SerializerV1<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::~NetworkSerializerBase(void *a1)
{
  *a1 = &unk_1F5CB6128;
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::DynamicArray<unsigned long>::deinit((a1 + 44));
  re::DynamicArray<unsigned long>::deinit((a1 + 39));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 33);
  re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

void *re::SerializerV1<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5CB6128;
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::DynamicArray<unsigned long>::deinit((a1 + 44));
  re::DynamicArray<unsigned long>::deinit((a1 + 39));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 33);

  return re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::~Serializer(a1);
}

void re::SerializerV1<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5CB6128;
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::DynamicArray<unsigned long>::deinit((a1 + 44));
  re::DynamicArray<unsigned long>::deinit((a1 + 39));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 33);
  re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

void re::SerializerV1<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::doOpen(uint64_t a1)
{
  *(a1 + 257) = 0;
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 264);
  *(a1 + 328) = 0;
  ++*(a1 + 336);
  *(a1 + 368) = 0;
  ++*(a1 + 376);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
}

void re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::~Serializer(void *a1)
{
  re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v17, v18, v19, v20, v21, v16[1]);
    return 0;
  }
}

uint64_t (*re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 != *(a1 + 192))
  {
    return re::serializeType<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>;
  }

  v6[1] = v2;
  v6[2] = v3;
  LODWORD(v6[0]) = **(a2 + 16);
  HIDWORD(v6[0]) = -1;
  v5 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 208, v6);
  if (v5)
  {
    return *v5;
  }

  else
  {
    return re::serializeType<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>;
  }
}

uint64_t re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::Encoder(uint64_t result, int a2)
{
  *(result + 128) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = 0;
  *(result + 120) = 0;
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 136) = a2;
  *(result + 140) = 0;
  *(result + 152) = 1024;
  v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v8 = result;
    v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    v6 = v4;
    result = v8;
    if (v6)
    {
      re::Defaults::intValue("maxSerializationDepth", v5, v9);
      v7 = v10;
      if (!v9[0])
      {
        v7 = 0;
      }

      re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::Encoder(int)::s_maxSerializationDepth = v7;
      v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      result = v8;
    }
  }

  v3 = *(v2 + 148);
  if (v3)
  {
    *(result + 152) = v3;
  }

  return result;
}

void *re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5CB6190;
  v2 = (a1 + 1);
  re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(a1 + 26);
  re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::~Encoder((a1 + 3));
  re::StringID::destroyString(v2);
  return a1;
}

void re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::deinit(void *a1)
{
  if (a1[24])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 26));
    a1[24] = 0;
  }
}

uint64_t re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::~Encoder(uint64_t a1)
{
  re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::close(a1);
  re::DynamicArray<unsigned long>::deinit(a1 + 96);
  if (*(a1 + 40) == 1)
  {
    re::DynamicString::deinit((a1 + 64));
  }

  return a1;
}

uint64_t re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::close(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    if ((*(result + 40) & 1) == 0)
    {
      v2 = 69;
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<unsigned char>(result, "End-of-file", 0, &v2, "uint8", 0);
      if ((*(v1 + 40) & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 0);
      }
    }

    result = re::DynamicArray<unsigned long>::deinit(v1 + 96);
    if (*(v1 + 16) >= 1)
    {
      result = (*(**v1 + 24))();
      *(v1 + 8) = 0;
      *(v1 + 16) = 0;
    }

    *v1 = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<unsigned char>(uint64_t a1, const char *a2, uint64_t a3, char *a4, uint64_t a5, char a6)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  if (a6)
  {
    a4 = 0;
  }

  if (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, a4, 1uLL))
  {
    if ((a6 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }

    return 1;
  }

  else
  {
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, a5);
    return 0;
  }
}

uint64_t re::serializeType<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (this == a6)
  {
    goto LABEL_19;
  }

  if (*this == *a6)
  {
    v15 = **(this + 2);
    v16 = **(a6 + 16);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_19;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_19;
  }

  if (*(this + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, this, a6);
    return 0;
  }

  v19 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
  if (v19)
  {
    v20 = *(v19 + 16);
  }

  else
  {
    v20 = -1;
  }

  v21 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
  if (v21)
  {
    v22 = *(v21 + 16);
  }

  else
  {
    v22 = -1;
  }

  if (v20 != v22)
  {
    v30 = re::TypeInfo::name(this)[1];
    re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
    re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Cannot serialize type %s version %u as version %u. Downgrading versions is not supported.", v31, v32, v33, v34, v35, v30);
    return 0;
  }

LABEL_19:
  v23 = *(this + 12);
  if (v23 <= 4)
  {
    if (*(this + 12) > 2u)
    {
      if (v23 == 3)
      {

        return re::serializeOptional<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
      }

      else
      {
        if (v23 != 4)
        {
          goto LABEL_57;
        }

        return re::serializeArray<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
      }
    }

    else if (v23 == 1)
    {

      return re::serializeBasic<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_57;
      }

      return re::serializeEnum<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else if (*(this + 12) <= 6u)
  {
    if (v23 == 5)
    {

      return re::serializeList<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v23 != 6)
      {
        goto LABEL_57;
      }

      return re::serializeDictionary<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else
  {
    switch(v23)
    {
      case 7u:

        return re::serializeUnion<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
      case 8u:

        return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
      case 9u:
        v36 = re::TypeInfo::name(this)[1];
        re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Pointer type (%s) needs to be handled explicitly by the serializer.", v24, v25, v26, v27, v28, v36);
        return 0;
      default:
LABEL_57:
        re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Invalid type category. Value = %d", a4, this, a6, a7, a8, *(this + 12));
        return 0;
    }
  }
}

uint64_t re::serializeBasic<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_24:
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, this, a6);
      return 0;
    }

    v23 = **(this + 2);
    v24 = **(a6 + 2);
    if (v23 != v24)
    {
      goto LABEL_24;
    }

    v26 = WORD1(v23) == WORD1(v24);
    v25 = (v24 ^ v23) & 0xFFFFFF00000000;
    v26 = v26 && v25 == 0;
    if (!v26)
    {
      goto LABEL_24;
    }
  }

LABEL_4:
  v14 = re::TypeInfo::name(this);
  v15 = *v14 >> 1;
  if (v15 > 0x16749DFF02)
  {
    if (*v14 >> 1 > 0x303EE88E58CLL)
    {
      if (*v14 >> 1 > 0x2A8CEB1C43F60843)
      {
        if (v15 == 0x2A8CEB1C43F60844)
        {
          goto LABEL_62;
        }

        if (v15 != 0x3AFE951B1F1F3391)
        {
          if (v15 != 0x412A40E9CB79BA35)
          {
            goto LABEL_77;
          }

          goto LABEL_56;
        }

        goto LABEL_59;
      }

      if (v15 == 0x303EE88E58DLL)
      {
        goto LABEL_56;
      }

      if (v15 != 0x2710786C3AC82DA1)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (*v14 >> 1 <= 0x18E6A9A092)
      {
        if (v15 != 0x16749DFF03)
        {
          if (v15 == 0x16749F63A2)
          {
LABEL_43:
            v33 = "int64";
            v34 = a1 + 24;
            v35 = a2;
            v36 = a3;
            v37 = a4;
            v38 = a7;

            return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(v34, v35, v36, v37, v33, v38);
          }

          goto LABEL_77;
        }

LABEL_65:
        v16 = "int32";
        v17 = a1 + 24;
        v18 = a2;
        v19 = a3;
        v20 = a4;
        v21 = a7;

        return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(v17, v18, v19, v20, v16, v21);
      }

      if (v15 != 0x18E6A9A093)
      {
        if (v15 != 0x303EE86A734)
        {
          if (v15 != 0x303EE8780EELL)
          {
            goto LABEL_77;
          }

LABEL_62:
          v16 = "uint32";
          v17 = a1 + 24;
          v18 = a2;
          v19 = a3;
          v20 = a4;
          v21 = a7;

          return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(v17, v18, v19, v20, v16, v21);
        }

LABEL_59:
        v39 = "uint16";
        v40 = a1 + 24;
        v41 = a2;
        v42 = a3;
        v43 = a4;
        v44 = a7;

        return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<short>(v40, v41, v42, v43, v39, v44);
      }
    }

    v27 = "uint8";
    v28 = a1 + 24;
    v29 = a2;
    v30 = a3;
    v31 = a4;
    v32 = a7;

    return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<unsigned char>(v28, v29, v30, v31, v27, v32);
  }

  if (*v14 >> 1 <= 0x685847B)
  {
    if (*v14 >> 1 > 0x2E9355)
    {
      if (v15 != 3052374)
      {
        if (v15 != 3327612)
        {
          if (v15 == 97526364)
          {
            v16 = "float";
            v17 = a1 + 24;
            v18 = a2;
            v19 = a3;
            v20 = a4;
            v21 = a7;

            return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(v17, v18, v19, v20, v16, v21);
          }

          goto LABEL_77;
        }

        goto LABEL_43;
      }

      v27 = "char";
      v28 = a1 + 24;
      v29 = a2;
      v30 = a3;
      v31 = a4;
      v32 = a7;

      return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<unsigned char>(v28, v29, v30, v31, v27, v32);
    }

    if (v15 != 104431)
    {
      if (v15 == 3029738)
      {
        v27 = "BOOL";
        v28 = a1 + 24;
        v29 = a2;
        v30 = a3;
        v31 = a4;
        v32 = a7;

        return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<unsigned char>(v28, v29, v30, v31, v27, v32);
      }

LABEL_77:
      v45 = re::TypeInfo::name(this);
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Unsupported basic type %s.", v46, v47, v48, v49, v50, v45[1]);
      return 0;
    }

    goto LABEL_65;
  }

  if (*v14 >> 1 <= 0xB9708BDD)
  {
    if (v15 != 109413500)
    {
      if (v15 == 2969009105)
      {
        v33 = "double";
        v34 = a1 + 24;
        v35 = a2;
        v36 = a3;
        v37 = a4;
        v38 = a7;

        return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(v34, v35, v36, v37, v33, v38);
      }

      goto LABEL_77;
    }

    goto LABEL_68;
  }

  if (v15 == 3111160798)
  {
    v27 = "int8";
    v28 = a1 + 24;
    v29 = a2;
    v30 = a3;
    v31 = a4;
    v32 = a7;

    return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<unsigned char>(v28, v29, v30, v31, v27, v32);
  }

  if (v15 == 3393056694)
  {
LABEL_56:
    v33 = "uint64";
    v34 = a1 + 24;
    v35 = a2;
    v36 = a3;
    v37 = a4;
    v38 = a7;

    return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(v34, v35, v36, v37, v33, v38);
  }

  if (v15 != 0x16749D2549)
  {
    goto LABEL_77;
  }

LABEL_68:
  v39 = "int16";
  v40 = a1 + 24;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a7;

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<short>(v40, v41, v42, v43, v39, v44);
}

uint64_t re::serializeEnum<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, re::TypeInfo *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v14 = **(a5 + 16);
      v15 = **(a6 + 16);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_12;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_12;
    }

    if (*(a5 + 12) != *(a6 + 12) || (v18 = re::TypeInfo::name(a5), v19 = re::TypeInfo::name(a6), !re::StringID::operator==(v18, v19)))
    {
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
      return 0;
    }
  }

LABEL_12:

  return re::internal::serializeEnumAsBinary<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeOptional<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
  if (a5 == a6)
  {
    goto LABEL_11;
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
        goto LABEL_11;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_11;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    v21 = 0;
    return v21 & 1;
  }

LABEL_11:
  if (a7)
  {
    __src[0] = 0;
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginOptional((a1 + 24), a2, v11, __src, 0);
    if (__src[0] == 1)
    {
      v18 = *(a1 + 192);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), v26);
      re::TypeInfo::TypeInfo(v25, &v27);
      re::internal::translateType(v18, v25, v26);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, 0, v26, v26, 1);
      }
    }
  }

  else
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), v26);
    re::TypeInfo::TypeInfo(v25, &v27);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), v26);
    re::TypeInfo::TypeInfo(__src, &v27);
    re::TypeInfo::TypeInfo(v26, a5);
    v23 = (*(v28 + 88))(a4) != 0;
    v19 = re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginOptional((a1 + 24), a2, v11, &v23, 0);
    if (v23)
    {
      v20 = (*(v28 + 88))(a4, v19);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, v20, v25, __src, 0);
      }
    }
  }

  re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endOptional((a1 + 24));
  v21 = *(a1 + 64) ^ 1;
  return v21 & 1;
}

uint64_t re::serializeArray<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v22 = **(a5 + 2);
    v23 = **(a6 + 2);
    if (v22 != v23)
    {
      goto LABEL_13;
    }

    v25 = WORD1(v22) == WORD1(v23);
    v24 = (v23 ^ v22) & 0xFFFFFF00000000;
    v25 = v25 && v24 == 0;
    if (!v25)
    {
      goto LABEL_13;
    }

LABEL_4:
    v14 = 1;
    if (a7)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_13:
  if (*(a6 + 12) != 4)
  {
    goto LABEL_52;
  }

  v26 = *(a5 + 2);
  v27 = *(a6 + 2);
  v28 = *(v27 + 23) & 0xFFFFFF;
  if ((*(v26 + 23) & 0xFFFFFF) != 0)
  {
    if (v28)
    {
      goto LABEL_16;
    }

LABEL_52:
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    goto LABEL_53;
  }

  if (v28 || *(v26 + 24) != *(v27 + 24))
  {
    goto LABEL_52;
  }

LABEL_16:
  v14 = 0;
  if (a7)
  {
LABEL_5:
    v15 = *(a1 + 24);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v60);
    re::TypeInfo::TypeInfo(v56, v61);
    re::internal::translateType(v15, v56, v57);
    v16 = (*(*a1 + 80))(a1, v57);
    if (v16)
    {
      v17 = v16;
      v18 = *(a6 + 2);
      v19 = *(v18 + 23) & 0xFFFFFF;
      if (v19)
      {
        v20 = 0;
        v21 = 8;
      }

      else
      {
        v20 = *(v18 + 24);
        v21 = 4;
      }

      v60 = v20;
      if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), a2, a3, &v60, v21))
      {
        v45 = v60;
        if (v19)
        {
          v46 = v60 == 0;
        }

        else
        {
          v46 = 1;
        }

        v47 = v46;
        if (!v46)
        {
          v55[0] = 0;
          v55[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v55);
          v45 = v60;
        }

        if (v58 == 1)
        {
          if (v45)
          {
            re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeArray((a1 + 24), 0, *(v59 + 8), v45, 1);
          }
        }

        else if (v45)
        {
          v52 = 0;
          do
          {
            v17(a1, 0, 0, 0, v57, v57, 1);
            ++v52;
          }

          while (v52 < v60);
        }

        if (v47)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      goto LABEL_53;
    }

LABEL_36:
    v39 = re::TypeInfo::name(v57);
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v40, v41, v42, v43, v44, v39[1]);
    goto LABEL_53;
  }

LABEL_17:
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v60);
  re::TypeInfo::TypeInfo(v57, v61);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v60);
  re::TypeInfo::TypeInfo(v56, v61);
  re::TypeInfo::TypeInfo(&v60, a5);
  v29 = (*(*a1 + 80))(a1, v57);
  if (!v29)
  {
    goto LABEL_36;
  }

  v30 = v29;
  v54 = re::ArrayAccessor::size(&v60, a4);
  v31 = *(*(a5 + 2) + 92) & 0xFFFFFF;
  if (v31)
  {
    v32 = 8;
  }

  else
  {
    v32 = 4;
  }

  if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), a2, a3, &v54, v32))
  {
    v33 = v54;
    if (v31)
    {
      v34 = v54 == 0;
    }

    else
    {
      v34 = 1;
    }

    v35 = v34;
    if (!v34)
    {
      v36 = *a4;
      v53[0] = 0;
      v53[1] = 0xFFFFFFFFLL;
      (*(*a1 + 16))(a1, v36, v53);
      v33 = v54;
    }

    if (v58 == 1)
    {
      v37 = v14;
    }

    else
    {
      v37 = 0;
    }

    if (v37)
    {
      if (v33)
      {
        v38 = re::ArrayAccessor::elementAt(&v60, a4, 0);
        re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeArray((a1 + 24), v38, *(v59 + 8), v54, 0);
      }
    }

    else if (v33)
    {
      v49 = 0;
      do
      {
        v50 = re::ArrayAccessor::elementAt(&v60, a4, v49);
        v30(a1, 0, 0, v50, v57, v56, 0);
        ++v49;
      }

      while (v49 < v54);
    }

    if (v35)
    {
      goto LABEL_59;
    }

LABEL_58:
    (*(*a1 + 24))(a1);
LABEL_59:
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
    v48 = a1[64] ^ 1;
    return v48 & 1;
  }

LABEL_53:
  v48 = 0;
  return v48 & 1;
}

uint64_t re::serializeList<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v25 = **(a5 + 2);
    v26 = **(a6 + 2);
    if (v25 != v26)
    {
      goto LABEL_15;
    }

    v28 = WORD1(v25) == WORD1(v26);
    v27 = (v26 ^ v25) & 0xFFFFFF00000000;
    v28 = v28 && v27 == 0;
    if (!v28)
    {
      goto LABEL_15;
    }

LABEL_4:
    v14 = 1;
    if (a7)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_15:
  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    goto LABEL_32;
  }

  v14 = 0;
  if (!a7)
  {
LABEL_17:
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v60);
    re::TypeInfo::TypeInfo(v57, &v61);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v60);
    re::TypeInfo::TypeInfo(v56, &v61);
    re::TypeInfo::TypeInfo(&v60, a5);
    v29 = (*(*a1 + 80))(a1, v57);
    if (!v29)
    {
      goto LABEL_29;
    }

    v30 = v29;
    v55 = (*(v62 + 88))(a4);
    v31 = re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), a2, a3, &v55, 0);
    v19 = 0;
    if (!v31)
    {
      return v19 & 1;
    }

    v32 = *(v62 + 104);
    if (v32)
    {
      if (*(a5 + 12) == 5)
      {
        v33 = v14;
      }

      else
      {
        v33 = 0;
      }

      if (v33 != 1 || (*(*(a5 + 2) + 48) & 8) == 0 || v58 != 1)
      {
        if (v55)
        {
          for (i = 0; i < v55; ++i)
          {
            v41 = (*(v62 + 104))(a4, i);
            v30(a1, 0, 0, v41, v57, v56, 0);
          }
        }

        goto LABEL_48;
      }

      if (v55)
      {
        v23 = v32(a4, 0);
        v21 = *(v59 + 8);
        v20 = v55;
        v22 = a1 + 24;
        v24 = 0;
        goto LABEL_28;
      }

LABEL_48:
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v19 = *(a1 + 64) ^ 1;
      return v19 & 1;
    }

    v42 = *(v62 + 112);
    if (v42 && *(v62 + 120) && *(v62 + 128))
    {
      v43 = v42(a4, *(a1 + 56));
      v44 = (*(v62 + 120))();
      if (v44)
      {
        v45 = v44;
        do
        {
          v30(a1, 0, 0, v45, v57, v56, 0);
          v45 = (*(v62 + 120))(v43);
        }

        while (v45);
      }

      (*(v62 + 128))(v43, *(a1 + 56));
      goto LABEL_48;
    }

    re::TypeInfo::TypeInfo(v54, &v60);
    v53 = re::TypeInfo::name(v54)[1];
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "List type %s does not provide an indexer or iterator.", v47, v48, v49, v50, v51, v53);
LABEL_32:
    v19 = 0;
    return v19 & 1;
  }

LABEL_5:
  v15 = *(a1 + 192);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v60);
  re::TypeInfo::TypeInfo(v56, &v61);
  re::internal::translateType(v15, v56, v57);
  v16 = (*(*a1 + 80))(a1, v57);
  if (!v16)
  {
LABEL_29:
    v52 = re::TypeInfo::name(v57)[1];
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v34, v35, v36, v37, v38, v52);
    goto LABEL_32;
  }

  v17 = v16;
  v60 = 0;
  v18 = re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), a2, a3, &v60, 0);
  v19 = 0;
  if (v18)
  {
    v20 = v60;
    if (v58 != 1)
    {
      if (v60)
      {
        for (j = 0; j < v60; ++j)
        {
          v17(a1, 0, 0, 0, v57, v57, 1);
        }
      }

      goto LABEL_48;
    }

    if (v60)
    {
      v21 = *(v59 + 8);
      v22 = a1 + 24;
      v23 = 0;
      v24 = 1;
LABEL_28:
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeArray(v22, v23, v21, v20, v24);
      goto LABEL_48;
    }

    goto LABEL_48;
  }

  return v19 & 1;
}

uint64_t re::serializeDictionary<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v85 = *MEMORY[0x1E69E9840];
  if (a5 == a6)
  {
    goto LABEL_11;
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
        goto LABEL_11;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_11;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
LABEL_52:
    v25 = 0;
    return v25 & 1;
  }

LABEL_11:
  if (a7)
  {
    v18 = *(a1 + 192);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v80);
    re::TypeInfo::TypeInfo(&v72, &v80.n128_i64[1]);
    re::internal::translateType(v18, &v72, v59);
    v19 = *(a1 + 192);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v80);
    re::TypeInfo::TypeInfo(v70, &v80.n128_i64[1]);
    re::internal::translateType(v19, v70, &v72);
    v20 = (*(*a1 + 80))(a1, v59);
    if (v20)
    {
      v21 = v20;
      v22 = (*(*a1 + 80))(a1, &v72);
      if (v22)
      {
        v23 = v22;
        v70[0] = 0;
        v24 = re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginDictionary((a1 + 24), a2, a3, v70, 0);
        v25 = 0;
        if (v24)
        {
          if (v70[0])
          {
            v26 = 0;
            do
            {
              if ((*(a1 + 64) & 1) == 0)
              {
                v80.n128_u8[0] = 7;
                v80.n128_u32[1] = 1;
                v80.n128_u64[1] = "entry";
                v81 = xmmword_1E3054780;
                v82 = 0uLL;
                re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v80);
              }

              v21(a1, "key", 0, 0, v59, v59, 1);
              v23(a1, "value", 0, 0, &v72, &v72, 1);
              re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endDictionaryEntry((a1 + 24));
              ++v26;
            }

            while (v26 < v70[0]);
          }

LABEL_60:
          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endDictionary((a1 + 24));
          v25 = *(a1 + 64) ^ 1;
          return v25 & 1;
        }

        return v25 & 1;
      }

      v47 = &v72;
    }

    else
    {
      v47 = v59;
    }

    goto LABEL_51;
  }

  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v80);
  re::TypeInfo::TypeInfo(v70, &v80.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v80);
  re::TypeInfo::TypeInfo(v69, &v80.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v80);
  re::TypeInfo::TypeInfo(v68, &v80.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v80);
  re::TypeInfo::TypeInfo(v67, &v80.n128_i64[1]);
  re::TypeInfo::TypeInfo(v65, a5);
  v27 = (*(*a1 + 80))(a1, v70);
  if (!v27)
  {
    v47 = v70;
LABEL_51:
    v48 = re::TypeInfo::name(v47);
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v49, v50, v51, v52, v53, v48[1]);
    goto LABEL_52;
  }

  v28 = v27;
  v29 = (*(*a1 + 80))(a1, v69);
  if (!v29)
  {
    v47 = v69;
    goto LABEL_51;
  }

  v30 = v29;
  v64 = (*(v66 + 96))(a4);
  v31 = re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginDictionary((a1 + 24), a2, a3, &v64, 0);
  v25 = 0;
  if (v31)
  {
    if (v64)
    {
      v32 = *a5;
      v80.n128_u64[0] = 0x449AD97C4B77BED4;
      v80.n128_u64[1] = "_CompareFunc";
      v33 = re::TypeRegistry::typeID(v32, &v80, v63);
      if (v80.n128_u8[0])
      {
        if (v80.n128_u8[0])
        {
        }
      }

      if (v63[0] && (v34 = *v70[2], v80.n128_u64[0] = v63[1], v80.n128_u64[1] = v34, LODWORD(v81) = -1, (v35 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v70[0] + 768, &v80)) != 0) && (v36 = *v35) != 0)
      {
        v62 = 0;
        v59[1] = 0;
        v60 = 0;
        v61 = 0;
        v59[0] = *(a1 + 56);
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(v59, v64);
        ++v61;
        v37 = (*(v66 + 120))(a4, *(a1 + 56));
        if ((*(v66 + 128))())
        {
          do
          {
            v38 = (*(v66 + 136))(v37);
            v39 = (*(v66 + 144))(v37);
            v80.n128_u64[0] = v38;
            v80.n128_u64[1] = v39;
            v40 = re::DynamicArray<re::RigNodeConstraint>::add(v59, &v80);
          }

          while (((*(v66 + 128))(v37, v40) & 1) != 0);
        }

        (*(v66 + 152))(v37, *(a1 + 56));
        v80.n128_u64[0] = v36;
        v42 = 126 - 2 * __clz(v60);
        if (v60)
        {
          v43 = v42;
        }

        else
        {
          v43 = 0;
        }

        std::__introsort<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,false>(v62, &v62[2 * v60], &v80, v43, 1, v41);
        if (v64)
        {
          v44 = 0;
          for (i = 0; i < v64; ++i)
          {
            if ((*(a1 + 64) & 1) == 0)
            {
              v80.n128_u8[0] = 7;
              v80.n128_u32[1] = 0;
              v80.n128_u64[1] = "entry";
              v81 = xmmword_1E3054780;
              v82 = 0uLL;
              re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v80);
            }

            v46 = v60;
            if (v60 <= i)
            {
              v71 = 0;
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              v80 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v72 = 136315906;
              v73 = "operator[]";
              v74 = 1024;
              v75 = 789;
              v76 = 2048;
              v77 = i;
              v78 = 2048;
              v79 = v46;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_62:
              v71 = 0;
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              v80 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v72 = 136315906;
              v73 = "operator[]";
              v74 = 1024;
              v75 = 789;
              v76 = 2048;
              v77 = i;
              v78 = 2048;
              v79 = v46;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            v28(a1, "key", 0, v62[v44], v70, v68, 0);
            v46 = v60;
            if (v60 <= i)
            {
              goto LABEL_62;
            }

            v30(a1, "value", 0, v62[v44 + 1], v69, v67, 0);
            re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endDictionaryEntry((a1 + 24));
            v44 += 2;
          }
        }

        if (v59[0] && v62)
        {
          (*(*v59[0] + 40))();
        }
      }

      else
      {
        v55 = (*(v66 + 120))(a4, *(a1 + 56));
        (*(v66 + 128))();
        if (v64)
        {
          for (j = 0; j < v64; ++j)
          {
            if ((*(a1 + 64) & 1) == 0)
            {
              v80.n128_u8[0] = 7;
              v80.n128_u32[1] = 0;
              v80.n128_u64[1] = "entry";
              v81 = xmmword_1E3054780;
              v82 = 0uLL;
              re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v80);
            }

            v57 = (*(v66 + 136))(v55);
            v28(a1, "key", 0, v57, v70, v68, 0);
            v58 = (*(v66 + 144))(v55);
            v30(a1, "value", 0, v58, v69, v67, 0);
            re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endDictionaryEntry((a1 + 24));
            (*(v66 + 128))(v55);
          }
        }

        (*(v66 + 152))(v55, *(a1 + 56));
      }
    }

    goto LABEL_60;
  }

  return v25 & 1;
}

uint64_t re::serializeUnion<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_20:
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
      goto LABEL_21;
    }

    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_20;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  if (a7)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      LOBYTE(v22) = 1;
      DWORD1(v22) = 16;
      *(&v22 + 1) = a2;
      v23 = 0u;
      v24 = 0u;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v22);
      v20[0] = 0;
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "tag", 0, v20, "uint64", 0);
      if (v20[0] < *(*(a6 + 2) + 96))
      {
        re::TypeInfo::unionMember(a6, v20[0], &v22);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, "value", 0, 0, &v22, &v22, 1);
        }
      }

      goto LABEL_13;
    }

LABEL_21:
    v14 = 0;
    return v14 & 1;
  }

  if (*(a1 + 64))
  {
    goto LABEL_21;
  }

  LOBYTE(v22) = 1;
  DWORD1(v22) = 16;
  *(&v22 + 1) = a2;
  v23 = 0u;
  v24 = 0u;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v22);
  re::TypeInfo::TypeInfo(&v22, a5);
  Tag = re::UnionAccessor::readTag(&v22, a4);
  re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "tag", 0, &Tag, "uint64", 0);
  if (Tag < *(*(a5 + 2) + 96))
  {
    re::TypeInfo::unionMember(a5, Tag, v20);
    if ((*(a1 + 64) & 1) == 0)
    {
      (*(*a1 + 72))(a1, "value", 0, a4, v20, v20, 0);
    }
  }

LABEL_13:
  if (*(a1 + 64))
  {
    goto LABEL_21;
  }

  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState((a1 + 24), 1);
  v13 = *(a1 + 152) + 48 * *(a1 + 136);
  ++*(v13 - 16);
  v14 = *(a1 + 64) ^ 1;
  return v14 & 1;
}

uint64_t re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, re::TypeInfo *this, re::TypeInfo *a6, uint64_t a7)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    if (*(*(this + 2) + 49))
    {
      v23 = *(a1 + 192);
      v43[0] = 0x2686EB529B3EE220;
      v43[1] = "DynamicString";
      re::TypeRegistry::typeInfo(v23, v43, &v45);
      v24 = re::TypeInfo::TypeInfo(v44, &v45 + 8);
      if (v43[0])
      {
        if (v43[0])
        {
        }
      }

      v25 = v44;
      v26 = v44;
      v27 = a1;
      v28 = a2;
      v29 = a3;
    }

    else
    {
      v14 = re::TypeInfo::name(this);
      if ((*v14 & 0xFFFFFFFFFFFFFFFELL) != 0x2686EB529B3EE220)
      {
        goto LABEL_6;
      }

      v15 = v14[1];
      if (v15 != "DynamicString")
      {
        if (strcmp(v15, "DynamicString"))
        {
          goto LABEL_6;
        }
      }

      v27 = a1;
      v28 = a2;
      v29 = a3;
      v25 = this;
      v26 = this;
    }

    re::serializeDynamicString<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(v27, v28, v29, 0, v25, v26, 1);
    goto LABEL_38;
  }

LABEL_6:
  v16 = *(this + 2);
  v17 = *(v16 + 48);
  if ((v17 & 0x10) == 0 && *(this + 12) == 8)
  {
    v18 = *(v16 + 160);
    if (v18)
    {
      v19 = *this;
      v20 = *a6;
      *&v45 = &unk_1F5CB61F8;
      *(&v45 + 1) = a1;
      *&v46 = v19;
      *(&v46 + 1) = v20;
      v47 = 0uLL;
      v48 = 1;
      v49 = 0;
      v50 = 0;
      v44[0].n128_u64[0] = a2;
      v44[0].n128_u32[2] = a3;
      v21 = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(&v47, v44);
      v18(&v45, a4, v21);
      v22 = *(a1 + 64) ^ 1;
      *&v45 = &unk_1F5CB61F8;
      if (v47)
      {
        if ((v48 & 1) == 0)
        {
          (*(*v47 + 40))();
        }
      }

      return v22 & 1;
    }
  }

  if ((v17 & 4) == 0)
  {
    if (*(a1 + 64))
    {
LABEL_14:
      v22 = 0;
      return v22 & 1;
    }

    LOBYTE(v45) = 1;
    DWORD1(v45) = 0;
    *(&v45 + 1) = a2;
    v46 = 0u;
    v47 = 0u;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v45);
    if (this == a6)
    {
      goto LABEL_25;
    }

    if (*this == *a6)
    {
      v32 = **(this + 2);
      v33 = **(a6 + 2);
      if (v32 == v33)
      {
        v35 = WORD1(v32) == WORD1(v33);
        v34 = (v33 ^ v32) & 0xFFFFFF00000000;
        v35 = v35 && v34 == 0;
        if (v35)
        {
          goto LABEL_25;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, v31))
    {
LABEL_25:
      re::internal::serializeMembersWithoutVersioning<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a4, this, a7);
LABEL_36:
      if (*(a1 + 64))
      {
        goto LABEL_14;
      }

      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState((a1 + 24), 1);
      v42 = *(a1 + 152) + 48 * *(a1 + 136);
      ++*(v42 - 16);
LABEL_38:
      v22 = *(a1 + 64) ^ 1;
      return v22 & 1;
    }

    if (*(this + 12) == *(a6 + 12))
    {
      re::internal::serializeMembersWithVersioning<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a4, this, a6, a7);
    }

    else
    {
      v36 = re::TypeInfo::name(this)[1];
      re::TypeInfo::name(a6);
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v37, v38, v39, v40, v41, v36);
    }

    goto LABEL_36;
  }

  return re::internal::serializeObjectWithOneMember<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
}

uint64_t re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<short>(uint64_t a1, const char *a2, uint64_t a3, char *a4, uint64_t a5, char a6)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  if (a6)
  {
    a4 = 0;
  }

  if (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, a4, 2uLL))
  {
    if ((a6 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }

    return 1;
  }

  else
  {
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, a5);
    return 0;
  }
}

uint64_t re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(uint64_t a1, const char *a2, uint64_t a3, char *a4, uint64_t a5, char a6)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  if (a6)
  {
    a4 = 0;
  }

  if (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, a4, 4uLL))
  {
    if ((a6 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }

    return 1;
  }

  else
  {
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, a5);
    return 0;
  }
}

uint64_t re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(uint64_t a1, const char *a2, uint64_t a3, char *a4, uint64_t a5, char a6)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  if (a6)
  {
    a4 = 0;
  }

  if (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, a4, 8uLL))
  {
    if ((a6 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }

    return 1;
  }

  else
  {
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, a5);
    return 0;
  }
}

uint64_t re::internal::serializeEnumAsBinary<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, re::TypeInfo *a4, re::internal *a5, re::TypeInfo *a6, int a7)
{
  if (a7)
  {
    v11 = *(a1 + 24);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), v25);
    re::TypeInfo::TypeInfo(v24, v26);
    re::internal::translateType(v11, v24, v25);
    if ((a1[64] & 1) == 0)
    {
      return (*(*a1 + 72))(a1, a2, a3, 0, v25, v25, 1);
    }

    return 0;
  }

  v15 = *a5;
  if (a5 == a6)
  {
    goto LABEL_8;
  }

  if (v15 == *a6)
  {
    v19 = **(a5 + 2);
    v20 = **(a6 + 2);
    if (v19 == v20)
    {
      v22 = WORD1(v19) == WORD1(v20);
      v21 = (v20 ^ v19) & 0xFFFFFF00000000;
      v22 = v22 && v21 == 0;
      if (v22)
      {
        goto LABEL_8;
      }
    }

LABEL_15:
    result = re::internal::findEnumConstantToSerialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a4, a5, a6, 1);
    if (!result)
    {
      return result;
    }

    a4 = result;
    v23 = *(a1 + 24);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), v25);
    re::TypeInfo::TypeInfo(v24, v26);
    re::internal::translateType(v23, v24, v25);
    if (a1[64])
    {
      return 0;
    }

    v16 = *(*a1 + 72);
    v17 = v25;
    v18 = v25;
    return v16(a1, a2, a3, a4, v17, v18, 0);
  }

  if (!re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_15;
  }

  v15 = *a5;
LABEL_8:
  re::TypeRegistry::typeInfo(v15, *(*(a5 + 2) + 80), v25);
  re::TypeInfo::TypeInfo(v24, v26);
  if (a1[64])
  {
    return 0;
  }

  v16 = *(*a1 + 72);
  v17 = v24;
  v18 = v24;
  return v16(a1, a2, a3, a4, v17, v18, 0);
}

double re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginOptional(_anonymous_namespace_ *a1, const char *a2, int a3, char *__src, int a5)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, __src, 1uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "BOOL");
    }

    v9 = *__src;
    LOBYTE(v11) = 3;
    DWORD1(v11) = a5;
    *(&v11 + 1) = a2;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v13 = v9;
    return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v11);
  }

  return result;
}

_anonymous_namespace_ *re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endOptional(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == *(*(result + 16) + 48 * *(result + 14) - 24))
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(result, 3);
      v2 = *(v1 + 128) + 48 * *(v1 + 112);
      ++*(v2 - 16);
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v5);
      if (v6)
      {
        v3 = *&v7[7];
      }

      else
      {
        v3 = v7;
      }

      if (*(*(v1 + 128) + 48 * *(v1 + 112) - 24) <= 0)
      {
        v4 = "Optional should not have a value.";
      }

      else
      {
        v4 = "Optional requires a value.";
      }

      re::DynamicString::format("Failed to serialize optional type %s. %s", v8, v3, v4);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v8);
      if (*&v8[0])
      {
        if (BYTE8(v8[0]))
        {
          (*(**&v8[0] + 40))();
        }

        memset(v8, 0, sizeof(v8));
      }

      result = v5;
      if (v5)
      {
        if (v6)
        {
          return (*(*v5 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, char *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v20 = v5;
    v21 = v6;
    if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::isValidSize(a1, a2, *a4))
    {
      if ((a5 & 4) == 0 && (*(a1 + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, a4, 4uLL) & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "uint32");
      }

      v12 = *a4;
      if ((a5 & 8) != 0)
      {
        if (v12)
        {
          v13 = 73;
        }

        else
        {
          v13 = 78;
        }

        LOBYTE(v15) = v13;
        if ((*(a1 + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &v15, 1uLL) & 1) == 0)
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "uint8");
        }

        v12 = *a4;
      }

      LOBYTE(v15) = 5;
      DWORD1(v15) = a5;
      *(&v15 + 1) = a2;
      v16 = 0;
      v18 = 0;
      v19 = 0;
      v17 = v12;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v15);
      v7 = *(a1 + 40) ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeArray(uint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((*(result + 40) & 1) == 0)
  {
    v7 = result;
    v8 = a4 * a3;
    if (a5)
    {
      a2 = 0;
    }

    result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, a2, v8);
    if (result)
    {
      if ((a5 & 2) == 0)
      {
        v9 = *(v7 + 16) + 48 * *(v7 + 14);
        *(v9 - 16) += a4;
      }
    }

    else
    {

      return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v7, 0, "Array");
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == *(*(result + 16) + 48 * *(result + 14) - 24))
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(result, 5);
      v2 = *(v1 + 128) + 48 * *(v1 + 112);
      ++*(v2 - 16);
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v5);
      if (v6)
      {
        v3 = *&v7[7];
      }

      else
      {
        v3 = v7;
      }

      v4 = *(v1 + 128) + 48 * *(v1 + 112);
      re::DynamicString::format("Failed to deserialize array %s. Expected number of elements: %lld. Actual number of elements: %lld.", v8, v3, *(v4 - 24), *(v4 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v8);
      if (*&v8[0])
      {
        if (BYTE8(v8[0]))
        {
          (*(**&v8[0] + 40))();
        }

        memset(v8, 0, sizeof(v8));
      }

      result = v5;
      if (v5)
      {
        if (v6)
        {
          return (*(*v5 + 40))();
        }
      }
    }
  }

  return result;
}

BOOL re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::isValidSize(_anonymous_namespace_ *a1, const char *a2, unint64_t a3)
{
  v3 = HIDWORD(a3);
  if (HIDWORD(a3))
  {
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v8);
    if (v9)
    {
      v6 = *&v10[7];
    }

    else
    {
      v6 = v10;
    }

    re::DynamicString::format("Failed to serialize array/string %s. Max length exceeded: actual length %zu, max length: %u.", v11, v6, a3, 0xFFFFFFFFLL);
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v11);
    if (*&v11[0])
    {
      if (BYTE8(v11[0]))
      {
        (*(**&v11[0] + 40))();
      }

      memset(v11, 0, sizeof(v11));
    }

    if (v8 && (v9 & 1) != 0)
    {
      (*(*v8 + 40))();
    }
  }

  return v3 == 0;
}

uint64_t re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginDictionary(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, char *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v19 = v5;
    v20 = v6;
    if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::isValidSize(a1, a2, *a4))
    {
      if ((*(a1 + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, a4, 4uLL) & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "uint32");
      }

      v12 = *a4;
      LOBYTE(v14) = 6;
      DWORD1(v14) = a5;
      *(&v14 + 1) = a2;
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v16 = v12;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v14);
      v7 = *(a1 + 40) ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

_anonymous_namespace_ *re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == 2)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(result, 7);
      v2 = *(v1 + 128) + 48 * *(v1 + 112);
      ++*(v2 - 16);
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v4);
      if (v5)
      {
        v3 = *&v6[7];
      }

      else
      {
        v3 = v6;
      }

      re::DynamicString::format("Failed to deserialize dictionary entry %s. Expected 2 objects (key+value). Actual number of objects: %lld.", v7, v3, *(*(v1 + 128) + 48 * *(v1 + 112) - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v7);
      if (*&v7[0])
      {
        if (BYTE8(v7[0]))
        {
          (*(**&v7[0] + 40))();
        }

        memset(v7, 0, sizeof(v7));
      }

      result = v4;
      if (v4)
      {
        if (v5)
        {
          return (*(*v4 + 40))();
        }
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endDictionary(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == *(*(result + 16) + 48 * *(result + 14) - 24))
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(result, 6);
      v2 = *(v1 + 128) + 48 * *(v1 + 112);
      ++*(v2 - 16);
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v5);
      if (v6)
      {
        v3 = *&v7[7];
      }

      else
      {
        v3 = v7;
      }

      v4 = *(v1 + 128) + 48 * *(v1 + 112);
      re::DynamicString::format("Failed to deserialize dictionary %s. Expected number of entries: %lld. Actual number of entries: %lld.", v8, v3, *(v4 - 24), *(v4 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v8);
      if (*&v8[0])
      {
        if (BYTE8(v8[0]))
        {
          (*(**&v8[0] + 40))();
        }

        memset(v8, 0, sizeof(v8));
      }

      result = v5;
      if (v5)
      {
        if (v6)
        {
          return (*(*v5 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::serializeDynamicString<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
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
  if (*v18 >> 1 != 0x22C6ED80D0CLL || (v19 = v18[1], v19 != "StringID") && strcmp(v19, "StringID"))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    v20 = 0;
    return v20 & 1;
  }

LABEL_14:
  if (a7)
  {
    v29 = 0;
    v21 = re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginString((a1 + 24), a2, a3, &v29, 0);
    v20 = 0;
    if (v21)
    {
      if (v29)
      {
        v22 = a1 + 24;
        v23 = 0;
        v24 = 1;
LABEL_27:
        re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeString(v22, v23, v24);
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    if (v25)
    {
      v26 = v25 >> 1;
    }

    else
    {
      v26 = v25 >> 1;
    }

    v29 = v26;
    v27 = re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginString((a1 + 24), a2, a3, &v29, 0);
    v20 = 0;
    if (v27)
    {
      if (v29)
      {
        if (*(a4 + 8))
        {
          v23 = *(a4 + 16);
        }

        else
        {
          v23 = (a4 + 9);
        }

        v22 = a1 + 24;
        v24 = 0;
        goto LABEL_27;
      }

LABEL_28:
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
      v20 = *(a1 + 64) ^ 1;
    }
  }

  return v20 & 1;
}

void *re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5CB61F8;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

uint64_t re::internal::serializeObjectWithOneMember<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v14 = re::TypeMemberCollection::TypeMemberCollection(v29, *a5, a5[2]);
  re::TypeMemberCollection::operator[](v14, 0, &v27);
  v15 = *(v28 + 24);
  re::TypeRegistry::typeInfo(v27, *v28, v29);
  re::TypeInfo::TypeInfo(v26, v30);
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v18 = *a5[2];
    v19 = a6[2];
    v20 = *v19;
    if (v18 != *v19)
    {
      goto LABEL_14;
    }

    v22 = WORD1(v18) == WORD1(v20);
    v21 = (v20 ^ v18) & 0xFFFFFF00000000;
    v22 = v22 && v21 == 0;
    if (!v22)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((a1[64] & 1) == 0)
    {
      return (*(*a1 + 72))(a1, a2, a3, a4 + v15, v26, v26, a7);
    }

    return 0;
  }

  if (re::areSameTranslatedVersion(a5, a6, v16))
  {
    goto LABEL_4;
  }

  v19 = a6[2];
LABEL_14:
  if (*(v19 + 96) != 1)
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    return 0;
  }

  re::TypeMemberCollection::TypeMemberCollection(v23, *a6, v19);
  re::TypeMemberCollection::operator[](v23, 0, v24);
  re::TypeRegistry::typeInfo(v24[0], *v24[2], v29);
  re::TypeInfo::TypeInfo(v25, v30);
  if (a1[64])
  {
    return 0;
  }

  return (*(*a1 + 72))(a1, a2, a3, a4 + v15, v26, v25, a7);
}

uint64_t re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginString(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, char *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v19 = v5;
    v20 = v6;
    if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::isValidSize(a1, a2, *a4))
    {
      if ((*(a1 + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, a4, 4uLL) & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, "length", "uint32");
      }

      v12 = *a4;
      LOBYTE(v14) = 8;
      DWORD1(v14) = a5;
      *(&v14 + 1) = a2;
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v16 = v12;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v14);
      v7 = *(a1 + 40) ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeString(uint64_t result, char *a2, char a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v4 = result;
    v5 = *(result + 128) + 48 * *(result + 112);
    v6 = *(v5 - 24);
    if (a3)
    {
      a2 = 0;
    }

    result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, a2, *(v5 - 24));
    if (result)
    {
      if ((a3 & 2) == 0)
      {
        v7 = *(v4 + 16) + 48 * *(v4 + 14);
        *(v7 - 16) += v6;
      }
    }

    else
    {

      return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v4, 0, "string");
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endString(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == *(*(result + 16) + 48 * *(result + 14) - 24))
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(result, 8);
      v2 = *(v1 + 128) + 48 * *(v1 + 112);
      ++*(v2 - 16);
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v5);
      if (v6)
      {
        v3 = *&v7[7];
      }

      else
      {
        v3 = v7;
      }

      v4 = *(v1 + 128) + 48 * *(v1 + 112);
      re::DynamicString::format("Failed to serialize string %s. Expected number of characters: %lld. Actual number of characters: %lld.", &v8, v3, *(v4 - 24), *(v4 - 16));
      *&v11[0] = 400;
      *(&v11[0] + 1) = re::FoundationErrorCategory(void)::instance;
      *&v11[1] = v8;
      *(&v11[2] + 1) = v10;
      *(&v11[1] + 8) = v9;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v11);
      if (*&v11[1])
      {
        if (BYTE8(v11[1]))
        {
          (*(**&v11[1] + 40))();
        }

        memset(&v11[1], 0, 32);
      }

      result = v5;
      if (v5)
      {
        if (v6)
        {
          return (*(*v5 + 40))();
        }
      }
    }
  }

  return result;
}

void re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5CB61F8;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::error(uint64_t *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::beginField(uint64_t a1, int a2, uint64_t a3)
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
  *(v3 + 16 * v4 - 8) = a2;
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  *(v5 + 16 * v4 - 16) = a3;
  return 1;
}

double re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::beginObject(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = *(a1 + 8);
  if ((*(v3 + 64) & 1) == 0)
  {
    v4 = *(v2 + 16 * *(a1 + 40) - 16);
    v6[0].n128_u8[0] = 1;
    v6[0].n128_u32[1] = 0;
    v6[0].n128_u64[1] = v4;
    memset(&v6[1], 0, 32);
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((v3 + 24), v6);
  }

  v6[0].n128_u64[0] = "";
  v6[0].n128_u32[2] = 0;
  *&result = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(a1 + 32, v6).n128_u64[0];
  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::endObject(_anonymous_namespace_ *result)
{
  v1 = *(result + 12);
  --*(result + 5);
  *(result + 12) = v1 + 2;
  v2 = *(result + 1);
  if ((*(v2 + 64) & 1) == 0)
  {
    result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState((v2 + 24), 1);
    v3 = *(v2 + 152) + 48 * *(v2 + 136);
    ++*(v3 - 16);
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::beginArray(uint64_t a1, uint64_t a2)
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray((*(a1 + 8) + 24), *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::beginDictionary(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(a1 + 32, (v4 + 16 * *(a1 + 40) - 16));
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  v6 = v5 + 16 * *(a1 + 40);
  v7 = *(a1 + 8);
  v9 = a2;
  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginDictionary((v7 + 24), *(v6 - 16), *(v6 - 8), &v9, 0);
}

void re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::beginDictionaryEntry(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = a1 + 56;
  }

  else
  {
    v1 = *(a1 + 64);
  }

  re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext::beginDictionaryEntry(v1 + 16 * *(a1 + 40) - 16, *(a1 + 8) + 24);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::beginDictionaryValue(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 64);
  }

  v2 = v1 + 16 * *(result + 40);
  *(v2 - 8) = 1;
  *(v2 - 16) = "value";
  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::endDictionary(uint64_t a1)
{
  result = re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endDictionary((*(a1 + 8) + 24));
  v3 = *(a1 + 48);
  --*(a1 + 40);
  *(a1 + 48) = v3 + 2;
  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::beginOptional(uint64_t a1, unsigned __int8 a2)
{
  __src = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginOptional((*(a1 + 8) + 24), *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &__src, 0);
  return __src;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, char a2)
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<unsigned char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, "BOOL", 0);
}

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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<unsigned char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, "char", 0);
}

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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<unsigned char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, "int8", 0);
}

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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<unsigned char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, "uint8", 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, __int16 a2)
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<short>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, "int16", 0);
}

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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<short>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, "uint16", 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, int a2)
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, "int32", 0);
}

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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, "uint32", 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, uint64_t a2)
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, "uint64", 0);
}

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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, "int64", 0);
}

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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, "uint64", 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, float a2)
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, "float", 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, double a2)
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, "double", 0);
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::serializeString(uint64_t a1, char *a2, uint64_t a3)
{
  v8 = a3;
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginString((*(a1 + 8) + 24), *(v5 + 16 * *(a1 + 40) - 16), *(v5 + 16 * *(a1 + 40) - 8), &v8, 0))
  {
    v6 = v8 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeString(*(a1 + 8) + 24, a2, 0);
  }

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endString((*(a1 + 8) + 24));
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::serializeData(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = a3;
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginBLOB((*(a1 + 8) + 24), *(v5 + 16 * *(a1 + 40) - 16), *(v5 + 16 * *(a1 + 40) - 8), &v7, 0))
  {
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeBLOB(*(a1 + 8) + 24, a2, 0);
  }

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endBLOB((*(a1 + 8) + 24));
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::serializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
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

  re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginPointer((*(a1 + 8) + 24), *(v6 + 16 * *(a1 + 40) - 16), *(v6 + 16 * *(a1 + 40) - 8), &v8, 0);
  if (a2)
  {
    v9 = a2;
    (*(**(a3 + 32) + 16))(*(a3 + 32), a1, &v9);
  }

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endPointer((*(a1 + 8) + 24));
}

_BYTE *re::snapshot::Serializer<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>::write(uint64_t a1, uint64_t a2, re **this)
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
        return (*(*result + 72))(result, *(v9 + 16 * *(a1 + 40) - 16), *(v9 + 16 * *(a1 + 40) - 8), a2, v18, &v16, 0);
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

      return (*(*a1 + 56))(a1, "Stream schema doesn't support type '%s', writing field '%s'(%d)", v11, *(v12 + 16 * *(a1 + 40) - 16), *(v12 + 16 * *(a1 + 40) - 8));
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

    return (*(*a1 + 56))(a1, "No typeinfo while writing field '%s'(%d)", *(v10 + 16 * *(a1 + 40) - 16), *(v10 + 16 * *(a1 + 40) - 8));
  }

  return result;
}

uint64_t re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginBLOB(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, char *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v19 = v5;
    v20 = v6;
    if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::isValidSize(a1, a2, *a4))
    {
      if ((a5 & 4) == 0 && (*(a1 + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, a4, 4uLL) & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, "length", "uint32");
      }

      v12 = *a4;
      LOBYTE(v14) = 4;
      DWORD1(v14) = a5;
      *(&v14 + 1) = a2;
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v16 = v12;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v14);
      v7 = *(a1 + 40) ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeBLOB(uint64_t result, char *a2, char a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v4 = result;
    v5 = *(result + 128) + 48 * *(result + 112);
    v6 = *(v5 - 24);
    if (a3)
    {
      a2 = 0;
    }

    result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, a2, *(v5 - 24));
    if (result)
    {
      if ((a3 & 2) == 0)
      {
        v7 = *(v4 + 16) + 48 * *(v4 + 14);
        *(v7 - 16) += v6;
      }
    }

    else
    {

      return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v4, 0, "BLOB");
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endBLOB(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == *(*(result + 16) + 48 * *(result + 14) - 24))
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(result, 4);
      v2 = *(v1 + 128) + 48 * *(v1 + 112);
      ++*(v2 - 16);
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v5);
      if (v6)
      {
        v3 = *&v7[7];
      }

      else
      {
        v3 = v7;
      }

      v4 = *(v1 + 128) + 48 * *(v1 + 112);
      re::DynamicString::format("Failed to serialize BLOB %s. Expected number of bytes: %lld. Actual number of bytes: %lld.", v8, v3, *(v4 - 24), *(v4 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v8);
      if (*&v8[0])
      {
        if (BYTE8(v8[0]))
        {
          (*(**&v8[0] + 40))();
        }

        memset(v8, 0, sizeof(v8));
      }

      result = v5;
      if (v5)
      {
        if (v6)
        {
          return (*(*v5 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginPointer(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, int *a4, int a5)
{
  if (*(a1 + 40))
  {
    v5 = 0;
    return v5 & 1;
  }

  v10 = *a4;
  if (*a4 == 2)
  {
    v11 = 73;
    goto LABEL_9;
  }

  if (v10 == 1)
  {
    v11 = 82;
    goto LABEL_9;
  }

  if (!v10)
  {
    v11 = 78;
LABEL_9:
    LOBYTE(__src) = v11;
    if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &__src, 1uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "uint8");
    }

    v12 = *a4 != 0;
    LOBYTE(__src) = 9;
    DWORD1(__src) = a5;
    *(&__src + 1) = a2;
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v16 = v12;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &__src);
    v5 = *(a1 + 40) ^ 1;
    return v5 & 1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected PointerEncoding.", "!Unreachable code", "beginPointer", 410);
  result = _os_crash();
  __break(1u);
  return result;
}

_anonymous_namespace_ *re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endPointer(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == *(*(result + 16) + 48 * *(result + 14) - 24))
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(result, 9);
      v2 = *(v1 + 128) + 48 * *(v1 + 112);
      ++*(v2 - 16);
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v4);
      if (v5)
      {
        v3 = *&v6[7];
      }

      else
      {
        v3 = v6;
      }

      re::DynamicString::format("Failed to deserialize pointer %s. No value was provided.", v7, v3);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v7);
      if (*&v7[0])
      {
        if (BYTE8(v7[0]))
        {
          (*(**&v7[0] + 40))();
        }

        memset(v7, 0, sizeof(v7));
      }

      result = v4;
      if (v4)
      {
        if (v5)
        {
          return (*(*v4 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v19);
  if (v19[0] == 1)
  {
    re::TypeInfo::TypeInfo(v16, &v20);
    if (*(v17 + 96) || (re::TypeRegistry::typeInfo(v16[0], *(v17 + 80), v21), v21[0] == 1))
    {
      re::internal::serializeMembersWithoutVersioning<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, v16, a4);
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

uint64_t re::internal::serializeMembersWithVersioning<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v58 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v50);
  re::TypeRegistry::typeInfo(*a4, *(a4[2] + 80), v46);
  if (v46[0] == 1)
  {
    if ((v50[0] & 1) == 0)
    {
      v11 = re::TypeInfo::name(&v47)[1];
      re::TypeInfo::name(a3);
      return re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Base class %s removed from type %s.", v12, v13, v14, v15, v16, v11);
    }

    if (v51 == v47)
    {
      v18 = *v53;
      v19 = *v49;
      if (*v53 == *v49)
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

    else if (re::areSameTranslatedVersion(&v51, &v47, v10))
    {
LABEL_5:
      re::internal::serializeMembersWithoutVersioning<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, &v51, a5);
      goto LABEL_15;
    }

    if (v52 == v48)
    {
      re::internal::serializeMembersWithVersioning<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, &v51, &v47, a5);
    }

    else
    {
      v22 = re::TypeInfo::name(&v51)[1];
      re::TypeInfo::name(&v47);
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v23, v24, v25, v26, v27, v22);
    }
  }

LABEL_15:
  re::TypeMemberCollection::TypeMemberCollection(v45, *a3, a3[2]);
  result = re::TypeMemberCollection::TypeMemberCollection(v43, *a4, a4[2]);
  if (v44)
  {
    for (i = 0; i < v44; ++i)
    {
      if (*(a1 + 64))
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v43, i, v41);
      if (*(v42 + 28) == 1)
      {
        v29 = *(v42 + 16);
        if (strlen(v29) >= 3 && *v29 == 109)
        {
          v29 += 2 * (*(v29 + 1) == 95);
        }

        v30 = *(v42 + 32);
        v31 = *(*a4 + 856);
        if (!v31 || (v31 = re::internal::TypeTranslationTable::translateMember(v31, v41), v31 == -1))
        {
          v33 = *re::foundationSerializationLogObjects(v31);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = v33;
            v35 = re::TypeInfo::name(a4)[1];
            *buf = 136315394;
            v55 = v35;
            v56 = 2080;
            v57 = v29;
            _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_INFO, "Skipping unknown member %s.%s.", buf, 0x16u);
          }

          v36 = *(a1 + 192);
          re::TypeRegistry::typeInfo(v41[0], *v42, buf);
          re::TypeInfo::TypeInfo(v39, &v55 + 4);
          result = re::internal::translateType(v36, v39, buf);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v29, v30, 0, buf, buf, 1);
          }
        }

        else
        {
          re::TypeMemberCollection::operator[](v45, v31, v39);
          v32 = *(v40 + 24);
          re::TypeRegistry::typeInfo(v39[0], *v40, buf);
          re::TypeInfo::TypeInfo(v38, &v55 + 4);
          re::TypeRegistry::typeInfo(v41[0], *v42, buf);
          result = re::TypeInfo::TypeInfo(v37, &v55 + 4);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v29, v30, a2 + v32, v38, v37, a5);
          }
        }
      }
    }
  }

  return result;
}

uint64_t re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(uint64_t a1, const re::StringID *a2, uint64_t a3)
{
  result = re::TypeRegistry::typeID(*(a1 + 192), a2, &v6);
  if (v6)
  {
    v9 = a3;
    v8 = v7 | 0xFFFFFFFF00000000;
    return re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(a1 + 208, &v8, &v9);
  }

  return result;
}

uint64_t re::serializeBool<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<unsigned char>(a1 + 24, a2, a3, v14, "BOOL", a7);
}

uint64_t re::serializeChar<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<unsigned char>(a1 + 24, a2, a3, v14, "char", a7);
}

uint64_t re::serializeI8<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<unsigned char>(a1 + 24, a2, a3, v14, "int8", a7);
}

uint64_t re::serializeI16<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<short>(a1 + 24, a2, a3, v14, "int16", a7);
}

uint64_t re::serializeI32<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1 + 24, a2, a3, v14, "int32", a7);
}

uint64_t re::serializeI64<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, a2, a3, v14, "int64", a7);
}

uint64_t re::serializeU8<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<unsigned char>(a1 + 24, a2, a3, v14, "uint8", a7);
}

uint64_t re::serializeU16<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<short>(a1 + 24, a2, a3, v14, "uint16", a7);
}

uint64_t re::serializeU32<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1 + 24, a2, a3, v14, "uint32", a7);
}

uint64_t re::serializeU64<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, a2, a3, v14, "uint64", a7);
}

uint64_t re::serializeFloat<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1 + 24, a2, a3, v14, "float", a7);
}

uint64_t re::serializeDouble<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
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

  return re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, a2, a3, v14, "double", a7);
}

uint64_t re::serializeCString<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *a5, const re::TypeInfo *a6, int a7)
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
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
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
    v14 = re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginPointer((a1 + 24), a2, a3, &v32, 0);
    v20 = 0;
    if (v14)
    {
      if (!v32)
      {
        goto LABEL_28;
      }

      if (v32 == 1)
      {
        re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Found pointer reference instead of C string.", v15, v16, v17, v18, v19, v31);
LABEL_22:
        v20 = 0;
        return v20 & 1;
      }

      v31 = 0;
      if (!re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginString((a1 + 24), a2, 0, &v31, 0))
      {
LABEL_28:
        re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
        v20 = *(a1 + 64) ^ 1;
        return v20 & 1;
      }

      if (!v31)
      {
LABEL_27:
        re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
        goto LABEL_28;
      }

      v24 = a1 + 24;
      v23 = 0;
      v25 = 1;
LABEL_26:
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeString(v24, v23, v25);
      goto LABEL_27;
    }
  }

  else
  {
    v32 = 2 * (*a4 != 0);
    v21 = re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginPointer((a1 + 24), a2, a3, &v32, 0);
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
      if (!re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginString((a1 + 24), a2, 0, &v31, 0))
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

uint64_t re::serializeStringID<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
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
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    goto LABEL_23;
  }

LABEL_14:
  if (!a7)
  {
    v26 = strlen(*(a4 + 8));
    if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginString((a1 + 24), a2, a3, &v26, 0))
    {
      if (v26)
      {
        v23 = *(a4 + 8);
        v22 = a1 + 24;
        v24 = 0;
        goto LABEL_21;
      }

LABEL_22:
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
      v21 = *(a1 + 64) ^ 1;
      return v21 & 1;
    }

LABEL_23:
    v21 = 0;
    return v21 & 1;
  }

  v26 = 0;
  v20 = re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginString((a1 + 24), a2, a3, &v26, 0);
  v21 = 0;
  if (v20)
  {
    if (v26)
    {
      v22 = a1 + 24;
      v23 = 0;
      v24 = 1;
LABEL_21:
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeString(v22, v23, v24);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  return v21 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
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
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
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
    v26 = *(a1 + 184);
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
      if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginString((a1 + 24), a2, a3, v40, 0))
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

          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeString(a1 + 24, v29, 0);
        }

        re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
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
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Failed to write string for %s (type %s) using serialization callback.", v30, v31, v32, v33, v34, a2);
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
  v14 = re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginString((a1 + 24), a2, a3, &v35, 0);
  v15 = 0;
  if (v14)
  {
    if (v35)
    {
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeString(a1 + 24, 0, 1);
    }

    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
LABEL_9:
    v15 = *(a1 + 64) ^ 1;
  }

  return v15 & 1;
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = *a2;
  if (!*a1)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v6 % *(a1 + 24);
  v8 = *(*(a1 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(a1, v7, v6);
    *(v10 + 4) = *a2;
    *(v10 + 16) = *a3;
    result = v10 + 16;
    ++*(a1 + 40);
    return result;
  }

  v9 = *(a1 + 16);
  while (*(v9 + 24 * v8 + 4) != v6)
  {
    v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  ++*(a1 + 40);
  v12 = v9 + 24 * v8;
  *(v12 + 16) = *a3;
  return v12 + 16;
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 24 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 24 * v4;
}

void re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v9, v4, a2);
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
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::move(a1, v9);
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v9);
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

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(v4, *(v7 + v5 + 4) % *(v4 + 24));
        *(result + 4) = *(*(a2 + 16) + v5 + 4);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 24;
    }
  }

  return result;
}

uint64_t re::SerializerV1<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::serializeCString(_BYTE *a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *a5, const re::TypeInfo *a6)
{
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_20:
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
      goto LABEL_21;
    }

    v18 = **(a5 + 2);
    v19 = **(a6 + 2);
    if (v18 != v19)
    {
      goto LABEL_20;
    }

    v21 = WORD1(v18) == WORD1(v19);
    v20 = (v19 ^ v18) & 0xFFFFFF00000000;
    v21 = v21 && v20 == 0;
    if (!v21)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  if (*a4)
  {
    if (a1[256] == 1)
    {
      v26 = *a4;
      v12 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet((a1 + 264), &v26);
      if (v12)
      {
        v13 = *v12;
        v25 = 1;
        LODWORD(v26) = v13;
        v14 = re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginPointer((a1 + 24), a2, a3, &v25, 0);
        v15 = 0;
        if (v14)
        {
          if ((a1[64] & 1) == 0)
          {
            re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>((a1 + 24), "ID", 0, &v26, "Reference ID", 0);
          }

          goto LABEL_23;
        }

        return v15 & 1;
      }
    }

    v25 = 2;
    if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginPointer((a1 + 24), a2, a3, &v25, 0))
    {
      v26 = strlen(*a4);
      if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginString((a1 + 24), a2, 0, &v26, 0))
      {
        if (v26)
        {
          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeString((a1 + 24), *a4, 0);
        }

        re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
        re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
        v16 = *a4;
        v17 = **(a5 + 2);
        *&v24 = *a5;
        *(&v24 + 1) = v17;
        re::internal::SharedObjectGraph::addObject((a1 + 256), v16, &v24);
        goto LABEL_24;
      }
    }

LABEL_21:
    v15 = 0;
    return v15 & 1;
  }

  LODWORD(v26) = 0;
  v22 = re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginPointer((a1 + 24), a2, a3, &v26, 0);
  v15 = 0;
  if (v22)
  {
LABEL_23:
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
LABEL_24:
    v15 = a1[64] ^ 1;
  }

  return v15 & 1;
}

uint64_t re::SerializerV1<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::serializePointer(uint64_t a1, const char *a2, uint64_t a3, char **a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
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
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, this, a6);
    goto LABEL_31;
  }

  v16 = 1;
LABEL_5:
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v42);
  re::TypeInfo::TypeInfo(v41, v43);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v42);
  re::TypeInfo::TypeInfo(v40, v43);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v23 = *v41[2];
    *&v39 = v41[0];
    *(&v39 + 1) = v23;
    if (!v41[0])
    {
      goto LABEL_8;
    }
  }

  else
  {
    re::internal::actualType(a4, this, &v39);
    if (!v39)
    {
LABEL_8:
      v17 = re::TypeInfo::name(this);
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Failed to get actual type of polymorphic object. Type %s.", v18, v19, v20, v21, v22, v17[1]);
LABEL_31:
      v27 = 0;
      return v27 & 1;
    }
  }

  re::TypeRegistry::typeInfo(*this, &v39, &v42);
  re::TypeInfo::TypeInfo(v38, v43);
  if ((a7 & 1) == 0)
  {
    v24 = *a4;
    if (*a4)
    {
      if (*(a1 + 256) == 1)
      {
        v42 = *a4;
        v25 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 264, &v42);
        if (v25)
        {
          LODWORD(v42) = *v25;
          v37 = 1;
          v26 = re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginPointer((a1 + 24), a2, a3, &v37, 0);
          v27 = 0;
          if (v26)
          {
            if ((*(a1 + 64) & 1) == 0)
            {
              re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1 + 24, "ID", 0, &v42, "Reference ID", 0);
            }

            goto LABEL_18;
          }

          return v27 & 1;
        }

        v24 = *a4;
      }

      v36 = v39;
      re::internal::SharedObjectGraph::beginObject((a1 + 256), v24, &v36);
      LODWORD(v42) = 2;
      if (!re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginPointer((a1 + 24), a2, a3, &v42, 0))
      {
        goto LABEL_31;
      }

      if (isPointerToPolymorphicType)
      {
        re::internal::serializePolymorphicObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, *a4, v38, v40, v16);
      }

      else if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, *a4, v41, v40, 0);
      }

      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
      if (*(a1 + 256) == 1)
      {
        --*(a1 + 408);
        ++*(a1 + 416);
      }

      goto LABEL_19;
    }
  }

  LODWORD(v42) = 0;
  v28 = re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginPointer((a1 + 24), a2, a3, &v42, 0);
  v27 = 0;
  if (v28)
  {
LABEL_18:
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
LABEL_19:
    v27 = *(a1 + 64) ^ 1;
  }

  return v27 & 1;
}

void *re::internal::SharedObjectGraph::addObject(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  result = re::internal::SharedObjectGraph::beginObject(a1, a2, &v5);
  if (*a1 == 1)
  {
    --*(a1 + 152);
    ++*(a1 + 160);
  }

  return result;
}

uint64_t re::internal::serializePolymorphicObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, re::TypeRegistry **a6, int a7)
{
  re::TypeInfo::TypeInfo(v31, a5);
  if (a7)
  {
    v13 = *a6;
    v14 = re::TypeInfo::name(a5);
    re::TypeRegistry::typeInfo(v13, v14, v33);
    if (LOBYTE(v33[0]) != 1)
    {
      v29 = re::TypeInfo::name(a5)[1];
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "No matching type found for polymorphic type %s to serialize.", v22, v23, v24, v25, v26, v29);
      goto LABEL_11;
    }

    re::TypeInfo::operator=(v31, v33 + 8);
  }

  if ((*(v32 + 128) & 1) == 0)
  {
    v28 = re::TypeInfo::name(v31)[1];
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Failed to get custom class ID for type %s.", v17, v18, v19, v20, v21, v28);
LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  v30 = *(v32 + 136);
  if (*(a1 + 64))
  {
    goto LABEL_11;
  }

  LOBYTE(v33[0]) = 1;
  DWORD1(v33[0]) = 0;
  *(&v33[0] + 1) = a2;
  memset(&v33[1], 0, 32);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v33);
  re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "customClassID", 1, &v30, "uint64", 0);
  if (*(a1 + 64))
  {
    goto LABEL_11;
  }

  (*(*a1 + 72))(a1, "object", 10, a4, a5, v31, 0);
  if (*(a1 + 64))
  {
    goto LABEL_11;
  }

  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState((a1 + 24), 1);
  v15 = *(a1 + 152) + 48 * *(a1 + 136);
  ++*(v15 - 16);
  v16 = *(a1 + 64) ^ 1;
  return v16 & 1;
}

re::NetworkCompatDeserializer *re::NetworkCompatDeserializer::NetworkCompatDeserializer(re::NetworkCompatDeserializer *this)
{
  *&v4.var0 = 0xEFB8C0610360E046;
  v4.var1 = "NetworkCompatDeserializer";
  v2 = re::NetworkSerializerBase<re::SerializerV1<re::EncoderBinary<re::FixedArrayInputStream>>>::NetworkSerializerBase(this, &v4);
  if (*&v4.var0)
  {
    if (*&v4.var0)
    {
    }
  }

  *this = &unk_1F5CB6350;
  return this;
}

uint64_t re::NetworkSerializerBase<re::SerializerV1<re::EncoderBinary<re::FixedArrayInputStream>>>::NetworkSerializerBase(uint64_t a1, const StringID *a2)
{
  *a1 = &unk_1F5CB64E0;
  re::StringID::StringID((a1 + 8), a2);
  re::Encoder<re::EncoderBinary<re::FixedArrayInputStream>,re::FixedArrayInputStream>::Encoder(a1 + 24, 15);
  *(a1 + 240) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 244) = 0x7FFFFFFFLL;
  *(a1 + 256) = 1;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 300) = 0x7FFFFFFFLL;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  *(a1 + 336) = 0;
  *(a1 + 424) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 416) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *a1 = &unk_1F5CB6410;
  *(a1 + 464) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 184) = a1 + 432;
  return a1;
}

void re::NetworkCompatDeserializer::~NetworkCompatDeserializer(re::NetworkCompatDeserializer *this)
{
  *this = &unk_1F5CB6478;
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::DynamicArray<unsigned long>::deinit(this + 352);
  re::DynamicArray<unsigned long>::deinit(this + 312);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 33);

  re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::~Serializer(this);
}

{
  *this = &unk_1F5CB6478;
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::DynamicArray<unsigned long>::deinit(this + 352);
  re::DynamicArray<unsigned long>::deinit(this + 312);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 33);
  re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderBinary<re::FixedArrayInputStream>>::untrackObject(uint64_t result)
{
  if (*(result + 256) == 1)
  {
    --*(result + 408);
    ++*(result + 416);
  }

  return result;
}

void re::NetworkSerializerBase<re::SerializerV1<re::EncoderBinary<re::FixedArrayInputStream>>>::doOpen(uint64_t a1)
{
  *(a1 + 257) = 1;
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 264);
  *(a1 + 328) = 0;
  ++*(a1 + 336);
  *(a1 + 368) = 0;
  ++*(a1 + 376);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
}

void re::SerializerV1<re::EncoderBinary<re::FixedArrayInputStream>>::doClose(uint64_t a1)
{
  re::internal::SharedObjectGraph::markAndSweep((a1 + 256), *(a1 + 48), *(a1 + 184));
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 264);
  *(a1 + 328) = 0;
  ++*(a1 + 336);
  *(a1 + 368) = 0;
  ++*(a1 + 376);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
}

void re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v26 = 6059476;
  v27 = "BOOL";
  v2 = re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeBool<re::EncoderBinary<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6104748;
  v27 = "char";
  v3 = re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeChar<re::EncoderBinary<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x172E117BCLL;
  v27 = "int8_t";
  v4 = re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI8<re::EncoderBinary<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93A4A92;
  v27 = "int16_t";
  v5 = re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI16<re::EncoderBinary<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93BFE06;
  v27 = "int32_t";
  v6 = re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI32<re::EncoderBinary<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93EC744;
  v27 = "int64_t";
  v7 = re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderBinary<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6655224;
  v27 = "long";
  v8 = re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderBinary<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x31CD534126;
  v27 = "uint8_t";
  v9 = re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU8<re::EncoderBinary<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0D4E68;
  v27 = "uint16_t";
  v10 = re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU16<re::EncoderBinary<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0F01DCLL;
  v27 = "uint32_t";
  v11 = re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU32<re::EncoderBinary<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD11CB1ALL;
  v27 = "uint64_t";
  v12 = re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderBinary<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x1947BDF6CLL;
  v27 = "size_t";
  v13 = re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderBinary<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 195052728;
  v27 = "float";
  v14 = re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeFloat<re::EncoderBinary<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x161EEF7A2;
  v27 = "double";
  v15 = re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeDouble<re::EncoderBinary<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 189247272;
  v27 = "char*";
  v16 = re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeCString<re::EncoderBinary<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2686EB529B3EE220;
  v27 = "DynamicString";
  v17 = re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeDynamicString<re::EncoderBinary<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x458DDB01A18;
  v27 = "StringID";
  v18 = re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeStringID<re::EncoderBinary<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v19 = *(a1 + 192);
  v26 = 0x258C98EAAF29A10ALL;
  v27 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(v19, &v26, &v30);
  if (v26)
  {
    if (v26)
    {
    }
  }

  if (v30)
  {
    v21 = *(a1 + 192);
    v25 = v30;
    re::TypeRegistry::attributesByAttributeType(v21, &v25, &v26);
    if (v28)
    {
      v22 = (v29 + 24);
      v23 = 48 * v28;
      do
      {
        v24 = *v22;
        v22 += 6;
        v32 = re::serializeIntrospectionCallbackSerializer<re::EncoderBinary<re::FixedArrayInputStream>>;
        v31 = v24 | 0xFFFFFFFF00000000;
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(a1 + 208, &v31, &v32);
        v23 -= 48;
      }

      while (v23);
    }

    if (v26)
    {
      if (v29)
      {
        (*(*v26 + 40))();
      }
    }
  }
}

uint64_t re::SerializerV1<re::EncoderBinary<re::FixedArrayInputStream>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a1 + 408);
  if (!v14)
  {
    if (a7)
    {
      v15 = 0;
    }

    else
    {
      v15 = a4;
    }

    v16 = **(a5 + 2);
    *&v25 = *a5;
    *(&v25 + 1) = v16;
    re::internal::SharedObjectGraph::beginObject((a1 + 256), v15, &v25);
  }

  v17 = (*(*a1 + 80))(a1, a5);
  if (v17)
  {
    result = v17(a1, a2, a3, a4, a5, a6, a7);
    if (!v14 && *(a1 + 256) == 1)
    {
      --*(a1 + 408);
      ++*(a1 + 416);
    }
  }

  else
  {
    v19 = re::TypeInfo::name(a5);
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v20, v21, v22, v23, v24, v19[1]);
    return 0;
  }

  return result;
}

uint64_t (*re::SerializerV1<re::EncoderBinary<re::FixedArrayInputStream>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this))(re::Allocator **a1, const char *a2, const re::TypeInfo *a3, void *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v4 = re::TypeInfo::name(this);
  if (*v4 >> 1 == 94623636)
  {
    v6 = v4[1];
    v7 = re::SerializerV1<re::EncoderBinary<re::FixedArrayInputStream>>::serializeCString;
    if (v6 == "char*")
    {
      return v7;
    }

    v8 = strcmp(v6, "char*");
    v7 = re::SerializerV1<re::EncoderBinary<re::FixedArrayInputStream>>::serializeCString;
    if (!v8)
    {
      return v7;
    }
  }

  if (*(this + 12) != 9)
  {
    goto LABEL_9;
  }

  v9 = *(*(this + 2) + 88);
  v7 = re::SerializerV1<re::EncoderBinary<re::FixedArrayInputStream>>::serializePointer;
  if (v9 >= 2)
  {
    if (v9 != 2)
    {
      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Invalid PointerSharing type.", "!Unreachable code", "doResolveSerializeFunc", 84);
      result = _os_crash();
      __break(1u);
      return result;
    }

    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) External references are not supported by the SerializerV1.", "!Unreachable code", "doResolveSerializeFunc", 82);
    _os_crash();
    __break(1u);
LABEL_9:
    if (*this == *(a1 + 192))
    {
      LODWORD(v12) = **(this + 2);
      HIDWORD(v12) = -1;
      v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 208, &v12);
      v7 = re::serializeType<re::EncoderBinary<re::FixedArrayInputStream>>;
      if (v10)
      {
        return *v10;
      }
    }

    else
    {
      return re::serializeType<re::EncoderBinary<re::FixedArrayInputStream>>;
    }
  }

  return v7;
}

uint64_t re::NetworkSerializerBase<re::SerializerV1<re::EncoderBinary<re::FixedArrayInputStream>>>::~NetworkSerializerBase(void *a1)
{
  *a1 = &unk_1F5CB6478;
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::DynamicArray<unsigned long>::deinit((a1 + 44));
  re::DynamicArray<unsigned long>::deinit((a1 + 39));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 33);

  return re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::~Serializer(a1);
}

void re::NetworkSerializerBase<re::SerializerV1<re::EncoderBinary<re::FixedArrayInputStream>>>::~NetworkSerializerBase(void *a1)
{
  *a1 = &unk_1F5CB6478;
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::DynamicArray<unsigned long>::deinit((a1 + 44));
  re::DynamicArray<unsigned long>::deinit((a1 + 39));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 33);
  re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderBinary<re::FixedArrayInputStream>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5CB6478;
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::DynamicArray<unsigned long>::deinit((a1 + 44));
  re::DynamicArray<unsigned long>::deinit((a1 + 39));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 33);

  return re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::~Serializer(a1);
}

void re::SerializerV1<re::EncoderBinary<re::FixedArrayInputStream>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5CB6478;
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::DynamicArray<unsigned long>::deinit((a1 + 44));
  re::DynamicArray<unsigned long>::deinit((a1 + 39));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 33);
  re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

void re::SerializerV1<re::EncoderBinary<re::FixedArrayInputStream>>::doOpen(uint64_t a1)
{
  *(a1 + 257) = 1;
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 264);
  *(a1 + 328) = 0;
  ++*(a1 + 336);
  *(a1 + 368) = 0;
  ++*(a1 + 376);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
}

void re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::~Serializer(uint64_t a1)
{
  re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v17, v18, v19, v20, v21, v16[1]);
    return 0;
  }
}

uint64_t (*re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(re::Allocator **a1, const char *a2, const re::TypeInfo *a3, void *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 != *(a1 + 192))
  {
    return re::serializeType<re::EncoderBinary<re::FixedArrayInputStream>>;
  }

  v6[1] = v2;
  v6[2] = v3;
  LODWORD(v6[0]) = **(a2 + 16);
  HIDWORD(v6[0]) = -1;
  v5 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 208, v6);
  if (v5)
  {
    return *v5;
  }

  else
  {
    return re::serializeType<re::EncoderBinary<re::FixedArrayInputStream>>;
  }
}

uint64_t re::Encoder<re::EncoderBinary<re::FixedArrayInputStream>,re::FixedArrayInputStream>::Encoder(uint64_t result, int a2)
{
  *(result + 128) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = 0;
  *(result + 120) = 0;
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 136) = a2;
  *(result + 140) = 0;
  *(result + 152) = 1024;
  v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v8 = result;
    v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    v6 = v4;
    result = v8;
    if (v6)
    {
      re::Defaults::intValue("maxSerializationDepth", v5, v9);
      v7 = v10;
      if (!v9[0])
      {
        v7 = 0;
      }

      re::Encoder<re::EncoderBinary<re::FixedArrayInputStream>,re::FixedArrayInputStream>::Encoder(int)::s_maxSerializationDepth = v7;
      v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      result = v8;
    }
  }

  v3 = *(v2 + 149);
  if (v3)
  {
    *(result + 152) = v3;
  }

  return result;
}

uint64_t re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5CB64E0;
  v2 = (a1 + 8);
  re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((a1 + 208));
  re::Encoder<re::EncoderBinary<re::FixedArrayInputStream>,re::FixedArrayInputStream>::~Encoder((a1 + 24));
  re::StringID::destroyString(v2);
  return a1;
}

void re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::deinit(void *a1)
{
  if (a1[24])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 26));
    a1[24] = 0;
  }
}

_BYTE *re::Encoder<re::EncoderBinary<re::FixedArrayInputStream>,re::FixedArrayInputStream>::~Encoder(_BYTE *a1)
{
  re::Encoder<re::EncoderBinary<re::FixedArrayInputStream>,re::FixedArrayInputStream>::close(a1);
  re::DynamicArray<unsigned long>::deinit((a1 + 96));
  if (a1[40] == 1)
  {
    re::DynamicString::deinit((a1 + 64));
  }

  return a1;
}

_anonymous_namespace_ *re::Encoder<re::EncoderBinary<re::FixedArrayInputStream>,re::FixedArrayInputStream>::close(_anonymous_namespace_ *result)
{
  if (*result)
  {
    v1 = result;
    re::EncoderBinary<re::FixedArrayInputStream>::doClose(result);
    if ((*(v1 + 40) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 0);
    }

    result = re::DynamicArray<unsigned long>::deinit(v1 + 96);
    if (*(v1 + 4) >= 1)
    {
      result = (*(**v1 + 24))();
      *(v1 + 1) = 0;
      *(v1 + 4) = 0;
    }

    *v1 = 0;
    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
  }

  return result;
}

uint64_t re::EncoderBinary<re::FixedArrayInputStream>::doClose(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v9 = 69;
    result = re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<unsigned char>(result, "End-of-file", 0, &v9, "uint8", 0);
    if (v9 != 69)
    {
      re::DynamicString::format("Failed to read end-of-file marker.", &v2);
      *&v5 = 400;
      *(&v5 + 1) = re::FoundationErrorCategory(void)::instance;
      v6 = v2;
      v8 = v4;
      v7 = v3;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, &v5);
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

uint64_t re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<unsigned char>(uint64_t a1, const char *a2, uint64_t a3, char *a4, uint64_t a5, char a6)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  if (a6)
  {
    a4 = 0;
  }

  if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, a4, 1uLL))
  {
    if ((a6 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }

    return 1;
  }

  else
  {
    re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, a5);
    return 0;
  }
}

uint64_t re::serializeType<re::EncoderBinary<re::FixedArrayInputStream>>(re::Allocator **a1, const char *a2, const re::TypeInfo *a3, void *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (this == a6)
  {
    goto LABEL_19;
  }

  if (*this == *a6)
  {
    v15 = **(this + 2);
    v16 = **(a6 + 16);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_19;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_19;
  }

  if (*(this + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, this, a6);
    return 0;
  }

  v19 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
  if (v19)
  {
    v20 = *(v19 + 16);
  }

  else
  {
    v20 = -1;
  }

  v21 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
  if (v21)
  {
    v22 = *(v21 + 16);
  }

  else
  {
    v22 = -1;
  }

  if (v20 != v22)
  {
    v30 = re::TypeInfo::name(this);
    v31 = re::TypeInfo::name(a6);
    if (!re::StringID::operator==(v30, v31))
    {
      v34 = re::TypeInfo::name(a6)[1];
      re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
      re::TypeInfo::name(this);
      re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
      re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Type name changed: Serialized type %s version %u, runtime type %s version %u.", v37, v38, v39, v40, v41, v34);
      return 0;
    }

    v32 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
    if (v32)
    {
      v33 = *(v32 + 16);
    }

    else
    {
      v33 = -1;
    }

    re::TypeInfo::atVersion(this, v33, v59);
    if ((v59[0] & 1) == 0)
    {
      v36 = re::TypeInfo::name(a6)[1];
      re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
      re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Unknown serialized type %s version %u. No matching runtime type found.", v42, v43, v44, v45, v46, v36);
      return 0;
    }

    if (a7)
    {
      Instance = 0;
    }

    else
    {
      Instance = re::TypeInfo::createInstance(v60, a1[6], a1[23]);
    }

    if (a1[8] & 1) != 0 || ((*(*a1 + 9))(a1, a2, a3, Instance, v60, a6, a7), (a1[8]))
    {
      if (Instance)
      {
        re::TypeInfo::releaseInstance(v60, Instance, a1[6], a1[23]);
      }

      return 0;
    }

    if ((a7 & 1) == 0)
    {
      re::TypeInfo::TypeInfo(v54, v60);
      re::internal::upgradeObject(Instance, v54, a4, this, a1[6], a1[23], v55);
      if ((v55[0] & 1) == 0)
      {
        if (v57)
        {
          LOBYTE(v52) = v58[7];
        }

        else
        {
          v52 = v58;
        }

        re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "%s", v47, v48, v49, v50, v51, v52);
        if (v55[0] & 1) == 0 && v56 && (v57)
        {
          (*(*v56 + 40))();
        }

        return 0;
      }
    }

    return 1;
  }

LABEL_19:
  v23 = *(this + 12);
  if (v23 <= 4)
  {
    if (*(this + 12) > 2u)
    {
      if (v23 == 3)
      {

        return re::serializeOptional<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
      }

      else
      {
        if (v23 != 4)
        {
          goto LABEL_59;
        }

        return re::serializeArray<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
      }
    }

    else if (v23 == 1)
    {

      return re::serializeBasic<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_59;
      }

      return re::serializeEnum<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else if (*(this + 12) <= 6u)
  {
    if (v23 == 5)
    {

      return re::serializeList<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v23 != 6)
      {
        goto LABEL_59;
      }

      return re::serializeDictionary<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else
  {
    switch(v23)
    {
      case 7u:

        return re::serializeUnion<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
      case 8u:

        return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
      case 9u:
        v53 = re::TypeInfo::name(this)[1];
        re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Pointer type (%s) needs to be handled explicitly by the serializer.", v24, v25, v26, v27, v28, v53);
        return 0;
      default:
LABEL_59:
        re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Invalid type category. Value = %d", a4, this, a6, a7, a8, *(this + 12));
        return 0;
    }
  }
}

uint64_t re::serializeBasic<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_24:
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, this, a6);
      return 0;
    }

    v23 = **(this + 2);
    v24 = **(a6 + 2);
    if (v23 != v24)
    {
      goto LABEL_24;
    }

    v26 = WORD1(v23) == WORD1(v24);
    v25 = (v24 ^ v23) & 0xFFFFFF00000000;
    v26 = v26 && v25 == 0;
    if (!v26)
    {
      goto LABEL_24;
    }
  }

LABEL_4:
  v14 = re::TypeInfo::name(this);
  v15 = *v14 >> 1;
  if (v15 > 0x16749DFF02)
  {
    if (*v14 >> 1 > 0x303EE88E58CLL)
    {
      if (*v14 >> 1 > 0x2A8CEB1C43F60843)
      {
        if (v15 == 0x2A8CEB1C43F60844)
        {
          goto LABEL_62;
        }

        if (v15 != 0x3AFE951B1F1F3391)
        {
          if (v15 != 0x412A40E9CB79BA35)
          {
            goto LABEL_77;
          }

          goto LABEL_56;
        }

        goto LABEL_59;
      }

      if (v15 == 0x303EE88E58DLL)
      {
        goto LABEL_56;
      }

      if (v15 != 0x2710786C3AC82DA1)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (*v14 >> 1 <= 0x18E6A9A092)
      {
        if (v15 != 0x16749DFF03)
        {
          if (v15 == 0x16749F63A2)
          {
LABEL_43:
            v33 = "int64";
            v34 = a1 + 24;
            v35 = a2;
            v36 = a3;
            v37 = a4;
            v38 = a7;

            return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(v34, v35, v36, v37, v33, v38);
          }

          goto LABEL_77;
        }

LABEL_65:
        v16 = "int32";
        v17 = a1 + 24;
        v18 = a2;
        v19 = a3;
        v20 = a4;
        v21 = a7;

        return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(v17, v18, v19, v20, v16, v21);
      }

      if (v15 != 0x18E6A9A093)
      {
        if (v15 != 0x303EE86A734)
        {
          if (v15 != 0x303EE8780EELL)
          {
            goto LABEL_77;
          }

LABEL_62:
          v16 = "uint32";
          v17 = a1 + 24;
          v18 = a2;
          v19 = a3;
          v20 = a4;
          v21 = a7;

          return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(v17, v18, v19, v20, v16, v21);
        }

LABEL_59:
        v39 = "uint16";
        v40 = a1 + 24;
        v41 = a2;
        v42 = a3;
        v43 = a4;
        v44 = a7;

        return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<short>(v40, v41, v42, v43, v39, v44);
      }
    }

    v27 = "uint8";
    v28 = a1 + 24;
    v29 = a2;
    v30 = a3;
    v31 = a4;
    v32 = a7;

    return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<unsigned char>(v28, v29, v30, v31, v27, v32);
  }

  if (*v14 >> 1 <= 0x685847B)
  {
    if (*v14 >> 1 > 0x2E9355)
    {
      if (v15 != 3052374)
      {
        if (v15 != 3327612)
        {
          if (v15 == 97526364)
          {
            v16 = "float";
            v17 = a1 + 24;
            v18 = a2;
            v19 = a3;
            v20 = a4;
            v21 = a7;

            return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(v17, v18, v19, v20, v16, v21);
          }

          goto LABEL_77;
        }

        goto LABEL_43;
      }

      v27 = "char";
      v28 = a1 + 24;
      v29 = a2;
      v30 = a3;
      v31 = a4;
      v32 = a7;

      return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<unsigned char>(v28, v29, v30, v31, v27, v32);
    }

    if (v15 != 104431)
    {
      if (v15 == 3029738)
      {
        v27 = "BOOL";
        v28 = a1 + 24;
        v29 = a2;
        v30 = a3;
        v31 = a4;
        v32 = a7;

        return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<unsigned char>(v28, v29, v30, v31, v27, v32);
      }

LABEL_77:
      v45 = re::TypeInfo::name(this);
      re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Unsupported basic type %s.", v46, v47, v48, v49, v50, v45[1]);
      return 0;
    }

    goto LABEL_65;
  }

  if (*v14 >> 1 <= 0xB9708BDD)
  {
    if (v15 != 109413500)
    {
      if (v15 == 2969009105)
      {
        v33 = "double";
        v34 = a1 + 24;
        v35 = a2;
        v36 = a3;
        v37 = a4;
        v38 = a7;

        return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(v34, v35, v36, v37, v33, v38);
      }

      goto LABEL_77;
    }

    goto LABEL_68;
  }

  if (v15 == 3111160798)
  {
    v27 = "int8";
    v28 = a1 + 24;
    v29 = a2;
    v30 = a3;
    v31 = a4;
    v32 = a7;

    return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<unsigned char>(v28, v29, v30, v31, v27, v32);
  }

  if (v15 == 3393056694)
  {
LABEL_56:
    v33 = "uint64";
    v34 = a1 + 24;
    v35 = a2;
    v36 = a3;
    v37 = a4;
    v38 = a7;

    return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(v34, v35, v36, v37, v33, v38);
  }

  if (v15 != 0x16749D2549)
  {
    goto LABEL_77;
  }

LABEL_68:
  v39 = "int16";
  v40 = a1 + 24;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a7;

  return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<short>(v40, v41, v42, v43, v39, v44);
}

uint64_t re::serializeEnum<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v14 = **(a5 + 16);
      v15 = **(a6 + 16);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_12;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_12;
    }

    if (*(a5 + 12) != *(a6 + 12) || (v18 = re::TypeInfo::name(a5), v19 = re::TypeInfo::name(a6), !re::StringID::operator==(v18, v19)))
    {
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
      return 0;
    }
  }

LABEL_12:

  return re::internal::serializeEnumAsBinary<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeOptional<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
  if (a5 == a6)
  {
    goto LABEL_11;
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
        goto LABEL_11;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_11;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    v21 = 0;
    return v21 & 1;
  }

LABEL_11:
  if (a7)
  {
    __dst[0] = 0;
    re::EncoderBinary<re::FixedArrayInputStream>::beginOptional((a1 + 24), a2, v11, __dst, 0);
    if (__dst[0] == 1)
    {
      v18 = *(a1 + 192);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), v27);
      re::TypeInfo::TypeInfo(v26, &v28);
      re::internal::translateType(v18, v26, v27);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, 0, v27, v27, 1);
      }
    }
  }

  else
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), v27);
    re::TypeInfo::TypeInfo(v26, &v28);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), v27);
    re::TypeInfo::TypeInfo(__dst, &v28);
    re::TypeInfo::TypeInfo(v27, a5);
    v24 = (*(v29 + 88))(a4) != 0;
    v19 = re::EncoderBinary<re::FixedArrayInputStream>::beginOptional((a1 + 24), a2, v11, &v24, 0);
    if (v24)
    {
      Instance = re::TypeInfo::createInstance(v26, *(a1 + 48), *(a1 + 184));
      (*(v29 + 96))(a4, Instance);
      re::TypeInfo::releaseInstance(v26, Instance, *(a1 + 48), *(a1 + 184));
    }

    else
    {
      (*(v29 + 96))(a4, 0, v19);
    }

    if (v24)
    {
      v22 = (*(v29 + 88))(a4);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, v22, v26, __dst, 0);
      }
    }
  }

  re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endOptional((a1 + 24));
  v21 = *(a1 + 64) ^ 1;
  return v21 & 1;
}

uint64_t re::serializeArray<re::EncoderBinary<re::FixedArrayInputStream>>(re::Allocator **a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v22 = **(a5 + 2);
    v23 = **(a6 + 2);
    if (v22 != v23)
    {
      goto LABEL_13;
    }

    v25 = WORD1(v22) == WORD1(v23);
    v24 = (v23 ^ v22) & 0xFFFFFF00000000;
    v25 = v25 && v24 == 0;
    if (!v25)
    {
      goto LABEL_13;
    }

LABEL_4:
    v14 = 1;
    if (a7)
    {
      goto LABEL_5;
    }

LABEL_17:
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v75);
    re::TypeInfo::TypeInfo(v71, v76);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v75);
    re::TypeInfo::TypeInfo(v69, v76);
    re::TypeInfo::TypeInfo(v67, a5);
    v29 = (*(*a1 + 10))(a1, v71);
    if (v29)
    {
      v30 = v29;
      v31 = re::ArrayAccessor::size(v67, a4);
      __dst = v31;
      v32 = *(*(a5 + 2) + 92) & 0xFFFFFF;
      if (v32)
      {
        v33 = 8;
      }

      else
      {
        v33 = 4;
      }

      if (!re::EncoderBinary<re::FixedArrayInputStream>::beginArray((a1 + 3), a2, v11, &__dst, v33))
      {
        goto LABEL_46;
      }

      v39 = __dst;
      if (v31 != __dst)
      {
        if ((*(v68 + 92) & 0xFFFFFF) == 0)
        {
          re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Invalid array size. Expected size = %zu, actual size = %zu", v34, v35, v36, v37, v38, v31);
          goto LABEL_46;
        }

        re::TypeRegistry::typeInfo(v67[0], *(v68 + 80), &v75);
        re::TypeInfo::TypeInfo(v73, v76);
        if (!is_mul_ok(*(v74 + 8), v39))
        {
          re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Size overflow during deserialization. Element size = %zu, count = %zu", v40, v41, v42, v43, v44, *(v74 + 8));
          goto LABEL_46;
        }

        re::ArrayAccessor::reset(v67, a4, a1[6], v39);
        v31 = __dst;
      }

      if (v32)
      {
        v57 = v31 == 0;
      }

      else
      {
        v57 = 1;
      }

      v58 = v57;
      if (!v57)
      {
        v59 = *a4;
        v65[0] = 0;
        v65[1] = 0xFFFFFFFFLL;
        (*(*a1 + 2))(a1, v59, v65);
        v31 = __dst;
      }

      if (v71[12] == 1)
      {
        v60 = v14;
      }

      else
      {
        v60 = 0;
      }

      if (v60)
      {
        if (v31)
        {
          v61 = re::ArrayAccessor::elementAt(v67, a4, 0);
          re::EncoderBinary<re::FixedArrayInputStream>::serializeArray((a1 + 3), v61, *(v72 + 8), __dst, 0);
        }
      }

      else if (v31)
      {
        v62 = 0;
        do
        {
          v63 = re::ArrayAccessor::elementAt(v67, a4, v62);
          v30(a1, 0, 0, v63, v71, v69, 0);
          ++v62;
        }

        while (v62 < __dst);
      }

      if (v58)
      {
        goto LABEL_53;
      }

LABEL_52:
      (*(*a1 + 3))(a1);
LABEL_53:
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 3));
      v54 = *(a1 + 64) ^ 1;
      return v54 & 1;
    }

    v45 = v71;
LABEL_28:
    v64 = re::TypeInfo::name(v45)[1];
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v46, v47, v48, v49, v50, v64);
    goto LABEL_46;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_13:
  if (*(a6 + 12) != 4)
  {
    goto LABEL_45;
  }

  v26 = *(a5 + 2);
  v27 = *(a6 + 2);
  v28 = *(v27 + 23) & 0xFFFFFF;
  if ((*(v26 + 92) & 0xFFFFFF) != 0)
  {
    if (v28)
    {
      goto LABEL_16;
    }

LABEL_45:
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    goto LABEL_46;
  }

  if (v28 || *(v26 + 96) != *(v27 + 24))
  {
    goto LABEL_45;
  }

LABEL_16:
  v14 = 0;
  if (!a7)
  {
    goto LABEL_17;
  }

LABEL_5:
  v15 = a1[24];
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v75);
  re::TypeInfo::TypeInfo(v71, v76);
  re::internal::translateType(v15, v71, v73);
  v16 = (*(*a1 + 10))(a1, v73);
  if (!v16)
  {
    v45 = v73;
    goto LABEL_28;
  }

  v17 = v16;
  v18 = *(a6 + 2);
  v19 = *(v18 + 23) & 0xFFFFFF;
  if (v19)
  {
    v20 = 0;
    v21 = 8;
  }

  else
  {
    v20 = *(v18 + 24);
    v21 = 4;
  }

  v75 = v20;
  if (re::EncoderBinary<re::FixedArrayInputStream>::beginArray((a1 + 3), a2, v11, &v75, v21))
  {
    v51 = v75;
    if (v19)
    {
      v52 = v75 == 0;
    }

    else
    {
      v52 = 1;
    }

    v53 = v52;
    if (!v52)
    {
      v70[0] = 0;
      v70[1] = 0xFFFFFFFFLL;
      (*(*a1 + 2))(a1, 0, v70);
      v51 = v75;
    }

    if (v73[12] == 1)
    {
      if (v51)
      {
        re::EncoderBinary<re::FixedArrayInputStream>::serializeArray((a1 + 3), 0, *(v74 + 8), v51, 1);
      }
    }

    else if (v51)
    {
      v56 = 0;
      do
      {
        v17(a1, 0, 0, 0, v73, v73, 1);
        ++v56;
      }

      while (v56 < v75);
    }

    if (v53)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_46:
  v54 = 0;
  return v54 & 1;
}

uint64_t re::serializeList<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, unsigned __int8 *a5, unsigned __int8 *a6, int a7)
{
  v11 = a3;
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v25 = **(a5 + 2);
    v26 = **(a6 + 2);
    if (v25 != v26)
    {
      goto LABEL_16;
    }

    v28 = WORD1(v25) == WORD1(v26);
    v27 = (v26 ^ v25) & 0xFFFFFF00000000;
    v28 = v28 && v27 == 0;
    if (!v28)
    {
      goto LABEL_16;
    }

LABEL_4:
    v14 = 1;
    if (a7)
    {
      goto LABEL_5;
    }

LABEL_18:
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(v66, v71);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(v65, v71);
    re::TypeInfo::TypeInfo(v63, a5);
    v29 = (*(*a1 + 80))(a1, v66);
    if (v29)
    {
      v30 = v29;
      v31 = (*(v64 + 88))(a4);
      v62 = v31;
      v32 = re::EncoderBinary<re::FixedArrayInputStream>::beginArray((a1 + 24), a2, v11, &v62, 0);
      v19 = 0;
      if (!v32)
      {
        return v19 & 1;
      }

      v33 = v62;
      if (v31 != v62)
      {
        re::TypeRegistry::typeInfo(v63[0], *(v64 + 80), &__dst);
        re::TypeInfo::TypeInfo(v68, v71);
        if (!is_mul_ok(*(v69 + 8), v33))
        {
          LODWORD(v60) = *(v69 + 8);
          v39 = "Size overflow during deserialization. Element size = %zu, count = %zu";
LABEL_27:
          re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, v39, v34, v35, v36, v37, v38, v60);
          goto LABEL_28;
        }

        v42 = *(a1 + 48);
        v43 = *(v64 + 96);
        re::TypeInfo::TypeInfo(&__dst, v63);
        v43(a4, &__dst, v42, v33);
      }

      v44 = *(v64 + 104);
      if (v44)
      {
        if (a5[12] == 5)
        {
          v45 = v14;
        }

        else
        {
          v45 = 0;
        }

        if (v45)
        {
          v46 = v62;
          if ((*(*(a5 + 2) + 48) & 8) != 0 && v66[12] == 1)
          {
            if (!v62)
            {
              goto LABEL_54;
            }

            v23 = v44(a4, 0);
            v21 = *(v67 + 8);
            v20 = v62;
            v22 = a1 + 24;
            v24 = 0;
            goto LABEL_10;
          }
        }

        else
        {
          v46 = v62;
        }

        if (v46)
        {
          v51 = 0;
          do
          {
            v52 = (*(v64 + 104))(a4, v51);
            v30(a1, 0, 0, v52, v66, v65, 0);
            ++v51;
          }

          while (v51 < v62);
        }

        goto LABEL_54;
      }

      v47 = *(v64 + 112);
      if (v47 && *(v64 + 120) && *(v64 + 128))
      {
        v48 = v47(a4, *(a1 + 56));
        v49 = (*(v64 + 120))();
        if (v49)
        {
          v50 = v49;
          do
          {
            v30(a1, 0, 0, v50, v66, v65, 0);
            v50 = (*(v64 + 120))(v48);
          }

          while (v50);
        }

        (*(v64 + 128))(v48, *(a1 + 56));
        goto LABEL_54;
      }

      v54 = re::TypeInfo::TypeInfo(&__dst, v63);
      v61 = re::TypeInfo::name(v54)[1];
      re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "List type %s does not provide an indexer or iterator.", v55, v56, v57, v58, v59, v61);
      goto LABEL_28;
    }

    v40 = v66;
LABEL_26:
    v60 = re::TypeInfo::name(v40)[1];
    v39 = "Failed to resolve serialize function for type %s";
    goto LABEL_27;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_16:
  if (a5[12] != a6[12])
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
LABEL_28:
    v19 = 0;
    return v19 & 1;
  }

  v14 = 0;
  if (!a7)
  {
    goto LABEL_18;
  }

LABEL_5:
  v15 = *(a1 + 192);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
  re::TypeInfo::TypeInfo(v66, v71);
  re::internal::translateType(v15, v66, v68);
  v16 = (*(*a1 + 80))(a1, v68);
  if (!v16)
  {
    v40 = v68;
    goto LABEL_26;
  }

  v17 = v16;
  __dst = 0;
  v18 = re::EncoderBinary<re::FixedArrayInputStream>::beginArray((a1 + 24), a2, v11, &__dst, 0);
  v19 = 0;
  if (v18)
  {
    v20 = __dst;
    if (v68[12] != 1)
    {
      if (__dst)
      {
        for (i = 0; i < __dst; ++i)
        {
          v17(a1, 0, 0, 0, v68, v68, 1);
        }
      }

      goto LABEL_54;
    }

    if (!__dst)
    {
LABEL_54:
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v19 = *(a1 + 64) ^ 1;
      return v19 & 1;
    }

    v21 = *(v69 + 8);
    v22 = a1 + 24;
    v23 = 0;
    v24 = 1;
LABEL_10:
    re::EncoderBinary<re::FixedArrayInputStream>::serializeArray(v22, v23, v21, v20, v24);
    goto LABEL_54;
  }

  return v19 & 1;
}

uint64_t re::serializeDictionary<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
  if (a5 == a6)
  {
    goto LABEL_11;
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
        goto LABEL_11;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_11;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
LABEL_37:
    v25 = 0;
    return v25 & 1;
  }

LABEL_11:
  if (!a7)
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v53);
    re::TypeInfo::TypeInfo(v52, &v53 + 8);
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v53);
    re::TypeInfo::TypeInfo(v51, &v53 + 8);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v53);
    re::TypeInfo::TypeInfo(__dst, &v53 + 8);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v53);
    re::TypeInfo::TypeInfo(v49, &v53 + 8);
    re::TypeInfo::TypeInfo(v47, a5);
    v27 = (*(*a1 + 80))(a1, v52);
    if (v27)
    {
      v28 = v27;
      v29 = (*(*a1 + 80))(a1, v51);
      if (v29)
      {
        v30 = v29;
        v46 = (*(v48 + 96))(a4);
        v31 = re::EncoderBinary<re::FixedArrayInputStream>::beginDictionary((a1 + 24), a2, v11, &v46, 0);
        v25 = 0;
        if (!v31)
        {
          return v25 & 1;
        }

        v32 = *(a1 + 48);
        v33 = *(v48 + 104);
        re::TypeInfo::TypeInfo(&v53, v47);
        v33(a4, &v53, v32);
        if (v46)
        {
          Instance = re::TypeInfo::createInstance(v52, *(a1 + 48), *(a1 + 184));
          if (v46)
          {
            v35 = 0;
            while (1)
            {
              if ((*(a1 + 64) & 1) == 0)
              {
                LOBYTE(v53) = 7;
                DWORD1(v53) = 0;
                *(&v53 + 1) = "entry";
                v54 = xmmword_1E3054780;
                v55 = 0;
                v56 = 0;
                re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v53);
              }

              v28(a1, "key", 0, Instance, v52, __dst, 0);
              v36 = *(a1 + 48);
              if (*(a1 + 64) == 1)
              {
                break;
              }

              v37 = (*(v48 + 112))(a4, v47, v36, Instance);
              v30(a1, "value", 0, v37, v51, v49, 0);
              re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endDictionaryEntry((a1 + 24));
              if (++v35 >= v46)
              {
                goto LABEL_31;
              }
            }

            re::TypeInfo::releaseInstance(v52, Instance, v36, *(a1 + 184));
            goto LABEL_37;
          }

LABEL_31:
          re::TypeInfo::releaseInstance(v52, Instance, *(a1 + 48), *(a1 + 184));
        }

LABEL_32:
        re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endDictionary((a1 + 24));
        v25 = *(a1 + 64) ^ 1;
        return v25 & 1;
      }

      goto LABEL_35;
    }

LABEL_33:
    v38 = v52;
LABEL_36:
    v39 = re::TypeInfo::name(v38);
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v40, v41, v42, v43, v44, v39[1]);
    goto LABEL_37;
  }

  v18 = *(a1 + 192);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v53);
  re::TypeInfo::TypeInfo(v51, &v53 + 8);
  re::internal::translateType(v18, v51, v52);
  v19 = *(a1 + 192);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v53);
  re::TypeInfo::TypeInfo(__dst, &v53 + 8);
  re::internal::translateType(v19, __dst, v51);
  v20 = (*(*a1 + 80))(a1, v52);
  if (!v20)
  {
    goto LABEL_33;
  }

  v21 = v20;
  v22 = (*(*a1 + 80))(a1, v51);
  if (!v22)
  {
LABEL_35:
    v38 = v51;
    goto LABEL_36;
  }

  v23 = v22;
  *__dst = 0;
  v24 = re::EncoderBinary<re::FixedArrayInputStream>::beginDictionary((a1 + 24), a2, v11, __dst, 0);
  v25 = 0;
  if (v24)
  {
    if (*__dst)
    {
      v26 = 0;
      do
      {
        if ((*(a1 + 64) & 1) == 0)
        {
          LOBYTE(v53) = 7;
          DWORD1(v53) = 1;
          *(&v53 + 1) = "entry";
          v54 = xmmword_1E3054780;
          v55 = 0;
          v56 = 0;
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v53);
        }

        v21(a1, "key", 0, 0, v52, v52, 1);
        v23(a1, "value", 0, 0, v51, v51, 1);
        re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endDictionaryEntry((a1 + 24));
        ++v26;
      }

      while (v26 < *__dst);
    }

    goto LABEL_32;
  }

  return v25 & 1;
}

uint64_t re::serializeUnion<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_20:
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
      goto LABEL_21;
    }

    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_20;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  if (a7)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      LOBYTE(v22) = 1;
      DWORD1(v22) = 16;
      *(&v22 + 1) = a2;
      v23 = 0u;
      v24 = 0u;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v22);
      v20[0] = 0;
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "tag", 0, v20, "uint64", 0);
      if (v20[0] < *(*(a6 + 2) + 96))
      {
        re::TypeInfo::unionMember(a6, v20[0], &v22);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, "value", 0, 0, &v22, &v22, 1);
        }
      }

      goto LABEL_13;
    }

LABEL_21:
    v14 = 0;
    return v14 & 1;
  }

  if (*(a1 + 64))
  {
    goto LABEL_21;
  }

  LOBYTE(v22) = 1;
  DWORD1(v22) = 16;
  *(&v22 + 1) = a2;
  v23 = 0u;
  v24 = 0u;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v22);
  re::TypeInfo::TypeInfo(&v22, a5);
  Tag = re::UnionAccessor::readTag(&v22, a4);
  re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "tag", 0, &Tag, "uint64", 0);
  re::UnionAccessor::reset(&v22, a4, Tag, *(a1 + 48));
  if (Tag < *(*(a5 + 2) + 96))
  {
    re::TypeInfo::unionMember(a5, Tag, v20);
    if ((*(a1 + 64) & 1) == 0)
    {
      (*(*a1 + 72))(a1, "value", 0, a4, v20, v20, 0);
    }
  }

LABEL_13:
  if (*(a1 + 64))
  {
    goto LABEL_21;
  }

  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState((a1 + 24), 1);
  v13 = *(a1 + 152) + 48 * *(a1 + 136);
  ++*(v13 - 16);
  v14 = *(a1 + 64) ^ 1;
  return v14 & 1;
}

uint64_t re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, re::TypeInfo *this, re::TypeInfo *a6, uint64_t a7)
{
  if (a7)
  {
    if (*(*(this + 2) + 49))
    {
      v23 = *(a1 + 192);
      v49[0] = 0x2686EB529B3EE220;
      v49[1] = "DynamicString";
      re::TypeRegistry::typeInfo(v23, v49, &v43);
      v24 = re::TypeInfo::TypeInfo(v50, &v43 + 8);
      if (v49[0])
      {
        if (v49[0])
        {
        }
      }

      v25 = v50;
      v26 = v50;
      v27 = a1;
      v28 = a2;
      v29 = a3;
    }

    else
    {
      v14 = re::TypeInfo::name(this);
      if ((*v14 & 0xFFFFFFFFFFFFFFFELL) != 0x2686EB529B3EE220)
      {
        goto LABEL_6;
      }

      v15 = v14[1];
      if (v15 != "DynamicString")
      {
        if (strcmp(v15, "DynamicString"))
        {
          goto LABEL_6;
        }
      }

      v27 = a1;
      v28 = a2;
      v29 = a3;
      v25 = this;
      v26 = this;
    }

    re::serializeDynamicString<re::EncoderBinary<re::FixedArrayInputStream>>(v27, v28, v29, 0, v25, v26, 1);
    goto LABEL_38;
  }

LABEL_6:
  v16 = *(this + 2);
  v17 = *(v16 + 48);
  if ((v17 & 0x10) == 0 && *(this + 12) == 8)
  {
    v18 = *(v16 + 168);
    if (v18)
    {
      v19 = *this;
      v20 = *a6;
      *&v43 = &unk_1F5CB6548;
      *(&v43 + 1) = a1;
      *&v44 = v19;
      *(&v44 + 1) = v20;
      v45 = 0uLL;
      v46 = 1;
      v47 = 0;
      v48 = 0;
      v50[0].n128_u64[0] = a2;
      v50[0].n128_u32[2] = a3;
      v21 = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(&v45, v50);
      v18(&v43, a4, v21);
      v22 = *(a1 + 64) ^ 1;
      *&v43 = &unk_1F5CB6548;
      if (v45)
      {
        if ((v46 & 1) == 0)
        {
          (*(*v45 + 40))();
        }
      }

      return v22 & 1;
    }
  }

  if ((v17 & 4) == 0)
  {
    if (*(a1 + 64))
    {
LABEL_14:
      v22 = 0;
      return v22 & 1;
    }

    LOBYTE(v43) = 1;
    DWORD1(v43) = 0;
    *(&v43 + 1) = a2;
    v44 = 0u;
    v45 = 0u;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v43);
    if (this == a6)
    {
      goto LABEL_25;
    }

    if (*this == *a6)
    {
      v32 = **(this + 2);
      v33 = **(a6 + 2);
      if (v32 == v33)
      {
        v35 = WORD1(v32) == WORD1(v33);
        v34 = (v33 ^ v32) & 0xFFFFFF00000000;
        v35 = v35 && v34 == 0;
        if (v35)
        {
          goto LABEL_25;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, v31))
    {
LABEL_25:
      re::internal::serializeMembersWithoutVersioning<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a4, this, a7);
LABEL_36:
      if (*(a1 + 64))
      {
        goto LABEL_14;
      }

      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState((a1 + 24), 1);
      v42 = *(a1 + 152) + 48 * *(a1 + 136);
      ++*(v42 - 16);
LABEL_38:
      v22 = *(a1 + 64) ^ 1;
      return v22 & 1;
    }

    if (*(this + 12) == *(a6 + 12))
    {
      re::internal::serializeMembersWithVersioning<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a4, this, a6, a7);
    }

    else
    {
      v36 = re::TypeInfo::name(this)[1];
      re::TypeInfo::name(a6);
      re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v37, v38, v39, v40, v41, v36);
    }

    goto LABEL_36;
  }

  return re::internal::serializeObjectWithOneMember<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
}

uint64_t re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<short>(uint64_t a1, const char *a2, uint64_t a3, char *a4, uint64_t a5, char a6)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  if (a6)
  {
    a4 = 0;
  }

  if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, a4, 2uLL))
  {
    if ((a6 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }

    return 1;
  }

  else
  {
    re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, a5);
    return 0;
  }
}

uint64_t re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(uint64_t a1, const char *a2, uint64_t a3, char *a4, uint64_t a5, char a6)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  if (a6)
  {
    a4 = 0;
  }

  if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, a4, 4uLL))
  {
    if ((a6 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }

    return 1;
  }

  else
  {
    re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, a5);
    return 0;
  }
}

uint64_t re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(uint64_t a1, const char *a2, uint64_t a3, char *a4, uint64_t a5, char a6)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  if (a6)
  {
    a4 = 0;
  }

  if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, a4, 8uLL))
  {
    if ((a6 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }

    return 1;
  }

  else
  {
    re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, a5);
    return 0;
  }
}

uint64_t re::internal::serializeEnumAsBinary<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, void *a4, re::internal *a5, re::internal *a6, int a7)
{
  if (a7)
  {
    v11 = *(a1 + 192);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__src);
    re::TypeInfo::TypeInfo(v51, v54);
    re::internal::translateType(v11, v51, &__src);
    if ((*(a1 + 64) & 1) == 0)
    {
      return (*(*a1 + 72))(a1, a2, a3, 0, &__src, &__src, 1);
    }

    return 0;
  }

  v15 = *a5;
  if (a5 == a6)
  {
    goto LABEL_8;
  }

  v16 = *a6;
  if (v15 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = *(a6 + 2);
    v22 = *v21;
    if (v20 != *v21)
    {
      goto LABEL_21;
    }

    v24 = WORD1(v20) == WORD1(v22);
    v23 = (v22 ^ v20) & 0xFFFFFF00000000;
    v24 = v24 && v23 == 0;
    if (!v24)
    {
      goto LABEL_21;
    }

LABEL_8:
    re::TypeRegistry::typeInfo(v15, *(*(a5 + 2) + 80), &__src);
    re::TypeInfo::TypeInfo(v51, v54);
    __src = 0;
    if ((*(a1 + 64) & 1) == 0)
    {
      result = (*(*a1 + 72))(a1, a2, a3, &__src, v51, v51, 0);
      if (!result)
      {
        return result;
      }

      if ((re::internal::getEnumConstantIndex(a5, &__src, v17) & 0x80000000) == 0)
      {
        v18 = *(*(a5 + 2) + 8);
        p_src = &__src;
LABEL_12:
        memcpy(a4, p_src, v18);
        return 1;
      }

      v49 = __src;
      re::TypeInfo::name(a5);
      goto LABEL_32;
    }

    return 0;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    v15 = *a5;
    goto LABEL_8;
  }

  v16 = *a6;
  v21 = *(a6 + 2);
LABEL_21:
  v25 = *(a1 + 192);
  re::TypeRegistry::typeInfo(v16, v21[10], &__src);
  re::TypeInfo::TypeInfo(v50, v54);
  re::internal::translateType(v25, v50, v51);
  if (*(v52 + 8) < 9u)
  {
    v50[0] = 0;
    if ((*(a1 + 64) & 1) == 0)
    {
      result = (*(*a1 + 72))(a1, a2, a3, v50, v51, v51, 0);
      if (!result)
      {
        return result;
      }

      EnumConstantIndex = re::internal::getEnumConstantIndex(a6, v50, v31);
      if ((EnumConstantIndex & 0x80000000) != 0)
      {
        v49 = v50[0];
        re::TypeInfo::name(a6);
LABEL_32:
        re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Value %zu is not a valid enum constant of %s.", v36, v37, v38, v39, v40, v49);
        return 0;
      }

      v33 = EnumConstantIndex;
      v34 = *(*a6 + 856);
      if (v34)
      {
        v35 = re::internal::TypeTranslationTable::translateSerializedEnum(v34, a6, v33, a5);
        if (v35)
        {
          p_src = v35;
          v18 = *(*(a5 + 2) + 8);
          goto LABEL_12;
        }
      }

      __src = re::TypeInfo::enumConstants(a6);
      v54[0] = v41;
      v42 = *(re::Slice<re::EnumConstant>::operator[](&__src, v33) + 16);
      re::TypeInfo::name(a5);
      re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Serialized enum constant %s does not exist in runtime type %s.", v43, v44, v45, v46, v47, v42);
    }
  }

  else
  {
    v48 = re::TypeInfo::name(v51)[1];
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Enum type %s has invalid size: %zu bytes.", v26, v27, v28, v29, v30, v48);
  }

  return 0;
}

double re::EncoderBinary<re::FixedArrayInputStream>::beginOptional(_anonymous_namespace_ *a1, const char *a2, int a3, char *__dst, int a5)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, __dst, 1uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "BOOL");
    }

    v9 = *__dst;
    LOBYTE(v11) = 3;
    DWORD1(v11) = a5;
    *(&v11 + 1) = a2;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v13 = v9;
    return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v11);
  }

  return result;
}

uint64_t re::EncoderBinary<re::FixedArrayInputStream>::beginArray(_anonymous_namespace_ *a1, const char *a2, int a3, char *__dst, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v20 = v5;
    v21 = v6;
    if ((a5 & 4) == 0 && (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, __dst, 4uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "uint32");
    }

    v12 = *__dst;
    if ((a5 & 8) != 0)
    {
      if (v12)
      {
        v13 = 73;
      }

      else
      {
        v13 = 78;
      }

      LOBYTE(v15) = v13;
      if ((*(a1 + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &v15, 1uLL) & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "uint8");
      }

      v12 = *__dst;
    }

    LOBYTE(v15) = 5;
    DWORD1(v15) = a5;
    *(&v15 + 1) = a2;
    v16 = 0;
    v18 = 0;
    v19 = 0;
    v17 = v12;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v15);
    v7 = *(a1 + 40) ^ 1;
  }

  return v7 & 1;
}

uint64_t re::EncoderBinary<re::FixedArrayInputStream>::serializeArray(uint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((*(result + 40) & 1) == 0)
  {
    v7 = result;
    v8 = a4 * a3;
    if (a5)
    {
      a2 = 0;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, a2, v8);
    if (result)
    {
      if ((a5 & 2) == 0)
      {
        v9 = *(v7 + 16) + 48 * *(v7 + 14);
        *(v9 - 16) += a4;
      }
    }

    else
    {

      return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v7, 0, "Array");
    }
  }

  return result;
}