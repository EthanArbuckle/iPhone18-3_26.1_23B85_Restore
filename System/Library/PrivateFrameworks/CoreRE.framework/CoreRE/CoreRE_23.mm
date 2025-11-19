uint64_t re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::serializeSharedObjects(uint64_t result)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(result + 288) >= 2uLL)
  {
    v1 = result;
    result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject(result + 24, "@shared", 20, 0);
    if (result)
    {
      v2 = *(v1 + 56);
      v15 = 0;
      v16 = 0;
      v13 = v2;
      v14 = 0;
      re::DynamicString::setCapacity(&v13, 8uLL);
      if (*(v1 + 288) < 2uLL)
      {
LABEL_18:
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((v1 + 24));
      }

      else
      {
        v3 = 0;
        v4 = 1;
        while ((*(v1 + 64) & 1) == 0)
        {
          re::DynamicString::assignf(&v13, "%u", v4);
          v5 = *(v1 + 288);
          if (v5 <= v4)
          {
            v17 = 0;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v26 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v18 = 136315906;
            v19 = "operator[]";
            v20 = 1024;
            v21 = 789;
            v22 = 2048;
            v23 = v4;
            v24 = 2048;
            v25 = v5;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v6 = *(v1 + 304) + v3;
          v9 = *(v6 + 80);
          re::TypeInfo::TypeInfo(v10, v6 + 88);
          re::TypeInfo::TypeInfo(v11, v6 + 120);
          v12 = *(v6 + 152);
          if (v12)
          {
            if (v14)
            {
              v7 = v15;
            }

            else
            {
              v7 = &v14 + 1;
            }

            re::internal::serializePolymorphicObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(v1, v7, v4, v9, v10, v11, HIBYTE(v12) & 1);
          }

          else if ((*(v1 + 64) & 1) == 0)
          {
            if (v14)
            {
              v8 = v15;
            }

            else
            {
              v8 = &v14 + 1;
            }

            (*(*v1 + 72))(v1, v8, v4, v9, v10, v11, 0);
          }

          ++v4;
          v3 += 80;
          if (*(v1 + 288) <= v4)
          {
            goto LABEL_18;
          }
        }
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
  }

  return result;
}

uint64_t re::internal::serializePolymorphicObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, const char *a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, re::TypeRegistry **a6, int a7)
{
  re::TypeInfo::TypeInfo(v31, a5);
  if (a7)
  {
    v13 = *a6;
    v14 = re::TypeInfo::name(a5);
    re::TypeRegistry::typeInfo(v13, v14, v29);
    if (v29[0] != 1)
    {
      v28 = re::TypeInfo::name(a5)[1];
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "No matching type found for polymorphic type %s to serialize.", v21, v22, v23, v24, v25, v28);
      goto LABEL_11;
    }

    re::TypeInfo::operator=(v31, v30);
  }

  v29[0] = *(v32 + 128);
  if ((v29[0] & 1) == 0)
  {
    v27 = re::TypeInfo::name(v31)[1];
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Failed to get custom class ID for type %s.", v16, v17, v18, v19, v20, v27);
    goto LABEL_11;
  }

  v30[0] = *(v32 + 136);
  if (!re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject((a1 + 24), a2, 0, 0))
  {
LABEL_11:
    v15 = 0;
    return v15 & 1;
  }

  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned long long>((a1 + 24), "customClassID", 1, v30, 0);
  if ((a1[64] & 1) == 0)
  {
    (*(*a1 + 72))(a1, "object", 10, a4, a5, v31, 0);
  }

  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((a1 + 24));
  v15 = a1[64] ^ 1;
  return v15 & 1;
}

uint64_t re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(uint64_t a1, const re::StringID *a2, uint64_t a3)
{
  result = re::TypeRegistry::typeID(*(a1 + 208), a2, &v6);
  if (v6)
  {
    v9 = a3;
    v8 = v7 | 0xFFFFFFFF00000000;
    return re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(a1 + 224, &v8, &v9);
  }

  return result;
}

uint64_t re::serializeBool<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
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

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeChar<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
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

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<signed char>(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeI8<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
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

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<signed char>(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeI16<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, __int16 *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
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

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<short>(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeI32<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, int *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
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

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<int>(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeI64<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
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

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<long long>(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeU8<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
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

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned char>(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeU16<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int16 *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
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

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned short>(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeU32<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned int *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
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

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned int>(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeU64<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
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

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeFloat<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
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

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeDouble<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
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

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeCString<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *a5, const re::TypeInfo *a6, int a7)
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
    v14 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginPointer(a1 + 24, a2, v9, &v32, 0);
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
      if (!re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(a1 + 24, a2, 0, &v31, 0))
      {
LABEL_28:
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
        v20 = *(a1 + 64) ^ 1;
        return v20 & 1;
      }

      if (!v31)
      {
LABEL_27:
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
        goto LABEL_28;
      }

      v24 = a1 + 24;
      v23 = 0;
      v25 = 1;
LABEL_26:
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeString(v24, v23, v25);
      goto LABEL_27;
    }
  }

  else
  {
    v32 = 2 * (*a4 != 0);
    v21 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginPointer(a1 + 24, a2, v9, &v32, 0);
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
      if (!re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(a1 + 24, a2, 0, &v31, 0))
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

uint64_t re::serializeStringID<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
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
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    goto LABEL_23;
  }

LABEL_14:
  if (!a7)
  {
    v26 = strlen(*(a4 + 8));
    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(a1 + 24, a2, v9, &v26, 0))
    {
      if (v26)
      {
        v23 = *(a4 + 8);
        v22 = a1 + 24;
        v24 = 0;
        goto LABEL_21;
      }

LABEL_22:
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
      v21 = *(a1 + 64) ^ 1;
      return v21 & 1;
    }

LABEL_23:
    v21 = 0;
    return v21 & 1;
  }

  v26 = 0;
  v20 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(a1 + 24, a2, v9, &v26, 0);
  v21 = 0;
  if (v20)
  {
    if (v26)
    {
      v22 = a1 + 24;
      v23 = 0;
      v24 = 1;
LABEL_21:
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeString(v22, v23, v24);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  return v21 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v10 = a3;
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
    v26 = *(a1 + 200);
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
      if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(a1 + 24, a2, v10, v40, 0))
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

          re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeString(a1 + 24, v29, 0);
        }

        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
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
  v14 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(a1 + 24, a2, v10, &v35, 0);
  v15 = 0;
  if (v14)
  {
    if (v35)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeString(a1 + 24, 0, 1);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
LABEL_9:
    v15 = *(a1 + 64) ^ 1;
  }

  return v15 & 1;
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(uint64_t a1, unint64_t *a2, void *a3)
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
    v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(a1, v7, v6);
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

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::move(a1, v9);
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

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(v4, *(v7 + v5 + 4) % *(v4 + 24));
        *(result + 4) = *(*(a2 + 16) + v5 + 4);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 24;
    }
  }

  return result;
}

void re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(uint64_t a1, uint64_t a2, signed int a3)
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

uint64_t re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 80 * v4;
  *v5 = *a2;
  re::TypeInfo::TypeInfo(v5 + 8, a2 + 8);
  result = re::TypeInfo::TypeInfo(v5 + 40, a2 + 40);
  *(v5 + 72) = *(a2 + 72);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::addNew(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  *(result - 8) = v8;
  ++*(a1 + 40);
  return result;
}

void *re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::setCapacity(v5, a2);
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
        v10 = v8 + 80 * v9;
        v11 = (v7 + 5);
        v12 = v8 + 40;
        do
        {
          *(v11 - 40) = *(v12 - 40);
          re::TypeInfo::TypeInfo(v11 - 32, v12 - 32);
          re::TypeInfo::TypeInfo(v11, v12);
          *(v11 + 32) = *(v12 + 32);
          v11 += 80;
          v13 = v12 + 40;
          v12 += 80;
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

uint64_t re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_10;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(result + 16);
  if (*(v7 + 32 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 32 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 32 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 32 * v8) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

void re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::move(a1, v9);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v9);
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

uint64_t re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        v7 = *(a2 + 16);
        *(result + 16) = *(v7 + v5 + 16);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::serializePointer(uint64_t a1, const char *a2, uint64_t a3, char **a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
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

  else if (re::areSameTranslatedVersion(this, a6, v14))
  {
LABEL_4:
    v16 = 0;
    goto LABEL_5;
  }

  if (*(a6 + 12) != 9 || isPointerToPolymorphicType && (!re::TypeInfo::isPointerToPolymorphicType(a6) || (v31 = re::TypeInfo::name(this), v32 = re::TypeInfo::name(a6), !re::StringID::operator==(v31, v32))))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, this, a6);
    goto LABEL_28;
  }

  v16 = 1;
LABEL_5:
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v35);
  re::TypeInfo::TypeInfo(v42, v36);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v35);
  re::TypeInfo::TypeInfo(v41, v36);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v23 = *v42[2];
    v40[0] = v42[0];
    v40[1] = v23;
    if (!v42[0])
    {
      goto LABEL_8;
    }
  }

  else
  {
    re::internal::actualType(a4, this, v40);
    if (!v40[0])
    {
LABEL_8:
      v17 = re::TypeInfo::name(this);
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Failed to get actual type of polymorphic object. Type %s.", v18, v19, v20, v21, v22, v17[1]);
LABEL_28:
      v26 = 0;
      return v26 & 1;
    }
  }

  re::TypeRegistry::typeInfo(*this, v40, &v35);
  re::TypeInfo::TypeInfo(v39, v36);
  if ((a7 & 1) == 0 && *a4)
  {
    if (*(*(this + 2) + 88))
    {
      v24 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 312, a4);
      if (v24)
      {
        v38 = *v24;
      }

      else
      {
        v38 = *(a1 + 288);
        v35 = *a4;
        re::TypeInfo::TypeInfo(v36, v39);
        re::TypeInfo::TypeInfo(v37, v41);
        v37[32] = isPointerToPolymorphicType;
        v37[33] = v16;
        re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::add((a1 + 272), &v35);
        re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::addNew(a1 + 312, a4, &v38);
      }

      LODWORD(v35) = 1;
      if (!re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginPointer(a1 + 24, a2, a3, &v35, 0))
      {
        goto LABEL_28;
      }

      if ((*(a1 + 64) & 1) == 0)
      {
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1 + 24, "ID", v38);
        v34 = *(a1 + 152) + 48 * *(a1 + 136);
        if (*(v34 - 48) != 2)
        {
          ++*(v34 - 16);
        }
      }
    }

    else
    {
      LODWORD(v35) = 2;
      if (!re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginPointer(a1 + 24, a2, a3, &v35, 0))
      {
        goto LABEL_28;
      }

      if (isPointerToPolymorphicType)
      {
        re::internal::serializePolymorphicObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, *a4, v39, v41, v16);
      }

      else if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, *a4, v42, v41, 0);
      }
    }

    goto LABEL_16;
  }

  LODWORD(v35) = 0;
  v25 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginPointer(a1 + 24, a2, a3, &v35, 0);
  v26 = 0;
  if (v25)
  {
LABEL_16:
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
    v26 = *(a1 + 64) ^ 1;
  }

  return v26 & 1;
}

uint64_t re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 16;
  }
}

re::NetworkOPACKDeserializer *re::NetworkOPACKDeserializer::NetworkOPACKDeserializer(re::NetworkOPACKDeserializer *this)
{
  *&v4.var0 = 0xDEED4B9BC35C271ALL;
  v4.var1 = "NetworkOPACKDeserializer";
  v2 = re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SerializerV2(this, &v4);
  *v2 = &unk_1F5CB5D40;
  *(v2 + 448) = 0u;
  *(v2 + 464) = 0u;
  *(v2 + 480) = 0;
  *(v2 + 200) = v2 + 448;
  if (*&v4.var0)
  {
    if (*&v4.var0)
    {
    }
  }

  *this = &unk_1F5CB5C80;
  return this;
}

void re::NetworkOPACKDeserializer::~NetworkOPACKDeserializer(re::NetworkOPACKDeserializer *this)
{
  *this = &unk_1F5CB5DA8;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);

  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(this);
}

{
  *this = &unk_1F5CB5DA8;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);
  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

void re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::doClose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::deserializeSharedObjects(a1, a2, a3, a4, a5, a6, a7, a8, v9);
  re::EncoderOPACK<re::FixedArrayInputStream>::endObject(a1 + 24);
  *(a1 + 288) = 0;
  ++*(a1 + 296);
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1 + 312);
  *(a1 + 376) = 0;
  ++*(a1 + 384);

  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(a1 + 400);
}

void re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v26 = 6059476;
  v27 = "BOOL";
  v2 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeBool<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6104748;
  v27 = "char";
  v3 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeChar<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x172E117BCLL;
  v27 = "int8_t";
  v4 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI8<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93A4A92;
  v27 = "int16_t";
  v5 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI16<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93BFE06;
  v27 = "int32_t";
  v6 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI32<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93EC744;
  v27 = "int64_t";
  v7 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6655224;
  v27 = "long";
  v8 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x31CD534126;
  v27 = "uint8_t";
  v9 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU8<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0D4E68;
  v27 = "uint16_t";
  v10 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU16<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0F01DCLL;
  v27 = "uint32_t";
  v11 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU32<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD11CB1ALL;
  v27 = "uint64_t";
  v12 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x1947BDF6CLL;
  v27 = "size_t";
  v13 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 195052728;
  v27 = "float";
  v14 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeFloat<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x161EEF7A2;
  v27 = "double";
  v15 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeDouble<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 189247272;
  v27 = "char*";
  v16 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeCString<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2686EB529B3EE220;
  v27 = "DynamicString";
  v17 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeDynamicString<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x458DDB01A18;
  v27 = "StringID";
  v18 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeStringID<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v19 = *(a1 + 208);
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
    v21 = *(a1 + 208);
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
        v32 = re::serializeIntrospectionCallbackSerializer<re::EncoderOPACK<re::FixedArrayInputStream>>;
        v31 = v24 | 0xFFFFFFFF00000000;
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(a1 + 224, &v31, &v32);
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

uint64_t re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::doSerialize(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  if (!a1[107] && a1[34] == 2)
  {
    v25 = 0;
    v22 = a4;
    re::TypeInfo::TypeInfo(&v23, a5);
    re::TypeInfo::TypeInfo(v24, a6);
    v24[16] = 0;
    re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addNew((a1 + 100), &v25, &v22);
    a3 = 10;
  }

  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {
    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  v16 = re::TypeInfo::name(a5);
  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v17, v18, v19, v20, v21, v16[1]);
  return 0;
}

uint64_t (*re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(void *a1, const char *a2, const re::TypeInfo *a3, void *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v4 = re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::serializePointer;
  if (*(a2 + 12) != 9)
  {
    if (*a2 == *(a1 + 208))
    {
      v7[1] = v2;
      v7[2] = v3;
      LODWORD(v7[0]) = **(a2 + 16);
      HIDWORD(v7[0]) = -1;
      v5 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 224, v7);
      v4 = re::serializeType<re::EncoderOPACK<re::FixedArrayInputStream>>;
      if (v5)
      {
        return *v5;
      }
    }

    else
    {
      return re::serializeType<re::EncoderOPACK<re::FixedArrayInputStream>>;
    }
  }

  return v4;
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SerializerV2(uint64_t a1, const StringID *a2)
{
  *a1 = &unk_1F5CB5E10;
  re::StringID::StringID((a1 + 8), a2);
  re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::Encoder(a1 + 24, 15);
  *(a1 + 256) = 0x7FFFFFFF00000000;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  *(a1 + 264) = 0;
  *a1 = &unk_1F5CB5DA8;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 332) = 0u;
  *(a1 + 348) = 0x7FFFFFFFLL;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 384) = 0;
  *(a1 + 376) = 0;
  *(a1 + 420) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 436) = 0x7FFFFFFFLL;
  return a1;
}

uint64_t re::NetworkSerializerBase<re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>>::~NetworkSerializerBase(void *a1)
{
  *a1 = &unk_1F5CB5DA8;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));

  return re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(a1);
}

void re::NetworkSerializerBase<re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>>::~NetworkSerializerBase(void *a1)
{
  *a1 = &unk_1F5CB5DA8;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));
  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::~SerializerV2(void *a1)
{
  *a1 = &unk_1F5CB5DA8;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));

  return re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(a1);
}

void re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::~SerializerV2(void *a1)
{
  *a1 = &unk_1F5CB5DA8;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));
  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::doOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *(a1 + 288) = 0;
  ++*(a1 + 296);
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1 + 312);
  *(a1 + 376) = 0;
  ++*(a1 + 384);
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(a1 + 400);
  result = re::EncoderOPACK<re::FixedArrayInputStream>::beginObject(a1 + 24, "container", 0, 0);
  if ((result & 1) == 0 && (*(a1 + 64) & 1) == 0)
  {

    return re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, "container", "Failed to open container.", v11, v12, v13, v14, v15, a9);
  }

  return result;
}

