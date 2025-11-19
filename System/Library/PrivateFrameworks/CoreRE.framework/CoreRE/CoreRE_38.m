unsigned int *re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(_anonymous_namespace_ *a1, char *a2, uint64_t a3, uint64_t *a4, int a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
  if (result)
  {
    v11 = result;
    v12 = *(result + 11);
    if ((v12 & 0x400) != 0)
    {
      if ((*(result + 11) & 0x1000) != 0)
      {
        LODWORD(v15) = 21 - *(result + 21);
      }

      else
      {
        LODWORD(v15) = *result;
      }

      v15 = v15;
    }

    else if ((v12 & 0x10) != 0 && (*(a1 + 232) & 1) != 0 && (Double = rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::GetDouble(result, v10), (v14 = snprintf(&__str, 0x40uLL, "%g", Double)) != 0))
    {
      v15 = v14;
    }

    else
    {
      if (*(a1 + 233) != 1 || (v16 = *(v11 + 11), (v16 & 8) == 0))
      {
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, a2, "string");
        return 0;
      }

      v17 = v16 == 10;
      v15 = 4;
      if (!v17)
      {
        v15 = 5;
      }
    }

    *a4 = v15;
    LOBYTE(__str) = 8;
    DWORD1(__str) = a5;
    *(&__str + 1) = a2;
    v19 = 0;
    v20 = v15;
    v21 = 0;
    v22 = v11;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &__str);
    return 1;
  }

  return result;
}

void re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(uint64_t a1, char *a2, char a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 40) & 1) == 0)
  {
    v6 = *(a1 + 128) + 48 * *(a1 + 112);
    v7 = *(v6 - 24);
    v8 = *(v6 - 40);
    JSONValue = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, v8, 0);
    if (JSONValue)
    {
      v11 = JSONValue;
      v12 = *(JSONValue + 11);
      if ((v12 & 0x400) != 0)
      {
        if ((a3 & 1) == 0)
        {
          if ((v12 & 0x1000) != 0)
          {
            v20 = JSONValue;
          }

          else
          {
            v20 = *(JSONValue + 1);
          }

          strncpy(a2, v20, v7);
        }

        goto LABEL_37;
      }

      if (*(a1 + 232) == 1)
      {
        if ((a3 & 1) == 0 && (v12 & 0x10) != 0)
        {
          Double = rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::GetDouble(JSONValue, v10);
          v14 = snprintf(__str, 0x40uLL, "%g", Double);
          if (v14 >= v7)
          {
            v15 = v7;
          }

          else
          {
            v15 = v14;
          }

          v16 = memcpy(a2, __str, v15);
          v17 = *re::foundationSerializationLogObjects(v16);
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_37;
          }

          v25 = 136315138;
          v26 = __str;
          v18 = "Reading JSON number as string %s in Number/String Compatibility Mode";
          v19 = &v25;
          goto LABEL_32;
        }

        if ((v12 & 0x10) != 0)
        {
          goto LABEL_37;
        }
      }

      if (*(a1 + 233) == 1)
      {
        if ((a3 & 1) == 0 && (v12 & 8) != 0)
        {
          if (v12 == 10)
          {
            v21 = "true";
          }

          else
          {
            v21 = "false";
          }

          v22 = strncpy(a2, v21, v7);
          v17 = *re::foundationSerializationLogObjects(v22);
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_37;
          }

          if (*(v11 + 11) == 10)
          {
            v23 = "true";
          }

          else
          {
            v23 = "false";
          }

          *__str = 136315138;
          v28 = v23;
          v18 = "Reading JSON BOOL as string %s in Bool/String Compatibility Mode";
          v19 = __str;
LABEL_32:
          _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, v18, v19, 0xCu);
          goto LABEL_37;
        }

        if ((v12 & 8) != 0)
        {
LABEL_37:
          if ((a3 & 2) == 0)
          {
            v24 = *(a1 + 128) + 48 * *(a1 + 112);
            *(v24 - 16) += v7;
          }

          return;
        }
      }

      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, v8, "string");
    }

    else
    {

      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorKeyNotFound(a1, v8);
    }
  }
}

uint64_t re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorKeyNotFound(_anonymous_namespace_ *a1, const char *a2)
{
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v5);
  if (v6)
  {
    v3 = *&v7[7];
  }

  else
  {
    v3 = v7;
  }

  re::DynamicString::format("Failed to deserialize %s. Key not found.", v8, v3);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v8);
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

  return result;
}

double re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(_anonymous_namespace_ *a1, char *a2, uint64_t a3, _BYTE *a4, int a5)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    JSONValue = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
    if (JSONValue)
    {
      v10 = *(JSONValue + 11) != 0;
    }

    else
    {
      v10 = 0;
    }

    *a4 = v10;
    LOBYTE(v12) = 3;
    DWORD1(v12) = a5;
    *(&v12 + 1) = a2;
    v13 = 0;
    v14 = v10;
    v15 = 0;
    v16 = JSONValue;
    return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v12);
  }

  return result;
}

unsigned int *re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(_anonymous_namespace_ *a1, char *a2, uint64_t a3, void *a4, int a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v18 = v5;
  v19 = v6;
  result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
  if (result)
  {
    if (*(result + 11) == 4)
    {
      v12 = *result;
      *a4 = v12;
      LOBYTE(v13) = 5;
      DWORD1(v13) = a5;
      *(&v13 + 1) = a2;
      v14 = 0;
      v15 = v12;
      v16 = 0;
      v17 = result;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v13);
      return 1;
    }

    else
    {
      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, a2, "array");
      return 0;
    }
  }

  return result;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v52), re::TypeInfo::TypeInfo(v50, v53), v50[12] != 1) || !re::TypeInfo::isInteger(v50))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
LABEL_45:
    v38 = *(a1 + 64) ^ 1;
    return v38 & 1;
  }

  v18 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v52);
  re::TypeInfo::TypeInfo(v50, v53);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v52);
  re::TypeInfo::TypeInfo(v49, v53);
  re::TypeInfo::TypeInfo(v47, a5);
  v19 = (*(*a1 + 80))(a1, v50);
  if (!v19)
  {
    v45 = re::TypeInfo::name(v50)[1];
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v39, v40, v41, v42, v43, v45);
    goto LABEL_48;
  }

  v20 = v19;
  v21 = *(v48 + 104);
  re::TypeInfo::TypeInfo(&v52, v47);
  v21(a4, &v52, v18);
  if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, a3, 0))
  {
    goto LABEL_48;
  }

  v27 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v27 || !*v27)
  {
LABEL_43:
    if (*(a1 + 64))
    {
      goto LABEL_48;
    }

    re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 2);
    v37 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v37 - 16);
    goto LABEL_45;
  }

  v28 = *(v27 + 1);
  while (1)
  {
    if ((*(v28 + 22) & 0x1000) != 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = *(v28 + 8);
    }

    if ((*(v28 + 22) & 0x1000) != 0)
    {
      v30 = 21 - *(v28 + 21);
    }

    else
    {
      v30 = *v28;
    }

    v46 = 0;
    v31 = v29;
    if (v30)
    {
      v32 = v30;
      v31 = v29;
      while (*v31 == 48)
      {
        ++v31;
        if (!--v32)
        {
          goto LABEL_42;
        }
      }
    }

    v33 = &v29[v30];
    if (v31 == v33)
    {
      goto LABEL_42;
    }

    if (*v31 - 48 > 9)
    {
      break;
    }

    v31 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v31, v33, &v52, &v51);
    if (v31 != v33)
    {
      if (*v31 - 48 > 9)
      {
        v35 = v51;
        v34 = v52;
        if (!__CFADD__(v52, v51))
        {
LABEL_40:
          v46 = v34 + v35;
          break;
        }
      }

      while (*v31 - 48 <= 9)
      {
        if (++v31 == v33)
        {
          v31 = v33;
          goto LABEL_41;
        }
      }

      break;
    }

    v35 = v51;
    v34 = v52;
    if (!__CFADD__(v52, v51))
    {
      goto LABEL_40;
    }

LABEL_42:
    v36 = (*(v48 + 112))(a4, v47, *(a1 + 48), &v46);
    v20(a1, v29, 0, v36, v50, v49, 0);
    v28 += 48;
    if (v28 == *(v27 + 1) + 48 * *v27)
    {
      goto LABEL_43;
    }
  }

LABEL_41:
  if (v33 == v31)
  {
    goto LABEL_42;
  }

  re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to deserialize dictionary. Could not convert %s to expected integer type.", v22, v23, v24, v25, v26, v29);
LABEL_48:
  v38 = 0;
  return v38 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v52), re::TypeInfo::TypeInfo(v50, v53), v50[12] != 1) || !re::TypeInfo::isInteger(v50))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
LABEL_45:
    v38 = *(a1 + 64) ^ 1;
    return v38 & 1;
  }

  v18 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v52);
  re::TypeInfo::TypeInfo(v50, v53);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v52);
  re::TypeInfo::TypeInfo(v49, v53);
  re::TypeInfo::TypeInfo(v47, a5);
  v19 = (*(*a1 + 80))(a1, v50);
  if (!v19)
  {
    v45 = re::TypeInfo::name(v50)[1];
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v39, v40, v41, v42, v43, v45);
    goto LABEL_48;
  }

  v20 = v19;
  v21 = *(v48 + 104);
  re::TypeInfo::TypeInfo(&v52, v47);
  v21(a4, &v52, v18);
  if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, a3, 0))
  {
    goto LABEL_48;
  }

  v27 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v27 || !*v27)
  {
LABEL_43:
    if (*(a1 + 64))
    {
      goto LABEL_48;
    }

    re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 2);
    v37 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v37 - 16);
    goto LABEL_45;
  }

  v28 = *(v27 + 1);
  while (1)
  {
    if ((*(v28 + 22) & 0x1000) != 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = *(v28 + 8);
    }

    if ((*(v28 + 22) & 0x1000) != 0)
    {
      v30 = 21 - *(v28 + 21);
    }

    else
    {
      v30 = *v28;
    }

    v46 = 0;
    v31 = v29;
    if (v30)
    {
      v32 = v30;
      v31 = v29;
      while (*v31 == 48)
      {
        ++v31;
        if (!--v32)
        {
          goto LABEL_42;
        }
      }
    }

    v33 = &v29[v30];
    if (v31 == v33)
    {
      goto LABEL_42;
    }

    if (*v31 - 48 > 9)
    {
      break;
    }

    v31 = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](v31, v33, &v52, &v51);
    if (v31 != v33)
    {
      if (*v31 - 48 > 9)
      {
        v35 = v51;
        v34 = v52;
        if (!__CFADD__(v52, v51))
        {
LABEL_40:
          v46 = v34 + v35;
          break;
        }
      }

      while (*v31 - 48 <= 9)
      {
        if (++v31 == v33)
        {
          v31 = v33;
          goto LABEL_41;
        }
      }

      break;
    }

    v35 = v51;
    v34 = v52;
    if (!__CFADD__(v52, v51))
    {
      goto LABEL_40;
    }

LABEL_42:
    v36 = (*(v48 + 112))(a4, v47, *(a1 + 48), &v46);
    v20(a1, v29, 0, v36, v50, v49, 0);
    v28 += 48;
    if (v28 == *(v27 + 1) + 48 * *v27)
    {
      goto LABEL_43;
    }
  }

LABEL_41:
  if (v33 == v31)
  {
    goto LABEL_42;
  }

  re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to deserialize dictionary. Could not convert %s to expected integer type.", v22, v23, v24, v25, v26, v29);
LABEL_48:
  v38 = 0;
  return v38 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v50), re::TypeInfo::TypeInfo(v48, v51), v48[12] != 1) || !re::TypeInfo::isInteger(v48))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
LABEL_45:
    v36 = *(a1 + 64) ^ 1;
    return v36 & 1;
  }

  v18 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v48, v51);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v47, v51);
  re::TypeInfo::TypeInfo(v45, a5);
  v19 = (*(*a1 + 80))(a1, v48);
  if (!v19)
  {
    v43 = re::TypeInfo::name(v48)[1];
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v37, v38, v39, v40, v41, v43);
    goto LABEL_48;
  }

  v20 = v19;
  v21 = *(v46 + 104);
  re::TypeInfo::TypeInfo(&v50, v45);
  v21(a4, &v50, v18);
  if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, a3, 0))
  {
    goto LABEL_48;
  }

  v27 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v27 || !*v27)
  {
LABEL_43:
    if (*(a1 + 64))
    {
      goto LABEL_48;
    }

    re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 2);
    v35 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v35 - 16);
    goto LABEL_45;
  }

  v28 = *(v27 + 1);
  while (1)
  {
    if ((*(v28 + 22) & 0x1000) != 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = *(v28 + 8);
    }

    if ((*(v28 + 22) & 0x1000) != 0)
    {
      v30 = 21 - *(v28 + 21);
    }

    else
    {
      v30 = *v28;
    }

    v44 = 0;
    v31 = v29;
    if (v30)
    {
      v32 = v30;
      v31 = v29;
      while (*v31 == 48)
      {
        ++v31;
        if (!--v32)
        {
          goto LABEL_42;
        }
      }
    }

    v33 = &v29[v30];
    if (v31 == v33)
    {
      goto LABEL_42;
    }

    if (*v31 - 48 <= 9)
    {
      v31 = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](v31, v33, &v50, &v49);
      if (v31 == v33 || *v31 - 48 > 9)
      {
        if (HIWORD(v50) || 0xFFFF - v50 < v49)
        {
          if (v31 != v33)
          {
            goto LABEL_37;
          }

          goto LABEL_42;
        }

        v44 = v49 + v50;
      }

      else
      {
LABEL_37:
        while (*v31 - 48 <= 9)
        {
          if (++v31 == v33)
          {
            v31 = v33;
            break;
          }
        }
      }
    }

    if (v33 != v31)
    {
      break;
    }

LABEL_42:
    v34 = (*(v46 + 112))(a4, v45, *(a1 + 48), &v44);
    v20(a1, v29, 0, v34, v48, v47, 0);
    v28 += 48;
    if (v28 == *(v27 + 1) + 48 * *v27)
    {
      goto LABEL_43;
    }
  }

  re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to deserialize dictionary. Could not convert %s to expected integer type.", v22, v23, v24, v25, v26, v29);
LABEL_48:
  v36 = 0;
  return v36 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v50), re::TypeInfo::TypeInfo(v48, v51), v48[12] != 1) || !re::TypeInfo::isInteger(v48))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
LABEL_45:
    v36 = *(a1 + 64) ^ 1;
    return v36 & 1;
  }

  v18 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v48, v51);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v47, v51);
  re::TypeInfo::TypeInfo(v45, a5);
  v19 = (*(*a1 + 80))(a1, v48);
  if (!v19)
  {
    v43 = re::TypeInfo::name(v48)[1];
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v37, v38, v39, v40, v41, v43);
    goto LABEL_48;
  }

  v20 = v19;
  v21 = *(v46 + 104);
  re::TypeInfo::TypeInfo(&v50, v45);
  v21(a4, &v50, v18);
  if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, a3, 0))
  {
    goto LABEL_48;
  }

  v27 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v27 || !*v27)
  {
LABEL_43:
    if (*(a1 + 64))
    {
      goto LABEL_48;
    }

    re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 2);
    v35 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v35 - 16);
    goto LABEL_45;
  }

  v28 = *(v27 + 1);
  while (1)
  {
    if ((*(v28 + 22) & 0x1000) != 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = *(v28 + 8);
    }

    if ((*(v28 + 22) & 0x1000) != 0)
    {
      v30 = 21 - *(v28 + 21);
    }

    else
    {
      v30 = *v28;
    }

    v44 = 0;
    v31 = v29;
    if (v30)
    {
      v32 = v30;
      v31 = v29;
      while (*v31 == 48)
      {
        ++v31;
        if (!--v32)
        {
          goto LABEL_42;
        }
      }
    }

    v33 = &v29[v30];
    if (v31 == v33)
    {
      goto LABEL_42;
    }

    if (*v31 - 48 <= 9)
    {
      v31 = std::__itoa::__traits<unsigned char>::__read[abi:nn200100](v31, v33, &v50, &v49);
      if (v31 == v33 || *v31 - 48 > 9)
      {
        if (v50 > 0xFF || 255 - v50 < v49)
        {
          if (v31 != v33)
          {
            goto LABEL_37;
          }

          goto LABEL_42;
        }

        v44 = v49 + v50;
      }

      else
      {
LABEL_37:
        while (*v31 - 48 <= 9)
        {
          if (++v31 == v33)
          {
            v31 = v33;
            break;
          }
        }
      }
    }

    if (v33 != v31)
    {
      break;
    }

LABEL_42:
    v34 = (*(v46 + 112))(a4, v45, *(a1 + 48), &v44);
    v20(a1, v29, 0, v34, v48, v47, 0);
    v28 += 48;
    if (v28 == *(v27 + 1) + 48 * *v27)
    {
      goto LABEL_43;
    }
  }

  re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to deserialize dictionary. Could not convert %s to expected integer type.", v22, v23, v24, v25, v26, v29);
LABEL_48:
  v36 = 0;
  return v36 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v57), re::TypeInfo::TypeInfo(v55, v58), v55[12] != 1) || !re::TypeInfo::isInteger(v55))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    goto LABEL_61;
  }

LABEL_13:
  if (a7)
  {
LABEL_64:
    v47 = *(a1 + 64) ^ 1;
    return v47 & 1;
  }

  v18 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v57);
  re::TypeInfo::TypeInfo(v55, v58);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v57);
  re::TypeInfo::TypeInfo(v54, v58);
  re::TypeInfo::TypeInfo(v52, a5);
  v19 = (*(*a1 + 80))(a1, v55);
  if (!v19)
  {
    v50 = re::TypeInfo::name(v55)[1];
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v42, v43, v44, v45, v46, v50);
    goto LABEL_61;
  }

  v20 = v19;
  v21 = *(v53 + 104);
  re::TypeInfo::TypeInfo(&v57, v52);
  v21(a4, &v57, v18);
  if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, a3, 0))
  {
    goto LABEL_61;
  }

  v27 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v27 || !*v27)
  {
LABEL_62:
    if (*(a1 + 64))
    {
      goto LABEL_61;
    }

    re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 2);
    v48 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v48 - 16);
    goto LABEL_64;
  }

  v28 = *(v27 + 1);
  while (1)
  {
    if ((*(v28 + 11) & 0x1000) != 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = *(v28 + 1);
    }

    if ((*(v28 + 11) & 0x1000) != 0)
    {
      v30 = 21 - v28[21];
    }

    else
    {
      v30 = *v28;
    }

    v51 = 0;
    if (v30)
    {
      v31 = *v29 == 45;
    }

    else
    {
      v31 = 0;
    }

    v32 = v30;
    v33 = &v29[v30];
    v34 = v31;
    v35 = &v29[v31];
    if (v32 == v31)
    {
      v36 = &v29[v31];
    }

    else
    {
      v39 = v32 - v31;
      v36 = v35;
      while (*v36 == 48)
      {
        ++v36;
        if (!--v39)
        {
          goto LABEL_42;
        }
      }
    }

    if (v36 == v33)
    {
LABEL_42:
      v36 = v33;
LABEL_43:
      if (v36 != v35)
      {
        v40 = 0;
        if (v34)
        {
LABEL_45:
          v40 = -v40;
        }

LABEL_46:
        v51 = v40;
        goto LABEL_51;
      }

      v36 = v29;
      goto LABEL_51;
    }

    if (*v36 - 48 >= 0xA)
    {
      goto LABEL_43;
    }

    v36 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v36, v33, &v57, &v56);
    if (v36 == v33)
    {
      v38 = v56;
      v37 = v57;
      if (__CFADD__(v57, v56))
      {
LABEL_50:
        v36 = v33;
        goto LABEL_51;
      }
    }

    else if (*v36 - 48 <= 9 || (v38 = v56, v37 = v57, __CFADD__(v57, v56)))
    {
      while (*v36 - 48 <= 9)
      {
        if (++v36 == v33)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_51;
    }

    v40 = v37 + v38;
    if (v34)
    {
      if (v40 <= 0x8000000000000000)
      {
        goto LABEL_45;
      }
    }

    else if ((v40 & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_51:
    if (v33 != v36)
    {
      break;
    }

    v41 = (*(v53 + 112))(a4, v52, *(a1 + 48), &v51);
    v20(a1, v29, 0, v41, v55, v54, 0);
    v28 += 48;
    if (v28 == (*(v27 + 1) + 48 * *v27))
    {
      goto LABEL_62;
    }
  }

  re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to deserialize dictionary. Could not convert %s to expected integer type.", v22, v23, v24, v25, v26, v29);
LABEL_61:
  v47 = 0;
  return v47 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v57), re::TypeInfo::TypeInfo(v55, v58), v55[12] != 1) || !re::TypeInfo::isInteger(v55))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    goto LABEL_61;
  }

