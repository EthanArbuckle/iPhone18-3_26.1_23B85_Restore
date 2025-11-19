unsigned int *re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(uint64_t a1, char *a2, float *a3, char a4)
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
      v16 = strtof(v12, v20);
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

unsigned int *re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(uint64_t a1, char *a2, double *a3, char a4)
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

unsigned int *re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(_BYTE *a1, char *a2, uint64_t *a3)
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
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &__str);
    return 1;
  }

  return result;
}

double re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(uint64_t a1, char *a2, _BYTE *a3)
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
    return re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v9);
  }

  return result;
}

unsigned int *re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(uint64_t a1, char *a2, void *a3, int a4)
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
      re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v12);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  v25 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
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

uint64_t re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  v25 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
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

unsigned int *re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(uint64_t a1, char *a2, void *a3)
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
      re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v10);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(uint64_t a1, int a2)
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
      re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v10);
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

uint64_t re::serializeDynamicString<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, void *a4, re *this, re::TypeInfo *a6, int a7)
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
    v32 = 0;
    if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v32))
    {
      if (!v32)
      {
LABEL_33:
        v30 = *(a1 + 64) ^ 1;
        return v30 & 1;
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

    v32 = v23;
    if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v32))
    {
      v24 = v32;
      if (v24 <= (*(**(a1 + 24) + 64))(*(a1 + 24)))
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

      (*(**(a1 + 24) + 64))(*(a1 + 24));
    }
  }

LABEL_24:
  v30 = 0;
  return v30 & 1;
}

void *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5D19000;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5D19000;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::error(uint64_t *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginField(uint64_t a1, int a2, uint64_t a3)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginObject(uint64_t a1)
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
  if (!*(v3 - 32) && *v4 == 64 || (v5 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(*(a1 + 8) + 24, v4, 0), result = 0, v5))
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

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endObject(_anonymous_namespace_ *result)
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

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginArray(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), a2, 0);
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endArray(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
  }

  return v2 == 0;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionary(uint64_t a1, void *a2, int a3)
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
    if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(v16 + 24, v17, 0))
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
    re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(v16 + 24, v17, a2);
  }

  return 1;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryEntry(uint64_t a1)
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
    re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(*(a1 + 8) + 24, 0);
    *(v2 - 32) = 0;
    v3 = "key";
  }

  *(v2 - 40) = v3;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryValue(uint64_t result)
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

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionaryEntry(_anonymous_namespace_ *result)
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

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionary(uint64_t a1, void *a2)
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

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginData(uint64_t a1, void *a2)
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
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(v3 + 24, &v12);
    return 1;
  }

  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginOptional(uint64_t a1)
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

  re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(*(a1 + 8) + 24, *(v1 + 40 * *(a1 + 40) - 40), &v3);
  return v3;
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginString(uint64_t a1, uint64_t *a2)
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

    return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(v7, v5, a2);
  }
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, BOOL *a2)
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

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _BYTE *a2)
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

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _BYTE *a2)
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

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _WORD *a2)
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

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, unsigned int *a2)
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

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _DWORD *a2)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, uint64_t *a2)
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

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, unint64_t *a2)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, void *a2)
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

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, float *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), a2, 0);
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, double *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), a2, 0);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializeString(uint64_t a1, void *__dst, size_t __n)
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

void *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializeData(void *result, void *__dst)
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

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
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

  re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(*(a1 + 8) + 24, *(v6 + 40 * *(a1 + 40) - 40), &v8);
  v9 = v8 != 0;
  (*(**(a3 + 32) + 16))(*(a3 + 32), a1, a2, &v9);
}

_BYTE *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::read(uint64_t a1, uint64_t a2, re **this)
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

unsigned int *re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(uint64_t a1, char *a2, int *a3)
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
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v12);
    return 1;
  }

  return result;
}

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v21);
  if (v21[0] == 1)
  {
    re::TypeInfo::TypeInfo(v18, &v22);
    if (*(v19 + 96) || (re::TypeRegistry::typeInfo(v18[0], *(v19 + 80), v23), v23[0] == 1))
    {
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, v18, a4);
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

uint64_t re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
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
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v53, a5);
      goto LABEL_15;
    }

    if (v54 == v50)
    {
      re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v53, &v49, a5);
    }

    else
    {
      v22 = re::TypeInfo::name(&v53)[1];
      re::TypeInfo::name(&v49);
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

unsigned int *re::serializeBool<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, BOOL *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeChar<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeI8<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeI16<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _WORD *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeI32<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeI64<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unint64_t *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeU8<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeU16<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _WORD *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeU32<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _DWORD *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeU64<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, void *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeFloat<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *this, re::TypeInfo *a6, char a7)
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

  return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, a4, a7);
}

unsigned int *re::serializeDouble<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, double *a4, re *this, re::TypeInfo *a6, char a7)
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

  return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, a4, a7);
}

uint64_t re::serializeCString<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, const char **a4, re *this, re::TypeInfo *a6, int a7)
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
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v40))
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

      goto LABEL_44;
    }

    if (v40 != 2)
    {
      if (v40 == 1)
      {
LABEL_17:
        goto LABEL_24;
      }

LABEL_44:
      if (*a4 && *(a1 + 64) == 1)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      goto LABEL_47;
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
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v39))
    {
      goto LABEL_44;
    }

    v25 = *a4;
    v26 = v39;
    if (*a4 && v39 == v24)
    {
      if (v24)
      {
LABEL_34:
        v25 = *a4;
LABEL_43:
        v25[v26] = 0;
        goto LABEL_44;
      }
    }

    else
    {
      if (v25)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      if (v26 > (*(**(a1 + 24) + 64))(*(a1 + 24)))
      {
        (*(**(a1 + 24) + 64))(*(a1 + 24));
        goto LABEL_24;
      }

      if (((v26 == -1) << 63) >> 63 != (v26 == -1))
      {
        goto LABEL_24;
      }

      v25 = (*(**(a1 + 48) + 32))(*(a1 + 48), v26 + 1, 0);
      *a4 = v25;
      if (v26)
      {
        goto LABEL_34;
      }
    }

    v26 = 0;
    goto LABEL_43;
  }

  v40 = 0;
  v13 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v40);
  v19 = 0;
  if (v13)
  {
    if (!v40)
    {
LABEL_12:
LABEL_47:
      v19 = *(a1 + 64) ^ 1;
      return v19 & 1;
    }

    if (v40 != 1)
    {
      v39 = 0;
      if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v39))
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

uint64_t re::serializeStringID<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _anonymous_namespace_ *a4, re *this, re::TypeInfo *a6, int a7)
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
    v39 = 0;
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v39))
    {
      goto LABEL_26;
    }

    v19 = v39;
    if (v39)
    {
      if (v19 > (*(**(a1 + 24) + 64))(*(a1 + 24)))
      {
        (*(**(a1 + 24) + 64))(*(a1 + 24));
        goto LABEL_26;
      }

      if (((v19 == -1) << 63) >> 63 != (v19 == -1))
      {
        goto LABEL_26;
      }

      v33 = (*(**(a1 + 56) + 32))(*(a1 + 56), v19 + 1, 0);
      v33[v19] = 0;
      v37 = 0;
      v38 = &str_67;
      v35 = re::StringID::operator=(a4, &v37);
      if (v37)
      {
        if (v37)
        {
        }
      }

      v31 = *(**(a1 + 56) + 40);
    }

    else
    {
      v37 = 0;
      v38 = &str_67;
      v30 = re::StringID::operator=(a4, &v37);
      if ((v37 & 1) == 0)
      {
LABEL_32:
        v32 = *(a1 + 64) ^ 1;
        return v32 & 1;
      }
    }

    v31();
    goto LABEL_32;
  }

  v37 = 0;
  if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v37))
  {
    if (v37)
    {
    }

    goto LABEL_32;
  }