void re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(uint64_t a1)
{
  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
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

uint64_t (*re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(void *a1, const char *a2, const re::TypeInfo *a3, void *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 != *(a1 + 208))
  {
    return re::serializeType<re::EncoderOPACK<re::FixedArrayInputStream>>;
  }

  v6[1] = v2;
  v6[2] = v3;
  LODWORD(v6[0]) = **(a2 + 16);
  HIDWORD(v6[0]) = -1;
  v5 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 224, v6);
  if (v5)
  {
    return *v5;
  }

  else
  {
    return re::serializeType<re::EncoderOPACK<re::FixedArrayInputStream>>;
  }
}

uint64_t re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::Encoder(uint64_t result, int a2)
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

      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::Encoder(int)::s_maxSerializationDepth = v7;
      v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      result = v8;
    }
  }

  v3 = *(v2 + 147);
  if (v3)
  {
    *(result + 152) = v3;
  }

  return result;
}

uint64_t re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5CB5E10;
  v2 = (a1 + 8);
  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((a1 + 224));
  re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::~Encoder((a1 + 24));
  re::StringID::destroyString(v2);
  return a1;
}

void re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::deinit(void *a1)
{
  if (a1[26])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 28));
    a1[26] = 0;
  }
}

_BYTE *re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::~Encoder(_BYTE *a1)
{
  re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::close(a1);
  re::DynamicArray<unsigned long>::deinit((a1 + 96));
  if (a1[40] == 1)
  {
    re::DynamicString::deinit((a1 + 64));
  }

  return a1;
}

_anonymous_namespace_ *re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::close(_anonymous_namespace_ *result)
{
  if (*result)
  {
    v1 = result;
    if ((*(result + 40) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(result, 0);
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

uint64_t re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  re::DynamicString::setCapacity(&v23, 0);
  v22 = &a9;
  re::DynamicString::vassignf(&v23, a3, &a9);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels((a1 + 24), a2, &v15);
  if (v16)
  {
    v12 = *&v17[7];
  }

  else
  {
    v12 = v17;
  }

  if (v24)
  {
    v13 = v25;
  }

  else
  {
    v13 = &v24 + 1;
  }

  re::DynamicString::format("Failed to %s %s. Reason: %s", &v18, "deserialize", v12, v13);
  *&v21[0] = 400;
  *(&v21[0] + 1) = re::FoundationErrorCategory(void)::instance;
  *&v21[1] = v18;
  *(&v21[2] + 1) = v20;
  *(&v21[1] + 8) = v19;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1 + 24, v21);
  if (*&v21[1])
  {
    if (BYTE8(v21[1]))
    {
      (*(**&v21[1] + 40))();
    }

    memset(&v21[1], 0, 32);
  }

  if (v15 && (v16 & 1) != 0)
  {
    (*(*v15 + 40))();
  }

  result = v23;
  if (v23)
  {
    if (v24)
    {
      return (*(*v23 + 40))();
    }
  }

  return result;
}

uint64_t re::serializeType<re::EncoderOPACK<re::FixedArrayInputStream>>(void *a1, const char *a2, const re::TypeInfo *a3, void *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
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
      Instance = re::TypeInfo::createInstance(v60, a1[6], a1[25]);
    }

    if (a1[8] & 1) != 0 || ((*(*a1 + 72))(a1, a2, a3, Instance, v60, a6, a7), (a1[8]))
    {
      if (Instance)
      {
        re::TypeInfo::releaseInstance(v60, Instance, a1[6], a1[25]);
      }

      return 0;
    }

    if ((a7 & 1) == 0)
    {
      re::TypeInfo::TypeInfo(v54, v60);
      re::internal::upgradeObject(Instance, v54, a4, this, a1[6], a1[25], v55);
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

        return re::serializeOptional<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
      }

      else
      {
        if (v23 != 4)
        {
          goto LABEL_59;
        }

        return re::serializeArray<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
      }
    }

    else if (v23 == 1)
    {

      return re::serializeBasic<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_59;
      }

      return re::serializeEnum<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else if (*(this + 12) <= 6u)
  {
    if (v23 == 5)
    {

      return re::serializeList<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v23 != 6)
      {
        goto LABEL_59;
      }

      return re::serializeDictionary<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else
  {
    switch(v23)
    {
      case 7u:

        return re::serializeUnion<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
      case 8u:

        return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
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

uint64_t re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, re::TypeInfo *this, re::TypeInfo *a4)
{
  v7 = re::TypeInfo::name(this)[1];
  re::TypeInfo::name(a4);
  return re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Type mismatch. Runtime type %s and serialized type %s are different.", v8, v9, v10, v11, v12, v7);
}

uint64_t re::serializeBasic<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
{
  v10 = a3;
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

    v17 = **(this + 2);
    v18 = **(a6 + 2);
    if (v17 != v18)
    {
      goto LABEL_24;
    }

    v20 = WORD1(v17) == WORD1(v18);
    v19 = (v18 ^ v17) & 0xFFFFFF00000000;
    v20 = v20 && v19 == 0;
    if (!v20)
    {
      goto LABEL_24;
    }
  }

LABEL_4:
  v14 = re::TypeInfo::name(this);
  v15 = *v14 >> 1;
  if (v15 > 0x16749DFF02)
  {
    if (*v14 >> 1 <= 0x303EE88E58CLL)
    {
      if (*v14 >> 1 <= 0x18E6A9A092)
      {
        if (v15 != 0x16749DFF03)
        {
          if (v15 == 0x16749F63A2)
          {
LABEL_43:

            return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<long long>(a1 + 24, a2, v10, a4, a7);
          }

          goto LABEL_74;
        }

        goto LABEL_68;
      }

      if (v15 != 0x18E6A9A093)
      {
        if (v15 != 0x303EE86A734)
        {
          if (v15 != 0x303EE8780EELL)
          {
            goto LABEL_74;
          }

          goto LABEL_65;
        }

        goto LABEL_59;
      }

LABEL_53:

      return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned char>(a1 + 24, a2, v10, a4, a7);
    }

    if (*v14 >> 1 <= 0x2A8CEB1C43F60843)
    {
      if (v15 != 0x303EE88E58DLL)
      {
        if (v15 != 0x2710786C3AC82DA1)
        {
          goto LABEL_74;
        }

        goto LABEL_53;
      }
    }

    else
    {
      if (v15 == 0x2A8CEB1C43F60844)
      {
LABEL_65:

        return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned int>(a1 + 24, a2, v10, a4, a7);
      }

      if (v15 == 0x3AFE951B1F1F3391)
      {
LABEL_59:

        return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned short>(a1 + 24, a2, v10, a4, a7);
      }

      if (v15 != 0x412A40E9CB79BA35)
      {
        goto LABEL_74;
      }
    }

LABEL_56:

    return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, a2, v10, a4, a7);
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

            return re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1 + 24, a2, v10, a4, a7);
          }

          goto LABEL_74;
        }

        goto LABEL_43;
      }

      goto LABEL_62;
    }

    if (v15 != 104431)
    {
      if (v15 == 3029738)
      {

        return re::EncoderOPACK<re::FixedArrayInputStream>::serializeBool(a1 + 24, a2, v10, a4, a7);
      }

LABEL_74:
      v21 = re::TypeInfo::name(this);
      re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Unsupported basic type %s.", v22, v23, v24, v25, v26, v21[1]);
      return 0;
    }

LABEL_68:

    return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<int>(a1 + 24, a2, v10, a4, a7);
  }

  if (*v14 >> 1 > 0xB9708BDD)
  {
    if (v15 == 3111160798)
    {
LABEL_62:

      return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<signed char>(a1 + 24, a2, v10, a4, a7);
    }

    if (v15 != 3393056694)
    {
      if (v15 != 0x16749D2549)
      {
        goto LABEL_74;
      }

      goto LABEL_71;
    }

    goto LABEL_56;
  }

  if (v15 == 109413500)
  {
LABEL_71:

    return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<short>(a1 + 24, a2, v10, a4, a7);
  }

  if (v15 != 2969009105)
  {
    goto LABEL_74;
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, a2, v10, a4, a7);
}

uint64_t re::serializeEnum<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, void *a4, uint64_t a5, uint64_t a6, int a7)
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

  return re::internal::serializeEnumAsBinary<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeOptional<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
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
    v20 = 0;
    return v20 & 1;
  }

LABEL_11:
  if (a7)
  {
    v24[0] = 0;
    re::EncoderOPACK<re::FixedArrayInputStream>::beginOptional(a1 + 24, a2, v11, v24, 0);
    if (v24[0] == 1)
    {
      v18 = *(a1 + 208);
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
    re::TypeInfo::TypeInfo(v24, &v27);
    re::TypeInfo::TypeInfo(v26, a5);
    v23 = (*(v28 + 88))(a4) != 0;
    re::EncoderOPACK<re::FixedArrayInputStream>::beginOptional(a1 + 24, a2, v11, &v23, 0);
    if (v23)
    {
      Instance = re::TypeInfo::createInstance(v25, *(a1 + 48), *(a1 + 200));
      (*(v28 + 96))(a4, Instance);
      re::TypeInfo::releaseInstance(v25, Instance, *(a1 + 48), *(a1 + 200));
    }

    else
    {
      (*(v28 + 96))(a4, 0);
    }

    if (v23)
    {
      v21 = (*(v28 + 88))(a4);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, v21, v25, v24, 0);
      }
    }
  }

  re::EncoderOPACK<re::FixedArrayInputStream>::endOptional((a1 + 24));
  v20 = *(a1 + 64) ^ 1;
  return v20 & 1;
}

uint64_t re::serializeArray<re::EncoderOPACK<re::FixedArrayInputStream>>(void *a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
  if (a5 == a6)
  {
    goto LABEL_13;
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
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(a6 + 12) != 4)
  {
    goto LABEL_70;
  }

  v18 = *(a5 + 2);
  v19 = *(a6 + 2);
  v20 = *(v19 + 23) & 0xFFFFFF;
  if ((*(v18 + 23) & 0xFFFFFF) != 0)
  {
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_70:
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    goto LABEL_71;
  }

  if (v20 || *(v18 + 24) != *(v19 + 24))
  {
    goto LABEL_70;
  }

LABEL_13:
  if (!a7)
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v72);
    re::TypeInfo::TypeInfo(v69, v73);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v72);
    re::TypeInfo::TypeInfo(v68, v73);
    re::TypeInfo::TypeInfo(&v72, a5);
    v27 = (*(*a1 + 80))(a1, v69);
    if (v27)
    {
      v28 = v27;
      v29 = re::ArrayAccessor::size(&v72, a4);
      v30 = v29;
      v66 = v29;
      if (v70 == 1)
      {
        v65 = v29 * *(v71 + 8);
        if (re::EncoderOPACK<re::FixedArrayInputStream>::beginBLOB((a1 + 3), a2, v11, &v65, 0))
        {
          v34 = v65;
          v35 = *(v71 + 8);
          {
            if (v34 >= v35)
            {
              v36 = re::ArrayAccessor::elementAt(&v72, a4, 0);
              v37 = (a1 + 3);
              v38 = 0;
LABEL_47:
              re::EncoderOPACK<re::FixedArrayInputStream>::serializeBLOB(v37, v36, v38);
            }

LABEL_48:
            re::EncoderOPACK<re::FixedArrayInputStream>::endBLOB((a1 + 3));
LABEL_67:
            v57 = *(a1 + 64) ^ 1;
            return v57 & 1;
          }
        }
      }

      else
      {
        v45 = *(*(a5 + 2) + 92) & 0xFFFFFF;
        if (v45)
        {
          v46 = 8;
        }

        else
        {
          v46 = 4;
        }

        {
          v50 = v66;
          if (v45)
          {
            v51 = v66 == 0;
          }

          else
          {
            v51 = 1;
          }

          v52 = v51;
          if (!v51)
          {
            v53 = *a4;
            v64[0] = 0;
            v64[1] = 0xFFFFFFFFLL;
            (*(*a1 + 16))(a1, v53, v64);
            v50 = v66;
          }

          if (v50)
          {
            v54 = 0;
            do
            {
              v55 = re::ArrayAccessor::elementAt(&v72, a4, v54);
              v28(a1, 0, 0, v55, v69, v68, 0);
              ++v54;
            }

            while (v54 < v66);
          }

          if (v52)
          {
            goto LABEL_66;
          }

LABEL_65:
          (*(*a1 + 24))(a1);
LABEL_66:
          re::EncoderOPACK<re::FixedArrayInputStream>::endArray((a1 + 3));
          goto LABEL_67;
        }
      }

LABEL_71:
      v57 = 0;
      return v57 & 1;
    }

LABEL_23:
    v39 = re::TypeInfo::name(v69);
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v40, v41, v42, v43, v44, v39[1]);
    goto LABEL_71;
  }

  v21 = a1[26];
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v72);
  re::TypeInfo::TypeInfo(v68, v73);
  re::internal::translateType(v21, v68, v69);
  v22 = (*(*a1 + 80))(a1, v69);
  if (!v22)
  {
    goto LABEL_23;
  }

  v23 = v22;
  v24 = *(a6 + 2);
  v25 = *(v24 + 23) & 0xFFFFFF;
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(v24 + 24);
  }

  v72 = v26;
  if (v70 != 1)
  {
    if (v25)
    {
      v58 = 8;
    }

    else
    {
      v58 = 4;
    }

    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginArray((a1 + 3), a2, v11, &v72, v58))
    {
      v59 = v72;
      if (v25)
      {
        v60 = v72 == 0;
      }

      else
      {
        v60 = 1;
      }

      v61 = v60;
      if (!v60)
      {
        v67[0] = 0;
        v67[1] = 0xFFFFFFFFLL;
        (*(*a1 + 16))(a1, 0, v67);
        v59 = v72;
      }

      if (v59)
      {
        v62 = 0;
        do
        {
          v23(a1, 0, 0, 0, v69, v69, 1);
          ++v62;
        }

        while (v62 < v72);
      }

      if (v61)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    goto LABEL_71;
  }

  v68[0] = v26 * *(v71 + 8);
  v56 = re::EncoderOPACK<re::FixedArrayInputStream>::beginBLOB((a1 + 3), a2, v11, v68, 0);
  v57 = 0;
  if (v56)
  {
    if (v68[0])
    {
      v37 = (a1 + 3);
      v36 = 0;
      v38 = 1;
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  return v57 & 1;
}

uint64_t re::serializeList<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
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
    goto LABEL_52;
  }

LABEL_11:
  if (!a7)
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v64);
    re::TypeInfo::TypeInfo(v61, &v65);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v64);
    re::TypeInfo::TypeInfo(v60, &v65);
    re::TypeInfo::TypeInfo(&v64, a5);
    v25 = (*(*a1 + 80))(a1, v61);
    if (!v25)
    {
      goto LABEL_28;
    }

    v26 = v25;
    v27 = (*(v66 + 88))(a4);
    v28 = v27;
    v59 = v27;
    if (*(a5 + 12) == 5 && (*(*(a5 + 2) + 48) & 8) != 0 && v62 == 1)
    {
      v58[0] = v27 * *(v63 + 8);
      if (re::EncoderOPACK<re::FixedArrayInputStream>::beginBLOB(a1 + 24, a2, v11, v58, 0))
      {
        v33 = v58[0];
        v34 = *(v63 + 8);
        v35 = v58[0] / v34;
        if (v58[0] / v34 * v34 == v58[0])
        {
          {
            if (v33 < v34)
            {
              goto LABEL_18;
            }

            v23 = (*(v66 + 104))(a4, 0);
            v22 = a1 + 24;
            v24 = 0;
            goto LABEL_17;
          }
        }

        else
        {
          re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), a2, "BLOB size mismatch: BLOB is %zu bytes, but list only accomodates %zu bytes (%zu elements * %zu bytes/element)", v29, v35, v30, v31, v32, v58[0]);
        }
      }
    }

    {
      if (*(v66 + 104))
      {
        if (v59)
        {
          for (i = 0; i < v59; ++i)
          {
            v42 = (*(v66 + 104))(a4, i);
            v26(a1, 0, 0, v42, v61, v60, 0);
          }
        }

        goto LABEL_42;
      }

      v46 = *(v66 + 112);
      if (v46 && *(v66 + 120) && *(v66 + 128))
      {
        v47 = v46(a4, *(a1 + 56));
        v48 = (*(v66 + 120))();
        if (v48)
        {
          v49 = v48;
          do
          {
            v26(a1, 0, 0, v49, v61, v60, 0);
            v49 = (*(v66 + 120))(v47);
          }

          while (v49);
        }

        (*(v66 + 128))(v47, *(a1 + 56));
        goto LABEL_42;
      }

      re::TypeInfo::TypeInfo(v58, &v64);
      v57 = re::TypeInfo::name(v58)[1];
      re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "List type %s does not provide an indexer or iterator.", v51, v52, v53, v54, v55, v57);
    }