LABEL_13:
  if (a7)
  {
LABEL_64:
    v47 = *(a1 + 64) ^ 1;
    return v47 & 1;
  }

  v18 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v57);
  re::TypeInfo::TypeInfo(v55, v58);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v57);
  re::TypeInfo::TypeInfo(v54, v58);
  re::TypeInfo::TypeInfo(v52, a5);
  v19 = (*(*a1 + 80))(a1, v55);
  if (!v19)
  {
    v50 = re::TypeInfo::name(v55)[1];
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v42, v43, v44, v45, v46, v50);
    goto LABEL_61;
  }

  v20 = v19;
  v21 = *(v53 + 104);
  re::TypeInfo::TypeInfo(&v57, v52);
  v21(a4, &v57, v18);
  if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, a3, 0))
  {
    goto LABEL_61;
  }

  v27 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v27 || !*v27)
  {
LABEL_62:
    if (*(a1 + 64))
    {
      goto LABEL_61;
    }

    re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 2);
    v48 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v48 - 16);
    goto LABEL_64;
  }

  v28 = *(v27 + 1);
  while (1)
  {
    if ((*(v28 + 11) & 0x1000) != 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = *(v28 + 1);
    }

    if ((*(v28 + 11) & 0x1000) != 0)
    {
      v30 = 21 - v28[21];
    }

    else
    {
      v30 = *v28;
    }

    v51 = 0;
    if (v30)
    {
      v31 = *v29 == 45;
    }

    else
    {
      v31 = 0;
    }

    v32 = v30;
    v33 = &v29[v30];
    v34 = v31;
    v35 = &v29[v31];
    if (v32 == v31)
    {
      v36 = &v29[v31];
    }

    else
    {
      v39 = v32 - v31;
      v36 = v35;
      while (*v36 == 48)
      {
        ++v36;
        if (!--v39)
        {
          goto LABEL_42;
        }
      }
    }

    if (v36 == v33)
    {
LABEL_42:
      v36 = v33;
LABEL_43:
      if (v36 != v35)
      {
        v40 = 0;
        if (v34)
        {
LABEL_45:
          v40 = -v40;
        }

LABEL_46:
        v51 = v40;
        goto LABEL_51;
      }

      v36 = v29;
      goto LABEL_51;
    }

    if (*v36 - 48 >= 0xA)
    {
      goto LABEL_43;
    }

    v36 = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](v36, v33, &v57, &v56);
    if (v36 == v33)
    {
      v38 = v56;
      v37 = v57;
      if (__CFADD__(v57, v56))
      {
LABEL_50:
        v36 = v33;
        goto LABEL_51;
      }
    }

    else if (*v36 - 48 <= 9 || (v38 = v56, v37 = v57, __CFADD__(v57, v56)))
    {
      while (*v36 - 48 <= 9)
      {
        if (++v36 == v33)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_51;
    }

    v40 = v37 + v38;
    if (v34)
    {
      if (v40 <= 0x80000000)
      {
        goto LABEL_45;
      }
    }

    else if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_51:
    if (v33 != v36)
    {
      break;
    }

    v41 = (*(v53 + 112))(a4, v52, *(a1 + 48), &v51);
    v20(a1, v29, 0, v41, v55, v54, 0);
    v28 += 48;
    if (v28 == (*(v27 + 1) + 48 * *v27))
    {
      goto LABEL_62;
    }
  }

  re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to deserialize dictionary. Could not convert %s to expected integer type.", v22, v23, v24, v25, v26, v29);
LABEL_61:
  v47 = 0;
  return v47 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v56), re::TypeInfo::TypeInfo(v54, v57), v54[12] != 1) || !re::TypeInfo::isInteger(v54))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    goto LABEL_61;
  }

LABEL_13:
  if (a7)
  {
LABEL_58:
    v42 = *(a1 + 64) ^ 1;
    return v42 & 1;
  }

  v18 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v56);
  re::TypeInfo::TypeInfo(v54, v57);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v56);
  re::TypeInfo::TypeInfo(v53, v57);
  re::TypeInfo::TypeInfo(v51, a5);
  v19 = (*(*a1 + 80))(a1, v54);
  if (!v19)
  {
    v49 = re::TypeInfo::name(v54)[1];
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v43, v44, v45, v46, v47, v49);
    goto LABEL_61;
  }

  v20 = v19;
  v21 = *(v52 + 104);
  re::TypeInfo::TypeInfo(&v56, v51);
  v21(a4, &v56, v18);
  if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, a3, 0))
  {
    goto LABEL_61;
  }

  v27 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v27 || !*v27)
  {
LABEL_56:
    if (*(a1 + 64))
    {
      goto LABEL_61;
    }

    re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 2);
    v41 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v41 - 16);
    goto LABEL_58;
  }

  v28 = *(v27 + 1);
  while (1)
  {
    if ((*(v28 + 11) & 0x1000) != 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = *(v28 + 1);
    }

    if ((*(v28 + 11) & 0x1000) != 0)
    {
      v30 = 21 - v28[21];
    }

    else
    {
      v30 = *v28;
    }

    v50 = 0;
    if (v30)
    {
      v31 = *v29 == 45;
    }

    else
    {
      v31 = 0;
    }

    v32 = v30;
    v33 = &v29[v30];
    v34 = v31;
    v35 = &v29[v31];
    if (v32 == v31)
    {
      v36 = &v29[v31];
    }

    else
    {
      v38 = v32 - v31;
      v36 = v35;
      while (*v36 == 48)
      {
        ++v36;
        if (!--v38)
        {
          goto LABEL_42;
        }
      }
    }

    if (v36 == v33)
    {
LABEL_42:
      v36 = v33;
LABEL_43:
      if (v36 == v35)
      {
        v36 = v29;
        goto LABEL_54;
      }

      v37 = 0;
      v39 = 0;
      if (v34)
      {
LABEL_45:
        v50 = -v37;
        goto LABEL_54;
      }

LABEL_49:
      v50 = v39;
      goto LABEL_54;
    }

    if (*v36 - 48 >= 0xA)
    {
      goto LABEL_43;
    }

    v36 = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](v36, v33, &v56, &v55);
    if (v36 != v33 && *v36 - 48 <= 9)
    {
      goto LABEL_51;
    }

    if (HIWORD(v56) || 0xFFFF - v56 < v55)
    {
      while (1)
      {
        if (v36 == v33)
        {
          v36 = v33;
          goto LABEL_54;
        }

LABEL_51:
        if (*v36 - 48 > 9)
        {
          goto LABEL_54;
        }

        ++v36;
      }
    }

    v37 = v55 + v56;
    if ((v34 & 1) == 0)
    {
      if (((v55 + v56) & 0x8000) != 0)
      {
        goto LABEL_54;
      }

      v39 = v55 + v56;
      goto LABEL_49;
    }

    if ((v55 + v56) <= 0x8000u)
    {
      goto LABEL_45;
    }

LABEL_54:
    if (v33 != v36)
    {
      break;
    }

    v40 = (*(v52 + 112))(a4, v51, *(a1 + 48), &v50);
    v20(a1, v29, 0, v40, v54, v53, 0);
    v28 += 48;
    if (v28 == (*(v27 + 1) + 48 * *v27))
    {
      goto LABEL_56;
    }
  }

  re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to deserialize dictionary. Could not convert %s to expected integer type.", v22, v23, v24, v25, v26, v29);
LABEL_61:
  v42 = 0;
  return v42 & 1;
}

uint64_t re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, re *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_14;
  }

  v14 = *a6;
  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v15 = *(a6 + 2);
    v17 = *v15;
    if (v16 == *v15)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_14;
    }

    v14 = *a6;
    v15 = *(a6 + 2);
  }

  re::TypeRegistry::typeInfo(v14, v15[10], &v48);
  re::TypeInfo::TypeInfo(v47, v49);
  v20 = re::TypeInfo::name(v47);
  if (*v20 >> 1 != 0x22C6ED80D0CLL || (v21 = v20[1], v21 != "StringID") && strcmp(v21, "StringID"))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
LABEL_29:
    v27 = 0;
    return v27 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_27:
    v27 = *(a1 + 64) ^ 1;
    return v27 & 1;
  }

  v23 = *(a1 + 48);
  v22 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v48);
  re::TypeInfo::TypeInfo(v47, v49);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v48);
  re::TypeInfo::TypeInfo(v46, v49);
  re::TypeInfo::TypeInfo(v44, a5);
  v24 = (*(*a1 + 80))(a1, v47);
  if (!v24)
  {
    v37 = re::TypeInfo::name(v47);
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v38, v39, v40, v41, v42, v37[1]);
    goto LABEL_29;
  }

  v25 = v24;
  v26 = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, a3, 0);
  v27 = 0;
  if (v26)
  {
    v28 = *(v45 + 104);
    re::TypeInfo::TypeInfo(&v48, v44);
    v28(a4, &v48, v23);
    v29 = (*(*v22 + 32))(v22, 32, 8);
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    *v29 = v23;
    *(v29 + 1) = 0;
    re::DynamicString::setCapacity(v29, 0);
    v30 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
    if (v30 && *v30)
    {
      v31 = *(v30 + 1);
      do
      {
        if ((*(v31 + 22) & 0x1000) != 0)
        {
          v32 = v31;
        }

        else
        {
          v32 = *(v31 + 8);
        }

        v33 = strlen(v32);
        v48 = v32;
        v49[0] = v33;
        re::DynamicString::operator=(v29, &v48);
        v34 = (*(v45 + 112))(a4, v44, *(a1 + 48), v29);
        v25(a1, v32, 0, v34, v47, v46, 0);
        v31 += 48;
      }

      while (v31 != *(v30 + 1) + 48 * *v30);
    }

    if ((*(a1 + 64) & 1) == 0)
    {
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 2);
      v35 = *(a1 + 152) + 48 * *(a1 + 136);
      ++*(v35 - 16);
    }

    v36 = re::DynamicString::deinit(v29);
    (*(*v22 + 40))(v22, v29, v36);
    goto LABEL_27;
  }

  return v27 & 1;
}

uint64_t re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, re *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_14;
  }

  v14 = *a6;
  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v15 = *(a6 + 2);
    v17 = *v15;
    if (v16 == *v15)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_14;
    }

    v14 = *a6;
    v15 = *(a6 + 2);
  }

  re::TypeRegistry::typeInfo(v14, v15[10], &v53);
  re::TypeInfo::TypeInfo(v52, v54);
  v20 = re::TypeInfo::name(v52);
  if (*v20 >> 1 != 0x134375A94D9F7110 || (v21 = v20[1], v21 != "DynamicString") && strcmp(v21, "DynamicString"))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
LABEL_35:
    v22 = 0;
    return v22 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_15:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v23 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v53);
  re::TypeInfo::TypeInfo(v52, v54);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v53);
  re::TypeInfo::TypeInfo(v51, v54);
  re::TypeInfo::TypeInfo(v49, a5);
  v24 = (*(*a1 + 80))(a1, v52);
  if (!v24)
  {
    v40 = re::TypeInfo::name(v52);
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v41, v42, v43, v44, v45, v40[1]);
    goto LABEL_35;
  }

  v25 = v24;
  v26 = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, a3, 0);
  v22 = 0;
  if (v26)
  {
    v27 = *(v50 + 104);
    re::TypeInfo::TypeInfo(&v53, v49);
    v28 = v27(a4, &v53, v23);
    v53 = 0;
    v54[0] = &str_67;
    v29 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
    if (v29 && *v29)
    {
      v30 = *(v29 + 1);
      do
      {
        if ((*(v30 + 22) & 0x1000) != 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = *(v30 + 8);
        }

        v47 = 0;
        v48 = &str_67;
        v33 = v47;
        v34 = v48;
        v47 = 0;
        v48 = &str_67;
        v35 = v53;
        v36 = v54[0];
        v53 = v33;
        v54[0] = v34;
        if (v35)
        {
          if (v47)
          {
            if (v47)
            {
            }
          }
        }

        v38 = (*(v50 + 112))(a4, v49, *(a1 + 48), &v53);
        v28 = v25(a1, v31, 0, v38, v52, v51, 0);
        v30 += 48;
      }

      while (v30 != *(v29 + 1) + 48 * *v29);
    }

    if ((*(a1 + 64) & 1) == 0)
    {
      v28 = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 2);
      v39 = *(a1 + 152) + 48 * *(a1 + 136);
      ++*(v39 - 16);
    }

    if (v53)
    {
      if (v53)
      {
      }
    }

    goto LABEL_15;
  }

  return v22 & 1;
}

unsigned int *re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(_anonymous_namespace_ *a1, char *a2, uint64_t a3, void *a4, int a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v18 = v5;
  v19 = v6;
  result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
  if (result)
  {
    if (*(result + 11) == 4)
    {
      v12 = *result;
      *a4 = v12;
      LOBYTE(v13) = 6;
      DWORD1(v13) = a5;
      *(&v13 + 1) = a2;
      v14 = 0;
      v15 = v12;
      v16 = 0;
      v17 = result;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v13);
      return 1;
    }

    else
    {
      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, a2, "dictionary");
      return 0;
    }
  }

  return result;
}

void re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(uint64_t a1, int a2)
{
  if (*(a1 + 40))
  {
    return;
  }

  v3 = *(a1 + 128) + 48 * *(a1 + 112);
  v4 = *(v3 - 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = *(v3 - 16);
  if (*v4 > v5)
  {
    v4 = *(v4 + 8) + 24 * v5;
LABEL_5:
    if (*(v4 + 22) == 3)
    {
      LOBYTE(v7) = 7;
      DWORD1(v7) = a2;
      *(&v7 + 1) = "entry";
      v8 = xmmword_1E3054780;
      v9 = 0;
      v10 = v4;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v7);
    }

    else
    {

      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, "entry", "object");
    }

    return;
  }

  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, "entry", &v11);
  if (v12)
  {
    v6 = *&v13[7];
  }

  else
  {
    v6 = v13;
  }

  re::DynamicString::format("Failed to deserialize %s. Index out of range.", &v7, v6);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, &v7);
  if (v7)
  {
    if (BYTE8(v7))
    {
      (*(*v7 + 40))();
    }

    v7 = 0u;
    v8 = 0u;
  }

  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }
}

unsigned int *re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(_anonymous_namespace_ *a1, char *a2, uint64_t a3, int a4)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v15 = v4;
  v16 = v5;
  result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
  if (result)
  {
    if (*(result + 11) == 3)
    {
      LOBYTE(v10) = 2;
      DWORD1(v10) = a4;
      *(&v10 + 1) = a2;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = result;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v10);
      return 1;
    }

    else
    {
      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, a2, "object");
      return 0;
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(result, 2);
    v2 = *(v1 + 16) + 48 * *(v1 + 14);
    ++*(v2 - 16);
  }

  return result;
}

uint64_t re::serializeDynamicString<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, void *a4, re *a5, const re::TypeInfo *a6, int a7)
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
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
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
    v27 = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, a3, &v37, 0);
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
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "String size greater than stream size during deserialization. String length = %zu, Stream length = %zu", v30, v31, v32, v33, v34, v29);
LABEL_24:
    v21 = 0;
    return v21 & 1;
  }

  v37 = 0;
  v20 = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, a3, &v37, 0);
  v21 = 0;
  if (v20)
  {
    if (!v37)
    {
LABEL_33:
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
      v21 = *(a1 + 64) ^ 1;
      return v21 & 1;
    }

    v22 = a1 + 24;
    v23 = 0;
    v24 = 1;
LABEL_32:
    re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(v22, v23, v24);
    goto LABEL_33;
  }

  return v21 & 1;
}

void *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5CBB2B0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

uint64_t re::internal::serializeObjectWithOneMember<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
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

void re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5CBB2B0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::error(uint64_t *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginField(uint64_t a1, int a2, uint64_t a3)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginObject(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = v2 + 40 * *(a1 + 40);
  v4 = *(v3 - 32);
  v5 = *(v3 - 40);
  if (!v4 && *v5 == 64 || (v6 = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((*(a1 + 8) + 24), v5, v4, 0), result = 0, v6))
  {
    v8 = "";
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::add(a1 + 32, &v8);
    return 1;
  }

  return result;
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endObject(_anonymous_namespace_ *result)
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
  v5 = *(result + 1);
  if ((*(v4 - 8) || **(v4 - 5) != 64) && (*(v5 + 64) & 1) == 0)
  {
    result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((v5 + 24), 2);
    v6 = *(v5 + 152) + 48 * *(v5 + 136);
    ++*(v6 - 16);
  }

  return result;
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginArray(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((*(a1 + 8) + 24), *(v2 + 40 * *(a1 + 40) - 40), *(v2 + 40 * *(a1 + 40) - 32), a2, 0);
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endArray(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
    re::EncoderBinary<re::SeekableInputStream>::endArray((*(a1 + 8) + 24));
  }

  return v2 == 0;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionary(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::add(a1 + 32, v6 + 40 * *(a1 + 40) - 40);
  if (*(a1 + 48))
  {
    v7 = a1 + 56;
  }

  else
  {
    v7 = *(a1 + 64);
  }

  re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::beginDictionary(v7 + 40 * *(a1 + 40) - 40, (*(a1 + 8) + 24), a2, a3);
  return 1;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryEntry(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = a1 + 56;
  }

  else
  {
    v1 = *(a1 + 64);
  }

  re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::beginDictionaryEntry(v1 + 40 * *(a1 + 40) - 40, *(a1 + 8) + 24);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryValue(uint64_t result)
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
  if (*(v2 - 8) == 1)
  {
    v3 = 0;
    *(v2 - 24) += 48;
  }

  else
  {
    *(v2 - 40) = "value";
    v3 = 1;
  }

  *(v2 - 32) = v3;
  return result;
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 8);
  }

  if ((v1[40 * *(result + 5) - 8] & 1) == 0)
  {
    return re::EncoderBinary<re::SeekableInputStream>::endDictionaryEntry((*(result + 1) + 24));
  }

  return result;
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionary(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
    if (*(a1 + 48))
    {
      v4 = a1 + 56;
    }

    else
    {
      v4 = *(a1 + 64);
    }

    re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::endDictionary((v4 + 40 * *(a1 + 40) - 40), *(a1 + 8) + 24);
    v5 = *(a1 + 48);
    --*(a1 + 40);
    *(a1 + 48) = v5 + 2;
  }

  return v2 == 0;
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginData(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginBLOB(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), *(v2 + 40 * *(a1 + 40) - 32), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginOptional(uint64_t a1)
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

  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((*(a1 + 8) + 24), *(v1 + 40 * *(a1 + 40) - 40), *(v1 + 40 * *(a1 + 40) - 32), &v3, 0);
  return v3;
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginString(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::beginString(v2 + 40 * *(a1 + 40) - 40, (*(a1 + 8) + 24), a2);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, BOOL *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), *(v2 + 40 * *(a1 + 40) - 32), a2, 0);
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), *(v2 + 40 * *(a1 + 40) - 32), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  result = re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<signed char>(v4 + 40 * *(a1 + 40) - 40, (*(a1 + 8) + 24), a2);
  if ((result & 1) == 0)
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

    v8 = v7 + 40 * *(a1 + 40);
    v9 = *(v8 - 40);
    v10 = *(v8 - 32);

    return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>(v6 + 24, v9, v10, a2, 0, "int8");
  }

  return result;
}

{
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  result = re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<unsigned char>(v4 + 40 * *(a1 + 40) - 40, (*(a1 + 8) + 24), a2);
  if ((result & 1) == 0)
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

    v8 = v7 + 40 * *(a1 + 40);
    v9 = *(v8 - 40);
    v10 = *(v8 - 32);

    return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>(v6 + 24, v9, v10, a2, 0, "uint8");
  }

  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _WORD *a2)
{
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  result = re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<short>(v4 + 40 * *(a1 + 40) - 40, (*(a1 + 8) + 24), a2);
  if ((result & 1) == 0)
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

    v8 = v7 + 40 * *(a1 + 40);
    v9 = *(v8 - 40);
    v10 = *(v8 - 32);

    return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>(v6 + 24, v9, v10, a2, 0, "int16");
  }

  return result;
}