LABEL_26:
  v32 = 0;
  return v32 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v40 = *MEMORY[0x1E69E9840];
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
    v36[0] = 0x258C98EAAF29A10ALL;
    v36[1] = "CallbackSerializerAttribute";
    v15 = re::TypeRegistry::typeID(v13, v36, buf);
    if (*buf && (v32 = *&buf[8], v33 = v14, LODWORD(v34) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v13 + 768, &v32)) != 0))
    {
      v16 = *v15;
    }

    else
    {
      v16 = 0;
    }

    if (v36[0])
    {
      if (v36[0])
      {
      }
    }

    v21 = *v16;
    v22 = *(a1 + 264);
    v36[0] = 0;
    if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, v36))
    {
      v23 = *(a1 + 56);
      v34 = 0;
      v35 = 0;
      v32 = v23;
      v33 = 0;
      re::DynamicString::setCapacity(&v32, 0);
      if (v36[0])
      {
        re::DynamicString::resize(&v32, v36[0], 0);
        if (v33)
        {
          v24 = v34;
        }

        else
        {
          v24 = &v33 + 1;
        }
      }

      if (v33)
      {
        v25 = v34;
      }

      else
      {
        v25 = &v33 + 1;
      }

      v26 = (*(v21 + 80))(*(a1 + 48), v22, v21, a4, v25);
      if ((v26 & 1) == 0)
      {
        v27 = *re::foundationSerializationLogObjects(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          if (v33)
          {
            v28 = v34;
          }

          else
          {
            v28 = &v33 + 1;
          }

          v29 = re::TypeInfo::name(this)[1];
          *buf = 136315650;
          *&buf[4] = a2;
          *&buf[12] = 2080;
          *&buf[14] = v28;
          v38 = 2080;
          v39 = v29;
          _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_INFO, "Failed to parse %s: %s (type %s) using deserialization callback - skipping.", buf, 0x20u);
        }
      }

      if (v32 && (v33 & 1) != 0)
      {
        (*(*v32 + 40))();
      }

      goto LABEL_40;
    }

LABEL_41:
    v30 = 0;
    return v30 & 1;
  }

  v32 = 0;
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v32))
  {
    goto LABEL_41;
  }

  if (v32)
  {
  }

LABEL_40:
  v30 = *(a1 + 64) ^ 1;
  return v30 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString(uint64_t a1, char *a2, const re::TypeInfo *a3, char **a4, re *this, re::TypeInfo *a6, char a7)
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
  if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v49))
  {
    if (v49 == 1)
    {
      v48 = 0;
      re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference((a1 + 24), &v48);
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
      if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v44))
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

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer(uint64_t a1, char *a2, int a3, void **a4, re::TypeInfo *this, const re::TypeInfo *a6, int a7)
{
  v98 = *MEMORY[0x1E69E9840];
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
    v15 = 0;
    goto LABEL_5;
  }

  if (*(a6 + 12) != 9 || isPointerToPolymorphicType && (!re::TypeInfo::isPointerToPolymorphicType(a6) || (v29 = re::TypeInfo::name(this), v30 = re::TypeInfo::name(a6), !re::StringID::operator==(v29, v30))))
  {
    goto LABEL_28;
  }

  v15 = 1;
LABEL_5:
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &buf);
  re::TypeInfo::TypeInfo(v90, &buf + 8);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &buf);
  re::TypeInfo::TypeInfo(v88, &buf + 8);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v24 = *v91;
    v87[0] = v90[0];
    v87[1] = v24;
    if (!v90[0])
    {
      goto LABEL_8;
    }

LABEL_11:
    re::TypeRegistry::typeInfo(*this, v87, &buf);
    re::TypeInfo::TypeInfo(v85, &buf + 8);
    v84 = 0;
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v84))
    {
      goto LABEL_28;
    }

    if (v84 != 1)
    {
      if (!v84)
      {
        if ((a7 & 1) == 0 && *a4)
        {
          re::TypeInfo::releaseInstance(v85, *a4, *(a1 + 48), *(a1 + 264));
          *a4 = 0;
        }

        goto LABEL_115;
      }

      if (isPointerToPolymorphicType)
      {
        if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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
            v58 = *(v89 + 22);
            v59 = (v58 - 1);
            if (v58 == 1)
            {
              goto LABEL_80;
            }

            v60 = 0;
            while (1)
            {
              re::TypeInfo::derivedClass(v88, v60, &buf);
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

            v63 = *v97;
            v94 = buf;
            v95 = v63;
            if (!buf)
            {
LABEL_80:
              v64 = re::TypeInfo::polymorphicObjectName(v88);
              if ((*v64 ^ v57) > 1 || (v64 = v64[1], v64 != v45) && (v64 = strcmp(v64, v45), v64) || (v65 = *v89, v94 = v88[0], v95 = v65, !v88[0]))
              {
                v68 = *re::foundationSerializationLogObjects(v64);
                if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf) = 136315138;
                  *(&buf + 4) = v45;
                  _os_log_error_impl(&dword_1E1C61000, v68, OS_LOG_TYPE_ERROR, "Skipping unknown polymorphic type. Type name = %s", &buf, 0xCu);
                  if (a7)
                  {
LABEL_113:
                    if ((*(a1 + 64) & 1) == 0)
                    {
                      v78 = *(a1 + 152) + 48 * *(a1 + 136);
                      ++*(v78 - 16);
                    }

                    goto LABEL_115;
                  }
                }

                else if (a7)
                {
                  goto LABEL_113;
                }

                if (*a4)
                {
                  re::TypeInfo::releaseInstance(v85, *a4, *(a1 + 48), *(a1 + 264));
                  *a4 = 0;
                }

                goto LABEL_113;
              }
            }

            if ((a7 & 1) == 0 && *a4)
            {
              re::TypeInfo::releaseInstance(v85, *a4, *(a1 + 48), *(a1 + 264));
              *a4 = 0;
            }

            re::TypeRegistry::typeInfo(v88[0], &v94, &buf);
            v66 = re::TypeInfo::TypeInfo(v93, &buf + 8);
            if (v15)
            {
              v67 = *(a1 + 272);
            }

            else
            {
              v67 = *(a1 + 272);
              if (*this == v67)
              {
                re::TypeInfo::operator=(v85, v93);
                v72 = v94;
                v73 = v95;
                goto LABEL_108;
              }
            }

            v70 = re::TypeInfo::name(v66);
            v71 = re::TypeRegistry::typeInfo(v67, v70, &buf);
            if (buf != 1)
            {
              v74 = *re::foundationSerializationLogObjects(v71);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                v75 = re::TypeInfo::name(v93)[1];
                LODWORD(buf) = 136315138;
                *(&buf + 4) = v75;
                _os_log_impl(&dword_1E1C61000, v74, OS_LOG_TYPE_DEFAULT, "No matching runtime type found for serialized polymorphic type %s. Skipping unknown type.", &buf, 0xCu);
              }

              *&buf = 0;
              *(&buf + 1) = 0xFFFFFFFFLL;
              (*(*a1 + 16))(a1, 0, &buf);
              if ((*(a1 + 64) & 1) == 0)
              {
                (*(*a1 + 72))(a1, v45, 0, 0, v93, v93, 1);
              }

              goto LABEL_112;
            }

            re::TypeInfo::operator=(v85, &buf + 8);
            v72 = v85[0];
            v73 = *v86;
LABEL_108:
            Instance = re::TypeInfo::createInstance(v85, *(a1 + 48), *(a1 + 264));
            v77 = Instance;
            if ((a7 & 1) == 0)
            {
              *a4 = Instance;
              *&buf = v72;
              *(&buf + 1) = v73;
              re::internal::setActualType(a4, this, &buf);
            }

            v92[0] = v72;
            v92[1] = v73;
            (*(*a1 + 16))(a1, v77, v92);
            if ((*(a1 + 64) & 1) == 0)
            {
              (*(*a1 + 72))(a1, v45, 0, v77, v85, v93, v77 == 0);
            }