LABEL_52:
    v21 = 0;
    return v21 & 1;
  }

  v18 = *(a1 + 208);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v64);
  re::TypeInfo::TypeInfo(v60, &v65);
  re::internal::translateType(v18, v60, v61);
  v19 = (*(*a1 + 80))(a1, v61);
  if (!v19)
  {
LABEL_28:
    v56 = re::TypeInfo::name(v61)[1];
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v36, v37, v38, v39, v40, v56);
    goto LABEL_52;
  }

  v64 = 0;
  if (v62 != 1)
  {
    v43 = v19;
    v44 = re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1 + 24, a2, v11, &v64, 0);
    v21 = 0;
    if (!v44)
    {
      return v21 & 1;
    }

    if (v64)
    {
      for (j = 0; j < v64; ++j)
      {
        v43(a1, 0, 0, 0, v61, v61, 1);
      }
    }

LABEL_42:
    re::EncoderOPACK<re::FixedArrayInputStream>::endArray((a1 + 24));
    goto LABEL_43;
  }

  v60[0] = 0;
  v20 = re::EncoderOPACK<re::FixedArrayInputStream>::beginBLOB(a1 + 24, a2, v11, v60, 0);
  v21 = 0;
  if (v20)
  {
    if (!v60[0])
    {
LABEL_18:
      re::EncoderOPACK<re::FixedArrayInputStream>::endBLOB((a1 + 24));
LABEL_43:
      v21 = *(a1 + 64) ^ 1;
      return v21 & 1;
    }

    v22 = a1 + 24;
    v23 = 0;
    v24 = 1;
LABEL_17:
    re::EncoderOPACK<re::FixedArrayInputStream>::serializeBLOB(v22, v23, v24);
    goto LABEL_18;
  }

  return v21 & 1;
}

uint64_t re::serializeDictionary<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
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
    re::TypeInfo::TypeInfo(v50, &v53 + 8);
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
        v31 = re::EncoderOPACK<re::FixedArrayInputStream>::beginDictionary(a1 + 24, a2, v11, &v46, 0);
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
          Instance = re::TypeInfo::createInstance(v52, *(a1 + 48), *(a1 + 200));
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

              v28(a1, "key", 0, Instance, v52, v50, 0);
              v36 = *(a1 + 48);
              if (*(a1 + 64) == 1)
              {
                break;
              }

              v37 = (*(v48 + 112))(a4, v47, v36, Instance);
              v30(a1, "value", 0, v37, v51, v49, 0);
              re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endDictionaryEntry((a1 + 24));
              if (++v35 >= v46)
              {
                goto LABEL_31;
              }
            }

            re::TypeInfo::releaseInstance(v52, Instance, v36, *(a1 + 200));
            goto LABEL_37;
          }

LABEL_31:
          re::TypeInfo::releaseInstance(v52, Instance, *(a1 + 48), *(a1 + 200));
        }

LABEL_32:
        re::EncoderOPACK<re::FixedArrayInputStream>::endDictionary((a1 + 24));
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

  v18 = *(a1 + 208);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v53);
  re::TypeInfo::TypeInfo(v51, &v53 + 8);
  re::internal::translateType(v18, v51, v52);
  v19 = *(a1 + 208);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v53);
  re::TypeInfo::TypeInfo(v50, &v53 + 8);
  re::internal::translateType(v19, v50, v51);
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
  *v50 = 0;
  v24 = re::EncoderOPACK<re::FixedArrayInputStream>::beginDictionary(a1 + 24, a2, v11, v50, 0);
  v25 = 0;
  if (v24)
  {
    if (*v50)
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
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endDictionaryEntry((a1 + 24));
        ++v26;
      }

      while (v26 < *v50);
    }

    goto LABEL_32;
  }

  return v25 & 1;
}

uint64_t re::serializeUnion<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_19:
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
      goto LABEL_20;
    }

    v16 = **(a5 + 2);
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
  v14 = re::EncoderOPACK<re::FixedArrayInputStream>::beginObject(a1 + 24, a2, v11, 16);
  if (!a7)
  {
    if (v14)
    {
      re::TypeInfo::TypeInfo(v23, a5);
      Tag = re::UnionAccessor::readTag(v23, a4);
      re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, "tag", 0, &Tag, 0);
      re::UnionAccessor::reset(v23, a4, Tag, *(a1 + 48));
      if (Tag < *(*(a5 + 2) + 96))
      {
        re::TypeInfo::unionMember(a5, Tag, v21);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, "value", 0, a4, v21, v21, 0);
        }
      }

      goto LABEL_13;
    }

LABEL_20:
    v15 = 0;
    return v15 & 1;
  }

  if (!v14)
  {
    goto LABEL_20;
  }

  v21[0] = 0;
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, "tag", 0, v21, 0);
  if (v21[0] < *(*(a6 + 2) + 96))
  {
    re::TypeInfo::unionMember(a6, v21[0], v23);
    if ((*(a1 + 64) & 1) == 0)
    {
      (*(*a1 + 72))(a1, "value", 0, 0, v23, v23, 1);
    }
  }

LABEL_13:
  re::EncoderOPACK<re::FixedArrayInputStream>::endObject(a1 + 24);
  v15 = *(a1 + 64) ^ 1;
  return v15 & 1;
}

uint64_t re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, re::TypeInfo *this, re::TypeInfo *a6, uint64_t a7)
{
  if (a7)
  {
    if (*(*(this + 2) + 49))
    {
      v25 = *(a1 + 208);
      v49[0] = 0x2686EB529B3EE220;
      v49[1] = "DynamicString";
      re::TypeRegistry::typeInfo(v25, v49, &v43);
      v26 = re::TypeInfo::TypeInfo(v50, v44);
      if (v49[0])
      {
        if (v49[0])
        {
        }
      }

      v27 = v50;
      v28 = v50;
      v29 = a1;
      v30 = a2;
      v31 = a3;
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

      v29 = a1;
      v30 = a2;
      v31 = a3;
      v27 = this;
      v28 = this;
    }

    re::serializeDynamicString<re::EncoderOPACK<re::FixedArrayInputStream>>(v29, v30, v31, 0, v27, v28, 1);
LABEL_36:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
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
      v43 = &unk_1F5CB5E78;
      v44[0] = a1;
      v44[1] = v19;
      v44[2] = v20;
      v45[0] = 0;
      v45[1] = 0;
      v46 = 1;
      v47 = 0;
      v48 = 0;
      v50[0].n128_u64[0] = a2;
      v50[0].n128_u32[2] = a3;
      v21 = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(v45, v50);
      v18(&v43, a4, v21);
      v22 = *(a1 + 64) ^ 1;
      v43 = &unk_1F5CB5E78;
      if (v45[0])
      {
        if ((v46 & 1) == 0)
        {
          (*(*v45[0] + 40))();
        }
      }

      return v22 & 1;
    }
  }

  if ((v17 & 4) == 0)
  {
    v23 = re::EncoderOPACK<re::FixedArrayInputStream>::beginObject(a1 + 24, a2, a3, 0);
    v22 = 0;
    if (!v23)
    {
      return v22 & 1;
    }

    if (this == a6)
    {
      goto LABEL_17;
    }

    if (*this == *a6)
    {
      v33 = **(this + 2);
      v34 = **(a6 + 2);
      if (v33 == v34)
      {
        v36 = WORD1(v33) == WORD1(v34);
        v35 = (v34 ^ v33) & 0xFFFFFF00000000;
        v36 = v36 && v35 == 0;
        if (v36)
        {
          goto LABEL_17;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, v24))
    {
LABEL_17:
      re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a4, this, a7);
LABEL_35:
      re::EncoderOPACK<re::FixedArrayInputStream>::endObject(a1 + 24);
      goto LABEL_36;
    }

    if (*(this + 12) == *(a6 + 12))
    {
      re::internal::serializeMembersWithVersioning<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a4, this, a6, a7);
    }

    else
    {
      v37 = re::TypeInfo::name(this)[1];
      re::TypeInfo::name(a6);
      re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v38, v39, v40, v41, v42, v37);
    }

    goto LABEL_35;
  }

  return re::internal::serializeObjectWithOneMember<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeBool(uint64_t a1, const char *a2, int a3, _BYTE *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v19[5] = v5;
  v19[6] = v6;
  v19[0] = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, v19, 0);
  if (result)
  {
    __dst = 0;
    if (*(a1 + 40))
    {
LABEL_5:
      for (i = v19[0]; i; --i)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
      }

      result = 1;
      if ((a5 & 2) == 0)
      {
        v13 = *(a1 + 128) + 48 * *(a1 + 112);
        if (*(v13 - 48) != 2)
        {
          ++*(v13 - 16);
        }
      }

      return result;
    }

    v14 = *(a1 + 168);
    if (v14)
    {
      v15 = v14 - 1;
      v16 = *(a1 + v15 + 160);
      __dst = *(a1 + v15 + 160);
      *(a1 + 168) = v15;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL) & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "Boolean");
        goto LABEL_5;
      }

      v16 = __dst;
    }

    if (v16 == 2)
    {
      if ((a5 & 1) == 0)
      {
        *a4 = 0;
      }
    }

    else
    {
      if (v16 != 1)
      {
        v17 = re::OPACK::toString(v16);
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(a1, "Boolean", v17);
        return 0;
      }

      if ((a5 & 1) == 0)
      {
        *a4 = 1;
      }
    }

    goto LABEL_5;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(uint64_t a1, const char *a2, int a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v26[5] = v5;
  v26[6] = v6;
  v26[0] = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, v26, 0);
  if (result)
  {
    __dst = 0;
    if ((*(a1 + 40) & 1) == 0)
    {
      v12 = *(a1 + 168);
      if (v12)
      {
        v13 = v12 - 1;
        v14 = *(a1 + v13 + 160);
        __dst = *(a1 + v13 + 160);
        *(a1 + 168) = v13;
      }

      else
      {
        if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
        {
LABEL_25:
          re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "Float");
          goto LABEL_26;
        }

        v14 = __dst;
      }

      if (v14 != 53)
      {
        v21 = re::OPACK::toString(v14);
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(a1, "Float", v21);
        return 0;
      }

      if (*(a1 + 40))
      {
        goto LABEL_26;
      }

      v15 = *(a1 + 168);
      if (v15)
      {
        v16 = 4;
        if (v15 < 4)
        {
          v16 = *(a1 + 168);
        }

        v17 = v15 - v16;
        if ((v15 - 1) >= (v15 - v16))
        {
          v18 = *(a1 + 168);
          do
          {
            *a4++ = *(a1 + 159 + v18);
            v19 = v18 - 2;
            --v18;
          }

          while (v19 >= v17);
        }

        *(a1 + 168) = v17;
        if (v15 > 3)
        {
          goto LABEL_26;
        }

        v20 = 4 - v16;
      }

      else
      {
        v20 = 4;
      }

      if (a5)
      {
        v22 = 0;
      }

      else
      {
        v22 = a4;
      }

      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v22, v20) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_26:
    for (i = v26[0]; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    result = 1;
    if ((a5 & 2) == 0)
    {
      v24 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v24 - 48) != 2)
      {
        ++*(v24 - 16);
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(uint64_t a1, const char *a2, int a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v26[5] = v5;
  v26[6] = v6;
  v26[0] = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, v26, 0);
  if (result)
  {
    __dst = 0;
    if ((*(a1 + 40) & 1) == 0)
    {
      v12 = *(a1 + 168);
      if (v12)
      {
        v13 = v12 - 1;
        v14 = *(a1 + v13 + 160);
        __dst = *(a1 + v13 + 160);
        *(a1 + 168) = v13;
      }

      else
      {
        if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
        {
LABEL_25:
          re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "Double");
          goto LABEL_26;
        }

        v14 = __dst;
      }

      if (v14 != 54)
      {
        v21 = re::OPACK::toString(v14);
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(a1, "Double", v21);
        return 0;
      }

      if (*(a1 + 40))
      {
        goto LABEL_26;
      }

      v15 = *(a1 + 168);
      if (v15)
      {
        v16 = 8;
        if (v15 < 8)
        {
          v16 = *(a1 + 168);
        }

        v17 = v15 - v16;
        if ((v15 - 1) >= (v15 - v16))
        {
          v18 = *(a1 + 168);
          do
          {
            *a4++ = *(a1 + 159 + v18);
            v19 = v18 - 2;
            --v18;
          }

          while (v19 >= v17);
        }

        *(a1 + 168) = v17;
        if (v15 > 7)
        {
          goto LABEL_26;
        }

        v20 = 8 - v16;
      }

      else
      {
        v20 = 8;
      }

      if (a5)
      {
        v22 = 0;
      }

      else
      {
        v22 = a4;
      }

      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v22, v20) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_26:
    for (i = v26[0]; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    result = 1;
    if ((a5 & 2) == 0)
    {
      v24 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v24 - 48) != 2)
      {
        ++*(v24 - 16);
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::advance(uint64_t a1, const char *a2, int a3, void *a4, _DWORD *a5)
{
  v9 = *(*(a1 + 128) + 48 * *(a1 + 112) - 48);
  if (v9 == 2)
  {
    if (re::EncoderOPACK<re::FixedArrayInputStream>::advance_KeyedContainer(a1, a2, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v9 == 1 && !re::EncoderOPACK<re::FixedArrayInputStream>::advance_UnkeyedContainer(a1, a2))
  {
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::evaluateConditional(a1, a2, a5, a4);
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readTag(uint64_t a1, const char *a2, char *__dst, uint64_t a4)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v6 = *(a1 + 168);
    if (v6)
    {
      v7 = v6 - 1;
      *__dst = *(a1 + v7 + 160);
      *(a1 + 168) = v7;
      return 1;
    }

    v4 = 1;
    if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, __dst, 1uLL))
    {
      return v4;
    }

    re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, a4);
  }

  return 0;
}

BOOL re::EncoderOPACK<re::FixedArrayInputStream>::advance_UnkeyedContainer(uint64_t a1, const char *a2)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  v6 = *(a1 + 168);
  if (v6)
  {
    v7 = v6 - 1;
    v8 = *(a1 + v6 - 1 + 160);
    *(a1 + 168) = v7;
  }

  else
  {
    __dst = 0;
    if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
    {
      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "Array element or terminator");
      return 0;
    }

    v8 = __dst;
    v7 = *(a1 + 168);
  }

  if (v7 <= 7)
  {
    *(a1 + 168) = v7 + 1;
    *(a1 + v7 + 160) = v8;
  }

  return v8 != 3;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::advance_KeyedContainer(uint64_t a1, const char *a2, int a3)
{
  v3 = *(a1 + 128);
  v4 = *(a1 + 112);
  v5 = v3 + 48 * v4;
  if ((*(v5 - 44) & 0x40) != 0)
  {
    return 1;
  }

  v7 = *(v5 - 16);
  v38 = v7;
  if (v7 == a3)
  {
LABEL_3:
    *(v3 + 48 * v4 - 16) = 0xFFFFFFFF80000000;
    return 1;
  }

  v11 = a1 + 160;
  v12 = a1 + 159;
  while (1)
  {
    if (v7 > a3)
    {
      result = 0;
      *(*(a1 + 128) + 48 * *(a1 + 112) - 16) = v7;
      return result;
    }

    if ((v7 & 0x80000000) == 0)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    __dst = 0;
    if (*(a1 + 40))
    {
      return 0;
    }

    v13 = *(a1 + 168);
    if (v13)
    {
      v14 = v13 - 1;
      v15 = *(v11 + v13 - 1);
      __dst = v15;
      *(a1 + 168) = v14;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL) & 1) == 0)
      {
        v32 = "Integer (numeric tag)";
        goto LABEL_63;
      }

      v15 = __dst;
    }

    if (v15 == 3)
    {
      break;
    }

    if ((v15 - 7) <= 0x28)
    {
      LODWORD(v16) = v15 - 8;
      goto LABEL_49;
    }

    if (v15 != 50)
    {
      if (v15 != 49)
      {
        if (v15 != 48)
        {
          v34 = *(a1 + 168);
          if (v34 <= 7)
          {
            *(a1 + 168) = v34 + 1;
            *(v11 + v34) = v15;
          }

          return 0;
        }

        v36 = 0;
        if (*(a1 + 40))
        {
          return 0;
        }

        v16 = *(a1 + 168);
        if (v16)
        {
          v17 = v16 - 1;
          LOBYTE(v16) = *(v11 + v16 - 1);
          *(a1 + 168) = v17;
        }

        else
        {
          if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &v36, 1uLL))
          {
            v32 = "8-Bit Signed Integer";
            goto LABEL_63;
          }

          LOBYTE(v16) = v36;
        }

        LODWORD(v16) = v16;
        goto LABEL_49;
      }

      v35 = 0;
      if (*(a1 + 40))
      {
        return 0;
      }

      v18 = *(a1 + 168);
      if (!v18)
      {
        v21 = &v35;
        v24 = 2;
        goto LABEL_44;
      }

      if (v18 >= 2)
      {
        v19 = 2;
      }

      else
      {
        v19 = *(a1 + 168);
      }

      v20 = v18 - v19;
      v21 = &v35;
      if ((v18 - 1) >= (v18 - v19))
      {
        v22 = *(a1 + 168);
        do
        {
          *v21++ = *(v12 + v22);
          v23 = v22 - 2;
          --v22;
        }

        while (v23 >= v20);
      }

      *(a1 + 168) = v20;
      if (v18 == 1)
      {
        v24 = 2 - v19;
LABEL_44:
        if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v21, v24) & 1) == 0)
        {
          v32 = "16-Bit Signed Integer";
          goto LABEL_63;
        }
      }

      LODWORD(v16) = v35;