{
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  result = re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<unsigned short>(v4 + 40 * *(a1 + 40) - 40, (*(a1 + 8) + 24), a2);
  if ((result & 1) == 0)
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

    v8 = v7 + 40 * *(a1 + 40);
    v9 = *(v8 - 40);
    v10 = *(v8 - 32);

    return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>(v6 + 24, v9, v10, a2, 0, "uint16");
  }

  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  result = re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<int>(v4 + 40 * *(a1 + 40) - 40, (*(a1 + 8) + 24), a2);
  if ((result & 1) == 0)
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

    v8 = v7 + 40 * *(a1 + 40);
    v9 = *(v8 - 40);
    v10 = *(v8 - 32);

    return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>(v6 + 24, v9, v10, a2, 0, "int32");
  }

  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  result = re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<unsigned int>(v4 + 40 * *(a1 + 40) - 40, (*(a1 + 8) + 24), a2);
  if ((result & 1) == 0)
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

    v8 = v7 + 40 * *(a1 + 40);
    v9 = *(v8 - 40);
    v10 = *(v8 - 32);

    return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(v6 + 24, v9, v10, a2, 0, "uint32");
  }

  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, uint64_t *a2)
{
  v7 = *a2;
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  result = re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<unsigned long long>(v4 + 40 * *(a1 + 40) - 40, (*(a1 + 8) + 24), &v7);
  if ((result & 1) == 0)
  {
    if (*(a1 + 48))
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }

    result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(*(a1 + 8) + 24, *(v6 + 40 * *(a1 + 40) - 40), *(v6 + 40 * *(a1 + 40) - 32), &v7, 0, "uint64");
  }

  *a2 = v7;
  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, unint64_t *a2)
{
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  result = re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<long long>(v4 + 40 * *(a1 + 40) - 40, (*(a1 + 8) + 24), a2);
  if ((result & 1) == 0)
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

    v8 = v7 + 40 * *(a1 + 40);
    v9 = *(v8 - 40);
    v10 = *(v8 - 32);

    return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>(v6 + 24, v9, v10, a2, 0, "int64");
  }

  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  result = re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<unsigned long long>(v4 + 40 * *(a1 + 40) - 40, (*(a1 + 8) + 24), a2);
  if ((result & 1) == 0)
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

    v8 = v7 + 40 * *(a1 + 40);
    v9 = *(v8 - 40);
    v10 = *(v8 - 32);

    return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(v6 + 24, v9, v10, a2, 0, "uint64");
  }

  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, float *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), *(v2 + 40 * *(a1 + 40) - 32), a2, 0, "float");
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, double *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), *(v2 + 40 * *(a1 + 40) - 32), a2, 0, "double");
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializeString(uint64_t a1, void *__dst, size_t __n)
{
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  v7 = v6 + 40 * *(a1 + 40);
  if (*(v7 - 8) == 1 && (*(v7 - 32) & 0x80000000) != 0)
  {
    result = memcpy(__dst, *(v7 - 40), __n);
    *(__dst + __n) = 0;
  }

  else
  {
    if (__n)
    {
      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(*(a1 + 8) + 24, __dst, 0);
    }

    v8 = (*(a1 + 8) + 24);

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString(v8);
  }

  return result;
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializeData(uint64_t a1, void *__dst)
{
  v2 = *(a1 + 8);
  if ((*(v2 + 64) & 1) == 0)
  {
    v4 = *(*(v2 + 152) + 48 * *(v2 + 136) - 24);
    memcpy(__dst, *(v2 + 248), *(v2 + 232));
    v5 = *(v2 + 152) + 48 * *(v2 + 136);
    *(v5 - 16) += v4;
    v2 = *(a1 + 8);
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endBLOB((v2 + 24));
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
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

  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((*(a1 + 8) + 24), *(v6 + 40 * *(a1 + 40) - 40), *(v6 + 40 * *(a1 + 40) - 32), &v8, 0);
  v9 = v8 != 0;
  (*(**(a3 + 32) + 16))(*(a3 + 32), a1, a2, &v9);
  return re::EncoderBinary<re::SeekableInputStream>::endPointer((*(a1 + 8) + 24));
}

_BYTE *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::read(uint64_t a1, uint64_t a2, re **this)
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

      return (*(*a1 + 56))(a1, "Stream schema doesn't support type '%s', reading field '%s'(%d)", v11, *(v12 + 40 * *(a1 + 40) - 40), *(v12 + 40 * *(a1 + 40) - 32));
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::beginDictionary(uint64_t a1, _anonymous_namespace_ *a2, void *a3, int a4)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  if (a4)
  {
    v9 = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a2, v6, v7, 0);
    result = 0;
    if (v9)
    {
      v11 = *(*(a2 + 16) + 48 * *(a2 + 14) - 8);
      v12 = *(v11 + 1);
      *(a1 + 16) = v12;
      *(a1 + 24) = v12 + 48 * *v11;
      result = 1;
      *(a1 + 32) = 1;
      *a3 = *v11;
    }
  }

  else
  {

    return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(a2, v6, v7, a3, 0);
  }

  return result;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::beginDictionaryEntry(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 1)
  {
    *(a1 + 8) = -1;
    v3 = *(a1 + 16);
    if ((v3[23] & 0x10) == 0)
    {
      v3 = *(v3 + 1);
    }
  }

  else
  {
    re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(a2, 0);
    *(a1 + 8) = 0;
    v3 = "key";
  }

  *a1 = v3;
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::endDictionary(_anonymous_namespace_ *result, uint64_t a2)
{
  if (*(result + 32) == 1)
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(a2, 2);
      v3 = *(a2 + 128) + 48 * *(a2 + 112);
      ++*(v3 - 16);
    }
  }

  else
  {

    return re::EncoderBinary<re::SeekableInputStream>::endDictionary(a2);
  }

  return result;
}

unsigned int *re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginBLOB(uint64_t a1, char *a2, uint64_t a3, void *a4, int a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v24 = v5;
  v25 = v6;
  result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
  if (result)
  {
    v12 = result;
    if ((*(result + 11) & 0x400) != 0)
    {
      if ((*(result + 11) & 0x1000) != 0)
      {
        v13 = result;
      }

      else
      {
        v13 = *(result + 1);
      }

      *(a1 + 208) = 0;
      ++*(a1 + 216);
      v14 = strlen(v13);
      if ((re::EncoderHelper::decodeBase64(v13, v14, a1 + 192) & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v21);
        if (v22)
        {
          v16 = *&v23[7];
        }

        else
        {
          v16 = v23;
        }

        re::DynamicString::format("Failed to deserialize %s. Failed to decode data from Base64-encoded string.", &v17, v16);
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, &v17);
        if (v17)
        {
          if (BYTE8(v17))
          {
            (*(*v17 + 40))();
          }

          v17 = 0u;
          v18 = 0u;
        }

        if (v21)
        {
          if (v22)
          {
            (*(*v21 + 40))();
          }
        }

        return 0;
      }

      v15 = *(a1 + 208);
    }

    else
    {
      if (*(result + 11))
      {
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, a2, "BLOB (as Base64 encoded string)");
        return 0;
      }

      v15 = 0;
    }

    *a4 = v15;
    LOBYTE(v17) = 4;
    DWORD1(v17) = a5;
    *(&v17 + 1) = a2;
    *&v18 = 0;
    *(&v18 + 1) = v15;
    v19 = 0;
    v20 = v12;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v17);
    return 1;
  }

  return result;
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::beginString(uint64_t a1, _anonymous_namespace_ *a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  if (*(a1 + 32) == 1 && (v4 & 0x80000000) != 0)
  {
    *a3 = strlen(*a1);
    return 1;
  }

  else
  {

    return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a2, v5, v4, a3, 0);
  }
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<signed char>(uint64_t a1, _anonymous_namespace_ *a2, _BYTE *a3)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v28 = v3;
  v29 = v4;
  if ((*(a1 + 8) & 0x80000000) == 0)
  {
    return 0;
  }

  v9 = *a1;
  v10 = strlen(*a1);
  v16 = &v9[v10];
  if (v10)
  {
    v17 = *v9 == 45;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = &v9[v17];
  if (v10 == v17)
  {
    v20 = &v9[v17];
  }

  else
  {
    v23 = v10 - v17;
    v20 = v19;
    while (*v20 == 48)
    {
      ++v20;
      if (!--v23)
      {
        goto LABEL_24;
      }
    }
  }

  if (v20 != v16)
  {
    if (*v20 - 48 < 0xA)
    {
      v21 = std::__itoa::__traits<unsigned char>::__read[abi:nn200100](v20, v16, &v27, &v26);
      if (v21 != v16 && *v21 - 48 <= 9 || v27 > 0xFF || 255 - v27 < v26)
      {
        goto LABEL_30;
      }

      v22 = v26 + v27;
      if (v18)
      {
        if ((v26 + v27) > 0x80u)
        {
          goto LABEL_30;
        }

        goto LABEL_26;
      }

      if ((v22 & 0x80) == 0)
      {
        LOBYTE(v24) = v26 + v27;
        goto LABEL_27;
      }

LABEL_30:
      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a2, "failed to read integer from string '%s'", *a1, v11, v12, v13, v14, v15, v25);
      return 1;
    }

    v16 = v20;
  }

LABEL_24:
  if (v16 == v19)
  {
    goto LABEL_30;
  }

  v22 = 0;
  LOBYTE(v24) = 0;
  if (v18)
  {
LABEL_26:
    v24 = -v22;
  }

LABEL_27:
  *a3 = v24;
  return 1;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<unsigned char>(uint64_t a1, _anonymous_namespace_ *a2, _BYTE *a3)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v23 = v3;
  v24 = v4;
  if ((*(a1 + 8) & 0x80000000) == 0)
  {
    return 0;
  }

  v9 = *a1;
  v10 = strlen(*a1);
  v16 = &v9[v10];
  if (v10)
  {
    v17 = v10;
    v18 = v9;
    while (*v18 == 48)
    {
      ++v18;
      if (!--v17)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v18 = v9;
  }

  if (v18 == v16)
  {
LABEL_19:
    if (v16 != v9)
    {
      *a3 = 0;
      return 1;
    }

LABEL_21:
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a2, "failed to read integer from string '%s'", *a1, v11, v12, v13, v14, v15, v20);
    return 1;
  }

  if (*v18 - 48 >= 0xA)
  {
    v16 = v18;
    goto LABEL_19;
  }

  v19 = std::__itoa::__traits<unsigned char>::__read[abi:nn200100](v18, v16, &v22, &v21);
  if (v19 != v16 && *v19 - 48 <= 9 || v22 > 0xFF || 255 - v22 < v21)
  {
    goto LABEL_21;
  }

  *a3 = v21 + v22;
  return 1;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<short>(uint64_t a1, _anonymous_namespace_ *a2, _WORD *a3)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v28 = v3;
  v29 = v4;
  if ((*(a1 + 8) & 0x80000000) == 0)
  {
    return 0;
  }

  v9 = *a1;
  v10 = strlen(*a1);
  v16 = &v9[v10];
  if (v10)
  {
    v17 = *v9 == 45;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = &v9[v17];
  if (v10 == v17)
  {
    v20 = &v9[v17];
  }

  else
  {
    v23 = v10 - v17;
    v20 = v19;
    while (*v20 == 48)
    {
      ++v20;
      if (!--v23)
      {
        goto LABEL_24;
      }
    }
  }

  if (v20 != v16)
  {
    if (*v20 - 48 < 0xA)
    {
      v21 = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](v20, v16, &v27, &v26);
      if (v21 != v16 && *v21 - 48 <= 9 || HIWORD(v27) || 0xFFFF - v27 < v26)
      {
        goto LABEL_30;
      }

      v22 = v26 + v27;
      if (v18)
      {
        if ((v26 + v27) > 0x8000u)
        {
          goto LABEL_30;
        }

        goto LABEL_26;
      }

      if ((v22 & 0x8000) == 0)
      {
        LOWORD(v24) = v26 + v27;
        goto LABEL_27;
      }

LABEL_30:
      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a2, "failed to read integer from string '%s'", *a1, v11, v12, v13, v14, v15, v25);
      return 1;
    }

    v16 = v20;
  }

LABEL_24:
  if (v16 == v19)
  {
    goto LABEL_30;
  }

  v22 = 0;
  LOWORD(v24) = 0;
  if (v18)
  {
LABEL_26:
    v24 = -v22;
  }

LABEL_27:
  *a3 = v24;
  return 1;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<unsigned short>(uint64_t a1, _anonymous_namespace_ *a2, _WORD *a3)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v23 = v3;
  v24 = v4;
  if ((*(a1 + 8) & 0x80000000) == 0)
  {
    return 0;
  }

  v9 = *a1;
  v10 = strlen(*a1);
  v16 = &v9[v10];
  if (v10)
  {
    v17 = v10;
    v18 = v9;
    while (*v18 == 48)
    {
      ++v18;
      if (!--v17)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v18 = v9;
  }

  if (v18 == v16)
  {
LABEL_19:
    if (v16 != v9)
    {
      *a3 = 0;
      return 1;
    }

LABEL_21:
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a2, "failed to read integer from string '%s'", *a1, v11, v12, v13, v14, v15, v20);
    return 1;
  }

  if (*v18 - 48 >= 0xA)
  {
    v16 = v18;
    goto LABEL_19;
  }

  v19 = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](v18, v16, &v22, &v21);
  if (v19 != v16 && *v19 - 48 <= 9 || HIWORD(v22) || 0xFFFF - v22 < v21)
  {
    goto LABEL_21;
  }

  *a3 = v21 + v22;
  return 1;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<int>(uint64_t a1, _anonymous_namespace_ *a2, unsigned int *a3)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v27 = v3;
  v28 = v4;
  if ((*(a1 + 8) & 0x80000000) == 0)
  {
    return 0;
  }

  v9 = *a1;
  v10 = strlen(*a1);
  v16 = &v9[v10];
  if (v10)
  {
    v17 = *v9 == 45;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = &v9[v17];
  if (v10 == v17)
  {
    v20 = &v9[v17];
  }

  else
  {
    v23 = v10 - v17;
    v20 = v19;
    while (*v20 == 48)
    {
      ++v20;
      if (!--v23)
      {
        goto LABEL_23;
      }
    }
  }

  if (v20 != v16)
  {
    if (*v20 - 48 < 0xA)
    {
      v21 = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](v20, v16, &v26, &v25);
      if (v21 != v16 && *v21 - 48 <= 9 || __CFADD__(v26, v25))
      {
        goto LABEL_28;
      }

      v22 = v26 + v25;
      if (v18)
      {
        if (v22 > 0x80000000)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      if ((v22 & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

LABEL_28:
      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a2, "failed to read integer from string '%s'", *a1, v11, v12, v13, v14, v15, v24);
      return 1;
    }

    v16 = v20;
  }

LABEL_23:
  if (v16 == v19)
  {
    goto LABEL_28;
  }

  v22 = 0;
  if (v18)
  {
LABEL_25:
    v22 = -v22;
  }

LABEL_26:
  *a3 = v22;
  return 1;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<unsigned int>(uint64_t a1, _anonymous_namespace_ *a2, _DWORD *a3)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v23 = v3;
  v24 = v4;
  if ((*(a1 + 8) & 0x80000000) == 0)
  {
    return 0;
  }

  v9 = *a1;
  v10 = strlen(*a1);
  v16 = &v9[v10];
  if (v10)
  {
    v17 = v10;
    v18 = v9;
    while (*v18 == 48)
    {
      ++v18;
      if (!--v17)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v18 = v9;
  }

  if (v18 == v16)
  {
LABEL_18:
    if (v16 != v9)
    {
      *a3 = 0;
      return 1;
    }

LABEL_20:
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a2, "failed to read integer from string '%s'", *a1, v11, v12, v13, v14, v15, v20);
    return 1;
  }

  if (*v18 - 48 >= 0xA)
  {
    v16 = v18;
    goto LABEL_18;
  }

  v19 = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](v18, v16, &v22, &v21);
  if (v19 != v16 && *v19 - 48 <= 9 || __CFADD__(v22, v21))
  {
    goto LABEL_20;
  }

  *a3 = v22 + v21;
  return 1;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<unsigned long long>(uint64_t a1, _anonymous_namespace_ *a2, void *a3)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v21[7] = v3;
  v21[8] = v4;
  if ((*(a1 + 8) & 0x80000000) == 0)
  {
    return 0;
  }

  v9 = *a1;
  v10 = strlen(*a1);
  v16 = &v9[v10];
  if (v10)
  {
    v17 = v10;
    v18 = v9;
    while (*v18 == 48)
    {
      ++v18;
      if (!--v17)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v18 = v9;
  }

  if (v18 == v16)
  {
LABEL_18:
    if (v16 != v9)
    {
      *a3 = 0;
      return 1;
    }

LABEL_20:
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a2, "failed to read integer from string '%s'", *a1, v11, v12, v13, v14, v15, v20);
    return 1;
  }

  if (*v18 - 48 >= 0xA)
  {
    v16 = v18;
    goto LABEL_18;
  }

  v19 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v18, v16, v21, &v20);
  if (v19 != v16 && *v19 - 48 <= 9 || __CFADD__(v21[0], v20))
  {
    goto LABEL_20;
  }

  *a3 = v21[0] + v20;
  return 1;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<long long>(uint64_t a1, _anonymous_namespace_ *a2, unint64_t *a3)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v25[7] = v3;
  v25[8] = v4;
  if ((*(a1 + 8) & 0x80000000) == 0)
  {
    return 0;
  }

  v9 = *a1;
  v10 = strlen(*a1);
  v16 = &v9[v10];
  if (v10)
  {
    v17 = *v9 == 45;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = &v9[v17];
  if (v10 == v17)
  {
    v20 = &v9[v17];
  }

  else
  {
    v23 = v10 - v17;
    v20 = v19;
    while (*v20 == 48)
    {
      ++v20;
      if (!--v23)
      {
        goto LABEL_23;
      }
    }
  }

  if (v20 != v16)
  {
    if (*v20 - 48 < 0xA)
    {
      v21 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v20, v16, v25, &v24);
      if (v21 != v16 && *v21 - 48 <= 9 || __CFADD__(v25[0], v24))
      {
        goto LABEL_28;
      }

      v22 = v25[0] + v24;
      if (v18)
      {
        if (v22 > 0x8000000000000000)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

LABEL_28:
      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a2, "failed to read integer from string '%s'", *a1, v11, v12, v13, v14, v15, v24);
      return 1;
    }

    v16 = v20;
  }

LABEL_23:
  if (v16 == v19)
  {
    goto LABEL_28;
  }

  v22 = 0;
  if (v18)
  {
LABEL_25:
    v22 = -v22;
  }

LABEL_26:
  *a3 = v22;
  return 1;
}

unsigned int *re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(_anonymous_namespace_ *a1, char *a2, uint64_t a3, int *a4, int a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v20 = v5;
  v21 = v6;
  result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
  if (result)
  {
    v12 = result;
    v13 = *(result + 11);
    if (*(result + 11))
    {
      if (v13 != 3 || (*(result + 1) + 48 * *result) == rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::FindMember(result, "@ref"))
      {
        v13 = 2;
        v14 = 1;
      }

      else
      {
        v14 = 1;
        v13 = 1;
      }
    }

    else
    {
      v14 = *(result + 11);
    }

    *a4 = v13;
    LOBYTE(v15) = 9;
    DWORD1(v15) = a5;
    *(&v15 + 1) = a2;
    v16 = 0;
    v17 = v14;
    v18 = 0;
    v19 = v12;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v15);
    return 1;
  }

  return result;
}

int *rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::FindMember(unsigned int *a1, char *__s)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[1] = __s;
  v5[2] = 0x405000000000000;
  v5[0] = strlen(__s);
  v3 = *(a1 + 1);
  if (*a1)
  {
    do
    {
      if (rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::StringEqual<re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>(v5, v3))
      {
        break;
      }

      v3 += 12;
    }

    while (v3 != (*(a1 + 1) + 48 * *a1));
  }

  return v3;
}

BOOL rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::StringEqual<re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>(unsigned int *a1, int *a2)
{
  if ((*(a1 + 11) & 0x1000) != 0)
  {
    v2 = 21 - *(a1 + 21);
  }

  else
  {
    v2 = *a1;
  }

  v3 = 21 - *(a2 + 21);
  if ((*(a2 + 11) & 0x1000) == 0)
  {
    v3 = *a2;
  }

  if (v2 != v3)
  {
    return 0;
  }

  if ((*(a1 + 11) & 0x1000) == 0)
  {
    a1 = *(a1 + 1);
  }

  if ((*(a2 + 11) & 0x1000) == 0)
  {
    a2 = *(a2 + 1);
  }

  return a1 == a2 || memcmp(a1, a2, v2) == 0;
}

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v21);
  if (v21[0] == 1)
  {
    re::TypeInfo::TypeInfo(v18, &v22);
    if (*(v19 + 96) || (re::TypeRegistry::typeInfo(v18[0], *(v19 + 80), v23), v23[0] == 1))
    {
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, v18, a4);
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
                goto LABEL_21;
              }
            }

            if ((a1[64] & 1) == 0)
            {
              result = (*(*a1 + 72))(a1, *(v14 - 1), v11, a2 + v12, v15, v15, a4);
            }
          }
        }
      }

LABEL_21:
      ;
    }
  }

  return result;
}

uint64_t re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v60 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v52);
  re::TypeRegistry::typeInfo(*a4, *(a4[2] + 80), v48);
  if (v48[0] == 1)
  {
    if ((v52[0] & 1) == 0)
    {
      v11 = re::TypeInfo::name(&v49)[1];
      re::TypeInfo::name(a3);
      return re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Base class %s removed from type %s.", v12, v13, v14, v15, v16, v11);
    }

    if (v53 == v49)
    {
      v18 = *v55;
      v19 = *v51;
      if (*v55 == *v51)
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

    else if (re::areSameTranslatedVersion(&v53, &v49, v10))
    {
LABEL_5:
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v53, a5);
      goto LABEL_15;
    }

    if (v54 == v50)
    {
      re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v53, &v49, a5);
    }

    else
    {
      v22 = re::TypeInfo::name(&v53)[1];
      re::TypeInfo::name(&v49);
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v23, v24, v25, v26, v27, v22);
    }
  }

