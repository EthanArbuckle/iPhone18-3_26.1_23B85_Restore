uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginOptional(uint64_t a1)
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

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginString(uint64_t a1, uint64_t *a2)
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

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, BOOL *a2)
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

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _BYTE *a2)
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

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _BYTE *a2)
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

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _WORD *a2)
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

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, unsigned int *a2)
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

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _DWORD *a2)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, uint64_t *a2)
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

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, unint64_t *a2)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, void *a2)
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

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, float *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), a2, 0);
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, double *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), a2, 0);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializeString(uint64_t a1, void *__dst, size_t __n)
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

void *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializeData(void *result, void *__dst)
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

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
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

_BYTE *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::read(uint64_t a1, uint64_t a2, re **this)
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

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v21);
  if (v21[0] == 1)
  {
    re::TypeInfo::TypeInfo(v18, &v22);
    if (*(v19 + 96) || (re::TypeRegistry::typeInfo(v18[0], *(v19 + 80), v23), v23[0] == 1))
    {
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, v18, a4);
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

uint64_t re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
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
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v53, a5);
      goto LABEL_15;
    }

    if (v54 == v50)
    {
      re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v53, &v49, a5);
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

unsigned int *re::serializeBool<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, BOOL *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeChar<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeI8<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeI16<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _WORD *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeI32<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeI64<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unint64_t *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeU8<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeU16<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _WORD *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeU32<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _DWORD *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeU64<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, void *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeFloat<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *this, re::TypeInfo *a6, char a7)
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

  return re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, a4, a7);
}

unsigned int *re::serializeDouble<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, double *a4, re *this, re::TypeInfo *a6, char a7)
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

  return re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, a4, a7);
}

uint64_t re::serializeCString<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, const char **a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::serializeStringID<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _anonymous_namespace_ *a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString(uint64_t a1, char *a2, const re::TypeInfo *a3, char **a4, re *this, re::TypeInfo *a6, char a7)
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

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer(uint64_t a1, char *a2, int a3, void **a4, re::TypeInfo *this, const re::TypeInfo *a6, int a7)
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

uint64_t re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(re::TypeRegistry **a1, re::TypeRegistry *a2)
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

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(uint64_t a1, const char *a2, int a3)
{
  v8 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v8);
    }

    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartObject(*(a1 + 168));
    LOBYTE(v7[0]) = 2;
    DWORD1(v7[0]) = a3 | 0x20;
    *(&v7[0] + 1) = v8;
    memset(&v7[1], 0, 32);
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v7);
  }

  return v3 ^ 1u;
}

_anonymous_namespace_ *re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 21);
    v2[4] -= 16;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndObject(v2);
    v3 = *(v1 + 16) + 48 * *(v1 + 14);
    ++*(v3 - 16);
  }

  return result;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D19390;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  return re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);
}

void re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D19390;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
  re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::untrackObject(uint64_t result)
{
  if (*(result + 336) == 1)
  {
    --*(result + 488);
    ++*(result + 496);
  }

  return result;
}

void re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doOpen(uint64_t a1)
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

void re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doClose(uint64_t a1)
{
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v27 = 6059476;
  v28 = "BOOL";
  v2 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeBool<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6104748;
  v28 = "char";
  v3 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeChar<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x172E117BCLL;
  v28 = "int8_t";
  v4 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI8<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93A4A92;
  v28 = "int16_t";
  v5 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI16<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93BFE06;
  v28 = "int32_t";
  v6 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI32<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93EC744;
  v28 = "int64_t";
  v7 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6655224;
  v28 = "long";
  v8 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x31CD534126;
  v28 = "uint8_t";
  v9 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU8<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0D4E68;
  v28 = "uint16_t";
  v10 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU16<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0F01DCLL;
  v28 = "uint32_t";
  v11 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU32<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD11CB1ALL;
  v28 = "uint64_t";
  v12 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x1947BDF6CLL;
  v28 = "size_t";
  v13 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 195052728;
  v28 = "float";
  v14 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeFloat<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x161EEF7A2;
  v28 = "double";
  v15 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDouble<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 189247272;
  v28 = "char*";
  v16 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeCString<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2686EB529B3EE220;
  v28 = "DynamicString";
  v17 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDynamicString<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x458DDB01A18;
  v28 = "StringID";
  v18 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeStringID<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
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
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v25, re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
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

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
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

void *re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this)
{
  v4 = re::TypeInfo::name(this);
  if (*v4 >> 1 != 94623636 || (v6 = v4[1], v7 = re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v6 != "char*") && (v8 = strcmp(v6, "char*"), v7 = re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v8))
  {
    if (*(this + 12) != 9)
    {
LABEL_9:
      v7 = re::serializeType<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
      if (*this == *(a1 + 272))
      {
        v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(this + 2) | 0xFFFFFFFF00000000);
        v7 = re::serializeType<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v10)
        {
          return *v10;
        }
      }

      return v7;
    }

    v9 = *(*(this + 2) + 88);
    v7 = re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer;
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

void re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
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

uint64_t (*re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(void *a1, const char *a2, const re::TypeInfo *a3, const re::TypeInfo *a4, re *this, re::TypeInfo *a6, uint64_t a7, uint64_t a8)
{
  v2 = re::serializeType<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
  if (*a2 == *(a1 + 272))
  {
    v3 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(a2 + 16) | 0xFFFFFFFF00000000);
    v2 = re::serializeType<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
    if (v3)
    {
      return *v3;
    }
  }

  return v2;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5D193F8;
  re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(a1);
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

void re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *a1)
{
  if (a1[34])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
    a1[34] = 0;
  }
}

uint64_t re::serializeType<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(void *a1, const char *a2, const re::TypeInfo *a3, const re::TypeInfo *a4, re *this, re::TypeInfo *a6, uint64_t a7, uint64_t a8)
{
  v218 = *MEMORY[0x1E69E9840];
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
    goto LABEL_355;
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
    v34 = re::TypeInfo::name(this)[1];
    re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
    re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
    LOBYTE(v194) = v34;
    v24 = "Cannot serialize type %s version %u as version %u. Downgrading versions is not supported.";
    goto LABEL_88;
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
          goto LABEL_87;
        }

        if (this == a6)
        {
          goto LABEL_251;
        }

        if (*this == *a6)
        {
          v65 = **(this + 2);
          v66 = **(a6 + 2);
          if (v65 == v66 && WORD1(v65) == WORD1(v66) && ((v66 ^ v65) & 0xFFFFFF00000000) == 0)
          {
            goto LABEL_122;
          }

          v25 = 2;
        }

        else
        {
          if (re::areSameTranslatedVersion(this, a6, a3))
          {
            goto LABEL_122;
          }

          v25 = *(this + 12);
        }

        if (v25 != *(a6 + 12))
        {
          goto LABEL_355;
        }

        v67 = re::TypeInfo::name(this);
        v68 = re::TypeInfo::name(a6);
        if (!re::StringID::operator==(v67, v68))
        {
          goto LABEL_355;
        }

LABEL_122:
        if (*this != *a6)
        {
          v69 = !re::areSameTranslatedVersion(this, a6, a3);
          goto LABEL_252;
        }

        v147 = **(this + 2);
        v148 = **(a6 + 2);
        if (v147 != v148 || WORD1(v147) != WORD1(v148) || ((v148 ^ v147) & 0xFFFFFF00000000) != 0)
        {
          v69 = 1;
          goto LABEL_252;
        }

LABEL_251:
        v69 = 0;
