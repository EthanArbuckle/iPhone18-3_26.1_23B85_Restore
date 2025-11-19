unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeDouble(uint64_t a1, char *a2, double *a3, char a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v10 = *(result + 11);
  if ((v10 & 0x400) != 0)
  {
    if ((*(result + 11) & 0x1000) != 0)
    {
      v12 = result;
    }

    else
    {
      v12 = *(result + 1);
    }

    if ((*(result + 11) & 0x1000) != 0)
    {
      v13 = 21 - *(result + 21);
    }

    else
    {
      v13 = *result;
    }

    if (v13 == 9)
    {
      if (!strcasecmp(v12, "-Infinity"))
      {
        *&v14 = -INFINITY;
        goto LABEL_34;
      }
    }

    else if (v13 == 8)
    {
      if (!strcasecmp(v12, "Infinity"))
      {
        *&v14 = INFINITY;
        goto LABEL_34;
      }
    }

    else if (v13 == 3 && !strcasecmp(v12, "NaN"))
    {
      *&v14 = NAN;
LABEL_34:
      Double = *&v14;
      goto LABEL_35;
    }

    if (*(a1 + 232) == 1)
    {
      *v20 = 0;
      v16 = strtod(v12, v20);
      v17 = *v20 != &v12[v13] || v16 == INFINITY;
      Double = v17 ? INFINITY : v16;
      if (Double != INFINITY)
      {
        v18 = *re::foundationSerializationLogObjects(v15);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 136315138;
          *&v20[4] = v12;
          _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", v20, 0xCu);
        }

        goto LABEL_35;
      }
    }

    goto LABEL_30;
  }

  if ((v10 & 0x10) == 0)
  {
LABEL_30:
    return 0;
  }

  Double = rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::GetDouble(result, v9);
LABEL_35:
  if ((a4 & 1) == 0)
  {
    *a3 = Double;
  }

  v19 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v19 - 16);
  return 1;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(uint64_t a1, char *__s)
{
  v3 = *(a1 + 128) + 48 * *(a1 + 112);
  v4 = *(v3 - 48);
  if (!*(v3 - 48))
  {
    return *(a1 + 176);
  }

  v5 = *(v3 - 8);
  if (!v5)
  {
    return v5;
  }

  if (v4 == 7)
  {
    goto LABEL_6;
  }

  if (v4 == 5)
  {
    v18 = *(v3 - 16);
    if (*v5 <= v18)
    {
      return 0;
    }

    v19 = *(v5 + 1);
    if (!v19)
    {
      return 0;
    }

    v5 = (v19 + 24 * v18);
LABEL_26:
    if (*(v5 + 11) != 4)
    {
      return v5;
    }

    v20 = *v5;
    if (v20 < 2)
    {
      return v5;
    }

    v21 = *(v5 + 1);
    if ((*(v21 + 22) & 0x400) == 0)
    {
      return v5;
    }

    v22 = (*(v21 + 22) & 0x1000) != 0 ? *(v5 + 1) : *(v21 + 8);
    if (strcmp(v22, "@cond"))
    {
      return v5;
    }

    v24 = v20 - 1;
    v25 = (v20 - 1) - 1;
    v26 = (v21 + 46);
    while (*v26 == 4)
    {
      if (*(v26 - 11) < 2u)
      {
        break;
      }

      v27 = *(v26 - 7);
      if ((*(v27 + 22) & 0x20) == 0)
      {
        break;
      }

      if (!v25 || *(a1 + 136) <= *v27)
      {
        return (v27 + 24);
      }

      --v25;
      v26 += 12;
      if (!--v24)
      {
        re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "evaluateConditional", 1447);
        _os_crash();
        __break(1u);
        break;
      }
    }

    if (v31)
    {
      v28 = *&v32[7];
    }

    else
    {
      v28 = v32;
    }

    re::DynamicString::format("Failed to read version conditional %s. Invalid condition.", &v33, v28);
    if (v33 && (v34 & 1) != 0)
    {
      (*(*v33 + 40))();
    }

    if (v30)
    {
      if (v31)
      {
        (*(*v30 + 40))();
      }
    }

    return 0;
  }

  if (v4 != 2)
  {
    goto LABEL_26;
  }

LABEL_6:
  v7 = strlen(__s);
  v8 = *v5;
  if (!v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = *(v5 + 1);
  v11 = v7 - 1;
  for (i = (v10 + 24); ; i += 12)
  {
    if ((*(i - 1) & 0x1000) != 0)
    {
      v13 = i - 6;
    }

    else
    {
      v13 = *(i - 2);
    }

    if ((*(i - 1) & 0x1000) != 0)
    {
      v14 = 21 - *(i - 3);
    }

    else
    {
      v14 = *(i - 6);
    }

    if (v9 != v14 || strncmp(__s + 1, v13 + 1, v11))
    {
      goto LABEL_19;
    }

    if (!v9)
    {
      break;
    }

    v16 = __toupper(*__s);
    if (v16 == __toupper(*v13))
    {
      v5 = i;
      goto LABEL_26;
    }

    v10 = *(v5 + 1);
    v8 = *v5;
LABEL_19:
    v17 = i + 6;
    if (v17 == (v10 + 48 * v8))
    {
      return 0;
    }
  }

  re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(uint64_t a1, const char *a2, uint64_t a3)
{
  if (v8)
  {
    v5 = *&v9[7];
  }

  else
  {
    v5 = v9;
  }

  re::DynamicString::format("Failed to deserialize %s. Expected type: %s", &v10, v5, a3);
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

  return result;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorValueOutOfTypeRange(uint64_t a1, const char *a2, uint64_t a3)
{
  if (v8)
  {
    v5 = *&v9[7];
  }

  else
  {
    v5 = v9;
  }

  re::DynamicString::format("Failed to deserialize %s. Value out of %s type range.", &v10, v5, a3);
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

  return result;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(_BYTE *a1, char *a2, uint64_t *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1[40])
  {
    return 0;
  }

  if (result)
  {
    v8 = result;
    v9 = *(result + 11);
    if ((v9 & 0x400) != 0)
    {
      if ((*(result + 11) & 0x1000) != 0)
      {
        LODWORD(v12) = 21 - *(result + 21);
      }

      else
      {
        LODWORD(v12) = *result;
      }

      v12 = v12;
    }

    else if ((v9 & 0x10) != 0 && (a1[232] & 1) != 0 && (Double = rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::GetDouble(result, v7), (v11 = snprintf(&__str, 0x40uLL, "%g", Double)) != 0))
    {
      v12 = v11;
    }

    else
    {
      if (a1[233] != 1 || (v13 = *(v8 + 11), (v13 & 8) == 0))
      {
        return 0;
      }

      v14 = v13 == 10;
      v12 = 4;
      if (!v14)
      {
        v12 = 5;
      }
    }

    *a3 = v12;
    LOBYTE(__str) = 8;
    DWORD1(__str) = 0;
    *(&__str + 1) = a2;
    v16 = 0;
    v17 = v12;
    v18 = 0;
    v19 = v8;
    return 1;
  }

  return result;
}

void re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(uint64_t a1, char *a2, char a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 40) & 1) == 0)
  {
    v6 = *(a1 + 128) + 48 * *(a1 + 112);
    v7 = *(v6 - 24);
    v8 = *(v6 - 40);
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
            v21 = JSONValue;
          }

          else
          {
            v21 = *(JSONValue + 1);
          }

          strncpy(a2, v21, v7);
        }

        goto LABEL_43;
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
            goto LABEL_43;
          }

          *v27 = 136315138;
          *&v27[4] = __str;
          v18 = "Reading JSON number as string %s in Number/String Compatibility Mode";
          v19 = v27;
          goto LABEL_38;
        }

        if ((v12 & 0x10) != 0)
        {
LABEL_43:
          v25 = *(a1 + 128) + 48 * *(a1 + 112);
          *(v25 - 16) += v7;
          return;
        }
      }

      if (*(a1 + 233) == 1)
      {
        if ((a3 & 1) == 0 && (v12 & 8) != 0)
        {
          if (v12 == 10)
          {
            v22 = "true";
          }

          else
          {
            v22 = "false";
          }

          v23 = strncpy(a2, v22, v7);
          v17 = *re::foundationSerializationLogObjects(v23);
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_43;
          }

          if (*(v11 + 11) == 10)
          {
            v24 = "true";
          }

          else
          {
            v24 = "false";
          }

          *__str = 136315138;
          *&__str[4] = v24;
          v18 = "Reading JSON BOOL as string %s in Bool/String Compatibility Mode";
          v19 = __str;
LABEL_38:
          _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, v18, v19, 0xCu);
          goto LABEL_43;
        }

        if ((v12 & 8) != 0)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      if (v27[8])
      {
        v20 = v28;
      }

      else
      {
        v20 = &v27[9];
      }

      re::DynamicString::format("Failed to deserialize %s. Key not found.", __str, v20);
      if (*__str && (__str[8] & 1) != 0)
      {
        (*(**__str + 40))();
      }

      if (*v27 && (v27[8] & 1) != 0)
      {
        (*(**v27 + 40))();
      }
    }
  }
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == *(v2 + 48 * v3 - 24))
    {
      v4 = *(v1 + 128) + 48 * *(v1 + 112);
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

      v6 = *(v1 + 128) + 48 * *(v1 + 112);
      re::DynamicString::format("Failed to serialize string %s. Expected number of characters: %lld. Actual number of characters: %lld.", &v10, v5, *(v6 - 24), *(v6 - 16));
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

double re::Encoder<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,anonymous namespace::LegacyInputStreamAdaptor>::pushState(uint64_t a1, _OWORD *a2)
{
  if (*(a1 + 112) >= *(a1 + 152))
  {
    re::DynamicString::format("State stack overflow (max depth is %zu). Increase user default com.apple.maxSerializationDepth to allow deeper hierarchies.", v6, *(a1 + 152));
    if (*&v6[0])
    {
      if (BYTE8(v6[0]))
      {
        (*(**&v6[0] + 40))();
      }
    }
  }

  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v6[2] = a2[2];
  return result;
}

__n128 re::Encoder<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,anonymous namespace::LegacyInputStreamAdaptor>::StateStack::push(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*a1)
    {
      v11 = 2 * v4;
      v12 = v4 == 0;
      v13 = 8;
      if (!v12)
      {
        v13 = v11;
      }

      if (v13 <= v6)
      {
        v14 = v6;
      }

      else
      {
        v14 = v13;
      }

      re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(a1, v14);
    }

    else
    {
      re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(a1, v6);
      ++*(a1 + 24);
    }
  }

  v8 = *(a1 + 32) + 48 * *(a1 + 16);
  result = *a2;
  v10 = *(a2 + 32);
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 32) = v10;
  *v8 = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

double re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(uint64_t a1, char *a2, _BYTE *a3)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    if (JSONValue)
    {
      v7 = *(JSONValue + 11) != 0;
    }

    else
    {
      v7 = 0;
    }

    *a3 = v7;
    LOBYTE(v9) = 3;
    DWORD1(v9) = 0;
    *(&v9 + 1) = a2;
    v10 = 0;
    v11 = v7;
    v12 = 0;
    v13 = JSONValue;
  }

  return result;
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endOptional(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == *(v2 + 48 * v3 - 24))
    {
      v4 = *(v1 + 128) + 48 * *(v1 + 112);
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

      if (*(*(v1 + 128) + 48 * *(v1 + 112) - 24) <= 0)
      {
        v6 = "Optional should not have a value.";
      }

      else
      {
        v6 = "Optional requires a value.";
      }

      re::DynamicString::format("Failed to serialize optional type %s. %s", &v10, v5, v6);
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

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(uint64_t a1, char *a2, void *a3, int a4)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = v4;
  v18 = v5;
  if (result)
  {
    if (*(result + 11) == 4)
    {
      v11 = *result;
      *a3 = v11;
      LOBYTE(v12) = 5;
      DWORD1(v12) = a4;
      *(&v12 + 1) = a2;
      v13 = 0;
      v14 = v11;
      v15 = 0;
      v16 = result;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == *(v2 + 48 * v3 - 24))
    {
      v4 = *(v1 + 128) + 48 * *(v1 + 112);
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

      v6 = *(v1 + 128) + 48 * *(v1 + 112);
      re::DynamicString::format("Failed to deserialize array %s. Expected number of elements: %lld. Actual number of elements: %lld.", &v10, v5, *(v6 - 24), *(v6 - 16));
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v51), re::TypeInfo::TypeInfo(v49, v52), v49[12] != 1) || !re::TypeInfo::isInteger(v49))
  {
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
LABEL_45:
    v37 = *(a1 + 64) ^ 1;
    return v37 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v49, v52);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v48, v52);
  re::TypeInfo::TypeInfo(v46, this);
  v18 = (*(*a1 + 80))(a1, v49);
  if (!v18)
  {
    v44 = re::TypeInfo::name(v49)[1];
    goto LABEL_48;
  }

  v19 = v18;
  v20 = *(v47 + 104);
  re::TypeInfo::TypeInfo(&v51, v46);
  v20(a4, &v51, v17);
  {
    goto LABEL_48;
  }

  v26 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v26 || !*v26)
  {
LABEL_43:
    if (*(a1 + 64))
    {
      goto LABEL_48;
    }

    v36 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v36 - 16);
    goto LABEL_45;
  }

  v27 = *(v26 + 1);
  while (1)
  {
    if ((*(v27 + 22) & 0x1000) != 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = *(v27 + 8);
    }

    if ((*(v27 + 22) & 0x1000) != 0)
    {
      v29 = 21 - *(v27 + 21);
    }

    else
    {
      v29 = *v27;
    }

    v45 = 0;
    v30 = v28;
    if (v29)
    {
      v31 = v29;
      v30 = v28;
      while (*v30 == 48)
      {
        ++v30;
        if (!--v31)
        {
          goto LABEL_42;
        }
      }
    }

    v32 = &v28[v29];
    if (v30 == v32)
    {
      goto LABEL_42;
    }

    if (*v30 - 48 > 9)
    {
      break;
    }

    v30 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v30, v32, &v51, &v50);
    if (v30 != v32)
    {
      if (*v30 - 48 > 9)
      {
        v34 = v50;
        v33 = v51;
        if (!__CFADD__(v51, v50))
        {
LABEL_40:
          v45 = v33 + v34;
          break;
        }
      }

      while (*v30 - 48 <= 9)
      {
        if (++v30 == v32)
        {
          v30 = v32;
          goto LABEL_41;
        }
      }

      break;
    }

    v34 = v50;
    v33 = v51;
    if (!__CFADD__(v51, v50))
    {
      goto LABEL_40;
    }

LABEL_42:
    v35 = (*(v47 + 112))(a4, v46, *(a1 + 48), &v45);
    v19(a1, v28, 0, v35, v49, v48, 0);
    v27 += 48;
    if (v27 == *(v26 + 1) + 48 * *v26)
    {
      goto LABEL_43;
    }
  }

LABEL_41:
  if (v32 == v30)
  {
    goto LABEL_42;
  }

LABEL_48:
  v37 = 0;
  return v37 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v51), re::TypeInfo::TypeInfo(v49, v52), v49[12] != 1) || !re::TypeInfo::isInteger(v49))
  {
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
LABEL_45:
    v37 = *(a1 + 64) ^ 1;
    return v37 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v49, v52);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v48, v52);
  re::TypeInfo::TypeInfo(v46, this);
  v18 = (*(*a1 + 80))(a1, v49);
  if (!v18)
  {
    v44 = re::TypeInfo::name(v49)[1];
    goto LABEL_48;
  }

  v19 = v18;
  v20 = *(v47 + 104);
  re::TypeInfo::TypeInfo(&v51, v46);
  v20(a4, &v51, v17);
  {
    goto LABEL_48;
  }

  v26 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v26 || !*v26)
  {
LABEL_43:
    if (*(a1 + 64))
    {
      goto LABEL_48;
    }

    v36 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v36 - 16);
    goto LABEL_45;
  }

  v27 = *(v26 + 1);
  while (1)
  {
    if ((*(v27 + 22) & 0x1000) != 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = *(v27 + 8);
    }

    if ((*(v27 + 22) & 0x1000) != 0)
    {
      v29 = 21 - *(v27 + 21);
    }

    else
    {
      v29 = *v27;
    }

    v45 = 0;
    v30 = v28;
    if (v29)
    {
      v31 = v29;
      v30 = v28;
      while (*v30 == 48)
      {
        ++v30;
        if (!--v31)
        {
          goto LABEL_42;
        }
      }
    }

    v32 = &v28[v29];
    if (v30 == v32)
    {
      goto LABEL_42;
    }

    if (*v30 - 48 > 9)
    {
      break;
    }

    v30 = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](v30, v32, &v51, &v50);
    if (v30 != v32)
    {
      if (*v30 - 48 > 9)
      {
        v34 = v50;
        v33 = v51;
        if (!__CFADD__(v51, v50))
        {
LABEL_40:
          v45 = v33 + v34;
          break;
        }
      }

      while (*v30 - 48 <= 9)
      {
        if (++v30 == v32)
        {
          v30 = v32;
          goto LABEL_41;
        }
      }

      break;
    }

    v34 = v50;
    v33 = v51;
    if (!__CFADD__(v51, v50))
    {
      goto LABEL_40;
    }