LABEL_112:
            (*(*a1 + 24))(a1);
            goto LABEL_113;
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
          v52 = re::TypeInfo::createInstance(v90, *(a1 + 48), 0);
        }

        v53 = 0;
        *a4 = v52;
        goto LABEL_67;
      }

      v50 = *(a1 + 272);
      if (v90[0] != v50)
      {
        v51 = re::TypeInfo::name(v90);
        re::TypeRegistry::typeInfo(v50, v51, &buf);
        if ((buf & 1) == 0)
        {
          v52 = 0;
          v53 = 1;
          goto LABEL_67;
        }

        re::TypeInfo::operator=(v90, &buf + 8);
      }

      v52 = re::TypeInfo::createInstance(v90, *(a1 + 48), 0);
      v53 = 0;
LABEL_67:
      v56 = *v91;
      *&v81 = v90[0];
      *(&v81 + 1) = v56;
      re::internal::SharedObjectGraph::beginObject((a1 + 336), v52, &v81);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, v52, v90, v88, v53);
      }

      if (*(a1 + 336) == 1)
      {
        --*(a1 + 488);
        ++*(a1 + 496);
      }

      goto LABEL_115;
    }

    LODWORD(v94) = 0;
    re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference((a1 + 24), &v94);
    if (*(a1 + 64))
    {
      goto LABEL_28;
    }

    v33 = v94;
    if (*(a1 + 408) > v94)
    {
      re::internal::SharedObjectGraph::typeID((a1 + 336), v94, v83);
      if (!re::internal::areCompatible(this, v83))
      {
        v54 = re::TypeInfo::name(v90)[1];
        v55 = *(a1 + 272);
        re::internal::SharedObjectGraph::typeID((a1 + 336), v33, &buf);
        LOBYTE(v80) = v54;
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
          re::TypeInfo::releaseInstance(v85, *a4, *(a1 + 48), *(a1 + 264));
          *a4 = 0;
        }
      }

      v35 = re::internal::SharedObjectGraph::object((a1 + 336), v33);
      v36 = v35;
      *a4 = v35;
      if ((*(v86 + 49) & 2) != 0)
      {
        v69 = v86[4];
        if (v69)
        {
          v69(v35);
        }

        if (*(a1 + 336) == 1 && *(a1 + 337) == 1)
        {
          re::internal::SharedObjectGraph::addChild((a1 + 336), *(*(a1 + 504) + 4 * *(a1 + 488) - 4), v33);
        }
      }

      else
      {
        re::internal::SharedObjectGraph::typeID((a1 + 336), v33, v93);
        if (!v93[0])
        {
          LOBYTE(v80) = v33;
          v21 = "TypeID for shared object at index %d is invalid.";
          goto LABEL_64;
        }

        re::TypeRegistry::typeInfo(v93[0], v93, &buf);
        if ((buf & 1) == 0)
        {
          LOBYTE(v80) = v33;
          v21 = "No TypeInfo found for shared object at index %d.";
          goto LABEL_64;
        }

        v37 = re::TypeInfo::createInstance((&buf + 8), *(a1 + 48), *(a1 + 264));
        *a4 = v37;
        if ((re::TypeInfo::copy((&buf + 8), v37, v36, *(a1 + 48), *(a1 + 264)) & 1) == 0)
        {
          v80 = re::TypeInfo::name((&buf + 8))[1];
          v21 = "Failed to copy non-shareable object of type '%s'.";
LABEL_64:
          v22 = a1;
          v23 = 0;
          goto LABEL_9;
        }
      }

      re::internal::SharedObjectGraph::typeID((a1 + 336), v33, v82);
      re::TypeInfo::setActualTypeForPointer(this, a4, v82);
      goto LABEL_115;
    }

    LOBYTE(v80) = v94;
    v21 = "Invalid reference ID for shared object: %u";
    goto LABEL_64;
  }

  re::internal::actualType(a4, this, v87);
  if (v87[0])
  {
    goto LABEL_11;
  }

LABEL_8:
  v80 = re::TypeInfo::name(this)[1];
  v21 = "Failed to get actual type of polymorphic object. Type %s.";
  v22 = a1;
  v23 = a2;
LABEL_9:
LABEL_28:
  v31 = 0;
  return v31 & 1;
}

_BYTE *re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference(_BYTE *result, _DWORD *a2)
{
  if ((result[40] & 1) == 0)
  {
    v3 = result;
    result = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(result, 0, 0);
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

uint64_t re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5D191C8;
  re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((a1 + 288));
  re::DynamicArray<unsigned long>::deinit(a1 + 216);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  if (*(a1 + 64) == 1)
  {
    re::DynamicString::deinit((a1 + 88));
  }

  re::StringID::destroyString((a1 + 8));
  return a1;
}

void re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D19160;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
  re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::untrackObject(uint64_t result)
{
  if (*(result + 336) == 1)
  {
    --*(result + 488);
    ++*(result + 496);
  }

  return result;
}

void re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doOpen(uint64_t a1)
{
  *(a1 + 337) = 1;
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doClose(uint64_t a1)
{
  re::internal::SharedObjectGraph::markAndSweep((a1 + 336), *(a1 + 48), *(a1 + 264));
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v27 = 6059476;
  v28 = "BOOL";
  v2 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeBool<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6104748;
  v28 = "char";
  v3 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeChar<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x172E117BCLL;
  v28 = "int8_t";
  v4 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI8<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93A4A92;
  v28 = "int16_t";
  v5 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI16<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93BFE06;
  v28 = "int32_t";
  v6 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI32<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93EC744;
  v28 = "int64_t";
  v7 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6655224;
  v28 = "long";
  v8 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x31CD534126;
  v28 = "uint8_t";
  v9 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU8<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0D4E68;
  v28 = "uint16_t";
  v10 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU16<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0F01DCLL;
  v28 = "uint32_t";
  v11 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU32<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD11CB1ALL;
  v28 = "uint64_t";
  v12 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x1947BDF6CLL;
  v28 = "size_t";
  v13 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 195052728;
  v28 = "float";
  v14 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeFloat<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x161EEF7A2;
  v28 = "double";
  v15 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDouble<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 189247272;
  v28 = "char*";
  v16 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeCString<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2686EB529B3EE220;
  v28 = "DynamicString";
  v17 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDynamicString<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x458DDB01A18;
  v28 = "StringID";
  v18 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeStringID<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
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
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v25, re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
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

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
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

void *re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this)
{
  v4 = re::TypeInfo::name(this);
  if (*v4 >> 1 != 94623636 || (v6 = v4[1], v7 = re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v6 != "char*") && (v8 = strcmp(v6, "char*"), v7 = re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v8))
  {
    if (*(this + 12) != 9)
    {
LABEL_9:
      v7 = re::serializeType<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
      if (*this == *(a1 + 272))
      {
        v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(this + 2) | 0xFFFFFFFF00000000);
        v7 = re::serializeType<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v10)
        {
          return *v10;
        }
      }

      return v7;
    }

    v9 = *(*(this + 2) + 88);
    v7 = re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer;
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

void re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *a1)
{
  if (a1[34])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
    a1[34] = 0;
  }
}

void re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
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

unsigned int *(*re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t *a4, re *this, re::TypeInfo *a6, uint64_t a7, uint64_t a8)
{
  v2 = re::serializeType<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
  if (*a2 == *(a1 + 272))
  {
    v3 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(a2 + 16) | 0xFFFFFFFF00000000);
    v2 = re::serializeType<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
    if (v3)
    {
      return *v3;
    }
  }

  return v2;
}