LABEL_252:
        if (a7)
        {
          __dst.n128_u64[0] = 0;
          if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 3), a2, &__dst))
          {
            goto LABEL_356;
          }
        }

        else
        {
          if (*(*(this + 2) + 8) >= 9u)
          {
            v194 = re::TypeInfo::name(this)[1];
            v24 = "Enum type %s has invalid size: %zu bytes";
            goto LABEL_88;
          }

          EnumConstantIndex = re::internal::getEnumConstantIndex(this, a4, a3);
          if ((EnumConstantIndex & 0x80000000) != 0)
          {
            __dst.n128_u64[0] = 0;
            memcpy(&__dst, a4, *(*(this + 2) + 8));
            LOBYTE(v194) = __dst.n128_u8[0];
            re::TypeInfo::name(this);
            v24 = "Value %zu is not a valid enum constant of %s.";
            goto LABEL_88;
          }

          v150 = EnumConstantIndex;
          if (v69)
          {
            v151 = *(*a6 + 856);
            if (!v151 || (v152 = re::internal::TypeTranslationTable::translateRuntimeEnum(v151, this, v150, a6)) == 0)
            {
              v153 = re::TypeInfo::enumConstants(this);
              v155 = v150;
              if (v154 > v150)
              {
                v194 = *(v153 + 24 * v150 + 16);
                re::TypeInfo::name(a6);
                v24 = "Runtime enum constant %s does not exist in serialized type %s.";
                goto LABEL_88;
              }

LABEL_392:
              re::internal::assertLog(6, v154, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v155, v154);
              _os_crash();
              __break(1u);
            }
          }

          else
          {
            v161 = re::TypeInfo::enumConstants(this);
            v163 = v150;
            if (v162 <= v150)
            {
LABEL_391:
              re::internal::assertLog(6, v162, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v163, v162);
              _os_crash();
              __break(1u);
              goto LABEL_392;
            }

            if (!v161)
            {
              goto LABEL_356;
            }

            v152 = v161 + 24 * v150;
          }

          v164 = *(v152 + 16);
          __dst.n128_u64[0] = strlen(v164);
          if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 3), a2, &__dst))
          {
            goto LABEL_356;
          }

          re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString((a1 + 3), v164);
        }

        goto LABEL_384;
      }

      if (this != a6)
      {
        if (*this == *a6)
        {
          v91 = **(this + 2);
          v92 = **(a6 + 2);
          if (v91 != v92)
          {
            goto LABEL_355;
          }

          v18 = WORD1(v91) == WORD1(v92);
          v93 = (v92 ^ v91) & 0xFFFFFF00000000;
          if (!v18 || v93 != 0)
          {
            goto LABEL_355;
          }
        }

        else if (!re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_355;
        }
      }

      v35 = re::TypeInfo::name(this);
      v36 = *v35 >> 1;
      if (v36 <= 0x16749DFF02)
      {
        if (*v35 >> 1 <= 0x685847B)
        {
          if (*v35 >> 1 > 0x2E9355)
          {
            if (v36 == 3052374)
            {

              return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar((a1 + 3), a2, a4);
            }

            if (v36 != 3327612)
            {
              if (v36 == 97526364)
              {

                return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>((a1 + 3), a2, a4);
              }

              goto LABEL_376;
            }

LABEL_291:

            return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>((a1 + 3), a2, a4);
          }

          if (v36 != 104431)
          {
            if (v36 == 3029738)
            {

              return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool((a1 + 3), a2, a4);
            }

            goto LABEL_376;
          }

LABEL_313:

          return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>((a1 + 3), a2, a4);
        }

        if (*v35 >> 1 <= 0xB9708BDD)
        {
          if (v36 != 109413500)
          {
            if (v36 == 2969009105)
            {

              return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>((a1 + 3), a2, a4);
            }

            goto LABEL_376;
          }

          goto LABEL_316;
        }

        if (v36 == 3111160798)
        {

          return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>((a1 + 3), a2, a4);
        }

        if (v36 != 3393056694)
        {
          if (v36 != 0x16749D2549)
          {
            goto LABEL_376;
          }

LABEL_316:

          return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>((a1 + 3), a2, a4);
        }

LABEL_304:

        return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 3), a2, a4);
      }

      if (*v35 >> 1 > 0x303EE88E58CLL)
      {
        if (*v35 >> 1 > 0x2A8CEB1C43F60843)
        {
          if (v36 == 0x2A8CEB1C43F60844)
          {
            goto LABEL_310;
          }

          if (v36 != 0x3AFE951B1F1F3391)
          {
            if (v36 != 0x412A40E9CB79BA35)
            {
              goto LABEL_376;
            }

            goto LABEL_304;
          }

          goto LABEL_307;
        }

        if (v36 == 0x303EE88E58DLL)
        {
          goto LABEL_304;
        }

        if (v36 == 0x2710786C3AC82DA1)
        {
LABEL_301:

          return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>((a1 + 3), a2, a4);
        }
      }

      else
      {
        if (*v35 >> 1 > 0x18E6A9A092)
        {
          if (v36 != 0x18E6A9A093)
          {
            if (v36 != 0x303EE86A734)
            {
              if (v36 != 0x303EE8780EELL)
              {
                goto LABEL_376;
              }

LABEL_310:

              return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>((a1 + 3), a2, a4);
            }

LABEL_307:

            return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>((a1 + 3), a2, a4);
          }

          goto LABEL_301;
        }

        if (v36 == 0x16749DFF03)
        {
          goto LABEL_313;
        }

        if (v36 == 0x16749F63A2)
        {
          goto LABEL_291;
        }
      }

LABEL_376:
      v194 = re::TypeInfo::name(this)[1];
      v24 = "Unsupported basic type %s.";
      goto LABEL_88;
    }

    if (v23 != 3)
    {
      if (v23 != 4)
      {
        goto LABEL_87;
      }

      if (this != a6)
      {
        if (*this == *a6)
        {
          v70 = **(this + 2);
          v71 = **(a6 + 2);
          if (v70 == v71)
          {
            v18 = WORD1(v70) == WORD1(v71);
            v72 = (v71 ^ v70) & 0xFFFFFF00000000;
            if (v18 && v72 == 0)
            {
              goto LABEL_132;
            }
          }
        }

        else if (re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_132;
        }

        if (*(a6 + 12) != 4)
        {
          goto LABEL_355;
        }

        v74 = *(this + 2);
        v75 = *(a6 + 2);
        v76 = *(v75 + 92) & 0xFFFFFF;
        if ((*(v74 + 92) & 0xFFFFFF) != 0)
        {
          if (!v76)
          {
            goto LABEL_355;
          }
        }

        else if (v76 || *(v74 + 96) != *(v75 + 96))
        {
          goto LABEL_355;
        }
      }

LABEL_132:
      if (a7)
      {
        v77 = a1[34];
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
        re::TypeInfo::TypeInfo(v205, &__dst.n128_i64[1]);
        re::internal::translateType(v77, v205, &v213);
        v78 = (*(*a1 + 80))(a1, &v213);
        if (!v78)
        {
          goto LABEL_222;
        }

        v79 = v78;
        v80 = *(a6 + 2);
        v81 = *(v80 + 92) & 0xFFFFFF;
        if (v81)
        {
          v82 = 0;
          v83 = 8;
        }

        else
        {
          v82 = *(v80 + 96);
          v83 = 4;
        }

        __dst.n128_u64[0] = v82;
        if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, &__dst, v83))
        {
          goto LABEL_356;
        }

        if (v81)
        {
          v156 = v82 == 0;
        }

        else
        {
          v156 = 1;
        }

        v157 = v156;
        if (!v156)
        {
          v204[0] = 0;
          v204[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v204);
        }

        for (; v82; --v82)
        {
          v79(a1, 0, 0, 0, &v213, &v213, 1);
        }

        if (v157)
        {
          goto LABEL_334;
        }
      }

      else
      {
        re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
        re::TypeInfo::TypeInfo(&v213, &__dst.n128_i64[1]);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
        re::TypeInfo::TypeInfo(v205, &__dst.n128_i64[1]);
        re::TypeInfo::TypeInfo(&__dst, this);
        v84 = (*(*a1 + 80))(a1, &v213);
        if (!v84)
        {
          goto LABEL_222;
        }

        v85 = v84;
        v86 = re::ArrayAccessor::size(&__dst, a4);
        v202[0] = v86;
        v87 = *(*(this + 2) + 92) & 0xFFFFFF;
        if (v87)
        {
          v88 = 8;
        }

        else
        {
          v88 = 4;
        }

        if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, v202, v88))
        {
          goto LABEL_356;
        }

        if (v87)
        {
          v89 = v86 == 0;
        }

        else
        {
          v89 = 1;
        }

        v90 = v89;
        if (v89)
        {
          if (!v86)
          {
            goto LABEL_334;
          }
        }

        else
        {
          v165 = *a4;
          v203[0] = 0;
          v203[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, v165, v203);
        }

        v166 = 0;
        do
        {
          v167 = re::ArrayAccessor::elementAt(&__dst, a4, v166);
          v85(a1, 0, 0, v167, &v213, v205, 0);
          ++v166;
        }

        while (v86 != v166);
        if (v90)
        {
          goto LABEL_334;
        }
      }

      (*(*a1 + 24))(a1);
      goto LABEL_334;
    }

    if (this != a6)
    {
      if (*this == *a6)
      {
        v95 = **(this + 2);
        v96 = **(a6 + 2);
        if (v95 == v96 && WORD1(v95) == WORD1(v96) && ((v96 ^ v95) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_163;
        }

        v38 = 3;
      }

      else
      {
        if (re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_163;
        }

        v38 = *(this + 12);
      }

      if (v38 != *(a6 + 12))
      {
        goto LABEL_355;
      }
    }

LABEL_163:
    if (a7)
    {
      __dst.n128_u8[0] = 0;
      re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((a1 + 3), a2, &__dst);
    }

    else
    {
      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(&v213, &__dst.n128_i64[1]);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(v205, &__dst.n128_i64[1]);
      re::TypeInfo::TypeInfo(&__dst, this);
      v97 = (*(v209 + 88))(a4);
      LOBYTE(v204[0]) = v97 != 0;
      v98 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((a1 + 3), a2, v204);
      if (v97)
      {
        v99 = (*(v209 + 88))(a4, v98);
        if ((a1[8] & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, v99, &v213, v205, 0);
        }
      }
    }

    goto LABEL_384;
  }

  if (*(this + 12) > 6u)
  {
    if (v23 == 7)
    {
      if (this != a6)
      {
        if (*this == *a6)
        {
          v100 = **(this + 2);
          v101 = **(a6 + 2);
          if (v100 != v101)
          {
            goto LABEL_355;
          }

          v18 = WORD1(v100) == WORD1(v101);
          v102 = (v101 ^ v100) & 0xFFFFFF00000000;
          if (!v18 || v102 != 0)
          {
            goto LABEL_355;
          }
        }

        else if (!re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_355;
        }
      }

      v39 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 3), a2, 16);
      if (a7)
      {
        if (!v39)
        {
LABEL_356:
          v50 = 0;
          return v50 & 1;
        }

        v213 = 0;
        re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 3), "tag", &v213);
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
        if (!v39)
        {
          goto LABEL_356;
        }

        re::TypeInfo::TypeInfo(&__dst, this);
        Tag = re::UnionAccessor::readTag(&__dst, a4);
        *v205 = Tag;
        re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 3), "tag", v205);
        if (Tag < *(*(this + 2) + 96))
        {
          re::TypeInfo::unionMember(this, Tag, &v213);
          if ((a1[8] & 1) == 0)
          {
            (*(*a1 + 72))(a1, "value", 0, a4, &v213, &v213, 0);
          }
        }
      }