LABEL_42:
    v35 = (*(v47 + 112))(a4, v46, *(a1 + 48), &v45);
    v19(a1, v28, 0, v35, v49, v48, 0);
    v27 += 48;
    if (v27 == *(v26 + 1) + 48 * *v26)
    {
      goto LABEL_43;
    }
  }

LABEL_41:
  if (v32 == v30)
  {
    goto LABEL_42;
  }

LABEL_48:
  v37 = 0;
  return v37 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v49), re::TypeInfo::TypeInfo(v47, v50), v47[12] != 1) || !re::TypeInfo::isInteger(v47))
  {
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
LABEL_45:
    v35 = *(a1 + 64) ^ 1;
    return v35 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v49);
  re::TypeInfo::TypeInfo(v47, v50);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v49);
  re::TypeInfo::TypeInfo(v46, v50);
  re::TypeInfo::TypeInfo(v44, this);
  v18 = (*(*a1 + 80))(a1, v47);
  if (!v18)
  {
    v42 = re::TypeInfo::name(v47)[1];
    goto LABEL_48;
  }

  v19 = v18;
  v20 = *(v45 + 104);
  re::TypeInfo::TypeInfo(&v49, v44);
  v20(a4, &v49, v17);
  {
    goto LABEL_48;
  }

  v26 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v26 || !*v26)
  {
LABEL_43:
    if (*(a1 + 64))
    {
      goto LABEL_48;
    }

    v34 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v34 - 16);
    goto LABEL_45;
  }

  v27 = *(v26 + 1);
  while (1)
  {
    if ((*(v27 + 22) & 0x1000) != 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = *(v27 + 8);
    }

    if ((*(v27 + 22) & 0x1000) != 0)
    {
      v29 = 21 - *(v27 + 21);
    }

    else
    {
      v29 = *v27;
    }

    v43 = 0;
    v30 = v28;
    if (v29)
    {
      v31 = v29;
      v30 = v28;
      while (*v30 == 48)
      {
        ++v30;
        if (!--v31)
        {
          goto LABEL_42;
        }
      }
    }

    v32 = &v28[v29];
    if (v30 == v32)
    {
      goto LABEL_42;
    }

    if (*v30 - 48 <= 9)
    {
      v30 = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](v30, v32, &v49, &v48);
      if (v30 == v32 || *v30 - 48 > 9)
      {
        if (HIWORD(v49) || 0xFFFF - v49 < v48)
        {
          if (v30 != v32)
          {
            goto LABEL_37;
          }

          goto LABEL_42;
        }

        v43 = v48 + v49;
      }

      else
      {
LABEL_37:
        while (*v30 - 48 <= 9)
        {
          if (++v30 == v32)
          {
            v30 = v32;
            break;
          }
        }
      }
    }

    if (v32 != v30)
    {
      break;
    }

LABEL_42:
    v33 = (*(v45 + 112))(a4, v44, *(a1 + 48), &v43);
    v19(a1, v28, 0, v33, v47, v46, 0);
    v27 += 48;
    if (v27 == *(v26 + 1) + 48 * *v26)
    {
      goto LABEL_43;
    }
  }

LABEL_48:
  v35 = 0;
  return v35 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v49), re::TypeInfo::TypeInfo(v47, v50), v47[12] != 1) || !re::TypeInfo::isInteger(v47))
  {
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
LABEL_45:
    v35 = *(a1 + 64) ^ 1;
    return v35 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v49);
  re::TypeInfo::TypeInfo(v47, v50);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v49);
  re::TypeInfo::TypeInfo(v46, v50);
  re::TypeInfo::TypeInfo(v44, this);
  v18 = (*(*a1 + 80))(a1, v47);
  if (!v18)
  {
    v42 = re::TypeInfo::name(v47)[1];
    goto LABEL_48;
  }

  v19 = v18;
  v20 = *(v45 + 104);
  re::TypeInfo::TypeInfo(&v49, v44);
  v20(a4, &v49, v17);
  {
    goto LABEL_48;
  }

  v26 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v26 || !*v26)
  {
LABEL_43:
    if (*(a1 + 64))
    {
      goto LABEL_48;
    }

    v34 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v34 - 16);
    goto LABEL_45;
  }

  v27 = *(v26 + 1);
  while (1)
  {
    if ((*(v27 + 22) & 0x1000) != 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = *(v27 + 8);
    }

    if ((*(v27 + 22) & 0x1000) != 0)
    {
      v29 = 21 - *(v27 + 21);
    }

    else
    {
      v29 = *v27;
    }

    v43 = 0;
    v30 = v28;
    if (v29)
    {
      v31 = v29;
      v30 = v28;
      while (*v30 == 48)
      {
        ++v30;
        if (!--v31)
        {
          goto LABEL_42;
        }
      }
    }

    v32 = &v28[v29];
    if (v30 == v32)
    {
      goto LABEL_42;
    }

    if (*v30 - 48 <= 9)
    {
      v30 = std::__itoa::__traits<unsigned char>::__read[abi:nn200100](v30, v32, &v49, &v48);
      if (v30 == v32 || *v30 - 48 > 9)
      {
        if (v49 > 0xFF || 255 - v49 < v48)
        {
          if (v30 != v32)
          {
            goto LABEL_37;
          }

          goto LABEL_42;
        }

        v43 = v48 + v49;
      }

      else
      {
LABEL_37:
        while (*v30 - 48 <= 9)
        {
          if (++v30 == v32)
          {
            v30 = v32;
            break;
          }
        }
      }
    }

    if (v32 != v30)
    {
      break;
    }

LABEL_42:
    v33 = (*(v45 + 112))(a4, v44, *(a1 + 48), &v43);
    v19(a1, v28, 0, v33, v47, v46, 0);
    v27 += 48;
    if (v27 == *(v26 + 1) + 48 * *v26)
    {
      goto LABEL_43;
    }
  }

LABEL_48:
  v35 = 0;
  return v35 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v56), re::TypeInfo::TypeInfo(v54, v57), v54[12] != 1) || !re::TypeInfo::isInteger(v54))
  {
    goto LABEL_61;
  }

LABEL_13:
  if (a7)
  {
LABEL_64:
    v46 = *(a1 + 64) ^ 1;
    return v46 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v56);
  re::TypeInfo::TypeInfo(v54, v57);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v56);
  re::TypeInfo::TypeInfo(v53, v57);
  re::TypeInfo::TypeInfo(v51, this);
  v18 = (*(*a1 + 80))(a1, v54);
  if (!v18)
  {
    v49 = re::TypeInfo::name(v54)[1];
    goto LABEL_61;
  }

  v19 = v18;
  v20 = *(v52 + 104);
  re::TypeInfo::TypeInfo(&v56, v51);
  v20(a4, &v56, v17);
  {
    goto LABEL_61;
  }

  v26 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v26 || !*v26)
  {
LABEL_62:
    if (*(a1 + 64))
    {
      goto LABEL_61;
    }

    v47 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v47 - 16);
    goto LABEL_64;
  }

  v27 = *(v26 + 1);
  while (1)
  {
    if ((*(v27 + 11) & 0x1000) != 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = *(v27 + 1);
    }

    if ((*(v27 + 11) & 0x1000) != 0)
    {
      v29 = 21 - v27[21];
    }

    else
    {
      v29 = *v27;
    }

    v50 = 0;
    if (v29)
    {
      v30 = *v28 == 45;
    }

    else
    {
      v30 = 0;
    }

    v31 = v29;
    v32 = &v28[v29];
    v33 = v30;
    v34 = &v28[v30];
    if (v31 == v30)
    {
      v35 = &v28[v30];
    }

    else
    {
      v38 = v31 - v30;
      v35 = v34;
      while (*v35 == 48)
      {
        ++v35;
        if (!--v38)
        {
          goto LABEL_42;
        }
      }
    }

    if (v35 == v32)
    {
LABEL_42:
      v35 = v32;
LABEL_43:
      if (v35 != v34)
      {
        v39 = 0;
        if (v33)
        {
LABEL_45:
          v39 = -v39;
        }

LABEL_46:
        v50 = v39;
        goto LABEL_51;
      }

      v35 = v28;
      goto LABEL_51;
    }

    if (*v35 - 48 >= 0xA)
    {
      goto LABEL_43;
    }

    v35 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v35, v32, &v56, &v55);
    if (v35 == v32)
    {
      v37 = v55;
      v36 = v56;
      if (__CFADD__(v56, v55))
      {
LABEL_50:
        v35 = v32;
        goto LABEL_51;
      }
    }

    else if (*v35 - 48 <= 9 || (v37 = v55, v36 = v56, __CFADD__(v56, v55)))
    {
      while (*v35 - 48 <= 9)
      {
        if (++v35 == v32)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_51;
    }

    v39 = v36 + v37;
    if (v33)
    {
      if (v39 <= 0x8000000000000000)
      {
        goto LABEL_45;
      }
    }

    else if ((v39 & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_51:
    if (v32 != v35)
    {
      break;
    }

    v40 = (*(v52 + 112))(a4, v51, *(a1 + 48), &v50);
    v19(a1, v28, 0, v40, v54, v53, 0);
    v27 += 48;
    if (v27 == (*(v26 + 1) + 48 * *v26))
    {
      goto LABEL_62;
    }
  }

LABEL_61:
  v46 = 0;
  return v46 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v56), re::TypeInfo::TypeInfo(v54, v57), v54[12] != 1) || !re::TypeInfo::isInteger(v54))
  {
    goto LABEL_61;
  }

LABEL_13:
  if (a7)
  {
LABEL_64:
    v46 = *(a1 + 64) ^ 1;
    return v46 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v56);
  re::TypeInfo::TypeInfo(v54, v57);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v56);
  re::TypeInfo::TypeInfo(v53, v57);
  re::TypeInfo::TypeInfo(v51, this);
  v18 = (*(*a1 + 80))(a1, v54);
  if (!v18)
  {
    v49 = re::TypeInfo::name(v54)[1];
    goto LABEL_61;
  }

  v19 = v18;
  v20 = *(v52 + 104);
  re::TypeInfo::TypeInfo(&v56, v51);
  v20(a4, &v56, v17);
  {
    goto LABEL_61;
  }

  v26 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v26 || !*v26)
  {
LABEL_62:
    if (*(a1 + 64))
    {
      goto LABEL_61;
    }

    v47 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v47 - 16);
    goto LABEL_64;
  }

  v27 = *(v26 + 1);
  while (1)
  {
    if ((*(v27 + 11) & 0x1000) != 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = *(v27 + 1);
    }

    if ((*(v27 + 11) & 0x1000) != 0)
    {
      v29 = 21 - v27[21];
    }

    else
    {
      v29 = *v27;
    }

    v50 = 0;
    if (v29)
    {
      v30 = *v28 == 45;
    }

    else
    {
      v30 = 0;
    }

    v31 = v29;
    v32 = &v28[v29];
    v33 = v30;
    v34 = &v28[v30];
    if (v31 == v30)
    {
      v35 = &v28[v30];
    }

    else
    {
      v38 = v31 - v30;
      v35 = v34;
      while (*v35 == 48)
      {
        ++v35;
        if (!--v38)
        {
          goto LABEL_42;
        }
      }
    }

    if (v35 == v32)
    {
LABEL_42:
      v35 = v32;
LABEL_43:
      if (v35 != v34)
      {
        v39 = 0;
        if (v33)
        {
LABEL_45:
          v39 = -v39;
        }

LABEL_46:
        v50 = v39;
        goto LABEL_51;
      }

      v35 = v28;
      goto LABEL_51;
    }

    if (*v35 - 48 >= 0xA)
    {
      goto LABEL_43;
    }

    v35 = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](v35, v32, &v56, &v55);
    if (v35 == v32)
    {
      v37 = v55;
      v36 = v56;
      if (__CFADD__(v56, v55))
      {
LABEL_50:
        v35 = v32;
        goto LABEL_51;
      }
    }

    else if (*v35 - 48 <= 9 || (v37 = v55, v36 = v56, __CFADD__(v56, v55)))
    {
      while (*v35 - 48 <= 9)
      {
        if (++v35 == v32)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_51;
    }

    v39 = v36 + v37;
    if (v33)
    {
      if (v39 <= 0x80000000)
      {
        goto LABEL_45;
      }
    }

    else if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_51:
    if (v32 != v35)
    {
      break;
    }

    v40 = (*(v52 + 112))(a4, v51, *(a1 + 48), &v50);
    v19(a1, v28, 0, v40, v54, v53, 0);
    v27 += 48;
    if (v27 == (*(v26 + 1) + 48 * *v26))
    {
      goto LABEL_62;
    }
  }

LABEL_61:
  v46 = 0;
  return v46 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v55), re::TypeInfo::TypeInfo(v53, v56), v53[12] != 1) || !re::TypeInfo::isInteger(v53))
  {
    goto LABEL_61;
  }

LABEL_13:
  if (a7)
  {
LABEL_58:
    v41 = *(a1 + 64) ^ 1;
    return v41 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v55);
  re::TypeInfo::TypeInfo(v53, v56);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v55);
  re::TypeInfo::TypeInfo(v52, v56);
  re::TypeInfo::TypeInfo(v50, this);
  v18 = (*(*a1 + 80))(a1, v53);
  if (!v18)
  {
    v48 = re::TypeInfo::name(v53)[1];
    goto LABEL_61;
  }

  v19 = v18;
  v20 = *(v51 + 104);
  re::TypeInfo::TypeInfo(&v55, v50);
  v20(a4, &v55, v17);
  {
    goto LABEL_61;
  }

  v26 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v26 || !*v26)
  {
LABEL_56:
    if (*(a1 + 64))
    {
      goto LABEL_61;
    }

    v40 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v40 - 16);
    goto LABEL_58;
  }

  v27 = *(v26 + 1);
  while (1)
  {
    if ((*(v27 + 11) & 0x1000) != 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = *(v27 + 1);
    }

    if ((*(v27 + 11) & 0x1000) != 0)
    {
      v29 = 21 - v27[21];
    }

    else
    {
      v29 = *v27;
    }

    v49 = 0;
    if (v29)
    {
      v30 = *v28 == 45;
    }

    else
    {
      v30 = 0;
    }

    v31 = v29;
    v32 = &v28[v29];
    v33 = v30;
    v34 = &v28[v30];
    if (v31 == v30)
    {
      v35 = &v28[v30];
    }

    else
    {
      v37 = v31 - v30;
      v35 = v34;
      while (*v35 == 48)
      {
        ++v35;
        if (!--v37)
        {
          goto LABEL_42;
        }
      }
    }

    if (v35 == v32)
    {
LABEL_42:
      v35 = v32;
LABEL_43:
      if (v35 == v34)
      {
        v35 = v28;
        goto LABEL_54;
      }

      v36 = 0;
      v38 = 0;
      if (v33)
      {
LABEL_45:
        v49 = -v36;
        goto LABEL_54;
      }

LABEL_49:
      v49 = v38;
      goto LABEL_54;
    }

    if (*v35 - 48 >= 0xA)
    {
      goto LABEL_43;
    }

    v35 = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](v35, v32, &v55, &v54);
    if (v35 != v32 && *v35 - 48 <= 9)
    {
      goto LABEL_51;
    }

    if (HIWORD(v55) || 0xFFFF - v55 < v54)
    {
      while (1)
      {
        if (v35 == v32)
        {
          v35 = v32;
          goto LABEL_54;
        }

LABEL_51:
        if (*v35 - 48 > 9)
        {
          goto LABEL_54;
        }

        ++v35;
      }
    }

    v36 = v54 + v55;
    if ((v33 & 1) == 0)
    {
      if (((v54 + v55) & 0x8000) != 0)
      {
        goto LABEL_54;
      }

      v38 = v54 + v55;
      goto LABEL_49;
    }

    if ((v54 + v55) <= 0x8000u)
    {
      goto LABEL_45;
    }

LABEL_54:
    if (v32 != v35)
    {
      break;
    }

    v39 = (*(v51 + 112))(a4, v50, *(a1 + 48), &v49);
    v19(a1, v28, 0, v39, v53, v52, 0);
    v27 += 48;
    if (v27 == (*(v26 + 1) + 48 * *v26))
    {
      goto LABEL_56;
    }
  }