unsigned int *re::serializeType<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t *a4, re *this, re::TypeInfo *a6, uint64_t a7, uint64_t a8)
{
  v10 = this;
  v257 = *MEMORY[0x1E69E9840];
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

  if (*(v10 + 12) != *(a6 + 12))
  {
    goto LABEL_356;
  }

  v19 = re::DataArray<re::TextureAtlasTile>::tryGet(*v10 + 96, **(v10 + 16));
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
    v33 = re::TypeInfo::name(v10);
    v34 = re::TypeInfo::name(a6);
    if (!re::StringID::operator==(v33, v34))
    {
      v52 = re::TypeInfo::name(a6)[1];
      re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
      re::TypeInfo::name(v10);
      re::DataArray<re::TextureAtlasTile>::tryGet(*v10 + 96, **(v10 + 16));
      LOBYTE(v234) = v52;
      v24 = "Type name changed: Serialized type %s version %u, runtime type %s version %u.";
      goto LABEL_224;
    }

    v35 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
    if (v35)
    {
      v36 = *(v35 + 16);
    }

    else
    {
      v36 = -1;
    }

    re::TypeInfo::atVersion(v10, v36, &v237);
    if ((v237 & 1) == 0)
    {
      v62 = re::TypeInfo::name(a6)[1];
      re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
      LOBYTE(v234) = v62;
      v24 = "Unknown serialized type %s version %u. No matching runtime type found.";
      goto LABEL_224;
    }

    if (a7)
    {
      Instance = 0;
    }

    else
    {
      Instance = re::TypeInfo::createInstance(&v238, *(a1 + 48), *(a1 + 264));
    }

    if (*(a1 + 64) & 1) != 0 || ((*(*a1 + 72))(a1, a2, a3, Instance, &v238, a6, a7), (*(a1 + 64)))
    {
      if (!Instance)
      {
        goto LABEL_357;
      }

      v125 = *(a1 + 48);
      v126 = *(a1 + 264);
      v127 = &v238;
      v128 = Instance;
      goto LABEL_213;
    }

    if (a7 & 1) != 0 || (re::TypeInfo::TypeInfo(&Tag, &v238), re::internal::upgradeObject(Instance, &Tag, a4, v10, *(a1 + 48), *(a1 + 264), buf), (buf[0]))
    {
      LOBYTE(v10) = 1;
      return (v10 & 1);
    }

    if (v252)
    {
      LOBYTE(v201) = v253;
    }

    else
    {
      v201 = &v252 + 1;
    }

    if ((buf[0] & 1) != 0 || !v251 || (v252 & 1) == 0)
    {
      goto LABEL_357;
    }

    v173 = *(*v251 + 40);
LABEL_339:
    v173();
    goto LABEL_357;
  }

LABEL_18:
  v23 = *(v10 + 12);
  if (v23 > 4)
  {
    if (*(v10 + 12) > 6u)
    {
      if (v23 == 7)
      {
        if (v10 != a6)
        {
          if (*v10 == *a6)
          {
            v108 = **(v10 + 16);
            v109 = **(a6 + 2);
            if (v108 != v109)
            {
              goto LABEL_356;
            }

            v18 = WORD1(v108) == WORD1(v109);
            v110 = (v109 ^ v108) & 0xFFFFFF00000000;
            if (!v18 || v110 != 0)
            {
              goto LABEL_356;
            }
          }

          else if (!re::areSameTranslatedVersion(v10, a6, a3))
          {
            goto LABEL_356;
          }
        }

        v41 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 16);
        if (a7)
        {
          if (v41)
          {
            v237 = 0;
            if (v237 < *(*(a6 + 2) + 96))
            {
              re::TypeInfo::unionMember(a6, v237, buf);
              if ((*(a1 + 64) & 1) == 0)
              {
                (*(*a1 + 72))(a1, "value", 0, 0, buf, buf, 1);
              }
            }

            goto LABEL_438;
          }
        }

        else if (v41)
        {
          re::TypeInfo::TypeInfo(buf, v10);
          Tag = re::UnionAccessor::readTag(buf, a4);
          v60 = Tag;
          re::UnionAccessor::reset(buf, a4, Tag, *(a1 + 48));
          if (v60 < *(*(v10 + 16) + 96))
          {
            re::TypeInfo::unionMember(v10, v60, &v237);
            if ((*(a1 + 64) & 1) == 0)
            {
              (*(*a1 + 72))(a1, "value", 0, a4, &v237, &v237, 0);
            }
          }

          goto LABEL_438;
        }

        goto LABEL_357;
      }

      if (v23 != 8)
      {
        if (v23 == 9)
        {
          v234 = re::TypeInfo::name(v10)[1];
          v24 = "Pointer type (%s) needs to be handled explicitly by the serializer.";
LABEL_224:
          v129 = a1;
          v130 = a2;
LABEL_255:
          goto LABEL_357;
        }

LABEL_89:
        LOBYTE(v234) = *(v10 + 12);
        v24 = "Invalid type category. Value = %d";
        goto LABEL_224;
      }

      if (!a7)
      {
        goto LABEL_83;
      }

      if (*(*(v10 + 16) + 49))
      {
        v66 = *(a1 + 272);
        Tag = 0x2686EB529B3EE220;
        v248 = "DynamicString";
        re::TypeRegistry::typeInfo(v66, &Tag, buf);
        v67 = re::TypeInfo::TypeInfo(&v237, &buf[8]);
        if (Tag)
        {
          if (Tag)
          {
          }
        }

        v68 = &v237;
        v69 = &v237;
        v70 = a1;
        v71 = a2;
      }

      else
      {
        v43 = re::TypeInfo::name(v10);
        if ((*v43 & 0xFFFFFFFFFFFFFFFELL) != 0x2686EB529B3EE220 || (v45 = v43[1], v45 != "DynamicString") && strcmp(v45, "DynamicString"))
        {
LABEL_83:
          v46 = *(v10 + 16);
          v47 = *(v46 + 48);
          if ((v47 & 0x10) == 0 && *(v10 + 12) == 8)
          {
            v48 = *(v46 + 168);
            if (v48)
            {
              v49 = *v10;
              v50 = *a6;
              *buf = &unk_1F5D19230;
              *&buf[8] = a1;
              *&buf[16] = v49;
              v251 = v50;
              v252 = 0;
              v253 = 0;
              v254 = 1;
              v255 = 0;
              v256 = 0;
              v237 = a2;
              LODWORD(v238) = a3;
              v239 = 0;
              v240 = 0;
              v241 = 0;
              v48(buf, a4, v51);
              LOBYTE(v10) = *(a1 + 64) ^ 1;
              *buf = &unk_1F5D19230;
              if (v252)
              {
                if ((v254 & 1) == 0)
                {
                  (*(*v252 + 40))();
                }
              }

              return (v10 & 1);
            }
          }

          if ((v47 & 4) == 0)
          {
            if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
            {
              v53 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
              if (v53 && *(v53 + 22) == 3 && *v53 && (v54 = *(v53 + 8), (*(v54 + 46) & 0x40) != 0) && ((*(v54 + 22) & 0x1000) != 0 ? (v55 = *(v53 + 8)) : (v55 = *(v54 + 8)), !strcmp(v55, "@version")))
              {
                v56 = *(v54 + 24);
              }

              else
              {
                v56 = 1;
              }

              v57 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
              if (v57)
              {
                v59 = *(v57 + 16);
              }

              else
              {
                v59 = -1;
              }

              if (v56 == v59)
              {
                if (v10 != a6)
                {
                  if (*v10 == *a6)
                  {
                    v207 = **(v10 + 16);
                    v208 = **(a6 + 2);
                    if (v207 == v208 && WORD1(v207) == WORD1(v208) && ((v208 ^ v207) & 0xFFFFFF00000000) == 0)
                    {
                      goto LABEL_364;
                    }
                  }

                  else if (re::areSameTranslatedVersion(v10, a6, v58))
                  {
                    goto LABEL_364;
                  }

                  if (*(v10 + 12) == *(a6 + 12))
                  {
                    re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, v10, a6, a7);
                  }

                  else
                  {
                    v209 = re::TypeInfo::name(v10)[1];
                    re::TypeInfo::name(a6);
                  }

                  goto LABEL_438;
                }

LABEL_364:
                re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, v10, a7);
LABEL_438:
                if (*(a1 + 64))
                {
                  goto LABEL_357;
                }

                v215 = *(a1 + 152) + 48 * *(a1 + 136);
                ++*(v215 - 16);
                goto LABEL_440;
              }

              if (*v10 == *a6 && (v178 = **(v10 + 16), v179 = **(a6 + 2), v178 == v179) && WORD1(v178) == WORD1(v179) && ((v179 ^ v178) & 0xFFFFFF00000000) == 0)
              {
                re::TypeInfo::atVersion(v10, v56, &v237);
                if (v237)
                {
                  if (a7)
                  {
                    v225 = 0;
                  }

                  else
                  {
                    v225 = re::TypeInfo::createInstance(&v238, *(a1 + 48), *(a1 + 264));
                  }

                  re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, v225, &v238, a7);
                  v227 = *(a1 + 64);
                  if (v227 == 1)
                  {
                    if (v225)
                    {
                      re::TypeInfo::releaseInstance(&v238, v225, *(a1 + 48), *(a1 + 264));
                    }
                  }

                  else if ((a7 & 1) == 0)
                  {
                    re::TypeInfo::TypeInfo(&Tag, &v238);
                    re::internal::upgradeObject(v225, &Tag, a4, v10, *(a1 + 48), *(a1 + 264), buf);
                    if ((buf[0] & 1) == 0)
                    {
                      if (v252)
                      {
                        LOBYTE(v233) = v253;
                      }

                      else
                      {
                        v233 = &v252 + 1;
                      }

                      if (buf[0] & 1) == 0 && v251 && (v252)
                      {
                        (*(*v251 + 40))();
                      }
                    }
                  }

                  LOBYTE(v10) = v227 ^ 1;
                  return (v10 & 1);
                }

                v234 = re::TypeInfo::name(v10)[1];
                v24 = "Unknown serialized type %s version %u. No matching runtime type found.";
              }

              else
              {
                v180 = re::TypeInfo::name(a6)[1];
                re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
                LOBYTE(v234) = v180;
                v24 = "Type %s version %u expected in JSON. Actual version found in JSON: %u";
              }

LABEL_254:
              v129 = a1;
              v130 = 0;
              goto LABEL_255;
            }

LABEL_357:
            LOBYTE(v10) = 0;
            return (v10 & 1);
          }

          re::TypeMemberCollection::TypeMemberCollection(buf, *v10, v46);
          re::TypeMemberCollection::operator[](buf, 0, &Tag);
          v122 = *(v249 + 24);
          re::TypeRegistry::typeInfo(Tag, *v249, buf);
          re::TypeInfo::TypeInfo(v246, &buf[8]);
          if (v10 == a6)
          {
            goto LABEL_204;
          }

          if (*v10 == *a6)
          {
            v168 = **(v10 + 16);
            v169 = *(a6 + 2);
            v170 = *v169;
            if (v168 == *v169 && WORD1(v168) == WORD1(v170) && ((v170 ^ v168) & 0xFFFFFF00000000) == 0)
            {
              goto LABEL_204;
            }
          }

          else
          {
            if (re::areSameTranslatedVersion(v10, a6, v123))
            {
LABEL_204:
              if (*(a1 + 64))
              {
                goto LABEL_357;
              }

              v124 = (*(*a1 + 72))(a1, a2, a3, a4 + v122, v246, v246, a7);
LABEL_374:
              LOBYTE(v10) = v124;
              return (v10 & 1);
            }

            v169 = *(a6 + 2);
          }

          if (*(v169 + 96) == 1)
          {
            re::TypeMemberCollection::TypeMemberCollection(&v237, *a6, v169);
            re::TypeMemberCollection::operator[](&v237, 0, v242);
            re::TypeRegistry::typeInfo(v242[0], *v243, buf);
            re::TypeInfo::TypeInfo(v244, &buf[8]);
            if (*(a1 + 64))
            {
              goto LABEL_357;
            }

            v124 = (*(*a1 + 72))(a1, a2, a3, a4 + v122, v246, v244, a7);
            goto LABEL_374;
          }