LABEL_383:
      re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 3));
      goto LABEL_384;
    }

    if (v23 != 8)
    {
      if (v23 == 9)
      {
        v194 = re::TypeInfo::name(this)[1];
        v24 = "Pointer type (%s) needs to be handled explicitly by the serializer.";
LABEL_88:
        goto LABEL_356;
      }

LABEL_87:
      LOBYTE(v194) = *(this + 12);
      v24 = "Invalid type category. Value = %d";
      goto LABEL_88;
    }

    if (!a7)
    {
      goto LABEL_81;
    }

    if (*(*(this + 2) + 49))
    {
      v59 = a1[34];
      *v205 = 0x2686EB529B3EE220;
      *&v205[8] = "DynamicString";
      re::TypeRegistry::typeInfo(v59, v205, &__dst);
      v60 = re::TypeInfo::TypeInfo(&v213, &__dst.n128_i64[1]);
      if (v205[0])
      {
        if (v205[0])
        {
        }
      }

      v61 = &v213;
      v62 = &v213;
      v63 = a1;
      v64 = a2;
    }

    else
    {
      v41 = re::TypeInfo::name(this);
      if ((*v41 & 0xFFFFFFFFFFFFFFFELL) != 0x2686EB529B3EE220 || (v43 = v41[1], v43 != "DynamicString") && strcmp(v43, "DynamicString"))
      {
LABEL_81:
        v44 = *(this + 2);
        v45 = *(v44 + 48);
        if ((v45 & 0x10) == 0 && *(this + 12) == 8)
        {
          v46 = *(v44 + 160);
          if (v46)
          {
            v47 = *this;
            v48 = *a6;
            __dst.n128_u64[0] = &unk_1F5D19460;
            __dst.n128_u64[1] = a1;
            *&v209 = v47;
            *(&v209 + 1) = v48;
            v210 = 0uLL;
            LODWORD(v211) = 1;
            *(&v211 + 1) = 0;
            *&v212 = 0;
            v213 = a2;
            LODWORD(v214) = a3;
            BYTE4(v214) = 0;
            v46(&__dst, a4, v49);
            v50 = *(a1 + 64) ^ 1;
            __dst.n128_u64[0] = &unk_1F5D19460;
            if (v210)
            {
              if ((v211 & 1) == 0)
              {
                (*(*v210 + 40))();
              }
            }

            return v50 & 1;
          }
        }

        if ((v45 & 4) == 0)
        {
          if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 3), a2, 0))
          {
            goto LABEL_356;
          }

          v51 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
          if (!v51 || *(v51 + 16) >= 2u)
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
            re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>((a1 + 3), "@version", &__dst);
          }

          if (this == a6)
          {
            goto LABEL_369;
          }

          if (*this == *a6)
          {
            v180 = **(this + 2);
            v181 = **(a6 + 2);
            if (v180 == v181 && WORD1(v180) == WORD1(v181) && ((v181 ^ v180) & 0xFFFFFF00000000) == 0)
            {
              goto LABEL_369;
            }
          }

          else if (re::areSameTranslatedVersion(this, a6, v52))
          {
LABEL_369:
            re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a7);
            goto LABEL_383;
          }

          if (*(this + 12) == *(a6 + 12))
          {
            re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a6, a7);
          }

          else
          {
            v182 = re::TypeInfo::name(this)[1];
            re::TypeInfo::name(a6);
          }

          goto LABEL_383;
        }

        re::TypeMemberCollection::TypeMemberCollection(&__dst, *this, v44);
        re::TypeMemberCollection::operator[](&__dst, 0, v205);
        v112 = *(*&v205[16] + 24);
        re::TypeRegistry::typeInfo(*v205, **&v205[16], &__dst);
        re::TypeInfo::TypeInfo(v204, &__dst.n128_i64[1]);
        if (this == a6)
        {
          goto LABEL_195;
        }

        if (*this == *a6)
        {
          v158 = **(this + 2);
          v159 = *(a6 + 2);
          v160 = *v159;
          if (v158 == *v159 && WORD1(v158) == WORD1(v160) && ((v160 ^ v158) & 0xFFFFFF00000000) == 0)
          {
            goto LABEL_195;
          }
        }

        else
        {
          if (re::areSameTranslatedVersion(this, a6, v113))
          {
LABEL_195:
            if (a1[8])
            {
              goto LABEL_356;
            }

            v114 = (*(*a1 + 72))(a1, a2, a3, a4 + v112, v204, v204, a7);
LABEL_363:
            v50 = v114;
            return v50 & 1;
          }

          v159 = *(a6 + 2);
        }

        if (*(v159 + 96) == 1)
        {
          v176 = re::TypeMemberCollection::TypeMemberCollection(&v213, *a6, v159);
          re::TypeMemberCollection::operator[](v176, 0, v202);
          re::TypeRegistry::typeInfo(v202[0], *v202[2], &__dst);
          re::TypeInfo::TypeInfo(v203, &__dst.n128_i64[1]);
          if (a1[8])
          {
            goto LABEL_356;
          }

          v114 = (*(*a1 + 72))(a1, a2, a3, a4 + v112, v204, v203, a7);
          goto LABEL_363;
        }

LABEL_355:
        goto LABEL_356;
      }

      v63 = a1;
      v64 = a2;
      v61 = this;
      v62 = this;
    }

    re::serializeDynamicString<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(v63, v64, v42, 0, v61, v62, 1);
    goto LABEL_384;
  }

  if (v23 == 5)
  {
    if (this != a6)
    {
      if (*this == *a6)
      {
        v104 = **(this + 2);
        v105 = **(a6 + 2);
        if (v104 != v105 || WORD1(v104) != WORD1(v105) || ((v105 ^ v104) & 0xFFFFFF00000000) != 0)
        {
          v40 = 5;
LABEL_180:
          if (v40 != *(a6 + 12))
          {
            goto LABEL_355;
          }
        }
      }

      else if (!re::areSameTranslatedVersion(this, a6, a3))
      {
        v40 = *(this + 12);
        goto LABEL_180;
      }
    }

    if (a7)
    {
      v106 = a1[34];
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(v205, &__dst.n128_i64[1]);
      re::internal::translateType(v106, v205, &v213);
      if ((*(*a1 + 80))(a1, &v213))
      {
        __dst.n128_u64[0] = 0;
        v50 = 0;
        if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, &__dst, 0))
        {
          return v50 & 1;
        }

        goto LABEL_334;
      }

LABEL_222:
      v121 = &v213;
LABEL_223:
      v195 = re::TypeInfo::name(v121)[1];
      goto LABEL_356;
    }

    re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(&v213, &__dst.n128_i64[1]);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(v205, &__dst.n128_i64[1]);
    re::TypeInfo::TypeInfo(&__dst, this);
    v107 = (*(*a1 + 80))(a1, &v213);
    if (!v107)
    {
      goto LABEL_222;
    }

    v108 = v107;
    v109 = (*(v209 + 88))(a4);
    v203[0] = v109;
    v50 = 0;
    if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, v203, 0))
    {
      return v50 & 1;
    }

    if (*(v209 + 104))
    {
      if (v109)
      {
        for (i = 0; i != v109; ++i)
        {
          v111 = (*(v209 + 104))(a4, i);
          v108(a1, 0, 0, v111, &v213, v205, 0);
        }
      }
    }

    else
    {
      v172 = *(v209 + 112);
      if (!v172 || !*(v209 + 120) || !*(v209 + 128))
      {
        re::TypeInfo::TypeInfo(v204, &__dst);
        v194 = re::TypeInfo::name(v204)[1];
        v24 = "List type %s does not provide an indexer or iterator.";
        goto LABEL_88;
      }

      v173 = v172(a4, a1[7]);
      v174 = (*(v209 + 120))();
      if (v174)
      {
        v175 = v174;
        do
        {
          v108(a1, 0, 0, v175, &v213, v205, 0);
          v175 = (*(v209 + 120))(v173);
        }

        while (v175);
      }

      (*(v209 + 128))(v173, a1[7]);
    }

LABEL_334:
    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 3));
    goto LABEL_384;
  }

  if (v23 != 6)
  {
    goto LABEL_87;
  }

  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
  v26 = re::TypeInfo::TypeInfo(&v213, &__dst.n128_i64[1]);
  v28 = re::TypeInfo::name(v26);
  v29 = BYTE4(v214);
  if (BYTE4(v214) != 1)
  {
LABEL_106:
    if (v29 == 8)
    {
      v56 = *v28 >> 1;
      if (v56 == 0x22C6ED80D0CLL)
      {
        v115 = v28[1];
        v32 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v115 == "StringID")
        {
          goto LABEL_362;
        }

        v116 = strcmp(v115, "StringID");
        v32 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (!v116)
        {
          goto LABEL_362;
        }
      }

      else if (v56 == 0x134375A94D9F7110)
      {
        v57 = v28[1];
        v32 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v57 == "DynamicString")
        {
          goto LABEL_362;
        }

        v58 = strcmp(v57, "DynamicString");
        v32 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (!v58)
        {
          goto LABEL_362;
        }
      }
    }

    goto LABEL_209;
  }

  if (!re::TypeInfo::isInteger(&v213))
  {
    v29 = BYTE4(v214);
    goto LABEL_106;
  }

  v30 = *v28 >> 1;
  if (v30 > 0x303EE8780EDLL)
  {
    if (v30 == 0x303EE8780EELL)
    {
      v169 = v28[1];
      v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
      if (v169 == "uint32_t")
      {
        goto LABEL_362;
      }

      v170 = strcmp(v169, "uint32_t");
      v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
      if (!v170)
      {
        goto LABEL_362;
      }

      goto LABEL_341;
    }

    if (v30 != 0x303EE88E58DLL)
    {
      goto LABEL_341;
    }

    v145 = v28[1];
    v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (v145 == "uint64_t")
    {
      goto LABEL_362;
    }

    v146 = "uint64_t";
  }

  else
  {
    if (v30 != 3393056694)
    {
      if (v30 == 0x303EE86A734)
      {
        v31 = v28[1];
        v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
        if (v31 == "uint16_t")
        {
          goto LABEL_362;
        }

        v33 = strcmp(v31, "uint16_t");
        v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
        if (!v33)
        {
          goto LABEL_362;
        }
      }

      goto LABEL_341;
    }

    v145 = v28[1];
    v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (v145 == "size_t")
    {
      goto LABEL_362;
    }

    v146 = "size_t";
  }

  v168 = strcmp(v145, v146);
  v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
  if (!v168)
  {
    goto LABEL_362;
  }