LABEL_15:
  re::TypeMemberCollection::TypeMemberCollection(v47, *a3, a3[2]);
  result = re::TypeMemberCollection::TypeMemberCollection(v45, *a4, a4[2]);
  if (v46)
  {
    for (i = 0; i < v46; ++i)
    {
      if (*(a1 + 64))
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v45, i, v43);
      if (*(v44 + 28) == 1)
      {
        v29 = *(v44 + 16);
        if (strlen(v29) >= 3 && *v29 == 109)
        {
          v29 += 2 * (*(v29 + 1) == 95);
        }

        v30 = *(v44 + 32);
        v31 = *(*a4 + 856);
        if (!v31 || (v31 = re::internal::TypeTranslationTable::translateMember(v31, v43), v31 == -1))
        {
          v35 = *re::foundationSerializationLogObjects(v31);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = re::TypeInfo::name(a4)[1];
            *buf = 136315394;
            v57 = v36;
            v58 = 2080;
            v59 = v29;
            _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_INFO, "Skipping unknown member %s.%s.", buf, 0x16u);
          }

          v37 = *(a1 + 272);
          re::TypeRegistry::typeInfo(v43[0], *v44, buf);
          re::TypeInfo::TypeInfo(v41, &v57 + 4);
          result = re::internal::translateType(v37, v41, buf);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v29, v30, 0, buf, buf, 1);
          }
        }

        else
        {
          re::TypeMemberCollection::operator[](v47, v31, v41);
          v32 = *(v42 + 24);
          re::TypeRegistry::typeInfo(v41[0], *v42, buf);
          re::TypeInfo::TypeInfo(v40, &v57 + 4);
          re::TypeRegistry::typeInfo(v43[0], *v44, buf);
          re::TypeInfo::TypeInfo(v39, &v57 + 4);
          if (*(a1 + 64) == 1 || (result = (*(*a1 + 72))(a1, v29, v30, a2 + v32, v40, v39, a5), (result & 1) == 0))
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
                  goto LABEL_35;
                }
              }

              v38 = *(v34 - 1);
              re::TypeRegistry::typeInfo(v41[0], *v42, buf);
              re::TypeInfo::TypeInfo(v40, &v57 + 4);
              re::TypeRegistry::typeInfo(v43[0], *v44, buf);
              result = re::TypeInfo::TypeInfo(v39, &v57 + 4);
              if ((*(a1 + 64) & 1) == 0)
              {
                result = (*(*a1 + 72))(a1, v38, v30, a2 + v32, v40, v39, a5);
              }
            }
          }
        }
      }

LABEL_35:
      ;
    }
  }

  return result;
}

uint64_t re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::open(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(a1 + 192);
  if (*(v8 + 24) != *(a1 + 200))
  {
    re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::deinit(a1);
    re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::init(a1, v8);
  }

  v9.n128_f64[0] = re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::open(a1 + 24, a2, 0, 0xFFFFFFFFLL, a3, a4);
  v10 = *(*a1 + 48);

  return v10(a1, v9);
}

double re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::open(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (!a5)
  {
  }

  *(a1 + 24) = a5;
  if (!a6)
  {
  }

  *(a1 + 32) = a6;
  v10[0] = 0;
  re::Optional<re::DetailedError>::operator=(a1 + 40, v10);
  if (v10[0] == 1 && *&v12[1] && (v12[3] & 1) != 0)
  {
    (*(**&v12[1] + 40))();
  }

  *(a1 + 96) = *(a1 + 24);
  v8 = a1 + 96;
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v8, 0x40uLL);
  ++*(v8 + 24);
  v10[0] = 0;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  *&result = re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::add(v8, v10).n128_u64[0];
  return result;
}

uint64_t re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::init(re::TypeRegistry **a1, re::TypeRegistry *a2)
{
  a1[24] = a2;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 26));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 26));
  (*(*a1 + 8))(a1);
  re::TypeRegistry::typeID(a1[24], (a1 + 1), &v13);
  if (v13)
  {
    v3 = a1[24];
    v9 = v13;
    re::TypeRegistry::attributesByAttributeType(v3, &v9, &v10);
    if (v11)
    {
      v4 = 48 * v11;
      v5 = (v12 + 40);
      do
      {
        v8 = *(v5 - 3);
        v6 = *v5;
        v5 += 6;
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v8, v6);
        v4 -= 48;
      }

      while (v4);
    }

    if (v10 && v12)
    {
      (*(*v10 + 40))();
    }
  }

  result = (*(*a1 + 4))(a1);
  *(a1 + 50) = *(a1[24] + 6);
  return result;
}

uint64_t std::__function::__func<std::unique_ptr<re::TypeRegistry,std::function<void ()(re::TypeRegistry*)>> re::toUniquePtr<re::TypeRegistry>(re::TypeRegistry*,re::Allocator *)::{lambda(re::TypeRegistry*)#1},std::allocator<std::unique_ptr<re::TypeRegistry,std::function<void ()(re::TypeRegistry*)>> re::toUniquePtr<re::TypeRegistry>(re::TypeRegistry*,re::Allocator *)::{lambda(re::TypeRegistry*)#1}>,void ()(re::TypeRegistry*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CBB428;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::unique_ptr<re::TypeRegistry,std::function<void ()(re::TypeRegistry*)>> re::toUniquePtr<re::TypeRegistry>(re::TypeRegistry*,re::Allocator *)::{lambda(re::TypeRegistry*)#1},std::allocator<std::unique_ptr<re::TypeRegistry,std::function<void ()(re::TypeRegistry*)>> re::toUniquePtr<re::TypeRegistry>(re::TypeRegistry*,re::Allocator *)::{lambda(re::TypeRegistry*)#1}>,void ()(re::TypeRegistry*)>::operator()(uint64_t result, re::TypeRegistry **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::TypeRegistry::~TypeRegistry(*a2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<std::unique_ptr<re::TypeRegistry,std::function<void ()(re::TypeRegistry*)>> re::toUniquePtr<re::TypeRegistry>(re::TypeRegistry*,re::Allocator *)::{lambda(re::TypeRegistry*)#1},std::allocator<std::unique_ptr<re::TypeRegistry,std::function<void ()(re::TypeRegistry*)>> re::toUniquePtr<re::TypeRegistry>(re::TypeRegistry*,re::Allocator *)::{lambda(re::TypeRegistry*)#1}>,void ()(re::TypeRegistry*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::TypeRegistry *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::function<void ()(re::TypeRegistry *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::unique_ptr<re::TypeRegistry,std::function<void ()(re::TypeRegistry*)>>::~unique_ptr[abi:nn200100](v3);
}

uint64_t *std::unique_ptr<re::TypeRegistry,std::function<void ()(re::TypeRegistry*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::TypeRegistry *)>::operator()(a1[4], v2);
  }

  std::__function::__value_func<void ()(re::TypeRegistry *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 208);
  result = a1 + 208;
  v7 = *(a2 + 8) | 0xFFFFFFFF00000000;
  if (!v6)
  {
    LODWORD(v8) = 0;
    goto LABEL_8;
  }

  v8 = v7 % *(a1 + 232);
  v9 = *(*(a1 + 216) + 4 * v8);
  if (v9 == 0x7FFFFFFF)
  {
LABEL_8:
    result = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(result, v8, v7);
    *(result + 4) = v7;
    *(result + 16) = a3;
    ++*(a1 + 248);
    return result;
  }

  v10 = *(a1 + 224);
  while (*(v10 + 24 * v9 + 4) != v7)
  {
    v9 = *(v10 + 24 * v9) & 0x7FFFFFFF;
    if (v9 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  ++*(a1 + 248);
  *(v10 + 24 * v9 + 16) = a3;
  return result;
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v24, 0, 36);
          *&v24[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v24, v9, v8);
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
                v17 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(a1, *(v13 + 4) % *(a1 + 24));
                *(v17 + 4) = *(v13 + 4);
                *(v17 + 16) = *(v13 + 16);
              }

              v13 += 24;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v24);
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
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v18 = *(a1 + 16);
    v19 = *(v18 + 24 * v4);
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *(v18 + 24 * v4);
    *(a1 + 36) = v19 & 0x7FFFFFFF;
  }

  v21 = 24 * v4;
  *(v18 + v21) = v19 | 0x80000000;
  v22 = *(a1 + 8);
  *(v18 + v21) = *(v22 + 4 * a2) | 0x80000000;
  *(v22 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v18 + 24 * v4;
}

uint64_t re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::open(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(a1 + 208);
  if (*(v8 + 24) != *(a1 + 216))
  {
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::deinit(a1);
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::init(a1, v8);
  }

  v9.n128_f64[0] = re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::open(a1 + 24, a2, 0, 0xFFFFFFFFLL, a3, a4);
  v10 = *(*a1 + 48);

  return v10(a1, v9);
}

uint64_t re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::init(uint64_t a1, uint64_t a2)
{
  *(a1 + 208) = a2;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear(a1 + 224);
  re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFuncs(a1);
  result = (*(*a1 + 32))(a1);
  *(a1 + 216) = *(*(a1 + 208) + 24);
  return result;
}

uint64_t re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::open(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(a1 + 208);
  if (*(v8 + 24) != *(a1 + 216))
  {
    re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::deinit(a1);
    re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::init(a1, v8);
  }

  v9.n128_f64[0] = re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::open(a1 + 24, a2, 0, 0xFFFFFFFFLL, a3, a4);
  v10 = *(*a1 + 48);

  return v10(a1, v9);
}