LABEL_356:
          goto LABEL_357;
        }

        v70 = a1;
        v71 = a2;
        v68 = v10;
        v69 = v10;
      }

      re::serializeDynamicString<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(v70, v71, v44, 0, v68, v69, 1);
      goto LABEL_440;
    }

    if (v23 != 5)
    {
      if (v23 != 6)
      {
        goto LABEL_89;
      }

      re::TypeRegistry::typeInfo(*v10, *(*(v10 + 16) + 80), buf);
      re::TypeInfo::TypeInfo(&v237, &buf[8]);
      v27 = re::TypeInfo::name(&v237);
      v28 = BYTE4(v238);
      if (BYTE4(v238) == 1)
      {
        if (re::TypeInfo::isInteger(&v237))
        {
          v29 = *v27 >> 1;
          if (v29 > 0x303EE8780EDLL)
          {
            if (v29 == 0x303EE8780EELL)
            {
              v175 = v27[1];
              v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
              if (v175 == "uint32_t")
              {
                goto LABEL_373;
              }

              v176 = strcmp(v175, "uint32_t");
              v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
              if (!v176)
              {
                goto LABEL_373;
              }

              goto LABEL_349;
            }

            if (v29 != 0x303EE88E58DLL)
            {
              goto LABEL_349;
            }

            v148 = v27[1];
            v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
            if (v148 == "uint64_t")
            {
              goto LABEL_373;
            }

            v149 = "uint64_t";
          }

          else
          {
            if (v29 != 3393056694)
            {
              if (v29 == 0x303EE86A734)
              {
                v30 = v27[1];
                v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
                if (v30 == "uint16_t")
                {
                  goto LABEL_373;
                }

                v32 = strcmp(v30, "uint16_t");
                v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
                if (!v32)
                {
                  goto LABEL_373;
                }
              }

              goto LABEL_349;
            }

            v148 = v27[1];
            v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
            if (v148 == "size_t")
            {
              goto LABEL_373;
            }

            v149 = "size_t";
          }

          v174 = strcmp(v148, v149);
          v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
          if (!v174)
          {
            goto LABEL_373;
          }

LABEL_349:
          *buf = 0x18E6A9A093;
          *&buf[8] = "uint8_t";
          v177 = re::StringID::operator==(v27, buf);
          v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>;
          if (v177)
          {
            goto LABEL_373;
          }

          *buf = 0x16749F63A2;
          *&buf[8] = "int64_t";
          if (re::StringID::operator==(v27, buf))
          {
            v124 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(a1, a2, a3, a4, v10, a6, a7);
            goto LABEL_374;
          }

          Tag = 3327612;
          v248 = "long";
          v181 = re::StringID::operator==(v27, &Tag);
          v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>;
          if (v181 || (*buf = 104431, *&buf[8] = "int", v182 = re::StringID::operator==(v27, buf), v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>, v182) || (*buf = 109413500, *&buf[8] = "short", v183 = re::StringID::operator==(v27, buf), v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>, v183))
          {
LABEL_373:
            v124 = v31(a1, a2, a3, a4, v10, a6, a7);
            goto LABEL_374;
          }

LABEL_227:
          if (v10 == a6)
          {
            goto LABEL_235;
          }

          if (*v10 == *a6)
          {
            v133 = **(v10 + 16);
            v134 = **(a6 + 2);
            if (v133 == v134 && WORD1(v133) == WORD1(v134) && ((v134 ^ v133) & 0xFFFFFF00000000) == 0)
            {
              goto LABEL_235;
            }
          }

          else if (re::areSameTranslatedVersion(v10, a6, v26))
          {
            goto LABEL_235;
          }

          if (*(v10 + 12) != *(a6 + 12))
          {
            goto LABEL_356;
          }

LABEL_235:
          if (a7)
          {
            v135 = *(a1 + 272);
            re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
            re::TypeInfo::TypeInfo(&Tag, &buf[8]);
            re::internal::translateType(v135, &Tag, &v237);
            v136 = *(a1 + 272);
            re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), buf);
            re::TypeInfo::TypeInfo(v246, &buf[8]);
            re::internal::translateType(v136, v246, &Tag);
            v137 = (*(*a1 + 80))(a1, &v237);
            if (v137)
            {
              v138 = v137;
              v10 = (*(*a1 + 80))(a1, &Tag);
              if (v10)
              {
                *buf = 0;
                if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(a1 + 24, a2, buf))
                {
                  goto LABEL_357;
                }

                for (i = *buf; i; --i)
                {
                  re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(a1 + 24, 1);
                  v138(a1, "key", 0, 0, &v237, &v237, 1);
                  (v10)(a1, "value", 0, 0, &Tag, &Tag, 1);
                }

LABEL_251:
                goto LABEL_440;
              }

              p_Tag = &Tag;
              goto LABEL_332;
            }

            goto LABEL_242;
          }

          re::TypeRegistry::typeInfo(*v10, *(*(v10 + 16) + 80), buf);
          re::TypeInfo::TypeInfo(&v237, &buf[8]);
          re::TypeRegistry::typeInfo(*v10, *(*(v10 + 16) + 88), buf);
          re::TypeInfo::TypeInfo(&Tag, &buf[8]);
          re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
          re::TypeInfo::TypeInfo(v246, &buf[8]);
          re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), buf);
          re::TypeInfo::TypeInfo(v244, &buf[8]);
          re::TypeInfo::TypeInfo(v242, v10);
          v10 = (*(*a1 + 80))(a1, &v237);
          if (!v10)
          {
            p_Tag = &v237;
LABEL_332:
            v162 = re::TypeInfo::name(p_Tag);
            return (v10 & 1);
          }

          v141 = (*(*a1 + 80))(a1, &Tag);
          if (v141)
          {
            v142 = v141;
            v235[0] = (*(v243 + 96))(a4);
            if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(a1 + 24, a2, v235))
            {
              goto LABEL_357;
            }

            v143 = *(a1 + 48);
            v144 = *(v243 + 104);
            re::TypeInfo::TypeInfo(buf, v242);
            v144(a4, buf, v143);
            v145 = v235[0];
            if (!v235[0])
            {
              goto LABEL_251;
            }

            v146 = re::TypeInfo::createInstance(&v237, *(a1 + 48), *(a1 + 264));
            while (1)
            {
              re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(a1 + 24, 0);
              (v10)(a1, "key", 0, v146, &v237, v246, 0);
              v125 = *(a1 + 48);
              if (*(a1 + 64) == 1)
              {
                break;
              }

              v147 = (*(v243 + 112))(a4, v242, v125, v146);
              v142(a1, "value", 0, v147, &Tag, v244, 0);
              if (!--v145)
              {
                re::TypeInfo::releaseInstance(&v237, v146, *(a1 + 48), *(a1 + 264));
                goto LABEL_251;
              }
            }

            v126 = *(a1 + 264);
            v127 = &v237;
            v128 = v146;