LABEL_341:
  __dst.n128_u64[0] = 0x18E6A9A093;
  __dst.n128_u64[1] = "uint8_t";
  v171 = re::StringID::operator==(v28, &__dst);
  v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>;
  if (v171)
  {
    goto LABEL_362;
  }

  __dst.n128_u64[0] = 0x16749F63A2;
  __dst.n128_u64[1] = "int64_t";
  if (re::StringID::operator==(v28, &__dst))
  {
    v114 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(a1, a2, a3, a4, this, a6, a7);
    goto LABEL_363;
  }

  *v205 = 3327612;
  *&v205[8] = "long";
  v177 = re::StringID::operator==(v28, v205);
  v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>;
  if (v177 || (__dst.n128_u64[0] = 104431, __dst.n128_u64[1] = "int", v178 = re::StringID::operator==(v28, &__dst), v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>, v178) || (__dst.n128_u64[0] = 109413500, __dst.n128_u64[1] = "short", v179 = re::StringID::operator==(v28, &__dst), v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>, v179))
  {
LABEL_362:
    v114 = v32(a1, a2, a3, a4, this, a6, a7);
    goto LABEL_363;
  }

LABEL_209:
  if (this != a6)
  {
    if (*this == *a6)
    {
      v117 = **(this + 2);
      v118 = **(a6 + 2);
      if (v117 == v118 && WORD1(v117) == WORD1(v118) && ((v118 ^ v117) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_217;
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, v27))
    {
      goto LABEL_217;
    }

    if (*(this + 12) != *(a6 + 12))
    {
      goto LABEL_355;
    }
  }

LABEL_217:
  if (a7)
  {
    v119 = a1[34];
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(v205, &__dst.n128_i64[1]);
    re::internal::translateType(v119, v205, &v213);
    v120 = a1[34];
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &__dst);
    re::TypeInfo::TypeInfo(v204, &__dst.n128_i64[1]);
    re::internal::translateType(v120, v204, v205);
    if ((*(*a1 + 80))(a1, &v213))
    {
      if ((*(*a1 + 80))(a1, v205))
      {
        __dst.n128_u64[0] = 0;
        if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary((a1 + 3), a2, &__dst))
        {
          goto LABEL_388;
        }

        goto LABEL_356;
      }

      v121 = v205;
      goto LABEL_223;
    }

    goto LABEL_222;
  }

  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
  re::TypeInfo::TypeInfo(v204, &__dst.n128_i64[1]);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &__dst);
  re::TypeInfo::TypeInfo(v203, &__dst.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
  re::TypeInfo::TypeInfo(v202, &__dst.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &__dst);
  re::TypeInfo::TypeInfo(v200, &__dst.n128_i64[1]);
  re::TypeInfo::TypeInfo(v198, this);
  v127 = (*(*a1 + 80))(a1, v204);
  if (!v127)
  {
    v121 = v204;
    goto LABEL_223;
  }

  v128 = v127;
  v129 = (*(*a1 + 80))(a1, v203);
  if (!v129)
  {
    v121 = v203;
    goto LABEL_223;
  }

  v130 = v129;
  v131 = (*(v199 + 96))(a4);
  v197 = v131;
  if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary((a1 + 3), a2, &v197))
  {
    goto LABEL_356;
  }

  if (!v131)
  {
    goto LABEL_388;
  }

  v132 = *this;
  __dst.n128_u64[0] = 0x449AD97C4B77BED4;
  __dst.n128_u64[1] = "_CompareFunc";
  v133 = re::TypeRegistry::typeID(v132, &__dst, v196);
  if (__dst.n128_u8[0])
  {
    if (__dst.n128_u8[0])
    {
    }
  }

  if (!v196[0] || (v134 = *v204[2], __dst.n128_u64[0] = v196[1], __dst.n128_u64[1] = v134, LODWORD(v209) = -1, (v135 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v204[0] + 768, &__dst)) == 0) || (v136 = *v135) == 0)
  {
    v188 = (*(v199 + 120))(a4, a1[7]);
    (*(v199 + 128))();
    do
    {
      v189 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry((a1 + 3), 0);
      v190 = (*(v199 + 136))(v188, v189);
      v128(a1, "key", 0, v190, v204, v202, 0);
      v191 = (*(v199 + 144))(v188);
      v130(a1, "value", 0, v191, v203, v200, 0);
      re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((a1 + 3));
      (*(v199 + 128))(v188);
      --v131;
    }

    while (v131);
    (*(v199 + 152))(v188, a1[7]);
    goto LABEL_388;
  }

  v217 = 0;
  v214 = 0;
  v215 = 0;
  v216 = 0;
  v213 = a1[7];
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v213, v131);
  ++v216;
  v137 = (*(v199 + 120))(a4, a1[7]);
  if ((*(v199 + 128))())
  {
    do
    {
      v138 = (*(v199 + 136))(v137);
      v139 = (*(v199 + 144))(v137);
      __dst.n128_u64[0] = v138;
      __dst.n128_u64[1] = v139;
      v140 = re::DynamicArray<re::RigNodeConstraint>::add(&v213, &__dst);
    }

    while (((*(v199 + 128))(v137, v140) & 1) != 0);
  }

  (*(v199 + 152))(v137, a1[7]);
  __dst.n128_u64[0] = v136;
  std::__sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1}>(v217, &v217[16 * v215], &__dst);
  v141 = 0;
  for (j = 0; j != v131; ++j)
  {
    v143 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry((a1 + 3), 0);
    if (v215 <= j)
    {
      v201 = 0;
      v211 = 0u;
      v212 = 0u;
      v209 = 0u;
      v210 = 0u;
      __dst = 0u;
      v192 = v215;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v205 = 136315906;
      *&v205[4] = "operator[]";
      *&v205[12] = 1024;
      *&v205[14] = 789;
      *&v205[18] = 2048;
      *&v205[20] = j;
      v206 = 2048;
      v207 = v192;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_390:
      v201 = 0;
      v211 = 0u;
      v212 = 0u;
      v209 = 0u;
      v210 = 0u;
      __dst = 0u;
      v193 = v144;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v205 = 136315906;
      *&v205[4] = "operator[]";
      *&v205[12] = 1024;
      *&v205[14] = 789;
      *&v205[18] = 2048;
      *&v205[20] = j;
      v206 = 2048;
      v207 = v193;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_391;
    }

    (v128)(a1, "key", 0, *&v217[v141], v204, v202, 0, v143);
    v144 = v215;
    if (v215 <= j)
    {
      goto LABEL_390;
    }

    v130(a1, "value", 0, *&v217[v141 + 8], v203, v200, 0);
    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((a1 + 3));
    v141 += 16;
  }

  if (v213 && v217)
  {
    (*(*v213 + 40))(v213);
  }

LABEL_388:
  re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionary((a1 + 3));
LABEL_384:
  v50 = *(a1 + 64) ^ 1;
  return v50 & 1;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(uint64_t a1, const char *a2, unsigned __int8 *a3)
{
  v10 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v10);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteBool(v6, v7);
    v8 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v8 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v9);
    }

    v6 = *(a1 + 168);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v6, a3, 1u);
    v7 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v7 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>(uint64_t a1, const char *a2, char *a3)
{
  v11 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v11);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>(uint64_t a1, const char *a2, __int16 *a3)
{
  v11 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v11);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>(uint64_t a1, const char *a2, unsigned int *a3)
{
  v11 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v11);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>(uint64_t a1, const char *a2, unint64_t *a3)
{
  v11 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v11);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt64(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>(uint64_t a1, const char *a2, unsigned __int8 *a3)
{
  v11 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v11);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>(uint64_t a1, const char *a2, unsigned __int16 *a3)
{
  v11 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v11);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(uint64_t a1, const char *a2, unsigned int *a3)
{
  v11 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v11);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(uint64_t a1, const char *a2, rapidjson::internal **a3)
{
  v11 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v11);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint64(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(uint64_t a1, const char *a2, float *a3)
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

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(uint64_t a1, const char *a2, double *a3)
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

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(uint64_t a1, const char *a2, uint64_t *a3)
{
  v14 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v14);
    }

    v6 = *a3;
    if (!*a3)
    {
      v7 = *(a1 + 168);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v7);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v7, "", 0);
      v6 = *a3;
    }

    LOBYTE(v9) = 8;
    DWORD1(v9) = 0;
    *(&v9 + 1) = v14;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v11 = v6;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v9);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(uint64_t result, uint64_t a2)
{
  if ((*(result + 40) & 1) == 0)
  {
    v3 = result;
    v4 = *(*(result + 128) + 48 * *(result + 112) - 24);
    v5 = *(result + 168);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v5);
    result = rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v5, a2, v4);
    v6 = *(v3 + 128) + 48 * *(v3 + 112);
    *(v6 - 16) += v4;
  }

  return result;
}

double re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(uint64_t a1, const char *a2, unsigned __int8 *a3)
{
  v13 = a2;
  if ((*(a1 + 40) & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v13);
    }

    v5 = *a3;
    if ((v5 & 1) == 0)
    {
      v6 = *(a1 + 168);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(v6);
      v5 = *a3;
    }

    LOBYTE(v8) = 3;
    DWORD1(v8) = 0;
    *(&v8 + 1) = v13;
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v10 = v5;
    return re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v8);
  }

  return result;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(uint64_t a1, const char *a2, uint64_t *a3, int a4)
{
  v15 = a2;
  v4 = *(a1 + 40);
  if ((v4 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v15);
    }

    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartArray(*(a1 + 168));
    v8 = *a3;
    LOBYTE(v10) = 5;
    DWORD1(v10) = a4 & 0xFFFFFFDF;
    *(&v10 + 1) = v15;
    v11 = 0;
    v13 = 0;
    v14 = 0;
    v12 = v8;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v10);
  }

  return v4 ^ 1u;
}