LABEL_61:
  v41 = 0;
  return v41 & 1;
}

uint64_t re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

  re::TypeRegistry::typeInfo(v13, v14[10], &v47);
  re::TypeInfo::TypeInfo(v46, v48);
  v19 = re::TypeInfo::name(v46);
  if (*v19 >> 1 != 0x22C6ED80D0CLL || (v20 = v19[1], v20 != "StringID") && strcmp(v20, "StringID"))
  {
LABEL_29:
    v26 = 0;
    return v26 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_27:
    v26 = *(a1 + 64) ^ 1;
    return v26 & 1;
  }

  v22 = *(a1 + 48);
  v21 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v46, v48);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v45, v48);
  re::TypeInfo::TypeInfo(v43, this);
  v23 = (*(*a1 + 80))(a1, v46);
  if (!v23)
  {
    v36 = re::TypeInfo::name(v46);
    goto LABEL_29;
  }

  v24 = v23;
  v26 = 0;
  if (v25)
  {
    v27 = *(v44 + 104);
    re::TypeInfo::TypeInfo(&v47, v43);
    v27(a4, &v47, v22);
    v28 = (*(*v21 + 32))(v21, 32, 8);
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    *v28 = v22;
    *(v28 + 1) = 0;
    re::DynamicString::setCapacity(v28, 0);
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

        v32 = strlen(v31);
        v47 = v31;
        v48[0] = v32;
        re::DynamicString::operator=(v28, &v47);
        v33 = (*(v44 + 112))(a4, v43, *(a1 + 48), v28);
        v24(a1, v31, 0, v33, v46, v45, 0);
        v30 += 48;
      }

      while (v30 != *(v29 + 1) + 48 * *v29);
    }

    if ((*(a1 + 64) & 1) == 0)
    {
      v34 = *(a1 + 152) + 48 * *(a1 + 136);
      ++*(v34 - 16);
    }

    v35 = re::DynamicString::deinit(v28);
    (*(*v21 + 40))(v21, v28, v35);
    goto LABEL_27;
  }

  return v26 & 1;
}

uint64_t re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

  re::TypeRegistry::typeInfo(v13, v14[10], &v52);
  re::TypeInfo::TypeInfo(v51, v53);
  v19 = re::TypeInfo::name(v51);
  if (*v19 >> 1 != 0x134375A94D9F7110 || (v20 = v19[1], v20 != "DynamicString") && strcmp(v20, "DynamicString"))
  {
LABEL_35:
    v21 = 0;
    return v21 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_15:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v22 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v52);
  re::TypeInfo::TypeInfo(v51, v53);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v52);
  re::TypeInfo::TypeInfo(v50, v53);
  re::TypeInfo::TypeInfo(v48, this);
  v23 = (*(*a1 + 80))(a1, v51);
  if (!v23)
  {
    v39 = re::TypeInfo::name(v51);
    goto LABEL_35;
  }

  v24 = v23;
  v21 = 0;
  if (v25)
  {
    v26 = *(v49 + 104);
    re::TypeInfo::TypeInfo(&v52, v48);
    v27 = v26(a4, &v52, v22);
    v52 = 0;
    v53[0] = &str_67;
    v28 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
    if (v28 && *v28)
    {
      v29 = *(v28 + 1);
      do
      {
        if ((*(v29 + 22) & 0x1000) != 0)
        {
          v30 = v29;
        }

        else
        {
          v30 = *(v29 + 8);
        }

        v46 = 0;
        v47 = &str_67;
        v32 = v46;
        v33 = v47;
        v46 = 0;
        v47 = &str_67;
        v34 = v52;
        v35 = v53[0];
        v52 = v32;
        v53[0] = v33;
        if (v34)
        {
          if (v46)
          {
            if (v46)
            {
            }
          }
        }

        v37 = (*(v49 + 112))(a4, v48, *(a1 + 48), &v52);
        v27 = v24(a1, v30, 0, v37, v51, v50, 0);
        v29 += 48;
      }

      while (v29 != *(v28 + 1) + 48 * *v28);
    }

    if ((*(a1 + 64) & 1) == 0)
    {
      v38 = *(a1 + 152) + 48 * *(a1 + 136);
      ++*(v38 - 16);
    }

    if (v52)
    {
      if (v52)
      {
      }
    }

    goto LABEL_15;
  }

  return v21 & 1;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(uint64_t a1, char *a2, void *a3)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  if (result)
  {
    if (*(result + 11) == 4)
    {
      v9 = *result;
      *a3 = v9;
      LOBYTE(v10) = 6;
      DWORD1(v10) = 0;
      *(&v10 + 1) = a2;
      v11 = 0;
      v12 = v9;
      v13 = 0;
      v14 = result;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(uint64_t a1, int a2)
{
  if (*(a1 + 40))
  {
    return;
  }

  v3 = *(a1 + 128);
  v4 = *(a1 + 112);
  v5 = v3 + 48 * v4;
  v6 = *(v5 - 8);
  if (!v6)
  {
    v8 = 0;
LABEL_6:
    if (*(v8 + 22) == 3)
    {
      LOBYTE(v10[0]) = 7;
      DWORD1(v10[0]) = a2;
      *(&v10[0] + 1) = "entry";
      v10[1] = xmmword_1E3054780;
      v11 = 0;
      v12 = v8;
    }

    else
    {
    }

    return;
  }

  v7 = *(v5 - 16);
  if (*v6 > v7)
  {
    v8 = *(v6 + 8) + 24 * v7;
    goto LABEL_6;
  }

  if (v14)
  {
    v9 = *&v15[7];
  }

  else
  {
    v9 = v15;
  }

  re::DynamicString::format("Failed to deserialize %s. Index out of range.", v10, v9);
  if (*&v10[0] && (BYTE8(v10[0]) & 1) != 0)
  {
    (*(**&v10[0] + 40))();
  }

  if (v13 && (v14 & 1) != 0)
  {
    (*(*v13 + 40))();
  }
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == 2)
    {
      v4 = *(v1 + 128) + 48 * *(v1 + 112);
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

      re::DynamicString::format("Failed to deserialize dictionary entry %s. Expected 2 objects (key+value). Actual number of objects: %lld.", &v9, v5, *(*(v1 + 128) + 48 * *(v1 + 112) - 16));
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

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionary(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == *(v2 + 48 * v3 - 24))
    {
      v4 = *(v1 + 128) + 48 * *(v1 + 112);
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

      v6 = *(v1 + 128) + 48 * *(v1 + 112);
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

uint64_t re::serializeDynamicString<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, void *a4, re *this, re::TypeInfo *a6, int a7)
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
    v35 = 0;
    {
      if (!v35)
      {
LABEL_33:
        v33 = *(a1 + 64) ^ 1;
        return v33 & 1;
      }

      v19 = a1 + 24;
      v20 = 0;
      v21 = 1;
LABEL_32:
      goto LABEL_33;
    }
  }

  else
  {
    v22 = a4[1];
    if (v22)
    {
      v23 = v22 >> 1;
    }

    else
    {
      v23 = v22 >> 1;
    }

    v35 = v23;
    {
      v24 = v35;
      v25 = *(a1 + 24);
      v26 = (*(**(v25 + 8) + 24))(*(v25 + 8));
      if (v24 <= (*(**(v25 + 8) + 32))(*(v25 + 8)) + v26)
      {
        if (!*a4)
        {
          *a4 = *(a1 + 48);
          re::DynamicString::setCapacity(a4, v24 + 1);
        }

        re::DynamicString::resize(a4, v24, 0);
        if (!v24)
        {
          goto LABEL_33;
        }

        if (a4[1])
        {
          v20 = a4[2];
        }

        else
        {
          v20 = a4 + 9;
        }

        v19 = a1 + 24;
        v21 = 0;
        goto LABEL_32;
      }

      v27 = *(a1 + 24);
      (*(**(v27 + 8) + 24))(*(v27 + 8));
      (*(**(v27 + 8) + 32))(*(v27 + 8));
    }
  }

LABEL_24:
  v33 = 0;
  return v33 & 1;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Deserializer(uint64_t a1)
{
  *a1 = &unk_1F5D180B8;
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

uint64_t re::internal::serializeMembers<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, uint64_t a2, uint64_t *a3, const re::TypeInfo *a4, uint64_t a5)
{
  v56 = *MEMORY[0x1E69E9840];
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
    re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v50);
    re::TypeRegistry::typeInfo(*a4, *(*(a4 + 2) + 80), v48);
    if (v48[0] == 1)
    {
      if ((v50[0] & 1) == 0)
      {
        v33 = re::TypeInfo::name(v49)[1];
        re::TypeInfo::name(a3);
      }
    }

    re::TypeMemberCollection::TypeMemberCollection(v47, *a3, a3[2]);
    result = re::TypeMemberCollection::TypeMemberCollection(v45, *a4, *(a4 + 2));
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
          v16 = *(v44 + 16);
          if (strlen(v16) >= 3 && *v16 == 109)
          {
            v16 += 2 * (*(v16 + 1) == 95);
          }

          v17 = *(v44 + 32);
          v18 = *(*a4 + 856);
          if (!v18 || (v18 = re::internal::TypeTranslationTable::translateMember(v18, v43), v18 == -1))
          {
            v22 = *re::foundationSerializationLogObjects(v18);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = v22;
              v24 = re::TypeInfo::name(a4)[1];
              *buf = 136315394;
              v53 = v24;
              v54 = 2080;
              v55 = v16;
              _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_INFO, "Skipping unknown member %s.%s.", buf, 0x16u);
            }

            v25 = *(a1 + 272);
            re::TypeRegistry::typeInfo(v43[0], *v44, buf);
            re::TypeInfo::TypeInfo(v41, &v53 + 4);
            result = re::internal::translateType(v25, v41, buf);
            if ((*(a1 + 64) & 1) == 0)
            {
              result = (*(*a1 + 72))(a1, v16, v17, 0, buf, buf, 1);
            }
          }

          else
          {
            re::TypeMemberCollection::operator[](v47, v18, v41);
            v19 = *(v42 + 24);
            re::TypeRegistry::typeInfo(v41[0], *v42, buf);
            re::TypeInfo::TypeInfo(v40, &v53 + 4);
            re::TypeRegistry::typeInfo(v43[0], *v44, buf);
            re::TypeInfo::TypeInfo(v39, &v53 + 4);
            if (*(a1 + 64) == 1 || (result = (*(*a1 + 72))(a1, v16, v17, a2 + v19, v40, v39, a5), (result & 1) == 0))
            {
              result = re::TypeInfo::renamedObjectMembers(a4);
              if (v20)
              {
                v21 = (result + 16);
                while (i != *v21)
                {
                  v21 += 6;
                  if (!--v20)
                  {
                    goto LABEL_36;
                  }
                }

                v26 = *(v21 - 1);
                re::TypeRegistry::typeInfo(v41[0], *v42, buf);
                re::TypeInfo::TypeInfo(v40, &v53 + 4);
                re::TypeRegistry::typeInfo(v43[0], *v44, buf);
                result = re::TypeInfo::TypeInfo(v39, &v53 + 4);
                if ((*(a1 + 64) & 1) == 0)
                {
                  result = (*(*a1 + 72))(a1, v26, v17, a2 + v19, v40, v39, a5);
                }
              }
            }
          }
        }

LABEL_36:
        ;
      }
    }
  }

  else
  {
    v27 = re::TypeInfo::name(a3)[1];
    re::TypeInfo::name(a4);
  }

  return result;
}

__n128 re::DynamicOverflowArray<re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::add(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = v4 + 40 * *(a1 + 8);
  result = *a2;
  v7 = *(a2 + 16);
  *(v5 + 32) = *(a2 + 32);
  *v5 = result;
  *(v5 + 16) = v7;
  ++*(a1 + 8);
  *(a1 + 16) += 2;
  return result;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Deserializer(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

uint64_t *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::error(uint64_t *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginField(uint64_t a1, int a2, uint64_t a3)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginObject(uint64_t a1)
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
  v4 = *(v3 - 40);
  {
    v7 = "";
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    return 1;
  }

  return result;
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endObject(_anonymous_namespace_ *result)
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
    v6 = *(v5 + 152) + 48 * *(v5 + 136);
    ++*(v6 - 16);
  }

  return result;
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginArray(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endArray(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
  }

  return v2 == 0;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionary(uint64_t a1, void *a2, int a3)
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
  v17 = *(v15 - 40);
  if (a3)
  {
    {
      v18 = *(*(v16 + 152) + 48 * *(v16 + 136) - 8);
      v19 = *(v18 + 1);
      *(v15 - 24) = v19;
      *(v15 - 16) = v19 + 48 * *v18;
      *(v15 - 8) = 1;
      *a2 = *v18;
    }
  }

  else
  {
  }

  return 1;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryEntry(uint64_t a1)
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
  if (*(v2 - 8) == 1)
  {
    *(v2 - 32) = -1;
    v3 = *(v2 - 24);
    if ((v3[23] & 0x10) == 0)
    {
      v3 = *(v3 + 1);
    }
  }

  else
  {
    *(v2 - 32) = 0;
    v3 = "key";
  }

  *(v2 - 40) = v3;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryValue(uint64_t result)
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

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionaryEntry(_anonymous_namespace_ *result)
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
  }

  return result;
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionary(uint64_t a1, void *a2)
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

    v5 = *(a1 + 8);
    if (*(v4 + 40 * *(a1 + 40) - 8) == 1)
    {
      if ((*(v5 + 64) & 1) == 0)
      {
        v6 = *(v5 + 152) + 48 * *(v5 + 136);
        ++*(v6 - 16);
      }
    }

    else
    {
    }

    v7 = *(a1 + 48);
    --*(a1 + 40);
    *(a1 + 48) = v7 + 2;
  }

  return v2 == 0;
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginData(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  if (*(v3 + 64))
  {
    return 0;
  }

  v6 = *(v4 + 40 * *(a1 + 40) - 40);
  if (result)
  {
    v7 = result;
    if ((*(result + 11) & 0x400) != 0)
    {
      if ((*(result + 11) & 0x1000) != 0)
      {
        v8 = result;
      }

      else
      {
        v8 = *(result + 1);
      }

      *(v3 + 232) = 0;
      ++*(v3 + 240);
      v9 = strlen(v8);
      if ((re::EncoderHelper::decodeBase64(v8, v9, v3 + 216) & 1) == 0)
      {
        if (v18)
        {
          v11 = *&v19[7];
        }

        else
        {
          v11 = v19;
        }

        re::DynamicString::format("Failed to deserialize %s. Failed to decode data from Base64-encoded string.", &v12, v11);
        if (v12 && (BYTE8(v12) & 1) != 0)
        {
          (*(*v12 + 40))();
        }

        if (v17)
        {
          if (v18)
          {
            (*(*v17 + 40))();
          }
        }

        return 0;
      }

      v10 = *(v3 + 232);
    }

    else
    {
      if (*(result + 11))
      {
        return 0;
      }

      v10 = 0;
    }

    *a2 = v10;
    LOBYTE(v12) = 4;
    DWORD1(v12) = 0;
    *(&v12 + 1) = v6;
    v13 = 0;
    v14 = v10;
    v15 = 0;
    v16 = v7;
    return 1;
  }

  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginOptional(uint64_t a1)
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

  return v3;
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginString(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = v3 + 40 * *(a1 + 40);
  v5 = *(v4 - 40);
  if (*(v4 - 8) == 1 && (*(v4 - 32) & 0x80000000) != 0)
  {
    *a2 = strlen(v5);
    return 1;
  }

  else
  {
    v7 = (*(a1 + 8) + 24);
  }
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, BOOL *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _BYTE *a2)
{
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
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = *v11 == 45;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = &v11[v20];
    if (v12 == v20)
    {
      result = &v11[v20];
    }

    else
    {
      v24 = v12 - v20;
      result = v22;
      while (*result == 48)
      {
        ++result;
        if (!--v24)
        {
          goto LABEL_31;
        }
      }
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned char>::__read[abi:nn200100](result, v19, &v28, &v27);
        if (result != v19 && *result - 48 <= 9 || v28 > 0xFF || 255 - v28 < v27)
        {
        }

        v23 = v27 + v28;
        if (v21)
        {
          if ((v27 + v28) > 0x80u)
          {
          }

          goto LABEL_33;
        }

        if ((v23 & 0x80) == 0)
        {
          LOBYTE(v25) = v27 + v28;
          goto LABEL_34;
        }
      }

      v19 = result;
    }

LABEL_31:
    if (v19 != v22)
    {
      v23 = 0;
      LOBYTE(v25) = 0;
      if ((v21 & 1) == 0)
      {
LABEL_34:
        *a2 = v25;
        return result;
      }

LABEL_33:
      v25 = -v23;
      goto LABEL_34;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

{
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
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = v12;
      result = *(v6 - 40);
      while (*result == 48)
      {
        ++result;
        if (!--v20)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      result = *(v6 - 40);
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned char>::__read[abi:nn200100](result, v19, &v23, &v22);
        if ((result == v19 || *result - 48 > 9) && v23 <= 0xFF && 255 - v23 >= v22)
        {
          *a2 = v22 + v23;
          return result;
        }
      }

      v19 = result;
    }

LABEL_26:
    if (v19 != v11)
    {
      *a2 = 0;
      return result;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _WORD *a2)
{
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
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = *v11 == 45;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = &v11[v20];
    if (v12 == v20)
    {
      result = &v11[v20];
    }

    else
    {
      v24 = v12 - v20;
      result = v22;
      while (*result == 48)
      {
        ++result;
        if (!--v24)
        {
          goto LABEL_31;
        }
      }
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](result, v19, &v28, &v27);
        if (result != v19 && *result - 48 <= 9 || HIWORD(v28) || 0xFFFF - v28 < v27)
        {
        }

        v23 = v27 + v28;
        if (v21)
        {
          if ((v27 + v28) > 0x8000u)
          {
          }

          goto LABEL_33;
        }

        if ((v23 & 0x8000) == 0)
        {
          LOWORD(v25) = v27 + v28;
          goto LABEL_34;
        }
      }

      v19 = result;
    }

LABEL_31:
    if (v19 != v22)
    {
      v23 = 0;
      LOWORD(v25) = 0;
      if ((v21 & 1) == 0)
      {
LABEL_34:
        *a2 = v25;
        return result;
      }

LABEL_33:
      v25 = -v23;
      goto LABEL_34;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

{
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
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = v12;
      result = *(v6 - 40);
      while (*result == 48)
      {
        ++result;
        if (!--v20)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      result = *(v6 - 40);
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](result, v19, &v23, &v22);
        if ((result == v19 || *result - 48 > 9) && !HIWORD(v23) && 0xFFFF - v23 >= v22)
        {
          *a2 = v22 + v23;
          return result;
        }
      }

      v19 = result;
    }

LABEL_26:
    if (v19 != v11)
    {
      *a2 = 0;
      return result;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, unsigned int *a2)
{
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
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = *v11 == 45;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = &v11[v20];
    if (v12 == v20)
    {
      result = &v11[v20];
    }

    else
    {
      v24 = v12 - v20;
      result = v22;
      while (*result == 48)
      {
        ++result;
        if (!--v24)
        {
          goto LABEL_30;
        }
      }
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](result, v19, &v27, &v26);
        if (result != v19 && *result - 48 <= 9 || __CFADD__(v27, v26))
        {
        }

        v23 = v27 + v26;
        if (v21)
        {
          if (v23 > 0x80000000)
          {
          }

          goto LABEL_32;
        }

        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_33;
        }
      }

      v19 = result;
    }