LABEL_213:
            re::TypeInfo::releaseInstance(v127, v128, v125, v126);
            goto LABEL_357;
          }

LABEL_252:
          v140 = &Tag;
          goto LABEL_253;
        }

        v28 = BYTE4(v238);
      }

      if (v28 == 8)
      {
        v63 = *v27 >> 1;
        if (v63 == 0x22C6ED80D0CLL)
        {
          v131 = v27[1];
          v31 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (v131 == "StringID")
          {
            goto LABEL_373;
          }

          v132 = strcmp(v131, "StringID");
          v31 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (!v132)
          {
            goto LABEL_373;
          }
        }

        else if (v63 == 0x134375A94D9F7110)
        {
          v64 = v27[1];
          v31 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (v64 == "DynamicString")
          {
            goto LABEL_373;
          }

          v65 = strcmp(v64, "DynamicString");
          v31 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (!v65)
          {
            goto LABEL_373;
          }
        }
      }

      goto LABEL_227;
    }

    if (v10 != a6)
    {
      if (*v10 == *a6)
      {
        v112 = **(v10 + 16);
        v113 = **(a6 + 2);
        if (v112 == v113 && WORD1(v112) == WORD1(v113) && ((v113 ^ v112) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_190;
        }

        v42 = 5;
      }

      else
      {
        if (re::areSameTranslatedVersion(v10, a6, a3))
        {
          goto LABEL_190;
        }

        v42 = *(v10 + 12);
      }

      if (v42 != *(a6 + 12))
      {
        goto LABEL_356;
      }
    }

LABEL_190:
    if (a7)
    {
      v114 = *(a1 + 272);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
      re::TypeInfo::TypeInfo(&Tag, &buf[8]);
      re::internal::translateType(v114, &Tag, &v237);
      v115 = (*(*a1 + 80))(a1, &v237);
      if (v115)
      {
        v116 = v115;
        *buf = 0;
        LOBYTE(v10) = 0;
        if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, buf, 0))
        {
          for (j = *buf; j; --j)
          {
            v116(a1, 0, 0, 0, &v237, &v237, 1);
          }

          goto LABEL_430;
        }

        return (v10 & 1);
      }

LABEL_242:
      v140 = &v237;