_anonymous_namespace_ *re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == *(v2 + 48 * v3 - 24))
    {
      v4 = *(result + 21);
      v4[4] -= 16;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndArray(v4);
      v5 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v5 - 16);
    }

    else
    {
      if (v9)
      {
        v6 = *&v10[7];
      }

      else
      {
        v6 = v10;
      }

      v7 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format("Failed to deserialize array %s. Expected number of elements: %lld. Actual number of elements: %lld.", &v11, v6, *(v7 - 24), *(v7 - 16));
      if (v11 && (v12 & 1) != 0)
      {
        (*(*v11 + 40))();
      }

      result = v8;
      if (v8)
      {
        if (v9)
        {
          return (*(*v8 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(uint64_t a1, const char *a2, uint64_t *a3)
{
  v13 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v13);
    }

    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartArray(*(a1 + 168));
    v6 = *a3;
    LOBYTE(v8) = 6;
    DWORD1(v8) = 0;
    *(&v8 + 1) = v13;
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v10 = v6;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v8);
  }

  return v3 ^ 1u;
}

double re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(uint64_t a1, int a2)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartObject(*(a1 + 168));
    LOBYTE(v5[0]) = 7;
    DWORD1(v5[0]) = a2 | 0x20;
    *(&v5[0] + 1) = "entry";
    v5[1] = xmmword_1E3054780;
    v6 = 0;
    v7 = 0;
    return re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v5);
  }

  return result;
}

_anonymous_namespace_ *re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == 2)
    {
      v4 = *(result + 21);
      v4[4] -= 16;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndObject(v4);
      v5 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v5 - 16);
    }

    else
    {
      if (v8)
      {
        v6 = *&v9[7];
      }

      else
      {
        v6 = v9;
      }

      re::DynamicString::format("Failed to deserialize dictionary entry %s. Expected 2 objects (key+value). Actual number of objects: %lld.", &v10, v6, *(*(v1 + 16) + 48 * *(v1 + 14) - 16));
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

_anonymous_namespace_ *re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionary(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == *(v2 + 48 * v3 - 24))
    {
      v4 = *(result + 21);
      v4[4] -= 16;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndArray(v4);
      v5 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v5 - 16);
    }

    else
    {
      if (v9)
      {
        v6 = *&v10[7];
      }

      else
      {
        v6 = v10;
      }

      v7 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format("Failed to deserialize dictionary %s. Expected number of entries: %lld. Actual number of entries: %lld.", &v11, v6, *(v7 - 24), *(v7 - 16));
      if (v11 && (v12 & 1) != 0)
      {
        (*(*v11 + 40))();
      }

      result = v8;
      if (v8)
      {
        if (v9)
        {
          return (*(*v8 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::serializeDynamicString<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

void *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5D19460;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5D19460;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::error(uint64_t *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginField(uint64_t a1, int a2, uint64_t a3)
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

double re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginObject(uint64_t a1)
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

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endObject(_anonymous_namespace_ *result)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginArray(uint64_t a1, uint64_t a2)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionary(uint64_t a1, uint64_t a2, int a3)
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

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryEntry(uint64_t a1)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryValue(uint64_t result)
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

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionaryEntry(_anonymous_namespace_ *result)
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

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionary(uint64_t a1)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginOptional(uint64_t a1, uint64_t a2)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int8 a2)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, char a2)
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

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned int a2)
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

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int8 a2)
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

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int16 a2)
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

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unint64_t a2)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, float a2)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, double a2)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4);
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializeString(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3)
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

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializeData(uint64_t a1, uint64_t a2, uint64_t a3)
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

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
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

_BYTE *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::write(uint64_t a1, uint64_t a2, re **this)
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

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(uint64_t a1, const char *a2, int *a3)
{
  v14 = a2;
  v3 = *(a1 + 40);
  if (v3)
  {
    return v3 ^ 1u;
  }

  if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
  {
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v14);
  }

  v6 = *a3;
  if ((*a3 - 1) < 2)
  {
LABEL_7:
    LOBYTE(v9) = 9;
    DWORD1(v9) = 0;
    *(&v9 + 1) = v14;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v11 = v6 != 0;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v9);
    return v3 ^ 1u;
  }

  if (!v6)
  {
    v7 = *(a1 + 168);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v7);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(v7);
    v6 = *a3;
    goto LABEL_7;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected PointerEncoding.", "!Unreachable code", "beginPointer", 1054);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v19);
  if (v19[0] == 1)
  {
    re::TypeInfo::TypeInfo(v16, &v20);
    if (*(v17 + 96) || (re::TypeRegistry::typeInfo(v16[0], *(v17 + 80), v21), v21[0] == 1))
    {
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, v16, a4);
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

uint64_t re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
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
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v50, a5);
      goto LABEL_15;
    }

    if (v51 == v47)
    {
      re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v50, &v46, a5);
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

uint64_t re::serializeBool<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::serializeChar<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::serializeI8<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::serializeI16<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, __int16 *a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::serializeI32<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::serializeI64<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unint64_t *a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::serializeU8<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::serializeU16<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int16 *a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::serializeU32<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::serializeU64<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, rapidjson::internal **a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::serializeFloat<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *this, re::TypeInfo *a6, int a7)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, v13);
}

uint64_t re::serializeDouble<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, double *a4, re *this, re::TypeInfo *a6, int a7)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, v13);
}

uint64_t re::serializeCString<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::serializeStringID<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, unint64_t **this, unint64_t **a6, int a7)
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

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString(_BYTE *a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *this, re::TypeInfo *a6)
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

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer(uint64_t a1, const char *a2, int a3, char **a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
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

_anonymous_namespace_ *re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference(_anonymous_namespace_ *result, unsigned int *a2)
{
  if ((*(result + 40) & 1) == 0)
  {
    v3 = result;
    result = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(result, 0, 0);
    if (result)
    {
      re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(v3, "@ref", a2);

      return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(v3);
    }
  }

  return result;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(re::TypeRegistry **a1, re::TypeRegistry *a2)
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

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D195A0;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  return re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);
}

void re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D195A0;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
  re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::untrackObject(uint64_t result)
{
  if (*(result + 336) == 1)
  {
    --*(result + 488);
    ++*(result + 496);
  }

  return result;
}

void re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doOpen(uint64_t a1)
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

void re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doClose(uint64_t a1)
{
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v27 = 6059476;
  v28 = "BOOL";
  v2 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeBool<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6104748;
  v28 = "char";
  v3 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeChar<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x172E117BCLL;
  v28 = "int8_t";
  v4 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI8<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93A4A92;
  v28 = "int16_t";
  v5 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI16<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93BFE06;
  v28 = "int32_t";
  v6 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI32<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93EC744;
  v28 = "int64_t";
  v7 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6655224;
  v28 = "long";
  v8 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x31CD534126;
  v28 = "uint8_t";
  v9 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU8<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0D4E68;
  v28 = "uint16_t";
  v10 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU16<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0F01DCLL;
  v28 = "uint32_t";
  v11 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU32<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD11CB1ALL;
  v28 = "uint64_t";
  v12 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x1947BDF6CLL;
  v28 = "size_t";
  v13 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 195052728;
  v28 = "float";
  v14 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeFloat<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x161EEF7A2;
  v28 = "double";
  v15 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDouble<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 189247272;
  v28 = "char*";
  v16 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeCString<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2686EB529B3EE220;
  v28 = "DynamicString";
  v17 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDynamicString<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x458DDB01A18;
  v28 = "StringID";
  v18 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeStringID<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
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
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v25, re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
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

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
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

void *re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this)
{
  v4 = re::TypeInfo::name(this);
  if (*v4 >> 1 != 94623636 || (v6 = v4[1], v7 = re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v6 != "char*") && (v8 = strcmp(v6, "char*"), v7 = re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v8))
  {
    if (*(this + 12) != 9)
    {
LABEL_9:
      v7 = re::serializeType<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
      if (*this == *(a1 + 272))
      {
        v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(this + 2) | 0xFFFFFFFF00000000);
        v7 = re::serializeType<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v10)
        {
          return *v10;
        }
      }

      return v7;
    }

    v9 = *(*(this + 2) + 88);
    v7 = re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer;
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

void re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
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

uint64_t (*re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(void *a1, const char *a2, const re::TypeInfo *a3, const re::TypeInfo *a4, re *this, re::TypeInfo *a6, uint64_t a7, uint64_t a8)
{
  v2 = re::serializeType<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
  if (*a2 == *(a1 + 272))
  {
    v3 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(a2 + 16) | 0xFFFFFFFF00000000);
    v2 = re::serializeType<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
    if (v3)
    {
      return *v3;
    }
  }

  return v2;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5D19608;
  re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(a1);
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

void re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *a1)
{
  if (a1[34])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
    a1[34] = 0;
  }
}

uint64_t re::serializeType<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(void *a1, const char *a2, const re::TypeInfo *a3, const re::TypeInfo *a4, re *this, re::TypeInfo *a6, uint64_t a7, uint64_t a8)
{
  v218 = *MEMORY[0x1E69E9840];
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
    goto LABEL_355;
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
    v34 = re::TypeInfo::name(this)[1];
    re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
    re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
    LOBYTE(v194) = v34;
    v24 = "Cannot serialize type %s version %u as version %u. Downgrading versions is not supported.";
    goto LABEL_88;
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
          goto LABEL_87;
        }

        if (this == a6)
        {
          goto LABEL_251;
        }

        if (*this == *a6)
        {
          v65 = **(this + 2);
          v66 = **(a6 + 2);
          if (v65 == v66 && WORD1(v65) == WORD1(v66) && ((v66 ^ v65) & 0xFFFFFF00000000) == 0)
          {
            goto LABEL_122;
          }

          v25 = 2;
        }

        else
        {
          if (re::areSameTranslatedVersion(this, a6, a3))
          {
            goto LABEL_122;
          }

          v25 = *(this + 12);
        }

        if (v25 != *(a6 + 12))
        {
          goto LABEL_355;
        }

        v67 = re::TypeInfo::name(this);
        v68 = re::TypeInfo::name(a6);
        if (!re::StringID::operator==(v67, v68))
        {
          goto LABEL_355;
        }