LABEL_49:
      v38 = v16;
      goto LABEL_50;
    }

    if (*(a1 + 40))
    {
      return 0;
    }

    v25 = *(a1 + 168);
    if (v25)
    {
      if (v25 >= 4)
      {
        v26 = 4;
      }

      else
      {
        v26 = *(a1 + 168);
      }

      v27 = v25 - v26;
      v28 = &v38;
      if ((v25 - 1) >= (v25 - v26))
      {
        v29 = *(a1 + 168);
        do
        {
          *v28++ = *(v12 + v29);
          v30 = v29 - 2;
          --v29;
        }

        while (v30 >= v27);
      }

      *(a1 + 168) = v27;
      if (v25 > 3)
      {
        goto LABEL_50;
      }

      v31 = 4 - v26;
    }

    else
    {
      v28 = &v38;
      v31 = 4;
    }

    if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v28, v31) & 1) == 0)
    {
      v32 = "32-Bit Signed Integer";
LABEL_63:
      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, v32);
      return 0;
    }

LABEL_50:
    v7 = v38;
    if (v38 == a3)
    {
      v3 = *(a1 + 128);
      v4 = *(a1 + 112);
      goto LABEL_3;
    }
  }

  v33 = *(a1 + 168);
  if (v33 <= 7)
  {
    *(a1 + 168) = v33 + 1;
    *(v11 + v33) = 3;
  }

  return 0;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::evaluateConditional(uint64_t a1, const char *a2, _DWORD *a3, void *a4)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  __dst = 0;
  v9 = *(a1 + 168);
  if (v9)
  {
    v10 = v9 - 1;
    v11 = *(a1 + v9 - 1 + 160);
    __dst = v11;
    *(a1 + 168) = v10;
  }

  else
  {
    if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
    {
LABEL_62:
      v26 = "Array";
      goto LABEL_63;
    }

    v11 = __dst;
  }

  v12 = v11;
  v13 = v11 - 209;
  if (v11 - 223 < 0xFFFFFFF3 || v11 == 209)
  {
    v15 = *(a1 + 168);
    if (v15 <= 7)
    {
      *(a1 + 168) = v15 + 1;
      *(a1 + v15 + 160) = v12;
    }

    return 1;
  }

  v4 = 0;
  v57 = 0;
  if (*(a1 + 40))
  {
    return v4;
  }

  v17 = *(a1 + 168);
  if (v17)
  {
    v18 = v17 - 1;
    v19 = *(a1 + v17 - 1 + 160);
    v57 = v19;
    *(a1 + 168) = v18;
    goto LABEL_21;
  }

  if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &v57, 1uLL))
  {
    v19 = v57;
LABEL_21:
    if (v19 != 69)
    {
      v24 = *(a1 + 168);
      if (v24 <= 7)
      {
        v25 = a1 + 160;
        *(a1 + 168) = v24 + 1;
        *(a1 + 160 + v24) = v19;
        goto LABEL_48;
      }

      return 1;
    }

    v56 = 0;
    v55 = 0;
    if ((*(a1 + 40) & 1) == 0)
    {
      v20 = *(a1 + 168);
      if (!v20)
      {
        v23 = &v55;
        v27 = 5;
        goto LABEL_36;
      }

      v21 = 5;
      if (v20 < 5)
      {
        v21 = *(a1 + 168);
      }

      v22 = v20 - v21;
      if ((v20 - 1) >= (v20 - v21))
      {
        v23 = &v55;
        v28 = *(a1 + 168);
        do
        {
          *v23++ = *(a1 + 159 + v28);
          v29 = v28 - 2;
          --v28;
        }

        while (v29 >= v22);
      }

      else
      {
        v23 = &v55;
      }

      *(a1 + 168) = v22;
      if (v20 <= 4)
      {
        v27 = 5 - v21;
LABEL_36:
        if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v23, v27) & 1) == 0)
        {
          re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "Small String");
        }
      }
    }

    if (v55 == 1852793664 && v56 == 100)
    {
      v38 = 0;
      v39 = v12 - 210;
      v40 = 1;
      while ((*(a1 + 40) & 1) == 0)
      {
        v41 = *(a1 + 168);
        if (v41)
        {
          v42 = v41 - 1;
          v43 = *(a1 + 160 + v41 - 1);
          __dst = v43;
          *(a1 + 168) = v42;
        }

        else
        {
          if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
          {
            goto LABEL_62;
          }

          v43 = __dst;
        }

        if ((v43 - 210) >= 0xD)
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v49);
          if (v50)
          {
            v46 = v52;
          }

          else
          {
            v46 = v51;
          }

          re::DynamicString::format("Failed to read version conditional %s. Invalid condition.", &v53, v46);
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, &v53);
          if (v53)
          {
            if (BYTE8(v53))
            {
              (*(*v53 + 40))();
            }

            v53 = 0u;
            v54 = 0u;
          }

          if (v49 && (v50 & 1) != 0)
          {
            (*(*v49 + 40))();
          }

          return 0;
        }

        v48 = 0;
        v4 = re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<int>(a1, a2, &v48);
        if ((v4 & 1) == 0)
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v49);
          if (v50)
          {
            v47 = v52;
          }

          else
          {
            v47 = v51;
          }

          re::DynamicString::format("Failed to read version conditional %s. Failed to read version.", &v53, v47);
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, &v53);
          if (v53)
          {
            if (BYTE8(v53))
            {
              (*(*v53 + 40))();
            }

            v53 = 0u;
            v54 = 0u;
          }

          if (v49 && (v50 & 1) != 0)
          {
            (*(*v49 + 40))();
          }

          return v4;
        }

        if (*(a1 + 136) <= v48 || v39 == v38)
        {
          if (a3)
          {
            *a3 = v48;
          }

          *a4 = v13 + ~v38;
          return v4;
        }

        re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
        v38 = v40;
        if (v13 <= v40++)
        {
          re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "evaluateConditional", 2285);
          _os_crash();
          __break(1u);
          goto LABEL_62;
        }
      }

      return 0;
    }

    v31 = *(a1 + 168);
    if (v31 + 4 <= 7)
    {
      for (i = 4; i != -1; --i)
      {
        v33 = *(&v55 + i);
        v34 = *(a1 + 168);
        *(a1 + 168) = v34 + 1;
        *(a1 + 160 + v34) = v33;
      }

      v31 = *(a1 + 168);
    }

    if (v31 <= 7)
    {
      v35 = v57;
      v25 = a1 + 160;
      *(a1 + 168) = v31 + 1;
      *(a1 + 160 + v31) = v35;
LABEL_48:
      v36 = *(a1 + 168);
      if (v36 <= 7)
      {
        v37 = __dst;
        *(a1 + 168) = v36 + 1;
        *(v25 + v36) = v37;
      }

      return 1;
    }

    return 1;
  }

  v26 = "Small String";
LABEL_63:
  re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, v26);
  return 0;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(uint64_t result)
{
  if (*(result + 40))
  {
    return result;
  }

  v1 = result;
  __dst = 0;
  v2 = *(result + 168);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = *(result + v3 + 160);
    __dst = v4;
    *(v1 + 168) = v3;
  }

  else
  {
    if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, &__dst, 1uLL))
    {
      v7 = "Member";
      v8 = v1;
      return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v8, "unknown", v7);
    }

    v4 = __dst;
  }

  result = re::OPACK::toString(v4);
  v5 = result;
  v6 = __dst;
  if (__dst > 0x31u)
  {
    if (__dst > 0xC0u)
    {
      if (__dst <= 0xC2u)
      {
        if (__dst != 193)
        {
LABEL_34:
          if (*(v1 + 40))
          {
            return result;
          }

          v12 = *(v1 + 168);
          if (!v12)
          {
            v15 = 2;
            goto LABEL_80;
          }

          v10 = 2;
          if (v12 >= 2)
          {
            v11 = 2;
          }

          else
          {
            v11 = *(v1 + 168);
          }

          *(v1 + 168) = v12 - v11;
          if (v12 != 1)
          {
            return result;
          }

          goto LABEL_63;
        }

LABEL_50:
        if (*(v1 + 40))
        {
          return result;
        }

        v14 = v1;
        v15 = 1;
        goto LABEL_81;
      }

      if (__dst == 195)
      {
        if (*(v1 + 40))
        {
          return result;
        }

        v18 = *(v1 + 168);
        if (v18)
        {
          v19 = 3;
          if (v18 < 3)
          {
            v19 = *(v1 + 168);
          }

          *(v1 + 168) = v18 - v19;
          if (v18 > 2)
          {
            return result;
          }

          v15 = v19 ^ 3;
        }

        else
        {
          v15 = 3;
        }

        goto LABEL_80;
      }

      if (__dst != 196)
      {
        goto LABEL_52;
      }
    }

    else if (__dst > 0x34u)
    {
      if (__dst != 53)
      {
        if (__dst != 54)
        {
          goto LABEL_52;
        }

        goto LABEL_25;
      }
    }

    else if (__dst != 50)
    {
      if (__dst != 51)
      {
        goto LABEL_52;
      }

      goto LABEL_25;
    }

    if (*(v1 + 40))
    {
      return result;
    }

    v13 = *(v1 + 168);
    if (!v13)
    {
      v15 = 4;
      goto LABEL_80;
    }

    v10 = 4;
    if (v13 >= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(v1 + 168);
    }

    *(v1 + 168) = v13 - v11;
    if (v13 > 3)
    {
      return result;
    }

    goto LABEL_63;
  }

  if (__dst <= 4u)
  {
    if (__dst - 1 < 4)
    {
      return result;
    }

    goto LABEL_52;
  }

  if (__dst > 0x2Fu)
  {
    if (__dst != 48)
    {
      if (__dst != 49)
      {
        goto LABEL_52;
      }

      goto LABEL_34;
    }

    goto LABEL_50;
  }

  if (__dst == 5)
  {
    if (*(v1 + 40))
    {
      return result;
    }

    v17 = *(v1 + 168);
    if (!v17)
    {
      v15 = 16;
      goto LABEL_80;
    }

    v10 = 16;
    if (v17 >= 0x10)
    {
      v11 = 16;
    }

    else
    {
      v11 = *(v1 + 168);
    }

    *(v1 + 168) = v17 - v11;
    if (v17 > 0xF)
    {
      return result;
    }

    goto LABEL_63;
  }

  if (__dst == 6)
  {
LABEL_25:
    if (*(v1 + 40))
    {
      return result;
    }

    v9 = *(v1 + 168);
    if (!v9)
    {
      v15 = 8;
      goto LABEL_80;
    }

    v10 = 8;
    if (v9 >= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = *(v1 + 168);
    }

    *(v1 + 168) = v9 - v11;
    if (v9 > 7)
    {
      return result;
    }

LABEL_63:
    v15 = v10 - v11;
LABEL_80:
    v14 = v1;
LABEL_81:
    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v14, 0, v15);
    if (result)
    {
      return result;
    }

    v8 = v1;
    v7 = v5;
    return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v8, "unknown", v7);
  }

LABEL_52:
  if (__dst - 7 >= 0x29)
  {
    if (__dst - 64 <= 0x24)
    {
      v16 = *(v1 + 168);
      if (v16 <= 7)
      {
        *(v1 + 168) = v16 + 1;
        *(v1 + v16 + 160) = v6;
      }

      __n[0] = 0;
      re::EncoderOPACK<re::FixedArrayInputStream>::readStringTag(v1, "unknown", __n);
      return re::EncoderOPACK<re::FixedArrayInputStream>::readRaw(v1, "unknown", 0, __n[0], v5, 1);
    }

    if (__dst - 112 <= 0x24)
    {
      v20 = *(v1 + 168);
      if (v20 <= 7)
      {
        *(v1 + 168) = v20 + 1;
        *(v1 + v20 + 160) = v6;
      }

      __n[0] = 0;
      re::EncoderOPACK<re::FixedArrayInputStream>::readDataTag(v1, "unknown", __n);
      return re::EncoderOPACK<re::FixedArrayInputStream>::readRaw(v1, "unknown", 0, __n[0], v5, 1);
    }

    if (__dst - 160 >= 0x21)
    {
      if (__dst - 208 > 0xE)
      {
        if (__dst == 223)
        {
          result = re::EncoderOPACK<re::FixedArrayInputStream>::readTag(v1, "unknown", &__dst, "Array value/terminator");
          if (result)
          {
            do
            {
              v23 = __dst;
              if (__dst == 3)
              {
                break;
              }

              v24 = *(v1 + 168);
              if (v24 <= 7)
              {
                *(v1 + 168) = v24 + 1;
                *(v1 + 160 + v24) = v23;
              }

              re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
              result = re::EncoderOPACK<re::FixedArrayInputStream>::readTag(v1, "unknown", &__dst, "Array value/terminator");
            }

            while ((result & 1) != 0);
          }
        }

        else if (__dst - 224 > 0xE)
        {
          if (__dst == 239)
          {
            for (result = re::EncoderOPACK<re::FixedArrayInputStream>::readTag(v1, "unknown", &__dst, "Dictionary key/value/terminator"); result; result = re::EncoderOPACK<re::FixedArrayInputStream>::readTag(v1, "unknown", &__dst, "Dictionary key/value/terminator"))
            {
              v28 = __dst;
              if (__dst == 3)
              {
                break;
              }

              v29 = *(v1 + 168);
              if (v29 <= 7)
              {
                *(v1 + 168) = v29 + 1;
                *(v1 + 160 + v29) = v28;
              }

              v30 = -2;
              do
              {
                re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
                v27 = __CFADD__(v30++, 1);
              }

              while (!v27);
            }
          }

          else
          {
            re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(v1, 0, &v32);
            if (v33)
            {
              v31 = *&v34[7];
            }

            else
            {
              v31 = v34;
            }

            re::DynamicString::format("Failed to deserialize %s. Found unsupported tag while skipping over data.", &v35, v31);
            __n[0] = 400;
            __n[1] = re::FoundationErrorCategory(void)::instance;
            __n[2] = v35;
            __n[5] = v37;
            *&__n[3] = v36;
            re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, __n);
            if (__n[2])
            {
              if (__n[3])
              {
                (*(*__n[2] + 40))();
              }

              memset(&__n[2], 0, 32);
            }

            result = v32;
            if (v32 && (v33 & 1) != 0)
            {
              return (*(*v32 + 40))();
            }
          }
        }

        else
        {
          v25 = *(v1 + 168);
          if (v25 <= 7)
          {
            *(v1 + 168) = v25 + 1;
            *(v1 + v25 + 160) = v6;
          }

          __n[0] = 0;
          result = re::EncoderOPACK<re::FixedArrayInputStream>::readDictionaryTag(v1, "unknown", __n);
          if (2 * __n[0])
          {
            v26 = -2 * __n[0];
            do
            {
              result = re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
              v27 = __CFADD__(v26++, 1);
            }

            while (!v27);
          }
        }
      }

      else
      {
        v21 = *(v1 + 168);
        if (v21 <= 7)
        {
          *(v1 + 168) = v21 + 1;
          *(v1 + v21 + 160) = v6;
        }

        __n[0] = 0;
        result = re::EncoderOPACK<re::FixedArrayInputStream>::readArrayTag(v1, "unknown", __n);
        for (i = __n[0]; i; result = re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1))
        {
          --i;
        }
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readRaw(uint64_t a1, const char *a2, _BYTE *a3, size_t __n, uint64_t a5, char a6)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v10 = *(a1 + 168);
  if (v10)
  {
    if (v10 >= __n)
    {
      v11 = __n;
    }

    else
    {
      v11 = *(a1 + 168);
    }

    v12 = v10 - v11;
    if ((v10 - 1) >= (v10 - v11))
    {
      do
      {
        *a3++ = *(a1 + 159 + v10);
        v13 = v10 - 2;
        --v10;
      }

      while (v13 >= v12);
    }

    *(a1 + 168) = v12;
    __n -= v11;
  }

  if (!__n)
  {
    return 1;
  }

  v14 = (a6 & 1) != 0 ? 0 : a3;
  if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v14, __n))
  {
    return 1;
  }

  re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, a5);
  return 0;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readStringTag(uint64_t result, const char *a2, uint64_t *a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __dst = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __dst = *(v5 + v7 + 160);
      *(v5 + 168) = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, &__dst, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "String");
      }

      result = __dst;
    }

    if ((result - 64) <= 0x20)
    {
      v8 = result - 64;
LABEL_8:
      *a3 = v8;
      return result;
    }

    if (result <= 98)
    {
      if (result != 97)
      {
        if (result == 98)
        {
          LOWORD(v32) = 0;
          if (*(v5 + 40))
          {
            return result;
          }

          v9 = *(v5 + 168);
          if (v9)
          {
            v10 = 2;
            if (v9 < 2)
            {
              v10 = *(v5 + 168);
            }

            v11 = v9 - v10;
            if ((v9 - 1) >= (v9 - v10))
            {
              v12 = &v32;
              v26 = *(v5 + 168);
              do
              {
                *v12++ = *(v5 + 159 + v26);
                v27 = v26 - 2;
                --v26;
              }

              while (v27 >= v11);
            }

            else
            {
              v12 = &v32;
            }

            *(v5 + 168) = v11;
            if (v9 != 1)
            {
              goto LABEL_47;
            }

            v23 = 2 - v10;
          }

          else
          {
            v12 = &v32;
            v23 = 2;
          }

          result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, v12, v23);
          if (result)
          {
LABEL_47:
            v8 = v32;
            goto LABEL_8;
          }

          return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "String");
        }