LABEL_253:
      v234 = re::TypeInfo::name(v140)[1];
      v24 = "Failed to resolve serialize function for type %s";
      goto LABEL_254;
    }

    re::TypeRegistry::typeInfo(*v10, *(*(v10 + 16) + 80), buf);
    re::TypeInfo::TypeInfo(&Tag, &buf[8]);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
    re::TypeInfo::TypeInfo(v246, &buf[8]);
    re::TypeInfo::TypeInfo(v244, v10);
    v118 = (*(*a1 + 80))(a1, &Tag);
    if (!v118)
    {
      goto LABEL_252;
    }

    v119 = v118;
    v120 = (*(v245 + 88))(a4);
    v242[0] = v120;
    LOBYTE(v10) = 0;
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, v242, 0))
    {
      return (v10 & 1);
    }

    v121 = v242[0];
    if (v120 != v242[0])
    {
      re::TypeRegistry::typeInfo(v244[0], *(v245 + 80), buf);
      re::TypeInfo::TypeInfo(&v237, &buf[8]);
      v97 = *(v239 + 8);
      if (!is_mul_ok(v97, v121))
      {
LABEL_200:
        LOBYTE(v234) = v97;
        v24 = "Size overflow during deserialization. Element size = %zu, count = %zu";
        goto LABEL_254;
      }

      v184 = *(a1 + 48);
      v185 = *(v245 + 96);
      re::TypeInfo::TypeInfo(buf, v244);
      v185(a4, buf, v184, v121);
    }

    if (*(v245 + 104))
    {
      if (v121)
      {
        for (k = 0; k != v121; k = (k + 1))
        {
          v187 = (*(v245 + 104))(a4, k);
          v119(a1, 0, 0, v187, &Tag, v246, 0);
        }
      }
    }

    else
    {
      v188 = *(v245 + 112);
      if (!v188 || !*(v245 + 120) || !*(v245 + 128))
      {
        re::TypeInfo::TypeInfo(buf, v244);
        v234 = re::TypeInfo::name(buf)[1];
        v24 = "List type %s does not provide an indexer or iterator.";
        goto LABEL_224;
      }

      v189 = v188(a4, *(a1 + 56));
      v190 = (*(v245 + 120))();
      if (v190)
      {
        v191 = v190;
        do
        {
          v119(a1, 0, 0, v191, &Tag, v246, 0);
          v191 = (*(v245 + 120))(v189);
        }

        while (v191);
      }

      (*(v245 + 128))(v189, *(a1 + 56));
    }

    goto LABEL_430;
  }

  if (*(v10 + 12) > 2u)
  {
    if (v23 != 3)
    {
      if (v23 != 4)
      {
        goto LABEL_89;
      }

      if (v10 != a6)
      {
        if (*v10 == *a6)
        {
          v77 = **(v10 + 16);
          v78 = **(a6 + 2);
          if (v77 == v78)
          {
            v18 = WORD1(v77) == WORD1(v78);
            v79 = (v78 ^ v77) & 0xFFFFFF00000000;
            if (v18 && v79 == 0)
            {
              goto LABEL_146;
            }
          }
        }

        else if (re::areSameTranslatedVersion(v10, a6, a3))
        {
          goto LABEL_146;
        }

        if (*(a6 + 12) != 4)
        {
          goto LABEL_356;
        }

        v81 = *(v10 + 16);
        v82 = *(a6 + 2);
        v83 = *(v82 + 92) & 0xFFFFFF;
        if ((*(v81 + 92) & 0xFFFFFF) != 0)
        {
          if (!v83)
          {
            goto LABEL_356;
          }
        }

        else if (v83 || *(v81 + 96) != *(v82 + 96))
        {
          goto LABEL_356;
        }
      }

LABEL_146:
      if (a7)
      {
        v84 = *(a1 + 272);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
        re::TypeInfo::TypeInfo(&Tag, &buf[8]);
        re::internal::translateType(v84, &Tag, &v237);
        v85 = (*(*a1 + 80))(a1, &v237);
        if (!v85)
        {
          goto LABEL_242;
        }

        v86 = v85;
        v87 = *(a6 + 2);
        v88 = *(v87 + 92) & 0xFFFFFF;
        if (v88)
        {
          v89 = 0;
          v90 = 8;
        }

        else
        {
          v89 = *(v87 + 96);
          v90 = 4;
        }

        *buf = v89;
        if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, buf, v90))
        {
          goto LABEL_357;
        }

        v159 = *buf;
        if (v88)
        {
          v160 = *buf == 0;
        }

        else
        {
          v160 = 1;
        }

        v161 = v160;
        if (v160)
        {
          if (!*buf)
          {
            goto LABEL_430;
          }
        }

        else
        {
          v242[0] = 0;
          v242[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v242);
        }

        do
        {
          v86(a1, 0, 0, 0, &v237, &v237, 1);
          --v159;
        }

        while (v159);
        if (v161)
        {
          goto LABEL_430;
        }
      }

      else
      {
        re::TypeRegistry::typeInfo(*v10, *(*(v10 + 16) + 80), buf);
        re::TypeInfo::TypeInfo(&Tag, &buf[8]);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
        re::TypeInfo::TypeInfo(v246, &buf[8]);
        re::TypeInfo::TypeInfo(v244, v10);
        v91 = (*(*a1 + 80))(a1, &Tag);
        if (!v91)
        {
          goto LABEL_252;
        }

        v92 = v91;
        v93 = re::ArrayAccessor::size(v244, a4);
        v236 = v93;
        v94 = *(*(v10 + 16) + 92) & 0xFFFFFF;
        if (v94)
        {
          v95 = 8;
        }

        else
        {
          v95 = 4;
        }

        if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, &v236, v95))
        {
          goto LABEL_357;
        }

        v96 = v236;
        if (v93 != v236)
        {
          if ((*(v245 + 92) & 0xFFFFFF) == 0)
          {
            LOBYTE(v234) = v93;
            v24 = "Invalid array size. Expected size = %zu, actual size = %zu";
            goto LABEL_254;
          }

          re::TypeRegistry::typeInfo(v244[0], *(v245 + 80), buf);
          re::TypeInfo::TypeInfo(&v237, &buf[8]);
          v97 = *(v239 + 8);
          if (!is_mul_ok(v97, v96))
          {
            goto LABEL_200;
          }

          re::ArrayAccessor::reset(v244, a4, *(a1 + 48), v96);
          v93 = v96;
        }

        if (v94)
        {
          v202 = v93 == 0;
        }

        else
        {
          v202 = 1;
        }

        v203 = v202;
        if (!v202)
        {
          v204 = *a4;
          v235[0] = 0;
          v235[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, v204, v235);
          v93 = v96;
        }

        if (v93)
        {
          v205 = 0;
          if (v96 <= 1)
          {
            v96 = 1;
          }

          do
          {
            v206 = re::ArrayAccessor::elementAt(v244, a4, v205);
            v92(a1, 0, 0, v206, &Tag, v246, 0);
            ++v205;
          }

          while (v96 != v205);
        }

        if (v203)
        {
          goto LABEL_430;
        }
      }

      (*(*a1 + 24))(a1);