LABEL_122:
        if (*this != *a6)
        {
          v69 = !re::areSameTranslatedVersion(this, a6, a3);
          goto LABEL_252;
        }

        v147 = **(this + 2);
        v148 = **(a6 + 2);
        if (v147 != v148 || WORD1(v147) != WORD1(v148) || ((v148 ^ v147) & 0xFFFFFF00000000) != 0)
        {
          v69 = 1;
          goto LABEL_252;
        }

LABEL_251:
        v69 = 0;
LABEL_252:
        if (a7)
        {
          __dst.n128_u64[0] = 0;
          if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 3), a2, &__dst))
          {
            goto LABEL_356;
          }
        }

        else
        {
          if (*(*(this + 2) + 8) >= 9u)
          {
            v194 = re::TypeInfo::name(this)[1];
            v24 = "Enum type %s has invalid size: %zu bytes";
            goto LABEL_88;
          }

          EnumConstantIndex = re::internal::getEnumConstantIndex(this, a4, a3);
          if ((EnumConstantIndex & 0x80000000) != 0)
          {
            __dst.n128_u64[0] = 0;
            memcpy(&__dst, a4, *(*(this + 2) + 8));
            LOBYTE(v194) = __dst.n128_u8[0];
            re::TypeInfo::name(this);
            v24 = "Value %zu is not a valid enum constant of %s.";
            goto LABEL_88;
          }

          v150 = EnumConstantIndex;
          if (v69)
          {
            v151 = *(*a6 + 856);
            if (!v151 || (v152 = re::internal::TypeTranslationTable::translateRuntimeEnum(v151, this, v150, a6)) == 0)
            {
              v153 = re::TypeInfo::enumConstants(this);
              v155 = v150;
              if (v154 > v150)
              {
                v194 = *(v153 + 24 * v150 + 16);
                re::TypeInfo::name(a6);
                v24 = "Runtime enum constant %s does not exist in serialized type %s.";
                goto LABEL_88;
              }

LABEL_392:
              re::internal::assertLog(6, v154, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v155, v154);
              _os_crash();
              __break(1u);
            }
          }

          else
          {
            v161 = re::TypeInfo::enumConstants(this);
            v163 = v150;
            if (v162 <= v150)
            {
LABEL_391:
              re::internal::assertLog(6, v162, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v163, v162);
              _os_crash();
              __break(1u);
              goto LABEL_392;
            }

            if (!v161)
            {
              goto LABEL_356;
            }

            v152 = v161 + 24 * v150;
          }

          v164 = *(v152 + 16);
          __dst.n128_u64[0] = strlen(v164);
          if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 3), a2, &__dst))
          {
            goto LABEL_356;
          }

          re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString((a1 + 3), v164);
        }

        goto LABEL_384;
      }

      if (this != a6)
      {
        if (*this == *a6)
        {
          v91 = **(this + 2);
          v92 = **(a6 + 2);
          if (v91 != v92)
          {
            goto LABEL_355;
          }

          v18 = WORD1(v91) == WORD1(v92);
          v93 = (v92 ^ v91) & 0xFFFFFF00000000;
          if (!v18 || v93 != 0)
          {
            goto LABEL_355;
          }
        }

        else if (!re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_355;
        }
      }

      v35 = re::TypeInfo::name(this);
      v36 = *v35 >> 1;
      if (v36 <= 0x16749DFF02)
      {
        if (*v35 >> 1 <= 0x685847B)
        {
          if (*v35 >> 1 > 0x2E9355)
          {
            if (v36 == 3052374)
            {

              return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar((a1 + 3), a2, a4);
            }

            if (v36 != 3327612)
            {
              if (v36 == 97526364)
              {

                return re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>((a1 + 3), a2, a4);
              }

              goto LABEL_376;
            }

LABEL_291:

            return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>((a1 + 3), a2, a4);
          }

          if (v36 != 104431)
          {
            if (v36 == 3029738)
            {

              return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool((a1 + 3), a2, a4);
            }

            goto LABEL_376;
          }

LABEL_313:

          return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>((a1 + 3), a2, a4);
        }

        if (*v35 >> 1 <= 0xB9708BDD)
        {
          if (v36 != 109413500)
          {
            if (v36 == 2969009105)
            {

              return re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>((a1 + 3), a2, a4);
            }

            goto LABEL_376;
          }

          goto LABEL_316;
        }

        if (v36 == 3111160798)
        {

          return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>((a1 + 3), a2, a4);
        }

        if (v36 != 3393056694)
        {
          if (v36 != 0x16749D2549)
          {
            goto LABEL_376;
          }

LABEL_316:

          return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>((a1 + 3), a2, a4);
        }

LABEL_304:

        return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 3), a2, a4);
      }

      if (*v35 >> 1 > 0x303EE88E58CLL)
      {
        if (*v35 >> 1 > 0x2A8CEB1C43F60843)
        {
          if (v36 == 0x2A8CEB1C43F60844)
          {
            goto LABEL_310;
          }

          if (v36 != 0x3AFE951B1F1F3391)
          {
            if (v36 != 0x412A40E9CB79BA35)
            {
              goto LABEL_376;
            }

            goto LABEL_304;
          }

          goto LABEL_307;
        }

        if (v36 == 0x303EE88E58DLL)
        {
          goto LABEL_304;
        }

        if (v36 == 0x2710786C3AC82DA1)
        {
LABEL_301:

          return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>((a1 + 3), a2, a4);
        }
      }

      else
      {
        if (*v35 >> 1 > 0x18E6A9A092)
        {
          if (v36 != 0x18E6A9A093)
          {
            if (v36 != 0x303EE86A734)
            {
              if (v36 != 0x303EE8780EELL)
              {
                goto LABEL_376;
              }

LABEL_310:

              return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>((a1 + 3), a2, a4);
            }

LABEL_307:

            return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>((a1 + 3), a2, a4);
          }

          goto LABEL_301;
        }

        if (v36 == 0x16749DFF03)
        {
          goto LABEL_313;
        }

        if (v36 == 0x16749F63A2)
        {
          goto LABEL_291;
        }
      }

LABEL_376:
      v194 = re::TypeInfo::name(this)[1];
      v24 = "Unsupported basic type %s.";
      goto LABEL_88;
    }

    if (v23 != 3)
    {
      if (v23 != 4)
      {
        goto LABEL_87;
      }

      if (this != a6)
      {
        if (*this == *a6)
        {
          v70 = **(this + 2);
          v71 = **(a6 + 2);
          if (v70 == v71)
          {
            v18 = WORD1(v70) == WORD1(v71);
            v72 = (v71 ^ v70) & 0xFFFFFF00000000;
            if (v18 && v72 == 0)
            {
              goto LABEL_132;
            }
          }
        }

        else if (re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_132;
        }

        if (*(a6 + 12) != 4)
        {
          goto LABEL_355;
        }

        v74 = *(this + 2);
        v75 = *(a6 + 2);
        v76 = *(v75 + 92) & 0xFFFFFF;
        if ((*(v74 + 92) & 0xFFFFFF) != 0)
        {
          if (!v76)
          {
            goto LABEL_355;
          }
        }

        else if (v76 || *(v74 + 96) != *(v75 + 96))
        {
          goto LABEL_355;
        }
      }

LABEL_132:
      if (a7)
      {
        v77 = a1[34];
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
        re::TypeInfo::TypeInfo(v205, &__dst.n128_i64[1]);
        re::internal::translateType(v77, v205, &v213);
        v78 = (*(*a1 + 80))(a1, &v213);
        if (!v78)
        {
          goto LABEL_222;
        }

        v79 = v78;
        v80 = *(a6 + 2);
        v81 = *(v80 + 92) & 0xFFFFFF;
        if (v81)
        {
          v82 = 0;
          v83 = 8;
        }

        else
        {
          v82 = *(v80 + 96);
          v83 = 4;
        }

        __dst.n128_u64[0] = v82;
        if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, &__dst, v83))
        {
          goto LABEL_356;
        }

        if (v81)
        {
          v156 = v82 == 0;
        }

        else
        {
          v156 = 1;
        }

        v157 = v156;
        if (!v156)
        {
          v204[0] = 0;
          v204[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v204);
        }

        for (; v82; --v82)
        {
          v79(a1, 0, 0, 0, &v213, &v213, 1);
        }

        if (v157)
        {
          goto LABEL_334;
        }
      }

      else
      {
        re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
        re::TypeInfo::TypeInfo(&v213, &__dst.n128_i64[1]);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
        re::TypeInfo::TypeInfo(v205, &__dst.n128_i64[1]);
        re::TypeInfo::TypeInfo(&__dst, this);
        v84 = (*(*a1 + 80))(a1, &v213);
        if (!v84)
        {
          goto LABEL_222;
        }

        v85 = v84;
        v86 = re::ArrayAccessor::size(&__dst, a4);
        v202[0] = v86;
        v87 = *(*(this + 2) + 92) & 0xFFFFFF;
        if (v87)
        {
          v88 = 8;
        }

        else
        {
          v88 = 4;
        }

        if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, v202, v88))
        {
          goto LABEL_356;
        }

        if (v87)
        {
          v89 = v86 == 0;
        }

        else
        {
          v89 = 1;
        }

        v90 = v89;
        if (v89)
        {
          if (!v86)
          {
            goto LABEL_334;
          }
        }

        else
        {
          v165 = *a4;
          v203[0] = 0;
          v203[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, v165, v203);
        }

        v166 = 0;
        do
        {
          v167 = re::ArrayAccessor::elementAt(&__dst, a4, v166);
          v85(a1, 0, 0, v167, &v213, v205, 0);
          ++v166;
        }

        while (v86 != v166);
        if (v90)
        {
          goto LABEL_334;
        }
      }

      (*(*a1 + 24))(a1);
      goto LABEL_334;
    }

    if (this != a6)
    {
      if (*this == *a6)
      {
        v95 = **(this + 2);
        v96 = **(a6 + 2);
        if (v95 == v96 && WORD1(v95) == WORD1(v96) && ((v96 ^ v95) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_163;
        }

        v38 = 3;
      }

      else
      {
        if (re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_163;
        }

        v38 = *(this + 12);
      }

      if (v38 != *(a6 + 12))
      {
        goto LABEL_355;
      }
    }

LABEL_163:
    if (a7)
    {
      __dst.n128_u8[0] = 0;
      re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((a1 + 3), a2, &__dst);
    }

    else
    {
      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(&v213, &__dst.n128_i64[1]);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(v205, &__dst.n128_i64[1]);
      re::TypeInfo::TypeInfo(&__dst, this);
      v97 = (*(v209 + 88))(a4);
      LOBYTE(v204[0]) = v97 != 0;
      v98 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((a1 + 3), a2, v204);
      if (v97)
      {
        v99 = (*(v209 + 88))(a4, v98);
        if ((a1[8] & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, v99, &v213, v205, 0);
        }
      }
    }

    goto LABEL_384;
  }

  if (*(this + 12) > 6u)
  {
    if (v23 == 7)
    {
      if (this != a6)
      {
        if (*this == *a6)
        {
          v100 = **(this + 2);
          v101 = **(a6 + 2);
          if (v100 != v101)
          {
            goto LABEL_355;
          }

          v18 = WORD1(v100) == WORD1(v101);
          v102 = (v101 ^ v100) & 0xFFFFFF00000000;
          if (!v18 || v102 != 0)
          {
            goto LABEL_355;
          }
        }

        else if (!re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_355;
        }
      }

      v39 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 3), a2, 16);
      if (a7)
      {
        if (!v39)
        {
LABEL_356:
          v50 = 0;
          return v50 & 1;
        }

        v213 = 0;
        re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 3), "tag", &v213);
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
        if (!v39)
        {
          goto LABEL_356;
        }

        re::TypeInfo::TypeInfo(&__dst, this);
        Tag = re::UnionAccessor::readTag(&__dst, a4);
        *v205 = Tag;
        re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 3), "tag", v205);
        if (Tag < *(*(this + 2) + 96))
        {
          re::TypeInfo::unionMember(this, Tag, &v213);
          if ((a1[8] & 1) == 0)
          {
            (*(*a1 + 72))(a1, "value", 0, a4, &v213, &v213, 0);
          }
        }
      }