LABEL_30:
    if (v19 != v22)
    {
      v23 = 0;
      if ((v21 & 1) == 0)
      {
LABEL_33:
        *a2 = v23;
        return result;
      }

LABEL_32:
      v23 = -v23;
      goto LABEL_33;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _DWORD *a2)
{
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
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = v12;
      result = *(v6 - 40);
      while (*result == 48)
      {
        ++result;
        if (!--v20)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      result = *(v6 - 40);
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](result, v19, &v23, &v22);
        if ((result == v19 || *result - 48 > 9) && !__CFADD__(v23, v22))
        {
          *a2 = v23 + v22;
          return result;
        }
      }

      v19 = result;
    }

LABEL_25:
    if (v19 != v11)
    {
      *a2 = 0;
      return result;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, uint64_t *a2)
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
  }

  *a2 = v7;
  return result;
}

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, unint64_t *a2)
{
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
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = *v11 == 45;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = &v11[v20];
    if (v12 == v20)
    {
      result = &v11[v20];
    }

    else
    {
      v24 = v12 - v20;
      result = v22;
      while (*result == 48)
      {
        ++result;
        if (!--v24)
        {
          goto LABEL_30;
        }
      }
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](result, v19, &v26, &v25);
        if (result != v19 && *result - 48 <= 9 || __CFADD__(v26, v25))
        {
        }

        v23 = v26 + v25;
        if (v21)
        {
          if (v23 > 0x8000000000000000)
          {
          }

          goto LABEL_32;
        }

        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }
      }

      v19 = result;
    }

LABEL_30:
    if (v19 != v22)
    {
      v23 = 0;
      if ((v21 & 1) == 0)
      {
LABEL_33:
        *a2 = v23;
        return result;
      }

LABEL_32:
      v23 = -v23;
      goto LABEL_33;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

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

    v8 = *(v7 + 40 * *(a1 + 40) - 40);
  }

  return result;
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, float *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, double *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializeString(uint64_t a1, void *__dst, size_t __n)
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
    }

    v8 = (*(a1 + 8) + 24);
  }

  return result;
}

void *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializeData(void *result, void *__dst)
{
  v2 = result[1];
  if ((*(v2 + 64) & 1) == 0)
  {
    v3 = result;
    v4 = *(*(v2 + 152) + 48 * *(v2 + 136) - 24);
    result = memcpy(__dst, *(v2 + 248), *(v2 + 232));
    v5 = *(v2 + 152) + 48 * *(v2 + 136);
    *(v5 - 16) += v4;
    v6 = v3[1];
    if ((*(v6 + 64) & 1) == 0)
    {
      v7 = *(v6 + 152);
      v8 = *(v6 + 136);
      if (*(v7 + 48 * v8 - 16) == *(v7 + 48 * v8 - 24))
      {
        *(v6 + 232) = 0;
        ++*(v6 + 240);
        v9 = *(v6 + 152) + 48 * *(v6 + 136);
        ++*(v9 - 16);
      }

      else
      {
        if (v13)
        {
          v10 = *&v14[7];
        }

        else
        {
          v10 = v14;
        }

        v11 = *(v6 + 152) + 48 * *(v6 + 136);
        re::DynamicString::format("Failed to serialize BLOB %s. Expected number of bytes: %lld. Actual number of bytes: %lld.", &v15, v10, *(v11 - 24), *(v11 - 16));
        if (v15 && (v16 & 1) != 0)
        {
          (*(*v15 + 40))();
        }

        result = v12;
        if (v12)
        {
          if (v13)
          {
            return (*(*v12 + 40))();
          }
        }
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v9 = v8 != 0;
  (*(**(a3 + 32) + 16))(*(a3 + 32), a1, a2, &v9);
}

_BYTE *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::read(uint64_t a1, uint64_t a2, re **this)
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

_anonymous_namespace_ *re::DynamicOverflowArray<re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (!*result)
  {
    v7 = *(v1 + 1);
    result = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::setCapacity(v1, v7 + 1);
    *(v1 + 4) += 2;
    return result;
  }

  v2 = *(result + 1);
  if (*(result + 16))
  {
    v4 = v2 + 1;
    if (v4 < 5)
    {
      return result;
    }

    v6 = 8;
    goto LABEL_12;
  }

  v3 = *(result + 3);
  v5 = v2 >= v3;
  v4 = v2 + 1;
  v5 = !v5 || v3 >= v4;
  if (!v5)
  {
    v6 = 2 * v3;
LABEL_12:
    if (v6 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v6;
    }

    return re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::setCapacity(result, v8);
  }

  return result;
}

uint64_t re::Encoder<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,anonymous namespace::LegacyInputStreamAdaptor>::setError(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  re::DynamicString::setCapacity(&v30, 0);
  v29 = &a9;
  re::DynamicString::vassignf(&v30, a3, &a9);
  if (v18)
  {
    v11 = *&v19[7];
  }

  else
  {
    v11 = v19;
  }

  if (v31)
  {
    v12 = v32;
  }

  else
  {
    v12 = &v31 + 1;
  }

  re::DynamicString::format("Failed to %s %s. Reason: %s", &v20, "deserialize", v11, v12);
  *&v24 = 400;
  *(&v24 + 1) = re::FoundationErrorCategory(void)::instance;
  v13 = v22;
  v27 = v22;
  v28 = v23;
  v14 = v20;
  v15 = v21;
  v25 = v20;
  v26 = v21;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, &v24);
  if (v14 && (v15 & 1) != 0)
  {
    (*(*v14 + 40))(v14, v13);
  }

  if (v17 && (v18 & 1) != 0)
  {
    (*(*v17 + 40))();
  }

  result = v30;
  if (v30)
  {
    if (v31)
    {
      return (*(*v30 + 40))();
    }
  }

  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<unsigned long long>(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v22[7] = v3;
  v22[8] = v4;
  if ((*(a1 + 8) & 0x80000000) == 0)
  {
    return 0;
  }

  v9 = *a1;
  v10 = strlen(*a1);
  v17 = &v9[v10];
  if (v10)
  {
    v18 = v10;
    v19 = v9;
    while (*v19 == 48)
    {
      ++v19;
      if (!--v18)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v19 = v9;
  }

  if (v19 == v17)
  {
LABEL_18:
    if (v17 != v9)
    {
      *a3 = 0;
      return 1;
    }

LABEL_20:
    return 1;
  }

  if (*v19 - 48 >= 0xA)
  {
    v17 = v19;
    goto LABEL_18;
  }

  v20 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v19, v17, v22, &v21);
  if (v20 != v17 && *v20 - 48 <= 9 || __CFADD__(v22[0], v21))
  {
    goto LABEL_20;
  }

  *a3 = v22[0] + v21;
  return 1;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(uint64_t a1, char *a2, int *a3)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = v3;
  v18 = v4;
  if (result)
  {
    v9 = result;
    v10 = *(result + 11);
    if (*(result + 11))
    {
      if (v10 != 3 || (*(result + 1) + 48 * *result) == rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::FindMember(result, "@ref"))
      {
        v10 = 2;
        v11 = 1;
      }

      else
      {
        v11 = 1;
        v10 = 1;
      }
    }

    else
    {
      v11 = *(result + 11);
    }

    *a3 = v10;
    LOBYTE(v12) = 9;
    DWORD1(v12) = 0;
    *(&v12 + 1) = a2;
    v13 = 0;
    v14 = v11;
    v15 = 0;
    v16 = v9;
    return 1;
  }

  return result;
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endPointer(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == *(v2 + 48 * v3 - 24))
    {
      v4 = *(v1 + 128) + 48 * *(v1 + 112);
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

      re::DynamicString::format("Failed to deserialize pointer %s. No value was provided.", &v9, v5);
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

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v21);
  if (v21[0] == 1)
  {
    re::TypeInfo::TypeInfo(v18, &v22);
    if (*(v19 + 96) || (re::TypeRegistry::typeInfo(v18[0], *(v19 + 80), v23), v23[0] == 1))
    {
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

uint64_t re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(uint64_t a1, const re::StringID *a2, uint64_t a3)
{
  result = re::TypeRegistry::typeID(*(a1 + 272), a2, &v7);
  if (v7)
  {
    v6 = v7;
  }

  return result;
}

unsigned int *re::serializeBool<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, BOOL *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
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
}

unsigned int *re::serializeChar<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
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
}

unsigned int *re::serializeI8<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
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
}

unsigned int *re::serializeI16<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _WORD *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
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
}

unsigned int *re::serializeI32<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
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
}

unsigned int *re::serializeI64<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unint64_t *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
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
}

unsigned int *re::serializeU8<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
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
}

unsigned int *re::serializeU16<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _WORD *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
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
}

unsigned int *re::serializeU32<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _DWORD *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
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
}

unsigned int *re::serializeU64<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, void *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
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
}

unsigned int *re::serializeFloat<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
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
}

unsigned int *re::serializeDouble<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, double *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
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
}

uint64_t re::serializeCString<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, const char **a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_23:
      goto LABEL_24;
    }

    v20 = **(this + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_23;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_23;
    }
  }

LABEL_4:
  if (!a7)
  {
    v40 = 2 * (*a4 != 0);
    {
LABEL_24:
      v19 = 0;
      return v19 & 1;
    }

    if (!v40)
    {
      if (*a4)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      goto LABEL_36;
    }

    if (v40 != 2)
    {
      if (v40 == 1)
      {
LABEL_17:
        goto LABEL_24;
      }

LABEL_36:
      if (*a4 && *(a1 + 64) == 1)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      goto LABEL_39;
    }

    if (*a4)
    {
      v24 = strlen(*a4);
    }

    else
    {
      v24 = 0;
    }

    v39 = v24;
    {
      goto LABEL_36;
    }

    v25 = *a4;
    v26 = v39;
    if (*a4 && v39 == v24)
    {
      if (!v39)
      {
LABEL_35:
        v25[v26] = 0;
        goto LABEL_36;
      }
    }

    else
    {
      if (v25)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      {
        goto LABEL_24;
      }

      if (((v26 == -1) << 63) >> 63 != (v26 == -1))
      {
        goto LABEL_24;
      }

      v25 = (*(**(a1 + 48) + 32))(*(a1 + 48), v26 + 1, 0);
      *a4 = v25;
      if (!v26)
      {
        goto LABEL_35;
      }
    }

    v25 = *a4;
    goto LABEL_35;
  }

  v40 = 0;
  v19 = 0;
  if (v13)
  {
    if (!v40)
    {
LABEL_12:
LABEL_39:
      v19 = *(a1 + 64) ^ 1;
      return v19 & 1;
    }

    if (v40 != 1)
    {
      v39 = 0;
      {
        if (v39)
        {
        }
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  return v19 & 1;
}

uint64_t re::serializeStringID<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _anonymous_namespace_ *a4, re *this, re::TypeInfo *a6, int a7)
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
    goto LABEL_26;
  }

LABEL_14:
  if (!a7)
  {
    v42 = 0;
    {
      goto LABEL_26;
    }

    v19 = v42;
    if (v42)
    {
      v20 = *(a1 + 24);
      v21 = (*(**(v20 + 8) + 24))(*(v20 + 8));
      if (v19 > (*(**(v20 + 8) + 32))(*(v20 + 8)) + v21)
      {
        v27 = *(a1 + 24);
        (*(**(v27 + 8) + 24))(*(v27 + 8));
        (*(**(v27 + 8) + 32))(*(v27 + 8));
        goto LABEL_26;
      }

      if (((v19 == -1) << 63) >> 63 != (v19 == -1))
      {
        goto LABEL_26;
      }

      v36 = (*(**(a1 + 56) + 32))(*(a1 + 56), v19 + 1, 0);
      v36[v19] = 0;
      v40 = 0;
      v41 = &str_67;
      v38 = re::StringID::operator=(a4, &v40);
      if (v40)
      {
        if (v40)
        {
        }
      }

      v34 = *(**(a1 + 56) + 40);
    }

    else
    {
      v40 = 0;
      v41 = &str_67;
      v33 = re::StringID::operator=(a4, &v40);
      if ((v40 & 1) == 0)
      {
LABEL_32:
        v35 = *(a1 + 64) ^ 1;
        return v35 & 1;
      }
    }

    v34();
    goto LABEL_32;
  }

  v40 = 0;
  {
    if (v40)
    {
    }

    goto LABEL_32;
  }

LABEL_26:
  v35 = 0;
  return v35 & 1;
}

uint64_t re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = v5 | 0xFFFFFFFF00000000;
  v8 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    *(result + 4) = v6;
    *(result + 16) = a3;
    ++*(a1 + 328);
  }

  else
  {
    ++*(a1 + 328);
    *(*(a1 + 304) + 24 * v8 + 16) = a3;
  }

  return result;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v41 = *MEMORY[0x1E69E9840];
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_17:
      goto LABEL_41;
    }

    v17 = **(this + 2);
    v18 = **(a6 + 2);
    if (v17 != v18)
    {
      goto LABEL_17;
    }

    v20 = WORD1(v17) == WORD1(v18);
    v19 = (v18 ^ v17) & 0xFFFFFF00000000;
    v20 = v20 && v19 == 0;
    if (!v20)
    {
      goto LABEL_17;
    }
  }