LABEL_430:
      goto LABEL_440;
    }

    if (v10 != a6)
    {
      if (*v10 == *a6)
      {
        v102 = **(v10 + 16);
        v103 = **(a6 + 2);
        if (v102 == v103 && WORD1(v102) == WORD1(v103) && ((v103 ^ v102) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_171;
        }

        v40 = 3;
      }

      else
      {
        if (re::areSameTranslatedVersion(v10, a6, a3))
        {
          goto LABEL_171;
        }

        v40 = *(v10 + 12);
      }

      if (v40 != *(a6 + 12))
      {
        goto LABEL_356;
      }
    }

LABEL_171:
    if (a7)
    {
      LOBYTE(Tag) = 0;
      re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(a1 + 24, a2, &Tag);
      if (Tag == 1)
      {
        v104 = *(a1 + 272);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
        re::TypeInfo::TypeInfo(&v237, &buf[8]);
        re::internal::translateType(v104, &v237, buf);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, 0, buf, buf, 1);
        }
      }
    }

    else
    {
      re::TypeRegistry::typeInfo(*v10, *(*(v10 + 16) + 80), buf);
      re::TypeInfo::TypeInfo(&v237, &buf[8]);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
      re::TypeInfo::TypeInfo(&Tag, &buf[8]);
      re::TypeInfo::TypeInfo(buf, v10);
      v246[0] = (*(*&buf[16] + 88))(a4) != 0;
      v105 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(a1 + 24, a2, v246);
      if (v246[0])
      {
        v106 = re::TypeInfo::createInstance(&v237, *(a1 + 48), *(a1 + 264));
        (*(*&buf[16] + 96))(a4, v106);
        re::TypeInfo::releaseInstance(&v237, v106, *(a1 + 48), *(a1 + 264));
        v107 = (*(*&buf[16] + 88))(a4);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, v107, &v237, &Tag, 0);
        }
      }

      else
      {
        (*(*&buf[16] + 96))(a4, 0, v105);
      }
    }

    goto LABEL_440;
  }

  if (v23 != 1)
  {
    if (v23 != 2)
    {
      goto LABEL_89;
    }

    if (v10 == a6)
    {
      goto LABEL_264;
    }

    if (*v10 == *a6)
    {
      v72 = **(v10 + 16);
      v73 = **(a6 + 2);
      if (v72 == v73 && WORD1(v72) == WORD1(v73) && ((v73 ^ v72) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_136;
      }

      v25 = 2;
    }

    else
    {
      if (re::areSameTranslatedVersion(v10, a6, a3))
      {
        goto LABEL_136;
      }

      v25 = *(v10 + 12);
    }

    if (v25 != *(a6 + 12))
    {
      goto LABEL_356;
    }

    v74 = re::TypeInfo::name(v10);
    v75 = re::TypeInfo::name(a6);
    if (!re::StringID::operator==(v74, v75))
    {
      goto LABEL_356;
    }

LABEL_136:
    if (*v10 != *a6)
    {
      v76 = re::areSameTranslatedVersion(v10, a6, a3);
      goto LABEL_265;
    }

    v150 = **(v10 + 16);
    v151 = **(a6 + 2);
    if (v150 != v151 || WORD1(v150) != WORD1(v151) || ((v151 ^ v150) & 0xFFFFFF00000000) != 0)
    {
      v76 = 0;
      goto LABEL_265;
    }

LABEL_264:
    v76 = 1;
LABEL_265:
    if (a7)
    {
      *buf = 0;
      if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, buf))
      {
        goto LABEL_357;
      }

      if (*buf)
      {
      }

LABEL_440:
      LOBYTE(v10) = *(a1 + 64) ^ 1;
      return (v10 & 1);
    }

    Tag = 0;
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &Tag))
    {
      goto LABEL_357;
    }

    v152 = Tag;
    if (!Tag)
    {
      v24 = "Failed to read enum constant. String is empty.";
      goto LABEL_254;
    }

    if (Tag >= 0x401)
    {
      LOBYTE(v234) = Tag;
      v24 = "Failed to read enum constant. String is too long. Length: %zu";
      goto LABEL_254;
    }

    v171 = (*(**(a1 + 56) + 32))(*(a1 + 56), Tag + 1, 0);
    v171[v152] = 0;
    if (*(a1 + 64) == 1)
    {
      goto LABEL_338;
    }

    v192 = *v171;
    if (*v171)
    {
      v193 = v171[1];
      if (v193)
      {
        v194 = (v171 + 2);
        do
        {
          v192 = 31 * v192 + v193;
          v195 = *v194++;
          v193 = v195;
        }

        while (v195);
      }
    }

    *buf = 2 * v192;
    *&buf[8] = v171;
    EnumConstantIndex = re::internal::getEnumConstantIndex(a6, buf, v172);
    v197 = EnumConstantIndex;
    if (buf[0])
    {
      if (buf[0])
      {
      }
    }

    if ((v197 & 0x80000000) != 0)
    {
      v216 = *re::foundationSerializationLogObjects(EnumConstantIndex);
      if (os_log_type_enabled(v216, OS_LOG_TYPE_INFO))
      {
        v217 = re::TypeInfo::name(a6)[1];
        *buf = 136315394;
        *&buf[4] = v171;
        *&buf[12] = 2080;
        *&buf[14] = v217;
        _os_log_impl(&dword_1E1C61000, v216, OS_LOG_TYPE_INFO, "String %s is not a valid enum constant of type %s - skipping.", buf, 0x16u);
      }

      v218 = 0;
    }

    else if (v76)
    {
      *buf = re::TypeInfo::enumConstants(v10);
      *&buf[8] = v198;
      v199 = v197 - v198;
      if (v197 >= v198)
      {
        v237 = re::TypeInfo::renamedEnumConstants(v10);
        v238 = v226;
        v200 = re::Slice<re::EnumConstant>::operator[](&v237, v199);
      }

      else
      {
        v200 = re::Slice<re::EnumConstant>::operator[](buf, v197);
      }

      v218 = v200;
    }

    else
    {
      v219 = *(*a6 + 856);
      if (!v219 || (v218 = re::internal::TypeTranslationTable::translateSerializedEnum(v219, a6, v197, v10)) == 0)
      {
        re::TypeInfo::name(v10);
LABEL_338:
        v173 = *(**(a1 + 56) + 40);
        goto LABEL_339;
      }
    }

    (*(**(a1 + 56) + 40))(*(a1 + 56), v171);
    if (v218)
    {
      memcpy(a4, v218, *(*(v10 + 16) + 8));
    }

    goto LABEL_440;
  }

  if (v10 != a6)
  {
    if (*v10 == *a6)
    {
      v98 = **(v10 + 16);
      v99 = **(a6 + 2);
      if (v98 != v99)
      {
        goto LABEL_356;
      }

      v18 = WORD1(v98) == WORD1(v99);
      v100 = (v99 ^ v98) & 0xFFFFFF00000000;
      if (!v18 || v100 != 0)
      {
        goto LABEL_356;
      }
    }

    else if (!re::areSameTranslatedVersion(v10, a6, a3))
    {
      goto LABEL_356;
    }
  }

  v37 = re::TypeInfo::name(v10);
  v38 = *v37 >> 1;
  if (v38 > 0x16749DFF02)
  {
    if (*v37 >> 1 > 0x303EE88E58CLL)
    {
      if (*v37 >> 1 > 0x2A8CEB1C43F60843)
      {
        if (v38 == 0x2A8CEB1C43F60844)
        {
LABEL_322:
        }

        if (v38 != 0x3AFE951B1F1F3391)
        {
          if (v38 != 0x412A40E9CB79BA35)
          {
            goto LABEL_394;
          }

          goto LABEL_316;
        }

LABEL_319:
      }

      if (v38 == 0x303EE88E58DLL)
      {
        goto LABEL_316;
      }

      if (v38 != 0x2710786C3AC82DA1)
      {
        goto LABEL_394;
      }
    }

    else
    {
      if (*v37 >> 1 <= 0x18E6A9A092)
      {
        if (v38 != 0x16749DFF03)
        {
          if (v38 != 0x16749F63A2)
          {
            goto LABEL_394;
          }

LABEL_303:
        }

        goto LABEL_325;
      }

      if (v38 != 0x18E6A9A093)
      {
        if (v38 != 0x303EE86A734)
        {
          if (v38 != 0x303EE8780EELL)
          {
            goto LABEL_394;
          }

          goto LABEL_322;
        }

        goto LABEL_319;
      }
    }
  }

  if (*v37 >> 1 > 0x685847B)
  {
    if (*v37 >> 1 <= 0xB9708BDD)
    {
      if (v38 != 109413500)
      {
        if (v38 != 2969009105)
        {
          goto LABEL_394;
        }

        return re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, a4, a7);
      }

LABEL_328:
    }

    if (v38 == 3111160798)
    {
    }

    if (v38 != 3393056694)
    {
      if (v38 != 0x16749D2549)
      {
        goto LABEL_394;
      }

      goto LABEL_328;
    }

LABEL_316:
  }

  if (*v37 >> 1 <= 0x2E9355)
  {
    if (v38 != 104431)
    {
      if (v38 != 3029738)
      {
        goto LABEL_394;
      }
    }

LABEL_325:
  }

  if (v38 != 3052374)
  {
    if (v38 != 3327612)
    {
      if (v38 == 97526364)
      {

        return re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, a4, a7);
      }

LABEL_394:
      v234 = re::TypeInfo::name(v10)[1];
      v24 = "Unsupported basic type %s.";
      goto LABEL_224;
    }

    goto LABEL_303;
  }
}

unsigned int *re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(uint64_t a1, char *a2, float *a3, char a4)
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
      v16 = strtof(v12, v20);
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

unsigned int *re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(uint64_t a1, char *a2, double *a3, char a4)
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  v25 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
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

uint64_t re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  v25 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
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

uint64_t re::serializeDynamicString<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, void *a4, re *this, re::TypeInfo *a6, int a7)
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
    v32 = 0;
    if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v32))
    {
      if (!v32)
      {
LABEL_33:
        v30 = *(a1 + 64) ^ 1;
        return v30 & 1;
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

    v32 = v23;
    if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v32))
    {
      v24 = v32;
      if (v24 <= (*(**(a1 + 24) + 64))(*(a1 + 24)))
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

      (*(**(a1 + 24) + 64))(*(a1 + 24));
    }
  }

LABEL_24:
  v30 = 0;
  return v30 & 1;
}

void *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5D19230;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5D19230;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::error(uint64_t *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginField(uint64_t a1, int a2, uint64_t a3)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginObject(uint64_t a1)
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
  if (!*(v3 - 32) && *v4 == 64 || (v5 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(*(a1 + 8) + 24, v4, 0), result = 0, v5))
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

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endObject(_anonymous_namespace_ *result)
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

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginArray(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), a2, 0);
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endArray(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
  }

  return v2 == 0;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionary(uint64_t a1, void *a2, int a3)
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
    if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(v16 + 24, v17, 0))
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
    re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(v16 + 24, v17, a2);
  }

  return 1;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryEntry(uint64_t a1)
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
    re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(*(a1 + 8) + 24, 0);
    *(v2 - 32) = 0;
    v3 = "key";
  }

  *(v2 - 40) = v3;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryValue(uint64_t result)
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

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionaryEntry(_anonymous_namespace_ *result)
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

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionary(uint64_t a1, void *a2)
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

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginData(uint64_t a1, void *a2)
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
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(v3 + 24, &v12);
    return 1;
  }

  return result;
}