LABEL_26:
        v17 = re::OPACK::toString(result);
        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v5, "String", v17);
      }

      LOBYTE(v32) = 0;
      if (*(v5 + 40))
      {
        return result;
      }

      v8 = *(v5 + 168);
      if (v8)
      {
        v18 = v8 - 1;
        LODWORD(v8) = *(v5 + v8 - 1 + 160);
        *(v5 + 168) = v18;
LABEL_40:
        v8 = v8;
        goto LABEL_8;
      }

      result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, &v32, 1uLL);
      if (result)
      {
        LODWORD(v8) = v32;
        goto LABEL_40;
      }

      return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "String");
    }

    if (result != 99)
    {
      if (result != 100)
      {
        goto LABEL_26;
      }

      v32 = 0;
      if (*(v5 + 40))
      {
        return result;
      }

      v13 = *(v5 + 168);
      if (v13)
      {
        v14 = 8;
        if (v13 < 8)
        {
          v14 = *(v5 + 168);
        }

        v15 = v13 - v14;
        if ((v13 - 1) >= (v13 - v14))
        {
          v16 = &v32;
          v28 = *(v5 + 168);
          do
          {
            *v16++ = *(v5 + 159 + v28);
            v29 = v28 - 2;
            --v28;
          }

          while (v29 >= v15);
        }

        else
        {
          v16 = &v32;
        }

        *(v5 + 168) = v15;
        if (v13 > 7)
        {
          goto LABEL_53;
        }

        v24 = 8 - v14;
      }

      else
      {
        v16 = &v32;
        v24 = 8;
      }

      result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, v16, v24);
      if ((result & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "String");
      }

LABEL_53:
      v8 = v32;
      goto LABEL_8;
    }

    LODWORD(v32) = 0;
    if (*(v5 + 40))
    {
      return result;
    }

    v19 = *(v5 + 168);
    if (v19)
    {
      v20 = 4;
      if (v19 < 4)
      {
        v20 = *(v5 + 168);
      }

      v21 = v19 - v20;
      if ((v19 - 1) >= (v19 - v20))
      {
        v22 = &v32;
        v30 = *(v5 + 168);
        do
        {
          *v22++ = *(v5 + 159 + v30);
          v31 = v30 - 2;
          --v30;
        }

        while (v31 >= v21);
      }

      else
      {
        v22 = &v32;
      }

      *(v5 + 168) = v21;
      if (v19 > 3)
      {
        goto LABEL_59;
      }

      v25 = 4 - v20;
    }

    else
    {
      v22 = &v32;
      v25 = 4;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, v22, v25);
    if ((result & 1) == 0)
    {
      return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "String");
    }

LABEL_59:
    v8 = v32;
    goto LABEL_8;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readDataTag(uint64_t result, const char *a2, uint64_t *a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __dst = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __dst = *(v5 + v7 + 160);
      *(v5 + 168) = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, &__dst, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "BLOB");
      }

      result = __dst;
    }

    if ((result - 112) <= 0x20)
    {
      v8 = result - 112;
LABEL_8:
      *a3 = v8;
      return result;
    }

    if (result <= 146)
    {
      if (result != 145)
      {
        if (result == 146)
        {
          LOWORD(v32) = 0;
          if (*(v5 + 40))
          {
            return result;
          }

          v9 = *(v5 + 168);
          if (v9)
          {
            v10 = 2;
            if (v9 < 2)
            {
              v10 = *(v5 + 168);
            }

            v11 = v9 - v10;
            if ((v9 - 1) >= (v9 - v10))
            {
              v12 = &v32;
              v26 = *(v5 + 168);
              do
              {
                *v12++ = *(v5 + 159 + v26);
                v27 = v26 - 2;
                --v26;
              }

              while (v27 >= v11);
            }

            else
            {
              v12 = &v32;
            }

            *(v5 + 168) = v11;
            if (v9 != 1)
            {
              goto LABEL_47;
            }

            v23 = 2 - v10;
          }

          else
          {
            v12 = &v32;
            v23 = 2;
          }

          result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, v12, v23);
          if (result)
          {
LABEL_47:
            v8 = v32;
            goto LABEL_8;
          }

          return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "BLOB");
        }

LABEL_26:
        v17 = re::OPACK::toString(result);
        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v5, "BLOB", v17);
      }

      LOBYTE(v32) = 0;
      if (*(v5 + 40))
      {
        return result;
      }

      v8 = *(v5 + 168);
      if (v8)
      {
        v18 = v8 - 1;
        LODWORD(v8) = *(v5 + v8 - 1 + 160);
        *(v5 + 168) = v18;
LABEL_40:
        v8 = v8;
        goto LABEL_8;
      }

      result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, &v32, 1uLL);
      if (result)
      {
        LODWORD(v8) = v32;
        goto LABEL_40;
      }

      return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "BLOB");
    }

    if (result != 147)
    {
      if (result != 148)
      {
        goto LABEL_26;
      }

      v32 = 0;
      if (*(v5 + 40))
      {
        return result;
      }

      v13 = *(v5 + 168);
      if (v13)
      {
        v14 = 8;
        if (v13 < 8)
        {
          v14 = *(v5 + 168);
        }

        v15 = v13 - v14;
        if ((v13 - 1) >= (v13 - v14))
        {
          v16 = &v32;
          v28 = *(v5 + 168);
          do
          {
            *v16++ = *(v5 + 159 + v28);
            v29 = v28 - 2;
            --v28;
          }

          while (v29 >= v15);
        }

        else
        {
          v16 = &v32;
        }

        *(v5 + 168) = v15;
        if (v13 > 7)
        {
          goto LABEL_53;
        }

        v24 = 8 - v14;
      }

      else
      {
        v16 = &v32;
        v24 = 8;
      }

      result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, v16, v24);
      if ((result & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "BLOB");
      }

LABEL_53:
      v8 = v32;
      goto LABEL_8;
    }

    LODWORD(v32) = 0;
    if (*(v5 + 40))
    {
      return result;
    }

    v19 = *(v5 + 168);
    if (v19)
    {
      v20 = 4;
      if (v19 < 4)
      {
        v20 = *(v5 + 168);
      }

      v21 = v19 - v20;
      if ((v19 - 1) >= (v19 - v20))
      {
        v22 = &v32;
        v30 = *(v5 + 168);
        do
        {
          *v22++ = *(v5 + 159 + v30);
          v31 = v30 - 2;
          --v30;
        }

        while (v31 >= v21);
      }

      else
      {
        v22 = &v32;
      }

      *(v5 + 168) = v21;
      if (v19 > 3)
      {
        goto LABEL_59;
      }

      v25 = 4 - v20;
    }

    else
    {
      v22 = &v32;
      v25 = 4;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, v22, v25);
    if ((result & 1) == 0)
    {
      return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "BLOB");
    }

LABEL_59:
    v8 = v32;
    goto LABEL_8;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readArrayTag(uint64_t result, const char *a2, char *__dst)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __dsta = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __dsta = *(v5 + v7 + 160);
      v5[21] = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, &__dsta, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "Array");
      }

      result = __dsta;
    }

    if ((result + 48) > 0xEu)
    {
      if (result == 223)
      {
        return re::EncoderOPACK<re::FixedArrayInputStream>::readUint64(v5, a2, __dst);
      }

      else
      {
        v8 = re::OPACK::toString(result);
        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v5, "Array", v8);
      }
    }

    else
    {
      *__dst = result - 208;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readDictionaryTag(uint64_t result, const char *a2, char *__dst)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __dsta = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __dsta = *(v5 + v7 + 160);
      *(v5 + 168) = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, &__dsta, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "Dictionary");
      }

      result = __dsta;
    }

    if ((result + 32) <= 0xEu)
    {
      *__dst = result - 224;
      return result;
    }

    if (result != 210)
    {
LABEL_16:
      v10 = re::OPACK::toString(result);
      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v5, "Dictionary", v10);
    }

    result = re::EncoderOPACK<re::FixedArrayInputStream>::readUint64(v5, a2, __dst);
    if (result && (*(v5 + 40) & 1) == 0)
    {
      v8 = *(v5 + 168);
      if (v8)
      {
        v9 = v8 - 1;
        result = *(v5 + v9 + 160);
        __dsta = *(v5 + v9 + 160);
        *(v5 + 168) = v9;
        goto LABEL_15;
      }

      if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, &__dsta, 1uLL))
      {
        result = __dsta;
LABEL_15:
        if (result == 239)
        {
          return result;
        }

        goto LABEL_16;
      }

      return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "Dictionary");
    }
  }

  return result;
}

uint64_t re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(void *a1, char *__dst, size_t __n)
{
  v3 = __n;
  if (__dst)
  {
    v5 = __dst;
    while (1)
    {
      v6 = *(a1 + 4);
      if (v3 <= v6)
      {
        break;
      }

      if (v6 >= 1)
      {
        memcpy(v5, a1[1], v6);
        v7 = *(a1 + 4);
        v5 += v7;
        v3 -= v7;
        a1[1] = 0;
        *(a1 + 4) = 0;
      }

      if (((*(**a1 + 16))(*a1, a1 + 1, a1 + 2) & 1) == 0)
      {
        return 0;
      }
    }

    memcpy(v5, a1[1], v3);
    a1[1] += v3;
    *(a1 + 4) -= v3;
    return 1;
  }

  v9 = *(a1 + 4);
  if (__n <= v9)
  {
    a1[1] += __n;
    *(a1 + 4) = v9 - __n;
    return 1;
  }

  if (v9 >= 1)
  {
    a1[1] = 0;
    *(a1 + 4) = 0;
  }

  v10 = *(**a1 + 32);

  return v10();
}

uint64_t re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(_anonymous_namespace_ *a1, const char *a2, uint64_t a3)
{
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v7);
  if (v8)
  {
    v5 = *&v9[7];
  }

  else
  {
    v5 = v9;
  }

  re::DynamicString::format("Failed to %s %s. Reason: Error %s type %s.", v10, "deserialize", v5, "reading", a3);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v10);
  if (*&v10[0])
  {
    if (BYTE8(v10[0]))
    {
      (*(**&v10[0] + 40))();
    }

    memset(v10, 0, sizeof(v10));
  }

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

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readUint64(uint64_t a1, const char *a2, char *__dst)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v20[5] = v3;
  v20[6] = v4;
  __dsta = 0;
  v9 = *(a1 + 168);
  if (v9)
  {
    v10 = v9 - 1;
    v11 = *(a1 + v9 - 1 + 160);
    __dsta = v11;
    *(a1 + 168) = v10;
  }

  else
  {
    if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dsta, 1uLL) & 1) == 0)
    {
LABEL_24:
      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "UInt64");
      return 0;
    }

    v11 = __dsta;
  }

  if (v11 == 120)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      v12 = *(a1 + 168);
      if (v12)
      {
        v13 = 8;
        if (v12 < 8)
        {
          v13 = *(a1 + 168);
        }

        v14 = v12 - v13;
        if ((v12 - 1) >= (v12 - v13))
        {
          v15 = *(a1 + 168);
          do
          {
            *__dst++ = *(a1 + 159 + v15);
            v16 = v15 - 2;
            --v15;
          }

          while (v16 >= v14);
        }

        *(a1 + 168) = v14;
        if (v12 > 7)
        {
          return 1;
        }

        v17 = 8 - v13;
      }

      else
      {
        v17 = 8;
      }

      if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, __dst, v17))
      {
        return 1;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v18 = *(a1 + 168);
    if (v18 <= 7)
    {
      *(a1 + 168) = v18 + 1;
      *(a1 + v18 + 160) = v11;
    }

    v20[0] = 0;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(a1, a2, v20, "Int64"))
    {
      *__dst = v20[0];
      return 1;
    }
  }

  return 0;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(uint64_t a1, const char *a2, char *__dst, uint64_t a4)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v44 = v4;
  v45 = v5;
  __dsta = 0;
  v11 = *(a1 + 168);
  if (v11)
  {
    v12 = v11 - 1;
    v13 = *(a1 + v12 + 160);
    __dsta = *(a1 + v12 + 160);
    *(a1 + 168) = v12;
  }

  else
  {
    if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dsta, 1uLL) & 1) == 0)
    {
      v25 = a1;
      v26 = a2;
      v27 = a4;
LABEL_66:
      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v25, v26, v27);
      return 0;
    }

    v13 = __dsta;
  }

  if ((v13 - 7) <= 0x28)
  {
    v14 = v13 - 8;
LABEL_9:
    *__dst = v14;
    return 1;
  }

  if (v13 <= 49)
  {
    if (v13 != 48)
    {
      if (v13 == 49)
      {
        result = 0;
        v41 = 0;
        if (*(a1 + 40))
        {
          return result;
        }

        v15 = *(a1 + 168);
        if (v15)
        {
          v16 = 2;
          if (v15 < 2)
          {
            v16 = *(a1 + 168);
          }

          v17 = v15 - v16;
          if ((v15 - 1) >= (v15 - v16))
          {
            v18 = &v41;
            v36 = *(a1 + 168);
            do
            {
              *v18++ = *(a1 + 159 + v36);
              v37 = v36 - 2;
              --v36;
            }

            while (v37 >= v17);
          }

          else
          {
            v18 = &v41;
          }

          *(a1 + 168) = v17;
          if (v15 != 1)
          {
            goto LABEL_55;
          }

          v34 = 2 - v16;
        }

        else
        {
          v18 = &v41;
          v34 = 2;
        }

        if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v18, v34))
        {
LABEL_55:
          v14 = v41;
          goto LABEL_9;
        }

        v27 = "16-Bit Signed Integer";
        goto LABEL_65;
      }

      goto LABEL_32;
    }

    result = 0;
    v42 = 0;
    if (*(a1 + 40))
    {
      return result;
    }

    v14 = *(a1 + 168);
    if (v14)
    {
      v29 = v14 - 1;
      LOBYTE(v14) = *(a1 + v14 - 1 + 160);
      *(a1 + 168) = v29;
LABEL_48:
      v14 = v14;
      goto LABEL_9;
    }

    if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &v42, 1uLL))
    {
      LOBYTE(v14) = v42;
      goto LABEL_48;
    }

    v27 = "8-Bit Signed Integer";
LABEL_65:
    v25 = a1;
    v26 = a2;
    goto LABEL_66;
  }

  if (v13 == 50)
  {
    result = 0;
    v40 = 0;
    if (*(a1 + 40))
    {
      return result;
    }

    v30 = *(a1 + 168);
    if (v30)
    {
      v31 = 4;
      if (v30 < 4)
      {
        v31 = *(a1 + 168);
      }

      v32 = v30 - v31;
      if ((v30 - 1) >= (v30 - v31))
      {
        v33 = &v40;
        v38 = *(a1 + 168);
        do
        {
          *v33++ = *(a1 + 159 + v38);
          v39 = v38 - 2;
          --v38;
        }

        while (v39 >= v32);
      }

      else
      {
        v33 = &v40;
      }

      *(a1 + 168) = v32;
      if (v30 > 3)
      {
        goto LABEL_62;
      }

      v35 = 4 - v31;
    }

    else
    {
      v33 = &v40;
      v35 = 4;
    }

    if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v33, v35) & 1) == 0)
    {
      v27 = "32-Bit Signed Integer";
      goto LABEL_65;
    }