LABEL_4:
  if (!a7)
  {
    v13 = *this;
    v14 = **(this + 2);
    v37[0] = 0x258C98EAAF29A10ALL;
    v37[1] = "CallbackSerializerAttribute";
    v15 = re::TypeRegistry::typeID(v13, v37, buf);
    if (*buf && (v33 = *&buf[8], v34 = v14, LODWORD(v35) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v13 + 768, &v33)) != 0))
    {
      v16 = *v15;
    }

    else
    {
      v16 = 0;
    }

    if (v37[0])
    {
      if (v37[0])
      {
      }
    }

    v21 = *v16;
    v22 = *(a1 + 264);
    v37[0] = 0;
    {
      v23 = *(a1 + 56);
      v35 = 0;
      v36 = 0;
      v33 = v23;
      v34 = 0;
      re::DynamicString::setCapacity(&v33, 0);
      if (v37[0])
      {
        re::DynamicString::resize(&v33, v37[0], 0);
        if (v34)
        {
          v24 = v35;
        }

        else
        {
          v24 = &v34 + 1;
        }
      }

      if (v34)
      {
        v25 = v35;
      }

      else
      {
        v25 = &v34 + 1;
      }

      v26 = (*(v21 + 80))(*(a1 + 48), v22, v21, a4, v25);
      if ((v26 & 1) == 0)
      {
        v27 = *re::foundationSerializationLogObjects(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          if (v34)
          {
            v28 = v35;
          }

          else
          {
            v28 = &v34 + 1;
          }

          v29 = v27;
          v30 = re::TypeInfo::name(this)[1];
          *buf = 136315650;
          *&buf[4] = a2;
          *&buf[12] = 2080;
          *&buf[14] = v28;
          v39 = 2080;
          v40 = v30;
          _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_INFO, "Failed to parse %s: %s (type %s) using deserialization callback - skipping.", buf, 0x20u);
        }
      }

      if (v33 && (v34 & 1) != 0)
      {
        (*(*v33 + 40))();
      }

      goto LABEL_40;
    }

LABEL_41:
    v31 = 0;
    return v31 & 1;
  }

  v33 = 0;
  {
    goto LABEL_41;
  }

  if (v33)
  {
  }

LABEL_40:
  v31 = *(a1 + 64) ^ 1;
  return v31 & 1;
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
                *(v17 + 4) = *(v13 + 4);
                *(v17 + 16) = *(v13 + 16);
              }

              v13 += 24;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable(v24);
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

uint64_t re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString(uint64_t a1, char *a2, const re::TypeInfo *a3, char **a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_15:
      goto LABEL_16;
    }

    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 != v14)
    {
      goto LABEL_15;
    }

    v16 = WORD1(v13) == WORD1(v14);
    v15 = (v14 ^ v13) & 0xFFFFFF00000000;
    v16 = v16 && v15 == 0;
    if (!v16)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  v49 = 0;
  {
    if (v49 == 1)
    {
      v48 = 0;
      if ((*(a1 + 64) & 1) == 0)
      {
        v24 = v48;
        if (*(a1 + 408) <= v48)
        {
        }

        else
        {
          re::internal::SharedObjectGraph::typeID((a1 + 336), v48, &v44);
          if (v44 == *this)
          {
            v25 = **(this + 2);
            if (v45 == v25 && v46 == WORD1(v25) && ((v47 ^ HIDWORD(v25)) & 0xFFFFFF) == 0)
            {
              if ((a7 & 1) == 0)
              {
                if (*a4)
                {
                  v41 = *a4;
                  if (v41 != re::internal::SharedObjectGraph::object((a1 + 336), v24))
                  {
                    (*(**(a1 + 48) + 40))(*(a1 + 48), *a4);
                    *a4 = 0;
                  }
                }

                *a4 = re::internal::SharedObjectGraph::object((a1 + 336), v24);
                if (*(a1 + 336) == 1 && *(a1 + 337) == 1)
                {
                  re::internal::SharedObjectGraph::addChild((a1 + 336), *(*(a1 + 504) + 4 * *(a1 + 488) - 4), v24);
                }
              }

              goto LABEL_38;
            }
          }

          v26 = *(a1 + 272);
          re::internal::SharedObjectGraph::typeID((a1 + 336), v24, &v44);
          v42 = *(re::TypeRegistry::typeName(v26, &v44) + 1);
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
        v17 = *(a1 + 64) ^ 1;
        return v17 & 1;
      }

      if ((a7 & 1) == 0 && *a4)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      v44 = 0;
      {
        v37 = v44;
        if (((v44 == -1) << 63) >> 63 == (v44 == -1))
        {
          v38 = (*(**(a1 + 48) + 32))(*(a1 + 48), v44 + 1, 0);
          v39 = v38;
          if ((a7 & 1) == 0)
          {
            *a4 = v38;
          }

          if (v37)
          {
          }

          *(v39 + v37) = 0;
          v40 = **(this + 2);
          *&v43 = *this;
          *(&v43 + 1) = v40;
          re::internal::SharedObjectGraph::addObject(a1 + 336, v39, &v43);
          goto LABEL_38;
        }
      }
    }
  }

LABEL_16:
  v17 = 0;
  return v17 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer(uint64_t a1, char *a2, int a3, void **a4, re::TypeInfo *this, const re::TypeInfo *a6, int a7)
{
  v100 = *MEMORY[0x1E69E9840];
  isPointerToPolymorphicType = re::TypeInfo::isPointerToPolymorphicType(this);
  if (this == a6)
  {
    goto LABEL_4;
  }

  if (*this == *a6)
  {
    v25 = **(this + 2);
    v26 = **(a6 + 2);
    if (v25 == v26)
    {
      v28 = WORD1(v25) == WORD1(v26);
      v27 = (v26 ^ v25) & 0xFFFFFF00000000;
      v28 = v28 && v27 == 0;
      if (v28)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, v13))
  {
LABEL_4:
    v15 = 1;
    goto LABEL_5;
  }

  if (*(a6 + 12) != 9 || isPointerToPolymorphicType && (!re::TypeInfo::isPointerToPolymorphicType(a6) || (v29 = re::TypeInfo::name(this), v30 = re::TypeInfo::name(a6), !re::StringID::operator==(v29, v30))))
  {
    goto LABEL_28;
  }

  v15 = 0;
LABEL_5:
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &buf);
  re::TypeInfo::TypeInfo(v91, &buf + 8);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &buf);
  re::TypeInfo::TypeInfo(v89, &buf + 8);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v24 = *v92;
    v88[0] = v91[0];
    v88[1] = v24;
    if (!v91[0])
    {
      goto LABEL_8;
    }

LABEL_11:
    re::TypeRegistry::typeInfo(*this, v88, &buf);
    re::TypeInfo::TypeInfo(v86, &buf + 8);
    v85 = 0;
    {
      goto LABEL_28;
    }

    if (v85 != 1)
    {
      if (!v85)
      {
        if ((a7 & 1) == 0 && *a4)
        {
          re::TypeInfo::releaseInstance(v86, *a4, *(a1 + 48), *(a1 + 264));
          *a4 = 0;
        }

        goto LABEL_115;
      }

      if (isPointerToPolymorphicType)
      {
        {
          v43 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
          if (*v43)
          {
            v44 = *(v43 + 8);
            if ((*(v44 + 11) & 0x1000) != 0)
            {
              v45 = v44;
            }

            else
            {
              v45 = *(v44 + 1);
            }

            if (v45)
            {
              v46 = *v45;
              if (*v45)
              {
                v47 = v45[1];
                if (v47)
                {
                  v48 = (v45 + 2);
                  do
                  {
                    v46 = 31 * v46 + v47;
                    v49 = *v48++;
                    v47 = v49;
                  }

                  while (v49);
                }
              }
            }

            else
            {
              v46 = 0;
            }

            v57 = 2 * v46;
            v97[0] = 2 * v46;
            v97[1] = v45;
            v58 = *(v90 + 22);
            v59 = (v58 - 1);
            if (v58 == 1)
            {
              goto LABEL_80;
            }

            v60 = 0;
            while (1)
            {
              re::TypeInfo::derivedClass(v89, v60, &buf);
              v61 = re::TypeInfo::polymorphicObjectName(&buf);
              if ((*v61 ^ v57) <= 1)
              {
                v62 = v61[1];
                if (v62 == v45 || !strcmp(v62, v45))
                {
                  break;
                }
              }

              if (v59 == ++v60)
              {
                goto LABEL_80;
              }
            }

            v63 = *v99;
            v95 = buf;
            v96 = v63;
            if (!buf)
            {
LABEL_80:
              v64 = re::TypeInfo::polymorphicObjectName(v89);
              if ((*v64 ^ v57) > 1 || (v64 = v64[1], v64 != v45) && (v64 = strcmp(v64, v45), v64) || (v65 = *v90, v95 = v89[0], v96 = v65, !v89[0]))
              {
                v69 = *re::foundationSerializationLogObjects(v64);
                if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                {
                  v79 = v69;
                  LODWORD(buf) = 136315138;
                  *(&buf + 4) = v45;
                  _os_log_error_impl(&dword_1E1C61000, v79, OS_LOG_TYPE_ERROR, "Skipping unknown polymorphic type. Type name = %s", &buf, 0xCu);

                  if (a7)
                  {
                    goto LABEL_112;
                  }
                }

                else if (a7)
                {
LABEL_112:
                  if ((*(a1 + 64) & 1) == 0)
                  {
                    v78 = *(a1 + 152) + 48 * *(a1 + 136);
                    ++*(v78 - 16);
                  }

                  re::StringID::destroyString(v97);
                  goto LABEL_115;
                }

                if (*a4)
                {
                  re::TypeInfo::releaseInstance(v86, *a4, *(a1 + 48), *(a1 + 264));
                  *a4 = 0;
                }

                goto LABEL_112;
              }
            }

            if ((a7 & 1) == 0 && *a4)
            {
              re::TypeInfo::releaseInstance(v86, *a4, *(a1 + 48), *(a1 + 264));
              *a4 = 0;
            }

            re::TypeRegistry::typeInfo(v89[0], &v95, &buf);
            re::TypeInfo::TypeInfo(v94, &buf + 8);
            if (v15)
            {
              v66 = *(a1 + 272);
              if (*this == v66)
              {
                re::TypeInfo::operator=(v86, v94);
                v67 = v95;
                v68 = v96;
                goto LABEL_103;
              }
            }

            else
            {
              v66 = *(a1 + 272);
            }

            v71 = re::TypeInfo::name(v94);
            v72 = re::TypeRegistry::typeInfo(v66, v71, &buf);
            if (buf != 1)
            {
              v75 = *re::foundationSerializationLogObjects(v72);
              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
              {
                v76 = v75;
                v77 = re::TypeInfo::name(v94)[1];
                LODWORD(buf) = 136315138;
                *(&buf + 4) = v77;
                _os_log_impl(&dword_1E1C61000, v76, OS_LOG_TYPE_DEFAULT, "No matching runtime type found for serialized polymorphic type %s. Skipping unknown type.", &buf, 0xCu);
              }

              *&buf = 0;
              *(&buf + 1) = 0xFFFFFFFFLL;
              (*(*a1 + 16))(a1, 0, &buf);
              if ((*(a1 + 64) & 1) == 0)
              {
                (*(*a1 + 72))(a1, v45, 0, 0, v94, v94, 1);
              }

              goto LABEL_111;
            }

            re::TypeInfo::operator=(v86, &buf + 8);
            v67 = v86[0];
            v68 = *v87;
LABEL_103:
            Instance = re::TypeInfo::createInstance(v86, *(a1 + 48), *(a1 + 264));
            v74 = Instance;
            if ((a7 & 1) == 0)
            {
              *a4 = Instance;
              *&buf = v67;
              *(&buf + 1) = v68;
              re::internal::setActualType(a4, this, &buf);
            }

            v93[0] = v67;
            v93[1] = v68;
            (*(*a1 + 16))(a1, v74, v93);
            if ((*(a1 + 64) & 1) == 0)
            {
              (*(*a1 + 72))(a1, v45, 0, v74, v86, v94, v74 == 0);
            }

LABEL_111:
            (*(*a1 + 24))(a1);
            goto LABEL_112;
          }
        }

LABEL_115:
        v31 = *(a1 + 64) ^ 1;
        return v31 & 1;
      }

      if (!a7)
      {
        v52 = *a4;
        if (!*a4)
        {
          v52 = re::TypeInfo::createInstance(v91, *(a1 + 48), 0);
        }

        v53 = 0;
        *a4 = v52;
        goto LABEL_67;
      }

      v50 = *(a1 + 272);
      if (v91[0] != v50)
      {
        v51 = re::TypeInfo::name(v91);
        re::TypeRegistry::typeInfo(v50, v51, &buf);
        if ((buf & 1) == 0)
        {
          v52 = 0;
          v53 = 1;
          goto LABEL_67;
        }

        re::TypeInfo::operator=(v91, &buf + 8);
      }

      v52 = re::TypeInfo::createInstance(v91, *(a1 + 48), 0);
      v53 = 0;
LABEL_67:
      v56 = *v92;
      *&v82 = v91[0];
      *(&v82 + 1) = v56;
      re::internal::SharedObjectGraph::beginObject((a1 + 336), v52, &v82);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, v52, v91, v89, v53);
      }

      if (*(a1 + 336) == 1)
      {
        --*(a1 + 488);
        ++*(a1 + 496);
      }

      goto LABEL_115;
    }

    LODWORD(v97[0]) = 0;
    if (*(a1 + 64))
    {
      goto LABEL_28;
    }

    v33 = v97[0];
    if (*(a1 + 408) > LODWORD(v97[0]))
    {
      re::internal::SharedObjectGraph::typeID((a1 + 336), v97[0], v84);
      if (!re::internal::areCompatible(this, v84))
      {
        v54 = re::TypeInfo::name(v91)[1];
        v55 = *(a1 + 272);
        re::internal::SharedObjectGraph::typeID((a1 + 336), v33, &buf);
        LOBYTE(v81) = v54;
        re::TypeRegistry::typeName(v55, &buf);
        v21 = "Invalid reference. Objects are not compatible. Expected type %s. Actual type %s.";
        goto LABEL_64;
      }

      if (a7)
      {
        goto LABEL_115;
      }

      if (*a4)
      {
        v34 = *a4;
        if (v34 != re::internal::SharedObjectGraph::object((a1 + 336), v33))
        {
          re::TypeInfo::releaseInstance(v86, *a4, *(a1 + 48), *(a1 + 264));
          *a4 = 0;
        }
      }

      v35 = re::internal::SharedObjectGraph::object((a1 + 336), v33);
      v36 = v35;
      *a4 = v35;
      if ((*(v87 + 49) & 2) != 0)
      {
        v70 = v87[4];
        if (v70)
        {
          v70(v35);
        }

        if (*(a1 + 336) == 1 && *(a1 + 337) == 1)
        {
          re::internal::SharedObjectGraph::addChild((a1 + 336), *(*(a1 + 504) + 4 * *(a1 + 488) - 4), v33);
        }
      }

      else
      {
        re::internal::SharedObjectGraph::typeID((a1 + 336), v33, v94);
        if (!v94[0])
        {
          LOBYTE(v81) = v33;
          v21 = "TypeID for shared object at index %d is invalid.";
          goto LABEL_64;
        }

        re::TypeRegistry::typeInfo(v94[0], v94, &buf);
        if ((buf & 1) == 0)
        {
          LOBYTE(v81) = v33;
          v21 = "No TypeInfo found for shared object at index %d.";
          goto LABEL_64;
        }

        v37 = re::TypeInfo::createInstance((&buf + 8), *(a1 + 48), *(a1 + 264));
        *a4 = v37;
        if ((re::TypeInfo::copy((&buf + 8), v37, v36, *(a1 + 48), *(a1 + 264)) & 1) == 0)
        {
          v81 = re::TypeInfo::name((&buf + 8))[1];
          v21 = "Failed to copy non-shareable object of type '%s'.";
LABEL_64:
          v22 = a1;
          v23 = 0;
          goto LABEL_9;
        }
      }

      re::internal::SharedObjectGraph::typeID((a1 + 336), v33, v83);
      re::TypeInfo::setActualTypeForPointer(this, a4, v83);
      goto LABEL_115;
    }

    LOBYTE(v81) = v97[0];
    v21 = "Invalid reference ID for shared object: %u";
    goto LABEL_64;
  }

  re::internal::actualType(a4, this, v88);
  if (v88[0])
  {
    goto LABEL_11;
  }

LABEL_8:
  v81 = re::TypeInfo::name(this)[1];
  v21 = "Failed to get actual type of polymorphic object. Type %s.";
  v22 = a1;
  v23 = a2;
LABEL_9:
LABEL_28:
  v31 = 0;
  return v31 & 1;
}

_BYTE *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference(_BYTE *result, _DWORD *a2)
{
  if ((result[40] & 1) == 0)
  {
    v3 = result;
    if (result)
    {
      if ((*(v3 + 40) & 1) == 0)
      {
        v4 = *(v3 + 128) + 48 * *(v3 + 112);
        ++*(v4 - 16);
      }
    }
  }

  return result;
}

