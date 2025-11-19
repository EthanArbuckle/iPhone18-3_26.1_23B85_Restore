char *rapidjson::internal::Prettify(rapidjson::internal *this, char *a2, int a3, int a4)
{
  v6 = a2;
  v8 = a3 + a2;
  if ((a3 & 0x80000000) == 0 && v8 <= 21)
  {
    if (a3)
    {
      v9 = this + a2;
      if (v8 <= a2 + 1)
      {
        v10 = a2 + 1;
      }

      else
      {
        v10 = a3 + a2;
      }

      memset(v9, 48, (v10 + ~a2) + 1);
    }

    v11 = this + v8;
    v12 = 12334;
    goto LABEL_9;
  }

  v14 = v8 - 1;
  if ((v8 - 1) > 0x14)
  {
    if (v8 == 0 || v8 >= 0xFFFFFFFB)
    {
      v18 = 2 - v8;
      memmove(this + v18, this, a2);
      *this = 11824;
      if (v8 < 0)
      {
        if (v18 <= 3)
        {
          v19 = 3;
        }

        else
        {
          v19 = 2 - v8;
        }

        memset(this + 2, 48, (v19 - 2));
      }

      if (-a3 <= a4)
      {
        return this + v18 + v6;
      }

      if (a4 >= 2)
      {
        for (i = a4 + 1; ; --i)
        {
          v21 = i;
          if (*(this + i) != 48)
          {
            break;
          }

          if (v21 < 4)
          {
            return this + 3;
          }
        }

        v17 = this + i;
        return v17 + 1;
      }

      return this + 3;
    }

    if (v8 < -a4)
    {
      *this = 11824;
      *(this + 2) = 48;
      return this + 3;
    }

    if (a2 == 1)
    {
      *(this + 1) = 101;
      if ((v14 & 0x80000000) == 0)
      {
        v11 = this + 2;
        goto LABEL_44;
      }

      v11 = this + 3;
      *(this + 2) = 45;
    }

    else
    {
      memmove(this + 2, this + 1, a2 - 1);
      *(this + 1) = 46;
      v23 = this + v6;
      v23[1] = 101;
      if ((v14 & 0x80000000) == 0)
      {
        v11 = v23 + 2;
        goto LABEL_44;
      }

      v11 = v23 + 3;
      v23[2] = 45;
    }

    v14 = 1 - v8;
LABEL_44:
    if (v14 < 0x64)
    {
      if (v14 >= 0xA)
      {
        v12 = rapidjson::internal::GetDigitsLut(void)::cDigitsLut[v14];
LABEL_9:
        *v11 = v12;
        return v11 + 2;
      }

      *v11 = v14 | 0x30;
      return v11 + 1;
    }

    else
    {
      *v11 = v14 / 0x64 + 48;
      *(v11 + 1) = rapidjson::internal::GetDigitsLut(void)::cDigitsLut[v14 % 0x64];
      return v11 + 3;
    }
  }

  v15 = (v8 + 1);
  v16 = this + v8;
  memmove(this + v15, v16, -a3);
  *v16 = 46;
  if (a4 + a3 >= 0)
  {
    v17 = this + v6;
    return v17 + 1;
  }

  if (a4 < 2)
  {
    return v16 + 2;
  }

  v22 = v8 + a4;
  result = this + v8 + a4 + 1;
  while (*(this + v22) == 48)
  {
    --v22;
    --result;
    if (v22 <= v15)
    {
      return v16 + 2;
    }
  }

  return result;
}

unint64_t rapidjson::internal::DiyFp::operator*(void *a1, void *a2)
{
  v2 = HIDWORD(*a1);
  v3 = HIDWORD(*a2);
  v4 = v3 * *a1;
  v5 = *a2 * v2;
  return HIDWORD(v5) + v3 * v2 + HIDWORD(v4) + ((((*a2 * *a1) >> 32) + v5 + v4 + 0x80000000) >> 32);
}

unint64_t rapidjson::internal::DigitGen(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t a4, int *a5, _DWORD *a6)
{
  v6 = -*(a2 + 2);
  v7 = 1;
  v8 = 1 << -*(a2 + 8);
  v9 = *a2;
  v10 = *a1;
  result = *a2 >> -*(a2 + 8);
  v12 = (v8 - 1) & *a2;
  if (result >= 0xA)
  {
    if (result >= 0x64)
    {
      if (result >= 0x3E8)
      {
        if (result >> 4 >= 0x271)
        {
          if (result >= 0x186A0)
          {
            if (result >= 0xF4240)
            {
              if (result >= 0x989680)
              {
                if (result < 0x5F5E100)
                {
                  v7 = 8;
                }

                else
                {
                  v7 = 9;
                }
              }

              else
              {
                v7 = 7;
              }
            }

            else
            {
              v7 = 6;
            }
          }

          else
          {
            v7 = 5;
          }
        }

        else
        {
          v7 = 4;
        }
      }

      else
      {
        v7 = 3;
      }
    }

    else
    {
      v7 = 2;
    }
  }

  v13 = v9 - v10;
  *a5 = 0;
  while (v7 > 0)
  {
    if (v7 <= 4)
    {
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v14 = result / 0x64;
          v16 = result % 0x64;
        }

        else
        {
          v14 = result / 0x3E8;
          v16 = result % 0x3E8;
        }

        goto LABEL_38;
      }

      if (v7 != 1)
      {
        v14 = result / 0xA;
        v16 = result % 0xA;
        goto LABEL_38;
      }

      v16 = 0;
LABEL_39:
      v17 = *a5;
      if (result)
      {
        v18 = result + 48;
        result = v16;
      }

      else
      {
        result = v16;
        if (!v17)
        {
          goto LABEL_46;
        }

LABEL_44:
        v18 = 48;
      }

      *a5 = v17 + 1;
      *(a4 + v17) = v18;
      goto LABEL_46;
    }

    if (v7 <= 6)
    {
      if (v7 == 5)
      {
        v14 = result / 0x2710;
        v16 = result % 0x2710;
      }

      else
      {
        v14 = result / 0x186A0;
        v16 = result % 0x186A0;
      }

      goto LABEL_38;
    }

    switch(v7)
    {
      case 7:
        v14 = result / 0xF4240;
        v15 = 1000000;
        goto LABEL_37;
      case 8:
        v14 = result / 0x989680;
        v15 = 10000000;
LABEL_37:
        v16 = result - v14 * v15;
LABEL_38:
        LODWORD(result) = v14;
        goto LABEL_39;
      case 9:
        v14 = result / 0x5F5E100;
        v15 = 100000000;
        goto LABEL_37;
    }

    v17 = *a5;
    if (*a5)
    {
      goto LABEL_44;
    }

LABEL_46:
    --v7;
    v19 = result << v6;
    if (a3 >= v19 + v12)
    {
      *a6 += v7;
      if (v19 + v12 < v13)
      {
        v20 = rapidjson::internal::DigitGen(rapidjson::internal::DiyFp const&,rapidjson::internal::DiyFp const&,unsigned long long,char *,int *,int *)::kPow10[v7] << v6;
        if (a3 - (v19 + v12) >= v20)
        {
          v21 = *a5;
          v22 = v12 + v19;
          v23 = v13 - v22;
          v24 = v10 - v9;
          v25 = v22 + v20;
          v26 = a3 - (v22 + v20);
          do
          {
            if (v25 >= v13 && v23 <= v24 + v25)
            {
              break;
            }

            --*(a4 - 1 + v21);
            if (v25 >= v13)
            {
              break;
            }

            v23 -= v20;
            v25 += v20;
            v27 = v26 >= v20;
            v26 -= v20;
          }

          while (v27);
        }
      }

      return result;
    }
  }

  v28 = 0;
  do
  {
    v29 = a3;
    v30 = 10 * v12;
    v31 = *a5;
    if ((v30 >> v6))
    {
      v32 = 0;
    }

    else
    {
      v32 = v31 == 0;
    }

    if (!v32)
    {
      *a5 = v31 + 1;
      *(a4 + v31) = (v30 >> v6) + 48;
    }

    a3 *= 10;
    v12 = v30 & (v8 - 1);
    ++v28;
  }

  while (10 * v29 <= v12);
  *a6 -= v28;
  if ((1 - v28) < -18)
  {
    v33 = 0;
  }

  else
  {
    v33 = rapidjson::internal::DigitGen(rapidjson::internal::DiyFp const&,rapidjson::internal::DiyFp const&,unsigned long long,char *,int *,int *)::kPow10[v28];
  }

  if (10 * v29 - v12 >= v8)
  {
    v34 = v33 * v13;
    v35 = v33 * v13 - v12;
    if (v33 * v13 > v12)
    {
      v36 = *a5;
      v37 = -(v33 * v13);
      v38 = v8 + v12;
      v39 = 10 * v29 - v38;
      do
      {
        if (v38 >= v34 && v35 <= v37 + v38)
        {
          break;
        }

        --*(a4 - 1 + v36);
        if (v38 >= v34)
        {
          break;
        }

        v35 -= v8;
        v38 += v8;
        v27 = v39 >= v8;
        v39 -= v8;
      }

      while (v27);
    }
  }

  return result;
}

uint64_t rapidjson::internal::DiyFp::NormalizeBoundary(rapidjson::internal::DiyFp *this)
{
  v2 = *this;
  v1 = *(this + 1);
  if ((*this & 0x20000000000000) == 0)
  {
    v3 = __clz(v2 & 0x1FFFFFFFFFFFFFLL) ^ 0x3F;
    v4 = 53 - v3;
    v5 = v3 - 53;
    do
    {
      v1 = (v1 - 1) | v1 & 0xFFFFFFFF00000000;
    }

    while (!__CFADD__(v5++, 1));
    v2 <<= v4;
  }

  return v2 << 10;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(uint64_t a1, const char *a2, uint64_t a3, double *a4, char a5)
{
  v15 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v15);
    }

    v9 = *a4;
    v10 = *(a1 + 168);
    if (fabs(v9) != INFINITY)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(*(a1 + 168));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteDouble(v10, v9);
      if ((a5 & 2) != 0)
      {
        return v5 ^ 1u;
      }

      goto LABEL_8;
    }

    v11 = "-Infinity";
    if (v9 > 0.0)
    {
      v11 = "Infinity";
    }

    v14 = v11;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(v10, &v14);
    if ((a5 & 2) == 0)
    {
LABEL_8:
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t re::internal::serializeEnumAsString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, re::TypeInfo *a4, re::internal *a5, re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_14;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16 || ((v18 = WORD1(v15) == WORD1(v16), v17 = (v16 ^ v15) & 0xFFFFFF00000000, v18) ? (v18 = v17 == 0) : (v18 = 0), !v18))
    {
      v14 = 1;
      if (a7)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

LABEL_14:
    v14 = 0;
    if (a7)
    {
      goto LABEL_15;
    }

LABEL_11:
    v19 = re::internal::findEnumConstantToSerialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a4, a5, a6, v14);
    if (!v19 || (v20 = *(v19 + 16), v27 = strlen(v20), !re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, a3, &v27, 0)))
    {
      v25 = 0;
      return v25 & 1;
    }

    v21 = a1 + 24;
    v22 = v20;
    v23 = 0;
    goto LABEL_18;
  }

  v14 = !re::areSameTranslatedVersion(a5, a6, a3);
  if (!a7)
  {
    goto LABEL_11;
  }

LABEL_15:
  v27 = 0;
  v24 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, a3, &v27, 0);
  v25 = 0;
  if (v24)
  {
    if (!v27)
    {
LABEL_19:
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
      v25 = *(a1 + 64) ^ 1;
      return v25 & 1;
    }

    v21 = a1 + 24;
    v22 = 0;
    v23 = 1;
LABEL_18:
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(v21, v22, v23);
    goto LABEL_19;
  }

  return v25 & 1;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(uint64_t a1, const char *a2, uint64_t a3, uint64_t *a4, int a5)
{
  v17 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v17);
    }

    v9 = *a4;
    if (!*a4)
    {
      v10 = *(a1 + 168);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v10);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v10, "", 0);
      v9 = *a4;
    }

    LOBYTE(v12) = 8;
    DWORD1(v12) = a5 & 0xFFFFFFDF;
    *(&v12 + 1) = v17;
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v14 = v9;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v12);
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(uint64_t result, uint64_t a2, char a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    v6 = *(*(result + 128) + 48 * *(result + 112) - 24);
    v7 = *(result + 168);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v7);
    result = rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v7, a2, v6);
    if ((a3 & 2) == 0)
    {
      v8 = *(v5 + 128) + 48 * *(v5 + 112);
      *(v8 - 16) += v6;
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == *(*(result + 16) + 48 * *(result + 14) - 24))
    {
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(result, 8);
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
      re::DynamicString::format("Failed to serialize string %s. Expected number of characters: %lld. Actual number of characters: %lld.", v8, v3, *(v4 - 24), *(v4 - 16));
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

uint64_t re::internal::findEnumConstantToSerialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, re::TypeInfo *a3, re::internal *this, re::TypeInfo *a5, int a6)
{
  if (*(*(this + 2) + 8) >= 9u)
  {
    v38 = re::TypeInfo::name(this)[1];
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Enum type %s has invalid size: %zu bytes", v9, v10, v11, v12, v13, v38);
    return 0;
  }

  EnumConstantIndex = re::internal::getEnumConstantIndex(this, a3, a3);
  if ((EnumConstantIndex & 0x80000000) != 0)
  {
    __dst = 0;
    memcpy(&__dst, a3, *(*(this + 2) + 8));
    v30 = __dst;
    re::TypeInfo::name(this);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Value %zu is not a valid enum constant of %s.", v31, v32, v33, v34, v35, v30);
    return 0;
  }

  v18 = EnumConstantIndex;
  if (!a6)
  {
    v36 = re::TypeInfo::enumConstants(this);
    if (v37 > v18)
    {
      return v36 + 24 * v18;
    }

    re::internal::assertLog(6, v37, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v18, v37);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  v19 = *(*a5 + 856);
  if (!v19 || (result = re::internal::TypeTranslationTable::translateRuntimeEnum(v19, this, v18, a5)) == 0)
  {
    v21 = re::TypeInfo::enumConstants(this);
    v23 = v18;
    if (v22 > v18)
    {
      v24 = *(v21 + 24 * v18 + 16);
      re::TypeInfo::name(a5);
      re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Runtime enum constant %s does not exist in serialized type %s.", v25, v26, v27, v28, v29, v24);
      return 0;
    }

LABEL_15:
    re::internal::assertLog(6, v22, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v23, v22);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

double re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(uint64_t a1, const char *a2, uint64_t a3, unsigned __int8 *a4, int a5)
{
  v16 = a2;
  if ((*(a1 + 40) & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v16);
    }

    v8 = *a4;
    if ((v8 & 1) == 0)
    {
      v9 = *(a1 + 168);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v9);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(v9);
      v8 = *a4;
    }

    LOBYTE(v11) = 3;
    DWORD1(v11) = a5 & 0xFFFFFFDF;
    *(&v11 + 1) = v16;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v13 = v8;
    return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v11);
  }

  return result;
}

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v2 + 24);
  if ((*(v2 + 32) - v3) <= 3)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v2, 4);
    v2 = *a1;
    v3 = *(*a1 + 24);
  }

  *(v2 + 24) = v3 + 1;
  *v3 = 110;
  v4 = *(*a1 + 24);
  *(*a1 + 24) = v4 + 1;
  *v4 = 117;
  v5 = *(*a1 + 24);
  *(*a1 + 24) = v5 + 1;
  *v5 = 108;
  v6 = *(*a1 + 24);
  *(*a1 + 24) = v6 + 1;
  *v6 = 108;
  return 1;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(uint64_t a1, const char *a2, uint64_t a3, uint64_t *a4, int a5)
{
  v16 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v16);
    }

    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartArray(*(a1 + 168));
    v9 = *a4;
    LOBYTE(v11) = 5;
    DWORD1(v11) = a5 & 0xFFFFFFDF;
    *(&v11 + 1) = v16;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v13 = v9;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v11);
  }

  return v5 ^ 1u;
}

_anonymous_namespace_ *re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == *(*(result + 16) + 48 * *(result + 14) - 24))
    {
      v2 = *(result + 21);
      v2[4] -= 16;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndArray(v2);
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 5);
      v3 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v3 - 16);
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v6);
      if (v7)
      {
        v4 = *&v8[7];
      }

      else
      {
        v4 = v8;
      }

      v5 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format("Failed to deserialize array %s. Expected number of elements: %lld. Actual number of elements: %lld.", v9, v4, *(v5 - 24), *(v5 - 16));
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

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartArray(uint64_t a1)
{
  rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a1);
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

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteStartArray(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  if ((*(*a1 + 32) - v2) <= 0)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*a1, 1);
    v2 = *(v1 + 24);
  }

  *(v1 + 24) = v2 + 1;
  *v2 = 91;
  return 1;
}