LABEL_62:
    v14 = v40;
    goto LABEL_9;
  }

  if (v13 != 51)
  {
LABEL_32:
    v28 = re::OPACK::toString(v13);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(a1, a4, v28);
    return 0;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v19 = *(a1 + 168);
    if (v19)
    {
      v20 = 8;
      if (v19 < 8)
      {
        v20 = *(a1 + 168);
      }

      v21 = v19 - v20;
      if ((v19 - 1) >= (v19 - v20))
      {
        v22 = *(a1 + 168);
        do
        {
          *__dst++ = *(a1 + 159 + v22);
          v23 = v22 - 2;
          --v22;
        }

        while (v23 >= v21);
      }

      *(a1 + 168) = v21;
      if (v19 > 7)
      {
        return 1;
      }

      v24 = 8 - v20;
    }

    else
    {
      v24 = 8;
    }

    if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, __dst, v24))
    {
      return 1;
    }

    v27 = "64-Bit Signed Integer";
    goto LABEL_65;
  }

  return 0;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<int>(_anonymous_namespace_ *a1, const char *a2, _DWORD *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(a1, a2, &__dst, "Int32");
  if (result)
  {
    if (__dst == __dst)
    {
      *a3 = __dst;
      return 1;
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v8);
      if (v9)
      {
        v7 = *&v10[7];
      }

      else
      {
        v7 = v10;
      }

      re::DynamicString::format("Failed to deserialize %s. Integer of type %s expected. Value (%lld) is out of range.", v11, v7, "Int32", __dst);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v11);
      if (*&v11[0])
      {
        if (BYTE8(v11[0]))
        {
          (*(**&v11[0] + 40))();
        }

        memset(v11, 0, sizeof(v11));
      }

      if (v8)
      {
        if (v9)
        {
          (*(*v8 + 40))();
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<signed char>(uint64_t a1, const char *a2, int a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<signed char>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<signed char>(_anonymous_namespace_ *a1, const char *a2, _BYTE *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(a1, a2, &__dst, "Int8");
  if (result)
  {
    if (__dst == __dst)
    {
      *a3 = __dst;
      return 1;
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v8);
      if (v9)
      {
        v7 = *&v10[7];
      }

      else
      {
        v7 = v10;
      }

      re::DynamicString::format("Failed to deserialize %s. Integer of type %s expected. Value (%lld) is out of range.", v11, v7, "Int8", __dst);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v11);
      if (*&v11[0])
      {
        if (BYTE8(v11[0]))
        {
          (*(**&v11[0] + 40))();
        }

        memset(v11, 0, sizeof(v11));
      }

      if (v8)
      {
        if (v9)
        {
          (*(*v8 + 40))();
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<short>(uint64_t a1, const char *a2, int a3, __int16 *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<short>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<short>(_anonymous_namespace_ *a1, const char *a2, _WORD *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(a1, a2, &__dst, "Int16");
  if (result)
  {
    if (__dst == __dst)
    {
      *a3 = __dst;
      return 1;
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v8);
      if (v9)
      {
        v7 = *&v10[7];
      }

      else
      {
        v7 = v10;
      }

      re::DynamicString::format("Failed to deserialize %s. Integer of type %s expected. Value (%lld) is out of range.", v11, v7, "Int16", __dst);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v11);
      if (*&v11[0])
      {
        if (BYTE8(v11[0]))
        {
          (*(**&v11[0] + 40))();
        }

        memset(v11, 0, sizeof(v11));
      }

      if (v8)
      {
        if (v9)
        {
          (*(*v8 + 40))();
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<int>(uint64_t a1, const char *a2, int a3, int *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<int>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<long long>(uint64_t a1, const char *a2, int a3, void *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v13 = 0;
  v5 = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, &v13, 0);
  if (v5)
  {
    if (a5)
    {
      __dst = 0;
      re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(a1, a2, &__dst, "Int64");
    }

    else
    {
      __dst = 0;
      if (re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(a1, a2, &__dst, "Int64"))
      {
        *a4 = __dst;
      }
    }

    for (i = v13; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned char>(uint64_t a1, const char *a2, int a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<unsigned char>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<unsigned char>(_anonymous_namespace_ *a1, const char *a2, _BYTE *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(a1, a2, &__dst, "UInt8");
  if (result)
  {
    if (__dst > 0xFF)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v8);
      if (v9)
      {
        v7 = *&v10[7];
      }

      else
      {
        v7 = v10;
      }

      re::DynamicString::format("Failed to deserialize %s. Integer of type %s expected. Value (%lld) is out of range.", v11, v7, "UInt8", __dst);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v11);
      if (*&v11[0])
      {
        if (BYTE8(v11[0]))
        {
          (*(**&v11[0] + 40))();
        }

        memset(v11, 0, sizeof(v11));
      }

      if (v8)
      {
        if (v9)
        {
          (*(*v8 + 40))();
        }
      }

      return 0;
    }

    else
    {
      *a3 = __dst;
      return 1;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned short>(uint64_t a1, const char *a2, int a3, __int16 *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<unsigned short>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<unsigned short>(_anonymous_namespace_ *a1, const char *a2, _WORD *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(a1, a2, &__dst, "UInt16");
  if (result)
  {
    if (__dst >> 16)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v8);
      if (v9)
      {
        v7 = *&v10[7];
      }

      else
      {
        v7 = v10;
      }

      re::DynamicString::format("Failed to deserialize %s. Integer of type %s expected. Value (%lld) is out of range.", v11, v7, "UInt16", __dst);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v11);
      if (*&v11[0])
      {
        if (BYTE8(v11[0]))
        {
          (*(**&v11[0] + 40))();
        }

        memset(v11, 0, sizeof(v11));
      }

      if (v8)
      {
        if (v9)
        {
          (*(*v8 + 40))();
        }
      }

      return 0;
    }

    else
    {
      *a3 = __dst;
      return 1;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned int>(uint64_t a1, const char *a2, int a3, int *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<unsigned int>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<unsigned int>(_anonymous_namespace_ *a1, const char *a2, _DWORD *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(a1, a2, &__dst, "UInt32");
  if (result)
  {
    if (HIDWORD(__dst))
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v8);
      if (v9)
      {
        v7 = *&v10[7];
      }

      else
      {
        v7 = v10;
      }

      re::DynamicString::format("Failed to deserialize %s. Integer of type %s expected. Value (%lld) is out of range.", v11, v7, "UInt32", __dst);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v11);
      if (*&v11[0])
      {
        if (BYTE8(v11[0]))
        {
          (*(**&v11[0] + 40))();
        }

        memset(v11, 0, sizeof(v11));
      }

      if (v8)
      {
        if (v9)
        {
          (*(*v8 + 40))();
        }
      }

      return 0;
    }

    else
    {
      *a3 = __dst;
      return 1;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned long long>(uint64_t a1, const char *a2, int a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::FixedArrayInputStream>::readUint64(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::internal::serializeEnumAsBinary<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, void *a4, re::internal *a5, re::internal *a6, int a7)
{
  if (a7)
  {
    v11 = *(a1 + 208);
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
  v25 = *(a1 + 208);
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

void re::EncoderOPACK<re::FixedArrayInputStream>::beginOptional(uint64_t a1, const char *a2, int a3, _BYTE *a4, int a5)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v17 = 0;
    if ((re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, &v17, 0) & 1) == 0)
    {
      *a4 = 0;
      LOBYTE(__dst) = 3;
      DWORD1(__dst) = a5;
      *(&__dst + 1) = a2;
      v15 = 0u;
      v16 = 0u;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &__dst);
      return;
    }

    LOBYTE(__dst) = 0;
    if (*(a1 + 40))
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 168);
    if (v9)
    {
      v10 = v9 - 1;
      v11 = *(a1 + v9 - 1 + 160);
      *(a1 + 168) = v10;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL) & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "Optional");
LABEL_14:
        v13 = *a4;
        LOBYTE(__dst) = 3;
        DWORD1(__dst) = a5;
        *(&__dst + 1) = a2;
        *&v15 = 0;
        v16 = 0uLL;
        *(&v15 + 1) = v13;
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &__dst);
        *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v17;
        return;
      }

      v11 = __dst;
    }

    if (v11 == 4)
    {
      *a4 = 0;
    }

    else
    {
      *a4 = 1;
      v12 = *(a1 + 168);
      if (v12 <= 7)
      {
        *(a1 + 168) = v12 + 1;
        *(a1 + v12 + 160) = v11;
      }
    }

    goto LABEL_14;
  }
}

_anonymous_namespace_ *re::EncoderOPACK<re::FixedArrayInputStream>::endOptional(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 3);
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v4 - 48) != 2)
      {
        ++*(v4 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v7);
      if (v8)
      {
        v5 = *&v9[7];
      }

      else
      {
        v5 = v9;
      }

      if (*(*(v1 + 16) + 48 * *(v1 + 14) - 24) <= 0)
      {
        v6 = "Optional should not have a value.";
      }

      else
      {
        v6 = "Optional requires a value.";
      }

      re::DynamicString::format("Failed to serialize optional type %s. %s", v10, v5, v6);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v10);
      if (*&v10[0])
      {
        if (BYTE8(v10[0]))
        {
          (*(**&v10[0] + 40))();
        }

        memset(v10, 0, sizeof(v10));
      }

      result = v7;
      if (v7 && (v8 & 1) != 0)
      {
        return (*(*v7 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::beginBLOB(uint64_t a1, const char *a2, int a3, uint64_t *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v19[5] = v5;
    v19[6] = v6;
    v19[0] = 0;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, v19, 0))
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::readDataTag(a1, a2, a4);
      v12 = *a4;
      LOBYTE(v14) = 4;
      DWORD1(v14) = a5;
      *(&v14 + 1) = a2;
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v16 = v12;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v14);
      *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v19[0];
      v7 = *(a1 + 40) ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeBLOB(uint64_t result, char *a2, char a3)
{
  if (*(result + 40))
  {
    return result;
  }

  v4 = result;
  v5 = *(result + 128) + 48 * *(result + 112);
  v6 = *(v5 - 24);
  v7 = *(result + 168);
  if (v7)
  {
    if (v7 >= v6)
    {
      v8 = *(v5 - 24);
    }

    else
    {
      v8 = *(result + 168);
    }

    v9 = v7 - v8;
    if ((v7 - 1) >= (v7 - v8))
    {
      do
      {
        *a2++ = *(result + 159 + v7);
        v10 = v7 - 2;
        --v7;
      }

      while (v10 >= v9);
    }

    *(result + 168) = v9;
    v11 = v6 - v8;
    if (v6 == v8)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v11 = *(v5 - 24);
  if (v6)
  {
LABEL_11:
    if (a3)
    {
      a2 = 0;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, a2, v11);
    if ((result & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v4, 0, "BLOB");
    }
  }

LABEL_15:
  if ((a3 & 2) == 0)
  {
    v12 = *(v4 + 16) + 48 * *(v4 + 14);
    if (*(v12 - 48) != 2)
    {
      *(v12 - 16) += v6;
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderOPACK<re::FixedArrayInputStream>::endBLOB(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 4);
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v4 - 48) != 2)
      {
        ++*(v4 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v7);
      if (v8)
      {
        v5 = *&v9[7];
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format("Failed to serialize BLOB %s. Expected number of bytes: %lld. Actual number of bytes: %lld.", v10, v5, *(v6 - 24), *(v6 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v10);
      if (*&v10[0])
      {
        if (BYTE8(v10[0]))
        {
          (*(**&v10[0] + 40))();
        }

        memset(v10, 0, sizeof(v10));
      }

      result = v7;
      if (v7 && (v8 & 1) != 0)
      {
        return (*(*v7 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(uint64_t a1, const char *a2, int a3, char *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v19[5] = v5;
    v19[6] = v6;
    v19[0] = 0;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, v19, 0))
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::readArrayTag(a1, a2, a4);
      v12 = *a4;
      LOBYTE(v14) = 5;
      DWORD1(v14) = a5;
      *(&v14 + 1) = a2;
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v16 = v12;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v14);
      *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v19[0];
      v7 = *(a1 + 40) ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

_anonymous_namespace_ *re::EncoderOPACK<re::FixedArrayInputStream>::endArray(_anonymous_namespace_ *result)
{
  if (*(result + 40))
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 16);
  v3 = *(result + 14);
  v4 = *(v2 + 48 * v3 - 16);
  if (v4 == *(v2 + 48 * v3 - 24))
  {
    if (v4 < 0xF)
    {
LABEL_22:
      for (i = *(v2 + 48 * v3 - 32); i; --i)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 5);
      v12 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v12 - 48) != 2)
      {
        ++*(v12 - 16);
      }

      return result;
    }

    LOBYTE(__dst[0]) = 0;
    v5 = *(result + 21);
    if (v5)
    {
      v6 = v5 - 1;
      v7 = *(result + v6 + 160);
      LOBYTE(__dst[0]) = v7;
      *(v1 + 21) = v6;
    }

    else
    {
      if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, __dst, 1uLL))
      {
        re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v1, 0, "Array");
LABEL_21:
        v2 = *(v1 + 16);
        v3 = *(v1 + 14);
        goto LABEL_22;
      }

      v7 = LOBYTE(__dst[0]);
    }

    if (v7 != 3)
    {
      v10 = re::OPACK::toString(v7);
      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v1, "Array", v10);
    }

    goto LABEL_21;
  }

  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v13);
  if (v14)
  {
    v8 = *&v15[7];
  }

  else
  {
    v8 = v15;
  }

  v9 = *(v1 + 16) + 48 * *(v1 + 14);
  re::DynamicString::format("Failed to deserialize array %s. Expected number of elements: %lld. Actual number of elements: %lld.", __dst, v8, *(v9 - 24), *(v9 - 16));
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, __dst);
  if (*&__dst[0])
  {
    if (BYTE8(__dst[0]))
    {
      (*(**&__dst[0] + 40))();
    }

    memset(__dst, 0, sizeof(__dst));
  }

  result = v13;
  if (v13 && (v14 & 1) != 0)
  {
    return (*(*v13 + 40))();
  }

  return result;
}

uint64_t re::anonymous namespace::resizeArray<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, void **a2, re::ArrayAccessor *a3, uint64_t a4, const re::TypeInfo *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 == a5)
  {
    return 1;
  }

  v25[10] = v8;
  v25[11] = v9;
  v14 = *(a3 + 2);
  if ((*(v14 + 92) & 0xFFFFFF) != 0)
  {
    re::TypeRegistry::typeInfo(*a3, *(v14 + 80), v24);
    re::TypeInfo::TypeInfo(v22, v25);
    v21 = !is_mul_ok(*(v23 + 8), a5);
    if (is_mul_ok(*(v23 + 8), a5))
    {
      re::ArrayAccessor::reset(a3, a2, *(a1 + 48), a5);
    }

    else
    {
      re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Size overflow during deserialization. Element size = %zu, count = %zu", v16, v17, v18, v19, v20, *(v23 + 8));
    }

    return !v21;
  }

  else
  {
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Invalid array size. Expected size = %zu, actual size = %zu", a4, a5, a6, a7, a8, a4);
    return 0;
  }
}

uint64_t re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError(_anonymous_namespace_ *a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  re::DynamicString::setCapacity(&v23, 0);
  v22 = &a9;
  re::DynamicString::vassignf(&v23, a3, &a9);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v15);
  if (v16)
  {
    v12 = *&v17[7];
  }

  else
  {
    v12 = v17;
  }

  if (v24)
  {
    v13 = v25;
  }

  else
  {
    v13 = &v24 + 1;
  }

  re::DynamicString::format("Failed to %s %s. Reason: %s", &v18, "deserialize", v12, v13);
  *&v21[0] = 400;
  *(&v21[0] + 1) = re::FoundationErrorCategory(void)::instance;
  *&v21[1] = v18;
  *(&v21[2] + 1) = v20;
  *(&v21[1] + 8) = v19;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v21);
  if (*&v21[1])
  {
    if (BYTE8(v21[1]))
    {
      (*(**&v21[1] + 40))();
    }

    memset(&v21[1], 0, 32);
  }

  if (v15 && (v16 & 1) != 0)
  {
    (*(*v15 + 40))();
  }

  result = v23;
  if (v23)
  {
    if (v24)
    {
      return (*(*v23 + 40))();
    }
  }

  return result;
}

uint64_t re::anonymous namespace::resizeList<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a4 == a5)
  {
    return 1;
  }

  v23[10] = v5;
  v23[11] = v6;
  re::TypeRegistry::typeInfo(*a3, *(*(a3 + 16) + 80), v22);
  re::TypeInfo::TypeInfo(v20, v23);
  v17 = !is_mul_ok(*(v21 + 8), a5);
  if (is_mul_ok(*(v21 + 8), a5))
  {
    v18 = *(a1 + 48);
    v19 = *(*(a3 + 16) + 96);
    re::TypeInfo::TypeInfo(v22, a3);
    v19(a2, v22, v18, a5);
  }

  else
  {
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Size overflow during deserialization. Element size = %zu, count = %zu", v12, v13, v14, v15, v16, *(v21 + 8));
  }

  return !v17;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::beginDictionary(uint64_t a1, const char *a2, int a3, char *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v19[5] = v5;
    v19[6] = v6;
    v19[0] = 0;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, v19, 0))
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::readDictionaryTag(a1, a2, a4);
      v12 = *a4;
      LOBYTE(v14) = 6;
      DWORD1(v14) = a5;
      *(&v14 + 1) = a2;
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v16 = v12;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v14);
      *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v19[0];
      v7 = *(a1 + 40) ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

_anonymous_namespace_ *re::EncoderOPACK<re::FixedArrayInputStream>::endDictionary(_anonymous_namespace_ *result)
{
  if (*(result + 40))
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 16);
  v3 = *(result + 14);
  v4 = *(v2 + 48 * v3 - 16);
  if (v4 == *(v2 + 48 * v3 - 24))
  {
    if (v4 < 0xF)
    {
LABEL_22:
      for (i = *(v2 + 48 * v3 - 32); i; --i)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 6);
      v12 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v12 - 48) != 2)
      {
        ++*(v12 - 16);
      }

      return result;
    }

    LOBYTE(__dst[0]) = 0;
    v5 = *(result + 21);
    if (v5)
    {
      v6 = v5 - 1;
      v7 = *(result + v6 + 160);
      LOBYTE(__dst[0]) = v7;
      *(v1 + 21) = v6;
    }

    else
    {
      if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, __dst, 1uLL))
      {
        re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v1, 0, "Dictionary");