uint64_t re::serializeJson(uint64_t a1, uint64_t a2, uint64_t a3, re **a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v7 = a7;
  v74[3] = 0;
  v74[4] = 0;
  v75 = 0;
  v74[0] = &unk_1F5D18218;
  v74[1] = a2;
  v74[2] = a7;
  *&v76[0].var0 = 0xFA473DDF415427B4;
  v76[0].var1 = "JSON-StreamAdaptor-SerializerV1";
  v34 = &unk_1F5D182C8;
  v12 = re::StringID::StringID(&v35, v76);
  v44 = 0;
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41[0] = 0;
  v45 = 15;
  v47 = 1024;
  v46 = 0;
  if ((atomic_load_explicit(&qword_1EE1C3C80, memory_order_acquire) & 1) == 0)
  {
    v12 = __cxa_guard_acquire(&qword_1EE1C3C80);
    if (v12)
    {
      re::Defaults::intValue("maxSerializationDepth", v29, &v31);
      if (v31)
      {
        v30 = SHIDWORD(v31);
      }

      else
      {
        v30 = 0;
      }

      _MergedGlobals_555 = v30;
      __cxa_guard_release(&qword_1EE1C3C80);
    }
  }

  if (_MergedGlobals_555)
  {
    v47 = _MergedGlobals_555;
  }

  v50[4] = 0;
  v51 = 0;
  v48 = 0u;
  v49 = 0u;
  memset(v50, 0, 28);
  v55 = 0u;
  v56 = 0u;
  v57 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v58 = 0x7FFFFFFFLL;
  v34 = &unk_1F5D18260;
  v59 = 1;
  memset(v60, 0, sizeof(v60));
  v61 = 0;
  v62 = 0x7FFFFFFFLL;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v73 = 0;
  v67 = 0u;
  v68 = 0u;
  v69 = 0;
  v70 = 0u;
  v71 = 0u;
  v72 = 0;
  if (*&v76[0].var0)
  {
  }

  re::IntrospectionSharedLock::IntrospectionSharedLock(&v33);
  re::TypeRegistry::typeInfo(*a4, a4, v76);
  re::TypeInfo::TypeInfo(&v31, &v76[0].var1);
  if (v32 != 8 || (v13 = re::TypeInfo::name(&v31), *v13 >> 1 == 94623636) && ((v14 = v13[1], v14 == "char*") || !strcmp(v14, "char*")) || (v15 = re::TypeInfo::name(&v31), *v15 >> 1 == 0x134375A94D9F7110) && ((v16 = v15[1], v16 == "DynamicString") || !strcmp(v16, "DynamicString")))
  {
LABEL_16:
    v19 = 0;
    goto LABEL_17;
  }

  v17 = re::TypeInfo::name(&v31);
  if (*v17 >> 1 == 0x22C6ED80D0CLL)
  {
    v18 = v17[1];
    if (v18 != "StringID")
    {
      v19 = strcmp(v18, "StringID") != 0;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v19 = 1;
LABEL_17:
  LOBYTE(v59) = 0;
  v52 = a6;
  v21 = v53;
  if (*(v53 + 6) != v54)
  {
  }

  v36 = v74;
  v37 = 0;
  v38 = 0;
  if (v7)
  {
    v39 = v7;
  }

  else
  {
  }

  v40 = v7;
  *&v76[0].var0 = 0;
  re::Optional<re::DetailedError>::operator=(v41, v76);
  if (v76[0].var0 == 1 && v76[1].var1 && (*&v76[2].var0 & 1) != 0)
  {
    (*(*v76[1].var1 + 40))();
  }

  v42[0] = v39;
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v42, 0x40uLL);
  ++v43;
  *&v76[0].var0 = 0;
  *(v76 + 4) = 0u;
  memset(&v76[1].var0 + 1, 0, 28);
  if (!re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance)
  {
  }

  v50[0] = v40;
  re::DynamicArray<char>::setCapacity(v50, 0);
  ++LODWORD(v50[3]);
  v24 = (*(*v39 + 32))(v39, 72, 8);
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 512;
  *(v24 + 56) = 324;
  *(v24 + 60) = 2304;
  *(&v48 + 1) = v24;
  *(v24 + 64) = 0x100000001;
  v25 = (*(*v39 + 32))(v39, 48, 8);
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  *(v25 + 40) = 256;
  *&v48 = v25;
  v26 = *(&v48 + 1);
  **(&v48 + 1) = v25;
  *(v26 + 60) = 0;
  *(v26 + 32) = *(v26 + 24);
  v34[6](&v34);
  if (v19)
  {
    if ((v41[0] & 1) == 0)
    {
      (v34[9])(&v34, a1, 0, a5, &v31, &v31, 0);
    }
  }

  else
  {
    v27 = 0;
    {
      goto LABEL_36;
    }

    if ((v41[0] & 1) == 0)
    {
      (v34[9])(&v34, a1, 0, a5, &v31, &v31, 0);
    }
  }

  v34[7](&v34);
  v27 = v41[0] ^ 1;
LABEL_36:
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v33);
  v34 = &unk_1F5D18260;
  if (*(&v70 + 1))
  {
    if (v73)
    {
      (*(**(&v70 + 1) + 40))();
    }

    v73 = 0;
    v71 = 0uLL;
    *(&v70 + 1) = 0;
    ++v72;
  }

  if (*(&v67 + 1))
  {
    if (v70)
    {
      (*(**(&v67 + 1) + 40))();
    }

    *&v70 = 0;
    v68 = 0uLL;
    *(&v67 + 1) = 0;
    ++v69;
  }

  if (v63)
  {
    if (v67)
    {
      (*(*v63 + 40))();
    }

    *&v67 = 0;
    v64 = 0;
    v65 = 0;
    v63 = 0;
    ++v66;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v60);
  return v27 & 1;
}

uint64_t re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(re::TypeRegistry **a1, re::TypeRegistry *a2)
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

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(uint64_t a1, char *__s, int a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), __s);
    }

    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartObject(*(a1 + 168));
    LOBYTE(v8[0]) = 2;
    DWORD1(v8[0]) = a3 | 0x20;
    *(&v8[0] + 1) = __s;
    memset(&v8[1], 0, 32);
  }

  return v3 ^ 1u;
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::EndObject(*(result + 21));
    v2 = *(v1 + 16) + 48 * *(v1 + 14);
    ++*(v2 - 16);
  }

  return result;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D18260;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
}

void anonymous namespace::LegacyOutputStreamAdaptor::~LegacyOutputStreamAdaptor(_anonymous_namespace_::LegacyOutputStreamAdaptor *this)
{
  *this = &unk_1F5D18218;
  if (*(this + 3))
  {
    (*(**(this + 2) + 40))(*(this + 2), *(this + 3));
    *(this + 3) = 0;
    *(this + 10) = 0;
  }
}

{

  JUMPOUT(0x1E6906520);
}

BOOL anonymous namespace::LegacyOutputStreamAdaptor::Next(_anonymous_namespace_::LegacyOutputStreamAdaptor *this, void **a2, int *a3)
{
  {
    v7 = *(this + 3);
    if (!v7)
    {
      v7 = (*(**(this + 2) + 32))(*(this + 2), 256, 0);
      *(this + 3) = v7;
    }

    v8 = *(this + 10);
    *a2 = (v7 + v8);
    *a3 = 256 - v8;
    *(this + 10) = 256;
    return 1;
  }

  return result;
}

BOOL anonymous namespace::LegacyOutputStreamAdaptor::WriteBuffer(_anonymous_namespace_::LegacyOutputStreamAdaptor *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  if (!*(this + 10))
  {
    return 1;
  }

  v2 = (*(**(this + 1) + 16))(*(this + 1));
  v3 = *(this + 10);
  v4 = v2 == v3;
  if (v2 == v3)
  {
    *(this + 4) += v2;
  }

  else
  {
    (*(**(this + 2) + 40))(*(this + 2), *(this + 3));
    *(this + 3) = 0;
  }

  *(this + 10) = 0;
  return v4;
}

uint64_t re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5D182C8;
  re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable((a1 + 288));
  re::DynamicArray<unsigned long>::deinit(a1 + 216);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  if (*(a1 + 64) == 1)
  {
    re::DynamicString::deinit((a1 + 88));
  }

  re::StringID::destroyString((a1 + 8));
  return a1;
}

void re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D18260;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::untrackObject(uint64_t result)
{
  if (*(result + 336) == 1)
  {
    --*(result + 488);
    ++*(result + 496);
  }

  return result;
}

void re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doOpen(uint64_t a1)
{
  *(a1 + 337) = 0;
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doClose(uint64_t a1)
{
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v27 = 6059476;
  v28 = "BOOL";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6104748;
  v28 = "char";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x172E117BCLL;
  v28 = "int8_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93A4A92;
  v28 = "int16_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93BFE06;
  v28 = "int32_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93EC744;
  v28 = "int64_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6655224;
  v28 = "long";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x31CD534126;
  v28 = "uint8_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0D4E68;
  v28 = "uint16_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0F01DCLL;
  v28 = "uint32_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD11CB1ALL;
  v28 = "uint64_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x1947BDF6CLL;
  v28 = "size_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 195052728;
  v28 = "float";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x161EEF7A2;
  v28 = "double";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 189247272;
  v28 = "char*";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2686EB529B3EE220;
  v28 = "DynamicString";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x458DDB01A18;
  v28 = "StringID";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v19 = *(a1 + 272);
  v27 = 0x258C98EAAF29A10ALL;
  v28 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(v19, &v27, &v31);
  if (v27)
  {
    if (v27)
    {
    }
  }

  if (v31)
  {
    v21 = *(a1 + 272);
    v26 = v31;
    re::TypeRegistry::attributesByAttributeType(v21, &v26, &v27);
    if (v29)
    {
      v22 = 48 * v29;
      v23 = (v30 + 16);
      do
      {
        v24 = *v23;
        v23 += 3;
        v25 = v24;
        v22 -= 48;
      }

      while (v22);
    }

    if (v27)
    {
      if (v30)
      {
        (*(*v27 + 40))();
      }
    }
  }
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a1 + 488);
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
    re::internal::SharedObjectGraph::beginObject((a1 + 336), v15, &v25);
  }

  v17 = (*(*a1 + 80))(a1, a5);
  if (v17)
  {
    result = v17(a1, a2, a3, a4, a5, a6, a7);
    if (!v14 && *(a1 + 336) == 1)
    {
      --*(a1 + 488);
      ++*(a1 + 496);
    }
  }

  else
  {
    v19 = re::TypeInfo::name(a5);
    return 0;
  }

  return result;
}

void *re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this)
{
  v4 = re::TypeInfo::name(this);
  {
    if (*(this + 12) != 9)
    {
LABEL_9:
      if (*this == *(a1 + 272))
      {
        if (v12 != 0x7FFFFFFF)
        {
          return *(*(a1 + 304) + 24 * v12 + 16);
        }
      }

      return v7;
    }

    v9 = *(*(this + 2) + 88);
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
      goto LABEL_9;
    }
  }

  return v7;
}

void re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *a1)
{
  if (a1[34])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
    a1[34] = 0;
  }
}

void re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    return 0;
  }
}