char *rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Level>(uint64_t a1, uint64_t a2)
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
  if (v6 <= v8 + 16 * a2)
  {
    v9 = v8 + 16 * a2;
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

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndArray(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  if ((*(*a1 + 32) - v2) <= 0)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*a1, 1);
    v2 = *(v1 + 24);
  }

  *(v1 + 24) = v2 + 1;
  *v2 = 93;
  return 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v56 = *MEMORY[0x1E69E9840];
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v50), re::TypeInfo::TypeInfo(v49, &v51), v49[12] != 1) || !re::TypeInfo::isInteger(v49))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_38:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v49, &v51);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v48, &v51);
  re::TypeInfo::TypeInfo(v46, a5);
  v19 = (*(*a1 + 80))(a1, v49);
  if (!v19)
  {
    v39 = re::TypeInfo::name(v49);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v40, v41, v42, v43, v44, v39[1]);
    goto LABEL_38;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v47 + 96))(a4);
    if (v23)
    {
      v54 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v50 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v50, v23);
      ++v53;
      v24 = (*(v47 + 120))(a4, v18);
      if ((*(v47 + 128))())
      {
        do
        {
          v25 = (*(v47 + 136))(v24);
          v26 = (*(v47 + 144))(v24);
          v55[0].n128_u64[0] = v25;
          v55[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v50, v55);
        }

        while (((*(v47 + 128))(v24, v27) & 1) != 0);
      }

      (*(v47 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v52);
      if (v52)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,false>(v54, (v54 + 16 * v52), v30, 1, v28);
      if (v52)
      {
        v32 = v54;
        v33 = v54 + 16 * v52;
        do
        {
          v34 = *(v32 + 8);
          v35 = **v32;
          if (HIDWORD(v35))
          {
            if (v35 <= 0x2540BE3FFLL)
            {
              v37 = v55;
            }

            else
            {
              v37 = std::__itoa::__base_10_u32[abi:nn200100](v55, v35 / 0x2540BE400);
              v35 %= 0x2540BE400uLL;
            }

            v37->n128_u16[0] = std::__itoa::__digits_base_10[v35 / 0x5F5E100];
            v38 = v35 % 0x5F5E100;
            v37->n128_u16[1] = std::__itoa::__digits_base_10[v38 / 0xF4240uLL];
            v38 %= 0xF4240u;
            v37->n128_u16[2] = std::__itoa::__digits_base_10[v38 / 0x2710uLL];
            v38 %= 0x2710u;
            v37->n128_u16[3] = std::__itoa::__digits_base_10[v38 / 0x64u];
            v37->n128_u16[4] = std::__itoa::__digits_base_10[v38 % 0x64u];
            v36 = &v37->n128_i8[10];
          }

          else
          {
            v36 = std::__itoa::__base_10_u32[abi:nn200100](v55, **v32);
          }

          *v36 = 0;
          v20(a1, v55, 0, v34, v49, v48, 0);
          v32 += 16;
        }

        while (v32 != v33);
      }

      if (v50 && v54)
      {
        (*(*v50 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_35;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v53 = *MEMORY[0x1E69E9840];
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v47), re::TypeInfo::TypeInfo(v46, &v48), v46[12] != 1) || !re::TypeInfo::isInteger(v46))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_32:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v46, &v48);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v45, &v48);
  re::TypeInfo::TypeInfo(v43, a5);
  v19 = (*(*a1 + 80))(a1, v46);
  if (!v19)
  {
    v36 = re::TypeInfo::name(v46);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v37, v38, v39, v40, v41, v36[1]);
    goto LABEL_32;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v44 + 96))(a4);
    if (v23)
    {
      v51 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v47 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v47, v23);
      ++v50;
      v24 = (*(v44 + 120))(a4, v18);
      if ((*(v44 + 128))())
      {
        do
        {
          v25 = (*(v44 + 136))(v24);
          v26 = (*(v44 + 144))(v24);
          v52[0].n128_u64[0] = v25;
          v52[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v47, v52);
        }

        while (((*(v44 + 128))(v24, v27) & 1) != 0);
      }

      (*(v44 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v49);
      if (v49)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,false>(v51, (v51 + 16 * v49), v30, 1, v28);
      if (v49)
      {
        v32 = v51;
        v33 = v51 + 16 * v49;
        do
        {
          v34 = *v32;
          v35 = *(v32 + 8);
          v32 += 16;
          *std::__itoa::__base_10_u32[abi:nn200100](v52, *v34) = 0;
          v20(a1, v52, 0, v35, v46, v45, 0);
        }

        while (v32 != v33);
      }

      if (v47 && v51)
      {
        (*(*v47 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_29;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v53 = *MEMORY[0x1E69E9840];
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v47), re::TypeInfo::TypeInfo(v46, &v48), v46[12] != 1) || !re::TypeInfo::isInteger(v46))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_32:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v46, &v48);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v45, &v48);
  re::TypeInfo::TypeInfo(v43, a5);
  v19 = (*(*a1 + 80))(a1, v46);
  if (!v19)
  {
    v36 = re::TypeInfo::name(v46);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v37, v38, v39, v40, v41, v36[1]);
    goto LABEL_32;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v44 + 96))(a4);
    if (v23)
    {
      v51 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v47 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v47, v23);
      ++v50;
      v24 = (*(v44 + 120))(a4, v18);
      if ((*(v44 + 128))())
      {
        do
        {
          v25 = (*(v44 + 136))(v24);
          v26 = (*(v44 + 144))(v24);
          v52[0].n128_u64[0] = v25;
          v52[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v47, v52);
        }

        while (((*(v44 + 128))(v24, v27) & 1) != 0);
      }

      (*(v44 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v49);
      if (v49)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,false>(v51, &v51[v49], v30, 1, v28);
      if (v49)
      {
        v32 = v51;
        v33 = &v51[v49];
        do
        {
          v34 = v32->n128_u64[0];
          v35 = v32->n128_u64[1];
          ++v32;
          *std::__itoa::__base_10_u32[abi:nn200100](v52, *v34) = 0;
          v20(a1, v52, 0, v35, v46, v45, 0);
        }

        while (v32 != v33);
      }

      if (v47 && v51)
      {
        (*(*v47 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_29;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v53 = *MEMORY[0x1E69E9840];
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v47), re::TypeInfo::TypeInfo(v46, &v48), v46[12] != 1) || !re::TypeInfo::isInteger(v46))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_32:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v46, &v48);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v45, &v48);
  re::TypeInfo::TypeInfo(v43, a5);
  v19 = (*(*a1 + 80))(a1, v46);
  if (!v19)
  {
    v36 = re::TypeInfo::name(v46);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v37, v38, v39, v40, v41, v36[1]);
    goto LABEL_32;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v44 + 96))(a4);
    if (v23)
    {
      v51 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v47 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v47, v23);
      ++v50;
      v24 = (*(v44 + 120))(a4, v18);
      if ((*(v44 + 128))())
      {
        do
        {
          v25 = (*(v44 + 136))(v24);
          v26 = (*(v44 + 144))(v24);
          v52[0].n128_u64[0] = v25;
          v52[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v47, v52);
        }

        while (((*(v44 + 128))(v24, v27) & 1) != 0);
      }

      (*(v44 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v49);
      if (v49)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,false>(v51, &v51[v49], v30, 1, v28);
      if (v49)
      {
        v32 = v51;
        v33 = &v51[v49];
        do
        {
          v34 = v32->n128_u64[0];
          v35 = v32->n128_u64[1];
          ++v32;
          *std::__itoa::__base_10_u32[abi:nn200100](v52, *v34) = 0;
          v20(a1, v52, 0, v35, v46, v45, 0);
        }

        while (v32 != v33);
      }

      if (v47 && v51)
      {
        (*(*v47 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_29;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v58[0] = *MEMORY[0x1E69E9840];
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v52), re::TypeInfo::TypeInfo(v51, &v53), v51[12] != 1) || !re::TypeInfo::isInteger(v51))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_42:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_39:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v52);
  re::TypeInfo::TypeInfo(v51, &v53);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v52);
  re::TypeInfo::TypeInfo(v50, &v53);
  re::TypeInfo::TypeInfo(v48, a5);
  v19 = (*(*a1 + 80))(a1, v51);
  if (!v19)
  {
    v41 = re::TypeInfo::name(v51);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v42, v43, v44, v45, v46, v41[1]);
    goto LABEL_42;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v49 + 96))(a4);
    if (v23)
    {
      v56 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v52 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v52, v23);
      ++v55;
      v24 = (*(v49 + 120))(a4, v18);
      if ((*(v49 + 128))())
      {
        do
        {
          v25 = (*(v49 + 136))(v24);
          v26 = (*(v49 + 144))(v24);
          v57[0].n128_u64[0] = v25;
          v57[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v52, v57);
        }

        while (((*(v49 + 128))(v24, v27) & 1) != 0);
      }

      (*(v49 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v54);
      if (v54)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,false>(v56, (v56 + 16 * v54), v30, 1, v28);
      if (v54)
      {
        v32 = v56;
        v33 = v56 + 16 * v54;
        do
        {
          v34 = **v32;
          if ((v34 & 0x8000000000000000) != 0)
          {
            v57[0].n128_u8[0] = 45;
            v34 = -v34;
            v35 = (v57[0].n128_u64 + 1);
          }

          else
          {
            v35 = v57;
          }

          v36 = *(v32 + 8);
          if (v58 - v35 > 19 || (v37 = (1233 * (64 - __clz(v34 | 1))) >> 12, v38 = v37 - (std::__itoa::__pow10_64[v37] > v34) + 1, v39 = v58, v58 - v35 >= v38))
          {
            if (HIDWORD(v34))
            {
              if (v34 > 0x2540BE3FFLL)
              {
                v35 = std::__itoa::__base_10_u32[abi:nn200100](v35, v34 / 0x2540BE400);
                v34 %= 0x2540BE400uLL;
              }

              v35->n128_u16[0] = std::__itoa::__digits_base_10[v34 / 0x5F5E100];
              v40 = v34 % 0x5F5E100;
              v35->n128_u16[1] = std::__itoa::__digits_base_10[v40 / 0xF4240uLL];
              v40 %= 0xF4240u;
              v35->n128_u16[2] = std::__itoa::__digits_base_10[v40 / 0x2710uLL];
              v40 %= 0x2710u;
              v35->n128_u16[3] = std::__itoa::__digits_base_10[v40 / 0x64u];
              v35->n128_u16[4] = std::__itoa::__digits_base_10[v40 % 0x64u];
              v39 = &v35->n128_i8[10];
            }

            else
            {
              v39 = std::__itoa::__base_10_u32[abi:nn200100](v35, v34);
            }
          }

          *v39 = 0;
          v20(a1, v57, 0, v36, v51, v50, 0);
          v32 += 16;
        }

        while (v32 != v33);
      }

      if (v52 && v56)
      {
        (*(*v52 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_39;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v57[0] = *MEMORY[0x1E69E9840];
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v51), re::TypeInfo::TypeInfo(v50, &v52), v50[12] != 1) || !re::TypeInfo::isInteger(v50))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_38:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v50, &v52);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v49, &v52);
  re::TypeInfo::TypeInfo(v47, a5);
  v19 = (*(*a1 + 80))(a1, v50);
  if (!v19)
  {
    v40 = re::TypeInfo::name(v50);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v41, v42, v43, v44, v45, v40[1]);
    goto LABEL_38;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v48 + 96))(a4);
    if (v23)
    {
      v55 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v51 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v51, v23);
      ++v54;
      v24 = (*(v48 + 120))(a4, v18);
      if ((*(v48 + 128))())
      {
        do
        {
          v25 = (*(v48 + 136))(v24);
          v26 = (*(v48 + 144))(v24);
          v56[0].n128_u64[0] = v25;
          v56[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v51, v56);
        }

        while (((*(v48 + 128))(v24, v27) & 1) != 0);
      }

      (*(v48 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v53);
      if (v53)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*,false>(v55, (v55 + 16 * v53), v30, 1, v28);
      if (v53)
      {
        v32 = v55;
        v33 = v55 + 16 * v53;
        do
        {
          v34 = **v32;
          if ((v34 & 0x80000000) != 0)
          {
            v56[0].n128_u8[0] = 45;
            v34 = -v34;
            v35 = (v56[0].n128_u64 + 1);
          }

          else
          {
            v35 = v56;
          }

          v36 = *(v32 + 8);
          if (v57 - v35 > 9 || (v37 = (1233 * (32 - __clz(v34 | 1))) >> 12, v38 = (((__PAIR64__(v37, v34) - std::__itoa::__pow10_32[v37]) >> 32) + 1), v39 = v57, v57 - v35 >= v38))
          {
            v39 = std::__itoa::__base_10_u32[abi:nn200100](v35, v34);
          }

          *v39 = 0;
          v20(a1, v56, 0, v36, v50, v49, 0);
          v32 += 16;
        }

        while (v32 != v33);
      }

      if (v51 && v55)
      {
        (*(*v51 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_35;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v57[0] = *MEMORY[0x1E69E9840];
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v51), re::TypeInfo::TypeInfo(v50, &v52), v50[12] != 1) || !re::TypeInfo::isInteger(v50))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_38:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v50, &v52);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v49, &v52);
  re::TypeInfo::TypeInfo(v47, a5);
  v19 = (*(*a1 + 80))(a1, v50);
  if (!v19)
  {
    v40 = re::TypeInfo::name(v50);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v41, v42, v43, v44, v45, v40[1]);
    goto LABEL_38;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v48 + 96))(a4);
    if (v23)
    {
      v55 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v51 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v51, v23);
      ++v54;
      v24 = (*(v48 + 120))(a4, v18);
      if ((*(v48 + 128))())
      {
        do
        {
          v25 = (*(v48 + 136))(v24);
          v26 = (*(v48 + 144))(v24);
          v56[0].n128_u64[0] = v25;
          v56[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v51, v56);
        }

        while (((*(v48 + 128))(v24, v27) & 1) != 0);
      }

      (*(v48 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v53);
      if (v53)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*,false>(v55, &v55[v53], v30, 1, v28);
      if (v53)
      {
        v32 = v55;
        v33 = &v55[v53];
        do
        {
          v34 = *v32->n128_u64[0];
          if ((v34 & 0x80000000) != 0)
          {
            v56[0].n128_u8[0] = 45;
            v34 = -v34;
            v35 = (v56[0].n128_u64 + 1);
          }

          else
          {
            v35 = v56;
          }

          v36 = v32->n128_u64[1];
          if (v57 - v35 > 9 || (v37 = (1233 * (32 - __clz(v34 | 1))) >> 12, v38 = (((__PAIR64__(v37, v34) - std::__itoa::__pow10_32[v37]) >> 32) + 1), v39 = v57, v57 - v35 >= v38))
          {
            v39 = std::__itoa::__base_10_u32[abi:nn200100](v35, v34);
          }

          *v39 = 0;
          v20(a1, v56, 0, v36, v50, v49, 0);
          ++v32;
        }

        while (v32 != v33);
      }

      if (v51 && v55)
      {
        (*(*v51 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_35;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, re *a6, int a7)
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

  re::TypeRegistry::typeInfo(v14, v15[10], &v50);
  re::TypeInfo::TypeInfo(v49, &v51);
  v20 = re::TypeInfo::name(v49);
  if (*v20 >> 1 != 0x22C6ED80D0CLL || (v21 = v20[1], v21 != "StringID") && strcmp(v21, "StringID"))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_35:
    v26 = 0;
    return v26 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_33:
    v26 = *(a1 + 64) ^ 1;
    return v26 & 1;
  }

  v22 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v49, &v51);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v48, &v51);
  re::TypeInfo::TypeInfo(v46, a5);
  v23 = (*(*a1 + 80))(a1, v49);
  if (!v23)
  {
    v38 = re::TypeInfo::name(v49);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v39, v40, v41, v42, v43, v38[1]);
    goto LABEL_35;
  }

  v24 = v23;
  v25 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v26 = 0;
  if (v25)
  {
    v27 = (*(v47 + 96))(a4);
    if (v27)
    {
      v54 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v50 = v22;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v50, v27);
      ++v53;
      v28 = (*(v47 + 120))(a4, v22);
      if ((*(v47 + 128))())
      {
        do
        {
          v29 = (*(v47 + 136))(v28);
          v30 = (*(v47 + 144))(v28);
          v45.n128_u64[0] = v29;
          v45.n128_u64[1] = v30;
          v31 = re::DynamicArray<re::RigNodeConstraint>::add(&v50, &v45);
        }

        while (((*(v47 + 128))(v28, v31) & 1) != 0);
      }

      (*(v47 + 152))(v28, v22);
      v32 = 126 - 2 * __clz(v52);
      if (v52)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,false>(v54, &v54[2 * v52], v33, 1);
      if (v52)
      {
        v34 = v54;
        v35 = &v54[2 * v52];
        do
        {
          v36 = *v34;
          if (*(*v34 + 8))
          {
            v37 = *(v36 + 16);
          }

          else
          {
            v37 = v36 + 9;
          }

          v24(a1, v37, 0, v34[1], v49, v48, 0);
          v34 += 2;
        }

        while (v34 != v35);
      }

      if (v50 && v54)
      {
        (*(*v50 + 40))();
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_33;
  }

  return v26 & 1;
}