LABEL_383:
      re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 3));
      goto LABEL_384;
    }

    if (v23 != 8)
    {
      if (v23 == 9)
      {
        v194 = re::TypeInfo::name(this)[1];
        v24 = "Pointer type (%s) needs to be handled explicitly by the serializer.";
LABEL_88:
        goto LABEL_356;
      }

LABEL_87:
      LOBYTE(v194) = *(this + 12);
      v24 = "Invalid type category. Value = %d";
      goto LABEL_88;
    }

    if (!a7)
    {
      goto LABEL_81;
    }

    if (*(*(this + 2) + 49))
    {
      v59 = a1[34];
      *v205 = 0x2686EB529B3EE220;
      *&v205[8] = "DynamicString";
      re::TypeRegistry::typeInfo(v59, v205, &__dst);
      v60 = re::TypeInfo::TypeInfo(&v213, &__dst.n128_i64[1]);
      if (v205[0])
      {
        if (v205[0])
        {
        }
      }

      v61 = &v213;
      v62 = &v213;
      v63 = a1;
      v64 = a2;
    }

    else
    {
      v41 = re::TypeInfo::name(this);
      if ((*v41 & 0xFFFFFFFFFFFFFFFELL) != 0x2686EB529B3EE220 || (v43 = v41[1], v43 != "DynamicString") && strcmp(v43, "DynamicString"))
      {
LABEL_81:
        v44 = *(this + 2);
        v45 = *(v44 + 48);
        if ((v45 & 0x10) == 0 && *(this + 12) == 8)
        {
          v46 = *(v44 + 160);
          if (v46)
          {
            v47 = *this;
            v48 = *a6;
            __dst.n128_u64[0] = &unk_1F5D19670;
            __dst.n128_u64[1] = a1;
            *&v209 = v47;
            *(&v209 + 1) = v48;
            v210 = 0uLL;
            LODWORD(v211) = 1;
            *(&v211 + 1) = 0;
            *&v212 = 0;
            v213 = a2;
            LODWORD(v214) = a3;
            BYTE4(v214) = 0;
            v46(&__dst, a4, v49);
            v50 = *(a1 + 64) ^ 1;
            __dst.n128_u64[0] = &unk_1F5D19670;
            if (v210)
            {
              if ((v211 & 1) == 0)
              {
                (*(*v210 + 40))();
              }
            }

            return v50 & 1;
          }
        }

        if ((v45 & 4) == 0)
        {
          if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 3), a2, 0))
          {
            goto LABEL_356;
          }

          v51 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
          if (!v51 || *(v51 + 16) >= 2u)
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
            re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>((a1 + 3), "@version", &__dst);
          }

          if (this == a6)
          {
            goto LABEL_369;
          }

          if (*this == *a6)
          {
            v180 = **(this + 2);
            v181 = **(a6 + 2);
            if (v180 == v181 && WORD1(v180) == WORD1(v181) && ((v181 ^ v180) & 0xFFFFFF00000000) == 0)
            {
              goto LABEL_369;
            }
          }

          else if (re::areSameTranslatedVersion(this, a6, v52))
          {
LABEL_369:
            re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a7);
            goto LABEL_383;
          }

          if (*(this + 12) == *(a6 + 12))
          {
            re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a6, a7);
          }

          else
          {
            v182 = re::TypeInfo::name(this)[1];
            re::TypeInfo::name(a6);
          }

          goto LABEL_383;
        }

        re::TypeMemberCollection::TypeMemberCollection(&__dst, *this, v44);
        re::TypeMemberCollection::operator[](&__dst, 0, v205);
        v112 = *(*&v205[16] + 24);
        re::TypeRegistry::typeInfo(*v205, **&v205[16], &__dst);
        re::TypeInfo::TypeInfo(v204, &__dst.n128_i64[1]);
        if (this == a6)
        {
          goto LABEL_195;
        }

        if (*this == *a6)
        {
          v158 = **(this + 2);
          v159 = *(a6 + 2);
          v160 = *v159;
          if (v158 == *v159 && WORD1(v158) == WORD1(v160) && ((v160 ^ v158) & 0xFFFFFF00000000) == 0)
          {
            goto LABEL_195;
          }
        }

        else
        {
          if (re::areSameTranslatedVersion(this, a6, v113))
          {
LABEL_195:
            if (a1[8])
            {
              goto LABEL_356;
            }

            v114 = (*(*a1 + 72))(a1, a2, a3, a4 + v112, v204, v204, a7);
LABEL_363:
            v50 = v114;
            return v50 & 1;
          }

          v159 = *(a6 + 2);
        }

        if (*(v159 + 96) == 1)
        {
          v176 = re::TypeMemberCollection::TypeMemberCollection(&v213, *a6, v159);
          re::TypeMemberCollection::operator[](v176, 0, v202);
          re::TypeRegistry::typeInfo(v202[0], *v202[2], &__dst);
          re::TypeInfo::TypeInfo(v203, &__dst.n128_i64[1]);
          if (a1[8])
          {
            goto LABEL_356;
          }

          v114 = (*(*a1 + 72))(a1, a2, a3, a4 + v112, v204, v203, a7);
          goto LABEL_363;
        }

LABEL_355:
        goto LABEL_356;
      }

      v63 = a1;
      v64 = a2;
      v61 = this;
      v62 = this;
    }

    re::serializeDynamicString<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(v63, v64, v42, 0, v61, v62, 1);
    goto LABEL_384;
  }

  if (v23 == 5)
  {
    if (this != a6)
    {
      if (*this == *a6)
      {
        v104 = **(this + 2);
        v105 = **(a6 + 2);
        if (v104 != v105 || WORD1(v104) != WORD1(v105) || ((v105 ^ v104) & 0xFFFFFF00000000) != 0)
        {
          v40 = 5;
LABEL_180:
          if (v40 != *(a6 + 12))
          {
            goto LABEL_355;
          }
        }
      }

      else if (!re::areSameTranslatedVersion(this, a6, a3))
      {
        v40 = *(this + 12);
        goto LABEL_180;
      }
    }

    if (a7)
    {
      v106 = a1[34];
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(v205, &__dst.n128_i64[1]);
      re::internal::translateType(v106, v205, &v213);
      if ((*(*a1 + 80))(a1, &v213))
      {
        __dst.n128_u64[0] = 0;
        v50 = 0;
        if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, &__dst, 0))
        {
          return v50 & 1;
        }

        goto LABEL_334;
      }

LABEL_222:
      v121 = &v213;
LABEL_223:
      v195 = re::TypeInfo::name(v121)[1];
      goto LABEL_356;
    }

    re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(&v213, &__dst.n128_i64[1]);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(v205, &__dst.n128_i64[1]);
    re::TypeInfo::TypeInfo(&__dst, this);
    v107 = (*(*a1 + 80))(a1, &v213);
    if (!v107)
    {
      goto LABEL_222;
    }

    v108 = v107;
    v109 = (*(v209 + 88))(a4);
    v203[0] = v109;
    v50 = 0;
    if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, v203, 0))
    {
      return v50 & 1;
    }

    if (*(v209 + 104))
    {
      if (v109)
      {
        for (i = 0; i != v109; ++i)
        {
          v111 = (*(v209 + 104))(a4, i);
          v108(a1, 0, 0, v111, &v213, v205, 0);
        }
      }
    }

    else
    {
      v172 = *(v209 + 112);
      if (!v172 || !*(v209 + 120) || !*(v209 + 128))
      {
        re::TypeInfo::TypeInfo(v204, &__dst);
        v194 = re::TypeInfo::name(v204)[1];
        v24 = "List type %s does not provide an indexer or iterator.";
        goto LABEL_88;
      }

      v173 = v172(a4, a1[7]);
      v174 = (*(v209 + 120))();
      if (v174)
      {
        v175 = v174;
        do
        {
          v108(a1, 0, 0, v175, &v213, v205, 0);
          v175 = (*(v209 + 120))(v173);
        }

        while (v175);
      }

      (*(v209 + 128))(v173, a1[7]);
    }