uint64_t (*re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(void *a1, char *__s, const re::TypeInfo *a3, const re::TypeInfo *a4, re *this, re::TypeInfo *a6, uint64_t a7, uint64_t a8)
{
  if (*a2 == *(a1 + 272))
  {
    v9 = v2;
    v10 = v3;
    if (v8 != 0x7FFFFFFF)
    {
      return *(*(a1 + 304) + 24 * v8 + 16);
    }
  }

  return v4;
}

void *re::Encoder<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,anonymous namespace::LegacyOutputStreamAdaptor>::close(void *result)
{
  if (*result)
  {
    v1 = result;
    if (result[21])
    {
      v2 = result[20];
      if (v2)
      {
        String = rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::GetString(v2);
        v4 = *(v1[20] + 24) - *(v1[20] + 16);
        if (String)
        {
          v5 = String;
          while (1)
          {
            v6 = *(v1 + 4);
            if (v4 <= v6)
            {
              break;
            }

            if (v6 >= 1)
            {
              memcpy(v1[1], v5, v6);
              v7 = *(v1 + 4);
              v5 += v7;
              v4 -= v7;
              v1[1] = 0;
              *(v1 + 4) = 0;
            }

            v8 = (*(**v1 + 16))(*v1, v1 + 1, v1 + 2);
            if ((v8 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          memcpy(v1[1], v5, v4);
LABEL_14:
          v1[1] += v4;
          *(v1 + 4) -= v4;
        }

        else
        {
          do
          {
            v13 = *(v1 + 4);
            if (v4 <= v13)
            {
              bzero(v1[1], v4);
              goto LABEL_14;
            }

            if (v13 >= 1)
            {
              bzero(v1[1], v13);
              v4 -= *(v1 + 4);
              v1[1] = 0;
              *(v1 + 4) = 0;
            }

            v8 = (*(**v1 + 16))(*v1, v1 + 1, v1 + 2);
          }

          while ((v8 & 1) != 0);
LABEL_10:
          if (v14 && (v15 & 1) != 0)
          {
            (*(*v14 + 40))();
          }
        }

        v9 = v1[20];
        if (v9)
        {
          v10 = v1[3];
          rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(v1[20]);
          (*(*v10 + 40))(v10, v9);
        }

        v1[20] = 0;
        v11 = v1[21];
        if (v11)
        {
          v12 = v1[3];
          rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(v11 + 8);
          (*(*v12 + 40))(v12, v11);
        }

        v1[21] = 0;
        re::DynamicArray<unsigned long>::deinit((v1 + 24));
      }
    }

    if ((v1[5] & 1) == 0)
    {
    }

    result = re::DynamicArray<unsigned long>::deinit((v1 + 12));
    if (*(v1 + 4) >= 1)
    {
      result = (*(**v1 + 24))();
      v1[1] = 0;
      *(v1 + 4) = 0;
    }

    *v1 = 0;
    v1[3] = 0;
    v1[4] = 0;
  }

  return result;
}

uint64_t re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  re::DynamicString::setCapacity(&v31, 0);
  v30 = &a9;
  re::DynamicString::vassignf(&v31, a3, &a9);
  if (v19)
  {
    v12 = *&v20[7];
  }

  else
  {
    v12 = v20;
  }

  if (v32)
  {
    v13 = v33;
  }

  else
  {
    v13 = &v32 + 1;
  }

  re::DynamicString::format("Failed to %s %s. Reason: %s", &v21, "serialize", v12, v13);
  *&v25 = 400;
  *(&v25 + 1) = re::FoundationErrorCategory(void)::instance;
  v14 = v23;
  v28 = v23;
  v29 = v24;
  v15 = v21;
  v16 = v22;
  v26 = v21;
  v27 = v22;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1 + 24, &v25);
  if (v15 && (v16 & 1) != 0)
  {
    (*(*v15 + 40))(v15, v14);
  }

  if (v18 && (v19 & 1) != 0)
  {
    (*(*v18 + 40))();
  }

  result = v31;
  if (v31)
  {
    if (v32)
    {
      return (*(*v31 + 40))();
    }
  }

  return result;
}

uint64_t re::serializeType<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(void *a1, char *__s, const re::TypeInfo *a3, const re::TypeInfo *a4, re *this, re::TypeInfo *a6, uint64_t a7, uint64_t a8)
{
  v199 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_18;
  }

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
        goto LABEL_18;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_18;
  }

  if (*(this + 12) != *(a6 + 12))
  {
    goto LABEL_265;
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

  v21 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
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
    v31 = re::TypeInfo::name(this)[1];
    re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
    re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
    LOBYTE(v173) = v31;
    v24 = "Cannot serialize type %s version %u as version %u. Downgrading versions is not supported.";
    goto LABEL_77;
  }

LABEL_18:
  v23 = *(this + 12);
  if (v23 <= 4)
  {
    if (*(this + 12) <= 2u)
    {
      if (v23 != 1)
      {
        if (v23 != 2)
        {
          goto LABEL_76;
        }

        if (this == a6)
        {
          goto LABEL_211;
        }

        if (*this == *a6)
        {
          v61 = **(this + 2);
          v62 = **(a6 + 2);
          if (v61 == v62 && WORD1(v61) == WORD1(v62) && ((v62 ^ v61) & 0xFFFFFF00000000) == 0)
          {
            goto LABEL_117;
          }

          v25 = 2;
        }

        else
        {
          if (re::areSameTranslatedVersion(this, a6, a3))
          {
            goto LABEL_117;
          }

          v25 = *(this + 12);
        }

        if (v25 != *(a6 + 12))
        {
          goto LABEL_265;
        }

        v63 = re::TypeInfo::name(this);
        v64 = re::TypeInfo::name(a6);
        if (!re::StringID::operator==(v63, v64))
        {
          goto LABEL_265;
        }

LABEL_117:
        if (*this != *a6)
        {
          v65 = re::areSameTranslatedVersion(this, a6, a3);
          goto LABEL_212;
        }

        v114 = **(this + 2);
        v115 = **(a6 + 2);
        if (v114 != v115 || WORD1(v114) != WORD1(v115) || ((v115 ^ v114) & 0xFFFFFF00000000) != 0)
        {
          v65 = 0;
          goto LABEL_212;
        }

LABEL_211:
        v65 = 1;
LABEL_212:
        if (a7)
        {
          __dst.n128_u64[0] = 0;
          {
            goto LABEL_266;
          }
        }

        else
        {
          if (*(*(this + 2) + 8) >= 9u)
          {
            v173 = re::TypeInfo::name(this)[1];
            v24 = "Enum type %s has invalid size: %zu bytes";
            goto LABEL_77;
          }

          EnumConstantIndex = re::internal::getEnumConstantIndex(this, a4, a3);
          if ((EnumConstantIndex & 0x80000000) != 0)
          {
            __dst.n128_u64[0] = 0;
            memcpy(&__dst, a4, *(*(this + 2) + 8));
            LOBYTE(v173) = __dst.n128_u8[0];
            re::TypeInfo::name(this);
            v24 = "Value %zu is not a valid enum constant of %s.";
            goto LABEL_77;
          }

          v117 = EnumConstantIndex;
          if (v65)
          {
            v118 = re::TypeInfo::enumConstants(this);
            v120 = v117;
            if (v119 <= v117)
            {
LABEL_351:
              re::internal::assertLog(6, v119, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v120, v119);
              _os_crash();
              __break(1u);
              goto LABEL_352;
            }

            if (!v118)
            {
              goto LABEL_266;
            }

            v121 = v118 + 24 * v117;
          }

          else
          {
            v152 = *(*a6 + 856);
            if (!v152 || (v121 = re::internal::TypeTranslationTable::translateRuntimeEnum(v152, this, v117, a6)) == 0)
            {
              v161 = re::TypeInfo::enumConstants(this);
              v163 = v117;
              if (v162 > v117)
              {
                v173 = *(v161 + 24 * v117 + 16);
                re::TypeInfo::name(a6);
                v24 = "Runtime enum constant %s does not exist in serialized type %s.";
                goto LABEL_77;
              }

LABEL_352:
              re::internal::assertLog(6, v162, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v163, v162);
              _os_crash();
              __break(1u);
            }
          }

          v153 = *(v121 + 16);
          __dst.n128_u64[0] = strlen(v153);
          {
            goto LABEL_266;
          }
        }

        goto LABEL_339;
      }

      if (this != a6)
      {
        if (*this == *a6)
        {
          v87 = **(this + 2);
          v88 = **(a6 + 2);
          if (v87 != v88)
          {
            goto LABEL_265;
          }

          v18 = WORD1(v87) == WORD1(v88);
          v89 = (v88 ^ v87) & 0xFFFFFF00000000;
          if (!v18 || v89 != 0)
          {
            goto LABEL_265;
          }
        }

        else if (!re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_265;
        }
      }

      v32 = re::TypeInfo::name(this);
      v33 = *v32 >> 1;
      if (v33 <= 0x16749DFF02)
      {
        if (*v32 >> 1 <= 0x685847B)
        {
          if (*v32 >> 1 > 0x2E9355)
          {
            if (v33 == 3052374)
            {
            }

            if (v33 != 3327612)
            {
              if (v33 == 97526364)
              {
              }

              goto LABEL_334;
            }

LABEL_277:
          }

          if (v33 != 104431)
          {
            if (v33 == 3029738)
            {
            }

            goto LABEL_334;
          }

LABEL_299:
        }

        if (*v32 >> 1 <= 0xB9708BDD)
        {
          if (v33 != 109413500)
          {
            if (v33 == 2969009105)
            {
            }

            goto LABEL_334;
          }

          goto LABEL_302;
        }

        if (v33 == 3111160798)
        {
        }

        if (v33 != 3393056694)
        {
          if (v33 != 0x16749D2549)
          {
            goto LABEL_334;
          }

LABEL_302:
        }

LABEL_290:
      }

      if (*v32 >> 1 > 0x303EE88E58CLL)
      {
        if (*v32 >> 1 > 0x2A8CEB1C43F60843)
        {
          if (v33 == 0x2A8CEB1C43F60844)
          {
            goto LABEL_296;
          }

          if (v33 != 0x3AFE951B1F1F3391)
          {
            if (v33 != 0x412A40E9CB79BA35)
            {
              goto LABEL_334;
            }

            goto LABEL_290;
          }

          goto LABEL_293;
        }

        if (v33 == 0x303EE88E58DLL)
        {
          goto LABEL_290;
        }

        if (v33 == 0x2710786C3AC82DA1)
        {
LABEL_287:
        }
      }

      else
      {
        if (*v32 >> 1 > 0x18E6A9A092)
        {
          if (v33 != 0x18E6A9A093)
          {
            if (v33 != 0x303EE86A734)
            {
              if (v33 != 0x303EE8780EELL)
              {
                goto LABEL_334;
              }

LABEL_296:
            }

LABEL_293:
          }

          goto LABEL_287;
        }

        if (v33 == 0x16749DFF03)
        {
          goto LABEL_299;
        }

        if (v33 == 0x16749F63A2)
        {
          goto LABEL_277;
        }
      }

LABEL_334:
      v173 = re::TypeInfo::name(this)[1];
      v24 = "Unsupported basic type %s.";
      goto LABEL_77;
    }

    if (v23 != 3)
    {
      if (v23 != 4)
      {
        goto LABEL_76;
      }

      if (this == a6)
      {
        goto LABEL_127;
      }

      if (*this == *a6)
      {
        v66 = **(this + 2);
        v67 = **(a6 + 2);
        if (v66 == v67)
        {
          v18 = WORD1(v66) == WORD1(v67);
          v68 = (v67 ^ v66) & 0xFFFFFF00000000;
          if (v18 && v68 == 0)
          {
            goto LABEL_127;
          }
        }
      }

      else if (re::areSameTranslatedVersion(this, a6, a3))
      {
LABEL_127:
        if (a7)
        {
          v73 = a1[34];
          re::TypeInfo::referencedType(a6, &v194);
          re::internal::translateType(v73, &v194, &__dst);
          v74 = (*(*a1 + 80))(a1, &__dst);
          if (!v74)
          {
            goto LABEL_232;
          }

          v75 = v74;
          v76 = *(a6 + 2);
          v77 = *(v76 + 92) & 0xFFFFFF;
          if (v77)
          {
            v78 = 0;
            v79 = 8;
          }

          else
          {
            v78 = *(v76 + 96);
            v79 = 4;
          }

          v194 = v78;
          {
            goto LABEL_266;
          }

          if (v77)
          {
            v150 = v78 == 0;
          }

          else
          {
            v150 = 1;
          }

          v151 = v150;
          if (v150)
          {
            if (!v78)
            {
              goto LABEL_316;
            }
          }

          else
          {
            v183[0] = 0;
            v183[1] = 0xFFFFFFFFLL;
            (*(*a1 + 16))(a1, 0, v183);
          }

          do
          {
            v75(a1, 0, 0, 0, &__dst, &__dst, 1);
            v78 = (v78 - 1);
          }

          while (v78);
          if (v151)
          {
            goto LABEL_316;
          }
        }

        else
        {
          re::TypeInfo::referencedType(this, &__dst);
          re::TypeInfo::referencedType(a6, &v194);
          re::TypeInfo::TypeInfo(v184, this);
          v80 = (*(*a1 + 80))(a1, &__dst);
          if (!v80)
          {
            goto LABEL_232;
          }

          v81 = v80;
          v82 = re::ArrayAccessor::size(v184, a4);
          v180[0] = v82;
          v83 = *(*(this + 2) + 92) & 0xFFFFFF;
          if (v83)
          {
            v84 = 8;
          }

          else
          {
            v84 = 4;
          }

          {
            goto LABEL_266;
          }

          if (v83)
          {
            v85 = v82 == 0;
          }

          else
          {
            v85 = 1;
          }

          v86 = v85;
          if (v85)
          {
            if (!v82)
            {
              goto LABEL_316;
            }
          }

          else
          {
            v154 = *a4;
            v182[0] = 0;
            v182[1] = 0xFFFFFFFFLL;
            (*(*a1 + 16))(a1, v154, v182);
          }

          v155 = 0;
          do
          {
            v156 = re::ArrayAccessor::elementAt(v184, a4, v155);
            v81(a1, 0, 0, v156, &__dst, &v194, 0);
            ++v155;
          }

          while (v82 != v155);
          if (v86)
          {
            goto LABEL_316;
          }
        }

        (*(*a1 + 24))(a1);
        goto LABEL_316;
      }

      if (*(a6 + 12) != 4)
      {
        goto LABEL_265;
      }

      v70 = *(this + 2);
      v71 = *(a6 + 2);
      v72 = *(v71 + 92) & 0xFFFFFF;
      if ((*(v70 + 92) & 0xFFFFFF) != 0)
      {
        if (!v72)
        {
          goto LABEL_265;
        }
      }

      else if (v72 || *(v70 + 96) != *(v71 + 96))
      {
        goto LABEL_265;
      }

      goto LABEL_127;
    }

    if (this != a6)
    {
      if (*this == *a6)
      {
        v91 = **(this + 2);
        v92 = **(a6 + 2);
        if (v91 == v92 && WORD1(v91) == WORD1(v92) && ((v92 ^ v91) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_158;
        }

        v35 = 3;
      }

      else
      {
        if (re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_158;
        }

        v35 = *(this + 12);
      }

      if (v35 != *(a6 + 12))
      {
        goto LABEL_265;
      }
    }

LABEL_158:
    if (a7)
    {
      __dst.n128_u8[0] = 0;
    }

    else
    {
      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(&v194, &__dst.n128_i64[1]);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(v184, &__dst.n128_i64[1]);
      re::TypeInfo::TypeInfo(&__dst, this);
      v93 = (*(v190 + 88))(a4);
      LOBYTE(v183[0]) = v93 != 0;
      if (v93)
      {
        v95 = (*(v190 + 88))(a4, v94);
        if ((a1[8] & 1) == 0)
        {
          (*(*a1 + 72))(a1, __s, 0, v95, &v194, v184, 0);
        }
      }
    }

    goto LABEL_339;
  }

  if (*(this + 12) > 6u)
  {
    if (v23 == 7)
    {
      if (this != a6)
      {
        if (*this == *a6)
        {
          v96 = **(this + 2);
          v97 = **(a6 + 2);
          if (v96 != v97)
          {
            goto LABEL_265;
          }

          v18 = WORD1(v96) == WORD1(v97);
          v98 = (v97 ^ v96) & 0xFFFFFF00000000;
          if (!v18 || v98 != 0)
          {
            goto LABEL_265;
          }
        }

        else if (!re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_265;
        }
      }

      if (a7)
      {
        if (!v36)
        {
LABEL_266:
          v51 = 0;
          return v51 & 1;
        }

        v194 = 0;
        if (*(*(a6 + 2) + 96))
        {
          re::TypeInfo::unionMember(a6, 0, &__dst);
          if ((a1[8] & 1) == 0)
          {
            (*(*a1 + 72))(a1, "value", 0, 0, &__dst, &__dst, 1);
          }
        }
      }

      else
      {
        if (!v36)
        {
          goto LABEL_266;
        }

        re::TypeInfo::TypeInfo(&__dst, this);
        Tag = re::UnionAccessor::readTag(&__dst, a4);
        *v184 = Tag;
        if (Tag < *(*(this + 2) + 96))
        {
          re::TypeInfo::unionMember(this, Tag, &v194);
          if ((a1[8] & 1) == 0)
          {
            (*(*a1 + 72))(a1, "value", 0, a4, &v194, &v194, 0);
          }
        }
      }

LABEL_338:
      goto LABEL_339;
    }

    if (v23 != 8)
    {
      if (v23 == 9)
      {
        v173 = re::TypeInfo::name(this)[1];
        v24 = "Pointer type (%s) needs to be handled explicitly by the serializer.";
LABEL_77:
        goto LABEL_266;
      }

LABEL_76:
      LOBYTE(v173) = *(this + 12);
      v24 = "Invalid type category. Value = %d";
      goto LABEL_77;
    }

    if (a7)
    {
      if (*(*(this + 2) + 49))
      {
        v60 = a1[34];
        *v184 = 0x2686EB529B3EE220;
        *&v184[8] = "DynamicString";
        re::TypeRegistry::typeInfo(v60, v184, &__dst);
        re::TypeInfo::TypeInfo(&v194, &__dst.n128_i64[1]);
        re::StringID::destroyString(v184);
        v42 = &v194;
        v43 = &v194;
        v40 = a1;
        v41 = __s;
        goto LABEL_110;
      }

      v38 = re::TypeInfo::name(this);
      __dst.n128_u64[0] = 0x134375A94D9F7110;
      __dst.n128_u64[1] = "DynamicString";
      if (re::StringID::operator==(v38, &__dst))
      {
        v40 = a1;
        v41 = __s;
        v42 = this;
        v43 = this;
LABEL_110:
        goto LABEL_339;
      }

      v44 = *(this + 12) == 8;
    }

    else
    {
      v44 = 1;
    }

    v45 = *(this + 2);
    v46 = *(v45 + 48);
    if ((v46 & 0x10) == 0 && v44)
    {
      v47 = *(v45 + 160);
      if (v47)
      {
        v48 = *this;
        v49 = *a6;
        __dst.n128_u64[0] = &unk_1F5D18330;
        __dst.n128_u64[1] = a1;
        *&v190 = v48;
        *(&v190 + 1) = v49;
        v191 = 0uLL;
        LODWORD(v192) = 1;
        *(&v192 + 1) = 0;
        *&v193 = 0;
        v194 = __s;
        LODWORD(v195) = a3;
        BYTE4(v195) = 0;
        v47(&__dst, a4, v50);
        v51 = *(a1 + 64) ^ 1;
        return v51 & 1;
      }
    }

    if ((v46 & 4) == 0)
    {
      {
        goto LABEL_266;
      }

      v52 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
      if (!v52 || *(v52 + 16) >= 2u)
      {
        v53 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
        if (v53)
        {
          v54 = *(v53 + 16);
        }

        else
        {
          v54 = -1;
        }

        __dst.n128_u32[0] = v54;
      }

      goto LABEL_338;
    }

    re::TypeMemberCollection::TypeMemberCollection(&__dst, *this, v45);
    re::TypeMemberCollection::operator[](&__dst, 0, &v194);
    v108 = *(v196 + 24);
    re::TypeMemberInfo::memberType(&v194, v184);
    if (re::areSameVersion(this, a6, v109))
    {
      if (a1[8])
      {
        goto LABEL_266;
      }

      v30 = (*(*a1 + 72))(a1, __s, a3, a4 + v108, v184, v184, a7);
LABEL_348:
      v51 = v30;
      return v51 & 1;
    }

    v149 = *(a6 + 2);
    if (*(v149 + 96) == 1)
    {
      re::TypeMemberCollection::TypeMemberCollection(&__dst, *a6, v149);
      re::TypeMemberCollection::operator[](&__dst, 0, v182);
      re::TypeMemberInfo::memberType(v182, v183);
      if (a1[8])
      {
        goto LABEL_266;
      }

      v30 = (*(*a1 + 72))(a1, __s, a3, a4 + v108, v184, v183, a7);
      goto LABEL_348;
    }

LABEL_265:
    goto LABEL_266;
  }

  if (v23 == 5)
  {
    if (this != a6)
    {
      if (*this == *a6)
      {
        v100 = **(this + 2);
        v101 = **(a6 + 2);
        if (v100 != v101 || WORD1(v100) != WORD1(v101) || ((v101 ^ v100) & 0xFFFFFF00000000) != 0)
        {
          v37 = 5;
LABEL_175:
          if (v37 != *(a6 + 12))
          {
            goto LABEL_265;
          }
        }
      }

      else if (!re::areSameTranslatedVersion(this, a6, a3))
      {
        v37 = *(this + 12);
        goto LABEL_175;
      }
    }

    if (a7)
    {
      v102 = a1[34];
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(v184, &__dst.n128_i64[1]);
      re::internal::translateType(v102, v184, &v194);
      if ((*(*a1 + 80))(a1, &v194))
      {
        __dst.n128_u64[0] = 0;
        v51 = 0;
        {
          return v51 & 1;
        }

        goto LABEL_316;
      }

LABEL_231:
      p_dst = &v194;
LABEL_233:
      v174 = re::TypeInfo::name(p_dst)[1];
      goto LABEL_266;
    }

    re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(&v194, &__dst.n128_i64[1]);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(v184, &__dst.n128_i64[1]);
    re::TypeInfo::TypeInfo(&__dst, this);
    v103 = (*(*a1 + 80))(a1, &v194);
    if (!v103)
    {
      goto LABEL_231;
    }

    v104 = v103;
    v105 = (*(v190 + 88))(a4);
    v182[0] = v105;
    v51 = 0;
    {
      return v51 & 1;
    }

    if (*(v190 + 104))
    {
      if (v105)
      {
        for (i = 0; i != v105; ++i)
        {
          v107 = (*(v190 + 104))(a4, i);
          v104(a1, 0, 0, v107, &v194, v184, 0);
        }
      }
    }

    else
    {
      v157 = *(v190 + 112);
      if (!v157 || !*(v190 + 120) || !*(v190 + 128))
      {
        re::TypeInfo::TypeInfo(v183, &__dst);
        v173 = re::TypeInfo::name(v183)[1];
        v24 = "List type %s does not provide an indexer or iterator.";
        goto LABEL_77;
      }

      v158 = v157(a4, a1[7]);
      v159 = (*(v190 + 120))();
      if (v159)
      {
        v160 = v159;
        do
        {
          v104(a1, 0, 0, v160, &v194, v184, 0);
          v160 = (*(v190 + 120))(v158);
        }

        while (v160);
      }

      (*(v190 + 128))(v158, a1[7]);
    }

LABEL_316:
    goto LABEL_339;
  }

  if (v23 != 6)
  {
    goto LABEL_76;
  }

  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
  v26 = re::TypeInfo::TypeInfo(&v194, &__dst.n128_i64[1]);
  v28 = re::TypeInfo::name(v26);
  v29 = BYTE4(v195);
  if (BYTE4(v195) != 1)
  {
LABEL_100:
    if (v29 == 8)
    {
      if (*v28 >> 1 == 0x134375A94D9F7110)
      {
        v56 = v28[1];
        if (v56 == "DynamicString")
        {
          goto LABEL_347;
        }

        v58 = strcmp(v56, "DynamicString");
        if (!v58)
        {
          goto LABEL_347;
        }
      }

      __dst.n128_u64[0] = 0x22C6ED80D0CLL;
      __dst.n128_u64[1] = "StringID";
      v59 = re::StringID::operator==(v28, &__dst);
      if (v59)
      {
        goto LABEL_347;
      }
    }

    goto LABEL_105;
  }

  if (!re::TypeInfo::isInteger(&v194))
  {
    v29 = BYTE4(v195);
    goto LABEL_100;
  }

  __dst.n128_u64[0] = 0x303EE88E58DLL;
  __dst.n128_u64[1] = "uint64_t";
  if (re::StringID::operator==(v28, &__dst))
  {
    goto LABEL_348;
  }

  *v184 = 3393056694;
  *&v184[8] = "size_t";
  v110 = re::StringID::operator==(v28, v184);
  if (v110)
  {
    goto LABEL_347;
  }

  __dst.n128_u64[0] = 0x303EE8780EELL;
  __dst.n128_u64[1] = "uint32_t";
  v111 = re::StringID::operator==(v28, &__dst);
  if (v111)
  {
    goto LABEL_347;
  }

  __dst.n128_u64[0] = 0x303EE86A734;
  __dst.n128_u64[1] = "uint16_t";
  v112 = re::StringID::operator==(v28, &__dst);
  if (v112)
  {
    goto LABEL_347;
  }

  __dst.n128_u64[0] = 0x18E6A9A093;
  __dst.n128_u64[1] = "uint8_t";
  v113 = re::StringID::operator==(v28, &__dst);
  if (v113)
  {
    goto LABEL_347;
  }

  __dst.n128_u64[0] = 0x16749F63A2;
  __dst.n128_u64[1] = "int64_t";
  if (re::StringID::operator==(v28, &__dst))
  {
    goto LABEL_348;
  }

  *v184 = 3327612;
  *&v184[8] = "long";
  v168 = re::StringID::operator==(v28, v184);
  {
LABEL_347:
    v30 = v57(a1, __s, a3, a4, this, a6, a7);
    goto LABEL_348;
  }

LABEL_105:
  if (this != a6)
  {
    if (*this == *a6)
    {
      v122 = **(this + 2);
      v123 = **(a6 + 2);
      if (v122 == v123 && WORD1(v122) == WORD1(v123) && ((v123 ^ v122) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_226;
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, v27))
    {
      goto LABEL_226;
    }

    if (*(this + 12) != *(a6 + 12))
    {
      goto LABEL_265;
    }
  }

LABEL_226:
  if (a7)
  {
    v124 = a1[34];
    re::TypeInfo::referencedType(a6, &v194);
    re::internal::translateType(v124, &v194, &__dst);
    v125 = a1[34];
    re::TypeInfo::dictionaryValueType(a6, v184);
    re::internal::translateType(v125, v184, &v194);
    if ((*(*a1 + 80))(a1, &__dst))
    {
      if ((*(*a1 + 80))(a1, &v194))
      {
        *v184 = 0;
        {
          goto LABEL_343;
        }

        goto LABEL_266;
      }

      goto LABEL_231;
    }

LABEL_232:
    p_dst = &__dst;
    goto LABEL_233;
  }

  re::TypeInfo::referencedType(this, v183);
  re::TypeInfo::dictionaryValueType(this, v182);
  re::TypeInfo::referencedType(a6, v180);
  re::TypeInfo::dictionaryValueType(a6, v179);
  re::TypeInfo::TypeInfo(v177, this);
  v132 = (*(*a1 + 80))(a1, v183);
  if (!v132)
  {
    p_dst = v183;
    goto LABEL_233;
  }

  v133 = v132;
  v134 = (*(*a1 + 80))(a1, v182);
  if (!v134)
  {
    p_dst = v182;
    goto LABEL_233;
  }

  v135 = v134;
  v136 = (*(v178 + 96))(a4);
  v176 = v136;
  {
    goto LABEL_266;
  }

  if (!v136)
  {
    goto LABEL_343;
  }

  v137 = *this;
  __dst.n128_u64[0] = 0x449AD97C4B77BED4;
  __dst.n128_u64[1] = "_CompareFunc";
  re::TypeRegistry::typeID(v137, &__dst, v175);
  re::StringID::destroyString(&__dst);
  v138 = *v183[2];
  __dst.n128_u64[0] = v183[0];
  __dst.n128_u64[1] = v138;
  LODWORD(v190) = -1;
  v139 = re::TypeAttributeCollection::operator[](&__dst, v175);
  if (!v139)
  {
    v164 = (*(v178 + 120))(a4, a1[7]);
    (*(v178 + 128))();
    do
    {
      v166 = (*(v178 + 136))(v164, v165);
      v133(a1, "key", 0, v166, v183, v180, 0);
      v167 = (*(v178 + 144))(v164);
      v135(a1, "value", 0, v167, v182, v179, 0);
      (*(v178 + 128))(v164);
      --v136;
    }

    while (v136);
    (*(v178 + 152))(v164, a1[7]);
    goto LABEL_343;
  }

  v140 = v139;
  v198 = 0;
  v195 = 0;
  v196 = 0;
  v197 = 0;
  v194 = a1[7];
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v194, v136);
  ++v197;
  v141 = (*(v178 + 120))(a4, a1[7]);
  if ((*(v178 + 128))())
  {
    do
    {
      v142 = (*(v178 + 136))(v141);
      v143 = (*(v178 + 144))(v141);
      __dst.n128_u64[0] = v142;
      __dst.n128_u64[1] = v143;
      v144 = re::DynamicArray<re::RigNodeConstraint>::add(&v194, &__dst);
    }

    while (((*(v178 + 128))(v141, v144) & 1) != 0);
  }

  (*(v178 + 152))(v141, a1[7]);
  v145 = 0;
  for (j = 0; j != v136; ++j)
  {
    if (v196 <= j)
    {
      v181 = 0;
      v192 = 0u;
      v193 = 0u;
      v190 = 0u;
      v191 = 0u;
      __dst = 0u;
      v171 = v196;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v184 = 136315906;
      *&v184[4] = "operator[]";
      *&v184[12] = 1024;
      *&v184[14] = 789;
      v185 = 2048;
      v186 = j;
      v187 = 2048;
      v188 = v171;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_350:
      v181 = 0;
      v192 = 0u;
      v193 = 0u;
      v190 = 0u;
      v191 = 0u;
      __dst = 0u;
      v172 = v148;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v184 = 136315906;
      *&v184[4] = "operator[]";
      *&v184[12] = 1024;
      *&v184[14] = 789;
      v185 = 2048;
      v186 = j;
      v187 = 2048;
      v188 = v172;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_351;
    }

    (v133)(a1, "key", 0, *&v198[v145], v183, v180, 0, v147);
    v148 = v196;
    if (v196 <= j)
    {
      goto LABEL_350;
    }

    v135(a1, "value", 0, *&v198[v145 + 8], v182, v179, 0);
    v145 += 16;
  }

  if (v194 && v198)
  {
    (*(*v194 + 40))(v194);
  }

LABEL_343:
LABEL_339:
  v51 = *(a1 + 64) ^ 1;
  return v51 & 1;
}

uint64_t re::internal::setTypeMismatchError<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, re::TypeInfo *this, re::TypeInfo *a4)
{
  v7 = re::TypeInfo::name(this)[1];
  re::TypeInfo::name(a4);
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(uint64_t a1, char *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), a2);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteBool(v6, v7);
    v8 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v8 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), a2);
    }

    v6 = *(a1 + 168);
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v6, a3, 1u);
    v7 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v7 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeI8(uint64_t a1, char *a2, char *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), a2);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeI16(uint64_t a1, char *a2, __int16 *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), a2);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeI32(uint64_t a1, char *a2, unsigned int *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), a2);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeI64(uint64_t a1, char *a2, unint64_t *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), a2);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt64(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeU8(uint64_t a1, char *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), a2);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeU16(uint64_t a1, char *a2, unsigned __int16 *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), a2);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeU32(uint64_t a1, char *a2, unsigned int *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), a2);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeU64(uint64_t a1, char *a2, rapidjson::internal **a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), a2);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint64(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeFloat(uint64_t a1, char *a2, float *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), a2);
    }

    v6 = *a3;
    v7 = *(a1 + 168);
    if (fabsf(v6) == INFINITY)
    {
      if (v6 <= 0.0)
      {
        v8 = "-Infinity";
      }

      else
      {
        v8 = "Infinity";
      }

      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), v8);
    }

    else
    {
      v9 = v6;
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(*(a1 + 168));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteDouble(v7, v9);
    }

    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v10 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeDouble(uint64_t a1, char *a2, double *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), a2);
    }

    v6 = *a3;
    v7 = *(a1 + 168);
    if (fabs(v6) == INFINITY)
    {
      if (v6 <= 0.0)
      {
        v8 = "-Infinity";
      }

      else
      {
        v8 = "Infinity";
      }

      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), v8);
    }

    else
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(*(a1 + 168));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteDouble(v7, v6);
    }

    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(char *a1, char *__s)
{
  v4 = strlen(__s);
  rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(a1);

  return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(a1, __s, v4);
}