uint64_t re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, re *a6, int a7)
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

  re::TypeRegistry::typeInfo(v14, v15[10], &v52);
  re::TypeInfo::TypeInfo(v51, &v53);
  v20 = re::TypeInfo::name(v51);
  if (*v20 >> 1 != 0x134375A94D9F7110 || (v21 = v20[1], v21 != "DynamicString") && strcmp(v21, "DynamicString"))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_32:
    v26 = 0;
    return v26 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_30:
    v26 = *(a1 + 64) ^ 1;
    return v26 & 1;
  }

  v22 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v52);
  re::TypeInfo::TypeInfo(v51, &v53);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v52);
  re::TypeInfo::TypeInfo(v50, &v53);
  re::TypeInfo::TypeInfo(v48, a5);
  v23 = (*(*a1 + 80))(a1, v51);
  if (!v23)
  {
    v40 = re::TypeInfo::name(v51);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v41, v42, v43, v44, v45, v40[1]);
    goto LABEL_32;
  }

  v24 = v23;
  v25 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v26 = 0;
  if (v25)
  {
    v27 = (*(v49 + 96))(a4);
    if (v27)
    {
      v56 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v52 = v22;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v52, v27);
      ++v55;
      v28 = (*(v49 + 120))(a4, v22);
      if ((*(v49 + 128))())
      {
        do
        {
          v29 = (*(v49 + 136))(v28);
          v30 = (*(v49 + 144))(v28);
          v47.n128_u64[0] = v29;
          v47.n128_u64[1] = v30;
          v31 = re::DynamicArray<re::RigNodeConstraint>::add(&v52, &v47);
        }

        while (((*(v49 + 128))(v28, v31) & 1) != 0);
      }

      (*(v49 + 152))(v28, v22);
      v33 = 126 - 2 * __clz(v54);
      if (v54)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      v35 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,false>(v56, &v56[v54], v34, 1, v32);
      if (v54)
      {
        v36 = v56;
        v37 = &v56[v54];
        do
        {
          v39 = v36->n128_u64[0];
          v38 = v36->n128_u64[1];
          ++v36;
          v24(a1, *(v39 + 8), 0, v38, v51, v50, 0, v35);
        }

        while (v36 != v37);
      }

      if (v52 && v56)
      {
        (*(*v52 + 40))(v35);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_30;
  }

  return v26 & 1;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(uint64_t a1, const char *a2, uint64_t a3, uint64_t *a4, int a5)
{
  v16 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v16);
    }

    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartArray(*(a1 + 168));
    v9 = *a4;
    LOBYTE(v11) = 6;
    DWORD1(v11) = a5 & 0xFFFFFFDF;
    *(&v11 + 1) = v16;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v13 = v9;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v11);
  }

  return v5 ^ 1u;
}

double re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(uint64_t a1, int a2)
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
    return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v5);
  }

  return result;
}

_anonymous_namespace_ *re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == 2)
    {
      v2 = *(result + 21);
      v2[4] -= 16;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndObject(v2);
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 7);
      v3 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v3 - 16);
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v5);
      if (v6)
      {
        v4 = *&v7[7];
      }

      else
      {
        v4 = v7;
      }

      re::DynamicString::format("Failed to deserialize dictionary entry %s. Expected 2 objects (key+value). Actual number of objects: %lld.", v8, v4, *(*(v1 + 16) + 48 * *(v1 + 14) - 16));
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

_anonymous_namespace_ *re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionary(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == *(*(result + 16) + 48 * *(result + 14) - 24))
    {
      v2 = *(result + 21);
      v2[4] -= 16;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndArray(v2);
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 6);
      v3 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v3 - 16);
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v6);
      if (v7)
      {
        v4 = *&v8[7];
      }

      else
      {
        v4 = v8;
      }

      v5 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format("Failed to deserialize dictionary %s. Expected number of entries: %lld. Actual number of entries: %lld.", v9, v4, *(v5 - 24), *(v5 - 16));
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

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  v9 = a2;
  v4 = *(a1 + 40);
  if ((v4 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v9);
    }

    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartObject(*(a1 + 168));
    LOBYTE(v8[0]) = 2;
    DWORD1(v8[0]) = a4 | 0x20;
    *(&v8[0] + 1) = v9;
    memset(&v8[1], 0, 32);
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v8);
  }

  return v4 ^ 1u;
}

_anonymous_namespace_ *re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 21);
    v2[4] -= 16;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndObject(v2);
    result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 2);
    v3 = *(v1 + 16) + 48 * *(v1 + 14);
    ++*(v3 - 16);
  }

  return result;
}

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartObject(uint64_t a1)
{
  rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a1);
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

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteStartObject(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  if ((*(*a1 + 32) - v2) <= 0)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*a1, 1);
    v2 = *(v1 + 24);
  }

  *(v1 + 24) = v2 + 1;
  *v2 = 123;
  return 1;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v62 = a2[-1].n128_u64[0];
        v61 = a2 - 1;
        if (*v62 >= *v12->n128_u64[0])
        {
          return result;
        }

LABEL_107:
        v137 = *v12;
        *v12 = *v61;
        result = v137;
LABEL_108:
        *v61 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v63 = v12 + 1;
      v67 = v12 + 2;
      v68 = v12[2].n128_u64[0];
      v69 = *v12[1].n128_u64[0];
      v70 = *v68;
      if (v69 >= *v12->n128_u64[0])
      {
        if (v70 < v69)
        {
          result = *v63;
          *v63 = *v67;
          *v67 = result;
          if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
          {
            v140 = *v12;
            *v12 = *v63;
            result = v140;
            *v63 = v140;
          }
        }
      }

      else
      {
        if (v70 < v69)
        {
          v138 = *v12;
          *v12 = *v67;
          result = v138;
          goto LABEL_187;
        }

        v142 = *v12;
        *v12 = *v63;
        result = v142;
        *v63 = v142;
        if (*v68 < *v12[1].n128_u64[0])
        {
          result = *v63;
          *v63 = *v67;
LABEL_187:
          *v67 = result;
        }
      }

      if (*v9->n128_u64[0] >= *v67->n128_u64[0])
      {
        return result;
      }

      result = *v67;
      *v67 = *v9;
      *v9 = result;
      if (*v67->n128_u64[0] >= *v63->n128_u64[0])
      {
        return result;
      }

      result = *v63;
      *v63 = *v67;
      *v67 = result;