uint64_t re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::registerSerializeFuncs(re::TypeRegistry **a1)
{
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 28));
  (*(*a1 + 8))(a1);
  result = re::TypeRegistry::typeID(a1[26], (a1 + 1), &v12);
  if (v12)
  {
    v3 = a1[26];
    v8 = v12;
    re::TypeRegistry::attributesByAttributeType(v3, &v8, &v9);
    if (v10)
    {
      v4 = (v11 + 40);
      v5 = 48 * v10;
      do
      {
        v6 = *(v4 - 2);
        v7 = *v4;
        v4 += 6;
        v14 = v7;
        v13 = v6 | 0xFFFFFFFF00000000;
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace((a1 + 28), &v13, &v14);
        v5 -= 48;
      }

      while (v5);
    }

    result = v9;
    if (v9)
    {
      if (v11)
      {
        return (*(*v9 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(uint64_t a1, unint64_t *a2, void *a3)
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
    v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(a1, v7, v6);
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

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::move(a1, v9);
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

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(v4, *(v7 + v5 + 4) % *(v4 + 24));
        *(result + 4) = *(*(a2 + 16) + v5 + 4);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 24;
    }
  }

  return result;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(re::TypeRegistry **a1, re::TypeRegistry *a2)
{
  a1[34] = a2;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  (*(*a1 + 8))(a1);
  re::TypeRegistry::typeID(a1[34], (a1 + 1), &v13);
  if (v13)
  {
    v3 = a1[34];
    v9 = v13;
    re::TypeRegistry::attributesByAttributeType(v3, &v9, &v10);
    if (v11)
    {
      v4 = 48 * v11;
      v5 = (v12 + 40);
      do
      {
        v8 = *(v5 - 3);
        v6 = *v5;
        v5 += 6;
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v8, v6);
        v4 -= 48;
      }

      while (v4);
    }

    if (v10 && v12)
    {
      (*(*v10 + 40))();
    }
  }

  result = (*(*a1 + 4))(a1);
  *(a1 + 70) = *(a1[34] + 6);
  return result;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a2 + 8) | 0xFFFFFFFF00000000;
  if (!*(result + 288))
  {
    LODWORD(v6) = 0;
    goto LABEL_8;
  }

  v6 = v5 % *(result + 312);
  v7 = *(*(result + 296) + 4 * v6);
  if (v7 == 0x7FFFFFFF)
  {
LABEL_8:
    result = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(result + 288, v6, v5);
    *(result + 4) = v5;
    *(result + 16) = a3;
    ++*(v4 + 328);
    return result;
  }

  v8 = *(result + 304);
  while (*(v8 + 24 * v7 + 4) != v5)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  ++*(result + 328);
  *(v8 + 24 * v7 + 16) = a3;
  return result;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(uint64_t a1, uint64_t a2)
{
  *(a1 + 272) = a2;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear(a1 + 288);
  re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFuncs(a1);
  result = (*(*a1 + 32))(a1);
  *(a1 + 280) = *(*(a1 + 272) + 24);
  return result;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::open(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(a1 + 272);
  if (*(v8 + 24) != *(a1 + 280))
  {
    re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(a1);
    re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(a1, v8);
  }

  re::Encoder<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::SeekableInputStream>::open(a1 + 24, a2, 0, 0xFFFFFFFFLL, a3, a4);
  v9 = *(*a1 + 48);

  return v9(a1);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFuncs(re::TypeRegistry **a1)
{
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  (*(*a1 + 8))(a1);
  result = re::TypeRegistry::typeID(a1[34], (a1 + 1), &v12);
  if (v12)
  {
    v3 = a1[34];
    v8 = v12;
    re::TypeRegistry::attributesByAttributeType(v3, &v8, &v9);
    if (v10)
    {
      v4 = (v11 + 40);
      v5 = 48 * v10;
      do
      {
        v6 = *(v4 - 2);
        v7 = *v4;
        v4 += 6;
        v14 = v7;
        v13 = v6 | 0xFFFFFFFF00000000;
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace((a1 + 36), &v13, &v14);
        v5 -= 48;
      }

      while (v5);
    }

    result = v9;
    if (v9)
    {
      if (v11)
      {
        return (*(*v9 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(uint64_t a1, unint64_t *a2, void *a3)
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
    v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(a1, v7, v6);
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

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::move(a1, v9);
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

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(v4, *(v7 + v5 + 4) % *(v4 + 24));
        *(result + 4) = *(*(a2 + 16) + v5 + 4);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 24;
    }
  }

  return result;
}

uint64_t re::Encoder<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::SeekableInputStream>::open(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (!a5)
  {
  }

  *(a1 + 24) = a5;
  if (!a6)
  {
  }

  *(a1 + 32) = a6;
  v9[0] = 0;
  re::Optional<re::DetailedError>::operator=(a1 + 40, v9);
  if (v9[0] == 1 && *&v11[1] && (v11[3] & 1) != 0)
  {
    (*(**&v11[1] + 40))();
  }

  *(a1 + 96) = *(a1 + 24);
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity((a1 + 96), 0x40uLL);
  ++*(a1 + 120);
  v9[0] = 0;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::add((a1 + 96), v9);
  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::doOpen(a1);
}

uint64_t re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::doOpen(uint64_t a1)
{
  if (!re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance)
  {
  }

  *(a1 + 192) = *(a1 + 32);
  re::DynamicArray<char>::setCapacity((a1 + 192), 0);
  ++*(a1 + 216);
  v2 = (*(**(a1 + 24) + 32))(*(a1 + 24), 72, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v2 + 40) = 256;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 2;
  *(a1 + 184) = v2;
  v3 = (*(**(a1 + 24) + 32))(*(a1 + 24), 104, 8);
  v4 = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::GenericDocument(v3, 0, 1024, 0);
  *(a1 + 176) = v4;
  v10[0] = *a1;
  v10[1] = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  result = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::ParseStream<440u,rapidjson::UTF8<char>,re::internal::RapidJSONInputStream>(v4, v10);
  v6 = *(result + 88);
  if (v6)
  {
    v7 = v6 > 0x11 ? "Unknown error." : *(off_1E871ABB8 + (((v6 << 32) - 0x100000000) >> 29));
    re::DynamicString::format("Failed to deserialize JSON: %s (Offset %zu)", &v8, v7, *(result + 96));
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, &v8);
    result = v8;
    if (v8)
    {
      if (v9)
      {
        result = (*(*v8 + 40))();
      }
    }
  }

  if (v12 < v11)
  {
    return (*(*v10[0] + 24))(v10[0], (v11 - v12));
  }

  return result;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::GenericDocument(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = a4;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a3;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (!a2)
  {
    v5 = (*(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 32))(re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance, 24, 0);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    v6 = rapidjson::MemoryPoolAllocator<re::internal::RapidJSONAllocator>::MemoryPoolAllocator(v5, 0x10000, 0);
    *(a1 + 24) = v6;
    *(a1 + 32) = v6;
  }

  return a1;
}

void *rapidjson::MemoryPoolAllocator<re::internal::RapidJSONAllocator>::MemoryPoolAllocator(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  v5 = a3;
  if (!a3)
  {
    v5 = (*(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 32))(re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance, 1);
  }

  a1[1] = v5;
  v6 = (*(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 32))(re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance, 56, 0);
  v7 = 0;
  a1[2] = v6;
  if (!a3)
  {
    v7 = a1[1];
  }

  *(v6 + 32) = 0;
  *v6 = v6 + 32;
  *(v6 + 8) = v7;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 24) = 1;
  *(v6 + 16) = 1;
  return a1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::ParseStream<440u,rapidjson::UTF8<char>,re::internal::RapidJSONInputStream>(uint64_t a1, void *a2)
{
  v3 = (a1 + 40);
  v12 = *(a1 + 40);
  v13 = 0u;
  v14 = 0u;
  v15 = 256;
  v16 = 0;
  v17 = 0;
  v18 = 2;
  v4 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::Parse<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(&v12, a2, a1);
  *(a1 + 88) = v4;
  *(a1 + 96) = v5;
  if (!v4)
  {
    v6 = *(a1 + 64);
    v7 = (v6 - 24);
    *(a1 + 64) = v6 - 24;
    if (v6 - 24 != a1)
    {
      v8 = *(v6 - 2);
      *(v6 - 2) = 0;
      v9 = *v7;
      v10 = *(v6 - 8);
      *(a1 + 20) = *(v7 + 10);
      *(a1 + 16) = v10;
      *a1 = v9;
      *(a1 + 22) = v8;
    }
  }

  *(a1 + 64) = *(a1 + 56);
  rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::ShrinkToFit(v3);
  rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(&v12);
  return a1;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::Parse<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::SkipWhitespaceAndComments<440u,re::internal::RapidJSONInputStream>(a1, a2);
  if (!*(a1 + 48))
  {
    if (re::internal::RapidJSONInputStream::next<false>(a2))
    {
      rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseValue<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(a1, a2, a3);
    }

    else
    {
      v7 = a2[4];
      *(a1 + 48) = 1;
      *(a1 + 56) = v7;
    }
  }

  result = *(a1 + 48);
  *(a1 + 24) = *(a1 + 16);
  return result;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::SkipWhitespaceAndComments<440u,re::internal::RapidJSONInputStream>(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    rapidjson::SkipWhitespace<re::internal::RapidJSONInputStream>(i);
    result = re::internal::RapidJSONInputStream::next<false>(a2);
    if (result != 47)
    {
      break;
    }

    re::internal::RapidJSONInputStream::next<true>(a2);
    if (re::internal::RapidJSONInputStream::next<false>(a2) == 42)
    {
      re::internal::RapidJSONInputStream::next<true>(a2);
      while (1)
      {
        result = re::internal::RapidJSONInputStream::next<false>(a2);
        if (!result)
        {
          break;
        }

        v6 = re::internal::RapidJSONInputStream::next<false>(a2);
        re::internal::RapidJSONInputStream::next<true>(a2);
        if (v6 == 42 && re::internal::RapidJSONInputStream::next<false>(a2) == 47)
        {
          re::internal::RapidJSONInputStream::next<true>(a2);
          goto LABEL_9;
        }
      }

LABEL_15:
      v7 = a2[4];
      *(a1 + 48) = 17;
      *(a1 + 56) = v7;
      return result;
    }

    result = re::internal::RapidJSONInputStream::next<false>(a2);
    if (result != 47)
    {
      goto LABEL_15;
    }

    re::internal::RapidJSONInputStream::next<true>(a2);
      ;
    }

LABEL_9:
    ;
  }

  return result;
}

void rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseValue<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = re::internal::RapidJSONInputStream::next<false>(a2);
  if (v6 > 0x6D)
  {
    switch(v6)
    {
      case '{':

        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseObject<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(a1, a2, a3);
        break;
      case 't':

        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseTrue<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(a1, a2, a3);
        break;
      case 'n':

        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseNull<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(a1, a2, a3);
        break;
      default:
LABEL_20:

        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseNumber<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(a1, a2, a3);
        return;
    }
  }

  else
  {
    switch(v6)
    {
      case '""':

        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseString<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(a1, a2, a3);
        break;
      case '[':

        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseArray<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(a1, a2, a3);
        break;
      case 'f':

        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseFalse<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(a1, a2, a3);
        return;
      default:
        goto LABEL_20;
    }
  }
}

uint64_t rapidjson::SkipWhitespace<re::internal::RapidJSONInputStream>(void *a1)
{
  while (1)
  {
    result = re::internal::RapidJSONInputStream::next<false>(a1);
    if (result > 0x20 || ((1 << result) & 0x100002600) == 0)
    {
      break;
    }

    re::internal::RapidJSONInputStream::next<true>(a1);
  }

  return result;
}

uint64_t re::internal::RapidJSONInputStream::next<true>(void *a1)
{
  v3 = (a1 + 2);
  v2 = *(a1 + 4);
  v4 = a1 + 1;
  while (1)
  {
    v5 = a1[3];
    if (v5 < v2)
    {
      v6 = *(a1[1] + v5);
      v7 = a1[4] + 1;
      a1[3] = v5 + 1;
      a1[4] = v7;
      return v6;
    }

    if (!(*(**a1 + 16))(*a1, v4, v3))
    {
      break;
    }

    v2 = *v3;
    if (*v3 >= 1)
    {
      a1[3] = 1;
      return *a1[1];
    }
  }

  return 0;
}

uint64_t re::internal::RapidJSONInputStream::next<false>(void *a1)
{
  v3 = (a1 + 2);
  v2 = *(a1 + 4);
  v4 = a1 + 1;
  while (1)
  {
    v5 = a1[3];
    if (v5 < v2)
    {
      v6 = (*v4 + v5);
      return *v6;
    }

    if (!(*(**a1 + 16))(*a1, v4, v3))
    {
      break;
    }

    v2 = *v3;
    if (*v3 >= 1)
    {
      a1[3] = 0;
      v6 = a1[1];
      return *v6;
    }
  }

  return 0;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseNull<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(uint64_t a1, void *a2, uint64_t a3)
{
  re::internal::RapidJSONInputStream::next<true>(a2);
  result = re::internal::RapidJSONInputStream::next<false>(a2);
  if (result == 117 && (re::internal::RapidJSONInputStream::next<true>(a2), result = re::internal::RapidJSONInputStream::next<false>(a2), result == 108) && (re::internal::RapidJSONInputStream::next<true>(a2), result = re::internal::RapidJSONInputStream::next<false>(a2), result == 108))
  {
    result = re::internal::RapidJSONInputStream::next<true>(a2);
    v7 = *(a3 + 64);
    if ((*(a3 + 72) - v7) <= 23)
    {
      result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>>(a3 + 40, 1);
      v7 = *(a3 + 64);
    }

    *(a3 + 64) = v7 + 3;
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  else
  {
    v8 = a2[4];
    *(a1 + 48) = 3;
    *(a1 + 56) = v8;
  }

  return result;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseTrue<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(uint64_t a1, void *a2, uint64_t a3)
{
  re::internal::RapidJSONInputStream::next<true>(a2);
  result = re::internal::RapidJSONInputStream::next<false>(a2);
  if (result == 114 && (re::internal::RapidJSONInputStream::next<true>(a2), result = re::internal::RapidJSONInputStream::next<false>(a2), result == 117) && (re::internal::RapidJSONInputStream::next<true>(a2), result = re::internal::RapidJSONInputStream::next<false>(a2), result == 101))
  {
    result = re::internal::RapidJSONInputStream::next<true>(a2);
    v7 = *(a3 + 64);
    if (*(a3 + 72) - v7 <= 23)
    {
      result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>>(a3 + 40, 1);
      v7 = *(a3 + 64);
    }

    *(a3 + 64) = v7 + 24;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *v7 = 0;
    *(v7 + 22) = 10;
  }

  else
  {
    v8 = a2[4];
    *(a1 + 48) = 3;
    *(a1 + 56) = v8;
  }

  return result;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseFalse<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(uint64_t a1, void *a2, uint64_t a3)
{
  re::internal::RapidJSONInputStream::next<true>(a2);
  result = re::internal::RapidJSONInputStream::next<false>(a2);
  if (result == 97 && (re::internal::RapidJSONInputStream::next<true>(a2), result = re::internal::RapidJSONInputStream::next<false>(a2), result == 108) && (re::internal::RapidJSONInputStream::next<true>(a2), result = re::internal::RapidJSONInputStream::next<false>(a2), result == 115) && (re::internal::RapidJSONInputStream::next<true>(a2), result = re::internal::RapidJSONInputStream::next<false>(a2), result == 101))
  {
    result = re::internal::RapidJSONInputStream::next<true>(a2);
    v7 = *(a3 + 64);
    if (*(a3 + 72) - v7 <= 23)
    {
      result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>>(a3 + 40, 1);
      v7 = *(a3 + 64);
    }

    *(a3 + 64) = v7 + 24;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *v7 = 0;
    *(v7 + 22) = 9;
  }

  else
  {
    v8 = a2[4];
    *(a1 + 48) = 3;
    *(a1 + 56) = v8;
  }

  return result;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseString<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(uint64_t a1, void *a2, uint64_t a3)
{
  re::internal::RapidJSONInputStream::next<true>(a2);
  v24 = a1;
  v25 = 0;
  while (1)
  {
    while (1)
    {
      result = re::internal::RapidJSONInputStream::next<false>(a2);
      if (result != 92)
      {
        if (result == 34)
        {
          result = re::internal::RapidJSONInputStream::next<true>(a2);
          v16 = v24;
          v17 = *(v24 + 24);
          if ((*(v24 + 32) - v17) <= 0)
          {
            result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v24, 1);
            v17 = *(v16 + 24);
          }

          *(v16 + 24) = v17 + 1;
          *v17 = 0;
          v18 = v25;
          v19 = ++v25;
          if (*(a1 + 48))
          {
            return result;
          }

          v20 = (*(v24 + 24) - v19);
          *(v24 + 24) = v20;
          result = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::String(a3, v20, v18, 1);
          if (result)
          {
            return result;
          }

          v21 = a2[4];
          v22 = 16;
        }

        else
        {
          if (result > 0x1F)
          {
            v7 = re::internal::RapidJSONInputStream::next<true>(a2);
            v8 = v24;
            v9 = *(v24 + 24);
            if ((*(v24 + 32) - v9) <= 0)
            {
              rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v24, 1);
              v9 = *(v8 + 24);
            }

            *(v8 + 24) = v9 + 1;
            *v9 = v7;
            goto LABEL_8;
          }

          v21 = a2[4];
          if (result)
          {
            v22 = 12;
          }

          else
          {
            v22 = 11;
          }
        }

        *(a1 + 48) = v22;
        *(a1 + 56) = v21;
        return result;
      }

      v10 = a2[4];
      re::internal::RapidJSONInputStream::next<true>(a2);
      result = re::internal::RapidJSONInputStream::next<false>(a2);
      v11 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseStringToStream<440u,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONInputStream,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::StackStream<char>>(re::internal::RapidJSONInputStream &,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::StackStream<char> &)::escape[result];
      if (!v11)
      {
        break;
      }

      re::internal::RapidJSONInputStream::next<true>(a2);
      v12 = v24;
      v13 = *(v24 + 24);
      if ((*(v24 + 32) - v13) <= 0)
      {
        rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v24, 1);
        v13 = *(v12 + 24);
      }

      *(v12 + 24) = v13 + 1;
      *v13 = v11;
LABEL_8:
      ++v25;
    }

    if (result != 117)
    {
      v23 = 10;
      goto LABEL_34;
    }

    re::internal::RapidJSONInputStream::next<true>(a2);
    result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseHex4<re::internal::RapidJSONInputStream>(a1, a2, v10);
    if (*(a1 + 48))
    {
      return result;
    }

    v14 = result;
    if (result >> 11 == 27)
    {
      break;
    }

LABEL_16:
    rapidjson::UTF8<char>::Encode<rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::StackStream<char>>(&v24, v14);
  }

  if (result >> 10 <= 0x36)
  {
    v15 = result;
    result = re::internal::RapidJSONInputStream::next<false>(a2);
    if (result == 92)
    {
      re::internal::RapidJSONInputStream::next<true>(a2);
      result = re::internal::RapidJSONInputStream::next<false>(a2);
      if (result == 117)
      {
        re::internal::RapidJSONInputStream::next<true>(a2);
        result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseHex4<re::internal::RapidJSONInputStream>(a1, a2, v10);
        if (*(a1 + 48))
        {
          return result;
        }

        if ((result - 57344) > 0xFFFFFBFF)
        {
          v14 = result + (v15 << 10) - 56613888;
          goto LABEL_16;
        }
      }
    }
  }

  v23 = 9;
LABEL_34:
  *(a1 + 48) = v23;
  *(a1 + 56) = v10;
  return result;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseObject<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(uint64_t a1, void *a2, uint64_t a3)
{
  re::internal::RapidJSONInputStream::next<true>(a2);
  result = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::StartObject(a3);
  if (result)
  {
    result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::SkipWhitespaceAndComments<440u,re::internal::RapidJSONInputStream>(a1, a2);
    if (*(a1 + 48))
    {
      return result;
    }

    if (re::internal::RapidJSONInputStream::next<false>(a2) == 125)
    {
      result = re::internal::RapidJSONInputStream::next<true>(a2);
      v7 = *(a3 + 64);
      *(v7 - 2) = 3;
      *(v7 - 24) = 0;
      *(v7 - 16) = 0;
      return result;
    }

    v8 = 0;
    while (1)
    {
      result = re::internal::RapidJSONInputStream::next<false>(a2);
      if (result != 34)
      {
        v9 = a2[4];
        v10 = 4;
        goto LABEL_25;
      }

      result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseString<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(a1, a2, a3);
      if (*(a1 + 48))
      {
        return result;
      }

      result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::SkipWhitespaceAndComments<440u,re::internal::RapidJSONInputStream>(a1, a2);
      if (*(a1 + 48))
      {
        return result;
      }

      result = re::internal::RapidJSONInputStream::next<false>(a2);
      if (result != 58)
      {
        v9 = a2[4];
        v10 = 5;
        goto LABEL_25;
      }

      re::internal::RapidJSONInputStream::next<true>(a2);
      result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::SkipWhitespaceAndComments<440u,re::internal::RapidJSONInputStream>(a1, a2);
      if (*(a1 + 48))
      {
        return result;
      }

      result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseValue<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(a1, a2, a3);
      if (*(a1 + 48))
      {
        return result;
      }

      result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::SkipWhitespaceAndComments<440u,re::internal::RapidJSONInputStream>(a1, a2);
      if (*(a1 + 48))
      {
        return result;
      }

      result = re::internal::RapidJSONInputStream::next<false>(a2);
      if (result != 44)
      {
        break;
      }

      re::internal::RapidJSONInputStream::next<true>(a2);
      result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::SkipWhitespaceAndComments<440u,re::internal::RapidJSONInputStream>(a1, a2);
      if (*(a1 + 48))
      {
        return result;
      }

      ++v8;
      if (re::internal::RapidJSONInputStream::next<false>(a2) == 125)
      {
        result = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::EndObject(a3, v8);
        if ((result & 1) == 0)
        {
          goto LABEL_23;
        }

        return re::internal::RapidJSONInputStream::next<true>(a2);
      }
    }

    if (result != 125)
    {
      v9 = a2[4];
      v10 = 6;
      goto LABEL_25;
    }

    re::internal::RapidJSONInputStream::next<true>(a2);
    result = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::EndObject(a3, v8 + 1);
    if (result)
    {
      return result;
    }
  }

LABEL_23:
  v9 = a2[4];
  v10 = 16;
LABEL_25:
  *(a1 + 48) = v10;
  *(a1 + 56) = v9;
  return result;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseArray<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(uint64_t a1, void *a2, uint64_t a3)
{
  re::internal::RapidJSONInputStream::next<true>(a2);
  result = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::StartArray(a3);
  if (result)
  {
    result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::SkipWhitespaceAndComments<440u,re::internal::RapidJSONInputStream>(a1, a2);
    if (!*(a1 + 48))
    {
      if (re::internal::RapidJSONInputStream::next<false>(a2) == 93)
      {
        result = re::internal::RapidJSONInputStream::next<true>(a2);
        v7 = *(a3 + 64);
        *(v7 - 2) = 4;
        *(v7 - 24) = 0;
        *(v7 - 16) = 0;
      }

      else
      {
        v8 = 0;
        while (1)
        {
          result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseValue<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(a1, a2, a3);
          if (*(a1 + 48))
          {
            break;
          }

          result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::SkipWhitespaceAndComments<440u,re::internal::RapidJSONInputStream>(a1, a2);
          if (*(a1 + 48))
          {
            break;
          }

          if (re::internal::RapidJSONInputStream::next<false>(a2) != 44)
          {
            result = re::internal::RapidJSONInputStream::next<false>(a2);
            if (result != 93)
            {
              v9 = a2[4];
              v10 = 7;
              goto LABEL_19;
            }

            re::internal::RapidJSONInputStream::next<true>(a2);
            result = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::EndArray(a3, v8 + 1);
            if (result)
            {
              return result;
            }

            goto LABEL_18;
          }

          re::internal::RapidJSONInputStream::next<true>(a2);
          result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::SkipWhitespaceAndComments<440u,re::internal::RapidJSONInputStream>(a1, a2);
          if (*(a1 + 48))
          {
            return result;
          }

          ++v8;
          if (re::internal::RapidJSONInputStream::next<false>(a2) == 93)
          {
            result = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::EndArray(a3, v8);
            if ((result & 1) == 0)
            {
              goto LABEL_18;
            }

            return re::internal::RapidJSONInputStream::next<true>(a2);
          }
        }
      }
    }
  }

  else
  {
LABEL_18:
    v9 = a2[4];
    v10 = 16;
LABEL_19:
    *(a1 + 48) = v10;
    *(a1 + 56) = v9;
  }

  return result;
}

void rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseNumber<440u,re::internal::RapidJSONInputStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>>(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v61 = a2;
  v62 = a1;
  v63 = 0;
  v6 = a2 + 4;
  v7 = a2[4];
  v8 = re::internal::RapidJSONInputStream::next<false>(a2);
  if (v8 == 45)
  {
    re::internal::RapidJSONInputStream::next<true>(v4);
  }

  v9 = re::internal::RapidJSONInputStream::next<false>(v4);
  v10 = re::internal::RapidJSONInputStream::next<false>(v4);
  v11 = v10;
  v58 = v7;
  v59 = a1;
  v57 = a3;
  v60 = v8;
  if (v9 == 48)
  {
    v54 = *(a1 + 24);
    if ((*(a1 + 32) - v54) <= 0)
    {
      rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(a1, 1);
      v54 = *(a1 + 24);
    }

    *(a1 + 24) = v54 + 1;
    *v54 = v11;
    v14 = ++v63;
    v4 = v61;
    re::internal::RapidJSONInputStream::next<true>(v61);
    v23 = 0;
    v24 = 0;
    v18 = 0;
    v25 = 0;
    v15 = 0;
    v26 = 0;
    v17 = 0.0;
  }

  else
  {
    if (v10 >= 49 && re::internal::RapidJSONInputStream::next<false>(v4) <= 57)
    {
      v12 = re::internal::RapidJSONInputStream::next<false>(v4);
      v13 = *(a1 + 24);
      if ((*(a1 + 32) - v13) <= 0)
      {
        rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(a1, 1);
        v13 = *(a1 + 24);
      }

      *(a1 + 24) = v13 + 1;
      *v13 = v12;
      v14 = ++v63;
      v4 = v61;
      v15 = re::internal::RapidJSONInputStream::next<true>(v61) - 48;
      v16 = re::internal::RapidJSONInputStream::next<false>(v61);
      v17 = 0.0;
      if (v8 == 45)
      {
        if (v16 >= 48)
        {
          v18 = 0;
          while (re::internal::RapidJSONInputStream::next<false>(v4) <= 57)
          {
            if (v15 > 0xCCCCCCB)
            {
              if (v15 != 214748364)
              {
                goto LABEL_35;
              }

              if (re::internal::RapidJSONInputStream::next<false>(v4) > 56)
              {
                v15 = 214748364;
                goto LABEL_35;
              }
            }

            v19 = re::internal::RapidJSONInputStream::next<false>(v4);
            v20 = *(v62 + 24);
            if ((*(v62 + 32) - v20) <= 0)
            {
              rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v62, 1);
              v20 = *(v62 + 24);
            }

            *(v62 + 24) = v20 + 1;
            *v20 = v19;
            v14 = ++v63;
            v4 = v61;
            v15 = 10 * v15 + re::internal::RapidJSONInputStream::next<true>(v61) - 48;
            ++v18;
            if (re::internal::RapidJSONInputStream::next<false>(v61) <= 47)
            {
              break;
            }
          }

LABEL_31:
          v23 = 0;
          v24 = 0;
LABEL_32:
          v25 = 0;
          v26 = 0;
          goto LABEL_67;
        }
      }

      else if (v16 >= 48)
      {
        v18 = 0;
        while (re::internal::RapidJSONInputStream::next<false>(v4) <= 57)
        {
          if (v15 > 0x19999998)
          {
            if (v15 != 429496729)
            {
              goto LABEL_35;
            }

            if (re::internal::RapidJSONInputStream::next<false>(v4) > 53)
            {
              v15 = 429496729;
LABEL_35:
              v23 = v15;
              v27 = re::internal::RapidJSONInputStream::next<false>(v4);
              v17 = 0.0;
              if (v8 == 45)
              {
                if (v27 >= 48)
                {
                  while (re::internal::RapidJSONInputStream::next<false>(v4) <= 57)
                  {
                    if (v23 > 0xCCCCCCCCCCCCCCBLL)
                    {
                      if (v23 != 0xCCCCCCCCCCCCCCCLL)
                      {
                        goto LABEL_59;
                      }

                      if (re::internal::RapidJSONInputStream::next<false>(v4) > 56)
                      {
                        v23 = 0xCCCCCCCCCCCCCCCLL;
                        goto LABEL_59;
                      }
                    }

                    v28 = re::internal::RapidJSONInputStream::next<false>(v4);
                    v29 = *(v62 + 24);
                    if ((*(v62 + 32) - v29) <= 0)
                    {
                      rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v62, 1);
                      v29 = *(v62 + 24);
                    }

                    *(v62 + 24) = v29 + 1;
                    *v29 = v28;
                    v14 = ++v63;
                    v4 = v61;
                    v23 = re::internal::RapidJSONInputStream::next<true>(v61) - 48 + 10 * v23;
                    ++v18;
                    if (re::internal::RapidJSONInputStream::next<false>(v61) <= 47)
                    {
                      break;
                    }
                  }
                }
              }

              else if (v27 >= 48)
              {
                while (re::internal::RapidJSONInputStream::next<false>(v4) <= 57)
                {
                  if (v23 > 0x1999999999999998)
                  {
                    if (v23 != 0x1999999999999999)
                    {
                      goto LABEL_59;
                    }

                    if (re::internal::RapidJSONInputStream::next<false>(v4) > 53)
                    {
                      v23 = 0x1999999999999999;
LABEL_59:
                      v17 = v23;
                      if (re::internal::RapidJSONInputStream::next<false>(v4) >= 48 && re::internal::RapidJSONInputStream::next<false>(v4) <= 57)
                      {
                        do
                        {
                          v32 = re::internal::RapidJSONInputStream::next<false>(v4);
                          v33 = *(v62 + 24);
                          if ((*(v62 + 32) - v33) <= 0)
                          {
                            rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v62, 1);
                            v33 = *(v62 + 24);
                          }

                          *(v62 + 24) = v33 + 1;
                          *v33 = v32;
                          v14 = ++v63;
                          v4 = v61;
                          v17 = (re::internal::RapidJSONInputStream::next<true>(v61) - 48) + v17 * 10.0;
                        }

                        while (re::internal::RapidJSONInputStream::next<false>(v61) > 47 && re::internal::RapidJSONInputStream::next<false>(v61) <= 57);
                      }

                      v26 = 0;
                      v24 = 1;
                      goto LABEL_66;
                    }
                  }

                  v30 = re::internal::RapidJSONInputStream::next<false>(v4);
                  v31 = *(v62 + 24);
                  if ((*(v62 + 32) - v31) <= 0)
                  {
                    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v62, 1);
                    v31 = *(v62 + 24);
                  }

                  *(v62 + 24) = v31 + 1;
                  *v31 = v30;
                  v14 = ++v63;
                  v4 = v61;
                  v23 = re::internal::RapidJSONInputStream::next<true>(v61) - 48 + 10 * v23;
                  ++v18;
                  if (re::internal::RapidJSONInputStream::next<false>(v61) <= 47)
                  {
                    break;
                  }
                }
              }

              v24 = 0;
              v26 = 0;
LABEL_66:
              v25 = 1;
              goto LABEL_67;
            }
          }

          v21 = re::internal::RapidJSONInputStream::next<false>(v4);
          v22 = *(v62 + 24);
          if ((*(v62 + 32) - v22) <= 0)
          {
            rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v62, 1);
            v22 = *(v62 + 24);
          }

          *(v62 + 24) = v22 + 1;
          *v22 = v21;
          v14 = ++v63;
          v4 = v61;
          v15 = 10 * v15 + re::internal::RapidJSONInputStream::next<true>(v61) - 48;
          ++v18;
          if (re::internal::RapidJSONInputStream::next<false>(v61) <= 47)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_31;
      }

      v23 = 0;
      v24 = 0;
      v18 = 0;
      goto LABEL_32;
    }

    if (re::internal::RapidJSONInputStream::next<false>(v4) != 73 && re::internal::RapidJSONInputStream::next<false>(v4) != 78)
    {
      goto LABEL_149;
    }

    if (re::internal::RapidJSONInputStream::next<false>(v4) == 78)
    {
      re::internal::RapidJSONInputStream::next<true>(v4);
      if (re::internal::RapidJSONInputStream::next<false>(v4) != 97)
      {
        goto LABEL_149;
      }

      re::internal::RapidJSONInputStream::next<true>(v4);
      if (re::internal::RapidJSONInputStream::next<false>(v4) != 78)
      {
        goto LABEL_149;
      }

      re::internal::RapidJSONInputStream::next<true>(v4);
      v14 = 0;
      v23 = 0;
      v24 = 0;
      v18 = 0;
      v25 = 0;
      v15 = 0;
      v26 = 1;
      v17 = NAN;
    }

    else
    {
      if (re::internal::RapidJSONInputStream::next<false>(v4) != 73)
      {
        goto LABEL_149;
      }

      re::internal::RapidJSONInputStream::next<true>(v4);
      if (re::internal::RapidJSONInputStream::next<false>(v4) != 110)
      {
        goto LABEL_149;
      }

      re::internal::RapidJSONInputStream::next<true>(v4);
      if (re::internal::RapidJSONInputStream::next<false>(v4) != 102)
      {
        goto LABEL_149;
      }

      re::internal::RapidJSONInputStream::next<true>(v4);
      if (v8 == 45)
      {
        v17 = -INFINITY;
      }

      else
      {
        v17 = INFINITY;
      }

      if (re::internal::RapidJSONInputStream::next<false>(v4) == 105)
      {
        if (re::internal::RapidJSONInputStream::next<false>(v4) != 105)
        {
          goto LABEL_149;
        }

        re::internal::RapidJSONInputStream::next<true>(v4);
        if (re::internal::RapidJSONInputStream::next<false>(v4) != 110)
        {
          goto LABEL_149;
        }

        re::internal::RapidJSONInputStream::next<true>(v4);
        if (re::internal::RapidJSONInputStream::next<false>(v4) != 105)
        {
          goto LABEL_149;
        }

        re::internal::RapidJSONInputStream::next<true>(v4);
        if (re::internal::RapidJSONInputStream::next<false>(v4) != 116)
        {
          goto LABEL_149;
        }

        re::internal::RapidJSONInputStream::next<true>(v4);
        if (re::internal::RapidJSONInputStream::next<false>(v4) != 121)
        {
          goto LABEL_149;
        }

        re::internal::RapidJSONInputStream::next<true>(v4);
      }

      v14 = 0;
      v23 = 0;
      v24 = 0;
      v18 = 0;
      v25 = 0;
      v15 = 0;
      v26 = 1;
    }
  }

LABEL_67:
  if (re::internal::RapidJSONInputStream::next<false>(v4) != 46)
  {
    v34 = 0;
    v35 = v14;
    goto LABEL_104;
  }

  re::internal::RapidJSONInputStream::next<true>(v4);
  if (v26)
  {
LABEL_148:
    v6 = v4 + 4;
LABEL_149:
    v50 = 3;
    goto LABEL_152;
  }

  if (re::internal::RapidJSONInputStream::next<false>(v4) < 48 || re::internal::RapidJSONInputStream::next<false>(v4) >= 58)
  {
    v6 = v4 + 4;
    v50 = 14;
    goto LABEL_152;
  }

  if (v24)
  {
    v34 = 0;
    v35 = v14;
    goto LABEL_91;
  }

  if (!v25)
  {
    v23 = v15;
  }

  if (re::internal::RapidJSONInputStream::next<false>(v4) < 48)
  {
    v34 = 0;
  }

  else
  {
    v34 = 0;
    if (re::internal::RapidJSONInputStream::next<false>(v4) <= 57 && !(v23 >> 53))
    {
      v36 = -1;
      do
      {
        v34 = v36;
        v37 = re::internal::RapidJSONInputStream::next<false>(v4);
        v38 = *(v62 + 24);
        if ((*(v62 + 32) - v38) <= 0)
        {
          rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v62, 1);
          v38 = *(v62 + 24);
        }

        *(v62 + 24) = v38 + 1;
        *v38 = v37;
        v35 = ++v63;
        v4 = v61;
        v23 = re::internal::RapidJSONInputStream::next<true>(v61) - 48 + 10 * v23;
        if (v23)
        {
          ++v18;
        }

        if (re::internal::RapidJSONInputStream::next<false>(v61) <= 47)
        {
          break;
        }

        if (re::internal::RapidJSONInputStream::next<false>(v61) > 57)
        {
          break;
        }

        v36 = v34 - 1;
      }

      while (!(v23 >> 53));
      goto LABEL_90;
    }
  }

  v35 = v14;
LABEL_90:
  v17 = v23;
LABEL_91:
  if (re::internal::RapidJSONInputStream::next<false>(v4) >= 48 && re::internal::RapidJSONInputStream::next<false>(v4) <= 57)
  {
    do
    {
      v39 = re::internal::RapidJSONInputStream::next<false>(v4);
      v40 = *(v62 + 24);
      v41 = *(v62 + 32) - v40;
      if (v18 > 16)
      {
        if (v41 <= 0)
        {
          rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v62, 1);
          v40 = *(v62 + 24);
        }

        *(v62 + 24) = v40 + 1;
        *v40 = v39;
        v35 = ++v63;
        v4 = v61;
        re::internal::RapidJSONInputStream::next<true>(v61);
      }

      else
      {
        if (v41 <= 0)
        {
          rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v62, 1);
          v40 = *(v62 + 24);
        }

        *(v62 + 24) = v40 + 1;
        *v40 = v39;
        v35 = ++v63;
        v4 = v61;
        v17 = (re::internal::RapidJSONInputStream::next<true>(v61) - 48) + v17 * 10.0;
        --v34;
        if (v17 > 0.0)
        {
          ++v18;
        }
      }
    }

    while (re::internal::RapidJSONInputStream::next<false>(v4) > 47 && re::internal::RapidJSONInputStream::next<false>(v4) <= 57);
  }

  v24 = 1;
LABEL_104:
  if (re::internal::RapidJSONInputStream::next<false>(v4) == 101 || re::internal::RapidJSONInputStream::next<false>(v4) == 69)
  {
    re::internal::RapidJSONInputStream::next<true>(v4);
    if (!v26)
    {
      v42 = v15;
      if (v25)
      {
        v42 = v23;
      }

      if (!v24)
      {
        v17 = v42;
      }

      v43 = re::internal::RapidJSONInputStream::next<false>(v4);
      v44 = v43 != 43;
      if (v43 == 43 || (v56 = re::internal::RapidJSONInputStream::next<false>(v4), v56 == 45))
      {
        re::internal::RapidJSONInputStream::next<true>(v4);
      }

      else
      {
        v44 = 0;
      }

      v45 = v60;
      if (re::internal::RapidJSONInputStream::next<false>(v4) >= 48 && re::internal::RapidJSONInputStream::next<false>(v4) <= 57)
      {
        v46 = re::internal::RapidJSONInputStream::next<true>(v4) - 48;
        if (v44)
        {
          if (re::internal::RapidJSONInputStream::next<false>(v4) >= 48)
          {
            do
            {
              if (re::internal::RapidJSONInputStream::next<false>(v4) > 57)
              {
                break;
              }

              v46 = re::internal::RapidJSONInputStream::next<true>(v4) + 10 * v46 - 48;
              if (v46 > (v34 + 2147483639) / 10 && re::internal::RapidJSONInputStream::next<false>(v4) >= 48)
              {
                do
                {
                  if (re::internal::RapidJSONInputStream::next<false>(v4) > 57)
                  {
                    break;
                  }

                  re::internal::RapidJSONInputStream::next<true>(v4);
                }

                while (re::internal::RapidJSONInputStream::next<false>(v4) > 47);
              }
            }

            while (re::internal::RapidJSONInputStream::next<false>(v4) > 47);
          }
        }

        else
        {
          while (re::internal::RapidJSONInputStream::next<false>(v4) >= 48 && re::internal::RapidJSONInputStream::next<false>(v4) <= 57)
          {
            v46 = re::internal::RapidJSONInputStream::next<true>(v4) + 10 * v46 - 48;
            if (v46 > 308 - v34)
            {
              goto LABEL_134;
            }
          }
        }

        if (v44)
        {
          v47 = -v46;
        }

        else
        {
          v47 = v46;
        }

        v48 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::NumberStream<re::internal::RapidJSONInputStream,char,true,false>::Pop(&v61);
        goto LABEL_133;
      }

      v6 = v4 + 4;
      v50 = 15;
LABEL_152:
      v52 = *v6;
      v51 = v59;
      goto LABEL_136;
    }

    goto LABEL_148;
  }

  v55 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::NumberStream<re::internal::RapidJSONInputStream,char,true,false>::Pop(&v61);
  if (v24)
  {
    v48 = v55;
    v47 = 0;
    v45 = v60;
LABEL_133:
    v49 = rapidjson::internal::StrtodFullPrecision<char>(v47 + v34, v48, v35, v14, v47, v17);
    if (v49 > 1.79769313e308)
    {
LABEL_134:
      v50 = 13;
LABEL_135:
      v52 = v58;
      v51 = v59;
LABEL_136:
      *(v51 + 48) = v50;
      *(v51 + 56) = v52;
      return;
    }

    if (v45 == 45)
    {
      v49 = -v49;
    }

    v53 = v57;
LABEL_140:
    if (rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::Double(v53, v49))
    {
      return;
    }

LABEL_181:
    v50 = 16;
    goto LABEL_135;
  }

  if (v26)
  {
    v53 = v57;
    v49 = v17;
    goto LABEL_140;
  }

  if (v25)
  {
    if (v60 == 45)
    {
      if ((rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::Int64(v57, -v23) & 1) == 0)
      {
        goto LABEL_181;
      }
    }

    else if ((rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::Uint64(v57, v23) & 1) == 0)
    {
      goto LABEL_181;
    }
  }

  else if (v60 == 45)
  {
    if ((rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::Int(v57, -v15) & 1) == 0)
    {
      goto LABEL_181;
    }
  }

  else if ((rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::Uint(v57, v15) & 1) == 0)
  {
    goto LABEL_181;
  }
}

char *rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 32) - v4;
    v6 = v5 + ((v5 + 1) >> 1);
    v7 = *a1;
  }

  else
  {
    v7 = *a1;
    if (*a1)
    {
      v4 = 0;
    }

    else
    {
      v7 = (*(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 32))(re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance, 1, 0);
      *a1 = v7;
      *(a1 + 8) = v7;
      v4 = *(a1 + 16);
    }

    v6 = *(a1 + 40);
    v5 = *(a1 + 32) - v4;
  }

  v8 = *(a1 + 24) - v4;
  if (v6 <= v8 + 24 * a2)
  {
    v9 = v8 + 24 * a2;
  }

  else
  {
    v9 = v6;
  }

  result = re::internal::RapidJSONAllocator::Realloc(v7, v4, v5, v9);
  *(a1 + 16) = result;
  *(a1 + 24) = &result[v8];
  *(a1 + 32) = &result[v9];
  return result;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::String(uint64_t a1, void *a2, int a3, int a4)
{
  v8 = a1 + 64;
  v7 = *(a1 + 64);
  v9 = *(v8 + 8) - v7;
  if (a4)
  {
    if (v9 <= 23)
    {
      rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>>(a1 + 40, 1);
      v7 = *(a1 + 64);
    }

    *(a1 + 64) = v7 + 24;
    v10 = *(a1 + 24);
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    v11 = &rapidjson::GenericStringRef<char>::emptyString;
    if (a2)
    {
      v11 = a2;
    }

    v14 = v11;
    v15 = a3;
    rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::SetStringRaw(v7, &v14, v10);
  }

  else
  {
    if (v9 <= 23)
    {
      rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>>(a1 + 40, 1);
      v7 = *(a1 + 64);
    }

    *(a1 + 64) = v7 + 24;
    *(v7 + 16) = 0;
    v12 = &rapidjson::GenericStringRef<char>::emptyString;
    *(v7 + 22) = 1029;
    if (a2)
    {
      v12 = a2;
    }

    *v7 = 0;
    *(v7 + 8) = v12;
    *v7 = a3;
  }

  return 1;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::ParseHex4<re::internal::RapidJSONInputStream>(uint64_t a1, void *a2, uint64_t a3)
{
  LODWORD(v6) = 0;
  v7 = 4;
  while (1)
  {
    v8 = re::internal::RapidJSONInputStream::next<false>(a2);
    if ((v8 - 48) >= 0xA)
    {
      break;
    }

    v9 = -48;
LABEL_8:
    v6 = (v8 + 16 * v6 + v9);
    re::internal::RapidJSONInputStream::next<true>(a2);
    if (!--v7)
    {
      return v6;
    }
  }

  if ((v8 - 65) < 6)
  {
    v9 = -55;
    goto LABEL_8;
  }

  if ((v8 - 97) < 6)
  {
    v9 = -87;
    goto LABEL_8;
  }

  v6 = 0;
  *(a1 + 48) = 8;
  *(a1 + 56) = a3;
  return v6;
}

uint64_t *rapidjson::UTF8<char>::Encode<rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::StackStream<char>>(uint64_t *result, unsigned int a2)
{
  v3 = result;
  if (a2 <= 0x7F)
  {
    v4 = *result;
    v5 = *(*result + 24);
    if ((*(*result + 32) - v5) <= 0)
    {
      result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*result, 1);
      v5 = *(v4 + 24);
    }

    *(v4 + 24) = v5 + 1;
    *v5 = a2;
    v6 = v3 + 1;
    goto LABEL_27;
  }

  if (a2 <= 0x7FF)
  {
    v7 = (a2 >> 6) | 0xFFFFFFC0;
    v8 = *result;
    v9 = *(*result + 24);
    if ((*(*result + 32) - v9) <= 0)
    {
      result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*result, 1);
      v9 = *(v8 + 24);
    }

    *(v8 + 24) = v9 + 1;
    *v9 = v7;
    v6 = v3 + 1;
    ++*(v3 + 2);
LABEL_24:
    v27 = *v3;
    v28 = *(v27 + 24);
    if ((*(v27 + 32) - v28) <= 0)
    {
      result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v27, 1);
      v28 = *(v27 + 24);
    }

    *(v27 + 24) = v28 + 1;
    *v28 = a2 & 0x3F | 0x80;
    goto LABEL_27;
  }

  v10 = *result;
  v11 = *(*result + 24);
  v12 = *(*result + 32) - v11;
  if (HIWORD(a2))
  {
    v20 = (a2 >> 18) | 0xFFFFFFF0;
    if (v12 <= 0)
    {
      result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*result, 1);
      v11 = *(v10 + 24);
    }

    *(v10 + 24) = v11 + 1;
    *v11 = v20;
    v6 = v3 + 1;
    ++*(v3 + 2);
    v21 = (a2 >> 12) & 0x3F | 0xFFFFFF80;
    v22 = *v3;
    v23 = *(*v3 + 24);
    if ((*(*v3 + 32) - v23) <= 0)
    {
      result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*v3, 1);
      v21 = (a2 >> 12) & 0x3F | 0xFFFFFF80;
      v23 = *(v22 + 24);
    }

    *(v22 + 24) = v23 + 1;
    *v23 = v21;
    ++*(v3 + 2);
    v24 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
    v25 = *v3;
    v26 = *(*v3 + 24);
    if ((*(*v3 + 32) - v26) <= 0)
    {
      result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*v3, 1);
      v24 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
      v26 = *(v25 + 24);
    }

    *(v25 + 24) = v26 + 1;
    *v26 = v24;
    ++*(v3 + 2);
    goto LABEL_24;
  }

  v13 = (a2 >> 12) | 0xFFFFFFE0;
  if (v12 <= 0)
  {
    result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*result, 1);
    v11 = *(v10 + 24);
  }

  *(v10 + 24) = v11 + 1;
  *v11 = v13;
  v6 = v3 + 1;
  ++*(v3 + 2);
  v14 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
  v15 = *v3;
  v16 = *(*v3 + 24);
  if ((*(*v3 + 32) - v16) <= 0)
  {
    result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*v3, 1);
    v14 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
    v16 = *(v15 + 24);
  }

  *(v15 + 24) = v16 + 1;
  *v16 = v14;
  ++*(v3 + 2);
  v17 = a2 & 0x3F | 0x80;
  v18 = *v3;
  v19 = *(v18 + 24);
  if ((*(v18 + 32) - v19) <= 0)
  {
    result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v18, 1);
    v17 = a2 & 0x3F | 0x80;
    v19 = *(v18 + 24);
  }

  *(v18 + 24) = v19 + 1;
  *v19 = v17;