LABEL_334:
    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 3));
    goto LABEL_384;
  }

  if (v23 != 6)
  {
    goto LABEL_87;
  }

  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
  v26 = re::TypeInfo::TypeInfo(&v213, &__dst.n128_i64[1]);
  v28 = re::TypeInfo::name(v26);
  v29 = BYTE4(v214);
  if (BYTE4(v214) != 1)
  {
LABEL_106:
    if (v29 == 8)
    {
      v56 = *v28 >> 1;
      if (v56 == 0x22C6ED80D0CLL)
      {
        v115 = v28[1];
        v32 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v115 == "StringID")
        {
          goto LABEL_362;
        }

        v116 = strcmp(v115, "StringID");
        v32 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (!v116)
        {
          goto LABEL_362;
        }
      }

      else if (v56 == 0x134375A94D9F7110)
      {
        v57 = v28[1];
        v32 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v57 == "DynamicString")
        {
          goto LABEL_362;
        }

        v58 = strcmp(v57, "DynamicString");
        v32 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (!v58)
        {
          goto LABEL_362;
        }
      }
    }

    goto LABEL_209;
  }

  if (!re::TypeInfo::isInteger(&v213))
  {
    v29 = BYTE4(v214);
    goto LABEL_106;
  }

  v30 = *v28 >> 1;
  if (v30 > 0x303EE8780EDLL)
  {
    if (v30 == 0x303EE8780EELL)
    {
      v169 = v28[1];
      v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
      if (v169 == "uint32_t")
      {
        goto LABEL_362;
      }

      v170 = strcmp(v169, "uint32_t");
      v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
      if (!v170)
      {
        goto LABEL_362;
      }

      goto LABEL_341;
    }

    if (v30 != 0x303EE88E58DLL)
    {
      goto LABEL_341;
    }

    v145 = v28[1];
    v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (v145 == "uint64_t")
    {
      goto LABEL_362;
    }

    v146 = "uint64_t";
  }

  else
  {
    if (v30 != 3393056694)
    {
      if (v30 == 0x303EE86A734)
      {
        v31 = v28[1];
        v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
        if (v31 == "uint16_t")
        {
          goto LABEL_362;
        }

        v33 = strcmp(v31, "uint16_t");
        v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
        if (!v33)
        {
          goto LABEL_362;
        }
      }

      goto LABEL_341;
    }

    v145 = v28[1];
    v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (v145 == "size_t")
    {
      goto LABEL_362;
    }

    v146 = "size_t";
  }

  v168 = strcmp(v145, v146);
  v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
  if (!v168)
  {
    goto LABEL_362;
  }

LABEL_341:
  __dst.n128_u64[0] = 0x18E6A9A093;
  __dst.n128_u64[1] = "uint8_t";
  v171 = re::StringID::operator==(v28, &__dst);
  v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>;
  if (v171)
  {
    goto LABEL_362;
  }

  __dst.n128_u64[0] = 0x16749F63A2;
  __dst.n128_u64[1] = "int64_t";
  if (re::StringID::operator==(v28, &__dst))
  {
    v114 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(a1, a2, a3, a4, this, a6, a7);
    goto LABEL_363;
  }

  *v205 = 3327612;
  *&v205[8] = "long";
  v177 = re::StringID::operator==(v28, v205);
  v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>;
  if (v177 || (__dst.n128_u64[0] = 104431, __dst.n128_u64[1] = "int", v178 = re::StringID::operator==(v28, &__dst), v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>, v178) || (__dst.n128_u64[0] = 109413500, __dst.n128_u64[1] = "short", v179 = re::StringID::operator==(v28, &__dst), v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>, v179))
  {
LABEL_362:
    v114 = v32(a1, a2, a3, a4, this, a6, a7);
    goto LABEL_363;
  }

LABEL_209:
  if (this != a6)
  {
    if (*this == *a6)
    {
      v117 = **(this + 2);
      v118 = **(a6 + 2);
      if (v117 == v118 && WORD1(v117) == WORD1(v118) && ((v118 ^ v117) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_217;
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, v27))
    {
      goto LABEL_217;
    }

    if (*(this + 12) != *(a6 + 12))
    {
      goto LABEL_355;
    }
  }

LABEL_217:
  if (a7)
  {
    v119 = a1[34];
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(v205, &__dst.n128_i64[1]);
    re::internal::translateType(v119, v205, &v213);
    v120 = a1[34];
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &__dst);
    re::TypeInfo::TypeInfo(v204, &__dst.n128_i64[1]);
    re::internal::translateType(v120, v204, v205);
    if ((*(*a1 + 80))(a1, &v213))
    {
      if ((*(*a1 + 80))(a1, v205))
      {
        __dst.n128_u64[0] = 0;
        if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary((a1 + 3), a2, &__dst))
        {
          goto LABEL_388;
        }

        goto LABEL_356;
      }

      v121 = v205;
      goto LABEL_223;
    }

    goto LABEL_222;
  }

  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
  re::TypeInfo::TypeInfo(v204, &__dst.n128_i64[1]);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &__dst);
  re::TypeInfo::TypeInfo(v203, &__dst.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
  re::TypeInfo::TypeInfo(v202, &__dst.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &__dst);
  re::TypeInfo::TypeInfo(v200, &__dst.n128_i64[1]);
  re::TypeInfo::TypeInfo(v198, this);
  v127 = (*(*a1 + 80))(a1, v204);
  if (!v127)
  {
    v121 = v204;
    goto LABEL_223;
  }

  v128 = v127;
  v129 = (*(*a1 + 80))(a1, v203);
  if (!v129)
  {
    v121 = v203;
    goto LABEL_223;
  }

  v130 = v129;
  v131 = (*(v199 + 96))(a4);
  v197 = v131;
  if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary((a1 + 3), a2, &v197))
  {
    goto LABEL_356;
  }

  if (!v131)
  {
    goto LABEL_388;
  }

  v132 = *this;
  __dst.n128_u64[0] = 0x449AD97C4B77BED4;
  __dst.n128_u64[1] = "_CompareFunc";
  v133 = re::TypeRegistry::typeID(v132, &__dst, v196);
  if (__dst.n128_u8[0])
  {
    if (__dst.n128_u8[0])
    {
    }
  }

  if (!v196[0] || (v134 = *v204[2], __dst.n128_u64[0] = v196[1], __dst.n128_u64[1] = v134, LODWORD(v209) = -1, (v135 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v204[0] + 768, &__dst)) == 0) || (v136 = *v135) == 0)
  {
    v188 = (*(v199 + 120))(a4, a1[7]);
    (*(v199 + 128))();
    do
    {
      v189 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry((a1 + 3), 0);
      v190 = (*(v199 + 136))(v188, v189);
      v128(a1, "key", 0, v190, v204, v202, 0);
      v191 = (*(v199 + 144))(v188);
      v130(a1, "value", 0, v191, v203, v200, 0);
      re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((a1 + 3));
      (*(v199 + 128))(v188);
      --v131;
    }

    while (v131);
    (*(v199 + 152))(v188, a1[7]);
    goto LABEL_388;
  }

  v217 = 0;
  v214 = 0;
  v215 = 0;
  v216 = 0;
  v213 = a1[7];
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v213, v131);
  ++v216;
  v137 = (*(v199 + 120))(a4, a1[7]);
  if ((*(v199 + 128))())
  {
    do
    {
      v138 = (*(v199 + 136))(v137);
      v139 = (*(v199 + 144))(v137);
      __dst.n128_u64[0] = v138;
      __dst.n128_u64[1] = v139;
      v140 = re::DynamicArray<re::RigNodeConstraint>::add(&v213, &__dst);
    }

    while (((*(v199 + 128))(v137, v140) & 1) != 0);
  }

  (*(v199 + 152))(v137, a1[7]);
  __dst.n128_u64[0] = v136;
  std::__sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1}>(v217, &v217[16 * v215], &__dst);
  v141 = 0;
  for (j = 0; j != v131; ++j)
  {
    v143 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry((a1 + 3), 0);
    if (v215 <= j)
    {
      v201 = 0;
      v211 = 0u;
      v212 = 0u;
      v209 = 0u;
      v210 = 0u;
      __dst = 0u;
      v192 = v215;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v205 = 136315906;
      *&v205[4] = "operator[]";
      *&v205[12] = 1024;
      *&v205[14] = 789;
      *&v205[18] = 2048;
      *&v205[20] = j;
      v206 = 2048;
      v207 = v192;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_390:
      v201 = 0;
      v211 = 0u;
      v212 = 0u;
      v209 = 0u;
      v210 = 0u;
      __dst = 0u;
      v193 = v144;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v205 = 136315906;
      *&v205[4] = "operator[]";
      *&v205[12] = 1024;
      *&v205[14] = 789;
      *&v205[18] = 2048;
      *&v205[20] = j;
      v206 = 2048;
      v207 = v193;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_391;
    }

    (v128)(a1, "key", 0, *&v217[v141], v204, v202, 0, v143);
    v144 = v215;
    if (v215 <= j)
    {
      goto LABEL_390;
    }

    v130(a1, "value", 0, *&v217[v141 + 8], v203, v200, 0);
    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((a1 + 3));
    v141 += 16;
  }

  if (v213 && v217)
  {
    (*(*v213 + 40))(v213);
  }

LABEL_388:
  re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionary((a1 + 3));
LABEL_384:
  v50 = *(a1 + 64) ^ 1;
  return v50 & 1;
}