char *rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(char *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2 == *(result + 3))
  {
    result[60] = 1;
    return result;
  }

  v3 = *(v2 - 16);
  if (*(v2 - 8) == 1)
  {
    if (v3)
    {
      v4 = *result;
      v5 = *(*result + 24);
      if ((*(*result + 32) - v5) <= 0)
      {
        v17 = *result;
        result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v4, 1);
        v4 = v17;
        v5 = *(v17 + 24);
      }

      *(v4 + 24) = v5 + 1;
      *v5 = 44;
      if (v1[68])
      {
        v6 = *v1;
        v7 = *(*v1 + 24);
        if ((*(*v1 + 32) - v7) <= 0)
        {
          v19 = *v1;
          result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v6, 1);
          v6 = v19;
          v7 = *(v19 + 24);
        }

        *(v6 + 24) = v7 + 1;
        *v7 = 32;
      }
    }

    if (v1[68])
    {
      goto LABEL_30;
    }

    v8 = *v1;
    v9 = *(*v1 + 24);
    if ((*(*v1 + 32) - v9) <= 0)
    {
      v18 = *v1;
      rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v8, 1);
      v8 = v18;
      v9 = *(v18 + 24);
    }

    *(v8 + 24) = v9 + 1;
    *v9 = 10;
    goto LABEL_29;
  }

  if (!v3)
  {
    goto LABEL_20;
  }

  v10 = *result;
  v11 = *(*result + 24);
  if ((v3 & 1) == 0)
  {
    if ((*(*result + 32) - v11) <= 0)
    {
      v20 = *result;
      result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v10, 1);
      v10 = v20;
      v11 = *(v20 + 24);
    }

    *(v10 + 24) = v11 + 1;
    *v11 = 44;
LABEL_20:
    v12 = *v1;
    v13 = *(*v1 + 24);
    if ((*(*v1 + 32) - v13) <= 0)
    {
      v16 = *v1;
      result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v12, 1);
      v12 = v16;
      v13 = *(v16 + 24);
    }

    *(v12 + 24) = v13 + 1;
    v14 = 10;
    goto LABEL_28;
  }

  if ((*(*result + 32) - v11) <= 0)
  {
    v21 = *result;
    result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v10, 1);
    v10 = v21;
    v11 = *(v21 + 24);
  }

  *(v10 + 24) = v11 + 1;
  *v11 = 58;
  v15 = *v1;
  v13 = *(*v1 + 24);
  if ((*(*v1 + 32) - v13) <= 0)
  {
    v22 = *v1;
    result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v15, 1);
    v15 = v22;
    v13 = *(v22 + 24);
  }

  *(v15 + 24) = v13 + 1;
  v14 = 32;
LABEL_28:
  *v13 = v14;
  if ((*(v2 - 16) & 1) == 0)
  {
LABEL_29:
    result = rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteIndent(v1);
  }

LABEL_30:
  ++*(v2 - 16);
  return result;
}

char *rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteIndent(char *result)
{
  v1 = ((*(result + 4) - *(result + 3)) >> 4) * *(result + 16);
  v2 = *result;
  v3 = result[61];
  if (*(*result + 32) - *(*result + 24) < v1)
  {
    result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*result, v1);
    if (!v1)
    {
      return result;
    }
  }

  else if (!v1)
  {
    return result;
  }

  do
  {
    v4 = *(v2 + 24);
    *(v2 + 24) = v4 + 1;
    *v4 = v3;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(uint64_t a1, char *__s, uint64_t *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), __s);
    }

    v7 = *a3;
    if (!*a3)
    {
      v8 = *(a1 + 168);
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v8);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v8, "", 0);
      v7 = *a3;
    }

    LOBYTE(v10) = 8;
    DWORD1(v10) = 0;
    *(&v10 + 1) = __s;
    v11 = 0;
    v13 = 0;
    v14 = 0;
    v12 = v7;
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(uint64_t result, uint64_t a2)
{
  if ((*(result + 40) & 1) == 0)
  {
    v3 = result;
    v4 = *(*(result + 128) + 48 * *(result + 112) - 24);
    v5 = *(result + 168);
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v5);
    result = rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v5, a2, v4);
    v6 = *(v3 + 128) + 48 * *(v3 + 112);
    *(v6 - 16) += v4;
  }

  return result;
}

double re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(uint64_t a1, char *__s, unsigned __int8 *a3)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), __s);
    }

    v6 = *a3;
    if ((v6 & 1) == 0)
    {
      v7 = *(a1 + 168);
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v7);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(v7);
      v6 = *a3;
    }

    LOBYTE(v9) = 3;
    DWORD1(v9) = 0;
    *(&v9 + 1) = __s;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v11 = v6;
  }

  return result;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(uint64_t a1, char *__s, uint64_t *a3, int a4)
{
  v4 = *(a1 + 40);
  if ((v4 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), __s);
    }

    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartArray(*(a1 + 168));
    v9 = *a3;
    LOBYTE(v11) = 5;
    DWORD1(v11) = a4 & 0xFFFFFFDF;
    *(&v11 + 1) = __s;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v13 = v9;
  }

  return v4 ^ 1u;
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray(_anonymous_namespace_ *result)
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
      re::DynamicString::format("Failed to deserialize array %s. Expected number of elements: %lld. Actual number of elements: %lld.", &v10, v5, *(v6 - 24), *(v6 - 16));
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

uint64_t rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartArray(uint64_t a1)
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
  *(v2 + 8) = 1;

  return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteStartArray(a1);
}

uint64_t rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::EndArray(uint64_t *a1)
{
  v2 = a1[4];
  v3 = *(v2 - 16);
  a1[4] = v2 - 16;
  if (v3 && (*(a1 + 68) & 1) == 0)
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

  rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndArray(a1);
  return 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

    goto LABEL_35;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

    goto LABEL_29;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

    goto LABEL_29;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

    goto LABEL_29;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

    goto LABEL_39;
  }

  return v21 & 1;
}