LABEL_27:
  ++*v6;
  return result;
}

void *rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::SetStringRaw(_WORD *__dst, uint64_t a2, uint64_t a3)
{
  v4 = __dst;
  if (*(a2 + 8) > 0x15u)
  {
    __dst[11] = 3077;
    v5 = *(a2 + 8);
    *__dst = v5;
    v6 = rapidjson::MemoryPoolAllocator<re::internal::RapidJSONAllocator>::Malloc(a3, (v5 + 1));
    v4[1] = v6;
    v4 = v6;
  }

  else
  {
    __dst[11] = 7173;
    *(__dst + 21) = 21 - *(a2 + 8);
  }

  result = memcpy(v4, *a2, *(a2 + 8));
  *(v4 + *(a2 + 8)) = 0;
  return result;
}

uint64_t rapidjson::MemoryPoolAllocator<re::internal::RapidJSONAllocator>::Malloc(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = **(a1 + 16);
  v5 = v4[1];
  v6 = v5 + v3;
  if (v5 + v3 <= *v4)
  {
LABEL_3:
    result = v4 + v5 + 24;
    v4[1] = v6;
    return result;
  }

  if (*a1 <= v3)
  {
    v8 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = *a1;
  }

  if (rapidjson::MemoryPoolAllocator<re::internal::RapidJSONAllocator>::AddChunk(a1, v8))
  {
    v4 = **(a1 + 16);
    v5 = v4[1];
    v6 = v5 + v3;
    goto LABEL_3;
  }

  return 0;
}

BOOL rapidjson::MemoryPoolAllocator<re::internal::RapidJSONAllocator>::AddChunk(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    v4 = (*(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 32))(re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance, 1, 0);
    *(a1 + 8) = v4;
    *(*(a1 + 16) + 8) = v4;
  }

  v5 = (*(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 32))(re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance, a2 + 24, 0);
  if (v5)
  {
    *v5 = a2;
    v5[1] = 0;
    v6 = *(a1 + 16);
    v5[2] = *v6;
    *v6 = v5;
  }

  return v5 != 0;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::StartObject(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(a1 + 72) - v2 <= 23)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>>(a1 + 40, 1);
    v2 = *(a1 + 64);
  }

  *(a1 + 64) = v2 + 24;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 22) = 3;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::EndObject(uint64_t a1, unsigned int a2)
{
  v3 = (*(a1 + 64) - 48 * a2);
  *(a1 + 64) = v3;
  v4 = *(a1 + 24);
  *(v3 - 1) = 3;
  if (a2)
  {
    v5 = 48 * a2;
    v6 = rapidjson::MemoryPoolAllocator<re::internal::RapidJSONAllocator>::Malloc(v4, v5);
    *(v3 - 2) = v6;
    memcpy(v6, v3, v5);
  }

  else
  {
    *(v3 - 2) = 0;
  }

  *(v3 - 6) = a2;
  *(v3 - 5) = a2;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::StartArray(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(a1 + 72) - v2 <= 23)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>>(a1 + 40, 1);
    v2 = *(a1 + 64);
  }

  *(a1 + 64) = v2 + 24;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 22) = 4;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::EndArray(uint64_t a1, unsigned int a2)
{
  v3 = (*(a1 + 64) - 24 * a2);
  *(a1 + 64) = v3;
  v4 = *(a1 + 24);
  *(v3 - 1) = 4;
  if (a2)
  {
    v5 = 24 * a2;
    v6 = rapidjson::MemoryPoolAllocator<re::internal::RapidJSONAllocator>::Malloc(v4, v5);
    *(v3 - 2) = v6;
    memcpy(v6, v3, v5);
  }

  else
  {
    *(v3 - 2) = 0;
  }

  *(v3 - 6) = a2;
  *(v3 - 5) = a2;
  return 1;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::NumberStream<re::internal::RapidJSONInputStream,char,true,false>::Pop(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 24);
  if ((*(v2 + 32) - v3) <= 0)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*(a1 + 8), 1);
    v3 = *(v2 + 24);
  }

  *(v2 + 24) = v3 + 1;
  *v3 = 0;
  v4 = (*(a1 + 16) + 1);
  *(a1 + 16) = v4;
  v5 = *(a1 + 8);
  result = *(v5 + 24) - v4;
  *(v5 + 24) = result;
  return result;
}