LABEL_191:
      if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
      {
        v143 = *v12;
        *v12 = *v63;
        result = v143;
        *v63 = v143;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,0>(v12, v12 + 1, &v12[2], v12[3].n128_u64, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v71 = v12 + 1;
      v73 = v12 == a2 || v71 == a2;
      if (a4)
      {
        if (!v73)
        {
          v74 = 0;
          v75 = v12;
          do
          {
            v76 = v71;
            v77 = v75[1].n128_u64[0];
            if (*v77 < *v75->n128_u64[0])
            {
              v78 = v75[1].n128_u64[1];
              v79 = v74;
              while (1)
              {
                result = *(v12 + v79);
                *(v12 + v79 + 16) = result;
                if (!v79)
                {
                  break;
                }

                v80 = **(v12[-1].n128_u64 + v79);
                v79 -= 16;
                if (*v77 >= v80)
                {
                  v81 = (v12 + v79 + 16);
                  goto LABEL_127;
                }
              }

              v81 = v12;
LABEL_127:
              v81->n128_u64[0] = v77;
              v81->n128_u64[1] = v78;
            }

            v71 = v76 + 1;
            v74 += 16;
            v75 = v76;
          }

          while (&v76[1] != a2);
        }
      }

      else if (!v73)
      {
        do
        {
          v113 = v71;
          v114 = *(a1 + 16);
          if (*v114 < **a1)
          {
            v115 = *(a1 + 24);
            v116 = v113;
            do
            {
              result = v116[-1];
              *v116 = result;
              v117 = v116[-2].n128_u64[0];
              --v116;
            }

            while (*v114 < *v117);
            v116->n128_u64[0] = v114;
            v116->n128_u64[1] = v115;
          }

          v71 = v113 + 1;
          a1 = v113;
        }

        while (&v113[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v82 = (v13 - 2) >> 1;
        v83 = v82;
        do
        {
          v84 = v83;
          if (v82 >= v83)
          {
            v85 = (2 * v83) | 1;
            v86 = &v12[v85];
            if (2 * v84 + 2 >= v13)
            {
              v88 = *v86->n128_u64[0];
            }

            else
            {
              v87 = *v86->n128_u64[0];
              v88 = *v86[1].n128_u64[0];
              v89 = v87 >= v88;
              if (v87 > v88)
              {
                v88 = *v86->n128_u64[0];
              }

              if (!v89)
              {
                ++v86;
                v85 = 2 * v84 + 2;
              }
            }

            v90 = &v12[v84];
            v91 = v90->n128_u64[0];
            if (v88 >= *v90->n128_u64[0])
            {
              v92 = v90->n128_u64[1];
              do
              {
                v93 = v90;
                v90 = v86;
                *v93 = *v86;
                if (v82 < v85)
                {
                  break;
                }

                v94 = (2 * v85) | 1;
                v86 = &v12[v94];
                v85 = 2 * v85 + 2;
                if (v85 >= v13)
                {
                  v95 = *v86->n128_u64[0];
                  v85 = v94;
                }

                else
                {
                  v95 = *v86->n128_u64[0];
                  v96 = *v86[1].n128_u64[0];
                  v97 = v95 >= v96;
                  if (v95 <= v96)
                  {
                    v95 = *v86[1].n128_u64[0];
                  }

                  if (v97)
                  {
                    v85 = v94;
                  }

                  else
                  {
                    ++v86;
                  }
                }
              }

              while (v95 >= *v91);
              v90->n128_u64[0] = v91;
              v90->n128_u64[1] = v92;
            }
          }

          v83 = v84 - 1;
        }

        while (v84);
        do
        {
          v98 = 0;
          v139 = *v12;
          v99 = v12;
          do
          {
            v100 = &v99[v98];
            v101 = v100 + 1;
            v102 = (2 * v98) | 1;
            v98 = 2 * v98 + 2;
            if (v98 >= v13)
            {
              v98 = v102;
            }

            else
            {
              v104 = v100[2].n128_u64[0];
              v103 = v100 + 2;
              if (*v103[-1].n128_u64[0] >= *v104)
              {
                v98 = v102;
              }

              else
              {
                v101 = v103;
              }
            }

            *v99 = *v101;
            v99 = v101;
          }

          while (v98 <= ((v13 - 2) >> 1));
          if (v101 == --a2)
          {
            result = v139;
            *v101 = v139;
          }

          else
          {
            *v101 = *a2;
            result = v139;
            *a2 = v139;
            v105 = (v101 - v12 + 16) >> 4;
            v106 = v105 < 2;
            v107 = v105 - 2;
            if (!v106)
            {
              v108 = v107 >> 1;
              v109 = &v12[v108];
              v110 = v101->n128_u64[0];
              if (*v109->n128_u64[0] < *v101->n128_u64[0])
              {
                v111 = v101->n128_u64[1];
                do
                {
                  v112 = v101;
                  v101 = v109;
                  result = *v109;
                  *v112 = *v109;
                  if (!v108)
                  {
                    break;
                  }

                  v108 = (v108 - 1) >> 1;
                  v109 = &v12[v108];
                }

                while (*v109->n128_u64[0] < *v110);
                v101->n128_u64[0] = v110;
                v101->n128_u64[1] = v111;
              }
            }
          }

          v106 = v13-- <= 2;
        }

        while (!v106);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = v14;
    v16 = *v9->n128_u64[0];
    if (v13 >= 0x81)
    {
      v17 = *v14->n128_u64[0];
      if (v17 >= *v12->n128_u64[0])
      {
        if (v16 < v17)
        {
          v120 = *v14;
          *v14 = *v9;
          *v9 = v120;
          if (*v14->n128_u64[0] < *v12->n128_u64[0])
          {
            v121 = *v12;
            *v12 = *v14;
            *v14 = v121;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v118 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v124 = *v12;
        *v12 = *v14;
        *v14 = v124;
        if (*v9->n128_u64[0] < *v14->n128_u64[0])
        {
          v118 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v118;
        }
      }

      v19 = v12 + 1;
      v20 = v14 - 1;
      v21 = *v14[-1].n128_u64[0];
      v22 = *v10->n128_u64[0];
      if (v21 >= *v12[1].n128_u64[0])
      {
        if (v22 < v21)
        {
          v125 = *v20;
          *v20 = *v10;
          *v10 = v125;
          if (*v20->n128_u64[0] < *v19->n128_u64[0])
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (*v10->n128_u64[0] < *v20->n128_u64[0])
        {
          v127 = *v20;
          *v20 = *v10;
          v23 = v127;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = v12 + 2;
      v28 = v14[1].n128_u64[0];
      v27 = v14 + 1;
      v29 = *v28;
      v30 = *v11->n128_u64[0];
      if (*v28 >= *v12[2].n128_u64[0])
      {
        if (v30 < v29)
        {
          v128 = *v27;
          *v27 = *v11;
          *v11 = v128;
          if (*v27->n128_u64[0] < *v26->n128_u64[0])
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (*v11->n128_u64[0] < *v27->n128_u64[0])
        {
          v129 = *v27;
          *v27 = *v11;
          v31 = v129;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = *v15->n128_u64[0];
      v35 = *v27->n128_u64[0];
      if (v34 >= *v20->n128_u64[0])
      {
        if (v35 < v34)
        {
          v131 = *v15;
          *v15 = *v27;
          *v27 = v131;
          if (*v15->n128_u64[0] < *v20->n128_u64[0])
          {
            v132 = *v20;
            *v20 = *v15;
            *v15 = v132;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v130 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v133 = *v20;
        *v20 = *v15;
        *v15 = v133;
        if (*v27->n128_u64[0] < *v15->n128_u64[0])
        {
          v130 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v130;
        }
      }

      v134 = *v12;
      *v12 = *v15;
      result = v134;
      *v15 = v134;
      goto LABEL_58;
    }

    v18 = *v12->n128_u64[0];
    if (v18 >= *v14->n128_u64[0])
    {
      if (v16 < v18)
      {
        v122 = *v12;
        *v12 = *v9;
        result = v122;
        *v9 = v122;
        if (*v12->n128_u64[0] < *v14->n128_u64[0])
        {
          v123 = *v14;
          *v14 = *v12;
          result = v123;
          *v12 = v123;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v18)
    {
      v126 = *v14;
      *v14 = *v12;
      result = v126;
      *v12 = v126;
      if (*v9->n128_u64[0] >= *v12->n128_u64[0])
      {
        goto LABEL_58;
      }

      v119 = *v12;
      *v12 = *v9;
    }

    else
    {
      v119 = *v14;
      *v14 = *v9;
    }

    result = v119;
    *v9 = v119;
LABEL_58:
    --a3;
    v36 = v12->n128_u64[0];
    v37 = *v12->n128_u64[0];
    if ((a4 & 1) != 0 || *v12[-1].n128_u64[0] < v37)
    {
      v38 = 0;
      v39 = v12->n128_u64[1];
      do
      {
        v40 = *v12[++v38].n128_u64[0];
      }

      while (v40 < v37);
      v41 = &v12[v38];
      v42 = a2;
      if (v38 == 1)
      {
        v42 = a2;
        do
        {
          if (v41 >= v42)
          {
            break;
          }

          v44 = v42[-1].n128_u64[0];
          --v42;
        }

        while (*v44 >= v37);
      }

      else
      {
        do
        {
          v43 = v42[-1].n128_u64[0];
          --v42;
        }

        while (*v43 >= v37);
      }

      v12 = (v12 + v38 * 16);
      if (v41 < v42)
      {
        v45 = v42;
        do
        {
          v135 = *v12;
          *v12 = *v45;
          result = v135;
          *v45 = v135;
          v46 = *v36;
          do
          {
            v47 = v12[1].n128_u64[0];
            ++v12;
          }

          while (*v47 < v46);
          do
          {
            v48 = v45[-1].n128_u64[0];
            --v45;
          }

          while (*v48 >= v46);
        }

        while (v12 < v45);
      }

      v49 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v49;
        *a1 = *v49;
      }

      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v39;
      if (v41 < v42)
      {
        goto LABEL_79;
      }

      v50 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(a1, v12 - 1, result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(v12, a2, v51))
      {
        a2 = v12 - 1;
        if (!v50)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v50)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,false>(a1, &v12[-1], a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      if (v37 >= *v9->n128_u64[0])
      {
        v53 = v12 + 1;
        do
        {
          v12 = v53;
          if (v53 >= a2)
          {
            break;
          }

          ++v53;
        }

        while (v37 >= *v12->n128_u64[0]);
      }

      else
      {
        do
        {
          v52 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v37 >= *v52);
      }

      v54 = a2;
      if (v12 < a2)
      {
        v54 = a2;
        do
        {
          v55 = v54[-1].n128_u64[0];
          --v54;
        }

        while (v37 < *v55);
      }

      v56 = *(a1 + 8);
      while (v12 < v54)
      {
        v136 = *v12;
        *v12 = *v54;
        result = v136;
        *v54 = v136;
        v57 = *v36;
        do
        {
          v58 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v57 >= *v58);
        do
        {
          v59 = v54[-1].n128_u64[0];
          --v54;
        }

        while (v57 < *v59);
      }

      v60 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v60;
        *a1 = *v60;
      }

      a4 = 0;
      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v56;
    }
  }

  v63 = v12 + 1;
  v64 = a2[-1].n128_u64[0];
  v61 = a2 - 1;
  v65 = *v12[1].n128_u64[0];
  v66 = *v64;
  if (v65 >= *v12->n128_u64[0])
  {
    if (v66 >= v65)
    {
      return result;
    }

    result = *v63;
    *v63 = *v61;
    *v61 = result;
    goto LABEL_191;
  }

  if (v66 < v65)
  {
    goto LABEL_107;
  }

  v141 = *v12;
  *v12 = *v63;
  result = v141;
  *v63 = v141;
  if (*v61->n128_u64[0] < *v12[1].n128_u64[0])
  {
    result = *v63;
    *v63 = *v61;
    goto LABEL_108;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,0>(__n128 *a1, __n128 *a2, unint64_t **a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = *a2->n128_u64[0];
  v7 = **a3;
  if (v6 >= *a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2->n128_u64[0] < *a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (**a3 < *a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (**a4 < **a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (**a3 < *a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2->n128_u64[0] < *a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (**a5 < **a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (**a4 < **a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (**a3 < *a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (*a2->n128_u64[0] < *a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = **(a1 + 16);
      v9 = *v7;
      if (v8 < **a1)
      {
        if (v9 >= v8)
        {
          v30 = *a1;
          *a1 = *v6;
          *v6 = v30;
          if (*v4->n128_u64[0] >= **(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v25 = *v6;
      *v6 = *v4;
      *v4 = v25;
LABEL_50:
      if (**(a1 + 16) < **a1)
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    v22 = **(a1 + 16);
    v23 = *v19;
    if (v22 >= **a1)
    {
      if (v23 < v22)
      {
        v28 = *v6;
        *v6 = *v18;
        *v18 = v28;
        if (*v6->n128_u64[0] < *v21)
        {
          v29 = *a1;
          *a1 = *v6;
          *v6 = v29;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v22)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (*v19 >= **(a1 + 16))
      {
        goto LABEL_47;
      }

      v24 = *v6;
      *v6 = *v18;
    }

    else
    {
      v24 = *a1;
      *a1 = *v18;
    }

    *v18 = v24;
LABEL_47:
    if (*v20->n128_u64[0] >= *v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (*v18->n128_u64[0] >= *v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*v5 >= **a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *a1;
  v15 = **(a1 + 16);
  v16 = *v12;
  if (v15 >= **a1)
  {
    if (v16 < v15)
    {
      v26 = *v13;
      *v13 = *v11;
      *v11 = v26;
      if (*v13->n128_u64[0] < *v14)
      {
        v27 = *a1;
        *a1 = *v13;
        *v13 = v27;
      }
    }
  }

  else
  {
    if (v16 >= v15)
    {
      v31 = *a1;
      *a1 = *v13;
      *v13 = v31;
      if (*v12 >= **(a1 + 16))
      {
        goto LABEL_33;
      }

      v17 = *v13;
      *v13 = *v11;
    }

    else
    {
      v17 = *a1;
      *a1 = *v11;
    }

    *v11 = v17;
  }

LABEL_33:
  v32 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (*v32->n128_u64[0] < *v11->n128_u64[0])
    {
      v36 = v32->n128_i64[1];
      v37 = v33;
      while (1)
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v38 = **(a1 + v37 + 16);
        v37 -= 16;
        if (*v35 >= v38)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      *v39 = v35;
      v39[1] = v36;
      if (++v34 == 8)
      {
        return &v32[1] == a2;
      }
    }

    v11 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }
}

char *std::__itoa::__base_10_u32[abi:nn200100](_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = std::__itoa::__digits_base_10[v7];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        a1[2] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v13 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = std::__itoa::__digits_base_10[v13 / 0x64u];
        a1[4] = std::__itoa::__digits_base_10[v13 % 0x64u];
        v2 = 10;
      }

      else
      {
        *a1 = v7 | 0x30;
        v8 = (140737489 * (a2 % 0x5F5E100)) >> 47;
        *(a1 + 1) = std::__itoa::__digits_base_10[v8];
        v9 = a2 % 0x5F5E100 - 1000000 * v8;
        *(a1 + 3) = std::__itoa::__digits_base_10[v9 / 0x2710uLL];
        v9 %= 0x2710u;
        *(a1 + 5) = std::__itoa::__digits_base_10[v9 / 0x64u];
        *(a1 + 7) = std::__itoa::__digits_base_10[v9 % 0x64u];
        v2 = 9;
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = std::__itoa::__digits_base_10[v3];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v11 = a2 % 0xF4240 % 0x2710;
        a1[2] = std::__itoa::__digits_base_10[v11 / 0x64u];
        a1[3] = std::__itoa::__digits_base_10[v11 % 0x64u];
        v2 = 8;
      }

      else
      {
        *a1 = v3 + 48;
        v4 = (429497 * (a2 % 0xF4240)) >> 32;
        *(a1 + 1) = std::__itoa::__digits_base_10[v4];
        v5 = a2 % 0xF4240 - 10000 * v4;
        *(a1 + 3) = std::__itoa::__digits_base_10[v5 / 0x64u];
        *(a1 + 5) = std::__itoa::__digits_base_10[v5 % 0x64u];
        v2 = 7;
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v6 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = std::__itoa::__digits_base_10[v6];
      v12 = a2 % 0x2710;
      a1[1] = std::__itoa::__digits_base_10[v12 / 0x64u];
      a1[2] = std::__itoa::__digits_base_10[v12 % 0x64u];
      v2 = 6;
    }

    else
    {
      *a1 = v6 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[(5243 * (a2 % 0x2710)) >> 19];
      *(a1 + 3) = std::__itoa::__digits_base_10[(a2 % 0x2710 - 100 * (((5243 * (a2 % 0x2710)) >> 16) >> 3))];
      v2 = 5;
    }
  }

  else if (a2 > 0x63)
  {
    v10 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = std::__itoa::__digits_base_10[v10];
      a1[1] = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 4;
    }

    else
    {
      *a1 = v10 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 3;
    }
  }

  else if (a2 > 9)
  {
    *a1 = std::__itoa::__digits_base_10[a2];
    v2 = 2;
  }

  else
  {
    *a1 = a2 | 0x30;
    v2 = 1;
  }

  return a1 + v2;
}

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndObject(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  if ((*(*a1 + 32) - v2) <= 0)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*a1, 1);
    v2 = *(v1 + 24);
  }

  *(v1 + 24) = v2 + 1;
  *v2 = 125;
  return 1;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v62 = a2[-1].n128_u64[0];
        v61 = a2 - 1;
        if (*v62 >= *v12->n128_u64[0])
        {
          return result;
        }

LABEL_107:
        v137 = *v12;
        *v12 = *v61;
        result = v137;
LABEL_108:
        *v61 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v63 = v12 + 1;
      v67 = v12 + 2;
      v68 = v12[2].n128_u64[0];
      v69 = *v12[1].n128_u64[0];
      v70 = *v68;
      if (v69 >= *v12->n128_u64[0])
      {
        if (v70 < v69)
        {
          result = *v63;
          *v63 = *v67;
          *v67 = result;
          if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
          {
            v140 = *v12;
            *v12 = *v63;
            result = v140;
            *v63 = v140;
          }
        }
      }

      else
      {
        if (v70 < v69)
        {
          v138 = *v12;
          *v12 = *v67;
          result = v138;
          goto LABEL_187;
        }

        v142 = *v12;
        *v12 = *v63;
        result = v142;
        *v63 = v142;
        if (*v68 < *v12[1].n128_u64[0])
        {
          result = *v63;
          *v63 = *v67;
LABEL_187:
          *v67 = result;
        }
      }

      if (*v9->n128_u64[0] >= *v67->n128_u64[0])
      {
        return result;
      }

      result = *v67;
      *v67 = *v9;
      *v9 = result;
      if (*v67->n128_u64[0] >= *v63->n128_u64[0])
      {
        return result;
      }

      result = *v63;
      *v63 = *v67;
      *v67 = result;
LABEL_191:
      if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
      {
        v143 = *v12;
        *v12 = *v63;
        result = v143;
        *v63 = v143;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,0>(v12, v12 + 1, &v12[2], v12[3].n128_u64, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v71 = v12 + 1;
      v73 = v12 == a2 || v71 == a2;
      if (a4)
      {
        if (!v73)
        {
          v74 = 0;
          v75 = v12;
          do
          {
            v76 = v71;
            v77 = v75[1].n128_u64[0];
            if (*v77 < *v75->n128_u64[0])
            {
              v78 = v75[1].n128_u64[1];
              v79 = v74;
              while (1)
              {
                result = *(v12 + v79);
                *(v12 + v79 + 16) = result;
                if (!v79)
                {
                  break;
                }

                v80 = **(v12[-1].n128_u64 + v79);
                v79 -= 16;
                if (*v77 >= v80)
                {
                  v81 = (v12 + v79 + 16);
                  goto LABEL_127;
                }
              }

              v81 = v12;
LABEL_127:
              v81->n128_u64[0] = v77;
              v81->n128_u64[1] = v78;
            }

            v71 = v76 + 1;
            v74 += 16;
            v75 = v76;
          }

          while (&v76[1] != a2);
        }
      }

      else if (!v73)
      {
        do
        {
          v113 = v71;
          v114 = *(a1 + 16);
          if (*v114 < **a1)
          {
            v115 = *(a1 + 24);
            v116 = v113;
            do
            {
              result = v116[-1];
              *v116 = result;
              v117 = v116[-2].n128_u64[0];
              --v116;
            }

            while (*v114 < *v117);
            v116->n128_u64[0] = v114;
            v116->n128_u64[1] = v115;
          }

          v71 = v113 + 1;
          a1 = v113;
        }

        while (&v113[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v82 = (v13 - 2) >> 1;
        v83 = v82;
        do
        {
          v84 = v83;
          if (v82 >= v83)
          {
            v85 = (2 * v83) | 1;
            v86 = &v12[v85];
            if (2 * v84 + 2 >= v13)
            {
              v88 = *v86->n128_u64[0];
            }

            else
            {
              v87 = *v86->n128_u64[0];
              v88 = *v86[1].n128_u64[0];
              v89 = v87 >= v88;
              if (v87 > v88)
              {
                v88 = *v86->n128_u64[0];
              }

              if (!v89)
              {
                ++v86;
                v85 = 2 * v84 + 2;
              }
            }

            v90 = &v12[v84];
            v91 = v90->n128_u64[0];
            if (v88 >= *v90->n128_u64[0])
            {
              v92 = v90->n128_u64[1];
              do
              {
                v93 = v90;
                v90 = v86;
                *v93 = *v86;
                if (v82 < v85)
                {
                  break;
                }

                v94 = (2 * v85) | 1;
                v86 = &v12[v94];
                v85 = 2 * v85 + 2;
                if (v85 >= v13)
                {
                  v95 = *v86->n128_u64[0];
                  v85 = v94;
                }

                else
                {
                  v95 = *v86->n128_u64[0];
                  v96 = *v86[1].n128_u64[0];
                  v97 = v95 >= v96;
                  if (v95 <= v96)
                  {
                    v95 = *v86[1].n128_u64[0];
                  }

                  if (v97)
                  {
                    v85 = v94;
                  }

                  else
                  {
                    ++v86;
                  }
                }
              }

              while (v95 >= *v91);
              v90->n128_u64[0] = v91;
              v90->n128_u64[1] = v92;
            }
          }

          v83 = v84 - 1;
        }

        while (v84);
        do
        {
          v98 = 0;
          v139 = *v12;
          v99 = v12;
          do
          {
            v100 = &v99[v98];
            v101 = v100 + 1;
            v102 = (2 * v98) | 1;
            v98 = 2 * v98 + 2;
            if (v98 >= v13)
            {
              v98 = v102;
            }

            else
            {
              v104 = v100[2].n128_u64[0];
              v103 = v100 + 2;
              if (*v103[-1].n128_u64[0] >= *v104)
              {
                v98 = v102;
              }

              else
              {
                v101 = v103;
              }
            }

            *v99 = *v101;
            v99 = v101;
          }

          while (v98 <= ((v13 - 2) >> 1));
          if (v101 == --a2)
          {
            result = v139;
            *v101 = v139;
          }

          else
          {
            *v101 = *a2;
            result = v139;
            *a2 = v139;
            v105 = (v101 - v12 + 16) >> 4;
            v106 = v105 < 2;
            v107 = v105 - 2;
            if (!v106)
            {
              v108 = v107 >> 1;
              v109 = &v12[v108];
              v110 = v101->n128_u64[0];
              if (*v109->n128_u64[0] < *v101->n128_u64[0])
              {
                v111 = v101->n128_u64[1];
                do
                {
                  v112 = v101;
                  v101 = v109;
                  result = *v109;
                  *v112 = *v109;
                  if (!v108)
                  {
                    break;
                  }

                  v108 = (v108 - 1) >> 1;
                  v109 = &v12[v108];
                }

                while (*v109->n128_u64[0] < *v110);
                v101->n128_u64[0] = v110;
                v101->n128_u64[1] = v111;
              }
            }
          }

          v106 = v13-- <= 2;
        }

        while (!v106);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = v14;
    v16 = *v9->n128_u64[0];
    if (v13 >= 0x81)
    {
      v17 = *v14->n128_u64[0];
      if (v17 >= *v12->n128_u64[0])
      {
        if (v16 < v17)
        {
          v120 = *v14;
          *v14 = *v9;
          *v9 = v120;
          if (*v14->n128_u64[0] < *v12->n128_u64[0])
          {
            v121 = *v12;
            *v12 = *v14;
            *v14 = v121;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v118 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v124 = *v12;
        *v12 = *v14;
        *v14 = v124;
        if (*v9->n128_u64[0] < *v14->n128_u64[0])
        {
          v118 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v118;
        }
      }

      v19 = v12 + 1;
      v20 = v14 - 1;
      v21 = *v14[-1].n128_u64[0];
      v22 = *v10->n128_u64[0];
      if (v21 >= *v12[1].n128_u64[0])
      {
        if (v22 < v21)
        {
          v125 = *v20;
          *v20 = *v10;
          *v10 = v125;
          if (*v20->n128_u64[0] < *v19->n128_u64[0])
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (*v10->n128_u64[0] < *v20->n128_u64[0])
        {
          v127 = *v20;
          *v20 = *v10;
          v23 = v127;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = v12 + 2;
      v28 = v14[1].n128_u64[0];
      v27 = v14 + 1;
      v29 = *v28;
      v30 = *v11->n128_u64[0];
      if (*v28 >= *v12[2].n128_u64[0])
      {
        if (v30 < v29)
        {
          v128 = *v27;
          *v27 = *v11;
          *v11 = v128;
          if (*v27->n128_u64[0] < *v26->n128_u64[0])
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (*v11->n128_u64[0] < *v27->n128_u64[0])
        {
          v129 = *v27;
          *v27 = *v11;
          v31 = v129;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = *v15->n128_u64[0];
      v35 = *v27->n128_u64[0];
      if (v34 >= *v20->n128_u64[0])
      {
        if (v35 < v34)
        {
          v131 = *v15;
          *v15 = *v27;
          *v27 = v131;
          if (*v15->n128_u64[0] < *v20->n128_u64[0])
          {
            v132 = *v20;
            *v20 = *v15;
            *v15 = v132;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v130 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v133 = *v20;
        *v20 = *v15;
        *v15 = v133;
        if (*v27->n128_u64[0] < *v15->n128_u64[0])
        {
          v130 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v130;
        }
      }

      v134 = *v12;
      *v12 = *v15;
      result = v134;
      *v15 = v134;
      goto LABEL_58;
    }

    v18 = *v12->n128_u64[0];
    if (v18 >= *v14->n128_u64[0])
    {
      if (v16 < v18)
      {
        v122 = *v12;
        *v12 = *v9;
        result = v122;
        *v9 = v122;
        if (*v12->n128_u64[0] < *v14->n128_u64[0])
        {
          v123 = *v14;
          *v14 = *v12;
          result = v123;
          *v12 = v123;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v18)
    {
      v126 = *v14;
      *v14 = *v12;
      result = v126;
      *v12 = v126;
      if (*v9->n128_u64[0] >= *v12->n128_u64[0])
      {
        goto LABEL_58;
      }

      v119 = *v12;
      *v12 = *v9;
    }

    else
    {
      v119 = *v14;
      *v14 = *v9;
    }

    result = v119;
    *v9 = v119;
LABEL_58:
    --a3;
    v36 = v12->n128_u64[0];
    v37 = *v12->n128_u64[0];
    if ((a4 & 1) != 0 || *v12[-1].n128_u64[0] < v37)
    {
      v38 = 0;
      v39 = v12->n128_u64[1];
      do
      {
        v40 = *v12[++v38].n128_u64[0];
      }

      while (v40 < v37);
      v41 = &v12[v38];
      v42 = a2;
      if (v38 == 1)
      {
        v42 = a2;
        do
        {
          if (v41 >= v42)
          {
            break;
          }

          v44 = v42[-1].n128_u64[0];
          --v42;
        }

        while (*v44 >= v37);
      }

      else
      {
        do
        {
          v43 = v42[-1].n128_u64[0];
          --v42;
        }

        while (*v43 >= v37);
      }

      v12 = (v12 + v38 * 16);
      if (v41 < v42)
      {
        v45 = v42;
        do
        {
          v135 = *v12;
          *v12 = *v45;
          result = v135;
          *v45 = v135;
          v46 = *v36;
          do
          {
            v47 = v12[1].n128_u64[0];
            ++v12;
          }

          while (*v47 < v46);
          do
          {
            v48 = v45[-1].n128_u64[0];
            --v45;
          }

          while (*v48 >= v46);
        }

        while (v12 < v45);
      }

      v49 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v49;
        *a1 = *v49;
      }

      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v39;
      if (v41 < v42)
      {
        goto LABEL_79;
      }

      v50 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(a1, v12 - 1, result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(v12, a2, v51))
      {
        a2 = v12 - 1;
        if (!v50)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v50)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,false>(a1, &v12[-1], a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      if (v37 >= *v9->n128_u64[0])
      {
        v53 = v12 + 1;
        do
        {
          v12 = v53;
          if (v53 >= a2)
          {
            break;
          }

          ++v53;
        }

        while (v37 >= *v12->n128_u64[0]);
      }

      else
      {
        do
        {
          v52 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v37 >= *v52);
      }

      v54 = a2;
      if (v12 < a2)
      {
        v54 = a2;
        do
        {
          v55 = v54[-1].n128_u64[0];
          --v54;
        }

        while (v37 < *v55);
      }

      v56 = *(a1 + 8);
      while (v12 < v54)
      {
        v136 = *v12;
        *v12 = *v54;
        result = v136;
        *v54 = v136;
        v57 = *v36;
        do
        {
          v58 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v57 >= *v58);
        do
        {
          v59 = v54[-1].n128_u64[0];
          --v54;
        }

        while (v57 < *v59);
      }

      v60 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v60;
        *a1 = *v60;
      }

      a4 = 0;
      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v56;
    }
  }

  v63 = v12 + 1;
  v64 = a2[-1].n128_u64[0];
  v61 = a2 - 1;
  v65 = *v12[1].n128_u64[0];
  v66 = *v64;
  if (v65 >= *v12->n128_u64[0])
  {
    if (v66 >= v65)
    {
      return result;
    }

    result = *v63;
    *v63 = *v61;
    *v61 = result;
    goto LABEL_191;
  }

  if (v66 < v65)
  {
    goto LABEL_107;
  }

  v141 = *v12;
  *v12 = *v63;
  result = v141;
  *v63 = v141;
  if (*v61->n128_u64[0] < *v12[1].n128_u64[0])
  {
    result = *v63;
    *v63 = *v61;
    goto LABEL_108;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,0>(__n128 *a1, __n128 *a2, unsigned int **a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = *a2->n128_u64[0];
  v7 = **a3;
  if (v6 >= *a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2->n128_u64[0] < *a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (**a3 < *a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (**a4 < **a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (**a3 < *a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2->n128_u64[0] < *a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (**a5 < **a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (**a4 < **a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (**a3 < *a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (*a2->n128_u64[0] < *a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = **(a1 + 16);
      v9 = *v7;
      if (v8 < **a1)
      {
        if (v9 >= v8)
        {
          v30 = *a1;
          *a1 = *v6;
          *v6 = v30;
          if (*v4->n128_u64[0] >= **(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v25 = *v6;
      *v6 = *v4;
      *v4 = v25;
LABEL_50:
      if (**(a1 + 16) < **a1)
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    v22 = **(a1 + 16);
    v23 = *v19;
    if (v22 >= **a1)
    {
      if (v23 < v22)
      {
        v28 = *v6;
        *v6 = *v18;
        *v18 = v28;
        if (*v6->n128_u64[0] < *v21)
        {
          v29 = *a1;
          *a1 = *v6;
          *v6 = v29;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v22)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (*v19 >= **(a1 + 16))
      {
        goto LABEL_47;
      }

      v24 = *v6;
      *v6 = *v18;
    }

    else
    {
      v24 = *a1;
      *a1 = *v18;
    }

    *v18 = v24;
LABEL_47:
    if (*v20->n128_u64[0] >= *v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (*v18->n128_u64[0] >= *v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*v5 >= **a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *a1;
  v15 = **(a1 + 16);
  v16 = *v12;
  if (v15 >= **a1)
  {
    if (v16 < v15)
    {
      v26 = *v13;
      *v13 = *v11;
      *v11 = v26;
      if (*v13->n128_u64[0] < *v14)
      {
        v27 = *a1;
        *a1 = *v13;
        *v13 = v27;
      }
    }
  }

  else
  {
    if (v16 >= v15)
    {
      v31 = *a1;
      *a1 = *v13;
      *v13 = v31;
      if (*v12 >= **(a1 + 16))
      {
        goto LABEL_33;
      }

      v17 = *v13;
      *v13 = *v11;
    }

    else
    {
      v17 = *a1;
      *a1 = *v11;
    }

    *v11 = v17;
  }

LABEL_33:
  v32 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (*v32->n128_u64[0] < *v11->n128_u64[0])
    {
      v36 = v32->n128_i64[1];
      v37 = v33;
      while (1)
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v38 = **(a1 + v37 + 16);
        v37 -= 16;
        if (*v35 >= v38)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      *v39 = v35;
      v39[1] = v36;
      if (++v34 == 8)
      {
        return &v32[1] == a2;
      }
    }

    v11 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v62 = a2[-1].n128_u64[0];
        v61 = a2 - 1;
        if (*v62 >= *v12->n128_u64[0])
        {
          return result;
        }

LABEL_107:
        v137 = *v12;
        *v12 = *v61;
        result = v137;
LABEL_108:
        *v61 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v63 = v12 + 1;
      v67 = v12 + 2;
      v68 = v12[2].n128_u64[0];
      v69 = *v12[1].n128_u64[0];
      v70 = *v68;
      if (v69 >= *v12->n128_u64[0])
      {
        if (v70 < v69)
        {
          result = *v63;
          *v63 = *v67;
          *v67 = result;
          if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
          {
            v140 = *v12;
            *v12 = *v63;
            result = v140;
            *v63 = v140;
          }
        }
      }

      else
      {
        if (v70 < v69)
        {
          v138 = *v12;
          *v12 = *v67;
          result = v138;
          goto LABEL_187;
        }

        v142 = *v12;
        *v12 = *v63;
        result = v142;
        *v63 = v142;
        if (*v68 < *v12[1].n128_u64[0])
        {
          result = *v63;
          *v63 = *v67;
LABEL_187:
          *v67 = result;
        }
      }

      if (*v9->n128_u64[0] >= *v67->n128_u64[0])
      {
        return result;
      }

      result = *v67;
      *v67 = *v9;
      *v9 = result;
      if (*v67->n128_u64[0] >= *v63->n128_u64[0])
      {
        return result;
      }

      result = *v63;
      *v63 = *v67;
      *v67 = result;
LABEL_191:
      if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
      {
        v143 = *v12;
        *v12 = *v63;
        result = v143;
        *v63 = v143;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v71 = v12 + 1;
      v73 = v12 == a2 || v71 == a2;
      if (a4)
      {
        if (!v73)
        {
          v74 = 0;
          v75 = v12;
          do
          {
            v76 = v71;
            v77 = v75[1].n128_u64[0];
            if (*v77 < *v75->n128_u64[0])
            {
              v78 = v75[1].n128_u64[1];
              v79 = v74;
              while (1)
              {
                result = *(v12 + v79);
                *(v12 + v79 + 16) = result;
                if (!v79)
                {
                  break;
                }

                v80 = **(v12[-1].n128_u64 + v79);
                v79 -= 16;
                if (*v77 >= v80)
                {
                  v81 = (v12 + v79 + 16);
                  goto LABEL_127;
                }
              }

              v81 = v12;
LABEL_127:
              v81->n128_u64[0] = v77;
              v81->n128_u64[1] = v78;
            }

            v71 = v76 + 1;
            v74 += 16;
            v75 = v76;
          }

          while (&v76[1] != a2);
        }
      }

      else if (!v73)
      {
        do
        {
          v113 = v71;
          v114 = a1[1].n128_u64[0];
          if (*v114 < *a1->n128_u64[0])
          {
            v115 = a1[1].n128_u64[1];
            v116 = v113;
            do
            {
              result = v116[-1];
              *v116 = result;
              v117 = v116[-2].n128_u64[0];
              --v116;
            }

            while (*v114 < *v117);
            v116->n128_u64[0] = v114;
            v116->n128_u64[1] = v115;
          }

          v71 = v113 + 1;
          a1 = v113;
        }

        while (&v113[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v82 = (v13 - 2) >> 1;
        v83 = v82;
        do
        {
          v84 = v83;
          if (v82 >= v83)
          {
            v85 = (2 * v83) | 1;
            v86 = &v12[v85];
            if (2 * v84 + 2 >= v13)
            {
              v88 = *v86->n128_u64[0];
            }

            else
            {
              v87 = *v86->n128_u64[0];
              v88 = *v86[1].n128_u64[0];
              v89 = v87 >= v88;
              if (v87 > v88)
              {
                v88 = *v86->n128_u64[0];
              }

              if (!v89)
              {
                ++v86;
                v85 = 2 * v84 + 2;
              }
            }

            v90 = &v12[v84];
            v91 = v90->n128_u64[0];
            if (v88 >= *v90->n128_u64[0])
            {
              v92 = v90->n128_u64[1];
              do
              {
                v93 = v90;
                v90 = v86;
                *v93 = *v86;
                if (v82 < v85)
                {
                  break;
                }

                v94 = (2 * v85) | 1;
                v86 = &v12[v94];
                v85 = 2 * v85 + 2;
                if (v85 >= v13)
                {
                  v95 = *v86->n128_u64[0];
                  v85 = v94;
                }

                else
                {
                  v95 = *v86->n128_u64[0];
                  v96 = *v86[1].n128_u64[0];
                  v97 = v95 >= v96;
                  if (v95 <= v96)
                  {
                    v95 = *v86[1].n128_u64[0];
                  }

                  if (v97)
                  {
                    v85 = v94;
                  }

                  else
                  {
                    ++v86;
                  }
                }
              }

              while (v95 >= *v91);
              v90->n128_u64[0] = v91;
              v90->n128_u64[1] = v92;
            }
          }

          v83 = v84 - 1;
        }

        while (v84);
        do
        {
          v98 = 0;
          v139 = *v12;
          v99 = v12;
          do
          {
            v100 = &v99[v98];
            v101 = v100 + 1;
            v102 = (2 * v98) | 1;
            v98 = 2 * v98 + 2;
            if (v98 >= v13)
            {
              v98 = v102;
            }

            else
            {
              v104 = v100[2].n128_u64[0];
              v103 = v100 + 2;
              if (*v103[-1].n128_u64[0] >= *v104)
              {
                v98 = v102;
              }

              else
              {
                v101 = v103;
              }
            }

            *v99 = *v101;
            v99 = v101;
          }

          while (v98 <= ((v13 - 2) >> 1));
          if (v101 == --a2)
          {
            result = v139;
            *v101 = v139;
          }

          else
          {
            *v101 = *a2;
            result = v139;
            *a2 = v139;
            v105 = (v101 - v12 + 16) >> 4;
            v106 = v105 < 2;
            v107 = v105 - 2;
            if (!v106)
            {
              v108 = v107 >> 1;
              v109 = &v12[v108];
              v110 = v101->n128_u64[0];
              if (*v109->n128_u64[0] < *v101->n128_u64[0])
              {
                v111 = v101->n128_u64[1];
                do
                {
                  v112 = v101;
                  v101 = v109;
                  result = *v109;
                  *v112 = *v109;
                  if (!v108)
                  {
                    break;
                  }

                  v108 = (v108 - 1) >> 1;
                  v109 = &v12[v108];
                }

                while (*v109->n128_u64[0] < *v110);
                v101->n128_u64[0] = v110;
                v101->n128_u64[1] = v111;
              }
            }
          }

          v106 = v13-- <= 2;
        }

        while (!v106);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = v14;
    v16 = *v9->n128_u64[0];
    if (v13 >= 0x81)
    {
      v17 = *v14->n128_u64[0];
      if (v17 >= *v12->n128_u64[0])
      {
        if (v16 < v17)
        {
          v120 = *v14;
          *v14 = *v9;
          *v9 = v120;
          if (*v14->n128_u64[0] < *v12->n128_u64[0])
          {
            v121 = *v12;
            *v12 = *v14;
            *v14 = v121;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v118 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v124 = *v12;
        *v12 = *v14;
        *v14 = v124;
        if (*v9->n128_u64[0] < *v14->n128_u64[0])
        {
          v118 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v118;
        }
      }

      v19 = v12 + 1;
      v20 = &v14[-1];
      v21 = *v14[-1].n128_u64[0];
      v22 = *v10->n128_u64[0];
      if (v21 >= *v12[1].n128_u64[0])
      {
        if (v22 < v21)
        {
          v125 = *v20;
          *v20 = *v10;
          *v10 = v125;
          if (**v20 < *v19->n128_u64[0])
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (*v10->n128_u64[0] < **v20)
        {
          v127 = *v20;
          *v20 = *v10;
          v23 = v127;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = v12 + 2;
      v28 = v14[1].n128_u64[0];
      v27 = v14 + 1;
      v29 = *v28;
      v30 = *v11->n128_u64[0];
      if (v29 >= *v12[2].n128_u64[0])
      {
        if (v30 < v29)
        {
          v128 = *v27;
          *v27 = *v11;
          *v11 = v128;
          if (*v27->n128_u64[0] < *v26->n128_u64[0])
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (*v11->n128_u64[0] < *v27->n128_u64[0])
        {
          v129 = *v27;
          *v27 = *v11;
          v31 = v129;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = *v15->n128_u64[0];
      v35 = *v27->n128_u64[0];
      if (v34 >= **v20)
      {
        if (v35 < v34)
        {
          v131 = *v15;
          *v15 = *v27;
          *v27 = v131;
          if (*v15->n128_u64[0] < **v20)
          {
            v132 = *v20;
            *v20 = *v15;
            *v15 = v132;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v130 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v133 = *v20;
        *v20 = *v15;
        *v15 = v133;
        if (*v27->n128_u64[0] < *v15->n128_u64[0])
        {
          v130 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v130;
        }
      }

      v134 = *v12;
      *v12 = *v15;
      result = v134;
      *v15 = v134;
      goto LABEL_58;
    }

    v18 = *v12->n128_u64[0];
    if (v18 >= *v14->n128_u64[0])
    {
      if (v16 < v18)
      {
        v122 = *v12;
        *v12 = *v9;
        result = v122;
        *v9 = v122;
        if (*v12->n128_u64[0] < *v14->n128_u64[0])
        {
          v123 = *v14;
          *v14 = *v12;
          result = v123;
          *v12 = v123;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v18)
    {
      v126 = *v14;
      *v14 = *v12;
      result = v126;
      *v12 = v126;
      if (*v9->n128_u64[0] >= *v12->n128_u64[0])
      {
        goto LABEL_58;
      }

      v119 = *v12;
      *v12 = *v9;
    }

    else
    {
      v119 = *v14;
      *v14 = *v9;
    }

    result = v119;
    *v9 = v119;
LABEL_58:
    --a3;
    v36 = v12->n128_u64[0];
    v37 = *v12->n128_u64[0];
    if ((a4 & 1) != 0 || *v12[-1].n128_u64[0] < v37)
    {
      v38 = 0;
      v39 = v12->n128_u64[1];
      do
      {
        v40 = *v12[++v38].n128_u64[0];
      }

      while (v40 < v37);
      v41 = &v12[v38];
      v42 = a2;
      if (v38 == 1)
      {
        v42 = a2;
        do
        {
          if (v41 >= v42)
          {
            break;
          }

          v44 = v42[-1].n128_u64[0];
          --v42;
        }

        while (*v44 >= v37);
      }

      else
      {
        do
        {
          v43 = v42[-1].n128_u64[0];
          --v42;
        }

        while (*v43 >= v37);
      }

      v12 = (v12 + v38 * 16);
      if (v41 < v42)
      {
        v45 = v42;
        do
        {
          v135 = *v12;
          *v12 = *v45;
          result = v135;
          *v45 = v135;
          v46 = *v36;
          do
          {
            v47 = v12[1].n128_u64[0];
            ++v12;
          }

          while (*v47 < v46);
          do
          {
            v48 = v45[-1].n128_u64[0];
            --v45;
          }

          while (*v48 >= v46);
        }

        while (v12 < v45);
      }

      v49 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v49;
        *a1 = *v49;
      }

      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v39;
      if (v41 < v42)
      {
        goto LABEL_79;
      }

      v50 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(a1, v12 - 1, result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(v12, a2, v51))
      {
        a2 = v12 - 1;
        if (!v50)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v50)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,false>(a1, &v12[-1], a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      if (v37 >= *v9->n128_u64[0])
      {
        v53 = v12 + 1;
        do
        {
          v12 = v53;
          if (v53 >= a2)
          {
            break;
          }

          ++v53;
        }

        while (v37 >= *v12->n128_u64[0]);
      }

      else
      {
        do
        {
          v52 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v37 >= *v52);
      }

      v54 = a2;
      if (v12 < a2)
      {
        v54 = a2;
        do
        {
          v55 = v54[-1].n128_u64[0];
          --v54;
        }

        while (v37 < *v55);
      }

      v56 = a1->n128_u64[1];
      while (v12 < v54)
      {
        v136 = *v12;
        *v12 = *v54;
        result = v136;
        *v54 = v136;
        v57 = *v36;
        do
        {
          v58 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v57 >= *v58);
        do
        {
          v59 = v54[-1].n128_u64[0];
          --v54;
        }

        while (v57 < *v59);
      }

      v60 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v60;
        *a1 = *v60;
      }

      a4 = 0;
      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v56;
    }
  }

  v63 = v12 + 1;
  v64 = a2[-1].n128_u64[0];
  v61 = a2 - 1;
  v65 = *v12[1].n128_u64[0];
  v66 = *v64;
  if (v65 >= *v12->n128_u64[0])
  {
    if (v66 >= v65)
    {
      return result;
    }

    result = *v63;
    *v63 = *v61;
    *v61 = result;
    goto LABEL_191;
  }

  if (v66 < v65)
  {
    goto LABEL_107;
  }

  v141 = *v12;
  *v12 = *v63;
  result = v141;
  *v63 = v141;
  if (*v61->n128_u64[0] < *v12[1].n128_u64[0])
  {
    result = *v63;
    *v63 = *v61;
    goto LABEL_108;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = *a2->n128_u64[0];
  v7 = *a3->n128_u64[0];
  if (v6 >= *a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2->n128_u64[0] < *a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3->n128_u64[0] < *a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4->n128_u64[0] < *a3->n128_u64[0])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3->n128_u64[0] < *a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2->n128_u64[0] < *a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5->n128_u64[0] < *a4->n128_u64[0])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4->n128_u64[0] < *a3->n128_u64[0])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3->n128_u64[0] < *a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (*a2->n128_u64[0] < *a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a1 + 1;
      v7 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = *a1[1].n128_u64[0];
      v9 = *v7;
      if (v8 < *a1->n128_u64[0])
      {
        if (v9 >= v8)
        {
          v30 = *a1;
          *a1 = *v6;
          *v6 = v30;
          if (*v4->n128_u64[0] >= *a1[1].n128_u64[0])
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v25 = *v6;
      *v6 = *v4;
      *v4 = v25;
LABEL_50:
      if (*a1[1].n128_u64[0] < *a1->n128_u64[0])
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v6 = a1 + 1;
    v18 = a1 + 2;
    v19 = a1[2].n128_u64[0];
    v20 = a2 - 1;
    v21 = a1->n128_u64[0];
    v22 = *a1[1].n128_u64[0];
    v23 = *v19;
    if (v22 >= *a1->n128_u64[0])
    {
      if (v23 < v22)
      {
        v28 = *v6;
        *v6 = *v18;
        *v18 = v28;
        if (*v6->n128_u64[0] < *v21)
        {
          v29 = *a1;
          *a1 = *v6;
          *v6 = v29;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v22)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (*v19 >= *a1[1].n128_u64[0])
      {
        goto LABEL_47;
      }

      v24 = *v6;
      *v6 = *v18;
    }

    else
    {
      v24 = *a1;
      *a1 = *v18;
    }

    *v18 = v24;
LABEL_47:
    if (*v20->n128_u64[0] >= *v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (*v18->n128_u64[0] >= *v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*v5 >= *a1->n128_u64[0])
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = a1 + 2;
  v12 = a1[2].n128_u64[0];
  v13 = a1 + 1;
  v14 = a1->n128_u64[0];
  v15 = *a1[1].n128_u64[0];
  v16 = *v12;
  if (v15 >= *a1->n128_u64[0])
  {
    if (v16 < v15)
    {
      v26 = *v13;
      *v13 = *v11;
      *v11 = v26;
      if (*v13->n128_u64[0] < *v14)
      {
        v27 = *a1;
        *a1 = *v13;
        *v13 = v27;
      }
    }
  }

  else
  {
    if (v16 >= v15)
    {
      v31 = *a1;
      *a1 = *v13;
      *v13 = v31;
      if (*v12 >= *a1[1].n128_u64[0])
      {
        goto LABEL_33;
      }

      v17 = *v13;
      *v13 = *v11;
    }

    else
    {
      v17 = *a1;
      *a1 = *v11;
    }

    *v11 = v17;
  }

LABEL_33:
  v32 = &a1[3];
  if (&a1[3] == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = *v32;
    if (**v32 < *v11->n128_u64[0])
    {
      v36 = v32[1];
      v37 = v33;
      while (1)
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v38 = **(a1[1].n128_u64 + v37);
        v37 -= 16;
        if (*v35 >= v38)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      v39->n128_u64[0] = v35;
      v39->n128_u64[1] = v36;
      if (++v34 == 8)
      {
        return v32 + 2 == a2;
      }
    }

    v11 = v32;
    v33 += 16;
    v32 += 2;
    if (v32 == a2)
    {
      return 1;
    }
  }
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v62 = a2[-1].n128_u64[0];
        v61 = a2 - 1;
        if (*v62 >= *v12->n128_u64[0])
        {
          return result;
        }

LABEL_107:
        v137 = *v12;
        *v12 = *v61;
        result = v137;
LABEL_108:
        *v61 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v63 = v12 + 1;
      v67 = v12 + 2;
      v68 = v12[2].n128_u64[0];
      v69 = *v12[1].n128_u64[0];
      v70 = *v68;
      if (v69 >= *v12->n128_u64[0])
      {
        if (v70 < v69)
        {
          result = *v63;
          *v63 = *v67;
          *v67 = result;
          if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
          {
            v140 = *v12;
            *v12 = *v63;
            result = v140;
            *v63 = v140;
          }
        }
      }

      else
      {
        if (v70 < v69)
        {
          v138 = *v12;
          *v12 = *v67;
          result = v138;
          goto LABEL_187;
        }

        v142 = *v12;
        *v12 = *v63;
        result = v142;
        *v63 = v142;
        if (*v68 < *v12[1].n128_u64[0])
        {
          result = *v63;
          *v63 = *v67;
LABEL_187:
          *v67 = result;
        }
      }

      if (*v9->n128_u64[0] >= *v67->n128_u64[0])
      {
        return result;
      }

      result = *v67;
      *v67 = *v9;
      *v9 = result;
      if (*v67->n128_u64[0] >= *v63->n128_u64[0])
      {
        return result;
      }

      result = *v63;
      *v63 = *v67;
      *v67 = result;
LABEL_191:
      if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
      {
        v143 = *v12;
        *v12 = *v63;
        result = v143;
        *v63 = v143;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v71 = v12 + 1;
      v73 = v12 == a2 || v71 == a2;
      if (a4)
      {
        if (!v73)
        {
          v74 = 0;
          v75 = v12;
          do
          {
            v76 = v71;
            v77 = v75[1].n128_u64[0];
            if (*v77 < *v75->n128_u64[0])
            {
              v78 = v75[1].n128_u64[1];
              v79 = v74;
              while (1)
              {
                result = *(v12 + v79);
                *(v12 + v79 + 16) = result;
                if (!v79)
                {
                  break;
                }

                v80 = **(v12[-1].n128_u64 + v79);
                v79 -= 16;
                if (*v77 >= v80)
                {
                  v81 = (v12 + v79 + 16);
                  goto LABEL_127;
                }
              }

              v81 = v12;
LABEL_127:
              v81->n128_u64[0] = v77;
              v81->n128_u64[1] = v78;
            }

            v71 = v76 + 1;
            v74 += 16;
            v75 = v76;
          }

          while (&v76[1] != a2);
        }
      }

      else if (!v73)
      {
        do
        {
          v113 = v71;
          v114 = a1[1].n128_u64[0];
          if (*v114 < *a1->n128_u64[0])
          {
            v115 = a1[1].n128_u64[1];
            v116 = v113;
            do
            {
              result = v116[-1];
              *v116 = result;
              v117 = v116[-2].n128_u64[0];
              --v116;
            }

            while (*v114 < *v117);
            v116->n128_u64[0] = v114;
            v116->n128_u64[1] = v115;
          }

          v71 = v113 + 1;
          a1 = v113;
        }

        while (&v113[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v82 = (v13 - 2) >> 1;
        v83 = v82;
        do
        {
          v84 = v83;
          if (v82 >= v83)
          {
            v85 = (2 * v83) | 1;
            v86 = &v12[v85];
            if (2 * v84 + 2 >= v13)
            {
              v88 = *v86->n128_u64[0];
            }

            else
            {
              v87 = *v86->n128_u64[0];
              v88 = *v86[1].n128_u64[0];
              v89 = v87 >= v88;
              if (v87 > v88)
              {
                v88 = *v86->n128_u64[0];
              }

              if (!v89)
              {
                ++v86;
                v85 = 2 * v84 + 2;
              }
            }

            v90 = &v12[v84];
            v91 = v90->n128_u64[0];
            if (v88 >= *v90->n128_u64[0])
            {
              v92 = v90->n128_u64[1];
              do
              {
                v93 = v90;
                v90 = v86;
                *v93 = *v86;
                if (v82 < v85)
                {
                  break;
                }

                v94 = (2 * v85) | 1;
                v86 = &v12[v94];
                v85 = 2 * v85 + 2;
                if (v85 >= v13)
                {
                  v95 = *v86->n128_u64[0];
                  v85 = v94;
                }

                else
                {
                  v95 = *v86->n128_u64[0];
                  v96 = *v86[1].n128_u64[0];
                  v97 = v95 >= v96;
                  if (v95 <= v96)
                  {
                    v95 = *v86[1].n128_u64[0];
                  }

                  if (v97)
                  {
                    v85 = v94;
                  }

                  else
                  {
                    ++v86;
                  }
                }
              }

              while (v95 >= *v91);
              v90->n128_u64[0] = v91;
              v90->n128_u64[1] = v92;
            }
          }

          v83 = v84 - 1;
        }

        while (v84);
        do
        {
          v98 = 0;
          v139 = *v12;
          v99 = v12;
          do
          {
            v100 = &v99[v98];
            v101 = v100 + 1;
            v102 = (2 * v98) | 1;
            v98 = 2 * v98 + 2;
            if (v98 >= v13)
            {
              v98 = v102;
            }

            else
            {
              v104 = v100[2].n128_u64[0];
              v103 = v100 + 2;
              if (*v103[-1].n128_u64[0] >= *v104)
              {
                v98 = v102;
              }

              else
              {
                v101 = v103;
              }
            }

            *v99 = *v101;
            v99 = v101;
          }

          while (v98 <= ((v13 - 2) >> 1));
          if (v101 == --a2)
          {
            result = v139;
            *v101 = v139;
          }

          else
          {
            *v101 = *a2;
            result = v139;
            *a2 = v139;
            v105 = (v101 - v12 + 16) >> 4;
            v106 = v105 < 2;
            v107 = v105 - 2;
            if (!v106)
            {
              v108 = v107 >> 1;
              v109 = &v12[v108];
              v110 = v101->n128_u64[0];
              if (*v109->n128_u64[0] < *v101->n128_u64[0])
              {
                v111 = v101->n128_u64[1];
                do
                {
                  v112 = v101;
                  v101 = v109;
                  result = *v109;
                  *v112 = *v109;
                  if (!v108)
                  {
                    break;
                  }

                  v108 = (v108 - 1) >> 1;
                  v109 = &v12[v108];
                }

                while (*v109->n128_u64[0] < *v110);
                v101->n128_u64[0] = v110;
                v101->n128_u64[1] = v111;
              }
            }
          }

          v106 = v13-- <= 2;
        }

        while (!v106);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = v14;
    v16 = *v9->n128_u64[0];
    if (v13 >= 0x81)
    {
      v17 = *v14->n128_u64[0];
      if (v17 >= *v12->n128_u64[0])
      {
        if (v16 < v17)
        {
          v120 = *v14;
          *v14 = *v9;
          *v9 = v120;
          if (*v14->n128_u64[0] < *v12->n128_u64[0])
          {
            v121 = *v12;
            *v12 = *v14;
            *v14 = v121;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v118 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v124 = *v12;
        *v12 = *v14;
        *v14 = v124;
        if (*v9->n128_u64[0] < *v14->n128_u64[0])
        {
          v118 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v118;
        }
      }

      v19 = v12 + 1;
      v20 = &v14[-1];
      v21 = *v14[-1].n128_u64[0];
      v22 = *v10->n128_u64[0];
      if (v21 >= *v12[1].n128_u64[0])
      {
        if (v22 < v21)
        {
          v125 = *v20;
          *v20 = *v10;
          *v10 = v125;
          if (**v20 < *v19->n128_u64[0])
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (*v10->n128_u64[0] < **v20)
        {
          v127 = *v20;
          *v20 = *v10;
          v23 = v127;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = v12 + 2;
      v28 = v14[1].n128_u64[0];
      v27 = v14 + 1;
      v29 = *v28;
      v30 = *v11->n128_u64[0];
      if (v29 >= *v12[2].n128_u64[0])
      {
        if (v30 < v29)
        {
          v128 = *v27;
          *v27 = *v11;
          *v11 = v128;
          if (*v27->n128_u64[0] < *v26->n128_u64[0])
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (*v11->n128_u64[0] < *v27->n128_u64[0])
        {
          v129 = *v27;
          *v27 = *v11;
          v31 = v129;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = *v15->n128_u64[0];
      v35 = *v27->n128_u64[0];
      if (v34 >= **v20)
      {
        if (v35 < v34)
        {
          v131 = *v15;
          *v15 = *v27;
          *v27 = v131;
          if (*v15->n128_u64[0] < **v20)
          {
            v132 = *v20;
            *v20 = *v15;
            *v15 = v132;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v130 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v133 = *v20;
        *v20 = *v15;
        *v15 = v133;
        if (*v27->n128_u64[0] < *v15->n128_u64[0])
        {
          v130 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v130;
        }
      }

      v134 = *v12;
      *v12 = *v15;
      result = v134;
      *v15 = v134;
      goto LABEL_58;
    }

    v18 = *v12->n128_u64[0];
    if (v18 >= *v14->n128_u64[0])
    {
      if (v16 < v18)
      {
        v122 = *v12;
        *v12 = *v9;
        result = v122;
        *v9 = v122;
        if (*v12->n128_u64[0] < *v14->n128_u64[0])
        {
          v123 = *v14;
          *v14 = *v12;
          result = v123;
          *v12 = v123;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v18)
    {
      v126 = *v14;
      *v14 = *v12;
      result = v126;
      *v12 = v126;
      if (*v9->n128_u64[0] >= *v12->n128_u64[0])
      {
        goto LABEL_58;
      }

      v119 = *v12;
      *v12 = *v9;
    }

    else
    {
      v119 = *v14;
      *v14 = *v9;
    }

    result = v119;
    *v9 = v119;
LABEL_58:
    --a3;
    v36 = v12->n128_u64[0];
    v37 = *v12->n128_u64[0];
    if ((a4 & 1) != 0 || *v12[-1].n128_u64[0] < v37)
    {
      v38 = 0;
      v39 = v12->n128_u64[1];
      do
      {
        v40 = *v12[++v38].n128_u64[0];
      }

      while (v40 < v37);
      v41 = &v12[v38];
      v42 = a2;
      if (v38 == 1)
      {
        v42 = a2;
        do
        {
          if (v41 >= v42)
          {
            break;
          }

          v44 = v42[-1].n128_u64[0];
          --v42;
        }

        while (*v44 >= v37);
      }

      else
      {
        do
        {
          v43 = v42[-1].n128_u64[0];
          --v42;
        }

        while (*v43 >= v37);
      }

      v12 = (v12 + v38 * 16);
      if (v41 < v42)
      {
        v45 = v42;
        do
        {
          v135 = *v12;
          *v12 = *v45;
          result = v135;
          *v45 = v135;
          v46 = *v36;
          do
          {
            v47 = v12[1].n128_u64[0];
            ++v12;
          }

          while (*v47 < v46);
          do
          {
            v48 = v45[-1].n128_u64[0];
            --v45;
          }

          while (*v48 >= v46);
        }

        while (v12 < v45);
      }

      v49 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v49;
        *a1 = *v49;
      }

      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v39;
      if (v41 < v42)
      {
        goto LABEL_79;
      }

      v50 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(a1, v12 - 1, result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(v12, a2, v51))
      {
        a2 = v12 - 1;
        if (!v50)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v50)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,false>(a1, &v12[-1], a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      if (v37 >= *v9->n128_u64[0])
      {
        v53 = v12 + 1;
        do
        {
          v12 = v53;
          if (v53 >= a2)
          {
            break;
          }

          ++v53;
        }

        while (v37 >= *v12->n128_u64[0]);
      }

      else
      {
        do
        {
          v52 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v37 >= *v52);
      }

      v54 = a2;
      if (v12 < a2)
      {
        v54 = a2;
        do
        {
          v55 = v54[-1].n128_u64[0];
          --v54;
        }

        while (v37 < *v55);
      }

      v56 = a1->n128_u64[1];
      while (v12 < v54)
      {
        v136 = *v12;
        *v12 = *v54;
        result = v136;
        *v54 = v136;
        v57 = *v36;
        do
        {
          v58 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v57 >= *v58);
        do
        {
          v59 = v54[-1].n128_u64[0];
          --v54;
        }

        while (v57 < *v59);
      }

      v60 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v60;
        *a1 = *v60;
      }

      a4 = 0;
      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v56;
    }
  }

  v63 = v12 + 1;
  v64 = a2[-1].n128_u64[0];
  v61 = a2 - 1;
  v65 = *v12[1].n128_u64[0];
  v66 = *v64;
  if (v65 >= *v12->n128_u64[0])
  {
    if (v66 >= v65)
    {
      return result;
    }

    result = *v63;
    *v63 = *v61;
    *v61 = result;
    goto LABEL_191;
  }

  if (v66 < v65)
  {
    goto LABEL_107;
  }

  v141 = *v12;
  *v12 = *v63;
  result = v141;
  *v63 = v141;
  if (*v61->n128_u64[0] < *v12[1].n128_u64[0])
  {
    result = *v63;
    *v63 = *v61;
    goto LABEL_108;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = *a2->n128_u64[0];
  v7 = *a3->n128_u64[0];
  if (v6 >= *a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2->n128_u64[0] < *a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3->n128_u64[0] < *a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4->n128_u64[0] < *a3->n128_u64[0])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3->n128_u64[0] < *a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2->n128_u64[0] < *a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5->n128_u64[0] < *a4->n128_u64[0])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4->n128_u64[0] < *a3->n128_u64[0])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3->n128_u64[0] < *a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (*a2->n128_u64[0] < *a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a1 + 1;
      v7 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = *a1[1].n128_u64[0];
      v9 = *v7;
      if (v8 < *a1->n128_u64[0])
      {
        if (v9 >= v8)
        {
          v30 = *a1;
          *a1 = *v6;
          *v6 = v30;
          if (*v4->n128_u64[0] >= *a1[1].n128_u64[0])
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v25 = *v6;
      *v6 = *v4;
      *v4 = v25;
LABEL_50:
      if (*a1[1].n128_u64[0] < *a1->n128_u64[0])
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v6 = a1 + 1;
    v18 = a1 + 2;
    v19 = a1[2].n128_u64[0];
    v20 = a2 - 1;
    v21 = a1->n128_u64[0];
    v22 = *a1[1].n128_u64[0];
    v23 = *v19;
    if (v22 >= *a1->n128_u64[0])
    {
      if (v23 < v22)
      {
        v28 = *v6;
        *v6 = *v18;
        *v18 = v28;
        if (*v6->n128_u64[0] < *v21)
        {
          v29 = *a1;
          *a1 = *v6;
          *v6 = v29;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v22)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (*v19 >= *a1[1].n128_u64[0])
      {
        goto LABEL_47;
      }

      v24 = *v6;
      *v6 = *v18;
    }

    else
    {
      v24 = *a1;
      *a1 = *v18;
    }

    *v18 = v24;
LABEL_47:
    if (*v20->n128_u64[0] >= *v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (*v18->n128_u64[0] >= *v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*v5 >= *a1->n128_u64[0])
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = a1 + 2;
  v12 = a1[2].n128_u64[0];
  v13 = a1 + 1;
  v14 = a1->n128_u64[0];
  v15 = *a1[1].n128_u64[0];
  v16 = *v12;
  if (v15 >= *a1->n128_u64[0])
  {
    if (v16 < v15)
    {
      v26 = *v13;
      *v13 = *v11;
      *v11 = v26;
      if (*v13->n128_u64[0] < *v14)
      {
        v27 = *a1;
        *a1 = *v13;
        *v13 = v27;
      }
    }
  }

  else
  {
    if (v16 >= v15)
    {
      v31 = *a1;
      *a1 = *v13;
      *v13 = v31;
      if (*v12 >= *a1[1].n128_u64[0])
      {
        goto LABEL_33;
      }

      v17 = *v13;
      *v13 = *v11;
    }

    else
    {
      v17 = *a1;
      *a1 = *v11;
    }

    *v11 = v17;
  }

LABEL_33:
  v32 = &a1[3];
  if (&a1[3] == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = *v32;
    if (**v32 < *v11->n128_u64[0])
    {
      v36 = v32[1];
      v37 = v33;
      while (1)
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v38 = **(a1[1].n128_u64 + v37);
        v37 -= 16;
        if (*v35 >= v38)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      v39->n128_u64[0] = v35;
      v39->n128_u64[1] = v36;
      if (++v34 == 8)
      {
        return v32 + 2 == a2;
      }
    }

    v11 = v32;
    v33 += 16;
    v32 += 2;
    if (v32 == a2)
    {
      return 1;
    }
  }
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v62 = a2[-1].n128_u64[0];
        v61 = a2 - 1;
        if (*v62 >= *v12->n128_u64[0])
        {
          return result;
        }

LABEL_107:
        v136 = *v12;
        *v12 = *v61;
        result = v136;
LABEL_108:
        *v61 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v63 = v12 + 1;
      v67 = v12 + 2;
      v68 = v12[2].n128_u64[0];
      v69 = *v12[1].n128_u64[0];
      v70 = *v68;
      if (v69 >= *v12->n128_u64[0])
      {
        if (v70 < v69)
        {
          result = *v63;
          *v63 = *v67;
          *v67 = result;
          if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
          {
            v139 = *v12;
            *v12 = *v63;
            result = v139;
            *v63 = v139;
          }
        }
      }

      else
      {
        if (v70 < v69)
        {
          v137 = *v12;
          *v12 = *v67;
          result = v137;
          goto LABEL_187;
        }

        v141 = *v12;
        *v12 = *v63;
        result = v141;
        *v63 = v141;
        if (*v68 < *v12[1].n128_u64[0])
        {
          result = *v63;
          *v63 = *v67;
LABEL_187:
          *v67 = result;
        }
      }

      if (*v9->n128_u64[0] >= *v67->n128_u64[0])
      {
        return result;
      }

      result = *v67;
      *v67 = *v9;
      *v9 = result;
      if (*v67->n128_u64[0] >= *v63->n128_u64[0])
      {
        return result;
      }

      result = *v63;
      *v63 = *v67;
      *v67 = result;
LABEL_191:
      if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
      {
        v142 = *v12;
        *v12 = *v63;
        result = v142;
        *v63 = v142;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,0>(v12, v12 + 1, &v12[2], v12[3].n128_u64, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v71 = v12 + 1;
      v73 = v12 == a2 || v71 == a2;
      if (a4)
      {
        if (!v73)
        {
          v74 = 0;
          v75 = v12;
          do
          {
            v76 = v71;
            v77 = v75[1].n128_u64[0];
            if (*v77 < *v75->n128_u64[0])
            {
              v78 = v75[1].n128_u64[1];
              v79 = v74;
              while (1)
              {
                result = *(v12 + v79);
                *(v12 + v79 + 16) = result;
                if (!v79)
                {
                  break;
                }

                v80 = **(v12[-1].n128_u64 + v79);
                v79 -= 16;
                if (*v77 >= v80)
                {
                  v81 = (v12 + v79 + 16);
                  goto LABEL_127;
                }
              }

              v81 = v12;
LABEL_127:
              v81->n128_u64[0] = v77;
              v81->n128_u64[1] = v78;
            }

            v71 = v76 + 1;
            v74 += 16;
            v75 = v76;
          }

          while (&v76[1] != a2);
        }
      }

      else if (!v73)
      {
        do
        {
          v112 = v71;
          v113 = *(a1 + 16);
          if (*v113 < **a1)
          {
            v114 = *(a1 + 24);
            v115 = v112;
            do
            {
              result = v115[-1];
              *v115 = result;
              v116 = v115[-2].n128_u64[0];
              --v115;
            }

            while (*v113 < *v116);
            v115->n128_u64[0] = v113;
            v115->n128_u64[1] = v114;
          }

          v71 = v112 + 1;
          a1 = v112;
        }

        while (&v112[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v82 = (v13 - 2) >> 1;
        v83 = v82;
        do
        {
          v84 = v83;
          if (v82 >= v83)
          {
            v85 = (2 * v83) | 1;
            v86 = &v12[v85];
            if (2 * v84 + 2 >= v13)
            {
              v88 = *v86->n128_u64[0];
            }

            else
            {
              v87 = *v86->n128_u64[0];
              v88 = *v86[1].n128_u64[0];
              v89 = v87 < v88;
              if (v87 > v88)
              {
                v88 = *v86->n128_u64[0];
              }

              if (v89)
              {
                ++v86;
                v85 = 2 * v84 + 2;
              }
            }

            v90 = &v12[v84];
            v91 = v90->n128_u64[0];
            if (v88 >= *v90->n128_u64[0])
            {
              v92 = v90->n128_u64[1];
              do
              {
                v93 = v90;
                v90 = v86;
                *v93 = *v86;
                if (v82 < v85)
                {
                  break;
                }

                v94 = (2 * v85) | 1;
                v86 = &v12[v94];
                v85 = 2 * v85 + 2;
                if (v85 >= v13)
                {
                  v95 = *v86->n128_u64[0];
                  v85 = v94;
                }

                else
                {
                  v95 = *v86->n128_u64[0];
                  v96 = *v86[1].n128_u64[0];
                  v97 = v95 < v96;
                  if (v95 <= v96)
                  {
                    v95 = *v86[1].n128_u64[0];
                  }

                  if (v97)
                  {
                    ++v86;
                  }

                  else
                  {
                    v85 = v94;
                  }
                }
              }

              while (v95 >= *v91);
              v90->n128_u64[0] = v91;
              v90->n128_u64[1] = v92;
            }
          }

          v83 = v84 - 1;
        }

        while (v84);
        do
        {
          v98 = 0;
          v138 = *v12;
          v99 = v12;
          do
          {
            v100 = &v99[v98];
            v101 = v100 + 1;
            v102 = (2 * v98) | 1;
            v98 = 2 * v98 + 2;
            if (v98 >= v13)
            {
              v98 = v102;
            }

            else
            {
              v104 = v100[2].n128_u64[0];
              v103 = v100 + 2;
              if (*v103[-1].n128_u64[0] >= *v104)
              {
                v98 = v102;
              }

              else
              {
                v101 = v103;
              }
            }

            *v99 = *v101;
            v99 = v101;
          }

          while (v98 <= ((v13 - 2) >> 1));
          if (v101 == --a2)
          {
            result = v138;
            *v101 = v138;
          }

          else
          {
            *v101 = *a2;
            result = v138;
            *a2 = v138;
            v105 = (v101 - v12 + 16) >> 4;
            v89 = v105 < 2;
            v106 = v105 - 2;
            if (!v89)
            {
              v107 = v106 >> 1;
              v108 = &v12[v107];
              v109 = v101->n128_u64[0];
              if (*v108->n128_u64[0] < *v101->n128_u64[0])
              {
                v110 = v101->n128_u64[1];
                do
                {
                  v111 = v101;
                  v101 = v108;
                  result = *v108;
                  *v111 = *v108;
                  if (!v107)
                  {
                    break;
                  }

                  v107 = (v107 - 1) >> 1;
                  v108 = &v12[v107];
                }

                while (*v108->n128_u64[0] < *v109);
                v101->n128_u64[0] = v109;
                v101->n128_u64[1] = v110;
              }
            }
          }

          v89 = v13-- <= 2;
        }

        while (!v89);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = v14;
    v16 = *v9->n128_u64[0];
    if (v13 >= 0x81)
    {
      v17 = *v14->n128_u64[0];
      if (v17 >= *v12->n128_u64[0])
      {
        if (v16 < v17)
        {
          v119 = *v14;
          *v14 = *v9;
          *v9 = v119;
          if (*v14->n128_u64[0] < *v12->n128_u64[0])
          {
            v120 = *v12;
            *v12 = *v14;
            *v14 = v120;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v117 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v123 = *v12;
        *v12 = *v14;
        *v14 = v123;
        if (*v9->n128_u64[0] < *v14->n128_u64[0])
        {
          v117 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v117;
        }
      }

      v19 = v12 + 1;
      v20 = v14 - 1;
      v21 = *v14[-1].n128_u64[0];
      v22 = *v10->n128_u64[0];
      if (v21 >= *v12[1].n128_u64[0])
      {
        if (v22 < v21)
        {
          v124 = *v20;
          *v20 = *v10;
          *v10 = v124;
          if (*v20->n128_u64[0] < *v19->n128_u64[0])
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (*v10->n128_u64[0] < *v20->n128_u64[0])
        {
          v126 = *v20;
          *v20 = *v10;
          v23 = v126;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = v12 + 2;
      v28 = v14[1].n128_u64[0];
      v27 = v14 + 1;
      v29 = *v28;
      v30 = *v11->n128_u64[0];
      if (*v28 >= *v12[2].n128_u64[0])
      {
        if (v30 < v29)
        {
          v127 = *v27;
          *v27 = *v11;
          *v11 = v127;
          if (*v27->n128_u64[0] < *v26->n128_u64[0])
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (*v11->n128_u64[0] < *v27->n128_u64[0])
        {
          v128 = *v27;
          *v27 = *v11;
          v31 = v128;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = *v15->n128_u64[0];
      v35 = *v27->n128_u64[0];
      if (v34 >= *v20->n128_u64[0])
      {
        if (v35 < v34)
        {
          v130 = *v15;
          *v15 = *v27;
          *v27 = v130;
          if (*v15->n128_u64[0] < *v20->n128_u64[0])
          {
            v131 = *v20;
            *v20 = *v15;
            *v15 = v131;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v129 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v132 = *v20;
        *v20 = *v15;
        *v15 = v132;
        if (*v27->n128_u64[0] < *v15->n128_u64[0])
        {
          v129 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v129;
        }
      }

      v133 = *v12;
      *v12 = *v15;
      result = v133;
      *v15 = v133;
      goto LABEL_58;
    }

    v18 = *v12->n128_u64[0];
    if (v18 >= *v14->n128_u64[0])
    {
      if (v16 < v18)
      {
        v121 = *v12;
        *v12 = *v9;
        result = v121;
        *v9 = v121;
        if (*v12->n128_u64[0] < *v14->n128_u64[0])
        {
          v122 = *v14;
          *v14 = *v12;
          result = v122;
          *v12 = v122;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v18)
    {
      v125 = *v14;
      *v14 = *v12;
      result = v125;
      *v12 = v125;
      if (*v9->n128_u64[0] >= *v12->n128_u64[0])
      {
        goto LABEL_58;
      }

      v118 = *v12;
      *v12 = *v9;
    }

    else
    {
      v118 = *v14;
      *v14 = *v9;
    }

    result = v118;
    *v9 = v118;
LABEL_58:
    --a3;
    v36 = v12->n128_u64[0];
    v37 = *v12->n128_u64[0];
    if ((a4 & 1) != 0 || *v12[-1].n128_u64[0] < v37)
    {
      v38 = 0;
      v39 = v12->n128_u64[1];
      do
      {
        v40 = *v12[++v38].n128_u64[0];
      }

      while (v40 < v37);
      v41 = &v12[v38];
      v42 = a2;
      if (v38 == 1)
      {
        v42 = a2;
        do
        {
          if (v41 >= v42)
          {
            break;
          }

          v44 = v42[-1].n128_u64[0];
          --v42;
        }

        while (*v44 >= v37);
      }

      else
      {
        do
        {
          v43 = v42[-1].n128_u64[0];
          --v42;
        }

        while (*v43 >= v37);
      }

      v12 = (v12 + v38 * 16);
      if (v41 < v42)
      {
        v45 = v42;
        do
        {
          v134 = *v12;
          *v12 = *v45;
          result = v134;
          *v45 = v134;
          v46 = *v36;
          do
          {
            v47 = v12[1].n128_u64[0];
            ++v12;
          }

          while (*v47 < v46);
          do
          {
            v48 = v45[-1].n128_u64[0];
            --v45;
          }

          while (*v48 >= v46);
        }

        while (v12 < v45);
      }

      v49 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v49;
        *a1 = *v49;
      }

      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v39;
      if (v41 < v42)
      {
        goto LABEL_79;
      }

      v50 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>(a1, v12 - 1, result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>(v12, a2, v51))
      {
        a2 = v12 - 1;
        if (!v50)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v50)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,false>(a1, &v12[-1], a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      if (v37 >= *v9->n128_u64[0])
      {
        v53 = v12 + 1;
        do
        {
          v12 = v53;
          if (v53 >= a2)
          {
            break;
          }

          ++v53;
        }

        while (v37 >= *v12->n128_u64[0]);
      }

      else
      {
        do
        {
          v52 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v37 >= *v52);
      }

      v54 = a2;
      if (v12 < a2)
      {
        v54 = a2;
        do
        {
          v55 = v54[-1].n128_u64[0];
          --v54;
        }

        while (v37 < *v55);
      }

      v56 = *(a1 + 8);
      while (v12 < v54)
      {
        v135 = *v12;
        *v12 = *v54;
        result = v135;
        *v54 = v135;
        v57 = *v36;
        do
        {
          v58 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v57 >= *v58);
        do
        {
          v59 = v54[-1].n128_u64[0];
          --v54;
        }

        while (v57 < *v59);
      }

      v60 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v60;
        *a1 = *v60;
      }

      a4 = 0;
      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v56;
    }
  }

  v63 = v12 + 1;
  v64 = a2[-1].n128_u64[0];
  v61 = a2 - 1;
  v65 = *v12[1].n128_u64[0];
  v66 = *v64;
  if (v65 >= *v12->n128_u64[0])
  {
    if (v66 >= v65)
    {
      return result;
    }

    result = *v63;
    *v63 = *v61;
    *v61 = result;
    goto LABEL_191;
  }

  if (v66 < v65)
  {
    goto LABEL_107;
  }

  v140 = *v12;
  *v12 = *v63;
  result = v140;
  *v63 = v140;
  if (*v61->n128_u64[0] < *v12[1].n128_u64[0])
  {
    result = *v63;
    *v63 = *v61;
    goto LABEL_108;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,0>(__n128 *a1, __n128 *a2, uint64_t **a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = *a2->n128_u64[0];
  v7 = **a3;
  if (v6 >= *a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2->n128_u64[0] < *a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (**a3 < *a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (**a4 < **a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (**a3 < *a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2->n128_u64[0] < *a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (**a5 < **a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (**a4 < **a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (**a3 < *a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (*a2->n128_u64[0] < *a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = **(a1 + 16);
      v9 = *v7;
      if (v8 < **a1)
      {
        if (v9 >= v8)
        {
          v30 = *a1;
          *a1 = *v6;
          *v6 = v30;
          if (*v4->n128_u64[0] >= **(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v25 = *v6;
      *v6 = *v4;
      *v4 = v25;
LABEL_50:
      if (**(a1 + 16) < **a1)
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    v22 = **(a1 + 16);
    v23 = *v19;
    if (v22 >= **a1)
    {
      if (v23 < v22)
      {
        v28 = *v6;
        *v6 = *v18;
        *v18 = v28;
        if (*v6->n128_u64[0] < *v21)
        {
          v29 = *a1;
          *a1 = *v6;
          *v6 = v29;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v22)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (*v19 >= **(a1 + 16))
      {
        goto LABEL_47;
      }

      v24 = *v6;
      *v6 = *v18;
    }

    else
    {
      v24 = *a1;
      *a1 = *v18;
    }

    *v18 = v24;
LABEL_47:
    if (*v20->n128_u64[0] >= *v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (*v18->n128_u64[0] >= *v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*v5 >= **a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *a1;
  v15 = **(a1 + 16);
  v16 = *v12;
  if (v15 >= **a1)
  {
    if (v16 < v15)
    {
      v26 = *v13;
      *v13 = *v11;
      *v11 = v26;
      if (*v13->n128_u64[0] < *v14)
      {
        v27 = *a1;
        *a1 = *v13;
        *v13 = v27;
      }
    }
  }

  else
  {
    if (v16 >= v15)
    {
      v31 = *a1;
      *a1 = *v13;
      *v13 = v31;
      if (*v12 >= **(a1 + 16))
      {
        goto LABEL_33;
      }

      v17 = *v13;
      *v13 = *v11;
    }

    else
    {
      v17 = *a1;
      *a1 = *v11;
    }

    *v11 = v17;
  }

LABEL_33:
  v32 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (*v32->n128_u64[0] < *v11->n128_u64[0])
    {
      v36 = v32->n128_i64[1];
      v37 = v33;
      while (1)
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v38 = **(a1 + v37 + 16);
        v37 -= 16;
        if (*v35 >= v38)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      *v39 = v35;
      v39[1] = v36;
      if (++v34 == 8)
      {
        return &v32[1] == a2;
      }
    }

    v11 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }
}

char *std::__to_chars_itoa[abi:nn200100]<long long>(char *a1, char *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  if (a1 != a2 && (a3 & 0x8000000000000000) != 0)
  {
    *a1++ = 45;
    v3 = -a3;
  }

  if (a2 - a1 > 19 || (v5 = (1233 * (64 - __clz(v3 | 1))) >> 12, a2 - a1 >= v5 - (std::__itoa::__pow10_64[v5] > v3) + 1))
  {
    if (HIDWORD(v3))
    {
      if (v3 > 0x2540BE3FFLL)
      {
        a1 = std::__itoa::__base_10_u32[abi:nn200100](a1, v3 / 0x2540BE400);
        v3 %= 0x2540BE400uLL;
      }

      *a1 = std::__itoa::__digits_base_10[v3 / 0x5F5E100];
      v6 = v3 % 0x5F5E100;
      *(a1 + 1) = std::__itoa::__digits_base_10[v6 / 0xF4240uLL];
      v6 %= 0xF4240u;
      *(a1 + 2) = std::__itoa::__digits_base_10[v6 / 0x2710uLL];
      v6 %= 0x2710u;
      *(a1 + 3) = std::__itoa::__digits_base_10[v6 / 0x64u];
      *(a1 + 4) = std::__itoa::__digits_base_10[v6 % 0x64u];
      return a1 + 10;
    }

    else
    {
      return std::__itoa::__base_10_u32[abi:nn200100](a1, v3);
    }
  }

  return v4;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v62 = a2[-1].n128_u64[0];
        v61 = a2 - 1;
        if (*v62 >= *v12->n128_u64[0])
        {
          return result;
        }

LABEL_107:
        v136 = *v12;
        *v12 = *v61;
        result = v136;
LABEL_108:
        *v61 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v63 = v12 + 1;
      v67 = v12 + 2;
      v68 = v12[2].n128_u64[0];
      v69 = *v12[1].n128_u64[0];
      v70 = *v68;
      if (v69 >= *v12->n128_u64[0])
      {
        if (v70 < v69)
        {
          result = *v63;
          *v63 = *v67;
          *v67 = result;
          if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
          {
            v139 = *v12;
            *v12 = *v63;
            result = v139;
            *v63 = v139;
          }
        }
      }

      else
      {
        if (v70 < v69)
        {
          v137 = *v12;
          *v12 = *v67;
          result = v137;
          goto LABEL_187;
        }

        v141 = *v12;
        *v12 = *v63;
        result = v141;
        *v63 = v141;
        if (*v68 < *v12[1].n128_u64[0])
        {
          result = *v63;
          *v63 = *v67;
LABEL_187:
          *v67 = result;
        }
      }

      if (*v9->n128_u64[0] >= *v67->n128_u64[0])
      {
        return result;
      }

      result = *v67;
      *v67 = *v9;
      *v9 = result;
      if (*v67->n128_u64[0] >= *v63->n128_u64[0])
      {
        return result;
      }

      result = *v63;
      *v63 = *v67;
      *v67 = result;
LABEL_191:
      if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
      {
        v142 = *v12;
        *v12 = *v63;
        result = v142;
        *v63 = v142;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*,0>(v12, v12 + 1, &v12[2], v12[3].n128_u64, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v71 = v12 + 1;
      v73 = v12 == a2 || v71 == a2;
      if (a4)
      {
        if (!v73)
        {
          v74 = 0;
          v75 = v12;
          do
          {
            v76 = v71;
            v77 = v75[1].n128_u64[0];
            if (*v77 < *v75->n128_u64[0])
            {
              v78 = v75[1].n128_u64[1];
              v79 = v74;
              while (1)
              {
                result = *(v12 + v79);
                *(v12 + v79 + 16) = result;
                if (!v79)
                {
                  break;
                }

                v80 = **(v12[-1].n128_u64 + v79);
                v79 -= 16;
                if (*v77 >= v80)
                {
                  v81 = (v12 + v79 + 16);
                  goto LABEL_127;
                }
              }

              v81 = v12;
LABEL_127:
              v81->n128_u64[0] = v77;
              v81->n128_u64[1] = v78;
            }

            v71 = v76 + 1;
            v74 += 16;
            v75 = v76;
          }

          while (&v76[1] != a2);
        }
      }

      else if (!v73)
      {
        do
        {
          v112 = v71;
          v113 = *(a1 + 16);
          if (*v113 < **a1)
          {
            v114 = *(a1 + 24);
            v115 = v112;
            do
            {
              result = v115[-1];
              *v115 = result;
              v116 = v115[-2].n128_u64[0];
              --v115;
            }

            while (*v113 < *v116);
            v115->n128_u64[0] = v113;
            v115->n128_u64[1] = v114;
          }

          v71 = v112 + 1;
          a1 = v112;
        }

        while (&v112[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v82 = (v13 - 2) >> 1;
        v83 = v82;
        do
        {
          v84 = v83;
          if (v82 >= v83)
          {
            v85 = (2 * v83) | 1;
            v86 = &v12[v85];
            if (2 * v84 + 2 >= v13)
            {
              v88 = *v86->n128_u64[0];
            }

            else
            {
              v87 = *v86->n128_u64[0];
              v88 = *v86[1].n128_u64[0];
              v89 = v87 < v88;
              if (v87 > v88)
              {
                v88 = *v86->n128_u64[0];
              }

              if (v89)
              {
                ++v86;
                v85 = 2 * v84 + 2;
              }
            }

            v90 = &v12[v84];
            v91 = v90->n128_u64[0];
            if (v88 >= *v90->n128_u64[0])
            {
              v92 = v90->n128_u64[1];
              do
              {
                v93 = v90;
                v90 = v86;
                *v93 = *v86;
                if (v82 < v85)
                {
                  break;
                }

                v94 = (2 * v85) | 1;
                v86 = &v12[v94];
                v85 = 2 * v85 + 2;
                if (v85 >= v13)
                {
                  v95 = *v86->n128_u64[0];
                  v85 = v94;
                }

                else
                {
                  v95 = *v86->n128_u64[0];
                  v96 = *v86[1].n128_u64[0];
                  v97 = v95 < v96;
                  if (v95 <= v96)
                  {
                    v95 = *v86[1].n128_u64[0];
                  }

                  if (v97)
                  {
                    ++v86;
                  }

                  else
                  {
                    v85 = v94;
                  }
                }
              }

              while (v95 >= *v91);
              v90->n128_u64[0] = v91;
              v90->n128_u64[1] = v92;
            }
          }

          v83 = v84 - 1;
        }

        while (v84);
        do
        {
          v98 = 0;
          v138 = *v12;
          v99 = v12;
          do
          {
            v100 = &v99[v98];
            v101 = v100 + 1;
            v102 = (2 * v98) | 1;
            v98 = 2 * v98 + 2;
            if (v98 >= v13)
            {
              v98 = v102;
            }

            else
            {
              v104 = v100[2].n128_u64[0];
              v103 = v100 + 2;
              if (*v103[-1].n128_u64[0] >= *v104)
              {
                v98 = v102;
              }

              else
              {
                v101 = v103;
              }
            }

            *v99 = *v101;
            v99 = v101;
          }

          while (v98 <= ((v13 - 2) >> 1));
          if (v101 == --a2)
          {
            result = v138;
            *v101 = v138;
          }

          else
          {
            *v101 = *a2;
            result = v138;
            *a2 = v138;
            v105 = (v101 - v12 + 16) >> 4;
            v89 = v105 < 2;
            v106 = v105 - 2;
            if (!v89)
            {
              v107 = v106 >> 1;
              v108 = &v12[v107];
              v109 = v101->n128_u64[0];
              if (*v108->n128_u64[0] < *v101->n128_u64[0])
              {
                v110 = v101->n128_u64[1];
                do
                {
                  v111 = v101;
                  v101 = v108;
                  result = *v108;
                  *v111 = *v108;
                  if (!v107)
                  {
                    break;
                  }

                  v107 = (v107 - 1) >> 1;
                  v108 = &v12[v107];
                }

                while (*v108->n128_u64[0] < *v109);
                v101->n128_u64[0] = v109;
                v101->n128_u64[1] = v110;
              }
            }
          }

          v89 = v13-- <= 2;
        }

        while (!v89);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = v14;
    v16 = *v9->n128_u64[0];
    if (v13 >= 0x81)
    {
      v17 = *v14->n128_u64[0];
      if (v17 >= *v12->n128_u64[0])
      {
        if (v16 < v17)
        {
          v119 = *v14;
          *v14 = *v9;
          *v9 = v119;
          if (*v14->n128_u64[0] < *v12->n128_u64[0])
          {
            v120 = *v12;
            *v12 = *v14;
            *v14 = v120;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v117 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v123 = *v12;
        *v12 = *v14;
        *v14 = v123;
        if (*v9->n128_u64[0] < *v14->n128_u64[0])
        {
          v117 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v117;
        }
      }

      v19 = v12 + 1;
      v20 = v14 - 1;
      v21 = *v14[-1].n128_u64[0];
      v22 = *v10->n128_u64[0];
      if (v21 >= *v12[1].n128_u64[0])
      {
        if (v22 < v21)
        {
          v124 = *v20;
          *v20 = *v10;
          *v10 = v124;
          if (*v20->n128_u64[0] < *v19->n128_u64[0])
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (*v10->n128_u64[0] < *v20->n128_u64[0])
        {
          v126 = *v20;
          *v20 = *v10;
          v23 = v126;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = v12 + 2;
      v28 = v14[1].n128_u64[0];
      v27 = v14 + 1;
      v29 = *v28;
      v30 = *v11->n128_u64[0];
      if (*v28 >= *v12[2].n128_u64[0])
      {
        if (v30 < v29)
        {
          v127 = *v27;
          *v27 = *v11;
          *v11 = v127;
          if (*v27->n128_u64[0] < *v26->n128_u64[0])
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (*v11->n128_u64[0] < *v27->n128_u64[0])
        {
          v128 = *v27;
          *v27 = *v11;
          v31 = v128;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = *v15->n128_u64[0];
      v35 = *v27->n128_u64[0];
      if (v34 >= *v20->n128_u64[0])
      {
        if (v35 < v34)
        {
          v130 = *v15;
          *v15 = *v27;
          *v27 = v130;
          if (*v15->n128_u64[0] < *v20->n128_u64[0])
          {
            v131 = *v20;
            *v20 = *v15;
            *v15 = v131;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v129 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v132 = *v20;
        *v20 = *v15;
        *v15 = v132;
        if (*v27->n128_u64[0] < *v15->n128_u64[0])
        {
          v129 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v129;
        }
      }

      v133 = *v12;
      *v12 = *v15;
      result = v133;
      *v15 = v133;
      goto LABEL_58;
    }

    v18 = *v12->n128_u64[0];
    if (v18 >= *v14->n128_u64[0])
    {
      if (v16 < v18)
      {
        v121 = *v12;
        *v12 = *v9;
        result = v121;
        *v9 = v121;
        if (*v12->n128_u64[0] < *v14->n128_u64[0])
        {
          v122 = *v14;
          *v14 = *v12;
          result = v122;
          *v12 = v122;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v18)
    {
      v125 = *v14;
      *v14 = *v12;
      result = v125;
      *v12 = v125;
      if (*v9->n128_u64[0] >= *v12->n128_u64[0])
      {
        goto LABEL_58;
      }

      v118 = *v12;
      *v12 = *v9;
    }

    else
    {
      v118 = *v14;
      *v14 = *v9;
    }

    result = v118;
    *v9 = v118;
LABEL_58:
    --a3;
    v36 = v12->n128_u64[0];
    v37 = *v12->n128_u64[0];
    if ((a4 & 1) != 0 || *v12[-1].n128_u64[0] < v37)
    {
      v38 = 0;
      v39 = v12->n128_u64[1];
      do
      {
        v40 = *v12[++v38].n128_u64[0];
      }

      while (v40 < v37);
      v41 = &v12[v38];
      v42 = a2;
      if (v38 == 1)
      {
        v42 = a2;
        do
        {
          if (v41 >= v42)
          {
            break;
          }

          v44 = v42[-1].n128_u64[0];
          --v42;
        }

        while (*v44 >= v37);
      }

      else
      {
        do
        {
          v43 = v42[-1].n128_u64[0];
          --v42;
        }

        while (*v43 >= v37);
      }

      v12 = (v12 + v38 * 16);
      if (v41 < v42)
      {
        v45 = v42;
        do
        {
          v134 = *v12;
          *v12 = *v45;
          result = v134;
          *v45 = v134;
          v46 = *v36;
          do
          {
            v47 = v12[1].n128_u64[0];
            ++v12;
          }

          while (*v47 < v46);
          do
          {
            v48 = v45[-1].n128_u64[0];
            --v45;
          }

          while (*v48 >= v46);
        }

        while (v12 < v45);
      }

      v49 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v49;
        *a1 = *v49;
      }

      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v39;
      if (v41 < v42)
      {
        goto LABEL_79;
      }

      v50 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*>(a1, v12 - 1, result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*>(v12, a2, v51))
      {
        a2 = v12 - 1;
        if (!v50)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v50)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*,false>(a1, &v12[-1], a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      if (v37 >= *v9->n128_u64[0])
      {
        v53 = v12 + 1;
        do
        {
          v12 = v53;
          if (v53 >= a2)
          {
            break;
          }

          ++v53;
        }

        while (v37 >= *v12->n128_u64[0]);
      }

      else
      {
        do
        {
          v52 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v37 >= *v52);
      }

      v54 = a2;
      if (v12 < a2)
      {
        v54 = a2;
        do
        {
          v55 = v54[-1].n128_u64[0];
          --v54;
        }

        while (v37 < *v55);
      }

      v56 = *(a1 + 8);
      while (v12 < v54)
      {
        v135 = *v12;
        *v12 = *v54;
        result = v135;
        *v54 = v135;
        v57 = *v36;
        do
        {
          v58 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v57 >= *v58);
        do
        {
          v59 = v54[-1].n128_u64[0];
          --v54;
        }

        while (v57 < *v59);
      }

      v60 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v60;
        *a1 = *v60;
      }

      a4 = 0;
      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v56;
    }
  }

  v63 = v12 + 1;
  v64 = a2[-1].n128_u64[0];
  v61 = a2 - 1;
  v65 = *v12[1].n128_u64[0];
  v66 = *v64;
  if (v65 >= *v12->n128_u64[0])
  {
    if (v66 >= v65)
    {
      return result;
    }

    result = *v63;
    *v63 = *v61;
    *v61 = result;
    goto LABEL_191;
  }

  if (v66 < v65)
  {
    goto LABEL_107;
  }

  v140 = *v12;
  *v12 = *v63;
  result = v140;
  *v63 = v140;
  if (*v61->n128_u64[0] < *v12[1].n128_u64[0])
  {
    result = *v63;
    *v63 = *v61;
    goto LABEL_108;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*,0>(__n128 *a1, __n128 *a2, int **a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = *a2->n128_u64[0];
  v7 = **a3;
  if (v6 >= *a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2->n128_u64[0] < *a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (**a3 < *a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (**a4 < **a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (**a3 < *a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2->n128_u64[0] < *a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (**a5 < **a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (**a4 < **a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (**a3 < *a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (*a2->n128_u64[0] < *a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = **(a1 + 16);
      v9 = *v7;
      if (v8 < **a1)
      {
        if (v9 >= v8)
        {
          v30 = *a1;
          *a1 = *v6;
          *v6 = v30;
          if (*v4->n128_u64[0] >= **(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v25 = *v6;
      *v6 = *v4;
      *v4 = v25;
LABEL_50:
      if (**(a1 + 16) < **a1)
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    v22 = **(a1 + 16);
    v23 = *v19;
    if (v22 >= **a1)
    {
      if (v23 < v22)
      {
        v28 = *v6;
        *v6 = *v18;
        *v18 = v28;
        if (*v6->n128_u64[0] < *v21)
        {
          v29 = *a1;
          *a1 = *v6;
          *v6 = v29;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v22)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (*v19 >= **(a1 + 16))
      {
        goto LABEL_47;
      }

      v24 = *v6;
      *v6 = *v18;
    }

    else
    {
      v24 = *a1;
      *a1 = *v18;
    }

    *v18 = v24;
LABEL_47:
    if (*v20->n128_u64[0] >= *v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (*v18->n128_u64[0] >= *v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*v5 >= **a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *a1;
  v15 = **(a1 + 16);
  v16 = *v12;
  if (v15 >= **a1)
  {
    if (v16 < v15)
    {
      v26 = *v13;
      *v13 = *v11;
      *v11 = v26;
      if (*v13->n128_u64[0] < *v14)
      {
        v27 = *a1;
        *a1 = *v13;
        *v13 = v27;
      }
    }
  }

  else
  {
    if (v16 >= v15)
    {
      v31 = *a1;
      *a1 = *v13;
      *v13 = v31;
      if (*v12 >= **(a1 + 16))
      {
        goto LABEL_33;
      }

      v17 = *v13;
      *v13 = *v11;
    }

    else
    {
      v17 = *a1;
      *a1 = *v11;
    }

    *v11 = v17;
  }

LABEL_33:
  v32 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (*v32->n128_u64[0] < *v11->n128_u64[0])
    {
      v36 = v32->n128_i64[1];
      v37 = v33;
      while (1)
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v38 = **(a1 + v37 + 16);
        v37 -= 16;
        if (*v35 >= v38)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      *v39 = v35;
      v39[1] = v36;
      if (++v34 == 8)
      {
        return &v32[1] == a2;
      }
    }

    v11 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }
}