LABEL_21:
        v2 = *(v1 + 16);
        v3 = *(v1 + 14);
        goto LABEL_22;
      }

      v7 = LOBYTE(__dst[0]);
    }

    if (v7 != 3)
    {
      v10 = re::OPACK::toString(v7);
      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v1, "Dictionary", v10);
    }

    goto LABEL_21;
  }

  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v13);
  if (v14)
  {
    v8 = *&v15[7];
  }

  else
  {
    v8 = v15;
  }

  v9 = *(v1 + 16) + 48 * *(v1 + 14);
  re::DynamicString::format("Failed to deserialize dictionary %s. Expected number of entries: %lld. Actual number of entries: %lld.", __dst, v8, *(v9 - 24), *(v9 - 16));
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, __dst);
  if (*&__dst[0])
  {
    if (BYTE8(__dst[0]))
    {
      (*(**&__dst[0] + 40))();
    }

    memset(__dst, 0, sizeof(__dst));
  }

  result = v13;
  if (v13 && (v14 & 1) != 0)
  {
    return (*(*v13 + 40))();
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::beginObject(uint64_t a1, const char *a2, int a3, int a4)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v20[5] = v4;
  v20[6] = v5;
  v20[0] = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, v20, 0);
  if (result)
  {
    LOBYTE(__dst) = 0;
    if ((*(a1 + 40) & 1) == 0)
    {
      v10 = *(a1 + 168);
      if (v10)
      {
        v11 = v10 - 1;
        v12 = *(a1 + v11 + 160);
        LOBYTE(__dst) = *(a1 + v11 + 160);
        *(a1 + 168) = v11;
LABEL_9:
        if (v12 == 223)
        {
          v13 = 1;
          goto LABEL_13;
        }

        if (v12 == 239)
        {
          v13 = 2;
LABEL_13:
          LOBYTE(__dst) = v13;
          DWORD1(__dst) = a4;
          *(&__dst + 1) = a2;
          v16 = 0;
          v17 = 0;
          v18 = 0xFFFFFFFF80000000;
          v19 = 0;
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &__dst);
          *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v20[0];
          return 1;
        }

        v14 = re::OPACK::toString(v12);
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(a1, "Object", v14);
        return 0;
      }

      if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
      {
        v12 = __dst;
        goto LABEL_9;
      }

      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "Object");
    }

    return 0;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::endObject(uint64_t result)
{
  if (*(result + 40))
  {
    return result;
  }

  v1 = result;
  __dst = 0;
  v2 = result + 160;
  while (1)
  {
    v3 = *(v1 + 168);
    if (v3)
    {
      v4 = v3 - 1;
      v5 = *(v2 + v3 - 1);
      __dst = v5;
      *(v1 + 168) = v4;
      goto LABEL_7;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v1, &__dst, 1uLL);
    if (!result)
    {
      break;
    }

    v5 = __dst;
LABEL_7:
    if (v5 != 3)
    {
      v6 = *(v1 + 168);
      if (v6 <= 7)
      {
        *(v1 + 168) = v6 + 1;
        *(v2 + v6) = v5;
      }

      result = re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
      if (*(v1 + 40) != 1)
      {
        continue;
      }
    }

    goto LABEL_13;
  }

  result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v1, 0, "Object");
LABEL_13:
  if ((*(v1 + 40) & 1) == 0)
  {
    v7 = *(v1 + 128);
    v8 = *(v1 + 112);
    v9 = *(v7 + 48 * v8 - 32);
    if (v9)
    {
      do
      {
        --v9;
        re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
      }

      while (v9);
      v7 = *(v1 + 128);
      v8 = *(v1 + 112);
    }

    result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, *(v7 + 48 * v8 - 48));
    v10 = *(v1 + 128) + 48 * *(v1 + 112);
    if (*(v10 - 48) != 2)
    {
      ++*(v10 - 16);
    }
  }

  return result;
}

uint64_t re::serializeDynamicString<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, void *a4, re *a5, const re::TypeInfo *a6, int a7)
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
  if (*v18 >> 1 != 0x22C6ED80D0CLL || (v19 = v18[1], v19 != "StringID") && strcmp(v19, "StringID"))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    goto LABEL_24;
  }

LABEL_14:
  if (!a7)
  {
    v25 = a4[1];
    if (v25)
    {
      v26 = v25 >> 1;
    }

    else
    {
      v26 = v25 >> 1;
    }

    v37 = v26;
    v27 = re::EncoderOPACK<re::FixedArrayInputStream>::beginString(a1 + 24, a2, v9, &v37, 0);
    v21 = 0;
    if (!v27)
    {
      return v21 & 1;
    }

    v28 = v37;
    if (v28 <= (*(**(a1 + 24) + 64))(*(a1 + 24)))
    {
      if (!*a4)
      {
        v35 = v37;
        *a4 = *(a1 + 48);
        re::DynamicString::setCapacity(a4, v35 + 1);
      }

      re::DynamicString::resize(a4, v37, 0);
      if (!v37)
      {
        goto LABEL_33;
      }

      if (a4[1])
      {
        v23 = a4[2];
      }

      else
      {
        v23 = a4 + 9;
      }

      v22 = a1 + 24;
      v24 = 0;
      goto LABEL_32;
    }

    v29 = v37;
    (*(**(a1 + 24) + 64))(*(a1 + 24));
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "String size greater than stream size during deserialization. String length = %zu, Stream length = %zu", v30, v31, v32, v33, v34, v29);
LABEL_24:
    v21 = 0;
    return v21 & 1;
  }

  v37 = 0;
  v20 = re::EncoderOPACK<re::FixedArrayInputStream>::beginString(a1 + 24, a2, v9, &v37, 0);
  v21 = 0;
  if (v20)
  {
    if (!v37)
    {
LABEL_33:
      re::EncoderOPACK<re::FixedArrayInputStream>::endString((a1 + 24));
      v21 = *(a1 + 64) ^ 1;
      return v21 & 1;
    }

    v22 = a1 + 24;
    v23 = 0;
    v24 = 1;
LABEL_32:
    re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(v22, v23, v24);
    goto LABEL_33;
  }

  return v21 & 1;
}

void *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5CB5E78;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