double rapidjson::internal::StrtodFullPrecision<char>(unsigned int a1, char *a2, int a3, int a4, int a5, double a6)
{
  v6 = a2;
  v22 = 0.0;
  if (a1 - 23 >= 0xF)
  {
    if (a6 <= 9.00719925e15 && a1 + 22 < 0x2D)
    {
      if ((a1 & 0x80000000) != 0)
      {
        return a6 / rapidjson::internal::Pow10(int)::e[-a1];
      }

      return a6 * rapidjson::internal::Pow10(int)::e[a1];
    }
  }

  else
  {
    a6 = rapidjson::internal::Pow10(int)::e[a1 - 22] * a6;
    if (a6 <= 9.00719925e15)
    {
      a1 = 22;
      return a6 * rapidjson::internal::Pow10(int)::e[a1];
    }
  }

  v8 = a4 - a3 + a5;
  if (a3 < 1)
  {
    if (!a3)
    {
      return 0.0;
    }
  }

  else
  {
    v9 = a3;
    v10 = a3 + 1;
    for (i = a2; *i == 48; ++i)
    {
      --v9;
      if (--v10 <= 1)
      {
        return 0.0;
      }
    }

    v12 = &a2[a3 - 1];
    while (1)
    {
      v13 = *v12--;
      if (v13 != 48)
      {
        break;
      }

      --v9;
      ++v8;
      if ((v9 + 1) <= 1)
      {
        return 0.0;
      }
    }

    v6 = i;
    a3 = v9;
  }

  v14 = a3 - 768;
  if (a3 >= 768)
  {
    v15 = 768;
  }

  else
  {
    v15 = a3;
  }

  if (a3 <= 768)
  {
    v14 = 0;
  }

  v16 = (v14 + v8);
  v7 = 0.0;
  if (v16 + v15 >= -323)
  {
    if (v16 + v15 <= 309)
    {
      v17 = rapidjson::internal::StrtodDiyFp<char>(v6, v15, v16, &v22);
      v7 = v22;
      if (!v17)
      {
        rapidjson::internal::BigInteger::BigInteger<char>(v23, v6, v15);
        v18 = rapidjson::internal::CheckWithinHalfULP(v23, v7, v16);
        *&v19 = *&v7 + 1;
        if (LOBYTE(v7))
        {
          *&v20 = *&v7 + 1;
        }

        else
        {
          v20 = v7;
        }

        if (!v18)
        {
          v19 = v20;
        }

        if (v18 >= 0)
        {
          return v19;
        }
      }
    }

    else
    {
      return INFINITY;
    }
  }

  return v7;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::Double(uint64_t a1, double a2)
{
  v4 = *(a1 + 64);
  if (*(a1 + 72) - v4 <= 23)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>>(a1 + 40, 1);
    v4 = *(a1 + 64);
  }

  *(a1 + 64) = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  *(v4 + 22) = 534;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::Int64(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 64);
  if (*(a1 + 72) - v4 <= 23)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>>(a1 + 40, 1);
    v4 = *(a1 + 64);
  }

  *(a1 + 64) = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  *(v4 + 22) = 150;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(a2))
    {
      v5 = 406;
    }

    else
    {
      v5 = 470;
    }

    if (!(a2 >> 31))
    {
      v5 = 502;
    }

    goto LABEL_12;
  }

  if (a2 >= 0xFFFFFFFF80000000)
  {
    v5 = 182;
LABEL_12:
    *(v4 + 22) = v5;
  }

  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::Uint64(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  if (*(a1 + 72) - v4 <= 23)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>>(a1 + 40, 1);
    v4 = *(a1 + 64);
  }

  *(a1 + 64) = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  if (a2 < 0)
  {
    v5 = 278;
  }

  else
  {
    v5 = 406;
  }

  if (a2 >> 31)
  {
    v6 = 470;
  }

  else
  {
    v6 = 502;
  }

  if (!HIDWORD(a2))
  {
    v5 = v6;
  }

  *(v4 + 22) = v5;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::Int(uint64_t a1, int a2)
{
  v4 = *(a1 + 64);
  if (*(a1 + 72) - v4 <= 23)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>>(a1 + 40, 1);
    v4 = *(a1 + 64);
  }

  *(a1 + 64) = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  if (a2 < 0)
  {
    v5 = 182;
  }

  else
  {
    v5 = 502;
  }

  *(v4 + 22) = v5;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::Uint(uint64_t a1, int a2)
{
  v4 = *(a1 + 64);
  if (*(a1 + 72) - v4 <= 23)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>>(a1 + 40, 1);
    v4 = *(a1 + 64);
  }

  *(a1 + 64) = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  if (a2 < 0)
  {
    v5 = 470;
  }

  else
  {
    v5 = 502;
  }

  *(v4 + 22) = v5;
  return 1;
}

BOOL rapidjson::internal::StrtodDiyFp<char>(uint64_t a1, int a2, int a3, unint64_t *a4)
{
  if (a2 < 1)
  {
    LODWORD(v6) = 0;
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *(a1 + v6);
      if (v7 == 0x1999999999999999 && v8 > 53)
      {
        break;
      }

      v7 = (v8 - 48) + 10 * v7;
      if (++v6 >= a2 || v7 > 0x1999999999999999)
      {
        goto LABEL_10;
      }
    }

    v7 = 0x1999999999999999;
  }

LABEL_10:
  if (a2 > v6 && *(a1 + v6) > 52)
  {
    ++v7;
  }

  v9 = a2 - v6;
  v10 = __clz(v7);
  v49 = v7 << v10;
  v50 = -v10;
  v11 = (4 * (v9 != 0)) << v10;
  v12 = v9 + a3;
  v13 = (v9 + a3 + 348) >> 3;
  v14 = rapidjson::internal::GetCachedPowerByIndex(unsigned long)::kCachedPowers_F[v13];
  v15 = rapidjson::internal::GetCachedPowerByIndex(unsigned long)::kCachedPowers_E[v13];
  v16 = ((v9 + a3 + 348) & 0xFFFFFFF8) - 348;
  v47 = v14;
  v48 = v15;
  v17 = v12 - v16;
  if (v12 != v16)
  {
    {
      rapidjson::internal::StrtodDiyFp<char>(char const*,int,int,double *)::kPow10[0] = 0xA000000000000000;
      dword_1ECEF5720 = -60;
      qword_1ECEF5728 = 0xC800000000000000;
      dword_1ECEF5730 = -57;
      qword_1ECEF5738 = 0xFA00000000000000;
      dword_1ECEF5740 = -54;
      qword_1ECEF5748 = 0x9C40000000000000;
      dword_1ECEF5750 = -50;
      qword_1ECEF5758 = 0xC350000000000000;
      dword_1ECEF5760 = -47;
      qword_1ECEF5768 = 0xF424000000000000;
      dword_1ECEF5770 = -44;
      qword_1ECEF5778 = 0x9896800000000000;
      dword_1ECEF5780 = -40;
    }

    v49 = rapidjson::internal::DiyFp::operator*(&v49, &rapidjson::internal::StrtodDiyFp<char>(char const*,int,int,double *)::kPow10[2 * v17 - 2]);
    v50 = v18;
    if (v17 + a2 > 19)
    {
      v11 += 4;
    }
  }

  v19 = rapidjson::internal::DiyFp::operator*(&v49, &v47);
  v21 = 8;
  if (v11)
  {
    v21 = 9;
  }

  v22 = __clz(v19);
  v23 = v19 << v22;
  v24 = v20 - v22;
  v25 = (v21 + v11) << v22;
  if ((v20 - v22 + 64) >= 0xFFFFFBCF)
  {
    v26 = v20 - v22 + 1138;
  }

  else
  {
    v26 = 0;
  }

  if (v24 > -1086)
  {
    v26 = 53;
  }

  v27 = 64 - v26;
  v28 = v23 >> (4 - v26);
  v29 = (v25 >> (4 - v26)) + 9;
  v30 = v26 <= 3;
  if (v26 <= 3)
  {
    v31 = 4 - v26 + v24;
  }

  else
  {
    v31 = v24;
  }

  if (v30)
  {
    v23 = v28;
  }

  if (v30)
  {
    v32 = v29;
  }

  else
  {
    v32 = v25;
  }

  if (v30)
  {
    v27 = 60;
  }

  v33 = v23 >> v27;
  v34 = v27 + v31;
  v35 = 8 * (v23 & ~(-1 << v27));
  v36 = 8 << (v27 - 1);
  v37 = v32;
  v38 = v36 + v32;
  v39 = (v33 + 1) >> 1;
  if (((v33 + 1) & 0x20000000000000) != 0)
  {
    v40 = v34 + 1;
  }

  else
  {
    v40 = v34;
  }

  if (((v33 + 1) & 0x20000000000000) == 0)
  {
    v39 = v33 + 1;
  }

  if (v35 < v38)
  {
    v41 = v33;
  }

  else
  {
    v34 = v40;
    v41 = v39;
  }

  if (v34 >= -1074)
  {
    if (v34 <= 971)
    {
      v43 = (v41 & 0x10000000000000) == 0 && v34 == -1074;
      v44 = (v34 + 1075) << 52;
      if (v43)
      {
        v44 = 0;
      }

      v42 = v44 & 0xFFF0000000000000 | v41 & 0xFFFFFFFFFFFFFLL;
    }

    else
    {
      v42 = 0x7FF0000000000000;
    }
  }

  else
  {
    v42 = 0;
  }

  *a4 = v42;
  return v36 - v37 >= v35 || v35 >= v38;
}

uint64_t rapidjson::internal::CheckWithinHalfULP(rapidjson::internal *this, double a2, const rapidjson::internal::BigInteger *a3)
{
  v3 = MEMORY[0x1EEE9AC00](this);
  v6 = (v5 & 0x7FF0000000000000) != 0;
  if ((v5 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v6 = 1;
  }

  v7 = ((v5 >> 52) & 0x7FF) - 1075;
  if (v6)
  {
    v8 = v5 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  }

  else
  {
    v8 = v5 & 0xFFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    v7 = -1074;
  }

  v9 = v7 - 1;
  if (v4 < 0)
  {
    v10 = -v4;
  }

  else
  {
    v10 = 0;
  }

  v11 = v4 & ~(v4 >> 31);
  v12 = (v7 & ~(v7 >> 31)) + v10;
  v13 = v7 <= 0;
  if (v7 >= 0)
  {
    v7 = 0;
  }

  if (v13)
  {
    v14 = v9;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v9 = 0;
  }

  v15 = v12 - v14;
  v16 = v10 - v7 + v9;
  v17 = v11 - (v7 + v14);
  if (v17 >= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = v17;
  }

  if (v18 >= v16)
  {
    v18 = v16;
  }

  v19 = (v17 - v18);
  v20 = (v15 - v18);
  v21 = (v16 - v18);
  v36 = v3[416];
  memcpy(v35, v3, 8 * v36);
  v22 = rapidjson::internal::BigInteger::MultiplyPow5(v35, v11);
  rapidjson::internal::BigInteger::operator<<=(v22, v19);
  v34[416] = 1;
  v34[0] = v8;
  v23 = rapidjson::internal::BigInteger::MultiplyPow5(v34, v10);
  rapidjson::internal::BigInteger::operator<<=(v23, v20);
  v33 = 1;
  v32[0] = 1;
  v24 = rapidjson::internal::BigInteger::MultiplyPow5(v32, v10);
  rapidjson::internal::BigInteger::operator<<=(v24, v21);
  v31 = 1;
  v30[0] = 0;
  rapidjson::internal::BigInteger::Difference(v35, v34, v30);
  v25 = v31;
  v26 = v31 >= v33;
  if (v31 == v33)
  {
    while (v25)
    {
      v27 = v30[v25 - 1];
      v28 = v32[--v25];
      v26 = v27 >= v28;
      if (v27 != v28)
      {
        goto LABEL_27;
      }
    }

    return 0;
  }

  else
  {
LABEL_27:
    if (v26)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

unint64_t *rapidjson::internal::BigInteger::BigInteger<char>(unint64_t *a1, char *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  a1[416] = 1;
  *a1 = 0;
  if (a3 < 0x13)
  {
    v8 = 0;
    if (!a3)
    {
      return a1;
    }

LABEL_7:
    rapidjson::internal::BigInteger::AppendDecimal64<char>(a1, &v4[v8], &v4[v8 + v3]);
    return a1;
  }

  v6 = 0;
  do
  {
    v7 = a2 + 19;
    rapidjson::internal::BigInteger::AppendDecimal64<char>(a1, a2, a2 + 19);
    v3 -= 19;
    v6 -= 19;
    a2 = v7;
  }

  while (v3 > 0x12);
  v8 = -v6;
  if (v3)
  {
    goto LABEL_7;
  }

  return a1;
}

unint64_t *rapidjson::internal::BigInteger::AppendDecimal64<char>(unint64_t *result, char *a2, char *a3)
{
  if (a2 == a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = a2;
    do
    {
      v5 = *v4++;
      v3 = (v5 - 48) + 10 * v3;
    }

    while (v4 != a3);
  }

  if (result[416] == 1 && !*result)
  {
    *result = v3;
    result[416] = 1;
  }

  else
  {
    v6 = a3 - a2;
    v7 = v6;
    v8 = rapidjson::internal::BigInteger::MultiplyPow5(result, v6);
    v9 = rapidjson::internal::BigInteger::operator<<=(v8, v7);

    return rapidjson::internal::BigInteger::operator+=(v9, v3);
  }

  return result;
}

rapidjson::internal::BigInteger *rapidjson::internal::BigInteger::MultiplyPow5(rapidjson::internal::BigInteger *this, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
    if (a2 >= 0x1B)
    {
      do
      {
        rapidjson::internal::BigInteger::operator*=(this, 0x6765C793FA10079DuLL);
        v3 -= 27;
      }

      while (v3 > 0x1A);
    }

    if (v3 >= 0xD)
    {
      do
      {
        rapidjson::internal::BigInteger::operator*=(this, 0x48C27395u);
        v3 -= 13;
      }

      while (v3 > 0xC);
    }

    if (v3)
    {
      rapidjson::internal::BigInteger::operator*=(this, rapidjson::internal::BigInteger::MultiplyPow5::kPow5[v3 - 1]);
    }
  }

  return this;
}

void *rapidjson::internal::BigInteger::operator<<=(void *__src, unint64_t a2)
{
  v3 = __src[416];
  if (v3 == 1)
  {
    v4 = *__src == 0;
    if (!a2)
    {
      return __src;
    }
  }

  else
  {
    v4 = 0;
    if (!a2)
    {
      return __src;
    }
  }

  if (!v4)
  {
    v5 = a2 >> 6;
    if ((a2 & 0x3F) != 0)
    {
      __src[v3] = 0;
      if (v3)
      {
        v6 = v3;
        do
        {
          __src[v5 + v6] = (__src[v6] << a2) | (__src[v6 - 1] >> 1 >> ~a2);
          --v6;
        }

        while (v6);
      }

      __src[v5] = *__src << (a2 & 0x3F);
      v7 = v3 + v5;
      __src[416] = v7;
      if (!__src[v7])
      {
        goto LABEL_14;
      }

      v8 = v7 + 1;
    }

    else
    {
      memmove(&__src[v5], __src, 8 * v3);
      v8 = __src[416] + v5;
    }

    __src[416] = v8;
LABEL_14:
    bzero(__src, 8 * v5);
  }

  return __src;
}

unint64_t *rapidjson::internal::BigInteger::operator+=(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *result + a2;
  *result = v3;
  v4 = result[416];
  if (v4 == 1)
  {
LABEL_5:
    if (result[v4 - 1] < v2)
    {
      result[416] = v4 + 1;
      result[v4] = 1;
    }
  }

  else
  {
    v5 = result + 1;
    v6 = v4 - 1;
    while (v3 < v2)
    {
      v2 = *v5;
      v3 = *v5 + 1;
      *v5++ = v3;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

unint64_t *rapidjson::internal::BigInteger::operator*=(unint64_t *result, unint64_t a2)
{
  if (a2 != 1)
  {
    if (!a2)
    {
      *result = 0;
LABEL_4:
      result[416] = 1;
      return result;
    }

    v2 = result[416];
    if (v2)
    {
      if (v2 == 1 && *result == 1)
      {
        *result = a2;
        goto LABEL_4;
      }

      v3 = 0;
      v4 = a2;
      v5 = HIDWORD(a2);
      v6 = result;
      v7 = result[416];
      do
      {
        v8 = *v6;
        v9 = HIDWORD(*v6);
        v10 = v8 * v4;
        v11 = v9 * v4;
        v12 = v9 * v5;
        v13 = v8 * v5 + v11 + HIDWORD(v10);
        v14 = v12 + 0x100000000;
        if (v13 >= v11)
        {
          v14 = v12;
        }

        v15 = v14 + HIDWORD(v13);
        v16 = v3 + v10 + (v13 << 32);
        if (v16 >= v3)
        {
          v3 = v15;
        }

        else
        {
          v3 = v15 + 1;
        }

        *v6++ = v16;
        --v7;
      }

      while (v7);
      if (v3)
      {
        result[416] = v2 + 1;
        result[v2] = v3;
      }
    }
  }

  return result;
}

unint64_t *rapidjson::internal::BigInteger::operator*=(unint64_t *result, unsigned int a2)
{
  if (a2 != 1)
  {
    if (!a2)
    {
      *result = 0;
LABEL_4:
      result[416] = 1;
      return result;
    }

    v2 = result[416];
    if (v2)
    {
      if (v2 == 1 && *result == 1)
      {
        *result = a2;
        goto LABEL_4;
      }

      v3 = 0;
      v4 = result;
      v5 = result[416];
      do
      {
        v6 = v3 + *v4 * a2;
        v7 = HIDWORD(v6) + HIDWORD(*v4) * a2;
        *v4++ = v6 | (v7 << 32);
        v3 = HIDWORD(v7);
        --v5;
      }

      while (v5);
      if (v3)
      {
        result[416] = v2 + 1;
        result[v2] = v3;
      }
    }
  }

  return result;
}

uint64_t rapidjson::internal::BigInteger::Difference(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 3328);
  v4 = *(a2 + 3328);
  v5 = v3 >= v4;
  if (v3 == v4)
  {
    v6 = *(a1 + 3328);
    while (v6)
    {
      v7 = a1 + 8 * v6;
      v8 = a2 + 8 * v6--;
      v9 = *(v7 - 8);
      v10 = *(v8 - 8);
      v5 = v9 >= v10;
      if (v9 != v10)
      {
        goto LABEL_5;
      }
    }

LABEL_9:
    v11 = a1;
    a1 = a2;
    if (!v3)
    {
      return v6;
    }

    goto LABEL_10;
  }

LABEL_5:
  if (v5)
  {
    v6 = 0;
    goto LABEL_9;
  }

  v6 = 1;
  v3 = *(a2 + 3328);
  v11 = a2;
  if (!v3)
  {
    return v6;
  }

LABEL_10:
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = *(v11 + 8 * v12);
    v15 = v14 + v13;
    if (v12 < *(a1 + 3328))
    {
      v15 -= *(a1 + 8 * v12);
    }

    if (v15 <= v14)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    *(a3 + 8 * v12++) = v15;
    if (v15)
    {
      *(a3 + 3328) = v12;
      v3 = *(v11 + 3328);
    }
  }

  while (v12 < v3);
  return v6;
}

void *rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::ShrinkToFit(void *result)
{
  v1 = result[2];
  v2 = result[3];
  v3 = result + 2;
  v4 = v2 - v1;
  if (v2 == v1)
  {
    if (v2)
    {
      result = (*(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 40))(re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance);
    }

    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
  }

  else
  {
    v5 = result;
    result = re::internal::RapidJSONAllocator::Realloc(*result, v1, result[4] - v1, v4);
    v5[2] = result;
    v5[3] = result + v4;
    v5[4] = result + v4;
  }

  return result;
}

uint64_t re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(uint64_t a1, const re::StringID *a2, uint64_t a3)
{
  result = re::TypeRegistry::typeID(*(a1 + 192), a2, &v7);
  if (v7)
  {
    v6 = v7;
    return re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::registerSerializeFunc(a1, &v6, a3);
  }

  return result;
}

uint64_t re::serializeBool<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<unsigned char>(a1 + 24, a2, a3, a4, "BOOL", a7);
}

uint64_t re::serializeChar<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<unsigned char>(a1 + 24, a2, a3, a4, "char", a7);
}

uint64_t re::serializeI8<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<unsigned char>(a1 + 24, a2, a3, a4, "int8", a7);
}

uint64_t re::serializeI16<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<short>(a1 + 24, a2, a3, a4, "int16", a7);
}

uint64_t re::serializeI32<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1 + 24, a2, a3, a4, "int32", a7);
}

uint64_t re::serializeI64<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, a2, a3, a4, "int64", a7);
}

uint64_t re::serializeU8<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<unsigned char>(a1 + 24, a2, a3, a4, "uint8", a7);
}

uint64_t re::serializeU16<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<short>(a1 + 24, a2, a3, a4, "uint16", a7);
}

uint64_t re::serializeU32<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1 + 24, a2, a3, a4, "uint32", a7);
}

uint64_t re::serializeU64<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, a2, a3, a4, "uint64", a7);
}

uint64_t re::serializeFloat<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1 + 24, a2, a3, a4, "float", a7);
}

uint64_t re::serializeDouble<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, a2, a3, a4, "double", a7);
}

uint64_t re::serializeCString<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *a5, const re::TypeInfo *a6, int a7)
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
    v21 = re::EncoderBinary<re::SeekableInputStream>::beginPointer((a1 + 24), a2, a3, &v46, 0);
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
      __dst = v27;
      if (re::EncoderBinary<re::SeekableInputStream>::beginString((a1 + 24), a2, 0, &__dst, 0))
      {
        v28 = *a4;
        v29 = __dst;
        if (*a4 && __dst == v27)
        {
          if (v27)
          {
LABEL_34:
            re::EncoderBinary<re::SeekableInputStream>::serializeString(a1 + 24, v28, 0);
            v28 = *a4;
            v30 = __dst;
LABEL_43:
            v28[v30] = 0;
            re::EncoderBinary<re::SeekableInputStream>::endString((a1 + 24));
            goto LABEL_44;
          }
        }

        else
        {
          if (v28)
          {
            (*(**(a1 + 48) + 40))(*(a1 + 48));
            *a4 = 0;
            v29 = __dst;
          }

          v31 = (*(**(a1 + 24) + 64))(*(a1 + 24));
          v37 = __dst;
          if (v29 > v31)
          {
            (*(**(a1 + 24) + 64))(*(a1 + 24));
            re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "String size greater than stream size during deserialization. String length = %zu, Stream length = %zu", v38, v39, v40, v41, v42, v37);
            goto LABEL_23;
          }

          if (((__dst == -1) << 63) >> 63 != (__dst == -1))
          {
            re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Size overflow during string deserialization. String length = %zu", v32, v33, v34, v35, v36, __dst);
            goto LABEL_23;
          }

          v28 = (*(**(a1 + 48) + 32))(*(a1 + 48), __dst + 1, 0);
          *a4 = v28;
          if (__dst)
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
  v14 = re::EncoderBinary<re::SeekableInputStream>::beginPointer((a1 + 24), a2, a3, &v46, 0);
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
      __dst = 0;
      if (re::EncoderBinary<re::SeekableInputStream>::beginString((a1 + 24), a2, 0, &__dst, 0))
      {
        if (__dst)
        {
          re::EncoderBinary<re::SeekableInputStream>::serializeString(a1 + 24, 0, 1);
        }

        re::EncoderBinary<re::SeekableInputStream>::endString((a1 + 24));
      }

      goto LABEL_12;
    }

    goto LABEL_16;
  }

  return v20 & 1;
}

uint64_t re::serializeStringID<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, _anonymous_namespace_ *a4, re *a5, const re::TypeInfo *a6, int a7)
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
    if (re::EncoderBinary<re::SeekableInputStream>::beginString((a1 + 24), a2, v9, &v43, 0))
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
        v38 = re::EncoderBinary<re::SeekableInputStream>::serializeString(a1 + 24, v37, 0);
        v37[v43] = 0;
        __dst = 0;
        v42 = &str_67;
        v39 = re::StringID::operator=(a4, &__dst);
        if (__dst)
        {
          if (__dst)
          {
          }
        }

        v36 = *(**(a1 + 56) + 40);
      }

      else
      {
        __dst = 0;
        v42 = &str_67;
        v35 = re::StringID::operator=(a4, &__dst);
        if ((__dst & 1) == 0)
        {
LABEL_32:
          re::EncoderBinary<re::SeekableInputStream>::endString((a1 + 24));
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

  __dst = 0;
  v20 = re::EncoderBinary<re::SeekableInputStream>::beginString((a1 + 24), a2, v9, &__dst, 0);
  v21 = 0;
  if (v20)
  {
    if (__dst)
    {
      re::EncoderBinary<re::SeekableInputStream>::serializeString(a1 + 24, 0, 1);
    }

    goto LABEL_32;
  }

  return v21 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
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
    __dst[0] = 0x258C98EAAF29A10ALL;
    __dst[1] = "CallbackSerializerAttribute";
    v18 = re::TypeRegistry::typeID(v16, __dst, buf);
    if (*buf && (v34 = *&buf[8], v35 = v17, LODWORD(v36) = -1, (v18 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v16 + 768, &v34)) != 0))
    {
      v19 = *v18;
    }

    else
    {
      v19 = 0;
    }

    if (__dst[0])
    {
      if (__dst[0])
      {
      }
    }

    v24 = *v19;
    v25 = *(a1 + 184);
    __dst[0] = 0;
    if (re::EncoderBinary<re::SeekableInputStream>::beginString((a1 + 24), a2, v10, __dst, 0))
    {
      v26 = *(a1 + 56);
      v36 = 0;
      v37 = 0;
      v34 = v26;
      v35 = 0;
      re::DynamicString::setCapacity(&v34, 0);
      if (__dst[0])
      {
        re::DynamicString::resize(&v34, __dst[0], 0);
        if (v35)
        {
          v27 = v36;
        }

        else
        {
          v27 = &v35 + 1;
        }

        re::EncoderBinary<re::SeekableInputStream>::serializeString(a1 + 24, v27, 0);
      }

      re::EncoderBinary<re::SeekableInputStream>::endString((a1 + 24));
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
  v14 = re::EncoderBinary<re::SeekableInputStream>::beginString((a1 + 24), a2, v10, &v34, 0);
  v15 = 0;
  if (v14)
  {
    if (v34)
    {
      re::EncoderBinary<re::SeekableInputStream>::serializeString(a1 + 24, 0, 1);
    }

    re::EncoderBinary<re::SeekableInputStream>::endString((a1 + 24));
LABEL_39:
    v15 = *(a1 + 64) ^ 1;
  }

  return v15 & 1;
}

uint64_t re::SerializerV1<re::EncoderBinary<re::SeekableInputStream>>::serializeCString(uint64_t a1, const char *a2, const re::TypeInfo *a3, char **a4, re *a5, const re::TypeInfo *a6, char a7)
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
  if (re::EncoderBinary<re::SeekableInputStream>::beginPointer((a1 + 24), a2, a3, &v49, 0))
  {
    if (v49 == 1)
    {
      v48 = 0;
      if ((*(a1 + 64) & 1) == 0)
      {
        re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1 + 24, "ID", 0, &v48, "Reference ID", 0);
        if ((*(a1 + 64) & 1) == 0)
        {
          if (*(a1 + 328) <= v48)
          {
            re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Invalid reference ID for shared object: %u", v20, v21, v22, v23, v24, v48);
          }

          else
          {
            re::internal::SharedObjectGraph::typeID((a1 + 256), v48, &__dst);
            if (__dst == *a5)
            {
              v25 = **(a5 + 2);
              if (v45 == v25 && v46 == WORD1(v25) && ((v47 ^ HIDWORD(v25)) & 0xFFFFFF) == 0)
              {
                if ((a7 & 1) == 0)
                {
                  if (*a4)
                  {
                    v41 = *a4;
                    if (v41 != re::internal::SharedObjectGraph::object((a1 + 256), v48))
                    {
                      (*(**(a1 + 48) + 40))(*(a1 + 48), *a4);
                      *a4 = 0;
                    }
                  }

                  *a4 = re::internal::SharedObjectGraph::object((a1 + 256), v48);
                  if (*(a1 + 256) == 1 && *(a1 + 257) == 1)
                  {
                    re::internal::SharedObjectGraph::addChild((a1 + 256), *(*(a1 + 424) + 4 * *(a1 + 408) - 4), v48);
                  }
                }

                goto LABEL_37;
              }
            }

            v26 = *(a1 + 192);
            re::internal::SharedObjectGraph::typeID((a1 + 256), v48, &__dst);
            v42 = *(re::TypeRegistry::typeName(v26, &__dst) + 1);
            re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Invalid reference ID for shared object. Expected type char *. Actual type %s.", v27, v28, v29, v30, v31, v42);
          }
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

LABEL_37:
        re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
        v18 = *(a1 + 64) ^ 1;
        return v18 & 1;
      }

      if ((a7 & 1) == 0 && *a4)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      __dst = 0;
      if (re::EncoderBinary<re::SeekableInputStream>::beginString((a1 + 24), a2, 0, &__dst, 0))
      {
        if (((__dst == -1) << 63) >> 63 == (__dst == -1))
        {
          v37 = (*(**(a1 + 48) + 32))(*(a1 + 48), __dst + 1, 0);
          v38 = v37;
          if ((a7 & 1) == 0)
          {
            *a4 = v37;
          }

          v39 = __dst;
          if (__dst)
          {
            re::EncoderBinary<re::SeekableInputStream>::serializeString(a1 + 24, v37, 0);
            v39 = __dst;
          }

          *(v39 + v38) = 0;
          re::EncoderBinary<re::SeekableInputStream>::endString((a1 + 24));
          v40 = **(a5 + 2);
          *&v43 = *a5;
          *(&v43 + 1) = v40;
          re::internal::SharedObjectGraph::addObject(a1 + 256, v38, &v43);
          goto LABEL_37;
        }

        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Size overflow during string deserialization. String length = %zu", v32, v33, v34, v35, v36, __dst);
      }
    }
  }

LABEL_16:
  v18 = 0;
  return v18 & 1;
}

uint64_t re::SerializerV1<re::EncoderBinary<re::SeekableInputStream>>::serializePointer(uint64_t a1, const char *a2, uint64_t a3, void **a4, re::TypeInfo *this, const re::TypeInfo *a6, int a7)
{
  v80 = *MEMORY[0x1E69E9840];
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
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &buf);
  re::TypeInfo::TypeInfo(v71, &buf + 8);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &buf);
  re::TypeInfo::TypeInfo(v70, &buf + 8);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v25 = *v72;
    v69[0] = v71[0];
    v69[1] = v25;
    if (!v71[0])
    {
      goto LABEL_8;
    }

LABEL_11:
    re::TypeRegistry::typeInfo(*this, v69, &buf);
    re::TypeInfo::TypeInfo(v67, &buf + 8);
    v66 = 0;
    if (!re::EncoderBinary<re::SeekableInputStream>::beginPointer((a1 + 24), a2, a3, &v66, 0))
    {
      goto LABEL_28;
    }

    if (v66 != 1)
    {
      if (!v66)
      {
        if ((a7 & 1) == 0 && *a4)
        {
          re::TypeInfo::releaseInstance(v67, *a4, *(a1 + 48), *(a1 + 184));
          *a4 = 0;
        }

        goto LABEL_90;
      }

      if (isPointerToPolymorphicType)
      {
        if ((*(a1 + 64) & 1) == 0)
        {
          LOBYTE(buf) = 1;
          DWORD1(buf) = 0;
          *(&buf + 1) = a2;
          v78 = 0u;
          v79 = 0u;
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &buf);
          v76 = 0;
          if (re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "customClassID", 1, &v76, "uint64", 0))
          {
            re::TypeInfo::typeIDForCustomClassID(v70, v76, v75);
            if (v75[0])
            {
              if ((a7 & 1) == 0 && *a4)
              {
                re::TypeInfo::releaseInstance(v67, *a4, *(a1 + 48), *(a1 + 184));
                *a4 = 0;
              }

              re::TypeRegistry::typeInfo(v70[0], v75, &buf);
              re::TypeInfo::TypeInfo(v74, &buf + 8);
              if (v16)
              {
                v38 = *(a1 + 192);
              }

              else
              {
                v38 = *(a1 + 192);
                if (*this == v38)
                {
                  re::TypeInfo::operator=(v67, v74);
                  v54 = v75[0];
                  v55 = v75[1];
                  goto LABEL_84;
                }
              }

              v52 = re::TypeInfo::name(v74);
              v53 = re::TypeRegistry::typeInfo(v38, v52, &buf);
              if (buf != 1 || *(*(&v78 + 1) + 128) != 1)
              {
                v56 = *re::foundationSerializationLogObjects(v53);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                {
                  v57 = re::TypeInfo::name(v74)[1];
                  LODWORD(buf) = 136315138;
                  *(&buf + 4) = v57;
                  _os_log_impl(&dword_1E1C61000, v56, OS_LOG_TYPE_DEFAULT, "No matching runtime type found for serialized polymorphic type %s. Skipping unknown type.", &buf, 0xCu);
                }

                *&buf = 0;
                *(&buf + 1) = 0xFFFFFFFFLL;
                (*(*a1 + 16))(a1, 0, &buf);
                if ((*(a1 + 64) & 1) == 0)
                {
                  (*(*a1 + 72))(a1, "object", 10, 0, v74, v74, 1);
                }

                goto LABEL_88;
              }

              re::TypeInfo::operator=(v67, &buf + 8);
              v54 = v67[0];
              v55 = *v68;
LABEL_84:
              Instance = re::TypeInfo::createInstance(v67, *(a1 + 48), *(a1 + 184));
              v60 = Instance;
              if ((a7 & 1) == 0)
              {
                *a4 = Instance;
                *&buf = v54;
                *(&buf + 1) = v55;
                re::internal::setActualType(a4, this, &buf);
              }

              v73[0] = v54;
              v73[1] = v55;
              (*(*a1 + 16))(a1, v60, v73);
              if ((*(a1 + 64) & 1) == 0)
              {
                (*(*a1 + 72))(a1, "object", 10, v60, v67, v74, v60 == 0);
              }

LABEL_88:
              (*(*a1 + 24))(a1);
              if ((*(a1 + 64) & 1) == 0)
              {
                re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 1);
                v61 = *(a1 + 152) + 48 * *(a1 + 136);
                ++*(v61 - 16);
              }

              goto LABEL_90;
            }

            v46 = re::TypeInfo::name(v70);
            re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Unknown polymorphic %s type. Custom class ID = %llu", v47, v48, v49, v50, v51, v46[1]);
          }
        }

LABEL_90:
        re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
        v32 = *(a1 + 64) ^ 1;
        return v32 & 1;
      }

      if (!a7)
      {
        v41 = *a4;
        if (!*a4)
        {
          v41 = re::TypeInfo::createInstance(v71, *(a1 + 48), 0);
        }

        v42 = 0;
        *a4 = v41;
        goto LABEL_62;
      }

      v39 = *(a1 + 192);
      if (v71[0] != v39)
      {
        v40 = re::TypeInfo::name(v71);
        re::TypeRegistry::typeInfo(v39, v40, &buf);
        if ((buf & 1) == 0)
        {
          v41 = 0;
          v42 = 1;
          goto LABEL_62;
        }

        re::TypeInfo::operator=(v71, &buf + 8);
      }

      v41 = re::TypeInfo::createInstance(v71, *(a1 + 48), 0);
      v42 = 0;
LABEL_62:
      v43 = *v72;
      *&v63 = v71[0];
      *(&v63 + 1) = v43;
      re::internal::SharedObjectGraph::beginObject((a1 + 256), v41, &v63);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, v41, v71, v70, v42);
      }

      if (*(a1 + 256) == 1)
      {
        --*(a1 + 408);
        ++*(a1 + 416);
      }

      goto LABEL_90;
    }

    LODWORD(v75[0]) = 0;
    if (*(a1 + 64))
    {
      goto LABEL_28;
    }

    re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1 + 24, "ID", 0, v75, "Reference ID", 0);
    if (*(a1 + 64))
    {
      goto LABEL_28;
    }

    if (*(a1 + 328) > LODWORD(v75[0]))
    {
      re::internal::SharedObjectGraph::typeID((a1 + 256), v75[0], v65);
      if (!re::internal::areCompatible(this, v65))
      {
        v44 = re::TypeInfo::name(v71)[1];
        v45 = *(a1 + 192);
        re::internal::SharedObjectGraph::typeID((a1 + 256), v75[0], &buf);
        LOBYTE(v62) = v44;
        re::TypeRegistry::typeName(v45, &buf);
        v22 = "Invalid reference. Objects are not compatible. Expected type %s. Actual type %s.";
        goto LABEL_67;
      }

      if (a7)
      {
        goto LABEL_90;
      }

      if (*a4)
      {
        v34 = *a4;
        if (v34 != re::internal::SharedObjectGraph::object((a1 + 256), v75[0]))
        {
          re::TypeInfo::releaseInstance(v67, *a4, *(a1 + 48), *(a1 + 184));
          *a4 = 0;
        }
      }

      v35 = re::internal::SharedObjectGraph::object((a1 + 256), v75[0]);
      v36 = v35;
      *a4 = v35;
      if ((*(v68 + 49) & 2) != 0)
      {
        v58 = *(v68 + 32);
        if (v58)
        {
          v58(v35);
        }

        if (*(a1 + 256) == 1 && *(a1 + 257) == 1)
        {
          re::internal::SharedObjectGraph::addChild((a1 + 256), *(*(a1 + 424) + 4 * *(a1 + 408) - 4), v75[0]);
        }
      }

      else
      {
        re::internal::SharedObjectGraph::typeID((a1 + 256), v75[0], v74);
        if (!v74[0])
        {
          LOBYTE(v62) = v75[0];
          v22 = "TypeID for shared object at index %d is invalid.";
          goto LABEL_67;
        }

        re::TypeRegistry::typeInfo(v74[0], v74, &buf);
        if ((buf & 1) == 0)
        {
          LOBYTE(v62) = v75[0];
          v22 = "No TypeInfo found for shared object at index %d.";
          goto LABEL_67;
        }

        v37 = re::TypeInfo::createInstance((&buf + 8), *(a1 + 48), *(a1 + 184));
        *a4 = v37;
        if ((re::TypeInfo::copy((&buf + 8), v37, v36, *(a1 + 48), *(a1 + 184)) & 1) == 0)
        {
          v62 = re::TypeInfo::name((&buf + 8))[1];
          v22 = "Failed to copy non-shareable object of type '%s'.";
LABEL_67:
          v23 = a1;
          v24 = 0;
          goto LABEL_9;
        }
      }

      re::internal::SharedObjectGraph::typeID((a1 + 256), v75[0], v64);
      re::TypeInfo::setActualTypeForPointer(this, a4, v64);
      goto LABEL_90;
    }

    LOBYTE(v62) = v75[0];
    v22 = "Invalid reference ID for shared object: %u";
    goto LABEL_67;
  }

  re::internal::actualType(a4, this, v69);
  if (v69[0])
  {
    goto LABEL_11;
  }

LABEL_8:
  v62 = re::TypeInfo::name(this)[1];
  v22 = "Failed to get actual type of polymorphic object. Type %s.";
  v23 = a1;
  v24 = a2;
LABEL_9:
  re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(v23, v24, v22, v17, v18, v19, v20, v21, v62);
LABEL_28:
  v32 = 0;
  return v32 & 1;
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::deserializeSharedObjects(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + 64) & 1) == 0)
  {
    v9 = result;
    result = re::EncoderOPACK<re::SeekableInputStream>::beginObject(result + 24, "@shared", 20, 0);
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
            re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(v9, 0, "Invalid referenceID %u.", v22, v23, v24, v25, v26, v87);
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

              if ((re::internal::deserializePolymorphicObject<re::EncoderOPACK<re::SeekableInputStream>,false>(v9, v27, v87, *(&v87 + 1), v88, v86, &v82, HIBYTE(v91), 0) & 1) == 0)
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

                  re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(v9, v62, "Failed to deserialize shared object (reference ID = %d).", v28, v29, v30, v31, v32, v19);
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
            re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addNew(v9 + 400, v81, &v77);
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
                re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(v9, 0, "Invalid reference. Objects are not compatible. Expected type %s. Actual type %s.", v64, v65, v66, v67, v68, v63);
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
                  re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(v9, 0, "Invalid reference. Polymorphic type %s has invalid actual type.", v69, v70, v71, v72, v73, v74);
                  goto LABEL_71;
                }

                LODWORD(v82) = v45;
                v49 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v9 + 400, &v82);
                if (!v49)
                {
                  re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(v9, 0, "Invalid reference. No such object %z", v50, v51, v52, v53, v54, v45);
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

      re::EncoderOPACK<re::SeekableInputStream>::endObject(v9 + 24);
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

      return re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(v9, "@shared", "Failed to deserialize shared objects. Entry not found.", v10, v11, v12, v13, v14, a9);
    }
  }

  return result;
}