uint64_t re::internal::serializeObjectWithOneMember<re::EncoderOPACK<re::FixedArrayInputStream>>(_BYTE *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
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

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::beginString(uint64_t a1, const char *a2, int a3, uint64_t *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v19[5] = v5;
    v19[6] = v6;
    v19[0] = 0;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, v19, 0))
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::readStringTag(a1, a2, a4);
      v12 = *a4;
      LOBYTE(v14) = 8;
      DWORD1(v14) = a5;
      *(&v14 + 1) = a2;
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v16 = v12;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v14);
      *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v19[0];
      v7 = *(a1 + 40) ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(uint64_t result, char *a2, char a3)
{
  if (*(result + 40))
  {
    return result;
  }

  v4 = result;
  v5 = *(result + 128) + 48 * *(result + 112);
  v6 = *(v5 - 24);
  v7 = *(result + 168);
  if (v7)
  {
    if (v7 >= v6)
    {
      v8 = *(v5 - 24);
    }

    else
    {
      v8 = *(result + 168);
    }

    v9 = v7 - v8;
    if ((v7 - 1) >= (v7 - v8))
    {
      do
      {
        *a2++ = *(result + 159 + v7);
        v10 = v7 - 2;
        --v7;
      }

      while (v10 >= v9);
    }

    *(result + 168) = v9;
    v11 = v6 - v8;
    if (v6 == v8)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v11 = *(v5 - 24);
  if (v6)
  {
LABEL_11:
    if (a3)
    {
      a2 = 0;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, a2, v11);
    if ((result & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v4, 0, "String");
    }
  }

LABEL_15:
  if ((a3 & 2) == 0)
  {
    v12 = *(v4 + 16) + 48 * *(v4 + 14);
    if (*(v12 - 48) != 2)
    {
      *(v12 - 16) += v6;
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderOPACK<re::FixedArrayInputStream>::endString(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 8);
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v4 - 48) != 2)
      {
        ++*(v4 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v7);
      if (v8)
      {
        v5 = *&v9[7];
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format("Failed to serialize string %s. Expected number of characters: %lld. Actual number of characters: %lld.", v10, v5, *(v6 - 24), *(v6 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v10);
      if (*&v10[0])
      {
        if (BYTE8(v10[0]))
        {
          (*(**&v10[0] + 40))();
        }

        memset(v10, 0, sizeof(v10));
      }

      result = v7;
      if (v7 && (v8 & 1) != 0)
      {
        return (*(*v7 + 40))();
      }
    }
  }

  return result;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5CB5E78;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::error(uint64_t *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::beginField(uint64_t a1, int a2, uint64_t a3)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::beginObject(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = re::EncoderOPACK<re::FixedArrayInputStream>::beginObject(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), 0);
  if (v3)
  {
    v5.n128_u64[0] = "";
    v5.n128_u32[2] = 0;
    re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(a1 + 32, &v5);
  }

  return v3;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::endObject(uint64_t a1)
{
  v1 = *(a1 + 48);
  --*(a1 + 40);
  *(a1 + 48) = v1 + 2;
  return re::EncoderOPACK<re::FixedArrayInputStream>::endObject(*(a1 + 8) + 24);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::beginArray(uint64_t a1, char *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::endArray(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
    re::EncoderOPACK<re::FixedArrayInputStream>::endArray((*(a1 + 8) + 24));
  }

  return v2 == 0;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::beginDictionary(uint64_t a1, char *a2)
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

  re::EncoderOPACK<re::FixedArrayInputStream>::beginDictionary(*(a1 + 8) + 24, *(v5 + 16 * *(a1 + 40) - 16), *(v5 + 16 * *(a1 + 40) - 8), a2, 0);
  return 1;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::beginDictionaryEntry(uint64_t a1)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::beginDictionaryValue(uint64_t result)
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

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::endDictionary(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
    re::EncoderOPACK<re::FixedArrayInputStream>::endDictionary((*(a1 + 8) + 24));
    v4 = *(a1 + 48);
    --*(a1 + 40);
    *(a1 + 48) = v4 + 2;
  }

  return v2 == 0;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::beginData(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::beginBLOB(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::beginOptional(uint64_t a1)
{
  v3 = 0;
  if (*(a1 + 48))
  {
    v1 = a1 + 56;
  }

  else
  {
    v1 = *(a1 + 64);
  }

  re::EncoderOPACK<re::FixedArrayInputStream>::beginOptional(*(a1 + 8) + 24, *(v1 + 16 * *(a1 + 40) - 16), *(v1 + 16 * *(a1 + 40) - 8), &v3, 0);
  return v3;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::beginString(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::beginString(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::operator>>(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeBool(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::operator>>(uint64_t a1, char *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<signed char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<signed char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::operator>>(uint64_t a1, __int16 *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<short>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned short>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::operator>>(uint64_t a1, int *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<int>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned int>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::operator>>(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  result = re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned long long>(*(a1 + 8) + 24, *(v3 + 16 * *(a1 + 40) - 16), *(v3 + 16 * *(a1 + 40) - 8), &v5, 0);
  *a2 = v5;
  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::operator>>(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::deserializeString(uint64_t a1, char *a2, uint64_t a3)
{
  if (a3)
  {
    re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(*(a1 + 8) + 24, a2, 0);
  }

  v4 = (*(a1 + 8) + 24);

  return re::EncoderOPACK<re::FixedArrayInputStream>::endString(v4);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::deserializeData(uint64_t a1, char *a2)
{
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeBLOB(*(a1 + 8) + 24, a2, 0);
  v3 = (*(a1 + 8) + 24);

  return re::EncoderOPACK<re::FixedArrayInputStream>::endBLOB(v3);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::deserializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  re::EncoderOPACK<re::FixedArrayInputStream>::beginPointer(*(a1 + 8) + 24, *(v6 + 16 * *(a1 + 40) - 16), *(v6 + 16 * *(a1 + 40) - 8), &v8, 0);
  v9 = v8 != 0;
  (*(**(a3 + 32) + 16))(*(a3 + 32), a1, a2, &v9);
  return re::EncoderOPACK<re::FixedArrayInputStream>::endPointer((*(a1 + 8) + 24));
}

_BYTE *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::read(uint64_t a1, uint64_t a2, re **this)
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

      return (*(*a1 + 56))(a1, "Stream schema doesn't support type '%s', reading field '%s'(%d)", v11, *(v12 + 16 * *(a1 + 40) - 16), *(v12 + 16 * *(a1 + 40) - 8));
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

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::beginPointer(uint64_t a1, const char *a2, int a3, int *a4, int a5)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v24[5] = v5;
    v24[6] = v6;
    v24[0] = 0;
    if (!re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, v24, 0))
    {
      v7 = 0;
      return v7 & 1;
    }

    LOBYTE(__dst) = 0;
    if ((*(a1 + 40) & 1) == 0)
    {
      v12 = *(a1 + 168);
      if (v12)
      {
        v13 = v12 - 1;
        v14 = *(a1 + v12 - 1 + 160);
        LOBYTE(__dst) = v14;
        *(a1 + 168) = v13;
        goto LABEL_10;
      }

      if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
      {
        v14 = __dst;
LABEL_10:
        if (v14 == 4)
        {
          *a4 = 0;
        }

        else
        {
          if ((v14 - 7) > 0x2C)
          {
            v15 = 2;
          }

          else
          {
            v15 = 1;
          }

          *a4 = v15;
          v16 = *(a1 + 168);
          if (v16 <= 7)
          {
            *(a1 + 168) = v16 + 1;
            *(a1 + v16 + 160) = v14;
          }
        }

        goto LABEL_18;
      }

      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "Optional");
    }

LABEL_18:
    v17 = *a4 != 0;
    LOBYTE(__dst) = 9;
    DWORD1(__dst) = a5;
    *(&__dst + 1) = a2;
    v20 = 0;
    v22 = 0;
    v23 = 0;
    v21 = v17;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &__dst);
    *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v24[0];
    v7 = *(a1 + 40) ^ 1;
    return v7 & 1;
  }

  v7 = 0;
  return v7 & 1;
}

_anonymous_namespace_ *re::EncoderOPACK<re::FixedArrayInputStream>::endPointer(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 9);
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v4 - 48) != 2)
      {
        ++*(v4 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v6);
      if (v7)
      {
        v5 = *&v8[7];
      }

      else
      {
        v5 = v8;
      }

      re::DynamicString::format("Failed to deserialize pointer %s. No value was provided.", v9, v5);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v9);
      if (*&v9[0])
      {
        if (BYTE8(v9[0]))
        {
          (*(**&v9[0] + 40))();
        }

        memset(v9, 0, sizeof(v9));
      }

      result = v6;
      if (v6 && (v7 & 1) != 0)
      {
        return (*(*v6 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::FixedArrayInputStream>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v21);
  if (v21[0] == 1)
  {
    re::TypeInfo::TypeInfo(v18, &v22);
    if (*(v19 + 96) || (re::TypeRegistry::typeInfo(v18[0], *(v19 + 80), v23), v23[0] == 1))
    {
      if (re::EncoderOPACK<re::FixedArrayInputStream>::beginObject((a1 + 24), "@super", 0, 0))
      {
        re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, v18, a4);
        re::EncoderOPACK<re::FixedArrayInputStream>::endObject((a1 + 24));
      }
    }
  }

  result = re::TypeMemberCollection::TypeMemberCollection(v18, *a3, a3[2]);
  if (v20)
  {
    for (i = 0; i < v20; ++i)
    {
      if (a1[64])
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v18, i, &v16);
      if (*(v17 + 28) == 1)
      {
        v10 = *(v17 + 16);
        if (strlen(v10) >= 3 && *v10 == 109)
        {
          v10 += 2 * (*(v10 + 1) == 95);
        }

        v11 = *(v17 + 32);
        v12 = *(v17 + 24);
        re::TypeRegistry::typeInfo(v16, *v17, v23);
        re::TypeInfo::TypeInfo(v15, &v24);
        if ((a1[64] & 1) != 0 || (result = (*(*a1 + 72))(a1, v10, v11, a2 + v12, v15, v15, a4), (result & 1) == 0))
        {
          result = re::TypeInfo::renamedObjectMembers(a3);
          if (v13)
          {
            v14 = (result + 16);
            while (i != *v14)
            {
              v14 += 6;
              if (!--v13)
              {
                goto LABEL_22;
              }
            }

            if ((a1[64] & 1) == 0)
            {
              result = (*(*a1 + 72))(a1, *(v14 - 1), v11, a2 + v12, v15, v15, a4);
            }
          }
        }
      }

LABEL_22:
      ;
    }
  }

  return result;
}

uint64_t re::internal::serializeMembersWithVersioning<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v61 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v53);
  re::TypeRegistry::typeInfo(*a4, *(a4[2] + 80), v49);
  if (v49[0] == 1)
  {
    if ((v53[0] & 1) == 0)
    {
      v11 = re::TypeInfo::name(&v50)[1];
      re::TypeInfo::name(a3);
      return re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Base class %s removed from type %s.", v12, v13, v14, v15, v16, v11);
    }

    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginObject(a1 + 24, "@super", 0, 0))
    {
      if (v54 == v50)
      {
        v18 = *v56;
        v19 = *v52;
        if (*v56 == *v52)
        {
          v21 = WORD1(v18) == WORD1(v19);
          v20 = (v19 ^ v18) & 0xFFFFFF00000000;
          v21 = v21 && v20 == 0;
          if (v21)
          {
            goto LABEL_6;
          }
        }
      }

      else if (re::areSameTranslatedVersion(&v54, &v50, v10))
      {
LABEL_6:
        re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, &v54, a5);
LABEL_16:
        re::EncoderOPACK<re::FixedArrayInputStream>::endObject(a1 + 24);
        goto LABEL_17;
      }

      if (v55 == v51)
      {
        re::internal::serializeMembersWithVersioning<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, &v54, &v50, a5);
      }

      else
      {
        v22 = re::TypeInfo::name(&v54)[1];
        re::TypeInfo::name(&v50);
        re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v23, v24, v25, v26, v27, v22);
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  re::TypeMemberCollection::TypeMemberCollection(v48, *a3, a3[2]);
  result = re::TypeMemberCollection::TypeMemberCollection(v46, *a4, a4[2]);
  if (v47)
  {
    for (i = 0; i < v47; ++i)
    {
      if (*(a1 + 64))
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v46, i, v44);
      if (*(v45 + 28) == 1)
      {
        v29 = *(v45 + 16);
        if (strlen(v29) >= 3 && *v29 == 109)
        {
          v29 += 2 * (*(v29 + 1) == 95);
        }

        v30 = *(v45 + 32);
        v31 = *(*a4 + 856);
        if (!v31 || (v31 = re::internal::TypeTranslationTable::translateMember(v31, v44), v31 == -1))
        {
          v35 = *re::foundationSerializationLogObjects(v31);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = v35;
            v37 = re::TypeInfo::name(a4)[1];
            *buf = 136315394;
            v58 = v37;
            v59 = 2080;
            v60 = v29;
            _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_INFO, "Skipping unknown member %s.%s.", buf, 0x16u);
          }

          v38 = *(a1 + 208);
          re::TypeRegistry::typeInfo(v44[0], *v45, buf);
          re::TypeInfo::TypeInfo(v42, &v58 + 4);
          result = re::internal::translateType(v38, v42, buf);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v29, v30, 0, buf, buf, 1);
          }
        }

        else
        {
          re::TypeMemberCollection::operator[](v48, v31, v42);
          v32 = *(v43 + 24);
          re::TypeRegistry::typeInfo(v42[0], *v43, buf);
          re::TypeInfo::TypeInfo(v41, &v58 + 4);
          re::TypeRegistry::typeInfo(v44[0], *v45, buf);
          re::TypeInfo::TypeInfo(v40, &v58 + 4);
          if (*(a1 + 64) == 1 || (result = (*(*a1 + 72))(a1, v29, v30, a2 + v32, v41, v40, a5), (result & 1) == 0))
          {
            result = re::TypeInfo::renamedObjectMembers(a4);
            if (v33)
            {
              v34 = (result + 16);
              while (i != *v34)
              {
                v34 += 6;
                if (!--v33)
                {
                  goto LABEL_37;
                }
              }

              v39 = *(v34 - 1);
              re::TypeRegistry::typeInfo(v42[0], *v43, buf);
              re::TypeInfo::TypeInfo(v41, &v58 + 4);
              re::TypeRegistry::typeInfo(v44[0], *v45, buf);
              result = re::TypeInfo::TypeInfo(v40, &v58 + 4);
              if ((*(a1 + 64) & 1) == 0)
              {
                result = (*(*a1 + 72))(a1, v39, v30, a2 + v32, v41, v40, a5);
              }
            }
          }
        }
      }

LABEL_37:
      ;
    }
  }

  return result;
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::deserializeSharedObjects(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + 64) & 1) == 0)
  {
    v9 = result;
    result = re::EncoderOPACK<re::FixedArrayInputStream>::beginObject(result + 24, "@shared", 20, 0);
    if (result)
    {
      v15 = *(v9 + 56);
      v95 = 0;
      v96 = 0;
      v93 = v15;
      v94 = 0;
      re::DynamicString::setCapacity(&v93, 8uLL);
      LODWORD(v87) = 0;
      v16 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v9 + 400, &v87);
      if (v16)
      {
        *(&v92 + 1) = **(v16 + 24);
      }

      else
      {
        *(&v92 + 1) = 0xFFFFFFFFLL;
      }

      if (*(v9 + 376))
      {
        v17 = 0;
        v18 = 0;
        LODWORD(v19) = *(v9 + 428) - 1;
        v20 = "%u";
        do
        {
          v21 = (*(v9 + 392) + v17);
          v87 = *v21;
          re::TypeInfo::TypeInfo(v88, (v21 + 1));
          re::TypeInfo::TypeInfo(v90, (v21 + 3));
          v91 = *(v21 + 40);
          if ((v87 & 0x80000000) != 0)
          {
            re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(v9, 0, "Invalid referenceID %u.", v22, v23, v24, v25, v26, v87);
            goto LABEL_71;
          }

          re::TypeRegistry::typeInfo(v88[0], *(v89 + 80), &v77);
          re::TypeInfo::TypeInfo(v86, &v78);
          re::TypeRegistry::typeInfo(v90[0], v90[2][10], &v77);
          re::TypeInfo::TypeInfo(&v82, &v78);
          if (v87 > v19)
          {
            re::DynamicString::assignf(&v93, v20, v87);
            v19 = v87;
            if (v91 == 1)
            {
              if (v94)
              {
                v27 = v95;
              }

              else
              {
                v27 = &v94 + 1;
              }

              if ((re::internal::deserializePolymorphicObject<re::EncoderOPACK<re::FixedArrayInputStream>,false>(v9, v27, v87, *(&v87 + 1), v88, v86, &v82, HIBYTE(v91), 0) & 1) == 0)
              {
                goto LABEL_64;
              }
            }

            else
            {
              v33 = v20;
              v34 = **(&v87 + 1);
              if (!**(&v87 + 1))
              {
                Instance = re::TypeInfo::createInstance(v86, *(v9 + 48), *(v9 + 200));
                **(&v87 + 1) = Instance;
                v34 = **(&v87 + 1);
              }

              v37 = v94;
              v36 = v95;
              re::TypeRegistry::typeInfo(v88[0], *(v89 + 80), &v77);
              re::TypeInfo::TypeInfo(v81, &v78);
              if (*(v9 + 64))
              {
                goto LABEL_69;
              }

              if (v37)
              {
                v38 = v36;
              }

              else
              {
                v38 = &v94 + 1;
              }

              v39 = (*(*v9 + 72))(v9, v38, v19, v34, v81, &v82, 0);
              v20 = v33;
              if ((v39 & 1) == 0)
              {
LABEL_64:
                if ((*(v9 + 64) & 1) == 0)
                {
                  if (v94)
                  {
                    v62 = v95;
                  }

                  else
                  {
                    v62 = &v94 + 1;
                  }

                  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(v9, v62, "Failed to deserialize shared object (reference ID = %d).", v28, v29, v30, v31, v32, v19);
                }

LABEL_69:
                if (**(&v87 + 1))
                {
                  re::TypeInfo::releaseInstance(v86, **(&v87 + 1), *(v9 + 48), *(v9 + 200));
                  **(&v87 + 1) = 0;
                }

                goto LABEL_71;
              }
            }

            v40 = **(&v87 + 1);
            v81[0] = v19;
            v77 = v40;
            re::TypeInfo::TypeInfo(&v78, v86);
            re::TypeInfo::TypeInfo(v80, &v82);
            v80[16] = v91;
            re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addNew(v9 + 400, v81, &v77);
          }

          ++v18;
          v41 = *(v9 + 376);
          v17 += 88;
        }

        while (v41 > v18);
        *&v92 = 0;
        *(&v92 + 1) = 0xFFFFFFFFLL;
        if (v41)
        {
          v42 = 0;
          v43 = *(v9 + 392);
          v44 = 88 * v41;
          v45 = -1;
          do
          {
            re::TypeRegistry::typeInfo(*(v43 + 16), *(*(v43 + 32) + 80), &v87);
            re::TypeInfo::TypeInfo(&v77, &v87 + 8);
            re::TypeRegistry::typeInfo(*(v43 + 48), *(*(v43 + 64) + 80), &v87);
            re::TypeInfo::TypeInfo(v86, &v87 + 8);
            v46 = *v43;
            if (*v43 == v45)
            {
              v76 = v92;
              if (!re::internal::areCompatible((v43 + 16), &v76))
              {
                v63 = re::TypeInfo::name(&v77)[1];
                re::TypeRegistry::typeName(*(v9 + 208), &v92);
                re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(v9, 0, "Invalid reference. Objects are not compatible. Expected type %s. Actual type %s.", v64, v65, v66, v67, v68, v63);
                goto LABEL_71;
              }

              v47 = **(v43 + 8);
              if (v47)
              {
                v48 = v47 == v42;
              }

              else
              {
                v48 = 1;
              }

              if (!v48)
              {
                re::TypeInfo::releaseInstance(&v77, v47, *(v9 + 48), *(v9 + 200));
              }

              re::TypeInfo::TypeInfo(&v87, &v77);
              if (*(v43 + 80) == 1)
              {
                if (!v92)
                {
                  v74 = re::TypeInfo::name(&v77)[1];
                  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(v9, 0, "Invalid reference. Polymorphic type %s has invalid actual type.", v69, v70, v71, v72, v73, v74);
                  goto LABEL_71;
                }

                LODWORD(v82) = v45;
                v49 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v9 + 400, &v82);
                if (!v49)
                {
                  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(v9, 0, "Invalid reference. No such object %z", v50, v51, v52, v53, v54, v45);
                  goto LABEL_71;
                }

                re::TypeInfo::operator=(&v87, v49 + 8);
              }

              v55 = *(v43 + 8);
              if ((*(v79 + 49) & 2) != 0)
              {
                *v55 = v42;
                v59 = v79[4];
                if (v59)
                {
                  v59(v42);
                }

                if (*(v43 + 80) == 1)
                {
                  v60 = *(v43 + 8);
                  v61 = *v88[0];
                  v75[0] = v87;
                  v75[1] = v61;
                  re::TypeInfo::setActualTypeForPointer((v43 + 16), v60, v75);
                }
              }

              else
              {
                if (*v55)
                {
                  if (*(v43 + 80) == 1)
                  {
                    re::TypeInfo::getActualTypeFromPointer(&v77, *v55, &v82);
                    if (v82 != v87 || (v56 = *v88[0], v83 != *v88[0]) || v84 != WORD1(v56) || ((v85 ^ HIDWORD(v56)) & 0xFFFFFF) != 0)
                    {
                      re::TypeInfo::releaseInstance(&v77, **(v43 + 8), *(v9 + 48), 0);
                    }
                  }
                }

                v57 = **(v43 + 8);
                if (!v57)
                {
                  **(v43 + 8) = re::TypeInfo::createInstance(&v87, *(v9 + 48), *(v9 + 200));
                  v57 = **(v43 + 8);
                }

                re::TypeInfo::copy(&v87, v57, v42, *(v9 + 48), *(v9 + 200));
              }
            }

            else if (v46 > v45)
            {
              v42 = **(v43 + 8);
              v58 = *v79;
              *&v92 = v77;
              *(&v92 + 1) = v58;
              v45 = v46;
            }

            v43 += 88;
            v44 -= 88;
          }

          while (v44);
        }
      }

      re::EncoderOPACK<re::FixedArrayInputStream>::endObject(v9 + 24);
LABEL_71:
      result = v93;
      if (v93)
      {
        if (v94)
        {
          return (*(*v93 + 40))();
        }
      }
    }

    else if ((*(v9 + 64) & 1) == 0 && *(v9 + 376))
    {

      return re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(v9, "@shared", "Failed to deserialize shared objects. Entry not found.", v10, v11, v12, v13, v14, a9);
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(uint64_t a1, _DWORD *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 96 * v6 + 8;
  }
}

uint64_t re::internal::deserializePolymorphicObject<re::EncoderOPACK<re::FixedArrayInputStream>,false>(uint64_t a1, const char *a2, uint64_t a3, void **a4, re **a5, re::TypeInfo *a6, re::TypeInfo *a7, int a8, char a9)
{
  v53 = *MEMORY[0x1E69E9840];
  v15 = re::EncoderOPACK<re::FixedArrayInputStream>::beginObject(a1 + 24, a2, 0, 0);
  v16 = 0;
  if (v15)
  {
    v48 = 0;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, "customClassID", 1, &v48, 0))
    {
      re::TypeInfo::typeIDForCustomClassID(a7, v48, v47);
      if (v47[0])
      {
        if ((a9 & 1) == 0 && *a4)
        {
          re::TypeInfo::releaseInstance(a6, *a4, *(a1 + 48), *(a1 + 200));
          *a4 = 0;
        }

        re::TypeRegistry::typeInfo(*a7, v47, buf);
        re::TypeInfo::TypeInfo(&v43, &v50 + 4);
        if (a8)
        {
          v17 = *(a1 + 208);
        }

        else
        {
          v17 = *(a1 + 208);
          if (*a5 == v17)
          {
            re::TypeInfo::operator=(a6, &v43);
            v27 = v47[0];
            v28 = v47[1];
            if (a9)
            {
LABEL_33:
              Instance = 0;
              goto LABEL_40;
            }

LABEL_39:
            Instance = re::TypeInfo::createInstance(a6, *(a1 + 48), *(a1 + 200));
            *a4 = Instance;
            v38[0] = v27;
            v38[1] = v28;
            re::internal::setActualType(a4, a5, v38);
LABEL_40:
            v37[0] = v27;
            v37[1] = v28;
            (*(*a1 + 16))(a1, Instance, v37);
            if ((*(a1 + 64) & 1) == 0)
            {
              (*(*a1 + 72))(a1, "object", 10, Instance, a6, &v43, Instance == 0);
            }

LABEL_42:
            (*(*a1 + 24))(a1);
            re::EncoderOPACK<re::FixedArrayInputStream>::endObject(a1 + 24);
            v16 = *(a1 + 64) ^ 1;
            return v16 & 1;
          }
        }

        v25 = re::TypeInfo::name(&v43);
        v26 = re::TypeRegistry::typeInfo(v17, v25, buf);
        if (buf[0] != 1 || *(*&v52[10] + 128) != 1)
        {
          v30 = *re::foundationSerializationLogObjects(v26);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v30;
            v32 = re::TypeInfo::name(&v43)[1];
            *buf = 136315138;
            v50 = v32;
            _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, "No matching runtime type found for serialized polymorphic type %s. Skipping unknown type.", buf, 0xCu);
          }

          v39[0] = 0;
          v39[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v39);
          if ((*(a1 + 64) & 1) == 0)
          {
            (*(*a1 + 72))(a1, "object", 10, 0, &v43, &v43, 1);
          }

          goto LABEL_42;
        }

        re::TypeInfo::operator=(a6, &v50 + 4);
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
          v18 = re::EncoderOPACK<re::FixedArrayInputStream>::checkForString(a1 + 24, 10);
          if (v18)
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            re::DynamicString::setCapacity(&v43, 0);
            v20 = *(a1 + 208);
            v40 = 0x2686EB529B3EE220;
            v41 = "DynamicString";
            re::TypeRegistry::typeInfo(v20, &v40, buf);
            v21 = re::TypeInfo::TypeInfo(v42, &v50 + 4);
            if (v40)
            {
              if (v40)
              {
              }
            }

            v22 = re::serializeDynamicString<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, "object", 0xA, &v43, v42, v42, 0);
            if (v22)
            {
              v23 = *re::foundationSerializationLogObjects(v22);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                if (v44)
                {
                  v24 = v45;
                }

                else
                {
                  v24 = &v44 + 1;
                }

                *buf = 134218498;
                v50 = v48;
                v51 = 1040;
                *v52 = 256;
                *&v52[4] = 2080;
                *&v52[6] = v24;
                _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "Skipping unknown Component %llu. String data: %.256s", buf, 0x1Cu);
              }

              if (v43 && (v44 & 1) != 0)
              {
                (*(*v43 + 40))();
              }

LABEL_48:
              re::EncoderOPACK<re::FixedArrayInputStream>::endObject(a1 + 24);
              v16 = 1;
              return v16 & 1;
            }

            v18 = v43;
            if (v43 && (v44 & 1) != 0)
            {
              v18 = (*(*v43 + 40))();
            }
          }
        }
      }

      v33 = *re::foundationSerializationLogObjects(v18);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
        v35 = re::TypeInfo::name(a7)[1];
        *buf = 136315394;
        v50 = v35;
        v51 = 2048;
        *v52 = v48;
        _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "Skipping unknown polymorphic %s type. Custom class ID = %llu", buf, 0x16u);
      }

      goto LABEL_48;
    }

    v16 = 0;
  }

  return v16 & 1;
}